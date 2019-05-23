# ref: https://slashvar.github.io/2017/02/13/using-gnu-make.html

NAME = bp-chipcon

PREFIX = arm-none-eabi-
CC = $(PREFIX)gcc
AS = $(PREFIX)as
LD = $(PREFIX)ld
NM = $(PREFIX)nm
OBJCOPY = $(PREFIX)objcopy
OBJDUMP = $(PREFIX)objdump
DBG = gdb-multiarch
CFLAGS = -mcpu=cortex-m3 -mthumb
INC =../include/
HAL = ../hal/
BUILD=build/
ASM =../*.s
SRC = ../*.c
SRC += $(HAL)nvic.c $(HAL)gpio.c $(HAL)spi.c $(HAL)dma.c 
SRC += $(HAL)rtc.c $(HAL)bkp.c $(HAL)flash.c


all: build
	

build: clean compile link bin_gen  print_disassemble
	
build_O1: clean compile_O1 link bin_gen print_disassemble
	

build_debug: clean compile_debug link bin_gen print_disassemble
		
compile:
	@echo "************************"
	@echo "compilation des fichiers"
	@echo "************************"
	cd $(BUILD) &&\
	$(CC) $(CFLAGS) -O0 -c $(SRC) 
	@echo

compile_O1:
	@echo "************************"
	@echo "compilation des fichiers"
	@echo "optimisation O1         "
	@echo "************************"
	cd $(BUILD) &&\
	$(CC) $(CFLAGS) -O1 -c -g $(SRC) 
	@echo

compile_debug:
	@echo "************************"
	@echo "compilation des fichiers"
	@echo "   pour déboguage       "
	@echo "************************"
	cd $(BUILD) &&\
	$(CC) $(CFLAGS) -O0 -c -g $(SRC) 
	@echo

link:
	@echo "***************************"
	@echo " génération du fichier elf "
	@echo "***************************"
	cd $(BUILD) &&\
	$(LD) -T"../stm32.ld" -o $(NAME).elf *.o
	@echo
	
bin_gen:
	@echo "*****************************"
	@echo "génération du fichier binaire"
	@echo "*****************************"
	cd $(BUILD) &&\
	$(OBJCOPY) -O binary $(NAME).elf $(NAME).bin &&\
	$(RM) *.o
	@echo
	


print_disassemble:
	@echo
	@echo "Imprime code assembleur contenu dans bpos.elf avec objdump"
	cd $(BUILD) &&\
	$(OBJDUMP) -S --disassemble $(NAME).elf > $(NAME).s

print_symbols_nm:
	@echo
	@echo "Liste des symboles de $(NAME).elf en utilisant nm"
	cd $(BUILD) &&\
	$(NM) --numeric-sort $(NAME).elf

print_symbols_objdump:
	@echo
	@echo "Liste des symboles de $(NAME).elf en utilisant objdump"
	cd $(BUILD) &&\
	$(OBJDUMP) --syms $(NAME).elf

print_sections:
	@echo
	@echo "Liste des sections de $(NAME).elf en utilisant objdump"
	cd $(BUILD) &&\
	$(OBJDUMP) -h $(NAME).elf

debug: 
	cd $(BUILD) &&\
	$(DBG) -tui --eval-command="target remote localhost:4242" $(NAME).elf

flash: 
	cd $(BUILD) &&\
	st-flash write $(NAME).bin 0x8000000


.PHONY: clean
	
	
clean:
	@echo "****************************"
	@echo "Nettoyage avant construction"
	@echo "****************************"
	$(RM) $(BUILD)*.o $(BUILD)*.elf $(BUILD)*.bin $(BUILD)*.s
	@echo
	

