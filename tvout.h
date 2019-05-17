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

#ifndef TVOUT_H
#define TVOUT_H

#define HRES 180  // horizontal resolution
#define VRES 112   // vertical resolution
#define BPP 4     // bits per pixel
#define BPR (HRES*BPP/8)  // bytes per row

#define BTN_UP BIT4
#define BTN_DOWN BIT5
#define BTN_LEFT BIT6
#define BTN_RIGHT BIT7
#define BTN_A BIT14
#define BTN_B BIT15
#define ALL_BTN (BIT4|BIT5|BIT6|BIT7|BIT14|BIT15)

#define _get_btn(btn) (pad&btn)
#define _wait_btn_release(btn)  ({while (!(pad&btn));})
#define _btn_down(btn) (!(pad&btn))

typedef enum VIDEO_MODES{
   VM_HIRES, // 180x112 16 colors (default)
   VM_XOCHIP, // 128x64 4 colors
   VM_SCHIP, // 128x64 monochrome
   VM_CHIP8,  // 64x32 monochrome

   MODES_COUNT
}vmode_t;

typedef struct vmode_params{
    vmode_t mode; // video mode
    uint16_t first_visible; // first visible scan line
    uint16_t video_end;  // last visible scan line
    uint16_t left_margin;   // left margin delay
    uint8_t bpr; // bytes per row
    uint16_t hres; // horizontal pixels
    uint16_t vres; // vertical pixels
    uint16_t chroma_setting;
}vmode_params_t;

extern volatile uint16_t pad;
extern uint8_t video_buffer[VRES*BPR];
void set_video_mode(vmode_t mode);
vmode_params_t* get_video_params();
void tvout_init();
void frame_sync();
uint16_t btn_wait_any();

#endif // TVOUT_H