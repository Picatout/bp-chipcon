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
   video interface
   NTST composite output signal.
   16 colors
*/

#include "include/blue_pill.h"
#include "tvout.h"

#define SYNC_PORT PORTA
#define SYNC_PIN 8

// NTSC constants
#define HFREQ 15734
#define HPERIOD ((uint16_t)(FCLK/HFREQ-1))
#define SYNC_LINE ((uint16_t)(FCLK/(2*HFREQ)-1))
#define HPULSE ((uint16_t)(4.7e-6*(float)FCLK))
#define SERRATION ((uint16_t)(2.3e-6*(float)FCLK))
#define SYNC_PULSE ((uint16_t)(27.1E-6*(float)FCLK))
#define CHROMA_START ((uint16_t)(5.1e-6*(float)FCLK))
#define LEFT_MARGIN ((uint16_t)(13.5e-6*(float)FCLK))
#define FIRST_VIDEO_LINE (22)
#define VIDEO_LINES (224)


static const uint16_t palette[4]={
    0,
    (TMR_CCER_CC3E),
    (TMR_CCER_CC4E),
    (TMR_CCER_CC3E|TMR_CCER_CC4E)
};


enum TASK_ENUM{
    PRE_SYNC,
    VSYNC,
    POST_SYNC,
    VSYNC_END,
    READ_PAD,
    WAIT_FIRST_VIDEO,
    WAIT_VIDEO_END,
    WAIT_FIELD_END,
};

#define F_EVEN_MASK BIT0
#define F_VSYNC_MASK BIT1
#define F_VIDEO BIT2

static volatile uint16_t task=0; // active task number
static volatile uint16_t flags; // boolean flags.
static volatile uint16_t slice=0; //  task slice
static volatile uint16_t scan_line=0; // scan line counter
volatile uint16_t pad;

uint8_t video_buffer[VRES*BPR];
uint8_t sl_palette[VRES];
// int active_palette=3;

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    set_palette(3);
    *GPIOA_CNF_CRL=0x88883333;
    *GPIOA_CNF_CRH=0x88444444;
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    PORTA->ODR=0;
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    TMR1->CCER=TMR_CCER_CC1E;
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    TMR1->ARR=HPERIOD;
    TMR1->CCR1=HPULSE;
    TMR1->CCR2=CHROMA_START;
    TMR1->EGR|=TMR_EGR_UG;
    TMR1->BDTR=TMR_BDTR_MOE;
    TMR1->SR=0;
    TMR1->DIER|=TMR_DIER_UIE;
    set_int_priority(IRQ_TIM1_UP,1);
    set_int_priority(IRQ_TIM1_CC,1);
    enable_interrupt(IRQ_TIM1_CC);    
    enable_interrupt(IRQ_TIM1_UP);
    TMR1->CR1|=TMR_CR1_CEN; 
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    config_pin(PORTB,1,OUTPUT_ALT_PP_SLOW);  // TIMER3 CH4
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|(6<<TMR_CCMR2_OC4M_POS)|TMR_CCMR2_OC3PE;
    TMR3->CCER=TMR_CCER_CC3E|TMR_CCER_CC4P;//|TMR_CCER_CC3P|TMR_CCER_CC4P;
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    TMR3->ARR=19; 
    TMR3->CCR3=10;
    TMR3->CCR4=10;
    TMR3->BDTR|=TMR_BDTR_MOE;
    TMR3->EGR|=TMR_EGR_UG;
    TMR3->SR=0;
    TMR3->CR1|=TMR_CR1_CEN; 
}


void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    register uint8_t *video_data;
    register uint16_t *video_port;

    TMR3->CCER|=TMR_CCER_CC3E;
    while(TMR1->CNT<(uint16_t)(8.0e-6*(float)FCLK));
    TMR3->CCER&=~TMR_CCER_CC3E;
    if (flags&F_VIDEO){
            int i,r;
            uint8_t s,b,byte;
            video_port=(uint16_t*)&PORTA->ODR;
            while(TMR1->CNT<LEFT_MARGIN);
            video_data=&video_buffer[slice/2*BPR];
            //r=slice/3*BPR;
            TMR3->CCER|=palette[sl_palette[slice>>1]];//palette[active_palette];//TMR_CCER_CC4E+TMR_CCER_CC3E;
            for (i=0;i<(BPR);i++){
                *video_port=(*video_data)>>4;
                asm("nop\nnop\nnop\nnop\nnop\nnop\nnop\nnop\nnop\nnop\nnop\n");
                *video_port=(*video_data++)&0xf;
                asm("nop\nnop\nnop\nnop\nnop\nnop\nnop\n");
            }
        PORTA->ODR=0;
        TMR3->CCER&=~(TMR_CCER_CC4E+TMR_CCER_CC3E);
    }
    TMR1->SR&=~TMR_SR_CC2IF;
}

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    switch (task){
    case PRE_SYNC:
        if (!slice){
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
        }
        break;
    case VSYNC:
        if (!slice){
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
        }
        break;
    case POST_SYNC:
        if (!slice){
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
            task++;
            if (!(flags&F_EVEN_MASK)){
                break;
            }
        }else{
            slice++;
            break;
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
        TMR1->CCR1=HPULSE;
        flags&=~F_VSYNC_MASK;
        scan_line>>=2;
        task++;
        TMR1->SR&=~TMR_SR_CC2IF;
        TMR1->DIER|=TMR_DIER_CC2IE;
        break;
    case READ_PAD:
        pad = PORTA->IDR&0xc0f0;
        task++;
        break;    
    case WAIT_FIRST_VIDEO:
        if (scan_line==FIRST_VIDEO_LINE){
            task++;
            slice=0;
            flags |= F_VIDEO;
        }
        break;
    case WAIT_VIDEO_END:
        slice++;
        if (scan_line==(FIRST_VIDEO_LINE+VIDEO_LINES)){
            task++;
            flags &=~F_VIDEO;
        }
        break;  
    case WAIT_FIELD_END:
        if (scan_line==263){
            if (flags&F_EVEN_MASK){ // half length
                TMR1->ARR=SYNC_LINE;
            }
            flags^=F_EVEN_MASK;
            flags|=F_VSYNC_MASK;
            scan_line=0;
            slice=0;
            task=0;
            TMR1->DIER&=~TMR_DIER_CC2IE;
        }
        break;
    }//switch slice
    TMR1->SR&=~TMR_SR_UIF;
}

void frame_sync(){
    while (!(flags&F_VSYNC_MASK));
}

void set_palette(uint8_t p){
    int i;
    p&=3;
     for (i=0;i<VRES;i++) sl_palette[i]=p;
}

uint16_t btn_wait_any(){
    while ((pad&ALL_BTN)==ALL_BTN);
    return ~(pad&0xffff);
}
