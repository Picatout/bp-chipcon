/*
* Copyright Jacques Deschênes 2018, 2019 
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

#ifndef SOUND_H
#define SOUND_H

#include "include/stm32f103c8.h"

void sound_init();

void tone(uint16_t freq, uint16_t duration);

void beep(uint16_t duration);

void load_sound_buffer(const uint8_t* buffer);

void sound_stop();

void key_tone(int note, int length,int wait_end);

void noise(int length);

void sound_sampler(uint16_t duration);

#endif //SOUND_H