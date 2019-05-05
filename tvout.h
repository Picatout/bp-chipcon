/*
*/


#ifndef TVOUT_H
#define TVOUT_H

#define HRES 128  // horizontal resolution
#define VRES 80   // vertical resolution
#define BPP 1     // bits per pixel

extern uint8_t video_buffer[VRES*HRES*BPP/8];

void tvout_init();

#endif // TVOUT_H