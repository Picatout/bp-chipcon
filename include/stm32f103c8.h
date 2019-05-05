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
 * fichier d'entête définissant des constantes pour les registres 
 * spéciaux  du µC stm32f103c8
 * Auteur: PICATOUT
 * Copyright Jacques Deschênes, 2018
 * Date: 2018-08-29
 * Licence: GPLv3
 * revision:
 * 2018-09-01: Modification de la macro _sfr(x) pour ajouter l'attribut volatile
 */

// REF: STMicro electronics documents RM0008 (reference manual) et DS5319 (datasheet)
// constantes pour les registres spéciaux du µC STM32F103C8

#ifndef STM32F103C8_H
#define STM32F103C8_H


#include "gen_macros.h"
#include "core.h"
#include "rcc.h"
#include "gpio.h"
#include "rtc.h"
#include "pwr.h"
#include "timer.h"
#include "spi.h"  
#include "dma.h"
#include "usart.h"
#include "nvic.h"
#include "systick.h"
#include "bkp.h"
#include "flash.h"
#include "alloc.h"

#define RAM_SIZE 0x5000
#define FLASH_SIZE 0x20000  // 128K  (64K non publié, inaccessible à STLINK v2)
#define PROG_SIZE 0x10000   // 64K  (espace flash visible par STLINK v2)
#define RAM_START 0x20000000 
#define RAM_END   0x20005000


#endif // STM32F103C8_H
