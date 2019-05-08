/*  
    graphics functions interface
*/


#ifndef GRAPHICS_H
#define GRAPHICS_H


void gfx_putchar(char c);
void gfx_plot (int x,int y,uint8_t color);
void gfx_rectangle(int x0,int y0, int x1,int y1);
void gfx_cls();
void gfx_scrollup(uint8_t n);
void gfx_print(const char* str);
void gfx_print_int(int i,uint8_t base);
#endif