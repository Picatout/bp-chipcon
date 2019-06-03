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

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    TMR2->CCER=TMR_CCER_CC3E;
    TMR2->PSC=9; //FCLK/10
    set_int_priority(IRQ_TIM2,0);
    enable_interrupt(IRQ_TIM2);
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    TMR2->CCR3=TMR2->ARR/2;
    TMR2->CR1|=TMR_CR1_CEN;
    sound_timer=duration;
}

void beep(uint16_t duration){
    tone(1000,duration);
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    TMR2->DIER&=~TMR_DIER_UIE;
}

static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    tone(tempered_scale[note],length);
    if (wait_end) while (sound_timer);
}

// produit un bruit 
void noise(int length){
    srand(ntsc_ticks);
    tone(6000,length);
    TMR2->DIER|=TMR_DIER_UIE;
}

void __attribute__((__interrupt__)) sound_handler(){
    uint8_t byte,mask;
    if (rand()&1){
        TMR2->CCER|=TMR_CCER_CC3P;
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;

    }
    TMR2->SR&=~TMR_SR_UIF;
}
