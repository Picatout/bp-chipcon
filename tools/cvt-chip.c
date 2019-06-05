// convert schip files binaries (*.SC) to C file
#include <stdlib.h>
#include <stdio.h>
#include <string.h>


void usage(){
  puts("\nConvert CHIP8/SCHIP/BPCHIP binary to 'C' and 'H' files");
  puts("USAGE: cvt-chip.exe input_file.");
  puts("input_file is CHIP8/SCHIP/BPCHIP binary file.");
  puts("exemple: cvt_chip.exe sokoban.sc");
  puts("create  sokoban.c and sokoban.h");
  exit(EXIT_FAILURE);
}

static char lowercase(char c){
	if ((c>='A')&& (c<='Z')) c+=32;
	return c;
}

static char uppercase(char c){
	if ((c>='a')&& (c<='z')) c-=32;
	return c;
}

int main(int argc, char *argv[]){
	FILE *inp, *hf, *cf;
	unsigned char c;
	unsigned char array_name[32],header_var[32],h_file[32], c_file[32], *fname;
	int size,  i;
	if (argc<2) usage();
	fname=argv[1];
	inp=fopen(fname,"rb");
	if (!inp) {
		printf("failed to open %s file.\n",fname);
		exit(EXIT_FAILURE);
	}
	i=strlen(fname)-1;
	while (i && fname[i]!='/'){--i;}
	if (i) i++;
	strcpy(c_file,&fname[i]);
	i=0;
	while (c_file[i] && c_file[i]!='.'){
		array_name[i]=lowercase(c_file[i]);
		header_var[i]=uppercase(c_file[i]);
		h_file[i]=lowercase(c_file[i]);
		c_file[i]=lowercase(c_file[i]);
		i++;
	}
	array_name[i]=0;
	header_var[i]=0;
	h_file[i]='.';
	c_file[i]='.';
	i++;
	h_file[i]='h';
	c_file[i]='c';
	i++;
	h_file[i]=0;
	c_file[i]=0;
	puts(c_file);
	puts(h_file);
	hf=fopen(h_file,"w");
	if (!hf){
		printf("failed to create %s file.\n",h_file);
		exit(EXIT_FAILURE);
	}
	cf=fopen(c_file,"w");
	if (!cf){
		printf("failed to create %s file.\n",c_file);
		exit(EXIT_FAILURE);
	}
	fseek(inp,0,SEEK_END);
	size=ftell(inp);
	if (!size){
		puts("fichier vide");
		fclose(inp);
		fclose(hf);
		fclose(cf);
		exit(EXIT_SUCCESS);
	}
	fprintf(cf,"#include \"games.h\"\n");
	fprintf(cf,"#include \"%s.h\"\n\n",array_name);
	fprintf(cf,"#define KEY_UP    3\n"\
			   "#define KEY_DOWN  6\n"\
			   "#define KEY_LEFT   7\n"\
			   "#define KEY_RIGHT  8\n"\
				"#define KEY_A  1\n"\
				"#define KEY_B  15\n"\
				"#define KEY_C  14\n"\
				"#define KEY_D  9\n\n");
	fprintf(cf,"const uint8_t %s_kmap[8]={KEY_A,KEY_B,KEY_C,KEY_D,KEY_RIGHT,KEY_DOWN,KEY_LEFT,KEY_UP};\n\n",array_name);
	fprintf(cf,"const uint8_t %s[%s_SIZE] _GAME={",array_name,header_var);
	fseek(inp,0,SEEK_SET);
	i=0;
	c=fgetc(inp);
	while (!feof(inp)) {
		if (!(i%16)) fputs("\n\t",cf);
		fprintf(cf,"0x%02x,",c);
		c=fgetc(inp);
		i++;
	}
	fputs("\n};\n",cf);
	fclose(cf);
	fclose(inp);
	fprintf(hf,"#ifndef %s_H\n",header_var); 
	fprintf(hf,"#define %s_H\n\n",header_var);
	fprintf(hf,"#include <stdint.h>\n\n");
	fprintf(hf,"#define %s_SIZE (%d)\n\n",header_var, size);
	fprintf(hf,"extern const uint8_t %s_kmap[8];\n",array_name);
	fprintf(hf,"extern const uint8_t %s[%s_SIZE];\n\n",array_name,header_var);
	fprintf(hf,"#endif // %s_H\n",header_var);
	fclose(hf);
	printf("%d octets\n",size);
	return EXIT_SUCCESS;
}
