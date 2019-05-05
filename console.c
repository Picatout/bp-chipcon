/*
* Copyright Jacques Deschênes 2018, 2019 
* This file is part of BPOS.
*
*     BPOS is free software: you can redistribute it and/or modify
*     it under the terms of the GNU General Public License as published by
*     the Free Software Foundation, either version 3 of the License, or
*     (at your option) any later version.
*
*     BPOS is distributed in the hope that it will be useful,
*     but WITHOUT ANY WARRANTY; without even the implied warranty of
*     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*     GNU General Public License for more details.
*
*     You should have received a copy of the GNU General Public License
*     along with BPOS.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
 * Description: interface avec la console
 * Auteur: PICATOUT
 * Date: 2018-10-06
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#include "include/gen_macros.h"
#include "include/gen_fn.h"
#include "include/alloc.h"
#include "include/console.h"
#include "include/svcall.h"
#include "include/gdi.h"
#include "include/vt100.h"
#include "include/alloc.h"

#define ROW_SPACING (CHAR_HEIGHT*ROW_SIZE)

console_t con;

unsigned tab_width=DEFAULT_TAB_WIDTH;
static int cursor_x, cursor_y;
static int screen_width, screen_height;

//static int cursor_visible=0;
//static int cursor_blink=0;

static void cursor_home(){
	cursor_x=0;
	cursor_y=0;
}

/**************************
 * fonctions console locale
 *************************/
/* 
static void local_hide_cursor(){
	if (cursor_visible){
		disable_interrupt(IRQ_CURSOR_BLINK);
		gdi_box(cursor_x*CHAR_WIDTH,cursor_y*CHAR_HEIGHT,CHAR_WIDTH,CHAR_HEIGHT,BLACK_BIT);
		cursor_visible=0;
	}
}

// avance le curseur texte au début 
// de la ligne suivante.
static void local_crlf(){
	local_hide_cursor();
	cursor_x=0;
	cursor_y++;
	if (cursor_y>=screen_height){
		cursor_y--;
		gdi_scroll_up(CHAR_HEIGHT);
	}
	if (cursor_blink){
		enable_interrupt(IRQ_CURSOR_BLINK);
	}
}

static void local_cursor_left(){
	if (!(cursor_x|cursor_y)) return; // curseur à {0,0}
	local_hide_cursor();
	if (cursor_x){
		cursor_x--;
	}else{
		cursor_x=screen_width-1;
		cursor_y--;
	}
	if (cursor_blink){
		enable_interrupt(IRQ_CURSOR_BLINK);
	}
}

static void local_cursor_right(){
	local_hide_cursor();
	cursor_x++;
	if (cursor_x>=screen_width){
		local_crlf();
	}	
	if (cursor_blink){
		enable_interrupt(IRQ_CURSOR_BLINK);
	}
}


static void local_del_back(){
	if (!(cursor_x|cursor_y)) return; 
	local_cursor_left();
	local_hide_cursor();
	gdi_box(cursor_x*CHAR_WIDTH,cursor_y*CHAR_HEIGHT,CHAR_WIDTH,CHAR_HEIGHT,BLACK_BIT);
	if (cursor_blink){
		enable_interrupt(IRQ_CURSOR_BLINK);
	}
}

// place un caractère dans le tampon écran
// à la position du curseur et avance le curseur.
void local_putc(char c){
		local_hide_cursor();
		gdi_put_sprite(cursor_x*CHAR_WIDTH,cursor_y*CHAR_HEIGHT,CHAR_WIDTH,CHAR_HEIGHT,(const unsigned char *)&font6x8[c]);
		local_cursor_right();
}


static void local_clear_line(){
	local_hide_cursor();
	cursor_x=0;
	gdi_clear_rows(cursor_y*CHAR_HEIGHT,CHAR_HEIGHT);
	if (cursor_blink){
		enable_interrupt(IRQ_CURSOR_BLINK);
	}
}

static void local_clear_screen(){
	local_hide_cursor();
	gdi_clear_screen();
	cursor_home();
	if (cursor_blink){
		enable_interrupt(IRQ_CURSOR_BLINK);
	}
}

static void local_text_cursor(int enable){
	if (enable){
		// activation clock CURSOR_TMR
		RCC->CURSOR_RCC_ENR|=CURSOR_RCC_EN_BIT; 
		CURSOR_TMR->ARR=FTMR2_4/1000/2;
		CURSOR_TMR->PSC=1000;
		CURSOR_TMR->CR1=BIT0|BIT7; // ARPE
		CURSOR_TMR->DIER=BIT0; // UIE
		set_int_priority(IRQ_CURSOR_BLINK,15);
		CURSOR_TMR->SR&=~(BIT0); // clear interrupt bit
		enable_interrupt(IRQ_CURSOR_BLINK);
		cursor_blink=1;
	}else{
		disable_interrupt(IRQ_CURSOR_BLINK);
		if (cursor_visible){
			gdi_box(cursor_x*CHAR_WIDTH,cursor_y*CHAR_HEIGHT,CHAR_WIDTH,CHAR_HEIGHT,XOR_BIT);
			cursor_visible=~cursor_visible;
		}
		CURSOR_TMR->DIER&=~BIT0;
		cursor_blink=0;
	}
}
*/

/**********************************
 * fonctions console sérielle
 **********************************/
 
// cursor au début de la ligne suivante.
static void serial_cursor_crlf(){
	cursor_x=0;
	if (cursor_y<(screen_height-1)){
		cursor_y++;
	}
	
}

static void serial_cursor_left(){
	if (cursor_x){
		cursor_x--;
	}else if (cursor_y){
		cursor_x=screen_width-1;
		cursor_y--;
	}
}

static void serial_cursor_right(){
	cursor_x++;
	if (cursor_x>=screen_width){
		serial_cursor_crlf();
	}
}

static void serial_putc(char c){
	vt_putc(c);
	serial_cursor_right();
}

static void serial_crlf(){
	vt_putc(CR);
	serial_cursor_crlf();
}

static void serial_clear_line(){
	vt_clear_line(cursor_y+1);
}

static void serial_clear_screen(){
	vt_cls();
	cursor_home();
}

static void serial_flow_ctrl(int i){
		vt_flow_ctrl(i);
}	

//************************************************

static void queue_insert(char c){
	unsigned count;
		con.queue[con.head++]=c;
		con.head&=CON_QUEUE_SIZE-1;
		if (con.head>con.tail){
			count=con.head-con.tail;
		}else{
			count=CON_QUEUE_SIZE-con.tail+con.head;
		}
		if (count>(CON_QUEUE_SIZE/2))con.flow_ctrl(0);
}

static char queue_getc(){
	char c;
	if (!get_active(IRQ_VT) && (con.head==con.tail))con.flow_ctrl(1);
	while (con.head==con.tail);
	c=con.queue[con.tail++];
	con.tail&=CON_QUEUE_SIZE-1;
	return c;
}


void con_queue_flush(){
	con.tail=con.head=0;
}

//static const char PROMPT[]=" OK\n";

void con_select(console_dev_t dev){
/* 2019/01/12 no more used
	local_text_cursor(0);
	kbd_enable(0);
*/
	disable_interrupt(IRQ_VT);
	con_queue_flush();
	con.dev=dev;
	cursor_home();
/* 2019/01/12 no more used
	if (dev==LOCAL){
		screen_width=GDI_SCREEN_WIDTH;
		screen_height=GDI_SCREEN_HEIGHT;
		con.putc=local_putc;
		con.cls=local_clear_screen;
		con.delete_back=local_del_back;
		con.clrln=local_clear_line;
		con.crlf=local_crlf;

		kbd_enable(1);
		local_text_cursor(1);
*/ 
//	}else{
		screen_width=VT_SCREEN_WIDTH;
		screen_height=VT_SCREEN_HEIGHT;
		con.putc=serial_putc;
		con.cls=serial_clear_screen;
		con.delete_back=vt_del_back;
		con.clrln=serial_clear_line;
		con.crlf=serial_crlf;
		con.flow_ctrl=serial_flow_ctrl;
		enable_interrupt(IRQ_VT);
//	}
	cls();
//	print(PROMPT);
}

void console_init(console_dev_t dev){
	con.getc=queue_getc;
	con.insert=queue_insert;
	con_select(dev);
}

// vérifie s'il y a un caractère en attente.
char constat(){
	return con.tail!=con.head;
}

// envoie d'un caractère à la console
void conout(char c){
	switch(c){
		case CR:
		case '\n':
			con.crlf();
			break;
		case TAB:
			con.putc(SPACE);
			if (!cursor_x){
				break;
			}
			while (cursor_x%tab_width){
				con.putc(SPACE);
			}
			break;
		case BS:
			if (cursor_x){
				con.delete_back();
				cursor_x--;
			}
			break;
		default:
			con.putc(c);
	}
}


// réception d'un caractère de la console
char conin(){
	return con.getc();
}

// imprime un chaîne sur la console
void print(const char *str){
	while (*str) {conout(*str++);}
}

// imprime une chaîne et force un retour
// à la ligne.
void println(const char *str){
	while (*str) {conout(*str++);}
	conout(CR);
}

// efface le caractère à gauche du curseur
void delete_back(){
	con.delete_back();
}

// efface n caractères
static void delete_nchar(int n){
	while (n){
		con.delete_back();
		n--;
	}
}

static void beep(){
}

// reçoit une ligne de texte de la console
// si buffer contient du texte une copie est préservée.
unsigned read_line(char *buffer,unsigned buf_len){
	unsigned ll, line_len=0;
	char c=0;
	char *new_buff=alloc(buf_len);
	
	buf_len--;
	if (buf_len>(screen_width-cursor_x-1)){
		buf_len=screen_width-cursor_x-1;
	}
	while (c!=CR){
			c=con.getc();
			switch(c){
			case NUL:
				break;
			case CR:
			case LF:
				c=CR;
				con.crlf();
				break;
			case CTRL_R:
				if (strlen(buffer)){
					ll=strlen(buffer);
					move(buffer,new_buff,ll+1);
					delete_nchar(line_len);
					print(new_buff);
					line_len=ll;
				}
				break;
			case CTRL_X:
			case CTRL_U: // efface la ligne
				delete_nchar(line_len);
				line_len=0;
				break;
			case CTRL_W: // efacce le dernier mot
				while (line_len && (new_buff[line_len-1]==SPACE)){
					con.delete_back();
					line_len--;
				}
				while (line_len && (new_buff[line_len-1]!=SPACE)){
					con.delete_back();
					line_len--;
				}
				break;
			case BS:
				if (line_len){
					con.delete_back();
					line_len--;
				}
				break;
			case CTRL_E: // efface l'écran
				con.cls();
				line_len=0;
				break;
			case TAB:
				c=SPACE;
			default:
				if ((line_len<buf_len) && (c>=32)){
					new_buff[line_len++]=c;
					con.putc(c);
				}else{
					beep();
				}
			}
	}
	move(new_buff,buffer,line_len);
	buffer[line_len]=0;
	free(new_buff);
	return line_len;
}

// imprime un entier
// i entier à imprimer
// base  numérique
void print_int(int i, unsigned base){
	char fmt[36];
	int sign=1;
	int pos=33;
	fmt[35]=0;
	fmt[34]=' ';
	if (i<0) {sign=-1; i=-i;}
	while (i){
		fmt[pos]=i%base+'0';
		if (fmt[pos]>'9') {fmt[pos]+=7;}
		pos--;
		i/=base;
	}
	if (pos==33){ fmt[pos--]='0';}
	if (sign<0) {fmt[pos]='-';}else{fmt[pos]=' ';}
	print(&fmt[pos]);
}

// imprime un entier non signé en hexadécimal
void print_hex(unsigned u, int w){
	char fmt[12];
	int pos=11;
	fmt[pos--]=0;
	fmt[pos--]=' ';
	if (!u) fmt[pos--]='0';
	w=9-w;
	if (w<1) w=1;
	while (u){
		fmt[pos]=u%16+'0';
		if (fmt[pos]>'9'){fmt[pos]+=7;}
		pos--;
		u/=16;
	}
	while (pos>w){
		 fmt[pos--]='0';
	 }
	fmt[pos]='$';
	print(&fmt[pos]);
}

void cls(){
	con.cls();
}

// retourne la position du curseur texte
// x=low(pos), y=high(pos)
uint16_t con_cursor_pos(){
	return (BYTE)cursor_x+(((BYTE)cursor_y)<<8);
}


/* 2019/01/12 no more used
// interruption clignotement
// curseur texte
void CURSOR_blink_handler(){
	//CURSOR_TMR->SR&=~(BIT0); // clear interrupt bit
	if (CURSOR_TMR->SR&BIT0){ // UIF
		CURSOR_TMR->SR&=~BIT0;
		gdi_box(cursor_x*CHAR_WIDTH,cursor_y*CHAR_HEIGHT,CHAR_WIDTH,CHAR_HEIGHT,XOR_BIT);
		cursor_visible=~cursor_visible;
	}
}
*/

