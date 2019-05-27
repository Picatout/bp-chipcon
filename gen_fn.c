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

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
	int result=0;
	while (*s1 && *s2){
		if (*s1<*s2){
			result=-1;
			break;
		}else if (*s1>*s2){
			result=1;
			break;
		}
		s1++;
		s2++;
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
			result=1;
		}
	}
	return result;
}

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
}

int digit(char c){
   return ((c>='0') && (c<='9'));
}

int hexdigit(char c){
	if (c>='a') c-=32;
	return (digit(c) || (c>='A' && c<='F'));
}

int atoi(const char *str){
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
	if (*str=='-'){
		sign=-1;
		str++;
	}
	if (*str=='$' && hexdigit(*(str+1))){
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
		base=16;
		str+=2;
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
		if (c>='a'){c-=32;}
		c-='0';
		if (c>9){c-=7;}
		n=n*base+c;
		str++;
	}
	return sign*n;
}

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
		*dest++=*src++;
		len--;
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
	return ll;
}

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
}

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
}

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
		if (is_lower(*buffer)){*buffer-=32;}
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
	while (buffer[start] && buffer[start]!=c) start++;
	return start;
}

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
	while (buffer[start] && buffer[start]==c) start++;
	return start;
}

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
	s1+=strlen(s1);
	while (*s2){
		*s1++=*s2++;
	}
	*s1=0;
	return s1;
}

