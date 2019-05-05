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
 * Description: 
 * 		Un système d'exploitation simple, monoprogramme comme CP/M
 *      fonctionnant sur la carte 'blue pill' équipée d'un µC  STM32F103C8T6
 * Auteur: PICATOUT
 * Date: 2018-12-31
 * Copyright Jacques Deschênes, 2018, 2019
 * Licence: GPLv3
 * revisions:
 * 
 */

#ifndef BPOS_H
#define BPOS_H

#include "blue_pill.h"

extern unsigned int _BSS_START;
extern unsigned int _BSS_END;
extern unsigned int _DATA_ROM_START;
extern unsigned int _DATA_RAM_START;
extern unsigned int _DATA_RAM_END;
extern unsigned int _TPA_START;
extern unsigned int _FLASH_FREE;

// MSP Main Stack Pointer
#define MSP_TOP RAM_END  // MSP top
#define MSP_SIZE 512 // grandeur de la pile MSP
// PSP Program Stack Pointer
#define PSP_TOP (MSP_TOP-MSP_SIZE) 
// grandeur pile PSP
#define PSP_SIZE 2048

// limite région TPA
#define _TPA_TOP (PSP_TOP-PSP_SIZE)

typedef void (*fn)(void);

extern const void* TPA_TOP;
extern void* here;
extern void* ffa;

#endif // BPOS_H
