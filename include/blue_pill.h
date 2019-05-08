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
 * Définitions spécifique à la carte blue pill
 * Auteur: PICATOUT
 * Copyright Jacques Deschênes, 2018
 * Date: 2018-08-30
 * Licence: GPLv3
 * revision:
 * 		2018-09-16, Renommé OSC32_PRESENT en LSE_PRESENT. Ajout de LSE_FREQ
 */

#ifndef  BLUE_PILL_H
#define  BLUE_PILL_H

#include "gen_macros.h"
#include "stm32f103c8.h"


#define HSI_FREQ  14318180U  // fréquence du cristal externe (remplacé 8Mhz)
#define PLLMUL RCC_CFGR_PLLMUL5    // multiplicateur du PLL
#define FCLK (HSI_FREQ*(PLLMUL+2)) // fréquence signal clock du CPU 71.591Mhz
#define FCPU 71590900U
#define FAHB  FCLK    // fréquence signal clock du bus AHB
#define FAPB2 FCLK // fréquence signal clock du bus APB2
#define FAPB1 (FCLK/2) // fréquence signal clock du bus APB1
#define FTMR1 (FAPB2)  // fréquence alimentant le TIMER1
#define FTMR2_4 (FAPB1*2) // fréquence alimentant les TIMERS 2 à 4
// cristal 32768 hertz installé
#define LSE_PRESENT 1   // un cristal RTC est installé sur la carte
#define LSE_FREQ 32768  // fréquence du cristal RTC
// LED verte sur PC13
#define LED_PORT PORTC   // une LED verte est branché sur PC13
#define LED_PIN (13)
#define LED_ON (0)       // la LED est allumée lorsque la sortie est à 0 volt.
#define LED_OFF (1)
#define GRN_LED (1<<LED_PIN)

#define _led_off() (PORTC->ODR|=GRN_LED)
#define _led_on()  (PORTC->ODR&=~GRN_LED)

#endif // BLUE_PILL_H

