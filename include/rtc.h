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
 * Description: RTC (Real Time Clock)
 * Auteur: PICATOUT
 * Date: 2018-09-08
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#ifndef RTC_H
#define RTC_H

#include "gen_macros.h"


#define FR_RTC_OSC 32768

// valeur de RTC_PR pour obtenir la période x
#define _rtc_period_msec(x)  (FR_RTC_OSC*(x)/1000-1)

// source clock pour RTC
#define RTC_NOCLK 0
#define RTC_LSECLK 1
#define RTC_LSICLK 2
#define RTC_HSE128CLK 3


#define RTC_BASE_ADR 0x40002800

typedef struct{
	sfr_t CRH;
	sfr_t CRL;
	sfr_t PRLH;
	sfr_t PRLL;
	sfr_t DIVH;
	sfr_t DIVL;
	sfr_t CNTH;
	sfr_t CNTL;
	sfr_t ALRH;
	sfr_t ALRL;
	
}rtc_t;

#define RTC ((rtc_t*)RTC_BASE_ADR)

// champs du registre CRH
#define RTC_CRH_SECIE BIT0 // second interrupt enable
#define RTC_CRH_ALRIE BIT1 // alarm interrupt enable
#define RTC_CRH_OWIE BIT2 // overflow interrupt enable

//champs de bits registre CRL
#define RTC_CRL_SECF BIT0 //indicateur interruption débordement RTC_DIV
#define RTC_CRL_ALRF BIT1 //indicateur interruption alarme
#define RTC_CRL_OWF  BIT2 //indicateur interruption débordement RTC_CNT
#define RTC_CRL_RSF  BIT3 //indicateur synchronisation RTC_CNT et RTC_DIV
#define RTC_CRL_CNF  BIT4 //déverrouillage écriture dans RTC_PR, RTC_ALR et RTC_CNT
#define RTC_CRL_RTOFF BIT5 //indicateur opération écriture complétée.

// seconde par minute
#define SEC_PER_MIN 60
// secondes par heures
#define SEC_PER_HR 3600
// minute par heure
#define MIN_PER_HR 60
// heure par jour
#define HR_PER_DAY 24
// seconde par jour
#define SEC_PER_DAY (SEC_PER_MIN*MIN_PER_HR*HR_PER_DAY)
// seconde par année
#define SEC_PER_YEAR (SEC_PER_DAY*365)
// secondes par année bisextile
#define SEC_PER_LEAP_YEAR (SEC_PER_DAY*366)

// Le temps de référence de départ de l'horloge système
// est 1970/01/01 00:00:00
#define EPOCH_YEAR 1970
#define MAX_YEAR (EPOCH_YEAR+136)
/***************
 *   API
 **************/

// index commence à 1
const char *month_name[13];
// index commence à 1
const char *day_name[8];

#define _wait_rtc_sync() ({while (!(RTC->CRL&RTC_CRL_RSF));})
#define _rtc_write_enable() (!RTC->CRL&RTC_CRL_RTOFF)
#define _wait_rtc_write()  ({while (!(RTC->CRL&RTC_CRL_RTOFF));})
 
typedef struct date_time{
	uint32_t second:6;
	uint32_t minute:6;
	uint32_t hour:5;
	uint32_t day:5;
	uint32_t month:4;
	uint32_t reserved; 
	uint16_t year;
} date_time_t;

typedef union{
	uint32_t u32;
	struct{
		uint32_t second:5;
		uint32_t minute:6;
		uint32_t hour:5;
		uint32_t day:5;
		uint32_t month:4;
		uint32_t year:7; 
	}fields; 
} timestamp_t;
 
// activation du RTC avec LSE comme source
void rtc_init(unsigned period, unsigned interrupts);
// ajustement de la fréquence du clock RTC pour amélioré
// la précision
void rtc_clock_trim(int trim);
// réinitialise le backup domain
void reset_backup_domain();
// interruption à activer
#define RTC_SECIE (1<<RTC_CRH_SECIE)
#define RTC_ALRIE (1<<RTC_CRH_ALRIE)
#define RTC_OFWIE (1<<RTC_CRH_OWIE)

// initialise date et heure dans RTC_CNT
void set_date_time(date_time_t *dt);
// obtient la date et l'heure du RTC
void get_date_time(date_time_t *dt);
// configure l'alarme RTC.
void rtc_set_alarm(date_time_t *dt);
// retourne vrai si c'est une année bisextile
int leap_year(unsigned y);
// convertie chaîne date en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char* date, date_time_t *dt);
// convertie chaîne heure en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt);
//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer);
//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer);
// retourne timbre horaire pour système de fichier
uint32_t get_fattime();

#endif // RCT_H


