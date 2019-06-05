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
#include "mines.h"
#include "joust23.h"
#include "square.h"
#include "alien.h"
#include "ant.h"
#include "piper.h"
#include "car.h"
#include "worm3.h"
#include "spacefig.h"
#include "piper.h"
#include "fighter.h"
#include "copter.h"
#include "uboat.h"
#include "test.h"

game_info_t games_list[]={
    {VM_BPCHIP,"test",TEST_SIZE,test,test_kmap},
    {VM_SCHIP,"blinky",BLINKY_SIZE,blinky,blinky_kmap},
    {VM_SCHIP,"mines",MINES_SIZE,mines,mines_kmap},
    {VM_SCHIP,"joust 2.3",JOUST23_SIZE,joust23,joust23_kmap},
    {VM_SCHIP,"square",SQUARE_SIZE,square,square_kmap},
    {VM_SCHIP,"alien",ALIEN_SIZE,alien,alien_kmap},
    {VM_SCHIP,"ant",ANT_SIZE,ant,ant_kmap},
    {VM_SCHIP,"worm3",WORM3_SIZE,worm3,worm3_kmap},
    {VM_SCHIP,"car",CAR_SIZE,car,car_kmap},
    {VM_SCHIP,"piper",PIPER_SIZE,piper,piper_kmap},
    {VM_SCHIP,"spacefight",SPACEFIG_SIZE,spacefig,spacefig_kmap},
    {VM_SCHIP,"fighter",FIGHTER_SIZE,fighter,fighter_kmap},
    {VM_SCHIP,"copter",COPTER_SIZE,copter,copter_kmap},
    {VM_SCHIP,"uboat",UBOAT_SIZE,uboat,uboat_kmap},
    {0,"",0,NULL}
};


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    }
    return i;
}
