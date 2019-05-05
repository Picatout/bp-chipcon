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
 * Description: générateur NTSC
 * Auteur: PICATOUT
 * Copyright Jacques Deschênes, 2018
 * Date: 2018-10-26
 * Licence: GPLv3
 * revision:
 */

#ifndef TVOUT_H
#define TVOUT_H

#include "blue_pill.h"
#include "font.h"

// choisir le standard PAL ou NTSC
//#define NTSC
#define PAL

#define HRES (320)
#define VIDEO_TIME (40e-6)
#ifdef NTSC
	#define HFREQ (15734)
	#define VIDEO_DELAY (unsigned)(((4.7e-6+5.1e-6)+(52e-6-VIDEO_TIME)/2)*FTMR1)
	#define VFREQ (60)
	#define HLINES (525)
	#define HSYNC (4.7e-6) //µsec
	#define BACK_PORCH (4.7e-6)
	#define FIELD_END (271)
	#define TOP_LINE (36)
	#define VRES (224)
#else
	#define HFREQ (15625)
	#define VIDEO_DELAY (unsigned)(((4.7e-6+5.7e-6)+(52e-6-VIDEO_TIME)/2)*FTMR1)
	#define VFREQ (50)
	#define HLINES (625)
	#define HSYNC (4.7e-6) //µsec
	#define BACK_PORCH (5.7e-6)
	#define FIELD_END (321)
	#define TOP_LINE 60
	#define VRES (240)
#endif
#define CHARS_PER_LINE (HRES/CHAR_WIDTH)
#define LINES_PER_SCREEN (VRES/CHAR_HEIGHT)
#define ROW_SIZE (HRES/16)

#define TV_SYNC_TMR TMR1
#define IRQ_TV_SYNC IRQ_TIM1_CC
#define TV_SYNC_handler TIM1_CC_handler

extern uint16_t video_buffer[ROW_SIZE*VRES];
extern uint32_t *video_bb;

void tvout_init();


#endif //TVOUT_H
