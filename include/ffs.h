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
 * DESCRIPTION: système de fichier FAT12 résident en mémoire flash du µC.
 * 		Le µC STM32F103C8T6 a un secret mal gardé, bien qu'il affirme possédé 64Ko de mémoire FLASH
 *      il en possède en fait 128Ko. Les 64Ko supérieur ne sont pas accessible au programmeur STLINK v2
 *      mais peuvent-être utilisés par une application par programmation en run-time.
 * AUTEUR: PICATOUT
 * DATE: 2019-01-01
 * Copyright  Jacques Deschênes, 2019
 * LICENCE: GPLv3
 */
 
#ifndef FFS_H
#define FFS_H

#include <stdint.h>
#include "../FatFs/src/ff.h"
#include "../FatFs/src/diskio.h"

// NOTE: pdrv n'est pas utilisé car il n'y a qu'un seule lecteur flash.

// initialisation du système de fichier
DSTATUS ffs_init(BYTE pdrv);

//retourne l'état du lecteur
DSTATUS ffs_status(BYTE pdrv);

//écriture sur le disque
// le pointeur est avancé.
DRESULT ffs_write(BYTE pdrv, const BYTE* buff, DWORD sector, UINT count);

//lecture sur le disque
DRESULT ffs_read(BYTE pdrv, BYTE* buff, DWORD sector, UINT count);

// envoie d'une commande générique
DRESULT ffs_ioctl(BYTE pdrv, BYTE cmd, void* buff);

#endif // FFS_H

