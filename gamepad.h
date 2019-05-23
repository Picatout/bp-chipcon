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
#define BTN_UP      BIT7
#define BTN_DOWN    BIT5
#define BTN_LEFT    BIT6
#define BTN_RIGHT   BIT4
#define BTN_A       BIT0
#define BTN_B       BIT2
#define BTN_C       BIT1
#define BTN_D       BIT0
#define ALL_BTN     0xff

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


#endif //GAMEPAD_H