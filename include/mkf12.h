/*
* Copyright Jacques Deschênes 2019 
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
 * Description:  créer un système de fichier FAT12 
 * 
 * Auteur: PICATOUT
 * Date: 2019-02-04
 * Copyright Jacques Deschênes, 2019
 * Licence: GPLv3
 * revisions:
 * 
 */

#ifndef MKF12_H
#define MKF12_H

#include "gen_macros.h"
#include "../FatFs/src/diskio.h"

#define SECTOR_SIZE (512)
#define CLUSTER_SIZE (512)
#define MAX_CLUSTER (341)
#define BOOT_SECTOR 0	
#define FAT_POS 1  // secteur
#define FAT_SIZE 1  // 1 secteur
#define RESERVED 1 // nombre de secteurs réservés.
#define DIR_POS  2  // 1ier secteur
#define DIR_SIZE 8 // secteurs
#define DIR_ENTRY_SIZE 32 // octets
#define MAX_FILES 128 // nombre maximum de fichiers

#define SIGN_LENGTH 10
extern const char signature[SIGN_LENGTH];
#define SIGN_OFFSET 0  // offset signature dans secteur boot

#define TYPE_OFFSET 54 // offset dans secteur boot

typedef struct{
	BYTE sign[9];
	BYTE res0[2];
	BYTE byte_per_sector[2];
	BYTE sec_per_cluster;
	BYTE nbr_reserved[2];
	BYTE nbr_fat;
	BYTE nbr_root_entries[2];
	BYTE total_sectors[2];
	BYTE media;
	BYTE sec_per_fat[2];
	BYTE sec_per_track[2];
	BYTE heads[2];
	BYTE res2[4];
	BYTE fat32_sec_count[4];
	BYTE res3[2];
	BYTE boot_sign;
	BYTE vol_id[4];
	BYTE vol_label[11];
	BYTE type[8];
	BYTE res4[512-62];
}boot_t;

// création du système de fichier de 64Ko dans la mémoire flash du µC.
// Les 64Ko sont d'abord effacés.
DSTATUS mkf12_format(BYTE pdrv,unsigned sector_count);



#endif // MKF12_H
