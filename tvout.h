/*
*/


#ifndef TVOUT_H
#define TVOUT_H

#define HRES 180  // horizontal resolution
#define VRES 112   // vertical resolution
#define BPP 4     // bits per pixel
#define BPR (HRES*BPP/8)  // bytes per row

extern volatile uint16_t pad;
extern uint8_t video_buffer[VRES*BPR];
extern uint8_t sl_palette[VRES];
//extern int active_palette;
void set_palette(uint8_t color);
void tvout_init();
void frame_sync();

#endif // TVOUT_H