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

// doit-�tre inclus avant <util/delay.h>
#include "include/blue_pill.h"

#include <stdlib.h>
#include "chipcon_vm.h"
#include "tvout.h"
#include "graphics.h"
#include "text.h"
#include "gamepad.h"
#include "sound.h"

//#include "sram.h"
//#include "joystick.h"
//#include "tone.h"

//#define caddr(b1,b2) ((((b1&0xf)<<8)+b2)<<1)
#define _get_opcode(addr) ({vms.b1=game_ram[addr];vms.b2=game_ram[addr+1];})
#define caddr(b1,b2)  ((((b1<<8)|b2)<<1)&0xfff)
#define rx(b1)  (b1&0xf)
#define ry(b2)  (b2>>4)
#define FRAME_MSEC (17)

#define RAM_MEM 0
#define FLASH_MEM 1

// état de la machine virtuelle
static vm_state_t vms;

// stockage temporaire sprite
static uint8_t block[32];

uint8_t game_ram[GAME_SPACE];

void print_vms(const char *msg){
	new_line();
	select_font(FONT_ASCII);
	print(msg);
	print("PC:");
	print_hex(vms.pc-2);
	print_hex(vms.b1);
	print_hex(vms.b2);
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
	prompt_btn();
}

void chip_scroll_right(){

}

void chip_scroll_left(){

}


void load_block(int addr,int count, uint8_t *block){

}

void store_block(int addr,int count, uint8_t *block){

}

int put_big_sprite(int x, int y,int height, const uint8_t *sprite){

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


#define VM_DECODER 1
// machine virtuelle SCHIP+
uint8_t schipp(uint16_t program_address){
	uint8_t x,y,n;
#if VM_DECODER!=1
	uint16_t code;
#endif	
	vms.pc=program_address;
	vms.sp=0;
	vms.ix=0;
 	while (1){
		//if (joystick_break()) return CHIP_EXIT_OK;
		_get_opcode(vms.pc);
		vms.pc+=2;
		x=rx(vms.b1);
		y=ry(vms.b2);
#if VM_DECODER==1
	    switch (vms.b1>>4){ //décodeur d'instruction modèle 1
		case 0:
		    if ((vms.b1|vms.b2)==0){
				//NOP
			}else if ((vms.b2&0xf0)==0xc0){
				gfx_scroll_down(vms.b2&0xf);
			}else if ((vms.b2&0xf0)==0xd0){
				gfx_scroll_up(vms.b2&0xf);				
			}else switch(vms.b2){
				case 0xe0: // 00E0, CLS   ;efface l'écran
					clear_screen();
					break;
//				case 0xe1:
//				    screen_save();
//					break;
//				case 0xe2:
//				    screen_restore();
//					break;	
				case 0xee: // 00EE, RET   ;sortie de sous-routine
					vms.pc=vms.stack[vms.sp--];
					break;
				case 0xfb: // 00FB, SCR   ;glisse l'affichage vers la droite de 4 pixels
					chip_scroll_right();
					break;
				case 0xfc: // 00FC, SCL   ;glisse l'affichage vers la gauche de 4 pixels
					chip_scroll_left();
					break;
				case 0xfd:// 00FD, EXIT   ;sortie de l'interpr�teur.
					return CHIP_EXIT_OK;
				case 0xfe: //00FE,  LOW  ; passe en mode graphique 64x32
					break; // ignore ce code
				case 0xff:  //00FF, HIGH  ; passe en mode graphique 128x64
					break; // ignore ce code
				default:
					return CHIP_BAD_OPCODE;
			}//switch(b2)
			break;
		case 0x1: // 1NNN JP label  ;saut vers 'label'  adresse=2*NNN
			vms.pc=caddr(vms.b1,vms.b2);
			break;
		case 0x2: // 2NNN  CALL label  ; appelle la sous-routine 'label' adresse=2*NNN
			vms.stack[++vms.sp]=vms.pc;
			vms.pc=caddr(vms.b1,vms.b2);
			break;
		case 0x3: // 3XKK   SE VX, KK  ;saute l'instruction suivante si VX == KK
			if (vms.var[x]==vms.b2) vms.pc+=2;
			break;
		case 0x4: // 4XKK  SNE VX,VY  ;Saute l'instruction suivante si VX <> KK
			if (vms.var[x]!=vms.b2)vms.pc+=2;
			break;
		case 0x5: // 5XY0  SE VX,VY   ;Saute l'instruction suivante si VX == VY
			if (vms.var[x]==vms.var[y]) vms.pc+=2;
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
				return CHIP_BAD_OPCODE;
			}//switch(vms.b2&0xf)
			break;
		case 0x9:
			switch (vms.b2&0xf){
			case 0x0: // 9XY0  SNE VX,VY  ; Saute l'instruction suivante si VX <> VY
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
				break;
			case 0x1: // 9XY1  TONE VX, VY ; joue une note de la gamme tempérée. VX=note, VY=durée
				key_tone(vms.var[x],vms.var[y],false);
				break;
			case 0x2: // 9XY2  PRT VX, VY ; imprime le texte pointe par I. I est incrémenté. position VX, VY
				select_font(FONT_ASCII);
				set_cursor(vms.var[x],vms.var[y]);
				n=game_ram[vms.ix++];
				while (n){
					put_char(n);
					n=game_ram[vms.ix++];
				}
				break;
			case 0x3: // 9XY3 PIXI VX, VY  ; inverse le pixel à la position VX,VY
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
				break;
			case 0x4: // 9NN4  NOISE NN ; bruit blanc durée NN*frame
				noise((x<<4)+y);
				break;
			case 0x5: // 9XY5 TONE VX, VY, WAIT ; joue une note attend la fin avant de poursuivre. VX=note, VY=durée
				key_tone(vms.var[x],vms.var[y],true);
				break;
			case 0x6: // 9X06, PUSH VX  ; empile le contenu de VX
				vms.stack[++vms.sp]=vms.var[x];
				break;
			case 0x7: // 9X07, POP VX  ; transfert le sommet de la pile dans VX
				vms.var[x]=vms.stack[vms.sp--];
				break;
			case 0x8: // 9X08, SCRX  ;  VX=HRES nombre de pixels en largeur d'écran.
				vms.var[x]=HRES;
				break;
			case 0x9: // 9X09, SCRY  ; VX=VRES  nombre de pixels en hauteur d'écran.
				vms.var[x]=VRES;
				break;
			case 0xA: // 9XNA, BSET VX,N  ; met � 1 le bit N de VX
			    vms.var[x] |= (1<<(y&0x7));
			    break;
		    case 0xB: // 9XNB  BCLR VX,N  ; met � 0 le bit N de VX
			    vms.var[x] &= ~(1<<(y&0x7));
			    break;
			case 0xC: // 9XNC  BINV VX,N  ; inverse le bit N de VX
   			    vms.var[x] ^= (1<<(y&0x7));
				break;
			case 0xD: // 9XND  BTSS VX,N  ; saute l'instruction suivante si le bit N de VX==1
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
				break;
			case 0xE: // 9XNE  BTSC VX,N  ; saute l'instruction suivante si le bit N de VX==0
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
				break;
			case 0xF: // 9XYF GPIX,  VF=pixel((vx),(vy))
			    vms.var[15]=gfx_get_pixel(x,y);
				break;  	
			default:
				return CHIP_BAD_OPCODE;
			}//switch(vms.b2&0xf)
			break;
		case 0xa: // ANNN    LD I, NNN  ; I := 2*NNN
			vms.ix=caddr(vms.b1,vms.b2);  // adressse de 13 bits toujours paire
			break;
		case 0xb: // BNNN     JP V0, NNN  ;  saut � 2*(NNN+V0)
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
			break;
		case 0xc: //CXKK  RND VX,KK  ; VX=random_number&KK
			vms.var[x]=rand()&vms.b2;
			break;
		case 0xd: //DXYN DRW VX,VY   ; dessine un sprite à la position indiquée par vx,vy
			n=vms.b2&0xf;
			if (!n){
				load_block(vms.ix,32,block);
				vms.var[15]=put_big_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],32,(const uint8_t*)block);
				}else{
					load_block(vms.ix,n,block);
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)block);
				}
			
			break;
		case 0xe:
				switch(vms.b2){
				case 0x9e: //EX9E, SKP VX   ; saute l'instruction suivante si le bouton indiqué par VX est enfonc�e
					if (btn_query_down(vms.var[x])) vms.pc+=2;
					break;
				case 0xa1: //EXA1, SKNP VX  ; saute l'instruction suivante si la boutin indiqué par VX n'est pas enfonc�e
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
					break;
				default:
					return CHIP_BAD_OPCODE;
				}//switch(vms.b2)
				break;
		case 0xf:
			switch(vms.b2){
			case 0x07: // FX07  LD VX, DT   VX := game_timer
				vms.var[x]=game_timer;
				break;
			case 0x0a: // FX0A  LD VX, K  ; attend qu'une touche soit enfoncée et met sa valeur dans VX
				vms.var[x]=btn_wait_any();
				break;
			case 0x15: // FX15  LD DT, VX  ; démarre la minuterie game_timer avec la valeur indiqu�e par VX
				game_timer=vms.var[x];
				break;
			case 0x18: // FX18  LD ST, VX  ; beep d'une durée VX (multiple de 16.7 msec)
				tone(523,vms.var[x]);
				break;
			case 0x1e: // FX1E  ADD I, VX  ;  I := I + VX
				vms.ix += vms.var[x];
				break;
			case 0x29: // FX29  LD F,VX   ; fait pointé I vers le caractère indiqué par VX dans la police FONT_SHEX
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
				select_font(FONT_SHEX);
				break;
			case 0x30: // FX30 LD LF,VX  ;fait pointé I vers le caractère indiqué par VX dans la police FONT_LHEX
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
				select_font(FONT_LHEX);
				break;
			case 0x33: // FX33 LD B, VX  ;  met la repr�sentation BCD de VX dans M[I]..M[I+2]
				n=vms.var[x];
				block[2]=n%10;
				n /=10;
				block[1]=n%10;
				block[0]=n/10;
				store_block(vms.ix,3,block);
				break;
			case 0x55: // FX55  LD [I], VX  ; Sauvegarde les registres V0..VX dans la m�moire SRAM � l'adresse M[I]...
				store_block(vms.ix,x+1,vms.var);
				break;
			case 0x65: // FX65 LD VX,[I]  ;charge les registres V0..VX � partir de la m�moire SRAM � l'adresse M[I]
				load_block(vms.ix,x+1,vms.var);
				break;
			case 0x75: // FX75 LD R,VX  ; sauvegarde les registres V0..VX dans la banque R
				for (n=0;n<=x;n++){
					vms.rpl[n]=vms.var[n];
				}
				break;
			case 0x85: // FX85 LD VX, R  ;charge les registres V0..VX � partir de la banque R
				for (n=0;n<=x;n++){
					vms.var[n]=vms.rpl[n];
				}
				break;
			default:
				return CHIP_BAD_OPCODE;
				
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
#else
		// décodeur d'instruction modèle 2
		code=(vms.b1&0xf0)<<4;
		switch (code){
			case 0x000:
				if ((vms.b2&0xf0)==0xc0){
					 code=0xc0;
			    }else if ((vms.b2&0xf0)==0xd0){
					 code=0xd0;
			    } else code=vms.b2;
				break;
			case 0xe00:
			case 0xf00:
				code |= vms.b2;
				break;
			case 0x800:
			case 0x900:
				code |= vms.b2&0xf;
				break;
		}
		// exécution de l'instruction
		switch(code){
			case 0xc0: // 00CN, SCN   ;glisse l'affichage N lignes vers le bas
				gfx_scroldown(vms.b2&0xf);
				break;
			case 0xd0: // 00DN, SCU   ;glisse l'affichage N lignes vers le haut
			    gfx_scrollup(vms.b2&0xf);
				break;	
			case 0xe0: // 00E0, CLS   ;efface l'�cran
				cls();
				break;
			case 0xee: // 00EE, RET   ;sortie de sous-routine
				vms.pc=vms.stack[vms.sp--];
				break;
			case 0xfb: // 00FB, SCR   ;glisse l'affichage vers la droite de 4 pixels
				chip_scroll_right();
				break;
			case 0xfc: // 00FC, SCL   ;glisse l'affichage vers la gauche de 4 pixels
				chip_scroll_left();
				break;
			case 0xfd:// 00FD, EXIT   ;sortie de l'interpr�teur.
				return CHIP_EXIT_OK;
			case 0xfe: //00FE,  LOW  ; passe en mode graphique 64x32
				break; // ignore ce code
			case 0xff:  //00FF, HIGH  ; passe en mode graphique 128x64
				break; // ignore ce code
			case 0x100: // 1NNN JP label  ;saut vers 'label'  adresse=2*NNN
				vms.pc=caddr(vms.b1,vms.b2);
				break;
			case 0x200: // 2NNN  CALL label  ; appelle la sous-routine 'label' adresse=2*NNN
				vms.stack[++vms.sp]=vms.pc;
				vms.pc=caddr(vms.b1,vms.b2);
				break;
			case 0x300: // 3XKK   SE VX, KK  ;saute l'instruction suivante si VX == KK
				if (vms.var[x]==vms.b2) vms.pc+=2;
				break;
			case 0x400: // 4XKK  SNE VX,VY  ;Saute l'instruction suivante si VX <> KK
				if (vms.var[x]!=vms.b2)vms.pc+=2;
				break;
			case 0x500: // 5XY0  SE VX,VY   ;Saute l'instruction suivante si VX == VY
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
				break;
			case 0x600: // 6XKK   LD VX,KK  ; VX := KK
				vms.var[x]=vms.b2;
				break;
			case 0x700: // 7XKK   ADD VX,KK  ; VX := VX + KK
				vms.var[x]+=vms.b2;
				break;
			case 0x800: // 8XY0   LD VX, VY  ; VX := VY
				vms.var[x]=vms.var[y];
				break;
			case 0x801: // 8XY1  OR VX, VY  ; VX := VX OR VY
				vms.var[x]|=vms.var[y];
				break;
			case 0x802: // 8XY2  AND VX,VY  ; VX := VX AND VY
				vms.var[x]&=vms.var[y];
				break;
			case 0x803: // 8XY3  XOR VX,VY  ; VX := VX XOR VY
				vms.var[x]^=vms.var[y];
				break;
			case 0x804: // 8XY4  ADD VX,VY  ; VX := VX + VY, VF := carry
				n=(vms.var[x]+vms.var[y])>255;
				vms.var[x]+=vms.var[y];
				vms.var[15]=n;
				break;
			case 0x805: // 8XY5  SUB VX,VY  ; VX := VX - VY, VF := not borrow
				n=vms.var[x]>=vms.var[y];
				vms.var[x]-=vms.var[y];
				vms.var[15]=n;
				break;
			case 0x806: // 8XY6  SHR VX  ; VX := VX shr 1, VF := carry
				n=(vms.var[x]&1u);
				vms.var[x]>>=1;
				vms.var[15]=n;
				break;
			case 0x807: // 8XY7  SUBN VX,VY  ; VX := VY - VX, VF := not borrow
				n=vms.var[y]>=vms.var[x];
				vms.var[x]=vms.var[y]-vms.var[x];
				vms.var[15]=n;
				break;
			case 0x80e: // 8XYE  SHL VX  ; VX := VX shl 1, VF := carry
				n=(vms.var[x]&128)>>7;
				vms.var[x]<<=1;
				vms.var[15]=n;
				break;
			case 0x900: // 9XY0  SNE VX,VY  ; Saute l'instruction suivante si VX <> VY
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
				break;
			case 0x901: // 9XY1  TONE VX, VY ; joue une note de la gamme temp�r�e. VX=note, VY=dur�e
				key_tone(vms.var[x],vms.var[y],false);
				break;
			case 0x902: // 9XY2  PRT VX, VY ; imprime le texte point� par I. I est incr�ment�. position VX, VY
				select_font(FONT_ASCII);
				set_cursor(vms.var[x],vms.var[y]);
				n=sram_read_byte(vms.ix++);
				while (n){
					put_char(n);
					n=sram_read_byte(vms.ix++);
				}
				break;
			case 0x903: // 9XY3 PIXI VX, VY  ; inverse le pixel � la position VX,VY
				plot(vms.var[x],vms.var[y],INVERT);
				break;
			case 0x904: // 9NN4  NOISE NN ; bruit blanc dur�e NN*frame
			    noise((x<<4)+y);
			    break;	
			case 0x905: // 9XY5 TONE VX, VY, WAIT ; joue une note attend la fin avant de poursuivre. VX=note, VY=dur�e
				key_tone(vms.var[x],vms.var[y],true);
				break;
			case 0x906: // 9X06, PUSH VX  ; empile le contenu de VX
			    vms.stack[++vms.sp]=vms.var[x];
				break;	
			case 0x907: // 9X07, POP VX  ; transfert le sommet de la pile dans VX
			    vms.var[x]=vms.stack[vms.sp--];
				break;	
			case 0x908: // 9X08, SCRX  ;  VX=HRES nombre de pixels en largeur d'écran.
				vms.var[x]=HRES;
				break;
			case 0x909: // 9X09, SCRY  ; VX=VRES  nombre de pixels en hauteur d'écran.
				vms.var[x]=VRES;
				break;
			case 0xa00: // ANNN    LD I, NNN  ; I := 2*NNN
				vms.ix=caddr(vms.b1,vms.b2);  // adressse de 13 bits toujours paire
				break;
			case 0xb00: // BNNN     JP V0, NNN  ;  saut � 2*(NNN+V0) 
				vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
				break;
			case 0xc00: //CXKK  RND VX,KK  ; VX=random_number&KK
				vms.var[x]=rand()&vms.b2;
				break;
			case 0xd00: //DXYN DRW VX,VY   ; dessine un sprite à la position indiquée par vx,vy
				n=vms.b2&0xf;
				if (!n){
					load_block(vms.ix,32,block);
					vms.var[15]=put_big_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],(const uint8_t*)block);
				}else{
					load_block(vms.ix,n,block);
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)block);
				}
				break;
			case 0xe9e: //EX9E, SKP VX   ; saute l'instruction suivante si le bouton indiqué par VX est enfoncé
				if (btn_query_down(vms.var[x])) vms.pc+=2;
				break;
			case 0xea1: //EXA1, SKNP VX  ; saute l'instruction suivante si la boutin indiqu� par VX n'est pas enfonc�e
				if (!btn_query_down(vms.var[x])) vms.pc+=2;
				break;
			case 0xf07: // FX07  LD VX, DT   VX := game_timer
				vms.var[x]=game_timer;
				break;
			case 0xf0a: // FX0A  LD VX, K  ; attend qu'une touche soit enfonc�e et met sa valeur dans VX
				vms.var[x]=btn_wait_any();
				break;
			case 0xf15: // FX15  LD DT, VX  ; démarre la minuterie game_timer avec la valeur indiquée par VX
				game_timer=vms.var[x];
				break;
			case 0xf18: // FX18  LD ST, VX  ; beep d'une dur�e VX (multiple de 16.7 msec)
				tone(523,vms.var[x]);
				break;
			case 0xf1e: // FX1E  ADD I, VX  ;  I := I + VX
				vms.ix += vms.var[x];
				break;
			case 0xf29: // FX29  LD F,VX   ; fait point� I vers le caract�re indiqu� par VX dans la police FONT_SHEX
				vms.ix=(int16_t)font_hex_4x6+vms.var[x&0xf]*SHEX_HEIGHT;
				select_font(FONT_SHEX);
				break;
			case 0xf30: // FX30 LD LF,VX  ;fait point� I vers le caract�re indiqu� par VX dans la police FONT_LHEX
				vms.ix=(int16_t)font_hex_8x10+vms.var[x&0xf]*LHEX_HEIGHT;
				select_font(FONT_LHEX);
				break;
			case 0xf33: // FX33 LD B, VX  ;  met la représentation BCD de VX dans M[I]..M[I+2]
				n=vms.var[x];
				block[2]=n%10;
				n /=10;
				block[1]=n%10;
				block[0]=n/10;
				store_block(vms.ix,3,block);
				break;
			case 0xf55: // FX55  LD [I], VX  ; Sauvegarde les registres V0..VX dans la mémoire RAM à l'adresse M[I]...
				store_block(vms.ix,x+1,vms.var);
				break;
			case 0xf65: // FX65 LD VX,[I]  ;charge les registres V0..VX à partir de la mémoire SRAM à l'adresse M[I]
				load_block(vms.ix,x+1,vms.var);
				break;
			case 0xf75: // FX75 LD R,VX  ; sauvegarde les registres V0..VX dans la banque R
				for (n=0;n<=x;n++){
					vms.rpl[n]=vms.var[n];
				}
				break;
			case 0xf85: // FX85 LD VX, R  ;charge les registres V0..VX à partir de la banque R
				for (n=0;n<=x;n++){
					vms.var[n]=vms.rpl[n];
				}
				break;
			default:
				return CHIP_BAD_OPCODE;
		}//switch
#endif		
	}//while(1)
}//schipp()
