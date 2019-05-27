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
    Le code des jeux est alloué dans la section .user_data
*/

#ifndef GAMES_H
#define GAMES_H

#include "../include/stm32f103c8.h"
#include "../tvout.h"

#define _GAME  __attribute__((section(".user_data")))

typedef struct game_info{
    const vmode_t vmode;
    const char name[12];
    const uint32_t size;
    const uint8_t* data;
}game_info_t;

extern game_info_t games_list[];

unsigned games_count();

#endif // GAME_H
