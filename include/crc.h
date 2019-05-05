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
 * Description:  Unité de calcul CRC
 * Auteur: PICATOUT
 * Copyright Jacques Deschênes, 2018
 * Date: 2018-11-11
 * Licence: GPLv3
 * revision:
 */

#ifndef CRC_H
#define CRC_H

#include "gen_macros.h"

#define CRC_BASE_ADDR 0x40023000

typedef struct{
	sfr_t DR;   // data register
	sfr_t IDR:8; // independnat data register
	sfr_t res0:24;
	sfr_t CR:1;  // reset DR
	sfr_t res1:31;
}crc_t;

#define CRC ((crc_t*)CRC_BASE_ADDR)


#endif //  CRC_H
