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
 * Description: gestionnaire de mémoire dynamique dans l'espace transitoire (TPA)
 *     la mémoire est allouée et libérée à la manière de FORTH
 *     avec un pointer HERE qui avance et recule sans laissé de trous.
 * Auteur: PICATOUT
 * Date: 2018-12-31
 * Copyright Jacques Deschênes, 2018, 2019
 * Licence: GPLv3
 * revisions:
 * 
 */


#include "include/bpos.h"

// aligne le pointeur 'here'
// argument:
//		bit  nombre de bit à zéro.
void *align(unsigned char bit){
	switch(bit){
	case 2:
		here+=1;
		here=(void*)((uint32_t)here&0xfffffffe);
		break;
	case 4:
		here+=3;
		here=(void*)((uint32_t)here&0xfffffffc);
		break;
	}//swicth
	return here;
}

// size est en octets.
void* alloc(unsigned size){
	void *ptr;
	if ((here+size)>TPA_TOP) return 0;
	ptr=here;
	here+=size;
	return ptr;
}

// ptr valeur retournée par alloc()
// tout ce qui a été alloué après 'ptr' est limité
// comme dans FORTH.
void free(void* ptr){
	here=ptr;
}

unsigned free_heap(){
	return (uint32_t)(TPA_TOP-here);
}

unsigned reset_heap(){
	here=(void*)&_TPA_START;;
}

