/*
* Copyright Jacques Deschênes 2019 
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
*   games directory
*/

#include "../gamepad.h"
#include "games.h"
#include "blinky.h"
#include "alien.h"
#include "ant.h"
#include "piper.h"
#include "car.h"
#include "worm.h"
#include "lem.h"
#include "octopac.h"
#include "sokoban.h"
#include "spacefig.h"
#include "mines.h"
#include "tetris.h"
#include "invaders.h"

game_info_t games_list[]={
    {VM_SCHIP,"blinky",BLINKY_SIZE,blinky,blinky_kmap},
    {VM_SCHIP,"alien",ALIEN_SIZE,alien,default_kmap},
    {VM_SCHIP,"ant",ANT_SIZE,ant,default_kmap},
    {VM_SCHIP,"octopac",OCTOPAC_SIZE,octopac,default_kmap},
    {VM_SCHIP,"worm",WORM_SIZE,worm,default_kmap},
    {VM_SCHIP,"car",CAR_SIZE,car,default_kmap},
    {VM_SCHIP,"lem",LEM_SIZE,lem,default_kmap},
    {VM_SCHIP,"piper",PIPER_SIZE,piper,default_kmap},
    {VM_SCHIP,"tetris",TETRIS_SIZE,tetris,tetris_kmap},
    {VM_SCHIP,"invaders",INVADERS_SIZE,invaders,invaders_kmap},
    {VM_SCHIP,"mines",MINES_SIZE,mines,default_kmap},
    {VM_SCHIP,"sokoban",SOKOBAN_SIZE,sokoban,default_kmap},
    {VM_SCHIP,"spacefig",SPACEFIG_SIZE,spacefig,default_kmap},
    {0,"",0,NULL}
};


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    }
    return i;
}
