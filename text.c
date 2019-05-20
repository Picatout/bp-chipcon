/*
* Copyright 2014, 2015, 2019 Jacques Deschênes
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
 * Created: 2014-09-30 22:31:27
 * Author: Jacques Desch�nes
 * 2019-05-12: Adapted to BP_CHIPCON project
 */ 

#include "include/timer.h"
#include "include/gen_macros.h"
#include "text.h"
#include "tvout.h"
#include "graphics.h"


uint8_t font=FONT_ASCII;
uint8_t xpos=0, ypos=0;

#define BG 0 // background
#define FG 1 // foreground
static uint8_t text_colors[2]={0,15};


void font_color(uint8_t color){
	text_colors[FG]=color&0xf;
}

void bg_color(uint8_t color){
	text_colors[BG]=color&0xf;
}

void select_font(uint8_t font_id){
	font=font_id;
}


void new_line(){
	xpos=0;
	switch (font){
	case FONT_SHEX:
		if ((ypos+SHEX_HEIGHT)<=(VRES-SHEX_HEIGHT+1)){
			ypos+=SHEX_HEIGHT;
		}else{
			gfx_scroll_up(SHEX_HEIGHT);
		}
		break;
	case FONT_LHEX:
		if ((ypos+LHEX_HEIGHT)<=(VRES-LHEX_HEIGHT+1)){
			ypos+=LHEX_HEIGHT;
		}else{
			gfx_scroll_up(LHEX_HEIGHT);
		}
		break;
	case FONT_ASCII:
		if ((ypos+CHAR_HEIGHT)<=(VRES-CHAR_HEIGHT+1)){
			ypos+=CHAR_HEIGHT;
		}else{
			gfx_scroll_up(CHAR_HEIGHT);
		}
		break;	
	}//swtich

}

static void draw_char(int x,int y,int w, int h, const char* glyph){
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
			gfx_plot(x0,y0,c);
			mask>>=1;
		}
	}
}

void put_char(uint8_t c){
	switch(font){
	case FONT_SHEX:	
		if (c<16){
			draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
			xpos+=SHEX_WIDTH;
			if (xpos>(HRES-SHEX_WIDTH+1)){
				new_line();
			}
		}
		break;
	case FONT_LHEX:
		if (c<16){
			draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
			xpos+=LHEX_WIDTH;
			if (xpos>(HRES-LHEX_WIDTH+1)){
				new_line();
			}
		}
		break;
	case FONT_ASCII:
		if ((c>31) && (c<(FONT_SIZE+32))){
			draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
			xpos+=CHAR_WIDTH;
			if (xpos>(HRES-CHAR_WIDTH+1)){
				new_line();
			}
		}
		break;		
	}
}

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
	ypos=y;
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
}

void print(const char* str){
    char c;
    while ((c=*str++)){
        switch(c){
        case LF:
        case CR:
            new_line();
            break;
        case BS:
            cursor_left();    
            break;
        default:
            put_char(c);
        }
    }
}

// print text and do crlf()
void println(const char *text){
	print(text);
	new_line();
}

void print_int(int i,uint8_t base){
    char fmt[16],sign=0;
    int idx,d;

    fmt[15]=0;
    fmt[14]=' ';
    idx=14;
    if (i<0){
        sign=1;
        i=-i;
    }
    while (idx>1 && i){
        d=i%base;
        if (d>9) d+=7;
        fmt[--idx]=d+='0';
        i/=base;
    }
    if (idx==14)fmt[--idx]='0';
    if (base==10 && sign){
        fmt[--idx]='-';
    }else if (base==16){
        fmt[--idx]='x';
        fmt[--idx]='0';
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
		break;	
	}
}

void text_scroller(const uint8_t *text, uint8_t speed){
	uint8_t c,j;

	gfx_cls();
	select_font(FONT_ASCII);
	c=*text++;
	while (c){
		set_cursor(0,4*CHAR_HEIGHT);
		while (c && c!='\n'){
			put_char(c);
			c=*text++;
			if (btn_query_down(BTN_B)) {goto break_out;}
		}
		for (j=0;j<CHAR_HEIGHT;j++){
			timer=speed;
			while(timer);
			gfx_scroll_up(1);
			if (btn_query_down(BTN_B)) {goto break_out;}
		}
		c=*text++;
	}//while
	for (c=0;c<4*CHAR_HEIGHT;c++){
		timer=speed;
		while(timer);
		gfx_scroll_up(1);
		if (btn_query_down(BTN_B)) { break;}
	}//for
break_out:	
	gfx_cls();
	btn_wait_up(BTN_B); 
}

void prompt_btn(){
	print("press button");
}

void clear_screen(){
	gfx_cls();
	xpos=0;
	ypos=0;
}