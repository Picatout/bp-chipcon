/*
* Copyright 2014,2015, Jacques Desch�nes
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
 * chipcon_vm.h
 *
 * Created: 2014-09-26 09:38:22
 * Author: Jacques Deschenes
 * 2019-05-12: Adapted to BP_CHIPCON project.
 */ 



#ifndef CHIP8_H_
#define CHIP8_H_

#include <stdint.h>

#define CODE_BASE_ADDR (0)

typedef enum VM_EXIT_CODE{
	CHIP_CONTINUE,
	CHIP_EXIT_OK,
	CHIP_BAD_OPCODE,
	CHIP_BAD_ADDR,
}vm_exit_code_t;

typedef enum VM_DEBUG{
	DEBUG_NOT,   // no debug print
	DEBUG_PC_CODE, // print PC and OPCODE
	DEBUG_VM_STATE, // print all machine state
	DEBUG_SSTEP, // level2 + pause.
	DEBUG_BOC, // break on command.
}vm_debug_t;

typedef struct vm_state{
	uint16_t pc;
	uint16_t ix;
	uint8_t  sp;
	uint8_t  sprite_mem;
	uint8_t  var[16];
	uint16_t  s; // mcu flash sector register
	union {
		uint16_t opcode;	
	struct{	
		uint8_t b1;
		uint8_t b2;
		};
	};
	uint16_t stack[32];
}vm_state_t;


// memory containing game
#define GAME_SPACE 8192
extern uint8_t game_ram[GAME_SPACE];

void print_vms(const char *msg,uint8_t error_code);
	
vm_exit_code_t chip_vm(uint16_t program_address, vm_debug_t dbg_level);
void srand(unsigned n);
int rand();

#if FW_DEBUG
void set_break_point(uint16_t addr);
void clr_break_point(uint16_t addr);
#endif

#endif /* CHIP8_H_ */