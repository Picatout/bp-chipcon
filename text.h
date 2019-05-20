/*
* Copyright 2014,2015, Jacques Desch�nes
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

#ifndef TEXT_H
#define TEXT_H

#include "include/ascii.h"
#include "fonts.h"

#define print_hex(i)  print_int(i,16)

// détermine la couleur des caractères
void font_color(uint8_t color);
// détermine la couleur du fond des caractères
void bg_color(uint8_t color);
// détermine la police active
void select_font(uint8_t font_id);
//imprime un caractère à l'écran
void put_char(uint8_t c);
//positionne le curseur texte à l'écran
void set_cursor(uint8_t x, uint8_t y);
// retourne la position du curseur texte
// entier 16 bits = x<<8|y
uint16_t get_cursor();
void new_line();
//imprime une chaine à l'écran
void print(const char* str);
// imprime un entier
void print_int(int n,uint8_t base);
// déplace le curseur ver la gauche
void cursor_left();
// défile un text à l'écran
void text_scroller(const uint8_t *text, uint8_t speed);
// affiche un prompt
void prompt_btn();
// efface l'écran
void clear_screen();
// print text and do crlf()
void println(const char *text);

#endif
