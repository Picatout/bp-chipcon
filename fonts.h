/*
* Copyright 2019, Jacques Deschênes
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

#ifndef FONTS_H
#define FONTS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdint.h>

// police 4x5 hex
#define SHEX_HEIGHT (6)
#define SHEX_WIDTH (4)
#define FONT_SHEX  (0)

extern const uint8_t font_hex_4x6[16*SHEX_HEIGHT];

// police 8x10 hex
#define LHEX_HEIGHT (10)
#define LHEX_WIDTH (8)
#define FONT_LHEX (1)

extern const uint8_t font_hex_8x10[16*LHEX_HEIGHT];

// police 6x8
#define FONT_SIZE   (101)
#define CHAR_HEIGHT (8)
#define CHAR_WIDTH  (6)
#define FONT_ASCII  (2)

#define RECTANGLE   (127)
#define RIGHT_ARROW (128)
#define LEFT_ARROW  (129)
#define UP_ARROW    (130)
#define DOWN_ARROW  (131)
#define CIRCLE      (132)

extern const uint8_t font_6x8[FONT_SIZE*CHAR_HEIGHT];


#ifdef	__cplusplus
}
#endif

#endif //FONTS_H
