
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 8d 2a 00 00     .P. 1........*..
      10:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 8d 2a 00 00     .*...*...*...*..
      20:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 09 02 00 00     .*...*...*......
      30:	8d 2a 00 00 8d 2a 00 00 0d 02 00 00 11 02 00 00     .*...*..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 9f 27 00 00     ........!....'..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 8d 2a 00 00 8d 2a 00 00 49 02 00 00     E....*...*..I...
      80:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 8d 2a 00 00     .*...*...*...*..
      90:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 4d 02 00 00     .*...*...*..M...
      a0:	8d 2a 00 00 c9 30 00 00 8d 2a 00 00 e1 2f 00 00     .*...0...*.../..
      b0:	b5 28 00 00 51 02 00 00 55 02 00 00 8d 2a 00 00     .(..Q...U....*..
      c0:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 8d 2a 00 00     .*...*...*...*..
      d0:	8d 2a 00 00 db 36 00 00 11 37 00 00 51 37 00 00     .*...6...7..Q7..
      e0:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 8d 2a 00 00     .*...*...*...*..
      f0:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 8d 2a 00 00     .*...*...*...*..
     100:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 8d 2a 00 00     .*...*...*...*..
     110:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 8d 2a 00 00     .*...*...*...*..
     120:	8d 2a 00 00 8d 2a 00 00 8d 2a 00 00 8d 2a 00 00     .*...*...*...*..

00000130 <startup>:
    (unsigned int *)  reset_mcu, // 59 DMA2CH4_5
};


 __attribute__((section(".text.startup"))) void startup()
{
     130:	b508      	push	{r3, lr}
    /* Set memory in bss segment to zeros */
    unsigned int * bss_start_p = &_BSS_START; 
    unsigned int * bss_end_p = &_BSS_END;

    while(bss_start_p < bss_end_p)
     132:	4b16      	ldr	r3, [pc, #88]	; (18c <startup+0x5c>)
     134:	4a16      	ldr	r2, [pc, #88]	; (190 <startup+0x60>)
     136:	429a      	cmp	r2, r3
     138:	d20b      	bcs.n	152 <startup+0x22>
     13a:	4613      	mov	r3, r2
     13c:	4a15      	ldr	r2, [pc, #84]	; (194 <startup+0x64>)
     13e:	1ad2      	subs	r2, r2, r3
     140:	f022 0203 	bic.w	r2, r2, #3
     144:	3204      	adds	r2, #4
     146:	441a      	add	r2, r3
    {
        *bss_start_p = 0;
     148:	2100      	movs	r1, #0
     14a:	f843 1b04 	str.w	r1, [r3], #4
    while(bss_start_p < bss_end_p)
     14e:	4293      	cmp	r3, r2
     150:	d1fb      	bne.n	14a <startup+0x1a>
     * read/write memory */
    unsigned int * data_rom_start_p = &_DATA_ROM_START;
    unsigned int * data_ram_start_p = &_DATA_RAM_START;
    unsigned int * data_ram_end_p = &_DATA_RAM_END;

    while(data_ram_start_p < data_ram_end_p)
     152:	4b11      	ldr	r3, [pc, #68]	; (198 <startup+0x68>)
     154:	4a11      	ldr	r2, [pc, #68]	; (19c <startup+0x6c>)
     156:	429a      	cmp	r2, r3
     158:	d20e      	bcs.n	178 <startup+0x48>
     15a:	4b11      	ldr	r3, [pc, #68]	; (1a0 <startup+0x70>)
     15c:	3204      	adds	r2, #4
     15e:	4811      	ldr	r0, [pc, #68]	; (1a4 <startup+0x74>)
     160:	1a80      	subs	r0, r0, r2
     162:	f020 0003 	bic.w	r0, r0, #3
     166:	3004      	adds	r0, #4
     168:	4418      	add	r0, r3
     16a:	3a04      	subs	r2, #4
    {
        *data_ram_start_p = *data_rom_start_p;
     16c:	f853 1b04 	ldr.w	r1, [r3], #4
     170:	f842 1b04 	str.w	r1, [r2], #4
    while(data_ram_start_p < data_ram_end_p)
     174:	4283      	cmp	r3, r0
     176:	d1f9      	bne.n	16c <startup+0x3c>
//	here=(void*)&_TPA_START;
//	ffa=(uint16_t*)&_FLASH_FREE;
	// active les interruptions et les fault handler
	//SCB_CCR->fld_ccr.unalign_trp=1;
	//SCB_CCR->fld_ccr.div_0_trp=1;
	CCR->ccr|=1|(1<<3)|(1<<4);
     178:	4a0b      	ldr	r2, [pc, #44]	; (1a8 <startup+0x78>)
     17a:	6813      	ldr	r3, [r2, #0]
     17c:	f043 0319 	orr.w	r3, r3, #25
     180:	6013      	str	r3, [r2, #0]
    __enable_irq();
     182:	b662      	cpsie	i
    __enable_fault_irq();
     184:	b661      	cpsie	f
    "isb\n"
    :: [psp_top] "r" (PSP_TOP)
    );
*/    
    /* Now we are ready to start the main function */
    main();
     186:	f001 fc97 	bl	1ab8 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e7a 	.word	0x20004e7a
     190:	20000212 	.word	0x20000212
     194:	20004e79 	.word	0x20004e79
     198:	20000212 	.word	0x20000212
     19c:	20000000 	.word	0x20000000
     1a0:	0000952c 	.word	0x0000952c
     1a4:	20000215 	.word	0x20000215
     1a8:	e000ed14 	.word	0xe000ed14

000001ac <HARD_FAULT_handler>:
_exception(HARD_FAULT_handler){
     1ac:	4668      	mov	r0, sp
     1ae:	f020 0107 	bic.w	r1, r0, #7
     1b2:	468d      	mov	sp, r1
     1b4:	b501      	push	{r0, lr}
		asm volatile (
     1b6:	f3ef 8009 	mrs	r0, PSP
     1ba:	6981      	ldr	r1, [r0, #24]
	if ((CFSR->fsr.mmFault)&0x7f){
     1bc:	4b0c      	ldr	r3, [pc, #48]	; (1f0 <HARD_FAULT_handler+0x44>)
     1be:	681b      	ldr	r3, [r3, #0]
     1c0:	f013 0f7f 	tst.w	r3, #127	; 0x7f
     1c4:	d10b      	bne.n	1de <HARD_FAULT_handler+0x32>
	}else if ((CFSR->fsr.busFault)&0xff){
     1c6:	4b0a      	ldr	r3, [pc, #40]	; (1f0 <HARD_FAULT_handler+0x44>)
     1c8:	681b      	ldr	r3, [r3, #0]
     1ca:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ce:	b94b      	cbnz	r3, 1e4 <HARD_FAULT_handler+0x38>
	}else if ((CFSR->fsr.usageFalt)&0xffff){
     1d0:	4b07      	ldr	r3, [pc, #28]	; (1f0 <HARD_FAULT_handler+0x44>)
     1d2:	681b      	ldr	r3, [r3, #0]
     1d4:	0c1b      	lsrs	r3, r3, #16
     1d6:	d008      	beq.n	1ea <HARD_FAULT_handler+0x3e>
		print_fault("usage fault ",adr);
     1d8:	4806      	ldr	r0, [pc, #24]	; (1f4 <HARD_FAULT_handler+0x48>)
     1da:	f002 fc5f 	bl	2a9c <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fc5c 	bl	2a9c <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fc59 	bl	2a9c <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fc56 	bl	2a9c <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003f94 	.word	0x00003f94
     1f8:	00003f70 	.word	0x00003f70
     1fc:	00003f88 	.word	0x00003f88
     200:	00003fa4 	.word	0x00003fa4

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fc42 	bl	2a8c <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fc40 	bl	2a8c <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fc3e 	bl	2a8c <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fc3c 	bl	2a8c <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fc3a 	bl	2a8c <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fc38 	bl	2a8c <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fc36 	bl	2a8c <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fc34 	bl	2a8c <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fc32 	bl	2a8c <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fc30 	bl	2a8c <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fc2e 	bl	2a8c <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fc2c 	bl	2a8c <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fc2a 	bl	2a8c <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fc28 	bl	2a8c <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fc26 	bl	2a8c <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fc24 	bl	2a8c <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fc22 	bl	2a8c <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fc20 	bl	2a8c <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fc1e 	bl	2a8c <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fc1c 	bl	2a8c <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fc1a 	bl	2a8c <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 fc18 	bl	2a8c <reset_mcu>
_default_handler(USART2_handler) // 38
     25c:	f002 fc16 	bl	2a8c <reset_mcu>
_default_handler(USART3_handler) // 39
     260:	f002 fc14 	bl	2a8c <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fc12 	bl	2a8c <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fc10 	bl	2a8c <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fc0e 	bl	2a8c <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fc0c 	bl	2a8c <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fc0a 	bl	2a8c <reset_mcu>

00000278 <basic>:
#include "graphics.h"
#include "gamepad.h"
#include "text.h"
#include "basic.h"

void basic(){
     278:	b508      	push	{r3, lr}
    gfx_cls();
     27a:	f001 f9b5 	bl	15e8 <gfx_cls>
    print("not done yet\n");
     27e:	4804      	ldr	r0, [pc, #16]	; (290 <basic+0x18>)
     280:	f002 fd72 	bl	2d68 <print>
    prompt_btn();
     284:	f002 fdd5 	bl	2e32 <prompt_btn>
    btn_wait_any();
     288:	f000 ff4c 	bl	1124 <btn_wait_any>
     28c:	bd08      	pop	{r3, pc}
     28e:	bf00      	nop
     290:	00003cc0 	.word	0x00003cc0

00000294 <bkp_read_register>:
#include "../include/stm32f103c8.h"

// lecture d'un registre BKP->DR[]
// r->{0..9}
uint16_t bkp_read_register(int r){
	return BKP->DR[r%10];
     294:	4a08      	ldr	r2, [pc, #32]	; (2b8 <bkp_read_register+0x24>)
     296:	fb82 3200 	smull	r3, r2, r2, r0
     29a:	17c3      	asrs	r3, r0, #31
     29c:	ebc3 03a2 	rsb	r3, r3, r2, asr #2
     2a0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     2a4:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
     2a8:	009b      	lsls	r3, r3, #2
     2aa:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
     2ae:	f503 43d8 	add.w	r3, r3, #27648	; 0x6c00
     2b2:	6858      	ldr	r0, [r3, #4]
}
     2b4:	b280      	uxth	r0, r0
     2b6:	4770      	bx	lr
     2b8:	66666667 	.word	0x66666667

000002bc <bkp_write_register>:

// écriture d'un registre BKP->DR[]
// r->{0..9}
void bkp_write_register(int r, uint16_t value){
     2bc:	b410      	push	{r4}
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
     2be:	4a18      	ldr	r2, [pc, #96]	; (320 <bkp_write_register+0x64>)
     2c0:	69d3      	ldr	r3, [r2, #28]
     2c2:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
     2c6:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
     2c8:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
     2cc:	6813      	ldr	r3, [r2, #0]
     2ce:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     2d2:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
     2d4:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
     2d8:	6853      	ldr	r3, [r2, #4]
     2da:	f043 0310 	orr.w	r3, r3, #16
     2de:	6053      	str	r3, [r2, #4]
	BKP->DR[r%10]=value;
     2e0:	4c10      	ldr	r4, [pc, #64]	; (324 <bkp_write_register+0x68>)
     2e2:	fb84 3400 	smull	r3, r4, r4, r0
     2e6:	17c3      	asrs	r3, r0, #31
     2e8:	ebc3 03a4 	rsb	r3, r3, r4, asr #2
     2ec:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     2f0:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
     2f4:	009b      	lsls	r3, r3, #2
     2f6:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
     2fa:	f503 43d8 	add.w	r3, r3, #27648	; 0x6c00
     2fe:	6059      	str	r1, [r3, #4]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
     300:	6853      	ldr	r3, [r2, #4]
     302:	f023 0310 	bic.w	r3, r3, #16
     306:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
     308:	6853      	ldr	r3, [r2, #4]
     30a:	f013 0f20 	tst.w	r3, #32
     30e:	d0fb      	beq.n	308 <bkp_write_register+0x4c>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
     310:	4a05      	ldr	r2, [pc, #20]	; (328 <bkp_write_register+0x6c>)
     312:	6813      	ldr	r3, [r2, #0]
     314:	f423 7380 	bic.w	r3, r3, #256	; 0x100
     318:	6013      	str	r3, [r2, #0]
}
     31a:	bc10      	pop	{r4}
     31c:	4770      	bx	lr
     31e:	bf00      	nop
     320:	40021000 	.word	0x40021000
     324:	66666667 	.word	0x66666667
     328:	40007000 	.word	0x40007000

0000032c <print_vms>:
static uint8_t block[32];

uint8_t game_ram[GAME_SPACE];

// print virtual machine states
void print_vms(const char *msg,uint8_t error_code){
     32c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     32e:	4605      	mov	r5, r0
     330:	460c      	mov	r4, r1
	uint8_t orig_font;
	orig_font=get_font();
     332:	f002 fc2d 	bl	2b90 <get_font>
     336:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     338:	2002      	movs	r0, #2
     33a:	f002 fc23 	bl	2b84 <select_font>
	new_line();
     33e:	f002 fc2d 	bl	2b9c <new_line>
	print(msg);
     342:	4628      	mov	r0, r5
     344:	f002 fd10 	bl	2d68 <print>
	switch(error_code){
     348:	2c02      	cmp	r4, #2
     34a:	d039      	beq.n	3c0 <print_vms+0x94>
     34c:	2c03      	cmp	r4, #3
     34e:	d102      	bne.n	356 <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     350:	481d      	ldr	r0, [pc, #116]	; (3c8 <print_vms+0x9c>)
     352:	f002 fd09 	bl	2d68 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     356:	481d      	ldr	r0, [pc, #116]	; (3cc <print_vms+0xa0>)
     358:	f002 fd06 	bl	2d68 <print>
	print_hex(vms.pc-2);
     35c:	4d1c      	ldr	r5, [pc, #112]	; (3d0 <print_vms+0xa4>)
     35e:	8828      	ldrh	r0, [r5, #0]
     360:	2110      	movs	r1, #16
     362:	3802      	subs	r0, #2
     364:	f002 fd1b 	bl	2d9e <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     368:	7da8      	ldrb	r0, [r5, #22]
     36a:	7deb      	ldrb	r3, [r5, #23]
     36c:	2110      	movs	r1, #16
     36e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     372:	f002 fd14 	bl	2d9e <print_int>
	new_line();
     376:	f002 fc11 	bl	2b9c <new_line>
	print("I:");
     37a:	4816      	ldr	r0, [pc, #88]	; (3d4 <print_vms+0xa8>)
     37c:	f002 fcf4 	bl	2d68 <print>
	print_hex(vms.ix);
     380:	2110      	movs	r1, #16
     382:	8868      	ldrh	r0, [r5, #2]
     384:	f002 fd0b 	bl	2d9e <print_int>
	print(" SP:");
     388:	4813      	ldr	r0, [pc, #76]	; (3d8 <print_vms+0xac>)
     38a:	f002 fced 	bl	2d68 <print>
	print_hex(vms.sp);
     38e:	2110      	movs	r1, #16
     390:	7928      	ldrb	r0, [r5, #4]
     392:	f002 fd04 	bl	2d9e <print_int>
	new_line();
     396:	f002 fc01 	bl	2b9c <new_line>
	print("var[]:");
     39a:	4810      	ldr	r0, [pc, #64]	; (3dc <print_vms+0xb0>)
     39c:	f002 fce4 	bl	2d68 <print>
     3a0:	1dac      	adds	r4, r5, #6
     3a2:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     3a4:	2610      	movs	r6, #16
     3a6:	4631      	mov	r1, r6
     3a8:	f814 0b01 	ldrb.w	r0, [r4], #1
     3ac:	f002 fcf7 	bl	2d9e <print_int>
	for (int i=0;i<16;i++){
     3b0:	42ac      	cmp	r4, r5
     3b2:	d1f8      	bne.n	3a6 <print_vms+0x7a>
	}
	new_line();
     3b4:	f002 fbf2 	bl	2b9c <new_line>
	select_font(orig_font);
     3b8:	4638      	mov	r0, r7
     3ba:	f002 fbe3 	bl	2b84 <select_font>
     3be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3c0:	4807      	ldr	r0, [pc, #28]	; (3e0 <print_vms+0xb4>)
     3c2:	f002 fcd1 	bl	2d68 <print>
		break;
     3c6:	e7c6      	b.n	356 <print_vms+0x2a>
     3c8:	00003cd0 	.word	0x00003cd0
     3cc:	00003cf8 	.word	0x00003cf8
     3d0:	20000214 	.word	0x20000214
     3d4:	00003cfc 	.word	0x00003cfc
     3d8:	00003d00 	.word	0x00003d00
     3dc:	00003d08 	.word	0x00003d08
     3e0:	00003ce4 	.word	0x00003ce4

000003e4 <srand>:
}

static uint32_t state=1;

void srand(unsigned n){
	state=n;
     3e4:	4b01      	ldr	r3, [pc, #4]	; (3ec <srand+0x8>)
     3e6:	6018      	str	r0, [r3, #0]
     3e8:	4770      	bx	lr
     3ea:	bf00      	nop
     3ec:	20000000 	.word	0x20000000

000003f0 <rand>:
}

int rand(){
	uint32_t x;
	x=state;
     3f0:	4b05      	ldr	r3, [pc, #20]	; (408 <rand+0x18>)
     3f2:	6818      	ldr	r0, [r3, #0]
	x^=x<<13;
     3f4:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
	x^=x>>17;
     3f8:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
	x^=x<<5;
     3fc:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
	state=x;
     400:	6018      	str	r0, [r3, #0]
	return x&0x7fffffff; 
}
     402:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
     406:	4770      	bx	lr
     408:	20000000 	.word	0x20000000

0000040c <chip_vm>:


//  SCHIP/BPCHIP  virtual machine
vm_exit_code_t chip_vm(uint16_t program_address, vm_debug_t dbg_level){
     40c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
     410:	b089      	sub	sp, #36	; 0x24
#define SLOW_DOWN 5
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
	char buffer[24];

	vms.pc=program_address;
     412:	4b9a      	ldr	r3, [pc, #616]	; (67c <chip_vm+0x270>)
     414:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     416:	2200      	movs	r2, #0
     418:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     41a:	805a      	strh	r2, [r3, #2]
 	while (exit_code==CHIP_CONTINUE){
		if (vms.pc>=GAME_SPACE){
     41c:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
     420:	f080 8426 	bcs.w	c70 <chip_vm+0x864>
     424:	460d      	mov	r5, r1
			print("vt100 keyboard to continue\n");
			get_char();
			select_console(LOCAL);
			break;
		}//switch(dbg_level)
		x=rx(vms.b1);
     426:	461c      	mov	r4, r3
				block[0]=n/10;
				//store_block(vms.ix,3,block);
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
				break;
			case 0x55: // FX55  LD [I], VX  save registers V0..VX in ram pointed by I
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     428:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     42a:	4f95      	ldr	r7, [pc, #596]	; (680 <chip_vm+0x274>)
     42c:	e13c      	b.n	6a8 <chip_vm+0x29c>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     42e:	2d00      	cmp	r5, #0
     430:	f040 813f 	bne.w	6b2 <chip_vm+0x2a6>
     434:	2005      	movs	r0, #5
     436:	f002 ffc3 	bl	33c0 <micro_pause>
		_get_opcode(vms.pc);
     43a:	8823      	ldrh	r3, [r4, #0]
     43c:	4a91      	ldr	r2, [pc, #580]	; (684 <chip_vm+0x278>)
     43e:	5cd1      	ldrb	r1, [r2, r3]
     440:	75a1      	strb	r1, [r4, #22]
     442:	441a      	add	r2, r3
     444:	7852      	ldrb	r2, [r2, #1]
     446:	75e2      	strb	r2, [r4, #23]
		vms.pc+=2;
     448:	3302      	adds	r3, #2
     44a:	8023      	strh	r3, [r4, #0]
     44c:	e018      	b.n	480 <chip_vm+0x74>
			_debug_print(itoa(vms.pc-2,buffer,16));
     44e:	2210      	movs	r2, #16
     450:	a902      	add	r1, sp, #8
     452:	3802      	subs	r0, #2
     454:	f000 ffc4 	bl	13e0 <itoa>
     458:	4601      	mov	r1, r0
     45a:	2000      	movs	r0, #0
     45c:	f003 f930 	bl	36c0 <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     460:	7da0      	ldrb	r0, [r4, #22]
     462:	7de3      	ldrb	r3, [r4, #23]
     464:	2210      	movs	r2, #16
     466:	a902      	add	r1, sp, #8
     468:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     46c:	f000 ffb8 	bl	13e0 <itoa>
     470:	4601      	mov	r1, r0
     472:	2000      	movs	r0, #0
     474:	f003 f924 	bl	36c0 <usart_print>
			_debug_print("\n");
     478:	4983      	ldr	r1, [pc, #524]	; (688 <chip_vm+0x27c>)
     47a:	2000      	movs	r0, #0
     47c:	f003 f920 	bl	36c0 <usart_print>
		x=rx(vms.b1);
     480:	7da2      	ldrb	r2, [r4, #22]
     482:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     486:	7de3      	ldrb	r3, [r4, #23]
     488:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     48c:	0911      	lsrs	r1, r2, #4
     48e:	290f      	cmp	r1, #15
     490:	f200 8105 	bhi.w	69e <chip_vm+0x292>
     494:	e8df f011 	tbh	[pc, r1, lsl #1]
     498:	0081002b 	.word	0x0081002b
     49c:	00a1008d 	.word	0x00a1008d
     4a0:	00b300aa 	.word	0x00b300aa
     4a4:	014e0100 	.word	0x014e0100
     4a8:	01d5015a 	.word	0x01d5015a
     4ac:	02b002a3 	.word	0x02b002a3
     4b0:	02cb02c0 	.word	0x02cb02c0
     4b4:	032b030d 	.word	0x032b030d
			select_console(SERIAL);
     4b8:	2001      	movs	r0, #1
     4ba:	f002 fd0f 	bl	2edc <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4be:	2100      	movs	r1, #0
     4c0:	4872      	ldr	r0, [pc, #456]	; (68c <chip_vm+0x280>)
     4c2:	f7ff ff33 	bl	32c <print_vms>
			select_console(LOCAL);
     4c6:	2000      	movs	r0, #0
     4c8:	f002 fd08 	bl	2edc <select_console>
			break;
     4cc:	e7d8      	b.n	480 <chip_vm+0x74>
			select_console(SERIAL);
     4ce:	2001      	movs	r0, #1
     4d0:	f002 fd04 	bl	2edc <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4d4:	2100      	movs	r1, #0
     4d6:	486d      	ldr	r0, [pc, #436]	; (68c <chip_vm+0x280>)
     4d8:	f7ff ff28 	bl	32c <print_vms>
			print("vt100 keyboard to continue\n");
     4dc:	486c      	ldr	r0, [pc, #432]	; (690 <chip_vm+0x284>)
     4de:	f002 fc43 	bl	2d68 <print>
			get_char();
     4e2:	f002 fd01 	bl	2ee8 <get_char>
			select_console(LOCAL);
     4e6:	2000      	movs	r0, #0
     4e8:	f002 fcf8 	bl	2edc <select_console>
			break;
     4ec:	e7c8      	b.n	480 <chip_vm+0x74>
		    if ((vms.b1|vms.b2)==0){
     4ee:	431a      	orrs	r2, r3
     4f0:	f000 80d5 	beq.w	69e <chip_vm+0x292>
     4f4:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     4f8:	2ac0      	cmp	r2, #192	; 0xc0
     4fa:	d026      	beq.n	54a <chip_vm+0x13e>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
     4fc:	2ad0      	cmp	r2, #208	; 0xd0
     4fe:	d029      	beq.n	554 <chip_vm+0x148>
			}else switch(vms.b2){
     500:	3be0      	subs	r3, #224	; 0xe0
     502:	2b1f      	cmp	r3, #31
     504:	d82b      	bhi.n	55e <chip_vm+0x152>
     506:	e8df f013 	tbh	[pc, r3, lsl #1]
     50a:	002d      	.short	0x002d
     50c:	002a002a 	.word	0x002a002a
     510:	002a002a 	.word	0x002a002a
     514:	002a002a 	.word	0x002a002a
     518:	002a002a 	.word	0x002a002a
     51c:	002a002a 	.word	0x002a002a
     520:	002a002a 	.word	0x002a002a
     524:	0030002a 	.word	0x0030002a
     528:	002a002a 	.word	0x002a002a
     52c:	002a002a 	.word	0x002a002a
     530:	002a002a 	.word	0x002a002a
     534:	002a002a 	.word	0x002a002a
     538:	002a002a 	.word	0x002a002a
     53c:	0044002a 	.word	0x0044002a
     540:	003c0038 	.word	0x003c0038
     544:	03aa03c5 	.word	0x03aa03c5
     548:	0040      	.short	0x0040
				gfx_scroll_down(vms.b2&0xf); 
     54a:	f003 000f 	and.w	r0, r3, #15
     54e:	f001 f885 	bl	165c <gfx_scroll_down>
     552:	e0a4      	b.n	69e <chip_vm+0x292>
				gfx_scroll_up(vms.b2&0xf);					
     554:	f003 000f 	and.w	r0, r3, #15
     558:	f001 f85a 	bl	1610 <gfx_scroll_up>
     55c:	e09f      	b.n	69e <chip_vm+0x292>
					exit_code=CHIP_BAD_OPCODE;
     55e:	f04f 0802 	mov.w	r8, #2
     562:	e38a      	b.n	c7a <chip_vm+0x86e>
					gfx_cls();
     564:	f001 f840 	bl	15e8 <gfx_cls>
					break;
     568:	e099      	b.n	69e <chip_vm+0x292>
					vms.pc=vms.stack[vms.sp--];
     56a:	7923      	ldrb	r3, [r4, #4]
     56c:	1e5a      	subs	r2, r3, #1
     56e:	7122      	strb	r2, [r4, #4]
     570:	330c      	adds	r3, #12
     572:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     576:	8023      	strh	r3, [r4, #0]
					break;
     578:	e091      	b.n	69e <chip_vm+0x292>
					gfx_scroll_right(4);
     57a:	2004      	movs	r0, #4
     57c:	f001 f8c0 	bl	1700 <gfx_scroll_right>
					break;
     580:	e08d      	b.n	69e <chip_vm+0x292>
					gfx_scroll_left(4);
     582:	2004      	movs	r0, #4
     584:	f001 f88e 	bl	16a4 <gfx_scroll_left>
					break;
     588:	e089      	b.n	69e <chip_vm+0x292>
					set_video_mode(VM_SCHIP);
     58a:	2001      	movs	r0, #1
     58c:	f002 feda 	bl	3344 <set_video_mode>
					break; 
     590:	e085      	b.n	69e <chip_vm+0x292>
					set_video_mode(VM_BPCHIP);
     592:	2000      	movs	r0, #0
     594:	f002 fed6 	bl	3344 <set_video_mode>
					break;
     598:	e081      	b.n	69e <chip_vm+0x292>
			vms.pc=caddr(vms.b1,vms.b2);
     59a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     59e:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5a2:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5a4:	4a3b      	ldr	r2, [pc, #236]	; (694 <chip_vm+0x288>)
     5a6:	7812      	ldrb	r2, [r2, #0]
     5a8:	2a00      	cmp	r2, #0
     5aa:	d178      	bne.n	69e <chip_vm+0x292>
				vms.pc<<=1;
     5ac:	005b      	lsls	r3, r3, #1
     5ae:	8023      	strh	r3, [r4, #0]
     5b0:	e075      	b.n	69e <chip_vm+0x292>
			vms.stack[++vms.sp]=vms.pc;
     5b2:	7921      	ldrb	r1, [r4, #4]
     5b4:	3101      	adds	r1, #1
     5b6:	b2c9      	uxtb	r1, r1
     5b8:	7121      	strb	r1, [r4, #4]
     5ba:	310c      	adds	r1, #12
     5bc:	8820      	ldrh	r0, [r4, #0]
     5be:	f824 0011 	strh.w	r0, [r4, r1, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     5c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5c6:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5ca:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5cc:	4a31      	ldr	r2, [pc, #196]	; (694 <chip_vm+0x288>)
     5ce:	7812      	ldrb	r2, [r2, #0]
     5d0:	2a00      	cmp	r2, #0
     5d2:	d164      	bne.n	69e <chip_vm+0x292>
				vms.pc<<=1;
     5d4:	005b      	lsls	r3, r3, #1
     5d6:	8023      	strh	r3, [r4, #0]
     5d8:	e061      	b.n	69e <chip_vm+0x292>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     5da:	44a0      	add	r8, r4
     5dc:	f898 2006 	ldrb.w	r2, [r8, #6]
     5e0:	429a      	cmp	r2, r3
     5e2:	d15c      	bne.n	69e <chip_vm+0x292>
     5e4:	8823      	ldrh	r3, [r4, #0]
     5e6:	3302      	adds	r3, #2
     5e8:	8023      	strh	r3, [r4, #0]
     5ea:	e058      	b.n	69e <chip_vm+0x292>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     5ec:	44a0      	add	r8, r4
     5ee:	f898 2006 	ldrb.w	r2, [r8, #6]
     5f2:	429a      	cmp	r2, r3
     5f4:	d053      	beq.n	69e <chip_vm+0x292>
     5f6:	8823      	ldrh	r3, [r4, #0]
     5f8:	3302      	adds	r3, #2
     5fa:	8023      	strh	r3, [r4, #0]
     5fc:	e04f      	b.n	69e <chip_vm+0x292>
			switch(vms.b2&0xf){
     5fe:	f003 030f 	and.w	r3, r3, #15
     602:	2b02      	cmp	r3, #2
     604:	d015      	beq.n	632 <chip_vm+0x226>
     606:	2b03      	cmp	r3, #3
     608:	d025      	beq.n	656 <chip_vm+0x24a>
     60a:	b133      	cbz	r3, 61a <chip_vm+0x20e>
     60c:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     610:	f1b8 0f00 	cmp.w	r8, #0
     614:	f040 8331 	bne.w	c7a <chip_vm+0x86e>
     618:	e041      	b.n	69e <chip_vm+0x292>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     61a:	44a0      	add	r8, r4
     61c:	44a1      	add	r9, r4
     61e:	f898 2006 	ldrb.w	r2, [r8, #6]
     622:	f899 3006 	ldrb.w	r3, [r9, #6]
     626:	429a      	cmp	r2, r3
     628:	d139      	bne.n	69e <chip_vm+0x292>
     62a:	8823      	ldrh	r3, [r4, #0]
     62c:	3302      	adds	r3, #2
     62e:	8023      	strh	r3, [r4, #0]
     630:	e035      	b.n	69e <chip_vm+0x292>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     632:	4640      	mov	r0, r8
     634:	45c8      	cmp	r8, r9
     636:	bf28      	it	cs
     638:	4648      	movcs	r0, r9
     63a:	eba9 0208 	sub.w	r2, r9, r8
     63e:	2a00      	cmp	r2, #0
     640:	bfb8      	it	lt
     642:	4252      	neglt	r2, r2
     644:	8863      	ldrh	r3, [r4, #2]
     646:	3006      	adds	r0, #6
     648:	3201      	adds	r2, #1
     64a:	490e      	ldr	r1, [pc, #56]	; (684 <chip_vm+0x278>)
     64c:	4419      	add	r1, r3
     64e:	4420      	add	r0, r4
     650:	f000 fe55 	bl	12fe <move>
				break;
     654:	e023      	b.n	69e <chip_vm+0x292>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     656:	8863      	ldrh	r3, [r4, #2]
     658:	4641      	mov	r1, r8
     65a:	45c8      	cmp	r8, r9
     65c:	bf28      	it	cs
     65e:	4649      	movcs	r1, r9
     660:	eba9 0208 	sub.w	r2, r9, r8
     664:	2a00      	cmp	r2, #0
     666:	bfb8      	it	lt
     668:	4252      	neglt	r2, r2
     66a:	3106      	adds	r1, #6
     66c:	3201      	adds	r2, #1
     66e:	4421      	add	r1, r4
     670:	4804      	ldr	r0, [pc, #16]	; (684 <chip_vm+0x278>)
     672:	4418      	add	r0, r3
     674:	f000 fe43 	bl	12fe <move>
				break;
     678:	e011      	b.n	69e <chip_vm+0x292>
     67a:	bf00      	nop
     67c:	20000214 	.word	0x20000214
     680:	51eb851f 	.word	0x51eb851f
     684:	200006e0 	.word	0x200006e0
     688:	00003e24 	.word	0x00003e24
     68c:	00003d10 	.word	0x00003d10
     690:	00003d24 	.word	0x00003d24
     694:	200006a4 	.word	0x200006a4
			vms.var[x]=vms.b2;
     698:	44a0      	add	r8, r4
     69a:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     69e:	8823      	ldrh	r3, [r4, #0]
     6a0:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     6a4:	f080 82e7 	bcs.w	c76 <chip_vm+0x86a>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     6a8:	4bc0      	ldr	r3, [pc, #768]	; (9ac <chip_vm+0x5a0>)
     6aa:	781b      	ldrb	r3, [r3, #0]
     6ac:	2b01      	cmp	r3, #1
     6ae:	f43f aebe 	beq.w	42e <chip_vm+0x22>
		_get_opcode(vms.pc);
     6b2:	8820      	ldrh	r0, [r4, #0]
     6b4:	4bbe      	ldr	r3, [pc, #760]	; (9b0 <chip_vm+0x5a4>)
     6b6:	5c1a      	ldrb	r2, [r3, r0]
     6b8:	75a2      	strb	r2, [r4, #22]
     6ba:	4403      	add	r3, r0
     6bc:	785b      	ldrb	r3, [r3, #1]
     6be:	75e3      	strb	r3, [r4, #23]
		vms.pc+=2;
     6c0:	3002      	adds	r0, #2
     6c2:	b280      	uxth	r0, r0
     6c4:	8020      	strh	r0, [r4, #0]
		switch(dbg_level){
     6c6:	2d02      	cmp	r5, #2
     6c8:	f43f aef6 	beq.w	4b8 <chip_vm+0xac>
     6cc:	2d03      	cmp	r5, #3
     6ce:	f43f aefe 	beq.w	4ce <chip_vm+0xc2>
     6d2:	2d01      	cmp	r5, #1
     6d4:	f43f aebb 	beq.w	44e <chip_vm+0x42>
		x=rx(vms.b1);
     6d8:	7da2      	ldrb	r2, [r4, #22]
     6da:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     6de:	7de3      	ldrb	r3, [r4, #23]
     6e0:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     6e4:	0911      	lsrs	r1, r2, #4
     6e6:	290f      	cmp	r1, #15
     6e8:	f200 82b6 	bhi.w	c58 <chip_vm+0x84c>
     6ec:	a001      	add	r0, pc, #4	; (adr r0, 6f4 <chip_vm+0x2e8>)
     6ee:	f850 f021 	ldr.w	pc, [r0, r1, lsl #2]
     6f2:	bf00      	nop
     6f4:	000004ef 	.word	0x000004ef
     6f8:	0000059b 	.word	0x0000059b
     6fc:	000005b3 	.word	0x000005b3
     700:	000005db 	.word	0x000005db
     704:	000005ed 	.word	0x000005ed
     708:	000005ff 	.word	0x000005ff
     70c:	00000699 	.word	0x00000699
     710:	00000735 	.word	0x00000735
     714:	0000074d 	.word	0x0000074d
     718:	00000843 	.word	0x00000843
     71c:	000009df 	.word	0x000009df
     720:	000009f9 	.word	0x000009f9
     724:	00000a19 	.word	0x00000a19
     728:	00000a2f 	.word	0x00000a2f
     72c:	00000ab3 	.word	0x00000ab3
     730:	00000aef 	.word	0x00000aef
		    n=(vms.var[x]+vms.b2)>255;
     734:	44a0      	add	r8, r4
     736:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     73a:	4403      	add	r3, r0
     73c:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     740:	2bff      	cmp	r3, #255	; 0xff
     742:	bfd4      	ite	le
     744:	2300      	movle	r3, #0
     746:	2301      	movgt	r3, #1
     748:	7563      	strb	r3, [r4, #21]
			break;
     74a:	e7a8      	b.n	69e <chip_vm+0x292>
			switch(vms.b2&0xf){
     74c:	f003 030f 	and.w	r3, r3, #15
     750:	2b0e      	cmp	r3, #14
     752:	f200 8287 	bhi.w	c64 <chip_vm+0x858>
     756:	e8df f013 	tbh	[pc, r3, lsl #1]
     75a:	000f      	.short	0x000f
     75c:	00200016 	.word	0x00200016
     760:	0034002a 	.word	0x0034002a
     764:	00520043 	.word	0x00520043
     768:	0285005c 	.word	0x0285005c
     76c:	02850285 	.word	0x02850285
     770:	02850285 	.word	0x02850285
     774:	006b0285 	.word	0x006b0285
				vms.var[x]=vms.var[y];
     778:	44a1      	add	r9, r4
     77a:	f899 3006 	ldrb.w	r3, [r9, #6]
     77e:	44a0      	add	r8, r4
     780:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     784:	e78b      	b.n	69e <chip_vm+0x292>
				vms.var[x]|=vms.var[y];
     786:	44a0      	add	r8, r4
     788:	44a1      	add	r9, r4
     78a:	f898 3006 	ldrb.w	r3, [r8, #6]
     78e:	f899 2006 	ldrb.w	r2, [r9, #6]
     792:	4313      	orrs	r3, r2
     794:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     798:	e781      	b.n	69e <chip_vm+0x292>
				vms.var[x]&=vms.var[y];
     79a:	44a0      	add	r8, r4
     79c:	44a1      	add	r9, r4
     79e:	f898 3006 	ldrb.w	r3, [r8, #6]
     7a2:	f899 2006 	ldrb.w	r2, [r9, #6]
     7a6:	4013      	ands	r3, r2
     7a8:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7ac:	e777      	b.n	69e <chip_vm+0x292>
				vms.var[x]^=vms.var[y];
     7ae:	44a0      	add	r8, r4
     7b0:	44a1      	add	r9, r4
     7b2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7b6:	f899 2006 	ldrb.w	r2, [r9, #6]
     7ba:	4053      	eors	r3, r2
     7bc:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7c0:	e76d      	b.n	69e <chip_vm+0x292>
				n=(vms.var[x]+vms.var[y])>255;
     7c2:	44a0      	add	r8, r4
     7c4:	f898 3006 	ldrb.w	r3, [r8, #6]
     7c8:	44a1      	add	r9, r4
     7ca:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     7ce:	4413      	add	r3, r2
     7d0:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     7d4:	2bff      	cmp	r3, #255	; 0xff
     7d6:	bfd4      	ite	le
     7d8:	2300      	movle	r3, #0
     7da:	2301      	movgt	r3, #1
     7dc:	7563      	strb	r3, [r4, #21]
				break;
     7de:	e75e      	b.n	69e <chip_vm+0x292>
				n=vms.var[x]>=vms.var[y];
     7e0:	44a0      	add	r8, r4
     7e2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7e6:	44a1      	add	r9, r4
     7e8:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     7ec:	1a99      	subs	r1, r3, r2
     7ee:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     7f2:	4293      	cmp	r3, r2
     7f4:	bf34      	ite	cc
     7f6:	2300      	movcc	r3, #0
     7f8:	2301      	movcs	r3, #1
     7fa:	7563      	strb	r3, [r4, #21]
				break;
     7fc:	e74f      	b.n	69e <chip_vm+0x292>
				n=(vms.var[x]&1u);
     7fe:	44a0      	add	r8, r4
     800:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     804:	085a      	lsrs	r2, r3, #1
     806:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     80a:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     80e:	7563      	strb	r3, [r4, #21]
				break;
     810:	e745      	b.n	69e <chip_vm+0x292>
				n=vms.var[y]>=vms.var[x];
     812:	44a1      	add	r9, r4
     814:	f899 3006 	ldrb.w	r3, [r9, #6]
     818:	44a0      	add	r8, r4
     81a:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     81e:	1a99      	subs	r1, r3, r2
     820:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     824:	4293      	cmp	r3, r2
     826:	bf34      	ite	cc
     828:	2300      	movcc	r3, #0
     82a:	2301      	movcs	r3, #1
     82c:	7563      	strb	r3, [r4, #21]
				break;
     82e:	e736      	b.n	69e <chip_vm+0x292>
				n=(vms.var[x]&128)>>7;
     830:	44a0      	add	r8, r4
     832:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     836:	005a      	lsls	r2, r3, #1
     838:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     83c:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     83e:	7563      	strb	r3, [r4, #21]
				break;
     840:	e72d      	b.n	69e <chip_vm+0x292>
			switch (vms.b2&0xf){
     842:	f003 030f 	and.w	r3, r3, #15
     846:	2b0f      	cmp	r3, #15
     848:	f200 820f 	bhi.w	c6a <chip_vm+0x85e>
     84c:	e8df f003 	tbb	[pc, r3]
     850:	3c1f1508 	.word	0x3c1f1508
     854:	62574c47 	.word	0x62574c47
     858:	867a736c 	.word	0x867a736c
     85c:	c1b29f93 	.word	0xc1b29f93
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     860:	44a0      	add	r8, r4
     862:	44a1      	add	r9, r4
     864:	f898 2006 	ldrb.w	r2, [r8, #6]
     868:	f899 3006 	ldrb.w	r3, [r9, #6]
     86c:	429a      	cmp	r2, r3
     86e:	f43f af16 	beq.w	69e <chip_vm+0x292>
     872:	8823      	ldrh	r3, [r4, #0]
     874:	3302      	adds	r3, #2
     876:	8023      	strh	r3, [r4, #0]
     878:	e711      	b.n	69e <chip_vm+0x292>
				key_tone(vms.var[x],vms.var[y],false);
     87a:	44a1      	add	r9, r4
     87c:	44a0      	add	r8, r4
     87e:	2200      	movs	r2, #0
     880:	f899 1006 	ldrb.w	r1, [r9, #6]
     884:	f898 0006 	ldrb.w	r0, [r8, #6]
     888:	f001 ffec 	bl	2864 <key_tone>
				break;
     88c:	e707      	b.n	69e <chip_vm+0x292>
				select_font(FONT_ASCII);
     88e:	2002      	movs	r0, #2
     890:	f002 f978 	bl	2b84 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     894:	44a1      	add	r9, r4
     896:	44a0      	add	r8, r4
     898:	f899 1006 	ldrb.w	r1, [r9, #6]
     89c:	f898 0006 	ldrb.w	r0, [r8, #6]
     8a0:	f002 fa2e 	bl	2d00 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     8a4:	8860      	ldrh	r0, [r4, #2]
     8a6:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9b0 <chip_vm+0x5a4>
     8aa:	4448      	add	r0, r9
     8ac:	f002 fa5c 	bl	2d68 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8b0:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8b4:	eb09 0008 	add.w	r0, r9, r8
     8b8:	f000 fd2b 	bl	1312 <strlen>
     8bc:	f108 0801 	add.w	r8, r8, #1
     8c0:	4480      	add	r8, r0
     8c2:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     8c6:	e6ea      	b.n	69e <chip_vm+0x292>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     8c8:	44a1      	add	r9, r4
     8ca:	44a0      	add	r8, r4
     8cc:	2303      	movs	r3, #3
     8ce:	2200      	movs	r2, #0
     8d0:	f899 1006 	ldrb.w	r1, [r9, #6]
     8d4:	f898 0006 	ldrb.w	r0, [r8, #6]
     8d8:	f000 fe10 	bl	14fc <gfx_blit>
				break;
     8dc:	e6df      	b.n	69e <chip_vm+0x292>
				noise((x<<4)+y);
     8de:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8e2:	f001 ffd3 	bl	288c <noise>
				break;
     8e6:	e6da      	b.n	69e <chip_vm+0x292>
				key_tone(vms.var[x],vms.var[y],true);
     8e8:	44a1      	add	r9, r4
     8ea:	44a0      	add	r8, r4
     8ec:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8f0:	f899 1006 	ldrb.w	r1, [r9, #6]
     8f4:	f898 0006 	ldrb.w	r0, [r8, #6]
     8f8:	f001 ffb4 	bl	2864 <key_tone>
				break;
     8fc:	e6cf      	b.n	69e <chip_vm+0x292>
				vms.stack[++vms.sp]=vms.var[x];
     8fe:	7923      	ldrb	r3, [r4, #4]
     900:	3301      	adds	r3, #1
     902:	b2db      	uxtb	r3, r3
     904:	7123      	strb	r3, [r4, #4]
     906:	330c      	adds	r3, #12
     908:	44a0      	add	r8, r4
     90a:	f898 2006 	ldrb.w	r2, [r8, #6]
     90e:	f824 2013 	strh.w	r2, [r4, r3, lsl #1]
				break;
     912:	e6c4      	b.n	69e <chip_vm+0x292>
				vms.var[x]=vms.stack[vms.sp--];
     914:	7923      	ldrb	r3, [r4, #4]
     916:	1e5a      	subs	r2, r3, #1
     918:	7122      	strb	r2, [r4, #4]
     91a:	44a0      	add	r8, r4
     91c:	330c      	adds	r3, #12
     91e:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     922:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     926:	e6ba      	b.n	69e <chip_vm+0x292>
				{ 	vmode_params_t *vparams=get_video_params();
     928:	f002 fd36 	bl	3398 <get_video_params>
					vms.var[x]=vparams->hres;
     92c:	44a0      	add	r8, r4
     92e:	8983      	ldrh	r3, [r0, #12]
     930:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     934:	e6b3      	b.n	69e <chip_vm+0x292>
					vmode_params_t *vparams=get_video_params();
     936:	f002 fd2f 	bl	3398 <get_video_params>
					vms.var[x]=vparams->vres;
     93a:	44a0      	add	r8, r4
     93c:	89c3      	ldrh	r3, [r0, #14]
     93e:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     942:	e6ac      	b.n	69e <chip_vm+0x292>
			    vms.var[x] |= (1<<(y&0x7));
     944:	44a0      	add	r8, r4
     946:	f009 0907 	and.w	r9, r9, #7
     94a:	2301      	movs	r3, #1
     94c:	fa03 f309 	lsl.w	r3, r3, r9
     950:	f898 2006 	ldrb.w	r2, [r8, #6]
     954:	4313      	orrs	r3, r2
     956:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     95a:	e6a0      	b.n	69e <chip_vm+0x292>
			    vms.var[x] &= ~(1<<(y&0x7));
     95c:	44a0      	add	r8, r4
     95e:	f009 0207 	and.w	r2, r9, #7
     962:	2301      	movs	r3, #1
     964:	fa03 f202 	lsl.w	r2, r3, r2
     968:	f898 3006 	ldrb.w	r3, [r8, #6]
     96c:	ea23 0302 	bic.w	r3, r3, r2
     970:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     974:	e693      	b.n	69e <chip_vm+0x292>
   			    vms.var[x] ^= (1<<(y&0x7));
     976:	44a0      	add	r8, r4
     978:	f009 0907 	and.w	r9, r9, #7
     97c:	2301      	movs	r3, #1
     97e:	fa03 f309 	lsl.w	r3, r3, r9
     982:	f898 2006 	ldrb.w	r2, [r8, #6]
     986:	4053      	eors	r3, r2
     988:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     98c:	e687      	b.n	69e <chip_vm+0x292>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     98e:	44a0      	add	r8, r4
     990:	f898 3006 	ldrb.w	r3, [r8, #6]
     994:	f009 0907 	and.w	r9, r9, #7
     998:	fa43 f309 	asr.w	r3, r3, r9
     99c:	f013 0f01 	tst.w	r3, #1
     9a0:	f43f ae7d 	beq.w	69e <chip_vm+0x292>
     9a4:	8823      	ldrh	r3, [r4, #0]
     9a6:	3302      	adds	r3, #2
     9a8:	8023      	strh	r3, [r4, #0]
     9aa:	e678      	b.n	69e <chip_vm+0x292>
     9ac:	200006a4 	.word	0x200006a4
     9b0:	200006e0 	.word	0x200006e0
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     9b4:	44a0      	add	r8, r4
     9b6:	f898 3006 	ldrb.w	r3, [r8, #6]
     9ba:	f009 0907 	and.w	r9, r9, #7
     9be:	fa43 f309 	asr.w	r3, r3, r9
     9c2:	f013 0f01 	tst.w	r3, #1
     9c6:	f47f ae6a 	bne.w	69e <chip_vm+0x292>
     9ca:	8823      	ldrh	r3, [r4, #0]
     9cc:	3302      	adds	r3, #2
     9ce:	8023      	strh	r3, [r4, #0]
     9d0:	e665      	b.n	69e <chip_vm+0x292>
			    vms.var[15]=gfx_get_pixel(x,y);
     9d2:	4649      	mov	r1, r9
     9d4:	4640      	mov	r0, r8
     9d6:	f000 fec7 	bl	1768 <gfx_get_pixel>
     9da:	7560      	strb	r0, [r4, #21]
				break;  	
     9dc:	e65f      	b.n	69e <chip_vm+0x292>
			vms.ix=caddr(vms.b1,vms.b2);
     9de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9e2:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9e6:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9e8:	4aac      	ldr	r2, [pc, #688]	; (c9c <chip_vm+0x890>)
     9ea:	7812      	ldrb	r2, [r2, #0]
     9ec:	b90a      	cbnz	r2, 9f2 <chip_vm+0x5e6>
				vms.ix<<=1;
     9ee:	005b      	lsls	r3, r3, #1
     9f0:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     9f2:	2300      	movs	r3, #0
     9f4:	7163      	strb	r3, [r4, #5]
			break;
     9f6:	e652      	b.n	69e <chip_vm+0x292>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     9f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9fc:	f3c3 030b 	ubfx	r3, r3, #0, #12
     a00:	79a2      	ldrb	r2, [r4, #6]
     a02:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     a06:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     a08:	4aa4      	ldr	r2, [pc, #656]	; (c9c <chip_vm+0x890>)
     a0a:	7812      	ldrb	r2, [r2, #0]
     a0c:	2a00      	cmp	r2, #0
     a0e:	f47f ae46 	bne.w	69e <chip_vm+0x292>
				vms.pc<<=1;
     a12:	005b      	lsls	r3, r3, #1
     a14:	8023      	strh	r3, [r4, #0]
     a16:	e642      	b.n	69e <chip_vm+0x292>
			vms.var[x]=rand()%vms.b2;
     a18:	f7ff fcea 	bl	3f0 <rand>
     a1c:	44a0      	add	r8, r4
     a1e:	7de3      	ldrb	r3, [r4, #23]
     a20:	fb90 f2f3 	sdiv	r2, r0, r3
     a24:	fb02 0013 	mls	r0, r2, r3, r0
     a28:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     a2c:	e637      	b.n	69e <chip_vm+0x292>
			if (!n){
     a2e:	f013 030f 	ands.w	r3, r3, #15
     a32:	d11f      	bne.n	a74 <chip_vm+0x668>
				if (vms.sprite_mem==RAM_MEM){
     a34:	7963      	ldrb	r3, [r4, #5]
     a36:	b97b      	cbnz	r3, a58 <chip_vm+0x64c>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     a38:	44a1      	add	r9, r4
     a3a:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a3e:	44a0      	add	r8, r4
     a40:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a44:	8863      	ldrh	r3, [r4, #2]
     a46:	4a96      	ldr	r2, [pc, #600]	; (ca0 <chip_vm+0x894>)
     a48:	4413      	add	r3, r2
     a4a:	9300      	str	r3, [sp, #0]
     a4c:	2310      	movs	r3, #16
     a4e:	461a      	mov	r2, r3
     a50:	f000 feb0 	bl	17b4 <gfx_sprite>
     a54:	7560      	strb	r0, [r4, #21]
     a56:	e622      	b.n	69e <chip_vm+0x292>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     a58:	44a1      	add	r9, r4
     a5a:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a5e:	44a0      	add	r8, r4
     a60:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a64:	8863      	ldrh	r3, [r4, #2]
     a66:	9300      	str	r3, [sp, #0]
     a68:	2310      	movs	r3, #16
     a6a:	461a      	mov	r2, r3
     a6c:	f000 fea2 	bl	17b4 <gfx_sprite>
     a70:	7560      	strb	r0, [r4, #21]
     a72:	e614      	b.n	69e <chip_vm+0x292>
				if (vms.sprite_mem==RAM_MEM){
     a74:	7962      	ldrb	r2, [r4, #5]
     a76:	b97a      	cbnz	r2, a98 <chip_vm+0x68c>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     a78:	44a1      	add	r9, r4
     a7a:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a7e:	44a0      	add	r8, r4
     a80:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a84:	8862      	ldrh	r2, [r4, #2]
     a86:	f8df e218 	ldr.w	lr, [pc, #536]	; ca0 <chip_vm+0x894>
     a8a:	4472      	add	r2, lr
     a8c:	9200      	str	r2, [sp, #0]
     a8e:	2208      	movs	r2, #8
     a90:	f000 fe90 	bl	17b4 <gfx_sprite>
     a94:	7560      	strb	r0, [r4, #21]
     a96:	e602      	b.n	69e <chip_vm+0x292>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     a98:	44a1      	add	r9, r4
     a9a:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a9e:	44a0      	add	r8, r4
     aa0:	f998 0006 	ldrsb.w	r0, [r8, #6]
     aa4:	8862      	ldrh	r2, [r4, #2]
     aa6:	9200      	str	r2, [sp, #0]
     aa8:	2208      	movs	r2, #8
     aaa:	f000 fe83 	bl	17b4 <gfx_sprite>
     aae:	7560      	strb	r0, [r4, #21]
     ab0:	e5f5      	b.n	69e <chip_vm+0x292>
				switch(vms.b2){
     ab2:	2b9e      	cmp	r3, #158	; 0x9e
     ab4:	d003      	beq.n	abe <chip_vm+0x6b2>
     ab6:	2ba1      	cmp	r3, #161	; 0xa1
     ab8:	d00d      	beq.n	ad6 <chip_vm+0x6ca>
					return CHIP_BAD_OPCODE;
     aba:	2002      	movs	r0, #2
     abc:	e0e7      	b.n	c8e <chip_vm+0x882>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     abe:	44a0      	add	r8, r4
     ac0:	f898 0006 	ldrb.w	r0, [r8, #6]
     ac4:	f000 fafa 	bl	10bc <btn_query_down>
     ac8:	2800      	cmp	r0, #0
     aca:	f43f ade8 	beq.w	69e <chip_vm+0x292>
     ace:	8823      	ldrh	r3, [r4, #0]
     ad0:	3302      	adds	r3, #2
     ad2:	8023      	strh	r3, [r4, #0]
     ad4:	e5e3      	b.n	69e <chip_vm+0x292>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     ad6:	44a0      	add	r8, r4
     ad8:	f898 0006 	ldrb.w	r0, [r8, #6]
     adc:	f000 faee 	bl	10bc <btn_query_down>
     ae0:	2800      	cmp	r0, #0
     ae2:	f47f addc 	bne.w	69e <chip_vm+0x292>
     ae6:	8823      	ldrh	r3, [r4, #0]
     ae8:	3302      	adds	r3, #2
     aea:	8023      	strh	r3, [r4, #0]
     aec:	e5d7      	b.n	69e <chip_vm+0x292>
			switch(vms.b2){
     aee:	2b29      	cmp	r3, #41	; 0x29
     af0:	d078      	beq.n	be4 <chip_vm+0x7d8>
     af2:	d815      	bhi.n	b20 <chip_vm+0x714>
     af4:	2b0a      	cmp	r3, #10
     af6:	d05a      	beq.n	bae <chip_vm+0x7a2>
     af8:	d908      	bls.n	b0c <chip_vm+0x700>
     afa:	2b18      	cmp	r3, #24
     afc:	d063      	beq.n	bc6 <chip_vm+0x7ba>
     afe:	2b1e      	cmp	r3, #30
     b00:	d069      	beq.n	bd6 <chip_vm+0x7ca>
     b02:	2b15      	cmp	r3, #21
     b04:	d059      	beq.n	bba <chip_vm+0x7ae>
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash
				flash_read_block((const uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
				//move((const uint8_t*)block,vms.var,x+1);
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     b06:	f04f 0802 	mov.w	r8, #2
     b0a:	e581      	b.n	610 <chip_vm+0x204>
			switch(vms.b2){
     b0c:	2b01      	cmp	r3, #1
     b0e:	d044      	beq.n	b9a <chip_vm+0x78e>
     b10:	2b07      	cmp	r3, #7
     b12:	d1f8      	bne.n	b06 <chip_vm+0x6fa>
				vms.var[x]=game_timer;
     b14:	4b63      	ldr	r3, [pc, #396]	; (ca4 <chip_vm+0x898>)
     b16:	881b      	ldrh	r3, [r3, #0]
     b18:	44a0      	add	r8, r4
     b1a:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     b1e:	e5be      	b.n	69e <chip_vm+0x292>
			switch(vms.b2){
     b20:	2b55      	cmp	r3, #85	; 0x55
     b22:	d07c      	beq.n	c1e <chip_vm+0x812>
     b24:	d910      	bls.n	b48 <chip_vm+0x73c>
     b26:	2b75      	cmp	r3, #117	; 0x75
     b28:	f000 8082 	beq.w	c30 <chip_vm+0x824>
     b2c:	2b85      	cmp	r3, #133	; 0x85
     b2e:	f000 8089 	beq.w	c44 <chip_vm+0x838>
     b32:	2b65      	cmp	r3, #101	; 0x65
     b34:	d1e7      	bne.n	b06 <chip_vm+0x6fa>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     b36:	8863      	ldrh	r3, [r4, #2]
     b38:	f108 0201 	add.w	r2, r8, #1
     b3c:	4631      	mov	r1, r6
     b3e:	4858      	ldr	r0, [pc, #352]	; (ca0 <chip_vm+0x894>)
     b40:	4418      	add	r0, r3
     b42:	f000 fbdc 	bl	12fe <move>
				break;
     b46:	e5aa      	b.n	69e <chip_vm+0x292>
			switch(vms.b2){
     b48:	2b30      	cmp	r3, #48	; 0x30
     b4a:	d05a      	beq.n	c02 <chip_vm+0x7f6>
     b4c:	2b33      	cmp	r3, #51	; 0x33
     b4e:	d1da      	bne.n	b06 <chip_vm+0x6fa>
				n=vms.var[x];
     b50:	44a0      	add	r8, r4
     b52:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     b56:	4a54      	ldr	r2, [pc, #336]	; (ca8 <chip_vm+0x89c>)
     b58:	fba2 0301 	umull	r0, r3, r2, r1
     b5c:	08db      	lsrs	r3, r3, #3
     b5e:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     b62:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     b66:	f884 005a 	strb.w	r0, [r4, #90]	; 0x5a
				block[1]=n%10;
     b6a:	b2db      	uxtb	r3, r3
     b6c:	fba2 0203 	umull	r0, r2, r2, r3
     b70:	08d2      	lsrs	r2, r2, #3
     b72:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     b76:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     b7a:	f884 3059 	strb.w	r3, [r4, #89]	; 0x59
				block[0]=n/10;
     b7e:	fba7 2301 	umull	r2, r3, r7, r1
     b82:	095b      	lsrs	r3, r3, #5
     b84:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     b88:	8863      	ldrh	r3, [r4, #2]
     b8a:	2203      	movs	r2, #3
     b8c:	4944      	ldr	r1, [pc, #272]	; (ca0 <chip_vm+0x894>)
     b8e:	4419      	add	r1, r3
     b90:	f104 0058 	add.w	r0, r4, #88	; 0x58
     b94:	f000 fbb3 	bl	12fe <move>
				break;
     b98:	e581      	b.n	69e <chip_vm+0x292>
				sprite_bpp=vms.b1%3;
     b9a:	4b44      	ldr	r3, [pc, #272]	; (cac <chip_vm+0x8a0>)
     b9c:	fba3 1302 	umull	r1, r3, r3, r2
     ba0:	085b      	lsrs	r3, r3, #1
     ba2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     ba6:	1ad2      	subs	r2, r2, r3
     ba8:	4b41      	ldr	r3, [pc, #260]	; (cb0 <chip_vm+0x8a4>)
     baa:	701a      	strb	r2, [r3, #0]
				break;
     bac:	e577      	b.n	69e <chip_vm+0x292>
				vms.var[x]=btn_wait_any();
     bae:	f000 fab9 	bl	1124 <btn_wait_any>
     bb2:	44a0      	add	r8, r4
     bb4:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     bb8:	e571      	b.n	69e <chip_vm+0x292>
				game_timer=vms.var[x];
     bba:	44a0      	add	r8, r4
     bbc:	f898 2006 	ldrb.w	r2, [r8, #6]
     bc0:	4b38      	ldr	r3, [pc, #224]	; (ca4 <chip_vm+0x898>)
     bc2:	801a      	strh	r2, [r3, #0]
				break;
     bc4:	e56b      	b.n	69e <chip_vm+0x292>
				tone(523,vms.var[x]);
     bc6:	44a0      	add	r8, r4
     bc8:	f898 1006 	ldrb.w	r1, [r8, #6]
     bcc:	f240 200b 	movw	r0, #523	; 0x20b
     bd0:	f001 fe22 	bl	2818 <tone>
				break;
     bd4:	e563      	b.n	69e <chip_vm+0x292>
				vms.ix += vms.var[x];
     bd6:	44a0      	add	r8, r4
     bd8:	f898 3006 	ldrb.w	r3, [r8, #6]
     bdc:	8862      	ldrh	r2, [r4, #2]
     bde:	4413      	add	r3, r2
     be0:	8063      	strh	r3, [r4, #2]
				break;
     be2:	e55c      	b.n	69e <chip_vm+0x292>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     be4:	44a0      	add	r8, r4
     be6:	f898 3006 	ldrb.w	r3, [r8, #6]
     bea:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     bee:	4a31      	ldr	r2, [pc, #196]	; (cb4 <chip_vm+0x8a8>)
     bf0:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     bf4:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     bf6:	2301      	movs	r3, #1
     bf8:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     bfa:	2000      	movs	r0, #0
     bfc:	f001 ffc2 	bl	2b84 <select_font>
				break;
     c00:	e54d      	b.n	69e <chip_vm+0x292>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c02:	44a0      	add	r8, r4
     c04:	f898 3006 	ldrb.w	r3, [r8, #6]
     c08:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c0c:	4a2a      	ldr	r2, [pc, #168]	; (cb8 <chip_vm+0x8ac>)
     c0e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c12:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c14:	2001      	movs	r0, #1
     c16:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     c18:	f001 ffb4 	bl	2b84 <select_font>
				break;
     c1c:	e53f      	b.n	69e <chip_vm+0x292>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     c1e:	8863      	ldrh	r3, [r4, #2]
     c20:	f108 0201 	add.w	r2, r8, #1
     c24:	491e      	ldr	r1, [pc, #120]	; (ca0 <chip_vm+0x894>)
     c26:	4419      	add	r1, r3
     c28:	4630      	mov	r0, r6
     c2a:	f000 fb68 	bl	12fe <move>
				break;
     c2e:	e536      	b.n	69e <chip_vm+0x292>
				flash_write_block((uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
     c30:	8860      	ldrh	r0, [r4, #2]
     c32:	f500 4000 	add.w	r0, r0, #32768	; 0x8000
     c36:	f108 0201 	add.w	r2, r8, #1
     c3a:	4631      	mov	r1, r6
     c3c:	0040      	lsls	r0, r0, #1
     c3e:	f000 f971 	bl	f24 <flash_write_block>
				break;
     c42:	e52c      	b.n	69e <chip_vm+0x292>
				flash_read_block((const uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
     c44:	8860      	ldrh	r0, [r4, #2]
     c46:	f500 4000 	add.w	r0, r0, #32768	; 0x8000
     c4a:	f108 0201 	add.w	r2, r8, #1
     c4e:	4631      	mov	r1, r6
     c50:	0040      	lsls	r0, r0, #1
     c52:	f000 f94d 	bl	ef0 <flash_read_block>
				break;
     c56:	e522      	b.n	69e <chip_vm+0x292>
	    switch (vms.b1>>4){
     c58:	f04f 0800 	mov.w	r8, #0
     c5c:	e4d8      	b.n	610 <chip_vm+0x204>
			}else switch(vms.b2){
     c5e:	f04f 0800 	mov.w	r8, #0
     c62:	e4d5      	b.n	610 <chip_vm+0x204>
				exit_code=CHIP_BAD_OPCODE;
     c64:	f04f 0802 	mov.w	r8, #2
     c68:	e4d2      	b.n	610 <chip_vm+0x204>
				exit_code=CHIP_BAD_OPCODE;
     c6a:	f04f 0802 	mov.w	r8, #2
     c6e:	e4cf      	b.n	610 <chip_vm+0x204>
			exit_code=CHIP_BAD_ADDR;
     c70:	f04f 0803 	mov.w	r8, #3
     c74:	e001      	b.n	c7a <chip_vm+0x86e>
     c76:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     c7a:	2002      	movs	r0, #2
     c7c:	f001 ff82 	bl	2b84 <select_font>
	set_keymap(default_kmap);
     c80:	480e      	ldr	r0, [pc, #56]	; (cbc <chip_vm+0x8b0>)
     c82:	f000 f9cd 	bl	1020 <set_keymap>
	set_video_mode(VM_BPCHIP);
     c86:	2000      	movs	r0, #0
     c88:	f002 fb5c 	bl	3344 <set_video_mode>
	return exit_code;
     c8c:	4640      	mov	r0, r8
}//schipp()
     c8e:	b009      	add	sp, #36	; 0x24
     c90:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     c94:	f04f 0801 	mov.w	r8, #1
     c98:	e7ef      	b.n	c7a <chip_vm+0x86e>
     c9a:	bf00      	nop
     c9c:	200006a4 	.word	0x200006a4
     ca0:	200006e0 	.word	0x200006e0
     ca4:	20004e70 	.word	0x20004e70
     ca8:	cccccccd 	.word	0xcccccccd
     cac:	aaaaaaab 	.word	0xaaaaaaab
     cb0:	200001ac 	.word	0x200001ac
     cb4:	00003b8c 	.word	0x00003b8c
     cb8:	00003aec 	.word	0x00003aec
     cbc:	00003bec 	.word	0x00003bec

00000cc0 <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     cc0:	2200      	movs	r2, #0
     cc2:	4b0f      	ldr	r3, [pc, #60]	; (d00 <flash_enable+0x40>)
     cc4:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     cc6:	4b0f      	ldr	r3, [pc, #60]	; (d04 <flash_enable+0x44>)
     cc8:	681b      	ldr	r3, [r3, #0]
     cca:	f013 0f01 	tst.w	r3, #1
     cce:	d10b      	bne.n	ce8 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     cd0:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     cd4:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     cd8:	6813      	ldr	r3, [r2, #0]
     cda:	f043 0301 	orr.w	r3, r3, #1
     cde:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     ce0:	6813      	ldr	r3, [r2, #0]
     ce2:	f013 0f02 	tst.w	r3, #2
     ce6:	d0fb      	beq.n	ce0 <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     ce8:	4b07      	ldr	r3, [pc, #28]	; (d08 <flash_enable+0x48>)
     cea:	4a08      	ldr	r2, [pc, #32]	; (d0c <flash_enable+0x4c>)
     cec:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     cee:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     cf2:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     cf4:	6918      	ldr	r0, [r3, #16]
     cf6:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     cfa:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     cfe:	4770      	bx	lr
     d00:	2000028c 	.word	0x2000028c
     d04:	40021000 	.word	0x40021000
     d08:	40022000 	.word	0x40022000
     d0c:	45670123 	.word	0x45670123

00000d10 <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     d10:	4a0b      	ldr	r2, [pc, #44]	; (d40 <flash_write_hword+0x30>)
     d12:	68d3      	ldr	r3, [r2, #12]
     d14:	f013 0f01 	tst.w	r3, #1
     d18:	d1fb      	bne.n	d12 <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     d1a:	4b09      	ldr	r3, [pc, #36]	; (d40 <flash_write_hword+0x30>)
     d1c:	68da      	ldr	r2, [r3, #12]
     d1e:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     d22:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     d24:	2201      	movs	r2, #1
     d26:	611a      	str	r2, [r3, #16]
	*address=hword;
     d28:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     d2a:	68da      	ldr	r2, [r3, #12]
     d2c:	f012 0f01 	tst.w	r2, #1
     d30:	d003      	beq.n	d3a <flash_write_hword+0x2a>
     d32:	68da      	ldr	r2, [r3, #12]
     d34:	f012 0f20 	tst.w	r2, #32
     d38:	d0f7      	beq.n	d2a <flash_write_hword+0x1a>
	return *address==hword;
}
     d3a:	2001      	movs	r0, #1
     d3c:	4770      	bx	lr
     d3e:	bf00      	nop
     d40:	40022000 	.word	0x40022000

00000d44 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     d44:	283f      	cmp	r0, #63	; 0x3f
     d46:	d914      	bls.n	d72 <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     d48:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     d4a:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     d4c:	1c81      	adds	r1, r0, #2
     d4e:	8802      	ldrh	r2, [r0, #0]
     d50:	f64f 73ff 	movw	r3, #65535	; 0xffff
     d54:	429a      	cmp	r2, r3
     d56:	d110      	bne.n	d7a <flash_erase_row+0x36>
     d58:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     d5c:	460b      	mov	r3, r1
     d5e:	f64f 74ff 	movw	r4, #65535	; 0xffff
     d62:	f833 2b02 	ldrh.w	r2, [r3], #2
     d66:	42a2      	cmp	r2, r4
     d68:	d107      	bne.n	d7a <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d6a:	429d      	cmp	r5, r3
     d6c:	d1f9      	bne.n	d62 <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     d6e:	2001      	movs	r0, #1
     d70:	e02f      	b.n	dd2 <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     d72:	2000      	movs	r0, #0
     d74:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     d76:	2000      	movs	r0, #0
     d78:	e02b      	b.n	dd2 <flash_erase_row+0x8e>
     d7a:	4b17      	ldr	r3, [pc, #92]	; (dd8 <flash_erase_row+0x94>)
     d7c:	691b      	ldr	r3, [r3, #16]
     d7e:	f013 0f80 	tst.w	r3, #128	; 0x80
     d82:	d1f8      	bne.n	d76 <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     d84:	4b14      	ldr	r3, [pc, #80]	; (dd8 <flash_erase_row+0x94>)
     d86:	68da      	ldr	r2, [r3, #12]
     d88:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     d8c:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     d8e:	2202      	movs	r2, #2
     d90:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     d92:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     d94:	691a      	ldr	r2, [r3, #16]
     d96:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     d9a:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     d9c:	68da      	ldr	r2, [r3, #12]
     d9e:	f012 0f01 	tst.w	r2, #1
     da2:	d003      	beq.n	dac <flash_erase_row+0x68>
     da4:	68da      	ldr	r2, [r3, #12]
     da6:	f012 0f20 	tst.w	r2, #32
     daa:	d0f7      	beq.n	d9c <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     dac:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     dae:	f64f 72ff 	movw	r2, #65535	; 0xffff
     db2:	4293      	cmp	r3, r2
     db4:	d107      	bne.n	dc6 <flash_erase_row+0x82>
     db6:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     dba:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     dbe:	4293      	cmp	r3, r2
     dc0:	d101      	bne.n	dc6 <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     dc2:	4281      	cmp	r1, r0
     dc4:	d1f9      	bne.n	dba <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     dc6:	f64f 70ff 	movw	r0, #65535	; 0xffff
     dca:	4283      	cmp	r3, r0
     dcc:	bf14      	ite	ne
     dce:	2000      	movne	r0, #0
     dd0:	2001      	moveq	r0, #1
}
     dd2:	bc30      	pop	{r4, r5}
     dd4:	4770      	bx	lr
     dd6:	bf00      	nop
     dd8:	40022000 	.word	0x40022000

00000ddc <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     ddc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     dde:	4b1c      	ldr	r3, [pc, #112]	; (e50 <flash_sync+0x74>)
     de0:	781b      	ldrb	r3, [r3, #0]
     de2:	f013 0f01 	tst.w	r3, #1
     de6:	d102      	bne.n	dee <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     de8:	2301      	movs	r3, #1
}
     dea:	4618      	mov	r0, r3
     dec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     dee:	4b18      	ldr	r3, [pc, #96]	; (e50 <flash_sync+0x74>)
     df0:	7858      	ldrb	r0, [r3, #1]
     df2:	f7ff ffa7 	bl	d44 <flash_erase_row>
     df6:	4603      	mov	r3, r0
     df8:	2800      	cmp	r0, #0
     dfa:	d0f6      	beq.n	dea <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     dfc:	4e14      	ldr	r6, [pc, #80]	; (e50 <flash_sync+0x74>)
     dfe:	7875      	ldrb	r5, [r6, #1]
     e00:	02ad      	lsls	r5, r5, #10
     e02:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e04:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     e06:	f64f 77ff 	movw	r7, #65535	; 0xffff
     e0a:	e004      	b.n	e16 <flash_sync+0x3a>
		dest++;
     e0c:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e0e:	3401      	adds	r4, #1
     e10:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     e14:	d00a      	beq.n	e2c <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     e16:	f836 1b02 	ldrh.w	r1, [r6], #2
     e1a:	42b9      	cmp	r1, r7
     e1c:	d0f6      	beq.n	e0c <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     e1e:	4628      	mov	r0, r5
     e20:	f7ff ff76 	bl	d10 <flash_write_hword>
     e24:	2800      	cmp	r0, #0
     e26:	d1f1      	bne.n	e0c <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     e28:	2c00      	cmp	r4, #0
     e2a:	dd04      	ble.n	e36 <flash_sync+0x5a>
     e2c:	4a08      	ldr	r2, [pc, #32]	; (e50 <flash_sync+0x74>)
     e2e:	7813      	ldrb	r3, [r2, #0]
     e30:	f023 0304 	bic.w	r3, r3, #4
     e34:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     e36:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     e3a:	d106      	bne.n	e4a <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     e3c:	4a04      	ldr	r2, [pc, #16]	; (e50 <flash_sync+0x74>)
     e3e:	7813      	ldrb	r3, [r2, #0]
     e40:	f023 0301 	bic.w	r3, r3, #1
     e44:	7013      	strb	r3, [r2, #0]
			return 1;
     e46:	2301      	movs	r3, #1
     e48:	e7cf      	b.n	dea <flash_sync+0xe>
		return 0;
     e4a:	2300      	movs	r3, #0
     e4c:	e7cd      	b.n	dea <flash_sync+0xe>
     e4e:	bf00      	nop
     e50:	2000028c 	.word	0x2000028c

00000e54 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     e54:	2200      	movs	r2, #0
     e56:	4b01      	ldr	r3, [pc, #4]	; (e5c <flash_flush+0x8>)
     e58:	701a      	strb	r2, [r3, #0]
     e5a:	4770      	bx	lr
     e5c:	2000028c 	.word	0x2000028c

00000e60 <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     e60:	b508      	push	{r3, lr}
	flash_sync();
     e62:	f7ff ffbb 	bl	ddc <flash_sync>
	row_buff.flags=0;
     e66:	2200      	movs	r2, #0
     e68:	4b03      	ldr	r3, [pc, #12]	; (e78 <flash_disable+0x18>)
     e6a:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     e6c:	4a03      	ldr	r2, [pc, #12]	; (e7c <flash_disable+0x1c>)
     e6e:	6913      	ldr	r3, [r2, #16]
     e70:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     e74:	6113      	str	r3, [r2, #16]
     e76:	bd08      	pop	{r3, pc}
     e78:	2000028c 	.word	0x2000028c
     e7c:	40022000 	.word	0x40022000

00000e80 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     e80:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     e84:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     e88:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     e8c:	d92c      	bls.n	ee8 <flash_write_byte+0x68>
     e8e:	460e      	mov	r6, r1
     e90:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     e92:	4b16      	ldr	r3, [pc, #88]	; (eec <flash_write_byte+0x6c>)
     e94:	785b      	ldrb	r3, [r3, #1]
     e96:	4598      	cmp	r8, r3
     e98:	d019      	beq.n	ece <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     e9a:	f7ff ff9f 	bl	ddc <flash_sync>
     e9e:	4603      	mov	r3, r0
     ea0:	b1f8      	cbz	r0, ee2 <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     ea2:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     ea6:	f023 0303 	bic.w	r3, r3, #3
     eaa:	4a10      	ldr	r2, [pc, #64]	; (eec <flash_write_byte+0x6c>)
     eac:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     eb0:	f833 4b02 	ldrh.w	r4, [r3], #2
     eb4:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     eb8:	42ab      	cmp	r3, r5
     eba:	d1f9      	bne.n	eb0 <flash_write_byte+0x30>
	row_buff.row=r;
     ebc:	4a0b      	ldr	r2, [pc, #44]	; (eec <flash_write_byte+0x6c>)
     ebe:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     ec2:	7813      	ldrb	r3, [r2, #0]
     ec4:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     ec8:	f043 0302 	orr.w	r3, r3, #2
     ecc:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     ece:	4a07      	ldr	r2, [pc, #28]	; (eec <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     ed0:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     ed4:	4413      	add	r3, r2
     ed6:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     ed8:	7813      	ldrb	r3, [r2, #0]
     eda:	f043 0301 	orr.w	r3, r3, #1
     ede:	7013      	strb	r3, [r2, #0]
	return 1;
     ee0:	2301      	movs	r3, #1
}
     ee2:	4618      	mov	r0, r3
     ee4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     ee8:	2300      	movs	r3, #0
     eea:	e7fa      	b.n	ee2 <flash_write_byte+0x62>
     eec:	2000028c 	.word	0x2000028c

00000ef0 <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     ef0:	2a00      	cmp	r2, #0
     ef2:	dd13      	ble.n	f1c <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     ef4:	b410      	push	{r4}
     ef6:	4603      	mov	r3, r0
     ef8:	3901      	subs	r1, #1
     efa:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     efc:	4a08      	ldr	r2, [pc, #32]	; (f20 <flash_read_block+0x30>)
     efe:	7854      	ldrb	r4, [r2, #1]
     f00:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     f04:	bf03      	ittte	eq
     f06:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     f0a:	18a4      	addeq	r4, r4, r2
     f0c:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     f0e:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     f10:	f801 4f01 	strb.w	r4, [r1, #1]!
     f14:	3301      	adds	r3, #1
     f16:	4283      	cmp	r3, r0
     f18:	d1f1      	bne.n	efe <flash_read_block+0xe>
}
     f1a:	bc10      	pop	{r4}
     f1c:	4770      	bx	lr
     f1e:	bf00      	nop
     f20:	2000028c 	.word	0x2000028c

00000f24 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
     f24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<ffa) return 0;
     f26:	4b11      	ldr	r3, [pc, #68]	; (f6c <flash_write_block+0x48>)
     f28:	681b      	ldr	r3, [r3, #0]
     f2a:	4298      	cmp	r0, r3
     f2c:	d202      	bcs.n	f34 <flash_write_block+0x10>
     f2e:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
     f30:	4618      	mov	r0, r3
     f32:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     f34:	4604      	mov	r4, r0
     f36:	460e      	mov	r6, r1
     f38:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
     f3a:	f7ff fec1 	bl	cc0 <flash_enable>
     f3e:	4603      	mov	r3, r0
     f40:	2800      	cmp	r0, #0
     f42:	d0f5      	beq.n	f30 <flash_write_block+0xc>
	for (i=0;i<size;i++){
     f44:	2f00      	cmp	r7, #0
     f46:	dd0c      	ble.n	f62 <flash_write_block+0x3e>
     f48:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
     f4a:	1c65      	adds	r5, r4, #1
     f4c:	f816 1b01 	ldrb.w	r1, [r6], #1
     f50:	4620      	mov	r0, r4
     f52:	f7ff ff95 	bl	e80 <flash_write_byte>
     f56:	4603      	mov	r3, r0
     f58:	2800      	cmp	r0, #0
     f5a:	d0e9      	beq.n	f30 <flash_write_block+0xc>
     f5c:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
     f5e:	42bd      	cmp	r5, r7
     f60:	d1f3      	bne.n	f4a <flash_write_block+0x26>
	flash_disable();
     f62:	f7ff ff7d 	bl	e60 <flash_disable>
	return 1;
     f66:	2301      	movs	r3, #1
     f68:	e7e2      	b.n	f30 <flash_write_block+0xc>
     f6a:	bf00      	nop
     f6c:	00004000 	.word	0x00004000

00000f70 <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
     f70:	4b0a      	ldr	r3, [pc, #40]	; (f9c <btn_mask+0x2c>)
     f72:	781b      	ldrb	r3, [r3, #0]
     f74:	4283      	cmp	r3, r0
     f76:	d00a      	beq.n	f8e <btn_mask+0x1e>
     f78:	4a09      	ldr	r2, [pc, #36]	; (fa0 <btn_mask+0x30>)
    for (i=0;i<8;i++){
     f7a:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
     f7c:	f812 1b01 	ldrb.w	r1, [r2], #1
     f80:	4281      	cmp	r1, r0
     f82:	d005      	beq.n	f90 <btn_mask+0x20>
    for (i=0;i<8;i++){
     f84:	3301      	adds	r3, #1
     f86:	2b08      	cmp	r3, #8
     f88:	d1f8      	bne.n	f7c <btn_mask+0xc>
    }
    return 255;
     f8a:	20ff      	movs	r0, #255	; 0xff
}
     f8c:	4770      	bx	lr
    for (i=0;i<8;i++){
     f8e:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
     f90:	2001      	movs	r0, #1
     f92:	fa00 f303 	lsl.w	r3, r0, r3
     f96:	b2d8      	uxtb	r0, r3
     f98:	4770      	bx	lr
     f9a:	bf00      	nop
     f9c:	20000690 	.word	0x20000690
     fa0:	20000691 	.word	0x20000691

00000fa4 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
     fa4:	b430      	push	{r4, r5}
     fa6:	4605      	mov	r5, r0
     fa8:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
     faa:	2000      	movs	r0, #0
     fac:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     fae:	4b1b      	ldr	r3, [pc, #108]	; (101c <shift_out+0x78>)
     fb0:	e003      	b.n	fba <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
     fb2:	0052      	lsls	r2, r2, #1
     fb4:	b2d2      	uxtb	r2, r2
    while (mask){
     fb6:	3c01      	subs	r4, #1
     fb8:	d01d      	beq.n	ff6 <shift_out+0x52>
        if (byte&mask){
     fba:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     fbc:	68d9      	ldr	r1, [r3, #12]
     fbe:	bf14      	ite	ne
     fc0:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     fc4:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
     fc8:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     fca:	68d9      	ldr	r1, [r3, #12]
     fcc:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
     fd0:	60d9      	str	r1, [r3, #12]
        _clk_delay();
     fd2:	bf00      	nop
     fd4:	bf00      	nop
     fd6:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     fd8:	68d9      	ldr	r1, [r3, #12]
     fda:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
     fde:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
     fe0:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
     fe2:	6899      	ldr	r1, [r3, #8]
     fe4:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
     fe8:	6099      	str	r1, [r3, #8]
     fea:	2900      	cmp	r1, #0
     fec:	d0e1      	beq.n	fb2 <shift_out+0xe>
     fee:	f060 007f 	orn	r0, r0, #127	; 0x7f
     ff2:	b2c0      	uxtb	r0, r0
     ff4:	e7dd      	b.n	fb2 <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     ff6:	4b09      	ldr	r3, [pc, #36]	; (101c <shift_out+0x78>)
     ff8:	68da      	ldr	r2, [r3, #12]
     ffa:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
     ffe:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    1000:	68da      	ldr	r2, [r3, #12]
    1002:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    1006:	60da      	str	r2, [r3, #12]
    _clk_delay();
    1008:	bf00      	nop
    100a:	bf00      	nop
    100c:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    100e:	68da      	ldr	r2, [r3, #12]
    1010:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    1014:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    1016:	bc30      	pop	{r4, r5}
    1018:	4770      	bx	lr
    101a:	bf00      	nop
    101c:	40010c00 	.word	0x40010c00

00001020 <set_keymap>:
void set_keymap(const uint8_t *kmap){
    1020:	1e43      	subs	r3, r0, #1
    1022:	4a04      	ldr	r2, [pc, #16]	; (1034 <set_keymap+0x14>)
    1024:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    1026:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    102a:	f802 1f01 	strb.w	r1, [r2, #1]!
    102e:	4283      	cmp	r3, r0
    1030:	d1f9      	bne.n	1026 <set_keymap+0x6>
}
    1032:	4770      	bx	lr
    1034:	2000068f 	.word	0x2000068f

00001038 <gamepad_init>:
void gamepad_init(){
    1038:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    103a:	4c0b      	ldr	r4, [pc, #44]	; (1068 <gamepad_init+0x30>)
    103c:	2202      	movs	r2, #2
    103e:	210f      	movs	r1, #15
    1040:	4620      	mov	r0, r4
    1042:	f000 fa1b 	bl	147c <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    1046:	2202      	movs	r2, #2
    1048:	210d      	movs	r1, #13
    104a:	4620      	mov	r0, r4
    104c:	f000 fa16 	bl	147c <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    1050:	2208      	movs	r2, #8
    1052:	210e      	movs	r1, #14
    1054:	4620      	mov	r0, r4
    1056:	f000 fa11 	bl	147c <config_pin>
    btn_state=0xff;
    105a:	22ff      	movs	r2, #255	; 0xff
    105c:	4b03      	ldr	r3, [pc, #12]	; (106c <gamepad_init+0x34>)
    105e:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1060:	4803      	ldr	r0, [pc, #12]	; (1070 <gamepad_init+0x38>)
    1062:	f7ff ffdd 	bl	1020 <set_keymap>
    1066:	bd10      	pop	{r4, pc}
    1068:	40010c00 	.word	0x40010c00
    106c:	200026e0 	.word	0x200026e0
    1070:	00003bec 	.word	0x00003bec

00001074 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1074:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    1076:	20fe      	movs	r0, #254	; 0xfe
    1078:	f7ff ff94 	bl	fa4 <shift_out>
    107c:	4b0c      	ldr	r3, [pc, #48]	; (10b0 <read_gamepad+0x3c>)
    107e:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1080:	781b      	ldrb	r3, [r3, #0]
    1082:	f013 0f12 	tst.w	r3, #18
    1086:	d111      	bne.n	10ac <read_gamepad+0x38>
        while (btn_state!=0xff){
    1088:	4b09      	ldr	r3, [pc, #36]	; (10b0 <read_gamepad+0x3c>)
    108a:	781b      	ldrb	r3, [r3, #0]
    108c:	b2db      	uxtb	r3, r3
    108e:	2bff      	cmp	r3, #255	; 0xff
    1090:	d009      	beq.n	10a6 <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    1092:	25fe      	movs	r5, #254	; 0xfe
    1094:	4c06      	ldr	r4, [pc, #24]	; (10b0 <read_gamepad+0x3c>)
    1096:	4628      	mov	r0, r5
    1098:	f7ff ff84 	bl	fa4 <shift_out>
    109c:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    109e:	7823      	ldrb	r3, [r4, #0]
    10a0:	b2db      	uxtb	r3, r3
    10a2:	2bff      	cmp	r3, #255	; 0xff
    10a4:	d1f7      	bne.n	1096 <read_gamepad+0x22>
        };
        _reset_mcu();
    10a6:	4a03      	ldr	r2, [pc, #12]	; (10b4 <read_gamepad+0x40>)
    10a8:	4b03      	ldr	r3, [pc, #12]	; (10b8 <read_gamepad+0x44>)
    10aa:	601a      	str	r2, [r3, #0]
    10ac:	bd38      	pop	{r3, r4, r5, pc}
    10ae:	bf00      	nop
    10b0:	200026e0 	.word	0x200026e0
    10b4:	05fa0004 	.word	0x05fa0004
    10b8:	e000ed0c 	.word	0xe000ed0c

000010bc <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    10bc:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    10be:	f7ff ff57 	bl	f70 <btn_mask>
    return !(btn_state&mask);
    10c2:	4b03      	ldr	r3, [pc, #12]	; (10d0 <btn_query_down+0x14>)
    10c4:	781b      	ldrb	r3, [r3, #0]
    10c6:	4203      	tst	r3, r0
}
    10c8:	bf0c      	ite	eq
    10ca:	2001      	moveq	r0, #1
    10cc:	2000      	movne	r0, #0
    10ce:	bd08      	pop	{r3, pc}
    10d0:	200026e0 	.word	0x200026e0

000010d4 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    10d4:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    10d6:	f7ff ff4b 	bl	f70 <btn_mask>
    10da:	4606      	mov	r6, r0
    int frame_count=0;
    10dc:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    10de:	4d06      	ldr	r5, [pc, #24]	; (10f8 <btn_wait_down+0x24>)
    10e0:	e000      	b.n	10e4 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    10e2:	2400      	movs	r4, #0
        frame_sync();
    10e4:	f002 f91e 	bl	3324 <frame_sync>
        if (!(btn_state&mask)){
    10e8:	782b      	ldrb	r3, [r5, #0]
    10ea:	4233      	tst	r3, r6
    10ec:	d1f9      	bne.n	10e2 <btn_wait_down+0xe>
            frame_count++;
    10ee:	3401      	adds	r4, #1
    while (frame_count<3){
    10f0:	2c02      	cmp	r4, #2
    10f2:	ddf7      	ble.n	10e4 <btn_wait_down+0x10>
        }
    }
}
    10f4:	bd70      	pop	{r4, r5, r6, pc}
    10f6:	bf00      	nop
    10f8:	200026e0 	.word	0x200026e0

000010fc <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    10fc:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    10fe:	f7ff ff37 	bl	f70 <btn_mask>
    1102:	4606      	mov	r6, r0
    int frame_count=0;
    1104:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    1106:	4d06      	ldr	r5, [pc, #24]	; (1120 <btn_wait_up+0x24>)
    1108:	e000      	b.n	110c <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    110a:	2400      	movs	r4, #0
        frame_sync();
    110c:	f002 f90a 	bl	3324 <frame_sync>
        if ((btn_state&mask)){
    1110:	782b      	ldrb	r3, [r5, #0]
    1112:	4233      	tst	r3, r6
    1114:	d0f9      	beq.n	110a <btn_wait_up+0xe>
            frame_count++;
    1116:	3401      	adds	r4, #1
    while (frame_count<3){
    1118:	2c02      	cmp	r4, #2
    111a:	ddf7      	ble.n	110c <btn_wait_up+0x10>
        }
    }
}
    111c:	bd70      	pop	{r4, r5, r6, pc}
    111e:	bf00      	nop
    1120:	200026e0 	.word	0x200026e0

00001124 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1124:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    1126:	4b15      	ldr	r3, [pc, #84]	; (117c <btn_wait_any+0x58>)
    1128:	781c      	ldrb	r4, [r3, #0]
    112a:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    112c:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    112e:	461d      	mov	r5, r3
    1130:	e007      	b.n	1142 <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    1132:	782a      	ldrb	r2, [r5, #0]
    1134:	b2d2      	uxtb	r2, r2
    1136:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1138:	bf18      	it	ne
    113a:	3601      	addne	r6, #1
    while (frame_count<3){
    113c:	2e02      	cmp	r6, #2
    113e:	dc0a      	bgt.n	1156 <btn_wait_any+0x32>
    1140:	461c      	mov	r4, r3
        frame_sync();
    1142:	f002 f8ef 	bl	3324 <frame_sync>
        if (last_state!=btn_state){
    1146:	782b      	ldrb	r3, [r5, #0]
    1148:	b2db      	uxtb	r3, r3
    114a:	42a3      	cmp	r3, r4
    114c:	d0f1      	beq.n	1132 <btn_wait_any+0xe>
            last_state=btn_state;
    114e:	782c      	ldrb	r4, [r5, #0]
    1150:	b2e4      	uxtb	r4, r4
            frame_count=0;
    1152:	2600      	movs	r6, #0
    1154:	e7f5      	b.n	1142 <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    1156:	43e3      	mvns	r3, r4
    mask>>=1;
    1158:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    115c:	b15b      	cbz	r3, 1176 <btn_wait_any+0x52>
    115e:	2200      	movs	r2, #0
    1160:	3201      	adds	r2, #1
    1162:	b2d2      	uxtb	r2, r2
    1164:	085b      	lsrs	r3, r3, #1
    1166:	d1fb      	bne.n	1160 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1168:	4b05      	ldr	r3, [pc, #20]	; (1180 <btn_wait_any+0x5c>)
    116a:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    116c:	4620      	mov	r0, r4
    116e:	f7ff ffc5 	bl	10fc <btn_wait_up>
    return btn;
}
    1172:	4620      	mov	r0, r4
    1174:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    1176:	461a      	mov	r2, r3
    1178:	e7f6      	b.n	1168 <btn_wait_any+0x44>
    117a:	bf00      	nop
    117c:	200026e0 	.word	0x200026e0
    1180:	20000690 	.word	0x20000690

00001184 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1184:	4b01      	ldr	r3, [pc, #4]	; (118c <btn_set_value+0x8>)
    1186:	5419      	strb	r1, [r3, r0]
    1188:	4770      	bx	lr
    118a:	bf00      	nop
    118c:	20000690 	.word	0x20000690

00001190 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    1190:	4800      	ldr	r0, [pc, #0]	; (1194 <get_keymap+0x4>)
    1192:	4770      	bx	lr
    1194:	20000690 	.word	0x20000690

00001198 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    1198:	4b06      	ldr	r3, [pc, #24]	; (11b4 <games_count+0x1c>)
    119a:	691b      	ldr	r3, [r3, #16]
    119c:	b13b      	cbz	r3, 11ae <games_count+0x16>
    119e:	4b05      	ldr	r3, [pc, #20]	; (11b4 <games_count+0x1c>)
    11a0:	2000      	movs	r0, #0
    for (i=0;;i++){
    11a2:	3001      	adds	r0, #1
    11a4:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    11a6:	691a      	ldr	r2, [r3, #16]
    11a8:	2a00      	cmp	r2, #0
    11aa:	d1fa      	bne.n	11a2 <games_count+0xa>
    11ac:	4770      	bx	lr
    for (i=0;;i++){
    11ae:	2000      	movs	r0, #0
    }
    return i;
}
    11b0:	4770      	bx	lr
    11b2:	bf00      	nop
    11b4:	20000004 	.word	0x20000004

000011b8 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    11b8:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    11ba:	7803      	ldrb	r3, [r0, #0]
    11bc:	b1fb      	cbz	r3, 11fe <strcmp+0x46>
    11be:	780a      	ldrb	r2, [r1, #0]
    11c0:	b17a      	cbz	r2, 11e2 <strcmp+0x2a>
		if (*s1<*s2){
    11c2:	4293      	cmp	r3, r2
    11c4:	d313      	bcc.n	11ee <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    11c6:	d815      	bhi.n	11f4 <strcmp+0x3c>
    11c8:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    11ca:	4621      	mov	r1, r4
	while (*s1 && *s2){
    11cc:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    11d0:	b1ab      	cbz	r3, 11fe <strcmp+0x46>
    11d2:	f814 2b01 	ldrb.w	r2, [r4], #1
    11d6:	b122      	cbz	r2, 11e2 <strcmp+0x2a>
		if (*s1<*s2){
    11d8:	4293      	cmp	r3, r2
    11da:	d30d      	bcc.n	11f8 <strcmp+0x40>
		}else if (*s1>*s2){
    11dc:	d9f5      	bls.n	11ca <strcmp+0x12>
			result=1;
    11de:	2001      	movs	r0, #1
    11e0:	e003      	b.n	11ea <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    11e2:	7808      	ldrb	r0, [r1, #0]
    11e4:	fab0 f080 	clz	r0, r0
    11e8:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    11ea:	bc10      	pop	{r4}
    11ec:	4770      	bx	lr
			result=-1;
    11ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    11f2:	e7fa      	b.n	11ea <strcmp+0x32>
			result=1;
    11f4:	2001      	movs	r0, #1
    11f6:	e7f8      	b.n	11ea <strcmp+0x32>
			result=-1;
    11f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    11fc:	e7f5      	b.n	11ea <strcmp+0x32>
		if (!*s1 && *s2){
    11fe:	7808      	ldrb	r0, [r1, #0]
    1200:	3000      	adds	r0, #0
    1202:	bf18      	it	ne
    1204:	2001      	movne	r0, #1
    1206:	4240      	negs	r0, r0
    1208:	e7ef      	b.n	11ea <strcmp+0x32>

0000120a <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    120a:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    120e:	b2db      	uxtb	r3, r3
    1210:	2b19      	cmp	r3, #25
    1212:	d906      	bls.n	1222 <alpha+0x18>
    1214:	3841      	subs	r0, #65	; 0x41
    1216:	b2c0      	uxtb	r0, r0
    1218:	2819      	cmp	r0, #25
    121a:	bf8c      	ite	hi
    121c:	2000      	movhi	r0, #0
    121e:	2001      	movls	r0, #1
    1220:	4770      	bx	lr
    1222:	2001      	movs	r0, #1
}
    1224:	4770      	bx	lr

00001226 <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    1226:	3830      	subs	r0, #48	; 0x30
    1228:	b2c0      	uxtb	r0, r0
}
    122a:	2809      	cmp	r0, #9
    122c:	bf8c      	ite	hi
    122e:	2000      	movhi	r0, #0
    1230:	2001      	movls	r0, #1
    1232:	4770      	bx	lr

00001234 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1234:	2860      	cmp	r0, #96	; 0x60
    1236:	bf84      	itt	hi
    1238:	3820      	subhi	r0, #32
    123a:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    123c:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1240:	b2db      	uxtb	r3, r3
    1242:	2b09      	cmp	r3, #9
    1244:	d906      	bls.n	1254 <hexdigit+0x20>
    1246:	3841      	subs	r0, #65	; 0x41
    1248:	b2c0      	uxtb	r0, r0
    124a:	2805      	cmp	r0, #5
    124c:	bf8c      	ite	hi
    124e:	2000      	movhi	r0, #0
    1250:	2001      	movls	r0, #1
    1252:	4770      	bx	lr
    1254:	2001      	movs	r0, #1
}
    1256:	4770      	bx	lr

00001258 <atoi>:

int atoi(const char *str){
    1258:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    125c:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    125e:	7803      	ldrb	r3, [r0, #0]
    1260:	2b20      	cmp	r3, #32
    1262:	d103      	bne.n	126c <atoi+0x14>
    1264:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1268:	2b20      	cmp	r3, #32
    126a:	d0fb      	beq.n	1264 <atoi+0xc>
	if (*str=='-'){
    126c:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    126e:	bf06      	itte	eq
    1270:	3501      	addeq	r5, #1
		sign=-1;
    1272:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    1276:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    127a:	782b      	ldrb	r3, [r5, #0]
    127c:	2b24      	cmp	r3, #36	; 0x24
    127e:	d005      	beq.n	128c <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1280:	2b30      	cmp	r3, #48	; 0x30
    1282:	d00a      	beq.n	129a <atoi+0x42>
	int n=0,sign=1,base=10;
    1284:	270a      	movs	r7, #10
    1286:	3d01      	subs	r5, #1
    1288:	2600      	movs	r6, #0
    128a:	e026      	b.n	12da <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    128c:	7868      	ldrb	r0, [r5, #1]
    128e:	f7ff ffd1 	bl	1234 <hexdigit>
    1292:	b160      	cbz	r0, 12ae <atoi+0x56>
		str++;
    1294:	3501      	adds	r5, #1
		base=16;
    1296:	2710      	movs	r7, #16
		str++;
    1298:	e7f5      	b.n	1286 <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    129a:	786b      	ldrb	r3, [r5, #1]
    129c:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    12a0:	2b58      	cmp	r3, #88	; 0x58
    12a2:	d001      	beq.n	12a8 <atoi+0x50>
	int n=0,sign=1,base=10;
    12a4:	270a      	movs	r7, #10
    12a6:	e7ee      	b.n	1286 <atoi+0x2e>
		base=16;
		str+=2;
    12a8:	3502      	adds	r5, #2
		base=16;
    12aa:	2710      	movs	r7, #16
    12ac:	e7eb      	b.n	1286 <atoi+0x2e>
	int n=0,sign=1,base=10;
    12ae:	270a      	movs	r7, #10
    12b0:	e7e9      	b.n	1286 <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12b2:	4620      	mov	r0, r4
    12b4:	f7ff ffbe 	bl	1234 <hexdigit>
    12b8:	3000      	adds	r0, #0
    12ba:	bf18      	it	ne
    12bc:	2001      	movne	r0, #1
    12be:	b1d0      	cbz	r0, 12f6 <atoi+0x9e>
		if (c>='a'){c-=32;}
    12c0:	2c60      	cmp	r4, #96	; 0x60
    12c2:	bf84      	itt	hi
    12c4:	3c20      	subhi	r4, #32
    12c6:	b2e4      	uxtbhi	r4, r4
		c-='0';
    12c8:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    12cc:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    12ce:	2b09      	cmp	r3, #9
    12d0:	bf84      	itt	hi
    12d2:	3c37      	subhi	r4, #55	; 0x37
    12d4:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    12d6:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12da:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    12de:	2c00      	cmp	r4, #0
    12e0:	d0e7      	beq.n	12b2 <atoi+0x5a>
    12e2:	2f0a      	cmp	r7, #10
    12e4:	d1e5      	bne.n	12b2 <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    12e6:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    12ea:	b2c0      	uxtb	r0, r0
    12ec:	2809      	cmp	r0, #9
    12ee:	bf8c      	ite	hi
    12f0:	2000      	movhi	r0, #0
    12f2:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12f4:	e7e3      	b.n	12be <atoi+0x66>
		str++;
	}
	return sign*n;
}
    12f6:	fb08 f006 	mul.w	r0, r8, r6
    12fa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000012fe <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    12fe:	b13a      	cbz	r2, 1310 <move+0x12>
    1300:	3901      	subs	r1, #1
    1302:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1304:	f810 3b01 	ldrb.w	r3, [r0], #1
    1308:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    130c:	4290      	cmp	r0, r2
    130e:	d1f9      	bne.n	1304 <move+0x6>
    1310:	4770      	bx	lr

00001312 <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    1312:	7803      	ldrb	r3, [r0, #0]
    1314:	b13b      	cbz	r3, 1326 <strlen+0x14>
    1316:	4603      	mov	r3, r0
    1318:	2000      	movs	r0, #0
    131a:	3001      	adds	r0, #1
    131c:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1320:	2a00      	cmp	r2, #0
    1322:	d1fa      	bne.n	131a <strlen+0x8>
    1324:	4770      	bx	lr
	int ll=0;
    1326:	2000      	movs	r0, #0
	return ll;
}
    1328:	4770      	bx	lr

0000132a <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    132a:	b121      	cbz	r1, 1336 <fill+0xc>
    132c:	1841      	adds	r1, r0, r1
    132e:	f800 2b01 	strb.w	r2, [r0], #1
    1332:	4288      	cmp	r0, r1
    1334:	d1fb      	bne.n	132e <fill+0x4>
    1336:	4770      	bx	lr

00001338 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1338:	3861      	subs	r0, #97	; 0x61
    133a:	b2c0      	uxtb	r0, r0
}
    133c:	2819      	cmp	r0, #25
    133e:	bf8c      	ite	hi
    1340:	2000      	movhi	r0, #0
    1342:	2001      	movls	r0, #1
    1344:	4770      	bx	lr

00001346 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    1346:	3841      	subs	r0, #65	; 0x41
    1348:	b2c0      	uxtb	r0, r0
}
    134a:	2819      	cmp	r0, #25
    134c:	bf8c      	ite	hi
    134e:	2000      	movhi	r0, #0
    1350:	2001      	movls	r0, #1
    1352:	4770      	bx	lr

00001354 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1354:	7803      	ldrb	r3, [r0, #0]
    1356:	b153      	cbz	r3, 136e <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1358:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    135c:	b2d2      	uxtb	r2, r2
    135e:	2a19      	cmp	r2, #25
    1360:	bf9c      	itt	ls
    1362:	3b20      	subls	r3, #32
    1364:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    1366:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    136a:	2b00      	cmp	r3, #0
    136c:	d1f4      	bne.n	1358 <uppercase+0x4>
    136e:	4770      	bx	lr

00001370 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1370:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    1372:	1844      	adds	r4, r0, r1
    1374:	5c43      	ldrb	r3, [r0, r1]
    1376:	b153      	cbz	r3, 138e <scan+0x1e>
    1378:	429a      	cmp	r2, r3
    137a:	d00a      	beq.n	1392 <scan+0x22>
    137c:	4608      	mov	r0, r1
    137e:	3001      	adds	r0, #1
    1380:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    1384:	b10b      	cbz	r3, 138a <scan+0x1a>
    1386:	4293      	cmp	r3, r2
    1388:	d1f9      	bne.n	137e <scan+0xe>
	return start;
}
    138a:	bc10      	pop	{r4}
    138c:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    138e:	4608      	mov	r0, r1
    1390:	e7fb      	b.n	138a <scan+0x1a>
    1392:	4608      	mov	r0, r1
	return start;
    1394:	e7f9      	b.n	138a <scan+0x1a>

00001396 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    1396:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    1398:	1844      	adds	r4, r0, r1
    139a:	5c43      	ldrb	r3, [r0, r1]
    139c:	b153      	cbz	r3, 13b4 <skip+0x1e>
    139e:	429a      	cmp	r2, r3
    13a0:	d10a      	bne.n	13b8 <skip+0x22>
    13a2:	4608      	mov	r0, r1
    13a4:	3001      	adds	r0, #1
    13a6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    13aa:	b10b      	cbz	r3, 13b0 <skip+0x1a>
    13ac:	4293      	cmp	r3, r2
    13ae:	d0f9      	beq.n	13a4 <skip+0xe>
	return start;
}
    13b0:	bc10      	pop	{r4}
    13b2:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    13b4:	4608      	mov	r0, r1
    13b6:	e7fb      	b.n	13b0 <skip+0x1a>
    13b8:	4608      	mov	r0, r1
	return start;
    13ba:	e7f9      	b.n	13b0 <skip+0x1a>

000013bc <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    13bc:	b538      	push	{r3, r4, r5, lr}
    13be:	4604      	mov	r4, r0
    13c0:	460d      	mov	r5, r1
	s1+=strlen(s1);
    13c2:	f7ff ffa6 	bl	1312 <strlen>
    13c6:	4420      	add	r0, r4
	while (*s2){
    13c8:	782b      	ldrb	r3, [r5, #0]
    13ca:	b133      	cbz	r3, 13da <strcat+0x1e>
    13cc:	4629      	mov	r1, r5
		*s1++=*s2++;
    13ce:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    13d2:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    13d6:	2b00      	cmp	r3, #0
    13d8:	d1f9      	bne.n	13ce <strcat+0x12>
	}
	*s1=0;
    13da:	2300      	movs	r3, #0
    13dc:	7003      	strb	r3, [r0, #0]
	return s1;
}
    13de:	bd38      	pop	{r3, r4, r5, pc}

000013e0 <itoa>:

char *itoa(int n,char *buffer,int base){
    13e0:	b5f0      	push	{r4, r5, r6, r7, lr}
    13e2:	b085      	sub	sp, #20
    13e4:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    13e6:	2a0a      	cmp	r2, #10
    13e8:	d033      	beq.n	1452 <itoa+0x72>
	int i=14,sign=0;
    13ea:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    13ec:	2300      	movs	r3, #0
    13ee:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    13f2:	2320      	movs	r3, #32
    13f4:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    13f8:	b390      	cbz	r0, 1460 <itoa+0x80>
    13fa:	f10d 060d 	add.w	r6, sp, #13
    13fe:	250e      	movs	r5, #14
		d=n%base+'0';
    1400:	fb90 f3f2 	sdiv	r3, r0, r2
    1404:	fb02 0313 	mls	r3, r2, r3, r0
    1408:	b2db      	uxtb	r3, r3
    140a:	f103 0130 	add.w	r1, r3, #48	; 0x30
    140e:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1410:	2939      	cmp	r1, #57	; 0x39
    1412:	bf84      	itt	hi
    1414:	3337      	addhi	r3, #55	; 0x37
    1416:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1418:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    141c:	3d01      	subs	r5, #1
    141e:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    1422:	2800      	cmp	r0, #0
    1424:	d1ec      	bne.n	1400 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    1426:	2d0e      	cmp	r5, #14
    1428:	d01a      	beq.n	1460 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    142a:	2a0a      	cmp	r2, #10
    142c:	d01d      	beq.n	146a <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    142e:	2a10      	cmp	r2, #16
    1430:	d105      	bne.n	143e <itoa+0x5e>
    1432:	3d01      	subs	r5, #1
    1434:	ab04      	add	r3, sp, #16
    1436:	442b      	add	r3, r5
    1438:	2224      	movs	r2, #36	; 0x24
    143a:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    143e:	f1c5 0210 	rsb	r2, r5, #16
    1442:	4621      	mov	r1, r4
    1444:	eb0d 0005 	add.w	r0, sp, r5
    1448:	f7ff ff59 	bl	12fe <move>
	return buffer;
    144c:	4620      	mov	r0, r4
    144e:	b005      	add	sp, #20
    1450:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    1452:	2800      	cmp	r0, #0
    1454:	db01      	blt.n	145a <itoa+0x7a>
	int i=14,sign=0;
    1456:	2700      	movs	r7, #0
    1458:	e7c8      	b.n	13ec <itoa+0xc>
		n=-n;
    145a:	4240      	negs	r0, r0
		sign=1;
    145c:	2701      	movs	r7, #1
    145e:	e7c5      	b.n	13ec <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1460:	2330      	movs	r3, #48	; 0x30
    1462:	f88d 300d 	strb.w	r3, [sp, #13]
    1466:	250d      	movs	r5, #13
    1468:	e7df      	b.n	142a <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    146a:	2f00      	cmp	r7, #0
    146c:	d0e7      	beq.n	143e <itoa+0x5e>
    146e:	3d01      	subs	r5, #1
    1470:	ab04      	add	r3, sp, #16
    1472:	442b      	add	r3, r5
    1474:	222d      	movs	r2, #45	; 0x2d
    1476:	f803 2c10 	strb.w	r2, [r3, #-16]
    147a:	e7e0      	b.n	143e <itoa+0x5e>

0000147c <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    147c:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    147e:	08cb      	lsrs	r3, r1, #3
    1480:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    1484:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    1486:	f001 011c 	and.w	r1, r1, #28
    148a:	250f      	movs	r5, #15
    148c:	408d      	lsls	r5, r1
    148e:	ea24 0405 	bic.w	r4, r4, r5
    1492:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    1496:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    149a:	fa02 f101 	lsl.w	r1, r2, r1
    149e:	4321      	orrs	r1, r4
    14a0:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    14a4:	bc30      	pop	{r4, r5}
    14a6:	4770      	bx	lr

000014a8 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    14a8:	6880      	ldr	r0, [r0, #8]
    14aa:	2301      	movs	r3, #1
    14ac:	fa03 f101 	lsl.w	r1, r3, r1
}
    14b0:	4008      	ands	r0, r1
    14b2:	4770      	bx	lr

000014b4 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    14b4:	b93a      	cbnz	r2, 14c6 <write_pin+0x12>
    14b6:	68c3      	ldr	r3, [r0, #12]
    14b8:	2201      	movs	r2, #1
    14ba:	fa02 f101 	lsl.w	r1, r2, r1
    14be:	ea23 0101 	bic.w	r1, r3, r1
    14c2:	60c1      	str	r1, [r0, #12]
    14c4:	4770      	bx	lr
    14c6:	68c2      	ldr	r2, [r0, #12]
    14c8:	2301      	movs	r3, #1
    14ca:	fa03 f101 	lsl.w	r1, r3, r1
    14ce:	4311      	orrs	r1, r2
    14d0:	60c1      	str	r1, [r0, #12]
    14d2:	4770      	bx	lr

000014d4 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    14d4:	68c2      	ldr	r2, [r0, #12]
    14d6:	2301      	movs	r3, #1
    14d8:	fa03 f101 	lsl.w	r1, r3, r1
    14dc:	4051      	eors	r1, r2
    14de:	60c1      	str	r1, [r0, #12]
    14e0:	4770      	bx	lr
	...

000014e4 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    14e4:	4b04      	ldr	r3, [pc, #16]	; (14f8 <set_palette+0x14>)
    14e6:	7802      	ldrb	r2, [r0, #0]
    14e8:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    14ea:	7842      	ldrb	r2, [r0, #1]
    14ec:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    14ee:	7882      	ldrb	r2, [r0, #2]
    14f0:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    14f2:	78c2      	ldrb	r2, [r0, #3]
    14f4:	70da      	strb	r2, [r3, #3]
    14f6:	4770      	bx	lr
    14f8:	200001a8 	.word	0x200001a8

000014fc <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    14fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    14fe:	4604      	mov	r4, r0
    1500:	460e      	mov	r6, r1
    1502:	4615      	mov	r5, r2
    1504:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    1506:	f001 ff47 	bl	3398 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    150a:	2c00      	cmp	r4, #0
    150c:	db38      	blt.n	1580 <gfx_blit+0x84>
    150e:	8983      	ldrh	r3, [r0, #12]
    1510:	429c      	cmp	r4, r3
    1512:	da37      	bge.n	1584 <gfx_blit+0x88>
    1514:	2e00      	cmp	r6, #0
    1516:	db37      	blt.n	1588 <gfx_blit+0x8c>
    1518:	89c3      	ldrh	r3, [r0, #14]
    151a:	429e      	cmp	r6, r3
    151c:	da36      	bge.n	158c <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    151e:	7a03      	ldrb	r3, [r0, #8]
    1520:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1524:	1052      	asrs	r2, r2, #1
    1526:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    152a:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    152e:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    1532:	bf06      	itte	eq
    1534:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    1536:	220f      	moveq	r2, #15
    mask=0xf0;
    1538:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    153a:	4b15      	ldr	r3, [pc, #84]	; (1590 <gfx_blit+0x94>)
    153c:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    153e:	2f04      	cmp	r7, #4
    1540:	d805      	bhi.n	154e <gfx_blit+0x52>
    1542:	e8df f007 	tbb	[pc, r7]
    1546:	1003      	.short	0x1003
    1548:	1412      	.short	0x1412
    154a:	18          	.byte	0x18
    154b:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    154c:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    154e:	4910      	ldr	r1, [pc, #64]	; (1590 <gfx_blit+0x94>)
    1550:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    1552:	ea23 0302 	bic.w	r3, r3, r2
    1556:	fab0 f080 	clz	r0, r0
    155a:	0940      	lsrs	r0, r0, #5
    155c:	4283      	cmp	r3, r0
    155e:	bf14      	ite	ne
    1560:	2000      	movne	r0, #0
    1562:	2001      	moveq	r0, #1
    1564:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    1566:	4003      	ands	r3, r0
        break;
    1568:	e7f1      	b.n	154e <gfx_blit+0x52>
        byte^=color;
    156a:	4043      	eors	r3, r0
        break;
    156c:	e7ef      	b.n	154e <gfx_blit+0x52>
        byte^=~mask;
    156e:	43d4      	mvns	r4, r2
    1570:	405c      	eors	r4, r3
    1572:	b2e3      	uxtb	r3, r4
        break;
    1574:	e7eb      	b.n	154e <gfx_blit+0x52>
        byte &=mask;
    1576:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    157a:	ea40 0304 	orr.w	r3, r0, r4
        break;
    157e:	e7e6      	b.n	154e <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1580:	2000      	movs	r0, #0
    1582:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1584:	2000      	movs	r0, #0
    1586:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1588:	2000      	movs	r0, #0
    158a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    158c:	2000      	movs	r0, #0
}
    158e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1590:	20002710 	.word	0x20002710

00001594 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    1594:	b570      	push	{r4, r5, r6, lr}
    1596:	4604      	mov	r4, r0
    1598:	460e      	mov	r6, r1
    159a:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    159c:	f001 fefc 	bl	3398 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    15a0:	2c00      	cmp	r4, #0
    15a2:	db1d      	blt.n	15e0 <gfx_plot+0x4c>
    15a4:	8983      	ldrh	r3, [r0, #12]
    15a6:	429c      	cmp	r4, r3
    15a8:	da1a      	bge.n	15e0 <gfx_plot+0x4c>
    15aa:	2e00      	cmp	r6, #0
    15ac:	db18      	blt.n	15e0 <gfx_plot+0x4c>
    15ae:	89c3      	ldrh	r3, [r0, #14]
    15b0:	429e      	cmp	r6, r3
    15b2:	da15      	bge.n	15e0 <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    15b4:	7a03      	ldrb	r3, [r0, #8]
    15b6:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    15ba:	1052      	asrs	r2, r2, #1
    15bc:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    15c0:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    15c4:	4b07      	ldr	r3, [pc, #28]	; (15e4 <gfx_plot+0x50>)
    15c6:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    15c8:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    15cc:	bf19      	ittee	ne
    15ce:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    15d2:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    15d4:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    15d8:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    15dc:	4b01      	ldr	r3, [pc, #4]	; (15e4 <gfx_plot+0x50>)
    15de:	559d      	strb	r5, [r3, r6]
    15e0:	bd70      	pop	{r4, r5, r6, pc}
    15e2:	bf00      	nop
    15e4:	20002710 	.word	0x20002710

000015e8 <gfx_cls>:
}

void gfx_cls(){
    15e8:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    15ea:	f001 fed5 	bl	3398 <get_video_params>
    15ee:	4b06      	ldr	r3, [pc, #24]	; (1608 <gfx_cls+0x20>)
    15f0:	4906      	ldr	r1, [pc, #24]	; (160c <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    15f2:	2200      	movs	r2, #0
    15f4:	f803 2f01 	strb.w	r2, [r3, #1]!
    15f8:	428b      	cmp	r3, r1
    15fa:	d1fb      	bne.n	15f4 <gfx_cls+0xc>
    set_cursor(0,0);
    15fc:	2100      	movs	r1, #0
    15fe:	4608      	mov	r0, r1
    1600:	f001 fb7e 	bl	2d00 <set_cursor>
    1604:	bd08      	pop	{r3, pc}
    1606:	bf00      	nop
    1608:	2000270f 	.word	0x2000270f
    160c:	20004e6f 	.word	0x20004e6f

00001610 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    1610:	b570      	push	{r4, r5, r6, lr}
    1612:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1614:	f001 fec0 	bl	3398 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    1618:	7a06      	ldrb	r6, [r0, #8]
    161a:	4b0f      	ldr	r3, [pc, #60]	; (1658 <gfx_scroll_up+0x48>)
    161c:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    1620:	89c2      	ldrh	r2, [r0, #14]
    1622:	1b12      	subs	r2, r2, r4
    1624:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    1628:	b1a6      	cbz	r6, 1654 <gfx_scroll_up+0x44>
    162a:	4a0b      	ldr	r2, [pc, #44]	; (1658 <gfx_scroll_up+0x48>)
    162c:	199d      	adds	r5, r3, r6
    162e:	f813 1b01 	ldrb.w	r1, [r3], #1
    1632:	f802 1b01 	strb.w	r1, [r2], #1
    1636:	42ab      	cmp	r3, r5
    1638:	d1f9      	bne.n	162e <gfx_scroll_up+0x1e>
    163a:	4b07      	ldr	r3, [pc, #28]	; (1658 <gfx_scroll_up+0x48>)
    163c:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    163e:	7a02      	ldrb	r2, [r0, #8]
    1640:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1644:	b12a      	cbz	r2, 1652 <gfx_scroll_up+0x42>
    1646:	441a      	add	r2, r3
    1648:	2100      	movs	r1, #0
    164a:	f803 1b01 	strb.w	r1, [r3], #1
    164e:	4293      	cmp	r3, r2
    1650:	d1fb      	bne.n	164a <gfx_scroll_up+0x3a>
    1652:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1654:	4b00      	ldr	r3, [pc, #0]	; (1658 <gfx_scroll_up+0x48>)
    1656:	e7f2      	b.n	163e <gfx_scroll_up+0x2e>
    1658:	20002710 	.word	0x20002710

0000165c <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    165c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    165e:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1660:	f001 fe9a 	bl	3398 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1664:	89c3      	ldrh	r3, [r0, #14]
    1666:	7a04      	ldrb	r4, [r0, #8]
    1668:	1b5f      	subs	r7, r3, r5
    166a:	fb04 f707 	mul.w	r7, r4, r7
    166e:	490c      	ldr	r1, [pc, #48]	; (16a0 <gfx_scroll_down+0x44>)
    1670:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    1672:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    1676:	b147      	cbz	r7, 168a <gfx_scroll_down+0x2e>
    1678:	4619      	mov	r1, r3
    167a:	4e09      	ldr	r6, [pc, #36]	; (16a0 <gfx_scroll_down+0x44>)
    167c:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1680:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1684:	42b2      	cmp	r2, r6
    1686:	d1f9      	bne.n	167c <gfx_scroll_down+0x20>
    1688:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    168a:	7a02      	ldrb	r2, [r0, #8]
    168c:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    1690:	b12a      	cbz	r2, 169e <gfx_scroll_down+0x42>
    1692:	1a9a      	subs	r2, r3, r2
    1694:	2100      	movs	r1, #0
    1696:	f803 1d01 	strb.w	r1, [r3, #-1]!
    169a:	4293      	cmp	r3, r2
    169c:	d1fb      	bne.n	1696 <gfx_scroll_down+0x3a>
    169e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16a0:	20002710 	.word	0x20002710

000016a4 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    16a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    16a8:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    16aa:	f001 fe75 	bl	3398 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    16ae:	89c3      	ldrh	r3, [r0, #14]
    16b0:	b30b      	cbz	r3, 16f6 <gfx_scroll_left+0x52>
    16b2:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    16b6:	f8df 8044 	ldr.w	r8, [pc, #68]	; 16fc <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    16ba:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    16bc:	7a03      	ldrb	r3, [r0, #8]
    16be:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    16c2:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    16c4:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    16c6:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    16ca:	d009      	beq.n	16e0 <gfx_scroll_left+0x3c>
    16cc:	1e59      	subs	r1, r3, #1
    16ce:	eb02 050e 	add.w	r5, r2, lr
    16d2:	f812 4b01 	ldrb.w	r4, [r2], #1
    16d6:	f801 4f01 	strb.w	r4, [r1, #1]!
    16da:	4295      	cmp	r5, r2
    16dc:	d1f9      	bne.n	16d2 <gfx_scroll_left+0x2e>
    16de:	4473      	add	r3, lr
        while (size--) *dest++=0;
    16e0:	b126      	cbz	r6, 16ec <gfx_scroll_left+0x48>
    16e2:	199a      	adds	r2, r3, r6
    16e4:	f803 7b01 	strb.w	r7, [r3], #1
    16e8:	4293      	cmp	r3, r2
    16ea:	d1fb      	bne.n	16e4 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    16ec:	f10c 0c01 	add.w	ip, ip, #1
    16f0:	89c3      	ldrh	r3, [r0, #14]
    16f2:	4563      	cmp	r3, ip
    16f4:	dce2      	bgt.n	16bc <gfx_scroll_left+0x18>
    16f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    16fa:	bf00      	nop
    16fc:	20002710 	.word	0x20002710

00001700 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    1700:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1704:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    1706:	f001 fe47 	bl	3398 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    170a:	89c3      	ldrh	r3, [r0, #14]
    170c:	b33b      	cbz	r3, 175e <gfx_scroll_right+0x5e>
    170e:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1712:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1764 <gfx_scroll_right+0x64>
        src=dest-n;
    1716:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    171a:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    171c:	7a03      	ldrb	r3, [r0, #8]
    171e:	fb0e 3303 	mla	r3, lr, r3, r3
    1722:	4443      	add	r3, r8
        src=dest-n;
    1724:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    1728:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    172a:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    172e:	d00a      	beq.n	1746 <gfx_scroll_right+0x46>
    1730:	4619      	mov	r1, r3
    1732:	eba2 0609 	sub.w	r6, r2, r9
    1736:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    173a:	f801 4d01 	strb.w	r4, [r1, #-1]!
    173e:	42b2      	cmp	r2, r6
    1740:	d1f9      	bne.n	1736 <gfx_scroll_right+0x36>
    1742:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    1746:	b12d      	cbz	r5, 1754 <gfx_scroll_right+0x54>
    1748:	eb03 020c 	add.w	r2, r3, ip
    174c:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1750:	429a      	cmp	r2, r3
    1752:	d1fb      	bne.n	174c <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1754:	f10e 0e01 	add.w	lr, lr, #1
    1758:	89c3      	ldrh	r3, [r0, #14]
    175a:	4573      	cmp	r3, lr
    175c:	dcde      	bgt.n	171c <gfx_scroll_right+0x1c>
    175e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1762:	bf00      	nop
    1764:	20002710 	.word	0x20002710

00001768 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1768:	b538      	push	{r3, r4, r5, lr}
    176a:	4604      	mov	r4, r0
    176c:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    176e:	f001 fe13 	bl	3398 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1772:	2c00      	cmp	r4, #0
    1774:	db18      	blt.n	17a8 <gfx_get_pixel+0x40>
    1776:	8983      	ldrh	r3, [r0, #12]
    1778:	429c      	cmp	r4, r3
    177a:	db01      	blt.n	1780 <gfx_get_pixel+0x18>
    177c:	20ff      	movs	r0, #255	; 0xff
    177e:	bd38      	pop	{r3, r4, r5, pc}
    1780:	2d00      	cmp	r5, #0
    1782:	db13      	blt.n	17ac <gfx_get_pixel+0x44>
    1784:	89c3      	ldrh	r3, [r0, #14]
    1786:	429d      	cmp	r5, r3
    1788:	db01      	blt.n	178e <gfx_get_pixel+0x26>
    178a:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    178c:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    178e:	7a03      	ldrb	r3, [r0, #8]
    1790:	1062      	asrs	r2, r4, #1
    1792:	4907      	ldr	r1, [pc, #28]	; (17b0 <gfx_get_pixel+0x48>)
    1794:	fb05 1503 	mla	r5, r5, r3, r1
    1798:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    179a:	f014 0f01 	tst.w	r4, #1
    179e:	bf08      	it	eq
    17a0:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    17a2:	f000 000f 	and.w	r0, r0, #15
    17a6:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    17a8:	20ff      	movs	r0, #255	; 0xff
    17aa:	bd38      	pop	{r3, r4, r5, pc}
    17ac:	20ff      	movs	r0, #255	; 0xff
    17ae:	bd38      	pop	{r3, r4, r5, pc}
    17b0:	20002710 	.word	0x20002710

000017b4 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int /* __attribute__((optimize("-O1")))*/ gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    17b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    17b8:	b085      	sub	sp, #20
    17ba:	9001      	str	r0, [sp, #4]
    17bc:	460e      	mov	r6, r1
    17be:	9100      	str	r1, [sp, #0]
    17c0:	9203      	str	r2, [sp, #12]
    17c2:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    17c4:	4a26      	ldr	r2, [pc, #152]	; (1860 <gfx_sprite+0xac>)
    17c6:	7911      	ldrb	r1, [r2, #4]
    17c8:	4a26      	ldr	r2, [pc, #152]	; (1864 <gfx_sprite+0xb0>)
    17ca:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    17ce:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    17d0:	440a      	add	r2, r1
    17d2:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    17d4:	4433      	add	r3, r6
    17d6:	9302      	str	r3, [sp, #8]
    17d8:	429e      	cmp	r6, r3
    int collision=0;
    17da:	bfa8      	it	ge
    17dc:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    17de:	da3a      	bge.n	1856 <gfx_sprite+0xa2>
    17e0:	f100 0901 	add.w	r9, r0, #1
    17e4:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    17e6:	f8df 8078 	ldr.w	r8, [pc, #120]	; 1860 <gfx_sprite+0xac>
    17ea:	e02b      	b.n	1844 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    17ec:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    17f0:	f898 3004 	ldrb.w	r3, [r8, #4]
    17f4:	4a1b      	ldr	r2, [pc, #108]	; (1864 <gfx_sprite+0xb0>)
    17f6:	4413      	add	r3, r2
    17f8:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    17fa:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    17fe:	3601      	adds	r6, #1
    1800:	4556      	cmp	r6, sl
    1802:	d019      	beq.n	1838 <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    1804:	f898 3004 	ldrb.w	r3, [r8, #4]
    1808:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    180a:	bf99      	ittee	ls
    180c:	fa45 f30b 	asrls.w	r3, r5, fp
    1810:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    1814:	fa45 f20b 	asrhi.w	r2, r5, fp
    1818:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    181a:	2302      	movs	r3, #2
    181c:	9900      	ldr	r1, [sp, #0]
    181e:	4630      	mov	r0, r6
    1820:	f7ff fe6c 	bl	14fc <gfx_blit>
    1824:	4307      	orrs	r7, r0
            ppb--;
    1826:	3c01      	subs	r4, #1
            if (!ppb){
    1828:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    182c:	d0de      	beq.n	17ec <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    182e:	f1cb 0308 	rsb	r3, fp, #8
    1832:	409d      	lsls	r5, r3
    1834:	b2ed      	uxtb	r5, r5
    1836:	e7e2      	b.n	17fe <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    1838:	9b00      	ldr	r3, [sp, #0]
    183a:	3301      	adds	r3, #1
    183c:	9300      	str	r3, [sp, #0]
    183e:	9a02      	ldr	r2, [sp, #8]
    1840:	4293      	cmp	r3, r2
    1842:	d008      	beq.n	1856 <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    1844:	9b03      	ldr	r3, [sp, #12]
    1846:	4619      	mov	r1, r3
    1848:	9a01      	ldr	r2, [sp, #4]
    184a:	eb01 0a02 	add.w	sl, r1, r2
    184e:	4552      	cmp	r2, sl
    1850:	daf2      	bge.n	1838 <gfx_sprite+0x84>
    1852:	9e01      	ldr	r6, [sp, #4]
    1854:	e7d6      	b.n	1804 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    return collision;
}
    1856:	4638      	mov	r0, r7
    1858:	b005      	add	sp, #20
    185a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    185e:	bf00      	nop
    1860:	200001a8 	.word	0x200001a8
    1864:	00003bf4 	.word	0x00003bf4

00001868 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    1868:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    186c:	f001 fd94 	bl	3398 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    1870:	89c3      	ldrh	r3, [r0, #14]
    1872:	089e      	lsrs	r6, r3, #2
    1874:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    1878:	429e      	cmp	r6, r3
    187a:	da18      	bge.n	18ae <color_bars+0x46>
    187c:	4607      	mov	r7, r0
static void color_bars(){
    187e:	f04f 0810 	mov.w	r8, #16
    1882:	4645      	mov	r5, r8
    1884:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    1886:	f014 0f07 	tst.w	r4, #7
				c--;
    188a:	bf04      	itt	eq
    188c:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    1890:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    1892:	462a      	mov	r2, r5
    1894:	4631      	mov	r1, r6
    1896:	4620      	mov	r0, r4
    1898:	f7ff fe7c 	bl	1594 <gfx_plot>
		for (x=0;x<128;x++){
    189c:	3401      	adds	r4, #1
    189e:	2c80      	cmp	r4, #128	; 0x80
    18a0:	d1f1      	bne.n	1886 <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    18a2:	3601      	adds	r6, #1
    18a4:	89fb      	ldrh	r3, [r7, #14]
    18a6:	42b3      	cmp	r3, r6
    18a8:	dceb      	bgt.n	1882 <color_bars+0x1a>
    18aa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    18ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000018b2 <vertical_bars>:
	}
		

}

static void vertical_bars(){
    18b2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    18b4:	f001 fd70 	bl	3398 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    18b8:	89c3      	ldrh	r3, [r0, #14]
    18ba:	2b10      	cmp	r3, #16
    18bc:	dd12      	ble.n	18e4 <vertical_bars+0x32>
    18be:	4605      	mov	r5, r0
    18c0:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    18c2:	260f      	movs	r6, #15
    18c4:	2700      	movs	r7, #0
    18c6:	4632      	mov	r2, r6
    18c8:	4621      	mov	r1, r4
    18ca:	4638      	mov	r0, r7
    18cc:	f7ff fe62 	bl	1594 <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    18d0:	89a8      	ldrh	r0, [r5, #12]
    18d2:	4632      	mov	r2, r6
    18d4:	4621      	mov	r1, r4
    18d6:	3801      	subs	r0, #1
    18d8:	f7ff fe5c 	bl	1594 <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    18dc:	3401      	adds	r4, #1
    18de:	89eb      	ldrh	r3, [r5, #14]
    18e0:	42a3      	cmp	r3, r4
    18e2:	dcf0      	bgt.n	18c6 <vertical_bars+0x14>
    18e4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000018e6 <horiz_bars>:
	}
}

static void horiz_bars(){
    18e6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    18e8:	f001 fd56 	bl	3398 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    18ec:	8983      	ldrh	r3, [r0, #12]
    18ee:	b193      	cbz	r3, 1916 <horiz_bars+0x30>
    18f0:	4605      	mov	r5, r0
    18f2:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    18f4:	260f      	movs	r6, #15
    18f6:	4627      	mov	r7, r4
    18f8:	4632      	mov	r2, r6
    18fa:	4639      	mov	r1, r7
    18fc:	4620      	mov	r0, r4
    18fe:	f7ff fe49 	bl	1594 <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    1902:	89e9      	ldrh	r1, [r5, #14]
    1904:	4632      	mov	r2, r6
    1906:	3901      	subs	r1, #1
    1908:	4620      	mov	r0, r4
    190a:	f7ff fe43 	bl	1594 <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    190e:	3401      	adds	r4, #1
    1910:	89ab      	ldrh	r3, [r5, #12]
    1912:	42a3      	cmp	r3, r4
    1914:	dcf0      	bgt.n	18f8 <horiz_bars+0x12>
    1916:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001918 <display_menu>:
	" Video test",
	" Sound test",
	" BASIC",
};

static void display_menu(){
    1918:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    191a:	f7ff fe65 	bl	15e8 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    191e:	4808      	ldr	r0, [pc, #32]	; (1940 <display_menu+0x28>)
    1920:	f001 fa37 	bl	2d92 <println>
    1924:	4807      	ldr	r0, [pc, #28]	; (1944 <display_menu+0x2c>)
    1926:	f001 fa34 	bl	2d92 <println>
    192a:	4807      	ldr	r0, [pc, #28]	; (1948 <display_menu+0x30>)
    192c:	f001 fa31 	bl	2d92 <println>
    1930:	4806      	ldr	r0, [pc, #24]	; (194c <display_menu+0x34>)
    1932:	f001 fa2e 	bl	2d92 <println>
    1936:	4806      	ldr	r0, [pc, #24]	; (1950 <display_menu+0x38>)
    1938:	f001 fa2b 	bl	2d92 <println>
    193c:	bd08      	pop	{r3, pc}
    193e:	bf00      	nop
    1940:	00003d40 	.word	0x00003d40
    1944:	00003d4c 	.word	0x00003d4c
    1948:	00003d5c 	.word	0x00003d5c
    194c:	00003d68 	.word	0x00003d68
    1950:	00003d74 	.word	0x00003d74

00001954 <draw_balls>:
void draw_balls(){
    1954:	b510      	push	{r4, lr}
    1956:	b082      	sub	sp, #8
	frame_sync();
    1958:	f001 fce4 	bl	3324 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    195c:	4c0a      	ldr	r4, [pc, #40]	; (1988 <draw_balls+0x34>)
    195e:	6923      	ldr	r3, [r4, #16]
    1960:	9300      	str	r3, [sp, #0]
    1962:	2308      	movs	r3, #8
    1964:	461a      	mov	r2, r3
    1966:	6861      	ldr	r1, [r4, #4]
    1968:	6820      	ldr	r0, [r4, #0]
    196a:	f7ff ff23 	bl	17b4 <gfx_sprite>
    196e:	69a1      	ldr	r1, [r4, #24]
    1970:	6960      	ldr	r0, [r4, #20]
    1972:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1974:	9300      	str	r3, [sp, #0]
    1976:	2308      	movs	r3, #8
    1978:	461a      	mov	r2, r3
    197a:	f7ff ff1b 	bl	17b4 <gfx_sprite>
	wait_sync_end();
    197e:	f001 fcd9 	bl	3334 <wait_sync_end>
}
    1982:	b002      	add	sp, #8
    1984:	bd10      	pop	{r4, pc}
    1986:	bf00      	nop
    1988:	200026e8 	.word	0x200026e8

0000198c <isqrt>:
	if (n<2) return n;
    198c:	2801      	cmp	r0, #1
    198e:	dd0c      	ble.n	19aa <isqrt+0x1e>
int isqrt(int n){
    1990:	b510      	push	{r4, lr}
    1992:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1994:	1080      	asrs	r0, r0, #2
    1996:	f7ff fff9 	bl	198c <isqrt>
    199a:	0040      	lsls	r0, r0, #1
	large = small + 1;
    199c:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    199e:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    19a2:	4294      	cmp	r4, r2
    19a4:	bfa8      	it	ge
    19a6:	4618      	movge	r0, r3
}
    19a8:	bd10      	pop	{r4, pc}
    19aa:	4770      	bx	lr

000019ac <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    19ac:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    19ae:	6803      	ldr	r3, [r0, #0]
    19b0:	680a      	ldr	r2, [r1, #0]
    19b2:	6844      	ldr	r4, [r0, #4]
    19b4:	6848      	ldr	r0, [r1, #4]
    19b6:	fb00 f004 	mul.w	r0, r0, r4
    19ba:	fb02 0003 	mla	r0, r2, r3, r0
    19be:	2800      	cmp	r0, #0
    19c0:	bfb8      	it	lt
    19c2:	4240      	neglt	r0, r0
    19c4:	f7ff ffe2 	bl	198c <isqrt>
}
    19c8:	bd10      	pop	{r4, pc}

000019ca <move_balls>:
void move_balls(){
    19ca:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    19cc:	f001 fce4 	bl	3398 <get_video_params>
    19d0:	4b1c      	ldr	r3, [pc, #112]	; (1a44 <move_balls+0x7a>)
    19d2:	f103 0628 	add.w	r6, r3, #40	; 0x28
    19d6:	e005      	b.n	19e4 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    19d8:	4249      	negs	r1, r1
    19da:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    19dc:	6055      	str	r5, [r2, #4]
    19de:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    19e0:	42b3      	cmp	r3, r6
    19e2:	d017      	beq.n	1a14 <move_balls+0x4a>
    19e4:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    19e6:	681d      	ldr	r5, [r3, #0]
    19e8:	6899      	ldr	r1, [r3, #8]
    19ea:	186c      	adds	r4, r5, r1
    19ec:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    19ee:	f114 0f07 	cmn.w	r4, #7
    19f2:	db02      	blt.n	19fa <move_balls+0x30>
    19f4:	8987      	ldrh	r7, [r0, #12]
    19f6:	42bc      	cmp	r4, r7
    19f8:	db02      	blt.n	1a00 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    19fa:	4249      	negs	r1, r1
    19fc:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    19fe:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1a00:	6855      	ldr	r5, [r2, #4]
    1a02:	68d1      	ldr	r1, [r2, #12]
    1a04:	186c      	adds	r4, r5, r1
    1a06:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1a08:	2c0f      	cmp	r4, #15
    1a0a:	dde5      	ble.n	19d8 <move_balls+0xe>
    1a0c:	89c7      	ldrh	r7, [r0, #14]
    1a0e:	42bc      	cmp	r4, r7
    1a10:	dbe5      	blt.n	19de <move_balls+0x14>
    1a12:	e7e1      	b.n	19d8 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1a14:	480c      	ldr	r0, [pc, #48]	; (1a48 <move_balls+0x7e>)
    1a16:	4601      	mov	r1, r0
    1a18:	3814      	subs	r0, #20
    1a1a:	f7ff ffc7 	bl	19ac <distance>
    1a1e:	2807      	cmp	r0, #7
    1a20:	d80f      	bhi.n	1a42 <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1a22:	4b08      	ldr	r3, [pc, #32]	; (1a44 <move_balls+0x7a>)
    1a24:	689a      	ldr	r2, [r3, #8]
    1a26:	69db      	ldr	r3, [r3, #28]
    1a28:	429a      	cmp	r2, r3
    1a2a:	d002      	beq.n	1a32 <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1a2c:	4905      	ldr	r1, [pc, #20]	; (1a44 <move_balls+0x7a>)
    1a2e:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1a30:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1a32:	4b04      	ldr	r3, [pc, #16]	; (1a44 <move_balls+0x7a>)
    1a34:	68da      	ldr	r2, [r3, #12]
    1a36:	6a1b      	ldr	r3, [r3, #32]
    1a38:	429a      	cmp	r2, r3
    1a3a:	d002      	beq.n	1a42 <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1a3c:	4901      	ldr	r1, [pc, #4]	; (1a44 <move_balls+0x7a>)
    1a3e:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1a40:	620a      	str	r2, [r1, #32]
    1a42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1a44:	200026e8 	.word	0x200026e8
    1a48:	200026fc 	.word	0x200026fc

00001a4c <init_balls>:
void init_balls(){
    1a4c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a50:	f001 fca2 	bl	3398 <get_video_params>
    1a54:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a56:	4b15      	ldr	r3, [pc, #84]	; (1aac <init_balls+0x60>)
    1a58:	6818      	ldr	r0, [r3, #0]
    1a5a:	f7fe fcc3 	bl	3e4 <srand>
    1a5e:	4c14      	ldr	r4, [pc, #80]	; (1ab0 <init_balls+0x64>)
    1a60:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    1a64:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    1a66:	4f13      	ldr	r7, [pc, #76]	; (1ab4 <init_balls+0x68>)
    1a68:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    1a6c:	f7fe fcc0 	bl	3f0 <rand>
    1a70:	89ab      	ldrh	r3, [r5, #12]
    1a72:	fb90 f2f3 	sdiv	r2, r0, r3
    1a76:	fb02 0013 	mls	r0, r2, r3, r0
    1a7a:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1a7c:	f7fe fcb8 	bl	3f0 <rand>
    1a80:	89eb      	ldrh	r3, [r5, #14]
    1a82:	3b10      	subs	r3, #16
    1a84:	fb90 f2f3 	sdiv	r2, r0, r3
    1a88:	fb02 0013 	mls	r0, r2, r3, r0
    1a8c:	3010      	adds	r0, #16
    1a8e:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1a90:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    1a92:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1a94:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    1a96:	2b00      	cmp	r3, #0
    1a98:	bf14      	ite	ne
    1a9a:	4643      	movne	r3, r8
    1a9c:	463b      	moveq	r3, r7
    1a9e:	6123      	str	r3, [r4, #16]
    1aa0:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1aa2:	454c      	cmp	r4, r9
    1aa4:	d1e2      	bne.n	1a6c <init_balls+0x20>
}
    1aa6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1aaa:	bf00      	nop
    1aac:	20004e74 	.word	0x20004e74
    1ab0:	200026e8 	.word	0x200026e8
    1ab4:	00003c04 	.word	0x00003c04

00001ab8 <main>:
			break;	
		}
	}//while
}

void main(void){
    1ab8:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1abc:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1abe:	4ac0      	ldr	r2, [pc, #768]	; (1dc0 <main+0x308>)
    1ac0:	6813      	ldr	r3, [r2, #0]
    1ac2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1ac6:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1ac8:	4613      	mov	r3, r2
    1aca:	681a      	ldr	r2, [r3, #0]
    1acc:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1ad0:	d0fb      	beq.n	1aca <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1ad2:	4bbb      	ldr	r3, [pc, #748]	; (1dc0 <main+0x308>)
    1ad4:	685a      	ldr	r2, [r3, #4]
    1ad6:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1ada:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1adc:	681a      	ldr	r2, [r3, #0]
    1ade:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1ae2:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1ae4:	681a      	ldr	r2, [r3, #0]
    1ae6:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1aea:	d0fb      	beq.n	1ae4 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1aec:	4ab5      	ldr	r2, [pc, #724]	; (1dc4 <main+0x30c>)
    1aee:	6813      	ldr	r3, [r2, #0]
    1af0:	f043 0312 	orr.w	r3, r3, #18
    1af4:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1af6:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1afa:	6853      	ldr	r3, [r2, #4]
    1afc:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1b00:	f043 0302 	orr.w	r3, r3, #2
    1b04:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1b06:	f640 031d 	movw	r3, #2077	; 0x81d
    1b0a:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1b0c:	4cae      	ldr	r4, [pc, #696]	; (1dc8 <main+0x310>)
    1b0e:	2206      	movs	r2, #6
    1b10:	210d      	movs	r1, #13
    1b12:	4620      	mov	r0, r4
    1b14:	f7ff fcb2 	bl	147c <config_pin>
	_led_off();
    1b18:	68e3      	ldr	r3, [r4, #12]
    1b1a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1b1e:	60e3      	str	r3, [r4, #12]
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1b20:	2400      	movs	r4, #0
    1b22:	9401      	str	r4, [sp, #4]
    1b24:	2301      	movs	r3, #1
    1b26:	9300      	str	r3, [sp, #0]
    1b28:	2303      	movs	r3, #3
    1b2a:	4622      	mov	r2, r4
    1b2c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1b30:	4620      	mov	r0, r4
    1b32:	f001 fce9 	bl	3508 <usart_open_channel>
	gamepad_init();
    1b36:	f7ff fa7f 	bl	1038 <gamepad_init>
	tvout_init();
    1b3a:	f001 f9dd 	bl	2ef8 <tvout_init>
	sound_init();
    1b3e:	f000 fe3f 	bl	27c0 <sound_init>
	gfx_cls();
    1b42:	f7ff fd51 	bl	15e8 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1b46:	f001 fc27 	bl	3398 <get_video_params>
	display_menu();
    1b4a:	f7ff fee5 	bl	1918 <display_menu>
	int i=0;
    1b4e:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1b50:	4b9e      	ldr	r3, [pc, #632]	; (1dcc <main+0x314>)
    1b52:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1b56:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1b5a:	9304      	str	r3, [sp, #16]
    1b5c:	e184      	b.n	1e68 <main+0x3b0>
			if (i<(MENU_ITEMS-1)) i++;
    1b5e:	f1ba 0f03 	cmp.w	sl, #3
    1b62:	f300 8181 	bgt.w	1e68 <main+0x3b0>
    1b66:	f10a 0a01 	add.w	sl, sl, #1
    1b6a:	e17d      	b.n	1e68 <main+0x3b0>
			switch(i){
    1b6c:	f1ba 0f04 	cmp.w	sl, #4
    1b70:	f200 8178 	bhi.w	1e64 <main+0x3ac>
    1b74:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1b78:	00cd0005 	.word	0x00cd0005
    1b7c:	01a6010c 	.word	0x01a6010c
    1b80:	01e2      	.short	0x01e2
	count=games_count();
    1b82:	f7ff fb09 	bl	1198 <games_count>
    1b86:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1b88:	2000      	movs	r0, #0
    1b8a:	f001 fbdb 	bl	3344 <set_video_mode>
	vparams=get_video_params();
    1b8e:	f001 fc03 	bl	3398 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1b92:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1b96:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1b9a:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1b9c:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1ba0:	454e      	cmp	r6, r9
    1ba2:	bfda      	itte	le
    1ba4:	eba9 0806 	suble.w	r8, r9, r6
    1ba8:	f108 0801 	addle.w	r8, r8, #1
    1bac:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1bae:	2100      	movs	r1, #0
    1bb0:	4608      	mov	r0, r1
    1bb2:	f001 f8a5 	bl	2d00 <set_cursor>
	print(" ********** GAMES **********");
    1bb6:	4886      	ldr	r0, [pc, #536]	; (1dd0 <main+0x318>)
    1bb8:	f001 f8d6 	bl	2d68 <print>
	while ((r<rows) && games_list[first].size){
    1bbc:	f1bb 0f01 	cmp.w	fp, #1
    1bc0:	d92d      	bls.n	1c1e <main+0x166>
    1bc2:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1bc6:	4a83      	ldr	r2, [pc, #524]	; (1dd4 <main+0x31c>)
    1bc8:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1bcc:	691b      	ldr	r3, [r3, #16]
    1bce:	b333      	cbz	r3, 1c1e <main+0x166>
    1bd0:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1bd4:	1c53      	adds	r3, r2, #1
    1bd6:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1bda:	2501      	movs	r5, #1
		put_char(' ');
    1bdc:	2720      	movs	r7, #32
		new_line();
    1bde:	f000 ffdd 	bl	2b9c <new_line>
		clear_line();
    1be2:	f001 f959 	bl	2e98 <clear_line>
		put_char(' ');
    1be6:	4638      	mov	r0, r7
    1be8:	f001 f820 	bl	2c2c <put_char>
		print(games_list[first].name);
    1bec:	4620      	mov	r0, r4
    1bee:	f001 f8bb 	bl	2d68 <print>
		line=get_cursor()&0xff;
    1bf2:	f001 f88b 	bl	2d0c <get_cursor>
		set_cursor(90,line);
    1bf6:	b2c1      	uxtb	r1, r0
    1bf8:	205a      	movs	r0, #90	; 0x5a
    1bfa:	f001 f881 	bl	2d00 <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1bfe:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1c02:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1c04:	bf0c      	ite	eq
    1c06:	4874      	ldreq	r0, [pc, #464]	; (1dd8 <main+0x320>)
			print("(BPCHIP)");
    1c08:	4874      	ldrne	r0, [pc, #464]	; (1ddc <main+0x324>)
    1c0a:	f001 f8ad 	bl	2d68 <print>
		r++;
    1c0e:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1c10:	42ae      	cmp	r6, r5
    1c12:	d004      	beq.n	1c1e <main+0x166>
    1c14:	341c      	adds	r4, #28
    1c16:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1c1a:	2b00      	cmp	r3, #0
    1c1c:	d1df      	bne.n	1bde <main+0x126>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1c1e:	eba9 0108 	sub.w	r1, r9, r8
    1c22:	00c9      	lsls	r1, r1, #3
    1c24:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1c28:	2000      	movs	r0, #0
    1c2a:	f001 f869 	bl	2d00 <set_cursor>
		put_char('>');
    1c2e:	203e      	movs	r0, #62	; 0x3e
    1c30:	f000 fffc 	bl	2c2c <put_char>
		btn=btn_wait_any();
    1c34:	f7ff fa76 	bl	1124 <btn_wait_any>
    1c38:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1c3a:	f7ff fa5f 	bl	10fc <btn_wait_up>
		switch(btn){
    1c3e:	2c04      	cmp	r4, #4
    1c40:	d053      	beq.n	1cea <main+0x232>
    1c42:	d943      	bls.n	1ccc <main+0x214>
    1c44:	2c40      	cmp	r4, #64	; 0x40
    1c46:	d057      	beq.n	1cf8 <main+0x240>
    1c48:	2c80      	cmp	r4, #128	; 0x80
    1c4a:	f000 810b 	beq.w	1e64 <main+0x3ac>
    1c4e:	2c20      	cmp	r4, #32
    1c50:	d1a6      	bne.n	1ba0 <main+0xe8>
	run_game(selected-1);
    1c52:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1c56:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1c5a:	4b5e      	ldr	r3, [pc, #376]	; (1dd4 <main+0x31c>)
    1c5c:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1c60:	2b01      	cmp	r3, #1
    1c62:	bf14      	ite	ne
    1c64:	2600      	movne	r6, #0
    1c66:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1c6a:	4f5a      	ldr	r7, [pc, #360]	; (1dd4 <main+0x31c>)
    1c6c:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1c70:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1c74:	6922      	ldr	r2, [r4, #16]
    1c76:	495a      	ldr	r1, [pc, #360]	; (1de0 <main+0x328>)
    1c78:	4431      	add	r1, r6
    1c7a:	6960      	ldr	r0, [r4, #20]
    1c7c:	f7ff fb3f 	bl	12fe <move>
	set_keymap(games_list[idx].keymap);
    1c80:	69a0      	ldr	r0, [r4, #24]
    1c82:	f7ff f9cd 	bl	1020 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1c86:	eba5 0909 	sub.w	r9, r5, r9
    1c8a:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1c8e:	f001 fb59 	bl	3344 <set_video_mode>
	exit_code=chip_vm(addr,debug_level);
    1c92:	4b54      	ldr	r3, [pc, #336]	; (1de4 <main+0x32c>)
    1c94:	7819      	ldrb	r1, [r3, #0]
    1c96:	4630      	mov	r0, r6
    1c98:	f7fe fbb8 	bl	40c <chip_vm>
    1c9c:	4604      	mov	r4, r0
	print("exit code: ");
    1c9e:	4852      	ldr	r0, [pc, #328]	; (1de8 <main+0x330>)
    1ca0:	f001 f862 	bl	2d68 <print>
	switch(exit_code){
    1ca4:	2c01      	cmp	r4, #1
    1ca6:	d02a      	beq.n	1cfe <main+0x246>
    1ca8:	b374      	cbz	r4, 1d08 <main+0x250>
    1caa:	2c03      	cmp	r4, #3
    1cac:	d82c      	bhi.n	1d08 <main+0x250>
		select_console(SERIAL);
    1cae:	2001      	movs	r0, #1
    1cb0:	f001 f914 	bl	2edc <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1cb4:	4621      	mov	r1, r4
    1cb6:	484d      	ldr	r0, [pc, #308]	; (1dec <main+0x334>)
    1cb8:	f7fe fb38 	bl	32c <print_vms>
		select_console(LOCAL);
    1cbc:	2000      	movs	r0, #0
    1cbe:	f001 f90d 	bl	2edc <select_console>
		btn_wait_any();
    1cc2:	f7ff fa2f 	bl	1124 <btn_wait_any>
		i=1;
    1cc6:	2301      	movs	r3, #1
    1cc8:	9305      	str	r3, [sp, #20]
    1cca:	e01d      	b.n	1d08 <main+0x250>
		switch(btn){
    1ccc:	2c01      	cmp	r4, #1
    1cce:	d009      	beq.n	1ce4 <main+0x22c>
    1cd0:	2c02      	cmp	r4, #2
    1cd2:	f47f af65 	bne.w	1ba0 <main+0xe8>
			if (selected>1) selected--;
    1cd6:	f1b9 0f01 	cmp.w	r9, #1
    1cda:	f77f af61 	ble.w	1ba0 <main+0xe8>
    1cde:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1ce2:	e75d      	b.n	1ba0 <main+0xe8>
			selected=1;
    1ce4:	f04f 0901 	mov.w	r9, #1
    1ce8:	e75a      	b.n	1ba0 <main+0xe8>
			if (selected<count){
    1cea:	9b03      	ldr	r3, [sp, #12]
    1cec:	454b      	cmp	r3, r9
    1cee:	f77f af57 	ble.w	1ba0 <main+0xe8>
				selected++;
    1cf2:	f109 0901 	add.w	r9, r9, #1
    1cf6:	e753      	b.n	1ba0 <main+0xe8>
			selected=count;
    1cf8:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1cfc:	e750      	b.n	1ba0 <main+0xe8>
		print("CHIP EXIT OK");
    1cfe:	483c      	ldr	r0, [pc, #240]	; (1df0 <main+0x338>)
    1d00:	f001 f832 	bl	2d68 <print>
		i=0;
    1d04:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1d08:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1d0c:	f001 fb4e 	bl	33ac <game_pause>
    1d10:	e0a8      	b.n	1e64 <main+0x3ac>
	gfx_cls();
    1d12:	f7ff fc69 	bl	15e8 <gfx_cls>
	print(" **** VM debug support ****\n");
    1d16:	4837      	ldr	r0, [pc, #220]	; (1df4 <main+0x33c>)
    1d18:	f001 f826 	bl	2d68 <print>
	print(" No debug support\n");
    1d1c:	4836      	ldr	r0, [pc, #216]	; (1df8 <main+0x340>)
    1d1e:	f001 f823 	bl	2d68 <print>
	print(" Print PC and OPCODE\n");
    1d22:	4836      	ldr	r0, [pc, #216]	; (1dfc <main+0x344>)
    1d24:	f001 f820 	bl	2d68 <print>
	print(" Print all VM states.\n");
    1d28:	4835      	ldr	r0, [pc, #212]	; (1e00 <main+0x348>)
    1d2a:	f001 f81d 	bl	2d68 <print>
	print(" Single step\n");
    1d2e:	4835      	ldr	r0, [pc, #212]	; (1e04 <main+0x34c>)
    1d30:	f001 f81a 	bl	2d68 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d34:	4c2b      	ldr	r4, [pc, #172]	; (1de4 <main+0x32c>)
    1d36:	2500      	movs	r5, #0
		put_char('*');
    1d38:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d3a:	7821      	ldrb	r1, [r4, #0]
    1d3c:	3101      	adds	r1, #1
    1d3e:	00c9      	lsls	r1, r1, #3
    1d40:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d44:	4628      	mov	r0, r5
    1d46:	f000 ffdb 	bl	2d00 <set_cursor>
		put_char('*');
    1d4a:	4630      	mov	r0, r6
    1d4c:	f000 ff6e 	bl	2c2c <put_char>
		btn=btn_wait_any();
    1d50:	f7ff f9e8 	bl	1124 <btn_wait_any>
    1d54:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d56:	7821      	ldrb	r1, [r4, #0]
    1d58:	3101      	adds	r1, #1
    1d5a:	00c9      	lsls	r1, r1, #3
    1d5c:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d60:	4628      	mov	r0, r5
    1d62:	f000 ffcd 	bl	2d00 <set_cursor>
		put_char(' ');
    1d66:	2020      	movs	r0, #32
    1d68:	f000 ff60 	bl	2c2c <put_char>
		switch(btn){
    1d6c:	2f04      	cmp	r7, #4
    1d6e:	d009      	beq.n	1d84 <main+0x2cc>
    1d70:	2f20      	cmp	r7, #32
    1d72:	d077      	beq.n	1e64 <main+0x3ac>
    1d74:	2f02      	cmp	r7, #2
    1d76:	d1e0      	bne.n	1d3a <main+0x282>
			if (debug_level) debug_level--;
    1d78:	7823      	ldrb	r3, [r4, #0]
    1d7a:	2b00      	cmp	r3, #0
    1d7c:	d0dd      	beq.n	1d3a <main+0x282>
    1d7e:	3b01      	subs	r3, #1
    1d80:	7023      	strb	r3, [r4, #0]
    1d82:	e7da      	b.n	1d3a <main+0x282>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1d84:	7823      	ldrb	r3, [r4, #0]
    1d86:	2b02      	cmp	r3, #2
    1d88:	d8d7      	bhi.n	1d3a <main+0x282>
    1d8a:	3301      	adds	r3, #1
    1d8c:	7023      	strb	r3, [r4, #0]
    1d8e:	e7d4      	b.n	1d3a <main+0x282>
	set_video_mode(p);
    1d90:	2000      	movs	r0, #0
    1d92:	f001 fad7 	bl	3344 <set_video_mode>
	color_bars();
    1d96:	f7ff fd67 	bl	1868 <color_bars>
	vertical_bars();
    1d9a:	f7ff fd8a 	bl	18b2 <vertical_bars>
	horiz_bars();
    1d9e:	f7ff fda2 	bl	18e6 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1da2:	2110      	movs	r1, #16
    1da4:	4818      	ldr	r0, [pc, #96]	; (1e08 <main+0x350>)
    1da6:	f000 fffa 	bl	2d9e <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1daa:	210a      	movs	r1, #10
    1dac:	9804      	ldr	r0, [sp, #16]
    1dae:	f000 fff6 	bl	2d9e <print_int>
	init_balls();
    1db2:	f7ff fe4b 	bl	1a4c <init_balls>
	p=0;
    1db6:	2400      	movs	r4, #0
		if (btn_query_down(KEY_RIGHT)){
    1db8:	2510      	movs	r5, #16
				print("BPCHIP mode\n180x112 16 colors");
    1dba:	4f14      	ldr	r7, [pc, #80]	; (1e0c <main+0x354>)
				print("SCHIP mode\n128x64 mono");
    1dbc:	4e14      	ldr	r6, [pc, #80]	; (1e10 <main+0x358>)
    1dbe:	e03b      	b.n	1e38 <main+0x380>
    1dc0:	40021000 	.word	0x40021000
    1dc4:	40022000 	.word	0x40022000
    1dc8:	40011000 	.word	0x40011000
    1dcc:	20004e80 	.word	0x20004e80
    1dd0:	00003d7c 	.word	0x00003d7c
    1dd4:	20000004 	.word	0x20000004
    1dd8:	00003d9c 	.word	0x00003d9c
    1ddc:	00003da4 	.word	0x00003da4
    1de0:	200006e0 	.word	0x200006e0
    1de4:	200026e4 	.word	0x200026e4
    1de8:	00003db0 	.word	0x00003db0
    1dec:	00003dcc 	.word	0x00003dcc
    1df0:	00003dbc 	.word	0x00003dbc
    1df4:	00003ddc 	.word	0x00003ddc
    1df8:	00003dfc 	.word	0x00003dfc
    1dfc:	00003e10 	.word	0x00003e10
    1e00:	00003e28 	.word	0x00003e28
    1e04:	00003e40 	.word	0x00003e40
    1e08:	00004000 	.word	0x00004000
    1e0c:	00003e50 	.word	0x00003e50
    1e10:	00003e70 	.word	0x00003e70
			p^=1;
    1e14:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1e18:	4620      	mov	r0, r4
    1e1a:	f001 fa93 	bl	3344 <set_video_mode>
			switch(p){
    1e1e:	2c00      	cmp	r4, #0
    1e20:	d046      	beq.n	1eb0 <main+0x3f8>
    1e22:	2c01      	cmp	r4, #1
    1e24:	d04a      	beq.n	1ebc <main+0x404>
			vertical_bars();
    1e26:	f7ff fd44 	bl	18b2 <vertical_bars>
			horiz_bars();
    1e2a:	f7ff fd5c 	bl	18e6 <horiz_bars>
			init_balls();
    1e2e:	f7ff fe0d 	bl	1a4c <init_balls>
			btn_wait_up(KEY_RIGHT);
    1e32:	4628      	mov	r0, r5
    1e34:	f7ff f962 	bl	10fc <btn_wait_up>
		draw_balls();
    1e38:	f7ff fd8c 	bl	1954 <draw_balls>
		draw_balls();
    1e3c:	f7ff fd8a 	bl	1954 <draw_balls>
		move_balls();
    1e40:	f7ff fdc3 	bl	19ca <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1e44:	4628      	mov	r0, r5
    1e46:	f7ff f939 	bl	10bc <btn_query_down>
    1e4a:	2800      	cmp	r0, #0
    1e4c:	d1e2      	bne.n	1e14 <main+0x35c>
		}else if (btn_query_down(KEY_B)){
    1e4e:	2020      	movs	r0, #32
    1e50:	f7ff f934 	bl	10bc <btn_query_down>
    1e54:	2800      	cmp	r0, #0
    1e56:	d0ef      	beq.n	1e38 <main+0x380>
			btn_wait_up(KEY_B);
    1e58:	2020      	movs	r0, #32
    1e5a:	f7ff f94f 	bl	10fc <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1e5e:	2000      	movs	r0, #0
    1e60:	f001 fa70 	bl	3344 <set_video_mode>
			display_menu();
    1e64:	f7ff fd58 	bl	1918 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1e68:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1e6c:	b2e4      	uxtb	r4, r4
    1e6e:	4621      	mov	r1, r4
    1e70:	2000      	movs	r0, #0
    1e72:	f000 ff45 	bl	2d00 <set_cursor>
		put_char('>');
    1e76:	203e      	movs	r0, #62	; 0x3e
    1e78:	f000 fed8 	bl	2c2c <put_char>
		btn=btn_wait_any();
    1e7c:	f7ff f952 	bl	1124 <btn_wait_any>
    1e80:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1e82:	f7ff f93b 	bl	10fc <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1e86:	4621      	mov	r1, r4
    1e88:	2000      	movs	r0, #0
    1e8a:	f000 ff39 	bl	2d00 <set_cursor>
		put_char(' ');
    1e8e:	2020      	movs	r0, #32
    1e90:	f000 fecc 	bl	2c2c <put_char>
		switch(btn){
    1e94:	2d04      	cmp	r5, #4
    1e96:	f43f ae62 	beq.w	1b5e <main+0xa6>
    1e9a:	2d20      	cmp	r5, #32
    1e9c:	f43f ae66 	beq.w	1b6c <main+0xb4>
    1ea0:	2d02      	cmp	r5, #2
    1ea2:	d1e1      	bne.n	1e68 <main+0x3b0>
			if (i) i--;
    1ea4:	f1ba 0f00 	cmp.w	sl, #0
    1ea8:	d0de      	beq.n	1e68 <main+0x3b0>
    1eaa:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1eae:	e7db      	b.n	1e68 <main+0x3b0>
				print("BPCHIP mode\n180x112 16 colors");
    1eb0:	4638      	mov	r0, r7
    1eb2:	f000 ff59 	bl	2d68 <print>
				color_bars();
    1eb6:	f7ff fcd7 	bl	1868 <color_bars>
    1eba:	e7b4      	b.n	1e26 <main+0x36e>
				print("SCHIP mode\n128x64 mono");
    1ebc:	4630      	mov	r0, r6
    1ebe:	f000 ff53 	bl	2d68 <print>
    1ec2:	e7b0      	b.n	1e26 <main+0x36e>
	gfx_cls();
    1ec4:	f7ff fb90 	bl	15e8 <gfx_cls>
	print("press buttons\n");
    1ec8:	4828      	ldr	r0, [pc, #160]	; (1f6c <main+0x4b4>)
    1eca:	f000 ff4d 	bl	2d68 <print>
		tone(freq,30);
    1ece:	251e      	movs	r5, #30
			freq=493;
    1ed0:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    1ed4:	f240 266e 	movw	r6, #622	; 0x26e
    1ed8:	e019      	b.n	1f0e <main+0x456>
		switch(key){
    1eda:	2802      	cmp	r0, #2
    1edc:	d03f      	beq.n	1f5e <main+0x4a6>
    1ede:	2804      	cmp	r0, #4
    1ee0:	d00e      	beq.n	1f00 <main+0x448>
    1ee2:	2801      	cmp	r0, #1
    1ee4:	d024      	beq.n	1f30 <main+0x478>
		tone(freq,30);
    1ee6:	4629      	mov	r1, r5
    1ee8:	9802      	ldr	r0, [sp, #8]
    1eea:	f000 fc95 	bl	2818 <tone>
	while (key!=KEY_B){
    1eee:	2c20      	cmp	r4, #32
    1ef0:	d10d      	bne.n	1f0e <main+0x456>
    1ef2:	e02b      	b.n	1f4c <main+0x494>
		switch(key){
    1ef4:	2810      	cmp	r0, #16
    1ef6:	d1f6      	bne.n	1ee6 <main+0x42e>
			freq=523;
    1ef8:	f240 230b 	movw	r3, #523	; 0x20b
    1efc:	9302      	str	r3, [sp, #8]
    1efe:	e002      	b.n	1f06 <main+0x44e>
			freq=466;
    1f00:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    1f04:	9302      	str	r3, [sp, #8]
		tone(freq,30);
    1f06:	4629      	mov	r1, r5
    1f08:	9802      	ldr	r0, [sp, #8]
    1f0a:	f000 fc85 	bl	2818 <tone>
		key=btn_wait_any();
    1f0e:	f7ff f909 	bl	1124 <btn_wait_any>
    1f12:	4604      	mov	r4, r0
		switch(key){
    1f14:	2808      	cmp	r0, #8
    1f16:	d026      	beq.n	1f66 <main+0x4ae>
    1f18:	d9df      	bls.n	1eda <main+0x422>
    1f1a:	2820      	cmp	r0, #32
    1f1c:	d011      	beq.n	1f42 <main+0x48a>
    1f1e:	d9e9      	bls.n	1ef4 <main+0x43c>
    1f20:	2840      	cmp	r0, #64	; 0x40
    1f22:	d009      	beq.n	1f38 <main+0x480>
    1f24:	2880      	cmp	r0, #128	; 0x80
    1f26:	d1de      	bne.n	1ee6 <main+0x42e>
			freq=659;
    1f28:	f240 2393 	movw	r3, #659	; 0x293
    1f2c:	9302      	str	r3, [sp, #8]
    1f2e:	e7ea      	b.n	1f06 <main+0x44e>
			freq=554;
    1f30:	f240 232a 	movw	r3, #554	; 0x22a
    1f34:	9302      	str	r3, [sp, #8]
    1f36:	e7e6      	b.n	1f06 <main+0x44e>
			freq=622;
    1f38:	9602      	str	r6, [sp, #8]
    1f3a:	e7e4      	b.n	1f06 <main+0x44e>
				basic();
    1f3c:	f7fe f99c 	bl	278 <basic>
    1f40:	e790      	b.n	1e64 <main+0x3ac>
		tone(freq,30);
    1f42:	211e      	movs	r1, #30
    1f44:	f240 204b 	movw	r0, #587	; 0x24b
    1f48:	f000 fc66 	bl	2818 <tone>
	noise(30);
    1f4c:	201e      	movs	r0, #30
    1f4e:	f000 fc9d 	bl	288c <noise>
	while(sound_timer);
    1f52:	4a07      	ldr	r2, [pc, #28]	; (1f70 <main+0x4b8>)
    1f54:	8813      	ldrh	r3, [r2, #0]
    1f56:	b29b      	uxth	r3, r3
    1f58:	2b00      	cmp	r3, #0
    1f5a:	d1fb      	bne.n	1f54 <main+0x49c>
    1f5c:	e782      	b.n	1e64 <main+0x3ac>
			freq=440;
    1f5e:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    1f62:	9302      	str	r3, [sp, #8]
    1f64:	e7cf      	b.n	1f06 <main+0x44e>
			freq=493;
    1f66:	9702      	str	r7, [sp, #8]
    1f68:	e7cd      	b.n	1f06 <main+0x44e>
    1f6a:	bf00      	nop
    1f6c:	00003e88 	.word	0x00003e88
    1f70:	20004e78 	.word	0x20004e78

00001f74 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f74:	283b      	cmp	r0, #59	; 0x3b
    1f76:	dc0d      	bgt.n	1f94 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1f78:	1143      	asrs	r3, r0, #5
    1f7a:	009b      	lsls	r3, r3, #2
    1f7c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1f80:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1f84:	6819      	ldr	r1, [r3, #0]
    1f86:	f000 001f 	and.w	r0, r0, #31
    1f8a:	2201      	movs	r2, #1
    1f8c:	fa02 f000 	lsl.w	r0, r2, r0
    1f90:	4308      	orrs	r0, r1
    1f92:	6018      	str	r0, [r3, #0]
    1f94:	4770      	bx	lr

00001f96 <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f96:	283b      	cmp	r0, #59	; 0x3b
    1f98:	dc08      	bgt.n	1fac <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1f9a:	1142      	asrs	r2, r0, #5
    1f9c:	f000 001f 	and.w	r0, r0, #31
    1fa0:	2301      	movs	r3, #1
    1fa2:	fa03 f000 	lsl.w	r0, r3, r0
    1fa6:	4b02      	ldr	r3, [pc, #8]	; (1fb0 <disable_interrupt+0x1a>)
    1fa8:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1fac:	4770      	bx	lr
    1fae:	bf00      	nop
    1fb0:	e000e180 	.word	0xe000e180

00001fb4 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1fb4:	283b      	cmp	r0, #59	; 0x3b
    1fb6:	dc09      	bgt.n	1fcc <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1fb8:	1142      	asrs	r2, r0, #5
    1fba:	4b05      	ldr	r3, [pc, #20]	; (1fd0 <get_pending+0x1c>)
    1fbc:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1fc0:	f000 031f 	and.w	r3, r0, #31
    1fc4:	2001      	movs	r0, #1
    1fc6:	4098      	lsls	r0, r3
    1fc8:	4010      	ands	r0, r2
    1fca:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1fcc:	2000      	movs	r0, #0
}
    1fce:	4770      	bx	lr
    1fd0:	e000e280 	.word	0xe000e280

00001fd4 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1fd4:	283b      	cmp	r0, #59	; 0x3b
    1fd6:	dc0c      	bgt.n	1ff2 <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1fd8:	1143      	asrs	r3, r0, #5
    1fda:	009b      	lsls	r3, r3, #2
    1fdc:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1fe0:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1fe4:	681a      	ldr	r2, [r3, #0]
    1fe6:	f000 031f 	and.w	r3, r0, #31
    1fea:	2001      	movs	r0, #1
    1fec:	4098      	lsls	r0, r3
    1fee:	4010      	ands	r0, r2
    1ff0:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1ff2:	2000      	movs	r0, #0
}
    1ff4:	4770      	bx	lr

00001ff6 <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1ff6:	283b      	cmp	r0, #59	; 0x3b
    1ff8:	dc0d      	bgt.n	2016 <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1ffa:	1143      	asrs	r3, r0, #5
    1ffc:	009b      	lsls	r3, r3, #2
    1ffe:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2002:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2006:	6819      	ldr	r1, [r3, #0]
    2008:	f000 001f 	and.w	r0, r0, #31
    200c:	2201      	movs	r2, #1
    200e:	fa02 f000 	lsl.w	r0, r2, r0
    2012:	4308      	orrs	r0, r1
    2014:	6018      	str	r0, [r3, #0]
    2016:	4770      	bx	lr

00002018 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2018:	283b      	cmp	r0, #59	; 0x3b
    201a:	dc08      	bgt.n	202e <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    201c:	1142      	asrs	r2, r0, #5
    201e:	f000 001f 	and.w	r0, r0, #31
    2022:	2301      	movs	r3, #1
    2024:	fa03 f000 	lsl.w	r0, r3, r0
    2028:	4b01      	ldr	r3, [pc, #4]	; (2030 <clear_pending+0x18>)
    202a:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    202e:	4770      	bx	lr
    2030:	e000e280 	.word	0xe000e280

00002034 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    2034:	283b      	cmp	r0, #59	; 0x3b
    2036:	d90c      	bls.n	2052 <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2038:	f100 030f 	add.w	r3, r0, #15
    203c:	2b0e      	cmp	r3, #14
    203e:	d807      	bhi.n	2050 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    2040:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    2044:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2048:	30fc      	adds	r0, #252	; 0xfc
    204a:	0109      	lsls	r1, r1, #4
    204c:	4b04      	ldr	r3, [pc, #16]	; (2060 <set_int_priority+0x2c>)
    204e:	54c1      	strb	r1, [r0, r3]
    2050:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    2052:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    2056:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    205a:	0109      	lsls	r1, r1, #4
    205c:	7001      	strb	r1, [r0, #0]
    205e:	4770      	bx	lr
    2060:	e000ed18 	.word	0xe000ed18

00002064 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    2064:	f010 0f03 	tst.w	r0, #3
    2068:	d113      	bne.n	2092 <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    206a:	4b0c      	ldr	r3, [pc, #48]	; (209c <leap_year+0x38>)
    206c:	fba3 2300 	umull	r2, r3, r3, r0
    2070:	095b      	lsrs	r3, r3, #5
    2072:	2264      	movs	r2, #100	; 0x64
    2074:	fb02 0313 	mls	r3, r2, r3, r0
    2078:	b96b      	cbnz	r3, 2096 <leap_year+0x32>
    207a:	4b08      	ldr	r3, [pc, #32]	; (209c <leap_year+0x38>)
    207c:	fba3 2300 	umull	r2, r3, r3, r0
    2080:	09db      	lsrs	r3, r3, #7
    2082:	f44f 72c8 	mov.w	r2, #400	; 0x190
    2086:	fb02 0013 	mls	r0, r2, r3, r0
    208a:	fab0 f080 	clz	r0, r0
    208e:	0940      	lsrs	r0, r0, #5
    2090:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    2092:	2000      	movs	r0, #0
    2094:	4770      	bx	lr
		return 1;
    2096:	2001      	movs	r0, #1
}
    2098:	4770      	bx	lr
    209a:	bf00      	nop
    209c:	51eb851f 	.word	0x51eb851f

000020a0 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    20a0:	4b07      	ldr	r3, [pc, #28]	; (20c0 <sec_per_month+0x20>)
    20a2:	5c5a      	ldrb	r2, [r3, r1]
    20a4:	4b07      	ldr	r3, [pc, #28]	; (20c4 <sec_per_month+0x24>)
    20a6:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    20aa:	2902      	cmp	r1, #2
    20ac:	d001      	beq.n	20b2 <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    20ae:	4618      	mov	r0, r3
    20b0:	4770      	bx	lr
	if (month==2 && leap){
    20b2:	2800      	cmp	r0, #0
    20b4:	d0fb      	beq.n	20ae <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    20b6:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    20ba:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    20be:	e7f6      	b.n	20ae <sec_per_month+0xe>
    20c0:	00003c3c 	.word	0x00003c3c
    20c4:	00015180 	.word	0x00015180

000020c8 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    20c8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    20cc:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    20ce:	4b37      	ldr	r3, [pc, #220]	; (21ac <get_date_time+0xe4>)
    20d0:	699a      	ldr	r2, [r3, #24]
    20d2:	69dc      	ldr	r4, [r3, #28]
    20d4:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    20d8:	f240 70b2 	movw	r0, #1970	; 0x7b2
    20dc:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    20de:	f7ff ffc1 	bl	2064 <leap_year>
    20e2:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20e4:	4d32      	ldr	r5, [pc, #200]	; (21b0 <get_date_time+0xe8>)
    20e6:	4f33      	ldr	r7, [pc, #204]	; (21b4 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    20e8:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 21c8 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20ec:	e00e      	b.n	210c <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    20ee:	4444      	add	r4, r8
    20f0:	e005      	b.n	20fe <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20f2:	42ac      	cmp	r4, r5
    20f4:	d90f      	bls.n	2116 <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    20f6:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    20fa:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    20fe:	8930      	ldrh	r0, [r6, #8]
    2100:	3001      	adds	r0, #1
    2102:	b280      	uxth	r0, r0
    2104:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    2106:	f7ff ffad 	bl	2064 <leap_year>
    210a:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    210c:	f1b9 0f00 	cmp.w	r9, #0
    2110:	d1ef      	bne.n	20f2 <get_date_time+0x2a>
    2112:	42bc      	cmp	r4, r7
    2114:	d8eb      	bhi.n	20ee <get_date_time+0x26>
	}//while
	dt->month=1;
    2116:	8873      	ldrh	r3, [r6, #2]
    2118:	2201      	movs	r2, #1
    211a:	f362 1389 	bfi	r3, r2, #6, #4
    211e:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    2120:	f362 0345 	bfi	r3, r2, #1, #5
    2124:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    2126:	6833      	ldr	r3, [r6, #0]
    2128:	f36f 3310 	bfc	r3, #12, #5
    212c:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    212e:	f36f 138b 	bfc	r3, #6, #6
    2132:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    2134:	f36f 0305 	bfc	r3, #0, #6
    2138:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    213a:	e005      	b.n	2148 <get_date_time+0x80>
		dt->month++;
    213c:	3501      	adds	r5, #1
    213e:	8873      	ldrh	r3, [r6, #2]
    2140:	f365 1389 	bfi	r3, r5, #6, #4
    2144:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    2146:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2148:	8875      	ldrh	r5, [r6, #2]
    214a:	f3c5 1583 	ubfx	r5, r5, #6, #4
    214e:	4629      	mov	r1, r5
    2150:	4648      	mov	r0, r9
    2152:	f7ff ffa5 	bl	20a0 <sec_per_month>
    2156:	4284      	cmp	r4, r0
    2158:	d8f0      	bhi.n	213c <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    215a:	4a17      	ldr	r2, [pc, #92]	; (21b8 <get_date_time+0xf0>)
    215c:	fba2 3204 	umull	r3, r2, r2, r4
    2160:	0c12      	lsrs	r2, r2, #16
    2162:	1c51      	adds	r1, r2, #1
    2164:	78b3      	ldrb	r3, [r6, #2]
    2166:	f361 0345 	bfi	r3, r1, #1, #5
    216a:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    216c:	4b13      	ldr	r3, [pc, #76]	; (21bc <get_date_time+0xf4>)
    216e:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    2172:	4c13      	ldr	r4, [pc, #76]	; (21c0 <get_date_time+0xf8>)
    2174:	fba4 3402 	umull	r3, r4, r4, r2
    2178:	0ae4      	lsrs	r4, r4, #11
    217a:	6833      	ldr	r3, [r6, #0]
    217c:	f364 3310 	bfi	r3, r4, #12, #5
    2180:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    2182:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2186:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    218a:	4a0e      	ldr	r2, [pc, #56]	; (21c4 <get_date_time+0xfc>)
    218c:	fba2 1204 	umull	r1, r2, r2, r4
    2190:	0952      	lsrs	r2, r2, #5
    2192:	f362 138b 	bfi	r3, r2, #6, #6
    2196:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    2198:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    219c:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    21a0:	f364 0305 	bfi	r3, r4, #0, #6
    21a4:	7033      	strb	r3, [r6, #0]
    21a6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    21aa:	bf00      	nop
    21ac:	40002800 	.word	0x40002800
    21b0:	01e284ff 	.word	0x01e284ff
    21b4:	01e1337f 	.word	0x01e1337f
    21b8:	c22e4507 	.word	0xc22e4507
    21bc:	00015180 	.word	0x00015180
    21c0:	91a2b3c5 	.word	0x91a2b3c5
    21c4:	88888889 	.word	0x88888889
    21c8:	fe1ecc80 	.word	0xfe1ecc80

000021cc <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    21cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    21d0:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    21d2:	8903      	ldrh	r3, [r0, #8]
    21d4:	f240 72b1 	movw	r2, #1969	; 0x7b1
    21d8:	4293      	cmp	r3, r2
    21da:	d857      	bhi.n	228c <set_date_time+0xc0>
    21dc:	f240 70b2 	movw	r0, #1970	; 0x7b2
    21e0:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    21e4:	f7ff ff3e 	bl	2064 <leap_year>
    21e8:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    21ea:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    21ec:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    21f0:	f3c6 1683 	ubfx	r6, r6, #6, #4
    21f4:	2e01      	cmp	r6, #1
    21f6:	d908      	bls.n	220a <set_date_time+0x3e>
    21f8:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    21fa:	4629      	mov	r1, r5
    21fc:	4638      	mov	r0, r7
    21fe:	f7ff ff4f 	bl	20a0 <sec_per_month>
    2202:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    2204:	3501      	adds	r5, #1
    2206:	42b5      	cmp	r5, r6
    2208:	d1f7      	bne.n	21fa <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    220a:	f8d8 2000 	ldr.w	r2, [r8]
    220e:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    2212:	f8b8 2000 	ldrh.w	r2, [r8]
    2216:	f3c2 1285 	ubfx	r2, r2, #6, #6
    221a:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    221e:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    2220:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2224:	fb01 2203 	mla	r2, r1, r3, r2
    2228:	f898 3000 	ldrb.w	r3, [r8]
    222c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2230:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    2232:	f898 3002 	ldrb.w	r3, [r8, #2]
    2236:	f3c3 0344 	ubfx	r3, r3, #1, #5
    223a:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    223c:	4928      	ldr	r1, [pc, #160]	; (22e0 <set_date_time+0x114>)
    223e:	fb01 2303 	mla	r3, r1, r3, r2
    2242:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2244:	4a27      	ldr	r2, [pc, #156]	; (22e4 <set_date_time+0x118>)
    2246:	69d3      	ldr	r3, [r2, #28]
    2248:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    224c:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    224e:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    2252:	6813      	ldr	r3, [r2, #0]
    2254:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2258:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    225a:	4b23      	ldr	r3, [pc, #140]	; (22e8 <set_date_time+0x11c>)
    225c:	685a      	ldr	r2, [r3, #4]
    225e:	f042 0210 	orr.w	r2, r2, #16
    2262:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    2264:	0c22      	lsrs	r2, r4, #16
    2266:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    2268:	b2a4      	uxth	r4, r4
    226a:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    226c:	685a      	ldr	r2, [r3, #4]
    226e:	f022 0210 	bic.w	r2, r2, #16
    2272:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    2274:	461a      	mov	r2, r3
    2276:	6853      	ldr	r3, [r2, #4]
    2278:	f013 0f20 	tst.w	r3, #32
    227c:	d0fb      	beq.n	2276 <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    227e:	4a1b      	ldr	r2, [pc, #108]	; (22ec <set_date_time+0x120>)
    2280:	6813      	ldr	r3, [r2, #0]
    2282:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2286:	6013      	str	r3, [r2, #0]
    2288:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    228c:	f640 023a 	movw	r2, #2106	; 0x83a
    2290:	4293      	cmp	r3, r2
    2292:	d90c      	bls.n	22ae <set_date_time+0xe2>
    2294:	4616      	mov	r6, r2
    2296:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    229a:	4610      	mov	r0, r2
    229c:	f7ff fee2 	bl	2064 <leap_year>
    22a0:	4607      	mov	r7, r0
    22a2:	2400      	movs	r4, #0
    22a4:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    22a8:	f8df 9044 	ldr.w	r9, [pc, #68]	; 22f0 <set_date_time+0x124>
    22ac:	e00e      	b.n	22cc <set_date_time+0x100>
	leap=leap_year(dt->year);
    22ae:	8906      	ldrh	r6, [r0, #8]
    22b0:	4630      	mov	r0, r6
    22b2:	f7ff fed7 	bl	2064 <leap_year>
    22b6:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    22b8:	f240 73b2 	movw	r3, #1970	; 0x7b2
    22bc:	429e      	cmp	r6, r3
    22be:	d8f0      	bhi.n	22a2 <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    22c0:	2400      	movs	r4, #0
    22c2:	e793      	b.n	21ec <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    22c4:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    22c6:	3501      	adds	r5, #1
    22c8:	42b5      	cmp	r5, r6
    22ca:	d28f      	bcs.n	21ec <set_date_time+0x20>
		if (leap_year(i)){
    22cc:	4628      	mov	r0, r5
    22ce:	f7ff fec9 	bl	2064 <leap_year>
    22d2:	2800      	cmp	r0, #0
    22d4:	d0f6      	beq.n	22c4 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    22d6:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    22da:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    22de:	e7f2      	b.n	22c6 <set_date_time+0xfa>
    22e0:	00015180 	.word	0x00015180
    22e4:	40021000 	.word	0x40021000
    22e8:	40002800 	.word	0x40002800
    22ec:	40007000 	.word	0x40007000
    22f0:	01e13380 	.word	0x01e13380

000022f4 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    22f4:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    22f6:	4b35      	ldr	r3, [pc, #212]	; (23cc <rtc_init+0xd8>)
    22f8:	685a      	ldr	r2, [r3, #4]
    22fa:	f64a 2355 	movw	r3, #43605	; 0xaa55
    22fe:	429a      	cmp	r2, r3
    2300:	d05c      	beq.n	23bc <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2302:	4b33      	ldr	r3, [pc, #204]	; (23d0 <rtc_init+0xdc>)
    2304:	69da      	ldr	r2, [r3, #28]
    2306:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    230a:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    230c:	4c31      	ldr	r4, [pc, #196]	; (23d4 <rtc_init+0xe0>)
    230e:	6822      	ldr	r2, [r4, #0]
    2310:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2314:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    2316:	6a1a      	ldr	r2, [r3, #32]
    2318:	f042 0201 	orr.w	r2, r2, #1
    231c:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    231e:	461a      	mov	r2, r3
    2320:	6a13      	ldr	r3, [r2, #32]
    2322:	f013 0f02 	tst.w	r3, #2
    2326:	d0fb      	beq.n	2320 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2328:	4a29      	ldr	r2, [pc, #164]	; (23d0 <rtc_init+0xdc>)
    232a:	6a13      	ldr	r3, [r2, #32]
    232c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2330:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    2332:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2336:	6853      	ldr	r3, [r2, #4]
    2338:	f013 0f08 	tst.w	r3, #8
    233c:	d0fb      	beq.n	2336 <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    233e:	4a26      	ldr	r2, [pc, #152]	; (23d8 <rtc_init+0xe4>)
    2340:	6853      	ldr	r3, [r2, #4]
    2342:	f013 0f20 	tst.w	r3, #32
    2346:	d0fb      	beq.n	2340 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2348:	4a23      	ldr	r2, [pc, #140]	; (23d8 <rtc_init+0xe4>)
    234a:	6853      	ldr	r3, [r2, #4]
    234c:	f043 0310 	orr.w	r3, r3, #16
    2350:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    2352:	6853      	ldr	r3, [r2, #4]
    2354:	f013 0f20 	tst.w	r3, #32
    2358:	d0fb      	beq.n	2352 <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    235a:	4a1f      	ldr	r2, [pc, #124]	; (23d8 <rtc_init+0xe4>)
    235c:	6813      	ldr	r3, [r2, #0]
    235e:	4319      	orrs	r1, r3
    2360:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    2362:	6853      	ldr	r3, [r2, #4]
    2364:	f013 0f20 	tst.w	r3, #32
    2368:	d0fb      	beq.n	2362 <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    236a:	03c2      	lsls	r2, r0, #15
    236c:	481b      	ldr	r0, [pc, #108]	; (23dc <rtc_init+0xe8>)
    236e:	fba0 3202 	umull	r3, r2, r0, r2
    2372:	0992      	lsrs	r2, r2, #6
    2374:	3a01      	subs	r2, #1
    2376:	b291      	uxth	r1, r2
    2378:	4b17      	ldr	r3, [pc, #92]	; (23d8 <rtc_init+0xe4>)
    237a:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    237c:	4619      	mov	r1, r3
    237e:	684b      	ldr	r3, [r1, #4]
    2380:	f013 0f20 	tst.w	r3, #32
    2384:	d0fb      	beq.n	237e <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    2386:	f3c2 4203 	ubfx	r2, r2, #16, #4
    238a:	4b13      	ldr	r3, [pc, #76]	; (23d8 <rtc_init+0xe4>)
    238c:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    238e:	461a      	mov	r2, r3
    2390:	6853      	ldr	r3, [r2, #4]
    2392:	f013 0f20 	tst.w	r3, #32
    2396:	d0fb      	beq.n	2390 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    2398:	f64a 2255 	movw	r2, #43605	; 0xaa55
    239c:	4b0b      	ldr	r3, [pc, #44]	; (23cc <rtc_init+0xd8>)
    239e:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    23a0:	4a0d      	ldr	r2, [pc, #52]	; (23d8 <rtc_init+0xe4>)
    23a2:	6853      	ldr	r3, [r2, #4]
    23a4:	f023 0310 	bic.w	r3, r3, #16
    23a8:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    23aa:	6853      	ldr	r3, [r2, #4]
    23ac:	f013 0f20 	tst.w	r3, #32
    23b0:	d0fb      	beq.n	23aa <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    23b2:	4a08      	ldr	r2, [pc, #32]	; (23d4 <rtc_init+0xe0>)
    23b4:	6813      	ldr	r3, [r2, #0]
    23b6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23ba:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    23bc:	210f      	movs	r1, #15
    23be:	2003      	movs	r0, #3
    23c0:	f7ff fe38 	bl	2034 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    23c4:	2003      	movs	r0, #3
    23c6:	f7ff fdd5 	bl	1f74 <enable_interrupt>
    23ca:	bd10      	pop	{r4, pc}
    23cc:	40006c00 	.word	0x40006c00
    23d0:	40021000 	.word	0x40021000
    23d4:	40007000 	.word	0x40007000
    23d8:	40002800 	.word	0x40002800
    23dc:	10624dd3 	.word	0x10624dd3

000023e0 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    23e0:	4b06      	ldr	r3, [pc, #24]	; (23fc <reset_backup_domain+0x1c>)
    23e2:	69da      	ldr	r2, [r3, #28]
    23e4:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    23e8:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    23ea:	6a1a      	ldr	r2, [r3, #32]
    23ec:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    23f0:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    23f2:	6a1a      	ldr	r2, [r3, #32]
    23f4:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    23f8:	621a      	str	r2, [r3, #32]
    23fa:	4770      	bx	lr
    23fc:	40021000 	.word	0x40021000

00002400 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2400:	4a27      	ldr	r2, [pc, #156]	; (24a0 <rtc_clock_trim+0xa0>)
    2402:	69d3      	ldr	r3, [r2, #28]
    2404:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2408:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    240a:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    240e:	6853      	ldr	r3, [r2, #4]
    2410:	f013 0f08 	tst.w	r3, #8
    2414:	d0fb      	beq.n	240e <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2416:	4a23      	ldr	r2, [pc, #140]	; (24a4 <rtc_clock_trim+0xa4>)
    2418:	6813      	ldr	r3, [r2, #0]
    241a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    241e:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2420:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    2424:	6853      	ldr	r3, [r2, #4]
    2426:	f043 0310 	orr.w	r3, r3, #16
    242a:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    242c:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    2430:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    2432:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2436:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2438:	b9b8      	cbnz	r0, 246a <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    243a:	2200      	movs	r2, #0
    243c:	4b1a      	ldr	r3, [pc, #104]	; (24a8 <rtc_clock_trim+0xa8>)
    243e:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    2440:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    2444:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2448:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    244a:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    244c:	4a17      	ldr	r2, [pc, #92]	; (24ac <rtc_clock_trim+0xac>)
    244e:	6853      	ldr	r3, [r2, #4]
    2450:	f023 0310 	bic.w	r3, r3, #16
    2454:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    2456:	6853      	ldr	r3, [r2, #4]
    2458:	f013 0f20 	tst.w	r3, #32
    245c:	d0fb      	beq.n	2456 <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    245e:	4a11      	ldr	r2, [pc, #68]	; (24a4 <rtc_clock_trim+0xa4>)
    2460:	6813      	ldr	r3, [r2, #0]
    2462:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2466:	6013      	str	r3, [r2, #0]
    2468:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    246a:	2800      	cmp	r0, #0
    246c:	dd06      	ble.n	247c <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    246e:	4b0e      	ldr	r3, [pc, #56]	; (24a8 <rtc_clock_trim+0xa8>)
    2470:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    2472:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    2476:	4310      	orrs	r0, r2
    2478:	62d8      	str	r0, [r3, #44]	; 0x2c
    247a:	e7e7      	b.n	244c <rtc_clock_trim+0x4c>
		trim=-trim;
    247c:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    247e:	2100      	movs	r1, #0
    2480:	4b09      	ldr	r3, [pc, #36]	; (24a8 <rtc_clock_trim+0xa8>)
    2482:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    2484:	f64f 73ff 	movw	r3, #65535	; 0xffff
    2488:	287f      	cmp	r0, #127	; 0x7f
    248a:	bfd4      	ite	le
    248c:	1a18      	suble	r0, r3, r0
    248e:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    2492:	f3c0 000e 	ubfx	r0, r0, #0, #15
    2496:	4a05      	ldr	r2, [pc, #20]	; (24ac <rtc_clock_trim+0xac>)
    2498:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    249a:	6091      	str	r1, [r2, #8]
    249c:	e7d6      	b.n	244c <rtc_clock_trim+0x4c>
    249e:	bf00      	nop
    24a0:	40021000 	.word	0x40021000
    24a4:	40007000 	.word	0x40007000
    24a8:	40006c00 	.word	0x40006c00
    24ac:	40002800 	.word	0x40002800

000024b0 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    24b0:	4770      	bx	lr

000024b2 <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    24b2:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    24b6:	4607      	mov	r7, r0
    24b8:	4688      	mov	r8, r1
    24ba:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    24bc:	2400      	movs	r4, #0
	i=0;
    24be:	4626      	mov	r6, r4
	while (digit(date[i])){
    24c0:	e008      	b.n	24d4 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    24c2:	3601      	adds	r6, #1
    24c4:	3501      	adds	r5, #1
    24c6:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    24ca:	f899 3000 	ldrb.w	r3, [r9]
    24ce:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    24d2:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    24d4:	46a9      	mov	r9, r5
    24d6:	7828      	ldrb	r0, [r5, #0]
    24d8:	f7fe fea5 	bl	1226 <digit>
    24dc:	4682      	mov	sl, r0
    24de:	2800      	cmp	r0, #0
    24e0:	d1ef      	bne.n	24c2 <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    24e2:	2e03      	cmp	r6, #3
    24e4:	dd02      	ble.n	24ec <str_to_date+0x3a>
    24e6:	782b      	ldrb	r3, [r5, #0]
    24e8:	2b2f      	cmp	r3, #47	; 0x2f
    24ea:	d002      	beq.n	24f2 <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    24ec:	4650      	mov	r0, sl
    24ee:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    24f2:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    24f6:	3601      	adds	r6, #1
    24f8:	19bd      	adds	r5, r7, r6
	n=0;
    24fa:	4604      	mov	r4, r0
	while (digit(date[i])){
    24fc:	e008      	b.n	2510 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    24fe:	3601      	adds	r6, #1
    2500:	3501      	adds	r5, #1
    2502:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2506:	f899 3000 	ldrb.w	r3, [r9]
    250a:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    250e:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2510:	46a9      	mov	r9, r5
    2512:	7828      	ldrb	r0, [r5, #0]
    2514:	f7fe fe87 	bl	1226 <digit>
    2518:	4682      	mov	sl, r0
    251a:	2800      	cmp	r0, #0
    251c:	d1ef      	bne.n	24fe <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    251e:	2e06      	cmp	r6, #6
    2520:	dde4      	ble.n	24ec <str_to_date+0x3a>
    2522:	782b      	ldrb	r3, [r5, #0]
    2524:	2b2f      	cmp	r3, #47	; 0x2f
    2526:	d1e1      	bne.n	24ec <str_to_date+0x3a>
	dt->month=n;
    2528:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    252c:	f364 1389 	bfi	r3, r4, #6, #4
    2530:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2534:	1c74      	adds	r4, r6, #1
    2536:	443e      	add	r6, r7
	while (digit(date[i])){
    2538:	e008      	b.n	254c <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    253a:	3401      	adds	r4, #1
    253c:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2540:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2544:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2548:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    254c:	7870      	ldrb	r0, [r6, #1]
    254e:	f7fe fe6a 	bl	1226 <digit>
    2552:	2800      	cmp	r0, #0
    2554:	d1f1      	bne.n	253a <str_to_date+0x88>
	if (i<10) return 0;
    2556:	2c09      	cmp	r4, #9
    2558:	dd08      	ble.n	256c <str_to_date+0xba>
	dt->day=n;
    255a:	f898 3002 	ldrb.w	r3, [r8, #2]
    255e:	f36a 0345 	bfi	r3, sl, #1, #5
    2562:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    2566:	f04f 0a01 	mov.w	sl, #1
    256a:	e7bf      	b.n	24ec <str_to_date+0x3a>
	if (i<10) return 0;
    256c:	4682      	mov	sl, r0
    256e:	e7bd      	b.n	24ec <str_to_date+0x3a>

00002570 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    2570:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2574:	4607      	mov	r7, r0
    2576:	4688      	mov	r8, r1
    2578:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    257a:	2400      	movs	r4, #0
	i=0;
    257c:	4626      	mov	r6, r4
	while (digit(time[i])){
    257e:	e00a      	b.n	2596 <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    2580:	3601      	adds	r6, #1
    2582:	3501      	adds	r5, #1
    2584:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2588:	0064      	lsls	r4, r4, #1
    258a:	3c30      	subs	r4, #48	; 0x30
    258c:	f899 3000 	ldrb.w	r3, [r9]
    2590:	441c      	add	r4, r3
    2592:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2596:	46a9      	mov	r9, r5
    2598:	7828      	ldrb	r0, [r5, #0]
    259a:	f7fe fe44 	bl	1226 <digit>
    259e:	4603      	mov	r3, r0
    25a0:	2800      	cmp	r0, #0
    25a2:	d1ed      	bne.n	2580 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    25a4:	2c17      	cmp	r4, #23
    25a6:	d802      	bhi.n	25ae <str_to_time+0x3e>
    25a8:	782a      	ldrb	r2, [r5, #0]
    25aa:	2a3a      	cmp	r2, #58	; 0x3a
    25ac:	d002      	beq.n	25b4 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    25ae:	4618      	mov	r0, r3
    25b0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    25b4:	f8d8 3000 	ldr.w	r3, [r8]
    25b8:	f364 3310 	bfi	r3, r4, #12, #5
    25bc:	f8c8 3000 	str.w	r3, [r8]
	i++;
    25c0:	3601      	adds	r6, #1
    25c2:	19bd      	adds	r5, r7, r6
	n=0;
    25c4:	2400      	movs	r4, #0
	while (digit(time[i])){
    25c6:	e00a      	b.n	25de <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    25c8:	3601      	adds	r6, #1
    25ca:	3501      	adds	r5, #1
    25cc:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25d0:	0064      	lsls	r4, r4, #1
    25d2:	3c30      	subs	r4, #48	; 0x30
    25d4:	f899 3000 	ldrb.w	r3, [r9]
    25d8:	441c      	add	r4, r3
    25da:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    25de:	46a9      	mov	r9, r5
    25e0:	7828      	ldrb	r0, [r5, #0]
    25e2:	f7fe fe20 	bl	1226 <digit>
    25e6:	4603      	mov	r3, r0
    25e8:	2800      	cmp	r0, #0
    25ea:	d1ed      	bne.n	25c8 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    25ec:	2c3b      	cmp	r4, #59	; 0x3b
    25ee:	d8de      	bhi.n	25ae <str_to_time+0x3e>
    25f0:	782a      	ldrb	r2, [r5, #0]
    25f2:	2a3a      	cmp	r2, #58	; 0x3a
    25f4:	d1db      	bne.n	25ae <str_to_time+0x3e>
	dt->minute=n;
    25f6:	f8b8 3000 	ldrh.w	r3, [r8]
    25fa:	f364 138b 	bfi	r3, r4, #6, #6
    25fe:	f8a8 3000 	strh.w	r3, [r8]
    2602:	443e      	add	r6, r7
	n=0;
    2604:	2400      	movs	r4, #0
	while (digit(time[i])){
    2606:	e008      	b.n	261a <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2608:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    260c:	0064      	lsls	r4, r4, #1
    260e:	3c30      	subs	r4, #48	; 0x30
    2610:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2614:	441c      	add	r4, r3
    2616:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    261a:	7870      	ldrb	r0, [r6, #1]
    261c:	f7fe fe03 	bl	1226 <digit>
    2620:	4603      	mov	r3, r0
    2622:	2800      	cmp	r0, #0
    2624:	d1f0      	bne.n	2608 <str_to_time+0x98>
	if (n>59) return 0;
    2626:	2c3b      	cmp	r4, #59	; 0x3b
    2628:	d8c1      	bhi.n	25ae <str_to_time+0x3e>
	dt->second=n;
    262a:	f898 3000 	ldrb.w	r3, [r8]
    262e:	f364 0305 	bfi	r3, r4, #0, #6
    2632:	f888 3000 	strb.w	r3, [r8]
	return 1;
    2636:	2301      	movs	r3, #1
    2638:	e7b9      	b.n	25ae <str_to_time+0x3e>

0000263a <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    263a:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    263c:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    263e:	4b23      	ldr	r3, [pc, #140]	; (26cc <date_str+0x92>)
    2640:	fba3 4302 	umull	r4, r3, r3, r2
    2644:	099b      	lsrs	r3, r3, #6
    2646:	f103 0430 	add.w	r4, r3, #48	; 0x30
    264a:	700c      	strb	r4, [r1, #0]
	n%=1000;
    264c:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2650:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2654:	4b1e      	ldr	r3, [pc, #120]	; (26d0 <date_str+0x96>)
    2656:	fba3 4302 	umull	r4, r3, r3, r2
    265a:	095b      	lsrs	r3, r3, #5
    265c:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2660:	704c      	strb	r4, [r1, #1]
	n%=100;
    2662:	2464      	movs	r4, #100	; 0x64
    2664:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2668:	4a1a      	ldr	r2, [pc, #104]	; (26d4 <date_str+0x9a>)
    266a:	fba2 5403 	umull	r5, r4, r2, r3
    266e:	08e4      	lsrs	r4, r4, #3
    2670:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2674:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    2676:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    267a:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    267e:	3330      	adds	r3, #48	; 0x30
    2680:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    2682:	262f      	movs	r6, #47	; 0x2f
    2684:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    2686:	8843      	ldrh	r3, [r0, #2]
    2688:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    268c:	fba2 5403 	umull	r5, r4, r2, r3
    2690:	08e4      	lsrs	r4, r4, #3
    2692:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2696:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    2698:	00a5      	lsls	r5, r4, #2
    269a:	442c      	add	r4, r5
    269c:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    26a0:	3330      	adds	r3, #48	; 0x30
    26a2:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    26a4:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    26a6:	7880      	ldrb	r0, [r0, #2]
    26a8:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    26ac:	fba2 3200 	umull	r3, r2, r2, r0
    26b0:	08d3      	lsrs	r3, r2, #3
    26b2:	f103 0230 	add.w	r2, r3, #48	; 0x30
    26b6:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    26b8:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    26bc:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    26c0:	3330      	adds	r3, #48	; 0x30
    26c2:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    26c4:	2300      	movs	r3, #0
    26c6:	728b      	strb	r3, [r1, #10]

}
    26c8:	bc70      	pop	{r4, r5, r6}
    26ca:	4770      	bx	lr
    26cc:	10624dd3 	.word	0x10624dd3
    26d0:	51eb851f 	.word	0x51eb851f
    26d4:	cccccccd 	.word	0xcccccccd

000026d8 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    26d8:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    26da:	6802      	ldr	r2, [r0, #0]
    26dc:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    26e0:	4b18      	ldr	r3, [pc, #96]	; (2744 <time_str+0x6c>)
    26e2:	fba3 5402 	umull	r5, r4, r3, r2
    26e6:	08e4      	lsrs	r4, r4, #3
    26e8:	f104 0530 	add.w	r5, r4, #48	; 0x30
    26ec:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    26ee:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26f2:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    26f6:	3230      	adds	r2, #48	; 0x30
    26f8:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    26fa:	253a      	movs	r5, #58	; 0x3a
    26fc:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    26fe:	8802      	ldrh	r2, [r0, #0]
    2700:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2704:	fba3 6402 	umull	r6, r4, r3, r2
    2708:	08e4      	lsrs	r4, r4, #3
    270a:	f104 0630 	add.w	r6, r4, #48	; 0x30
    270e:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    2710:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2714:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2718:	3230      	adds	r2, #48	; 0x30
    271a:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    271c:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    271e:	7802      	ldrb	r2, [r0, #0]
    2720:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    2724:	fba3 0302 	umull	r0, r3, r3, r2
    2728:	08db      	lsrs	r3, r3, #3
    272a:	f103 0030 	add.w	r0, r3, #48	; 0x30
    272e:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2730:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2734:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2738:	3330      	adds	r3, #48	; 0x30
    273a:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    273c:	2300      	movs	r3, #0
    273e:	720b      	strb	r3, [r1, #8]
}
    2740:	bc70      	pop	{r4, r5, r6}
    2742:	4770      	bx	lr
    2744:	cccccccd 	.word	0xcccccccd

00002748 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2748:	b500      	push	{lr}
    274a:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    274c:	a801      	add	r0, sp, #4
    274e:	f7ff fcbb 	bl	20c8 <get_date_time>
	t.fields.second=dt.second/2;
    2752:	f89d 3004 	ldrb.w	r3, [sp, #4]
    2756:	f3c3 0344 	ubfx	r3, r3, #1, #5
    275a:	2000      	movs	r0, #0
    275c:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2760:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2764:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2768:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    276c:	9b01      	ldr	r3, [sp, #4]
    276e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2772:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    2776:	f89d 3006 	ldrb.w	r3, [sp, #6]
    277a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    277e:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    2782:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    2786:	f3c3 1383 	ubfx	r3, r3, #6, #4
    278a:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    278e:	f89d 300c 	ldrb.w	r3, [sp, #12]
    2792:	3344      	adds	r3, #68	; 0x44
    2794:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    2798:	b005      	add	sp, #20
    279a:	f85d fb04 	ldr.w	pc, [sp], #4

0000279e <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    279e:	4b07      	ldr	r3, [pc, #28]	; (27bc <RTC_handler+0x1e>)
    27a0:	685b      	ldr	r3, [r3, #4]
    27a2:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    27a6:	bf1c      	itt	ne
    27a8:	4b04      	ldrne	r3, [pc, #16]	; (27bc <RTC_handler+0x1e>)
    27aa:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    27ac:	4b03      	ldr	r3, [pc, #12]	; (27bc <RTC_handler+0x1e>)
    27ae:	685b      	ldr	r3, [r3, #4]
    27b0:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    27b4:	bf1c      	itt	ne
    27b6:	4b01      	ldrne	r3, [pc, #4]	; (27bc <RTC_handler+0x1e>)
    27b8:	685b      	ldrne	r3, [r3, #4]
    27ba:	4770      	bx	lr
    27bc:	40002800 	.word	0x40002800

000027c0 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    27c0:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    27c2:	4b12      	ldr	r3, [pc, #72]	; (280c <sound_init+0x4c>)
    27c4:	685a      	ldr	r2, [r3, #4]
    27c6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    27ca:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    27cc:	685a      	ldr	r2, [r3, #4]
    27ce:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    27d2:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    27d4:	220a      	movs	r2, #10
    27d6:	4611      	mov	r1, r2
    27d8:	480d      	ldr	r0, [pc, #52]	; (2810 <sound_init+0x50>)
    27da:	f7fe fe4f 	bl	147c <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    27de:	4a0d      	ldr	r2, [pc, #52]	; (2814 <sound_init+0x54>)
    27e0:	69d3      	ldr	r3, [r2, #28]
    27e2:	f043 0301 	orr.w	r3, r3, #1
    27e6:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    27e8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    27ec:	2278      	movs	r2, #120	; 0x78
    27ee:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    27f0:	f44f 7280 	mov.w	r2, #256	; 0x100
    27f4:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    27f6:	2209      	movs	r2, #9
    27f8:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    27fa:	2100      	movs	r1, #0
    27fc:	201c      	movs	r0, #28
    27fe:	f7ff fc19 	bl	2034 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    2802:	201c      	movs	r0, #28
    2804:	f7ff fbb6 	bl	1f74 <enable_interrupt>
    2808:	bd08      	pop	{r3, pc}
    280a:	bf00      	nop
    280c:	40010000 	.word	0x40010000
    2810:	40010c00 	.word	0x40010c00
    2814:	40021000 	.word	0x40021000

00002818 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2818:	4b07      	ldr	r3, [pc, #28]	; (2838 <tone+0x20>)
    281a:	fbb3 f0f0 	udiv	r0, r3, r0
    281e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2822:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    2824:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2826:	0852      	lsrs	r2, r2, #1
    2828:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    282a:	681a      	ldr	r2, [r3, #0]
    282c:	f042 0201 	orr.w	r2, r2, #1
    2830:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2832:	4b02      	ldr	r3, [pc, #8]	; (283c <tone+0x24>)
    2834:	8019      	strh	r1, [r3, #0]
    2836:	4770      	bx	lr
    2838:	006d3d32 	.word	0x006d3d32
    283c:	20004e78 	.word	0x20004e78

00002840 <beep>:
}

void beep(uint16_t duration){
    2840:	b508      	push	{r3, lr}
    tone(1000,duration);
    2842:	4601      	mov	r1, r0
    2844:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2848:	f7ff ffe6 	bl	2818 <tone>
    284c:	bd08      	pop	{r3, pc}

0000284e <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    284e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2852:	681a      	ldr	r2, [r3, #0]
    2854:	f022 0201 	bic.w	r2, r2, #1
    2858:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    285a:	68da      	ldr	r2, [r3, #12]
    285c:	f022 0201 	bic.w	r2, r2, #1
    2860:	60da      	str	r2, [r3, #12]
    2862:	4770      	bx	lr

00002864 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    2864:	b510      	push	{r4, lr}
    2866:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    2868:	b289      	uxth	r1, r1
    286a:	4b06      	ldr	r3, [pc, #24]	; (2884 <key_tone+0x20>)
    286c:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    2870:	f7ff ffd2 	bl	2818 <tone>
    if (wait_end) while (sound_timer);
    2874:	b124      	cbz	r4, 2880 <key_tone+0x1c>
    2876:	4a04      	ldr	r2, [pc, #16]	; (2888 <key_tone+0x24>)
    2878:	8813      	ldrh	r3, [r2, #0]
    287a:	b29b      	uxth	r3, r3
    287c:	2b00      	cmp	r3, #0
    287e:	d1fb      	bne.n	2878 <key_tone+0x14>
    2880:	bd10      	pop	{r4, pc}
    2882:	bf00      	nop
    2884:	00003c4c 	.word	0x00003c4c
    2888:	20004e78 	.word	0x20004e78

0000288c <noise>:
}

// produit un bruit 
void noise(int length){
    288c:	b510      	push	{r4, lr}
    288e:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    2890:	4b07      	ldr	r3, [pc, #28]	; (28b0 <noise+0x24>)
    2892:	6818      	ldr	r0, [r3, #0]
    2894:	f7fd fda6 	bl	3e4 <srand>
    tone(6000,length);
    2898:	b2a1      	uxth	r1, r4
    289a:	f241 7070 	movw	r0, #6000	; 0x1770
    289e:	f7ff ffbb 	bl	2818 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    28a2:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28a6:	68d3      	ldr	r3, [r2, #12]
    28a8:	f043 0301 	orr.w	r3, r3, #1
    28ac:	60d3      	str	r3, [r2, #12]
    28ae:	bd10      	pop	{r4, pc}
    28b0:	20004e74 	.word	0x20004e74

000028b4 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    28b4:	4668      	mov	r0, sp
    28b6:	f020 0107 	bic.w	r1, r0, #7
    28ba:	468d      	mov	sp, r1
    28bc:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    28be:	f7fd fd97 	bl	3f0 <rand>
    28c2:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    28c6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28ca:	6a13      	ldr	r3, [r2, #32]
    28cc:	bf14      	ite	ne
    28ce:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    28d2:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    28d6:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    28d8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28dc:	6913      	ldr	r3, [r2, #16]
    28de:	f023 0301 	bic.w	r3, r3, #1
    28e2:	6113      	str	r3, [r2, #16]
}
    28e4:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    28e8:	4685      	mov	sp, r0
    28ea:	4770      	bx	lr

000028ec <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    28ec:	6803      	ldr	r3, [r0, #0]
    28ee:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    28f2:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    28f4:	6803      	ldr	r3, [r0, #0]
    28f6:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    28fa:	6001      	str	r1, [r0, #0]
    28fc:	4770      	bx	lr

000028fe <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    28fe:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2900:	4a2f      	ldr	r2, [pc, #188]	; (29c0 <spi_config_port+0xc2>)
    2902:	6993      	ldr	r3, [r2, #24]
    2904:	f043 0301 	orr.w	r3, r3, #1
    2908:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    290a:	4b2e      	ldr	r3, [pc, #184]	; (29c4 <spi_config_port+0xc6>)
    290c:	4298      	cmp	r0, r3
    290e:	d01a      	beq.n	2946 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2910:	4a2b      	ldr	r2, [pc, #172]	; (29c0 <spi_config_port+0xc2>)
    2912:	6993      	ldr	r3, [r2, #24]
    2914:	f043 0308 	orr.w	r3, r3, #8
    2918:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    291a:	4c2b      	ldr	r4, [pc, #172]	; (29c8 <spi_config_port+0xca>)
    291c:	2203      	movs	r2, #3
    291e:	2102      	movs	r1, #2
    2920:	4620      	mov	r0, r4
    2922:	f7fe fdab 	bl	147c <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2926:	220b      	movs	r2, #11
    2928:	210d      	movs	r1, #13
    292a:	4620      	mov	r0, r4
    292c:	f7fe fda6 	bl	147c <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2930:	2204      	movs	r2, #4
    2932:	210e      	movs	r1, #14
    2934:	4620      	mov	r0, r4
    2936:	f7fe fda1 	bl	147c <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    293a:	220b      	movs	r2, #11
    293c:	210f      	movs	r1, #15
    293e:	4620      	mov	r0, r4
    2940:	f7fe fd9c 	bl	147c <config_pin>
    2944:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    2946:	b9c9      	cbnz	r1, 297c <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2948:	6993      	ldr	r3, [r2, #24]
    294a:	f043 0304 	orr.w	r3, r3, #4
    294e:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2950:	4c1e      	ldr	r4, [pc, #120]	; (29cc <spi_config_port+0xce>)
    2952:	2203      	movs	r2, #3
    2954:	2104      	movs	r1, #4
    2956:	4620      	mov	r0, r4
    2958:	f7fe fd90 	bl	147c <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    295c:	220b      	movs	r2, #11
    295e:	2105      	movs	r1, #5
    2960:	4620      	mov	r0, r4
    2962:	f7fe fd8b 	bl	147c <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2966:	2204      	movs	r2, #4
    2968:	2106      	movs	r1, #6
    296a:	4620      	mov	r0, r4
    296c:	f7fe fd86 	bl	147c <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2970:	220b      	movs	r2, #11
    2972:	2107      	movs	r1, #7
    2974:	4620      	mov	r0, r4
    2976:	f7fe fd81 	bl	147c <config_pin>
    297a:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    297c:	4a10      	ldr	r2, [pc, #64]	; (29c0 <spi_config_port+0xc2>)
    297e:	6993      	ldr	r3, [r2, #24]
    2980:	f043 030d 	orr.w	r3, r3, #13
    2984:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2986:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    298a:	6853      	ldr	r3, [r2, #4]
    298c:	f043 0301 	orr.w	r3, r3, #1
    2990:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2992:	2203      	movs	r2, #3
    2994:	210f      	movs	r1, #15
    2996:	480d      	ldr	r0, [pc, #52]	; (29cc <spi_config_port+0xce>)
    2998:	f7fe fd70 	bl	147c <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    299c:	4c0a      	ldr	r4, [pc, #40]	; (29c8 <spi_config_port+0xca>)
    299e:	220b      	movs	r2, #11
    29a0:	2103      	movs	r1, #3
    29a2:	4620      	mov	r0, r4
    29a4:	f7fe fd6a 	bl	147c <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    29a8:	2204      	movs	r2, #4
    29aa:	4611      	mov	r1, r2
    29ac:	4620      	mov	r0, r4
    29ae:	f7fe fd65 	bl	147c <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    29b2:	220b      	movs	r2, #11
    29b4:	2105      	movs	r1, #5
    29b6:	4620      	mov	r0, r4
    29b8:	f7fe fd60 	bl	147c <config_pin>
    29bc:	bd10      	pop	{r4, pc}
    29be:	bf00      	nop
    29c0:	40021000 	.word	0x40021000
    29c4:	40013000 	.word	0x40013000
    29c8:	40010c00 	.word	0x40010c00
    29cc:	40010800 	.word	0x40010800

000029d0 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    29d0:	b570      	push	{r4, r5, r6, lr}
    29d2:	4604      	mov	r4, r0
    29d4:	460d      	mov	r5, r1
    29d6:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    29d8:	4619      	mov	r1, r3
    29da:	f7ff ff90 	bl	28fe <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    29de:	4b0c      	ldr	r3, [pc, #48]	; (2a10 <spi_init+0x40>)
    29e0:	429c      	cmp	r4, r3
    29e2:	d00e      	beq.n	2a02 <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    29e4:	4a0b      	ldr	r2, [pc, #44]	; (2a14 <spi_init+0x44>)
    29e6:	69d3      	ldr	r3, [r2, #28]
    29e8:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    29ec:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    29ee:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    29f0:	4629      	mov	r1, r5
    29f2:	4620      	mov	r0, r4
    29f4:	f7ff ff7a 	bl	28ec <spi_baudrate>
	_spi_enable(channel);
    29f8:	6823      	ldr	r3, [r4, #0]
    29fa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    29fe:	6023      	str	r3, [r4, #0]
    2a00:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2a02:	4a04      	ldr	r2, [pc, #16]	; (2a14 <spi_init+0x44>)
    2a04:	6993      	ldr	r3, [r2, #24]
    2a06:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2a0a:	6193      	str	r3, [r2, #24]
    2a0c:	e7ef      	b.n	29ee <spi_init+0x1e>
    2a0e:	bf00      	nop
    2a10:	40013000 	.word	0x40013000
    2a14:	40021000 	.word	0x40021000

00002a18 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2a18:	6883      	ldr	r3, [r0, #8]
    2a1a:	f013 0f02 	tst.w	r3, #2
    2a1e:	d0fb      	beq.n	2a18 <spi_send>
	channel->DR=b;
    2a20:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a22:	6883      	ldr	r3, [r0, #8]
    2a24:	f013 0f01 	tst.w	r3, #1
    2a28:	d0fb      	beq.n	2a22 <spi_send+0xa>
	return (uint8_t)channel->DR;
    2a2a:	68c0      	ldr	r0, [r0, #12]
}
    2a2c:	b2c0      	uxtb	r0, r0
    2a2e:	4770      	bx	lr

00002a30 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2a30:	6883      	ldr	r3, [r0, #8]
    2a32:	f013 0f02 	tst.w	r3, #2
    2a36:	d0fb      	beq.n	2a30 <spi_receive>
	channel->DR=255;
    2a38:	23ff      	movs	r3, #255	; 0xff
    2a3a:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a3c:	6883      	ldr	r3, [r0, #8]
    2a3e:	f013 0f01 	tst.w	r3, #1
    2a42:	d0fb      	beq.n	2a3c <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2a44:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2a46:	b2c0      	uxtb	r0, r0
    2a48:	4770      	bx	lr

00002a4a <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2a4a:	b14a      	cbz	r2, 2a60 <spi_send_block+0x16>
    2a4c:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2a4e:	f811 3b01 	ldrb.w	r3, [r1], #1
    2a52:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2a54:	6883      	ldr	r3, [r0, #8]
    2a56:	f013 0f02 	tst.w	r3, #2
    2a5a:	d0fb      	beq.n	2a54 <spi_send_block+0xa>
	while (count){
    2a5c:	428a      	cmp	r2, r1
    2a5e:	d1f6      	bne.n	2a4e <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2a60:	6883      	ldr	r3, [r0, #8]
    2a62:	f013 0f80 	tst.w	r3, #128	; 0x80
    2a66:	d1fb      	bne.n	2a60 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2a68:	68c3      	ldr	r3, [r0, #12]
    2a6a:	4770      	bx	lr

00002a6c <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2a6c:	b16a      	cbz	r2, 2a8a <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2a6e:	b410      	push	{r4}
    2a70:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2a72:	2400      	movs	r4, #0
    2a74:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2a76:	6883      	ldr	r3, [r0, #8]
    2a78:	f013 0f01 	tst.w	r3, #1
    2a7c:	d0fb      	beq.n	2a76 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2a7e:	68c3      	ldr	r3, [r0, #12]
    2a80:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2a84:	428a      	cmp	r2, r1
    2a86:	d1f5      	bne.n	2a74 <spi_receive_block+0x8>
		count--;
	}
}
    2a88:	bc10      	pop	{r4}
    2a8a:	4770      	bx	lr

00002a8c <reset_mcu>:
	_reset_mcu();
    2a8c:	4a01      	ldr	r2, [pc, #4]	; (2a94 <reset_mcu+0x8>)
    2a8e:	4b02      	ldr	r3, [pc, #8]	; (2a98 <reset_mcu+0xc>)
    2a90:	601a      	str	r2, [r3, #0]
    2a92:	bf00      	nop
    2a94:	05fa0004 	.word	0x05fa0004
    2a98:	e000ed0c 	.word	0xe000ed0c

00002a9c <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2a9c:	b508      	push	{r3, lr}
    2a9e:	460c      	mov	r4, r1
	print(msg);
    2aa0:	f000 f962 	bl	2d68 <print>
	print("\nat address ");
    2aa4:	4813      	ldr	r0, [pc, #76]	; (2af4 <print_fault+0x58>)
    2aa6:	f000 f95f 	bl	2d68 <print>
	if (adr) {
    2aaa:	b9ec      	cbnz	r4, 2ae8 <print_fault+0x4c>
	put_char(CR);
    2aac:	200d      	movs	r0, #13
    2aae:	f000 f8bd 	bl	2c2c <put_char>
	print("\nUFSR=");
    2ab2:	4811      	ldr	r0, [pc, #68]	; (2af8 <print_fault+0x5c>)
    2ab4:	f000 f958 	bl	2d68 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2ab8:	4c10      	ldr	r4, [pc, #64]	; (2afc <print_fault+0x60>)
    2aba:	6820      	ldr	r0, [r4, #0]
    2abc:	2110      	movs	r1, #16
    2abe:	40c8      	lsrs	r0, r1
    2ac0:	f000 f96d 	bl	2d9e <print_int>
	print("\nBFSR=");
    2ac4:	480e      	ldr	r0, [pc, #56]	; (2b00 <print_fault+0x64>)
    2ac6:	f000 f94f 	bl	2d68 <print>
	print_int(CFSR->fsr.busFault,16);
    2aca:	6820      	ldr	r0, [r4, #0]
    2acc:	2110      	movs	r1, #16
    2ace:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2ad2:	f000 f964 	bl	2d9e <print_int>
	print("\nMMFSR=");
    2ad6:	480b      	ldr	r0, [pc, #44]	; (2b04 <print_fault+0x68>)
    2ad8:	f000 f946 	bl	2d68 <print>
	print_int(CFSR->fsr.mmFault,16);
    2adc:	6820      	ldr	r0, [r4, #0]
    2ade:	2110      	movs	r1, #16
    2ae0:	b2c0      	uxtb	r0, r0
    2ae2:	f000 f95c 	bl	2d9e <print_int>
    2ae6:	e7fe      	b.n	2ae6 <print_fault+0x4a>
		print_int(adr,16);
    2ae8:	2110      	movs	r1, #16
    2aea:	4620      	mov	r0, r4
    2aec:	f000 f957 	bl	2d9e <print_int>
    2af0:	e7dc      	b.n	2aac <print_fault+0x10>
    2af2:	bf00      	nop
    2af4:	00003f48 	.word	0x00003f48
    2af8:	00003f58 	.word	0x00003f58
    2afc:	e000ed28 	.word	0xe000ed28
    2b00:	00003f60 	.word	0x00003f60
    2b04:	00003f68 	.word	0x00003f68

00002b08 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2b08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2b0c:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2b0e:	18cb      	adds	r3, r1, r3
    2b10:	9301      	str	r3, [sp, #4]
    2b12:	4299      	cmp	r1, r3
    2b14:	da20      	bge.n	2b58 <draw_char+0x50>
    2b16:	4683      	mov	fp, r0
    2b18:	460e      	mov	r6, r1
    2b1a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2b1c:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2b20:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b22:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2b60 <draw_char+0x58>
		byte=*glyph++;
    2b26:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2b2a:	45bb      	cmp	fp, r7
    2b2c:	da10      	bge.n	2b50 <draw_char+0x48>
    2b2e:	465c      	mov	r4, fp
    2b30:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b32:	ea18 0f05 	tst.w	r8, r5
    2b36:	bf14      	ite	ne
    2b38:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2b3c:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2b40:	4631      	mov	r1, r6
    2b42:	4620      	mov	r0, r4
    2b44:	f7fe fd26 	bl	1594 <gfx_plot>
			mask>>=1;
    2b48:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2b4a:	3401      	adds	r4, #1
    2b4c:	42bc      	cmp	r4, r7
    2b4e:	d1f0      	bne.n	2b32 <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2b50:	3601      	adds	r6, #1
    2b52:	9b01      	ldr	r3, [sp, #4]
    2b54:	429e      	cmp	r6, r3
    2b56:	d1e6      	bne.n	2b26 <draw_char+0x1e>
		}
	}
}
    2b58:	b003      	add	sp, #12
    2b5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2b5e:	bf00      	nop
    2b60:	20000204 	.word	0x20000204

00002b64 <font_color>:
	text_colors[FG]=color&0xf;
    2b64:	f000 000f 	and.w	r0, r0, #15
    2b68:	4b01      	ldr	r3, [pc, #4]	; (2b70 <font_color+0xc>)
    2b6a:	7058      	strb	r0, [r3, #1]
    2b6c:	4770      	bx	lr
    2b6e:	bf00      	nop
    2b70:	20000204 	.word	0x20000204

00002b74 <bg_color>:
	text_colors[BG]=color&0xf;
    2b74:	f000 000f 	and.w	r0, r0, #15
    2b78:	4b01      	ldr	r3, [pc, #4]	; (2b80 <bg_color+0xc>)
    2b7a:	7018      	strb	r0, [r3, #0]
    2b7c:	4770      	bx	lr
    2b7e:	bf00      	nop
    2b80:	20000204 	.word	0x20000204

00002b84 <select_font>:
	font=font_id;
    2b84:	4b01      	ldr	r3, [pc, #4]	; (2b8c <select_font+0x8>)
    2b86:	7098      	strb	r0, [r3, #2]
    2b88:	4770      	bx	lr
    2b8a:	bf00      	nop
    2b8c:	20000204 	.word	0x20000204

00002b90 <get_font>:
}
    2b90:	4b01      	ldr	r3, [pc, #4]	; (2b98 <get_font+0x8>)
    2b92:	7898      	ldrb	r0, [r3, #2]
    2b94:	4770      	bx	lr
    2b96:	bf00      	nop
    2b98:	20000204 	.word	0x20000204

00002b9c <new_line>:
void new_line(){
    2b9c:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2b9e:	4b21      	ldr	r3, [pc, #132]	; (2c24 <new_line+0x88>)
    2ba0:	781b      	ldrb	r3, [r3, #0]
    2ba2:	2b00      	cmp	r3, #0
    2ba4:	d138      	bne.n	2c18 <new_line+0x7c>
		xpos=0;
    2ba6:	2200      	movs	r2, #0
    2ba8:	4b1e      	ldr	r3, [pc, #120]	; (2c24 <new_line+0x88>)
    2baa:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2bac:	f000 fbf4 	bl	3398 <get_video_params>
		switch (font){
    2bb0:	4b1d      	ldr	r3, [pc, #116]	; (2c28 <new_line+0x8c>)
    2bb2:	789b      	ldrb	r3, [r3, #2]
    2bb4:	2b01      	cmp	r3, #1
    2bb6:	d011      	beq.n	2bdc <new_line+0x40>
    2bb8:	b113      	cbz	r3, 2bc0 <new_line+0x24>
    2bba:	2b02      	cmp	r3, #2
    2bbc:	d01d      	beq.n	2bfa <new_line+0x5e>
    2bbe:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2bc0:	4b18      	ldr	r3, [pc, #96]	; (2c24 <new_line+0x88>)
    2bc2:	789b      	ldrb	r3, [r3, #2]
    2bc4:	1d99      	adds	r1, r3, #6
    2bc6:	89c2      	ldrh	r2, [r0, #14]
    2bc8:	3a05      	subs	r2, #5
    2bca:	4291      	cmp	r1, r2
    2bcc:	dc02      	bgt.n	2bd4 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2bce:	4a15      	ldr	r2, [pc, #84]	; (2c24 <new_line+0x88>)
    2bd0:	7091      	strb	r1, [r2, #2]
    2bd2:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2bd4:	2006      	movs	r0, #6
    2bd6:	f7fe fd1b 	bl	1610 <gfx_scroll_up>
    2bda:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2bdc:	4b11      	ldr	r3, [pc, #68]	; (2c24 <new_line+0x88>)
    2bde:	789b      	ldrb	r3, [r3, #2]
    2be0:	f103 010a 	add.w	r1, r3, #10
    2be4:	89c2      	ldrh	r2, [r0, #14]
    2be6:	3a09      	subs	r2, #9
    2be8:	4291      	cmp	r1, r2
    2bea:	dc02      	bgt.n	2bf2 <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2bec:	4a0d      	ldr	r2, [pc, #52]	; (2c24 <new_line+0x88>)
    2bee:	7091      	strb	r1, [r2, #2]
    2bf0:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2bf2:	200a      	movs	r0, #10
    2bf4:	f7fe fd0c 	bl	1610 <gfx_scroll_up>
    2bf8:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2bfa:	4b0a      	ldr	r3, [pc, #40]	; (2c24 <new_line+0x88>)
    2bfc:	789b      	ldrb	r3, [r3, #2]
    2bfe:	f103 0108 	add.w	r1, r3, #8
    2c02:	89c2      	ldrh	r2, [r0, #14]
    2c04:	3a07      	subs	r2, #7
    2c06:	4291      	cmp	r1, r2
    2c08:	dc02      	bgt.n	2c10 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2c0a:	4a06      	ldr	r2, [pc, #24]	; (2c24 <new_line+0x88>)
    2c0c:	7091      	strb	r1, [r2, #2]
    2c0e:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2c10:	2008      	movs	r0, #8
    2c12:	f7fe fcfd 	bl	1610 <gfx_scroll_up>
    2c16:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    2c18:	210a      	movs	r1, #10
    2c1a:	2000      	movs	r0, #0
    2c1c:	f000 fd2a 	bl	3674 <usart_putc>
    2c20:	bd08      	pop	{r3, pc}
    2c22:	bf00      	nop
    2c24:	20000698 	.word	0x20000698
    2c28:	20000204 	.word	0x20000204

00002c2c <put_char>:

void put_char(uint8_t c){
    2c2c:	b530      	push	{r4, r5, lr}
    2c2e:	b083      	sub	sp, #12
	if (console==LOCAL){
    2c30:	4b2e      	ldr	r3, [pc, #184]	; (2cec <put_char+0xc0>)
    2c32:	781b      	ldrb	r3, [r3, #0]
    2c34:	2b00      	cmp	r3, #0
    2c36:	d153      	bne.n	2ce0 <put_char+0xb4>
		switch(font){
    2c38:	4b2d      	ldr	r3, [pc, #180]	; (2cf0 <put_char+0xc4>)
    2c3a:	789b      	ldrb	r3, [r3, #2]
    2c3c:	2b01      	cmp	r3, #1
    2c3e:	d036      	beq.n	2cae <put_char+0x82>
    2c40:	b1e3      	cbz	r3, 2c7c <put_char+0x50>
    2c42:	2b02      	cmp	r3, #2
    2c44:	d150      	bne.n	2ce8 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2c46:	f1a0 0320 	sub.w	r3, r0, #32
    2c4a:	b2db      	uxtb	r3, r3
    2c4c:	2b64      	cmp	r3, #100	; 0x64
    2c4e:	d84b      	bhi.n	2ce8 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2c50:	4c26      	ldr	r4, [pc, #152]	; (2cec <put_char+0xc0>)
    2c52:	78a1      	ldrb	r1, [r4, #2]
    2c54:	7865      	ldrb	r5, [r4, #1]
    2c56:	3820      	subs	r0, #32
    2c58:	4b26      	ldr	r3, [pc, #152]	; (2cf4 <put_char+0xc8>)
    2c5a:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2c5e:	9300      	str	r3, [sp, #0]
    2c60:	2308      	movs	r3, #8
    2c62:	2206      	movs	r2, #6
    2c64:	4628      	mov	r0, r5
    2c66:	f7ff ff4f 	bl	2b08 <draw_char>
				xpos+=CHAR_WIDTH;
    2c6a:	7863      	ldrb	r3, [r4, #1]
    2c6c:	3306      	adds	r3, #6
    2c6e:	b2db      	uxtb	r3, r3
    2c70:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2c72:	2baf      	cmp	r3, #175	; 0xaf
    2c74:	d938      	bls.n	2ce8 <put_char+0xbc>
					new_line();
    2c76:	f7ff ff91 	bl	2b9c <new_line>
    2c7a:	e035      	b.n	2ce8 <put_char+0xbc>
			if (c<16){
    2c7c:	280f      	cmp	r0, #15
    2c7e:	d833      	bhi.n	2ce8 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2c80:	4c1a      	ldr	r4, [pc, #104]	; (2cec <put_char+0xc0>)
    2c82:	78a1      	ldrb	r1, [r4, #2]
    2c84:	7865      	ldrb	r5, [r4, #1]
    2c86:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2c8a:	4b1b      	ldr	r3, [pc, #108]	; (2cf8 <put_char+0xcc>)
    2c8c:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2c90:	9300      	str	r3, [sp, #0]
    2c92:	2306      	movs	r3, #6
    2c94:	2204      	movs	r2, #4
    2c96:	4628      	mov	r0, r5
    2c98:	f7ff ff36 	bl	2b08 <draw_char>
				xpos+=SHEX_WIDTH;
    2c9c:	7863      	ldrb	r3, [r4, #1]
    2c9e:	3304      	adds	r3, #4
    2ca0:	b2db      	uxtb	r3, r3
    2ca2:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2ca4:	2bb1      	cmp	r3, #177	; 0xb1
    2ca6:	d91f      	bls.n	2ce8 <put_char+0xbc>
					new_line();
    2ca8:	f7ff ff78 	bl	2b9c <new_line>
    2cac:	e01c      	b.n	2ce8 <put_char+0xbc>
			if (c<16){
    2cae:	280f      	cmp	r0, #15
    2cb0:	d81a      	bhi.n	2ce8 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2cb2:	4c0e      	ldr	r4, [pc, #56]	; (2cec <put_char+0xc0>)
    2cb4:	78a1      	ldrb	r1, [r4, #2]
    2cb6:	7865      	ldrb	r5, [r4, #1]
    2cb8:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2cbc:	4b0f      	ldr	r3, [pc, #60]	; (2cfc <put_char+0xd0>)
    2cbe:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2cc2:	9300      	str	r3, [sp, #0]
    2cc4:	230a      	movs	r3, #10
    2cc6:	2208      	movs	r2, #8
    2cc8:	4628      	mov	r0, r5
    2cca:	f7ff ff1d 	bl	2b08 <draw_char>
				xpos+=LHEX_WIDTH;
    2cce:	7863      	ldrb	r3, [r4, #1]
    2cd0:	3308      	adds	r3, #8
    2cd2:	b2db      	uxtb	r3, r3
    2cd4:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2cd6:	2bad      	cmp	r3, #173	; 0xad
    2cd8:	d906      	bls.n	2ce8 <put_char+0xbc>
					new_line();
    2cda:	f7ff ff5f 	bl	2b9c <new_line>
    2cde:	e003      	b.n	2ce8 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2ce0:	4601      	mov	r1, r0
    2ce2:	2000      	movs	r0, #0
    2ce4:	f000 fcc6 	bl	3674 <usart_putc>
	}
}
    2ce8:	b003      	add	sp, #12
    2cea:	bd30      	pop	{r4, r5, pc}
    2cec:	20000698 	.word	0x20000698
    2cf0:	20000204 	.word	0x20000204
    2cf4:	000037c4 	.word	0x000037c4
    2cf8:	00003b8c 	.word	0x00003b8c
    2cfc:	00003aec 	.word	0x00003aec

00002d00 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2d00:	4b01      	ldr	r3, [pc, #4]	; (2d08 <set_cursor+0x8>)
    2d02:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2d04:	7099      	strb	r1, [r3, #2]
    2d06:	4770      	bx	lr
    2d08:	20000698 	.word	0x20000698

00002d0c <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2d0c:	4b03      	ldr	r3, [pc, #12]	; (2d1c <get_cursor+0x10>)
    2d0e:	785a      	ldrb	r2, [r3, #1]
    2d10:	7898      	ldrb	r0, [r3, #2]
    2d12:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2d16:	b280      	uxth	r0, r0
    2d18:	4770      	bx	lr
    2d1a:	bf00      	nop
    2d1c:	20000698 	.word	0x20000698

00002d20 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2d20:	4b0f      	ldr	r3, [pc, #60]	; (2d60 <cursor_left+0x40>)
    2d22:	789b      	ldrb	r3, [r3, #2]
    2d24:	2b01      	cmp	r3, #1
    2d26:	d00b      	beq.n	2d40 <cursor_left+0x20>
    2d28:	b113      	cbz	r3, 2d30 <cursor_left+0x10>
    2d2a:	2b02      	cmp	r3, #2
    2d2c:	d010      	beq.n	2d50 <cursor_left+0x30>
    2d2e:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2d30:	4b0c      	ldr	r3, [pc, #48]	; (2d64 <cursor_left+0x44>)
    2d32:	785b      	ldrb	r3, [r3, #1]
    2d34:	2b04      	cmp	r3, #4
    2d36:	d412      	bmi.n	2d5e <cursor_left+0x3e>
    2d38:	3b04      	subs	r3, #4
    2d3a:	4a0a      	ldr	r2, [pc, #40]	; (2d64 <cursor_left+0x44>)
    2d3c:	7053      	strb	r3, [r2, #1]
    2d3e:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2d40:	4b08      	ldr	r3, [pc, #32]	; (2d64 <cursor_left+0x44>)
    2d42:	785b      	ldrb	r3, [r3, #1]
    2d44:	2b08      	cmp	r3, #8
    2d46:	d40a      	bmi.n	2d5e <cursor_left+0x3e>
    2d48:	3b08      	subs	r3, #8
    2d4a:	4a06      	ldr	r2, [pc, #24]	; (2d64 <cursor_left+0x44>)
    2d4c:	7053      	strb	r3, [r2, #1]
    2d4e:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2d50:	4b04      	ldr	r3, [pc, #16]	; (2d64 <cursor_left+0x44>)
    2d52:	785b      	ldrb	r3, [r3, #1]
    2d54:	2b06      	cmp	r3, #6
    2d56:	d402      	bmi.n	2d5e <cursor_left+0x3e>
    2d58:	3b06      	subs	r3, #6
    2d5a:	4a02      	ldr	r2, [pc, #8]	; (2d64 <cursor_left+0x44>)
    2d5c:	7053      	strb	r3, [r2, #1]
    2d5e:	4770      	bx	lr
    2d60:	20000204 	.word	0x20000204
    2d64:	20000698 	.word	0x20000698

00002d68 <print>:
void print(const char* str){
    2d68:	b510      	push	{r4, lr}
    2d6a:	4604      	mov	r4, r0
    while ((c=*str++)){
    2d6c:	e001      	b.n	2d72 <print+0xa>
            new_line();
    2d6e:	f7ff ff15 	bl	2b9c <new_line>
    while ((c=*str++)){
    2d72:	f814 0b01 	ldrb.w	r0, [r4], #1
    2d76:	b158      	cbz	r0, 2d90 <print+0x28>
        switch(c){
    2d78:	280a      	cmp	r0, #10
    2d7a:	d0f8      	beq.n	2d6e <print+0x6>
    2d7c:	280d      	cmp	r0, #13
    2d7e:	d0f6      	beq.n	2d6e <print+0x6>
    2d80:	2808      	cmp	r0, #8
    2d82:	d002      	beq.n	2d8a <print+0x22>
            put_char(c);
    2d84:	f7ff ff52 	bl	2c2c <put_char>
    2d88:	e7f3      	b.n	2d72 <print+0xa>
            cursor_left();    
    2d8a:	f7ff ffc9 	bl	2d20 <cursor_left>
            break;
    2d8e:	e7f0      	b.n	2d72 <print+0xa>
}
    2d90:	bd10      	pop	{r4, pc}

00002d92 <println>:
void println(const char *text){
    2d92:	b508      	push	{r3, lr}
	print(text);
    2d94:	f7ff ffe8 	bl	2d68 <print>
	new_line();
    2d98:	f7ff ff00 	bl	2b9c <new_line>
    2d9c:	bd08      	pop	{r3, pc}

00002d9e <print_int>:
void print_int(int i,uint8_t base){
    2d9e:	b530      	push	{r4, r5, lr}
    2da0:	b085      	sub	sp, #20
    fmt[15]=0;
    2da2:	2300      	movs	r3, #0
    2da4:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2da8:	2320      	movs	r3, #32
    2daa:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2dae:	1e02      	subs	r2, r0, #0
        i=-i;
    2db0:	bfba      	itte	lt
    2db2:	4252      	neglt	r2, r2
        sign=1;
    2db4:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2db6:	2500      	movge	r5, #0
    while (idx>1 && i){
    2db8:	b1aa      	cbz	r2, 2de6 <print_int+0x48>
    2dba:	f10d 040e 	add.w	r4, sp, #14
    2dbe:	200e      	movs	r0, #14
        d=i%base;
    2dc0:	fb92 f3f1 	sdiv	r3, r2, r1
    2dc4:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2dc8:	2b09      	cmp	r3, #9
    2dca:	bfc8      	it	gt
    2dcc:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2dce:	3801      	subs	r0, #1
    2dd0:	3330      	adds	r3, #48	; 0x30
    2dd2:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2dd6:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2dda:	2801      	cmp	r0, #1
    2ddc:	d007      	beq.n	2dee <print_int+0x50>
    2dde:	2a00      	cmp	r2, #0
    2de0:	d1ee      	bne.n	2dc0 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2de2:	280e      	cmp	r0, #14
    2de4:	d103      	bne.n	2dee <print_int+0x50>
    2de6:	2330      	movs	r3, #48	; 0x30
    2de8:	f88d 300d 	strb.w	r3, [sp, #13]
    2dec:	200d      	movs	r0, #13
    if (base==10 && sign){
    2dee:	290a      	cmp	r1, #10
    2df0:	d006      	beq.n	2e00 <print_int+0x62>
    }else if (base==16){
    2df2:	2910      	cmp	r1, #16
    2df4:	d00d      	beq.n	2e12 <print_int+0x74>
    print(&fmt[idx]);
    2df6:	4468      	add	r0, sp
    2df8:	f7ff ffb6 	bl	2d68 <print>
}
    2dfc:	b005      	add	sp, #20
    2dfe:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2e00:	2d00      	cmp	r5, #0
    2e02:	d0f8      	beq.n	2df6 <print_int+0x58>
        fmt[--idx]='-';
    2e04:	3801      	subs	r0, #1
    2e06:	ab04      	add	r3, sp, #16
    2e08:	4403      	add	r3, r0
    2e0a:	222d      	movs	r2, #45	; 0x2d
    2e0c:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e10:	e7f1      	b.n	2df6 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2e12:	f010 0f01 	tst.w	r0, #1
    2e16:	d005      	beq.n	2e24 <print_int+0x86>
    2e18:	3801      	subs	r0, #1
    2e1a:	ab04      	add	r3, sp, #16
    2e1c:	4403      	add	r3, r0
    2e1e:	2230      	movs	r2, #48	; 0x30
    2e20:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2e24:	3801      	subs	r0, #1
    2e26:	ab04      	add	r3, sp, #16
    2e28:	4403      	add	r3, r0
    2e2a:	2224      	movs	r2, #36	; 0x24
    2e2c:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e30:	e7e1      	b.n	2df6 <print_int+0x58>

00002e32 <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2e32:	b508      	push	{r3, lr}
	print("press button");
    2e34:	4801      	ldr	r0, [pc, #4]	; (2e3c <prompt_btn+0xa>)
    2e36:	f7ff ff97 	bl	2d68 <print>
    2e3a:	bd08      	pop	{r3, pc}
    2e3c:	00003fb4 	.word	0x00003fb4

00002e40 <clear_screen>:
}

void clear_screen(){
    2e40:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2e42:	4b07      	ldr	r3, [pc, #28]	; (2e60 <clear_screen+0x20>)
    2e44:	781b      	ldrb	r3, [r3, #0]
    2e46:	b123      	cbz	r3, 2e52 <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    2e48:	210c      	movs	r1, #12
    2e4a:	2000      	movs	r0, #0
    2e4c:	f000 fc12 	bl	3674 <usart_putc>
    2e50:	bd08      	pop	{r3, pc}
		gfx_cls();
    2e52:	f7fe fbc9 	bl	15e8 <gfx_cls>
		xpos=0;
    2e56:	4b02      	ldr	r3, [pc, #8]	; (2e60 <clear_screen+0x20>)
    2e58:	2200      	movs	r2, #0
    2e5a:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2e5c:	709a      	strb	r2, [r3, #2]
    2e5e:	bd08      	pop	{r3, pc}
    2e60:	20000698 	.word	0x20000698

00002e64 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2e64:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2e66:	2800      	cmp	r0, #0
    2e68:	bf14      	ite	ne
    2e6a:	260f      	movne	r6, #15
    2e6c:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e6e:	4b09      	ldr	r3, [pc, #36]	; (2e94 <show_cursor+0x30>)
    2e70:	785c      	ldrb	r4, [r3, #1]
    2e72:	1da3      	adds	r3, r4, #6
    2e74:	429c      	cmp	r4, r3
    2e76:	da0b      	bge.n	2e90 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2e78:	4d06      	ldr	r5, [pc, #24]	; (2e94 <show_cursor+0x30>)
    2e7a:	78a9      	ldrb	r1, [r5, #2]
    2e7c:	4632      	mov	r2, r6
    2e7e:	3107      	adds	r1, #7
    2e80:	4620      	mov	r0, r4
    2e82:	f7fe fb87 	bl	1594 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e86:	3401      	adds	r4, #1
    2e88:	786b      	ldrb	r3, [r5, #1]
    2e8a:	3306      	adds	r3, #6
    2e8c:	42a3      	cmp	r3, r4
    2e8e:	dcf4      	bgt.n	2e7a <show_cursor+0x16>
    2e90:	bd70      	pop	{r4, r5, r6, pc}
    2e92:	bf00      	nop
    2e94:	20000698 	.word	0x20000698

00002e98 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2e98:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2e9c:	f000 fa7c 	bl	3398 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ea0:	4b0c      	ldr	r3, [pc, #48]	; (2ed4 <clear_line+0x3c>)
    2ea2:	789c      	ldrb	r4, [r3, #2]
    2ea4:	f104 0308 	add.w	r3, r4, #8
    2ea8:	429c      	cmp	r4, r3
    2eaa:	da10      	bge.n	2ece <clear_line+0x36>
    2eac:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2eae:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2ed8 <clear_line+0x40>
    2eb2:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2eb4:	4e07      	ldr	r6, [pc, #28]	; (2ed4 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2eb6:	7a28      	ldrb	r0, [r5, #8]
    2eb8:	463a      	mov	r2, r7
    2eba:	4601      	mov	r1, r0
    2ebc:	fb04 8000 	mla	r0, r4, r0, r8
    2ec0:	f7fe fa33 	bl	132a <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ec4:	3401      	adds	r4, #1
    2ec6:	78b3      	ldrb	r3, [r6, #2]
    2ec8:	3308      	adds	r3, #8
    2eca:	42a3      	cmp	r3, r4
    2ecc:	dcf3      	bgt.n	2eb6 <clear_line+0x1e>
    2ece:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2ed2:	bf00      	nop
    2ed4:	20000698 	.word	0x20000698
    2ed8:	20002710 	.word	0x20002710

00002edc <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    2edc:	4b01      	ldr	r3, [pc, #4]	; (2ee4 <select_console+0x8>)
    2ede:	7018      	strb	r0, [r3, #0]
    2ee0:	4770      	bx	lr
    2ee2:	bf00      	nop
    2ee4:	20000698 	.word	0x20000698

00002ee8 <get_char>:
}

//read a character from serial port
char get_char(){
    2ee8:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    2eea:	2400      	movs	r4, #0
    2eec:	4620      	mov	r0, r4
    2eee:	f000 fb8f 	bl	3610 <usart_getc>
    2ef2:	2800      	cmp	r0, #0
    2ef4:	d0fa      	beq.n	2eec <get_char+0x4>
	return c;
}
    2ef6:	bd10      	pop	{r4, pc}

00002ef8 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2ef8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2efc:	4c31      	ldr	r4, [pc, #196]	; (2fc4 <tvout_init+0xcc>)
    2efe:	4b32      	ldr	r3, [pc, #200]	; (2fc8 <tvout_init+0xd0>)
    2f00:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2f02:	4a32      	ldr	r2, [pc, #200]	; (2fcc <tvout_init+0xd4>)
    2f04:	4b32      	ldr	r3, [pc, #200]	; (2fd0 <tvout_init+0xd8>)
    2f06:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2f08:	220a      	movs	r2, #10
    2f0a:	2108      	movs	r1, #8
    2f0c:	4620      	mov	r0, r4
    2f0e:	f7fe fab5 	bl	147c <config_pin>
    PORTA->ODR=0;
    2f12:	2500      	movs	r5, #0
    2f14:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2f16:	4e2f      	ldr	r6, [pc, #188]	; (2fd4 <tvout_init+0xdc>)
    2f18:	69b3      	ldr	r3, [r6, #24]
    2f1a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2f1e:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2f20:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2f24:	f04f 0878 	mov.w	r8, #120	; 0x78
    2f28:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2f2c:	2301      	movs	r3, #1
    2f2e:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2f30:	2784      	movs	r7, #132	; 0x84
    2f32:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2f34:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2f38:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2f3a:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2f3e:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    2f40:	f240 1365 	movw	r3, #357	; 0x165
    2f44:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2f46:	6963      	ldr	r3, [r4, #20]
    2f48:	f043 0301 	orr.w	r3, r3, #1
    2f4c:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2f4e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2f52:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2f54:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2f56:	68e3      	ldr	r3, [r4, #12]
    2f58:	f043 0301 	orr.w	r3, r3, #1
    2f5c:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2f5e:	4629      	mov	r1, r5
    2f60:	2019      	movs	r0, #25
    2f62:	f7ff f867 	bl	2034 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2f66:	4629      	mov	r1, r5
    2f68:	201b      	movs	r0, #27
    2f6a:	f7ff f863 	bl	2034 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2f6e:	2019      	movs	r0, #25
    2f70:	f7ff f800 	bl	1f74 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2f74:	201b      	movs	r0, #27
    2f76:	f7fe fffd 	bl	1f74 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2f7a:	6823      	ldr	r3, [r4, #0]
    2f7c:	f043 0301 	orr.w	r3, r3, #1
    2f80:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2f82:	220a      	movs	r2, #10
    2f84:	4629      	mov	r1, r5
    2f86:	4814      	ldr	r0, [pc, #80]	; (2fd8 <tvout_init+0xe0>)
    2f88:	f7fe fa78 	bl	147c <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2f8c:	69f3      	ldr	r3, [r6, #28]
    2f8e:	f043 0302 	orr.w	r3, r3, #2
    2f92:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2f94:	4b11      	ldr	r3, [pc, #68]	; (2fdc <tvout_init+0xe4>)
    2f96:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2f9a:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2f9c:	2213      	movs	r2, #19
    2f9e:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2fa0:	220a      	movs	r2, #10
    2fa2:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2fa4:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2fa6:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2faa:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2fac:	695a      	ldr	r2, [r3, #20]
    2fae:	f042 0201 	orr.w	r2, r2, #1
    2fb2:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2fb4:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2fb6:	681a      	ldr	r2, [r3, #0]
    2fb8:	f042 0201 	orr.w	r2, r2, #1
    2fbc:	601a      	str	r2, [r3, #0]
    2fbe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2fc2:	bf00      	nop
    2fc4:	40010800 	.word	0x40010800
    2fc8:	88883333 	.word	0x88883333
    2fcc:	84484444 	.word	0x84484444
    2fd0:	40010804 	.word	0x40010804
    2fd4:	40021000 	.word	0x40021000
    2fd8:	40010c00 	.word	0x40010c00
    2fdc:	40000400 	.word	0x40000400

00002fe0 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2fe0:	4668      	mov	r0, sp
    2fe2:	f020 0107 	bic.w	r1, r0, #7
    2fe6:	468d      	mov	sp, r1
    2fe8:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    2fea:	4a2f      	ldr	r2, [pc, #188]	; (30a8 <TV_OUT_handler+0xc8>)
    2fec:	6a13      	ldr	r3, [r2, #32]
    2fee:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2ff2:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    2ff4:	492d      	ldr	r1, [pc, #180]	; (30ac <TV_OUT_handler+0xcc>)
    2ff6:	f240 2209 	movw	r2, #521	; 0x209
    2ffa:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    2ffc:	4293      	cmp	r3, r2
    2ffe:	d9fc      	bls.n	2ffa <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    3000:	4a29      	ldr	r2, [pc, #164]	; (30a8 <TV_OUT_handler+0xc8>)
    3002:	6a13      	ldr	r3, [r2, #32]
    3004:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3008:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    300a:	4b29      	ldr	r3, [pc, #164]	; (30b0 <TV_OUT_handler+0xd0>)
    300c:	881d      	ldrh	r5, [r3, #0]
    300e:	b2ad      	uxth	r5, r5
    3010:	4b28      	ldr	r3, [pc, #160]	; (30b4 <TV_OUT_handler+0xd4>)
    3012:	7818      	ldrb	r0, [r3, #0]
    3014:	785a      	ldrb	r2, [r3, #1]
    3016:	fb95 f5f2 	sdiv	r5, r5, r2
    301a:	4a27      	ldr	r2, [pc, #156]	; (30b8 <TV_OUT_handler+0xd8>)
    301c:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    3020:	8859      	ldrh	r1, [r3, #2]
    3022:	4a22      	ldr	r2, [pc, #136]	; (30ac <TV_OUT_handler+0xcc>)
    3024:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3026:	428b      	cmp	r3, r1
    3028:	d3fc      	bcc.n	3024 <TV_OUT_handler+0x44>
    _jitter_cancel();
    302a:	4b24      	ldr	r3, [pc, #144]	; (30bc <TV_OUT_handler+0xdc>)
    302c:	461a      	mov	r2, r3
    302e:	6812      	ldr	r2, [r2, #0]
    3030:	f002 0207 	and.w	r2, r2, #7
    3034:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3038:	4497      	add	pc, r2
    303a:	bf00      	nop
    303c:	bf00      	nop
    303e:	bf00      	nop
    3040:	bf00      	nop
    3042:	bf00      	nop
    3044:	bf00      	nop
    3046:	bf00      	nop
    3048:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    304a:	4a17      	ldr	r2, [pc, #92]	; (30a8 <TV_OUT_handler+0xc8>)
    304c:	6a13      	ldr	r3, [r2, #32]
    304e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3052:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    3054:	b1b0      	cbz	r0, 3084 <TV_OUT_handler+0xa4>
    3056:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3058:	4819      	ldr	r0, [pc, #100]	; (30c0 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    305a:	4916      	ldr	r1, [pc, #88]	; (30b4 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    305c:	781a      	ldrb	r2, [r3, #0]
    305e:	0912      	lsrs	r2, r2, #4
    3060:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    3062:	790c      	ldrb	r4, [r1, #4]
    3064:	4622      	mov	r2, r4
    3066:	3a01      	subs	r2, #1
    3068:	d1fd      	bne.n	3066 <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    306a:	f813 2b01 	ldrb.w	r2, [r3], #1
    306e:	f002 020f 	and.w	r2, r2, #15
    3072:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    3074:	790c      	ldrb	r4, [r1, #4]
    3076:	4622      	mov	r2, r4
    3078:	3a01      	subs	r2, #1
    307a:	d1fd      	bne.n	3078 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    307c:	1b5c      	subs	r4, r3, r5
    307e:	780a      	ldrb	r2, [r1, #0]
    3080:	4294      	cmp	r4, r2
    3082:	d3eb      	bcc.n	305c <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    3084:	2200      	movs	r2, #0
    3086:	4b0f      	ldr	r3, [pc, #60]	; (30c4 <TV_OUT_handler+0xe4>)
    3088:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    308a:	4a07      	ldr	r2, [pc, #28]	; (30a8 <TV_OUT_handler+0xc8>)
    308c:	6a13      	ldr	r3, [r2, #32]
    308e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3092:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    3094:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    3098:	6913      	ldr	r3, [r2, #16]
    309a:	f023 0304 	bic.w	r3, r3, #4
    309e:	6113      	str	r3, [r2, #16]
}
    30a0:	bc31      	pop	{r0, r4, r5}
    30a2:	4685      	mov	sp, r0
    30a4:	4770      	bx	lr
    30a6:	bf00      	nop
    30a8:	40000400 	.word	0x40000400
    30ac:	40012c00 	.word	0x40012c00
    30b0:	2000069c 	.word	0x2000069c
    30b4:	20000208 	.word	0x20000208
    30b8:	20002710 	.word	0x20002710
    30bc:	40012c24 	.word	0x40012c24
    30c0:	4001080c 	.word	0x4001080c
    30c4:	40010800 	.word	0x40010800

000030c8 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    30c8:	4668      	mov	r0, sp
    30ca:	f020 0107 	bic.w	r1, r0, #7
    30ce:	468d      	mov	sp, r1
    30d0:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    30d2:	4a8e      	ldr	r2, [pc, #568]	; (330c <TV_SYNC_handler+0x244>)
    30d4:	8853      	ldrh	r3, [r2, #2]
    30d6:	3301      	adds	r3, #1
    30d8:	b29b      	uxth	r3, r3
    30da:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    30dc:	498c      	ldr	r1, [pc, #560]	; (3310 <TV_SYNC_handler+0x248>)
    30de:	680b      	ldr	r3, [r1, #0]
    30e0:	3301      	adds	r3, #1
    30e2:	600b      	str	r3, [r1, #0]
    switch (task){
    30e4:	8893      	ldrh	r3, [r2, #4]
    30e6:	b29b      	uxth	r3, r3
    30e8:	2b09      	cmp	r3, #9
    30ea:	f200 8081 	bhi.w	31f0 <TV_SYNC_handler+0x128>
    30ee:	e8df f013 	tbh	[pc, r3, lsl #1]
    30f2:	000a      	.short	0x000a
    30f4:	0048002a 	.word	0x0048002a
    30f8:	00880069 	.word	0x00880069
    30fc:	00a50090 	.word	0x00a50090
    3100:	00d100b4 	.word	0x00d100b4
    3104:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    3106:	4b81      	ldr	r3, [pc, #516]	; (330c <TV_SYNC_handler+0x244>)
    3108:	881b      	ldrh	r3, [r3, #0]
    310a:	b29b      	uxth	r3, r3
    310c:	b17b      	cbz	r3, 312e <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    310e:	4a7f      	ldr	r2, [pc, #508]	; (330c <TV_SYNC_handler+0x244>)
    3110:	8813      	ldrh	r3, [r2, #0]
    3112:	3301      	adds	r3, #1
    3114:	b29b      	uxth	r3, r3
    3116:	8013      	strh	r3, [r2, #0]
    3118:	8813      	ldrh	r3, [r2, #0]
    311a:	b29b      	uxth	r3, r3
    311c:	2b06      	cmp	r3, #6
    311e:	d167      	bne.n	31f0 <TV_SYNC_handler+0x128>
    3120:	2300      	movs	r3, #0
    3122:	8013      	strh	r3, [r2, #0]
    3124:	8893      	ldrh	r3, [r2, #4]
    3126:	3301      	adds	r3, #1
    3128:	b29b      	uxth	r3, r3
    312a:	8093      	strh	r3, [r2, #4]
    312c:	e060      	b.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    312e:	4b79      	ldr	r3, [pc, #484]	; (3314 <TV_SYNC_handler+0x24c>)
    3130:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3134:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3136:	22a4      	movs	r2, #164	; 0xa4
    3138:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    313a:	4a74      	ldr	r2, [pc, #464]	; (330c <TV_SYNC_handler+0x244>)
    313c:	8813      	ldrh	r3, [r2, #0]
    313e:	3301      	adds	r3, #1
    3140:	b29b      	uxth	r3, r3
    3142:	8013      	strh	r3, [r2, #0]
    3144:	e054      	b.n	31f0 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    3146:	4b71      	ldr	r3, [pc, #452]	; (330c <TV_SYNC_handler+0x244>)
    3148:	881b      	ldrh	r3, [r3, #0]
    314a:	b29b      	uxth	r3, r3
    314c:	b17b      	cbz	r3, 316e <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    314e:	4a6f      	ldr	r2, [pc, #444]	; (330c <TV_SYNC_handler+0x244>)
    3150:	8813      	ldrh	r3, [r2, #0]
    3152:	3301      	adds	r3, #1
    3154:	b29b      	uxth	r3, r3
    3156:	8013      	strh	r3, [r2, #0]
    3158:	8813      	ldrh	r3, [r2, #0]
    315a:	b29b      	uxth	r3, r3
    315c:	2b06      	cmp	r3, #6
    315e:	d147      	bne.n	31f0 <TV_SYNC_handler+0x128>
    3160:	2300      	movs	r3, #0
    3162:	8013      	strh	r3, [r2, #0]
    3164:	8893      	ldrh	r3, [r2, #4]
    3166:	3301      	adds	r3, #1
    3168:	b29b      	uxth	r3, r3
    316a:	8093      	strh	r3, [r2, #4]
    316c:	e040      	b.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    316e:	f240 7294 	movw	r2, #1940	; 0x794
    3172:	4b68      	ldr	r3, [pc, #416]	; (3314 <TV_SYNC_handler+0x24c>)
    3174:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3176:	4a65      	ldr	r2, [pc, #404]	; (330c <TV_SYNC_handler+0x244>)
    3178:	8813      	ldrh	r3, [r2, #0]
    317a:	3301      	adds	r3, #1
    317c:	b29b      	uxth	r3, r3
    317e:	8013      	strh	r3, [r2, #0]
    3180:	e036      	b.n	31f0 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    3182:	4b62      	ldr	r3, [pc, #392]	; (330c <TV_SYNC_handler+0x244>)
    3184:	881b      	ldrh	r3, [r3, #0]
    3186:	b29b      	uxth	r3, r3
    3188:	b153      	cbz	r3, 31a0 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    318a:	4b60      	ldr	r3, [pc, #384]	; (330c <TV_SYNC_handler+0x244>)
    318c:	881b      	ldrh	r3, [r3, #0]
    318e:	b29b      	uxth	r3, r3
    3190:	2b06      	cmp	r3, #6
    3192:	d00e      	beq.n	31b2 <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    3194:	4a5d      	ldr	r2, [pc, #372]	; (330c <TV_SYNC_handler+0x244>)
    3196:	8813      	ldrh	r3, [r2, #0]
    3198:	3301      	adds	r3, #1
    319a:	b29b      	uxth	r3, r3
    319c:	8013      	strh	r3, [r2, #0]
            break;
    319e:	e027      	b.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    31a0:	22a4      	movs	r2, #164	; 0xa4
    31a2:	4b5c      	ldr	r3, [pc, #368]	; (3314 <TV_SYNC_handler+0x24c>)
    31a4:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    31a6:	4a59      	ldr	r2, [pc, #356]	; (330c <TV_SYNC_handler+0x244>)
    31a8:	8813      	ldrh	r3, [r2, #0]
    31aa:	3301      	adds	r3, #1
    31ac:	b29b      	uxth	r3, r3
    31ae:	8013      	strh	r3, [r2, #0]
            break;
    31b0:	e01e      	b.n	31f0 <TV_SYNC_handler+0x128>
            task++;
    31b2:	4a56      	ldr	r2, [pc, #344]	; (330c <TV_SYNC_handler+0x244>)
    31b4:	8893      	ldrh	r3, [r2, #4]
    31b6:	3301      	adds	r3, #1
    31b8:	b29b      	uxth	r3, r3
    31ba:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    31bc:	88d3      	ldrh	r3, [r2, #6]
    31be:	f013 0f01 	tst.w	r3, #1
    31c2:	d015      	beq.n	31f0 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    31c4:	4b53      	ldr	r3, [pc, #332]	; (3314 <TV_SYNC_handler+0x24c>)
    31c6:	f241 12c5 	movw	r2, #4549	; 0x11c5
    31ca:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    31cc:	f44f 72a8 	mov.w	r2, #336	; 0x150
    31d0:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    31d2:	4a4e      	ldr	r2, [pc, #312]	; (330c <TV_SYNC_handler+0x244>)
    31d4:	88d3      	ldrh	r3, [r2, #6]
    31d6:	f023 0302 	bic.w	r3, r3, #2
    31da:	041b      	lsls	r3, r3, #16
    31dc:	0c1b      	lsrs	r3, r3, #16
    31de:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    31e0:	8853      	ldrh	r3, [r2, #2]
    31e2:	f3c3 038d 	ubfx	r3, r3, #2, #14
    31e6:	8053      	strh	r3, [r2, #2]
        task++;
    31e8:	8893      	ldrh	r3, [r2, #4]
    31ea:	3301      	adds	r3, #1
    31ec:	b29b      	uxth	r3, r3
    31ee:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    31f0:	4a48      	ldr	r2, [pc, #288]	; (3314 <TV_SYNC_handler+0x24c>)
    31f2:	6913      	ldr	r3, [r2, #16]
    31f4:	f023 0301 	bic.w	r3, r3, #1
    31f8:	6113      	str	r3, [r2, #16]
}
    31fa:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    31fe:	4685      	mov	sp, r0
    3200:	4770      	bx	lr
        read_gamepad();
    3202:	f7fd ff37 	bl	1074 <read_gamepad>
        task++;
    3206:	4a41      	ldr	r2, [pc, #260]	; (330c <TV_SYNC_handler+0x244>)
    3208:	8893      	ldrh	r3, [r2, #4]
    320a:	3301      	adds	r3, #1
    320c:	b29b      	uxth	r3, r3
    320e:	8093      	strh	r3, [r2, #4]
        break;    
    3210:	e7ee      	b.n	31f0 <TV_SYNC_handler+0x128>
        if (sound_timer){
    3212:	4b41      	ldr	r3, [pc, #260]	; (3318 <TV_SYNC_handler+0x250>)
    3214:	881b      	ldrh	r3, [r3, #0]
    3216:	b29b      	uxth	r3, r3
    3218:	b13b      	cbz	r3, 322a <TV_SYNC_handler+0x162>
            sound_timer--;
    321a:	4a3f      	ldr	r2, [pc, #252]	; (3318 <TV_SYNC_handler+0x250>)
    321c:	8813      	ldrh	r3, [r2, #0]
    321e:	3b01      	subs	r3, #1
    3220:	b29b      	uxth	r3, r3
    3222:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3224:	8813      	ldrh	r3, [r2, #0]
    3226:	b29b      	uxth	r3, r3
    3228:	b12b      	cbz	r3, 3236 <TV_SYNC_handler+0x16e>
        task++;
    322a:	4a38      	ldr	r2, [pc, #224]	; (330c <TV_SYNC_handler+0x244>)
    322c:	8893      	ldrh	r3, [r2, #4]
    322e:	3301      	adds	r3, #1
    3230:	b29b      	uxth	r3, r3
    3232:	8093      	strh	r3, [r2, #4]
        break;    
    3234:	e7dc      	b.n	31f0 <TV_SYNC_handler+0x128>
                sound_stop();
    3236:	f7ff fb0a 	bl	284e <sound_stop>
    323a:	e7f6      	b.n	322a <TV_SYNC_handler+0x162>
        if (game_timer){
    323c:	4b37      	ldr	r3, [pc, #220]	; (331c <TV_SYNC_handler+0x254>)
    323e:	881b      	ldrh	r3, [r3, #0]
    3240:	b29b      	uxth	r3, r3
    3242:	b123      	cbz	r3, 324e <TV_SYNC_handler+0x186>
            game_timer--;
    3244:	4a35      	ldr	r2, [pc, #212]	; (331c <TV_SYNC_handler+0x254>)
    3246:	8813      	ldrh	r3, [r2, #0]
    3248:	3b01      	subs	r3, #1
    324a:	b29b      	uxth	r3, r3
    324c:	8013      	strh	r3, [r2, #0]
        task++;
    324e:	4a2f      	ldr	r2, [pc, #188]	; (330c <TV_SYNC_handler+0x244>)
    3250:	8893      	ldrh	r3, [r2, #4]
    3252:	3301      	adds	r3, #1
    3254:	b29b      	uxth	r3, r3
    3256:	8093      	strh	r3, [r2, #4]
        break;
    3258:	e7ca      	b.n	31f0 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    325a:	4b2c      	ldr	r3, [pc, #176]	; (330c <TV_SYNC_handler+0x244>)
    325c:	885b      	ldrh	r3, [r3, #2]
    325e:	b29b      	uxth	r3, r3
    3260:	4a2f      	ldr	r2, [pc, #188]	; (3320 <TV_SYNC_handler+0x258>)
    3262:	88d2      	ldrh	r2, [r2, #6]
    3264:	429a      	cmp	r2, r3
    3266:	d1c3      	bne.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    3268:	4b2a      	ldr	r3, [pc, #168]	; (3314 <TV_SYNC_handler+0x24c>)
    326a:	691a      	ldr	r2, [r3, #16]
    326c:	f022 0204 	bic.w	r2, r2, #4
    3270:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    3272:	68da      	ldr	r2, [r3, #12]
    3274:	f042 0204 	orr.w	r2, r2, #4
    3278:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    327a:	4b24      	ldr	r3, [pc, #144]	; (330c <TV_SYNC_handler+0x244>)
    327c:	88da      	ldrh	r2, [r3, #6]
    327e:	b292      	uxth	r2, r2
    3280:	f042 0204 	orr.w	r2, r2, #4
    3284:	80da      	strh	r2, [r3, #6]
            task++;
    3286:	889a      	ldrh	r2, [r3, #4]
    3288:	3201      	adds	r2, #1
    328a:	b292      	uxth	r2, r2
    328c:	809a      	strh	r2, [r3, #4]
            slice=0;
    328e:	2200      	movs	r2, #0
    3290:	801a      	strh	r2, [r3, #0]
    3292:	e7ad      	b.n	31f0 <TV_SYNC_handler+0x128>
        slice++;
    3294:	4a1d      	ldr	r2, [pc, #116]	; (330c <TV_SYNC_handler+0x244>)
    3296:	8813      	ldrh	r3, [r2, #0]
    3298:	3301      	adds	r3, #1
    329a:	b29b      	uxth	r3, r3
    329c:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    329e:	8853      	ldrh	r3, [r2, #2]
    32a0:	b29b      	uxth	r3, r3
    32a2:	4a1f      	ldr	r2, [pc, #124]	; (3320 <TV_SYNC_handler+0x258>)
    32a4:	8912      	ldrh	r2, [r2, #8]
    32a6:	429a      	cmp	r2, r3
    32a8:	d1a2      	bne.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    32aa:	4a1a      	ldr	r2, [pc, #104]	; (3314 <TV_SYNC_handler+0x24c>)
    32ac:	68d3      	ldr	r3, [r2, #12]
    32ae:	f023 0304 	bic.w	r3, r3, #4
    32b2:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    32b4:	4a15      	ldr	r2, [pc, #84]	; (330c <TV_SYNC_handler+0x244>)
    32b6:	88d3      	ldrh	r3, [r2, #6]
    32b8:	f023 0304 	bic.w	r3, r3, #4
    32bc:	041b      	lsls	r3, r3, #16
    32be:	0c1b      	lsrs	r3, r3, #16
    32c0:	80d3      	strh	r3, [r2, #6]
            task++;
    32c2:	8893      	ldrh	r3, [r2, #4]
    32c4:	3301      	adds	r3, #1
    32c6:	b29b      	uxth	r3, r3
    32c8:	8093      	strh	r3, [r2, #4]
    32ca:	e791      	b.n	31f0 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    32cc:	4b0f      	ldr	r3, [pc, #60]	; (330c <TV_SYNC_handler+0x244>)
    32ce:	885b      	ldrh	r3, [r3, #2]
    32d0:	b29b      	uxth	r3, r3
    32d2:	f240 1207 	movw	r2, #263	; 0x107
    32d6:	4293      	cmp	r3, r2
    32d8:	d18a      	bne.n	31f0 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    32da:	4b0c      	ldr	r3, [pc, #48]	; (330c <TV_SYNC_handler+0x244>)
    32dc:	88db      	ldrh	r3, [r3, #6]
    32de:	f013 0f01 	tst.w	r3, #1
    32e2:	d003      	beq.n	32ec <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    32e4:	f640 02e2 	movw	r2, #2274	; 0x8e2
    32e8:	4b0a      	ldr	r3, [pc, #40]	; (3314 <TV_SYNC_handler+0x24c>)
    32ea:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    32ec:	4b07      	ldr	r3, [pc, #28]	; (330c <TV_SYNC_handler+0x244>)
    32ee:	88da      	ldrh	r2, [r3, #6]
    32f0:	b292      	uxth	r2, r2
    32f2:	f082 0201 	eor.w	r2, r2, #1
    32f6:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    32f8:	88da      	ldrh	r2, [r3, #6]
    32fa:	b292      	uxth	r2, r2
    32fc:	f042 0202 	orr.w	r2, r2, #2
    3300:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    3302:	2200      	movs	r2, #0
    3304:	805a      	strh	r2, [r3, #2]
            slice=0;
    3306:	801a      	strh	r2, [r3, #0]
            task=0;
    3308:	809a      	strh	r2, [r3, #4]
    330a:	e771      	b.n	31f0 <TV_SYNC_handler+0x128>
    330c:	2000069c 	.word	0x2000069c
    3310:	20004e74 	.word	0x20004e74
    3314:	40012c00 	.word	0x40012c00
    3318:	20004e78 	.word	0x20004e78
    331c:	20004e70 	.word	0x20004e70
    3320:	20000208 	.word	0x20000208

00003324 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3324:	4a02      	ldr	r2, [pc, #8]	; (3330 <frame_sync+0xc>)
    3326:	88d3      	ldrh	r3, [r2, #6]
    3328:	f013 0f02 	tst.w	r3, #2
    332c:	d0fb      	beq.n	3326 <frame_sync+0x2>
}
    332e:	4770      	bx	lr
    3330:	2000069c 	.word	0x2000069c

00003334 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3334:	4a02      	ldr	r2, [pc, #8]	; (3340 <wait_sync_end+0xc>)
    3336:	88d3      	ldrh	r3, [r2, #6]
    3338:	f013 0f02 	tst.w	r3, #2
    333c:	d1fb      	bne.n	3336 <wait_sync_end+0x2>
}
    333e:	4770      	bx	lr
    3340:	2000069c 	.word	0x2000069c

00003344 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3344:	b510      	push	{r4, lr}
    3346:	4604      	mov	r4, r0
    frame_sync();
    3348:	f7ff ffec 	bl	3324 <frame_sync>
    video_mode=mode;
    334c:	4b0e      	ldr	r3, [pc, #56]	; (3388 <set_video_mode+0x44>)
    334e:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3350:	b1ac      	cbz	r4, 337e <set_video_mode+0x3a>
    3352:	2200      	movs	r2, #0
    3354:	4b0d      	ldr	r3, [pc, #52]	; (338c <set_video_mode+0x48>)
    3356:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3358:	4b0d      	ldr	r3, [pc, #52]	; (3390 <set_video_mode+0x4c>)
    335a:	480e      	ldr	r0, [pc, #56]	; (3394 <set_video_mode+0x50>)
    335c:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    3360:	8842      	ldrh	r2, [r0, #2]
    3362:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3364:	8882      	ldrh	r2, [r0, #4]
    3366:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    3368:	88c2      	ldrh	r2, [r0, #6]
    336a:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    336c:	7a02      	ldrb	r2, [r0, #8]
    336e:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    3370:	7a42      	ldrb	r2, [r0, #9]
    3372:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    3374:	7a82      	ldrb	r2, [r0, #10]
    3376:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    3378:	f7fe f936 	bl	15e8 <gfx_cls>
    337c:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    337e:	2202      	movs	r2, #2
    3380:	4b02      	ldr	r3, [pc, #8]	; (338c <set_video_mode+0x48>)
    3382:	701a      	strb	r2, [r3, #0]
    3384:	e7e8      	b.n	3358 <set_video_mode+0x14>
    3386:	bf00      	nop
    3388:	2000069c 	.word	0x2000069c
    338c:	200001ac 	.word	0x200001ac
    3390:	20000208 	.word	0x20000208
    3394:	00003c84 	.word	0x00003c84

00003398 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    3398:	4b02      	ldr	r3, [pc, #8]	; (33a4 <get_video_params+0xc>)
    339a:	7a18      	ldrb	r0, [r3, #8]
}
    339c:	4b02      	ldr	r3, [pc, #8]	; (33a8 <get_video_params+0x10>)
    339e:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    33a2:	4770      	bx	lr
    33a4:	2000069c 	.word	0x2000069c
    33a8:	00003c84 	.word	0x00003c84

000033ac <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    33ac:	4b03      	ldr	r3, [pc, #12]	; (33bc <game_pause+0x10>)
    33ae:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    33b0:	461a      	mov	r2, r3
    33b2:	8813      	ldrh	r3, [r2, #0]
    33b4:	b29b      	uxth	r3, r3
    33b6:	2b00      	cmp	r3, #0
    33b8:	d1fb      	bne.n	33b2 <game_pause+0x6>
}
    33ba:	4770      	bx	lr
    33bc:	20004e70 	.word	0x20004e70

000033c0 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    33c0:	4b03      	ldr	r3, [pc, #12]	; (33d0 <micro_pause+0x10>)
    33c2:	681b      	ldr	r3, [r3, #0]
    33c4:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    33c6:	4a02      	ldr	r2, [pc, #8]	; (33d0 <micro_pause+0x10>)
    33c8:	6813      	ldr	r3, [r2, #0]
    33ca:	4298      	cmp	r0, r3
    33cc:	d8fc      	bhi.n	33c8 <micro_pause+0x8>
}
    33ce:	4770      	bx	lr
    33d0:	20004e74 	.word	0x20004e74

000033d4 <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    33d4:	2801      	cmp	r0, #1
    33d6:	d035      	beq.n	3444 <usart_config_port+0x70>
    33d8:	b110      	cbz	r0, 33e0 <usart_config_port+0xc>
    33da:	2802      	cmp	r0, #2
    33dc:	d04f      	beq.n	347e <usart_config_port+0xaa>
    33de:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    33e0:	4835      	ldr	r0, [pc, #212]	; (34b8 <usart_config_port+0xe4>)
    33e2:	6983      	ldr	r3, [r0, #24]
    33e4:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    33e8:	f043 0304 	orr.w	r3, r3, #4
    33ec:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    33ee:	2a01      	cmp	r2, #1
    33f0:	d016      	beq.n	3420 <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    33f2:	4b32      	ldr	r3, [pc, #200]	; (34bc <usart_config_port+0xe8>)
    33f4:	4299      	cmp	r1, r3
    33f6:	d01c      	beq.n	3432 <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    33f8:	4a31      	ldr	r2, [pc, #196]	; (34c0 <usart_config_port+0xec>)
    33fa:	6853      	ldr	r3, [r2, #4]
    33fc:	f043 0304 	orr.w	r3, r3, #4
    3400:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3402:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    3406:	6993      	ldr	r3, [r2, #24]
    3408:	f043 0308 	orr.w	r3, r3, #8
    340c:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    340e:	680b      	ldr	r3, [r1, #0]
    3410:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3414:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    3416:	680b      	ldr	r3, [r1, #0]
    3418:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    341c:	600b      	str	r3, [r1, #0]
    341e:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    3420:	684b      	ldr	r3, [r1, #4]
    3422:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    3426:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3428:	684b      	ldr	r3, [r1, #4]
    342a:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    342e:	604b      	str	r3, [r1, #4]
    3430:	e7df      	b.n	33f2 <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    3432:	685a      	ldr	r2, [r3, #4]
    3434:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3438:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    343a:	685a      	ldr	r2, [r3, #4]
    343c:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    3440:	605a      	str	r2, [r3, #4]
    3442:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3444:	4b1c      	ldr	r3, [pc, #112]	; (34b8 <usart_config_port+0xe4>)
    3446:	69d8      	ldr	r0, [r3, #28]
    3448:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    344c:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    344e:	6998      	ldr	r0, [r3, #24]
    3450:	f040 0004 	orr.w	r0, r0, #4
    3454:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    3456:	2a01      	cmp	r2, #1
    3458:	d008      	beq.n	346c <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    345a:	680b      	ldr	r3, [r1, #0]
    345c:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3460:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    3462:	680b      	ldr	r3, [r1, #0]
    3464:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3468:	600b      	str	r3, [r1, #0]
    346a:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    346c:	680b      	ldr	r3, [r1, #0]
    346e:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    3472:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    3474:	680b      	ldr	r3, [r1, #0]
    3476:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    347a:	600b      	str	r3, [r1, #0]
    347c:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    347e:	4b0e      	ldr	r3, [pc, #56]	; (34b8 <usart_config_port+0xe4>)
    3480:	69d8      	ldr	r0, [r3, #28]
    3482:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    3486:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3488:	6998      	ldr	r0, [r3, #24]
    348a:	f040 0008 	orr.w	r0, r0, #8
    348e:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    3490:	2a01      	cmp	r2, #1
    3492:	d008      	beq.n	34a6 <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    3494:	684b      	ldr	r3, [r1, #4]
    3496:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    349a:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    349c:	684b      	ldr	r3, [r1, #4]
    349e:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    34a2:	604b      	str	r3, [r1, #4]
    34a4:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    34a6:	684b      	ldr	r3, [r1, #4]
    34a8:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    34ac:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    34ae:	684b      	ldr	r3, [r1, #4]
    34b0:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    34b4:	604b      	str	r3, [r1, #4]
    34b6:	4770      	bx	lr
    34b8:	40021000 	.word	0x40021000
    34bc:	40010800 	.word	0x40010800
    34c0:	40010000 	.word	0x40010000

000034c4 <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    34c4:	4602      	mov	r2, r0
    34c6:	b138      	cbz	r0, 34d8 <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    34c8:	4b05      	ldr	r3, [pc, #20]	; (34e0 <usart_set_baud+0x1c>)
    34ca:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    34ce:	4b05      	ldr	r3, [pc, #20]	; (34e4 <usart_set_baud+0x20>)
    34d0:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    34d4:	6099      	str	r1, [r3, #8]
    34d6:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    34d8:	4b03      	ldr	r3, [pc, #12]	; (34e8 <usart_set_baud+0x24>)
    34da:	fbb3 f1f1 	udiv	r1, r3, r1
    34de:	e7f6      	b.n	34ce <usart_set_baud+0xa>
    34e0:	022231fa 	.word	0x022231fa
    34e4:	00003cac 	.word	0x00003cac
    34e8:	044463f4 	.word	0x044463f4

000034ec <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    34ec:	4b05      	ldr	r3, [pc, #20]	; (3504 <usart_comm_dir+0x18>)
    34ee:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    34f2:	68da      	ldr	r2, [r3, #12]
    34f4:	f022 020c 	bic.w	r2, r2, #12
    34f8:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    34fa:	68da      	ldr	r2, [r3, #12]
    34fc:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    3500:	60d9      	str	r1, [r3, #12]
    3502:	4770      	bx	lr
    3504:	00003cac 	.word	0x00003cac

00003508 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    3508:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    350c:	4604      	mov	r4, r0
    350e:	460f      	mov	r7, r1
    3510:	4615      	mov	r5, r2
    3512:	4698      	mov	r8, r3
    3514:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    3516:	2801      	cmp	r0, #1
    3518:	d030      	beq.n	357c <usart_open_channel+0x74>
    351a:	b1d0      	cbz	r0, 3552 <usart_open_channel+0x4a>
    351c:	2802      	cmp	r0, #2
    351e:	d03a      	beq.n	3596 <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    3520:	2e01      	cmp	r6, #1
    3522:	d045      	beq.n	35b0 <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    3524:	4641      	mov	r1, r8
    3526:	4620      	mov	r0, r4
    3528:	f7ff ffe0 	bl	34ec <usart_comm_dir>
	switch (parity){
    352c:	2d01      	cmp	r5, #1
    352e:	d04e      	beq.n	35ce <usart_open_channel+0xc6>
    3530:	2d00      	cmp	r5, #0
    3532:	d044      	beq.n	35be <usart_open_channel+0xb6>
    3534:	2d02      	cmp	r5, #2
    3536:	d052      	beq.n	35de <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3538:	4639      	mov	r1, r7
    353a:	4620      	mov	r0, r4
    353c:	f7ff ffc2 	bl	34c4 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    3540:	4b2b      	ldr	r3, [pc, #172]	; (35f0 <usart_open_channel+0xe8>)
    3542:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3546:	68d3      	ldr	r3, [r2, #12]
    3548:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    354c:	60d3      	str	r3, [r2, #12]
    354e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    3552:	9b06      	ldr	r3, [sp, #24]
    3554:	b963      	cbnz	r3, 3570 <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    3556:	4632      	mov	r2, r6
    3558:	4926      	ldr	r1, [pc, #152]	; (35f4 <usart_open_channel+0xec>)
    355a:	2000      	movs	r0, #0
    355c:	f7ff ff3a 	bl	33d4 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    3560:	2107      	movs	r1, #7
    3562:	2025      	movs	r0, #37	; 0x25
    3564:	f7fe fd66 	bl	2034 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    3568:	2025      	movs	r0, #37	; 0x25
    356a:	f7fe fd03 	bl	1f74 <enable_interrupt>
		break;
    356e:	e7d7      	b.n	3520 <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    3570:	4632      	mov	r2, r6
    3572:	4921      	ldr	r1, [pc, #132]	; (35f8 <usart_open_channel+0xf0>)
    3574:	2000      	movs	r0, #0
    3576:	f7ff ff2d 	bl	33d4 <usart_config_port>
    357a:	e7f1      	b.n	3560 <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    357c:	4632      	mov	r2, r6
    357e:	491d      	ldr	r1, [pc, #116]	; (35f4 <usart_open_channel+0xec>)
    3580:	2001      	movs	r0, #1
    3582:	f7ff ff27 	bl	33d4 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    3586:	2107      	movs	r1, #7
    3588:	2026      	movs	r0, #38	; 0x26
    358a:	f7fe fd53 	bl	2034 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    358e:	2026      	movs	r0, #38	; 0x26
    3590:	f7fe fcf0 	bl	1f74 <enable_interrupt>
		break;
    3594:	e7c4      	b.n	3520 <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    3596:	4632      	mov	r2, r6
    3598:	4917      	ldr	r1, [pc, #92]	; (35f8 <usart_open_channel+0xf0>)
    359a:	2002      	movs	r0, #2
    359c:	f7ff ff1a 	bl	33d4 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    35a0:	2107      	movs	r1, #7
    35a2:	2027      	movs	r0, #39	; 0x27
    35a4:	f7fe fd46 	bl	2034 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    35a8:	2027      	movs	r0, #39	; 0x27
    35aa:	f7fe fce3 	bl	1f74 <enable_interrupt>
		break;
    35ae:	e7b7      	b.n	3520 <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    35b0:	4b0f      	ldr	r3, [pc, #60]	; (35f0 <usart_open_channel+0xe8>)
    35b2:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    35b6:	f44f 7240 	mov.w	r2, #768	; 0x300
    35ba:	615a      	str	r2, [r3, #20]
    35bc:	e7b2      	b.n	3524 <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    35be:	4b0c      	ldr	r3, [pc, #48]	; (35f0 <usart_open_channel+0xe8>)
    35c0:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    35c4:	68d3      	ldr	r3, [r2, #12]
    35c6:	f043 0320 	orr.w	r3, r3, #32
    35ca:	60d3      	str	r3, [r2, #12]
		break;
    35cc:	e7b4      	b.n	3538 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    35ce:	4b08      	ldr	r3, [pc, #32]	; (35f0 <usart_open_channel+0xe8>)
    35d0:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    35d4:	68d3      	ldr	r3, [r2, #12]
    35d6:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    35da:	60d3      	str	r3, [r2, #12]
		break;
    35dc:	e7ac      	b.n	3538 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    35de:	4b04      	ldr	r3, [pc, #16]	; (35f0 <usart_open_channel+0xe8>)
    35e0:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    35e4:	68d3      	ldr	r3, [r2, #12]
    35e6:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    35ea:	60d3      	str	r3, [r2, #12]
		break;
    35ec:	e7a4      	b.n	3538 <usart_open_channel+0x30>
    35ee:	bf00      	nop
    35f0:	00003cac 	.word	0x00003cac
    35f4:	40010800 	.word	0x40010800
    35f8:	40010c00 	.word	0x40010c00

000035fc <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return channels[channel]->SR&USART_SR_RXNE;
    35fc:	4b03      	ldr	r3, [pc, #12]	; (360c <usart_stat+0x10>)
    35fe:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    3602:	6818      	ldr	r0, [r3, #0]
}
    3604:	f000 0020 	and.w	r0, r0, #32
    3608:	4770      	bx	lr
    360a:	bf00      	nop
    360c:	00003cac 	.word	0x00003cac

00003610 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    3610:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    3612:	490c      	ldr	r1, [pc, #48]	; (3644 <usart_getc+0x34>)
    3614:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3618:	005b      	lsls	r3, r3, #1
    361a:	18c8      	adds	r0, r1, r3
    361c:	5ccb      	ldrb	r3, [r1, r3]
    361e:	7841      	ldrb	r1, [r0, #1]
    3620:	4299      	cmp	r1, r3
    3622:	d00d      	beq.n	3640 <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    3624:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3626:	4d07      	ldr	r5, [pc, #28]	; (3644 <usart_getc+0x34>)
    3628:	00d4      	lsls	r4, r2, #3
    362a:	4601      	mov	r1, r0
    362c:	4419      	add	r1, r3
    362e:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    3630:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3632:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    3634:	f003 030f 	and.w	r3, r3, #15
    3638:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    363c:	bc30      	pop	{r4, r5}
    363e:	4770      	bx	lr
		return 0;
    3640:	2000      	movs	r0, #0
    3642:	4770      	bx	lr
    3644:	200006a8 	.word	0x200006a8

00003648 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    3648:	b570      	push	{r4, r5, r6, lr}
    364a:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    364c:	4b08      	ldr	r3, [pc, #32]	; (3670 <usart_getc_dly+0x28>)
    364e:	681c      	ldr	r4, [r3, #0]
    3650:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    3652:	461d      	mov	r5, r3
    3654:	682b      	ldr	r3, [r5, #0]
    3656:	429c      	cmp	r4, r3
    3658:	d906      	bls.n	3668 <usart_getc_dly+0x20>
    365a:	4630      	mov	r0, r6
    365c:	f7ff ffd8 	bl	3610 <usart_getc>
    3660:	4603      	mov	r3, r0
    3662:	2800      	cmp	r0, #0
    3664:	d0f6      	beq.n	3654 <usart_getc_dly+0xc>
    3666:	e000      	b.n	366a <usart_getc_dly+0x22>
    3668:	2300      	movs	r3, #0
	return c;
}
    366a:	4618      	mov	r0, r3
    366c:	bd70      	pop	{r4, r5, r6, pc}
    366e:	bf00      	nop
    3670:	20004e74 	.word	0x20004e74

00003674 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    3674:	4b04      	ldr	r3, [pc, #16]	; (3688 <usart_putc+0x14>)
    3676:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    367a:	6813      	ldr	r3, [r2, #0]
    367c:	f013 0f80 	tst.w	r3, #128	; 0x80
    3680:	d0fb      	beq.n	367a <usart_putc+0x6>
	channels[channel]->DR=c;
    3682:	6051      	str	r1, [r2, #4]
    3684:	4770      	bx	lr
    3686:	bf00      	nop
    3688:	00003cac 	.word	0x00003cac

0000368c <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    368c:	2801      	cmp	r0, #1
    368e:	d009      	beq.n	36a4 <usart_cts+0x18>
    3690:	b118      	cbz	r0, 369a <usart_cts+0xe>
    3692:	2802      	cmp	r0, #2
    3694:	d00b      	beq.n	36ae <usart_cts+0x22>
    3696:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3698:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    369a:	4b07      	ldr	r3, [pc, #28]	; (36b8 <usart_cts+0x2c>)
    369c:	6898      	ldr	r0, [r3, #8]
    369e:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    36a2:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    36a4:	4b04      	ldr	r3, [pc, #16]	; (36b8 <usart_cts+0x2c>)
    36a6:	6898      	ldr	r0, [r3, #8]
    36a8:	f000 0001 	and.w	r0, r0, #1
			break;
    36ac:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    36ae:	4b03      	ldr	r3, [pc, #12]	; (36bc <usart_cts+0x30>)
    36b0:	6898      	ldr	r0, [r3, #8]
    36b2:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    36b6:	4770      	bx	lr
    36b8:	40010800 	.word	0x40010800
    36bc:	40010c00 	.word	0x40010c00

000036c0 <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    36c0:	b538      	push	{r3, r4, r5, lr}
    36c2:	4605      	mov	r5, r0
    36c4:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    36c6:	7809      	ldrb	r1, [r1, #0]
    36c8:	b131      	cbz	r1, 36d8 <usart_print+0x18>
    36ca:	4628      	mov	r0, r5
    36cc:	f7ff ffd2 	bl	3674 <usart_putc>
    36d0:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    36d4:	2900      	cmp	r1, #0
    36d6:	d1f8      	bne.n	36ca <usart_print+0xa>
    36d8:	bd38      	pop	{r3, r4, r5, pc}

000036da <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    36da:	4668      	mov	r0, sp
    36dc:	f020 0107 	bic.w	r1, r0, #7
    36e0:	468d      	mov	sp, r1
    36e2:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    36e4:	4b08      	ldr	r3, [pc, #32]	; (3708 <USART1_handler+0x2e>)
    36e6:	681b      	ldr	r3, [r3, #0]
    36e8:	f013 0f20 	tst.w	r3, #32
    36ec:	d009      	beq.n	3702 <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    36ee:	4a07      	ldr	r2, [pc, #28]	; (370c <USART1_handler+0x32>)
    36f0:	7853      	ldrb	r3, [r2, #1]
    36f2:	4905      	ldr	r1, [pc, #20]	; (3708 <USART1_handler+0x2e>)
    36f4:	6848      	ldr	r0, [r1, #4]
    36f6:	18d1      	adds	r1, r2, r3
    36f8:	7088      	strb	r0, [r1, #2]
    36fa:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    36fc:	f003 030f 	and.w	r3, r3, #15
    3700:	7053      	strb	r3, [r2, #1]
		}
}
    3702:	bc01      	pop	{r0}
    3704:	4685      	mov	sp, r0
    3706:	4770      	bx	lr
    3708:	40013800 	.word	0x40013800
    370c:	200006a8 	.word	0x200006a8

00003710 <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    3710:	4668      	mov	r0, sp
    3712:	f020 0107 	bic.w	r1, r0, #7
    3716:	468d      	mov	sp, r1
    3718:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    371a:	4b0a      	ldr	r3, [pc, #40]	; (3744 <USART2_handler+0x34>)
    371c:	681b      	ldr	r3, [r3, #0]
    371e:	f013 0f20 	tst.w	r3, #32
    3722:	d00b      	beq.n	373c <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    3724:	4a08      	ldr	r2, [pc, #32]	; (3748 <USART2_handler+0x38>)
    3726:	7cd1      	ldrb	r1, [r2, #19]
    3728:	1c4b      	adds	r3, r1, #1
    372a:	b2db      	uxtb	r3, r3
    372c:	74d3      	strb	r3, [r2, #19]
    372e:	4807      	ldr	r0, [pc, #28]	; (374c <USART2_handler+0x3c>)
    3730:	6840      	ldr	r0, [r0, #4]
    3732:	4411      	add	r1, r2
    3734:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3736:	f003 030f 	and.w	r3, r3, #15
    373a:	74d3      	strb	r3, [r2, #19]
		}
}
    373c:	bc01      	pop	{r0}
    373e:	4685      	mov	sp, r0
    3740:	4770      	bx	lr
    3742:	bf00      	nop
    3744:	40013800 	.word	0x40013800
    3748:	200006a8 	.word	0x200006a8
    374c:	40004400 	.word	0x40004400

00003750 <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    3750:	4668      	mov	r0, sp
    3752:	f020 0107 	bic.w	r1, r0, #7
    3756:	468d      	mov	sp, r1
    3758:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    375a:	4b0b      	ldr	r3, [pc, #44]	; (3788 <USART3_handler+0x38>)
    375c:	681b      	ldr	r3, [r3, #0]
    375e:	f013 0f20 	tst.w	r3, #32
    3762:	d00d      	beq.n	3780 <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    3764:	4b09      	ldr	r3, [pc, #36]	; (378c <USART3_handler+0x3c>)
    3766:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    376a:	1c51      	adds	r1, r2, #1
    376c:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    3770:	4907      	ldr	r1, [pc, #28]	; (3790 <USART3_handler+0x40>)
    3772:	6849      	ldr	r1, [r1, #4]
    3774:	441a      	add	r2, r3
    3776:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3778:	7cda      	ldrb	r2, [r3, #19]
    377a:	f002 020f 	and.w	r2, r2, #15
    377e:	74da      	strb	r2, [r3, #19]
		}
}
    3780:	bc01      	pop	{r0}
    3782:	4685      	mov	sp, r0
    3784:	4770      	bx	lr
    3786:	bf00      	nop
    3788:	40013800 	.word	0x40013800
    378c:	200006a8 	.word	0x200006a8
    3790:	40004800 	.word	0x40004800
