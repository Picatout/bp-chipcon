/*
* Copyright Jacques Deschênes 2018, 2019 
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
 * DESCRIPTION: fonctions d'usage générale.
 * Auteur: PICATOUT
 * Date: 2018-12-31
 * Copyright Jacques Deschênes, 2018, 2019
 * Licence: GPLv3
 * revisions:
 * 
 */

#ifndef GEN_FN_H
#define GEN_FN_H


// compare les chaînes s1 et s2
// retourne -1 si s1 précède s2 dans l'ordre alphabétique
// retourne 0 si s1==s2
// retourne 1 si s1 suit s2 dans l'ordre alphabétique
int strcmp(const char *s1, const char *s2);
// retourne vrai si c'est une lettre
int alpha(char c);
// retourne vrai si c -> {'0'..'9'}
int digit(char c);
// retourne vrai si c -> {'0'..'9''A'..'Z'}
int hexdigit(char c);
// convertie une chaîne en entier
int atoi(const char *str);
// copie n caractère
void move(const char *src , char *dest, unsigned int len);
// retourne la longueur de la chaîne.
int strlen(const char* str);
// remplie un buffer avec un caractère
void fill(void *buffer, unsigned int size, char c);
// conversion en majuscule in situ
void uppercase(char *buffer);
//retourne vrai si caractère en minuscule
int is_lower(char c);
//retourne vrai si caractère en majuscule
int is_upper(char c);
// saute tous les caractère 'c' retourne la position après le dernier.
int skip(const char *buffer, int start, char c);
//recherche la première occurence du caractee 'c' à partir de la position 'start'.
// retourne -1, si 'c' absent.
int scan(const char *buffer, int start, char c);
// converti un entier en chaîne.
char* itoa(int i, char *buff,int base, int width);
// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2);

#endif // GEN_FN_H

