/*
* Copyright Jacques Deschênes 2018, 2019 
* This file is part of BP_CHIPCON.
*
*     BP_CHIPCON is free software: you can redistribute it and/or modify
*     it under the terms of the GNU General Public License as published by
*     the Free Software Foundation, either version 3 of the License, or
*     (at your option) any later version.
*
*     BP_CHIPCON is distributed in the hope that it will be useful,
*     but WITHOUT ANY WARRANTY; without even the implied warranty of
*     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*     GNU General Public License for more details.
*
*     You should have received a copy of the GNU General Public License
*     along with BP_CHIPCON.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
 * Description: interface pour le gestionnaire d'interruptions.
 * Auteur: PICATOUT
 * Date: 2018-09-03
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
	ISER[irq>>5]|=1<<(irq&0x1f);
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
	ICER[irq>>5]=(1<<(irq&0x1f));
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
	return ICPR[irq>>5]&(1<<(irq&0x1f));
}

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
	return IABR[irq>>5]&(1<<(irq&0x1f));
}

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
	ISPR[irq>>5]|=1<<(irq&0x1f);
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
	ICPR[irq>>5]=(1<<(irq&0x1f));
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
	}
}
