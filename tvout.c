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
#include "gamepad.h"
#include "sound.h"

#define SYNC_PORT PORTA
#define SYNC_PIN 8
#define CHROMA_PORT PORTB
#define CHROMA_PIN 0
#define VIDEO_PORT PORTA
#define VIDEO_B0 0
#define VIDEO_B1 1
#define VIDEO_B2 2
#define VIDEO_B3 3

// NTSC constants
#define HFREQ 15734
#define HPERIOD ((uint16_t)(FCLK/HFREQ-1))
#define SYNC_LINE ((uint16_t)(FCLK/(2*HFREQ)-1))
#define HPULSE ((uint16_t)(4.7e-6*(float)FCLK))
#define SERRATION ((uint16_t)(2.3e-6*(float)FCLK))
#define SYNC_PULSE ((uint16_t)(27.1E-6*(float)FCLK))
#define BURST_START ((uint16_t)(5.0e-6*(float)FCLK))
#define BURST_END ((uint16_t)(7.3e-6*(float)FCLK))
#define LEFT_MARGIN (750) 
#define FIRST_VIDEO_LINE (40)
#define VIDEO_LINES (224)
#define CHROMA_CFG  (TMR_CCER_CC3E) 
///////////////////////////
// video modes parameters
///////////////////////////
// BP
#define BP_VRES VRES
#define BP_HRES HRES
#define BP_BPR (HRES/2)
#define BP_RPT (VIDEO_LINES/BP_VRES) // 2 scan lines per row
#define BP_START FIRST_VIDEO_LINE
#define BP_END BP_START+VIDEO_LINES
#define BP_LEFT LEFT_MARGIN+200 // left margin delay
#define BP_PDLY (1) // pixel delay
//SCHIP
#define SCHIP_VRES 64
#define SCHIP_HRES 128
#define SCHIP_BPR (SCHIP_HRES/2)
#define SCHIP_RPT (VIDEO_LINES/SCHIP_VRES)  // 3 scan lines per row
#define SCHIP_START (FIRST_VIDEO_LINE+(VIDEO_LINES-SCHIP_VRES*SCHIP_RPT)/2)
#define SCHIP_END SCHIP_START+SCHIP_VRES*SCHIP_RPT
#define SCHIP_LEFT LEFT_MARGIN+200
#define SCHIP_PDLY (2)

enum TASK_ENUM{
    VSYNC,
    READ_PAD,
    SOUND_TMR,
    GAME_TMR,
    WAIT_FIRST_VIDEO,
    WAIT_VIDEO_END,
    WAIT_FIELD_END,
};

#define F_EVEN BIT0
#define F_VSYNC BIT1
#define F_VIDEO BIT2


static volatile uint16_t task; // active task number
static volatile uint16_t flags; // boolean flags.
static volatile uint16_t slice; //  task slice
static volatile int16_t scan_line; // scan line counter
volatile uint16_t game_timer;
volatile uint16_t sound_timer;
volatile uint32_t ntsc_ticks;

static const vmode_params_t video_params[MODES_COUNT]={
    {VM_BPCHIP,BP_START,BP_END,BP_LEFT,BP_BPR,BP_RPT,BP_PDLY,BP_HRES,BP_VRES},
 //   {VM_XOCHIP,XO_START,XO_END,XO_LEFT,XO_BPR,XO_RPT,XO_PDLY,XO_HRES,XO_VRES},
    {VM_SCHIP,SCHIP_START,SCHIP_END,SCHIP_LEFT,SCHIP_BPR,SCHIP_RPT,SCHIP_PDLY,SCHIP_HRES,SCHIP_VRES},
//    {VM_CHIP8,CHIP8_START,CHIP8_END,CHIP8_LEFT,CHIP8_BPR,CHIP8_RPT,CHIP8_PDLY,CHIP8_HRES,CHIP8_VRES}
};

// video mode parameters
vmode_t video_mode=VM_BPCHIP;
static uint16_t video_start=BP_START;
static uint16_t video_end=BP_END;
static uint16_t left_margin=BP_LEFT;
static uint8_t byte_per_row=BP_BPR;
static uint8_t lines_repeat=BP_RPT;
static uint8_t pixel_delay=BP_PDLY;
static uint8_t hres=BP_HRES;
static uint8_t vres=BP_VRES;

uint8_t video_buffer[VIDEO_BUFFER_SIZE];

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    PORTA->ODR=0;
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    TMR1->CCER=TMR_CCER_CC1E;
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    TMR1->ARR=HPERIOD;
    TMR1->CCR1=HPULSE;
    TMR1->CCR2=BURST_START;
    TMR1->EGR|=TMR_EGR_UG;
    TMR1->BDTR=TMR_BDTR_MOE;
    TMR1->SR=0;
    TMR1->DIER|=TMR_DIER_UIE;
    set_int_priority(IRQ_TIM1_UP,0);
    set_int_priority(IRQ_TIM1_CC,0);
    enable_interrupt(IRQ_TIM1_UP);
    enable_interrupt(IRQ_TIM1_CC);
    TMR1->CR1|=TMR_CR1_CEN; 
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    TMR3->ARR=19; 
    TMR3->CCR3=10;
    TMR3->BDTR|=TMR_BDTR_MOE;
    TMR3->EGR|=TMR_EGR_UG;
    TMR3->SR=0;
    TMR3->CR1|=TMR_CR1_CEN;
    flags|=F_EVEN;
    scan_line=0; 
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
#define _jitter_cancel()  asm volatile ("mov r2,%0\n\t"\
                                       "ldr r2,[r2,#0]\n\t"\
                                       "and r2,#7\n\t"\
                                       "lsl r2,#1\n\t"\
                                       "add pc,pc,r2\n\t"\
                                       ".rept 8\n\t"\
                                       "nop\n\t"\
                                       ".endr\n"\
                                        ::"r"(TMR1_CNT):"r2")

#define _pixel_delay(dly)    asm volatile (\
                              "mov r2,%0\n"\
                              "1: subs r2,#1\n\t"\
                              "bne.n 1b\n\t"\
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    TMR3->CCER&=~CHROMA_CFG;
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    while(TMR1->CNT<left_margin);
    _jitter_cancel();
    TMR3->CCER|=CHROMA_CFG;
    for (i=0;i<byte_per_row;i++){
        _pixel_delay(pixel_delay);
        *video_port=(*video_data)>>4;
        _pixel_delay(pixel_delay);
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
    }
    PORTA->ODR=0;
    TMR3->CCER&=~(TMR_CCER_CC3E);
    TMR1->SR&=~TMR_SR_CC2IF;
}

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    ntsc_ticks++;
    switch (task){
    case VSYNC:
        switch(scan_line){
        case 1:
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            break;
        case 7:
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            break;
        case 13:
            // set post-sync pulse    
            TMR1->CCR1=SERRATION;
            break;
        case 18:
            if (!(flags&F_EVEN)){
sync_end:                
                TMR1->ARR=HPERIOD;
                TMR1->CCR1=HPULSE;
                flags&=~F_VSYNC;
                task++;
            }
            break;
        case 19:
            goto sync_end;
            break;
        }//switch(scan_line)
        break;
    case READ_PAD:
        read_gamepad();
        task++;
        break;    
    case SOUND_TMR:
        if (sound_timer){
            sound_timer--;
            if (!sound_timer){
                sound_stop();
            }
        }
        task++;
        break;    
    case GAME_TMR:
        if (game_timer){
            game_timer--;
        }
        task++;
        break;
    case WAIT_FIRST_VIDEO:
        if (scan_line==video_start){
            TMR1->SR&=~TMR_SR_CC2IF;
            TMR1->DIER|=TMR_DIER_CC2IE;
            flags |= F_VIDEO;
            task++;
            slice=0;
        }
        break;
    case WAIT_VIDEO_END:
        slice++;
        if (scan_line==video_end){
            TMR1->DIER&=~TMR_DIER_CC2IE;
            flags &=~F_VIDEO;
            task++;
        }
        break;  
    case WAIT_FIELD_END:
        if (scan_line==271 && !(flags&F_EVEN)){
            goto frame_end;
        }else
        if (scan_line==272){
            TMR1->ARR=SYNC_LINE;
frame_end:            
            flags^=F_EVEN;
            flags|=F_VSYNC;
            task=VSYNC;
            scan_line=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
}

void frame_sync(){
    while (!(flags&F_VSYNC));
}

void wait_sync_end(){
    while (flags&F_VSYNC);
}

void set_video_mode(vmode_t mode){
    frame_sync();
    video_mode=mode;
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    video_start=video_params[mode].video_start;
    video_end=video_params[mode].video_end;
    left_margin=video_params[mode].left_margin;
    byte_per_row=video_params[mode].bpr;
    lines_repeat=video_params[mode].rpt;
    pixel_delay=video_params[mode].pdly;
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
}

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    while (game_timer);
}

// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    while (ntsc_ticks<t0);
}
