/*
* Copyright 2014, 2015, Jacques Desch�nes
* This file is part of BP_CHIPCON.
*
*     BP_CHIPCON is free software: you can redistribute it and/or modify
*     it under the terms of the GNU General Public License as published by
*     the Free Software Foundation, either version 3 of the License, or
*     (at your option) any later version.
*
*     BP_CHIPCON is distributed in the hope that it will be useful,
*     but WITHOUT ANY WARRANTY; without even the implied warranty of
*     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*     GNU General Public License for more details.
*
*     You should have received a copy of the GNU General Public License
*     along with BP_CHIPCON.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
 * chipcon_vm.c
 *
 * Created: 2014-09-26 10:10:45
 * Author: Jacques Deschenes
 * Description: machine virtuelle qui ex�cute du byte code super CHIP
 * 2019-05-12:  Adapted to BP-CHIPCON project
 * 	- game space extended to 8192 bytes
 *  - game copied from flash to game_ram array
 */ 

// doit-être inclus avant <util/delay.h>
#include "include/blue_pill.h"

#include <stdlib.h>
#include <stdio.h>
#include "chipcon_vm.h"
#include "tvout.h"
#include "graphics.h"
#include "text.h"
#include "gamepad.h"
#include "sound.h"
#include "include/flash.h"
#include "include/gen_fn.h"

//#include "sram.h"
//#include "joystick.h"
//#include "tone.h"

#define PERSIST_STORE (0x10000)
#define FLASH_SECTOR_SIZE (8192)
#define R_STORE (0x1FFF0)

#define _get_opcode(addr) ({vms.b1=game_ram[addr];vms.b2=game_ram[addr+1];})
#define caddr(b1,b2)  (((b1<<8)|b2)&0xfff)
#define rx(b1)  (b1&0xf)
#define ry(b2)  (b2>>4)

#define RAM_MEM 0
#define FLASH_MEM 1

// état de la machine virtuelle
static vm_state_t vms;

// stockage temporaire
static uint8_t block[32];

uint8_t game_ram[GAME_SPACE];

// print virtual machine states
void print_vms(const char *msg,uint8_t error_code){
	uint8_t orig_font;
	orig_font=get_font();
	select_font(FONT_ASCII);
	new_line();
	print(msg);
	switch(error_code){
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
	print_hex(vms.pc-2);
	print_hex((vms.b1<<8)+vms.b2);
	new_line();
	print("I:");
	print_hex(vms.ix);
	print(" SP:");
	print_hex(vms.sp);
	new_line();
	print("var[]:");
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
	}
	new_line();
	select_font(orig_font);
}

static uint32_t state=1;

void srand(unsigned n){
	state=n;
}

int rand(){
	uint32_t x;
	x=state;
	x^=x<<13;
	x^=x>>17;
	x^=x<<5;
	state=x;
	return x&0x7fffffff; 
}


//  SCHIP/BPCHIP  virtual machine
vm_exit_code_t chip_vm(uint16_t program_address, vm_debug_t dbg_level){
#define SLOW_DOWN 5
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
	char c,buffer[24];
	int gx,gy;
	vmode_params_t *vparams;

	vms.pc=program_address;
	vms.sp=0;
	vms.ix=0;
	vms.s=0;
 	while (exit_code==CHIP_CONTINUE){
		if (vms.pc>=GAME_SPACE){
			exit_code=CHIP_BAD_ADDR;
			break;
		} 
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
		_get_opcode(vms.pc);
		vms.pc+=2;
		switch(dbg_level){
		case DEBUG_PC_CODE: // print PC and OPCODE
			_debug_print(itoa(vms.pc-2,buffer,16));
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
			_debug_print("\n");
			break;
		case DEBUG_VM_STATE: // print all vm states.
			select_console(SERIAL);
			print_vms("actual vm state\n",CHIP_CONTINUE);
			select_console(LOCAL);
			break;
		case DEBUG_SSTEP:	// single step, print all vm_states and pause.
single_step:		
			select_console(SERIAL);
			print_vms("vm state\n",CHIP_CONTINUE);
			print("<CTRL-Q> to quit, any to step.\n");
			c=get_char();
			if (c==CTRL_Q) dbg_level=DEBUG_BOC;
			select_console(LOCAL);
			break;
		case DEBUG_BOC: // break on VT100 CTRL_C
			if (usart_getc(CHN1)==CTRL_C){
				dbg_level=DEBUG_SSTEP;
				goto single_step;
			}
			break;
		}//switch(dbg_level)
		x=rx(vms.b1);
		y=ry(vms.b2);
	    switch (vms.b1>>4){
		case 0:
		    if ((vms.b1|vms.b2)==0){
				//NOP 
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
				gfx_scroll_down(vms.b2&0xf); 
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
				gfx_scroll_up(vms.b2&0xf);					
			}else switch(vms.b2){
				case 0xe0: // 00E0, CLS   clear screen  ; CHIP-8
					gfx_cls();
					break;
				case 0xee: // 00EE, RET   sub-routine exit ; CHIP-8
					vms.pc=vms.stack[vms.sp--];
					break;
				case 0xfb: // 00FB, SCR   scroll screen right 4 pixels ; SCHIP
					gfx_scroll_right(4);
					break;
				case 0xfc: // 00FC, SCL   scroll screen left 4 pixels ; SCHIP
					gfx_scroll_left(4);
					break;
				case 0xfd:// 00FD, EXIT   exit interpreter and go back to BP_CHIPCON monitor; SCHIP
					exit_code=CHIP_EXIT_OK;
					break;
				case 0xfe: //00FE,  LOW   switch to CHIP-8 64x32 graphic mode ; SCHIP
					//set_video_mode(VM_CHIP8);
					break; 
				case 0xff:  //00FF, HIGH  switch to SCHIP 128x64 graphic mode ; SCHIP
					set_video_mode(VM_SCHIP);
					break; 
				case 0xfa: // 00FA BPRES  switch to BPCHIP 180x112 graphic mode; BPCHIP
					set_video_mode(VM_BPCHIP);
					break;
				case 0xf9: // 00F9 PALET load palette with color pointed by I
					set_palette((const uint8_t*)&game_ram[vms.ix]);
					break;	
				default:
					exit_code=CHIP_BAD_OPCODE;
			}//switch(b2)
			break;
		case 0x1: // 1NNN JP label  ;saut vers 'label'  adresse=2*NNN
			vms.pc=caddr(vms.b1,vms.b2);
			if (video_mode==VM_BPCHIP){
				vms.pc<<=1;
			}
			break;
		case 0x2: // 2NNN  CALL label  ; appelle la sous-routine 'label' adresse=2*NNN
			vms.stack[++vms.sp]=vms.pc;
			vms.pc=caddr(vms.b1,vms.b2);
			if (video_mode==VM_BPCHIP){
				vms.pc<<=1;
			}
			break;
		case 0x3: // 3XKK   SE VX, KK  ;saute l'instruction suivante si VX == KK
			if (vms.var[x]==vms.b2) vms.pc+=2;
			break;
		case 0x4: // 4XKK  SNE VX,VY  ;Saute l'instruction suivante si VX <> KK
			if (vms.var[x]!=vms.b2)vms.pc+=2;
			break;
		case 0x5:
			switch(vms.b2&0xf){
			case 0:  // 5XY0  SE VX,VY   ;Saute l'instruction suivante si VX == VY ; CHIP-8
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
				break;
			case 2:  // 5XY2  save VX..VY at address pointed by I, I not incremented  ; BP-CHIP
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
				break;
			case 3: // 5XY3   load VX..VY from adress pointed by I, I not incremented ; BP-CHIP
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
				break;
			}
			break;
		case 0x6: // 6XKK   LD VX,KK  ; VX := KK
			vms.var[x]=vms.b2;
			break;
		case 0x7: // 7XKK   ADD VX,KK  ; VX := VX + KK
		    n=(vms.var[x]+vms.b2)>255;
			vms.var[x]+=vms.b2;
			vms.var[15]=n;
			break;
		case 0x8: 
			switch(vms.b2&0xf){
			case 0: // 8XY0   LD VX, VY  ; VX := VY
				vms.var[x]=vms.var[y];
				break;
			case 1: // 8XY1  OR VX, VY  ; VX := VX OR VY
				vms.var[x]|=vms.var[y];
				break;
			case 0x2: // 8XY2  AND VX,VY  ; VX := VX AND VY
				vms.var[x]&=vms.var[y];
				break;
			case 0x3: // 8XY3  XOR VX,VY  ; VX := VX XOR VY
				vms.var[x]^=vms.var[y];
				break;
			case 0x4: // 8XY4  ADD VX,VY  ; VX := VX + VY, VF := carry
				n=(vms.var[x]+vms.var[y])>255;
				vms.var[x]+=vms.var[y];
				vms.var[15]=n;
				break;
			case 0x5: // 8XY5  SUB VX,VY  ; VX := VX - VY, VF := not borrow
				n=vms.var[x]>=vms.var[y];
				vms.var[x]-=vms.var[y];
				vms.var[15]=n;
				break;
			case 0x6: // 8XY6  SHR VX  ; VX := VX shr 1, VF := carry
				n=(vms.var[x]&1u);
				vms.var[x]>>=1;
				vms.var[15]=n;
				break;
			case 0x7: // 8XY7  SUBN VX,VY  ; VX := VY - VX, VF := not borrow
				n=vms.var[y]>=vms.var[x];
				vms.var[x]=vms.var[y]-vms.var[x];
				vms.var[15]=n;
				break;
			case 0xe: // 8XYE  SHL VX  ; VX := VX shl 1, VF := carry
				n=(vms.var[x]&128)>>7;
				vms.var[x]<<=1;
				vms.var[15]=n;
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
			}//switch(vms.b2&0xf)
			break;
		case 0x9:
			switch (vms.b2&0xf){
			case 0x0: // 9XY0  SNE VX,VY  ; skip if VX <> VY
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
				break;
			case 0x1: // 9XY1  TONE VX, VY ; play a tempered scale note. VX=note, VY=length; BP-CHIP
				key_tone(vms.var[x],vms.var[y],false);
				break;
			case 0x2: // 9XY2  PRT VX, VY ; print text pointed by I at position x,y. I is incremented ; BP-CHIP
				select_font(FONT_ASCII);
				set_cursor(vms.var[x],vms.var[y]);
				print((const char*)&game_ram[vms.ix]);
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
				//while (game_ram[vms.ix++]);
				break;
			case 0x3: // 9XY3 PIXI VX, VY  ; invert pixel at coordinates VX,VY; BP-CHIP
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
				break;
			case 0x4: // 9NN4  NOISE NN ; noise length NN ; BP-CHIP
				noise((x<<4)+y);
				break;
			case 0x5: // 9XY5 TONE VX, VY, WAIT ; play tempered scale note, wait end. VX=note, VY=length ; BP-CHIP
				key_tone(vms.var[x],vms.var[y],true);
				break;
			case 0x6: // 9X06, PUSH VX  ; push VX on stack ; BP-CHIP
				vms.stack[++vms.sp]=vms.var[x];
				break;
			case 0x7: // 9X07, POP VX  ; pop VX from stack ; BP-CHIP
				vms.var[x]=vms.stack[vms.sp--];
				break;
			case 0x8: // 9X08, SCRX  ;  VX=HRES screen width in pixels. ; BP-CHIP
				{ 	
					vparams=get_video_params();
					vms.var[x]=vparams->hres;
				}
				break;
			case 0x9: // 9X09, SCRY  ; VX=VRES  screen height in pixels  ; BP-CHIP
				{
					vparams=get_video_params();
					vms.var[x]=vparams->vres;
				}
				break;
			case 0xA: // 9XNA, BSET VX,N  ; set VX bit N  ; BP-CHIP
			    vms.var[x] |= (1<<(y&0x7));
			    break;
		    case 0xB: // 9XNB  BCLR VX,N  ; clear VX bit N  ; BP-CHIP
			    vms.var[x] &= ~(1<<(y&0x7));
			    break;
			case 0xC: // 9XNC  BINV VX,N  ; invert VX bit N ; BP-CHIP
   			    vms.var[x] ^= (1<<(y&0x7));
				break;
			case 0xD: // 9XND  BTSS VX,N  ; skip if VX bit N==1 ; BP-CHIP
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
				break;
			case 0xE: // 9XNE  BTSC VX,N  ; skip if VX bit N==0 ; BP-CHIP
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
				break;
			case 0xF: // 9XYF GPIX,  VF=pixel((vx),(vy))  ; BP-CHIP
			    vms.var[15]=gfx_get_pixel(x,y);
				break;  	
			default:
				exit_code=CHIP_BAD_OPCODE;
			}//switch(vms.b2&0xf)
			break;
		case 0xa: // ANNN    LD I, NNN  ; I := NNN ; BP-CHIP I=2*NNN
			vms.ix=caddr(vms.b1,vms.b2);
			if (video_mode==VM_BPCHIP){
				vms.ix<<=1;
			}
			vms.sprite_mem=RAM_MEM;
			break;
		case 0xb: // BNNN     JP V0, NNN  ;  skip to (NNN+V0) ; BP-CHIP  destination= 2*(NNN+V0)
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
			if (video_mode==VM_BPCHIP){
				vms.pc<<=1;
			}
			break;
		case 0xc: //CXKK  RND VX,KK  ; VX=random_number&KK
			vms.var[x]=rand()%vms.b2;
			break;
		case 0xd: //DXYN DRW VX,VY,N   draw a sprite, SCHIP and BP-CHIP can draw 16x16 sprites
			n=vms.b2&0xf;
			gx=(int)(unsigned)vms.var[x];
			gy=(int)(unsigned)vms.var[y];
			if (!n){
				if (vms.sprite_mem==RAM_MEM){
					vms.var[15]=gfx_sprite(gx,gy,16,16,(const uint8_t*)&game_ram[vms.ix]);
				}else{
					vms.var[15]=gfx_sprite(gx,gy,16,16,(const uint8_t*)(uint32_t)vms.ix);
				}

			}else{
				if (vms.sprite_mem==RAM_MEM){
					vms.var[15]=gfx_sprite(gx,gy,8,n,(const uint8_t*)&game_ram[vms.ix]);
				}else{
					vms.var[15]=gfx_sprite(gx,gy,8,n,(const uint8_t*)(uint32_t)vms.ix);
				}
			}
			
			break;
		case 0xe:
				switch(vms.b2){
				case 0x9e: //EX9E, SKP VX   ; skip if VX key is down
					if (btn_query_down(vms.var[x])) vms.pc+=2;
					break;
				case 0xa1: //EXA1, SKNP VX  ; skip if VX key is up
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
					break;
				default:
					return CHIP_BAD_OPCODE;
				}//switch(vms.b2)
				break;
		case 0xf:
			switch(vms.b2){
			case 1: // FN01 BPP N set sprite bitS  per pixels 1,2,4
				sprite_bpp=(vms.b1&0xf)/2; 
				break;
			case 0x07: // FX07  LD VX, DT   VX := game_timer
				vms.var[x]=game_timer;
				break;
			case 0x0a: // FX0A  LD VX, K  ; wait for key down and put it in VX.
				vms.var[x]=btn_wait_any();
				break;
			case 0x15: // FX15  LD DT, VX  ; initialize game_timer with value in VX.
				game_timer=vms.var[x];
				break;
			case 0x18: // FX18  LD ST, VX  ; beep sound of length VX (multiple de 16.7 msec)
				tone(523,vms.var[x]);
				break;
			case 0x1e: // FX1E  ADD I, VX  ;  I := I + VX
				vms.ix += vms.var[x];
				break;
			case 0x29: // FX29  LD F,VX   ; set I to point to character VX in FONT_SHEX table.
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
				vms.sprite_mem=FLASH_MEM;
				select_font(FONT_SHEX);
				break;
			case 0x30: // FX30 LD LF,VX  set I to point to character VX in FONT_LHEX table
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
				vms.sprite_mem=FLASH_MEM;
				select_font(FONT_LHEX);
				break;
			case 0x33: // FX33 LD B, VX  ;  set I to point BCD value of VX, i.e. M[I]..M[I+2]
				n=vms.var[x];
				block[2]=n%10;
				n /=10;
				block[1]=n%10;
				block[0]=n/10;
				//store_block(vms.ix,3,block);
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
				break;
			case 0x55: // FX55  LD [I], VX  save registers V0..VX in ram pointed by I
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
				break;
			case 0x65: // FX65 LD VX,[I]  load registers V0-VX from ram pointed by I
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
				break;
			case 0x74: // FX74 LD FS, N	; load flash sector register ; BPCHIP
				vms.s=(x&0x7)*FLASH_SECTOR_SIZE; // flash sector {0..7}
				break;			
			case 0x75: // FX75 LD R,VX  ; save registers V0-VX in mcu flash  ; SCHIP, BPCHIP
				if (video_mode==VM_BPCHIP){
					flash_write_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
				}else{
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
				}
				break;	
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash ; SCHIP, BPCHIP
				if (video_mode==VM_BPCHIP){
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
				}else{
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
				}
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
	set_keymap(default_kmap);
	set_video_mode(VM_BPCHIP);
	return exit_code;
}//schipp()
