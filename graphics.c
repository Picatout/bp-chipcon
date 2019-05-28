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
 * Description: SUPER CHIPCON game console on BLUE PILL.
 * 
 * Auteur: PICATOUT
 * Date: 2019-05-01
 * Copyright Jacques Deschênes, 2019
 * Licence: GPLv3
 * revisions:
 * 
 */
/*
    graphics functions
*/


#include "include/blue_pill.h"
#include "tvout.h"
#include "include/ascii.h"
#include "graphics.h"
#include "text.h"

uint8_t sprite_bpp=4;
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    palette[1]=new[1];
    palette[2]=new[2];
    palette[3]=new[3];
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    idx=y*vparams->bpr+x/2;
    color&=0xf;
    mask=0xf0;
    if (!(x&1)){
         color<<=4;
         mask=0x0f;
    }
    byte=video_buffer[idx];
    switch (op){
    case BIT_OR:
        byte|=color;
        break;
    case BIT_AND:
        byte&=color;
        break;
    case BIT_XOR:
        byte^=color;
        break;
    case BIT_INVERT:
        byte^=~mask;
        break;
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    return (byte&mask)^color;
}

void gfx_plot (int x,int y,uint8_t color){
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    idx=y*vparams->bpr+x/2;
    color&=0xf;
    byte=video_buffer[idx];
    if (x&1){
        byte&=0xf0;
        byte|=color;
    }else{
        byte&=0xf;
        byte|=color<<4;
    }
    video_buffer[idx]=byte;
}

void gfx_cls(){
	int x;
	for (x=0;x<VRES*BPR;x++) video_buffer[x]=0;
    set_cursor(0,0);
}

static uint8_t* move_up(uint8_t* src, uint8_t* dest, int size){
    while (size--) *--dest=*--src;
    return dest;
}

static uint8_t* move_down(uint8_t* src, uint8_t* dest, int size){
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    uint8_t *src,*dest;
    int size;

    src=&video_buffer[n*BPR];
    dest=video_buffer;
    size = (VRES-n)*BPR;
    dest=move_down(src,dest,size);
    size=BPR*n;
    while (size--) *dest++=0;
}

void gfx_scroll_down(uint8_t n){
    uint8_t *src,*dest;
    int size;

    src=&video_buffer[(VRES-n)*BPR];
    dest=&video_buffer[VRES*BPR];
    size = (VRES-n)*BPR;
    dest=move_up(src,dest,size);
    size=BPR*n;
    while (size--) *--dest=0;
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    int y,size;
    uint8_t *src, *dest;
    for (y=0;y<VRES;y++){
        dest=&video_buffer[y*BPR];
        src=dest+n;
        size=HRES/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    int y,size;
    uint8_t *src, *dest;
    for (y=0;y<VRES;y++){
        dest=&video_buffer[y*BPR]+BPR;
        src=dest-n;
        size=HRES/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    }
}


uint8_t gfx_get_pixel(int x, int y){
    register uint8_t byte;
    if (x<0 || x>=HRES || y<0 || y>=VRES) return 255;
    byte=video_buffer[y*BPR+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}

static const uint8_t bit_mask[5]={0,128,0xc0,0,0xf0};
static const uint8_t bit_shift[5]={0,7,6,0,4};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    bmp_byte=*sprite++;
    mask=bit_mask[sprite_bpp];
    ppb=8/sprite_bpp;
    for (y0=y;y0<(y+height);y0++){
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<4){
                color=palette[(bmp_byte&mask)>>shift];
            }else{
                color=(bmp_byte&mask)>>shift;
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
                ppb=8/sprite_bpp;
            }
        }
    }
    return collision;
}

