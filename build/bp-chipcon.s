
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 1d 2a 00 00     .P. 1........*..
      10:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 1d 2a 00 00     .*...*...*...*..
      20:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 09 02 00 00     .*...*...*......
      30:	1d 2a 00 00 1d 2a 00 00 0d 02 00 00 11 02 00 00     .*...*..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 87 26 00 00     ........!....&..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 1d 2a 00 00 1d 2a 00 00 49 02 00 00     E....*...*..I...
      80:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 1d 2a 00 00     .*...*...*...*..
      90:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 4d 02 00 00     .*...*...*..M...
      a0:	1d 2a 00 00 a5 30 00 00 1d 2a 00 00 bd 2f 00 00     .*...0...*.../..
      b0:	29 28 00 00 51 02 00 00 55 02 00 00 1d 2a 00 00     )(..Q...U....*..
      c0:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 1d 2a 00 00     .*...*...*...*..
      d0:	1d 2a 00 00 59 02 00 00 5d 02 00 00 61 02 00 00     .*..Y...]...a...
      e0:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 1d 2a 00 00     .*...*...*...*..
      f0:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 1d 2a 00 00     .*...*...*...*..
     100:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 1d 2a 00 00     .*...*...*...*..
     110:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 1d 2a 00 00     .*...*...*...*..
     120:	1d 2a 00 00 1d 2a 00 00 1d 2a 00 00 1d 2a 00 00     .*...*...*...*..

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
     186:	f001 fc35 	bl	19f4 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e8a 	.word	0x20004e8a
     190:	2000024a 	.word	0x2000024a
     194:	20004e89 	.word	0x20004e89
     198:	2000024a 	.word	0x2000024a
     19c:	20000000 	.word	0x20000000
     1a0:	000098e4 	.word	0x000098e4
     1a4:	2000024d 	.word	0x2000024d
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
     1da:	f002 fc27 	bl	2a2c <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fc24 	bl	2a2c <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fc21 	bl	2a2c <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fc1e 	bl	2a2c <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003d9c 	.word	0x00003d9c
     1f8:	00003d78 	.word	0x00003d78
     1fc:	00003d90 	.word	0x00003d90
     200:	00003dac 	.word	0x00003dac

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fc0a 	bl	2a1c <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fc08 	bl	2a1c <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fc06 	bl	2a1c <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fc04 	bl	2a1c <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fc02 	bl	2a1c <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fc00 	bl	2a1c <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fbfe 	bl	2a1c <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fbfc 	bl	2a1c <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fbfa 	bl	2a1c <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fbf8 	bl	2a1c <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fbf6 	bl	2a1c <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fbf4 	bl	2a1c <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fbf2 	bl	2a1c <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fbf0 	bl	2a1c <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fbee 	bl	2a1c <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fbec 	bl	2a1c <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fbea 	bl	2a1c <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fbe8 	bl	2a1c <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fbe6 	bl	2a1c <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fbe4 	bl	2a1c <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fbe2 	bl	2a1c <reset_mcu>

00000258 <USART1_handler>:
_default_handler(USART1_handler) // 37
     258:	f002 fbe0 	bl	2a1c <reset_mcu>

0000025c <USART2_handler>:
_default_handler(USART2_handler) // 38
     25c:	f002 fbde 	bl	2a1c <reset_mcu>

00000260 <USART3_handler>:
_default_handler(USART3_handler) // 39
     260:	f002 fbdc 	bl	2a1c <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fbda 	bl	2a1c <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fbd8 	bl	2a1c <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fbd6 	bl	2a1c <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fbd4 	bl	2a1c <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fbd2 	bl	2a1c <reset_mcu>

00000278 <bkp_read_register>:
#include "../include/stm32f103c8.h"

// lecture d'un registre BKP->DR[]
// r->{0..9}
uint16_t bkp_read_register(int r){
	return BKP->DR[r%10];
     278:	4a08      	ldr	r2, [pc, #32]	; (29c <bkp_read_register+0x24>)
     27a:	fb82 3200 	smull	r3, r2, r2, r0
     27e:	17c3      	asrs	r3, r0, #31
     280:	ebc3 03a2 	rsb	r3, r3, r2, asr #2
     284:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     288:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
     28c:	009b      	lsls	r3, r3, #2
     28e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
     292:	f503 43d8 	add.w	r3, r3, #27648	; 0x6c00
     296:	6858      	ldr	r0, [r3, #4]
}
     298:	b280      	uxth	r0, r0
     29a:	4770      	bx	lr
     29c:	66666667 	.word	0x66666667

000002a0 <bkp_write_register>:

// écriture d'un registre BKP->DR[]
// r->{0..9}
void bkp_write_register(int r, uint16_t value){
     2a0:	b410      	push	{r4}
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
     2a2:	4a18      	ldr	r2, [pc, #96]	; (304 <bkp_write_register+0x64>)
     2a4:	69d3      	ldr	r3, [r2, #28]
     2a6:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
     2aa:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
     2ac:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
     2b0:	6813      	ldr	r3, [r2, #0]
     2b2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     2b6:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
     2b8:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
     2bc:	6853      	ldr	r3, [r2, #4]
     2be:	f043 0310 	orr.w	r3, r3, #16
     2c2:	6053      	str	r3, [r2, #4]
	BKP->DR[r%10]=value;
     2c4:	4c10      	ldr	r4, [pc, #64]	; (308 <bkp_write_register+0x68>)
     2c6:	fb84 3400 	smull	r3, r4, r4, r0
     2ca:	17c3      	asrs	r3, r0, #31
     2cc:	ebc3 03a4 	rsb	r3, r3, r4, asr #2
     2d0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     2d4:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
     2d8:	009b      	lsls	r3, r3, #2
     2da:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
     2de:	f503 43d8 	add.w	r3, r3, #27648	; 0x6c00
     2e2:	6059      	str	r1, [r3, #4]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
     2e4:	6853      	ldr	r3, [r2, #4]
     2e6:	f023 0310 	bic.w	r3, r3, #16
     2ea:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
     2ec:	6853      	ldr	r3, [r2, #4]
     2ee:	f013 0f20 	tst.w	r3, #32
     2f2:	d0fb      	beq.n	2ec <bkp_write_register+0x4c>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
     2f4:	4a05      	ldr	r2, [pc, #20]	; (30c <bkp_write_register+0x6c>)
     2f6:	6813      	ldr	r3, [r2, #0]
     2f8:	f423 7380 	bic.w	r3, r3, #256	; 0x100
     2fc:	6013      	str	r3, [r2, #0]
}
     2fe:	bc10      	pop	{r4}
     300:	4770      	bx	lr
     302:	bf00      	nop
     304:	40021000 	.word	0x40021000
     308:	66666667 	.word	0x66666667
     30c:	40007000 	.word	0x40007000

00000310 <print_vms>:
// stockage temporaire
static uint8_t block[32];

uint8_t game_ram[GAME_SPACE];

void print_vms(const char *msg){
     310:	b570      	push	{r4, r5, r6, lr}
     312:	4604      	mov	r4, r0
	new_line();
     314:	f002 fc04 	bl	2b20 <new_line>
	select_font(FONT_ASCII);
     318:	2002      	movs	r0, #2
     31a:	f002 fbfb 	bl	2b14 <select_font>
	print(msg);
     31e:	4620      	mov	r0, r4
     320:	f002 fcd4 	bl	2ccc <print>
	print("PC:");
     324:	481a      	ldr	r0, [pc, #104]	; (390 <print_vms+0x80>)
     326:	f002 fcd1 	bl	2ccc <print>
	print_hex(vms.pc-2);
     32a:	4d1a      	ldr	r5, [pc, #104]	; (394 <print_vms+0x84>)
     32c:	8828      	ldrh	r0, [r5, #0]
     32e:	2110      	movs	r1, #16
     330:	3802      	subs	r0, #2
     332:	f002 fce6 	bl	2d02 <print_int>
	print_hex(vms.b2);
     336:	2110      	movs	r1, #16
     338:	7de8      	ldrb	r0, [r5, #23]
     33a:	f002 fce2 	bl	2d02 <print_int>
	print_hex(vms.b1);
     33e:	2110      	movs	r1, #16
     340:	7da8      	ldrb	r0, [r5, #22]
     342:	f002 fcde 	bl	2d02 <print_int>
	new_line();
     346:	f002 fbeb 	bl	2b20 <new_line>
	print("I:");
     34a:	4813      	ldr	r0, [pc, #76]	; (398 <print_vms+0x88>)
     34c:	f002 fcbe 	bl	2ccc <print>
	print_hex(vms.ix);
     350:	2110      	movs	r1, #16
     352:	8868      	ldrh	r0, [r5, #2]
     354:	f002 fcd5 	bl	2d02 <print_int>
	print(" SP:");
     358:	4810      	ldr	r0, [pc, #64]	; (39c <print_vms+0x8c>)
     35a:	f002 fcb7 	bl	2ccc <print>
	print_hex(vms.sp);
     35e:	2110      	movs	r1, #16
     360:	7928      	ldrb	r0, [r5, #4]
     362:	f002 fcce 	bl	2d02 <print_int>
	new_line();
     366:	f002 fbdb 	bl	2b20 <new_line>
	print("var[]:");
     36a:	480d      	ldr	r0, [pc, #52]	; (3a0 <print_vms+0x90>)
     36c:	f002 fcae 	bl	2ccc <print>
     370:	1dac      	adds	r4, r5, #6
     372:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     374:	2610      	movs	r6, #16
     376:	4631      	mov	r1, r6
     378:	f814 0b01 	ldrb.w	r0, [r4], #1
     37c:	f002 fcc1 	bl	2d02 <print_int>
	for (int i=0;i<16;i++){
     380:	42ac      	cmp	r4, r5
     382:	d1f8      	bne.n	376 <print_vms+0x66>
	}
	new_line();
     384:	f002 fbcc 	bl	2b20 <new_line>
	prompt_btn();
     388:	f002 fd56 	bl	2e38 <prompt_btn>
     38c:	bd70      	pop	{r4, r5, r6, pc}
     38e:	bf00      	nop
     390:	00003b9c 	.word	0x00003b9c
     394:	2000024c 	.word	0x2000024c
     398:	00003ba0 	.word	0x00003ba0
     39c:	00003ba4 	.word	0x00003ba4
     3a0:	00003bac 	.word	0x00003bac

000003a4 <srand>:
}
*/
static uint32_t state=1;

void srand(unsigned n){
	state=n;
     3a4:	4b01      	ldr	r3, [pc, #4]	; (3ac <srand+0x8>)
     3a6:	6018      	str	r0, [r3, #0]
     3a8:	4770      	bx	lr
     3aa:	bf00      	nop
     3ac:	20000000 	.word	0x20000000

000003b0 <rand>:
}

int rand(){
	uint32_t x;
	x=state;
     3b0:	4b05      	ldr	r3, [pc, #20]	; (3c8 <rand+0x18>)
     3b2:	6818      	ldr	r0, [r3, #0]
	x^=x<<13;
     3b4:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
	x^=x>>17;
     3b8:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
	x^=x<<5;
     3bc:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
	state=x;
     3c0:	6018      	str	r0, [r3, #0]
	return x&0x7fffffff; 
}
     3c2:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
     3c6:	4770      	bx	lr
     3c8:	20000000 	.word	0x20000000

000003cc <chip_vm>:


//  CHIP8/SCHIP/XOCHIP  virtual machine
uint8_t chip_vm(uint16_t program_address, int debug){
     3cc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
     3d0:	b088      	sub	sp, #32
     3d2:	460d      	mov	r5, r1
#define SLOW_DOWN 5
	uint8_t x,y,n;
	uint16_t code;
	char buffer[24];
	vms.pc=program_address;
     3d4:	4baf      	ldr	r3, [pc, #700]	; (694 <chip_vm+0x2c8>)
     3d6:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     3d8:	2200      	movs	r2, #0
     3da:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     3dc:	805a      	strh	r2, [r3, #2]
 	while (1){
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
		_get_opcode(vms.pc);
		if (debug){
			debug_print(itoa(vms.pc,buffer,16));
			debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     3de:	461c      	mov	r4, r3
				//flash_write_block(PERSIST_STORE,vms.var,x+1);
				move((const uint8_t*)vms.var,block,x+1);
				break;
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash
				//flash_read_block((const uint8_t*)PERSIST_STORE,vms.var,x+1);
				move((const uint8_t*)block,vms.var,x+1);
     3e0:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     3e2:	f8df a2c4 	ldr.w	sl, [pc, #708]	; 6a8 <chip_vm+0x2dc>
     3e6:	e0ea      	b.n	5be <chip_vm+0x1f2>
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     3e8:	b305      	cbz	r5, 42c <chip_vm+0x60>
		_get_opcode(vms.pc);
     3ea:	8820      	ldrh	r0, [r4, #0]
     3ec:	4baa      	ldr	r3, [pc, #680]	; (698 <chip_vm+0x2cc>)
     3ee:	5c1a      	ldrb	r2, [r3, r0]
     3f0:	75a2      	strb	r2, [r4, #22]
     3f2:	4403      	add	r3, r0
     3f4:	785b      	ldrb	r3, [r3, #1]
     3f6:	75e3      	strb	r3, [r4, #23]
			debug_print(itoa(vms.pc,buffer,16));
     3f8:	2210      	movs	r2, #16
     3fa:	a902      	add	r1, sp, #8
     3fc:	f000 ff84 	bl	1308 <itoa>
     400:	4fa6      	ldr	r7, [pc, #664]	; (69c <chip_vm+0x2d0>)
     402:	4601      	mov	r1, r0
     404:	4638      	mov	r0, r7
     406:	f003 f91f 	bl	3648 <usart_print>
			debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     40a:	7da0      	ldrb	r0, [r4, #22]
     40c:	7de3      	ldrb	r3, [r4, #23]
     40e:	2210      	movs	r2, #16
     410:	a902      	add	r1, sp, #8
     412:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     416:	f000 ff77 	bl	1308 <itoa>
     41a:	4601      	mov	r1, r0
     41c:	4638      	mov	r0, r7
     41e:	f003 f913 	bl	3648 <usart_print>
			debug_print("\n");
     422:	499f      	ldr	r1, [pc, #636]	; (6a0 <chip_vm+0x2d4>)
     424:	4638      	mov	r0, r7
     426:	f003 f90f 	bl	3648 <usart_print>
     42a:	e0d7      	b.n	5dc <chip_vm+0x210>
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     42c:	2005      	movs	r0, #5
     42e:	f002 ffb5 	bl	339c <micro_pause>
		_get_opcode(vms.pc);
     432:	8822      	ldrh	r2, [r4, #0]
     434:	4b98      	ldr	r3, [pc, #608]	; (698 <chip_vm+0x2cc>)
     436:	5c99      	ldrb	r1, [r3, r2]
     438:	75a1      	strb	r1, [r4, #22]
     43a:	4413      	add	r3, r2
     43c:	785b      	ldrb	r3, [r3, #1]
     43e:	75e3      	strb	r3, [r4, #23]
     440:	e0cc      	b.n	5dc <chip_vm+0x210>
		    if ((vms.b1|vms.b2)==0){
     442:	ea5e 0203 	orrs.w	r2, lr, r3
     446:	f000 80ba 	beq.w	5be <chip_vm+0x1f2>
     44a:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     44e:	2ac0      	cmp	r2, #192	; 0xc0
     450:	d026      	beq.n	4a0 <chip_vm+0xd4>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; XO-CHIP, BP-CHIP
     452:	2ad0      	cmp	r2, #208	; 0xd0
     454:	d029      	beq.n	4aa <chip_vm+0xde>
			}else switch(vms.b2){
     456:	3be0      	subs	r3, #224	; 0xe0
     458:	2b1f      	cmp	r3, #31
     45a:	d82b      	bhi.n	4b4 <chip_vm+0xe8>
     45c:	e8df f013 	tbh	[pc, r3, lsl #1]
     460:	002a002c 	.word	0x002a002c
     464:	002a002a 	.word	0x002a002a
     468:	002a002a 	.word	0x002a002a
     46c:	002a002a 	.word	0x002a002a
     470:	002a002a 	.word	0x002a002a
     474:	002a002a 	.word	0x002a002a
     478:	002a002a 	.word	0x002a002a
     47c:	002a002f 	.word	0x002a002f
     480:	002a002a 	.word	0x002a002a
     484:	002a002a 	.word	0x002a002a
     488:	002a002a 	.word	0x002a002a
     48c:	002a002a 	.word	0x002a002a
     490:	002a002a 	.word	0x002a002a
     494:	00370043 	.word	0x00370043
     498:	03b3003b 	.word	0x03b3003b
     49c:	003f00af 	.word	0x003f00af
				gfx_scroll_down(vms.b2&0xf); 
     4a0:	f003 000f 	and.w	r0, r3, #15
     4a4:	f001 f876 	bl	1594 <gfx_scroll_down>
     4a8:	e089      	b.n	5be <chip_vm+0x1f2>
				gfx_scroll_up(vms.b2&0xf);					
     4aa:	f003 000f 	and.w	r0, r3, #15
     4ae:	f001 f84b 	bl	1548 <gfx_scroll_up>
     4b2:	e084      	b.n	5be <chip_vm+0x1f2>
					return CHIP_BAD_OPCODE;
     4b4:	2002      	movs	r0, #2
     4b6:	e28a      	b.n	9ce <chip_vm+0x602>
					gfx_cls();
     4b8:	f001 f82a 	bl	1510 <gfx_cls>
					break;
     4bc:	e07f      	b.n	5be <chip_vm+0x1f2>
					vms.pc=vms.stack[vms.sp--];
     4be:	7923      	ldrb	r3, [r4, #4]
     4c0:	1e5a      	subs	r2, r3, #1
     4c2:	7122      	strb	r2, [r4, #4]
     4c4:	330c      	adds	r3, #12
     4c6:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     4ca:	8023      	strh	r3, [r4, #0]
					break;
     4cc:	e077      	b.n	5be <chip_vm+0x1f2>
					gfx_scroll_right(4);
     4ce:	2004      	movs	r0, #4
     4d0:	f001 f8b2 	bl	1638 <gfx_scroll_right>
					break;
     4d4:	e073      	b.n	5be <chip_vm+0x1f2>
					gfx_scroll_left(4);
     4d6:	2004      	movs	r0, #4
     4d8:	f001 f880 	bl	15dc <gfx_scroll_left>
					break;
     4dc:	e06f      	b.n	5be <chip_vm+0x1f2>
					set_video_mode(VM_SCHIP);
     4de:	2001      	movs	r0, #1
     4e0:	f002 ff1e 	bl	3320 <set_video_mode>
					break; 
     4e4:	e06b      	b.n	5be <chip_vm+0x1f2>
					set_video_mode(VM_BPCHIP);
     4e6:	2000      	movs	r0, #0
     4e8:	f002 ff1a 	bl	3320 <set_video_mode>
					break;
     4ec:	e067      	b.n	5be <chip_vm+0x1f2>
			vms.pc=caddr(vms.b1,vms.b2);
     4ee:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
     4f2:	f3c3 030b 	ubfx	r3, r3, #0, #12
     4f6:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     4f8:	4a6a      	ldr	r2, [pc, #424]	; (6a4 <chip_vm+0x2d8>)
     4fa:	7812      	ldrb	r2, [r2, #0]
     4fc:	2a00      	cmp	r2, #0
     4fe:	d15e      	bne.n	5be <chip_vm+0x1f2>
				vms.pc<<=1;
     500:	005b      	lsls	r3, r3, #1
     502:	8023      	strh	r3, [r4, #0]
     504:	e05b      	b.n	5be <chip_vm+0x1f2>
			vms.stack[++vms.sp]=vms.pc;
     506:	7921      	ldrb	r1, [r4, #4]
     508:	3101      	adds	r1, #1
     50a:	b2c9      	uxtb	r1, r1
     50c:	7121      	strb	r1, [r4, #4]
     50e:	310c      	adds	r1, #12
     510:	f824 2011 	strh.w	r2, [r4, r1, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     514:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
     518:	f3c3 030b 	ubfx	r3, r3, #0, #12
     51c:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     51e:	4a61      	ldr	r2, [pc, #388]	; (6a4 <chip_vm+0x2d8>)
     520:	7812      	ldrb	r2, [r2, #0]
     522:	2a00      	cmp	r2, #0
     524:	d14b      	bne.n	5be <chip_vm+0x1f2>
				vms.pc<<=1;
     526:	005b      	lsls	r3, r3, #1
     528:	8023      	strh	r3, [r4, #0]
     52a:	e048      	b.n	5be <chip_vm+0x1f2>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     52c:	44a0      	add	r8, r4
     52e:	f898 2006 	ldrb.w	r2, [r8, #6]
     532:	429a      	cmp	r2, r3
     534:	d143      	bne.n	5be <chip_vm+0x1f2>
     536:	3004      	adds	r0, #4
     538:	8020      	strh	r0, [r4, #0]
     53a:	e040      	b.n	5be <chip_vm+0x1f2>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     53c:	44a0      	add	r8, r4
     53e:	f898 2006 	ldrb.w	r2, [r8, #6]
     542:	429a      	cmp	r2, r3
     544:	d03b      	beq.n	5be <chip_vm+0x1f2>
     546:	3004      	adds	r0, #4
     548:	8020      	strh	r0, [r4, #0]
     54a:	e038      	b.n	5be <chip_vm+0x1f2>
			switch(vms.b2&0xf){
     54c:	f003 030f 	and.w	r3, r3, #15
     550:	2b02      	cmp	r3, #2
     552:	d00d      	beq.n	570 <chip_vm+0x1a4>
     554:	2b03      	cmp	r3, #3
     556:	d01d      	beq.n	594 <chip_vm+0x1c8>
     558:	bb8b      	cbnz	r3, 5be <chip_vm+0x1f2>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     55a:	44a0      	add	r8, r4
     55c:	44a1      	add	r9, r4
     55e:	f898 2006 	ldrb.w	r2, [r8, #6]
     562:	f899 3006 	ldrb.w	r3, [r9, #6]
     566:	429a      	cmp	r2, r3
     568:	d129      	bne.n	5be <chip_vm+0x1f2>
     56a:	3004      	adds	r0, #4
     56c:	8020      	strh	r0, [r4, #0]
     56e:	e026      	b.n	5be <chip_vm+0x1f2>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     570:	4640      	mov	r0, r8
     572:	45c8      	cmp	r8, r9
     574:	bf28      	it	cs
     576:	4648      	movcs	r0, r9
     578:	eba9 0208 	sub.w	r2, r9, r8
     57c:	2a00      	cmp	r2, #0
     57e:	bfb8      	it	lt
     580:	4252      	neglt	r2, r2
     582:	8863      	ldrh	r3, [r4, #2]
     584:	3006      	adds	r0, #6
     586:	3201      	adds	r2, #1
     588:	4943      	ldr	r1, [pc, #268]	; (698 <chip_vm+0x2cc>)
     58a:	4419      	add	r1, r3
     58c:	4420      	add	r0, r4
     58e:	f000 fe4a 	bl	1226 <move>
				break;
     592:	e014      	b.n	5be <chip_vm+0x1f2>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     594:	8863      	ldrh	r3, [r4, #2]
     596:	4641      	mov	r1, r8
     598:	45c8      	cmp	r8, r9
     59a:	bf28      	it	cs
     59c:	4649      	movcs	r1, r9
     59e:	eba9 0208 	sub.w	r2, r9, r8
     5a2:	2a00      	cmp	r2, #0
     5a4:	bfb8      	it	lt
     5a6:	4252      	neglt	r2, r2
     5a8:	3106      	adds	r1, #6
     5aa:	3201      	adds	r2, #1
     5ac:	4421      	add	r1, r4
     5ae:	483a      	ldr	r0, [pc, #232]	; (698 <chip_vm+0x2cc>)
     5b0:	4418      	add	r0, r3
     5b2:	f000 fe38 	bl	1226 <move>
				break;
     5b6:	e002      	b.n	5be <chip_vm+0x1f2>
			vms.var[x]=vms.b2;
     5b8:	44a0      	add	r8, r4
     5ba:	f888 3006 	strb.w	r3, [r8, #6]
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     5be:	4b39      	ldr	r3, [pc, #228]	; (6a4 <chip_vm+0x2d8>)
     5c0:	781b      	ldrb	r3, [r3, #0]
     5c2:	2b01      	cmp	r3, #1
     5c4:	f43f af10 	beq.w	3e8 <chip_vm+0x1c>
		_get_opcode(vms.pc);
     5c8:	8820      	ldrh	r0, [r4, #0]
     5ca:	4b33      	ldr	r3, [pc, #204]	; (698 <chip_vm+0x2cc>)
     5cc:	5c1a      	ldrb	r2, [r3, r0]
     5ce:	75a2      	strb	r2, [r4, #22]
     5d0:	4403      	add	r3, r0
     5d2:	785b      	ldrb	r3, [r3, #1]
     5d4:	75e3      	strb	r3, [r4, #23]
		if (debug){
     5d6:	2d00      	cmp	r5, #0
     5d8:	f47f af0e 	bne.w	3f8 <chip_vm+0x2c>
		vms.pc+=2;
     5dc:	8820      	ldrh	r0, [r4, #0]
     5de:	1c82      	adds	r2, r0, #2
     5e0:	b292      	uxth	r2, r2
     5e2:	8022      	strh	r2, [r4, #0]
		x=rx(vms.b1);
     5e4:	f894 e016 	ldrb.w	lr, [r4, #22]
     5e8:	f00e 080f 	and.w	r8, lr, #15
		y=ry(vms.b2);
     5ec:	7de3      	ldrb	r3, [r4, #23]
     5ee:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     5f2:	ea4f 111e 	mov.w	r1, lr, lsr #4
     5f6:	290f      	cmp	r1, #15
     5f8:	d8e1      	bhi.n	5be <chip_vm+0x1f2>
     5fa:	a701      	add	r7, pc, #4	; (adr r7, 600 <chip_vm+0x234>)
     5fc:	f857 f021 	ldr.w	pc, [r7, r1, lsl #2]
     600:	00000443 	.word	0x00000443
     604:	000004ef 	.word	0x000004ef
     608:	00000507 	.word	0x00000507
     60c:	0000052d 	.word	0x0000052d
     610:	0000053d 	.word	0x0000053d
     614:	0000054d 	.word	0x0000054d
     618:	000005b9 	.word	0x000005b9
     61c:	00000641 	.word	0x00000641
     620:	00000659 	.word	0x00000659
     624:	00000769 	.word	0x00000769
     628:	000008f7 	.word	0x000008f7
     62c:	00000911 	.word	0x00000911
     630:	00000931 	.word	0x00000931
     634:	00000941 	.word	0x00000941
     638:	000009c5 	.word	0x000009c5
     63c:	00000a05 	.word	0x00000a05
		    n=(vms.var[x]+vms.b2)>255;
     640:	44a0      	add	r8, r4
     642:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     646:	4403      	add	r3, r0
     648:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     64c:	2bff      	cmp	r3, #255	; 0xff
     64e:	bfd4      	ite	le
     650:	2300      	movle	r3, #0
     652:	2301      	movgt	r3, #1
     654:	7563      	strb	r3, [r4, #21]
			break;
     656:	e7b2      	b.n	5be <chip_vm+0x1f2>
			switch(vms.b2&0xf){
     658:	f003 030f 	and.w	r3, r3, #15
     65c:	2b0e      	cmp	r3, #14
     65e:	f200 82b4 	bhi.w	bca <chip_vm+0x7fe>
     662:	e8df f013 	tbh	[pc, r3, lsl #1]
     666:	000f      	.short	0x000f
     668:	002d0023 	.word	0x002d0023
     66c:	00410037 	.word	0x00410037
     670:	005f0050 	.word	0x005f0050
     674:	02b20069 	.word	0x02b20069
     678:	02b202b2 	.word	0x02b202b2
     67c:	02b202b2 	.word	0x02b202b2
     680:	007802b2 	.word	0x007802b2
				vms.var[x]=vms.var[y];
     684:	44a1      	add	r9, r4
     686:	f899 3006 	ldrb.w	r3, [r9, #6]
     68a:	44a0      	add	r8, r4
     68c:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     690:	e795      	b.n	5be <chip_vm+0x1f2>
     692:	bf00      	nop
     694:	2000024c 	.word	0x2000024c
     698:	200006f4 	.word	0x200006f4
     69c:	40013800 	.word	0x40013800
     6a0:	00003bb4 	.word	0x00003bb4
     6a4:	200006f0 	.word	0x200006f0
     6a8:	51eb851f 	.word	0x51eb851f
				vms.var[x]|=vms.var[y];
     6ac:	44a0      	add	r8, r4
     6ae:	44a1      	add	r9, r4
     6b0:	f898 3006 	ldrb.w	r3, [r8, #6]
     6b4:	f899 2006 	ldrb.w	r2, [r9, #6]
     6b8:	4313      	orrs	r3, r2
     6ba:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     6be:	e77e      	b.n	5be <chip_vm+0x1f2>
				vms.var[x]&=vms.var[y];
     6c0:	44a0      	add	r8, r4
     6c2:	44a1      	add	r9, r4
     6c4:	f898 3006 	ldrb.w	r3, [r8, #6]
     6c8:	f899 2006 	ldrb.w	r2, [r9, #6]
     6cc:	4013      	ands	r3, r2
     6ce:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     6d2:	e774      	b.n	5be <chip_vm+0x1f2>
				vms.var[x]^=vms.var[y];
     6d4:	44a0      	add	r8, r4
     6d6:	44a1      	add	r9, r4
     6d8:	f898 3006 	ldrb.w	r3, [r8, #6]
     6dc:	f899 2006 	ldrb.w	r2, [r9, #6]
     6e0:	4053      	eors	r3, r2
     6e2:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     6e6:	e76a      	b.n	5be <chip_vm+0x1f2>
				n=(vms.var[x]+vms.var[y])>255;
     6e8:	44a0      	add	r8, r4
     6ea:	f898 3006 	ldrb.w	r3, [r8, #6]
     6ee:	44a1      	add	r9, r4
     6f0:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     6f4:	4413      	add	r3, r2
     6f6:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     6fa:	2bff      	cmp	r3, #255	; 0xff
     6fc:	bfd4      	ite	le
     6fe:	2300      	movle	r3, #0
     700:	2301      	movgt	r3, #1
     702:	7563      	strb	r3, [r4, #21]
				break;
     704:	e75b      	b.n	5be <chip_vm+0x1f2>
				n=vms.var[x]>=vms.var[y];
     706:	44a0      	add	r8, r4
     708:	f898 3006 	ldrb.w	r3, [r8, #6]
     70c:	44a1      	add	r9, r4
     70e:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     712:	1a99      	subs	r1, r3, r2
     714:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     718:	4293      	cmp	r3, r2
     71a:	bf34      	ite	cc
     71c:	2300      	movcc	r3, #0
     71e:	2301      	movcs	r3, #1
     720:	7563      	strb	r3, [r4, #21]
				break;
     722:	e74c      	b.n	5be <chip_vm+0x1f2>
				n=(vms.var[x]&1u);
     724:	44a0      	add	r8, r4
     726:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     72a:	085a      	lsrs	r2, r3, #1
     72c:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     730:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     734:	7563      	strb	r3, [r4, #21]
				break;
     736:	e742      	b.n	5be <chip_vm+0x1f2>
				n=vms.var[y]>=vms.var[x];
     738:	44a1      	add	r9, r4
     73a:	f899 3006 	ldrb.w	r3, [r9, #6]
     73e:	44a0      	add	r8, r4
     740:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     744:	1a99      	subs	r1, r3, r2
     746:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     74a:	4293      	cmp	r3, r2
     74c:	bf34      	ite	cc
     74e:	2300      	movcc	r3, #0
     750:	2301      	movcs	r3, #1
     752:	7563      	strb	r3, [r4, #21]
				break;
     754:	e733      	b.n	5be <chip_vm+0x1f2>
				n=(vms.var[x]&128)>>7;
     756:	44a0      	add	r8, r4
     758:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     75c:	005a      	lsls	r2, r3, #1
     75e:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     762:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     764:	7563      	strb	r3, [r4, #21]
				break;
     766:	e72a      	b.n	5be <chip_vm+0x1f2>
			switch (vms.b2&0xf){
     768:	f003 030f 	and.w	r3, r3, #15
     76c:	2b0f      	cmp	r3, #15
     76e:	f200 822e 	bhi.w	bce <chip_vm+0x802>
     772:	e8df f003 	tbb	[pc, r3]
     776:	1408      	.short	0x1408
     778:	4b463b1e 	.word	0x4b463b1e
     77c:	726b6156 	.word	0x726b6156
     780:	9e928579 	.word	0x9e928579
     784:	baac      	.short	0xbaac
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     786:	44a0      	add	r8, r4
     788:	44a1      	add	r9, r4
     78a:	f898 2006 	ldrb.w	r2, [r8, #6]
     78e:	f899 3006 	ldrb.w	r3, [r9, #6]
     792:	429a      	cmp	r2, r3
     794:	f43f af13 	beq.w	5be <chip_vm+0x1f2>
     798:	3004      	adds	r0, #4
     79a:	8020      	strh	r0, [r4, #0]
     79c:	e70f      	b.n	5be <chip_vm+0x1f2>
				key_tone(vms.var[x],vms.var[y],false);
     79e:	44a1      	add	r9, r4
     7a0:	44a0      	add	r8, r4
     7a2:	2200      	movs	r2, #0
     7a4:	f899 1006 	ldrb.w	r1, [r9, #6]
     7a8:	f898 0006 	ldrb.w	r0, [r8, #6]
     7ac:	f002 f811 	bl	27d2 <key_tone>
				break;
     7b0:	e705      	b.n	5be <chip_vm+0x1f2>
				select_font(FONT_ASCII);
     7b2:	2002      	movs	r0, #2
     7b4:	f002 f9ae 	bl	2b14 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     7b8:	44a1      	add	r9, r4
     7ba:	44a0      	add	r8, r4
     7bc:	f899 1006 	ldrb.w	r1, [r9, #6]
     7c0:	f898 0006 	ldrb.w	r0, [r8, #6]
     7c4:	f002 fa4e 	bl	2c64 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     7c8:	8860      	ldrh	r0, [r4, #2]
     7ca:	f8df 9318 	ldr.w	r9, [pc, #792]	; ae4 <chip_vm+0x718>
     7ce:	4448      	add	r0, r9
     7d0:	f002 fa7c 	bl	2ccc <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     7d4:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     7d8:	eb09 0008 	add.w	r0, r9, r8
     7dc:	f000 fd2d 	bl	123a <strlen>
     7e0:	f108 0801 	add.w	r8, r8, #1
     7e4:	4480      	add	r8, r0
     7e6:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     7ea:	e6e8      	b.n	5be <chip_vm+0x1f2>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     7ec:	44a1      	add	r9, r4
     7ee:	44a0      	add	r8, r4
     7f0:	2303      	movs	r3, #3
     7f2:	2200      	movs	r2, #0
     7f4:	f899 1006 	ldrb.w	r1, [r9, #6]
     7f8:	f898 0006 	ldrb.w	r0, [r8, #6]
     7fc:	f000 fe12 	bl	1424 <gfx_blit>
				break;
     800:	e6dd      	b.n	5be <chip_vm+0x1f2>
				noise((x<<4)+y);
     802:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     806:	f001 fff7 	bl	27f8 <noise>
				break;
     80a:	e6d8      	b.n	5be <chip_vm+0x1f2>
				key_tone(vms.var[x],vms.var[y],true);
     80c:	44a1      	add	r9, r4
     80e:	44a0      	add	r8, r4
     810:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     814:	f899 1006 	ldrb.w	r1, [r9, #6]
     818:	f898 0006 	ldrb.w	r0, [r8, #6]
     81c:	f001 ffd9 	bl	27d2 <key_tone>
				break;
     820:	e6cd      	b.n	5be <chip_vm+0x1f2>
				vms.stack[++vms.sp]=vms.var[x];
     822:	7923      	ldrb	r3, [r4, #4]
     824:	3301      	adds	r3, #1
     826:	b2db      	uxtb	r3, r3
     828:	7123      	strb	r3, [r4, #4]
     82a:	330c      	adds	r3, #12
     82c:	44a0      	add	r8, r4
     82e:	f898 2006 	ldrb.w	r2, [r8, #6]
     832:	f824 2013 	strh.w	r2, [r4, r3, lsl #1]
				break;
     836:	e6c2      	b.n	5be <chip_vm+0x1f2>
				vms.var[x]=vms.stack[vms.sp--];
     838:	7923      	ldrb	r3, [r4, #4]
     83a:	1e5a      	subs	r2, r3, #1
     83c:	7122      	strb	r2, [r4, #4]
     83e:	44a0      	add	r8, r4
     840:	330c      	adds	r3, #12
     842:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     846:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     84a:	e6b8      	b.n	5be <chip_vm+0x1f2>
				{ 	vmode_params_t *vparams=get_video_params();
     84c:	f002 fd92 	bl	3374 <get_video_params>
					vms.var[x]=vparams->hres;
     850:	44a0      	add	r8, r4
     852:	8983      	ldrh	r3, [r0, #12]
     854:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     858:	e6b1      	b.n	5be <chip_vm+0x1f2>
					vmode_params_t *vparams=get_video_params();
     85a:	f002 fd8b 	bl	3374 <get_video_params>
					vms.var[x]=vparams->vres;
     85e:	44a0      	add	r8, r4
     860:	89c3      	ldrh	r3, [r0, #14]
     862:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     866:	e6aa      	b.n	5be <chip_vm+0x1f2>
			    vms.var[x] |= (1<<(y&0x7));
     868:	44a0      	add	r8, r4
     86a:	f009 0907 	and.w	r9, r9, #7
     86e:	2301      	movs	r3, #1
     870:	fa03 f309 	lsl.w	r3, r3, r9
     874:	f898 2006 	ldrb.w	r2, [r8, #6]
     878:	4313      	orrs	r3, r2
     87a:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     87e:	e69e      	b.n	5be <chip_vm+0x1f2>
			    vms.var[x] &= ~(1<<(y&0x7));
     880:	44a0      	add	r8, r4
     882:	f009 0207 	and.w	r2, r9, #7
     886:	2301      	movs	r3, #1
     888:	fa03 f202 	lsl.w	r2, r3, r2
     88c:	f898 3006 	ldrb.w	r3, [r8, #6]
     890:	ea23 0302 	bic.w	r3, r3, r2
     894:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     898:	e691      	b.n	5be <chip_vm+0x1f2>
   			    vms.var[x] ^= (1<<(y&0x7));
     89a:	44a0      	add	r8, r4
     89c:	f009 0907 	and.w	r9, r9, #7
     8a0:	2301      	movs	r3, #1
     8a2:	fa03 f309 	lsl.w	r3, r3, r9
     8a6:	f898 2006 	ldrb.w	r2, [r8, #6]
     8aa:	4053      	eors	r3, r2
     8ac:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     8b0:	e685      	b.n	5be <chip_vm+0x1f2>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     8b2:	44a0      	add	r8, r4
     8b4:	f898 3006 	ldrb.w	r3, [r8, #6]
     8b8:	f009 0907 	and.w	r9, r9, #7
     8bc:	fa43 f309 	asr.w	r3, r3, r9
     8c0:	f013 0f01 	tst.w	r3, #1
     8c4:	f43f ae7b 	beq.w	5be <chip_vm+0x1f2>
     8c8:	3004      	adds	r0, #4
     8ca:	8020      	strh	r0, [r4, #0]
     8cc:	e677      	b.n	5be <chip_vm+0x1f2>
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     8ce:	44a0      	add	r8, r4
     8d0:	f898 3006 	ldrb.w	r3, [r8, #6]
     8d4:	f009 0907 	and.w	r9, r9, #7
     8d8:	fa43 f309 	asr.w	r3, r3, r9
     8dc:	f013 0f01 	tst.w	r3, #1
     8e0:	f47f ae6d 	bne.w	5be <chip_vm+0x1f2>
     8e4:	3004      	adds	r0, #4
     8e6:	8020      	strh	r0, [r4, #0]
     8e8:	e669      	b.n	5be <chip_vm+0x1f2>
			    vms.var[15]=gfx_get_pixel(x,y);
     8ea:	4649      	mov	r1, r9
     8ec:	4640      	mov	r0, r8
     8ee:	f000 fed7 	bl	16a0 <gfx_get_pixel>
     8f2:	7560      	strb	r0, [r4, #21]
				break;  	
     8f4:	e663      	b.n	5be <chip_vm+0x1f2>
			vms.ix=caddr(vms.b1,vms.b2);
     8f6:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
     8fa:	f3c3 030b 	ubfx	r3, r3, #0, #12
     8fe:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     900:	4a77      	ldr	r2, [pc, #476]	; (ae0 <chip_vm+0x714>)
     902:	7812      	ldrb	r2, [r2, #0]
     904:	b90a      	cbnz	r2, 90a <chip_vm+0x53e>
				vms.ix<<=1;
     906:	005b      	lsls	r3, r3, #1
     908:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     90a:	2300      	movs	r3, #0
     90c:	7163      	strb	r3, [r4, #5]
			break;
     90e:	e656      	b.n	5be <chip_vm+0x1f2>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     910:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
     914:	f3c3 030b 	ubfx	r3, r3, #0, #12
     918:	79a2      	ldrb	r2, [r4, #6]
     91a:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     91e:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     920:	4a6f      	ldr	r2, [pc, #444]	; (ae0 <chip_vm+0x714>)
     922:	7812      	ldrb	r2, [r2, #0]
     924:	2a00      	cmp	r2, #0
     926:	f47f ae4a 	bne.w	5be <chip_vm+0x1f2>
				vms.pc<<=1;
     92a:	005b      	lsls	r3, r3, #1
     92c:	8023      	strh	r3, [r4, #0]
     92e:	e646      	b.n	5be <chip_vm+0x1f2>
			vms.var[x]=rand()&vms.b2;
     930:	f7ff fd3e 	bl	3b0 <rand>
     934:	44a0      	add	r8, r4
     936:	7de3      	ldrb	r3, [r4, #23]
     938:	4018      	ands	r0, r3
     93a:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     93e:	e63e      	b.n	5be <chip_vm+0x1f2>
			if (!n){
     940:	f013 030f 	ands.w	r3, r3, #15
     944:	d11f      	bne.n	986 <chip_vm+0x5ba>
				if (vms.sprite_mem==RAM_MEM){
     946:	7963      	ldrb	r3, [r4, #5]
     948:	b97b      	cbnz	r3, 96a <chip_vm+0x59e>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     94a:	44a1      	add	r9, r4
     94c:	f999 1006 	ldrsb.w	r1, [r9, #6]
     950:	44a0      	add	r8, r4
     952:	f998 0006 	ldrsb.w	r0, [r8, #6]
     956:	8863      	ldrh	r3, [r4, #2]
     958:	4a62      	ldr	r2, [pc, #392]	; (ae4 <chip_vm+0x718>)
     95a:	4413      	add	r3, r2
     95c:	9300      	str	r3, [sp, #0]
     95e:	2310      	movs	r3, #16
     960:	461a      	mov	r2, r3
     962:	f000 fec3 	bl	16ec <gfx_sprite>
     966:	7560      	strb	r0, [r4, #21]
     968:	e629      	b.n	5be <chip_vm+0x1f2>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     96a:	44a1      	add	r9, r4
     96c:	f999 1006 	ldrsb.w	r1, [r9, #6]
     970:	44a0      	add	r8, r4
     972:	f998 0006 	ldrsb.w	r0, [r8, #6]
     976:	8863      	ldrh	r3, [r4, #2]
     978:	9300      	str	r3, [sp, #0]
     97a:	2310      	movs	r3, #16
     97c:	461a      	mov	r2, r3
     97e:	f000 feb5 	bl	16ec <gfx_sprite>
     982:	7560      	strb	r0, [r4, #21]
     984:	e61b      	b.n	5be <chip_vm+0x1f2>
				if (vms.sprite_mem==RAM_MEM){
     986:	7962      	ldrb	r2, [r4, #5]
     988:	b97a      	cbnz	r2, 9aa <chip_vm+0x5de>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     98a:	44a1      	add	r9, r4
     98c:	f999 1006 	ldrsb.w	r1, [r9, #6]
     990:	44a0      	add	r8, r4
     992:	f998 0006 	ldrsb.w	r0, [r8, #6]
     996:	8862      	ldrh	r2, [r4, #2]
     998:	f8df e148 	ldr.w	lr, [pc, #328]	; ae4 <chip_vm+0x718>
     99c:	4472      	add	r2, lr
     99e:	9200      	str	r2, [sp, #0]
     9a0:	2208      	movs	r2, #8
     9a2:	f000 fea3 	bl	16ec <gfx_sprite>
     9a6:	7560      	strb	r0, [r4, #21]
     9a8:	e609      	b.n	5be <chip_vm+0x1f2>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     9aa:	44a1      	add	r9, r4
     9ac:	f999 1006 	ldrsb.w	r1, [r9, #6]
     9b0:	44a0      	add	r8, r4
     9b2:	f998 0006 	ldrsb.w	r0, [r8, #6]
     9b6:	8862      	ldrh	r2, [r4, #2]
     9b8:	9200      	str	r2, [sp, #0]
     9ba:	2208      	movs	r2, #8
     9bc:	f000 fe96 	bl	16ec <gfx_sprite>
     9c0:	7560      	strb	r0, [r4, #21]
     9c2:	e5fc      	b.n	5be <chip_vm+0x1f2>
				switch(vms.b2){
     9c4:	2b9e      	cmp	r3, #158	; 0x9e
     9c6:	d005      	beq.n	9d4 <chip_vm+0x608>
     9c8:	2ba1      	cmp	r3, #161	; 0xa1
     9ca:	d00f      	beq.n	9ec <chip_vm+0x620>
					return CHIP_BAD_OPCODE;
     9cc:	2002      	movs	r0, #2
				
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
}//schipp()
     9ce:	b008      	add	sp, #32
     9d0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     9d4:	44a0      	add	r8, r4
     9d6:	f898 0006 	ldrb.w	r0, [r8, #6]
     9da:	f000 fb03 	bl	fe4 <btn_query_down>
     9de:	2800      	cmp	r0, #0
     9e0:	f43f aded 	beq.w	5be <chip_vm+0x1f2>
     9e4:	8823      	ldrh	r3, [r4, #0]
     9e6:	3302      	adds	r3, #2
     9e8:	8023      	strh	r3, [r4, #0]
     9ea:	e5e8      	b.n	5be <chip_vm+0x1f2>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     9ec:	44a0      	add	r8, r4
     9ee:	f898 0006 	ldrb.w	r0, [r8, #6]
     9f2:	f000 faf7 	bl	fe4 <btn_query_down>
     9f6:	2800      	cmp	r0, #0
     9f8:	f47f ade1 	bne.w	5be <chip_vm+0x1f2>
     9fc:	8823      	ldrh	r3, [r4, #0]
     9fe:	3302      	adds	r3, #2
     a00:	8023      	strh	r3, [r4, #0]
     a02:	e5dc      	b.n	5be <chip_vm+0x1f2>
			switch(vms.b2){
     a04:	3b01      	subs	r3, #1
     a06:	2b84      	cmp	r3, #132	; 0x84
     a08:	f200 80e3 	bhi.w	bd2 <chip_vm+0x806>
     a0c:	e8df f003 	tbb	[pc, r3]
     a10:	e1e14843 	.word	0xe1e14843
     a14:	e14ee1e1 	.word	0xe14ee1e1
     a18:	e1e154e1 	.word	0xe1e154e1
     a1c:	e1e1e1e1 	.word	0xe1e1e1e1
     a20:	e1e1e1e1 	.word	0xe1e1e1e1
     a24:	60e1e15a 	.word	0x60e1e15a
     a28:	e1e1e1e1 	.word	0xe1e1e1e1
     a2c:	e1e170e1 	.word	0xe1e170e1
     a30:	e1e1e1e1 	.word	0xe1e1e1e1
     a34:	e1e1e1e1 	.word	0xe1e1e1e1
     a38:	e1e1e177 	.word	0xe1e1e177
     a3c:	86e1e1e1 	.word	0x86e1e1e1
     a40:	e194e1e1 	.word	0xe194e1e1
     a44:	e1e1e1e1 	.word	0xe1e1e1e1
     a48:	e1e1e1e1 	.word	0xe1e1e1e1
     a4c:	e1e1e1e1 	.word	0xe1e1e1e1
     a50:	e1e1e1e1 	.word	0xe1e1e1e1
     a54:	e1e1e1e1 	.word	0xe1e1e1e1
     a58:	e1e1e1e1 	.word	0xe1e1e1e1
     a5c:	e1e1e1e1 	.word	0xe1e1e1e1
     a60:	e1e1e1e1 	.word	0xe1e1e1e1
     a64:	e1e1e1b9 	.word	0xe1e1e1b9
     a68:	e1e1e1e1 	.word	0xe1e1e1e1
     a6c:	e1e1e1e1 	.word	0xe1e1e1e1
     a70:	e1e1e1e1 	.word	0xe1e1e1e1
     a74:	e1e1e1c2 	.word	0xe1e1e1c2
     a78:	e1e1e1e1 	.word	0xe1e1e1e1
     a7c:	e1e1e1e1 	.word	0xe1e1e1e1
     a80:	e1e1e1e1 	.word	0xe1e1e1e1
     a84:	e1e1e1cb 	.word	0xe1e1e1cb
     a88:	e1e1e1e1 	.word	0xe1e1e1e1
     a8c:	e1e1e1e1 	.word	0xe1e1e1e1
     a90:	e1e1e1e1 	.word	0xe1e1e1e1
     a94:	d3          	.byte	0xd3
     a95:	00          	.byte	0x00
				sprite_bpp=vms.b1&0x3;
     a96:	f00e 0303 	and.w	r3, lr, #3
     a9a:	4a13      	ldr	r2, [pc, #76]	; (ae8 <chip_vm+0x71c>)
     a9c:	7013      	strb	r3, [r2, #0]
				break;
     a9e:	e58e      	b.n	5be <chip_vm+0x1f2>
				load_sound_buffer(&game_ram[vms.ix]);
     aa0:	8863      	ldrh	r3, [r4, #2]
     aa2:	4810      	ldr	r0, [pc, #64]	; (ae4 <chip_vm+0x718>)
     aa4:	4418      	add	r0, r3
     aa6:	f001 fe4e 	bl	2746 <load_sound_buffer>
				break;	
     aaa:	e588      	b.n	5be <chip_vm+0x1f2>
				vms.var[x]=game_timer;
     aac:	4b0f      	ldr	r3, [pc, #60]	; (aec <chip_vm+0x720>)
     aae:	881b      	ldrh	r3, [r3, #0]
     ab0:	44a0      	add	r8, r4
     ab2:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     ab6:	e582      	b.n	5be <chip_vm+0x1f2>
				vms.var[x]=btn_wait_any();
     ab8:	f000 fac8 	bl	104c <btn_wait_any>
     abc:	44a0      	add	r8, r4
     abe:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     ac2:	e57c      	b.n	5be <chip_vm+0x1f2>
				game_timer=vms.var[x];
     ac4:	44a0      	add	r8, r4
     ac6:	f898 2006 	ldrb.w	r2, [r8, #6]
     aca:	4b08      	ldr	r3, [pc, #32]	; (aec <chip_vm+0x720>)
     acc:	801a      	strh	r2, [r3, #0]
				break;
     ace:	e576      	b.n	5be <chip_vm+0x1f2>
				tone(523,vms.var[x]);
     ad0:	44a0      	add	r8, r4
     ad2:	f898 1006 	ldrb.w	r1, [r8, #6]
     ad6:	f240 200b 	movw	r0, #523	; 0x20b
     ada:	f001 fdff 	bl	26dc <tone>
				break;
     ade:	e56e      	b.n	5be <chip_vm+0x1f2>
     ae0:	200006f0 	.word	0x200006f0
     ae4:	200006f4 	.word	0x200006f4
     ae8:	200001e4 	.word	0x200001e4
     aec:	20004e80 	.word	0x20004e80
				vms.ix += vms.var[x];
     af0:	44a0      	add	r8, r4
     af2:	f898 3006 	ldrb.w	r3, [r8, #6]
     af6:	8862      	ldrh	r2, [r4, #2]
     af8:	4413      	add	r3, r2
     afa:	8063      	strh	r3, [r4, #2]
				break;
     afc:	e55f      	b.n	5be <chip_vm+0x1f2>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     afe:	44a0      	add	r8, r4
     b00:	f898 3006 	ldrb.w	r3, [r8, #6]
     b04:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     b08:	4a33      	ldr	r2, [pc, #204]	; (bd8 <chip_vm+0x80c>)
     b0a:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     b0e:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     b10:	2301      	movs	r3, #1
     b12:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     b14:	2000      	movs	r0, #0
     b16:	f001 fffd 	bl	2b14 <select_font>
				break;
     b1a:	e550      	b.n	5be <chip_vm+0x1f2>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     b1c:	44a0      	add	r8, r4
     b1e:	f898 3006 	ldrb.w	r3, [r8, #6]
     b22:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     b26:	4a2d      	ldr	r2, [pc, #180]	; (bdc <chip_vm+0x810>)
     b28:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     b2c:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     b2e:	2001      	movs	r0, #1
     b30:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     b32:	f001 ffef 	bl	2b14 <select_font>
				break;
     b36:	e542      	b.n	5be <chip_vm+0x1f2>
				n=vms.var[x];
     b38:	44a0      	add	r8, r4
     b3a:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     b3e:	4a28      	ldr	r2, [pc, #160]	; (be0 <chip_vm+0x814>)
     b40:	fba2 0301 	umull	r0, r3, r2, r1
     b44:	08db      	lsrs	r3, r3, #3
     b46:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     b4a:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     b4e:	f884 005a 	strb.w	r0, [r4, #90]	; 0x5a
				block[1]=n%10;
     b52:	b2db      	uxtb	r3, r3
     b54:	fba2 0203 	umull	r0, r2, r2, r3
     b58:	08d2      	lsrs	r2, r2, #3
     b5a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     b5e:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     b62:	f884 3059 	strb.w	r3, [r4, #89]	; 0x59
				block[0]=n/10;
     b66:	fbaa 2301 	umull	r2, r3, sl, r1
     b6a:	095b      	lsrs	r3, r3, #5
     b6c:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     b70:	8863      	ldrh	r3, [r4, #2]
     b72:	2203      	movs	r2, #3
     b74:	491b      	ldr	r1, [pc, #108]	; (be4 <chip_vm+0x818>)
     b76:	4419      	add	r1, r3
     b78:	f104 0058 	add.w	r0, r4, #88	; 0x58
     b7c:	f000 fb53 	bl	1226 <move>
				break;
     b80:	e51d      	b.n	5be <chip_vm+0x1f2>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     b82:	8863      	ldrh	r3, [r4, #2]
     b84:	f108 0201 	add.w	r2, r8, #1
     b88:	4916      	ldr	r1, [pc, #88]	; (be4 <chip_vm+0x818>)
     b8a:	4419      	add	r1, r3
     b8c:	4630      	mov	r0, r6
     b8e:	f000 fb4a 	bl	1226 <move>
				break;
     b92:	e514      	b.n	5be <chip_vm+0x1f2>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     b94:	8863      	ldrh	r3, [r4, #2]
     b96:	f108 0201 	add.w	r2, r8, #1
     b9a:	4631      	mov	r1, r6
     b9c:	4811      	ldr	r0, [pc, #68]	; (be4 <chip_vm+0x818>)
     b9e:	4418      	add	r0, r3
     ba0:	f000 fb41 	bl	1226 <move>
				break;
     ba4:	e50b      	b.n	5be <chip_vm+0x1f2>
				move((const uint8_t*)vms.var,block,x+1);
     ba6:	f108 0201 	add.w	r2, r8, #1
     baa:	f104 0158 	add.w	r1, r4, #88	; 0x58
     bae:	4630      	mov	r0, r6
     bb0:	f000 fb39 	bl	1226 <move>
				break;
     bb4:	e503      	b.n	5be <chip_vm+0x1f2>
				move((const uint8_t*)block,vms.var,x+1);
     bb6:	f108 0201 	add.w	r2, r8, #1
     bba:	4631      	mov	r1, r6
     bbc:	f104 0058 	add.w	r0, r4, #88	; 0x58
     bc0:	f000 fb31 	bl	1226 <move>
				break;
     bc4:	e4fb      	b.n	5be <chip_vm+0x1f2>
					return CHIP_EXIT_OK;
     bc6:	2001      	movs	r0, #1
     bc8:	e701      	b.n	9ce <chip_vm+0x602>
				return CHIP_BAD_OPCODE;
     bca:	2002      	movs	r0, #2
     bcc:	e6ff      	b.n	9ce <chip_vm+0x602>
				return CHIP_BAD_OPCODE;
     bce:	2002      	movs	r0, #2
     bd0:	e6fd      	b.n	9ce <chip_vm+0x602>
				return CHIP_BAD_OPCODE;
     bd2:	2002      	movs	r0, #2
     bd4:	e6fb      	b.n	9ce <chip_vm+0x602>
     bd6:	bf00      	nop
     bd8:	00003a64 	.word	0x00003a64
     bdc:	000039c4 	.word	0x000039c4
     be0:	cccccccd 	.word	0xcccccccd
     be4:	200006f4 	.word	0x200006f4

00000be8 <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     be8:	2200      	movs	r2, #0
     bea:	4b0f      	ldr	r3, [pc, #60]	; (c28 <flash_enable+0x40>)
     bec:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     bee:	4b0f      	ldr	r3, [pc, #60]	; (c2c <flash_enable+0x44>)
     bf0:	681b      	ldr	r3, [r3, #0]
     bf2:	f013 0f01 	tst.w	r3, #1
     bf6:	d10b      	bne.n	c10 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     bf8:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     bfc:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     c00:	6813      	ldr	r3, [r2, #0]
     c02:	f043 0301 	orr.w	r3, r3, #1
     c06:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     c08:	6813      	ldr	r3, [r2, #0]
     c0a:	f013 0f02 	tst.w	r3, #2
     c0e:	d0fb      	beq.n	c08 <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     c10:	4b07      	ldr	r3, [pc, #28]	; (c30 <flash_enable+0x48>)
     c12:	4a08      	ldr	r2, [pc, #32]	; (c34 <flash_enable+0x4c>)
     c14:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     c16:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     c1a:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     c1c:	6918      	ldr	r0, [r3, #16]
     c1e:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     c22:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     c26:	4770      	bx	lr
     c28:	200002c4 	.word	0x200002c4
     c2c:	40021000 	.word	0x40021000
     c30:	40022000 	.word	0x40022000
     c34:	45670123 	.word	0x45670123

00000c38 <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     c38:	4a0b      	ldr	r2, [pc, #44]	; (c68 <flash_write_hword+0x30>)
     c3a:	68d3      	ldr	r3, [r2, #12]
     c3c:	f013 0f01 	tst.w	r3, #1
     c40:	d1fb      	bne.n	c3a <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     c42:	4b09      	ldr	r3, [pc, #36]	; (c68 <flash_write_hword+0x30>)
     c44:	68da      	ldr	r2, [r3, #12]
     c46:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     c4a:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     c4c:	2201      	movs	r2, #1
     c4e:	611a      	str	r2, [r3, #16]
	*address=hword;
     c50:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     c52:	68da      	ldr	r2, [r3, #12]
     c54:	f012 0f01 	tst.w	r2, #1
     c58:	d003      	beq.n	c62 <flash_write_hword+0x2a>
     c5a:	68da      	ldr	r2, [r3, #12]
     c5c:	f012 0f20 	tst.w	r2, #32
     c60:	d0f7      	beq.n	c52 <flash_write_hword+0x1a>
	return *address==hword;
}
     c62:	2001      	movs	r0, #1
     c64:	4770      	bx	lr
     c66:	bf00      	nop
     c68:	40022000 	.word	0x40022000

00000c6c <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     c6c:	283f      	cmp	r0, #63	; 0x3f
     c6e:	d914      	bls.n	c9a <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     c70:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     c72:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     c74:	1c81      	adds	r1, r0, #2
     c76:	8802      	ldrh	r2, [r0, #0]
     c78:	f64f 73ff 	movw	r3, #65535	; 0xffff
     c7c:	429a      	cmp	r2, r3
     c7e:	d110      	bne.n	ca2 <flash_erase_row+0x36>
     c80:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     c84:	460b      	mov	r3, r1
     c86:	f64f 74ff 	movw	r4, #65535	; 0xffff
     c8a:	f833 2b02 	ldrh.w	r2, [r3], #2
     c8e:	42a2      	cmp	r2, r4
     c90:	d107      	bne.n	ca2 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     c92:	429d      	cmp	r5, r3
     c94:	d1f9      	bne.n	c8a <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     c96:	2001      	movs	r0, #1
     c98:	e02f      	b.n	cfa <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     c9a:	2000      	movs	r0, #0
     c9c:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     c9e:	2000      	movs	r0, #0
     ca0:	e02b      	b.n	cfa <flash_erase_row+0x8e>
     ca2:	4b17      	ldr	r3, [pc, #92]	; (d00 <flash_erase_row+0x94>)
     ca4:	691b      	ldr	r3, [r3, #16]
     ca6:	f013 0f80 	tst.w	r3, #128	; 0x80
     caa:	d1f8      	bne.n	c9e <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     cac:	4b14      	ldr	r3, [pc, #80]	; (d00 <flash_erase_row+0x94>)
     cae:	68da      	ldr	r2, [r3, #12]
     cb0:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     cb4:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     cb6:	2202      	movs	r2, #2
     cb8:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     cba:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     cbc:	691a      	ldr	r2, [r3, #16]
     cbe:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     cc2:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     cc4:	68da      	ldr	r2, [r3, #12]
     cc6:	f012 0f01 	tst.w	r2, #1
     cca:	d003      	beq.n	cd4 <flash_erase_row+0x68>
     ccc:	68da      	ldr	r2, [r3, #12]
     cce:	f012 0f20 	tst.w	r2, #32
     cd2:	d0f7      	beq.n	cc4 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     cd4:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     cd6:	f64f 72ff 	movw	r2, #65535	; 0xffff
     cda:	4293      	cmp	r3, r2
     cdc:	d107      	bne.n	cee <flash_erase_row+0x82>
     cde:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     ce2:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     ce6:	4293      	cmp	r3, r2
     ce8:	d101      	bne.n	cee <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     cea:	4281      	cmp	r1, r0
     cec:	d1f9      	bne.n	ce2 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     cee:	f64f 70ff 	movw	r0, #65535	; 0xffff
     cf2:	4283      	cmp	r3, r0
     cf4:	bf14      	ite	ne
     cf6:	2000      	movne	r0, #0
     cf8:	2001      	moveq	r0, #1
}
     cfa:	bc30      	pop	{r4, r5}
     cfc:	4770      	bx	lr
     cfe:	bf00      	nop
     d00:	40022000 	.word	0x40022000

00000d04 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     d04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     d06:	4b1c      	ldr	r3, [pc, #112]	; (d78 <flash_sync+0x74>)
     d08:	781b      	ldrb	r3, [r3, #0]
     d0a:	f013 0f01 	tst.w	r3, #1
     d0e:	d102      	bne.n	d16 <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     d10:	2301      	movs	r3, #1
}
     d12:	4618      	mov	r0, r3
     d14:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     d16:	4b18      	ldr	r3, [pc, #96]	; (d78 <flash_sync+0x74>)
     d18:	7858      	ldrb	r0, [r3, #1]
     d1a:	f7ff ffa7 	bl	c6c <flash_erase_row>
     d1e:	4603      	mov	r3, r0
     d20:	2800      	cmp	r0, #0
     d22:	d0f6      	beq.n	d12 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     d24:	4e14      	ldr	r6, [pc, #80]	; (d78 <flash_sync+0x74>)
     d26:	7875      	ldrb	r5, [r6, #1]
     d28:	02ad      	lsls	r5, r5, #10
     d2a:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d2c:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     d2e:	f64f 77ff 	movw	r7, #65535	; 0xffff
     d32:	e004      	b.n	d3e <flash_sync+0x3a>
		dest++;
     d34:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d36:	3401      	adds	r4, #1
     d38:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     d3c:	d00a      	beq.n	d54 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     d3e:	f836 1b02 	ldrh.w	r1, [r6], #2
     d42:	42b9      	cmp	r1, r7
     d44:	d0f6      	beq.n	d34 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     d46:	4628      	mov	r0, r5
     d48:	f7ff ff76 	bl	c38 <flash_write_hword>
     d4c:	2800      	cmp	r0, #0
     d4e:	d1f1      	bne.n	d34 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     d50:	2c00      	cmp	r4, #0
     d52:	dd04      	ble.n	d5e <flash_sync+0x5a>
     d54:	4a08      	ldr	r2, [pc, #32]	; (d78 <flash_sync+0x74>)
     d56:	7813      	ldrb	r3, [r2, #0]
     d58:	f023 0304 	bic.w	r3, r3, #4
     d5c:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     d5e:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     d62:	d106      	bne.n	d72 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     d64:	4a04      	ldr	r2, [pc, #16]	; (d78 <flash_sync+0x74>)
     d66:	7813      	ldrb	r3, [r2, #0]
     d68:	f023 0301 	bic.w	r3, r3, #1
     d6c:	7013      	strb	r3, [r2, #0]
			return 1;
     d6e:	2301      	movs	r3, #1
     d70:	e7cf      	b.n	d12 <flash_sync+0xe>
		return 0;
     d72:	2300      	movs	r3, #0
     d74:	e7cd      	b.n	d12 <flash_sync+0xe>
     d76:	bf00      	nop
     d78:	200002c4 	.word	0x200002c4

00000d7c <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     d7c:	2200      	movs	r2, #0
     d7e:	4b01      	ldr	r3, [pc, #4]	; (d84 <flash_flush+0x8>)
     d80:	701a      	strb	r2, [r3, #0]
     d82:	4770      	bx	lr
     d84:	200002c4 	.word	0x200002c4

00000d88 <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     d88:	b508      	push	{r3, lr}
	flash_sync();
     d8a:	f7ff ffbb 	bl	d04 <flash_sync>
	row_buff.flags=0;
     d8e:	2200      	movs	r2, #0
     d90:	4b03      	ldr	r3, [pc, #12]	; (da0 <flash_disable+0x18>)
     d92:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     d94:	4a03      	ldr	r2, [pc, #12]	; (da4 <flash_disable+0x1c>)
     d96:	6913      	ldr	r3, [r2, #16]
     d98:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     d9c:	6113      	str	r3, [r2, #16]
     d9e:	bd08      	pop	{r3, pc}
     da0:	200002c4 	.word	0x200002c4
     da4:	40022000 	.word	0x40022000

00000da8 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     da8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     dac:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     db0:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     db4:	d92c      	bls.n	e10 <flash_write_byte+0x68>
     db6:	460e      	mov	r6, r1
     db8:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     dba:	4b16      	ldr	r3, [pc, #88]	; (e14 <flash_write_byte+0x6c>)
     dbc:	785b      	ldrb	r3, [r3, #1]
     dbe:	4598      	cmp	r8, r3
     dc0:	d019      	beq.n	df6 <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     dc2:	f7ff ff9f 	bl	d04 <flash_sync>
     dc6:	4603      	mov	r3, r0
     dc8:	b1f8      	cbz	r0, e0a <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     dca:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     dce:	f023 0303 	bic.w	r3, r3, #3
     dd2:	4a10      	ldr	r2, [pc, #64]	; (e14 <flash_write_byte+0x6c>)
     dd4:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     dd8:	f833 4b02 	ldrh.w	r4, [r3], #2
     ddc:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     de0:	42ab      	cmp	r3, r5
     de2:	d1f9      	bne.n	dd8 <flash_write_byte+0x30>
	row_buff.row=r;
     de4:	4a0b      	ldr	r2, [pc, #44]	; (e14 <flash_write_byte+0x6c>)
     de6:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     dea:	7813      	ldrb	r3, [r2, #0]
     dec:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     df0:	f043 0302 	orr.w	r3, r3, #2
     df4:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     df6:	4a07      	ldr	r2, [pc, #28]	; (e14 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     df8:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     dfc:	4413      	add	r3, r2
     dfe:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     e00:	7813      	ldrb	r3, [r2, #0]
     e02:	f043 0301 	orr.w	r3, r3, #1
     e06:	7013      	strb	r3, [r2, #0]
	return 1;
     e08:	2301      	movs	r3, #1
}
     e0a:	4618      	mov	r0, r3
     e0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     e10:	2300      	movs	r3, #0
     e12:	e7fa      	b.n	e0a <flash_write_byte+0x62>
     e14:	200002c4 	.word	0x200002c4

00000e18 <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     e18:	2a00      	cmp	r2, #0
     e1a:	dd13      	ble.n	e44 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     e1c:	b410      	push	{r4}
     e1e:	4603      	mov	r3, r0
     e20:	3901      	subs	r1, #1
     e22:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     e24:	4a08      	ldr	r2, [pc, #32]	; (e48 <flash_read_block+0x30>)
     e26:	7854      	ldrb	r4, [r2, #1]
     e28:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     e2c:	bf03      	ittte	eq
     e2e:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     e32:	18a4      	addeq	r4, r4, r2
     e34:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     e36:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     e38:	f801 4f01 	strb.w	r4, [r1, #1]!
     e3c:	3301      	adds	r3, #1
     e3e:	4283      	cmp	r3, r0
     e40:	d1f1      	bne.n	e26 <flash_read_block+0xe>
}
     e42:	bc10      	pop	{r4}
     e44:	4770      	bx	lr
     e46:	bf00      	nop
     e48:	200002c4 	.word	0x200002c4

00000e4c <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
     e4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<ffa) return 0;
     e4e:	4b11      	ldr	r3, [pc, #68]	; (e94 <flash_write_block+0x48>)
     e50:	681b      	ldr	r3, [r3, #0]
     e52:	4298      	cmp	r0, r3
     e54:	d202      	bcs.n	e5c <flash_write_block+0x10>
     e56:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
     e58:	4618      	mov	r0, r3
     e5a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     e5c:	4604      	mov	r4, r0
     e5e:	460e      	mov	r6, r1
     e60:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
     e62:	f7ff fec1 	bl	be8 <flash_enable>
     e66:	4603      	mov	r3, r0
     e68:	2800      	cmp	r0, #0
     e6a:	d0f5      	beq.n	e58 <flash_write_block+0xc>
	for (i=0;i<size;i++){
     e6c:	2f00      	cmp	r7, #0
     e6e:	dd0c      	ble.n	e8a <flash_write_block+0x3e>
     e70:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
     e72:	1c65      	adds	r5, r4, #1
     e74:	f816 1b01 	ldrb.w	r1, [r6], #1
     e78:	4620      	mov	r0, r4
     e7a:	f7ff ff95 	bl	da8 <flash_write_byte>
     e7e:	4603      	mov	r3, r0
     e80:	2800      	cmp	r0, #0
     e82:	d0e9      	beq.n	e58 <flash_write_block+0xc>
     e84:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
     e86:	42bd      	cmp	r5, r7
     e88:	d1f3      	bne.n	e72 <flash_write_block+0x26>
	flash_disable();
     e8a:	f7ff ff7d 	bl	d88 <flash_disable>
	return 1;
     e8e:	2301      	movs	r3, #1
     e90:	e7e2      	b.n	e58 <flash_write_block+0xc>
     e92:	bf00      	nop
     e94:	00004000 	.word	0x00004000

00000e98 <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
     e98:	4b0a      	ldr	r3, [pc, #40]	; (ec4 <btn_mask+0x2c>)
     e9a:	781b      	ldrb	r3, [r3, #0]
     e9c:	4283      	cmp	r3, r0
     e9e:	d00a      	beq.n	eb6 <btn_mask+0x1e>
     ea0:	4a09      	ldr	r2, [pc, #36]	; (ec8 <btn_mask+0x30>)
    for (i=0;i<8;i++){
     ea2:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
     ea4:	f812 1b01 	ldrb.w	r1, [r2], #1
     ea8:	4281      	cmp	r1, r0
     eaa:	d005      	beq.n	eb8 <btn_mask+0x20>
    for (i=0;i<8;i++){
     eac:	3301      	adds	r3, #1
     eae:	2b08      	cmp	r3, #8
     eb0:	d1f8      	bne.n	ea4 <btn_mask+0xc>
    }
    return 255;
     eb2:	20ff      	movs	r0, #255	; 0xff
}
     eb4:	4770      	bx	lr
    for (i=0;i<8;i++){
     eb6:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
     eb8:	2001      	movs	r0, #1
     eba:	fa00 f303 	lsl.w	r3, r0, r3
     ebe:	b2d8      	uxtb	r0, r3
     ec0:	4770      	bx	lr
     ec2:	bf00      	nop
     ec4:	200006c8 	.word	0x200006c8
     ec8:	200006c9 	.word	0x200006c9

00000ecc <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
     ecc:	b430      	push	{r4, r5}
     ece:	4605      	mov	r5, r0
     ed0:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
     ed2:	2000      	movs	r0, #0
     ed4:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     ed6:	4b1b      	ldr	r3, [pc, #108]	; (f44 <shift_out+0x78>)
     ed8:	e003      	b.n	ee2 <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
     eda:	0052      	lsls	r2, r2, #1
     edc:	b2d2      	uxtb	r2, r2
    while (mask){
     ede:	3c01      	subs	r4, #1
     ee0:	d01d      	beq.n	f1e <shift_out+0x52>
        if (byte&mask){
     ee2:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     ee4:	68d9      	ldr	r1, [r3, #12]
     ee6:	bf14      	ite	ne
     ee8:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     eec:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
     ef0:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     ef2:	68d9      	ldr	r1, [r3, #12]
     ef4:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
     ef8:	60d9      	str	r1, [r3, #12]
        _clk_delay();
     efa:	bf00      	nop
     efc:	bf00      	nop
     efe:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     f00:	68d9      	ldr	r1, [r3, #12]
     f02:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
     f06:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
     f08:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
     f0a:	6899      	ldr	r1, [r3, #8]
     f0c:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
     f10:	6099      	str	r1, [r3, #8]
     f12:	2900      	cmp	r1, #0
     f14:	d0e1      	beq.n	eda <shift_out+0xe>
     f16:	f060 007f 	orn	r0, r0, #127	; 0x7f
     f1a:	b2c0      	uxtb	r0, r0
     f1c:	e7dd      	b.n	eda <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     f1e:	4b09      	ldr	r3, [pc, #36]	; (f44 <shift_out+0x78>)
     f20:	68da      	ldr	r2, [r3, #12]
     f22:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
     f26:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     f28:	68da      	ldr	r2, [r3, #12]
     f2a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
     f2e:	60da      	str	r2, [r3, #12]
    _clk_delay();
     f30:	bf00      	nop
     f32:	bf00      	nop
     f34:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     f36:	68da      	ldr	r2, [r3, #12]
     f38:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
     f3c:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
     f3e:	bc30      	pop	{r4, r5}
     f40:	4770      	bx	lr
     f42:	bf00      	nop
     f44:	40010c00 	.word	0x40010c00

00000f48 <set_keymap>:
void set_keymap(const uint8_t *kmap){
     f48:	1e43      	subs	r3, r0, #1
     f4a:	4a04      	ldr	r2, [pc, #16]	; (f5c <set_keymap+0x14>)
     f4c:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
     f4e:	f813 1f01 	ldrb.w	r1, [r3, #1]!
     f52:	f802 1f01 	strb.w	r1, [r2, #1]!
     f56:	4283      	cmp	r3, r0
     f58:	d1f9      	bne.n	f4e <set_keymap+0x6>
}
     f5a:	4770      	bx	lr
     f5c:	200006c7 	.word	0x200006c7

00000f60 <gamepad_init>:
void gamepad_init(){
     f60:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
     f62:	4c0b      	ldr	r4, [pc, #44]	; (f90 <gamepad_init+0x30>)
     f64:	2202      	movs	r2, #2
     f66:	210f      	movs	r1, #15
     f68:	4620      	mov	r0, r4
     f6a:	f000 fa1b 	bl	13a4 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
     f6e:	2202      	movs	r2, #2
     f70:	210d      	movs	r1, #13
     f72:	4620      	mov	r0, r4
     f74:	f000 fa16 	bl	13a4 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
     f78:	2208      	movs	r2, #8
     f7a:	210e      	movs	r1, #14
     f7c:	4620      	mov	r0, r4
     f7e:	f000 fa11 	bl	13a4 <config_pin>
    btn_state=0xff;
     f82:	22ff      	movs	r2, #255	; 0xff
     f84:	4b03      	ldr	r3, [pc, #12]	; (f94 <gamepad_init+0x34>)
     f86:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
     f88:	4803      	ldr	r0, [pc, #12]	; (f98 <gamepad_init+0x38>)
     f8a:	f7ff ffdd 	bl	f48 <set_keymap>
     f8e:	bd10      	pop	{r4, pc}
     f90:	40010c00 	.word	0x40010c00
     f94:	200026f4 	.word	0x200026f4
     f98:	00003ac4 	.word	0x00003ac4

00000f9c <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
     f9c:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
     f9e:	20fe      	movs	r0, #254	; 0xfe
     fa0:	f7ff ff94 	bl	ecc <shift_out>
     fa4:	4b0c      	ldr	r3, [pc, #48]	; (fd8 <read_gamepad+0x3c>)
     fa6:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
     fa8:	781b      	ldrb	r3, [r3, #0]
     faa:	f013 0f12 	tst.w	r3, #18
     fae:	d111      	bne.n	fd4 <read_gamepad+0x38>
        while (btn_state!=0xff){
     fb0:	4b09      	ldr	r3, [pc, #36]	; (fd8 <read_gamepad+0x3c>)
     fb2:	781b      	ldrb	r3, [r3, #0]
     fb4:	b2db      	uxtb	r3, r3
     fb6:	2bff      	cmp	r3, #255	; 0xff
     fb8:	d009      	beq.n	fce <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
     fba:	25fe      	movs	r5, #254	; 0xfe
     fbc:	4c06      	ldr	r4, [pc, #24]	; (fd8 <read_gamepad+0x3c>)
     fbe:	4628      	mov	r0, r5
     fc0:	f7ff ff84 	bl	ecc <shift_out>
     fc4:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
     fc6:	7823      	ldrb	r3, [r4, #0]
     fc8:	b2db      	uxtb	r3, r3
     fca:	2bff      	cmp	r3, #255	; 0xff
     fcc:	d1f7      	bne.n	fbe <read_gamepad+0x22>
        };
        _reset_mcu();
     fce:	4a03      	ldr	r2, [pc, #12]	; (fdc <read_gamepad+0x40>)
     fd0:	4b03      	ldr	r3, [pc, #12]	; (fe0 <read_gamepad+0x44>)
     fd2:	601a      	str	r2, [r3, #0]
     fd4:	bd38      	pop	{r3, r4, r5, pc}
     fd6:	bf00      	nop
     fd8:	200026f4 	.word	0x200026f4
     fdc:	05fa0004 	.word	0x05fa0004
     fe0:	e000ed0c 	.word	0xe000ed0c

00000fe4 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
     fe4:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
     fe6:	f7ff ff57 	bl	e98 <btn_mask>
    return !(btn_state&mask);
     fea:	4b03      	ldr	r3, [pc, #12]	; (ff8 <btn_query_down+0x14>)
     fec:	781b      	ldrb	r3, [r3, #0]
     fee:	4203      	tst	r3, r0
}
     ff0:	bf0c      	ite	eq
     ff2:	2001      	moveq	r0, #1
     ff4:	2000      	movne	r0, #0
     ff6:	bd08      	pop	{r3, pc}
     ff8:	200026f4 	.word	0x200026f4

00000ffc <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
     ffc:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
     ffe:	f7ff ff4b 	bl	e98 <btn_mask>
    1002:	4606      	mov	r6, r0
    int frame_count=0;
    1004:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    1006:	4d06      	ldr	r5, [pc, #24]	; (1020 <btn_wait_down+0x24>)
    1008:	e000      	b.n	100c <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    100a:	2400      	movs	r4, #0
        frame_sync();
    100c:	f002 f978 	bl	3300 <frame_sync>
        if (!(btn_state&mask)){
    1010:	782b      	ldrb	r3, [r5, #0]
    1012:	4233      	tst	r3, r6
    1014:	d1f9      	bne.n	100a <btn_wait_down+0xe>
            frame_count++;
    1016:	3401      	adds	r4, #1
    while (frame_count<3){
    1018:	2c02      	cmp	r4, #2
    101a:	ddf7      	ble.n	100c <btn_wait_down+0x10>
        }
    }
}
    101c:	bd70      	pop	{r4, r5, r6, pc}
    101e:	bf00      	nop
    1020:	200026f4 	.word	0x200026f4

00001024 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1024:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    1026:	f7ff ff37 	bl	e98 <btn_mask>
    102a:	4606      	mov	r6, r0
    int frame_count=0;
    102c:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    102e:	4d06      	ldr	r5, [pc, #24]	; (1048 <btn_wait_up+0x24>)
    1030:	e000      	b.n	1034 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    1032:	2400      	movs	r4, #0
        frame_sync();
    1034:	f002 f964 	bl	3300 <frame_sync>
        if ((btn_state&mask)){
    1038:	782b      	ldrb	r3, [r5, #0]
    103a:	4233      	tst	r3, r6
    103c:	d0f9      	beq.n	1032 <btn_wait_up+0xe>
            frame_count++;
    103e:	3401      	adds	r4, #1
    while (frame_count<3){
    1040:	2c02      	cmp	r4, #2
    1042:	ddf7      	ble.n	1034 <btn_wait_up+0x10>
        }
    }
}
    1044:	bd70      	pop	{r4, r5, r6, pc}
    1046:	bf00      	nop
    1048:	200026f4 	.word	0x200026f4

0000104c <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    104c:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    104e:	4b15      	ldr	r3, [pc, #84]	; (10a4 <btn_wait_any+0x58>)
    1050:	781c      	ldrb	r4, [r3, #0]
    1052:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1054:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    1056:	461d      	mov	r5, r3
    1058:	e007      	b.n	106a <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    105a:	782a      	ldrb	r2, [r5, #0]
    105c:	b2d2      	uxtb	r2, r2
    105e:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1060:	bf18      	it	ne
    1062:	3601      	addne	r6, #1
    while (frame_count<3){
    1064:	2e02      	cmp	r6, #2
    1066:	dc0a      	bgt.n	107e <btn_wait_any+0x32>
    1068:	461c      	mov	r4, r3
        frame_sync();
    106a:	f002 f949 	bl	3300 <frame_sync>
        if (last_state!=btn_state){
    106e:	782b      	ldrb	r3, [r5, #0]
    1070:	b2db      	uxtb	r3, r3
    1072:	42a3      	cmp	r3, r4
    1074:	d0f1      	beq.n	105a <btn_wait_any+0xe>
            last_state=btn_state;
    1076:	782c      	ldrb	r4, [r5, #0]
    1078:	b2e4      	uxtb	r4, r4
            frame_count=0;
    107a:	2600      	movs	r6, #0
    107c:	e7f5      	b.n	106a <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    107e:	43e3      	mvns	r3, r4
    mask>>=1;
    1080:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1084:	b15b      	cbz	r3, 109e <btn_wait_any+0x52>
    1086:	2200      	movs	r2, #0
    1088:	3201      	adds	r2, #1
    108a:	b2d2      	uxtb	r2, r2
    108c:	085b      	lsrs	r3, r3, #1
    108e:	d1fb      	bne.n	1088 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1090:	4b05      	ldr	r3, [pc, #20]	; (10a8 <btn_wait_any+0x5c>)
    1092:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1094:	4620      	mov	r0, r4
    1096:	f7ff ffc5 	bl	1024 <btn_wait_up>
    return btn;
}
    109a:	4620      	mov	r0, r4
    109c:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    109e:	461a      	mov	r2, r3
    10a0:	e7f6      	b.n	1090 <btn_wait_any+0x44>
    10a2:	bf00      	nop
    10a4:	200026f4 	.word	0x200026f4
    10a8:	200006c8 	.word	0x200006c8

000010ac <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    10ac:	4b01      	ldr	r3, [pc, #4]	; (10b4 <btn_set_value+0x8>)
    10ae:	5419      	strb	r1, [r3, r0]
    10b0:	4770      	bx	lr
    10b2:	bf00      	nop
    10b4:	200006c8 	.word	0x200006c8

000010b8 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    10b8:	4800      	ldr	r0, [pc, #0]	; (10bc <get_keymap+0x4>)
    10ba:	4770      	bx	lr
    10bc:	200006c8 	.word	0x200006c8

000010c0 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    10c0:	4b06      	ldr	r3, [pc, #24]	; (10dc <games_count+0x1c>)
    10c2:	691b      	ldr	r3, [r3, #16]
    10c4:	b13b      	cbz	r3, 10d6 <games_count+0x16>
    10c6:	4b05      	ldr	r3, [pc, #20]	; (10dc <games_count+0x1c>)
    10c8:	2000      	movs	r0, #0
    for (i=0;;i++){
    10ca:	3001      	adds	r0, #1
    10cc:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    10ce:	691a      	ldr	r2, [r3, #16]
    10d0:	2a00      	cmp	r2, #0
    10d2:	d1fa      	bne.n	10ca <games_count+0xa>
    10d4:	4770      	bx	lr
    for (i=0;;i++){
    10d6:	2000      	movs	r0, #0
    }
    return i;
}
    10d8:	4770      	bx	lr
    10da:	bf00      	nop
    10dc:	20000004 	.word	0x20000004

000010e0 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    10e0:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    10e2:	7803      	ldrb	r3, [r0, #0]
    10e4:	b1fb      	cbz	r3, 1126 <strcmp+0x46>
    10e6:	780a      	ldrb	r2, [r1, #0]
    10e8:	b17a      	cbz	r2, 110a <strcmp+0x2a>
		if (*s1<*s2){
    10ea:	4293      	cmp	r3, r2
    10ec:	d313      	bcc.n	1116 <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    10ee:	d815      	bhi.n	111c <strcmp+0x3c>
    10f0:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    10f2:	4621      	mov	r1, r4
	while (*s1 && *s2){
    10f4:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    10f8:	b1ab      	cbz	r3, 1126 <strcmp+0x46>
    10fa:	f814 2b01 	ldrb.w	r2, [r4], #1
    10fe:	b122      	cbz	r2, 110a <strcmp+0x2a>
		if (*s1<*s2){
    1100:	4293      	cmp	r3, r2
    1102:	d30d      	bcc.n	1120 <strcmp+0x40>
		}else if (*s1>*s2){
    1104:	d9f5      	bls.n	10f2 <strcmp+0x12>
			result=1;
    1106:	2001      	movs	r0, #1
    1108:	e003      	b.n	1112 <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    110a:	7808      	ldrb	r0, [r1, #0]
    110c:	fab0 f080 	clz	r0, r0
    1110:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    1112:	bc10      	pop	{r4}
    1114:	4770      	bx	lr
			result=-1;
    1116:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    111a:	e7fa      	b.n	1112 <strcmp+0x32>
			result=1;
    111c:	2001      	movs	r0, #1
    111e:	e7f8      	b.n	1112 <strcmp+0x32>
			result=-1;
    1120:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1124:	e7f5      	b.n	1112 <strcmp+0x32>
		if (!*s1 && *s2){
    1126:	7808      	ldrb	r0, [r1, #0]
    1128:	3000      	adds	r0, #0
    112a:	bf18      	it	ne
    112c:	2001      	movne	r0, #1
    112e:	4240      	negs	r0, r0
    1130:	e7ef      	b.n	1112 <strcmp+0x32>

00001132 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1132:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    1136:	b2db      	uxtb	r3, r3
    1138:	2b19      	cmp	r3, #25
    113a:	d906      	bls.n	114a <alpha+0x18>
    113c:	3841      	subs	r0, #65	; 0x41
    113e:	b2c0      	uxtb	r0, r0
    1140:	2819      	cmp	r0, #25
    1142:	bf8c      	ite	hi
    1144:	2000      	movhi	r0, #0
    1146:	2001      	movls	r0, #1
    1148:	4770      	bx	lr
    114a:	2001      	movs	r0, #1
}
    114c:	4770      	bx	lr

0000114e <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    114e:	3830      	subs	r0, #48	; 0x30
    1150:	b2c0      	uxtb	r0, r0
}
    1152:	2809      	cmp	r0, #9
    1154:	bf8c      	ite	hi
    1156:	2000      	movhi	r0, #0
    1158:	2001      	movls	r0, #1
    115a:	4770      	bx	lr

0000115c <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    115c:	2860      	cmp	r0, #96	; 0x60
    115e:	bf84      	itt	hi
    1160:	3820      	subhi	r0, #32
    1162:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1164:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1168:	b2db      	uxtb	r3, r3
    116a:	2b09      	cmp	r3, #9
    116c:	d906      	bls.n	117c <hexdigit+0x20>
    116e:	3841      	subs	r0, #65	; 0x41
    1170:	b2c0      	uxtb	r0, r0
    1172:	2805      	cmp	r0, #5
    1174:	bf8c      	ite	hi
    1176:	2000      	movhi	r0, #0
    1178:	2001      	movls	r0, #1
    117a:	4770      	bx	lr
    117c:	2001      	movs	r0, #1
}
    117e:	4770      	bx	lr

00001180 <atoi>:

int atoi(const char *str){
    1180:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1184:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1186:	7803      	ldrb	r3, [r0, #0]
    1188:	2b20      	cmp	r3, #32
    118a:	d103      	bne.n	1194 <atoi+0x14>
    118c:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1190:	2b20      	cmp	r3, #32
    1192:	d0fb      	beq.n	118c <atoi+0xc>
	if (*str=='-'){
    1194:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    1196:	bf06      	itte	eq
    1198:	3501      	addeq	r5, #1
		sign=-1;
    119a:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    119e:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    11a2:	782b      	ldrb	r3, [r5, #0]
    11a4:	2b24      	cmp	r3, #36	; 0x24
    11a6:	d005      	beq.n	11b4 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    11a8:	2b30      	cmp	r3, #48	; 0x30
    11aa:	d00a      	beq.n	11c2 <atoi+0x42>
	int n=0,sign=1,base=10;
    11ac:	270a      	movs	r7, #10
    11ae:	3d01      	subs	r5, #1
    11b0:	2600      	movs	r6, #0
    11b2:	e026      	b.n	1202 <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    11b4:	7868      	ldrb	r0, [r5, #1]
    11b6:	f7ff ffd1 	bl	115c <hexdigit>
    11ba:	b160      	cbz	r0, 11d6 <atoi+0x56>
		str++;
    11bc:	3501      	adds	r5, #1
		base=16;
    11be:	2710      	movs	r7, #16
		str++;
    11c0:	e7f5      	b.n	11ae <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    11c2:	786b      	ldrb	r3, [r5, #1]
    11c4:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    11c8:	2b58      	cmp	r3, #88	; 0x58
    11ca:	d001      	beq.n	11d0 <atoi+0x50>
	int n=0,sign=1,base=10;
    11cc:	270a      	movs	r7, #10
    11ce:	e7ee      	b.n	11ae <atoi+0x2e>
		base=16;
		str+=2;
    11d0:	3502      	adds	r5, #2
		base=16;
    11d2:	2710      	movs	r7, #16
    11d4:	e7eb      	b.n	11ae <atoi+0x2e>
	int n=0,sign=1,base=10;
    11d6:	270a      	movs	r7, #10
    11d8:	e7e9      	b.n	11ae <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    11da:	4620      	mov	r0, r4
    11dc:	f7ff ffbe 	bl	115c <hexdigit>
    11e0:	3000      	adds	r0, #0
    11e2:	bf18      	it	ne
    11e4:	2001      	movne	r0, #1
    11e6:	b1d0      	cbz	r0, 121e <atoi+0x9e>
		if (c>='a'){c-=32;}
    11e8:	2c60      	cmp	r4, #96	; 0x60
    11ea:	bf84      	itt	hi
    11ec:	3c20      	subhi	r4, #32
    11ee:	b2e4      	uxtbhi	r4, r4
		c-='0';
    11f0:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    11f4:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    11f6:	2b09      	cmp	r3, #9
    11f8:	bf84      	itt	hi
    11fa:	3c37      	subhi	r4, #55	; 0x37
    11fc:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    11fe:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1202:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    1206:	2c00      	cmp	r4, #0
    1208:	d0e7      	beq.n	11da <atoi+0x5a>
    120a:	2f0a      	cmp	r7, #10
    120c:	d1e5      	bne.n	11da <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    120e:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    1212:	b2c0      	uxtb	r0, r0
    1214:	2809      	cmp	r0, #9
    1216:	bf8c      	ite	hi
    1218:	2000      	movhi	r0, #0
    121a:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    121c:	e7e3      	b.n	11e6 <atoi+0x66>
		str++;
	}
	return sign*n;
}
    121e:	fb08 f006 	mul.w	r0, r8, r6
    1222:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001226 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    1226:	b13a      	cbz	r2, 1238 <move+0x12>
    1228:	3901      	subs	r1, #1
    122a:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    122c:	f810 3b01 	ldrb.w	r3, [r0], #1
    1230:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1234:	4290      	cmp	r0, r2
    1236:	d1f9      	bne.n	122c <move+0x6>
    1238:	4770      	bx	lr

0000123a <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    123a:	7803      	ldrb	r3, [r0, #0]
    123c:	b13b      	cbz	r3, 124e <strlen+0x14>
    123e:	4603      	mov	r3, r0
    1240:	2000      	movs	r0, #0
    1242:	3001      	adds	r0, #1
    1244:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1248:	2a00      	cmp	r2, #0
    124a:	d1fa      	bne.n	1242 <strlen+0x8>
    124c:	4770      	bx	lr
	int ll=0;
    124e:	2000      	movs	r0, #0
	return ll;
}
    1250:	4770      	bx	lr

00001252 <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1252:	b121      	cbz	r1, 125e <fill+0xc>
    1254:	1841      	adds	r1, r0, r1
    1256:	f800 2b01 	strb.w	r2, [r0], #1
    125a:	4288      	cmp	r0, r1
    125c:	d1fb      	bne.n	1256 <fill+0x4>
    125e:	4770      	bx	lr

00001260 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1260:	3861      	subs	r0, #97	; 0x61
    1262:	b2c0      	uxtb	r0, r0
}
    1264:	2819      	cmp	r0, #25
    1266:	bf8c      	ite	hi
    1268:	2000      	movhi	r0, #0
    126a:	2001      	movls	r0, #1
    126c:	4770      	bx	lr

0000126e <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    126e:	3841      	subs	r0, #65	; 0x41
    1270:	b2c0      	uxtb	r0, r0
}
    1272:	2819      	cmp	r0, #25
    1274:	bf8c      	ite	hi
    1276:	2000      	movhi	r0, #0
    1278:	2001      	movls	r0, #1
    127a:	4770      	bx	lr

0000127c <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    127c:	7803      	ldrb	r3, [r0, #0]
    127e:	b153      	cbz	r3, 1296 <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1280:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1284:	b2d2      	uxtb	r2, r2
    1286:	2a19      	cmp	r2, #25
    1288:	bf9c      	itt	ls
    128a:	3b20      	subls	r3, #32
    128c:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    128e:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    1292:	2b00      	cmp	r3, #0
    1294:	d1f4      	bne.n	1280 <uppercase+0x4>
    1296:	4770      	bx	lr

00001298 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1298:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    129a:	1844      	adds	r4, r0, r1
    129c:	5c43      	ldrb	r3, [r0, r1]
    129e:	b153      	cbz	r3, 12b6 <scan+0x1e>
    12a0:	429a      	cmp	r2, r3
    12a2:	d00a      	beq.n	12ba <scan+0x22>
    12a4:	4608      	mov	r0, r1
    12a6:	3001      	adds	r0, #1
    12a8:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    12ac:	b10b      	cbz	r3, 12b2 <scan+0x1a>
    12ae:	4293      	cmp	r3, r2
    12b0:	d1f9      	bne.n	12a6 <scan+0xe>
	return start;
}
    12b2:	bc10      	pop	{r4}
    12b4:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    12b6:	4608      	mov	r0, r1
    12b8:	e7fb      	b.n	12b2 <scan+0x1a>
    12ba:	4608      	mov	r0, r1
	return start;
    12bc:	e7f9      	b.n	12b2 <scan+0x1a>

000012be <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    12be:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    12c0:	1844      	adds	r4, r0, r1
    12c2:	5c43      	ldrb	r3, [r0, r1]
    12c4:	b153      	cbz	r3, 12dc <skip+0x1e>
    12c6:	429a      	cmp	r2, r3
    12c8:	d10a      	bne.n	12e0 <skip+0x22>
    12ca:	4608      	mov	r0, r1
    12cc:	3001      	adds	r0, #1
    12ce:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    12d2:	b10b      	cbz	r3, 12d8 <skip+0x1a>
    12d4:	4293      	cmp	r3, r2
    12d6:	d0f9      	beq.n	12cc <skip+0xe>
	return start;
}
    12d8:	bc10      	pop	{r4}
    12da:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    12dc:	4608      	mov	r0, r1
    12de:	e7fb      	b.n	12d8 <skip+0x1a>
    12e0:	4608      	mov	r0, r1
	return start;
    12e2:	e7f9      	b.n	12d8 <skip+0x1a>

000012e4 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    12e4:	b538      	push	{r3, r4, r5, lr}
    12e6:	4604      	mov	r4, r0
    12e8:	460d      	mov	r5, r1
	s1+=strlen(s1);
    12ea:	f7ff ffa6 	bl	123a <strlen>
    12ee:	4420      	add	r0, r4
	while (*s2){
    12f0:	782b      	ldrb	r3, [r5, #0]
    12f2:	b133      	cbz	r3, 1302 <strcat+0x1e>
    12f4:	4629      	mov	r1, r5
		*s1++=*s2++;
    12f6:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    12fa:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    12fe:	2b00      	cmp	r3, #0
    1300:	d1f9      	bne.n	12f6 <strcat+0x12>
	}
	*s1=0;
    1302:	2300      	movs	r3, #0
    1304:	7003      	strb	r3, [r0, #0]
	return s1;
}
    1306:	bd38      	pop	{r3, r4, r5, pc}

00001308 <itoa>:

char *itoa(int n,char *buffer,int base){
    1308:	b5f0      	push	{r4, r5, r6, r7, lr}
    130a:	b085      	sub	sp, #20
    130c:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    130e:	2a0a      	cmp	r2, #10
    1310:	d033      	beq.n	137a <itoa+0x72>
	int i=14,sign=0;
    1312:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    1314:	2300      	movs	r3, #0
    1316:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    131a:	2320      	movs	r3, #32
    131c:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    1320:	b390      	cbz	r0, 1388 <itoa+0x80>
    1322:	f10d 060d 	add.w	r6, sp, #13
    1326:	250e      	movs	r5, #14
		d=n%base+'0';
    1328:	fb90 f3f2 	sdiv	r3, r0, r2
    132c:	fb02 0313 	mls	r3, r2, r3, r0
    1330:	b2db      	uxtb	r3, r3
    1332:	f103 0130 	add.w	r1, r3, #48	; 0x30
    1336:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1338:	2939      	cmp	r1, #57	; 0x39
    133a:	bf84      	itt	hi
    133c:	3337      	addhi	r3, #55	; 0x37
    133e:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1340:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1344:	3d01      	subs	r5, #1
    1346:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    134a:	2800      	cmp	r0, #0
    134c:	d1ec      	bne.n	1328 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    134e:	2d0e      	cmp	r5, #14
    1350:	d01a      	beq.n	1388 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    1352:	2a0a      	cmp	r2, #10
    1354:	d01d      	beq.n	1392 <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    1356:	2a10      	cmp	r2, #16
    1358:	d105      	bne.n	1366 <itoa+0x5e>
    135a:	3d01      	subs	r5, #1
    135c:	ab04      	add	r3, sp, #16
    135e:	442b      	add	r3, r5
    1360:	2224      	movs	r2, #36	; 0x24
    1362:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    1366:	f1c5 0210 	rsb	r2, r5, #16
    136a:	4621      	mov	r1, r4
    136c:	eb0d 0005 	add.w	r0, sp, r5
    1370:	f7ff ff59 	bl	1226 <move>
	return buffer;
    1374:	4620      	mov	r0, r4
    1376:	b005      	add	sp, #20
    1378:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    137a:	2800      	cmp	r0, #0
    137c:	db01      	blt.n	1382 <itoa+0x7a>
	int i=14,sign=0;
    137e:	2700      	movs	r7, #0
    1380:	e7c8      	b.n	1314 <itoa+0xc>
		n=-n;
    1382:	4240      	negs	r0, r0
		sign=1;
    1384:	2701      	movs	r7, #1
    1386:	e7c5      	b.n	1314 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1388:	2330      	movs	r3, #48	; 0x30
    138a:	f88d 300d 	strb.w	r3, [sp, #13]
    138e:	250d      	movs	r5, #13
    1390:	e7df      	b.n	1352 <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    1392:	2f00      	cmp	r7, #0
    1394:	d0e7      	beq.n	1366 <itoa+0x5e>
    1396:	3d01      	subs	r5, #1
    1398:	ab04      	add	r3, sp, #16
    139a:	442b      	add	r3, r5
    139c:	222d      	movs	r2, #45	; 0x2d
    139e:	f803 2c10 	strb.w	r2, [r3, #-16]
    13a2:	e7e0      	b.n	1366 <itoa+0x5e>

000013a4 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    13a4:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    13a6:	08cb      	lsrs	r3, r1, #3
    13a8:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    13ac:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    13ae:	f001 011c 	and.w	r1, r1, #28
    13b2:	250f      	movs	r5, #15
    13b4:	408d      	lsls	r5, r1
    13b6:	ea24 0405 	bic.w	r4, r4, r5
    13ba:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    13be:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    13c2:	fa02 f101 	lsl.w	r1, r2, r1
    13c6:	4321      	orrs	r1, r4
    13c8:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    13cc:	bc30      	pop	{r4, r5}
    13ce:	4770      	bx	lr

000013d0 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    13d0:	6880      	ldr	r0, [r0, #8]
    13d2:	2301      	movs	r3, #1
    13d4:	fa03 f101 	lsl.w	r1, r3, r1
}
    13d8:	4008      	ands	r0, r1
    13da:	4770      	bx	lr

000013dc <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    13dc:	b93a      	cbnz	r2, 13ee <write_pin+0x12>
    13de:	68c3      	ldr	r3, [r0, #12]
    13e0:	2201      	movs	r2, #1
    13e2:	fa02 f101 	lsl.w	r1, r2, r1
    13e6:	ea23 0101 	bic.w	r1, r3, r1
    13ea:	60c1      	str	r1, [r0, #12]
    13ec:	4770      	bx	lr
    13ee:	68c2      	ldr	r2, [r0, #12]
    13f0:	2301      	movs	r3, #1
    13f2:	fa03 f101 	lsl.w	r1, r3, r1
    13f6:	4311      	orrs	r1, r2
    13f8:	60c1      	str	r1, [r0, #12]
    13fa:	4770      	bx	lr

000013fc <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    13fc:	68c2      	ldr	r2, [r0, #12]
    13fe:	2301      	movs	r3, #1
    1400:	fa03 f101 	lsl.w	r1, r3, r1
    1404:	4051      	eors	r1, r2
    1406:	60c1      	str	r1, [r0, #12]
    1408:	4770      	bx	lr
	...

0000140c <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    140c:	4b04      	ldr	r3, [pc, #16]	; (1420 <set_palette+0x14>)
    140e:	7802      	ldrb	r2, [r0, #0]
    1410:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    1412:	7842      	ldrb	r2, [r0, #1]
    1414:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    1416:	7882      	ldrb	r2, [r0, #2]
    1418:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    141a:	78c2      	ldrb	r2, [r0, #3]
    141c:	70da      	strb	r2, [r3, #3]
    141e:	4770      	bx	lr
    1420:	200001e0 	.word	0x200001e0

00001424 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    1424:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1426:	4604      	mov	r4, r0
    1428:	460e      	mov	r6, r1
    142a:	4615      	mov	r5, r2
    142c:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    142e:	f001 ffa1 	bl	3374 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1432:	2c00      	cmp	r4, #0
    1434:	db38      	blt.n	14a8 <gfx_blit+0x84>
    1436:	8983      	ldrh	r3, [r0, #12]
    1438:	429c      	cmp	r4, r3
    143a:	da37      	bge.n	14ac <gfx_blit+0x88>
    143c:	2e00      	cmp	r6, #0
    143e:	db37      	blt.n	14b0 <gfx_blit+0x8c>
    1440:	89c3      	ldrh	r3, [r0, #14]
    1442:	429e      	cmp	r6, r3
    1444:	da36      	bge.n	14b4 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    1446:	7a03      	ldrb	r3, [r0, #8]
    1448:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    144c:	1052      	asrs	r2, r2, #1
    144e:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    1452:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    1456:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    145a:	bf06      	itte	eq
    145c:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    145e:	220f      	moveq	r2, #15
    mask=0xf0;
    1460:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    1462:	4b15      	ldr	r3, [pc, #84]	; (14b8 <gfx_blit+0x94>)
    1464:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    1466:	2f04      	cmp	r7, #4
    1468:	d805      	bhi.n	1476 <gfx_blit+0x52>
    146a:	e8df f007 	tbb	[pc, r7]
    146e:	1003      	.short	0x1003
    1470:	1412      	.short	0x1412
    1472:	18          	.byte	0x18
    1473:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1474:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    1476:	4910      	ldr	r1, [pc, #64]	; (14b8 <gfx_blit+0x94>)
    1478:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    147a:	ea23 0302 	bic.w	r3, r3, r2
    147e:	fab0 f080 	clz	r0, r0
    1482:	0940      	lsrs	r0, r0, #5
    1484:	4283      	cmp	r3, r0
    1486:	bf14      	ite	ne
    1488:	2000      	movne	r0, #0
    148a:	2001      	moveq	r0, #1
    148c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    148e:	4003      	ands	r3, r0
        break;
    1490:	e7f1      	b.n	1476 <gfx_blit+0x52>
        byte^=color;
    1492:	4043      	eors	r3, r0
        break;
    1494:	e7ef      	b.n	1476 <gfx_blit+0x52>
        byte^=~mask;
    1496:	43d4      	mvns	r4, r2
    1498:	405c      	eors	r4, r3
    149a:	b2e3      	uxtb	r3, r4
        break;
    149c:	e7eb      	b.n	1476 <gfx_blit+0x52>
        byte &=mask;
    149e:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    14a2:	ea40 0304 	orr.w	r3, r0, r4
        break;
    14a6:	e7e6      	b.n	1476 <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    14a8:	2000      	movs	r0, #0
    14aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    14ac:	2000      	movs	r0, #0
    14ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    14b0:	2000      	movs	r0, #0
    14b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    14b4:	2000      	movs	r0, #0
}
    14b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    14b8:	20002720 	.word	0x20002720

000014bc <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    14bc:	b570      	push	{r4, r5, r6, lr}
    14be:	4604      	mov	r4, r0
    14c0:	460e      	mov	r6, r1
    14c2:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    14c4:	f001 ff56 	bl	3374 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    14c8:	2c00      	cmp	r4, #0
    14ca:	db1d      	blt.n	1508 <gfx_plot+0x4c>
    14cc:	8983      	ldrh	r3, [r0, #12]
    14ce:	429c      	cmp	r4, r3
    14d0:	da1a      	bge.n	1508 <gfx_plot+0x4c>
    14d2:	2e00      	cmp	r6, #0
    14d4:	db18      	blt.n	1508 <gfx_plot+0x4c>
    14d6:	89c3      	ldrh	r3, [r0, #14]
    14d8:	429e      	cmp	r6, r3
    14da:	da15      	bge.n	1508 <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    14dc:	7a03      	ldrb	r3, [r0, #8]
    14de:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    14e2:	1052      	asrs	r2, r2, #1
    14e4:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    14e8:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    14ec:	4b07      	ldr	r3, [pc, #28]	; (150c <gfx_plot+0x50>)
    14ee:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    14f0:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    14f4:	bf19      	ittee	ne
    14f6:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    14fa:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    14fc:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    1500:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    1504:	4b01      	ldr	r3, [pc, #4]	; (150c <gfx_plot+0x50>)
    1506:	559d      	strb	r5, [r3, r6]
    1508:	bd70      	pop	{r4, r5, r6, pc}
    150a:	bf00      	nop
    150c:	20002720 	.word	0x20002720

00001510 <gfx_cls>:
}

void gfx_cls(){
    1510:	b538      	push	{r3, r4, r5, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    1512:	f001 ff2f 	bl	3374 <get_video_params>
	for (x=0;x<vparams->vres*vparams->bpr;x++) video_buffer[x]=0;
    1516:	89c2      	ldrh	r2, [r0, #14]
    1518:	7a03      	ldrb	r3, [r0, #8]
    151a:	fb03 f302 	mul.w	r3, r3, r2
    151e:	2b00      	cmp	r3, #0
    1520:	dd0b      	ble.n	153a <gfx_cls+0x2a>
    1522:	4908      	ldr	r1, [pc, #32]	; (1544 <gfx_cls+0x34>)
    1524:	2200      	movs	r2, #0
    1526:	4615      	mov	r5, r2
    1528:	f801 5f01 	strb.w	r5, [r1, #1]!
    152c:	3201      	adds	r2, #1
    152e:	89c4      	ldrh	r4, [r0, #14]
    1530:	7a03      	ldrb	r3, [r0, #8]
    1532:	fb03 f304 	mul.w	r3, r3, r4
    1536:	4293      	cmp	r3, r2
    1538:	dcf6      	bgt.n	1528 <gfx_cls+0x18>
    set_cursor(0,0);
    153a:	2100      	movs	r1, #0
    153c:	4608      	mov	r0, r1
    153e:	f001 fb91 	bl	2c64 <set_cursor>
    1542:	bd38      	pop	{r3, r4, r5, pc}
    1544:	2000271f 	.word	0x2000271f

00001548 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    1548:	b570      	push	{r4, r5, r6, lr}
    154a:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    154c:	f001 ff12 	bl	3374 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    1550:	7a06      	ldrb	r6, [r0, #8]
    1552:	4b0f      	ldr	r3, [pc, #60]	; (1590 <gfx_scroll_up+0x48>)
    1554:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    1558:	89c2      	ldrh	r2, [r0, #14]
    155a:	1b12      	subs	r2, r2, r4
    155c:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    1560:	b1a6      	cbz	r6, 158c <gfx_scroll_up+0x44>
    1562:	4a0b      	ldr	r2, [pc, #44]	; (1590 <gfx_scroll_up+0x48>)
    1564:	199d      	adds	r5, r3, r6
    1566:	f813 1b01 	ldrb.w	r1, [r3], #1
    156a:	f802 1b01 	strb.w	r1, [r2], #1
    156e:	42ab      	cmp	r3, r5
    1570:	d1f9      	bne.n	1566 <gfx_scroll_up+0x1e>
    1572:	4b07      	ldr	r3, [pc, #28]	; (1590 <gfx_scroll_up+0x48>)
    1574:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    1576:	7a02      	ldrb	r2, [r0, #8]
    1578:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    157c:	b12a      	cbz	r2, 158a <gfx_scroll_up+0x42>
    157e:	441a      	add	r2, r3
    1580:	2100      	movs	r1, #0
    1582:	f803 1b01 	strb.w	r1, [r3], #1
    1586:	4293      	cmp	r3, r2
    1588:	d1fb      	bne.n	1582 <gfx_scroll_up+0x3a>
    158a:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    158c:	4b00      	ldr	r3, [pc, #0]	; (1590 <gfx_scroll_up+0x48>)
    158e:	e7f2      	b.n	1576 <gfx_scroll_up+0x2e>
    1590:	20002720 	.word	0x20002720

00001594 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1594:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1596:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1598:	f001 feec 	bl	3374 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    159c:	89c3      	ldrh	r3, [r0, #14]
    159e:	7a04      	ldrb	r4, [r0, #8]
    15a0:	1b5f      	subs	r7, r3, r5
    15a2:	fb04 f707 	mul.w	r7, r4, r7
    15a6:	490c      	ldr	r1, [pc, #48]	; (15d8 <gfx_scroll_down+0x44>)
    15a8:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    15aa:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    15ae:	b147      	cbz	r7, 15c2 <gfx_scroll_down+0x2e>
    15b0:	4619      	mov	r1, r3
    15b2:	4e09      	ldr	r6, [pc, #36]	; (15d8 <gfx_scroll_down+0x44>)
    15b4:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    15b8:	f801 4d01 	strb.w	r4, [r1, #-1]!
    15bc:	42b2      	cmp	r2, r6
    15be:	d1f9      	bne.n	15b4 <gfx_scroll_down+0x20>
    15c0:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    15c2:	7a02      	ldrb	r2, [r0, #8]
    15c4:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    15c8:	b12a      	cbz	r2, 15d6 <gfx_scroll_down+0x42>
    15ca:	1a9a      	subs	r2, r3, r2
    15cc:	2100      	movs	r1, #0
    15ce:	f803 1d01 	strb.w	r1, [r3, #-1]!
    15d2:	4293      	cmp	r3, r2
    15d4:	d1fb      	bne.n	15ce <gfx_scroll_down+0x3a>
    15d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    15d8:	20002720 	.word	0x20002720

000015dc <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    15dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    15e0:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    15e2:	f001 fec7 	bl	3374 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    15e6:	89c3      	ldrh	r3, [r0, #14]
    15e8:	b30b      	cbz	r3, 162e <gfx_scroll_left+0x52>
    15ea:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    15ee:	f8df 8044 	ldr.w	r8, [pc, #68]	; 1634 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    15f2:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    15f4:	7a03      	ldrb	r3, [r0, #8]
    15f6:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    15fa:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    15fc:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    15fe:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    1602:	d009      	beq.n	1618 <gfx_scroll_left+0x3c>
    1604:	1e59      	subs	r1, r3, #1
    1606:	eb02 050e 	add.w	r5, r2, lr
    160a:	f812 4b01 	ldrb.w	r4, [r2], #1
    160e:	f801 4f01 	strb.w	r4, [r1, #1]!
    1612:	4295      	cmp	r5, r2
    1614:	d1f9      	bne.n	160a <gfx_scroll_left+0x2e>
    1616:	4473      	add	r3, lr
        while (size--) *dest++=0;
    1618:	b126      	cbz	r6, 1624 <gfx_scroll_left+0x48>
    161a:	199a      	adds	r2, r3, r6
    161c:	f803 7b01 	strb.w	r7, [r3], #1
    1620:	4293      	cmp	r3, r2
    1622:	d1fb      	bne.n	161c <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    1624:	f10c 0c01 	add.w	ip, ip, #1
    1628:	89c3      	ldrh	r3, [r0, #14]
    162a:	4563      	cmp	r3, ip
    162c:	dce2      	bgt.n	15f4 <gfx_scroll_left+0x18>
    162e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    1632:	bf00      	nop
    1634:	20002720 	.word	0x20002720

00001638 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    1638:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    163c:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    163e:	f001 fe99 	bl	3374 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    1642:	89c3      	ldrh	r3, [r0, #14]
    1644:	b33b      	cbz	r3, 1696 <gfx_scroll_right+0x5e>
    1646:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    164a:	f8df 8050 	ldr.w	r8, [pc, #80]	; 169c <gfx_scroll_right+0x64>
        src=dest-n;
    164e:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    1652:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1654:	7a03      	ldrb	r3, [r0, #8]
    1656:	fb0e 3303 	mla	r3, lr, r3, r3
    165a:	4443      	add	r3, r8
        src=dest-n;
    165c:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    1660:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    1662:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    1666:	d00a      	beq.n	167e <gfx_scroll_right+0x46>
    1668:	4619      	mov	r1, r3
    166a:	eba2 0609 	sub.w	r6, r2, r9
    166e:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1672:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1676:	42b2      	cmp	r2, r6
    1678:	d1f9      	bne.n	166e <gfx_scroll_right+0x36>
    167a:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    167e:	b12d      	cbz	r5, 168c <gfx_scroll_right+0x54>
    1680:	eb03 020c 	add.w	r2, r3, ip
    1684:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1688:	429a      	cmp	r2, r3
    168a:	d1fb      	bne.n	1684 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    168c:	f10e 0e01 	add.w	lr, lr, #1
    1690:	89c3      	ldrh	r3, [r0, #14]
    1692:	4573      	cmp	r3, lr
    1694:	dcde      	bgt.n	1654 <gfx_scroll_right+0x1c>
    1696:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    169a:	bf00      	nop
    169c:	20002720 	.word	0x20002720

000016a0 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    16a0:	b538      	push	{r3, r4, r5, lr}
    16a2:	4604      	mov	r4, r0
    16a4:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    16a6:	f001 fe65 	bl	3374 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    16aa:	2c00      	cmp	r4, #0
    16ac:	db18      	blt.n	16e0 <gfx_get_pixel+0x40>
    16ae:	8983      	ldrh	r3, [r0, #12]
    16b0:	429c      	cmp	r4, r3
    16b2:	db01      	blt.n	16b8 <gfx_get_pixel+0x18>
    16b4:	20ff      	movs	r0, #255	; 0xff
    16b6:	bd38      	pop	{r3, r4, r5, pc}
    16b8:	2d00      	cmp	r5, #0
    16ba:	db13      	blt.n	16e4 <gfx_get_pixel+0x44>
    16bc:	89c3      	ldrh	r3, [r0, #14]
    16be:	429d      	cmp	r5, r3
    16c0:	db01      	blt.n	16c6 <gfx_get_pixel+0x26>
    16c2:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    16c4:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    16c6:	7a03      	ldrb	r3, [r0, #8]
    16c8:	1062      	asrs	r2, r4, #1
    16ca:	4907      	ldr	r1, [pc, #28]	; (16e8 <gfx_get_pixel+0x48>)
    16cc:	fb05 1503 	mla	r5, r5, r3, r1
    16d0:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    16d2:	f014 0f01 	tst.w	r4, #1
    16d6:	bf08      	it	eq
    16d8:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    16da:	f000 000f 	and.w	r0, r0, #15
    16de:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    16e0:	20ff      	movs	r0, #255	; 0xff
    16e2:	bd38      	pop	{r3, r4, r5, pc}
    16e4:	20ff      	movs	r0, #255	; 0xff
    16e6:	bd38      	pop	{r3, r4, r5, pc}
    16e8:	20002720 	.word	0x20002720

000016ec <gfx_sprite>:

static const uint8_t bit_mask[5]={0,128,0xc0,0,0xf0};
static const uint8_t bit_shift[5]={0,7,6,0,4};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    16ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    16f0:	b085      	sub	sp, #20
    16f2:	9002      	str	r0, [sp, #8]
    16f4:	460e      	mov	r6, r1
    16f6:	9100      	str	r1, [sp, #0]
    16f8:	9c0e      	ldr	r4, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    16fa:	492b      	ldr	r1, [pc, #172]	; (17a8 <gfx_sprite+0xbc>)
    16fc:	7908      	ldrb	r0, [r1, #4]
    16fe:	492b      	ldr	r1, [pc, #172]	; (17ac <gfx_sprite+0xc0>)
    1700:	f811 9000 	ldrb.w	r9, [r1, r0]
    bmp_byte=*sprite++;
    1704:	f104 0b01 	add.w	fp, r4, #1
    1708:	7825      	ldrb	r5, [r4, #0]
    mask=bit_mask[sprite_bpp];
    170a:	4401      	add	r1, r0
    170c:	7a0c      	ldrb	r4, [r1, #8]
    170e:	9401      	str	r4, [sp, #4]
    ppb=8/sprite_bpp;
    1710:	2408      	movs	r4, #8
    1712:	fb94 f4f0 	sdiv	r4, r4, r0
    for (y0=y;y0<(y+height);y0++){
    1716:	4433      	add	r3, r6
    1718:	9303      	str	r3, [sp, #12]
    171a:	429e      	cmp	r6, r3
    int collision=0;
    171c:	bfa8      	it	ge
    171e:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){
    1720:	da3d      	bge.n	179e <gfx_sprite+0xb2>
    1722:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
    1724:	9b02      	ldr	r3, [sp, #8]
    1726:	eb02 0a03 	add.w	sl, r2, r3
            if (sprite_bpp<4){
    172a:	f8df 807c 	ldr.w	r8, [pc, #124]	; 17a8 <gfx_sprite+0xbc>
    172e:	e031      	b.n	1794 <gfx_sprite+0xa8>
                color=palette[(bmp_byte&mask)>>shift];
            }else{
                color=(bmp_byte&mask)>>shift;
    1730:	9b01      	ldr	r3, [sp, #4]
    1732:	ea03 0205 	and.w	r2, r3, r5
    1736:	fa42 f209 	asr.w	r2, r2, r9
    173a:	b2d2      	uxtb	r2, r2
    173c:	e015      	b.n	176a <gfx_sprite+0x7e>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    173e:	f89b 5000 	ldrb.w	r5, [fp]
                ppb=8/sprite_bpp;
    1742:	f898 4004 	ldrb.w	r4, [r8, #4]
    1746:	2308      	movs	r3, #8
    1748:	fb93 f4f4 	sdiv	r4, r3, r4
                bmp_byte=*sprite++;
    174c:	f10b 0b01 	add.w	fp, fp, #1
        for(x0=x;x0<(x+width);x0++){
    1750:	3601      	adds	r6, #1
    1752:	4556      	cmp	r6, sl
    1754:	d018      	beq.n	1788 <gfx_sprite+0x9c>
            if (sprite_bpp<4){
    1756:	f898 3004 	ldrb.w	r3, [r8, #4]
    175a:	2b03      	cmp	r3, #3
    175c:	d8e8      	bhi.n	1730 <gfx_sprite+0x44>
                color=palette[(bmp_byte&mask)>>shift];
    175e:	9b01      	ldr	r3, [sp, #4]
    1760:	402b      	ands	r3, r5
    1762:	fa43 f309 	asr.w	r3, r3, r9
    1766:	f818 2003 	ldrb.w	r2, [r8, r3]
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    176a:	2302      	movs	r3, #2
    176c:	9900      	ldr	r1, [sp, #0]
    176e:	4630      	mov	r0, r6
    1770:	f7ff fe58 	bl	1424 <gfx_blit>
    1774:	4307      	orrs	r7, r0
            ppb--;
    1776:	3c01      	subs	r4, #1
            if (!ppb){
    1778:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    177c:	d0df      	beq.n	173e <gfx_sprite+0x52>
            bmp_byte<<=(8-shift);
    177e:	f1c9 0308 	rsb	r3, r9, #8
    1782:	409d      	lsls	r5, r3
    1784:	b2ed      	uxtb	r5, r5
    1786:	e7e3      	b.n	1750 <gfx_sprite+0x64>
    for (y0=y;y0<(y+height);y0++){
    1788:	9b00      	ldr	r3, [sp, #0]
    178a:	3301      	adds	r3, #1
    178c:	9300      	str	r3, [sp, #0]
    178e:	9a03      	ldr	r2, [sp, #12]
    1790:	4293      	cmp	r3, r2
    1792:	d004      	beq.n	179e <gfx_sprite+0xb2>
        for(x0=x;x0<(x+width);x0++){
    1794:	9b02      	ldr	r3, [sp, #8]
    1796:	4553      	cmp	r3, sl
    1798:	daf6      	bge.n	1788 <gfx_sprite+0x9c>
    179a:	9e02      	ldr	r6, [sp, #8]
    179c:	e7db      	b.n	1756 <gfx_sprite+0x6a>
            }
        }
    }
    return collision;
}
    179e:	4638      	mov	r0, r7
    17a0:	b005      	add	sp, #20
    17a2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    17a6:	bf00      	nop
    17a8:	200001e0 	.word	0x200001e0
    17ac:	00003acc 	.word	0x00003acc

000017b0 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    17b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    17b4:	f001 fdde 	bl	3374 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    17b8:	89c3      	ldrh	r3, [r0, #14]
    17ba:	089e      	lsrs	r6, r3, #2
    17bc:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    17c0:	429e      	cmp	r6, r3
    17c2:	da18      	bge.n	17f6 <color_bars+0x46>
    17c4:	4607      	mov	r7, r0
static void color_bars(){
    17c6:	f04f 0810 	mov.w	r8, #16
    17ca:	4645      	mov	r5, r8
    17cc:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    17ce:	f014 0f07 	tst.w	r4, #7
				c--;
    17d2:	bf04      	itt	eq
    17d4:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    17d8:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    17da:	462a      	mov	r2, r5
    17dc:	4631      	mov	r1, r6
    17de:	4620      	mov	r0, r4
    17e0:	f7ff fe6c 	bl	14bc <gfx_plot>
		for (x=0;x<128;x++){
    17e4:	3401      	adds	r4, #1
    17e6:	2c80      	cmp	r4, #128	; 0x80
    17e8:	d1f1      	bne.n	17ce <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    17ea:	3601      	adds	r6, #1
    17ec:	89fb      	ldrh	r3, [r7, #14]
    17ee:	42b3      	cmp	r3, r6
    17f0:	dceb      	bgt.n	17ca <color_bars+0x1a>
    17f2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    17f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000017fa <vertical_bars>:
	}
		

}

static void vertical_bars(){
    17fa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    17fc:	f001 fdba 	bl	3374 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1800:	89c3      	ldrh	r3, [r0, #14]
    1802:	2b10      	cmp	r3, #16
    1804:	dd12      	ble.n	182c <vertical_bars+0x32>
    1806:	4605      	mov	r5, r0
    1808:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    180a:	260f      	movs	r6, #15
    180c:	2700      	movs	r7, #0
    180e:	4632      	mov	r2, r6
    1810:	4621      	mov	r1, r4
    1812:	4638      	mov	r0, r7
    1814:	f7ff fe52 	bl	14bc <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    1818:	89a8      	ldrh	r0, [r5, #12]
    181a:	4632      	mov	r2, r6
    181c:	4621      	mov	r1, r4
    181e:	3801      	subs	r0, #1
    1820:	f7ff fe4c 	bl	14bc <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1824:	3401      	adds	r4, #1
    1826:	89eb      	ldrh	r3, [r5, #14]
    1828:	42a3      	cmp	r3, r4
    182a:	dcf0      	bgt.n	180e <vertical_bars+0x14>
    182c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000182e <horiz_bars>:
	}
}

static void horiz_bars(){
    182e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1830:	f001 fda0 	bl	3374 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1834:	8983      	ldrh	r3, [r0, #12]
    1836:	b193      	cbz	r3, 185e <horiz_bars+0x30>
    1838:	4605      	mov	r5, r0
    183a:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    183c:	260f      	movs	r6, #15
    183e:	4627      	mov	r7, r4
    1840:	4632      	mov	r2, r6
    1842:	4639      	mov	r1, r7
    1844:	4620      	mov	r0, r4
    1846:	f7ff fe39 	bl	14bc <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    184a:	89e9      	ldrh	r1, [r5, #14]
    184c:	4632      	mov	r2, r6
    184e:	3901      	subs	r1, #1
    1850:	4620      	mov	r0, r4
    1852:	f7ff fe33 	bl	14bc <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    1856:	3401      	adds	r4, #1
    1858:	89ab      	ldrh	r3, [r5, #12]
    185a:	42a3      	cmp	r3, r4
    185c:	dcf0      	bgt.n	1840 <horiz_bars+0x12>
    185e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001860 <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    1860:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1862:	f7ff fe55 	bl	1510 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1866:	4806      	ldr	r0, [pc, #24]	; (1880 <display_menu+0x20>)
    1868:	f001 fa45 	bl	2cf6 <println>
    186c:	4805      	ldr	r0, [pc, #20]	; (1884 <display_menu+0x24>)
    186e:	f001 fa42 	bl	2cf6 <println>
    1872:	4805      	ldr	r0, [pc, #20]	; (1888 <display_menu+0x28>)
    1874:	f001 fa3f 	bl	2cf6 <println>
    1878:	4804      	ldr	r0, [pc, #16]	; (188c <display_menu+0x2c>)
    187a:	f001 fa3c 	bl	2cf6 <println>
    187e:	bd08      	pop	{r3, pc}
    1880:	00003bb8 	.word	0x00003bb8
    1884:	00003bc4 	.word	0x00003bc4
    1888:	00003bd4 	.word	0x00003bd4
    188c:	00003be0 	.word	0x00003be0

00001890 <draw_balls>:
void draw_balls(){
    1890:	b510      	push	{r4, lr}
    1892:	b082      	sub	sp, #8
	frame_sync();
    1894:	f001 fd34 	bl	3300 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1898:	4c0a      	ldr	r4, [pc, #40]	; (18c4 <draw_balls+0x34>)
    189a:	6923      	ldr	r3, [r4, #16]
    189c:	9300      	str	r3, [sp, #0]
    189e:	2308      	movs	r3, #8
    18a0:	461a      	mov	r2, r3
    18a2:	6861      	ldr	r1, [r4, #4]
    18a4:	6820      	ldr	r0, [r4, #0]
    18a6:	f7ff ff21 	bl	16ec <gfx_sprite>
    18aa:	69a1      	ldr	r1, [r4, #24]
    18ac:	6960      	ldr	r0, [r4, #20]
    18ae:	6a63      	ldr	r3, [r4, #36]	; 0x24
    18b0:	9300      	str	r3, [sp, #0]
    18b2:	2308      	movs	r3, #8
    18b4:	461a      	mov	r2, r3
    18b6:	f7ff ff19 	bl	16ec <gfx_sprite>
	wait_sync_end();
    18ba:	f001 fd29 	bl	3310 <wait_sync_end>
}
    18be:	b002      	add	sp, #8
    18c0:	bd10      	pop	{r4, pc}
    18c2:	bf00      	nop
    18c4:	200026f8 	.word	0x200026f8

000018c8 <isqrt>:
	if (n<2) return n;
    18c8:	2801      	cmp	r0, #1
    18ca:	dd0c      	ble.n	18e6 <isqrt+0x1e>
int isqrt(int n){
    18cc:	b510      	push	{r4, lr}
    18ce:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    18d0:	1080      	asrs	r0, r0, #2
    18d2:	f7ff fff9 	bl	18c8 <isqrt>
    18d6:	0040      	lsls	r0, r0, #1
	large = small + 1;
    18d8:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    18da:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    18de:	4294      	cmp	r4, r2
    18e0:	bfa8      	it	ge
    18e2:	4618      	movge	r0, r3
}
    18e4:	bd10      	pop	{r4, pc}
    18e6:	4770      	bx	lr

000018e8 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    18e8:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    18ea:	6803      	ldr	r3, [r0, #0]
    18ec:	680a      	ldr	r2, [r1, #0]
    18ee:	6844      	ldr	r4, [r0, #4]
    18f0:	6848      	ldr	r0, [r1, #4]
    18f2:	fb00 f004 	mul.w	r0, r0, r4
    18f6:	fb02 0003 	mla	r0, r2, r3, r0
    18fa:	2800      	cmp	r0, #0
    18fc:	bfb8      	it	lt
    18fe:	4240      	neglt	r0, r0
    1900:	f7ff ffe2 	bl	18c8 <isqrt>
}
    1904:	bd10      	pop	{r4, pc}

00001906 <move_balls>:
void move_balls(){
    1906:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    1908:	f001 fd34 	bl	3374 <get_video_params>
    190c:	4b1c      	ldr	r3, [pc, #112]	; (1980 <move_balls+0x7a>)
    190e:	f103 0628 	add.w	r6, r3, #40	; 0x28
    1912:	e005      	b.n	1920 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    1914:	4249      	negs	r1, r1
    1916:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1918:	6055      	str	r5, [r2, #4]
    191a:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    191c:	42b3      	cmp	r3, r6
    191e:	d017      	beq.n	1950 <move_balls+0x4a>
    1920:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1922:	681d      	ldr	r5, [r3, #0]
    1924:	6899      	ldr	r1, [r3, #8]
    1926:	186c      	adds	r4, r5, r1
    1928:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    192a:	f114 0f07 	cmn.w	r4, #7
    192e:	db02      	blt.n	1936 <move_balls+0x30>
    1930:	8987      	ldrh	r7, [r0, #12]
    1932:	42bc      	cmp	r4, r7
    1934:	db02      	blt.n	193c <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    1936:	4249      	negs	r1, r1
    1938:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    193a:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    193c:	6855      	ldr	r5, [r2, #4]
    193e:	68d1      	ldr	r1, [r2, #12]
    1940:	186c      	adds	r4, r5, r1
    1942:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1944:	2c0f      	cmp	r4, #15
    1946:	dde5      	ble.n	1914 <move_balls+0xe>
    1948:	89c7      	ldrh	r7, [r0, #14]
    194a:	42bc      	cmp	r4, r7
    194c:	dbe5      	blt.n	191a <move_balls+0x14>
    194e:	e7e1      	b.n	1914 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1950:	480c      	ldr	r0, [pc, #48]	; (1984 <move_balls+0x7e>)
    1952:	4601      	mov	r1, r0
    1954:	3814      	subs	r0, #20
    1956:	f7ff ffc7 	bl	18e8 <distance>
    195a:	2807      	cmp	r0, #7
    195c:	d80f      	bhi.n	197e <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    195e:	4b08      	ldr	r3, [pc, #32]	; (1980 <move_balls+0x7a>)
    1960:	689a      	ldr	r2, [r3, #8]
    1962:	69db      	ldr	r3, [r3, #28]
    1964:	429a      	cmp	r2, r3
    1966:	d002      	beq.n	196e <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1968:	4905      	ldr	r1, [pc, #20]	; (1980 <move_balls+0x7a>)
    196a:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    196c:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    196e:	4b04      	ldr	r3, [pc, #16]	; (1980 <move_balls+0x7a>)
    1970:	68da      	ldr	r2, [r3, #12]
    1972:	6a1b      	ldr	r3, [r3, #32]
    1974:	429a      	cmp	r2, r3
    1976:	d002      	beq.n	197e <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1978:	4901      	ldr	r1, [pc, #4]	; (1980 <move_balls+0x7a>)
    197a:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    197c:	620a      	str	r2, [r1, #32]
    197e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1980:	200026f8 	.word	0x200026f8
    1984:	2000270c 	.word	0x2000270c

00001988 <init_balls>:
void init_balls(){
    1988:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    198c:	f001 fcf2 	bl	3374 <get_video_params>
    1990:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1992:	4b15      	ldr	r3, [pc, #84]	; (19e8 <init_balls+0x60>)
    1994:	6818      	ldr	r0, [r3, #0]
    1996:	f7fe fd05 	bl	3a4 <srand>
    199a:	4c14      	ldr	r4, [pc, #80]	; (19ec <init_balls+0x64>)
    199c:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    19a0:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    19a2:	4f13      	ldr	r7, [pc, #76]	; (19f0 <init_balls+0x68>)
    19a4:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    19a8:	f7fe fd02 	bl	3b0 <rand>
    19ac:	89ab      	ldrh	r3, [r5, #12]
    19ae:	fb90 f2f3 	sdiv	r2, r0, r3
    19b2:	fb02 0013 	mls	r0, r2, r3, r0
    19b6:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    19b8:	f7fe fcfa 	bl	3b0 <rand>
    19bc:	89eb      	ldrh	r3, [r5, #14]
    19be:	3b10      	subs	r3, #16
    19c0:	fb90 f2f3 	sdiv	r2, r0, r3
    19c4:	fb02 0013 	mls	r0, r2, r3, r0
    19c8:	3010      	adds	r0, #16
    19ca:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    19cc:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    19ce:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    19d0:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    19d2:	2b00      	cmp	r3, #0
    19d4:	bf14      	ite	ne
    19d6:	4643      	movne	r3, r8
    19d8:	463b      	moveq	r3, r7
    19da:	6123      	str	r3, [r4, #16]
    19dc:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    19de:	454c      	cmp	r4, r9
    19e0:	d1e2      	bne.n	19a8 <init_balls+0x20>
}
    19e2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    19e6:	bf00      	nop
    19e8:	20004e84 	.word	0x20004e84
    19ec:	200026f8 	.word	0x200026f8
    19f0:	00003ae4 	.word	0x00003ae4

000019f4 <main>:
		}
	}//while
}

//const uint8_t sample[16]={0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
void main(void){
    19f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    19f8:	b08b      	sub	sp, #44	; 0x2c
	RCC->CR|=RCC_CR_HSEON;
    19fa:	4ab4      	ldr	r2, [pc, #720]	; (1ccc <main+0x2d8>)
    19fc:	6813      	ldr	r3, [r2, #0]
    19fe:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1a02:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1a04:	4613      	mov	r3, r2
    1a06:	681a      	ldr	r2, [r3, #0]
    1a08:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1a0c:	d0fb      	beq.n	1a06 <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1a0e:	4baf      	ldr	r3, [pc, #700]	; (1ccc <main+0x2d8>)
    1a10:	685a      	ldr	r2, [r3, #4]
    1a12:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1a16:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1a18:	681a      	ldr	r2, [r3, #0]
    1a1a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1a1e:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1a20:	681a      	ldr	r2, [r3, #0]
    1a22:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1a26:	d0fb      	beq.n	1a20 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1a28:	4aa9      	ldr	r2, [pc, #676]	; (1cd0 <main+0x2dc>)
    1a2a:	6813      	ldr	r3, [r2, #0]
    1a2c:	f043 0312 	orr.w	r3, r3, #18
    1a30:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1a32:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1a36:	6853      	ldr	r3, [r2, #4]
    1a38:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1a3c:	f043 0302 	orr.w	r3, r3, #2
    1a40:	6053      	str	r3, [r2, #4]
	set_sysclock();
//	config_systicks();
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1a42:	f640 031d 	movw	r3, #2077	; 0x81d
    1a46:	6193      	str	r3, [r2, #24]
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1a48:	4ca2      	ldr	r4, [pc, #648]	; (1cd4 <main+0x2e0>)
    1a4a:	2206      	movs	r2, #6
    1a4c:	210d      	movs	r1, #13
    1a4e:	4620      	mov	r0, r4
    1a50:	f7ff fca8 	bl	13a4 <config_pin>
	_led_off();
    1a54:	68e3      	ldr	r3, [r4, #12]
    1a56:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1a5a:	60e3      	str	r3, [r4, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_TX,ALT_PORT,FLOW_SOFT);
    1a5c:	2200      	movs	r2, #0
    1a5e:	9201      	str	r2, [sp, #4]
    1a60:	2301      	movs	r3, #1
    1a62:	9300      	str	r3, [sp, #0]
    1a64:	2302      	movs	r3, #2
    1a66:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1a6a:	489b      	ldr	r0, [pc, #620]	; (1cd8 <main+0x2e4>)
    1a6c:	f001 fd39 	bl	34e2 <usart_open_channel>
	gamepad_init();
    1a70:	f7ff fa76 	bl	f60 <gamepad_init>
	tvout_init();
    1a74:	f001 fa2e 	bl	2ed4 <tvout_init>
	sound_init();
    1a78:	f000 fe16 	bl	26a8 <sound_init>
    1a7c:	f10d 0417 	add.w	r4, sp, #23
    1a80:	f10d 0527 	add.w	r5, sp, #39	; 0x27
	uint8_t sample[16];
	int i;
	for (i=0;i<16;i++)sample[i]=rand()&255;
    1a84:	f7fe fc94 	bl	3b0 <rand>
    1a88:	f804 0f01 	strb.w	r0, [r4, #1]!
    1a8c:	42a5      	cmp	r5, r4
    1a8e:	d1f9      	bne.n	1a84 <main+0x90>
	load_sound_buffer((const uint8_t*)sample);
    1a90:	a806      	add	r0, sp, #24
    1a92:	f000 fe58 	bl	2746 <load_sound_buffer>
	gfx_cls();
    1a96:	f7ff fd3b 	bl	1510 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1a9a:	f001 fc6b 	bl	3374 <get_video_params>
	display_menu();
    1a9e:	f7ff fedf 	bl	1860 <display_menu>
	int i=0;
    1aa2:	f04f 0b00 	mov.w	fp, #0
	print_int(0x20005000-(int)(&_TPA_START),10);
    1aa6:	4b8d      	ldr	r3, [pc, #564]	; (1cdc <main+0x2e8>)
    1aa8:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1aac:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1ab0:	9305      	str	r3, [sp, #20]
    1ab2:	e153      	b.n	1d5c <main+0x368>
			if (i<(MENU_ITEMS-1)) i++;
    1ab4:	f1bb 0f02 	cmp.w	fp, #2
    1ab8:	f300 8150 	bgt.w	1d5c <main+0x368>
    1abc:	f10b 0b01 	add.w	fp, fp, #1
    1ac0:	e14c      	b.n	1d5c <main+0x368>
			switch(i){
    1ac2:	f1bb 0f03 	cmp.w	fp, #3
    1ac6:	f200 8147 	bhi.w	1d58 <main+0x364>
    1aca:	e8df f01b 	tbh	[pc, fp, lsl #1]
    1ace:	0004      	.short	0x0004
    1ad0:	00e8009e 	.word	0x00e8009e
    1ad4:	0175      	.short	0x0175
	count=games_count();
    1ad6:	f7ff faf3 	bl	10c0 <games_count>
    1ada:	9004      	str	r0, [sp, #16]
	set_video_mode(VM_BPCHIP);
    1adc:	2000      	movs	r0, #0
    1ade:	f001 fc1f 	bl	3320 <set_video_mode>
	vparams=get_video_params();
    1ae2:	f001 fc47 	bl	3374 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1ae6:	89c3      	ldrh	r3, [r0, #14]
    1ae8:	08db      	lsrs	r3, r3, #3
    1aea:	9303      	str	r3, [sp, #12]
    1aec:	461f      	mov	r7, r3
	int i=0,first=0,count,rows,selected=1;
    1aee:	46d8      	mov	r8, fp
    1af0:	f04f 0901 	mov.w	r9, #1
	while ((r<rows) && games_list[first].size){
    1af4:	f8df a1ec 	ldr.w	sl, [pc, #492]	; 1ce4 <main+0x2f0>
	set_cursor(0,0);
    1af8:	2100      	movs	r1, #0
    1afa:	4608      	mov	r0, r1
    1afc:	f001 f8b2 	bl	2c64 <set_cursor>
	print(" ********** GAMES **********");
    1b00:	4877      	ldr	r0, [pc, #476]	; (1ce0 <main+0x2ec>)
    1b02:	f001 f8e3 	bl	2ccc <print>
	while ((r<rows) && games_list[first].size){
    1b06:	9b03      	ldr	r3, [sp, #12]
    1b08:	2b01      	cmp	r3, #1
    1b0a:	d91e      	bls.n	1b4a <main+0x156>
    1b0c:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1b10:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
    1b14:	691b      	ldr	r3, [r3, #16]
    1b16:	b1c3      	cbz	r3, 1b4a <main+0x156>
    1b18:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1b1c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
    1b20:	3401      	adds	r4, #1
    1b22:	2501      	movs	r5, #1
		put_char(' ');
    1b24:	2620      	movs	r6, #32
		new_line();
    1b26:	f000 fffb 	bl	2b20 <new_line>
		clear_line();
    1b2a:	f001 f9b1 	bl	2e90 <clear_line>
		put_char(' ');
    1b2e:	4630      	mov	r0, r6
    1b30:	f001 f834 	bl	2b9c <put_char>
		print(games_list[first].name);
    1b34:	4620      	mov	r0, r4
    1b36:	f001 f8c9 	bl	2ccc <print>
		r++;
    1b3a:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1b3c:	42af      	cmp	r7, r5
    1b3e:	d004      	beq.n	1b4a <main+0x156>
    1b40:	341c      	adds	r4, #28
    1b42:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1b46:	2b00      	cmp	r3, #0
    1b48:	d1ed      	bne.n	1b26 <main+0x132>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1b4a:	eba9 0108 	sub.w	r1, r9, r8
    1b4e:	00c9      	lsls	r1, r1, #3
    1b50:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1b54:	2000      	movs	r0, #0
    1b56:	f001 f885 	bl	2c64 <set_cursor>
		put_char('>');
    1b5a:	203e      	movs	r0, #62	; 0x3e
    1b5c:	f001 f81e 	bl	2b9c <put_char>
		btn=btn_wait_any();
    1b60:	f7ff fa74 	bl	104c <btn_wait_any>
    1b64:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1b66:	f7ff fa5d 	bl	1024 <btn_wait_up>
		switch(btn){
    1b6a:	2c04      	cmp	r4, #4
    1b6c:	d013      	beq.n	1b96 <main+0x1a2>
    1b6e:	d905      	bls.n	1b7c <main+0x188>
    1b70:	2c20      	cmp	r4, #32
    1b72:	d01e      	beq.n	1bb2 <main+0x1be>
    1b74:	2c40      	cmp	r4, #64	; 0x40
    1b76:	f000 80ef 	beq.w	1d58 <main+0x364>
    1b7a:	e7bd      	b.n	1af8 <main+0x104>
    1b7c:	2c02      	cmp	r4, #2
    1b7e:	d1bb      	bne.n	1af8 <main+0x104>
			if (first) first--;
    1b80:	f1b8 0f00 	cmp.w	r8, #0
    1b84:	d001      	beq.n	1b8a <main+0x196>
    1b86:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
			if (selected>1) selected--;
    1b8a:	f1b9 0f01 	cmp.w	r9, #1
    1b8e:	ddb3      	ble.n	1af8 <main+0x104>
    1b90:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1b94:	e7b0      	b.n	1af8 <main+0x104>
			if ((first+selected-1)<(count-1)){
    1b96:	eb08 0309 	add.w	r3, r8, r9
    1b9a:	3b01      	subs	r3, #1
    1b9c:	9a04      	ldr	r2, [sp, #16]
    1b9e:	3a01      	subs	r2, #1
    1ba0:	4293      	cmp	r3, r2
    1ba2:	daa9      	bge.n	1af8 <main+0x104>
				selected++;
    1ba4:	f109 0901 	add.w	r9, r9, #1
				if (selected>=rows) first++;
    1ba8:	454f      	cmp	r7, r9
    1baa:	dca5      	bgt.n	1af8 <main+0x104>
    1bac:	f108 0801 	add.w	r8, r8, #1
    1bb0:	e7a2      	b.n	1af8 <main+0x104>
	run_game(first+selected-1);
    1bb2:	eb08 0409 	add.w	r4, r8, r9
    1bb6:	3c01      	subs	r4, #1
	if (games_list[idx].vmode==VM_SCHIP){
    1bb8:	ebc4 02c4 	rsb	r2, r4, r4, lsl #3
    1bbc:	4b49      	ldr	r3, [pc, #292]	; (1ce4 <main+0x2f0>)
    1bbe:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1bc2:	2b01      	cmp	r3, #1
    1bc4:	bf14      	ite	ne
    1bc6:	2700      	movne	r7, #0
    1bc8:	f44f 7700 	moveq.w	r7, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1bcc:	f8df 8114 	ldr.w	r8, [pc, #276]	; 1ce4 <main+0x2f0>
    1bd0:	00e6      	lsls	r6, r4, #3
    1bd2:	eb08 0582 	add.w	r5, r8, r2, lsl #2
    1bd6:	692a      	ldr	r2, [r5, #16]
    1bd8:	4943      	ldr	r1, [pc, #268]	; (1ce8 <main+0x2f4>)
    1bda:	4439      	add	r1, r7
    1bdc:	6968      	ldr	r0, [r5, #20]
    1bde:	f7ff fb22 	bl	1226 <move>
	set_keymap(games_list[idx].keymap);
    1be2:	69a8      	ldr	r0, [r5, #24]
    1be4:	f7ff f9b0 	bl	f48 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1be8:	1b34      	subs	r4, r6, r4
    1bea:	f818 0024 	ldrb.w	r0, [r8, r4, lsl #2]
    1bee:	f001 fb97 	bl	3320 <set_video_mode>
	chip_vm(addr,debug_print);
    1bf2:	4b3e      	ldr	r3, [pc, #248]	; (1cec <main+0x2f8>)
    1bf4:	6819      	ldr	r1, [r3, #0]
    1bf6:	4638      	mov	r0, r7
    1bf8:	f7fe fbe8 	bl	3cc <chip_vm>
	set_video_mode(VM_BPCHIP);
    1bfc:	2000      	movs	r0, #0
    1bfe:	f001 fb8f 	bl	3320 <set_video_mode>
	set_keymap(default_kmap);
    1c02:	483b      	ldr	r0, [pc, #236]	; (1cf0 <main+0x2fc>)
    1c04:	f7ff f9a0 	bl	f48 <set_keymap>
    1c08:	e0a6      	b.n	1d58 <main+0x364>
	gfx_cls();
    1c0a:	f7ff fc81 	bl	1510 <gfx_cls>
	print(" *** VM debug support ***\n");
    1c0e:	4839      	ldr	r0, [pc, #228]	; (1cf4 <main+0x300>)
    1c10:	f001 f85c 	bl	2ccc <print>
	print(" enable debug print\n");
    1c14:	4838      	ldr	r0, [pc, #224]	; (1cf8 <main+0x304>)
    1c16:	f001 f859 	bl	2ccc <print>
	print(" disable debug print");
    1c1a:	4838      	ldr	r0, [pc, #224]	; (1cfc <main+0x308>)
    1c1c:	f001 f856 	bl	2ccc <print>
	if (debug_print){
    1c20:	4b32      	ldr	r3, [pc, #200]	; (1cec <main+0x2f8>)
    1c22:	681b      	ldr	r3, [r3, #0]
    1c24:	b313      	cbz	r3, 1c6c <main+0x278>
		set_cursor(0,CHAR_HEIGHT);
    1c26:	2108      	movs	r1, #8
    1c28:	2000      	movs	r0, #0
    1c2a:	f001 f81b 	bl	2c64 <set_cursor>
		put_char('*');
    1c2e:	202a      	movs	r0, #42	; 0x2a
    1c30:	f000 ffb4 	bl	2b9c <put_char>
			set_cursor(0,CHAR_HEIGHT);
    1c34:	2508      	movs	r5, #8
			debug_print=0;
    1c36:	4c2d      	ldr	r4, [pc, #180]	; (1cec <main+0x2f8>)
		btn=btn_wait_any();
    1c38:	f7ff fa08 	bl	104c <btn_wait_any>
		switch(btn){
    1c3c:	2804      	cmp	r0, #4
    1c3e:	d01d      	beq.n	1c7c <main+0x288>
    1c40:	2820      	cmp	r0, #32
    1c42:	f000 8089 	beq.w	1d58 <main+0x364>
    1c46:	2802      	cmp	r0, #2
    1c48:	d1f6      	bne.n	1c38 <main+0x244>
			set_cursor(0,2*CHAR_HEIGHT);
    1c4a:	2110      	movs	r1, #16
    1c4c:	2000      	movs	r0, #0
    1c4e:	f001 f809 	bl	2c64 <set_cursor>
			put_char(' ');
    1c52:	2020      	movs	r0, #32
    1c54:	f000 ffa2 	bl	2b9c <put_char>
			set_cursor(0,CHAR_HEIGHT);
    1c58:	4629      	mov	r1, r5
    1c5a:	2000      	movs	r0, #0
    1c5c:	f001 f802 	bl	2c64 <set_cursor>
			put_char('*');
    1c60:	202a      	movs	r0, #42	; 0x2a
    1c62:	f000 ff9b 	bl	2b9c <put_char>
			debug_print=1;
    1c66:	2301      	movs	r3, #1
    1c68:	6023      	str	r3, [r4, #0]
    1c6a:	e7e5      	b.n	1c38 <main+0x244>
		set_cursor(0,2*CHAR_HEIGHT);
    1c6c:	2110      	movs	r1, #16
    1c6e:	2000      	movs	r0, #0
    1c70:	f000 fff8 	bl	2c64 <set_cursor>
		put_char('*');
    1c74:	202a      	movs	r0, #42	; 0x2a
    1c76:	f000 ff91 	bl	2b9c <put_char>
    1c7a:	e7db      	b.n	1c34 <main+0x240>
			set_cursor(0,CHAR_HEIGHT);
    1c7c:	4629      	mov	r1, r5
    1c7e:	2000      	movs	r0, #0
    1c80:	f000 fff0 	bl	2c64 <set_cursor>
			put_char(' ');
    1c84:	2020      	movs	r0, #32
    1c86:	f000 ff89 	bl	2b9c <put_char>
			set_cursor(0,2*CHAR_HEIGHT);
    1c8a:	2110      	movs	r1, #16
    1c8c:	2000      	movs	r0, #0
    1c8e:	f000 ffe9 	bl	2c64 <set_cursor>
			put_char('*');
    1c92:	202a      	movs	r0, #42	; 0x2a
    1c94:	f000 ff82 	bl	2b9c <put_char>
			debug_print=0;
    1c98:	2300      	movs	r3, #0
    1c9a:	6023      	str	r3, [r4, #0]
    1c9c:	e7cc      	b.n	1c38 <main+0x244>
	set_video_mode(p);
    1c9e:	2000      	movs	r0, #0
    1ca0:	f001 fb3e 	bl	3320 <set_video_mode>
	color_bars();
    1ca4:	f7ff fd84 	bl	17b0 <color_bars>
	vertical_bars();
    1ca8:	f7ff fda7 	bl	17fa <vertical_bars>
	horiz_bars();
    1cac:	f7ff fdbf 	bl	182e <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1cb0:	2110      	movs	r1, #16
    1cb2:	4813      	ldr	r0, [pc, #76]	; (1d00 <main+0x30c>)
    1cb4:	f001 f825 	bl	2d02 <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1cb8:	210a      	movs	r1, #10
    1cba:	9805      	ldr	r0, [sp, #20]
    1cbc:	f001 f821 	bl	2d02 <print_int>
	init_balls();
    1cc0:	f7ff fe62 	bl	1988 <init_balls>
	p=0;
    1cc4:	2400      	movs	r4, #0
		if (btn_query_down(KEY_RIGHT)){
    1cc6:	2510      	movs	r5, #16
				print("SCHIP mode\n128x64 mono");
    1cc8:	4e0e      	ldr	r6, [pc, #56]	; (1d04 <main+0x310>)
    1cca:	e02f      	b.n	1d2c <main+0x338>
    1ccc:	40021000 	.word	0x40021000
    1cd0:	40022000 	.word	0x40022000
    1cd4:	40011000 	.word	0x40011000
    1cd8:	40013800 	.word	0x40013800
    1cdc:	20004e90 	.word	0x20004e90
    1ce0:	00003bec 	.word	0x00003bec
    1ce4:	20000004 	.word	0x20000004
    1ce8:	200006f4 	.word	0x200006f4
    1cec:	200006d0 	.word	0x200006d0
    1cf0:	00003ac4 	.word	0x00003ac4
    1cf4:	00003c0c 	.word	0x00003c0c
    1cf8:	00003c28 	.word	0x00003c28
    1cfc:	00003c40 	.word	0x00003c40
    1d00:	00004000 	.word	0x00004000
    1d04:	00003c78 	.word	0x00003c78
			p^=1;
    1d08:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1d0c:	4620      	mov	r0, r4
    1d0e:	f001 fb07 	bl	3320 <set_video_mode>
			switch(p){
    1d12:	2c00      	cmp	r4, #0
    1d14:	d046      	beq.n	1da4 <main+0x3b0>
    1d16:	2c01      	cmp	r4, #1
    1d18:	d04a      	beq.n	1db0 <main+0x3bc>
			vertical_bars();
    1d1a:	f7ff fd6e 	bl	17fa <vertical_bars>
			horiz_bars();
    1d1e:	f7ff fd86 	bl	182e <horiz_bars>
			init_balls();
    1d22:	f7ff fe31 	bl	1988 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1d26:	4628      	mov	r0, r5
    1d28:	f7ff f97c 	bl	1024 <btn_wait_up>
		draw_balls();
    1d2c:	f7ff fdb0 	bl	1890 <draw_balls>
		draw_balls();
    1d30:	f7ff fdae 	bl	1890 <draw_balls>
		move_balls();
    1d34:	f7ff fde7 	bl	1906 <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1d38:	4628      	mov	r0, r5
    1d3a:	f7ff f953 	bl	fe4 <btn_query_down>
    1d3e:	2800      	cmp	r0, #0
    1d40:	d1e2      	bne.n	1d08 <main+0x314>
		}else if (btn_query_down(KEY_B)){
    1d42:	2020      	movs	r0, #32
    1d44:	f7ff f94e 	bl	fe4 <btn_query_down>
    1d48:	2800      	cmp	r0, #0
    1d4a:	d0ef      	beq.n	1d2c <main+0x338>
			btn_wait_up(KEY_B);
    1d4c:	2020      	movs	r0, #32
    1d4e:	f7ff f969 	bl	1024 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1d52:	2000      	movs	r0, #0
    1d54:	f001 fae4 	bl	3320 <set_video_mode>
			display_menu();
    1d58:	f7ff fd82 	bl	1860 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1d5c:	ea4f 04cb 	mov.w	r4, fp, lsl #3
    1d60:	b2e4      	uxtb	r4, r4
    1d62:	4621      	mov	r1, r4
    1d64:	2000      	movs	r0, #0
    1d66:	f000 ff7d 	bl	2c64 <set_cursor>
		put_char('>');
    1d6a:	203e      	movs	r0, #62	; 0x3e
    1d6c:	f000 ff16 	bl	2b9c <put_char>
		btn=btn_wait_any();
    1d70:	f7ff f96c 	bl	104c <btn_wait_any>
    1d74:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1d76:	f7ff f955 	bl	1024 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1d7a:	4621      	mov	r1, r4
    1d7c:	2000      	movs	r0, #0
    1d7e:	f000 ff71 	bl	2c64 <set_cursor>
		put_char(' ');
    1d82:	2020      	movs	r0, #32
    1d84:	f000 ff0a 	bl	2b9c <put_char>
		switch(btn){
    1d88:	2d04      	cmp	r5, #4
    1d8a:	f43f ae93 	beq.w	1ab4 <main+0xc0>
    1d8e:	2d20      	cmp	r5, #32
    1d90:	f43f ae97 	beq.w	1ac2 <main+0xce>
    1d94:	2d02      	cmp	r5, #2
    1d96:	d1e1      	bne.n	1d5c <main+0x368>
			if (i) i--;
    1d98:	f1bb 0f00 	cmp.w	fp, #0
    1d9c:	d0de      	beq.n	1d5c <main+0x368>
    1d9e:	f10b 3bff 	add.w	fp, fp, #4294967295	; 0xffffffff
    1da2:	e7db      	b.n	1d5c <main+0x368>
				print("BPCHIP mode\n180x112 16 colors");
    1da4:	482b      	ldr	r0, [pc, #172]	; (1e54 <main+0x460>)
    1da6:	f000 ff91 	bl	2ccc <print>
				color_bars();
    1daa:	f7ff fd01 	bl	17b0 <color_bars>
    1dae:	e7b4      	b.n	1d1a <main+0x326>
				print("SCHIP mode\n128x64 mono");
    1db0:	4630      	mov	r0, r6
    1db2:	f000 ff8b 	bl	2ccc <print>
    1db6:	e7b0      	b.n	1d1a <main+0x326>
	gfx_cls();
    1db8:	f7ff fbaa 	bl	1510 <gfx_cls>
	print("press buttons\n");
    1dbc:	4826      	ldr	r0, [pc, #152]	; (1e58 <main+0x464>)
    1dbe:	f000 ff85 	bl	2ccc <print>
		tone(freq,3);
    1dc2:	2503      	movs	r5, #3
			freq=493;
    1dc4:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    1dc8:	f240 266e 	movw	r6, #622	; 0x26e
    1dcc:	e019      	b.n	1e02 <main+0x40e>
		switch(key){
    1dce:	2802      	cmp	r0, #2
    1dd0:	d03a      	beq.n	1e48 <main+0x454>
    1dd2:	2804      	cmp	r0, #4
    1dd4:	d00e      	beq.n	1df4 <main+0x400>
    1dd6:	2801      	cmp	r0, #1
    1dd8:	d024      	beq.n	1e24 <main+0x430>
		tone(freq,3);
    1dda:	4629      	mov	r1, r5
    1ddc:	9802      	ldr	r0, [sp, #8]
    1dde:	f000 fc7d 	bl	26dc <tone>
	while (key!=KEY_B){
    1de2:	2c20      	cmp	r4, #32
    1de4:	d10d      	bne.n	1e02 <main+0x40e>
    1de6:	e028      	b.n	1e3a <main+0x446>
		switch(key){
    1de8:	2810      	cmp	r0, #16
    1dea:	d1f6      	bne.n	1dda <main+0x3e6>
			freq=523;
    1dec:	f240 230b 	movw	r3, #523	; 0x20b
    1df0:	9302      	str	r3, [sp, #8]
    1df2:	e002      	b.n	1dfa <main+0x406>
			freq=466;
    1df4:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    1df8:	9302      	str	r3, [sp, #8]
		tone(freq,3);
    1dfa:	4629      	mov	r1, r5
    1dfc:	9802      	ldr	r0, [sp, #8]
    1dfe:	f000 fc6d 	bl	26dc <tone>
		key=btn_wait_any();
    1e02:	f7ff f923 	bl	104c <btn_wait_any>
    1e06:	4604      	mov	r4, r0
		switch(key){
    1e08:	2808      	cmp	r0, #8
    1e0a:	d021      	beq.n	1e50 <main+0x45c>
    1e0c:	d9df      	bls.n	1dce <main+0x3da>
    1e0e:	2820      	cmp	r0, #32
    1e10:	d00e      	beq.n	1e30 <main+0x43c>
    1e12:	d9e9      	bls.n	1de8 <main+0x3f4>
    1e14:	2840      	cmp	r0, #64	; 0x40
    1e16:	d009      	beq.n	1e2c <main+0x438>
    1e18:	2880      	cmp	r0, #128	; 0x80
    1e1a:	d1de      	bne.n	1dda <main+0x3e6>
			freq=659;
    1e1c:	f240 2393 	movw	r3, #659	; 0x293
    1e20:	9302      	str	r3, [sp, #8]
    1e22:	e7ea      	b.n	1dfa <main+0x406>
			freq=554;
    1e24:	f240 232a 	movw	r3, #554	; 0x22a
    1e28:	9302      	str	r3, [sp, #8]
    1e2a:	e7e6      	b.n	1dfa <main+0x406>
			freq=622;
    1e2c:	9602      	str	r6, [sp, #8]
    1e2e:	e7e4      	b.n	1dfa <main+0x406>
		tone(freq,3);
    1e30:	2103      	movs	r1, #3
    1e32:	f240 204b 	movw	r0, #587	; 0x24b
    1e36:	f000 fc51 	bl	26dc <tone>
	btn_wait_up(key);
    1e3a:	2020      	movs	r0, #32
    1e3c:	f7ff f8f2 	bl	1024 <btn_wait_up>
	sound_sampler(60);
    1e40:	203c      	movs	r0, #60	; 0x3c
    1e42:	f000 fc8d 	bl	2760 <sound_sampler>
    1e46:	e787      	b.n	1d58 <main+0x364>
			freq=440;
    1e48:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    1e4c:	9302      	str	r3, [sp, #8]
    1e4e:	e7d4      	b.n	1dfa <main+0x406>
			freq=493;
    1e50:	9702      	str	r7, [sp, #8]
    1e52:	e7d2      	b.n	1dfa <main+0x406>
    1e54:	00003c58 	.word	0x00003c58
    1e58:	00003c90 	.word	0x00003c90

00001e5c <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1e5c:	283b      	cmp	r0, #59	; 0x3b
    1e5e:	dc0d      	bgt.n	1e7c <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1e60:	1143      	asrs	r3, r0, #5
    1e62:	009b      	lsls	r3, r3, #2
    1e64:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1e68:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1e6c:	6819      	ldr	r1, [r3, #0]
    1e6e:	f000 001f 	and.w	r0, r0, #31
    1e72:	2201      	movs	r2, #1
    1e74:	fa02 f000 	lsl.w	r0, r2, r0
    1e78:	4308      	orrs	r0, r1
    1e7a:	6018      	str	r0, [r3, #0]
    1e7c:	4770      	bx	lr

00001e7e <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1e7e:	283b      	cmp	r0, #59	; 0x3b
    1e80:	dc08      	bgt.n	1e94 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1e82:	1142      	asrs	r2, r0, #5
    1e84:	f000 001f 	and.w	r0, r0, #31
    1e88:	2301      	movs	r3, #1
    1e8a:	fa03 f000 	lsl.w	r0, r3, r0
    1e8e:	4b02      	ldr	r3, [pc, #8]	; (1e98 <disable_interrupt+0x1a>)
    1e90:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1e94:	4770      	bx	lr
    1e96:	bf00      	nop
    1e98:	e000e180 	.word	0xe000e180

00001e9c <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1e9c:	283b      	cmp	r0, #59	; 0x3b
    1e9e:	dc09      	bgt.n	1eb4 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1ea0:	1142      	asrs	r2, r0, #5
    1ea2:	4b05      	ldr	r3, [pc, #20]	; (1eb8 <get_pending+0x1c>)
    1ea4:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1ea8:	f000 031f 	and.w	r3, r0, #31
    1eac:	2001      	movs	r0, #1
    1eae:	4098      	lsls	r0, r3
    1eb0:	4010      	ands	r0, r2
    1eb2:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1eb4:	2000      	movs	r0, #0
}
    1eb6:	4770      	bx	lr
    1eb8:	e000e280 	.word	0xe000e280

00001ebc <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1ebc:	283b      	cmp	r0, #59	; 0x3b
    1ebe:	dc0c      	bgt.n	1eda <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1ec0:	1143      	asrs	r3, r0, #5
    1ec2:	009b      	lsls	r3, r3, #2
    1ec4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1ec8:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1ecc:	681a      	ldr	r2, [r3, #0]
    1ece:	f000 031f 	and.w	r3, r0, #31
    1ed2:	2001      	movs	r0, #1
    1ed4:	4098      	lsls	r0, r3
    1ed6:	4010      	ands	r0, r2
    1ed8:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1eda:	2000      	movs	r0, #0
}
    1edc:	4770      	bx	lr

00001ede <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1ede:	283b      	cmp	r0, #59	; 0x3b
    1ee0:	dc0d      	bgt.n	1efe <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1ee2:	1143      	asrs	r3, r0, #5
    1ee4:	009b      	lsls	r3, r3, #2
    1ee6:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1eea:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1eee:	6819      	ldr	r1, [r3, #0]
    1ef0:	f000 001f 	and.w	r0, r0, #31
    1ef4:	2201      	movs	r2, #1
    1ef6:	fa02 f000 	lsl.w	r0, r2, r0
    1efa:	4308      	orrs	r0, r1
    1efc:	6018      	str	r0, [r3, #0]
    1efe:	4770      	bx	lr

00001f00 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    1f00:	283b      	cmp	r0, #59	; 0x3b
    1f02:	dc08      	bgt.n	1f16 <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    1f04:	1142      	asrs	r2, r0, #5
    1f06:	f000 001f 	and.w	r0, r0, #31
    1f0a:	2301      	movs	r3, #1
    1f0c:	fa03 f000 	lsl.w	r0, r3, r0
    1f10:	4b01      	ldr	r3, [pc, #4]	; (1f18 <clear_pending+0x18>)
    1f12:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1f16:	4770      	bx	lr
    1f18:	e000e280 	.word	0xe000e280

00001f1c <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    1f1c:	283b      	cmp	r0, #59	; 0x3b
    1f1e:	d90c      	bls.n	1f3a <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    1f20:	f100 030f 	add.w	r3, r0, #15
    1f24:	2b0e      	cmp	r3, #14
    1f26:	d807      	bhi.n	1f38 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    1f28:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    1f2c:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    1f30:	30fc      	adds	r0, #252	; 0xfc
    1f32:	0109      	lsls	r1, r1, #4
    1f34:	4b04      	ldr	r3, [pc, #16]	; (1f48 <set_int_priority+0x2c>)
    1f36:	54c1      	strb	r1, [r0, r3]
    1f38:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    1f3a:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    1f3e:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    1f42:	0109      	lsls	r1, r1, #4
    1f44:	7001      	strb	r1, [r0, #0]
    1f46:	4770      	bx	lr
    1f48:	e000ed18 	.word	0xe000ed18

00001f4c <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    1f4c:	f010 0f03 	tst.w	r0, #3
    1f50:	d113      	bne.n	1f7a <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    1f52:	4b0c      	ldr	r3, [pc, #48]	; (1f84 <leap_year+0x38>)
    1f54:	fba3 2300 	umull	r2, r3, r3, r0
    1f58:	095b      	lsrs	r3, r3, #5
    1f5a:	2264      	movs	r2, #100	; 0x64
    1f5c:	fb02 0313 	mls	r3, r2, r3, r0
    1f60:	b96b      	cbnz	r3, 1f7e <leap_year+0x32>
    1f62:	4b08      	ldr	r3, [pc, #32]	; (1f84 <leap_year+0x38>)
    1f64:	fba3 2300 	umull	r2, r3, r3, r0
    1f68:	09db      	lsrs	r3, r3, #7
    1f6a:	f44f 72c8 	mov.w	r2, #400	; 0x190
    1f6e:	fb02 0013 	mls	r0, r2, r3, r0
    1f72:	fab0 f080 	clz	r0, r0
    1f76:	0940      	lsrs	r0, r0, #5
    1f78:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    1f7a:	2000      	movs	r0, #0
    1f7c:	4770      	bx	lr
		return 1;
    1f7e:	2001      	movs	r0, #1
}
    1f80:	4770      	bx	lr
    1f82:	bf00      	nop
    1f84:	51eb851f 	.word	0x51eb851f

00001f88 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    1f88:	4b07      	ldr	r3, [pc, #28]	; (1fa8 <sec_per_month+0x20>)
    1f8a:	5c5a      	ldrb	r2, [r3, r1]
    1f8c:	4b07      	ldr	r3, [pc, #28]	; (1fac <sec_per_month+0x24>)
    1f8e:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    1f92:	2902      	cmp	r1, #2
    1f94:	d001      	beq.n	1f9a <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    1f96:	4618      	mov	r0, r3
    1f98:	4770      	bx	lr
	if (month==2 && leap){
    1f9a:	2800      	cmp	r0, #0
    1f9c:	d0fb      	beq.n	1f96 <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    1f9e:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1fa2:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    1fa6:	e7f6      	b.n	1f96 <sec_per_month+0xe>
    1fa8:	00003b2c 	.word	0x00003b2c
    1fac:	00015180 	.word	0x00015180

00001fb0 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    1fb0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1fb4:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    1fb6:	4b37      	ldr	r3, [pc, #220]	; (2094 <get_date_time+0xe4>)
    1fb8:	699a      	ldr	r2, [r3, #24]
    1fba:	69dc      	ldr	r4, [r3, #28]
    1fbc:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    1fc0:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1fc4:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    1fc6:	f7ff ffc1 	bl	1f4c <leap_year>
    1fca:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1fcc:	4d32      	ldr	r5, [pc, #200]	; (2098 <get_date_time+0xe8>)
    1fce:	4f33      	ldr	r7, [pc, #204]	; (209c <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    1fd0:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 20b0 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1fd4:	e00e      	b.n	1ff4 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    1fd6:	4444      	add	r4, r8
    1fd8:	e005      	b.n	1fe6 <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1fda:	42ac      	cmp	r4, r5
    1fdc:	d90f      	bls.n	1ffe <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    1fde:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    1fe2:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    1fe6:	8930      	ldrh	r0, [r6, #8]
    1fe8:	3001      	adds	r0, #1
    1fea:	b280      	uxth	r0, r0
    1fec:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    1fee:	f7ff ffad 	bl	1f4c <leap_year>
    1ff2:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1ff4:	f1b9 0f00 	cmp.w	r9, #0
    1ff8:	d1ef      	bne.n	1fda <get_date_time+0x2a>
    1ffa:	42bc      	cmp	r4, r7
    1ffc:	d8eb      	bhi.n	1fd6 <get_date_time+0x26>
	}//while
	dt->month=1;
    1ffe:	8873      	ldrh	r3, [r6, #2]
    2000:	2201      	movs	r2, #1
    2002:	f362 1389 	bfi	r3, r2, #6, #4
    2006:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    2008:	f362 0345 	bfi	r3, r2, #1, #5
    200c:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    200e:	6833      	ldr	r3, [r6, #0]
    2010:	f36f 3310 	bfc	r3, #12, #5
    2014:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    2016:	f36f 138b 	bfc	r3, #6, #6
    201a:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    201c:	f36f 0305 	bfc	r3, #0, #6
    2020:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2022:	e005      	b.n	2030 <get_date_time+0x80>
		dt->month++;
    2024:	3501      	adds	r5, #1
    2026:	8873      	ldrh	r3, [r6, #2]
    2028:	f365 1389 	bfi	r3, r5, #6, #4
    202c:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    202e:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2030:	8875      	ldrh	r5, [r6, #2]
    2032:	f3c5 1583 	ubfx	r5, r5, #6, #4
    2036:	4629      	mov	r1, r5
    2038:	4648      	mov	r0, r9
    203a:	f7ff ffa5 	bl	1f88 <sec_per_month>
    203e:	4284      	cmp	r4, r0
    2040:	d8f0      	bhi.n	2024 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    2042:	4a17      	ldr	r2, [pc, #92]	; (20a0 <get_date_time+0xf0>)
    2044:	fba2 3204 	umull	r3, r2, r2, r4
    2048:	0c12      	lsrs	r2, r2, #16
    204a:	1c51      	adds	r1, r2, #1
    204c:	78b3      	ldrb	r3, [r6, #2]
    204e:	f361 0345 	bfi	r3, r1, #1, #5
    2052:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    2054:	4b13      	ldr	r3, [pc, #76]	; (20a4 <get_date_time+0xf4>)
    2056:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    205a:	4c13      	ldr	r4, [pc, #76]	; (20a8 <get_date_time+0xf8>)
    205c:	fba4 3402 	umull	r3, r4, r4, r2
    2060:	0ae4      	lsrs	r4, r4, #11
    2062:	6833      	ldr	r3, [r6, #0]
    2064:	f364 3310 	bfi	r3, r4, #12, #5
    2068:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    206a:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    206e:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    2072:	4a0e      	ldr	r2, [pc, #56]	; (20ac <get_date_time+0xfc>)
    2074:	fba2 1204 	umull	r1, r2, r2, r4
    2078:	0952      	lsrs	r2, r2, #5
    207a:	f362 138b 	bfi	r3, r2, #6, #6
    207e:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    2080:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2084:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    2088:	f364 0305 	bfi	r3, r4, #0, #6
    208c:	7033      	strb	r3, [r6, #0]
    208e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    2092:	bf00      	nop
    2094:	40002800 	.word	0x40002800
    2098:	01e284ff 	.word	0x01e284ff
    209c:	01e1337f 	.word	0x01e1337f
    20a0:	c22e4507 	.word	0xc22e4507
    20a4:	00015180 	.word	0x00015180
    20a8:	91a2b3c5 	.word	0x91a2b3c5
    20ac:	88888889 	.word	0x88888889
    20b0:	fe1ecc80 	.word	0xfe1ecc80

000020b4 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    20b4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    20b8:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    20ba:	8903      	ldrh	r3, [r0, #8]
    20bc:	f240 72b1 	movw	r2, #1969	; 0x7b1
    20c0:	4293      	cmp	r3, r2
    20c2:	d857      	bhi.n	2174 <set_date_time+0xc0>
    20c4:	f240 70b2 	movw	r0, #1970	; 0x7b2
    20c8:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    20cc:	f7ff ff3e 	bl	1f4c <leap_year>
    20d0:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    20d2:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    20d4:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    20d8:	f3c6 1683 	ubfx	r6, r6, #6, #4
    20dc:	2e01      	cmp	r6, #1
    20de:	d908      	bls.n	20f2 <set_date_time+0x3e>
    20e0:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    20e2:	4629      	mov	r1, r5
    20e4:	4638      	mov	r0, r7
    20e6:	f7ff ff4f 	bl	1f88 <sec_per_month>
    20ea:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    20ec:	3501      	adds	r5, #1
    20ee:	42b5      	cmp	r5, r6
    20f0:	d1f7      	bne.n	20e2 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    20f2:	f8d8 2000 	ldr.w	r2, [r8]
    20f6:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    20fa:	f8b8 2000 	ldrh.w	r2, [r8]
    20fe:	f3c2 1285 	ubfx	r2, r2, #6, #6
    2102:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2106:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    2108:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    210c:	fb01 2203 	mla	r2, r1, r3, r2
    2110:	f898 3000 	ldrb.w	r3, [r8]
    2114:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2118:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    211a:	f898 3002 	ldrb.w	r3, [r8, #2]
    211e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2122:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2124:	4928      	ldr	r1, [pc, #160]	; (21c8 <set_date_time+0x114>)
    2126:	fb01 2303 	mla	r3, r1, r3, r2
    212a:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    212c:	4a27      	ldr	r2, [pc, #156]	; (21cc <set_date_time+0x118>)
    212e:	69d3      	ldr	r3, [r2, #28]
    2130:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2134:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2136:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    213a:	6813      	ldr	r3, [r2, #0]
    213c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2140:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2142:	4b23      	ldr	r3, [pc, #140]	; (21d0 <set_date_time+0x11c>)
    2144:	685a      	ldr	r2, [r3, #4]
    2146:	f042 0210 	orr.w	r2, r2, #16
    214a:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    214c:	0c22      	lsrs	r2, r4, #16
    214e:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    2150:	b2a4      	uxth	r4, r4
    2152:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2154:	685a      	ldr	r2, [r3, #4]
    2156:	f022 0210 	bic.w	r2, r2, #16
    215a:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    215c:	461a      	mov	r2, r3
    215e:	6853      	ldr	r3, [r2, #4]
    2160:	f013 0f20 	tst.w	r3, #32
    2164:	d0fb      	beq.n	215e <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2166:	4a1b      	ldr	r2, [pc, #108]	; (21d4 <set_date_time+0x120>)
    2168:	6813      	ldr	r3, [r2, #0]
    216a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    216e:	6013      	str	r3, [r2, #0]
    2170:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    2174:	f640 023a 	movw	r2, #2106	; 0x83a
    2178:	4293      	cmp	r3, r2
    217a:	d90c      	bls.n	2196 <set_date_time+0xe2>
    217c:	4616      	mov	r6, r2
    217e:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    2182:	4610      	mov	r0, r2
    2184:	f7ff fee2 	bl	1f4c <leap_year>
    2188:	4607      	mov	r7, r0
    218a:	2400      	movs	r4, #0
    218c:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    2190:	f8df 9044 	ldr.w	r9, [pc, #68]	; 21d8 <set_date_time+0x124>
    2194:	e00e      	b.n	21b4 <set_date_time+0x100>
	leap=leap_year(dt->year);
    2196:	8906      	ldrh	r6, [r0, #8]
    2198:	4630      	mov	r0, r6
    219a:	f7ff fed7 	bl	1f4c <leap_year>
    219e:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    21a0:	f240 73b2 	movw	r3, #1970	; 0x7b2
    21a4:	429e      	cmp	r6, r3
    21a6:	d8f0      	bhi.n	218a <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    21a8:	2400      	movs	r4, #0
    21aa:	e793      	b.n	20d4 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    21ac:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    21ae:	3501      	adds	r5, #1
    21b0:	42b5      	cmp	r5, r6
    21b2:	d28f      	bcs.n	20d4 <set_date_time+0x20>
		if (leap_year(i)){
    21b4:	4628      	mov	r0, r5
    21b6:	f7ff fec9 	bl	1f4c <leap_year>
    21ba:	2800      	cmp	r0, #0
    21bc:	d0f6      	beq.n	21ac <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    21be:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    21c2:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    21c6:	e7f2      	b.n	21ae <set_date_time+0xfa>
    21c8:	00015180 	.word	0x00015180
    21cc:	40021000 	.word	0x40021000
    21d0:	40002800 	.word	0x40002800
    21d4:	40007000 	.word	0x40007000
    21d8:	01e13380 	.word	0x01e13380

000021dc <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    21dc:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    21de:	4b35      	ldr	r3, [pc, #212]	; (22b4 <rtc_init+0xd8>)
    21e0:	685a      	ldr	r2, [r3, #4]
    21e2:	f64a 2355 	movw	r3, #43605	; 0xaa55
    21e6:	429a      	cmp	r2, r3
    21e8:	d05c      	beq.n	22a4 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    21ea:	4b33      	ldr	r3, [pc, #204]	; (22b8 <rtc_init+0xdc>)
    21ec:	69da      	ldr	r2, [r3, #28]
    21ee:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    21f2:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    21f4:	4c31      	ldr	r4, [pc, #196]	; (22bc <rtc_init+0xe0>)
    21f6:	6822      	ldr	r2, [r4, #0]
    21f8:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    21fc:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    21fe:	6a1a      	ldr	r2, [r3, #32]
    2200:	f042 0201 	orr.w	r2, r2, #1
    2204:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    2206:	461a      	mov	r2, r3
    2208:	6a13      	ldr	r3, [r2, #32]
    220a:	f013 0f02 	tst.w	r3, #2
    220e:	d0fb      	beq.n	2208 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2210:	4a29      	ldr	r2, [pc, #164]	; (22b8 <rtc_init+0xdc>)
    2212:	6a13      	ldr	r3, [r2, #32]
    2214:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2218:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    221a:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    221e:	6853      	ldr	r3, [r2, #4]
    2220:	f013 0f08 	tst.w	r3, #8
    2224:	d0fb      	beq.n	221e <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    2226:	4a26      	ldr	r2, [pc, #152]	; (22c0 <rtc_init+0xe4>)
    2228:	6853      	ldr	r3, [r2, #4]
    222a:	f013 0f20 	tst.w	r3, #32
    222e:	d0fb      	beq.n	2228 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2230:	4a23      	ldr	r2, [pc, #140]	; (22c0 <rtc_init+0xe4>)
    2232:	6853      	ldr	r3, [r2, #4]
    2234:	f043 0310 	orr.w	r3, r3, #16
    2238:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    223a:	6853      	ldr	r3, [r2, #4]
    223c:	f013 0f20 	tst.w	r3, #32
    2240:	d0fb      	beq.n	223a <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    2242:	4a1f      	ldr	r2, [pc, #124]	; (22c0 <rtc_init+0xe4>)
    2244:	6813      	ldr	r3, [r2, #0]
    2246:	4319      	orrs	r1, r3
    2248:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    224a:	6853      	ldr	r3, [r2, #4]
    224c:	f013 0f20 	tst.w	r3, #32
    2250:	d0fb      	beq.n	224a <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    2252:	03c2      	lsls	r2, r0, #15
    2254:	481b      	ldr	r0, [pc, #108]	; (22c4 <rtc_init+0xe8>)
    2256:	fba0 3202 	umull	r3, r2, r0, r2
    225a:	0992      	lsrs	r2, r2, #6
    225c:	3a01      	subs	r2, #1
    225e:	b291      	uxth	r1, r2
    2260:	4b17      	ldr	r3, [pc, #92]	; (22c0 <rtc_init+0xe4>)
    2262:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    2264:	4619      	mov	r1, r3
    2266:	684b      	ldr	r3, [r1, #4]
    2268:	f013 0f20 	tst.w	r3, #32
    226c:	d0fb      	beq.n	2266 <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    226e:	f3c2 4203 	ubfx	r2, r2, #16, #4
    2272:	4b13      	ldr	r3, [pc, #76]	; (22c0 <rtc_init+0xe4>)
    2274:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    2276:	461a      	mov	r2, r3
    2278:	6853      	ldr	r3, [r2, #4]
    227a:	f013 0f20 	tst.w	r3, #32
    227e:	d0fb      	beq.n	2278 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    2280:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2284:	4b0b      	ldr	r3, [pc, #44]	; (22b4 <rtc_init+0xd8>)
    2286:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    2288:	4a0d      	ldr	r2, [pc, #52]	; (22c0 <rtc_init+0xe4>)
    228a:	6853      	ldr	r3, [r2, #4]
    228c:	f023 0310 	bic.w	r3, r3, #16
    2290:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    2292:	6853      	ldr	r3, [r2, #4]
    2294:	f013 0f20 	tst.w	r3, #32
    2298:	d0fb      	beq.n	2292 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    229a:	4a08      	ldr	r2, [pc, #32]	; (22bc <rtc_init+0xe0>)
    229c:	6813      	ldr	r3, [r2, #0]
    229e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    22a2:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    22a4:	210f      	movs	r1, #15
    22a6:	2003      	movs	r0, #3
    22a8:	f7ff fe38 	bl	1f1c <set_int_priority>
	enable_interrupt(IRQ_RTC);
    22ac:	2003      	movs	r0, #3
    22ae:	f7ff fdd5 	bl	1e5c <enable_interrupt>
    22b2:	bd10      	pop	{r4, pc}
    22b4:	40006c00 	.word	0x40006c00
    22b8:	40021000 	.word	0x40021000
    22bc:	40007000 	.word	0x40007000
    22c0:	40002800 	.word	0x40002800
    22c4:	10624dd3 	.word	0x10624dd3

000022c8 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    22c8:	4b06      	ldr	r3, [pc, #24]	; (22e4 <reset_backup_domain+0x1c>)
    22ca:	69da      	ldr	r2, [r3, #28]
    22cc:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    22d0:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    22d2:	6a1a      	ldr	r2, [r3, #32]
    22d4:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    22d8:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    22da:	6a1a      	ldr	r2, [r3, #32]
    22dc:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    22e0:	621a      	str	r2, [r3, #32]
    22e2:	4770      	bx	lr
    22e4:	40021000 	.word	0x40021000

000022e8 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    22e8:	4a27      	ldr	r2, [pc, #156]	; (2388 <rtc_clock_trim+0xa0>)
    22ea:	69d3      	ldr	r3, [r2, #28]
    22ec:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    22f0:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    22f2:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    22f6:	6853      	ldr	r3, [r2, #4]
    22f8:	f013 0f08 	tst.w	r3, #8
    22fc:	d0fb      	beq.n	22f6 <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    22fe:	4a23      	ldr	r2, [pc, #140]	; (238c <rtc_clock_trim+0xa4>)
    2300:	6813      	ldr	r3, [r2, #0]
    2302:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2306:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2308:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    230c:	6853      	ldr	r3, [r2, #4]
    230e:	f043 0310 	orr.w	r3, r3, #16
    2312:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2314:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    2318:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    231a:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    231e:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2320:	b9b8      	cbnz	r0, 2352 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    2322:	2200      	movs	r2, #0
    2324:	4b1a      	ldr	r3, [pc, #104]	; (2390 <rtc_clock_trim+0xa8>)
    2326:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    2328:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    232c:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2330:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2332:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2334:	4a17      	ldr	r2, [pc, #92]	; (2394 <rtc_clock_trim+0xac>)
    2336:	6853      	ldr	r3, [r2, #4]
    2338:	f023 0310 	bic.w	r3, r3, #16
    233c:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    233e:	6853      	ldr	r3, [r2, #4]
    2340:	f013 0f20 	tst.w	r3, #32
    2344:	d0fb      	beq.n	233e <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2346:	4a11      	ldr	r2, [pc, #68]	; (238c <rtc_clock_trim+0xa4>)
    2348:	6813      	ldr	r3, [r2, #0]
    234a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    234e:	6013      	str	r3, [r2, #0]
    2350:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    2352:	2800      	cmp	r0, #0
    2354:	dd06      	ble.n	2364 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    2356:	4b0e      	ldr	r3, [pc, #56]	; (2390 <rtc_clock_trim+0xa8>)
    2358:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    235a:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    235e:	4310      	orrs	r0, r2
    2360:	62d8      	str	r0, [r3, #44]	; 0x2c
    2362:	e7e7      	b.n	2334 <rtc_clock_trim+0x4c>
		trim=-trim;
    2364:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    2366:	2100      	movs	r1, #0
    2368:	4b09      	ldr	r3, [pc, #36]	; (2390 <rtc_clock_trim+0xa8>)
    236a:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    236c:	f64f 73ff 	movw	r3, #65535	; 0xffff
    2370:	287f      	cmp	r0, #127	; 0x7f
    2372:	bfd4      	ite	le
    2374:	1a18      	suble	r0, r3, r0
    2376:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    237a:	f3c0 000e 	ubfx	r0, r0, #0, #15
    237e:	4a05      	ldr	r2, [pc, #20]	; (2394 <rtc_clock_trim+0xac>)
    2380:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2382:	6091      	str	r1, [r2, #8]
    2384:	e7d6      	b.n	2334 <rtc_clock_trim+0x4c>
    2386:	bf00      	nop
    2388:	40021000 	.word	0x40021000
    238c:	40007000 	.word	0x40007000
    2390:	40006c00 	.word	0x40006c00
    2394:	40002800 	.word	0x40002800

00002398 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    2398:	4770      	bx	lr

0000239a <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    239a:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    239e:	4607      	mov	r7, r0
    23a0:	4688      	mov	r8, r1
    23a2:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    23a4:	2400      	movs	r4, #0
	i=0;
    23a6:	4626      	mov	r6, r4
	while (digit(date[i])){
    23a8:	e008      	b.n	23bc <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    23aa:	3601      	adds	r6, #1
    23ac:	3501      	adds	r5, #1
    23ae:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    23b2:	f899 3000 	ldrb.w	r3, [r9]
    23b6:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    23ba:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    23bc:	46a9      	mov	r9, r5
    23be:	7828      	ldrb	r0, [r5, #0]
    23c0:	f7fe fec5 	bl	114e <digit>
    23c4:	4682      	mov	sl, r0
    23c6:	2800      	cmp	r0, #0
    23c8:	d1ef      	bne.n	23aa <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    23ca:	2e03      	cmp	r6, #3
    23cc:	dd02      	ble.n	23d4 <str_to_date+0x3a>
    23ce:	782b      	ldrb	r3, [r5, #0]
    23d0:	2b2f      	cmp	r3, #47	; 0x2f
    23d2:	d002      	beq.n	23da <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    23d4:	4650      	mov	r0, sl
    23d6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    23da:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    23de:	3601      	adds	r6, #1
    23e0:	19bd      	adds	r5, r7, r6
	n=0;
    23e2:	4604      	mov	r4, r0
	while (digit(date[i])){
    23e4:	e008      	b.n	23f8 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    23e6:	3601      	adds	r6, #1
    23e8:	3501      	adds	r5, #1
    23ea:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    23ee:	f899 3000 	ldrb.w	r3, [r9]
    23f2:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    23f6:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    23f8:	46a9      	mov	r9, r5
    23fa:	7828      	ldrb	r0, [r5, #0]
    23fc:	f7fe fea7 	bl	114e <digit>
    2400:	4682      	mov	sl, r0
    2402:	2800      	cmp	r0, #0
    2404:	d1ef      	bne.n	23e6 <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    2406:	2e06      	cmp	r6, #6
    2408:	dde4      	ble.n	23d4 <str_to_date+0x3a>
    240a:	782b      	ldrb	r3, [r5, #0]
    240c:	2b2f      	cmp	r3, #47	; 0x2f
    240e:	d1e1      	bne.n	23d4 <str_to_date+0x3a>
	dt->month=n;
    2410:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2414:	f364 1389 	bfi	r3, r4, #6, #4
    2418:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    241c:	1c74      	adds	r4, r6, #1
    241e:	443e      	add	r6, r7
	while (digit(date[i])){
    2420:	e008      	b.n	2434 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    2422:	3401      	adds	r4, #1
    2424:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2428:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    242c:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2430:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2434:	7870      	ldrb	r0, [r6, #1]
    2436:	f7fe fe8a 	bl	114e <digit>
    243a:	2800      	cmp	r0, #0
    243c:	d1f1      	bne.n	2422 <str_to_date+0x88>
	if (i<10) return 0;
    243e:	2c09      	cmp	r4, #9
    2440:	dd08      	ble.n	2454 <str_to_date+0xba>
	dt->day=n;
    2442:	f898 3002 	ldrb.w	r3, [r8, #2]
    2446:	f36a 0345 	bfi	r3, sl, #1, #5
    244a:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    244e:	f04f 0a01 	mov.w	sl, #1
    2452:	e7bf      	b.n	23d4 <str_to_date+0x3a>
	if (i<10) return 0;
    2454:	4682      	mov	sl, r0
    2456:	e7bd      	b.n	23d4 <str_to_date+0x3a>

00002458 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    2458:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    245c:	4607      	mov	r7, r0
    245e:	4688      	mov	r8, r1
    2460:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    2462:	2400      	movs	r4, #0
	i=0;
    2464:	4626      	mov	r6, r4
	while (digit(time[i])){
    2466:	e00a      	b.n	247e <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    2468:	3601      	adds	r6, #1
    246a:	3501      	adds	r5, #1
    246c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2470:	0064      	lsls	r4, r4, #1
    2472:	3c30      	subs	r4, #48	; 0x30
    2474:	f899 3000 	ldrb.w	r3, [r9]
    2478:	441c      	add	r4, r3
    247a:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    247e:	46a9      	mov	r9, r5
    2480:	7828      	ldrb	r0, [r5, #0]
    2482:	f7fe fe64 	bl	114e <digit>
    2486:	4603      	mov	r3, r0
    2488:	2800      	cmp	r0, #0
    248a:	d1ed      	bne.n	2468 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    248c:	2c17      	cmp	r4, #23
    248e:	d802      	bhi.n	2496 <str_to_time+0x3e>
    2490:	782a      	ldrb	r2, [r5, #0]
    2492:	2a3a      	cmp	r2, #58	; 0x3a
    2494:	d002      	beq.n	249c <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    2496:	4618      	mov	r0, r3
    2498:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    249c:	f8d8 3000 	ldr.w	r3, [r8]
    24a0:	f364 3310 	bfi	r3, r4, #12, #5
    24a4:	f8c8 3000 	str.w	r3, [r8]
	i++;
    24a8:	3601      	adds	r6, #1
    24aa:	19bd      	adds	r5, r7, r6
	n=0;
    24ac:	2400      	movs	r4, #0
	while (digit(time[i])){
    24ae:	e00a      	b.n	24c6 <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    24b0:	3601      	adds	r6, #1
    24b2:	3501      	adds	r5, #1
    24b4:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    24b8:	0064      	lsls	r4, r4, #1
    24ba:	3c30      	subs	r4, #48	; 0x30
    24bc:	f899 3000 	ldrb.w	r3, [r9]
    24c0:	441c      	add	r4, r3
    24c2:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    24c6:	46a9      	mov	r9, r5
    24c8:	7828      	ldrb	r0, [r5, #0]
    24ca:	f7fe fe40 	bl	114e <digit>
    24ce:	4603      	mov	r3, r0
    24d0:	2800      	cmp	r0, #0
    24d2:	d1ed      	bne.n	24b0 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    24d4:	2c3b      	cmp	r4, #59	; 0x3b
    24d6:	d8de      	bhi.n	2496 <str_to_time+0x3e>
    24d8:	782a      	ldrb	r2, [r5, #0]
    24da:	2a3a      	cmp	r2, #58	; 0x3a
    24dc:	d1db      	bne.n	2496 <str_to_time+0x3e>
	dt->minute=n;
    24de:	f8b8 3000 	ldrh.w	r3, [r8]
    24e2:	f364 138b 	bfi	r3, r4, #6, #6
    24e6:	f8a8 3000 	strh.w	r3, [r8]
    24ea:	443e      	add	r6, r7
	n=0;
    24ec:	2400      	movs	r4, #0
	while (digit(time[i])){
    24ee:	e008      	b.n	2502 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    24f0:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    24f4:	0064      	lsls	r4, r4, #1
    24f6:	3c30      	subs	r4, #48	; 0x30
    24f8:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    24fc:	441c      	add	r4, r3
    24fe:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2502:	7870      	ldrb	r0, [r6, #1]
    2504:	f7fe fe23 	bl	114e <digit>
    2508:	4603      	mov	r3, r0
    250a:	2800      	cmp	r0, #0
    250c:	d1f0      	bne.n	24f0 <str_to_time+0x98>
	if (n>59) return 0;
    250e:	2c3b      	cmp	r4, #59	; 0x3b
    2510:	d8c1      	bhi.n	2496 <str_to_time+0x3e>
	dt->second=n;
    2512:	f898 3000 	ldrb.w	r3, [r8]
    2516:	f364 0305 	bfi	r3, r4, #0, #6
    251a:	f888 3000 	strb.w	r3, [r8]
	return 1;
    251e:	2301      	movs	r3, #1
    2520:	e7b9      	b.n	2496 <str_to_time+0x3e>

00002522 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    2522:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2524:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    2526:	4b23      	ldr	r3, [pc, #140]	; (25b4 <date_str+0x92>)
    2528:	fba3 4302 	umull	r4, r3, r3, r2
    252c:	099b      	lsrs	r3, r3, #6
    252e:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2532:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2534:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2538:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    253c:	4b1e      	ldr	r3, [pc, #120]	; (25b8 <date_str+0x96>)
    253e:	fba3 4302 	umull	r4, r3, r3, r2
    2542:	095b      	lsrs	r3, r3, #5
    2544:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2548:	704c      	strb	r4, [r1, #1]
	n%=100;
    254a:	2464      	movs	r4, #100	; 0x64
    254c:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2550:	4a1a      	ldr	r2, [pc, #104]	; (25bc <date_str+0x9a>)
    2552:	fba2 5403 	umull	r5, r4, r2, r3
    2556:	08e4      	lsrs	r4, r4, #3
    2558:	f104 0530 	add.w	r5, r4, #48	; 0x30
    255c:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    255e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2562:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    2566:	3330      	adds	r3, #48	; 0x30
    2568:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    256a:	262f      	movs	r6, #47	; 0x2f
    256c:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    256e:	8843      	ldrh	r3, [r0, #2]
    2570:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    2574:	fba2 5403 	umull	r5, r4, r2, r3
    2578:	08e4      	lsrs	r4, r4, #3
    257a:	f104 0530 	add.w	r5, r4, #48	; 0x30
    257e:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    2580:	00a5      	lsls	r5, r4, #2
    2582:	442c      	add	r4, r5
    2584:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    2588:	3330      	adds	r3, #48	; 0x30
    258a:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    258c:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    258e:	7880      	ldrb	r0, [r0, #2]
    2590:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    2594:	fba2 3200 	umull	r3, r2, r2, r0
    2598:	08d3      	lsrs	r3, r2, #3
    259a:	f103 0230 	add.w	r2, r3, #48	; 0x30
    259e:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    25a0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    25a4:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    25a8:	3330      	adds	r3, #48	; 0x30
    25aa:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    25ac:	2300      	movs	r3, #0
    25ae:	728b      	strb	r3, [r1, #10]

}
    25b0:	bc70      	pop	{r4, r5, r6}
    25b2:	4770      	bx	lr
    25b4:	10624dd3 	.word	0x10624dd3
    25b8:	51eb851f 	.word	0x51eb851f
    25bc:	cccccccd 	.word	0xcccccccd

000025c0 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    25c0:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    25c2:	6802      	ldr	r2, [r0, #0]
    25c4:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    25c8:	4b18      	ldr	r3, [pc, #96]	; (262c <time_str+0x6c>)
    25ca:	fba3 5402 	umull	r5, r4, r3, r2
    25ce:	08e4      	lsrs	r4, r4, #3
    25d0:	f104 0530 	add.w	r5, r4, #48	; 0x30
    25d4:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    25d6:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25da:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    25de:	3230      	adds	r2, #48	; 0x30
    25e0:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    25e2:	253a      	movs	r5, #58	; 0x3a
    25e4:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    25e6:	8802      	ldrh	r2, [r0, #0]
    25e8:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    25ec:	fba3 6402 	umull	r6, r4, r3, r2
    25f0:	08e4      	lsrs	r4, r4, #3
    25f2:	f104 0630 	add.w	r6, r4, #48	; 0x30
    25f6:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    25f8:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25fc:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2600:	3230      	adds	r2, #48	; 0x30
    2602:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2604:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    2606:	7802      	ldrb	r2, [r0, #0]
    2608:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    260c:	fba3 0302 	umull	r0, r3, r3, r2
    2610:	08db      	lsrs	r3, r3, #3
    2612:	f103 0030 	add.w	r0, r3, #48	; 0x30
    2616:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2618:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    261c:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2620:	3330      	adds	r3, #48	; 0x30
    2622:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2624:	2300      	movs	r3, #0
    2626:	720b      	strb	r3, [r1, #8]
}
    2628:	bc70      	pop	{r4, r5, r6}
    262a:	4770      	bx	lr
    262c:	cccccccd 	.word	0xcccccccd

00002630 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2630:	b500      	push	{lr}
    2632:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2634:	a801      	add	r0, sp, #4
    2636:	f7ff fcbb 	bl	1fb0 <get_date_time>
	t.fields.second=dt.second/2;
    263a:	f89d 3004 	ldrb.w	r3, [sp, #4]
    263e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2642:	2000      	movs	r0, #0
    2644:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2648:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    264c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2650:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2654:	9b01      	ldr	r3, [sp, #4]
    2656:	f3c3 3304 	ubfx	r3, r3, #12, #5
    265a:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    265e:	f89d 3006 	ldrb.w	r3, [sp, #6]
    2662:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2666:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    266a:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    266e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2672:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    2676:	f89d 300c 	ldrb.w	r3, [sp, #12]
    267a:	3344      	adds	r3, #68	; 0x44
    267c:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    2680:	b005      	add	sp, #20
    2682:	f85d fb04 	ldr.w	pc, [sp], #4

00002686 <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    2686:	4b07      	ldr	r3, [pc, #28]	; (26a4 <RTC_handler+0x1e>)
    2688:	685b      	ldr	r3, [r3, #4]
    268a:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    268e:	bf1c      	itt	ne
    2690:	4b04      	ldrne	r3, [pc, #16]	; (26a4 <RTC_handler+0x1e>)
    2692:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    2694:	4b03      	ldr	r3, [pc, #12]	; (26a4 <RTC_handler+0x1e>)
    2696:	685b      	ldr	r3, [r3, #4]
    2698:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    269c:	bf1c      	itt	ne
    269e:	4b01      	ldrne	r3, [pc, #4]	; (26a4 <RTC_handler+0x1e>)
    26a0:	685b      	ldrne	r3, [r3, #4]
    26a2:	4770      	bx	lr
    26a4:	40002800 	.word	0x40002800

000026a8 <sound_init>:

#define SOUND_BUFFER_SIZE 16
static uint8_t sound_buffer[SOUND_BUFFER_SIZE];
static uint8_t bit_pos;

void sound_init(){
    26a8:	b508      	push	{r3, lr}
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    26aa:	4a0b      	ldr	r2, [pc, #44]	; (26d8 <sound_init+0x30>)
    26ac:	69d3      	ldr	r3, [r2, #28]
    26ae:	f043 0301 	orr.w	r3, r3, #1
    26b2:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    26b4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    26b8:	2278      	movs	r2, #120	; 0x78
    26ba:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    26bc:	f44f 7280 	mov.w	r2, #256	; 0x100
    26c0:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    26c2:	2209      	movs	r2, #9
    26c4:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    26c6:	2100      	movs	r1, #0
    26c8:	201c      	movs	r0, #28
    26ca:	f7ff fc27 	bl	1f1c <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    26ce:	201c      	movs	r0, #28
    26d0:	f7ff fbc4 	bl	1e5c <enable_interrupt>
    26d4:	bd08      	pop	{r3, pc}
    26d6:	bf00      	nop
    26d8:	40021000 	.word	0x40021000

000026dc <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    26dc:	b538      	push	{r3, r4, r5, lr}
    26de:	4605      	mov	r5, r0
    26e0:	460c      	mov	r4, r1
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    26e2:	4b11      	ldr	r3, [pc, #68]	; (2728 <tone+0x4c>)
    26e4:	685a      	ldr	r2, [r3, #4]
    26e6:	f402 7240 	and.w	r2, r2, #768	; 0x300
    26ea:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    26ec:	685a      	ldr	r2, [r3, #4]
    26ee:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    26f2:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    26f4:	220a      	movs	r2, #10
    26f6:	4611      	mov	r1, r2
    26f8:	480c      	ldr	r0, [pc, #48]	; (272c <tone+0x50>)
    26fa:	f7fe fe53 	bl	13a4 <config_pin>
    TMR2->ARR=FCLK/10/freq;
    26fe:	480c      	ldr	r0, [pc, #48]	; (2730 <tone+0x54>)
    2700:	fbb0 f0f5 	udiv	r0, r0, r5
    2704:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2708:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    270a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    270c:	0852      	lsrs	r2, r2, #1
    270e:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->DIER&=~TMR_DIER_CC3IE;
    2710:	68da      	ldr	r2, [r3, #12]
    2712:	f022 0208 	bic.w	r2, r2, #8
    2716:	60da      	str	r2, [r3, #12]
    TMR2->CR1|=TMR_CR1_CEN;
    2718:	681a      	ldr	r2, [r3, #0]
    271a:	f042 0201 	orr.w	r2, r2, #1
    271e:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2720:	4b04      	ldr	r3, [pc, #16]	; (2734 <tone+0x58>)
    2722:	801c      	strh	r4, [r3, #0]
    2724:	bd38      	pop	{r3, r4, r5, pc}
    2726:	bf00      	nop
    2728:	40010000 	.word	0x40010000
    272c:	40010c00 	.word	0x40010c00
    2730:	006d3d32 	.word	0x006d3d32
    2734:	20004e88 	.word	0x20004e88

00002738 <beep>:
}

void beep(uint16_t duration){
    2738:	b508      	push	{r3, lr}
    tone(1000,duration);
    273a:	4601      	mov	r1, r0
    273c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2740:	f7ff ffcc 	bl	26dc <tone>
    2744:	bd08      	pop	{r3, pc}

00002746 <load_sound_buffer>:
}

void load_sound_buffer(const uint8_t* buffer){
    2746:	3801      	subs	r0, #1
    2748:	4904      	ldr	r1, [pc, #16]	; (275c <load_sound_buffer+0x16>)
    274a:	1e4b      	subs	r3, r1, #1
    274c:	310f      	adds	r1, #15
    int i;
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
        sound_buffer[i]=*buffer++;
    274e:	f810 2f01 	ldrb.w	r2, [r0, #1]!
    2752:	f803 2f01 	strb.w	r2, [r3, #1]!
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
    2756:	428b      	cmp	r3, r1
    2758:	d1f9      	bne.n	274e <load_sound_buffer+0x8>
    }
}
    275a:	4770      	bx	lr
    275c:	200006d4 	.word	0x200006d4

00002760 <sound_sampler>:

// configure son pour sortie buffer
void sound_sampler(uint16_t duration){
    2760:	b510      	push	{r4, lr}
    2762:	4604      	mov	r4, r0
    bit_pos=0;
    2764:	2200      	movs	r2, #0
    2766:	4b11      	ldr	r3, [pc, #68]	; (27ac <sound_sampler+0x4c>)
    2768:	741a      	strb	r2, [r3, #16]
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    276a:	4a11      	ldr	r2, [pc, #68]	; (27b0 <sound_sampler+0x50>)
    276c:	6853      	ldr	r3, [r2, #4]
    276e:	f403 7340 	and.w	r3, r3, #768	; 0x300
    2772:	6053      	str	r3, [r2, #4]
    PORTB->ODR&=~BIT10;
    2774:	480f      	ldr	r0, [pc, #60]	; (27b4 <sound_sampler+0x54>)
    2776:	68c3      	ldr	r3, [r0, #12]
    2778:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    277c:	60c3      	str	r3, [r0, #12]
    config_pin(PORTB,10,OUTPUT_PP_SLOW);
    277e:	2202      	movs	r2, #2
    2780:	210a      	movs	r1, #10
    2782:	f7fe fe0f 	bl	13a4 <config_pin>
    TMR2->DIER|=TMR_DIER_UIE;
    2786:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    278a:	68da      	ldr	r2, [r3, #12]
    278c:	f042 0201 	orr.w	r2, r2, #1
    2790:	60da      	str	r2, [r3, #12]
    TMR2->ARR=FCLK/10/4000;
    2792:	f240 62fd 	movw	r2, #1789	; 0x6fd
    2796:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR2->CCR2=TMR2->ARR;
    2798:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    279a:	639a      	str	r2, [r3, #56]	; 0x38
    TMR2->CR1|=TMR_CR1_CEN;
    279c:	681a      	ldr	r2, [r3, #0]
    279e:	f042 0201 	orr.w	r2, r2, #1
    27a2:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    27a4:	4b04      	ldr	r3, [pc, #16]	; (27b8 <sound_sampler+0x58>)
    27a6:	801c      	strh	r4, [r3, #0]
    27a8:	bd10      	pop	{r4, pc}
    27aa:	bf00      	nop
    27ac:	200006d4 	.word	0x200006d4
    27b0:	40010000 	.word	0x40010000
    27b4:	40010c00 	.word	0x40010c00
    27b8:	20004e88 	.word	0x20004e88

000027bc <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    27bc:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    27c0:	681a      	ldr	r2, [r3, #0]
    27c2:	f022 0201 	bic.w	r2, r2, #1
    27c6:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    27c8:	68da      	ldr	r2, [r3, #12]
    27ca:	f022 0201 	bic.w	r2, r2, #1
    27ce:	60da      	str	r2, [r3, #12]
    27d0:	4770      	bx	lr

000027d2 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    27d2:	b510      	push	{r4, lr}
    27d4:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    27d6:	b289      	uxth	r1, r1
    27d8:	4b05      	ldr	r3, [pc, #20]	; (27f0 <key_tone+0x1e>)
    27da:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    27de:	f7ff ff7d 	bl	26dc <tone>
    if (wait_end) while (sound_timer);
    27e2:	b124      	cbz	r4, 27ee <key_tone+0x1c>
    27e4:	4a03      	ldr	r2, [pc, #12]	; (27f4 <key_tone+0x22>)
    27e6:	8813      	ldrh	r3, [r2, #0]
    27e8:	b29b      	uxth	r3, r3
    27ea:	2b00      	cmp	r3, #0
    27ec:	d1fb      	bne.n	27e6 <key_tone+0x14>
    27ee:	bd10      	pop	{r4, pc}
    27f0:	00003b3c 	.word	0x00003b3c
    27f4:	20004e88 	.word	0x20004e88

000027f8 <noise>:
}

// produit un bruit 
void noise(int length){
    27f8:	b570      	push	{r4, r5, r6, lr}
    27fa:	4606      	mov	r6, r0
    int i;
    srand(ntsc_ticks);
    27fc:	4b08      	ldr	r3, [pc, #32]	; (2820 <noise+0x28>)
    27fe:	6818      	ldr	r0, [r3, #0]
    2800:	f7fd fdd0 	bl	3a4 <srand>
    2804:	4d07      	ldr	r5, [pc, #28]	; (2824 <noise+0x2c>)
    2806:	1e6c      	subs	r4, r5, #1
    2808:	350f      	adds	r5, #15
    for (i=0;i<16;i++) sound_buffer[i]=rand()&0xff;
    280a:	f7fd fdd1 	bl	3b0 <rand>
    280e:	f804 0f01 	strb.w	r0, [r4, #1]!
    2812:	42ac      	cmp	r4, r5
    2814:	d1f9      	bne.n	280a <noise+0x12>
    sound_sampler(length);
    2816:	b2b0      	uxth	r0, r6
    2818:	f7ff ffa2 	bl	2760 <sound_sampler>
    281c:	bd70      	pop	{r4, r5, r6, pc}
    281e:	bf00      	nop
    2820:	20004e84 	.word	0x20004e84
    2824:	200006d4 	.word	0x200006d4

00002828 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    2828:	4668      	mov	r0, sp
    282a:	f020 0107 	bic.w	r1, r0, #7
    282e:	468d      	mov	sp, r1
    2830:	b401      	push	{r0}
    uint8_t byte,mask;
    byte=bit_pos/8;
    2832:	4810      	ldr	r0, [pc, #64]	; (2874 <sound_handler+0x4c>)
    2834:	7c03      	ldrb	r3, [r0, #16]
    mask=1<<(7-bit_pos%8);
    2836:	43da      	mvns	r2, r3
    2838:	f002 0107 	and.w	r1, r2, #7
    283c:	2201      	movs	r2, #1
    283e:	408a      	lsls	r2, r1
    if (sound_buffer[byte]&mask){
    2840:	08d9      	lsrs	r1, r3, #3
    2842:	5c41      	ldrb	r1, [r0, r1]
    2844:	420a      	tst	r2, r1
        PORTB->ODR|=BIT10;
    2846:	490c      	ldr	r1, [pc, #48]	; (2878 <sound_handler+0x50>)
    2848:	68ca      	ldr	r2, [r1, #12]
    284a:	bf14      	ite	ne
    284c:	f442 6280 	orrne.w	r2, r2, #1024	; 0x400
    }else{
        PORTB->ODR&=~BIT10;
    2850:	f422 6280 	biceq.w	r2, r2, #1024	; 0x400
    2854:	60ca      	str	r2, [r1, #12]
    }
    bit_pos++;
    2856:	3301      	adds	r3, #1
    bit_pos%=SOUND_BUFFER_SIZE;
    2858:	f003 030f 	and.w	r3, r3, #15
    285c:	4a05      	ldr	r2, [pc, #20]	; (2874 <sound_handler+0x4c>)
    285e:	7413      	strb	r3, [r2, #16]
    TMR2->SR&=~TMR_SR_UIF;
    2860:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2864:	6913      	ldr	r3, [r2, #16]
    2866:	f023 0301 	bic.w	r3, r3, #1
    286a:	6113      	str	r3, [r2, #16]
}
    286c:	bc01      	pop	{r0}
    286e:	4685      	mov	sp, r0
    2870:	4770      	bx	lr
    2872:	bf00      	nop
    2874:	200006d4 	.word	0x200006d4
    2878:	40010c00 	.word	0x40010c00

0000287c <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    287c:	6803      	ldr	r3, [r0, #0]
    287e:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2882:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2884:	6803      	ldr	r3, [r0, #0]
    2886:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    288a:	6001      	str	r1, [r0, #0]
    288c:	4770      	bx	lr

0000288e <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    288e:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2890:	4a2f      	ldr	r2, [pc, #188]	; (2950 <spi_config_port+0xc2>)
    2892:	6993      	ldr	r3, [r2, #24]
    2894:	f043 0301 	orr.w	r3, r3, #1
    2898:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    289a:	4b2e      	ldr	r3, [pc, #184]	; (2954 <spi_config_port+0xc6>)
    289c:	4298      	cmp	r0, r3
    289e:	d01a      	beq.n	28d6 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    28a0:	4a2b      	ldr	r2, [pc, #172]	; (2950 <spi_config_port+0xc2>)
    28a2:	6993      	ldr	r3, [r2, #24]
    28a4:	f043 0308 	orr.w	r3, r3, #8
    28a8:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    28aa:	4c2b      	ldr	r4, [pc, #172]	; (2958 <spi_config_port+0xca>)
    28ac:	2203      	movs	r2, #3
    28ae:	2102      	movs	r1, #2
    28b0:	4620      	mov	r0, r4
    28b2:	f7fe fd77 	bl	13a4 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    28b6:	220b      	movs	r2, #11
    28b8:	210d      	movs	r1, #13
    28ba:	4620      	mov	r0, r4
    28bc:	f7fe fd72 	bl	13a4 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    28c0:	2204      	movs	r2, #4
    28c2:	210e      	movs	r1, #14
    28c4:	4620      	mov	r0, r4
    28c6:	f7fe fd6d 	bl	13a4 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    28ca:	220b      	movs	r2, #11
    28cc:	210f      	movs	r1, #15
    28ce:	4620      	mov	r0, r4
    28d0:	f7fe fd68 	bl	13a4 <config_pin>
    28d4:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    28d6:	b9c9      	cbnz	r1, 290c <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    28d8:	6993      	ldr	r3, [r2, #24]
    28da:	f043 0304 	orr.w	r3, r3, #4
    28de:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    28e0:	4c1e      	ldr	r4, [pc, #120]	; (295c <spi_config_port+0xce>)
    28e2:	2203      	movs	r2, #3
    28e4:	2104      	movs	r1, #4
    28e6:	4620      	mov	r0, r4
    28e8:	f7fe fd5c 	bl	13a4 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    28ec:	220b      	movs	r2, #11
    28ee:	2105      	movs	r1, #5
    28f0:	4620      	mov	r0, r4
    28f2:	f7fe fd57 	bl	13a4 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    28f6:	2204      	movs	r2, #4
    28f8:	2106      	movs	r1, #6
    28fa:	4620      	mov	r0, r4
    28fc:	f7fe fd52 	bl	13a4 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2900:	220b      	movs	r2, #11
    2902:	2107      	movs	r1, #7
    2904:	4620      	mov	r0, r4
    2906:	f7fe fd4d 	bl	13a4 <config_pin>
    290a:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    290c:	4a10      	ldr	r2, [pc, #64]	; (2950 <spi_config_port+0xc2>)
    290e:	6993      	ldr	r3, [r2, #24]
    2910:	f043 030d 	orr.w	r3, r3, #13
    2914:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2916:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    291a:	6853      	ldr	r3, [r2, #4]
    291c:	f043 0301 	orr.w	r3, r3, #1
    2920:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2922:	2203      	movs	r2, #3
    2924:	210f      	movs	r1, #15
    2926:	480d      	ldr	r0, [pc, #52]	; (295c <spi_config_port+0xce>)
    2928:	f7fe fd3c 	bl	13a4 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    292c:	4c0a      	ldr	r4, [pc, #40]	; (2958 <spi_config_port+0xca>)
    292e:	220b      	movs	r2, #11
    2930:	2103      	movs	r1, #3
    2932:	4620      	mov	r0, r4
    2934:	f7fe fd36 	bl	13a4 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2938:	2204      	movs	r2, #4
    293a:	4611      	mov	r1, r2
    293c:	4620      	mov	r0, r4
    293e:	f7fe fd31 	bl	13a4 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2942:	220b      	movs	r2, #11
    2944:	2105      	movs	r1, #5
    2946:	4620      	mov	r0, r4
    2948:	f7fe fd2c 	bl	13a4 <config_pin>
    294c:	bd10      	pop	{r4, pc}
    294e:	bf00      	nop
    2950:	40021000 	.word	0x40021000
    2954:	40013000 	.word	0x40013000
    2958:	40010c00 	.word	0x40010c00
    295c:	40010800 	.word	0x40010800

00002960 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2960:	b570      	push	{r4, r5, r6, lr}
    2962:	4604      	mov	r4, r0
    2964:	460d      	mov	r5, r1
    2966:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2968:	4619      	mov	r1, r3
    296a:	f7ff ff90 	bl	288e <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    296e:	4b0c      	ldr	r3, [pc, #48]	; (29a0 <spi_init+0x40>)
    2970:	429c      	cmp	r4, r3
    2972:	d00e      	beq.n	2992 <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2974:	4a0b      	ldr	r2, [pc, #44]	; (29a4 <spi_init+0x44>)
    2976:	69d3      	ldr	r3, [r2, #28]
    2978:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    297c:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    297e:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2980:	4629      	mov	r1, r5
    2982:	4620      	mov	r0, r4
    2984:	f7ff ff7a 	bl	287c <spi_baudrate>
	_spi_enable(channel);
    2988:	6823      	ldr	r3, [r4, #0]
    298a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    298e:	6023      	str	r3, [r4, #0]
    2990:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2992:	4a04      	ldr	r2, [pc, #16]	; (29a4 <spi_init+0x44>)
    2994:	6993      	ldr	r3, [r2, #24]
    2996:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    299a:	6193      	str	r3, [r2, #24]
    299c:	e7ef      	b.n	297e <spi_init+0x1e>
    299e:	bf00      	nop
    29a0:	40013000 	.word	0x40013000
    29a4:	40021000 	.word	0x40021000

000029a8 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    29a8:	6883      	ldr	r3, [r0, #8]
    29aa:	f013 0f02 	tst.w	r3, #2
    29ae:	d0fb      	beq.n	29a8 <spi_send>
	channel->DR=b;
    29b0:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    29b2:	6883      	ldr	r3, [r0, #8]
    29b4:	f013 0f01 	tst.w	r3, #1
    29b8:	d0fb      	beq.n	29b2 <spi_send+0xa>
	return (uint8_t)channel->DR;
    29ba:	68c0      	ldr	r0, [r0, #12]
}
    29bc:	b2c0      	uxtb	r0, r0
    29be:	4770      	bx	lr

000029c0 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    29c0:	6883      	ldr	r3, [r0, #8]
    29c2:	f013 0f02 	tst.w	r3, #2
    29c6:	d0fb      	beq.n	29c0 <spi_receive>
	channel->DR=255;
    29c8:	23ff      	movs	r3, #255	; 0xff
    29ca:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    29cc:	6883      	ldr	r3, [r0, #8]
    29ce:	f013 0f01 	tst.w	r3, #1
    29d2:	d0fb      	beq.n	29cc <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    29d4:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    29d6:	b2c0      	uxtb	r0, r0
    29d8:	4770      	bx	lr

000029da <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    29da:	b14a      	cbz	r2, 29f0 <spi_send_block+0x16>
    29dc:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    29de:	f811 3b01 	ldrb.w	r3, [r1], #1
    29e2:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    29e4:	6883      	ldr	r3, [r0, #8]
    29e6:	f013 0f02 	tst.w	r3, #2
    29ea:	d0fb      	beq.n	29e4 <spi_send_block+0xa>
	while (count){
    29ec:	428a      	cmp	r2, r1
    29ee:	d1f6      	bne.n	29de <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    29f0:	6883      	ldr	r3, [r0, #8]
    29f2:	f013 0f80 	tst.w	r3, #128	; 0x80
    29f6:	d1fb      	bne.n	29f0 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    29f8:	68c3      	ldr	r3, [r0, #12]
    29fa:	4770      	bx	lr

000029fc <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    29fc:	b16a      	cbz	r2, 2a1a <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    29fe:	b410      	push	{r4}
    2a00:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2a02:	2400      	movs	r4, #0
    2a04:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2a06:	6883      	ldr	r3, [r0, #8]
    2a08:	f013 0f01 	tst.w	r3, #1
    2a0c:	d0fb      	beq.n	2a06 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2a0e:	68c3      	ldr	r3, [r0, #12]
    2a10:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2a14:	428a      	cmp	r2, r1
    2a16:	d1f5      	bne.n	2a04 <spi_receive_block+0x8>
		count--;
	}
}
    2a18:	bc10      	pop	{r4}
    2a1a:	4770      	bx	lr

00002a1c <reset_mcu>:
	_reset_mcu();
    2a1c:	4a01      	ldr	r2, [pc, #4]	; (2a24 <reset_mcu+0x8>)
    2a1e:	4b02      	ldr	r3, [pc, #8]	; (2a28 <reset_mcu+0xc>)
    2a20:	601a      	str	r2, [r3, #0]
    2a22:	bf00      	nop
    2a24:	05fa0004 	.word	0x05fa0004
    2a28:	e000ed0c 	.word	0xe000ed0c

00002a2c <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2a2c:	b508      	push	{r3, lr}
    2a2e:	460c      	mov	r4, r1
	print(msg);
    2a30:	f000 f94c 	bl	2ccc <print>
	print("\nat address ");
    2a34:	4813      	ldr	r0, [pc, #76]	; (2a84 <print_fault+0x58>)
    2a36:	f000 f949 	bl	2ccc <print>
	if (adr) {
    2a3a:	b9ec      	cbnz	r4, 2a78 <print_fault+0x4c>
	put_char(CR);
    2a3c:	200d      	movs	r0, #13
    2a3e:	f000 f8ad 	bl	2b9c <put_char>
	print("\nUFSR=");
    2a42:	4811      	ldr	r0, [pc, #68]	; (2a88 <print_fault+0x5c>)
    2a44:	f000 f942 	bl	2ccc <print>
	print_int(CFSR->fsr.usageFalt,16);
    2a48:	4c10      	ldr	r4, [pc, #64]	; (2a8c <print_fault+0x60>)
    2a4a:	6820      	ldr	r0, [r4, #0]
    2a4c:	2110      	movs	r1, #16
    2a4e:	40c8      	lsrs	r0, r1
    2a50:	f000 f957 	bl	2d02 <print_int>
	print("\nBFSR=");
    2a54:	480e      	ldr	r0, [pc, #56]	; (2a90 <print_fault+0x64>)
    2a56:	f000 f939 	bl	2ccc <print>
	print_int(CFSR->fsr.busFault,16);
    2a5a:	6820      	ldr	r0, [r4, #0]
    2a5c:	2110      	movs	r1, #16
    2a5e:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2a62:	f000 f94e 	bl	2d02 <print_int>
	print("\nMMFSR=");
    2a66:	480b      	ldr	r0, [pc, #44]	; (2a94 <print_fault+0x68>)
    2a68:	f000 f930 	bl	2ccc <print>
	print_int(CFSR->fsr.mmFault,16);
    2a6c:	6820      	ldr	r0, [r4, #0]
    2a6e:	2110      	movs	r1, #16
    2a70:	b2c0      	uxtb	r0, r0
    2a72:	f000 f946 	bl	2d02 <print_int>
    2a76:	e7fe      	b.n	2a76 <print_fault+0x4a>
		print_int(adr,16);
    2a78:	2110      	movs	r1, #16
    2a7a:	4620      	mov	r0, r4
    2a7c:	f000 f941 	bl	2d02 <print_int>
    2a80:	e7dc      	b.n	2a3c <print_fault+0x10>
    2a82:	bf00      	nop
    2a84:	00003d50 	.word	0x00003d50
    2a88:	00003d60 	.word	0x00003d60
    2a8c:	e000ed28 	.word	0xe000ed28
    2a90:	00003d68 	.word	0x00003d68
    2a94:	00003d70 	.word	0x00003d70

00002a98 <draw_char>:
		break;	
	}//swtich

}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2a98:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2a9c:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2a9e:	18cb      	adds	r3, r1, r3
    2aa0:	9301      	str	r3, [sp, #4]
    2aa2:	4299      	cmp	r1, r3
    2aa4:	da20      	bge.n	2ae8 <draw_char+0x50>
    2aa6:	4683      	mov	fp, r0
    2aa8:	460e      	mov	r6, r1
    2aaa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2aac:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2ab0:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2ab2:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2af0 <draw_char+0x58>
		byte=*glyph++;
    2ab6:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2aba:	45bb      	cmp	fp, r7
    2abc:	da10      	bge.n	2ae0 <draw_char+0x48>
    2abe:	465c      	mov	r4, fp
    2ac0:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2ac2:	ea18 0f05 	tst.w	r8, r5
    2ac6:	bf14      	ite	ne
    2ac8:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2acc:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2ad0:	4631      	mov	r1, r6
    2ad2:	4620      	mov	r0, r4
    2ad4:	f7fe fcf2 	bl	14bc <gfx_plot>
			mask>>=1;
    2ad8:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2ada:	3401      	adds	r4, #1
    2adc:	42bc      	cmp	r4, r7
    2ade:	d1f0      	bne.n	2ac2 <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2ae0:	3601      	adds	r6, #1
    2ae2:	9b01      	ldr	r3, [sp, #4]
    2ae4:	429e      	cmp	r6, r3
    2ae6:	d1e6      	bne.n	2ab6 <draw_char+0x1e>
		}
	}
}
    2ae8:	b003      	add	sp, #12
    2aea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2aee:	bf00      	nop
    2af0:	2000023c 	.word	0x2000023c

00002af4 <font_color>:
	text_colors[FG]=color&0xf;
    2af4:	f000 000f 	and.w	r0, r0, #15
    2af8:	4b01      	ldr	r3, [pc, #4]	; (2b00 <font_color+0xc>)
    2afa:	7058      	strb	r0, [r3, #1]
    2afc:	4770      	bx	lr
    2afe:	bf00      	nop
    2b00:	2000023c 	.word	0x2000023c

00002b04 <bg_color>:
	text_colors[BG]=color&0xf;
    2b04:	f000 000f 	and.w	r0, r0, #15
    2b08:	4b01      	ldr	r3, [pc, #4]	; (2b10 <bg_color+0xc>)
    2b0a:	7018      	strb	r0, [r3, #0]
    2b0c:	4770      	bx	lr
    2b0e:	bf00      	nop
    2b10:	2000023c 	.word	0x2000023c

00002b14 <select_font>:
	font=font_id;
    2b14:	4b01      	ldr	r3, [pc, #4]	; (2b1c <select_font+0x8>)
    2b16:	7098      	strb	r0, [r3, #2]
    2b18:	4770      	bx	lr
    2b1a:	bf00      	nop
    2b1c:	2000023c 	.word	0x2000023c

00002b20 <new_line>:
void new_line(){
    2b20:	b508      	push	{r3, lr}
	xpos=0;
    2b22:	2200      	movs	r2, #0
    2b24:	4b1b      	ldr	r3, [pc, #108]	; (2b94 <new_line+0x74>)
    2b26:	701a      	strb	r2, [r3, #0]
	vmode_params_t *vparams=get_video_params();	
    2b28:	f000 fc24 	bl	3374 <get_video_params>
	switch (font){
    2b2c:	4b1a      	ldr	r3, [pc, #104]	; (2b98 <new_line+0x78>)
    2b2e:	789b      	ldrb	r3, [r3, #2]
    2b30:	2b01      	cmp	r3, #1
    2b32:	d011      	beq.n	2b58 <new_line+0x38>
    2b34:	b113      	cbz	r3, 2b3c <new_line+0x1c>
    2b36:	2b02      	cmp	r3, #2
    2b38:	d01d      	beq.n	2b76 <new_line+0x56>
    2b3a:	bd08      	pop	{r3, pc}
		if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2b3c:	4b15      	ldr	r3, [pc, #84]	; (2b94 <new_line+0x74>)
    2b3e:	785b      	ldrb	r3, [r3, #1]
    2b40:	1d99      	adds	r1, r3, #6
    2b42:	89c2      	ldrh	r2, [r0, #14]
    2b44:	3a05      	subs	r2, #5
    2b46:	4291      	cmp	r1, r2
    2b48:	dc02      	bgt.n	2b50 <new_line+0x30>
			ypos+=SHEX_HEIGHT;
    2b4a:	4a12      	ldr	r2, [pc, #72]	; (2b94 <new_line+0x74>)
    2b4c:	7051      	strb	r1, [r2, #1]
    2b4e:	bd08      	pop	{r3, pc}
			gfx_scroll_up(SHEX_HEIGHT);
    2b50:	2006      	movs	r0, #6
    2b52:	f7fe fcf9 	bl	1548 <gfx_scroll_up>
    2b56:	bd08      	pop	{r3, pc}
		if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2b58:	4b0e      	ldr	r3, [pc, #56]	; (2b94 <new_line+0x74>)
    2b5a:	785b      	ldrb	r3, [r3, #1]
    2b5c:	f103 010a 	add.w	r1, r3, #10
    2b60:	89c2      	ldrh	r2, [r0, #14]
    2b62:	3a09      	subs	r2, #9
    2b64:	4291      	cmp	r1, r2
    2b66:	dc02      	bgt.n	2b6e <new_line+0x4e>
			ypos+=LHEX_HEIGHT;
    2b68:	4a0a      	ldr	r2, [pc, #40]	; (2b94 <new_line+0x74>)
    2b6a:	7051      	strb	r1, [r2, #1]
    2b6c:	bd08      	pop	{r3, pc}
			gfx_scroll_up(LHEX_HEIGHT);
    2b6e:	200a      	movs	r0, #10
    2b70:	f7fe fcea 	bl	1548 <gfx_scroll_up>
    2b74:	bd08      	pop	{r3, pc}
		if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2b76:	4b07      	ldr	r3, [pc, #28]	; (2b94 <new_line+0x74>)
    2b78:	785a      	ldrb	r2, [r3, #1]
    2b7a:	f102 0108 	add.w	r1, r2, #8
    2b7e:	89c3      	ldrh	r3, [r0, #14]
    2b80:	3b07      	subs	r3, #7
    2b82:	4299      	cmp	r1, r3
    2b84:	dc02      	bgt.n	2b8c <new_line+0x6c>
			ypos+=CHAR_HEIGHT;
    2b86:	4b03      	ldr	r3, [pc, #12]	; (2b94 <new_line+0x74>)
    2b88:	7059      	strb	r1, [r3, #1]
    2b8a:	bd08      	pop	{r3, pc}
			gfx_scroll_up(CHAR_HEIGHT);
    2b8c:	2008      	movs	r0, #8
    2b8e:	f7fe fcdb 	bl	1548 <gfx_scroll_up>
    2b92:	bd08      	pop	{r3, pc}
    2b94:	200006e5 	.word	0x200006e5
    2b98:	2000023c 	.word	0x2000023c

00002b9c <put_char>:

void put_char(uint8_t c){
    2b9c:	b530      	push	{r4, r5, lr}
    2b9e:	b083      	sub	sp, #12
	switch(font){
    2ba0:	4b2b      	ldr	r3, [pc, #172]	; (2c50 <put_char+0xb4>)
    2ba2:	789b      	ldrb	r3, [r3, #2]
    2ba4:	2b01      	cmp	r3, #1
    2ba6:	d01d      	beq.n	2be4 <put_char+0x48>
    2ba8:	b11b      	cbz	r3, 2bb2 <put_char+0x16>
    2baa:	2b02      	cmp	r3, #2
    2bac:	d033      	beq.n	2c16 <put_char+0x7a>
				new_line();
			}
		}
		break;		
	}
}
    2bae:	b003      	add	sp, #12
    2bb0:	bd30      	pop	{r4, r5, pc}
		if (c<16){
    2bb2:	280f      	cmp	r0, #15
    2bb4:	d8fb      	bhi.n	2bae <put_char+0x12>
			draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2bb6:	4c27      	ldr	r4, [pc, #156]	; (2c54 <put_char+0xb8>)
    2bb8:	7861      	ldrb	r1, [r4, #1]
    2bba:	7825      	ldrb	r5, [r4, #0]
    2bbc:	eb00 0340 	add.w	r3, r0, r0, lsl #1
    2bc0:	4a25      	ldr	r2, [pc, #148]	; (2c58 <put_char+0xbc>)
    2bc2:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    2bc6:	9300      	str	r3, [sp, #0]
    2bc8:	2306      	movs	r3, #6
    2bca:	2204      	movs	r2, #4
    2bcc:	4628      	mov	r0, r5
    2bce:	f7ff ff63 	bl	2a98 <draw_char>
			xpos+=SHEX_WIDTH;
    2bd2:	7823      	ldrb	r3, [r4, #0]
    2bd4:	3304      	adds	r3, #4
    2bd6:	b2db      	uxtb	r3, r3
    2bd8:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-SHEX_WIDTH+1)){
    2bda:	2bb1      	cmp	r3, #177	; 0xb1
    2bdc:	d9e7      	bls.n	2bae <put_char+0x12>
				new_line();
    2bde:	f7ff ff9f 	bl	2b20 <new_line>
    2be2:	e7e4      	b.n	2bae <put_char+0x12>
		if (c<16){
    2be4:	280f      	cmp	r0, #15
    2be6:	d8e2      	bhi.n	2bae <put_char+0x12>
			draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2be8:	4c1a      	ldr	r4, [pc, #104]	; (2c54 <put_char+0xb8>)
    2bea:	7861      	ldrb	r1, [r4, #1]
    2bec:	7825      	ldrb	r5, [r4, #0]
    2bee:	eb00 0380 	add.w	r3, r0, r0, lsl #2
    2bf2:	4a1a      	ldr	r2, [pc, #104]	; (2c5c <put_char+0xc0>)
    2bf4:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    2bf8:	9300      	str	r3, [sp, #0]
    2bfa:	230a      	movs	r3, #10
    2bfc:	2208      	movs	r2, #8
    2bfe:	4628      	mov	r0, r5
    2c00:	f7ff ff4a 	bl	2a98 <draw_char>
			xpos+=LHEX_WIDTH;
    2c04:	7823      	ldrb	r3, [r4, #0]
    2c06:	3308      	adds	r3, #8
    2c08:	b2db      	uxtb	r3, r3
    2c0a:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-LHEX_WIDTH+1)){
    2c0c:	2bad      	cmp	r3, #173	; 0xad
    2c0e:	d9ce      	bls.n	2bae <put_char+0x12>
				new_line();
    2c10:	f7ff ff86 	bl	2b20 <new_line>
    2c14:	e7cb      	b.n	2bae <put_char+0x12>
		if ((c>31) && (c<(FONT_SIZE+32))){
    2c16:	f1a0 0320 	sub.w	r3, r0, #32
    2c1a:	b2db      	uxtb	r3, r3
    2c1c:	2b64      	cmp	r3, #100	; 0x64
    2c1e:	d8c6      	bhi.n	2bae <put_char+0x12>
			draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2c20:	4c0c      	ldr	r4, [pc, #48]	; (2c54 <put_char+0xb8>)
    2c22:	7861      	ldrb	r1, [r4, #1]
    2c24:	7825      	ldrb	r5, [r4, #0]
    2c26:	f1a0 0320 	sub.w	r3, r0, #32
    2c2a:	4a0d      	ldr	r2, [pc, #52]	; (2c60 <put_char+0xc4>)
    2c2c:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
    2c30:	9300      	str	r3, [sp, #0]
    2c32:	2308      	movs	r3, #8
    2c34:	2206      	movs	r2, #6
    2c36:	4628      	mov	r0, r5
    2c38:	f7ff ff2e 	bl	2a98 <draw_char>
			xpos+=CHAR_WIDTH;
    2c3c:	7823      	ldrb	r3, [r4, #0]
    2c3e:	3306      	adds	r3, #6
    2c40:	b2db      	uxtb	r3, r3
    2c42:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-CHAR_WIDTH+1)){
    2c44:	2baf      	cmp	r3, #175	; 0xaf
    2c46:	d9b2      	bls.n	2bae <put_char+0x12>
				new_line();
    2c48:	f7ff ff6a 	bl	2b20 <new_line>
}
    2c4c:	e7af      	b.n	2bae <put_char+0x12>
    2c4e:	bf00      	nop
    2c50:	2000023c 	.word	0x2000023c
    2c54:	200006e5 	.word	0x200006e5
    2c58:	00003a64 	.word	0x00003a64
    2c5c:	000039c4 	.word	0x000039c4
    2c60:	0000369c 	.word	0x0000369c

00002c64 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2c64:	4b01      	ldr	r3, [pc, #4]	; (2c6c <set_cursor+0x8>)
    2c66:	7018      	strb	r0, [r3, #0]
	ypos=y;
    2c68:	7059      	strb	r1, [r3, #1]
    2c6a:	4770      	bx	lr
    2c6c:	200006e5 	.word	0x200006e5

00002c70 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2c70:	4b03      	ldr	r3, [pc, #12]	; (2c80 <get_cursor+0x10>)
    2c72:	781a      	ldrb	r2, [r3, #0]
    2c74:	7858      	ldrb	r0, [r3, #1]
    2c76:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2c7a:	b280      	uxth	r0, r0
    2c7c:	4770      	bx	lr
    2c7e:	bf00      	nop
    2c80:	200006e5 	.word	0x200006e5

00002c84 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2c84:	4b0f      	ldr	r3, [pc, #60]	; (2cc4 <cursor_left+0x40>)
    2c86:	789b      	ldrb	r3, [r3, #2]
    2c88:	2b01      	cmp	r3, #1
    2c8a:	d00b      	beq.n	2ca4 <cursor_left+0x20>
    2c8c:	b113      	cbz	r3, 2c94 <cursor_left+0x10>
    2c8e:	2b02      	cmp	r3, #2
    2c90:	d010      	beq.n	2cb4 <cursor_left+0x30>
    2c92:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2c94:	4b0c      	ldr	r3, [pc, #48]	; (2cc8 <cursor_left+0x44>)
    2c96:	781b      	ldrb	r3, [r3, #0]
    2c98:	2b04      	cmp	r3, #4
    2c9a:	d412      	bmi.n	2cc2 <cursor_left+0x3e>
    2c9c:	3b04      	subs	r3, #4
    2c9e:	4a0a      	ldr	r2, [pc, #40]	; (2cc8 <cursor_left+0x44>)
    2ca0:	7013      	strb	r3, [r2, #0]
    2ca2:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2ca4:	4b08      	ldr	r3, [pc, #32]	; (2cc8 <cursor_left+0x44>)
    2ca6:	781b      	ldrb	r3, [r3, #0]
    2ca8:	2b08      	cmp	r3, #8
    2caa:	d40a      	bmi.n	2cc2 <cursor_left+0x3e>
    2cac:	3b08      	subs	r3, #8
    2cae:	4a06      	ldr	r2, [pc, #24]	; (2cc8 <cursor_left+0x44>)
    2cb0:	7013      	strb	r3, [r2, #0]
    2cb2:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2cb4:	4b04      	ldr	r3, [pc, #16]	; (2cc8 <cursor_left+0x44>)
    2cb6:	781b      	ldrb	r3, [r3, #0]
    2cb8:	2b06      	cmp	r3, #6
    2cba:	d402      	bmi.n	2cc2 <cursor_left+0x3e>
    2cbc:	3b06      	subs	r3, #6
    2cbe:	4a02      	ldr	r2, [pc, #8]	; (2cc8 <cursor_left+0x44>)
    2cc0:	7013      	strb	r3, [r2, #0]
    2cc2:	4770      	bx	lr
    2cc4:	2000023c 	.word	0x2000023c
    2cc8:	200006e5 	.word	0x200006e5

00002ccc <print>:
void print(const char* str){
    2ccc:	b510      	push	{r4, lr}
    2cce:	4604      	mov	r4, r0
    while ((c=*str++)){
    2cd0:	e001      	b.n	2cd6 <print+0xa>
            new_line();
    2cd2:	f7ff ff25 	bl	2b20 <new_line>
    while ((c=*str++)){
    2cd6:	f814 0b01 	ldrb.w	r0, [r4], #1
    2cda:	b158      	cbz	r0, 2cf4 <print+0x28>
        switch(c){
    2cdc:	280a      	cmp	r0, #10
    2cde:	d0f8      	beq.n	2cd2 <print+0x6>
    2ce0:	280d      	cmp	r0, #13
    2ce2:	d0f6      	beq.n	2cd2 <print+0x6>
    2ce4:	2808      	cmp	r0, #8
    2ce6:	d002      	beq.n	2cee <print+0x22>
            put_char(c);
    2ce8:	f7ff ff58 	bl	2b9c <put_char>
    2cec:	e7f3      	b.n	2cd6 <print+0xa>
            cursor_left();    
    2cee:	f7ff ffc9 	bl	2c84 <cursor_left>
            break;
    2cf2:	e7f0      	b.n	2cd6 <print+0xa>
}
    2cf4:	bd10      	pop	{r4, pc}

00002cf6 <println>:
void println(const char *text){
    2cf6:	b508      	push	{r3, lr}
	print(text);
    2cf8:	f7ff ffe8 	bl	2ccc <print>
	new_line();
    2cfc:	f7ff ff10 	bl	2b20 <new_line>
    2d00:	bd08      	pop	{r3, pc}

00002d02 <print_int>:
void print_int(int i,uint8_t base){
    2d02:	b530      	push	{r4, r5, lr}
    2d04:	b085      	sub	sp, #20
    fmt[15]=0;
    2d06:	2300      	movs	r3, #0
    2d08:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2d0c:	2320      	movs	r3, #32
    2d0e:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2d12:	1e02      	subs	r2, r0, #0
        i=-i;
    2d14:	bfba      	itte	lt
    2d16:	4252      	neglt	r2, r2
        sign=1;
    2d18:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2d1a:	2500      	movge	r5, #0
    while (idx>1 && i){
    2d1c:	b1aa      	cbz	r2, 2d4a <print_int+0x48>
    2d1e:	f10d 040e 	add.w	r4, sp, #14
    2d22:	200e      	movs	r0, #14
        d=i%base;
    2d24:	fb92 f3f1 	sdiv	r3, r2, r1
    2d28:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2d2c:	2b09      	cmp	r3, #9
    2d2e:	bfc8      	it	gt
    2d30:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2d32:	3801      	subs	r0, #1
    2d34:	3330      	adds	r3, #48	; 0x30
    2d36:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2d3a:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2d3e:	2801      	cmp	r0, #1
    2d40:	d007      	beq.n	2d52 <print_int+0x50>
    2d42:	2a00      	cmp	r2, #0
    2d44:	d1ee      	bne.n	2d24 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2d46:	280e      	cmp	r0, #14
    2d48:	d103      	bne.n	2d52 <print_int+0x50>
    2d4a:	2330      	movs	r3, #48	; 0x30
    2d4c:	f88d 300d 	strb.w	r3, [sp, #13]
    2d50:	200d      	movs	r0, #13
    if (base==10 && sign){
    2d52:	290a      	cmp	r1, #10
    2d54:	d006      	beq.n	2d64 <print_int+0x62>
    }else if (base==16){
    2d56:	2910      	cmp	r1, #16
    2d58:	d00d      	beq.n	2d76 <print_int+0x74>
    print(&fmt[idx]);
    2d5a:	4468      	add	r0, sp
    2d5c:	f7ff ffb6 	bl	2ccc <print>
}
    2d60:	b005      	add	sp, #20
    2d62:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2d64:	2d00      	cmp	r5, #0
    2d66:	d0f8      	beq.n	2d5a <print_int+0x58>
        fmt[--idx]='-';
    2d68:	3801      	subs	r0, #1
    2d6a:	ab04      	add	r3, sp, #16
    2d6c:	4403      	add	r3, r0
    2d6e:	222d      	movs	r2, #45	; 0x2d
    2d70:	f803 2c10 	strb.w	r2, [r3, #-16]
    2d74:	e7f1      	b.n	2d5a <print_int+0x58>
        fmt[--idx]='$';
    2d76:	3801      	subs	r0, #1
    2d78:	ab04      	add	r3, sp, #16
    2d7a:	4403      	add	r3, r0
    2d7c:	2224      	movs	r2, #36	; 0x24
    2d7e:	f803 2c10 	strb.w	r2, [r3, #-16]
    2d82:	e7ea      	b.n	2d5a <print_int+0x58>

00002d84 <text_scroller>:
		break;	
	}
}

void text_scroller(const uint8_t *text, uint8_t speed){
    2d84:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2d88:	4604      	mov	r4, r0
    2d8a:	4688      	mov	r8, r1
	uint8_t c,j;

	gfx_cls();
    2d8c:	f7fe fbc0 	bl	1510 <gfx_cls>
	font=font_id;
    2d90:	2202      	movs	r2, #2
    2d92:	4b27      	ldr	r3, [pc, #156]	; (2e30 <text_scroller+0xac>)
    2d94:	709a      	strb	r2, [r3, #2]
	select_font(FONT_ASCII);
	c=*text++;
    2d96:	1c65      	adds	r5, r4, #1
    2d98:	7824      	ldrb	r4, [r4, #0]
	while (c){
    2d9a:	b374      	cbz	r4, 2dfa <text_scroller+0x76>
	xpos=x;
    2d9c:	4f25      	ldr	r7, [pc, #148]	; (2e34 <text_scroller+0xb0>)
    2d9e:	f04f 0900 	mov.w	r9, #0
	ypos=y;
    2da2:	2620      	movs	r6, #32
	xpos=x;
    2da4:	f887 9000 	strb.w	r9, [r7]
	ypos=y;
    2da8:	707e      	strb	r6, [r7, #1]
		set_cursor(0,4*CHAR_HEIGHT);
		while (c && c!='\n'){
    2daa:	b16c      	cbz	r4, 2dc8 <text_scroller+0x44>
    2dac:	2c0a      	cmp	r4, #10
    2dae:	d00b      	beq.n	2dc8 <text_scroller+0x44>
			put_char(c);
    2db0:	4620      	mov	r0, r4
    2db2:	f7ff fef3 	bl	2b9c <put_char>
			c=*text++;
    2db6:	f815 4b01 	ldrb.w	r4, [r5], #1
			if (btn_query_down(KEY_B)) {goto break_out;}
    2dba:	4630      	mov	r0, r6
    2dbc:	f7fe f912 	bl	fe4 <btn_query_down>
    2dc0:	bb70      	cbnz	r0, 2e20 <text_scroller+0x9c>
		while (c && c!='\n'){
    2dc2:	b10c      	cbz	r4, 2dc8 <text_scroller+0x44>
    2dc4:	2c0a      	cmp	r4, #10
    2dc6:	d1f3      	bne.n	2db0 <text_scroller+0x2c>
		for (j=0;j<CHAR_HEIGHT;j++){
			game_pause(speed);
			gfx_scroll_up(1);
			if (btn_query_down(KEY_B)) {goto break_out;}
		}
		c=*text++;
    2dc8:	f04f 0b08 	mov.w	fp, #8
			game_pause(speed);
    2dcc:	fa1f fa88 	uxth.w	sl, r8
			gfx_scroll_up(1);
    2dd0:	2401      	movs	r4, #1
			game_pause(speed);
    2dd2:	4650      	mov	r0, sl
    2dd4:	f000 fad8 	bl	3388 <game_pause>
			gfx_scroll_up(1);
    2dd8:	4620      	mov	r0, r4
    2dda:	f7fe fbb5 	bl	1548 <gfx_scroll_up>
			if (btn_query_down(KEY_B)) {goto break_out;}
    2dde:	4630      	mov	r0, r6
    2de0:	f7fe f900 	bl	fe4 <btn_query_down>
    2de4:	b9e0      	cbnz	r0, 2e20 <text_scroller+0x9c>
    2de6:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
		for (j=0;j<CHAR_HEIGHT;j++){
    2dea:	f013 0bff 	ands.w	fp, r3, #255	; 0xff
    2dee:	d1f0      	bne.n	2dd2 <text_scroller+0x4e>
		c=*text++;
    2df0:	1c6b      	adds	r3, r5, #1
    2df2:	782c      	ldrb	r4, [r5, #0]
	while (c){
    2df4:	b10c      	cbz	r4, 2dfa <text_scroller+0x76>
		c=*text++;
    2df6:	461d      	mov	r5, r3
    2df8:	e7d4      	b.n	2da4 <text_scroller+0x20>
    2dfa:	2420      	movs	r4, #32
	}//while
	for (c=0;c<4*CHAR_HEIGHT;c++){
		game_pause(speed);
    2dfc:	fa1f f888 	uxth.w	r8, r8
		gfx_scroll_up(1);
    2e00:	2601      	movs	r6, #1
		if (btn_query_down(KEY_B)) { break;}
    2e02:	4625      	mov	r5, r4
		game_pause(speed);
    2e04:	4640      	mov	r0, r8
    2e06:	f000 fabf 	bl	3388 <game_pause>
		gfx_scroll_up(1);
    2e0a:	4630      	mov	r0, r6
    2e0c:	f7fe fb9c 	bl	1548 <gfx_scroll_up>
		if (btn_query_down(KEY_B)) { break;}
    2e10:	4628      	mov	r0, r5
    2e12:	f7fe f8e7 	bl	fe4 <btn_query_down>
    2e16:	b918      	cbnz	r0, 2e20 <text_scroller+0x9c>
    2e18:	1e63      	subs	r3, r4, #1
	for (c=0;c<4*CHAR_HEIGHT;c++){
    2e1a:	f013 04ff 	ands.w	r4, r3, #255	; 0xff
    2e1e:	d1f1      	bne.n	2e04 <text_scroller+0x80>
	}//for
break_out:	
	gfx_cls();
    2e20:	f7fe fb76 	bl	1510 <gfx_cls>
	btn_wait_up(KEY_B); 
    2e24:	2020      	movs	r0, #32
    2e26:	f7fe f8fd 	bl	1024 <btn_wait_up>
    2e2a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2e2e:	bf00      	nop
    2e30:	2000023c 	.word	0x2000023c
    2e34:	200006e5 	.word	0x200006e5

00002e38 <prompt_btn>:
}

void prompt_btn(){
    2e38:	b508      	push	{r3, lr}
	print("press button");
    2e3a:	4802      	ldr	r0, [pc, #8]	; (2e44 <prompt_btn+0xc>)
    2e3c:	f7ff ff46 	bl	2ccc <print>
    2e40:	bd08      	pop	{r3, pc}
    2e42:	bf00      	nop
    2e44:	00003dbc 	.word	0x00003dbc

00002e48 <clear_screen>:
}

void clear_screen(){
    2e48:	b508      	push	{r3, lr}
	gfx_cls();
    2e4a:	f7fe fb61 	bl	1510 <gfx_cls>
	xpos=0;
    2e4e:	4b02      	ldr	r3, [pc, #8]	; (2e58 <clear_screen+0x10>)
    2e50:	2200      	movs	r2, #0
    2e52:	701a      	strb	r2, [r3, #0]
	ypos=0;
    2e54:	705a      	strb	r2, [r3, #1]
    2e56:	bd08      	pop	{r3, pc}
    2e58:	200006e5 	.word	0x200006e5

00002e5c <show_cursor>:
}

// affiche un curseur texte
void show_cursor(int show){
    2e5c:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2e5e:	2800      	cmp	r0, #0
    2e60:	bf14      	ite	ne
    2e62:	260f      	movne	r6, #15
    2e64:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e66:	4b09      	ldr	r3, [pc, #36]	; (2e8c <show_cursor+0x30>)
    2e68:	781c      	ldrb	r4, [r3, #0]
    2e6a:	1da3      	adds	r3, r4, #6
    2e6c:	429c      	cmp	r4, r3
    2e6e:	da0b      	bge.n	2e88 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2e70:	4d06      	ldr	r5, [pc, #24]	; (2e8c <show_cursor+0x30>)
    2e72:	7869      	ldrb	r1, [r5, #1]
    2e74:	4632      	mov	r2, r6
    2e76:	3107      	adds	r1, #7
    2e78:	4620      	mov	r0, r4
    2e7a:	f7fe fb1f 	bl	14bc <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e7e:	3401      	adds	r4, #1
    2e80:	782b      	ldrb	r3, [r5, #0]
    2e82:	3306      	adds	r3, #6
    2e84:	42a3      	cmp	r3, r4
    2e86:	dcf4      	bgt.n	2e72 <show_cursor+0x16>
    2e88:	bd70      	pop	{r4, r5, r6, pc}
    2e8a:	bf00      	nop
    2e8c:	200006e5 	.word	0x200006e5

00002e90 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2e90:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2e94:	f000 fa6e 	bl	3374 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2e98:	4b0c      	ldr	r3, [pc, #48]	; (2ecc <clear_line+0x3c>)
    2e9a:	785c      	ldrb	r4, [r3, #1]
    2e9c:	f104 0308 	add.w	r3, r4, #8
    2ea0:	429c      	cmp	r4, r3
    2ea2:	da10      	bge.n	2ec6 <clear_line+0x36>
    2ea4:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2ea6:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2ed0 <clear_line+0x40>
    2eaa:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2eac:	4e07      	ldr	r6, [pc, #28]	; (2ecc <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2eae:	7a28      	ldrb	r0, [r5, #8]
    2eb0:	463a      	mov	r2, r7
    2eb2:	4601      	mov	r1, r0
    2eb4:	fb04 8000 	mla	r0, r4, r0, r8
    2eb8:	f7fe f9cb 	bl	1252 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ebc:	3401      	adds	r4, #1
    2ebe:	7873      	ldrb	r3, [r6, #1]
    2ec0:	3308      	adds	r3, #8
    2ec2:	42a3      	cmp	r3, r4
    2ec4:	dcf3      	bgt.n	2eae <clear_line+0x1e>
    2ec6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2eca:	bf00      	nop
    2ecc:	200006e5 	.word	0x200006e5
    2ed0:	20002720 	.word	0x20002720

00002ed4 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2ed4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2ed8:	4c31      	ldr	r4, [pc, #196]	; (2fa0 <tvout_init+0xcc>)
    2eda:	4b32      	ldr	r3, [pc, #200]	; (2fa4 <tvout_init+0xd0>)
    2edc:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2ede:	4a32      	ldr	r2, [pc, #200]	; (2fa8 <tvout_init+0xd4>)
    2ee0:	4b32      	ldr	r3, [pc, #200]	; (2fac <tvout_init+0xd8>)
    2ee2:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2ee4:	220a      	movs	r2, #10
    2ee6:	2108      	movs	r1, #8
    2ee8:	4620      	mov	r0, r4
    2eea:	f7fe fa5b 	bl	13a4 <config_pin>
    PORTA->ODR=0;
    2eee:	2500      	movs	r5, #0
    2ef0:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2ef2:	4e2f      	ldr	r6, [pc, #188]	; (2fb0 <tvout_init+0xdc>)
    2ef4:	69b3      	ldr	r3, [r6, #24]
    2ef6:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2efa:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2efc:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2f00:	f04f 0878 	mov.w	r8, #120	; 0x78
    2f04:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2f08:	2301      	movs	r3, #1
    2f0a:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2f0c:	2784      	movs	r7, #132	; 0x84
    2f0e:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2f10:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2f14:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2f16:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2f1a:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    2f1c:	f240 1365 	movw	r3, #357	; 0x165
    2f20:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2f22:	6963      	ldr	r3, [r4, #20]
    2f24:	f043 0301 	orr.w	r3, r3, #1
    2f28:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2f2a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2f2e:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2f30:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2f32:	68e3      	ldr	r3, [r4, #12]
    2f34:	f043 0301 	orr.w	r3, r3, #1
    2f38:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2f3a:	4629      	mov	r1, r5
    2f3c:	2019      	movs	r0, #25
    2f3e:	f7fe ffed 	bl	1f1c <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2f42:	4629      	mov	r1, r5
    2f44:	201b      	movs	r0, #27
    2f46:	f7fe ffe9 	bl	1f1c <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2f4a:	2019      	movs	r0, #25
    2f4c:	f7fe ff86 	bl	1e5c <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2f50:	201b      	movs	r0, #27
    2f52:	f7fe ff83 	bl	1e5c <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2f56:	6823      	ldr	r3, [r4, #0]
    2f58:	f043 0301 	orr.w	r3, r3, #1
    2f5c:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2f5e:	220a      	movs	r2, #10
    2f60:	4629      	mov	r1, r5
    2f62:	4814      	ldr	r0, [pc, #80]	; (2fb4 <tvout_init+0xe0>)
    2f64:	f7fe fa1e 	bl	13a4 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2f68:	69f3      	ldr	r3, [r6, #28]
    2f6a:	f043 0302 	orr.w	r3, r3, #2
    2f6e:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2f70:	4b11      	ldr	r3, [pc, #68]	; (2fb8 <tvout_init+0xe4>)
    2f72:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2f76:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2f78:	2213      	movs	r2, #19
    2f7a:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2f7c:	220a      	movs	r2, #10
    2f7e:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2f80:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2f82:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2f86:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2f88:	695a      	ldr	r2, [r3, #20]
    2f8a:	f042 0201 	orr.w	r2, r2, #1
    2f8e:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2f90:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2f92:	681a      	ldr	r2, [r3, #0]
    2f94:	f042 0201 	orr.w	r2, r2, #1
    2f98:	601a      	str	r2, [r3, #0]
    2f9a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2f9e:	bf00      	nop
    2fa0:	40010800 	.word	0x40010800
    2fa4:	88883333 	.word	0x88883333
    2fa8:	84484444 	.word	0x84484444
    2fac:	40010804 	.word	0x40010804
    2fb0:	40021000 	.word	0x40021000
    2fb4:	40010c00 	.word	0x40010c00
    2fb8:	40000400 	.word	0x40000400

00002fbc <TV_OUT_handler>:
                              "mov r2,%0\n"\
                              "1: subs r2,#1\n\t"\
                              "bne.n 1b\n\t"\
                              ::"r" (dly):"r2")

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2fbc:	4668      	mov	r0, sp
    2fbe:	f020 0107 	bic.w	r1, r0, #7
    2fc2:	468d      	mov	sp, r1
    2fc4:	b431      	push	{r0, r4, r5}
    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    2fc6:	4a2f      	ldr	r2, [pc, #188]	; (3084 <TV_OUT_handler+0xc8>)
    2fc8:	6a13      	ldr	r3, [r2, #32]
    2fca:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2fce:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    2fd0:	492d      	ldr	r1, [pc, #180]	; (3088 <TV_OUT_handler+0xcc>)
    2fd2:	f240 2209 	movw	r2, #521	; 0x209
    2fd6:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    2fd8:	4293      	cmp	r3, r2
    2fda:	d9fc      	bls.n	2fd6 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    2fdc:	4a29      	ldr	r2, [pc, #164]	; (3084 <TV_OUT_handler+0xc8>)
    2fde:	6a13      	ldr	r3, [r2, #32]
    2fe0:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2fe4:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    2fe6:	4b29      	ldr	r3, [pc, #164]	; (308c <TV_OUT_handler+0xd0>)
    2fe8:	881d      	ldrh	r5, [r3, #0]
    2fea:	b2ad      	uxth	r5, r5
    2fec:	4b28      	ldr	r3, [pc, #160]	; (3090 <TV_OUT_handler+0xd4>)
    2fee:	7818      	ldrb	r0, [r3, #0]
    2ff0:	785a      	ldrb	r2, [r3, #1]
    2ff2:	fb95 f5f2 	sdiv	r5, r5, r2
    2ff6:	4a27      	ldr	r2, [pc, #156]	; (3094 <TV_OUT_handler+0xd8>)
    2ff8:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    2ffc:	8859      	ldrh	r1, [r3, #2]
    2ffe:	4a22      	ldr	r2, [pc, #136]	; (3088 <TV_OUT_handler+0xcc>)
    3000:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3002:	428b      	cmp	r3, r1
    3004:	d3fc      	bcc.n	3000 <TV_OUT_handler+0x44>
    _jitter_cancel();
    3006:	4b24      	ldr	r3, [pc, #144]	; (3098 <TV_OUT_handler+0xdc>)
    3008:	461a      	mov	r2, r3
    300a:	6812      	ldr	r2, [r2, #0]
    300c:	f002 0207 	and.w	r2, r2, #7
    3010:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3014:	4497      	add	pc, r2
    3016:	bf00      	nop
    3018:	bf00      	nop
    301a:	bf00      	nop
    301c:	bf00      	nop
    301e:	bf00      	nop
    3020:	bf00      	nop
    3022:	bf00      	nop
    3024:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    3026:	4a17      	ldr	r2, [pc, #92]	; (3084 <TV_OUT_handler+0xc8>)
    3028:	6a13      	ldr	r3, [r2, #32]
    302a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    302e:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    3030:	b1b0      	cbz	r0, 3060 <TV_OUT_handler+0xa4>
    3032:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3034:	4819      	ldr	r0, [pc, #100]	; (309c <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    3036:	4916      	ldr	r1, [pc, #88]	; (3090 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    3038:	781a      	ldrb	r2, [r3, #0]
    303a:	0912      	lsrs	r2, r2, #4
    303c:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    303e:	790c      	ldrb	r4, [r1, #4]
    3040:	4622      	mov	r2, r4
    3042:	3a01      	subs	r2, #1
    3044:	d1fd      	bne.n	3042 <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    3046:	f813 2b01 	ldrb.w	r2, [r3], #1
    304a:	f002 020f 	and.w	r2, r2, #15
    304e:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    3050:	790c      	ldrb	r4, [r1, #4]
    3052:	4622      	mov	r2, r4
    3054:	3a01      	subs	r2, #1
    3056:	d1fd      	bne.n	3054 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    3058:	1b5c      	subs	r4, r3, r5
    305a:	780a      	ldrb	r2, [r1, #0]
    305c:	4294      	cmp	r4, r2
    305e:	d3eb      	bcc.n	3038 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    3060:	2200      	movs	r2, #0
    3062:	4b0f      	ldr	r3, [pc, #60]	; (30a0 <TV_OUT_handler+0xe4>)
    3064:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    3066:	4a07      	ldr	r2, [pc, #28]	; (3084 <TV_OUT_handler+0xc8>)
    3068:	6a13      	ldr	r3, [r2, #32]
    306a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    306e:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    3070:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    3074:	6913      	ldr	r3, [r2, #16]
    3076:	f023 0304 	bic.w	r3, r3, #4
    307a:	6113      	str	r3, [r2, #16]
}
    307c:	bc31      	pop	{r0, r4, r5}
    307e:	4685      	mov	sp, r0
    3080:	4770      	bx	lr
    3082:	bf00      	nop
    3084:	40000400 	.word	0x40000400
    3088:	40012c00 	.word	0x40012c00
    308c:	200006e8 	.word	0x200006e8
    3090:	20000240 	.word	0x20000240
    3094:	20002720 	.word	0x20002720
    3098:	40012c24 	.word	0x40012c24
    309c:	4001080c 	.word	0x4001080c
    30a0:	40010800 	.word	0x40010800

000030a4 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    30a4:	4668      	mov	r0, sp
    30a6:	f020 0107 	bic.w	r1, r0, #7
    30aa:	468d      	mov	sp, r1
    30ac:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    30ae:	4a8e      	ldr	r2, [pc, #568]	; (32e8 <TV_SYNC_handler+0x244>)
    30b0:	8853      	ldrh	r3, [r2, #2]
    30b2:	3301      	adds	r3, #1
    30b4:	b29b      	uxth	r3, r3
    30b6:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    30b8:	498c      	ldr	r1, [pc, #560]	; (32ec <TV_SYNC_handler+0x248>)
    30ba:	680b      	ldr	r3, [r1, #0]
    30bc:	3301      	adds	r3, #1
    30be:	600b      	str	r3, [r1, #0]
    switch (task){
    30c0:	8893      	ldrh	r3, [r2, #4]
    30c2:	b29b      	uxth	r3, r3
    30c4:	2b09      	cmp	r3, #9
    30c6:	f200 8081 	bhi.w	31cc <TV_SYNC_handler+0x128>
    30ca:	e8df f013 	tbh	[pc, r3, lsl #1]
    30ce:	000a      	.short	0x000a
    30d0:	0048002a 	.word	0x0048002a
    30d4:	00880069 	.word	0x00880069
    30d8:	00a50090 	.word	0x00a50090
    30dc:	00d100b4 	.word	0x00d100b4
    30e0:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    30e2:	4b81      	ldr	r3, [pc, #516]	; (32e8 <TV_SYNC_handler+0x244>)
    30e4:	881b      	ldrh	r3, [r3, #0]
    30e6:	b29b      	uxth	r3, r3
    30e8:	b17b      	cbz	r3, 310a <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    30ea:	4a7f      	ldr	r2, [pc, #508]	; (32e8 <TV_SYNC_handler+0x244>)
    30ec:	8813      	ldrh	r3, [r2, #0]
    30ee:	3301      	adds	r3, #1
    30f0:	b29b      	uxth	r3, r3
    30f2:	8013      	strh	r3, [r2, #0]
    30f4:	8813      	ldrh	r3, [r2, #0]
    30f6:	b29b      	uxth	r3, r3
    30f8:	2b06      	cmp	r3, #6
    30fa:	d167      	bne.n	31cc <TV_SYNC_handler+0x128>
    30fc:	2300      	movs	r3, #0
    30fe:	8013      	strh	r3, [r2, #0]
    3100:	8893      	ldrh	r3, [r2, #4]
    3102:	3301      	adds	r3, #1
    3104:	b29b      	uxth	r3, r3
    3106:	8093      	strh	r3, [r2, #4]
    3108:	e060      	b.n	31cc <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    310a:	4b79      	ldr	r3, [pc, #484]	; (32f0 <TV_SYNC_handler+0x24c>)
    310c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3110:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3112:	22a4      	movs	r2, #164	; 0xa4
    3114:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3116:	4a74      	ldr	r2, [pc, #464]	; (32e8 <TV_SYNC_handler+0x244>)
    3118:	8813      	ldrh	r3, [r2, #0]
    311a:	3301      	adds	r3, #1
    311c:	b29b      	uxth	r3, r3
    311e:	8013      	strh	r3, [r2, #0]
    3120:	e054      	b.n	31cc <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    3122:	4b71      	ldr	r3, [pc, #452]	; (32e8 <TV_SYNC_handler+0x244>)
    3124:	881b      	ldrh	r3, [r3, #0]
    3126:	b29b      	uxth	r3, r3
    3128:	b17b      	cbz	r3, 314a <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    312a:	4a6f      	ldr	r2, [pc, #444]	; (32e8 <TV_SYNC_handler+0x244>)
    312c:	8813      	ldrh	r3, [r2, #0]
    312e:	3301      	adds	r3, #1
    3130:	b29b      	uxth	r3, r3
    3132:	8013      	strh	r3, [r2, #0]
    3134:	8813      	ldrh	r3, [r2, #0]
    3136:	b29b      	uxth	r3, r3
    3138:	2b06      	cmp	r3, #6
    313a:	d147      	bne.n	31cc <TV_SYNC_handler+0x128>
    313c:	2300      	movs	r3, #0
    313e:	8013      	strh	r3, [r2, #0]
    3140:	8893      	ldrh	r3, [r2, #4]
    3142:	3301      	adds	r3, #1
    3144:	b29b      	uxth	r3, r3
    3146:	8093      	strh	r3, [r2, #4]
    3148:	e040      	b.n	31cc <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    314a:	f240 7294 	movw	r2, #1940	; 0x794
    314e:	4b68      	ldr	r3, [pc, #416]	; (32f0 <TV_SYNC_handler+0x24c>)
    3150:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3152:	4a65      	ldr	r2, [pc, #404]	; (32e8 <TV_SYNC_handler+0x244>)
    3154:	8813      	ldrh	r3, [r2, #0]
    3156:	3301      	adds	r3, #1
    3158:	b29b      	uxth	r3, r3
    315a:	8013      	strh	r3, [r2, #0]
    315c:	e036      	b.n	31cc <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    315e:	4b62      	ldr	r3, [pc, #392]	; (32e8 <TV_SYNC_handler+0x244>)
    3160:	881b      	ldrh	r3, [r3, #0]
    3162:	b29b      	uxth	r3, r3
    3164:	b153      	cbz	r3, 317c <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    3166:	4b60      	ldr	r3, [pc, #384]	; (32e8 <TV_SYNC_handler+0x244>)
    3168:	881b      	ldrh	r3, [r3, #0]
    316a:	b29b      	uxth	r3, r3
    316c:	2b06      	cmp	r3, #6
    316e:	d00e      	beq.n	318e <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    3170:	4a5d      	ldr	r2, [pc, #372]	; (32e8 <TV_SYNC_handler+0x244>)
    3172:	8813      	ldrh	r3, [r2, #0]
    3174:	3301      	adds	r3, #1
    3176:	b29b      	uxth	r3, r3
    3178:	8013      	strh	r3, [r2, #0]
            break;
    317a:	e027      	b.n	31cc <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    317c:	22a4      	movs	r2, #164	; 0xa4
    317e:	4b5c      	ldr	r3, [pc, #368]	; (32f0 <TV_SYNC_handler+0x24c>)
    3180:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3182:	4a59      	ldr	r2, [pc, #356]	; (32e8 <TV_SYNC_handler+0x244>)
    3184:	8813      	ldrh	r3, [r2, #0]
    3186:	3301      	adds	r3, #1
    3188:	b29b      	uxth	r3, r3
    318a:	8013      	strh	r3, [r2, #0]
            break;
    318c:	e01e      	b.n	31cc <TV_SYNC_handler+0x128>
            task++;
    318e:	4a56      	ldr	r2, [pc, #344]	; (32e8 <TV_SYNC_handler+0x244>)
    3190:	8893      	ldrh	r3, [r2, #4]
    3192:	3301      	adds	r3, #1
    3194:	b29b      	uxth	r3, r3
    3196:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    3198:	88d3      	ldrh	r3, [r2, #6]
    319a:	f013 0f01 	tst.w	r3, #1
    319e:	d015      	beq.n	31cc <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    31a0:	4b53      	ldr	r3, [pc, #332]	; (32f0 <TV_SYNC_handler+0x24c>)
    31a2:	f241 12c5 	movw	r2, #4549	; 0x11c5
    31a6:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    31a8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    31ac:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    31ae:	4a4e      	ldr	r2, [pc, #312]	; (32e8 <TV_SYNC_handler+0x244>)
    31b0:	88d3      	ldrh	r3, [r2, #6]
    31b2:	f023 0302 	bic.w	r3, r3, #2
    31b6:	041b      	lsls	r3, r3, #16
    31b8:	0c1b      	lsrs	r3, r3, #16
    31ba:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    31bc:	8853      	ldrh	r3, [r2, #2]
    31be:	f3c3 038d 	ubfx	r3, r3, #2, #14
    31c2:	8053      	strh	r3, [r2, #2]
        task++;
    31c4:	8893      	ldrh	r3, [r2, #4]
    31c6:	3301      	adds	r3, #1
    31c8:	b29b      	uxth	r3, r3
    31ca:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    31cc:	4a48      	ldr	r2, [pc, #288]	; (32f0 <TV_SYNC_handler+0x24c>)
    31ce:	6913      	ldr	r3, [r2, #16]
    31d0:	f023 0301 	bic.w	r3, r3, #1
    31d4:	6113      	str	r3, [r2, #16]
}
    31d6:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    31da:	4685      	mov	sp, r0
    31dc:	4770      	bx	lr
        read_gamepad();
    31de:	f7fd fedd 	bl	f9c <read_gamepad>
        task++;
    31e2:	4a41      	ldr	r2, [pc, #260]	; (32e8 <TV_SYNC_handler+0x244>)
    31e4:	8893      	ldrh	r3, [r2, #4]
    31e6:	3301      	adds	r3, #1
    31e8:	b29b      	uxth	r3, r3
    31ea:	8093      	strh	r3, [r2, #4]
        break;    
    31ec:	e7ee      	b.n	31cc <TV_SYNC_handler+0x128>
        if (sound_timer){
    31ee:	4b41      	ldr	r3, [pc, #260]	; (32f4 <TV_SYNC_handler+0x250>)
    31f0:	881b      	ldrh	r3, [r3, #0]
    31f2:	b29b      	uxth	r3, r3
    31f4:	b13b      	cbz	r3, 3206 <TV_SYNC_handler+0x162>
            sound_timer--;
    31f6:	4a3f      	ldr	r2, [pc, #252]	; (32f4 <TV_SYNC_handler+0x250>)
    31f8:	8813      	ldrh	r3, [r2, #0]
    31fa:	3b01      	subs	r3, #1
    31fc:	b29b      	uxth	r3, r3
    31fe:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3200:	8813      	ldrh	r3, [r2, #0]
    3202:	b29b      	uxth	r3, r3
    3204:	b12b      	cbz	r3, 3212 <TV_SYNC_handler+0x16e>
        task++;
    3206:	4a38      	ldr	r2, [pc, #224]	; (32e8 <TV_SYNC_handler+0x244>)
    3208:	8893      	ldrh	r3, [r2, #4]
    320a:	3301      	adds	r3, #1
    320c:	b29b      	uxth	r3, r3
    320e:	8093      	strh	r3, [r2, #4]
        break;    
    3210:	e7dc      	b.n	31cc <TV_SYNC_handler+0x128>
                sound_stop();
    3212:	f7ff fad3 	bl	27bc <sound_stop>
    3216:	e7f6      	b.n	3206 <TV_SYNC_handler+0x162>
        if (game_timer){
    3218:	4b37      	ldr	r3, [pc, #220]	; (32f8 <TV_SYNC_handler+0x254>)
    321a:	881b      	ldrh	r3, [r3, #0]
    321c:	b29b      	uxth	r3, r3
    321e:	b123      	cbz	r3, 322a <TV_SYNC_handler+0x186>
            game_timer--;
    3220:	4a35      	ldr	r2, [pc, #212]	; (32f8 <TV_SYNC_handler+0x254>)
    3222:	8813      	ldrh	r3, [r2, #0]
    3224:	3b01      	subs	r3, #1
    3226:	b29b      	uxth	r3, r3
    3228:	8013      	strh	r3, [r2, #0]
        task++;
    322a:	4a2f      	ldr	r2, [pc, #188]	; (32e8 <TV_SYNC_handler+0x244>)
    322c:	8893      	ldrh	r3, [r2, #4]
    322e:	3301      	adds	r3, #1
    3230:	b29b      	uxth	r3, r3
    3232:	8093      	strh	r3, [r2, #4]
        break;
    3234:	e7ca      	b.n	31cc <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    3236:	4b2c      	ldr	r3, [pc, #176]	; (32e8 <TV_SYNC_handler+0x244>)
    3238:	885b      	ldrh	r3, [r3, #2]
    323a:	b29b      	uxth	r3, r3
    323c:	4a2f      	ldr	r2, [pc, #188]	; (32fc <TV_SYNC_handler+0x258>)
    323e:	88d2      	ldrh	r2, [r2, #6]
    3240:	429a      	cmp	r2, r3
    3242:	d1c3      	bne.n	31cc <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    3244:	4b2a      	ldr	r3, [pc, #168]	; (32f0 <TV_SYNC_handler+0x24c>)
    3246:	691a      	ldr	r2, [r3, #16]
    3248:	f022 0204 	bic.w	r2, r2, #4
    324c:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    324e:	68da      	ldr	r2, [r3, #12]
    3250:	f042 0204 	orr.w	r2, r2, #4
    3254:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    3256:	4b24      	ldr	r3, [pc, #144]	; (32e8 <TV_SYNC_handler+0x244>)
    3258:	88da      	ldrh	r2, [r3, #6]
    325a:	b292      	uxth	r2, r2
    325c:	f042 0204 	orr.w	r2, r2, #4
    3260:	80da      	strh	r2, [r3, #6]
            task++;
    3262:	889a      	ldrh	r2, [r3, #4]
    3264:	3201      	adds	r2, #1
    3266:	b292      	uxth	r2, r2
    3268:	809a      	strh	r2, [r3, #4]
            slice=0;
    326a:	2200      	movs	r2, #0
    326c:	801a      	strh	r2, [r3, #0]
    326e:	e7ad      	b.n	31cc <TV_SYNC_handler+0x128>
        slice++;
    3270:	4a1d      	ldr	r2, [pc, #116]	; (32e8 <TV_SYNC_handler+0x244>)
    3272:	8813      	ldrh	r3, [r2, #0]
    3274:	3301      	adds	r3, #1
    3276:	b29b      	uxth	r3, r3
    3278:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    327a:	8853      	ldrh	r3, [r2, #2]
    327c:	b29b      	uxth	r3, r3
    327e:	4a1f      	ldr	r2, [pc, #124]	; (32fc <TV_SYNC_handler+0x258>)
    3280:	8912      	ldrh	r2, [r2, #8]
    3282:	429a      	cmp	r2, r3
    3284:	d1a2      	bne.n	31cc <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    3286:	4a1a      	ldr	r2, [pc, #104]	; (32f0 <TV_SYNC_handler+0x24c>)
    3288:	68d3      	ldr	r3, [r2, #12]
    328a:	f023 0304 	bic.w	r3, r3, #4
    328e:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    3290:	4a15      	ldr	r2, [pc, #84]	; (32e8 <TV_SYNC_handler+0x244>)
    3292:	88d3      	ldrh	r3, [r2, #6]
    3294:	f023 0304 	bic.w	r3, r3, #4
    3298:	041b      	lsls	r3, r3, #16
    329a:	0c1b      	lsrs	r3, r3, #16
    329c:	80d3      	strh	r3, [r2, #6]
            task++;
    329e:	8893      	ldrh	r3, [r2, #4]
    32a0:	3301      	adds	r3, #1
    32a2:	b29b      	uxth	r3, r3
    32a4:	8093      	strh	r3, [r2, #4]
    32a6:	e791      	b.n	31cc <TV_SYNC_handler+0x128>
        if (scan_line==263){
    32a8:	4b0f      	ldr	r3, [pc, #60]	; (32e8 <TV_SYNC_handler+0x244>)
    32aa:	885b      	ldrh	r3, [r3, #2]
    32ac:	b29b      	uxth	r3, r3
    32ae:	f240 1207 	movw	r2, #263	; 0x107
    32b2:	4293      	cmp	r3, r2
    32b4:	d18a      	bne.n	31cc <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    32b6:	4b0c      	ldr	r3, [pc, #48]	; (32e8 <TV_SYNC_handler+0x244>)
    32b8:	88db      	ldrh	r3, [r3, #6]
    32ba:	f013 0f01 	tst.w	r3, #1
    32be:	d003      	beq.n	32c8 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    32c0:	f640 02e2 	movw	r2, #2274	; 0x8e2
    32c4:	4b0a      	ldr	r3, [pc, #40]	; (32f0 <TV_SYNC_handler+0x24c>)
    32c6:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    32c8:	4b07      	ldr	r3, [pc, #28]	; (32e8 <TV_SYNC_handler+0x244>)
    32ca:	88da      	ldrh	r2, [r3, #6]
    32cc:	b292      	uxth	r2, r2
    32ce:	f082 0201 	eor.w	r2, r2, #1
    32d2:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    32d4:	88da      	ldrh	r2, [r3, #6]
    32d6:	b292      	uxth	r2, r2
    32d8:	f042 0202 	orr.w	r2, r2, #2
    32dc:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    32de:	2200      	movs	r2, #0
    32e0:	805a      	strh	r2, [r3, #2]
            slice=0;
    32e2:	801a      	strh	r2, [r3, #0]
            task=0;
    32e4:	809a      	strh	r2, [r3, #4]
    32e6:	e771      	b.n	31cc <TV_SYNC_handler+0x128>
    32e8:	200006e8 	.word	0x200006e8
    32ec:	20004e84 	.word	0x20004e84
    32f0:	40012c00 	.word	0x40012c00
    32f4:	20004e88 	.word	0x20004e88
    32f8:	20004e80 	.word	0x20004e80
    32fc:	20000240 	.word	0x20000240

00003300 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3300:	4a02      	ldr	r2, [pc, #8]	; (330c <frame_sync+0xc>)
    3302:	88d3      	ldrh	r3, [r2, #6]
    3304:	f013 0f02 	tst.w	r3, #2
    3308:	d0fb      	beq.n	3302 <frame_sync+0x2>
}
    330a:	4770      	bx	lr
    330c:	200006e8 	.word	0x200006e8

00003310 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3310:	4a02      	ldr	r2, [pc, #8]	; (331c <wait_sync_end+0xc>)
    3312:	88d3      	ldrh	r3, [r2, #6]
    3314:	f013 0f02 	tst.w	r3, #2
    3318:	d1fb      	bne.n	3312 <wait_sync_end+0x2>
}
    331a:	4770      	bx	lr
    331c:	200006e8 	.word	0x200006e8

00003320 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3320:	b510      	push	{r4, lr}
    3322:	4604      	mov	r4, r0
    frame_sync();
    3324:	f7ff ffec 	bl	3300 <frame_sync>
    video_mode=mode;
    3328:	4b0e      	ldr	r3, [pc, #56]	; (3364 <set_video_mode+0x44>)
    332a:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=4;else sprite_bpp=1;
    332c:	b1ac      	cbz	r4, 335a <set_video_mode+0x3a>
    332e:	2201      	movs	r2, #1
    3330:	4b0d      	ldr	r3, [pc, #52]	; (3368 <set_video_mode+0x48>)
    3332:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3334:	4b0d      	ldr	r3, [pc, #52]	; (336c <set_video_mode+0x4c>)
    3336:	480e      	ldr	r0, [pc, #56]	; (3370 <set_video_mode+0x50>)
    3338:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    333c:	8842      	ldrh	r2, [r0, #2]
    333e:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3340:	8882      	ldrh	r2, [r0, #4]
    3342:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    3344:	88c2      	ldrh	r2, [r0, #6]
    3346:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    3348:	7a02      	ldrb	r2, [r0, #8]
    334a:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    334c:	7a42      	ldrb	r2, [r0, #9]
    334e:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    3350:	7a82      	ldrb	r2, [r0, #10]
    3352:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    3354:	f7fe f8dc 	bl	1510 <gfx_cls>
    3358:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=4;else sprite_bpp=1;
    335a:	2204      	movs	r2, #4
    335c:	4b02      	ldr	r3, [pc, #8]	; (3368 <set_video_mode+0x48>)
    335e:	701a      	strb	r2, [r3, #0]
    3360:	e7e8      	b.n	3334 <set_video_mode+0x14>
    3362:	bf00      	nop
    3364:	200006e8 	.word	0x200006e8
    3368:	200001e4 	.word	0x200001e4
    336c:	20000240 	.word	0x20000240
    3370:	00003b6c 	.word	0x00003b6c

00003374 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    3374:	4b02      	ldr	r3, [pc, #8]	; (3380 <get_video_params+0xc>)
    3376:	7a18      	ldrb	r0, [r3, #8]
}
    3378:	4b02      	ldr	r3, [pc, #8]	; (3384 <get_video_params+0x10>)
    337a:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    337e:	4770      	bx	lr
    3380:	200006e8 	.word	0x200006e8
    3384:	00003b6c 	.word	0x00003b6c

00003388 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    3388:	4b03      	ldr	r3, [pc, #12]	; (3398 <game_pause+0x10>)
    338a:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    338c:	461a      	mov	r2, r3
    338e:	8813      	ldrh	r3, [r2, #0]
    3390:	b29b      	uxth	r3, r3
    3392:	2b00      	cmp	r3, #0
    3394:	d1fb      	bne.n	338e <game_pause+0x6>
}
    3396:	4770      	bx	lr
    3398:	20004e80 	.word	0x20004e80

0000339c <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    339c:	4b03      	ldr	r3, [pc, #12]	; (33ac <micro_pause+0x10>)
    339e:	681b      	ldr	r3, [r3, #0]
    33a0:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    33a2:	4a02      	ldr	r2, [pc, #8]	; (33ac <micro_pause+0x10>)
    33a4:	6813      	ldr	r3, [r2, #0]
    33a6:	4298      	cmp	r0, r3
    33a8:	d8fc      	bhi.n	33a4 <micro_pause+0x8>
}
    33aa:	4770      	bx	lr
    33ac:	20004e84 	.word	0x20004e84

000033b0 <usart_config_port>:
#define _usart_select(n)  USART##n_
#define _usart_sfr_sel(n,s) USART##n_##s 

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    33b0:	4b3b      	ldr	r3, [pc, #236]	; (34a0 <usart_config_port+0xf0>)
    33b2:	4298      	cmp	r0, r3
    33b4:	d057      	beq.n	3466 <usart_config_port+0xb6>
    33b6:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    33ba:	4298      	cmp	r0, r3
    33bc:	d004      	beq.n	33c8 <usart_config_port+0x18>
    33be:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    33c2:	4298      	cmp	r0, r3
    33c4:	d032      	beq.n	342c <usart_config_port+0x7c>
    33c6:	4770      	bx	lr
	case (uint32_t)USART1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    33c8:	4836      	ldr	r0, [pc, #216]	; (34a4 <usart_config_port+0xf4>)
    33ca:	6983      	ldr	r3, [r0, #24]
    33cc:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    33d0:	f043 0304 	orr.w	r3, r3, #4
    33d4:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    33d6:	2a01      	cmp	r2, #1
    33d8:	d016      	beq.n	3408 <usart_config_port+0x58>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    33da:	4b33      	ldr	r3, [pc, #204]	; (34a8 <usart_config_port+0xf8>)
    33dc:	4299      	cmp	r1, r3
    33de:	d01c      	beq.n	341a <usart_config_port+0x6a>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    33e0:	4a32      	ldr	r2, [pc, #200]	; (34ac <usart_config_port+0xfc>)
    33e2:	6853      	ldr	r3, [r2, #4]
    33e4:	f043 0304 	orr.w	r3, r3, #4
    33e8:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    33ea:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    33ee:	6993      	ldr	r3, [r2, #24]
    33f0:	f043 0308 	orr.w	r3, r3, #8
    33f4:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    33f6:	680b      	ldr	r3, [r1, #0]
    33f8:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    33fc:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    33fe:	680b      	ldr	r3, [r1, #0]
    3400:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    3404:	600b      	str	r3, [r1, #0]
    3406:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    3408:	684b      	ldr	r3, [r1, #4]
    340a:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    340e:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3410:	684b      	ldr	r3, [r1, #4]
    3412:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    3416:	604b      	str	r3, [r1, #4]
    3418:	e7df      	b.n	33da <usart_config_port+0x2a>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    341a:	685a      	ldr	r2, [r3, #4]
    341c:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3420:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    3422:	685a      	ldr	r2, [r3, #4]
    3424:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    3428:	605a      	str	r2, [r3, #4]
    342a:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    342c:	4b1d      	ldr	r3, [pc, #116]	; (34a4 <usart_config_port+0xf4>)
    342e:	69d8      	ldr	r0, [r3, #28]
    3430:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3434:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    3436:	6998      	ldr	r0, [r3, #24]
    3438:	f040 0004 	orr.w	r0, r0, #4
    343c:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    343e:	2a01      	cmp	r2, #1
    3440:	d008      	beq.n	3454 <usart_config_port+0xa4>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    3442:	680b      	ldr	r3, [r1, #0]
    3444:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3448:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    344a:	680b      	ldr	r3, [r1, #0]
    344c:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3450:	600b      	str	r3, [r1, #0]
    3452:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3454:	680b      	ldr	r3, [r1, #0]
    3456:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    345a:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    345c:	680b      	ldr	r3, [r1, #0]
    345e:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    3462:	600b      	str	r3, [r1, #0]
    3464:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    3466:	4b0f      	ldr	r3, [pc, #60]	; (34a4 <usart_config_port+0xf4>)
    3468:	69d8      	ldr	r0, [r3, #28]
    346a:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    346e:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3470:	6998      	ldr	r0, [r3, #24]
    3472:	f040 0008 	orr.w	r0, r0, #8
    3476:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    3478:	2a01      	cmp	r2, #1
    347a:	d008      	beq.n	348e <usart_config_port+0xde>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    347c:	684b      	ldr	r3, [r1, #4]
    347e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3482:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    3484:	684b      	ldr	r3, [r1, #4]
    3486:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    348a:	604b      	str	r3, [r1, #4]
		}
		break;
	}
}
    348c:	e79b      	b.n	33c6 <usart_config_port+0x16>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    348e:	684b      	ldr	r3, [r1, #4]
    3490:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    3494:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    3496:	684b      	ldr	r3, [r1, #4]
    3498:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    349c:	604b      	str	r3, [r1, #4]
    349e:	4770      	bx	lr
    34a0:	40004800 	.word	0x40004800
    34a4:	40021000 	.word	0x40021000
    34a8:	40010800 	.word	0x40010800
    34ac:	40010000 	.word	0x40010000

000034b0 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    34b0:	4b04      	ldr	r3, [pc, #16]	; (34c4 <usart_set_baud+0x14>)
    34b2:	4298      	cmp	r0, r3
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
    34b4:	bf0c      	ite	eq
    34b6:	4b04      	ldreq	r3, [pc, #16]	; (34c8 <usart_set_baud+0x18>)
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    34b8:	4b04      	ldrne	r3, [pc, #16]	; (34cc <usart_set_baud+0x1c>)
    34ba:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channel->BRR=rate;
    34be:	6081      	str	r1, [r0, #8]
    34c0:	4770      	bx	lr
    34c2:	bf00      	nop
    34c4:	40013800 	.word	0x40013800
    34c8:	044463f4 	.word	0x044463f4
    34cc:	022231fa 	.word	0x022231fa

000034d0 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
	channel->CR1&=USART_CR1_DIR_MASK;
    34d0:	68c3      	ldr	r3, [r0, #12]
    34d2:	f023 030c 	bic.w	r3, r3, #12
    34d6:	60c3      	str	r3, [r0, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    34d8:	68c3      	ldr	r3, [r0, #12]
    34da:	ea43 0181 	orr.w	r1, r3, r1, lsl #2
    34de:	60c1      	str	r1, [r0, #12]
    34e0:	4770      	bx	lr

000034e2 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    34e2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    34e6:	4604      	mov	r4, r0
    34e8:	460f      	mov	r7, r1
    34ea:	4615      	mov	r5, r2
    34ec:	4698      	mov	r8, r3
    34ee:	9e07      	ldr	r6, [sp, #28]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    34f0:	4b2e      	ldr	r3, [pc, #184]	; (35ac <usart_open_channel+0xca>)
    34f2:	4298      	cmp	r0, r3
    34f4:	d03e      	beq.n	3574 <usart_open_channel+0x92>
    34f6:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    34fa:	4298      	cmp	r0, r3
    34fc:	d01b      	beq.n	3536 <usart_open_channel+0x54>
    34fe:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    3502:	4298      	cmp	r0, r3
    3504:	d02a      	beq.n	355c <usart_open_channel+0x7a>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    3506:	2e01      	cmp	r6, #1
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3508:	bf04      	itt	eq
    350a:	f44f 7340 	moveq.w	r3, #768	; 0x300
    350e:	6163      	streq	r3, [r4, #20]
	}
	usart_comm_dir(channel,dir);
    3510:	4641      	mov	r1, r8
    3512:	4620      	mov	r0, r4
    3514:	f7ff ffdc 	bl	34d0 <usart_comm_dir>
	switch (parity){
    3518:	2d01      	cmp	r5, #1
    351a:	d03c      	beq.n	3596 <usart_open_channel+0xb4>
    351c:	b3b5      	cbz	r5, 358c <usart_open_channel+0xaa>
    351e:	2d02      	cmp	r5, #2
    3520:	d03e      	beq.n	35a0 <usart_open_channel+0xbe>
		break;
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3522:	4639      	mov	r1, r7
    3524:	4620      	mov	r0, r4
    3526:	f7ff ffc3 	bl	34b0 <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    352a:	68e3      	ldr	r3, [r4, #12]
    352c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3530:	60e3      	str	r3, [r4, #12]
    3532:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    3536:	9b06      	ldr	r3, [sp, #24]
    3538:	b95b      	cbnz	r3, 3552 <usart_open_channel+0x70>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    353a:	4632      	mov	r2, r6
    353c:	491c      	ldr	r1, [pc, #112]	; (35b0 <usart_open_channel+0xce>)
    353e:	f7ff ff37 	bl	33b0 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    3542:	2107      	movs	r1, #7
    3544:	2025      	movs	r0, #37	; 0x25
    3546:	f7fe fce9 	bl	1f1c <set_int_priority>
		enable_interrupt(IRQ_USART1);
    354a:	2025      	movs	r0, #37	; 0x25
    354c:	f7fe fc86 	bl	1e5c <enable_interrupt>
		break;
    3550:	e7d9      	b.n	3506 <usart_open_channel+0x24>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    3552:	4632      	mov	r2, r6
    3554:	4917      	ldr	r1, [pc, #92]	; (35b4 <usart_open_channel+0xd2>)
    3556:	f7ff ff2b 	bl	33b0 <usart_config_port>
    355a:	e7f2      	b.n	3542 <usart_open_channel+0x60>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    355c:	4632      	mov	r2, r6
    355e:	4914      	ldr	r1, [pc, #80]	; (35b0 <usart_open_channel+0xce>)
    3560:	f7ff ff26 	bl	33b0 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    3564:	2107      	movs	r1, #7
    3566:	2026      	movs	r0, #38	; 0x26
    3568:	f7fe fcd8 	bl	1f1c <set_int_priority>
		enable_interrupt(IRQ_USART2);
    356c:	2026      	movs	r0, #38	; 0x26
    356e:	f7fe fc75 	bl	1e5c <enable_interrupt>
		break;
    3572:	e7c8      	b.n	3506 <usart_open_channel+0x24>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    3574:	4632      	mov	r2, r6
    3576:	490f      	ldr	r1, [pc, #60]	; (35b4 <usart_open_channel+0xd2>)
    3578:	f7ff ff1a 	bl	33b0 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    357c:	2107      	movs	r1, #7
    357e:	2027      	movs	r0, #39	; 0x27
    3580:	f7fe fccc 	bl	1f1c <set_int_priority>
		enable_interrupt(IRQ_USART3);
    3584:	2027      	movs	r0, #39	; 0x27
    3586:	f7fe fc69 	bl	1e5c <enable_interrupt>
		break;
    358a:	e7bc      	b.n	3506 <usart_open_channel+0x24>
		channel->CR1|=USART_CR1_RXNEIE;
    358c:	68e3      	ldr	r3, [r4, #12]
    358e:	f043 0320 	orr.w	r3, r3, #32
    3592:	60e3      	str	r3, [r4, #12]
		break;
    3594:	e7c5      	b.n	3522 <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    3596:	68e3      	ldr	r3, [r4, #12]
    3598:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    359c:	60e3      	str	r3, [r4, #12]
		break;
    359e:	e7c0      	b.n	3522 <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    35a0:	68e3      	ldr	r3, [r4, #12]
    35a2:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    35a6:	60e3      	str	r3, [r4, #12]
		break;
    35a8:	e7bb      	b.n	3522 <usart_open_channel+0x40>
    35aa:	bf00      	nop
    35ac:	40004800 	.word	0x40004800
    35b0:	40010800 	.word	0x40010800
    35b4:	40010c00 	.word	0x40010c00

000035b8 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
	return channel->SR&USART_SR_RXNE;
    35b8:	6800      	ldr	r0, [r0, #0]
}
    35ba:	f000 0020 	and.w	r0, r0, #32
    35be:	4770      	bx	lr

000035c0 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
	if (channel->SR&USART_SR_RXNE){
    35c0:	6803      	ldr	r3, [r0, #0]
    35c2:	f013 0320 	ands.w	r3, r3, #32
		return channel->DR;
    35c6:	bf18      	it	ne
    35c8:	6843      	ldrne	r3, [r0, #4]
	}else{
		return 0;
	}
		
}
    35ca:	b2d8      	uxtb	r0, r3
    35cc:	4770      	bx	lr

000035ce <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
	unsigned t0=ntsc_ticks+dly;
    35ce:	4b09      	ldr	r3, [pc, #36]	; (35f4 <usart_getc_dly+0x26>)
    35d0:	681b      	ldr	r3, [r3, #0]
    35d2:	4419      	add	r1, r3
	
	while ((ntsc_ticks<t0) && !(channel->SR&USART_SR_RXNE));
    35d4:	4a07      	ldr	r2, [pc, #28]	; (35f4 <usart_getc_dly+0x26>)
    35d6:	6813      	ldr	r3, [r2, #0]
    35d8:	4299      	cmp	r1, r3
    35da:	d903      	bls.n	35e4 <usart_getc_dly+0x16>
    35dc:	6803      	ldr	r3, [r0, #0]
    35de:	f013 0f20 	tst.w	r3, #32
    35e2:	d0f8      	beq.n	35d6 <usart_getc_dly+0x8>
	if (ntsc_ticks<t0) return channel->DR; else return 0;
    35e4:	4b03      	ldr	r3, [pc, #12]	; (35f4 <usart_getc_dly+0x26>)
    35e6:	681b      	ldr	r3, [r3, #0]
    35e8:	4299      	cmp	r1, r3
    35ea:	bf8c      	ite	hi
    35ec:	6840      	ldrhi	r0, [r0, #4]
    35ee:	2000      	movls	r0, #0
}
    35f0:	b2c0      	uxtb	r0, r0
    35f2:	4770      	bx	lr
    35f4:	20004e84 	.word	0x20004e84

000035f8 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    35f8:	6803      	ldr	r3, [r0, #0]
    35fa:	f013 0f80 	tst.w	r3, #128	; 0x80
    35fe:	d0fb      	beq.n	35f8 <usart_putc>
	channel->DR=c;
    3600:	6041      	str	r1, [r0, #4]
    3602:	4770      	bx	lr

00003604 <usart_cts>:
}


int usart_cts(usart_t* channel){
	int cts;
	switch ((uint32_t)channel){
    3604:	4b0d      	ldr	r3, [pc, #52]	; (363c <usart_cts+0x38>)
    3606:	4298      	cmp	r0, r3
    3608:	d013      	beq.n	3632 <usart_cts+0x2e>
    360a:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    360e:	4298      	cmp	r0, r3
    3610:	d005      	beq.n	361e <usart_cts+0x1a>
    3612:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    3616:	4298      	cmp	r0, r3
    3618:	d006      	beq.n	3628 <usart_cts+0x24>
    361a:	2000      	movs	r0, #0
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    361c:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    361e:	4b08      	ldr	r3, [pc, #32]	; (3640 <usart_cts+0x3c>)
    3620:	6898      	ldr	r0, [r3, #8]
    3622:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    3626:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    3628:	4b05      	ldr	r3, [pc, #20]	; (3640 <usart_cts+0x3c>)
    362a:	6898      	ldr	r0, [r3, #8]
    362c:	f000 0001 	and.w	r0, r0, #1
			break;
    3630:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    3632:	4b04      	ldr	r3, [pc, #16]	; (3644 <usart_cts+0x40>)
    3634:	6898      	ldr	r0, [r3, #8]
    3636:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    363a:	4770      	bx	lr
    363c:	40004800 	.word	0x40004800
    3640:	40010800 	.word	0x40010800
    3644:	40010c00 	.word	0x40010c00

00003648 <usart_print>:

void usart_print(usart_t* channel, const char *str){
    3648:	b538      	push	{r3, r4, r5, lr}
    364a:	4605      	mov	r5, r0
    364c:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    364e:	7809      	ldrb	r1, [r1, #0]
    3650:	b131      	cbz	r1, 3660 <usart_print+0x18>
    3652:	4628      	mov	r0, r5
    3654:	f7ff ffd0 	bl	35f8 <usart_putc>
    3658:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    365c:	2900      	cmp	r1, #0
    365e:	d1f8      	bne.n	3652 <usart_print+0xa>
    3660:	bd38      	pop	{r3, r4, r5, pc}
    3662:	bf00      	nop
