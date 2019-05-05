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



#include "../include/stm32f103c8.h"

// lecture d'un registre BKP->DR[]
// r->{0..9}
uint16_t bkp_read_register(int r){
	return BKP->DR[r%10];
}

// écriture d'un registre BKP->DR[]
// r->{0..9}
void bkp_write_register(int r, uint16_t value){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
	BKP->DR[r%10]=value;
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
	_wait_rtc_write();
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
}

