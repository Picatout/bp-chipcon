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
#include "graphics.h"

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
#define LEFT_MARGIN (760) 
#define FIRST_VIDEO_LINE (22)
#define VIDEO_LINES (224)

///////////////////////////
// video modes parameters
///////////////////////////
// HIRES
#define HIRES_VRES VRES
#define HIRES_HRES HRES
#define HIRES_BPR (HRES/2)
#define HIRES_RPT (VIDEO_LINES/HIRES_VRES) // 2 scan lines per row
#define HIRES_START FIRST_VIDEO_LINE
#define HIRES_END HIRES_START+VIDEO_LINES
#define HIRES_LEFT LEFT_MARGIN // left margin delay
#define HIRES_PDLY (1) // pixel delay
#define HIRES_CHROMA (TMR_CCER_CC3E|TMR_CCER_CC4E)
//XOCHIP
#define XO_VRES 64
#define XO_HRES 128
#define XO_BPR (XO_HRES/2)
#define XO_RPT (VIDEO_LINES/XO_VRES)  // 3 scan lines per row
#define XO_START (FIRST_VIDEO_LINE+(VIDEO_LINES-XO_VRES*XO_RPT)/2)
#define XO_END XO_START+XO_VRES*XO_RPT
#define XO_LEFT LEFT_MARGIN+140
#define XO_PDLY (2)
#define XO_CHROMA (TMR_CCER_CC3E|TMR_CCER_CC4E)
//SCHIP
#define SCHIP_VRES 64
#define SCHIP_HRES 128
#define SCHIP_BPR (SCHIP_HRES/2)
#define SCHIP_RPT (VIDEO_LINES/SCHIP_VRES)  // 3 scan lines per row
#define SCHIP_START (FIRST_VIDEO_LINE+(VIDEO_LINES-SCHIP_VRES*SCHIP_RPT)/2)
#define SCHIP_END SCHIP_START+SCHIP_VRES*SCHIP_RPT
#define SCHIP_LEFT LEFT_MARGIN+140
#define SCHIP_PDLY (2)
#define SCHIP_CHROMA (0)
//CHIP8
#define CHIP8_VRES 32
#define CHIP8_HRES 64
#define CHIP8_BPR (CHIP8_HRES/2)
#define CHIP8_RPT (VIDEO_LINES/CHIP8_VRES) // 7 scan lines per row
#define CHIP8_START (FIRST_VIDEO_LINE+(VIDEO_LINES-CHIP8_VRES*CHIP8_RPT)/2)
#define CHIP8_END (CHIP8_START+CHIP8_VRES*CHIP8_RPT)
#define CHIP8_LEFT LEFT_MARGIN
#define CHIP8_PDLY (7)
#define CHIP8_CHROMA (0)

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

#define F_EVEN BIT0
#define F_VSYNC BIT1
#define F_VIDEO BIT2


static vmode_t video_mode=VM_HIRES;
static volatile uint16_t task=0; // active task number
static volatile uint16_t flags; // boolean flags.
static volatile uint16_t slice=0; //  task slice
static volatile uint16_t scan_line=0; // scan line counter
volatile uint16_t pad;


static const vmode_params_t video_params[MODES_COUNT]={
    {VM_HIRES,HIRES_START,HIRES_END,HIRES_LEFT,HIRES_BPR,HIRES_RPT,HIRES_PDLY,HIRES_HRES,HIRES_VRES,HIRES_CHROMA},
    {VM_XOCHIP,XO_START,XO_END,XO_LEFT,XO_BPR,XO_RPT,XO_PDLY,XO_HRES,XO_VRES,XO_CHROMA},
    {VM_SCHIP,SCHIP_START,SCHIP_END,SCHIP_LEFT,SCHIP_BPR,SCHIP_RPT,SCHIP_PDLY,SCHIP_HRES,SCHIP_VRES,SCHIP_CHROMA},
    {VM_CHIP8,CHIP8_START,CHIP8_END,CHIP8_LEFT,CHIP8_BPR,CHIP8_RPT,CHIP8_PDLY,CHIP8_HRES,CHIP8_VRES,CHIP8_CHROMA}
};

uint8_t video_buffer[VRES*BPR];

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
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
    set_int_priority(IRQ_TIM1_UP,0);
    set_int_priority(IRQ_TIM1_CC,0);
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

static void __attribute__((optimize("O1"))) pixel_delay(uint32_t dly){
    asm("");
    while (dly--);
}

#define _jitter_cancel()  asm volatile ("mov r2,%0\n\t"\
                                       "ldr r2,[r2,#0]\n\t"\
                                       "and r2,#15\n\t"\
                                       "lsl r2,#1\n\t"\
                                       "add pc,pc,r2\n\t"\
                                       ".rept 16\n\t"\
                                       "nop\n\t"\
                                       ".endr\n"\
                                        ::"r"(TMR1_CNT))



#define _pixel_delay(dly)    asm volatile (\
                              "mov r2,%0\n"\
                              "1: subs r2,#1\n\t"\
                              "bne.n 1b\n\t"\
                              ::"r" (dly):"r2")

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
#define _bpr video_params[video_mode].bpr
#define _rpt video_params[video_mode].rpt
//#define _pdly video_params[video_mode].pdly
    register uint8_t *video_data;
    register uint16_t *video_port;
    if (video_mode<VM_SCHIP){
        TMR3->CCER|=TMR_CCER_CC3E;
        while(TMR1->CNT<573); //(uint16_t)(8.0e-6*(float)FCLK));
        TMR3->CCER&=~TMR_CCER_CC3E;
    }
    if (flags&F_VIDEO){
            register uint32_t i;
            register uint8_t pdly;
            video_port=(uint16_t*)&PORTA->ODR;
            while(TMR1->CNT<video_params[video_mode].left_margin);
            _jitter_cancel();
            TMR3->CCER|=video_params[video_mode].chroma_setting;
            video_data=&video_buffer[slice/_rpt*_bpr];
            pdly=video_params[video_mode].pdly;
            for (i=0;i<_bpr;i++){
                *video_port=(*video_data)>>4;
                _pixel_delay(pdly);
                *video_port=(*video_data++)&0xf;
                _pixel_delay(pdly);
            }
/*
            if (video_mode==VM_CHIP8){
                video_data=&video_buffer[slice/7*bpr];
                for (i=0;i<bpr;i++){
                    *video_port=(*video_data)>>4;
                    _pixel_delay(8);
                    *video_port=(*video_data++)&0xf;
                    _pixel_delay(8);
                }
            }else{
                video_data=&video_buffer[slice/2*bpr];
                for (i=0;i<bpr;i++){
                    *video_port=(*video_data)>>4;
                    _pixel_delay(2);
                    *video_port=(*video_data++)&0xf;
                    _pixel_delay(2);
                }
            }
*/
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
            if (!(flags&F_EVEN)){
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
        flags&=~F_VSYNC;
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
        if (scan_line==video_params[video_mode].first_visible){
            task++;
            slice=0;
            flags |= F_VIDEO;
        }
        break;
    case WAIT_VIDEO_END:
        slice++;
        if (scan_line==video_params[video_mode].video_end){
            task++;
            flags &=~F_VIDEO;
        }
        break;  
    case WAIT_FIELD_END:
        if (scan_line==263){
            if (flags&F_EVEN){ // half length
                TMR1->ARR=SYNC_LINE;
            }
            flags^=F_EVEN;
            flags|=F_VSYNC;
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
    while (!(flags&F_VSYNC));
}

uint16_t btn_wait_down(uint16_t mask){
    int counter=0;
    while (counter<20){
        if ((pad=((PORTA->IDR)&mask))==mask){
            counter=0;
        }else{
            counter++;
        }
        pause(1);
    }    
    return ~(pad&0xffff);
}

void btn_wait_up(uint16_t mask){
    int counter=0;
    while (counter<20){
        if ((PORTA->IDR&mask)!=mask){
            counter=0;
        }else{
            counter++;
        }
        pause(1);
    }
}

int btn_query_down(uint16_t mask){
    return (!(PORTA->IDR&mask));
}


void set_video_mode(vmode_t mode){
    gfx_cls();
    frame_sync();
    video_mode=mode;
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
}
