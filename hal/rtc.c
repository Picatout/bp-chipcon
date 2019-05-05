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

/*
 * REF: http://embedded-lab.com/blog/stm32s-internal-rtc/
 */
 
 
#include <stdint.h>
#include "../include/stm32f103c8.h"
#include "../include/gen_fn.h"

typedef union{
	uint16_t u16;
	struct{
	uint16_t low;
	uint16_t hi;
	} u8;	
}u16_to_u8_t;

const char *month_name[13]={0,"January","February","March","April","May","June","July","August","September","October","November","December"};
const char *day_name[8]={0,"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};

#define RTC_ACCESS_CODE 0xAA55

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
		if ((y%100==0) && (y%400)){
			return 0;
		}
		return 1;
	}
	return 0;
}


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
	if (month==2 && leap){
		sec+=SEC_PER_DAY;
	}
	return sec;
}

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
	dt->year=EPOCH_YEAR;
	leap=leap_year(EPOCH_YEAR);
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
		}
		dt->year++;
		leap=leap_year(dt->year);
	}//while
	dt->month=1;
	dt->day=1;
	dt->hour=0;
	dt->minute=0;
	dt->second=0;
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
		dt->month++;
		rtc_cntr-=sec;
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
	rtc_cntr%=SEC_PER_DAY;
	dt->hour=rtc_cntr/SEC_PER_HR;
	rtc_cntr%=SEC_PER_HR;
	dt->minute=rtc_cntr/SEC_PER_MIN;
	dt->second=rtc_cntr%SEC_PER_MIN;
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
	for (i=EPOCH_YEAR;i<dt->year;i++){
		if (leap_year(i)){
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
		rtc_cntr+=sec_per_month(leap,i);
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
	rtc_cntr+=dt->second;
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
	RTC->CNTH=rtc_cntr>>16;
	RTC->CNTL=rtc_cntr&0xffff;
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
	_wait_rtc_write();
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
}



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
		RTC->CRL|=RTC_CRL_CNF;
		_wait_rtc_write();
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
		_wait_rtc_write();
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
		_wait_rtc_write();
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
		_wait_rtc_write();
		BKP->DR[0]=RTC_ACCESS_CODE;
		RTC->CRL&=~RTC_CRL_CNF;
		_wait_rtc_write();
		PWR->CR&=~PWR_CR_DBP;
	}
	set_int_priority(IRQ_RTC,15);
	enable_interrupt(IRQ_RTC);
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
	RCC->BDCR|=RCC_BDCR_BDRST;
	RCC->BDCR&=~RCC_BDCR_BDRST;
}

// ajustement de la fréquence du clock RTC pour améliorer
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
	_wait_rtc_sync();
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
	BKP->RTCCR&=~0x7f;
	if (!trim){ // annule tous les trimming.
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}else if (trim>0){// trop rapide on ralentie
		trim&=0x7f;
		BKP->RTCCR|=trim;
	}else{// trop lent on accélère.
		trim=-trim;
		if (trim>0x7f) {trim=0x7f;}
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
	_wait_rtc_write();
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
	int i,n;
	
	i=0;
	n=0;
	while (digit(date[i])){
		n=n*10+date[i++]-'0';
	}
	if ((i<4) || date[i]!='/') return 0;
	dt->year=n;
	i++;
	n=0;
	while (digit(date[i])){
		n=n*10+date[i++]-'0';
	}
	if ((i<7) || date[i]!='/') return 0;
	dt->month=n;
	n=0;
	i++;
	while (digit(date[i])){
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
	int i;
	unsigned char n;
	
	i=0;
	n=0;
	while (digit(time[i])){
		n=n*10+time[i++]-'0';
	}
	if ((n>23) || time[i]!=':') return 0;
	dt->hour=n;
	i++;
	n=0;
	while (digit(time[i])){
		n=n*10+time[i++]-'0';
	}
	if ((n>59) || time[i]!=':') return 0;
	dt->minute=n;
	n=0;
	i++;
	while (digit(time[i])){
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
	uint32_t n;
	int i=0;
	
	n=dt->year;
	buffer[i++]=n/1000+'0';
	n%=1000;
	buffer[i++]=n/100+'0';
	n%=100;
	buffer[i++]=n/10+'0';
	buffer[i++]=n%10+'0';
	buffer[i++]='/';
	n=dt->month;
	buffer[i++]=n/10+'0';
	buffer[i++]=n%10+'0';
	buffer[i++]='/';
	n=dt->day;
	buffer[i++]=n/10+'0';
	buffer[i++]=n%10+'0';
	buffer[i]=0;

}

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
	uint32_t n;
	int i=0;
	
	n=dt->hour;
	buffer[i++]=n/10+'0';
	buffer[i++]=n%10+'0';
	buffer[i++]=':';
	n=dt->minute;
	buffer[i++]=n/10+'0';
	buffer[i++]=n%10+'0';
	buffer[i++]=':';
	n=dt->second;
	buffer[i++]=n/10+'0';
	buffer[i++]=n%10+'0';
	buffer[i]=0;
}

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
	t.fields.second=dt.second/2;
	t.fields.minute=dt.minute;
	t.fields.hour=dt.hour;
	t.fields.day=dt.day;
	t.fields.month=dt.month;
	t.fields.year=dt.year-1980;
	return t.u32;
}


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
		RTC->CRL&~RTC_CRL_SECF;
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
		RTC->CRL&~RTC_CRL_ALRF;
	}// interruption alarme
}
