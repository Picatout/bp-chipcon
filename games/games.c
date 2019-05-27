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

#include "games.h"
#include "blinky.h"
#include "alien.h"
#include "ant.h"
#include "piper.h"
#include "car.h"
#include "worm.h"
#include "lem.h"
#include "octopac.h"

game_info_t games_list[]={
    {VM_SCHIP,"blinky",BLINKY_SIZE,blinky},
    {VM_SCHIP,"alien",ALIEN_SIZE,alien},
    {VM_SCHIP,"ant",ANT_SIZE,ant},
    {VM_SCHIP,"octopac",OCTOPAC_SIZE,octopac},
    {VM_SCHIP,"worm",WORM_SIZE,worm},
    {VM_SCHIP,"car",CAR_SIZE,car},
    {VM_SCHIP,"lem",LEM_SIZE,lem},
    {VM_SCHIP,"piper",PIPER_SIZE,piper},
    {0,"",0,NULL}
};


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    }
    return i;
}
