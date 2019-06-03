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
#include "include/gen_fn.h"
#include "text.h"
#include "tvout.h"
#include "graphics.h"
#include "gamepad.h"

static uint8_t font=FONT_ASCII;
static uint8_t xpos=0, ypos=0;
static console_t console;

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

// get current font id
uint8_t get_font(){
	return font;
}


void new_line(){
	if (console==LOCAL){
		xpos=0;
		vmode_params_t *vparams=get_video_params();	
		switch (font){
		case FONT_SHEX:
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
				ypos+=SHEX_HEIGHT;
			}else{
				gfx_scroll_up(SHEX_HEIGHT);
			}
			break;
		case FONT_LHEX:
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
				ypos+=LHEX_HEIGHT;
			}else{
				gfx_scroll_up(LHEX_HEIGHT);
			}
			break;
		case FONT_ASCII:
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
				ypos+=CHAR_HEIGHT;
			}else{
				gfx_scroll_up(CHAR_HEIGHT);
			}
			break;	
		}//swtich
	}else{
		usart_putc(USART1,'\n');
	}
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
	if (console==LOCAL){
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
	}else{
		usart_putc(USART1,c);
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
        if((16-idx&1))fmt[--idx]='0';
		fmt[--idx]='$';
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

void prompt_btn(){
	print("press button");
}

void clear_screen(){
	if (console==LOCAL){
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(USART1,FF);
	}
}

// affiche un curseur texte
void show_cursor(int show){
	int x,y;
	uint8_t color=show?15:0;
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
	int y;
	vmode_params_t *vparams=get_video_params();
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
//	while (xpos<(vparams->hres-CHAR_WIDTH))put_char(' ');
//	set_cursor(0,ypos-CHAR_HEIGHT);
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
}
