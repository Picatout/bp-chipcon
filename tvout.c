/*

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


enum TASK_ENUM{
    PRE_SYNC,
    VSYNC,
    POST_SYNC,
    VSYNC_END,
    WAIT_FIRST_VIDEO,
    VIDEO_OUT,
    WAIT_FIELD_END,
};

#define F_EVEN_MASK BIT0
#define F_VSYNC_MASK BIT1

static volatile uint16_t task=0; // active task number
static volatile uint16_t flags; // boolean flags.
static volatile uint16_t slice=0; //  task slice
static volatile uint16_t scan_line=0; // scan line counter

uint8_t video_buffer[VRES*HRES*BPP/8];

// use TIMER1 CH1  to generate video synchronization
// output PORT A8.
void tvout_init(){
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    config_pin(SYNC_PORT,9,OUTPUT_PP_SLOW);
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    TMR1->CCER=TMR_CCER_CC1E;
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    TMR1->ARR=HPERIOD;
    TMR1->CCR1=HPULSE;
    TMR1->EGR|=TMR_EGR_UG;
    TMR1->BDTR=TMR_BDTR_MOE;
    TMR1->SR=0;
    TMR1->DIER|=TMR_DIER_UIE;
    set_int_priority(IRQ_TIM1_UP,1);    
    enable_interrupt(IRQ_TIM1_UP);
    TMR1->CR1|=TMR_CR1_CEN; 
}



void __attribute__((__interrupt__)) TV_SYNC_handler(){
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
        break;
    case WAIT_FIRST_VIDEO:
        if (scan_line==24){
            task++;
            slice=0;
        }
        break;
    case VIDEO_OUT:
        {
            int i,r;
            uint8_t s,b,byte;
            while(TMR1->CNT<(uint16_t)(11e-6*(float)FCLK));
            PORTA->ODR|=BIT9;
            r=slice/3*32;
            for (i=0;i<7;i++){
                byte=video_buffer[r+i];
                for(s=128;s;s>>=1){
                    b=byte&s;
                    if (b)PORTA->ODR|=BIT9;else PORTA->ODR&=~BIT9;
                }
            }
        }
        //while(TMR1->CNT<(uint16_t)(40e-6*(float)FCLK));
        PORTA->ODR&=~BIT9;
        next_task(222);
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
        }
        break;
    }//switch slice
    TMR1->SR =0;
}

