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

void gfx_putchar(char c);
void gfx_plot (int x,int y,uint8_t color);
void gfx_rectangle(int x0,int y0, int x1,int y1);
void gfx_cls();
void gfx_scrollup(uint8_t n);
void gfx_print(const char* str);
void gfx_print_int(int i,uint8_t base);
void gfx_locate(uint8_t line,uint8_t colon);
void gfx_blit(int x, int t, uint8_t color, blit_op_t op);
uint8_t gfx_get_pixel(int x, int y);
void gfx_sprite(int x, int y, uint8_t width, uint8_t height,const uint8_t *sprite);
#endif