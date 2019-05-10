/*
    graphics functions
*/


#include "include/blue_pill.h"
#include "font6x8.h"
#include "tvout.h"
#include "include/ascii.h"
#include "graphics.h"

#define CPL (HRES/CHAR_WIDTH)
#define LINES (VRES/CHAR_HEIGHT)

static uint8_t cursor_x=0;
static uint8_t cursor_y=0;

static uint8_t text_colors[2]={2,4};

static void gfx_crlf(){
    cursor_x=0;
    cursor_y+=CHAR_HEIGHT;
    if (cursor_y>(VRES-CHAR_HEIGHT)){
        cursor_y-=CHAR_HEIGHT;
        gfx_scrollup(CHAR_HEIGHT);
    }
}

static void gfx_cursor_left(){
    if (cursor_x>=CHAR_WIDTH){
        cursor_x-=CHAR_WIDTH;
    }else{
        cursor_x=0;
    } 
}

void gfx_locate(uint8_t line,uint8_t colon){
    if (colon>=CPL) colon=CPL-1;
    if (line>LINES) line=LINES-1;
    cursor_x=colon*CHAR_WIDTH;
    cursor_y=line*CHAR_HEIGHT;
}

void gfx_putchar(char c){
    int cx,cy,idx;
    uint8_t byte,bit,color;
    if ((c<32) || (c>=(FONT_SIZE+32))) return;  
    idx=(c-32)*CHAR_HEIGHT;
    for (cy=0;cy<CHAR_HEIGHT;cy++){
        byte=font_6x8[idx+cy];
        bit=(1<<7);
        for (cx=0;cx<CHAR_WIDTH;cx++,bit>>=1){
            if (byte&bit) color=text_colors[1];else color=text_colors[0];
            gfx_plot(cursor_x+cx,cursor_y+cy,color);
        }
    }
    cursor_x+=CHAR_WIDTH;
    if (cursor_x>(HRES-CHAR_WIDTH)) gfx_crlf();
}

void gfx_print(const char* str){
    char c;
    while ((c=*str++)){
        switch(c){
        case LF:
        case CR:
            gfx_crlf();
            break;
        case BS:
            gfx_cursor_left();    
            break;
        default:
            gfx_putchar(c);
        }
    }
}

void gfx_print_int(int i,uint8_t base){
    char fmt[12],sign=0;
    int idx,d;

    fmt[11]=0;
    fmt[10]=' ';
    idx=10;
    if (i<0){
        sign=1;
        i=-i;
    }
    while (i){
        d=i%base;
        if (d>9) d+=7;
        fmt[--idx]=d+='0';
        i/=base;
    }
    if (idx==10)fmt[--idx]='0';
    if (base==10 && sign){
        fmt[--idx]='-';
    }else if (base==16){
        fmt[--idx]='x';
        fmt[--idx]='0';
    }
    gfx_print(&fmt[idx]);
}

void gfx_blit(int x, int y, uint8_t color, blit_op_t op){
	register int idx;
    register uint8_t byte,mask;
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
    idx=y*BPR+x/2;
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
}

void gfx_plot (int x,int y,uint8_t color){
	register int idx;
    register uint8_t byte;
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
    idx=y*BPR+x/2;
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


void gfx_rectangle(int x0,int y0, int x1,int y1){
	int tmp;
	if (x0>x1){
		tmp=x0;
		x0=x1;
		x1=tmp;
	}
	if (y0>y1){
		tmp=y0;
		y0=y1;
		y1=tmp;
	}
	for (tmp=x0;tmp<=x1;tmp++){
		gfx_plot(tmp,y0,15);
		gfx_plot(tmp,y1,15);
	}
	for (++y0;y0<y1;y0++){
		gfx_plot(x0,y0,15);
		gfx_plot(x1,y0,15);
	}
}

void gfx_cls(){
	int x;
	for (x=0;x<VRES*BPR;x++) video_buffer[x]=0;
    cursor_x=0;
    cursor_y=0;
}

void gfx_scrollup(uint8_t n){
    uint8_t *src,*dest;
    int size;

    src=&video_buffer[n*BPR];
    dest=video_buffer;
    size = (VRES-n)*BPR;
    while (size--) *dest++=*src++;
    size=BPR*n;
    while (size--) *dest++=0;
}

uint8_t gfx_get_pixel(int x, int y){
    register uint8_t byte;
    if (x<0 || x>=HRES || y<0 || y>=VRES) return 255;
    byte=video_buffer[y*BPR+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}

// put sprite on screen using BIT_XOR
void gfx_sprite(int x, int y, uint8_t width, uint8_t height, uint8_t *sprite){
/*
    register uint32_t bmp_row;
    register int x0,xbm,ybm;
    for (ybm=0;y<(y+height);y++){
        bmp_row=sprite[ybm*width/2];
        for(xbm=0,x0=x;x0<(x+width));x0++){
            gfx_blit(x0,y,bmp_bit,BIT_XOR);
        }
    }
*/    
}