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
 * Description: interface sériel avec émulateur VT100
 * Auteur: PICATOUT
 * Date: 2018-11-19
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#ifndef VT100_H
#define VT100_H


#define VT_USART  USART2
#define IRQ_VT IRQ_USART2
#define VT_handler USART2_handler
#define VT_PORT USART2_PORT
#define VT_CTS_BIT USART2_CTS_BIT
#define VT_TX_PIN USART2_TX_PIN
#define VT_RTS_PIN USART2_RTS_PIN
#define VT_SCREEN_WIDTH 80   // caractères par ligne
#define VT_SCREEN_HEIGHT 24  // lignes par écran.

// initialise le port sériel
void vt100_init();
//envoie d'un caractère
void vt_putc(char c);
//efface le caractère à gauche du curseur
void vt_del_back();
// vide l'écran de la console
void vt_cls();
// vide la ligne du curseur
// n -> nombre de caractère à effacer.
void vt_clear_line(unsigned n);
// vérifie si le terminal est prêt
int vt_ready();
// active/désactive l'interruption sur réception
void vt_rx_enable(int);
// contrôle de flux
void vt_flow_ctrl(int);

#endif // VT100_H
