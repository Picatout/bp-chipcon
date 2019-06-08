/*
* Copyright Jacques Deschênes 2019 
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
 * Description: SUPER CHIPCON game console on BLUE PILL.
 * 
 * Auteur: PICATOUT
 * Date: 2019-05-01
 * Copyright Jacques Deschênes, 2019
 * Licence: GPLv3
 * revisions:
 * 
 */

#include <stdlib.h>
#include <string.h>
#include "include/blue_pill.h"
#include "tvout.h"
#include "graphics.h"
#include "text.h"
#include "gamepad.h"
#include "sound.h"
#include "games/games.h"
#include "chipcon_vm.h"
#include "include/gen_fn.h"

//const void* TPA_TOP=(void*)_TPA_TOP;

//void* here;
//void* ffa;


// configure SYSCLK à la fréquence maximale de 72 Mhz
// en utilisant le cristal externe (HSE) et le PLL
static void set_sysclock(){
	 // active l'oscillateur externe
	RCC->CR|=RCC_CR_HSEON;
	 // attend que l'oscillateur soit prêt
   while (!(RCC->CR&RCC_CR_HSERDY));
     // sélection PREDIV1 pour la source du PLL
     // multiplie la fréquence HSE par 5 
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    // active le PLL
    RCC->CR|=RCC_CR_PLLON;
    // Attend que le PLL soit prêt
    while (!(RCC->CR&RCC_CR_PLLRDY));
    // ajoute délais d'accès à la mémoire flash
    // active le prefetch buffer
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
	// La fréquence maximale pour APB1 doit-être de <=36 Mhz
	// donc divise SYSCLK/2
    // Sélectionne le PLL comme source pour SYSCLK dans CR
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
}



extern void print_fault(const char *msg, sfrp_t adr);

extern uint32_t _FLASH_FREE;
extern uint32_t _TPA_START;
extern uint32_t _DATA_RAM_START;
extern uint32_t _DATA_ROM_START;

const static uint8_t ball8x8[8*BPP]={
	0x00,0x77,0x77,0x00,
	0x07,0x77,0x77,0x70,
	0x77,0x77,0x77,0x77,
	0x77,0x77,0x77,0x77,
	0x77,0x77,0x77,0x77,
	0x77,0x77,0x77,0x77,
	0x07,0x77,0x77,0x70,
	0x00,0x77,0x77,0x00,
};

const static uint8_t ball8x8_2bpp[8*2]={
    0x0f,0xf0,
    0x3f,0xfc,
    0xff,0xff,
    0xff,0xff,
    0xff,0xff,
    0xff,0xff,
    0x3f,0xfc,
    0x0f,0xf0,
};

const static uint8_t ball8x8_1bpp[8]={
	0x3c,
	0x7e,
	0xff,
	0xff,
	0xff,
	0xff,
	0x7e,
	0x3c
};

typedef struct ball{
	int x;
	int y;
	int dx;
	int dy;
	const uint8_t* ball_sprite;
}ball_t;

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

static const uint8_t pal2[4]={0,9,2,10};
static void draw_balls(){
	int i;
	frame_sync();
	for (i=0;i<BALL_COUNT;i++){
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
	}
	wait_sync_end();
}

//REF: https://en.wikipedia.org/wiki/Integer_square_root
int isqrt(int n){
	int small, large;
	if (n<2) return n;
  	small = isqrt(n >> 2) << 1;
	large = small + 1;
	if (large*large > n)
		return small;
	else
		return large;	
}

unsigned distance(ball_t *ball1, ball_t *ball2){
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
}

static void move_balls(){
	int i;
	vmode_params_t *vparams=get_video_params();
	for (i=0;i<BALL_COUNT;i++){
		balls[i].x+=balls[i].dx;
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
			balls[i].dx=-balls[i].dx;
			balls[i].x+=balls[i].dx;
		}
		balls[i].y+=balls[i].dy;
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
			balls[i].dy=-balls[i].dy;
			balls[i].y+=balls[i].dy;
		} 
	}
	// collision between balls
	if (distance(&balls[0],&balls[1])<8){
		if (balls[0].dx!=balls[1].dx){
			i=balls[0].dx;
			balls[0].dx=balls[1].dx;
			balls[1].dx=i;
		}
		if (balls[0].dy!=balls[1].dy){
			i=balls[0].dy;
			balls[0].dy=balls[1].dy;
			balls[1].dy=i;
		}
	}
}


static void init_balls(){
	int i;
	vmode_params_t *vparams=get_video_params();
	srand(ntsc_ticks);
	for (i=0;i<BALL_COUNT;i++){
		balls[i].x=rand()%vparams->hres;
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
		balls[i].dx=1;
		balls[i].dy=1;
		if (vparams->mode==VM_BPCHIP){
			balls[i].ball_sprite=ball8x8_2bpp;//ball8x8;
			sprite_bpp=TWO_BPP;
		}else{
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
		}
	}
}

static void color_bars(){
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
				c--;
			}
			gfx_blit(x,y,c,BIT_SET);
		}
	}
		

}

static void vertical_bars(){
	int y;
	vmode_params_t* vparams=get_video_params();
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
		gfx_blit(0,y,15,BIT_SET);
		gfx_blit(vparams->hres-1,y,15,BIT_SET);
	}
}

static void horiz_bars(){
	int x;
	vmode_params_t* vparams=get_video_params();
	for (x=0;x<vparams->hres;x++){
		gfx_blit(x,0,15,BIT_SET);
		gfx_blit(x,vparams->vres-1,15,BIT_SET);
	}
}

static void video_test(){
	int x,y,sx,sy,dx,dy;
	uint8_t c,p=0;

	set_video_mode(p);
	color_bars();
	vertical_bars();
	horiz_bars();
    print_int((int)&_FLASH_FREE,16);	
	print_int(0x20005000-(int)(&_TPA_START),10);
	init_balls();
	p=0;
	while(1){
		draw_balls();
		//game_pause(1);
		draw_balls();
		move_balls();
		if (btn_query_down(KEY_RIGHT)){
			p^=1;
			set_video_mode(p);
			switch(p){
			case VM_BPCHIP:
				print("BPCHIP mode\n180x112 16 colors");
				color_bars();
				sprite_bpp=TWO_BPP;
				break;
			case VM_SCHIP:
				print("SCHIP mode\n128x64 mono");
				break;
			}
			vertical_bars();
			horiz_bars();
			init_balls();
			btn_wait_up(KEY_RIGHT);
		}else if (btn_query_down(KEY_B)){
			btn_wait_up(KEY_B);
			break;
		}
	}//while(1)
	set_video_mode(VM_BPCHIP);
}

static void sound_test(){
	uint8_t key=255;
	uint16_t freq;
	gfx_cls();
	print("press buttons\n");
	while (key!=KEY_B){
		key=btn_any_down();
		switch(key){
		case KEY_UP:
			freq=440;
			break;
		case KEY_DOWN:
			freq=466;
			break;
		case KEY_LEFT:
			freq=493;
			break;
		case KEY_RIGHT:
			freq=523;
			break;
		case KEY_A:
			freq=554;
			break;
		case KEY_B:
			freq=587;
			break;
		case KEY_C:
			freq=622;
			break;
		case KEY_D:
			freq=659;
			break;
		}//swtich
		tone(freq,3);
	}
	btn_wait_up(key);
	noise(30);
	while(sound_timer);
}

// niveau de support pour débogage.
vm_debug_t debug_level;

static void run_game(unsigned idx){
	int i;
	uint8_t exit_code;
	uint16_t addr=0;
	if (games_list[idx].vmode==VM_SCHIP){
		addr=512;
	}
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
	set_keymap(games_list[idx].keymap);
	set_video_mode(games_list[idx].vmode);
	set_palette(DEFAULT_PALETTE);
	exit_code=chip_vm(addr,debug_level);
	print("exit code: ");
	switch(exit_code){
	case CHIP_EXIT_OK:
		print("CHIP EXIT OK");
		i=0;
		break;
	case CHIP_BAD_OPCODE:
	case CHIP_BAD_ADDR:
		select_console(SERIAL);
		print_vms("CHIP VM ERROR\n",exit_code);
		select_console(LOCAL);
		btn_wait_any();
		i=1;
		break;
	}//switch
	game_pause(i);
}

static void print_games_list(unsigned first, unsigned rows){
	int r=1;
	uint16_t line;
	set_cursor(0,0);
	print(" ********** GAMES **********");
	while ((r<rows) && games_list[first].size){
		new_line();
		clear_line();
		put_char(' ');
		print(games_list[first].name);
		line=get_cursor()&0xff;
		set_cursor(90,line);
		if (games_list[first].vmode==VM_SCHIP){
			print("(SCHIP)");
		}else{
			print("(BPCHIP)");
		}
		first++;
		r++;
	}
}


static void select_game(){
	int i=0,first=0,count,rows,selected=1;
	int loop=1;
	uint8_t btn;
	vmode_params_t *vparams;
	count=games_count();
	set_video_mode(VM_BPCHIP);
	vparams=get_video_params();
	rows=vparams->vres/CHAR_HEIGHT;
	while(loop){
		if (selected<rows) first=0;else first=selected-rows+1;
		print_games_list(first,rows);
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
		put_char('>');
		btn=btn_wait_any();
		btn_wait_up(btn);
		switch(btn){
		case KEY_UP:
			if (selected>1) selected--;
			break;
		case KEY_DOWN:
			if (selected<count){
				selected++;
			}
			break;
		case KEY_A:
			selected=1;
			break;
		case KEY_C:
			selected=count;
			break;				
		case KEY_B:
			loop=false;
			break;	
		case KEY_D:
			return;	
		}
	}
	run_game(selected-1);
}

static void select_debug_level(){
	uint8_t btn;
	gfx_cls();
	print(" **** VM debug support ****\n");
	print(" No debug support\n");
	print(" Print PC and OPCODE\n");
	print(" Print all VM states.\n");
	print(" Single step\n");
	while (1){
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
		put_char('*');
		btn=btn_wait_any();
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
		put_char(' ');
		switch(btn){
		case KEY_UP:
			if (debug_level) debug_level--;
			break;
		case KEY_DOWN:
			if (debug_level<DEBUG_SSTEP) debug_level++;
			break;
		case KEY_B:
			return;	
		}//swtich
	}
}

#define MENU_ITEMS (4)
static const char *menu_list[MENU_ITEMS]={
	" Games list",
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
	int i;
	gfx_cls();
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
	}
}

static void menu(){
	int i=0;
	uint8_t btn;
	vmode_params_t* vparams=get_video_params();
	display_menu();
	while (1){
		set_cursor(0,i*CHAR_HEIGHT);
		put_char('>');
		btn=btn_wait_any();
		btn_wait_up(btn);
		set_cursor(0,i*CHAR_HEIGHT);
		put_char(' ');
		switch(btn){
		case KEY_UP:
			if (i) i--;
			break;
		case KEY_DOWN:
			if (i<(MENU_ITEMS-1)) i++;
			break;
		case KEY_B:
			switch(i){
			case 0:
				select_game();
				break;
			case 1:
				select_debug_level();
				break;	
			case 2:
				video_test();
				break;
			case 3:
				sound_test();
				break;	
			}
			//set_video_mode(VM_BPCHIP);
			display_menu();
			break;	
		}
	}//while
}

void main(void){
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
	_led_off();
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
	gamepad_init();
	tvout_init();
	sound_init();
	gfx_cls();
	menu();
}
