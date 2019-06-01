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
#include "race.h"
#include "spacefig.h"
#include "piper.h"
#include "dragon1.h"
#include "dragon2.h"
#include "field.h"
#include "uboat.h"

game_info_t games_list[]={
    {VM_SCHIP,"blinky",BLINKY_SIZE,blinky,blinky_kmap},
    {VM_SCHIP,"mines",MINES_SIZE,mines,mines_kmap},
    {VM_SCHIP,"joust 2.3",JOUST23_SIZE,joust23,joust23_kmap},
    {VM_SCHIP,"square",SQUARE_SIZE,square,square_kmap},
    {VM_SCHIP,"alien",ALIEN_SIZE,alien,alien_kmap},
    {VM_SCHIP,"ant",ANT_SIZE,ant,ant_kmap},
    {VM_SCHIP,"worm3",WORM3_SIZE,worm3,worm3_kmap},
    {VM_SCHIP,"car",CAR_SIZE,car,car_kmap},
    {VM_SCHIP,"race",RACE_SIZE,race,race_kmap},
    {VM_SCHIP,"piper",PIPER_SIZE,piper,piper_kmap},
    {VM_SCHIP,"spacefight",SPACEFIG_SIZE,spacefig,spacefig_kmap},
    {VM_SCHIP,"dragon 1",DRAGON1_SIZE,dragon1,dragon1_kmap},
    {VM_SCHIP,"dragon 2",DRAGON2_SIZE,dragon2,dragon2_kmap},
    {VM_SCHIP,"field",FIELD_SIZE,field,field_kmap},
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
