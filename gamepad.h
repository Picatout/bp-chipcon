/*
* Copyright Jacques Deschênes 2019 
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
 *  Date création: 2019-05-22
 *  Interface game pad
*/

#ifndef GAMEPAD_H
#define GAMEPAD_H
#include "include/stm32f103c8.h"

// masque de bits pour les 8 boutons
// du gamepad
#define BTN_UP_MASK      BIT7
#define BTN_DOWN_MASK    BIT5
#define BTN_LEFT_MASK    BIT6
#define BTN_RIGHT_MASK   BIT4
#define BTN_A_MASK       BIT0
#define BTN_B_MASK       BIT2
#define BTN_C_MASK       BIT1
#define BTN_D_MASK       BIT3
#define ALL_BTN_MASK     0xff
// index des boutons dans la table buttons[8]
#define BTN_UP_IDX 7
#define BTN_DOWN_IDX 5
#define BTN_LEFT_IDX 6
#define BTN_RIGHT_IDX 4
#define BTN_A_IDX 0
#define BTN_B_IDX 2 
#define BTN_C_IDX 1
#define BTN_D_IDX 3

// valeur par défaut des boutons
#define KEY_UP 32    // BTN_UP
#define KEY_DOWN 4   // BTN_DOWN
#define KEY_LEFT 8   // BTN_LEFT
#define KEY_RIGHT 16  // BTN_RIGHT
#define KEY_A  1     // BTN_A
#define KEY_B  2      // BTN_B
#define KEY_C  64     // BTN_C
#define KEY_D  128     // BTN_D

extern const uint8_t default_kmap[8];
// API gamepad
extern volatile uint8_t btn_state;
// initialisation matérielle.
void gamepad_init();
// lecture du gamepad
void read_gamepad();
// véririfie si le bouton est enfoncé.
int btn_query_down(uint8_t button);
// attend qu'un bouton soit enfoncé.
void btn_wait_down(uint8_t button);
// attend qu'un bouton soit relâché.
void btn_wait_up(uint8_t button);
// attend que n'importe quel bouton soit enfoncé.
uint8_t btn_wait_any();
// transcription des boutons
void btn_set_value(uint8_t btn,uint8_t value);
// set buttons map
void set_keymap(const uint8_t *kmap);
// retourne la table de transcription
uint8_t* get_keymap();

#endif //GAMEPAD_H