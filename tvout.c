/*

*/

#include "include/blue_pill.h"
#include "tvout.h"

#define SYNC_PORT PORTA
#define SYNC_PIN 8

// NTSC constants
#define HFREQ 15734
#define HPERIOD 63.555e-6
#define HPULSE 4.7E-6
#define SERRATION 2.3e-6  
#define SYNC_PULSE 27.1E-6


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
#define F_VSYNC BIT1

static volatile uint16_t task=0; // active task number
static volatile uint16_t flags; // boolean flags.
static volatile uint16_t slice=0; //  task slice
static volatile uint16_t scan_line=0; // scan line counter

uint8_t video_buffer[VRES*HRES*BPP/8];

// use TIMER1 CH1  to generate video synchronization
// output PORT A8.
void tvout_init(){
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_PP_FAST);

}



void __attribute__((__interrupt__)) TV_SYNC_handler(){
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    switch (task){
    case PRE_SYNC:
        if (!slice){
            // set pre-sync pulse

            slice++;
        }else{
            next_task(6);
        }
        break;
    case VSYNC:
        if (!slice){
            // set vsync pulse

            slice++;
        }else{
            next_task(6);
        }
        break;
    case POST_SYNC:
        if (!slice){
            // set post-sync pulse

            slice++;
        }else if (((flags & F_EVEN_MASK) && (slice==5))||(slice==6)){
            slice=0;
            task++;
        }
        break;
    case VSYNC_END:
        // set normal horizontal line pulse
        scan_line>>=2;
        task++;
        slice=0;
        break;
    case WAIT_FIRST_VIDEO:
        if (scan_line==30){
            task++;
            slice=0;
        }
        break;
    case VIDEO_OUT:
        next_task(222);
        break;
    case WAIT_FIELD_END:
        break;
    }//switch slice

}

