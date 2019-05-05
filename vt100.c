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
 * Description: interface sériel avec émulateur VT100
 * Auteur: PICATOUT
 * Date: 2018-11-19
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#include "include/blue_pill.h"
#include "include/vt100.h"
#include "include/console.h"

void vt100_init(){
	usart_open_channel(VT_USART,115200,PARITY_NONE,USART_DIR_BIDI,FLOW_HARD);
}

void vt_putc(char c){
	usart_putc(VT_USART,c);
}

void vt_del_back(){
	usart_putc(VT_USART,BS);
	usart_putc(VT_USART,SPACE);
	usart_putc(VT_USART,BS);
}

static void vt_esc_seq(){
	usart_putc(VT_USART,ESC);
	usart_putc(VT_USART,'[');
}


// vide l'écran de la console
void vt_cls(){
	vt_esc_seq();
	usart_putc(VT_USART,'2');
	usart_putc(VT_USART,'J');
}

// vide la ligne du curseur
// n -> nombre de caractère à effacer.
void vt_clear_line(unsigned n){
	vt_esc_seq();
	usart_putc(VT_USART,'2');
	usart_putc(VT_USART,'K');
	while (n){usart_putc(VT_USART,BS);n--;}
}

// vérifie si le terminal est prêt
int vt_ready(){
	return !(VT_PORT->IDR&VT_CTS_BIT);
}

void vt_rx_enable(int enable){
	char c;
	if (enable){
		VT_USART->CR1|=USART_CR1_RXNEIE;
	}else{
		c=VT_USART->DR;
		VT_USART->CR1&=~USART_CR1_RXNEIE;
	}
}

// interruption serial console
void VT_handler(){
	if ((con.dev==SERIAL) && (VT_USART->SR&USART_SR_RXNE)){
		con.insert(VT_USART->DR);
	}
}

// contrôle de flux
void vt_flow_ctrl(int i){
	if (i){
		enable_interrupt(IRQ_VT);
	}else{
		disable_interrupt(IRQ_VT);
	}
}


