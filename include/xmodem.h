/*
* Copyright Jacques DeschÃªnes 2018, 2019 
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
 * File:   xmodem.h
 * Author: jacques
 *
 * Created on 11 juin 2018, 11:58
 */

#ifndef XMODEM_H
#define	XMODEM_H

#ifdef	__cplusplus
extern "C" {
#endif

// options
#define XMODEM_BINARY (1)
#define XMODEM_VERBOSE (2)
    
// codes d'erreurs    
enum {
    XMODEM_SUCCESS,
    XMODEM_UNKNOWN_FAILED,
    XMODEM_CANCELED,
    XMODEM_TIME_OUT,
    XMODEM_CRC_FAILED,
    XMODEM_FILE_OPEN_FAILED,
    XMODEM_FAILED_TO_CREATE,
    XMODEM_CORRUPTED,
    XMODEM_DUPLICATE,
    XMODEM_BAD_SEQ,
    XMODEM_COMPLETED,
};  

    int xsend(const char *file_name, unsigned opt); // envoie d'un fichier par protocole XMODEM
    int xreceive(const char *file_name, unsigned opt); // réception d'un fichier par protocole XMODEM


#ifdef	__cplusplus
}
#endif

#endif	/* XMODEM_H */

