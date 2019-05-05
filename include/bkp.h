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
 * Description: backup domain 
 * Auteur: PICATOUT
 * Date: 2018-11-12
 * Copyright Jacques Deschênes, 2018,2019
 * Licence: GPLv3
 * revisions:
 * 
 */

#ifndef BKP_H
#define BKP_H

#include "gen_macros.h"


#define BKP_BASE_ADDR 0x40006C00


typedef struct{
	sfr_t res0;
	sfr_t DR[10];
	sfr_t RTCCR;
	sfr_t CR;
	sfr_t CSR;
}bkp_t;

#define BKP ((bkp_t*)BKP_BASE_ADDR)

//champs registre RTCCR
#define BKP_RTCCR_CAL_POS (0) // position du champ
#define BKP_RTCCR_CAL_MASK (0x7f)
#define BKP_RTCCR_CCO BIT7 // calibration clock output
#define BKP_RTCCR_ASOE BIT8 // alarm or second output enable
#define BKP_RTCCR_ASOS BIT9 // alarm or second output selection
// champs du registre CR
#define BKP_CR_TPE BIT0 // tamper pin enable
#define BKP_CR_TPAL BIT1 // tamper pin active level
// champ registre CSR
#define BKP_CSR_CTE BIT0 // clear tamper event
#define BKP_CSR_CTI BIT1 // clear tamper interrupt
#define BKP_CSR_TPIE BIT2 // tamper pin interrupt enable
#define BKP_CSR_TEF BIT8 // tamper event flag
#define BKP_CSR_TIF BIT9 // tamper interrupt flags

// lecture d'un registre BKP->DR[]
// r->{0..9}
uint16_t bkp_read_register(int r);
// écriture d'un registre BKP->DR[]
// r->{0..9}
void bkp_write_register(int r, uint16_t value);

#endif // BKP_H
