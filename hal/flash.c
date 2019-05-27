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
 * Description:  lecture/écriture dans la mémoire flash du µC
 * Auteur: PICATOUT
 * Copyright Jacques Deschênes, 2018,2019
 * Date: 2018-10-24
 * Licence: GPLv3
 * revision:
 */

#include "../include/stm32f103c8.h"
#include "../include/gen_macros.h"
//#include "../include/flash.h"

//#include "../include/bpos.h"
//#include "../FatFs/src/diskio.h"
//#include "../include/alloc.h"

#define _flash_busy (FLASH->SR&FLASH_SR_BSY) 
#define _flash_eop (FLASH->SR&FLASH_SR_EOP)


typedef struct{
	unsigned char flags;
	unsigned char row;
	uint8_t data[FLASH_ROW_SIZE_BYTES];
}row_buffer_t;

//indicateurs booléens pour row_buffer_t.flags
#define  F_MODIFIED BIT0
#define  F_LOADED     BIT1
#define  F_ERASED   BIT2

static row_buffer_t row_buff;

extern uint32_t _FLASH_FREE;
#define ffa  ((void*)_FLASH_FREE)

// activation interface de programmation
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
		RCC->CR|=RCC_CR_HSION;
		while (!(RCC->CR&RCC_CR_HSIRDY));
	}
	FLASH->KEYR=0x45670123;
	FLASH->KEYR=0xCDEF89AB;
	return !(FLASH->CR&FLASH_CR_LOCK);
}


// lecture d'un octet de la mémoire flash
// accède le tampon si 'address' est déjà dans le tampon.
// arguments:
//		address   adresse de la mémoire flash à lire
// retourne:
//		valeur lue à cette adresse
static uint8_t read_byte(const uint8_t *address){
		uint32_t i;
		if (_addr2row(address)==row_buff.row){
			i=((uint32_t)address&FLASH_ROW_MASK);
			return row_buff.data[i];
		}else{
			return *address;
		}
}


// écris un octet dans le tampon.
static inline void write_buffered_byte(unsigned offset, uint8_t b){
	row_buff.data[offset]=b;
}


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
	FLASH->CR=FLASH_CR_PG;
	*address=hword;
	while (_flash_busy && ! _flash_eop);
	return *address==hword;
}

// met à jour la mémoire flash du mcu à partir du tampon 'row_buff.data'
static int write_back_buffer(){
	int i;
	uint16_t *dest, *src;
	
	dest=_row2addr(row_buff.row);
	src=(uint16_t*)row_buff.data;
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		if (*src!=(uint16_t)FLASH_ERASED){
			if (!flash_write_hword(dest,*src)) break;
		}
		dest++;
		src++;
	}
	if (i>0) row_buff.flags&=~F_ERASED;
	if (i==FLASH_ROW_SIZE_HWORD) return 1;
	return 0;
}

// charge le tampon de ligne avec le contenu de la mémoire flash
// argument:
//		r   numéro de la ligne à charger.
static void load_row(unsigned int r){
	uint16_t *src, *dest;
	int i;
	src=(uint16_t*)_row2addr(r);
	dest=(uint16_t*)row_buff.data;
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		*dest++=*src++;
	}
	row_buff.row=r;
	row_buff.flags&=~(F_MODIFIED);
	row_buff.flags|=F_LOADED;
}

// vérifie si une ligne est effacée
// c.à.d. ne contient que des 0xffff
static bool is_erased(unsigned row){
	uint16_t* addr;
	int i;
	
	addr=_row2addr(row);
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		if (*addr++!=FLASH_ERASED) return false;
	}
	return true;
}

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
	FLASH->CR=FLASH_CR_PER;
	FLASH->AR=(uint32_t)addr;
	FLASH->CR|=FLASH_CR_STRT;
	while (_flash_busy && ! _flash_eop);
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
		if (u16!=FLASH_ERASED) break;
	}
	return u16==FLASH_ERASED;
}

//écris le buffer s'il a été modifié.
int flash_sync(){
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
}

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
	flash_sync();
	row_buff.flags=0;
	FLASH->CR|=FLASH_CR_LOCK;
}


// écriture d'un octet dans la mémoire flash
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
	uint32_t offset, row;
	
	row=_addr2row(address);
	if (row<FIRST_WRITABLE_ROW) return 0;
	if (row!=row_buff.row){
		if (!flash_sync()) return 0;
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
	row_buff.flags|=F_MODIFIED;
	return 1;
}

	
// lecture d'un bloc de mémoire flash
// si les données sont dans le tampon c'est le contenu du tampon 'row_buff.data'
// qui est retourné.
// arguments:
//		address,  adresse de début du bloc.
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
}


// écris un bloc de mots de 16 bits dans la mémoire en fait l'écriture
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
	int i;
	if ((void*)address<ffa) return 0;
	if (!flash_enable()) return 0;	
	for (i=0;i<size;i++){
		if (!flash_write_byte(address++,*buffer++)){
			return 0;
		}
	}
	flash_disable();
	return 1;
}


// lecture d'une ligne flash (1024 octets)
//  arguments:
//  	row_nbr est le numéro de ligne {0...LAST_ROW}
//      buffer est le tampon recevant les données
//   retourne:
//  	0 si row_nbr est invalide
//      1 si la lecture a eu lieu.
/*
int flash_read_row(unsigned int row_nbr, BYTE *buffer){
	BYTE* address;
	
	if (row_nbr>LAST_ROW) return 0;
	address=(BYTE*)(row_nbr*FLASH_ROW_SIZE_BYTES);
	flash_read_block(address,buffer,FLASH_ROW_SIZE_BYTES);
	return 1;
}
*/

// écrite d'une ligne flash (1024 octets)
// arguments:
//		row_nbr  no. de ligne où écrire les données. {FIRST_WRITABLE_ROW...LAST_ROW}
//		buffer  tampon conteant les données.
// retourne:
//		0 si row_nbr est invalide ou l'écriture échoue.
//      1 autrement.
/*
int flash_write_row(unsigned int row_nbr, const BYTE *buffer){
	BYTE* address;
	if (row_nbr<FIRST_WRITABLE_ROW || row_nbr>LAST_ROW) return 0;
	address=(BYTE*)(row_nbr*FLASH_ROW_SIZE_BYTES);
	return flash_write_block(address,buffer,FLASH_ROW_SIZE_BYTES);
}
*/

