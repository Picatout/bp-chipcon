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
    graphics functions interface
*/


#ifndef GRAPHICS_H
#define GRAPHICS_H


typedef enum BLIT_OP{
    BIT_OR,
    BIT_AND,
    BIT_XOR,
    BIT_INVERT,
    BIT_SET,
} blit_op_t;

extern uint8_t sprite_bpp;
void set_palette(const uint8_t palette[4]);
void gfx_plot (int x,int y,uint8_t color);
void gfx_cls();
void gfx_scroll_up(uint8_t n);
void gfx_scroll_down(uint8_t n);
void gfx_scroll_left(uint8_t n);
void gfx_scroll_right(uint8_t n);
int gfx_blit(int x, int t, uint8_t color, blit_op_t op);
uint8_t gfx_get_pixel(int x, int y);
int gfx_sprite(int x, int y, uint8_t width, uint8_t height,const uint8_t *sprite);

#endif