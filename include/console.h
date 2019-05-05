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

#ifndef CONSOLE_H
#define CONSOLE_H

#include "stm32f103c8.h"
#include "ascii.h"

#define CURSOR_blink_handler TIM4_handler
#define IRQ_CURSOR_BLINK  IRQ_TIM4
#define CURSOR_TMR TMR4
#define CURSOR_RCC_ENR  APB1ENR
#define CURSOR_RCC_EN_BIT RCC_APB1ENR_TIM4EN

typedef enum console_device{
	LOCAL,
	AUX,
	SERIAL,
}console_dev_t;

#define CON_QUEUE_SIZE 32
#define DEFAULT_TAB_WIDTH 8

typedef struct{
	console_dev_t dev;
	volatile char queue[CON_QUEUE_SIZE];
	volatile unsigned head;
	volatile unsigned tail;
	void (*insert)(char);
	char (*getc)(void);
	void (*putc)(char);
	void (*delete_back)(void);
	void (*cls)(void);
	void (*clrln)(void);
	void (*crlf)(void);
	void (*flow_ctrl)(int);
}console_t;

extern console_t con;
extern unsigned tab_width;

void console_init(console_dev_t dev);
// vérifie s'il y a un caractère en attente.
char constat();
// envoie d'un caractère à la console
void conout(char c);
// réception d'un caractère de la console
// retourne 0 s'il n'y a pas de caractère.
char conin();
// imprime un chaîne sur la console
void print(const char *str);
// imprime une chaîne et force un retour
// à la ligne.
void println(const char *str);
// efface le caractère à gauche du curseur
void delete_back();
// vide l'écran de la console
void cls();
// reçoit une ligne de texte de la console
// retourne la longueur de la ligne.
unsigned read_line(char *buffer,unsigned buf_len);
// imprime un entier
// i entier à imprimer
// base base numérique
void print_int(int i, unsigned base);
// imprime un entier non signé en hexadécimal
// arguments:
//		u  entier à imprimer
//		w  largeur du champ.
void print_hex(unsigned u, int w);
// vide la file rx
void con_queue_flush();
//sélectionne le device pour la console
void con_select(console_dev_t dev);
// retourne la position du curseur texte
// x=low(pos), y=high(pos)
uint16_t con_cursor_pos();

#endif // CONSOLE_H

