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
 * Description:  lecture/écriture dans la mémoire flash du µC.
 * Auteur: PICATOUT
 * Copyright Jacques Deschênes, 2018,2019
 * Date: 2018-10-24
 * Licence: GPLv3
 * revision:
 */

#ifndef FLASH_H
#define FLASH_H

#include "gen_macros.h"
//#include "../FatFs/src/ff.h"
//#include "../FatFs/src/diskio.h"

/*********************************************
 *  flash programming/erasing controller
 ********************************************/
 
#define FLASH_REGS_BASE 0x40022000
#define FLASH_ACR_ADR (FLASH_REGS_BASE) // flash access control
#define FLASH_KEYR_ADR (FLASH_REGS_BASE+4) // unlock key
#define FLASH_OPTKEYR_ADR (FLASH_REGS_BASE+8)  // unlock option key
#define FLASH_SR_ADR (FLASH_REGS_BASE+12) // status register
#define FLASH_CR_ADR (FLASH_REGS_BASE+16) // control register
#define FLASH_AR_ADR (FLASH_REGS_BASE+20) // adress
#define FLASH_OBR_ADR (FLASH_REGS_BASE+28)
#define FLASH_WRPR_ADR (FLASH_REGS_BASE+32) 
 
// interface de programmation mémoire flash 
typedef struct{
	sfr_t ACR;
	sfr_t KEYR;
	sfr_t OPTKEYR;
	sfr_t SR;
	sfr_t CR;
	sfr_t AR;
	sfr_t RES0;
	sfr_t OBR;
	sfr_t WRPR;
} flash_t;

#define FLASH ((flash_t*)FLASH_REGS_BASE)

// FLASH_ACR bits fields
#define FLASH_ACR_LATENCY_POS (0)
#define FLASH_ACR_LATENCY_MASK (~7UL)
#define WAIT_0_CY 0
#define WAIT_1_CY 1
#define WAIT_2_CY 2  
#define FLASH_ACR_HLFCYA (1<<3)
#define FLASH_ACR_PRFTBE (1<<4)
#define FLASH_ACR_PRFTBS (1<<5)
// FLASH_CR bits fields
#define FLASH_CR_PG (1<<0)
#define FLASH_CR_PER (1<<1)
#define FLASH_CR_MER (1<<2)
#define FLASH_CR_OPTPG (1<<4)
#define FLASH_CR_OPTER (1<<5)
#define FLASH_CR_STRT (1<<6)
#define FLASH_CR_LOCK (1<<7)
#define FLASH_CR_OPTWRE (1<<9)
#define FLASH_CR_ERRIE (1<<10)
#define FLASH_CR_EOPIE (1<<12)
// FLASH_SR bits fields
#define FLASH_SR_BSY (1<<0)
#define FLASH_SR_PGERR (1<<2)
#define FLASH_SR_WRPTRERR (1<<4)
#define FLASH_SR_EOP (1<<5) 
// FLASH_OBR bits fields
#define FLASH_OBR_OPTERR (1<<0)
#define FLASH_ACR_RDPRT (1<<1)
#define FLASH_ACR_WDG_SW (1<<2)
#define FLASH_ACR_nRST_STOP (1<<3)
#define FLASH_ACR_nRST_STBY (1<<4)
#define FLASH_ACR_DATA0_POS (10)
#define FLASH_ACR_DATA0_MASK (~(255<<10))
#define FLASH_ACR_DATA1_POS (18)
#define FLASH_ACR_DATA1_MASK (~(255<<18))

typedef union{
	sfr_t acr;
	struct{
		sfr_t latency:3; 
		sfr_t hlfcya:1; // flash half-cycle access enable
		sfr_t prftbe:1; // prefetch buffer enable
		sfr_t prftbs:1; // prefetch buffer status
		sfr_t res0:28;
	}fld;
}flash_acr_t;

#define FLASH_ACR ((flash_acr_t*)FLASH_ACR_ADR)
#define FLASH_KEYR ((sfrp_t)FLASH_KEYR_ADR)
#define FLASH_OPTKEYR ((sfrp_t)FLASH_OPTKEYR_ADR)

typedef union{
	sfr_t sr;
	struct{
		sfr_t bsy:1;
		sfr_t pgerr:1;
		sfr_t res0:1;
		sfr_t wrprterr:1;
		sfr_t eop;
		sfr_t res1:28;
	}fld;
}flash_sr_t;

#define FLASH_SR ((flash_sr_t*)FLASH_SR_ADR)

typedef union{
	sfr_t cr;
	struct{
		sfr_t pg:1;
		sfr_t per:1;
		sfr_t mer:1;
		sfr_t res0:1;
		sfr_t optpg:1;
		sfr_t opter:1;
		sfr_t strt:1;
		sfr_t lock:1;
		sfr_t res1:1;
		sfr_t optwre:1;
		sfr_t errie:1;
		sfr_t res2:1;
		sfr_t eopie:1;
		sfr_t res3:19;
	}fld;
}flash_cr_t;

#define FLASH_CR ((flash_cr_t*)FLASH_CR_ADR)
#define FLASH_AR ((sfrp_t)FLASH_AR_ADR)
 
typedef union{
	sfr_t obr;
	struct{
		sfr_t opterr:1;
		sfr_t rdprt:1;
		sfr_t wdg_sw:1;
		sfr_t nrst_stop:1;
		sfr_t nrst_stdby:1;
		sfr_t notused: 5;
		sfr_t data0:8;
		sfr_t data1:8;
		sfr_t res0:6;
	}fld;
} flash_obr_t;

#define FLASH_OBR ((flash_obr_t*)FLASH_OBR_ADR)
#define FLASH_WRPR ((sfrp_t)FLASH_WRPR_ADR)
#define FLASH_ROW_MASK 0x3ff
#define FLASH_ROW_SIZE_BYTES 1024 //octets
#define FLASH_ROW_SIZE_HWORD 512 // uint16_t
#define FLASH_ERASED 0xffff
#define FIRST_WRITABLE_ROW (64)
#define LAST_ROW (127)
	
#define _row2addr(r) ((uint16_t*)((r)*FLASH_ROW_SIZE_BYTES))
#define _addr2row(addr) (((uint32_t)addr)/FLASH_ROW_SIZE_BYTES)

// activation interface de programmation
//mémoire flash du mcu
int flash_enable();

//écris le buffer s'il a été modifié.
int flash_sync();

// abandonne le buffer même s'il est modifié
void flash_flush();

// désactivation interface de programmation
// mémoire flash
void flash_disable();

// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword);

// écriture d'un octet dans la mémoire flash
// retourne succès errreur.
int flash_write(uint8_t* address, 	BYTE b);

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr);

// lecture d'un bloc de mémoire flash
// si les données sont dans le tampon c'est le contenu du tampon
// qui est retourné.
// arguments:
//		address,  adresse de début du bloc.
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size);

// écriture d'un bloc dans la mémoire flash du mcu
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size);

// lecture d'une ligne flash (1024 octets)
//  arguments:
//  	row_nbr est le numéro de ligne {0...LAST_ROW}
//      buffer est le tampon recevant les données
//   retourne:
//  	0 si row_nbr est invalide
//      1 si la lecture a eu lieu.
//int flash_read_row(unsigned int row_nbr, BYTE *buffer);

// écrite d'une ligne flash (1024 octets)
// arguments:
//		row_nbr  no. de ligne où écrire les données. {FIRST_WRITABLE_ROW...LAST_ROW}
//		buffer  tampon conteant les données.
// retourne:
//		0 si row_nbr est invalide ou l'écriture échoue.
//      1 autrement.
//int flash_write_row(unsigned int row_nbr, const BYTE *buffer);

#endif //FLASH_H
