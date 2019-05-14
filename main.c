/*
* Copyright Jacques Deschênes 2018, 2019 
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

#include "include/blue_pill.h"
#include "tvout.h"
#include "graphics.h"
#include "text.h"

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


extern uint32_t _TPA_START;
extern uint32_t _DATA_RAM_START;
extern uint32_t _DATA_ROM_START;

const static uint8_t test_sprite[8*BPP]={
	0x00,0x77,0x77,0x00,
	0x07,0x77,0x77,0x70,
	0x77,0x77,0x77,0x77,
	0x77,0x77,0x77,0x77,
	0x77,0x77,0x77,0x77,
	0x77,0x77,0x77,0x77,
	0x07,0x77,0x77,0x70,
	0x00,0x77,0x77,0x00,
};

void main(void){
	set_sysclock();
	config_systicks();
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
	_led_off();
	tvout_init();
	gfx_cls();
	//gfx_rectangle(0,0,HRES-1,VRES-1);
	int x,y,sx,sy,dx,dy;
	uint32_t t0;
	uint8_t c,p=3;
	/*
	for (x=26,y=1;x<(HRES-26);x++,y++)
		{
			gfx_plot(x,y,5);
		}
	*/
/*
	c=4;
	for (y=0;y<VRES;y++){
		if (y%28==0) c--;
		sl_palette[y]=c&3;
	}
*/	
	for (y=VRES/4*3;y<VRES;y++){
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
				c--;
			}
			gfx_plot(x,y,c);
		}
	}
		
//	gfx_print("012345678901234567890123456789");
    print_int((int)&_DATA_ROM_START,10);	
	print_int(0x20005000-(int)(&_TPA_START),10);
	set_cursor(20*CHAR_WIDTH,0);
	print("palette:");
	print_int(sl_palette[0],10);
	sx=sy=0;
	dx=dy=1;
	gfx_scroll_right(3);
	gfx_scroll_left(3);
	while(1){
//		x++;
//		frame_sync();
		gfx_sprite(sx,sy,8,8,test_sprite);
		t0=ticks+10;
		while (ticks<t0);
		frame_sync();
		gfx_sprite(sx,sy,8,8,test_sprite);
		sx+=dx;
		if (sx<-8|| sx>=HRES) dx=-dx;
		sy+=dy;
		if (sy<-8 || sy>=VRES) dy=-dy;
		if (!(pad&BIT15)){
			set_palette(++p);
			set_cursor(28*CHAR_WIDTH,0);
			print_int(p&3,10);
			while (!(pad&BIT15));
		}
/*		
		if (!timer){
			set_palette(++p);
			gfx_locate(0,28);
			gfx_print_int(p&3,10);
			timer=5000;
		}
*/		
	};

}
