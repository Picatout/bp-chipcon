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



#ifndef ALLOC_H
#define ALLOC_H

// aligne le pointeur 'here'
// argument:
//		bit  nombre de bit à zéro. {2,4}
void *align(unsigned char bit);
// alloue un bloc mémoire
// size est en octets.
void* alloc(unsigned size);
// ptr valeur retournée par alloc()
// tout ce qui a été alloué après 'ptr' est limité
// comme dans FORTH.
void free(void* ptr);
// remet le heap à son état initial.
unsigned reset_heap();
// RAM libre
unsigned free_heap();

#endif // ALLOC_H
