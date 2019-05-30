/*
* Copyright 2014, 2015, Jacques Desch�nes
* This file is part of CHIPcon v2.
*
*     CHIPcon is free software: you can redistribute it and/or modify
*     it under the terms of the GNU General Public License as published by
*     the Free Software Foundation, either version 3 of the License, or
*     (at your option) any later version.
*
*     CHIPcon is distributed in the hope that it will be useful,
*     but WITHOUT ANY WARRANTY; without even the implied warranty of
*     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*     GNU General Public License for more details.
*
*     You should have received a copy of the GNU General Public License
*     along with CHIPcon v2.  If not, see <http://www.gnu.org/licenses/>.
*/
#include "piper.h"
#include "games.h"

const uint8_t piper[PIPER_SIZE] _GAME ={
	0x10,0x0b,0x76,0x32,0x2e,0x30,0x20,0x52,0x61,0x69,0x6e,0x65,0x73,0x20,0x28,0x63,
	0x29,0x20,0x31,0x39,0x39,0x31,0x00,0xff,0xf3,0x85,0x8e,0x20,0x43,0x01,0x10,0x13,
	0x6e,0x4e,0x60,0x00,0x61,0x00,0xa3,0x37,0xf1,0x55,0x6c,0xff,0x60,0x00,0x61,0x00,
	0x62,0x00,0xf2,0x75,0x00,0xe0,0x60,0x0b,0x61,0x00,0x62,0x00,0xa3,0x56,0xf2,0x1e,
	0xf1,0x55,0x72,0x02,0x32,0x78,0x10,0x1e,0x60,0x00,0x62,0x00,0xa3,0x32,0xf2,0x1e,
	0xf1,0x55,0x72,0x02,0x32,0x06,0x10,0x26,0xa3,0x39,0x60,0x26,0x61,0x39,0x63,0x00,
	0xf3,0x1e,0xd0,0x15,0x63,0x05,0x70,0x08,0x30,0x46,0x10,0x30,0xa3,0x43,0x60,0x68,
	0x61,0x02,0xd0,0x15,0x70,0x08,0x62,0x05,0xf2,0x1e,0xd0,0x15,0xa3,0x48,0x60,0x68,
	0x61,0x2a,0xd0,0x15,0x70,0x08,0x62,0x05,0xf2,0x1e,0xd0,0x15,0x81,0xe0,0x81,0x06,
	0x60,0x64,0x80,0x15,0xa3,0x0f,0xf0,0x33,0xf2,0x65,0x63,0x5a,0x64,0x39,0xf1,0x29,
	0xd3,0x45,0x73,0x05,0xf2,0x29,0xd3,0x45,0x80,0xe0,0xa2,0xde,0xf0,0x55,0xa2,0xe7,
	0x60,0x00,0x61,0x00,0xd0,0x12,0x70,0x08,0x30,0x60,0x10,0x5a,0x64,0x02,0xa2,0xd2,
	0x60,0x00,0xd0,0x4c,0xa2,0xd8,0x60,0x08,0xd0,0x4c,0x74,0x0c,0x34,0x3e,0x10,0x5f,
	0x67,0x00,0x80,0x70,0x22,0x90,0x77,0x01,0x37,0x05,0x10,0x69,0x61,0x32,0x60,0x10,
	0xa2,0xef,0xd0,0x16,0x70,0x08,0x30,0x60,0x10,0x71,0x61,0x00,0x60,0x60,0xa2,0xd1,
	0xd0,0x12,0x71,0x02,0x31,0x38,0x10,0x78,0x6d,0x34,0x21,0x09,0x21,0x0f,0x21,0x16,
	0x61,0x02,0xa3,0x0b,0x60,0x10,0xd0,0x18,0x70,0x08,0x30,0x60,0x10,0x83,0x71,0x08,
	0x31,0x32,0x10,0x82,0x4c,0xff,0x10,0x95,0x4b,0x00,0x63,0x06,0x4b,0x03,0x63,0x04,
	0x4b,0x06,0x63,0x02,0x4b,0x05,0x63,0x00,0x10,0x9c,0xc3,0x07,0x73,0x01,0xcc,0x30,
	0x7c,0x10,0x8c,0x34,0xc3,0x03,0x83,0x0e,0xa3,0x2e,0xf3,0x1e,0xf1,0x65,0x8b,0x00,
	0x82,0x10,0x89,0x20,0x80,0xc0,0x22,0x39,0x22,0x66,0x6a,0x02,0x21,0x1f,0x67,0x00,
	0x68,0x00,0x22,0xaf,0x22,0xc0,0x60,0xff,0xf0,0x15,0x60,0x08,0xe0,0xa1,0x20,0xd5,
	0x60,0x10,0xe0,0xa1,0x20,0xe2,0x60,0x02,0xe0,0xa1,0x20,0xef,0x60,0x04,0xe0,0xa1,
	0x20,0xfc,0x60,0x20,0xe0,0xa1,0x20,0xc6,0x60,0x0a,0xe0,0xa1,0x20,0xcb,0x60,0x14,
	0xe0,0xa1,0x6e,0x02,0xf0,0x07,0x40,0x00,0x21,0x27,0x10,0xad,0x60,0x0f,0x22,0x90,
	0x80,0xd0,0x22,0x39,0x00,0xee,0x22,0x8e,0x80,0xd0,0x22,0x39,0x00,0xee,0x80,0xd0,
	0x61,0x0f,0x80,0x12,0x81,0xd0,0x81,0x05,0x00,0xee,0x21,0x09,0x21,0x16,0x20,0xcf,
	0x70,0xff,0x40,0xff,0x60,0x00,0x8d,0x10,0x8d,0x04,0x21,0x09,0x21,0x16,0x60,0x90,
	0x21,0x1b,0x00,0xee,0x21,0x09,0x21,0x16,0x20,0xcf,0x70,0x01,0x40,0x0a,0x60,0x09,
	0x8d,0x10,0x8d,0x04,0x21,0x09,0x21,0x16,0x60,0x90,0x21,0x1b,0x00,0xee,0x21,0x0f,
	0x21,0x16,0x20,0xcf,0x71,0xf0,0x41,0xf0,0x61,0x00,0x8d,0x10,0x8d,0x04,0x21,0x0f,
	0x21,0x16,0x60,0x90,0x21,0x1b,0x00,0xee,0x21,0x0f,0x21,0x16,0x20,0xcf,0x71,0x10,
	0x41,0x60,0x61,0x50,0x8d,0x10,0x8d,0x04,0x21,0x0f,0x21,0x16,0x60,0x90,0x21,0x1b,
	0x00,0xee,0x20,0xcf,0x70,0x60,0x22,0x15,0xa3,0x23,0xd0,0x14,0x00,0xee,0x20,0xcf,
	0x80,0x10,0x70,0x0a,0x22,0x15,0xa3,0x1f,0xd0,0x18,0x00,0xee,0x80,0xd0,0x22,0x15,
	0xa3,0x1b,0xd0,0x18,0x00,0xee,0x70,0xff,0x30,0x00,0x11,0x1b,0x00,0xee,0xa3,0x2a,
	0xfa,0x1e,0xf0,0x65,0x22,0x5e,0x60,0x6c,0x61,0x1c,0xd0,0x18,0x00,0xee,0x21,0x1f,
	0x7a,0x01,0x80,0x90,0x61,0xf0,0x80,0x12,0x40,0x00,0x11,0x32,0x4a,0x04,0x11,0x49,
	0x4a,0x05,0x11,0x91,0x82,0xa0,0x3b,0x00,0x11,0x37,0x62,0x08,0x82,0xa5,0x80,0xb0,
	0x80,0x06,0x80,0x06,0x30,0x00,0x11,0x60,0x3b,0x00,0x72,0xff,0x80,0xc0,0x22,0x15,
	0x81,0x24,0xa3,0x25,0xd0,0x11,0x4f,0x00,0x11,0x82,0x3a,0x01,0x11,0x82,0x69,0x00,
	0x11,0x9f,0x8b,0x93,0x60,0x07,0x8b,0x02,0x80,0xc0,0x22,0x15,0x39,0x16,0x11,0x52,
	0xa3,0x26,0x71,0x04,0x39,0x1d,0x11,0x56,0xa3,0x27,0x71,0x02,0x39,0x15,0x11,0x5a,
	0xa3,0x28,0x71,0x04,0x39,0x1e,0x11,0x5e,0xa3,0x29,0x71,0x02,0xd0,0x12,0x11,0x91,
	0x3b,0x05,0x11,0x68,0x63,0x80,0x42,0x08,0x11,0x6e,0x83,0x06,0x72,0x01,0x11,0x63,
	0x63,0x01,0x42,0x08,0x11,0x6e,0x83,0x0e,0x72,0x01,0x11,0x69,0x81,0x30,0x80,0x30,
	0xa3,0x0f,0xf1,0x55,0xa3,0x0f,0x80,0xc0,0x22,0x15,0x71,0x03,0x39,0x03,0x11,0x7b,
	0x4a,0x04,0x11,0x7c,0x3a,0x05,0xd0,0x12,0x4f,0x00,0x11,0x82,0x3a,0x01,0x11,0x82,
	0x69,0x00,0x11,0x9f,0x3a,0x08,0x11,0x91,0x22,0xaf,0x60,0x00,0x77,0x01,0x37,0x64,
	0x11,0x8b,0x78,0x01,0x67,0x00,0x70,0x01,0x30,0x03,0x11,0x86,0x22,0xaf,0x6a,0x00,
	0x22,0x72,0x80,0xe0,0x81,0x80,0x81,0x74,0x41,0x00,0x70,0xb0,0xf0,0x15,0x21,0x1f,
	0x00,0xee,0x60,0x0c,0xe0,0x9e,0x11,0x9a,0xe0,0xa1,0x11,0x9c,0x00,0xee,0x60,0x03,
	0xf0,0x18,0x21,0x99,0x00,0xe0,0x62,0x00,0x63,0x00,0xa3,0x56,0xf2,0x1e,0xf1,0x65,
	0x72,0x02,0x83,0x14,0x32,0x78,0x11,0xa5,0x43,0x3c,0x78,0x01,0xa3,0x37,0xf1,0x65,
	0x80,0x74,0x63,0x64,0x80,0x35,0x84,0xf0,0x34,0x00,0x71,0x01,0x34,0x01,0x70,0x64,
	0x81,0x84,0xa3,0x37,0xf1,0x55,0x85,0x00,0x63,0x28,0x64,0x28,0xa3,0x35,0xf1,0x33,
	0xf2,0x65,0xf0,0x30,0xd3,0x4a,0x73,0x0b,0xf1,0x30,0xd3,0x4a,0x73,0x0b,0xf2,0x30,
	0xd3,0x4a,0xa3,0x35,0xf5,0x33,0xf2,0x65,0x73,0x0b,0xf1,0x30,0xd3,0x4a,0x73,0x0b,
	0xf2,0x30,0xd3,0x4a,0x22,0xaf,0xa2,0xde,0xf0,0x65,0x8e,0x00,0x4e,0x02,0x7e,0x04,
	0x7e,0xfc,0x38,0x00,0x11,0xe1,0x80,0x06,0x61,0x64,0x81,0x05,0x87,0x15,0x4f,0x00,
	0x11,0xe6,0x21,0xfb,0x30,0x00,0x10,0x1a,0x63,0x01,0x11,0xf0,0xa3,0x4d,0x60,0x2a,
	0x61,0x18,0xd0,0x15,0x70,0x08,0x62,0x05,0xf2,0x1e,0xd0,0x15,0x21,0xfb,0x63,0x00,
	0xa3,0x37,0xf1,0x65,0x82,0xe0,0xf3,0x75,0x60,0x0a,0xe0,0xa1,0x11,0xf5,0x60,0x0a,
	0xe0,0xa1,0x11,0xf8,0x00,0xfd,0xa2,0xe7,0x63,0x02,0x64,0x08,0xd3,0x48,0xa2,0xf3,
	0x63,0x0a,0xd3,0x48,0xa3,0x52,0x63,0x0e,0x64,0x10,0xd3,0x47,0x60,0x25,0x21,0x1b,
	0x60,0x0a,0xe0,0xa1,0x12,0x14,0x60,0x00,0xe0,0xa1,0x12,0x14,0xd3,0x47,0x74,0x02,
	0x44,0x38,0x12,0x03,0xd3,0x47,0x12,0x06,0x00,0xee,0x81,0x00,0x6f,0xf0,0x81,0xf2,
	0x81,0x06,0x6f,0x0f,0x80,0xf2,0x80,0x0e,0x80,0x0e,0x80,0x0e,0x70,0x10,0x71,0x02,
	0x00,0xee,0x70,0xf0,0x71,0xfe,0x80,0x56,0x80,0x56,0x80,0x56,0x81,0x5e,0x80,0x14,
	0x00,0xee,0xa3,0x56,0x81,0x00,0x6f,0x0f,0x81,0xf2,0x81,0x0e,0xf1,0x1e,0x6f,0xf0,
	0x80,0xf2,0x80,0x06,0x81,0x00,0x81,0x06,0x81,0x06,0x80,0x14,0x80,0x0e,0xf0,0x1e,
	0x00,0xee,0x83,0x00,0x22,0x29,0xf1,0x65,0x65,0x00,0x30,0x0b,0x65,0xff,0x41,0x00,
	0x12,0x44,0x61,0x03,0xf1,0x18,0x12,0x52,0x22,0x5e,0x80,0x30,0x22,0x15,0xd0,0x18,
	0x80,0x30,0x22,0x29,0x61,0x00,0x80,0x20,0xf1,0x55,0x80,0x20,0x22,0x5e,0x80,0x30,
	0x22,0x15,0xd0,0x18,0x22,0xaf,0x87,0x54,0x37,0xff,0x12,0x5c,0x48,0x00,0x12,0x5b,
	0x78,0xff,0x67,0x63,0x12,0x5c,0x67,0x00,0x22,0xaf,0x00,0xee,0x61,0x0f,0x80,0x12,
	0x80,0x0e,0x80,0x0e,0x80,0x0e,0xa2,0xdf,0xf0,0x1e,0x00,0xee,0x80,0xc0,0x22,0x29,
	0xf1,0x65,0x40,0x0b,0x11,0x9f,0x89,0x00,0x80,0xc0,0x22,0x29,0x80,0x90,0x61,0x01,
	0xf1,0x55,0x00,0xee,0x63,0x00,0x4b,0x06,0x63,0x01,0x4b,0x03,0x63,0x10,0x4b,0x00,
	0x63,0xf0,0x4b,0x05,0x63,0xff,0x81,0xc0,0x81,0x34,0x6f,0xf0,0x81,0xf2,0x41,0xf0,
	0x11,0x9f,0x41,0x60,0x11,0x9f,0x81,0xc0,0x81,0x34,0x6f,0x0f,0x81,0xf2,0x41,0x0f,
	0x11,0x9f,0x41,0x0a,0x11,0x9f,0x8c,0x34,0x22,0x66,0x00,0xee,0x81,0xa0,0x12,0x95,
	0xc1,0x07,0x80,0x06,0x80,0x06,0x40,0x00,0x81,0x06,0xa3,0x2a,0xf1,0x1e,0xf0,0x65,
	0x85,0x00,0x64,0x03,0x63,0x00,0xa3,0x32,0xf3,0x1e,0xf0,0x65,0x82,0x00,0x22,0x5e,
	0x60,0x04,0xd0,0x48,0xa3,0x32,0xf3,0x1e,0x80,0x50,0xf0,0x55,0x22,0x5e,0x60,0x04,
	0xd0,0x48,0x74,0x0c,0x85,0x20,0x73,0x01,0x33,0x05,0x12,0x9b,0x00,0xee,0x63,0x69,
	0x64,0x09,0xa3,0x35,0xf8,0x33,0xf2,0x65,0xf2,0x29,0xd3,0x45,0x73,0x06,0xa3,0x35,
	0xf7,0x33,0xf2,0x65,0xf1,0x29,0xd3,0x45,0x73,0x06,0xf2,0x29,0xd3,0x45,0x00,0xee,
	0x80,0xe0,0x70,0xfe,0x80,0x06,0x80,0x06,0x61,0x14,0x81,0x05,0xa3,0x35,0xf1,0x33,
	0xf2,0x65,0xf1,0x30,0x63,0x68,0x64,0x32,0xd3,0x4a,0x73,0x0b,0xf2,0x30,0xd3,0x4a,
	0x00,0xee,0xf8,0xf8,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xff,
	0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0xff,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0xff,
	0x00,0x00,0x00,0x00,0xff,0xff,0xc3,0xc3,0x00,0x00,0x00,0x00,0xc3,0xc3,0xff,0xff,
	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0f,0x07,0x03,0x03,0x83,0xc3,0xff,0xff,
	0xf0,0xe0,0xc0,0xc0,0xc1,0xc3,0xff,0xff,0xc0,0xc0,0xc0,0xc0,0xff,0xff,0xff,0xff,
	0x03,0x03,0x03,0x03,0xff,0xff,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0xff,0xff,0xff,
	0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0x00,0x7e,0x42,0x42,0x42,0x42,0x7e,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0xc3,0xc1,0xc0,0xc0,0xe0,0xf0,0xff,0xff,0xc3,0x83,
	0x03,0x03,0x07,0x0f,0xff,0xff,0x00,0x00,0x18,0x3c,0x3c,0x18,0x00,0x00,0x00,0x10,
	0x10,0x70,0x70,0x10,0x10,0x00,0x00,0x18,0x18,0x7e,0x18,0x00,0x08,0x04,0x04,0x08,
	0x10,0x20,0x20,0x10,0x1d,0x15,0x16,0x1e,0x01,0x02,0x03,0x03,0x06,0x07,0x05,0x08,
	0x00,0x09,0x03,0x0a,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0xa3,0xa2,0xe3,0xa2,0xaa,0xbb,0x92,0x93,0x12,0x3a,0xbb,0xa2,0xb3,0x22,
	0x3a,0x88,0x88,0x88,0x40,0x48,0xd9,0x92,0xd2,0x52,0xd9,0x3b,0xaa,0xb3,0xaa,0x2b,
	0x9a,0x92,0x9a,0x91,0xd9,0xb4,0xa4,0xb4,0x24,0x36,0xea,0xaa,0xae,0xa4,0xe4,0xee,
	0x8a,0xce,0x89,0xe9,0x20,0x20,0x70,0xf8,0xf8,0xf8,0x70,0x00,0x0b,0x00,0x0b,0x00,
	0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,
	0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,
	0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,
	0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,
	0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,
	0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,
	0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,0x0b,0x00,
	0x0b,0x00,0x0b,0x00,
};