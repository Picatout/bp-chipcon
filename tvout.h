/*
*/


#ifndef TVOUT_H
#define TVOUT_H

#define HRES 128  // horizontal resolution
#define VRES 76   // vertical resolution
#define BPP 4     // bits per pixel
#define BPR (HRES*BPP/8)  // bytes per row
extern uint8_t video_buffer[VRES*BPR];
extern int active_palette;
void tvout_init();

#endif // TVOUT_H