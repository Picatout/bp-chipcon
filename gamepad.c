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
 *  Date création: 2019-05-22
 *  Interface game pad
 *  NOTES:
 *  1) le COSMAC VIP utilisait un clavier hexadécimal
 *     et ce gamepad n'a que 8 boutons. Pour faire fonctionner
 *     des jeux pré-existants sur cette machine il faut créer une
 *     correspondance entre les touches du gamepad et le clavier hexadécimal
 *     utilisé dans le jeux. C'est le rôle de la table buttons[8].
 *  
*/

#include "gamepad.h"
#include "tvout.h"

#define GAMEPAD_PORT PORTB
#define SEND_PIN  (15)
#define RX_PIN (14)
#define CLK_PIN (13)

volatile uint8_t  btn_state;


// valeurs hexadécimal des boutons 
// les entrées correspondes à la position du bitmask du bouton
// i.e.  le bouton BTN_A est à la position 0 dans la table et le
// bouton BTN_UP  est à la position 7 dans la table.
static uint8_t buttons[8]={KEY_A,KEY_C,KEY_B,KEY_D,KEY_RIGHT,KEY_DOWN,KEY_LEFT,KEY_UP};

// retourne l'index du bouton dans la table buttons[]
// à partir de sont bitmask
// input:
//      mask masque binaire du bouton
// output:
//      idx  index dans la table
static uint8_t btn_idx(uint8_t mask){
    uint8_t idx=0;
    mask>>=1;
    while(mask){idx++; mask>>=1;}
    return idx;
}

// retourne la mask du bouton à partir de sa valeur hexadécimal
// input:
//      btn_value   valeur hexadécimal du bouton inscrite dans la table buttons[]
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
    }
    return 255;
}


// initialisation matérielle.
void gamepad_init(){
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    btn_state=0xff;
}


static uint8_t shift_out(uint8_t byte){
    uint8_t mask=1,rx_byte=0;

#define _clk_delay()  asm volatile("nop\n\tnop\n\tnop\n\t")

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
        }
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    _clk_delay();
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    return rx_byte;
}

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    //shift_out(0xff);
    btn_state=shift_out(0xfe);
}

// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    uint8_t mask=btn_mask(btn);
    return !(btn_state&mask);
}

// attend qu'un bouton soit enfoncé.
// pour être reconnu un bouton doit
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    uint8_t mask=btn_mask(btn);
    int frame_count=0;
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
            frame_count++;
        }else{
            frame_count=0;
        }
    }
}

// attend qu'un bouton soit relâché.
//  pour être reconnu comme relâché un
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    uint8_t mask=btn_mask(btn);
    int frame_count=0;
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
            frame_count++;
        }else{
            frame_count=0;
        }
    }
}

// attend qu'au moins un bouton soit enfoncé.
// pour être reconnu comme enfoncé un bouton doit 
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    uint8_t last_state=btn_state;
    int frame_count=0;
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
            frame_count++;
        }       
    }
    return buttons[btn_idx(last_state^0xff)];
}

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}

