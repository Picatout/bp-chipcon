/*
*/


#ifndef TVOUT_H
#define TVOUT_H

#define HRES 128  // horizontal resolution
#define VRES 76   // vertical resolution
#define BPP 1     // bits per pixel
#define BPR (HRES*BPP/8)  // bytes per row
extern uint8_t video_buffer[VRES*BPR];

void tvout_init();

#endif // TVOUT_H