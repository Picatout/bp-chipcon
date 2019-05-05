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
 * Description: fonctions offerte par pbOS
 * 
 * Auteur: PICATOUT
 * Date: 2018-09-28
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#ifndef SVCALL_H
#define SVCALL_H



// fonctions du système d'exploitation
typedef enum{
	SVC_RESET=0,  // réinitialise le MCU
	SVC_LED_ON, // allume la LED verte
	SVC_LED_OFF, // éteint la LED verte
	SVC_TIMER, // démarre la minuterie
	SVC_GET_TIMER, // retourne la valeur de la variable timer
	SVC_CONST, // console status
	SVC_CONIN,  // reçoit un caractère de la console
	SVC_CONOUT, // envoie un caractère à la console
	SVC_READLN, // lit une ligne de la console
	SVC_PRINT,  // imprime une chaine 
	SVC_PRINT_DEC, // imprime un entier base décimale
	SVC_PRINT_HEX, // imprime un entier en format hexadécimal
	SVC_PEEK8, // lit un entier 8 bits à l'adresse donnée
	SVC_PEEK16, // lit un entier 16 bits à l'acresse donnée
	SVC_PEEK32, // lit un entier 32 bits à l'adresse donnée
	SVC_POKE8, // écris un entier 8 bits à l'adresse donnée
	SVC_POKE16, // écris un entier 16 bits à l'adresse donnée
	SVC_POKE32, // écris un entier 32 bits à l'adresse donnée 
	SVC_FLASH_WR, // écris un mot de 16 dans la mémoire flash
	SVC_FLASH_PGER, // efface une page de 1024 octets dans la mémoire flash
	SVC_TICKS,  // charge la variable ticks
	SVC_CLS,   // efface écran
	SVC_HERE, // retourne l'adresse TPA
	SVC_FFA, // retourne l'adresse FFA
	SVC_FREE, // retourne la quantité de RAM disponibile
} syscall_e;

#define _svc_call(svc_no,arg1,arg2) ({asm volatile (\
	"mov r0, %1\n\t"\
	"mov r1, %2\n\t"\
	"svc %0\n\t"\
	: /*no output */\
	: "I" ((svc_no)&0xff),\
	 "r" (arg1), "r" (arg2)\
	: "r0","r1"\
	);})



#endif // SVCALL_H
