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

#define SOUND_BUFFER_SIZE 16
static uint8_t sound_buffer[SOUND_BUFFER_SIZE];
static uint8_t bit_pos;

void sound_init(){
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    TMR2->CCER=TMR_CCER_CC3E;
    TMR2->PSC=9; //FCLK/10
    set_int_priority(IRQ_TIM2,0);
    enable_interrupt(IRQ_TIM2);
}

void tone(uint16_t freq, uint16_t duration){
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    TMR2->ARR=FCLK/10/freq;
    TMR2->CCR3=TMR2->ARR/2;
    TMR2->DIER&=~TMR_DIER_CC3IE;
    TMR2->CR1|=TMR_CR1_CEN;
    sound_timer=duration;
}

void beep(uint16_t duration){
    tone(1000,duration);
}

void load_sound_buffer(const uint8_t* buffer){
    int i;
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
        sound_buffer[i]=*buffer++;
    }
}

// configure son pour sortie buffer
void sound_sampler(uint16_t duration){
    bit_pos=0;
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    PORTB->ODR&=~BIT10;
    config_pin(PORTB,10,OUTPUT_PP_SLOW);
    TMR2->DIER|=TMR_DIER_UIE;
    TMR2->ARR=FCLK/10/4000;
    TMR2->CCR2=TMR2->ARR;
    TMR2->CR1|=TMR_CR1_CEN;
    sound_timer=duration;
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    TMR2->DIER&=~TMR_DIER_UIE;
}


// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
}

// produit un bruit 
void noise(int length){

}

void __attribute__((__interrupt__)) sound_handler(){
    uint8_t byte,mask;
    byte=bit_pos/8;
    mask=1<<(7-bit_pos%8);
    if (sound_buffer[byte]&mask){
        PORTB->ODR|=BIT10;
    }else{
        PORTB->ODR&=~BIT10;
    }
    bit_pos++;
    bit_pos%=SOUND_BUFFER_SIZE;
    TMR2->SR&=~TMR_SR_UIF;
}
