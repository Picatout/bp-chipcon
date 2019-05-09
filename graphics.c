/*
    graphics functions
*/


#include "include/blue_pill.h"
#include "font6x8.h"
#include "tvout.h"
#include "include/ascii.h"
#include "graphics.h"

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

void gfx_plot (int x,int y,uint8_t color){
	int idx;
	uint8_t byte,mask;
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
    video_buffer[y*BPR+x]=color;
/*
	idx=y*BPR+x/8;
	mask=1<<(7-(x%8));
	byte=video_buffer[idx];
	if (color)byte|=mask;else byte&=~mask;
	video_buffer[idx]=byte;
*/
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
		gfx_plot(tmp,y0,7);
		gfx_plot(tmp,y1,7);
	}
	for (++y0;y0<y1;y0++){
		gfx_plot(x0,y0,7);
		gfx_plot(x1,y0,7);
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