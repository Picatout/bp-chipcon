/*
* Copyright Jacques Deschênes 2018, 2019 
* This file is part of BPOS.
*
*     BPOS is free software: you can redistribute it and/or modify
*     it under the terms of the GNU General Public License as published by
*     the Free Software Foundation, either version 3 of the License, or
*     (at your option) any later version.
*
*     BPOS is distributed in the hope that it will be useful,
*     but WITHOUT ANY WARRANTY; without even the implied warranty of
*     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*     GNU General Public License for more details.
*
*     You should have received a copy of the GNU General Public License
*     along with BPOS.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
 * Description: un petit système d'exploitation inspiré de CP/M
 * 
 * Auteur: PICATOUT
 * Date: 2018-09-28
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#include "include/blue_pill.h"
#include "tvout.h"
#include "graphics.h"

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
	int x,y;
	uint8_t c;
	/*
	for (x=26,y=1;x<(HRES-26);x++,y++)
		{
			gfx_plot(x,y,5);
		}
	*/
	c=15;
	for (x=0;x<VRES*HRES;x++){
		video_buffer[x]=c;
		if (x%8==0){
			c--;
			c&=0xf;
		}
	}	
	gfx_print("Hello world!\n");	
	while(1){
		x=0;
		timer=5000;
		while(timer)x++;
		active_palette=(++active_palette)&3;

	//	gfx_print_int(x,10);
	};

}
