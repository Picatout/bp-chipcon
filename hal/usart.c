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
 * Description: interface bas niveau périphériques USART
 * Auteur: PICATOUT
 * Date: 2018-09-21
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#include "../include/usart.h"
#include "../include/gpio.h"
#include "../include/systick.h"

#define _usart_select(n)  USART##n_
#define _usart_sfr_sel(n,s) USART##n_##s 

#define RX_QUEUE_SIZE 16
#define QUEUE_MASK (RX_QUEUE_SIZE-1)

typedef struct usart_queue{
		uint8_t head;
		uint8_t tail;
		char queue[RX_QUEUE_SIZE];
}usart_queue_t;

static usart_queue_t usart_queue[USART_COUNT];

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
		if (flow_ctrl==FLOW_HARD){
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
			// PA9 -> TX   output (push-pull)
			// PA10 -> RX  input (floating)
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
		}
		break;
	}
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
	}
	channels[channel]->BRR=rate;
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
	case CHN1:
	  if (port==STD_PORT){
			usart_config_port(channel,USART1_PORT,flow_ctrl);
		}else{
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
		}
		set_int_priority(IRQ_USART1,7);
		enable_interrupt(IRQ_USART1);
		break;
	case CHN2:
		usart_config_port(channel,USART2_PORT,flow_ctrl);
		set_int_priority(IRQ_USART2,7);
		enable_interrupt(IRQ_USART2);
		break;
	case CHN3:
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
	switch (parity){
	case PARITY_NONE:
		channels[channel]->CR1|=USART_CR1_RXNEIE;
		break;
	case PARITY_ODD:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    channels[channel]->CR1|=USART_CR1_UE;
}

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return channels[channel]->SR&USART_SR_RXNE;
}

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
		c=usart_queue[channel].queue[usart_queue[channel].head++];
		usart_queue[channel].head&=QUEUE_MASK;
		return c;
	}else{
		return 0;
	}
		
}

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
	unsigned t0=ntsc_ticks+dly;
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
	return c;
}

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
	channels[channel]->DR=c;
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
		case CHN1:
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
			break;
		case CHN2:
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
			break;
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}

void usart_print(usart_channel_t channel, const char *str){
	 while (*str) usart_putc(channel,*str++);
}


void __attribute__((__interrupt__))USART1_handler(){
		if (USART1->SR&USART_SR_RXNE){
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
				usart_queue[CHN1].tail&=QUEUE_MASK;
		}
}

void __attribute__((__interrupt__))USART2_handler(){
		if (USART1->SR&USART_SR_RXNE){
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
				usart_queue[CHN2].tail&=QUEUE_MASK;
		}
}

void __attribute__((__interrupt__))USART3_handler(){
		if (USART1->SR&USART_SR_RXNE){
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
				usart_queue[CHN2].tail&=QUEUE_MASK;
		}
}
