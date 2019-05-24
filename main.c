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
#include "include/blue_pill.h"
#include "tvout.h"
#include "graphics.h"
#include "text.h"
#include "gamepad.h"

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

typedef struct ball{
	int x;
	int y;
	int dx;
	int dy;
	const uint8_t* ball_sprite;
}ball_t;

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

void draw_balls(){
	int i;
	frame_sync();
	for (i=0;i<BALL_COUNT;i++){
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

void move_balls(){
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


void init_balls(){
	int i;
	vmode_params_t *vparams=get_video_params();
	//srand(ticks);
	for (i=0;i<BALL_COUNT;i++){
		balls[i].x=rand()%vparams->hres;
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
		balls[i].dx=1;
		balls[i].dy=1;
		balls[i].ball_sprite=ball8x8;
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
			gfx_plot(x,y,c);
		}
	}
		

}

static void vertical_bars(){
	int x,y;
	vmode_params_t* vparams=get_video_params();
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
		gfx_plot(0,y,15);
		gfx_plot(vparams->hres-1,y,15);
	}
}

static void video_test(){
	int x,y,sx,sy,dx,dy;
	uint8_t c,p=0;

	set_video_mode(p);
	color_bars();
	vertical_bars();
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
			p=++p&3;
			set_video_mode(p);
			switch(p){
			case VM_BPCHIP:
				print("BPCHIP mode\n180x112 16 colors");
				color_bars();
				break;
			case VM_XOCHIP:
				print("XOCHIP mode\n128x64 4 colors");
				break;
			case VM_SCHIP:
				print("SCHIP mode\n128x64 mono");
				break;
			case VM_CHIP8:
				print("CHIP8 mode\n64x32 mono");
				break;
			}
			vertical_bars();
			init_balls();
			btn_wait_up(KEY_RIGHT);
		}else if (btn_query_down(KEY_B)){
			btn_wait_up(KEY_B);
			break;
		}
	}//while(1)
}

static void display_keymap(uint8_t*map){
	int i;
	set_cursor(0,CHAR_HEIGHT);
	for (i=0;i<8;i++) print_int(map[i],16);
}

static void buttons_map(){
	int i;
	uint8_t btn=255,key;
	uint8_t* keymap=get_keymap(),newmap[8];
	gfx_cls();
	println("buttons map table");
	for (i=0;i<8;i++){
		newmap[i]=keymap[i];
	}
	display_keymap(newmap);
	set_cursor(0,CHAR_HEIGHT);
	show_cursor(1);
	i=0;
	key=newmap[i];
	while(btn!=KEY_B){
		btn=btn_wait_any();
		switch(btn){
		case KEY_LEFT:
			if (i){
				show_cursor(0);
				i--;
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
				show_cursor(1);
				key=newmap[i];
			}
			break;
		case KEY_RIGHT:
			if (i<7){
				show_cursor(0);
				i++;
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
				show_cursor(1);
				key=newmap[i];
			}
			break;
		case KEY_UP:
			if (key<15){
				key++;
				newmap[i]=key;
				print_int(key,16);
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
				show_cursor(1);
			}
			break;
		case KEY_DOWN:
			if (key){
				key--;
				newmap[i]=key;
				print_int(key,16);
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
				show_cursor(1);
			}
			break;
		case KEY_C:
			for (i=0;i<8;i++)newmap[i]=keymap[i];
			display_keymap(newmap);
			set_cursor(0,CHAR_HEIGHT);
			i=0;
			key=newmap[i];
			break;	
		}//switch
		btn_wait_up(btn);
	}
	for (i=0;i<8;i++)keymap[i]=newmap[i];
}

static void select_game(){
	gfx_cls();
	println("games");
	game_pause(60);
}


#define MENU_ITEMS (3)
static const char *menu_list[MENU_ITEMS]={
	" Buttons map",
	" Games list",
	" Video test",
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
				buttons_map();
				break;
			case 1:
				select_game();
				break;
			case 2:
				video_test();
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
//	config_systicks();
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
	_led_off();
	gamepad_init();
	tvout_init();
	gfx_cls();
	menu();
}
