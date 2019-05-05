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
 * Description: interface carte SD
 * Auteur: PICATOUT
 * Date: 2018-11-20
 * Copyright Jacques Deschênes, 2018
 * Licence: GPLv3
 * revisions:
 * 
 */

#ifndef SDCARD_H
#define SDCARD_H

#include "blue_pill.h"
#include "../FatFs/src/ff.h"
#include "../FatFs/src/diskio.h"

DSTATUS sdcard_init (BYTE pdrv);
DSTATUS sdcard_status (BYTE pdrv);
DRESULT sdcard_read (BYTE pdrv, BYTE* buff, DWORD sector, UINT count);
DRESULT sdcard_write (BYTE pdrv, const BYTE* buff, DWORD sector, UINT count);
DRESULT sdcard_ioctl (BYTE pdrv, BYTE cmd, void* buff);



#endif // SDCARD_H
