
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 d1 29 00 00     .P. 1........)..
      10:	d1 29 00 00 d1 29 00 00 d1 29 00 00 d1 29 00 00     .)...)...)...)..
      20:	d1 29 00 00 d1 29 00 00 d1 29 00 00 09 02 00 00     .)...)...)......
      30:	d1 29 00 00 d1 29 00 00 0d 02 00 00 11 02 00 00     .)...)..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 e3 26 00 00     ........!....&..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 d1 29 00 00 d1 29 00 00 49 02 00 00     E....)...)..I...
      80:	d1 29 00 00 d1 29 00 00 d1 29 00 00 d1 29 00 00     .)...)...)...)..
      90:	d1 29 00 00 d1 29 00 00 d1 29 00 00 4d 02 00 00     .)...)...)..M...
      a0:	d1 29 00 00 fd 2f 00 00 d1 29 00 00 15 2f 00 00     .).../...).../..
      b0:	f9 27 00 00 51 02 00 00 55 02 00 00 d1 29 00 00     .'..Q...U....)..
      c0:	d1 29 00 00 d1 29 00 00 d1 29 00 00 d1 29 00 00     .)...)...)...)..
      d0:	d1 29 00 00 59 02 00 00 5d 02 00 00 61 02 00 00     .)..Y...]...a...
      e0:	d1 29 00 00 d1 29 00 00 d1 29 00 00 d1 29 00 00     .)...)...)...)..
      f0:	d1 29 00 00 d1 29 00 00 d1 29 00 00 d1 29 00 00     .)...)...)...)..
     100:	d1 29 00 00 d1 29 00 00 d1 29 00 00 d1 29 00 00     .)...)...)...)..
     110:	d1 29 00 00 d1 29 00 00 d1 29 00 00 d1 29 00 00     .)...)...)...)..
     120:	d1 29 00 00 d1 29 00 00 d1 29 00 00 d1 29 00 00     .)...)...)...)..

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
     186:	f001 fc45 	bl	1a14 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e26 	.word	0x20004e26
     190:	200001f6 	.word	0x200001f6
     194:	20004e25 	.word	0x20004e25
     198:	200001f6 	.word	0x200001f6
     19c:	20000000 	.word	0x20000000
     1a0:	000094cc 	.word	0x000094cc
     1a4:	200001f9 	.word	0x200001f9
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
     1da:	f002 fc01 	bl	29e0 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fbfe 	bl	29e0 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fbfb 	bl	29e0 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fbf8 	bl	29e0 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003d40 	.word	0x00003d40
     1f8:	00003d1c 	.word	0x00003d1c
     1fc:	00003d34 	.word	0x00003d34
     200:	00003d50 	.word	0x00003d50

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fbe4 	bl	29d0 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fbe2 	bl	29d0 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fbe0 	bl	29d0 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fbde 	bl	29d0 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fbdc 	bl	29d0 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fbda 	bl	29d0 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fbd8 	bl	29d0 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fbd6 	bl	29d0 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fbd4 	bl	29d0 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fbd2 	bl	29d0 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fbd0 	bl	29d0 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fbce 	bl	29d0 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fbcc 	bl	29d0 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fbca 	bl	29d0 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fbc8 	bl	29d0 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fbc6 	bl	29d0 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fbc4 	bl	29d0 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fbc2 	bl	29d0 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fbc0 	bl	29d0 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fbbe 	bl	29d0 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fbbc 	bl	29d0 <reset_mcu>

00000258 <USART1_handler>:
_default_handler(USART1_handler) // 37
     258:	f002 fbba 	bl	29d0 <reset_mcu>

0000025c <USART2_handler>:
_default_handler(USART2_handler) // 38
     25c:	f002 fbb8 	bl	29d0 <reset_mcu>

00000260 <USART3_handler>:
_default_handler(USART3_handler) // 39
     260:	f002 fbb6 	bl	29d0 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fbb4 	bl	29d0 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fbb2 	bl	29d0 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fbb0 	bl	29d0 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fbae 	bl	29d0 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fbac 	bl	29d0 <reset_mcu>

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

void print_vms(const char *msg,uint8_t error_code){
     310:	b570      	push	{r4, r5, r6, lr}
     312:	4605      	mov	r5, r0
     314:	460c      	mov	r4, r1
	select_font(FONT_ASCII);
     316:	2002      	movs	r0, #2
     318:	f002 fbd6 	bl	2ac8 <select_font>
	print(msg);
     31c:	4628      	mov	r0, r5
     31e:	f002 fcc3 	bl	2ca8 <print>
	switch(error_code){
     322:	2c03      	cmp	r4, #3
     324:	d039      	beq.n	39a <print_vms+0x8a>
     326:	2c04      	cmp	r4, #4
     328:	d102      	bne.n	330 <print_vms+0x20>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     32a:	481e      	ldr	r0, [pc, #120]	; (3a4 <print_vms+0x94>)
     32c:	f002 fcbc 	bl	2ca8 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     330:	481d      	ldr	r0, [pc, #116]	; (3a8 <print_vms+0x98>)
     332:	f002 fcb9 	bl	2ca8 <print>
	print_hex(vms.pc-2);
     336:	4d1d      	ldr	r5, [pc, #116]	; (3ac <print_vms+0x9c>)
     338:	8828      	ldrh	r0, [r5, #0]
     33a:	2110      	movs	r1, #16
     33c:	3802      	subs	r0, #2
     33e:	f002 fcce 	bl	2cde <print_int>
	print_hex(vms.b2);
     342:	2110      	movs	r1, #16
     344:	7de8      	ldrb	r0, [r5, #23]
     346:	f002 fcca 	bl	2cde <print_int>
	print_hex(vms.b1);
     34a:	2110      	movs	r1, #16
     34c:	7da8      	ldrb	r0, [r5, #22]
     34e:	f002 fcc6 	bl	2cde <print_int>
	new_line();
     352:	f002 fbbf 	bl	2ad4 <new_line>
	print("I:");
     356:	4816      	ldr	r0, [pc, #88]	; (3b0 <print_vms+0xa0>)
     358:	f002 fca6 	bl	2ca8 <print>
	print_hex(vms.ix);
     35c:	2110      	movs	r1, #16
     35e:	8868      	ldrh	r0, [r5, #2]
     360:	f002 fcbd 	bl	2cde <print_int>
	print(" SP:");
     364:	4813      	ldr	r0, [pc, #76]	; (3b4 <print_vms+0xa4>)
     366:	f002 fc9f 	bl	2ca8 <print>
	print_hex(vms.sp);
     36a:	2110      	movs	r1, #16
     36c:	7928      	ldrb	r0, [r5, #4]
     36e:	f002 fcb6 	bl	2cde <print_int>
	new_line();
     372:	f002 fbaf 	bl	2ad4 <new_line>
	print("var[]:");
     376:	4810      	ldr	r0, [pc, #64]	; (3b8 <print_vms+0xa8>)
     378:	f002 fc96 	bl	2ca8 <print>
     37c:	1dac      	adds	r4, r5, #6
     37e:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     380:	2610      	movs	r6, #16
     382:	4631      	mov	r1, r6
     384:	f814 0b01 	ldrb.w	r0, [r4], #1
     388:	f002 fca9 	bl	2cde <print_int>
	for (int i=0;i<16;i++){
     38c:	42ac      	cmp	r4, r5
     38e:	d1f8      	bne.n	382 <print_vms+0x72>
	}
	new_line();
     390:	f002 fba0 	bl	2ad4 <new_line>
	prompt_btn();
     394:	f002 fced 	bl	2d72 <prompt_btn>
     398:	bd70      	pop	{r4, r5, r6, pc}
		print("CHIP BAD OPCODE\n");
     39a:	4808      	ldr	r0, [pc, #32]	; (3bc <print_vms+0xac>)
     39c:	f002 fc84 	bl	2ca8 <print>
		break;
     3a0:	e7c6      	b.n	330 <print_vms+0x20>
     3a2:	bf00      	nop
     3a4:	00003ad4 	.word	0x00003ad4
     3a8:	00003afc 	.word	0x00003afc
     3ac:	200001f8 	.word	0x200001f8
     3b0:	00003b00 	.word	0x00003b00
     3b4:	00003b04 	.word	0x00003b04
     3b8:	00003b0c 	.word	0x00003b0c
     3bc:	00003ae8 	.word	0x00003ae8

000003c0 <srand>:
}

static uint32_t state=1;

void srand(unsigned n){
	state=n;
     3c0:	4b01      	ldr	r3, [pc, #4]	; (3c8 <srand+0x8>)
     3c2:	6018      	str	r0, [r3, #0]
     3c4:	4770      	bx	lr
     3c6:	bf00      	nop
     3c8:	20000000 	.word	0x20000000

000003cc <rand>:
}

int rand(){
	uint32_t x;
	x=state;
     3cc:	4b05      	ldr	r3, [pc, #20]	; (3e4 <rand+0x18>)
     3ce:	6818      	ldr	r0, [r3, #0]
	x^=x<<13;
     3d0:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
	x^=x>>17;
     3d4:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
	x^=x<<5;
     3d8:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
	state=x;
     3dc:	6018      	str	r0, [r3, #0]
	return x&0x7fffffff; 
}
     3de:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
     3e2:	4770      	bx	lr
     3e4:	20000000 	.word	0x20000000

000003e8 <chip_vm>:


//  SCHIP/BPCHIP  virtual machine
uint8_t chip_vm(uint16_t program_address, int debug){
     3e8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
     3ec:	b088      	sub	sp, #32
#define SLOW_DOWN 5
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
	uint16_t code;
	char buffer[24];
	vms.pc=program_address;
     3ee:	4bad      	ldr	r3, [pc, #692]	; (6a4 <chip_vm+0x2bc>)
     3f0:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     3f2:	2200      	movs	r2, #0
     3f4:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     3f6:	805a      	strh	r2, [r3, #2]
 	while (exit_code==CHIP_CONTINUE){
		if (vms.pc>=GAME_SPACE){
     3f8:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
     3fc:	f080 83e6 	bcs.w	bcc <chip_vm+0x7e4>
     400:	460d      	mov	r5, r1
		} 
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
		_get_opcode(vms.pc);
		if (debug){
			debug_print(itoa(vms.pc,buffer,16));
			debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     402:	461c      	mov	r4, r3
				block[0]=n/10;
				//store_block(vms.ix,3,block);
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
				break;
			case 0x55: // FX55  LD [I], VX  save registers V0..VX in ram pointed by I
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     404:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     406:	f8df a2b0 	ldr.w	sl, [pc, #688]	; 6b8 <chip_vm+0x2d0>
     40a:	e0fc      	b.n	606 <chip_vm+0x21e>
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     40c:	b305      	cbz	r5, 450 <chip_vm+0x68>
		_get_opcode(vms.pc);
     40e:	8820      	ldrh	r0, [r4, #0]
     410:	4ba5      	ldr	r3, [pc, #660]	; (6a8 <chip_vm+0x2c0>)
     412:	5c1a      	ldrb	r2, [r3, r0]
     414:	75a2      	strb	r2, [r4, #22]
     416:	4403      	add	r3, r0
     418:	785b      	ldrb	r3, [r3, #1]
     41a:	75e3      	strb	r3, [r4, #23]
			debug_print(itoa(vms.pc,buffer,16));
     41c:	2210      	movs	r2, #16
     41e:	a902      	add	r1, sp, #8
     420:	f000 ff8c 	bl	133c <itoa>
     424:	4fa1      	ldr	r7, [pc, #644]	; (6ac <chip_vm+0x2c4>)
     426:	4601      	mov	r1, r0
     428:	4638      	mov	r0, r7
     42a:	f003 f8b9 	bl	35a0 <usart_print>
			debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     42e:	7da0      	ldrb	r0, [r4, #22]
     430:	7de3      	ldrb	r3, [r4, #23]
     432:	2210      	movs	r2, #16
     434:	a902      	add	r1, sp, #8
     436:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     43a:	f000 ff7f 	bl	133c <itoa>
     43e:	4601      	mov	r1, r0
     440:	4638      	mov	r0, r7
     442:	f003 f8ad 	bl	35a0 <usart_print>
			debug_print("\n");
     446:	499a      	ldr	r1, [pc, #616]	; (6b0 <chip_vm+0x2c8>)
     448:	4638      	mov	r0, r7
     44a:	f003 f8a9 	bl	35a0 <usart_print>
     44e:	e0e9      	b.n	624 <chip_vm+0x23c>
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     450:	2005      	movs	r0, #5
     452:	f002 ff4f 	bl	32f4 <micro_pause>
		_get_opcode(vms.pc);
     456:	8822      	ldrh	r2, [r4, #0]
     458:	4b93      	ldr	r3, [pc, #588]	; (6a8 <chip_vm+0x2c0>)
     45a:	5c99      	ldrb	r1, [r3, r2]
     45c:	75a1      	strb	r1, [r4, #22]
     45e:	4413      	add	r3, r2
     460:	785b      	ldrb	r3, [r3, #1]
     462:	75e3      	strb	r3, [r4, #23]
     464:	e0de      	b.n	624 <chip_vm+0x23c>
		    if ((vms.b1|vms.b2)==0){
     466:	431a      	orrs	r2, r3
     468:	f000 80c8 	beq.w	5fc <chip_vm+0x214>
     46c:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     470:	2ac0      	cmp	r2, #192	; 0xc0
     472:	d026      	beq.n	4c2 <chip_vm+0xda>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
     474:	2ad0      	cmp	r2, #208	; 0xd0
     476:	d029      	beq.n	4cc <chip_vm+0xe4>
			}else switch(vms.b2){
     478:	3be0      	subs	r3, #224	; 0xe0
     47a:	2b1f      	cmp	r3, #31
     47c:	d82b      	bhi.n	4d6 <chip_vm+0xee>
     47e:	e8df f013 	tbh	[pc, r3, lsl #1]
     482:	002d      	.short	0x002d
     484:	002a002a 	.word	0x002a002a
     488:	002a002a 	.word	0x002a002a
     48c:	002a002a 	.word	0x002a002a
     490:	002a002a 	.word	0x002a002a
     494:	002a002a 	.word	0x002a002a
     498:	002a002a 	.word	0x002a002a
     49c:	0030002a 	.word	0x0030002a
     4a0:	002a002a 	.word	0x002a002a
     4a4:	002a002a 	.word	0x002a002a
     4a8:	002a002a 	.word	0x002a002a
     4ac:	002a002a 	.word	0x002a002a
     4b0:	002a002a 	.word	0x002a002a
     4b4:	0044002a 	.word	0x0044002a
     4b8:	003c0038 	.word	0x003c0038
     4bc:	039c03b7 	.word	0x039c03b7
     4c0:	0040      	.short	0x0040
				gfx_scroll_down(vms.b2&0xf); 
     4c2:	f003 000f 	and.w	r0, r3, #15
     4c6:	f001 f877 	bl	15b8 <gfx_scroll_down>
     4ca:	e097      	b.n	5fc <chip_vm+0x214>
				gfx_scroll_up(vms.b2&0xf);					
     4cc:	f003 000f 	and.w	r0, r3, #15
     4d0:	f001 f84c 	bl	156c <gfx_scroll_up>
     4d4:	e092      	b.n	5fc <chip_vm+0x214>
					exit_code=CHIP_BAD_OPCODE;
     4d6:	f04f 0803 	mov.w	r8, #3
     4da:	e37c      	b.n	bd6 <chip_vm+0x7ee>
					gfx_cls();
     4dc:	f001 f832 	bl	1544 <gfx_cls>
					break;
     4e0:	e08c      	b.n	5fc <chip_vm+0x214>
					vms.pc=vms.stack[vms.sp--];
     4e2:	7923      	ldrb	r3, [r4, #4]
     4e4:	1e5a      	subs	r2, r3, #1
     4e6:	7122      	strb	r2, [r4, #4]
     4e8:	330c      	adds	r3, #12
     4ea:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     4ee:	8023      	strh	r3, [r4, #0]
					break;
     4f0:	e084      	b.n	5fc <chip_vm+0x214>
					gfx_scroll_right(4);
     4f2:	2004      	movs	r0, #4
     4f4:	f001 f8b2 	bl	165c <gfx_scroll_right>
					break;
     4f8:	e080      	b.n	5fc <chip_vm+0x214>
					gfx_scroll_left(4);
     4fa:	2004      	movs	r0, #4
     4fc:	f001 f880 	bl	1600 <gfx_scroll_left>
					break;
     500:	e07c      	b.n	5fc <chip_vm+0x214>
					set_video_mode(VM_SCHIP);
     502:	2001      	movs	r0, #1
     504:	f002 feb8 	bl	3278 <set_video_mode>
					break; 
     508:	e078      	b.n	5fc <chip_vm+0x214>
					set_video_mode(VM_BPCHIP);
     50a:	2000      	movs	r0, #0
     50c:	f002 feb4 	bl	3278 <set_video_mode>
					break;
     510:	e074      	b.n	5fc <chip_vm+0x214>
			vms.pc=caddr(vms.b1,vms.b2);
     512:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     516:	f3c3 030b 	ubfx	r3, r3, #0, #12
     51a:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     51c:	4a65      	ldr	r2, [pc, #404]	; (6b4 <chip_vm+0x2cc>)
     51e:	7812      	ldrb	r2, [r2, #0]
     520:	2a00      	cmp	r2, #0
     522:	d16b      	bne.n	5fc <chip_vm+0x214>
				vms.pc<<=1;
     524:	005b      	lsls	r3, r3, #1
     526:	8023      	strh	r3, [r4, #0]
     528:	e068      	b.n	5fc <chip_vm+0x214>
			vms.stack[++vms.sp]=vms.pc;
     52a:	7920      	ldrb	r0, [r4, #4]
     52c:	3001      	adds	r0, #1
     52e:	b2c0      	uxtb	r0, r0
     530:	7120      	strb	r0, [r4, #4]
     532:	300c      	adds	r0, #12
     534:	f824 1010 	strh.w	r1, [r4, r0, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     538:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     53c:	f3c3 030b 	ubfx	r3, r3, #0, #12
     540:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     542:	4a5c      	ldr	r2, [pc, #368]	; (6b4 <chip_vm+0x2cc>)
     544:	7812      	ldrb	r2, [r2, #0]
     546:	2a00      	cmp	r2, #0
     548:	d158      	bne.n	5fc <chip_vm+0x214>
				vms.pc<<=1;
     54a:	005b      	lsls	r3, r3, #1
     54c:	8023      	strh	r3, [r4, #0]
     54e:	e055      	b.n	5fc <chip_vm+0x214>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     550:	44a0      	add	r8, r4
     552:	f898 2006 	ldrb.w	r2, [r8, #6]
     556:	429a      	cmp	r2, r3
     558:	d150      	bne.n	5fc <chip_vm+0x214>
     55a:	f10c 0c04 	add.w	ip, ip, #4
     55e:	f8a4 c000 	strh.w	ip, [r4]
     562:	e04b      	b.n	5fc <chip_vm+0x214>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     564:	44a0      	add	r8, r4
     566:	f898 2006 	ldrb.w	r2, [r8, #6]
     56a:	429a      	cmp	r2, r3
     56c:	d046      	beq.n	5fc <chip_vm+0x214>
     56e:	f10c 0c04 	add.w	ip, ip, #4
     572:	f8a4 c000 	strh.w	ip, [r4]
     576:	e041      	b.n	5fc <chip_vm+0x214>
			switch(vms.b2&0xf){
     578:	f003 030f 	and.w	r3, r3, #15
     57c:	2b02      	cmp	r3, #2
     57e:	d016      	beq.n	5ae <chip_vm+0x1c6>
     580:	2b03      	cmp	r3, #3
     582:	d026      	beq.n	5d2 <chip_vm+0x1ea>
     584:	b133      	cbz	r3, 594 <chip_vm+0x1ac>
     586:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     58a:	f1b8 0f00 	cmp.w	r8, #0
     58e:	f040 8322 	bne.w	bd6 <chip_vm+0x7ee>
     592:	e033      	b.n	5fc <chip_vm+0x214>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     594:	44a0      	add	r8, r4
     596:	44a1      	add	r9, r4
     598:	f898 2006 	ldrb.w	r2, [r8, #6]
     59c:	f899 3006 	ldrb.w	r3, [r9, #6]
     5a0:	429a      	cmp	r2, r3
     5a2:	d12b      	bne.n	5fc <chip_vm+0x214>
     5a4:	f10c 0c04 	add.w	ip, ip, #4
     5a8:	f8a4 c000 	strh.w	ip, [r4]
     5ac:	e026      	b.n	5fc <chip_vm+0x214>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     5ae:	4640      	mov	r0, r8
     5b0:	45c8      	cmp	r8, r9
     5b2:	bf28      	it	cs
     5b4:	4648      	movcs	r0, r9
     5b6:	eba9 0208 	sub.w	r2, r9, r8
     5ba:	2a00      	cmp	r2, #0
     5bc:	bfb8      	it	lt
     5be:	4252      	neglt	r2, r2
     5c0:	8863      	ldrh	r3, [r4, #2]
     5c2:	3006      	adds	r0, #6
     5c4:	3201      	adds	r2, #1
     5c6:	4938      	ldr	r1, [pc, #224]	; (6a8 <chip_vm+0x2c0>)
     5c8:	4419      	add	r1, r3
     5ca:	4420      	add	r0, r4
     5cc:	f000 fe45 	bl	125a <move>
				break;
     5d0:	e014      	b.n	5fc <chip_vm+0x214>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     5d2:	8863      	ldrh	r3, [r4, #2]
     5d4:	4641      	mov	r1, r8
     5d6:	45c8      	cmp	r8, r9
     5d8:	bf28      	it	cs
     5da:	4649      	movcs	r1, r9
     5dc:	eba9 0208 	sub.w	r2, r9, r8
     5e0:	2a00      	cmp	r2, #0
     5e2:	bfb8      	it	lt
     5e4:	4252      	neglt	r2, r2
     5e6:	3106      	adds	r1, #6
     5e8:	3201      	adds	r2, #1
     5ea:	4421      	add	r1, r4
     5ec:	482e      	ldr	r0, [pc, #184]	; (6a8 <chip_vm+0x2c0>)
     5ee:	4418      	add	r0, r3
     5f0:	f000 fe33 	bl	125a <move>
				break;
     5f4:	e002      	b.n	5fc <chip_vm+0x214>
			vms.var[x]=vms.b2;
     5f6:	44a0      	add	r8, r4
     5f8:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     5fc:	8823      	ldrh	r3, [r4, #0]
     5fe:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     602:	f080 82e6 	bcs.w	bd2 <chip_vm+0x7ea>
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     606:	4b2b      	ldr	r3, [pc, #172]	; (6b4 <chip_vm+0x2cc>)
     608:	781b      	ldrb	r3, [r3, #0]
     60a:	2b01      	cmp	r3, #1
     60c:	f43f aefe 	beq.w	40c <chip_vm+0x24>
		_get_opcode(vms.pc);
     610:	8820      	ldrh	r0, [r4, #0]
     612:	4b25      	ldr	r3, [pc, #148]	; (6a8 <chip_vm+0x2c0>)
     614:	5c1a      	ldrb	r2, [r3, r0]
     616:	75a2      	strb	r2, [r4, #22]
     618:	4403      	add	r3, r0
     61a:	785b      	ldrb	r3, [r3, #1]
     61c:	75e3      	strb	r3, [r4, #23]
		if (debug){
     61e:	2d00      	cmp	r5, #0
     620:	f47f aefc 	bne.w	41c <chip_vm+0x34>
		vms.pc+=2;
     624:	f8b4 c000 	ldrh.w	ip, [r4]
     628:	f10c 0102 	add.w	r1, ip, #2
     62c:	b289      	uxth	r1, r1
     62e:	8021      	strh	r1, [r4, #0]
		x=rx(vms.b1);
     630:	7da2      	ldrb	r2, [r4, #22]
     632:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     636:	7de3      	ldrb	r3, [r4, #23]
     638:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     63c:	ea4f 1e12 	mov.w	lr, r2, lsr #4
     640:	f1be 0f0f 	cmp.w	lr, #15
     644:	d8da      	bhi.n	5fc <chip_vm+0x214>
     646:	a001      	add	r0, pc, #4	; (adr r0, 64c <chip_vm+0x264>)
     648:	f850 f02e 	ldr.w	pc, [r0, lr, lsl #2]
     64c:	00000467 	.word	0x00000467
     650:	00000513 	.word	0x00000513
     654:	0000052b 	.word	0x0000052b
     658:	00000551 	.word	0x00000551
     65c:	00000565 	.word	0x00000565
     660:	00000579 	.word	0x00000579
     664:	000005f7 	.word	0x000005f7
     668:	0000068d 	.word	0x0000068d
     66c:	000006bd 	.word	0x000006bd
     670:	000007b3 	.word	0x000007b3
     674:	0000094d 	.word	0x0000094d
     678:	00000967 	.word	0x00000967
     67c:	00000987 	.word	0x00000987
     680:	00000997 	.word	0x00000997
     684:	00000a1b 	.word	0x00000a1b
     688:	00000a59 	.word	0x00000a59
		    n=(vms.var[x]+vms.b2)>255;
     68c:	44a0      	add	r8, r4
     68e:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     692:	4403      	add	r3, r0
     694:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     698:	2bff      	cmp	r3, #255	; 0xff
     69a:	bfd4      	ite	le
     69c:	2300      	movle	r3, #0
     69e:	2301      	movgt	r3, #1
     6a0:	7563      	strb	r3, [r4, #21]
			break;
     6a2:	e7ab      	b.n	5fc <chip_vm+0x214>
     6a4:	200001f8 	.word	0x200001f8
     6a8:	20000690 	.word	0x20000690
     6ac:	40013800 	.word	0x40013800
     6b0:	00003ae4 	.word	0x00003ae4
     6b4:	2000068c 	.word	0x2000068c
     6b8:	51eb851f 	.word	0x51eb851f
			switch(vms.b2&0xf){
     6bc:	f003 030f 	and.w	r3, r3, #15
     6c0:	2b0e      	cmp	r3, #14
     6c2:	f200 827d 	bhi.w	bc0 <chip_vm+0x7d8>
     6c6:	e8df f013 	tbh	[pc, r3, lsl #1]
     6ca:	000f      	.short	0x000f
     6cc:	00200016 	.word	0x00200016
     6d0:	0034002a 	.word	0x0034002a
     6d4:	00520043 	.word	0x00520043
     6d8:	027b005c 	.word	0x027b005c
     6dc:	027b027b 	.word	0x027b027b
     6e0:	027b027b 	.word	0x027b027b
     6e4:	006b027b 	.word	0x006b027b
				vms.var[x]=vms.var[y];
     6e8:	44a1      	add	r9, r4
     6ea:	f899 3006 	ldrb.w	r3, [r9, #6]
     6ee:	44a0      	add	r8, r4
     6f0:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     6f4:	e782      	b.n	5fc <chip_vm+0x214>
				vms.var[x]|=vms.var[y];
     6f6:	44a0      	add	r8, r4
     6f8:	44a1      	add	r9, r4
     6fa:	f898 3006 	ldrb.w	r3, [r8, #6]
     6fe:	f899 2006 	ldrb.w	r2, [r9, #6]
     702:	4313      	orrs	r3, r2
     704:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     708:	e778      	b.n	5fc <chip_vm+0x214>
				vms.var[x]&=vms.var[y];
     70a:	44a0      	add	r8, r4
     70c:	44a1      	add	r9, r4
     70e:	f898 3006 	ldrb.w	r3, [r8, #6]
     712:	f899 2006 	ldrb.w	r2, [r9, #6]
     716:	4013      	ands	r3, r2
     718:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     71c:	e76e      	b.n	5fc <chip_vm+0x214>
				vms.var[x]^=vms.var[y];
     71e:	44a0      	add	r8, r4
     720:	44a1      	add	r9, r4
     722:	f898 3006 	ldrb.w	r3, [r8, #6]
     726:	f899 2006 	ldrb.w	r2, [r9, #6]
     72a:	4053      	eors	r3, r2
     72c:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     730:	e764      	b.n	5fc <chip_vm+0x214>
				n=(vms.var[x]+vms.var[y])>255;
     732:	44a0      	add	r8, r4
     734:	f898 3006 	ldrb.w	r3, [r8, #6]
     738:	44a1      	add	r9, r4
     73a:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     73e:	4413      	add	r3, r2
     740:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     744:	2bff      	cmp	r3, #255	; 0xff
     746:	bfd4      	ite	le
     748:	2300      	movle	r3, #0
     74a:	2301      	movgt	r3, #1
     74c:	7563      	strb	r3, [r4, #21]
				break;
     74e:	e755      	b.n	5fc <chip_vm+0x214>
				n=vms.var[x]>=vms.var[y];
     750:	44a0      	add	r8, r4
     752:	f898 3006 	ldrb.w	r3, [r8, #6]
     756:	44a1      	add	r9, r4
     758:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     75c:	1a99      	subs	r1, r3, r2
     75e:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     762:	4293      	cmp	r3, r2
     764:	bf34      	ite	cc
     766:	2300      	movcc	r3, #0
     768:	2301      	movcs	r3, #1
     76a:	7563      	strb	r3, [r4, #21]
				break;
     76c:	e746      	b.n	5fc <chip_vm+0x214>
				n=(vms.var[x]&1u);
     76e:	44a0      	add	r8, r4
     770:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     774:	085a      	lsrs	r2, r3, #1
     776:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     77a:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     77e:	7563      	strb	r3, [r4, #21]
				break;
     780:	e73c      	b.n	5fc <chip_vm+0x214>
				n=vms.var[y]>=vms.var[x];
     782:	44a1      	add	r9, r4
     784:	f899 3006 	ldrb.w	r3, [r9, #6]
     788:	44a0      	add	r8, r4
     78a:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     78e:	1a99      	subs	r1, r3, r2
     790:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     794:	4293      	cmp	r3, r2
     796:	bf34      	ite	cc
     798:	2300      	movcc	r3, #0
     79a:	2301      	movcs	r3, #1
     79c:	7563      	strb	r3, [r4, #21]
				break;
     79e:	e72d      	b.n	5fc <chip_vm+0x214>
				n=(vms.var[x]&128)>>7;
     7a0:	44a0      	add	r8, r4
     7a2:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     7a6:	005a      	lsls	r2, r3, #1
     7a8:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     7ac:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     7ae:	7563      	strb	r3, [r4, #21]
				break;
     7b0:	e724      	b.n	5fc <chip_vm+0x214>
			switch (vms.b2&0xf){
     7b2:	f003 030f 	and.w	r3, r3, #15
     7b6:	2b0f      	cmp	r3, #15
     7b8:	f200 8205 	bhi.w	bc6 <chip_vm+0x7de>
     7bc:	e8df f003 	tbb	[pc, r3]
     7c0:	3d201608 	.word	0x3d201608
     7c4:	63584d48 	.word	0x63584d48
     7c8:	877b746d 	.word	0x877b746d
     7cc:	c0b0a094 	.word	0xc0b0a094
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     7d0:	44a0      	add	r8, r4
     7d2:	44a1      	add	r9, r4
     7d4:	f898 2006 	ldrb.w	r2, [r8, #6]
     7d8:	f899 3006 	ldrb.w	r3, [r9, #6]
     7dc:	429a      	cmp	r2, r3
     7de:	f43f af0d 	beq.w	5fc <chip_vm+0x214>
     7e2:	f10c 0c04 	add.w	ip, ip, #4
     7e6:	f8a4 c000 	strh.w	ip, [r4]
     7ea:	e707      	b.n	5fc <chip_vm+0x214>
				key_tone(vms.var[x],vms.var[y],false);
     7ec:	44a1      	add	r9, r4
     7ee:	44a0      	add	r8, r4
     7f0:	2200      	movs	r2, #0
     7f2:	f899 1006 	ldrb.w	r1, [r9, #6]
     7f6:	f898 0006 	ldrb.w	r0, [r8, #6]
     7fa:	f001 ffd5 	bl	27a8 <key_tone>
				break;
     7fe:	e6fd      	b.n	5fc <chip_vm+0x214>
				select_font(FONT_ASCII);
     800:	2002      	movs	r0, #2
     802:	f002 f961 	bl	2ac8 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     806:	44a1      	add	r9, r4
     808:	44a0      	add	r8, r4
     80a:	f899 1006 	ldrb.w	r1, [r9, #6]
     80e:	f898 0006 	ldrb.w	r0, [r8, #6]
     812:	f002 fa15 	bl	2c40 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     816:	8860      	ldrh	r0, [r4, #2]
     818:	f8df 93e0 	ldr.w	r9, [pc, #992]	; bfc <chip_vm+0x814>
     81c:	4448      	add	r0, r9
     81e:	f002 fa43 	bl	2ca8 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     822:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     826:	eb09 0008 	add.w	r0, r9, r8
     82a:	f000 fd20 	bl	126e <strlen>
     82e:	f108 0801 	add.w	r8, r8, #1
     832:	4480      	add	r8, r0
     834:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     838:	e6e0      	b.n	5fc <chip_vm+0x214>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     83a:	44a1      	add	r9, r4
     83c:	44a0      	add	r8, r4
     83e:	2303      	movs	r3, #3
     840:	2200      	movs	r2, #0
     842:	f899 1006 	ldrb.w	r1, [r9, #6]
     846:	f898 0006 	ldrb.w	r0, [r8, #6]
     84a:	f000 fe05 	bl	1458 <gfx_blit>
				break;
     84e:	e6d5      	b.n	5fc <chip_vm+0x214>
				noise((x<<4)+y);
     850:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     854:	f001 ffbc 	bl	27d0 <noise>
				break;
     858:	e6d0      	b.n	5fc <chip_vm+0x214>
				key_tone(vms.var[x],vms.var[y],true);
     85a:	44a1      	add	r9, r4
     85c:	44a0      	add	r8, r4
     85e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     862:	f899 1006 	ldrb.w	r1, [r9, #6]
     866:	f898 0006 	ldrb.w	r0, [r8, #6]
     86a:	f001 ff9d 	bl	27a8 <key_tone>
				break;
     86e:	e6c5      	b.n	5fc <chip_vm+0x214>
				vms.stack[++vms.sp]=vms.var[x];
     870:	7923      	ldrb	r3, [r4, #4]
     872:	3301      	adds	r3, #1
     874:	b2db      	uxtb	r3, r3
     876:	7123      	strb	r3, [r4, #4]
     878:	330c      	adds	r3, #12
     87a:	44a0      	add	r8, r4
     87c:	f898 2006 	ldrb.w	r2, [r8, #6]
     880:	f824 2013 	strh.w	r2, [r4, r3, lsl #1]
				break;
     884:	e6ba      	b.n	5fc <chip_vm+0x214>
				vms.var[x]=vms.stack[vms.sp--];
     886:	7923      	ldrb	r3, [r4, #4]
     888:	1e5a      	subs	r2, r3, #1
     88a:	7122      	strb	r2, [r4, #4]
     88c:	44a0      	add	r8, r4
     88e:	330c      	adds	r3, #12
     890:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     894:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     898:	e6b0      	b.n	5fc <chip_vm+0x214>
				{ 	vmode_params_t *vparams=get_video_params();
     89a:	f002 fd17 	bl	32cc <get_video_params>
					vms.var[x]=vparams->hres;
     89e:	44a0      	add	r8, r4
     8a0:	8983      	ldrh	r3, [r0, #12]
     8a2:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     8a6:	e6a9      	b.n	5fc <chip_vm+0x214>
					vmode_params_t *vparams=get_video_params();
     8a8:	f002 fd10 	bl	32cc <get_video_params>
					vms.var[x]=vparams->vres;
     8ac:	44a0      	add	r8, r4
     8ae:	89c3      	ldrh	r3, [r0, #14]
     8b0:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     8b4:	e6a2      	b.n	5fc <chip_vm+0x214>
			    vms.var[x] |= (1<<(y&0x7));
     8b6:	44a0      	add	r8, r4
     8b8:	f009 0907 	and.w	r9, r9, #7
     8bc:	2301      	movs	r3, #1
     8be:	fa03 f309 	lsl.w	r3, r3, r9
     8c2:	f898 2006 	ldrb.w	r2, [r8, #6]
     8c6:	4313      	orrs	r3, r2
     8c8:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     8cc:	e696      	b.n	5fc <chip_vm+0x214>
			    vms.var[x] &= ~(1<<(y&0x7));
     8ce:	44a0      	add	r8, r4
     8d0:	f009 0207 	and.w	r2, r9, #7
     8d4:	2301      	movs	r3, #1
     8d6:	fa03 f202 	lsl.w	r2, r3, r2
     8da:	f898 3006 	ldrb.w	r3, [r8, #6]
     8de:	ea23 0302 	bic.w	r3, r3, r2
     8e2:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     8e6:	e689      	b.n	5fc <chip_vm+0x214>
   			    vms.var[x] ^= (1<<(y&0x7));
     8e8:	44a0      	add	r8, r4
     8ea:	f009 0907 	and.w	r9, r9, #7
     8ee:	2301      	movs	r3, #1
     8f0:	fa03 f309 	lsl.w	r3, r3, r9
     8f4:	f898 2006 	ldrb.w	r2, [r8, #6]
     8f8:	4053      	eors	r3, r2
     8fa:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     8fe:	e67d      	b.n	5fc <chip_vm+0x214>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     900:	44a0      	add	r8, r4
     902:	f898 3006 	ldrb.w	r3, [r8, #6]
     906:	f009 0907 	and.w	r9, r9, #7
     90a:	fa43 f309 	asr.w	r3, r3, r9
     90e:	f013 0f01 	tst.w	r3, #1
     912:	f43f ae73 	beq.w	5fc <chip_vm+0x214>
     916:	f10c 0c04 	add.w	ip, ip, #4
     91a:	f8a4 c000 	strh.w	ip, [r4]
     91e:	e66d      	b.n	5fc <chip_vm+0x214>
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     920:	44a0      	add	r8, r4
     922:	f898 3006 	ldrb.w	r3, [r8, #6]
     926:	f009 0907 	and.w	r9, r9, #7
     92a:	fa43 f309 	asr.w	r3, r3, r9
     92e:	f013 0f01 	tst.w	r3, #1
     932:	f47f ae63 	bne.w	5fc <chip_vm+0x214>
     936:	f10c 0c04 	add.w	ip, ip, #4
     93a:	f8a4 c000 	strh.w	ip, [r4]
     93e:	e65d      	b.n	5fc <chip_vm+0x214>
			    vms.var[15]=gfx_get_pixel(x,y);
     940:	4649      	mov	r1, r9
     942:	4640      	mov	r0, r8
     944:	f000 febe 	bl	16c4 <gfx_get_pixel>
     948:	7560      	strb	r0, [r4, #21]
				break;  	
     94a:	e657      	b.n	5fc <chip_vm+0x214>
			vms.ix=caddr(vms.b1,vms.b2);
     94c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     950:	f3c3 030b 	ubfx	r3, r3, #0, #12
     954:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     956:	4aa8      	ldr	r2, [pc, #672]	; (bf8 <chip_vm+0x810>)
     958:	7812      	ldrb	r2, [r2, #0]
     95a:	b90a      	cbnz	r2, 960 <chip_vm+0x578>
				vms.ix<<=1;
     95c:	005b      	lsls	r3, r3, #1
     95e:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     960:	2300      	movs	r3, #0
     962:	7163      	strb	r3, [r4, #5]
			break;
     964:	e64a      	b.n	5fc <chip_vm+0x214>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     966:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     96a:	f3c3 030b 	ubfx	r3, r3, #0, #12
     96e:	79a2      	ldrb	r2, [r4, #6]
     970:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     974:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     976:	4aa0      	ldr	r2, [pc, #640]	; (bf8 <chip_vm+0x810>)
     978:	7812      	ldrb	r2, [r2, #0]
     97a:	2a00      	cmp	r2, #0
     97c:	f47f ae3e 	bne.w	5fc <chip_vm+0x214>
				vms.pc<<=1;
     980:	005b      	lsls	r3, r3, #1
     982:	8023      	strh	r3, [r4, #0]
     984:	e63a      	b.n	5fc <chip_vm+0x214>
			vms.var[x]=rand()&vms.b2;
     986:	f7ff fd21 	bl	3cc <rand>
     98a:	44a0      	add	r8, r4
     98c:	7de3      	ldrb	r3, [r4, #23]
     98e:	4018      	ands	r0, r3
     990:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     994:	e632      	b.n	5fc <chip_vm+0x214>
			if (!n){
     996:	f013 030f 	ands.w	r3, r3, #15
     99a:	d11f      	bne.n	9dc <chip_vm+0x5f4>
				if (vms.sprite_mem==RAM_MEM){
     99c:	7963      	ldrb	r3, [r4, #5]
     99e:	b97b      	cbnz	r3, 9c0 <chip_vm+0x5d8>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     9a0:	44a1      	add	r9, r4
     9a2:	f999 1006 	ldrsb.w	r1, [r9, #6]
     9a6:	44a0      	add	r8, r4
     9a8:	f998 0006 	ldrsb.w	r0, [r8, #6]
     9ac:	8863      	ldrh	r3, [r4, #2]
     9ae:	4a93      	ldr	r2, [pc, #588]	; (bfc <chip_vm+0x814>)
     9b0:	4413      	add	r3, r2
     9b2:	9300      	str	r3, [sp, #0]
     9b4:	2310      	movs	r3, #16
     9b6:	461a      	mov	r2, r3
     9b8:	f000 feaa 	bl	1710 <gfx_sprite>
     9bc:	7560      	strb	r0, [r4, #21]
     9be:	e61d      	b.n	5fc <chip_vm+0x214>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     9c0:	44a1      	add	r9, r4
     9c2:	f999 1006 	ldrsb.w	r1, [r9, #6]
     9c6:	44a0      	add	r8, r4
     9c8:	f998 0006 	ldrsb.w	r0, [r8, #6]
     9cc:	8863      	ldrh	r3, [r4, #2]
     9ce:	9300      	str	r3, [sp, #0]
     9d0:	2310      	movs	r3, #16
     9d2:	461a      	mov	r2, r3
     9d4:	f000 fe9c 	bl	1710 <gfx_sprite>
     9d8:	7560      	strb	r0, [r4, #21]
     9da:	e60f      	b.n	5fc <chip_vm+0x214>
				if (vms.sprite_mem==RAM_MEM){
     9dc:	7962      	ldrb	r2, [r4, #5]
     9de:	b97a      	cbnz	r2, a00 <chip_vm+0x618>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     9e0:	44a1      	add	r9, r4
     9e2:	f999 1006 	ldrsb.w	r1, [r9, #6]
     9e6:	44a0      	add	r8, r4
     9e8:	f998 0006 	ldrsb.w	r0, [r8, #6]
     9ec:	8862      	ldrh	r2, [r4, #2]
     9ee:	f8df e20c 	ldr.w	lr, [pc, #524]	; bfc <chip_vm+0x814>
     9f2:	4472      	add	r2, lr
     9f4:	9200      	str	r2, [sp, #0]
     9f6:	2208      	movs	r2, #8
     9f8:	f000 fe8a 	bl	1710 <gfx_sprite>
     9fc:	7560      	strb	r0, [r4, #21]
     9fe:	e5fd      	b.n	5fc <chip_vm+0x214>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     a00:	44a1      	add	r9, r4
     a02:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a06:	44a0      	add	r8, r4
     a08:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a0c:	8862      	ldrh	r2, [r4, #2]
     a0e:	9200      	str	r2, [sp, #0]
     a10:	2208      	movs	r2, #8
     a12:	f000 fe7d 	bl	1710 <gfx_sprite>
     a16:	7560      	strb	r0, [r4, #21]
     a18:	e5f0      	b.n	5fc <chip_vm+0x214>
				switch(vms.b2){
     a1a:	2b9e      	cmp	r3, #158	; 0x9e
     a1c:	d004      	beq.n	a28 <chip_vm+0x640>
     a1e:	2ba1      	cmp	r3, #161	; 0xa1
     a20:	d00e      	beq.n	a40 <chip_vm+0x658>
					return CHIP_BAD_OPCODE;
     a22:	f04f 0803 	mov.w	r8, #3
     a26:	e0df      	b.n	be8 <chip_vm+0x800>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     a28:	44a0      	add	r8, r4
     a2a:	f898 0006 	ldrb.w	r0, [r8, #6]
     a2e:	f000 faf3 	bl	1018 <btn_query_down>
     a32:	2800      	cmp	r0, #0
     a34:	f43f ade2 	beq.w	5fc <chip_vm+0x214>
     a38:	8823      	ldrh	r3, [r4, #0]
     a3a:	3302      	adds	r3, #2
     a3c:	8023      	strh	r3, [r4, #0]
     a3e:	e5dd      	b.n	5fc <chip_vm+0x214>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     a40:	44a0      	add	r8, r4
     a42:	f898 0006 	ldrb.w	r0, [r8, #6]
     a46:	f000 fae7 	bl	1018 <btn_query_down>
     a4a:	2800      	cmp	r0, #0
     a4c:	f47f add6 	bne.w	5fc <chip_vm+0x214>
     a50:	8823      	ldrh	r3, [r4, #0]
     a52:	3302      	adds	r3, #2
     a54:	8023      	strh	r3, [r4, #0]
     a56:	e5d1      	b.n	5fc <chip_vm+0x214>
			switch(vms.b2){
     a58:	2b29      	cmp	r3, #41	; 0x29
     a5a:	d078      	beq.n	b4e <chip_vm+0x766>
     a5c:	d815      	bhi.n	a8a <chip_vm+0x6a2>
     a5e:	2b0a      	cmp	r3, #10
     a60:	d05a      	beq.n	b18 <chip_vm+0x730>
     a62:	d908      	bls.n	a76 <chip_vm+0x68e>
     a64:	2b18      	cmp	r3, #24
     a66:	d063      	beq.n	b30 <chip_vm+0x748>
     a68:	2b1e      	cmp	r3, #30
     a6a:	d069      	beq.n	b40 <chip_vm+0x758>
     a6c:	2b15      	cmp	r3, #21
     a6e:	d059      	beq.n	b24 <chip_vm+0x73c>
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash
				flash_read_block((const uint8_t*)PERSIST_STORE,vms.var,x+1);
				//move((const uint8_t*)block,vms.var,x+1);
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     a70:	f04f 0803 	mov.w	r8, #3
     a74:	e589      	b.n	58a <chip_vm+0x1a2>
			switch(vms.b2){
     a76:	2b01      	cmp	r3, #1
     a78:	d044      	beq.n	b04 <chip_vm+0x71c>
     a7a:	2b07      	cmp	r3, #7
     a7c:	d1f8      	bne.n	a70 <chip_vm+0x688>
				vms.var[x]=game_timer;
     a7e:	4b60      	ldr	r3, [pc, #384]	; (c00 <chip_vm+0x818>)
     a80:	881b      	ldrh	r3, [r3, #0]
     a82:	44a0      	add	r8, r4
     a84:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     a88:	e5b8      	b.n	5fc <chip_vm+0x214>
			switch(vms.b2){
     a8a:	2b55      	cmp	r3, #85	; 0x55
     a8c:	d07c      	beq.n	b88 <chip_vm+0x7a0>
     a8e:	d910      	bls.n	ab2 <chip_vm+0x6ca>
     a90:	2b75      	cmp	r3, #117	; 0x75
     a92:	f000 8082 	beq.w	b9a <chip_vm+0x7b2>
     a96:	2b85      	cmp	r3, #133	; 0x85
     a98:	f000 8087 	beq.w	baa <chip_vm+0x7c2>
     a9c:	2b65      	cmp	r3, #101	; 0x65
     a9e:	d1e7      	bne.n	a70 <chip_vm+0x688>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     aa0:	8863      	ldrh	r3, [r4, #2]
     aa2:	f108 0201 	add.w	r2, r8, #1
     aa6:	4631      	mov	r1, r6
     aa8:	4854      	ldr	r0, [pc, #336]	; (bfc <chip_vm+0x814>)
     aaa:	4418      	add	r0, r3
     aac:	f000 fbd5 	bl	125a <move>
				break;
     ab0:	e5a4      	b.n	5fc <chip_vm+0x214>
			switch(vms.b2){
     ab2:	2b30      	cmp	r3, #48	; 0x30
     ab4:	d05a      	beq.n	b6c <chip_vm+0x784>
     ab6:	2b33      	cmp	r3, #51	; 0x33
     ab8:	d1da      	bne.n	a70 <chip_vm+0x688>
				n=vms.var[x];
     aba:	44a0      	add	r8, r4
     abc:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     ac0:	4a50      	ldr	r2, [pc, #320]	; (c04 <chip_vm+0x81c>)
     ac2:	fba2 0301 	umull	r0, r3, r2, r1
     ac6:	08db      	lsrs	r3, r3, #3
     ac8:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     acc:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     ad0:	f884 005a 	strb.w	r0, [r4, #90]	; 0x5a
				block[1]=n%10;
     ad4:	b2db      	uxtb	r3, r3
     ad6:	fba2 0203 	umull	r0, r2, r2, r3
     ada:	08d2      	lsrs	r2, r2, #3
     adc:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     ae0:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     ae4:	f884 3059 	strb.w	r3, [r4, #89]	; 0x59
				block[0]=n/10;
     ae8:	fbaa 2301 	umull	r2, r3, sl, r1
     aec:	095b      	lsrs	r3, r3, #5
     aee:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     af2:	8863      	ldrh	r3, [r4, #2]
     af4:	2203      	movs	r2, #3
     af6:	4941      	ldr	r1, [pc, #260]	; (bfc <chip_vm+0x814>)
     af8:	4419      	add	r1, r3
     afa:	f104 0058 	add.w	r0, r4, #88	; 0x58
     afe:	f000 fbac 	bl	125a <move>
				break;
     b02:	e57b      	b.n	5fc <chip_vm+0x214>
				sprite_bpp=vms.b1%3;
     b04:	4b40      	ldr	r3, [pc, #256]	; (c08 <chip_vm+0x820>)
     b06:	fba3 1302 	umull	r1, r3, r3, r2
     b0a:	085b      	lsrs	r3, r3, #1
     b0c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     b10:	1ad2      	subs	r2, r2, r3
     b12:	4b3e      	ldr	r3, [pc, #248]	; (c0c <chip_vm+0x824>)
     b14:	701a      	strb	r2, [r3, #0]
				break;
     b16:	e571      	b.n	5fc <chip_vm+0x214>
				vms.var[x]=btn_wait_any();
     b18:	f000 fab2 	bl	1080 <btn_wait_any>
     b1c:	44a0      	add	r8, r4
     b1e:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     b22:	e56b      	b.n	5fc <chip_vm+0x214>
				game_timer=vms.var[x];
     b24:	44a0      	add	r8, r4
     b26:	f898 2006 	ldrb.w	r2, [r8, #6]
     b2a:	4b35      	ldr	r3, [pc, #212]	; (c00 <chip_vm+0x818>)
     b2c:	801a      	strh	r2, [r3, #0]
				break;
     b2e:	e565      	b.n	5fc <chip_vm+0x214>
				tone(523,vms.var[x]);
     b30:	44a0      	add	r8, r4
     b32:	f898 1006 	ldrb.w	r1, [r8, #6]
     b36:	f240 200b 	movw	r0, #523	; 0x20b
     b3a:	f001 fe0f 	bl	275c <tone>
				break;
     b3e:	e55d      	b.n	5fc <chip_vm+0x214>
				vms.ix += vms.var[x];
     b40:	44a0      	add	r8, r4
     b42:	f898 3006 	ldrb.w	r3, [r8, #6]
     b46:	8862      	ldrh	r2, [r4, #2]
     b48:	4413      	add	r3, r2
     b4a:	8063      	strh	r3, [r4, #2]
				break;
     b4c:	e556      	b.n	5fc <chip_vm+0x214>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     b4e:	44a0      	add	r8, r4
     b50:	f898 3006 	ldrb.w	r3, [r8, #6]
     b54:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     b58:	4a2d      	ldr	r2, [pc, #180]	; (c10 <chip_vm+0x828>)
     b5a:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     b5e:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     b60:	2301      	movs	r3, #1
     b62:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     b64:	2000      	movs	r0, #0
     b66:	f001 ffaf 	bl	2ac8 <select_font>
				break;
     b6a:	e547      	b.n	5fc <chip_vm+0x214>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     b6c:	44a0      	add	r8, r4
     b6e:	f898 3006 	ldrb.w	r3, [r8, #6]
     b72:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     b76:	4a27      	ldr	r2, [pc, #156]	; (c14 <chip_vm+0x82c>)
     b78:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     b7c:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     b7e:	2001      	movs	r0, #1
     b80:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     b82:	f001 ffa1 	bl	2ac8 <select_font>
				break;
     b86:	e539      	b.n	5fc <chip_vm+0x214>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     b88:	8863      	ldrh	r3, [r4, #2]
     b8a:	f108 0201 	add.w	r2, r8, #1
     b8e:	491b      	ldr	r1, [pc, #108]	; (bfc <chip_vm+0x814>)
     b90:	4419      	add	r1, r3
     b92:	4630      	mov	r0, r6
     b94:	f000 fb61 	bl	125a <move>
				break;
     b98:	e530      	b.n	5fc <chip_vm+0x214>
				flash_write_block(PERSIST_STORE,vms.var,x+1);
     b9a:	f108 0201 	add.w	r2, r8, #1
     b9e:	4631      	mov	r1, r6
     ba0:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
     ba4:	f000 f96c 	bl	e80 <flash_write_block>
				break;
     ba8:	e528      	b.n	5fc <chip_vm+0x214>
				flash_read_block((const uint8_t*)PERSIST_STORE,vms.var,x+1);
     baa:	f108 0201 	add.w	r2, r8, #1
     bae:	4631      	mov	r1, r6
     bb0:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
     bb4:	f000 f94a 	bl	e4c <flash_read_block>
				break;
     bb8:	e520      	b.n	5fc <chip_vm+0x214>
			}else switch(vms.b2){
     bba:	f04f 0800 	mov.w	r8, #0
     bbe:	e4e4      	b.n	58a <chip_vm+0x1a2>
				exit_code=CHIP_BAD_OPCODE;
     bc0:	f04f 0803 	mov.w	r8, #3
     bc4:	e4e1      	b.n	58a <chip_vm+0x1a2>
				exit_code=CHIP_BAD_OPCODE;
     bc6:	f04f 0803 	mov.w	r8, #3
     bca:	e4de      	b.n	58a <chip_vm+0x1a2>
			exit_code=CHIP_BAD_ADDR;
     bcc:	f04f 0804 	mov.w	r8, #4
     bd0:	e001      	b.n	bd6 <chip_vm+0x7ee>
     bd2:	f04f 0804 	mov.w	r8, #4
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     bd6:	2002      	movs	r0, #2
     bd8:	f001 ff76 	bl	2ac8 <select_font>
	set_keymap(default_kmap);
     bdc:	480e      	ldr	r0, [pc, #56]	; (c18 <chip_vm+0x830>)
     bde:	f000 f9cd 	bl	f7c <set_keymap>
	set_video_mode(VM_BPCHIP);
     be2:	2000      	movs	r0, #0
     be4:	f002 fb48 	bl	3278 <set_video_mode>
	return exit_code;
}//schipp()
     be8:	4640      	mov	r0, r8
     bea:	b008      	add	sp, #32
     bec:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					exit_code=CHIP_EXIT_OK;
     bf0:	f04f 0802 	mov.w	r8, #2
     bf4:	e7ef      	b.n	bd6 <chip_vm+0x7ee>
     bf6:	bf00      	nop
     bf8:	2000068c 	.word	0x2000068c
     bfc:	20000690 	.word	0x20000690
     c00:	20004e1c 	.word	0x20004e1c
     c04:	cccccccd 	.word	0xcccccccd
     c08:	aaaaaaab 	.word	0xaaaaaaab
     c0c:	20000190 	.word	0x20000190
     c10:	000039b4 	.word	0x000039b4
     c14:	00003914 	.word	0x00003914
     c18:	00003a14 	.word	0x00003a14

00000c1c <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     c1c:	2200      	movs	r2, #0
     c1e:	4b0f      	ldr	r3, [pc, #60]	; (c5c <flash_enable+0x40>)
     c20:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     c22:	4b0f      	ldr	r3, [pc, #60]	; (c60 <flash_enable+0x44>)
     c24:	681b      	ldr	r3, [r3, #0]
     c26:	f013 0f01 	tst.w	r3, #1
     c2a:	d10b      	bne.n	c44 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     c2c:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     c30:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     c34:	6813      	ldr	r3, [r2, #0]
     c36:	f043 0301 	orr.w	r3, r3, #1
     c3a:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     c3c:	6813      	ldr	r3, [r2, #0]
     c3e:	f013 0f02 	tst.w	r3, #2
     c42:	d0fb      	beq.n	c3c <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     c44:	4b07      	ldr	r3, [pc, #28]	; (c64 <flash_enable+0x48>)
     c46:	4a08      	ldr	r2, [pc, #32]	; (c68 <flash_enable+0x4c>)
     c48:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     c4a:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     c4e:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     c50:	6918      	ldr	r0, [r3, #16]
     c52:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     c56:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     c5a:	4770      	bx	lr
     c5c:	20000270 	.word	0x20000270
     c60:	40021000 	.word	0x40021000
     c64:	40022000 	.word	0x40022000
     c68:	45670123 	.word	0x45670123

00000c6c <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     c6c:	4a0b      	ldr	r2, [pc, #44]	; (c9c <flash_write_hword+0x30>)
     c6e:	68d3      	ldr	r3, [r2, #12]
     c70:	f013 0f01 	tst.w	r3, #1
     c74:	d1fb      	bne.n	c6e <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     c76:	4b09      	ldr	r3, [pc, #36]	; (c9c <flash_write_hword+0x30>)
     c78:	68da      	ldr	r2, [r3, #12]
     c7a:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     c7e:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     c80:	2201      	movs	r2, #1
     c82:	611a      	str	r2, [r3, #16]
	*address=hword;
     c84:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     c86:	68da      	ldr	r2, [r3, #12]
     c88:	f012 0f01 	tst.w	r2, #1
     c8c:	d003      	beq.n	c96 <flash_write_hword+0x2a>
     c8e:	68da      	ldr	r2, [r3, #12]
     c90:	f012 0f20 	tst.w	r2, #32
     c94:	d0f7      	beq.n	c86 <flash_write_hword+0x1a>
	return *address==hword;
}
     c96:	2001      	movs	r0, #1
     c98:	4770      	bx	lr
     c9a:	bf00      	nop
     c9c:	40022000 	.word	0x40022000

00000ca0 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     ca0:	283f      	cmp	r0, #63	; 0x3f
     ca2:	d914      	bls.n	cce <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     ca4:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     ca6:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     ca8:	1c81      	adds	r1, r0, #2
     caa:	8802      	ldrh	r2, [r0, #0]
     cac:	f64f 73ff 	movw	r3, #65535	; 0xffff
     cb0:	429a      	cmp	r2, r3
     cb2:	d110      	bne.n	cd6 <flash_erase_row+0x36>
     cb4:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     cb8:	460b      	mov	r3, r1
     cba:	f64f 74ff 	movw	r4, #65535	; 0xffff
     cbe:	f833 2b02 	ldrh.w	r2, [r3], #2
     cc2:	42a2      	cmp	r2, r4
     cc4:	d107      	bne.n	cd6 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     cc6:	429d      	cmp	r5, r3
     cc8:	d1f9      	bne.n	cbe <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     cca:	2001      	movs	r0, #1
     ccc:	e02f      	b.n	d2e <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     cce:	2000      	movs	r0, #0
     cd0:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     cd2:	2000      	movs	r0, #0
     cd4:	e02b      	b.n	d2e <flash_erase_row+0x8e>
     cd6:	4b17      	ldr	r3, [pc, #92]	; (d34 <flash_erase_row+0x94>)
     cd8:	691b      	ldr	r3, [r3, #16]
     cda:	f013 0f80 	tst.w	r3, #128	; 0x80
     cde:	d1f8      	bne.n	cd2 <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     ce0:	4b14      	ldr	r3, [pc, #80]	; (d34 <flash_erase_row+0x94>)
     ce2:	68da      	ldr	r2, [r3, #12]
     ce4:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     ce8:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     cea:	2202      	movs	r2, #2
     cec:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     cee:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     cf0:	691a      	ldr	r2, [r3, #16]
     cf2:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     cf6:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     cf8:	68da      	ldr	r2, [r3, #12]
     cfa:	f012 0f01 	tst.w	r2, #1
     cfe:	d003      	beq.n	d08 <flash_erase_row+0x68>
     d00:	68da      	ldr	r2, [r3, #12]
     d02:	f012 0f20 	tst.w	r2, #32
     d06:	d0f7      	beq.n	cf8 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     d08:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     d0a:	f64f 72ff 	movw	r2, #65535	; 0xffff
     d0e:	4293      	cmp	r3, r2
     d10:	d107      	bne.n	d22 <flash_erase_row+0x82>
     d12:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     d16:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     d1a:	4293      	cmp	r3, r2
     d1c:	d101      	bne.n	d22 <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d1e:	4281      	cmp	r1, r0
     d20:	d1f9      	bne.n	d16 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     d22:	f64f 70ff 	movw	r0, #65535	; 0xffff
     d26:	4283      	cmp	r3, r0
     d28:	bf14      	ite	ne
     d2a:	2000      	movne	r0, #0
     d2c:	2001      	moveq	r0, #1
}
     d2e:	bc30      	pop	{r4, r5}
     d30:	4770      	bx	lr
     d32:	bf00      	nop
     d34:	40022000 	.word	0x40022000

00000d38 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     d38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     d3a:	4b1c      	ldr	r3, [pc, #112]	; (dac <flash_sync+0x74>)
     d3c:	781b      	ldrb	r3, [r3, #0]
     d3e:	f013 0f01 	tst.w	r3, #1
     d42:	d102      	bne.n	d4a <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     d44:	2301      	movs	r3, #1
}
     d46:	4618      	mov	r0, r3
     d48:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     d4a:	4b18      	ldr	r3, [pc, #96]	; (dac <flash_sync+0x74>)
     d4c:	7858      	ldrb	r0, [r3, #1]
     d4e:	f7ff ffa7 	bl	ca0 <flash_erase_row>
     d52:	4603      	mov	r3, r0
     d54:	2800      	cmp	r0, #0
     d56:	d0f6      	beq.n	d46 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     d58:	4e14      	ldr	r6, [pc, #80]	; (dac <flash_sync+0x74>)
     d5a:	7875      	ldrb	r5, [r6, #1]
     d5c:	02ad      	lsls	r5, r5, #10
     d5e:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d60:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     d62:	f64f 77ff 	movw	r7, #65535	; 0xffff
     d66:	e004      	b.n	d72 <flash_sync+0x3a>
		dest++;
     d68:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d6a:	3401      	adds	r4, #1
     d6c:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     d70:	d00a      	beq.n	d88 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     d72:	f836 1b02 	ldrh.w	r1, [r6], #2
     d76:	42b9      	cmp	r1, r7
     d78:	d0f6      	beq.n	d68 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     d7a:	4628      	mov	r0, r5
     d7c:	f7ff ff76 	bl	c6c <flash_write_hword>
     d80:	2800      	cmp	r0, #0
     d82:	d1f1      	bne.n	d68 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     d84:	2c00      	cmp	r4, #0
     d86:	dd04      	ble.n	d92 <flash_sync+0x5a>
     d88:	4a08      	ldr	r2, [pc, #32]	; (dac <flash_sync+0x74>)
     d8a:	7813      	ldrb	r3, [r2, #0]
     d8c:	f023 0304 	bic.w	r3, r3, #4
     d90:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     d92:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     d96:	d106      	bne.n	da6 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     d98:	4a04      	ldr	r2, [pc, #16]	; (dac <flash_sync+0x74>)
     d9a:	7813      	ldrb	r3, [r2, #0]
     d9c:	f023 0301 	bic.w	r3, r3, #1
     da0:	7013      	strb	r3, [r2, #0]
			return 1;
     da2:	2301      	movs	r3, #1
     da4:	e7cf      	b.n	d46 <flash_sync+0xe>
		return 0;
     da6:	2300      	movs	r3, #0
     da8:	e7cd      	b.n	d46 <flash_sync+0xe>
     daa:	bf00      	nop
     dac:	20000270 	.word	0x20000270

00000db0 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     db0:	2200      	movs	r2, #0
     db2:	4b01      	ldr	r3, [pc, #4]	; (db8 <flash_flush+0x8>)
     db4:	701a      	strb	r2, [r3, #0]
     db6:	4770      	bx	lr
     db8:	20000270 	.word	0x20000270

00000dbc <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     dbc:	b508      	push	{r3, lr}
	flash_sync();
     dbe:	f7ff ffbb 	bl	d38 <flash_sync>
	row_buff.flags=0;
     dc2:	2200      	movs	r2, #0
     dc4:	4b03      	ldr	r3, [pc, #12]	; (dd4 <flash_disable+0x18>)
     dc6:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     dc8:	4a03      	ldr	r2, [pc, #12]	; (dd8 <flash_disable+0x1c>)
     dca:	6913      	ldr	r3, [r2, #16]
     dcc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     dd0:	6113      	str	r3, [r2, #16]
     dd2:	bd08      	pop	{r3, pc}
     dd4:	20000270 	.word	0x20000270
     dd8:	40022000 	.word	0x40022000

00000ddc <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     ddc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     de0:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     de4:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     de8:	d92c      	bls.n	e44 <flash_write_byte+0x68>
     dea:	460e      	mov	r6, r1
     dec:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     dee:	4b16      	ldr	r3, [pc, #88]	; (e48 <flash_write_byte+0x6c>)
     df0:	785b      	ldrb	r3, [r3, #1]
     df2:	4598      	cmp	r8, r3
     df4:	d019      	beq.n	e2a <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     df6:	f7ff ff9f 	bl	d38 <flash_sync>
     dfa:	4603      	mov	r3, r0
     dfc:	b1f8      	cbz	r0, e3e <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     dfe:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     e02:	f023 0303 	bic.w	r3, r3, #3
     e06:	4a10      	ldr	r2, [pc, #64]	; (e48 <flash_write_byte+0x6c>)
     e08:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     e0c:	f833 4b02 	ldrh.w	r4, [r3], #2
     e10:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e14:	42ab      	cmp	r3, r5
     e16:	d1f9      	bne.n	e0c <flash_write_byte+0x30>
	row_buff.row=r;
     e18:	4a0b      	ldr	r2, [pc, #44]	; (e48 <flash_write_byte+0x6c>)
     e1a:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     e1e:	7813      	ldrb	r3, [r2, #0]
     e20:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     e24:	f043 0302 	orr.w	r3, r3, #2
     e28:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     e2a:	4a07      	ldr	r2, [pc, #28]	; (e48 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     e2c:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     e30:	4413      	add	r3, r2
     e32:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     e34:	7813      	ldrb	r3, [r2, #0]
     e36:	f043 0301 	orr.w	r3, r3, #1
     e3a:	7013      	strb	r3, [r2, #0]
	return 1;
     e3c:	2301      	movs	r3, #1
}
     e3e:	4618      	mov	r0, r3
     e40:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     e44:	2300      	movs	r3, #0
     e46:	e7fa      	b.n	e3e <flash_write_byte+0x62>
     e48:	20000270 	.word	0x20000270

00000e4c <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     e4c:	2a00      	cmp	r2, #0
     e4e:	dd13      	ble.n	e78 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     e50:	b410      	push	{r4}
     e52:	4603      	mov	r3, r0
     e54:	3901      	subs	r1, #1
     e56:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     e58:	4a08      	ldr	r2, [pc, #32]	; (e7c <flash_read_block+0x30>)
     e5a:	7854      	ldrb	r4, [r2, #1]
     e5c:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     e60:	bf03      	ittte	eq
     e62:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     e66:	18a4      	addeq	r4, r4, r2
     e68:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     e6a:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     e6c:	f801 4f01 	strb.w	r4, [r1, #1]!
     e70:	3301      	adds	r3, #1
     e72:	4283      	cmp	r3, r0
     e74:	d1f1      	bne.n	e5a <flash_read_block+0xe>
}
     e76:	bc10      	pop	{r4}
     e78:	4770      	bx	lr
     e7a:	bf00      	nop
     e7c:	20000270 	.word	0x20000270

00000e80 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
     e80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<ffa) return 0;
     e82:	4b11      	ldr	r3, [pc, #68]	; (ec8 <flash_write_block+0x48>)
     e84:	681b      	ldr	r3, [r3, #0]
     e86:	4298      	cmp	r0, r3
     e88:	d202      	bcs.n	e90 <flash_write_block+0x10>
     e8a:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
     e8c:	4618      	mov	r0, r3
     e8e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     e90:	4604      	mov	r4, r0
     e92:	460e      	mov	r6, r1
     e94:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
     e96:	f7ff fec1 	bl	c1c <flash_enable>
     e9a:	4603      	mov	r3, r0
     e9c:	2800      	cmp	r0, #0
     e9e:	d0f5      	beq.n	e8c <flash_write_block+0xc>
	for (i=0;i<size;i++){
     ea0:	2f00      	cmp	r7, #0
     ea2:	dd0c      	ble.n	ebe <flash_write_block+0x3e>
     ea4:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
     ea6:	1c65      	adds	r5, r4, #1
     ea8:	f816 1b01 	ldrb.w	r1, [r6], #1
     eac:	4620      	mov	r0, r4
     eae:	f7ff ff95 	bl	ddc <flash_write_byte>
     eb2:	4603      	mov	r3, r0
     eb4:	2800      	cmp	r0, #0
     eb6:	d0e9      	beq.n	e8c <flash_write_block+0xc>
     eb8:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
     eba:	42bd      	cmp	r5, r7
     ebc:	d1f3      	bne.n	ea6 <flash_write_block+0x26>
	flash_disable();
     ebe:	f7ff ff7d 	bl	dbc <flash_disable>
	return 1;
     ec2:	2301      	movs	r3, #1
     ec4:	e7e2      	b.n	e8c <flash_write_block+0xc>
     ec6:	bf00      	nop
     ec8:	00004000 	.word	0x00004000

00000ecc <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
     ecc:	4b0a      	ldr	r3, [pc, #40]	; (ef8 <btn_mask+0x2c>)
     ece:	781b      	ldrb	r3, [r3, #0]
     ed0:	4283      	cmp	r3, r0
     ed2:	d00a      	beq.n	eea <btn_mask+0x1e>
     ed4:	4a09      	ldr	r2, [pc, #36]	; (efc <btn_mask+0x30>)
    for (i=0;i<8;i++){
     ed6:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
     ed8:	f812 1b01 	ldrb.w	r1, [r2], #1
     edc:	4281      	cmp	r1, r0
     ede:	d005      	beq.n	eec <btn_mask+0x20>
    for (i=0;i<8;i++){
     ee0:	3301      	adds	r3, #1
     ee2:	2b08      	cmp	r3, #8
     ee4:	d1f8      	bne.n	ed8 <btn_mask+0xc>
    }
    return 255;
     ee6:	20ff      	movs	r0, #255	; 0xff
}
     ee8:	4770      	bx	lr
    for (i=0;i<8;i++){
     eea:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
     eec:	2001      	movs	r0, #1
     eee:	fa00 f303 	lsl.w	r3, r0, r3
     ef2:	b2d8      	uxtb	r0, r3
     ef4:	4770      	bx	lr
     ef6:	bf00      	nop
     ef8:	20000674 	.word	0x20000674
     efc:	20000675 	.word	0x20000675

00000f00 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
     f00:	b430      	push	{r4, r5}
     f02:	4605      	mov	r5, r0
     f04:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
     f06:	2000      	movs	r0, #0
     f08:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     f0a:	4b1b      	ldr	r3, [pc, #108]	; (f78 <shift_out+0x78>)
     f0c:	e003      	b.n	f16 <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
     f0e:	0052      	lsls	r2, r2, #1
     f10:	b2d2      	uxtb	r2, r2
    while (mask){
     f12:	3c01      	subs	r4, #1
     f14:	d01d      	beq.n	f52 <shift_out+0x52>
        if (byte&mask){
     f16:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     f18:	68d9      	ldr	r1, [r3, #12]
     f1a:	bf14      	ite	ne
     f1c:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     f20:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
     f24:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     f26:	68d9      	ldr	r1, [r3, #12]
     f28:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
     f2c:	60d9      	str	r1, [r3, #12]
        _clk_delay();
     f2e:	bf00      	nop
     f30:	bf00      	nop
     f32:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     f34:	68d9      	ldr	r1, [r3, #12]
     f36:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
     f3a:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
     f3c:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
     f3e:	6899      	ldr	r1, [r3, #8]
     f40:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
     f44:	6099      	str	r1, [r3, #8]
     f46:	2900      	cmp	r1, #0
     f48:	d0e1      	beq.n	f0e <shift_out+0xe>
     f4a:	f060 007f 	orn	r0, r0, #127	; 0x7f
     f4e:	b2c0      	uxtb	r0, r0
     f50:	e7dd      	b.n	f0e <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     f52:	4b09      	ldr	r3, [pc, #36]	; (f78 <shift_out+0x78>)
     f54:	68da      	ldr	r2, [r3, #12]
     f56:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
     f5a:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     f5c:	68da      	ldr	r2, [r3, #12]
     f5e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
     f62:	60da      	str	r2, [r3, #12]
    _clk_delay();
     f64:	bf00      	nop
     f66:	bf00      	nop
     f68:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     f6a:	68da      	ldr	r2, [r3, #12]
     f6c:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
     f70:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
     f72:	bc30      	pop	{r4, r5}
     f74:	4770      	bx	lr
     f76:	bf00      	nop
     f78:	40010c00 	.word	0x40010c00

00000f7c <set_keymap>:
void set_keymap(const uint8_t *kmap){
     f7c:	1e43      	subs	r3, r0, #1
     f7e:	4a04      	ldr	r2, [pc, #16]	; (f90 <set_keymap+0x14>)
     f80:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
     f82:	f813 1f01 	ldrb.w	r1, [r3, #1]!
     f86:	f802 1f01 	strb.w	r1, [r2, #1]!
     f8a:	4283      	cmp	r3, r0
     f8c:	d1f9      	bne.n	f82 <set_keymap+0x6>
}
     f8e:	4770      	bx	lr
     f90:	20000673 	.word	0x20000673

00000f94 <gamepad_init>:
void gamepad_init(){
     f94:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
     f96:	4c0b      	ldr	r4, [pc, #44]	; (fc4 <gamepad_init+0x30>)
     f98:	2202      	movs	r2, #2
     f9a:	210f      	movs	r1, #15
     f9c:	4620      	mov	r0, r4
     f9e:	f000 fa1b 	bl	13d8 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
     fa2:	2202      	movs	r2, #2
     fa4:	210d      	movs	r1, #13
     fa6:	4620      	mov	r0, r4
     fa8:	f000 fa16 	bl	13d8 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
     fac:	2208      	movs	r2, #8
     fae:	210e      	movs	r1, #14
     fb0:	4620      	mov	r0, r4
     fb2:	f000 fa11 	bl	13d8 <config_pin>
    btn_state=0xff;
     fb6:	22ff      	movs	r2, #255	; 0xff
     fb8:	4b03      	ldr	r3, [pc, #12]	; (fc8 <gamepad_init+0x34>)
     fba:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
     fbc:	4803      	ldr	r0, [pc, #12]	; (fcc <gamepad_init+0x38>)
     fbe:	f7ff ffdd 	bl	f7c <set_keymap>
     fc2:	bd10      	pop	{r4, pc}
     fc4:	40010c00 	.word	0x40010c00
     fc8:	20002690 	.word	0x20002690
     fcc:	00003a14 	.word	0x00003a14

00000fd0 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
     fd0:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
     fd2:	20fe      	movs	r0, #254	; 0xfe
     fd4:	f7ff ff94 	bl	f00 <shift_out>
     fd8:	4b0c      	ldr	r3, [pc, #48]	; (100c <read_gamepad+0x3c>)
     fda:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
     fdc:	781b      	ldrb	r3, [r3, #0]
     fde:	f013 0f12 	tst.w	r3, #18
     fe2:	d111      	bne.n	1008 <read_gamepad+0x38>
        while (btn_state!=0xff){
     fe4:	4b09      	ldr	r3, [pc, #36]	; (100c <read_gamepad+0x3c>)
     fe6:	781b      	ldrb	r3, [r3, #0]
     fe8:	b2db      	uxtb	r3, r3
     fea:	2bff      	cmp	r3, #255	; 0xff
     fec:	d009      	beq.n	1002 <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
     fee:	25fe      	movs	r5, #254	; 0xfe
     ff0:	4c06      	ldr	r4, [pc, #24]	; (100c <read_gamepad+0x3c>)
     ff2:	4628      	mov	r0, r5
     ff4:	f7ff ff84 	bl	f00 <shift_out>
     ff8:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
     ffa:	7823      	ldrb	r3, [r4, #0]
     ffc:	b2db      	uxtb	r3, r3
     ffe:	2bff      	cmp	r3, #255	; 0xff
    1000:	d1f7      	bne.n	ff2 <read_gamepad+0x22>
        };
        _reset_mcu();
    1002:	4a03      	ldr	r2, [pc, #12]	; (1010 <read_gamepad+0x40>)
    1004:	4b03      	ldr	r3, [pc, #12]	; (1014 <read_gamepad+0x44>)
    1006:	601a      	str	r2, [r3, #0]
    1008:	bd38      	pop	{r3, r4, r5, pc}
    100a:	bf00      	nop
    100c:	20002690 	.word	0x20002690
    1010:	05fa0004 	.word	0x05fa0004
    1014:	e000ed0c 	.word	0xe000ed0c

00001018 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    1018:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    101a:	f7ff ff57 	bl	ecc <btn_mask>
    return !(btn_state&mask);
    101e:	4b03      	ldr	r3, [pc, #12]	; (102c <btn_query_down+0x14>)
    1020:	781b      	ldrb	r3, [r3, #0]
    1022:	4203      	tst	r3, r0
}
    1024:	bf0c      	ite	eq
    1026:	2001      	moveq	r0, #1
    1028:	2000      	movne	r0, #0
    102a:	bd08      	pop	{r3, pc}
    102c:	20002690 	.word	0x20002690

00001030 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    1030:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    1032:	f7ff ff4b 	bl	ecc <btn_mask>
    1036:	4606      	mov	r6, r0
    int frame_count=0;
    1038:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    103a:	4d06      	ldr	r5, [pc, #24]	; (1054 <btn_wait_down+0x24>)
    103c:	e000      	b.n	1040 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    103e:	2400      	movs	r4, #0
        frame_sync();
    1040:	f002 f90a 	bl	3258 <frame_sync>
        if (!(btn_state&mask)){
    1044:	782b      	ldrb	r3, [r5, #0]
    1046:	4233      	tst	r3, r6
    1048:	d1f9      	bne.n	103e <btn_wait_down+0xe>
            frame_count++;
    104a:	3401      	adds	r4, #1
    while (frame_count<3){
    104c:	2c02      	cmp	r4, #2
    104e:	ddf7      	ble.n	1040 <btn_wait_down+0x10>
        }
    }
}
    1050:	bd70      	pop	{r4, r5, r6, pc}
    1052:	bf00      	nop
    1054:	20002690 	.word	0x20002690

00001058 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1058:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    105a:	f7ff ff37 	bl	ecc <btn_mask>
    105e:	4606      	mov	r6, r0
    int frame_count=0;
    1060:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    1062:	4d06      	ldr	r5, [pc, #24]	; (107c <btn_wait_up+0x24>)
    1064:	e000      	b.n	1068 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    1066:	2400      	movs	r4, #0
        frame_sync();
    1068:	f002 f8f6 	bl	3258 <frame_sync>
        if ((btn_state&mask)){
    106c:	782b      	ldrb	r3, [r5, #0]
    106e:	4233      	tst	r3, r6
    1070:	d0f9      	beq.n	1066 <btn_wait_up+0xe>
            frame_count++;
    1072:	3401      	adds	r4, #1
    while (frame_count<3){
    1074:	2c02      	cmp	r4, #2
    1076:	ddf7      	ble.n	1068 <btn_wait_up+0x10>
        }
    }
}
    1078:	bd70      	pop	{r4, r5, r6, pc}
    107a:	bf00      	nop
    107c:	20002690 	.word	0x20002690

00001080 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1080:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    1082:	4b15      	ldr	r3, [pc, #84]	; (10d8 <btn_wait_any+0x58>)
    1084:	781c      	ldrb	r4, [r3, #0]
    1086:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1088:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    108a:	461d      	mov	r5, r3
    108c:	e007      	b.n	109e <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    108e:	782a      	ldrb	r2, [r5, #0]
    1090:	b2d2      	uxtb	r2, r2
    1092:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1094:	bf18      	it	ne
    1096:	3601      	addne	r6, #1
    while (frame_count<3){
    1098:	2e02      	cmp	r6, #2
    109a:	dc0a      	bgt.n	10b2 <btn_wait_any+0x32>
    109c:	461c      	mov	r4, r3
        frame_sync();
    109e:	f002 f8db 	bl	3258 <frame_sync>
        if (last_state!=btn_state){
    10a2:	782b      	ldrb	r3, [r5, #0]
    10a4:	b2db      	uxtb	r3, r3
    10a6:	42a3      	cmp	r3, r4
    10a8:	d0f1      	beq.n	108e <btn_wait_any+0xe>
            last_state=btn_state;
    10aa:	782c      	ldrb	r4, [r5, #0]
    10ac:	b2e4      	uxtb	r4, r4
            frame_count=0;
    10ae:	2600      	movs	r6, #0
    10b0:	e7f5      	b.n	109e <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    10b2:	43e3      	mvns	r3, r4
    mask>>=1;
    10b4:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    10b8:	b15b      	cbz	r3, 10d2 <btn_wait_any+0x52>
    10ba:	2200      	movs	r2, #0
    10bc:	3201      	adds	r2, #1
    10be:	b2d2      	uxtb	r2, r2
    10c0:	085b      	lsrs	r3, r3, #1
    10c2:	d1fb      	bne.n	10bc <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    10c4:	4b05      	ldr	r3, [pc, #20]	; (10dc <btn_wait_any+0x5c>)
    10c6:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    10c8:	4620      	mov	r0, r4
    10ca:	f7ff ffc5 	bl	1058 <btn_wait_up>
    return btn;
}
    10ce:	4620      	mov	r0, r4
    10d0:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    10d2:	461a      	mov	r2, r3
    10d4:	e7f6      	b.n	10c4 <btn_wait_any+0x44>
    10d6:	bf00      	nop
    10d8:	20002690 	.word	0x20002690
    10dc:	20000674 	.word	0x20000674

000010e0 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    10e0:	4b01      	ldr	r3, [pc, #4]	; (10e8 <btn_set_value+0x8>)
    10e2:	5419      	strb	r1, [r3, r0]
    10e4:	4770      	bx	lr
    10e6:	bf00      	nop
    10e8:	20000674 	.word	0x20000674

000010ec <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    10ec:	4800      	ldr	r0, [pc, #0]	; (10f0 <get_keymap+0x4>)
    10ee:	4770      	bx	lr
    10f0:	20000674 	.word	0x20000674

000010f4 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    10f4:	4b06      	ldr	r3, [pc, #24]	; (1110 <games_count+0x1c>)
    10f6:	691b      	ldr	r3, [r3, #16]
    10f8:	b13b      	cbz	r3, 110a <games_count+0x16>
    10fa:	4b05      	ldr	r3, [pc, #20]	; (1110 <games_count+0x1c>)
    10fc:	2000      	movs	r0, #0
    for (i=0;;i++){
    10fe:	3001      	adds	r0, #1
    1100:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    1102:	691a      	ldr	r2, [r3, #16]
    1104:	2a00      	cmp	r2, #0
    1106:	d1fa      	bne.n	10fe <games_count+0xa>
    1108:	4770      	bx	lr
    for (i=0;;i++){
    110a:	2000      	movs	r0, #0
    }
    return i;
}
    110c:	4770      	bx	lr
    110e:	bf00      	nop
    1110:	20000004 	.word	0x20000004

00001114 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    1114:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    1116:	7803      	ldrb	r3, [r0, #0]
    1118:	b1fb      	cbz	r3, 115a <strcmp+0x46>
    111a:	780a      	ldrb	r2, [r1, #0]
    111c:	b17a      	cbz	r2, 113e <strcmp+0x2a>
		if (*s1<*s2){
    111e:	4293      	cmp	r3, r2
    1120:	d313      	bcc.n	114a <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    1122:	d815      	bhi.n	1150 <strcmp+0x3c>
    1124:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    1126:	4621      	mov	r1, r4
	while (*s1 && *s2){
    1128:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    112c:	b1ab      	cbz	r3, 115a <strcmp+0x46>
    112e:	f814 2b01 	ldrb.w	r2, [r4], #1
    1132:	b122      	cbz	r2, 113e <strcmp+0x2a>
		if (*s1<*s2){
    1134:	4293      	cmp	r3, r2
    1136:	d30d      	bcc.n	1154 <strcmp+0x40>
		}else if (*s1>*s2){
    1138:	d9f5      	bls.n	1126 <strcmp+0x12>
			result=1;
    113a:	2001      	movs	r0, #1
    113c:	e003      	b.n	1146 <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    113e:	7808      	ldrb	r0, [r1, #0]
    1140:	fab0 f080 	clz	r0, r0
    1144:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    1146:	bc10      	pop	{r4}
    1148:	4770      	bx	lr
			result=-1;
    114a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    114e:	e7fa      	b.n	1146 <strcmp+0x32>
			result=1;
    1150:	2001      	movs	r0, #1
    1152:	e7f8      	b.n	1146 <strcmp+0x32>
			result=-1;
    1154:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1158:	e7f5      	b.n	1146 <strcmp+0x32>
		if (!*s1 && *s2){
    115a:	7808      	ldrb	r0, [r1, #0]
    115c:	3000      	adds	r0, #0
    115e:	bf18      	it	ne
    1160:	2001      	movne	r0, #1
    1162:	4240      	negs	r0, r0
    1164:	e7ef      	b.n	1146 <strcmp+0x32>

00001166 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1166:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    116a:	b2db      	uxtb	r3, r3
    116c:	2b19      	cmp	r3, #25
    116e:	d906      	bls.n	117e <alpha+0x18>
    1170:	3841      	subs	r0, #65	; 0x41
    1172:	b2c0      	uxtb	r0, r0
    1174:	2819      	cmp	r0, #25
    1176:	bf8c      	ite	hi
    1178:	2000      	movhi	r0, #0
    117a:	2001      	movls	r0, #1
    117c:	4770      	bx	lr
    117e:	2001      	movs	r0, #1
}
    1180:	4770      	bx	lr

00001182 <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    1182:	3830      	subs	r0, #48	; 0x30
    1184:	b2c0      	uxtb	r0, r0
}
    1186:	2809      	cmp	r0, #9
    1188:	bf8c      	ite	hi
    118a:	2000      	movhi	r0, #0
    118c:	2001      	movls	r0, #1
    118e:	4770      	bx	lr

00001190 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1190:	2860      	cmp	r0, #96	; 0x60
    1192:	bf84      	itt	hi
    1194:	3820      	subhi	r0, #32
    1196:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1198:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    119c:	b2db      	uxtb	r3, r3
    119e:	2b09      	cmp	r3, #9
    11a0:	d906      	bls.n	11b0 <hexdigit+0x20>
    11a2:	3841      	subs	r0, #65	; 0x41
    11a4:	b2c0      	uxtb	r0, r0
    11a6:	2805      	cmp	r0, #5
    11a8:	bf8c      	ite	hi
    11aa:	2000      	movhi	r0, #0
    11ac:	2001      	movls	r0, #1
    11ae:	4770      	bx	lr
    11b0:	2001      	movs	r0, #1
}
    11b2:	4770      	bx	lr

000011b4 <atoi>:

int atoi(const char *str){
    11b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    11b8:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    11ba:	7803      	ldrb	r3, [r0, #0]
    11bc:	2b20      	cmp	r3, #32
    11be:	d103      	bne.n	11c8 <atoi+0x14>
    11c0:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    11c4:	2b20      	cmp	r3, #32
    11c6:	d0fb      	beq.n	11c0 <atoi+0xc>
	if (*str=='-'){
    11c8:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    11ca:	bf06      	itte	eq
    11cc:	3501      	addeq	r5, #1
		sign=-1;
    11ce:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    11d2:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    11d6:	782b      	ldrb	r3, [r5, #0]
    11d8:	2b24      	cmp	r3, #36	; 0x24
    11da:	d005      	beq.n	11e8 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    11dc:	2b30      	cmp	r3, #48	; 0x30
    11de:	d00a      	beq.n	11f6 <atoi+0x42>
	int n=0,sign=1,base=10;
    11e0:	270a      	movs	r7, #10
    11e2:	3d01      	subs	r5, #1
    11e4:	2600      	movs	r6, #0
    11e6:	e026      	b.n	1236 <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    11e8:	7868      	ldrb	r0, [r5, #1]
    11ea:	f7ff ffd1 	bl	1190 <hexdigit>
    11ee:	b160      	cbz	r0, 120a <atoi+0x56>
		str++;
    11f0:	3501      	adds	r5, #1
		base=16;
    11f2:	2710      	movs	r7, #16
		str++;
    11f4:	e7f5      	b.n	11e2 <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    11f6:	786b      	ldrb	r3, [r5, #1]
    11f8:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    11fc:	2b58      	cmp	r3, #88	; 0x58
    11fe:	d001      	beq.n	1204 <atoi+0x50>
	int n=0,sign=1,base=10;
    1200:	270a      	movs	r7, #10
    1202:	e7ee      	b.n	11e2 <atoi+0x2e>
		base=16;
		str+=2;
    1204:	3502      	adds	r5, #2
		base=16;
    1206:	2710      	movs	r7, #16
    1208:	e7eb      	b.n	11e2 <atoi+0x2e>
	int n=0,sign=1,base=10;
    120a:	270a      	movs	r7, #10
    120c:	e7e9      	b.n	11e2 <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    120e:	4620      	mov	r0, r4
    1210:	f7ff ffbe 	bl	1190 <hexdigit>
    1214:	3000      	adds	r0, #0
    1216:	bf18      	it	ne
    1218:	2001      	movne	r0, #1
    121a:	b1d0      	cbz	r0, 1252 <atoi+0x9e>
		if (c>='a'){c-=32;}
    121c:	2c60      	cmp	r4, #96	; 0x60
    121e:	bf84      	itt	hi
    1220:	3c20      	subhi	r4, #32
    1222:	b2e4      	uxtbhi	r4, r4
		c-='0';
    1224:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    1228:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    122a:	2b09      	cmp	r3, #9
    122c:	bf84      	itt	hi
    122e:	3c37      	subhi	r4, #55	; 0x37
    1230:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    1232:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1236:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    123a:	2c00      	cmp	r4, #0
    123c:	d0e7      	beq.n	120e <atoi+0x5a>
    123e:	2f0a      	cmp	r7, #10
    1240:	d1e5      	bne.n	120e <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    1242:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    1246:	b2c0      	uxtb	r0, r0
    1248:	2809      	cmp	r0, #9
    124a:	bf8c      	ite	hi
    124c:	2000      	movhi	r0, #0
    124e:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1250:	e7e3      	b.n	121a <atoi+0x66>
		str++;
	}
	return sign*n;
}
    1252:	fb08 f006 	mul.w	r0, r8, r6
    1256:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0000125a <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    125a:	b13a      	cbz	r2, 126c <move+0x12>
    125c:	3901      	subs	r1, #1
    125e:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1260:	f810 3b01 	ldrb.w	r3, [r0], #1
    1264:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1268:	4290      	cmp	r0, r2
    126a:	d1f9      	bne.n	1260 <move+0x6>
    126c:	4770      	bx	lr

0000126e <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    126e:	7803      	ldrb	r3, [r0, #0]
    1270:	b13b      	cbz	r3, 1282 <strlen+0x14>
    1272:	4603      	mov	r3, r0
    1274:	2000      	movs	r0, #0
    1276:	3001      	adds	r0, #1
    1278:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    127c:	2a00      	cmp	r2, #0
    127e:	d1fa      	bne.n	1276 <strlen+0x8>
    1280:	4770      	bx	lr
	int ll=0;
    1282:	2000      	movs	r0, #0
	return ll;
}
    1284:	4770      	bx	lr

00001286 <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1286:	b121      	cbz	r1, 1292 <fill+0xc>
    1288:	1841      	adds	r1, r0, r1
    128a:	f800 2b01 	strb.w	r2, [r0], #1
    128e:	4288      	cmp	r0, r1
    1290:	d1fb      	bne.n	128a <fill+0x4>
    1292:	4770      	bx	lr

00001294 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1294:	3861      	subs	r0, #97	; 0x61
    1296:	b2c0      	uxtb	r0, r0
}
    1298:	2819      	cmp	r0, #25
    129a:	bf8c      	ite	hi
    129c:	2000      	movhi	r0, #0
    129e:	2001      	movls	r0, #1
    12a0:	4770      	bx	lr

000012a2 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    12a2:	3841      	subs	r0, #65	; 0x41
    12a4:	b2c0      	uxtb	r0, r0
}
    12a6:	2819      	cmp	r0, #25
    12a8:	bf8c      	ite	hi
    12aa:	2000      	movhi	r0, #0
    12ac:	2001      	movls	r0, #1
    12ae:	4770      	bx	lr

000012b0 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    12b0:	7803      	ldrb	r3, [r0, #0]
    12b2:	b153      	cbz	r3, 12ca <uppercase+0x1a>
	return (c>='a') && (c<='z');
    12b4:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    12b8:	b2d2      	uxtb	r2, r2
    12ba:	2a19      	cmp	r2, #25
    12bc:	bf9c      	itt	ls
    12be:	3b20      	subls	r3, #32
    12c0:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    12c2:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    12c6:	2b00      	cmp	r3, #0
    12c8:	d1f4      	bne.n	12b4 <uppercase+0x4>
    12ca:	4770      	bx	lr

000012cc <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    12cc:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    12ce:	1844      	adds	r4, r0, r1
    12d0:	5c43      	ldrb	r3, [r0, r1]
    12d2:	b153      	cbz	r3, 12ea <scan+0x1e>
    12d4:	429a      	cmp	r2, r3
    12d6:	d00a      	beq.n	12ee <scan+0x22>
    12d8:	4608      	mov	r0, r1
    12da:	3001      	adds	r0, #1
    12dc:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    12e0:	b10b      	cbz	r3, 12e6 <scan+0x1a>
    12e2:	4293      	cmp	r3, r2
    12e4:	d1f9      	bne.n	12da <scan+0xe>
	return start;
}
    12e6:	bc10      	pop	{r4}
    12e8:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    12ea:	4608      	mov	r0, r1
    12ec:	e7fb      	b.n	12e6 <scan+0x1a>
    12ee:	4608      	mov	r0, r1
	return start;
    12f0:	e7f9      	b.n	12e6 <scan+0x1a>

000012f2 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    12f2:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    12f4:	1844      	adds	r4, r0, r1
    12f6:	5c43      	ldrb	r3, [r0, r1]
    12f8:	b153      	cbz	r3, 1310 <skip+0x1e>
    12fa:	429a      	cmp	r2, r3
    12fc:	d10a      	bne.n	1314 <skip+0x22>
    12fe:	4608      	mov	r0, r1
    1300:	3001      	adds	r0, #1
    1302:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    1306:	b10b      	cbz	r3, 130c <skip+0x1a>
    1308:	4293      	cmp	r3, r2
    130a:	d0f9      	beq.n	1300 <skip+0xe>
	return start;
}
    130c:	bc10      	pop	{r4}
    130e:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    1310:	4608      	mov	r0, r1
    1312:	e7fb      	b.n	130c <skip+0x1a>
    1314:	4608      	mov	r0, r1
	return start;
    1316:	e7f9      	b.n	130c <skip+0x1a>

00001318 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    1318:	b538      	push	{r3, r4, r5, lr}
    131a:	4604      	mov	r4, r0
    131c:	460d      	mov	r5, r1
	s1+=strlen(s1);
    131e:	f7ff ffa6 	bl	126e <strlen>
    1322:	4420      	add	r0, r4
	while (*s2){
    1324:	782b      	ldrb	r3, [r5, #0]
    1326:	b133      	cbz	r3, 1336 <strcat+0x1e>
    1328:	4629      	mov	r1, r5
		*s1++=*s2++;
    132a:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    132e:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    1332:	2b00      	cmp	r3, #0
    1334:	d1f9      	bne.n	132a <strcat+0x12>
	}
	*s1=0;
    1336:	2300      	movs	r3, #0
    1338:	7003      	strb	r3, [r0, #0]
	return s1;
}
    133a:	bd38      	pop	{r3, r4, r5, pc}

0000133c <itoa>:

char *itoa(int n,char *buffer,int base){
    133c:	b5f0      	push	{r4, r5, r6, r7, lr}
    133e:	b085      	sub	sp, #20
    1340:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    1342:	2a0a      	cmp	r2, #10
    1344:	d033      	beq.n	13ae <itoa+0x72>
	int i=14,sign=0;
    1346:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    1348:	2300      	movs	r3, #0
    134a:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    134e:	2320      	movs	r3, #32
    1350:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    1354:	b390      	cbz	r0, 13bc <itoa+0x80>
    1356:	f10d 060d 	add.w	r6, sp, #13
    135a:	250e      	movs	r5, #14
		d=n%base+'0';
    135c:	fb90 f3f2 	sdiv	r3, r0, r2
    1360:	fb02 0313 	mls	r3, r2, r3, r0
    1364:	b2db      	uxtb	r3, r3
    1366:	f103 0130 	add.w	r1, r3, #48	; 0x30
    136a:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    136c:	2939      	cmp	r1, #57	; 0x39
    136e:	bf84      	itt	hi
    1370:	3337      	addhi	r3, #55	; 0x37
    1372:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1374:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1378:	3d01      	subs	r5, #1
    137a:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    137e:	2800      	cmp	r0, #0
    1380:	d1ec      	bne.n	135c <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    1382:	2d0e      	cmp	r5, #14
    1384:	d01a      	beq.n	13bc <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    1386:	2a0a      	cmp	r2, #10
    1388:	d01d      	beq.n	13c6 <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    138a:	2a10      	cmp	r2, #16
    138c:	d105      	bne.n	139a <itoa+0x5e>
    138e:	3d01      	subs	r5, #1
    1390:	ab04      	add	r3, sp, #16
    1392:	442b      	add	r3, r5
    1394:	2224      	movs	r2, #36	; 0x24
    1396:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    139a:	f1c5 0210 	rsb	r2, r5, #16
    139e:	4621      	mov	r1, r4
    13a0:	eb0d 0005 	add.w	r0, sp, r5
    13a4:	f7ff ff59 	bl	125a <move>
	return buffer;
    13a8:	4620      	mov	r0, r4
    13aa:	b005      	add	sp, #20
    13ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    13ae:	2800      	cmp	r0, #0
    13b0:	db01      	blt.n	13b6 <itoa+0x7a>
	int i=14,sign=0;
    13b2:	2700      	movs	r7, #0
    13b4:	e7c8      	b.n	1348 <itoa+0xc>
		n=-n;
    13b6:	4240      	negs	r0, r0
		sign=1;
    13b8:	2701      	movs	r7, #1
    13ba:	e7c5      	b.n	1348 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    13bc:	2330      	movs	r3, #48	; 0x30
    13be:	f88d 300d 	strb.w	r3, [sp, #13]
    13c2:	250d      	movs	r5, #13
    13c4:	e7df      	b.n	1386 <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    13c6:	2f00      	cmp	r7, #0
    13c8:	d0e7      	beq.n	139a <itoa+0x5e>
    13ca:	3d01      	subs	r5, #1
    13cc:	ab04      	add	r3, sp, #16
    13ce:	442b      	add	r3, r5
    13d0:	222d      	movs	r2, #45	; 0x2d
    13d2:	f803 2c10 	strb.w	r2, [r3, #-16]
    13d6:	e7e0      	b.n	139a <itoa+0x5e>

000013d8 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    13d8:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    13da:	08cb      	lsrs	r3, r1, #3
    13dc:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    13e0:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    13e2:	f001 011c 	and.w	r1, r1, #28
    13e6:	250f      	movs	r5, #15
    13e8:	408d      	lsls	r5, r1
    13ea:	ea24 0405 	bic.w	r4, r4, r5
    13ee:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    13f2:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    13f6:	fa02 f101 	lsl.w	r1, r2, r1
    13fa:	4321      	orrs	r1, r4
    13fc:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    1400:	bc30      	pop	{r4, r5}
    1402:	4770      	bx	lr

00001404 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    1404:	6880      	ldr	r0, [r0, #8]
    1406:	2301      	movs	r3, #1
    1408:	fa03 f101 	lsl.w	r1, r3, r1
}
    140c:	4008      	ands	r0, r1
    140e:	4770      	bx	lr

00001410 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    1410:	b93a      	cbnz	r2, 1422 <write_pin+0x12>
    1412:	68c3      	ldr	r3, [r0, #12]
    1414:	2201      	movs	r2, #1
    1416:	fa02 f101 	lsl.w	r1, r2, r1
    141a:	ea23 0101 	bic.w	r1, r3, r1
    141e:	60c1      	str	r1, [r0, #12]
    1420:	4770      	bx	lr
    1422:	68c2      	ldr	r2, [r0, #12]
    1424:	2301      	movs	r3, #1
    1426:	fa03 f101 	lsl.w	r1, r3, r1
    142a:	4311      	orrs	r1, r2
    142c:	60c1      	str	r1, [r0, #12]
    142e:	4770      	bx	lr

00001430 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    1430:	68c2      	ldr	r2, [r0, #12]
    1432:	2301      	movs	r3, #1
    1434:	fa03 f101 	lsl.w	r1, r3, r1
    1438:	4051      	eors	r1, r2
    143a:	60c1      	str	r1, [r0, #12]
    143c:	4770      	bx	lr
	...

00001440 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    1440:	4b04      	ldr	r3, [pc, #16]	; (1454 <set_palette+0x14>)
    1442:	7802      	ldrb	r2, [r0, #0]
    1444:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    1446:	7842      	ldrb	r2, [r0, #1]
    1448:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    144a:	7882      	ldrb	r2, [r0, #2]
    144c:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    144e:	78c2      	ldrb	r2, [r0, #3]
    1450:	70da      	strb	r2, [r3, #3]
    1452:	4770      	bx	lr
    1454:	2000018c 	.word	0x2000018c

00001458 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    1458:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    145a:	4604      	mov	r4, r0
    145c:	460e      	mov	r6, r1
    145e:	4615      	mov	r5, r2
    1460:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    1462:	f001 ff33 	bl	32cc <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1466:	2c00      	cmp	r4, #0
    1468:	db38      	blt.n	14dc <gfx_blit+0x84>
    146a:	8983      	ldrh	r3, [r0, #12]
    146c:	429c      	cmp	r4, r3
    146e:	da37      	bge.n	14e0 <gfx_blit+0x88>
    1470:	2e00      	cmp	r6, #0
    1472:	db37      	blt.n	14e4 <gfx_blit+0x8c>
    1474:	89c3      	ldrh	r3, [r0, #14]
    1476:	429e      	cmp	r6, r3
    1478:	da36      	bge.n	14e8 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    147a:	7a03      	ldrb	r3, [r0, #8]
    147c:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1480:	1052      	asrs	r2, r2, #1
    1482:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    1486:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    148a:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    148e:	bf06      	itte	eq
    1490:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    1492:	220f      	moveq	r2, #15
    mask=0xf0;
    1494:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    1496:	4b15      	ldr	r3, [pc, #84]	; (14ec <gfx_blit+0x94>)
    1498:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    149a:	2f04      	cmp	r7, #4
    149c:	d805      	bhi.n	14aa <gfx_blit+0x52>
    149e:	e8df f007 	tbb	[pc, r7]
    14a2:	1003      	.short	0x1003
    14a4:	1412      	.short	0x1412
    14a6:	18          	.byte	0x18
    14a7:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    14a8:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    14aa:	4910      	ldr	r1, [pc, #64]	; (14ec <gfx_blit+0x94>)
    14ac:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    14ae:	ea23 0302 	bic.w	r3, r3, r2
    14b2:	fab0 f080 	clz	r0, r0
    14b6:	0940      	lsrs	r0, r0, #5
    14b8:	4283      	cmp	r3, r0
    14ba:	bf14      	ite	ne
    14bc:	2000      	movne	r0, #0
    14be:	2001      	moveq	r0, #1
    14c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    14c2:	4003      	ands	r3, r0
        break;
    14c4:	e7f1      	b.n	14aa <gfx_blit+0x52>
        byte^=color;
    14c6:	4043      	eors	r3, r0
        break;
    14c8:	e7ef      	b.n	14aa <gfx_blit+0x52>
        byte^=~mask;
    14ca:	43d4      	mvns	r4, r2
    14cc:	405c      	eors	r4, r3
    14ce:	b2e3      	uxtb	r3, r4
        break;
    14d0:	e7eb      	b.n	14aa <gfx_blit+0x52>
        byte &=mask;
    14d2:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    14d6:	ea40 0304 	orr.w	r3, r0, r4
        break;
    14da:	e7e6      	b.n	14aa <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    14dc:	2000      	movs	r0, #0
    14de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    14e0:	2000      	movs	r0, #0
    14e2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    14e4:	2000      	movs	r0, #0
    14e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    14e8:	2000      	movs	r0, #0
}
    14ea:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    14ec:	200026bc 	.word	0x200026bc

000014f0 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    14f0:	b570      	push	{r4, r5, r6, lr}
    14f2:	4604      	mov	r4, r0
    14f4:	460e      	mov	r6, r1
    14f6:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    14f8:	f001 fee8 	bl	32cc <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    14fc:	2c00      	cmp	r4, #0
    14fe:	db1d      	blt.n	153c <gfx_plot+0x4c>
    1500:	8983      	ldrh	r3, [r0, #12]
    1502:	429c      	cmp	r4, r3
    1504:	da1a      	bge.n	153c <gfx_plot+0x4c>
    1506:	2e00      	cmp	r6, #0
    1508:	db18      	blt.n	153c <gfx_plot+0x4c>
    150a:	89c3      	ldrh	r3, [r0, #14]
    150c:	429e      	cmp	r6, r3
    150e:	da15      	bge.n	153c <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    1510:	7a03      	ldrb	r3, [r0, #8]
    1512:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1516:	1052      	asrs	r2, r2, #1
    1518:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    151c:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    1520:	4b07      	ldr	r3, [pc, #28]	; (1540 <gfx_plot+0x50>)
    1522:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    1524:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    1528:	bf19      	ittee	ne
    152a:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    152e:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    1530:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    1534:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    1538:	4b01      	ldr	r3, [pc, #4]	; (1540 <gfx_plot+0x50>)
    153a:	559d      	strb	r5, [r3, r6]
    153c:	bd70      	pop	{r4, r5, r6, pc}
    153e:	bf00      	nop
    1540:	200026bc 	.word	0x200026bc

00001544 <gfx_cls>:
}

void gfx_cls(){
    1544:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    1546:	f001 fec1 	bl	32cc <get_video_params>
    154a:	4b06      	ldr	r3, [pc, #24]	; (1564 <gfx_cls+0x20>)
    154c:	4906      	ldr	r1, [pc, #24]	; (1568 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    154e:	2200      	movs	r2, #0
    1550:	f803 2f01 	strb.w	r2, [r3, #1]!
    1554:	428b      	cmp	r3, r1
    1556:	d1fb      	bne.n	1550 <gfx_cls+0xc>
    set_cursor(0,0);
    1558:	2100      	movs	r1, #0
    155a:	4608      	mov	r0, r1
    155c:	f001 fb70 	bl	2c40 <set_cursor>
    1560:	bd08      	pop	{r3, pc}
    1562:	bf00      	nop
    1564:	200026bb 	.word	0x200026bb
    1568:	20004e1b 	.word	0x20004e1b

0000156c <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    156c:	b570      	push	{r4, r5, r6, lr}
    156e:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1570:	f001 feac 	bl	32cc <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    1574:	7a06      	ldrb	r6, [r0, #8]
    1576:	4b0f      	ldr	r3, [pc, #60]	; (15b4 <gfx_scroll_up+0x48>)
    1578:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    157c:	89c2      	ldrh	r2, [r0, #14]
    157e:	1b12      	subs	r2, r2, r4
    1580:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    1584:	b1a6      	cbz	r6, 15b0 <gfx_scroll_up+0x44>
    1586:	4a0b      	ldr	r2, [pc, #44]	; (15b4 <gfx_scroll_up+0x48>)
    1588:	199d      	adds	r5, r3, r6
    158a:	f813 1b01 	ldrb.w	r1, [r3], #1
    158e:	f802 1b01 	strb.w	r1, [r2], #1
    1592:	42ab      	cmp	r3, r5
    1594:	d1f9      	bne.n	158a <gfx_scroll_up+0x1e>
    1596:	4b07      	ldr	r3, [pc, #28]	; (15b4 <gfx_scroll_up+0x48>)
    1598:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    159a:	7a02      	ldrb	r2, [r0, #8]
    159c:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    15a0:	b12a      	cbz	r2, 15ae <gfx_scroll_up+0x42>
    15a2:	441a      	add	r2, r3
    15a4:	2100      	movs	r1, #0
    15a6:	f803 1b01 	strb.w	r1, [r3], #1
    15aa:	4293      	cmp	r3, r2
    15ac:	d1fb      	bne.n	15a6 <gfx_scroll_up+0x3a>
    15ae:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    15b0:	4b00      	ldr	r3, [pc, #0]	; (15b4 <gfx_scroll_up+0x48>)
    15b2:	e7f2      	b.n	159a <gfx_scroll_up+0x2e>
    15b4:	200026bc 	.word	0x200026bc

000015b8 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    15b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    15ba:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    15bc:	f001 fe86 	bl	32cc <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    15c0:	89c3      	ldrh	r3, [r0, #14]
    15c2:	7a04      	ldrb	r4, [r0, #8]
    15c4:	1b5f      	subs	r7, r3, r5
    15c6:	fb04 f707 	mul.w	r7, r4, r7
    15ca:	490c      	ldr	r1, [pc, #48]	; (15fc <gfx_scroll_down+0x44>)
    15cc:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    15ce:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    15d2:	b147      	cbz	r7, 15e6 <gfx_scroll_down+0x2e>
    15d4:	4619      	mov	r1, r3
    15d6:	4e09      	ldr	r6, [pc, #36]	; (15fc <gfx_scroll_down+0x44>)
    15d8:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    15dc:	f801 4d01 	strb.w	r4, [r1, #-1]!
    15e0:	42b2      	cmp	r2, r6
    15e2:	d1f9      	bne.n	15d8 <gfx_scroll_down+0x20>
    15e4:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    15e6:	7a02      	ldrb	r2, [r0, #8]
    15e8:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    15ec:	b12a      	cbz	r2, 15fa <gfx_scroll_down+0x42>
    15ee:	1a9a      	subs	r2, r3, r2
    15f0:	2100      	movs	r1, #0
    15f2:	f803 1d01 	strb.w	r1, [r3, #-1]!
    15f6:	4293      	cmp	r3, r2
    15f8:	d1fb      	bne.n	15f2 <gfx_scroll_down+0x3a>
    15fa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    15fc:	200026bc 	.word	0x200026bc

00001600 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    1600:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1604:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    1606:	f001 fe61 	bl	32cc <get_video_params>
    for (y=0;y<vparams->vres;y++){
    160a:	89c3      	ldrh	r3, [r0, #14]
    160c:	b30b      	cbz	r3, 1652 <gfx_scroll_left+0x52>
    160e:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    1612:	f8df 8044 	ldr.w	r8, [pc, #68]	; 1658 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    1616:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    1618:	7a03      	ldrb	r3, [r0, #8]
    161a:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    161e:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    1620:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    1622:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    1626:	d009      	beq.n	163c <gfx_scroll_left+0x3c>
    1628:	1e59      	subs	r1, r3, #1
    162a:	eb02 050e 	add.w	r5, r2, lr
    162e:	f812 4b01 	ldrb.w	r4, [r2], #1
    1632:	f801 4f01 	strb.w	r4, [r1, #1]!
    1636:	4295      	cmp	r5, r2
    1638:	d1f9      	bne.n	162e <gfx_scroll_left+0x2e>
    163a:	4473      	add	r3, lr
        while (size--) *dest++=0;
    163c:	b126      	cbz	r6, 1648 <gfx_scroll_left+0x48>
    163e:	199a      	adds	r2, r3, r6
    1640:	f803 7b01 	strb.w	r7, [r3], #1
    1644:	4293      	cmp	r3, r2
    1646:	d1fb      	bne.n	1640 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    1648:	f10c 0c01 	add.w	ip, ip, #1
    164c:	89c3      	ldrh	r3, [r0, #14]
    164e:	4563      	cmp	r3, ip
    1650:	dce2      	bgt.n	1618 <gfx_scroll_left+0x18>
    1652:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    1656:	bf00      	nop
    1658:	200026bc 	.word	0x200026bc

0000165c <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    165c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1660:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    1662:	f001 fe33 	bl	32cc <get_video_params>
    for (y=0;y<vparams->vres;y++){
    1666:	89c3      	ldrh	r3, [r0, #14]
    1668:	b33b      	cbz	r3, 16ba <gfx_scroll_right+0x5e>
    166a:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    166e:	f8df 8050 	ldr.w	r8, [pc, #80]	; 16c0 <gfx_scroll_right+0x64>
        src=dest-n;
    1672:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    1676:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1678:	7a03      	ldrb	r3, [r0, #8]
    167a:	fb0e 3303 	mla	r3, lr, r3, r3
    167e:	4443      	add	r3, r8
        src=dest-n;
    1680:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    1684:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    1686:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    168a:	d00a      	beq.n	16a2 <gfx_scroll_right+0x46>
    168c:	4619      	mov	r1, r3
    168e:	eba2 0609 	sub.w	r6, r2, r9
    1692:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1696:	f801 4d01 	strb.w	r4, [r1, #-1]!
    169a:	42b2      	cmp	r2, r6
    169c:	d1f9      	bne.n	1692 <gfx_scroll_right+0x36>
    169e:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    16a2:	b12d      	cbz	r5, 16b0 <gfx_scroll_right+0x54>
    16a4:	eb03 020c 	add.w	r2, r3, ip
    16a8:	f803 7d01 	strb.w	r7, [r3, #-1]!
    16ac:	429a      	cmp	r2, r3
    16ae:	d1fb      	bne.n	16a8 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    16b0:	f10e 0e01 	add.w	lr, lr, #1
    16b4:	89c3      	ldrh	r3, [r0, #14]
    16b6:	4573      	cmp	r3, lr
    16b8:	dcde      	bgt.n	1678 <gfx_scroll_right+0x1c>
    16ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    16be:	bf00      	nop
    16c0:	200026bc 	.word	0x200026bc

000016c4 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    16c4:	b538      	push	{r3, r4, r5, lr}
    16c6:	4604      	mov	r4, r0
    16c8:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    16ca:	f001 fdff 	bl	32cc <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    16ce:	2c00      	cmp	r4, #0
    16d0:	db18      	blt.n	1704 <gfx_get_pixel+0x40>
    16d2:	8983      	ldrh	r3, [r0, #12]
    16d4:	429c      	cmp	r4, r3
    16d6:	db01      	blt.n	16dc <gfx_get_pixel+0x18>
    16d8:	20ff      	movs	r0, #255	; 0xff
    16da:	bd38      	pop	{r3, r4, r5, pc}
    16dc:	2d00      	cmp	r5, #0
    16de:	db13      	blt.n	1708 <gfx_get_pixel+0x44>
    16e0:	89c3      	ldrh	r3, [r0, #14]
    16e2:	429d      	cmp	r5, r3
    16e4:	db01      	blt.n	16ea <gfx_get_pixel+0x26>
    16e6:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    16e8:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    16ea:	7a03      	ldrb	r3, [r0, #8]
    16ec:	1062      	asrs	r2, r4, #1
    16ee:	4907      	ldr	r1, [pc, #28]	; (170c <gfx_get_pixel+0x48>)
    16f0:	fb05 1503 	mla	r5, r5, r3, r1
    16f4:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    16f6:	f014 0f01 	tst.w	r4, #1
    16fa:	bf08      	it	eq
    16fc:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    16fe:	f000 000f 	and.w	r0, r0, #15
    1702:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1704:	20ff      	movs	r0, #255	; 0xff
    1706:	bd38      	pop	{r3, r4, r5, pc}
    1708:	20ff      	movs	r0, #255	; 0xff
    170a:	bd38      	pop	{r3, r4, r5, pc}
    170c:	200026bc 	.word	0x200026bc

00001710 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int /* __attribute__((optimize("-O1")))*/ gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    1710:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1714:	b085      	sub	sp, #20
    1716:	9001      	str	r0, [sp, #4]
    1718:	460e      	mov	r6, r1
    171a:	9100      	str	r1, [sp, #0]
    171c:	9203      	str	r2, [sp, #12]
    171e:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    1720:	4a28      	ldr	r2, [pc, #160]	; (17c4 <gfx_sprite+0xb4>)
    1722:	7911      	ldrb	r1, [r2, #4]
    1724:	4a28      	ldr	r2, [pc, #160]	; (17c8 <gfx_sprite+0xb8>)
    1726:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    172a:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    172c:	440a      	add	r2, r1
    172e:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    1730:	4433      	add	r3, r6
    1732:	9302      	str	r3, [sp, #8]
    1734:	429e      	cmp	r6, r3
    int collision=0;
    1736:	bfa8      	it	ge
    1738:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    173a:	da3a      	bge.n	17b2 <gfx_sprite+0xa2>
    173c:	f100 0901 	add.w	r9, r0, #1
    1740:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    1742:	f8df 8080 	ldr.w	r8, [pc, #128]	; 17c4 <gfx_sprite+0xb4>
    1746:	e02b      	b.n	17a0 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    1748:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    174c:	f898 3004 	ldrb.w	r3, [r8, #4]
    1750:	4a1d      	ldr	r2, [pc, #116]	; (17c8 <gfx_sprite+0xb8>)
    1752:	4413      	add	r3, r2
    1754:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    1756:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    175a:	3601      	adds	r6, #1
    175c:	4556      	cmp	r6, sl
    175e:	d019      	beq.n	1794 <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    1760:	f898 3004 	ldrb.w	r3, [r8, #4]
    1764:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    1766:	bf99      	ittee	ls
    1768:	fa45 f30b 	asrls.w	r3, r5, fp
    176c:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    1770:	fa45 f20b 	asrhi.w	r2, r5, fp
    1774:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    1776:	2302      	movs	r3, #2
    1778:	9900      	ldr	r1, [sp, #0]
    177a:	4630      	mov	r0, r6
    177c:	f7ff fe6c 	bl	1458 <gfx_blit>
    1780:	4307      	orrs	r7, r0
            ppb--;
    1782:	3c01      	subs	r4, #1
            if (!ppb){
    1784:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1788:	d0de      	beq.n	1748 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    178a:	f1cb 0308 	rsb	r3, fp, #8
    178e:	409d      	lsls	r5, r3
    1790:	b2ed      	uxtb	r5, r5
    1792:	e7e2      	b.n	175a <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    1794:	9b00      	ldr	r3, [sp, #0]
    1796:	3301      	adds	r3, #1
    1798:	9300      	str	r3, [sp, #0]
    179a:	9a02      	ldr	r2, [sp, #8]
    179c:	4293      	cmp	r3, r2
    179e:	d008      	beq.n	17b2 <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    17a0:	9b03      	ldr	r3, [sp, #12]
    17a2:	4619      	mov	r1, r3
    17a4:	9a01      	ldr	r2, [sp, #4]
    17a6:	eb01 0a02 	add.w	sl, r1, r2
    17aa:	4552      	cmp	r2, sl
    17ac:	daf2      	bge.n	1794 <gfx_sprite+0x84>
    17ae:	9e01      	ldr	r6, [sp, #4]
    17b0:	e7d6      	b.n	1760 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    usart_putc(USART1,'\n');
    17b2:	210a      	movs	r1, #10
    17b4:	4805      	ldr	r0, [pc, #20]	; (17cc <gfx_sprite+0xbc>)
    17b6:	f001 fecb 	bl	3550 <usart_putc>
    return collision;
}
    17ba:	4638      	mov	r0, r7
    17bc:	b005      	add	sp, #20
    17be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    17c2:	bf00      	nop
    17c4:	2000018c 	.word	0x2000018c
    17c8:	00003a1c 	.word	0x00003a1c
    17cc:	40013800 	.word	0x40013800

000017d0 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    17d0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    17d4:	f001 fd7a 	bl	32cc <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    17d8:	89c3      	ldrh	r3, [r0, #14]
    17da:	089e      	lsrs	r6, r3, #2
    17dc:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    17e0:	429e      	cmp	r6, r3
    17e2:	da18      	bge.n	1816 <color_bars+0x46>
    17e4:	4607      	mov	r7, r0
static void color_bars(){
    17e6:	f04f 0810 	mov.w	r8, #16
    17ea:	4645      	mov	r5, r8
    17ec:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    17ee:	f014 0f07 	tst.w	r4, #7
				c--;
    17f2:	bf04      	itt	eq
    17f4:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    17f8:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    17fa:	462a      	mov	r2, r5
    17fc:	4631      	mov	r1, r6
    17fe:	4620      	mov	r0, r4
    1800:	f7ff fe76 	bl	14f0 <gfx_plot>
		for (x=0;x<128;x++){
    1804:	3401      	adds	r4, #1
    1806:	2c80      	cmp	r4, #128	; 0x80
    1808:	d1f1      	bne.n	17ee <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    180a:	3601      	adds	r6, #1
    180c:	89fb      	ldrh	r3, [r7, #14]
    180e:	42b3      	cmp	r3, r6
    1810:	dceb      	bgt.n	17ea <color_bars+0x1a>
    1812:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    1816:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0000181a <vertical_bars>:
	}
		

}

static void vertical_bars(){
    181a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    181c:	f001 fd56 	bl	32cc <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1820:	89c3      	ldrh	r3, [r0, #14]
    1822:	2b10      	cmp	r3, #16
    1824:	dd12      	ble.n	184c <vertical_bars+0x32>
    1826:	4605      	mov	r5, r0
    1828:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    182a:	260f      	movs	r6, #15
    182c:	2700      	movs	r7, #0
    182e:	4632      	mov	r2, r6
    1830:	4621      	mov	r1, r4
    1832:	4638      	mov	r0, r7
    1834:	f7ff fe5c 	bl	14f0 <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    1838:	89a8      	ldrh	r0, [r5, #12]
    183a:	4632      	mov	r2, r6
    183c:	4621      	mov	r1, r4
    183e:	3801      	subs	r0, #1
    1840:	f7ff fe56 	bl	14f0 <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1844:	3401      	adds	r4, #1
    1846:	89eb      	ldrh	r3, [r5, #14]
    1848:	42a3      	cmp	r3, r4
    184a:	dcf0      	bgt.n	182e <vertical_bars+0x14>
    184c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000184e <horiz_bars>:
	}
}

static void horiz_bars(){
    184e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1850:	f001 fd3c 	bl	32cc <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1854:	8983      	ldrh	r3, [r0, #12]
    1856:	b193      	cbz	r3, 187e <horiz_bars+0x30>
    1858:	4605      	mov	r5, r0
    185a:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    185c:	260f      	movs	r6, #15
    185e:	4627      	mov	r7, r4
    1860:	4632      	mov	r2, r6
    1862:	4639      	mov	r1, r7
    1864:	4620      	mov	r0, r4
    1866:	f7ff fe43 	bl	14f0 <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    186a:	89e9      	ldrh	r1, [r5, #14]
    186c:	4632      	mov	r2, r6
    186e:	3901      	subs	r1, #1
    1870:	4620      	mov	r0, r4
    1872:	f7ff fe3d 	bl	14f0 <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    1876:	3401      	adds	r4, #1
    1878:	89ab      	ldrh	r3, [r5, #12]
    187a:	42a3      	cmp	r3, r4
    187c:	dcf0      	bgt.n	1860 <horiz_bars+0x12>
    187e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001880 <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    1880:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1882:	f7ff fe5f 	bl	1544 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1886:	4806      	ldr	r0, [pc, #24]	; (18a0 <display_menu+0x20>)
    1888:	f001 fa23 	bl	2cd2 <println>
    188c:	4805      	ldr	r0, [pc, #20]	; (18a4 <display_menu+0x24>)
    188e:	f001 fa20 	bl	2cd2 <println>
    1892:	4805      	ldr	r0, [pc, #20]	; (18a8 <display_menu+0x28>)
    1894:	f001 fa1d 	bl	2cd2 <println>
    1898:	4804      	ldr	r0, [pc, #16]	; (18ac <display_menu+0x2c>)
    189a:	f001 fa1a 	bl	2cd2 <println>
    189e:	bd08      	pop	{r3, pc}
    18a0:	00003b14 	.word	0x00003b14
    18a4:	00003b20 	.word	0x00003b20
    18a8:	00003b30 	.word	0x00003b30
    18ac:	00003b3c 	.word	0x00003b3c

000018b0 <draw_balls>:
void draw_balls(){
    18b0:	b510      	push	{r4, lr}
    18b2:	b082      	sub	sp, #8
	frame_sync();
    18b4:	f001 fcd0 	bl	3258 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    18b8:	4c0a      	ldr	r4, [pc, #40]	; (18e4 <draw_balls+0x34>)
    18ba:	6923      	ldr	r3, [r4, #16]
    18bc:	9300      	str	r3, [sp, #0]
    18be:	2308      	movs	r3, #8
    18c0:	461a      	mov	r2, r3
    18c2:	6861      	ldr	r1, [r4, #4]
    18c4:	6820      	ldr	r0, [r4, #0]
    18c6:	f7ff ff23 	bl	1710 <gfx_sprite>
    18ca:	69a1      	ldr	r1, [r4, #24]
    18cc:	6960      	ldr	r0, [r4, #20]
    18ce:	6a63      	ldr	r3, [r4, #36]	; 0x24
    18d0:	9300      	str	r3, [sp, #0]
    18d2:	2308      	movs	r3, #8
    18d4:	461a      	mov	r2, r3
    18d6:	f7ff ff1b 	bl	1710 <gfx_sprite>
	wait_sync_end();
    18da:	f001 fcc5 	bl	3268 <wait_sync_end>
}
    18de:	b002      	add	sp, #8
    18e0:	bd10      	pop	{r4, pc}
    18e2:	bf00      	nop
    18e4:	20002694 	.word	0x20002694

000018e8 <isqrt>:
	if (n<2) return n;
    18e8:	2801      	cmp	r0, #1
    18ea:	dd0c      	ble.n	1906 <isqrt+0x1e>
int isqrt(int n){
    18ec:	b510      	push	{r4, lr}
    18ee:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    18f0:	1080      	asrs	r0, r0, #2
    18f2:	f7ff fff9 	bl	18e8 <isqrt>
    18f6:	0040      	lsls	r0, r0, #1
	large = small + 1;
    18f8:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    18fa:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    18fe:	4294      	cmp	r4, r2
    1900:	bfa8      	it	ge
    1902:	4618      	movge	r0, r3
}
    1904:	bd10      	pop	{r4, pc}
    1906:	4770      	bx	lr

00001908 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    1908:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    190a:	6803      	ldr	r3, [r0, #0]
    190c:	680a      	ldr	r2, [r1, #0]
    190e:	6844      	ldr	r4, [r0, #4]
    1910:	6848      	ldr	r0, [r1, #4]
    1912:	fb00 f004 	mul.w	r0, r0, r4
    1916:	fb02 0003 	mla	r0, r2, r3, r0
    191a:	2800      	cmp	r0, #0
    191c:	bfb8      	it	lt
    191e:	4240      	neglt	r0, r0
    1920:	f7ff ffe2 	bl	18e8 <isqrt>
}
    1924:	bd10      	pop	{r4, pc}

00001926 <move_balls>:
void move_balls(){
    1926:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    1928:	f001 fcd0 	bl	32cc <get_video_params>
    192c:	4b1c      	ldr	r3, [pc, #112]	; (19a0 <move_balls+0x7a>)
    192e:	f103 0628 	add.w	r6, r3, #40	; 0x28
    1932:	e005      	b.n	1940 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    1934:	4249      	negs	r1, r1
    1936:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1938:	6055      	str	r5, [r2, #4]
    193a:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    193c:	42b3      	cmp	r3, r6
    193e:	d017      	beq.n	1970 <move_balls+0x4a>
    1940:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1942:	681d      	ldr	r5, [r3, #0]
    1944:	6899      	ldr	r1, [r3, #8]
    1946:	186c      	adds	r4, r5, r1
    1948:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    194a:	f114 0f07 	cmn.w	r4, #7
    194e:	db02      	blt.n	1956 <move_balls+0x30>
    1950:	8987      	ldrh	r7, [r0, #12]
    1952:	42bc      	cmp	r4, r7
    1954:	db02      	blt.n	195c <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    1956:	4249      	negs	r1, r1
    1958:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    195a:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    195c:	6855      	ldr	r5, [r2, #4]
    195e:	68d1      	ldr	r1, [r2, #12]
    1960:	186c      	adds	r4, r5, r1
    1962:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1964:	2c0f      	cmp	r4, #15
    1966:	dde5      	ble.n	1934 <move_balls+0xe>
    1968:	89c7      	ldrh	r7, [r0, #14]
    196a:	42bc      	cmp	r4, r7
    196c:	dbe5      	blt.n	193a <move_balls+0x14>
    196e:	e7e1      	b.n	1934 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1970:	480c      	ldr	r0, [pc, #48]	; (19a4 <move_balls+0x7e>)
    1972:	4601      	mov	r1, r0
    1974:	3814      	subs	r0, #20
    1976:	f7ff ffc7 	bl	1908 <distance>
    197a:	2807      	cmp	r0, #7
    197c:	d80f      	bhi.n	199e <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    197e:	4b08      	ldr	r3, [pc, #32]	; (19a0 <move_balls+0x7a>)
    1980:	689a      	ldr	r2, [r3, #8]
    1982:	69db      	ldr	r3, [r3, #28]
    1984:	429a      	cmp	r2, r3
    1986:	d002      	beq.n	198e <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1988:	4905      	ldr	r1, [pc, #20]	; (19a0 <move_balls+0x7a>)
    198a:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    198c:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    198e:	4b04      	ldr	r3, [pc, #16]	; (19a0 <move_balls+0x7a>)
    1990:	68da      	ldr	r2, [r3, #12]
    1992:	6a1b      	ldr	r3, [r3, #32]
    1994:	429a      	cmp	r2, r3
    1996:	d002      	beq.n	199e <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1998:	4901      	ldr	r1, [pc, #4]	; (19a0 <move_balls+0x7a>)
    199a:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    199c:	620a      	str	r2, [r1, #32]
    199e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    19a0:	20002694 	.word	0x20002694
    19a4:	200026a8 	.word	0x200026a8

000019a8 <init_balls>:
void init_balls(){
    19a8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    19ac:	f001 fc8e 	bl	32cc <get_video_params>
    19b0:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    19b2:	4b15      	ldr	r3, [pc, #84]	; (1a08 <init_balls+0x60>)
    19b4:	6818      	ldr	r0, [r3, #0]
    19b6:	f7fe fd03 	bl	3c0 <srand>
    19ba:	4c14      	ldr	r4, [pc, #80]	; (1a0c <init_balls+0x64>)
    19bc:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    19c0:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    19c2:	4f13      	ldr	r7, [pc, #76]	; (1a10 <init_balls+0x68>)
    19c4:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    19c8:	f7fe fd00 	bl	3cc <rand>
    19cc:	89ab      	ldrh	r3, [r5, #12]
    19ce:	fb90 f2f3 	sdiv	r2, r0, r3
    19d2:	fb02 0013 	mls	r0, r2, r3, r0
    19d6:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    19d8:	f7fe fcf8 	bl	3cc <rand>
    19dc:	89eb      	ldrh	r3, [r5, #14]
    19de:	3b10      	subs	r3, #16
    19e0:	fb90 f2f3 	sdiv	r2, r0, r3
    19e4:	fb02 0013 	mls	r0, r2, r3, r0
    19e8:	3010      	adds	r0, #16
    19ea:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    19ec:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    19ee:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    19f0:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    19f2:	2b00      	cmp	r3, #0
    19f4:	bf14      	ite	ne
    19f6:	4643      	movne	r3, r8
    19f8:	463b      	moveq	r3, r7
    19fa:	6123      	str	r3, [r4, #16]
    19fc:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    19fe:	454c      	cmp	r4, r9
    1a00:	d1e2      	bne.n	19c8 <init_balls+0x20>
}
    1a02:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1a06:	bf00      	nop
    1a08:	20004e20 	.word	0x20004e20
    1a0c:	20002694 	.word	0x20002694
    1a10:	00003a2c 	.word	0x00003a2c

00001a14 <main>:
		}
	}//while
}

//const uint8_t sample[16]={0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
void main(void){
    1a14:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1a18:	b089      	sub	sp, #36	; 0x24
	RCC->CR|=RCC_CR_HSEON;
    1a1a:	4abe      	ldr	r2, [pc, #760]	; (1d14 <main+0x300>)
    1a1c:	6813      	ldr	r3, [r2, #0]
    1a1e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1a22:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1a24:	4613      	mov	r3, r2
    1a26:	681a      	ldr	r2, [r3, #0]
    1a28:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1a2c:	d0fb      	beq.n	1a26 <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1a2e:	4bb9      	ldr	r3, [pc, #740]	; (1d14 <main+0x300>)
    1a30:	685a      	ldr	r2, [r3, #4]
    1a32:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1a36:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1a38:	681a      	ldr	r2, [r3, #0]
    1a3a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1a3e:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1a40:	681a      	ldr	r2, [r3, #0]
    1a42:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1a46:	d0fb      	beq.n	1a40 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1a48:	4ab3      	ldr	r2, [pc, #716]	; (1d18 <main+0x304>)
    1a4a:	6813      	ldr	r3, [r2, #0]
    1a4c:	f043 0312 	orr.w	r3, r3, #18
    1a50:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1a52:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1a56:	6853      	ldr	r3, [r2, #4]
    1a58:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1a5c:	f043 0302 	orr.w	r3, r3, #2
    1a60:	6053      	str	r3, [r2, #4]
	set_sysclock();
//	config_systicks();
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1a62:	f640 031d 	movw	r3, #2077	; 0x81d
    1a66:	6193      	str	r3, [r2, #24]
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1a68:	4cac      	ldr	r4, [pc, #688]	; (1d1c <main+0x308>)
    1a6a:	2206      	movs	r2, #6
    1a6c:	210d      	movs	r1, #13
    1a6e:	4620      	mov	r0, r4
    1a70:	f7ff fcb2 	bl	13d8 <config_pin>
	_led_off();
    1a74:	68e3      	ldr	r3, [r4, #12]
    1a76:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1a7a:	60e3      	str	r3, [r4, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_TX,ALT_PORT,FLOW_SOFT);
    1a7c:	2700      	movs	r7, #0
    1a7e:	9701      	str	r7, [sp, #4]
    1a80:	2301      	movs	r3, #1
    1a82:	9300      	str	r3, [sp, #0]
    1a84:	2302      	movs	r3, #2
    1a86:	463a      	mov	r2, r7
    1a88:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1a8c:	48a4      	ldr	r0, [pc, #656]	; (1d20 <main+0x30c>)
    1a8e:	f001 fcd4 	bl	343a <usart_open_channel>
	gamepad_init();
    1a92:	f7ff fa7f 	bl	f94 <gamepad_init>
	tvout_init();
    1a96:	f001 f9c9 	bl	2e2c <tvout_init>
	sound_init();
    1a9a:	f000 fe33 	bl	2704 <sound_init>
	gfx_cls();
    1a9e:	f7ff fd51 	bl	1544 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1aa2:	f001 fc13 	bl	32cc <get_video_params>
	display_menu();
    1aa6:	f7ff feeb 	bl	1880 <display_menu>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1aaa:	4b9e      	ldr	r3, [pc, #632]	; (1d24 <main+0x310>)
    1aac:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1ab0:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1ab4:	9306      	str	r3, [sp, #24]
    1ab6:	e17d      	b.n	1db4 <main+0x3a0>
			if (i<(MENU_ITEMS-1)) i++;
    1ab8:	2f02      	cmp	r7, #2
    1aba:	f300 817b 	bgt.w	1db4 <main+0x3a0>
    1abe:	3701      	adds	r7, #1
    1ac0:	e178      	b.n	1db4 <main+0x3a0>
			switch(i){
    1ac2:	2f03      	cmp	r7, #3
    1ac4:	f200 8174 	bhi.w	1db0 <main+0x39c>
    1ac8:	e8df f017 	tbh	[pc, r7, lsl #1]
    1acc:	00c20004 	.word	0x00c20004
    1ad0:	019f010c 	.word	0x019f010c
	count=games_count();
    1ad4:	f7ff fb0e 	bl	10f4 <games_count>
    1ad8:	9005      	str	r0, [sp, #20]
	set_video_mode(VM_BPCHIP);
    1ada:	2000      	movs	r0, #0
    1adc:	f001 fbcc 	bl	3278 <set_video_mode>
	vparams=get_video_params();
    1ae0:	f001 fbf4 	bl	32cc <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1ae4:	89c3      	ldrh	r3, [r0, #14]
    1ae6:	08db      	lsrs	r3, r3, #3
    1ae8:	9304      	str	r3, [sp, #16]
    1aea:	461e      	mov	r6, r3
	int i=0,first=0,count,rows,selected=1;
    1aec:	f04f 0a01 	mov.w	sl, #1
	while ((r<rows) && games_list[first].size){
    1af0:	f8df b238 	ldr.w	fp, [pc, #568]	; 1d2c <main+0x318>
		if (selected<rows) first=0;else first=selected-rows+1;
    1af4:	4556      	cmp	r6, sl
    1af6:	bfda      	itte	le
    1af8:	ebaa 0906 	suble.w	r9, sl, r6
    1afc:	f109 0901 	addle.w	r9, r9, #1
    1b00:	46b9      	movgt	r9, r7
	set_cursor(0,0);
    1b02:	2100      	movs	r1, #0
    1b04:	4608      	mov	r0, r1
    1b06:	f001 f89b 	bl	2c40 <set_cursor>
	print(" ********** GAMES **********");
    1b0a:	4887      	ldr	r0, [pc, #540]	; (1d28 <main+0x314>)
    1b0c:	f001 f8cc 	bl	2ca8 <print>
	while ((r<rows) && games_list[first].size){
    1b10:	9b04      	ldr	r3, [sp, #16]
    1b12:	2b01      	cmp	r3, #1
    1b14:	d91f      	bls.n	1b56 <main+0x142>
    1b16:	ebc9 03c9 	rsb	r3, r9, r9, lsl #3
    1b1a:	eb0b 0383 	add.w	r3, fp, r3, lsl #2
    1b1e:	691b      	ldr	r3, [r3, #16]
    1b20:	b1cb      	cbz	r3, 1b56 <main+0x142>
    1b22:	ebc9 04c9 	rsb	r4, r9, r9, lsl #3
    1b26:	eb0b 0484 	add.w	r4, fp, r4, lsl #2
    1b2a:	3401      	adds	r4, #1
    1b2c:	2501      	movs	r5, #1
		put_char(' ');
    1b2e:	f04f 0820 	mov.w	r8, #32
		new_line();
    1b32:	f000 ffcf 	bl	2ad4 <new_line>
		clear_line();
    1b36:	f001 f951 	bl	2ddc <clear_line>
		put_char(' ');
    1b3a:	4640      	mov	r0, r8
    1b3c:	f001 f814 	bl	2b68 <put_char>
		print(games_list[first].name);
    1b40:	4620      	mov	r0, r4
    1b42:	f001 f8b1 	bl	2ca8 <print>
		r++;
    1b46:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1b48:	42ae      	cmp	r6, r5
    1b4a:	d004      	beq.n	1b56 <main+0x142>
    1b4c:	341c      	adds	r4, #28
    1b4e:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1b52:	2b00      	cmp	r3, #0
    1b54:	d1ed      	bne.n	1b32 <main+0x11e>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1b56:	ebaa 0109 	sub.w	r1, sl, r9
    1b5a:	00c9      	lsls	r1, r1, #3
    1b5c:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1b60:	2000      	movs	r0, #0
    1b62:	f001 f86d 	bl	2c40 <set_cursor>
		put_char('>');
    1b66:	203e      	movs	r0, #62	; 0x3e
    1b68:	f000 fffe 	bl	2b68 <put_char>
		btn=btn_wait_any();
    1b6c:	f7ff fa88 	bl	1080 <btn_wait_any>
    1b70:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1b72:	f7ff fa71 	bl	1058 <btn_wait_up>
		switch(btn){
    1b76:	2c04      	cmp	r4, #4
    1b78:	d00e      	beq.n	1b98 <main+0x184>
    1b7a:	d905      	bls.n	1b88 <main+0x174>
    1b7c:	2c20      	cmp	r4, #32
    1b7e:	d011      	beq.n	1ba4 <main+0x190>
    1b80:	2c40      	cmp	r4, #64	; 0x40
    1b82:	f000 8115 	beq.w	1db0 <main+0x39c>
    1b86:	e7b5      	b.n	1af4 <main+0xe0>
    1b88:	2c02      	cmp	r4, #2
    1b8a:	d1b3      	bne.n	1af4 <main+0xe0>
			if (selected>1) selected--;
    1b8c:	f1ba 0f01 	cmp.w	sl, #1
    1b90:	ddb0      	ble.n	1af4 <main+0xe0>
    1b92:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1b96:	e7ad      	b.n	1af4 <main+0xe0>
			if (selected<count){
    1b98:	9b05      	ldr	r3, [sp, #20]
    1b9a:	4553      	cmp	r3, sl
    1b9c:	ddaa      	ble.n	1af4 <main+0xe0>
				selected++;
    1b9e:	f10a 0a01 	add.w	sl, sl, #1
    1ba2:	e7a7      	b.n	1af4 <main+0xe0>
	run_game(selected-1);
    1ba4:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1ba8:	ebca 02ca 	rsb	r2, sl, sl, lsl #3
    1bac:	4b5f      	ldr	r3, [pc, #380]	; (1d2c <main+0x318>)
    1bae:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1bb2:	2b01      	cmp	r3, #1
    1bb4:	bf14      	ite	ne
    1bb6:	2600      	movne	r6, #0
    1bb8:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1bbc:	f8df 816c 	ldr.w	r8, [pc, #364]	; 1d2c <main+0x318>
    1bc0:	ea4f 05ca 	mov.w	r5, sl, lsl #3
    1bc4:	eb08 0482 	add.w	r4, r8, r2, lsl #2
    1bc8:	6922      	ldr	r2, [r4, #16]
    1bca:	4959      	ldr	r1, [pc, #356]	; (1d30 <main+0x31c>)
    1bcc:	4431      	add	r1, r6
    1bce:	6960      	ldr	r0, [r4, #20]
    1bd0:	f7ff fb43 	bl	125a <move>
	set_keymap(games_list[idx].keymap);
    1bd4:	69a0      	ldr	r0, [r4, #24]
    1bd6:	f7ff f9d1 	bl	f7c <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1bda:	eba5 0a0a 	sub.w	sl, r5, sl
    1bde:	f818 002a 	ldrb.w	r0, [r8, sl, lsl #2]
    1be2:	f001 fb49 	bl	3278 <set_video_mode>
	exit_code=chip_vm(addr,debug_print);
    1be6:	4b53      	ldr	r3, [pc, #332]	; (1d34 <main+0x320>)
    1be8:	6819      	ldr	r1, [r3, #0]
    1bea:	4630      	mov	r0, r6
    1bec:	f7fe fbfc 	bl	3e8 <chip_vm>
    1bf0:	4604      	mov	r4, r0
	print("exit code: ");
    1bf2:	4851      	ldr	r0, [pc, #324]	; (1d38 <main+0x324>)
    1bf4:	f001 f858 	bl	2ca8 <print>
	switch(exit_code){
    1bf8:	2c04      	cmp	r4, #4
    1bfa:	d809      	bhi.n	1c10 <main+0x1fc>
    1bfc:	e8df f004 	tbb	[pc, r4]
    1c00:	130d2203 	.word	0x130d2203
    1c04:	13          	.byte	0x13
    1c05:	00          	.byte	0x00
		print("CHIP CONTINUE");
    1c06:	484d      	ldr	r0, [pc, #308]	; (1d3c <main+0x328>)
    1c08:	f001 f84e 	bl	2ca8 <print>
		i=120;
    1c0c:	2378      	movs	r3, #120	; 0x78
    1c0e:	9307      	str	r3, [sp, #28]
	game_pause(i);
    1c10:	f8bd 001c 	ldrh.w	r0, [sp, #28]
    1c14:	f001 fb64 	bl	32e0 <game_pause>
    1c18:	e0ca      	b.n	1db0 <main+0x39c>
		print("CHIP EXIT OK");
    1c1a:	4849      	ldr	r0, [pc, #292]	; (1d40 <main+0x32c>)
    1c1c:	f001 f844 	bl	2ca8 <print>
		i=120;
    1c20:	2378      	movs	r3, #120	; 0x78
    1c22:	9307      	str	r3, [sp, #28]
    1c24:	e7f4      	b.n	1c10 <main+0x1fc>
		select_console(SERIAL);
    1c26:	2001      	movs	r0, #1
    1c28:	f001 f8fa 	bl	2e20 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1c2c:	4621      	mov	r1, r4
    1c2e:	4845      	ldr	r0, [pc, #276]	; (1d44 <main+0x330>)
    1c30:	f7fe fb6e 	bl	310 <print_vms>
		select_console(LOCAL);
    1c34:	2000      	movs	r0, #0
    1c36:	f001 f8f3 	bl	2e20 <select_console>
		btn_wait_any();
    1c3a:	f7ff fa21 	bl	1080 <btn_wait_any>
		i=1;
    1c3e:	2301      	movs	r3, #1
    1c40:	9307      	str	r3, [sp, #28]
    1c42:	e7e5      	b.n	1c10 <main+0x1fc>
		print("CHIP BREAK");
    1c44:	4840      	ldr	r0, [pc, #256]	; (1d48 <main+0x334>)
    1c46:	f001 f82f 	bl	2ca8 <print>
		i=120;
    1c4a:	2378      	movs	r3, #120	; 0x78
    1c4c:	9307      	str	r3, [sp, #28]
    1c4e:	e7df      	b.n	1c10 <main+0x1fc>
	gfx_cls();
    1c50:	f7ff fc78 	bl	1544 <gfx_cls>
	print(" *** VM debug support ***\n");
    1c54:	483d      	ldr	r0, [pc, #244]	; (1d4c <main+0x338>)
    1c56:	f001 f827 	bl	2ca8 <print>
	print(" enable debug print\n");
    1c5a:	483d      	ldr	r0, [pc, #244]	; (1d50 <main+0x33c>)
    1c5c:	f001 f824 	bl	2ca8 <print>
	print(" disable debug print");
    1c60:	483c      	ldr	r0, [pc, #240]	; (1d54 <main+0x340>)
    1c62:	f001 f821 	bl	2ca8 <print>
	if (debug_print){
    1c66:	4b33      	ldr	r3, [pc, #204]	; (1d34 <main+0x320>)
    1c68:	681b      	ldr	r3, [r3, #0]
    1c6a:	b313      	cbz	r3, 1cb2 <main+0x29e>
		set_cursor(0,CHAR_HEIGHT);
    1c6c:	2108      	movs	r1, #8
    1c6e:	2000      	movs	r0, #0
    1c70:	f000 ffe6 	bl	2c40 <set_cursor>
		put_char('*');
    1c74:	202a      	movs	r0, #42	; 0x2a
    1c76:	f000 ff77 	bl	2b68 <put_char>
			set_cursor(0,CHAR_HEIGHT);
    1c7a:	2508      	movs	r5, #8
			debug_print=0;
    1c7c:	4c2d      	ldr	r4, [pc, #180]	; (1d34 <main+0x320>)
		btn=btn_wait_any();
    1c7e:	f7ff f9ff 	bl	1080 <btn_wait_any>
		switch(btn){
    1c82:	2804      	cmp	r0, #4
    1c84:	d01d      	beq.n	1cc2 <main+0x2ae>
    1c86:	2820      	cmp	r0, #32
    1c88:	f000 8092 	beq.w	1db0 <main+0x39c>
    1c8c:	2802      	cmp	r0, #2
    1c8e:	d1f6      	bne.n	1c7e <main+0x26a>
			set_cursor(0,2*CHAR_HEIGHT);
    1c90:	2110      	movs	r1, #16
    1c92:	2000      	movs	r0, #0
    1c94:	f000 ffd4 	bl	2c40 <set_cursor>
			put_char(' ');
    1c98:	2020      	movs	r0, #32
    1c9a:	f000 ff65 	bl	2b68 <put_char>
			set_cursor(0,CHAR_HEIGHT);
    1c9e:	4629      	mov	r1, r5
    1ca0:	2000      	movs	r0, #0
    1ca2:	f000 ffcd 	bl	2c40 <set_cursor>
			put_char('*');
    1ca6:	202a      	movs	r0, #42	; 0x2a
    1ca8:	f000 ff5e 	bl	2b68 <put_char>
			debug_print=1;
    1cac:	2301      	movs	r3, #1
    1cae:	6023      	str	r3, [r4, #0]
    1cb0:	e7e5      	b.n	1c7e <main+0x26a>
		set_cursor(0,2*CHAR_HEIGHT);
    1cb2:	2110      	movs	r1, #16
    1cb4:	2000      	movs	r0, #0
    1cb6:	f000 ffc3 	bl	2c40 <set_cursor>
		put_char('*');
    1cba:	202a      	movs	r0, #42	; 0x2a
    1cbc:	f000 ff54 	bl	2b68 <put_char>
    1cc0:	e7db      	b.n	1c7a <main+0x266>
			set_cursor(0,CHAR_HEIGHT);
    1cc2:	4629      	mov	r1, r5
    1cc4:	2000      	movs	r0, #0
    1cc6:	f000 ffbb 	bl	2c40 <set_cursor>
			put_char(' ');
    1cca:	2020      	movs	r0, #32
    1ccc:	f000 ff4c 	bl	2b68 <put_char>
			set_cursor(0,2*CHAR_HEIGHT);
    1cd0:	2110      	movs	r1, #16
    1cd2:	2000      	movs	r0, #0
    1cd4:	f000 ffb4 	bl	2c40 <set_cursor>
			put_char('*');
    1cd8:	202a      	movs	r0, #42	; 0x2a
    1cda:	f000 ff45 	bl	2b68 <put_char>
			debug_print=0;
    1cde:	2300      	movs	r3, #0
    1ce0:	6023      	str	r3, [r4, #0]
    1ce2:	e7cc      	b.n	1c7e <main+0x26a>
	set_video_mode(p);
    1ce4:	2000      	movs	r0, #0
    1ce6:	f001 fac7 	bl	3278 <set_video_mode>
	color_bars();
    1cea:	f7ff fd71 	bl	17d0 <color_bars>
	vertical_bars();
    1cee:	f7ff fd94 	bl	181a <vertical_bars>
	horiz_bars();
    1cf2:	f7ff fdac 	bl	184e <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1cf6:	2110      	movs	r1, #16
    1cf8:	4817      	ldr	r0, [pc, #92]	; (1d58 <main+0x344>)
    1cfa:	f000 fff0 	bl	2cde <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1cfe:	210a      	movs	r1, #10
    1d00:	9806      	ldr	r0, [sp, #24]
    1d02:	f000 ffec 	bl	2cde <print_int>
	init_balls();
    1d06:	f7ff fe4f 	bl	19a8 <init_balls>
	p=0;
    1d0a:	2400      	movs	r4, #0
		if (btn_query_down(KEY_RIGHT)){
    1d0c:	2510      	movs	r5, #16
				print("SCHIP mode\n128x64 mono");
    1d0e:	4e13      	ldr	r6, [pc, #76]	; (1d5c <main+0x348>)
    1d10:	e038      	b.n	1d84 <main+0x370>
    1d12:	bf00      	nop
    1d14:	40021000 	.word	0x40021000
    1d18:	40022000 	.word	0x40022000
    1d1c:	40011000 	.word	0x40011000
    1d20:	40013800 	.word	0x40013800
    1d24:	20004e30 	.word	0x20004e30
    1d28:	00003b48 	.word	0x00003b48
    1d2c:	20000004 	.word	0x20000004
    1d30:	20000690 	.word	0x20000690
    1d34:	2000067c 	.word	0x2000067c
    1d38:	00003b68 	.word	0x00003b68
    1d3c:	00003b74 	.word	0x00003b74
    1d40:	00003b84 	.word	0x00003b84
    1d44:	00003b94 	.word	0x00003b94
    1d48:	00003ba4 	.word	0x00003ba4
    1d4c:	00003bb0 	.word	0x00003bb0
    1d50:	00003bcc 	.word	0x00003bcc
    1d54:	00003be4 	.word	0x00003be4
    1d58:	00004000 	.word	0x00004000
    1d5c:	00003c1c 	.word	0x00003c1c
			p^=1;
    1d60:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1d64:	4620      	mov	r0, r4
    1d66:	f001 fa87 	bl	3278 <set_video_mode>
			switch(p){
    1d6a:	2c00      	cmp	r4, #0
    1d6c:	d043      	beq.n	1df6 <main+0x3e2>
    1d6e:	2c01      	cmp	r4, #1
    1d70:	d047      	beq.n	1e02 <main+0x3ee>
			vertical_bars();
    1d72:	f7ff fd52 	bl	181a <vertical_bars>
			horiz_bars();
    1d76:	f7ff fd6a 	bl	184e <horiz_bars>
			init_balls();
    1d7a:	f7ff fe15 	bl	19a8 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1d7e:	4628      	mov	r0, r5
    1d80:	f7ff f96a 	bl	1058 <btn_wait_up>
		draw_balls();
    1d84:	f7ff fd94 	bl	18b0 <draw_balls>
		draw_balls();
    1d88:	f7ff fd92 	bl	18b0 <draw_balls>
		move_balls();
    1d8c:	f7ff fdcb 	bl	1926 <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1d90:	4628      	mov	r0, r5
    1d92:	f7ff f941 	bl	1018 <btn_query_down>
    1d96:	2800      	cmp	r0, #0
    1d98:	d1e2      	bne.n	1d60 <main+0x34c>
		}else if (btn_query_down(KEY_B)){
    1d9a:	2020      	movs	r0, #32
    1d9c:	f7ff f93c 	bl	1018 <btn_query_down>
    1da0:	2800      	cmp	r0, #0
    1da2:	d0ef      	beq.n	1d84 <main+0x370>
			btn_wait_up(KEY_B);
    1da4:	2020      	movs	r0, #32
    1da6:	f7ff f957 	bl	1058 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1daa:	2000      	movs	r0, #0
    1dac:	f001 fa64 	bl	3278 <set_video_mode>
			display_menu();
    1db0:	f7ff fd66 	bl	1880 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1db4:	00fc      	lsls	r4, r7, #3
    1db6:	b2e4      	uxtb	r4, r4
    1db8:	4621      	mov	r1, r4
    1dba:	2000      	movs	r0, #0
    1dbc:	f000 ff40 	bl	2c40 <set_cursor>
		put_char('>');
    1dc0:	203e      	movs	r0, #62	; 0x3e
    1dc2:	f000 fed1 	bl	2b68 <put_char>
		btn=btn_wait_any();
    1dc6:	f7ff f95b 	bl	1080 <btn_wait_any>
    1dca:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1dcc:	f7ff f944 	bl	1058 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1dd0:	4621      	mov	r1, r4
    1dd2:	2000      	movs	r0, #0
    1dd4:	f000 ff34 	bl	2c40 <set_cursor>
		put_char(' ');
    1dd8:	2020      	movs	r0, #32
    1dda:	f000 fec5 	bl	2b68 <put_char>
		switch(btn){
    1dde:	2d04      	cmp	r5, #4
    1de0:	f43f ae6a 	beq.w	1ab8 <main+0xa4>
    1de4:	2d20      	cmp	r5, #32
    1de6:	f43f ae6c 	beq.w	1ac2 <main+0xae>
    1dea:	2d02      	cmp	r5, #2
    1dec:	d1e2      	bne.n	1db4 <main+0x3a0>
			if (i) i--;
    1dee:	2f00      	cmp	r7, #0
    1df0:	d0e0      	beq.n	1db4 <main+0x3a0>
    1df2:	3f01      	subs	r7, #1
    1df4:	e7de      	b.n	1db4 <main+0x3a0>
				print("BPCHIP mode\n180x112 16 colors");
    1df6:	482d      	ldr	r0, [pc, #180]	; (1eac <main+0x498>)
    1df8:	f000 ff56 	bl	2ca8 <print>
				color_bars();
    1dfc:	f7ff fce8 	bl	17d0 <color_bars>
    1e00:	e7b7      	b.n	1d72 <main+0x35e>
				print("SCHIP mode\n128x64 mono");
    1e02:	4630      	mov	r0, r6
    1e04:	f000 ff50 	bl	2ca8 <print>
    1e08:	e7b3      	b.n	1d72 <main+0x35e>
	gfx_cls();
    1e0a:	f7ff fb9b 	bl	1544 <gfx_cls>
	print("press buttons\n");
    1e0e:	4828      	ldr	r0, [pc, #160]	; (1eb0 <main+0x49c>)
    1e10:	f000 ff4a 	bl	2ca8 <print>
		tone(freq,30);
    1e14:	251e      	movs	r5, #30
			freq=493;
    1e16:	f240 18ed 	movw	r8, #493	; 0x1ed
			freq=622;
    1e1a:	f240 266e 	movw	r6, #622	; 0x26e
    1e1e:	e019      	b.n	1e54 <main+0x440>
		switch(key){
    1e20:	2802      	cmp	r0, #2
    1e22:	d03c      	beq.n	1e9e <main+0x48a>
    1e24:	2804      	cmp	r0, #4
    1e26:	d00e      	beq.n	1e46 <main+0x432>
    1e28:	2801      	cmp	r0, #1
    1e2a:	d024      	beq.n	1e76 <main+0x462>
		tone(freq,30);
    1e2c:	4629      	mov	r1, r5
    1e2e:	9803      	ldr	r0, [sp, #12]
    1e30:	f000 fc94 	bl	275c <tone>
	while (key!=KEY_B){
    1e34:	2c20      	cmp	r4, #32
    1e36:	d10d      	bne.n	1e54 <main+0x440>
    1e38:	e028      	b.n	1e8c <main+0x478>
		switch(key){
    1e3a:	2810      	cmp	r0, #16
    1e3c:	d1f6      	bne.n	1e2c <main+0x418>
			freq=523;
    1e3e:	f240 230b 	movw	r3, #523	; 0x20b
    1e42:	9303      	str	r3, [sp, #12]
    1e44:	e002      	b.n	1e4c <main+0x438>
			freq=466;
    1e46:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    1e4a:	9303      	str	r3, [sp, #12]
		tone(freq,30);
    1e4c:	4629      	mov	r1, r5
    1e4e:	9803      	ldr	r0, [sp, #12]
    1e50:	f000 fc84 	bl	275c <tone>
		key=btn_wait_any();
    1e54:	f7ff f914 	bl	1080 <btn_wait_any>
    1e58:	4604      	mov	r4, r0
		switch(key){
    1e5a:	2808      	cmp	r0, #8
    1e5c:	d023      	beq.n	1ea6 <main+0x492>
    1e5e:	d9df      	bls.n	1e20 <main+0x40c>
    1e60:	2820      	cmp	r0, #32
    1e62:	d00e      	beq.n	1e82 <main+0x46e>
    1e64:	d9e9      	bls.n	1e3a <main+0x426>
    1e66:	2840      	cmp	r0, #64	; 0x40
    1e68:	d009      	beq.n	1e7e <main+0x46a>
    1e6a:	2880      	cmp	r0, #128	; 0x80
    1e6c:	d1de      	bne.n	1e2c <main+0x418>
			freq=659;
    1e6e:	f240 2393 	movw	r3, #659	; 0x293
    1e72:	9303      	str	r3, [sp, #12]
    1e74:	e7ea      	b.n	1e4c <main+0x438>
			freq=554;
    1e76:	f240 232a 	movw	r3, #554	; 0x22a
    1e7a:	9303      	str	r3, [sp, #12]
    1e7c:	e7e6      	b.n	1e4c <main+0x438>
			freq=622;
    1e7e:	9603      	str	r6, [sp, #12]
    1e80:	e7e4      	b.n	1e4c <main+0x438>
		tone(freq,30);
    1e82:	211e      	movs	r1, #30
    1e84:	f240 204b 	movw	r0, #587	; 0x24b
    1e88:	f000 fc68 	bl	275c <tone>
	noise(30);
    1e8c:	201e      	movs	r0, #30
    1e8e:	f000 fc9f 	bl	27d0 <noise>
	while(sound_timer);
    1e92:	4a08      	ldr	r2, [pc, #32]	; (1eb4 <main+0x4a0>)
    1e94:	8813      	ldrh	r3, [r2, #0]
    1e96:	b29b      	uxth	r3, r3
    1e98:	2b00      	cmp	r3, #0
    1e9a:	d1fb      	bne.n	1e94 <main+0x480>
    1e9c:	e788      	b.n	1db0 <main+0x39c>
			freq=440;
    1e9e:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    1ea2:	9303      	str	r3, [sp, #12]
    1ea4:	e7d2      	b.n	1e4c <main+0x438>
			freq=493;
    1ea6:	f8cd 800c 	str.w	r8, [sp, #12]
    1eaa:	e7cf      	b.n	1e4c <main+0x438>
    1eac:	00003bfc 	.word	0x00003bfc
    1eb0:	00003c34 	.word	0x00003c34
    1eb4:	20004e24 	.word	0x20004e24

00001eb8 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1eb8:	283b      	cmp	r0, #59	; 0x3b
    1eba:	dc0d      	bgt.n	1ed8 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1ebc:	1143      	asrs	r3, r0, #5
    1ebe:	009b      	lsls	r3, r3, #2
    1ec0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1ec4:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1ec8:	6819      	ldr	r1, [r3, #0]
    1eca:	f000 001f 	and.w	r0, r0, #31
    1ece:	2201      	movs	r2, #1
    1ed0:	fa02 f000 	lsl.w	r0, r2, r0
    1ed4:	4308      	orrs	r0, r1
    1ed6:	6018      	str	r0, [r3, #0]
    1ed8:	4770      	bx	lr

00001eda <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1eda:	283b      	cmp	r0, #59	; 0x3b
    1edc:	dc08      	bgt.n	1ef0 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1ede:	1142      	asrs	r2, r0, #5
    1ee0:	f000 001f 	and.w	r0, r0, #31
    1ee4:	2301      	movs	r3, #1
    1ee6:	fa03 f000 	lsl.w	r0, r3, r0
    1eea:	4b02      	ldr	r3, [pc, #8]	; (1ef4 <disable_interrupt+0x1a>)
    1eec:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1ef0:	4770      	bx	lr
    1ef2:	bf00      	nop
    1ef4:	e000e180 	.word	0xe000e180

00001ef8 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1ef8:	283b      	cmp	r0, #59	; 0x3b
    1efa:	dc09      	bgt.n	1f10 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1efc:	1142      	asrs	r2, r0, #5
    1efe:	4b05      	ldr	r3, [pc, #20]	; (1f14 <get_pending+0x1c>)
    1f00:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1f04:	f000 031f 	and.w	r3, r0, #31
    1f08:	2001      	movs	r0, #1
    1f0a:	4098      	lsls	r0, r3
    1f0c:	4010      	ands	r0, r2
    1f0e:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1f10:	2000      	movs	r0, #0
}
    1f12:	4770      	bx	lr
    1f14:	e000e280 	.word	0xe000e280

00001f18 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1f18:	283b      	cmp	r0, #59	; 0x3b
    1f1a:	dc0c      	bgt.n	1f36 <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1f1c:	1143      	asrs	r3, r0, #5
    1f1e:	009b      	lsls	r3, r3, #2
    1f20:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1f24:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1f28:	681a      	ldr	r2, [r3, #0]
    1f2a:	f000 031f 	and.w	r3, r0, #31
    1f2e:	2001      	movs	r0, #1
    1f30:	4098      	lsls	r0, r3
    1f32:	4010      	ands	r0, r2
    1f34:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1f36:	2000      	movs	r0, #0
}
    1f38:	4770      	bx	lr

00001f3a <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1f3a:	283b      	cmp	r0, #59	; 0x3b
    1f3c:	dc0d      	bgt.n	1f5a <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1f3e:	1143      	asrs	r3, r0, #5
    1f40:	009b      	lsls	r3, r3, #2
    1f42:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1f46:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1f4a:	6819      	ldr	r1, [r3, #0]
    1f4c:	f000 001f 	and.w	r0, r0, #31
    1f50:	2201      	movs	r2, #1
    1f52:	fa02 f000 	lsl.w	r0, r2, r0
    1f56:	4308      	orrs	r0, r1
    1f58:	6018      	str	r0, [r3, #0]
    1f5a:	4770      	bx	lr

00001f5c <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    1f5c:	283b      	cmp	r0, #59	; 0x3b
    1f5e:	dc08      	bgt.n	1f72 <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    1f60:	1142      	asrs	r2, r0, #5
    1f62:	f000 001f 	and.w	r0, r0, #31
    1f66:	2301      	movs	r3, #1
    1f68:	fa03 f000 	lsl.w	r0, r3, r0
    1f6c:	4b01      	ldr	r3, [pc, #4]	; (1f74 <clear_pending+0x18>)
    1f6e:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1f72:	4770      	bx	lr
    1f74:	e000e280 	.word	0xe000e280

00001f78 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    1f78:	283b      	cmp	r0, #59	; 0x3b
    1f7a:	d90c      	bls.n	1f96 <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    1f7c:	f100 030f 	add.w	r3, r0, #15
    1f80:	2b0e      	cmp	r3, #14
    1f82:	d807      	bhi.n	1f94 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    1f84:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    1f88:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    1f8c:	30fc      	adds	r0, #252	; 0xfc
    1f8e:	0109      	lsls	r1, r1, #4
    1f90:	4b04      	ldr	r3, [pc, #16]	; (1fa4 <set_int_priority+0x2c>)
    1f92:	54c1      	strb	r1, [r0, r3]
    1f94:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    1f96:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    1f9a:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    1f9e:	0109      	lsls	r1, r1, #4
    1fa0:	7001      	strb	r1, [r0, #0]
    1fa2:	4770      	bx	lr
    1fa4:	e000ed18 	.word	0xe000ed18

00001fa8 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    1fa8:	f010 0f03 	tst.w	r0, #3
    1fac:	d113      	bne.n	1fd6 <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    1fae:	4b0c      	ldr	r3, [pc, #48]	; (1fe0 <leap_year+0x38>)
    1fb0:	fba3 2300 	umull	r2, r3, r3, r0
    1fb4:	095b      	lsrs	r3, r3, #5
    1fb6:	2264      	movs	r2, #100	; 0x64
    1fb8:	fb02 0313 	mls	r3, r2, r3, r0
    1fbc:	b96b      	cbnz	r3, 1fda <leap_year+0x32>
    1fbe:	4b08      	ldr	r3, [pc, #32]	; (1fe0 <leap_year+0x38>)
    1fc0:	fba3 2300 	umull	r2, r3, r3, r0
    1fc4:	09db      	lsrs	r3, r3, #7
    1fc6:	f44f 72c8 	mov.w	r2, #400	; 0x190
    1fca:	fb02 0013 	mls	r0, r2, r3, r0
    1fce:	fab0 f080 	clz	r0, r0
    1fd2:	0940      	lsrs	r0, r0, #5
    1fd4:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    1fd6:	2000      	movs	r0, #0
    1fd8:	4770      	bx	lr
		return 1;
    1fda:	2001      	movs	r0, #1
}
    1fdc:	4770      	bx	lr
    1fde:	bf00      	nop
    1fe0:	51eb851f 	.word	0x51eb851f

00001fe4 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    1fe4:	4b07      	ldr	r3, [pc, #28]	; (2004 <sec_per_month+0x20>)
    1fe6:	5c5a      	ldrb	r2, [r3, r1]
    1fe8:	4b07      	ldr	r3, [pc, #28]	; (2008 <sec_per_month+0x24>)
    1fea:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    1fee:	2902      	cmp	r1, #2
    1ff0:	d001      	beq.n	1ff6 <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    1ff2:	4618      	mov	r0, r3
    1ff4:	4770      	bx	lr
	if (month==2 && leap){
    1ff6:	2800      	cmp	r0, #0
    1ff8:	d0fb      	beq.n	1ff2 <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    1ffa:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1ffe:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    2002:	e7f6      	b.n	1ff2 <sec_per_month+0xe>
    2004:	00003a64 	.word	0x00003a64
    2008:	00015180 	.word	0x00015180

0000200c <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    200c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2010:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    2012:	4b37      	ldr	r3, [pc, #220]	; (20f0 <get_date_time+0xe4>)
    2014:	699a      	ldr	r2, [r3, #24]
    2016:	69dc      	ldr	r4, [r3, #28]
    2018:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    201c:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2020:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    2022:	f7ff ffc1 	bl	1fa8 <leap_year>
    2026:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2028:	4d32      	ldr	r5, [pc, #200]	; (20f4 <get_date_time+0xe8>)
    202a:	4f33      	ldr	r7, [pc, #204]	; (20f8 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    202c:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 210c <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2030:	e00e      	b.n	2050 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    2032:	4444      	add	r4, r8
    2034:	e005      	b.n	2042 <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2036:	42ac      	cmp	r4, r5
    2038:	d90f      	bls.n	205a <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    203a:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    203e:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    2042:	8930      	ldrh	r0, [r6, #8]
    2044:	3001      	adds	r0, #1
    2046:	b280      	uxth	r0, r0
    2048:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    204a:	f7ff ffad 	bl	1fa8 <leap_year>
    204e:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2050:	f1b9 0f00 	cmp.w	r9, #0
    2054:	d1ef      	bne.n	2036 <get_date_time+0x2a>
    2056:	42bc      	cmp	r4, r7
    2058:	d8eb      	bhi.n	2032 <get_date_time+0x26>
	}//while
	dt->month=1;
    205a:	8873      	ldrh	r3, [r6, #2]
    205c:	2201      	movs	r2, #1
    205e:	f362 1389 	bfi	r3, r2, #6, #4
    2062:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    2064:	f362 0345 	bfi	r3, r2, #1, #5
    2068:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    206a:	6833      	ldr	r3, [r6, #0]
    206c:	f36f 3310 	bfc	r3, #12, #5
    2070:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    2072:	f36f 138b 	bfc	r3, #6, #6
    2076:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    2078:	f36f 0305 	bfc	r3, #0, #6
    207c:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    207e:	e005      	b.n	208c <get_date_time+0x80>
		dt->month++;
    2080:	3501      	adds	r5, #1
    2082:	8873      	ldrh	r3, [r6, #2]
    2084:	f365 1389 	bfi	r3, r5, #6, #4
    2088:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    208a:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    208c:	8875      	ldrh	r5, [r6, #2]
    208e:	f3c5 1583 	ubfx	r5, r5, #6, #4
    2092:	4629      	mov	r1, r5
    2094:	4648      	mov	r0, r9
    2096:	f7ff ffa5 	bl	1fe4 <sec_per_month>
    209a:	4284      	cmp	r4, r0
    209c:	d8f0      	bhi.n	2080 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    209e:	4a17      	ldr	r2, [pc, #92]	; (20fc <get_date_time+0xf0>)
    20a0:	fba2 3204 	umull	r3, r2, r2, r4
    20a4:	0c12      	lsrs	r2, r2, #16
    20a6:	1c51      	adds	r1, r2, #1
    20a8:	78b3      	ldrb	r3, [r6, #2]
    20aa:	f361 0345 	bfi	r3, r1, #1, #5
    20ae:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    20b0:	4b13      	ldr	r3, [pc, #76]	; (2100 <get_date_time+0xf4>)
    20b2:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    20b6:	4c13      	ldr	r4, [pc, #76]	; (2104 <get_date_time+0xf8>)
    20b8:	fba4 3402 	umull	r3, r4, r4, r2
    20bc:	0ae4      	lsrs	r4, r4, #11
    20be:	6833      	ldr	r3, [r6, #0]
    20c0:	f364 3310 	bfi	r3, r4, #12, #5
    20c4:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    20c6:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    20ca:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    20ce:	4a0e      	ldr	r2, [pc, #56]	; (2108 <get_date_time+0xfc>)
    20d0:	fba2 1204 	umull	r1, r2, r2, r4
    20d4:	0952      	lsrs	r2, r2, #5
    20d6:	f362 138b 	bfi	r3, r2, #6, #6
    20da:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    20dc:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    20e0:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    20e4:	f364 0305 	bfi	r3, r4, #0, #6
    20e8:	7033      	strb	r3, [r6, #0]
    20ea:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    20ee:	bf00      	nop
    20f0:	40002800 	.word	0x40002800
    20f4:	01e284ff 	.word	0x01e284ff
    20f8:	01e1337f 	.word	0x01e1337f
    20fc:	c22e4507 	.word	0xc22e4507
    2100:	00015180 	.word	0x00015180
    2104:	91a2b3c5 	.word	0x91a2b3c5
    2108:	88888889 	.word	0x88888889
    210c:	fe1ecc80 	.word	0xfe1ecc80

00002110 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    2110:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2114:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    2116:	8903      	ldrh	r3, [r0, #8]
    2118:	f240 72b1 	movw	r2, #1969	; 0x7b1
    211c:	4293      	cmp	r3, r2
    211e:	d857      	bhi.n	21d0 <set_date_time+0xc0>
    2120:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2124:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    2128:	f7ff ff3e 	bl	1fa8 <leap_year>
    212c:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    212e:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    2130:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    2134:	f3c6 1683 	ubfx	r6, r6, #6, #4
    2138:	2e01      	cmp	r6, #1
    213a:	d908      	bls.n	214e <set_date_time+0x3e>
    213c:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    213e:	4629      	mov	r1, r5
    2140:	4638      	mov	r0, r7
    2142:	f7ff ff4f 	bl	1fe4 <sec_per_month>
    2146:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    2148:	3501      	adds	r5, #1
    214a:	42b5      	cmp	r5, r6
    214c:	d1f7      	bne.n	213e <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    214e:	f8d8 2000 	ldr.w	r2, [r8]
    2152:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    2156:	f8b8 2000 	ldrh.w	r2, [r8]
    215a:	f3c2 1285 	ubfx	r2, r2, #6, #6
    215e:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2162:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    2164:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2168:	fb01 2203 	mla	r2, r1, r3, r2
    216c:	f898 3000 	ldrb.w	r3, [r8]
    2170:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2174:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    2176:	f898 3002 	ldrb.w	r3, [r8, #2]
    217a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    217e:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2180:	4928      	ldr	r1, [pc, #160]	; (2224 <set_date_time+0x114>)
    2182:	fb01 2303 	mla	r3, r1, r3, r2
    2186:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2188:	4a27      	ldr	r2, [pc, #156]	; (2228 <set_date_time+0x118>)
    218a:	69d3      	ldr	r3, [r2, #28]
    218c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2190:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2192:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    2196:	6813      	ldr	r3, [r2, #0]
    2198:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    219c:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    219e:	4b23      	ldr	r3, [pc, #140]	; (222c <set_date_time+0x11c>)
    21a0:	685a      	ldr	r2, [r3, #4]
    21a2:	f042 0210 	orr.w	r2, r2, #16
    21a6:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    21a8:	0c22      	lsrs	r2, r4, #16
    21aa:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    21ac:	b2a4      	uxth	r4, r4
    21ae:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    21b0:	685a      	ldr	r2, [r3, #4]
    21b2:	f022 0210 	bic.w	r2, r2, #16
    21b6:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    21b8:	461a      	mov	r2, r3
    21ba:	6853      	ldr	r3, [r2, #4]
    21bc:	f013 0f20 	tst.w	r3, #32
    21c0:	d0fb      	beq.n	21ba <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    21c2:	4a1b      	ldr	r2, [pc, #108]	; (2230 <set_date_time+0x120>)
    21c4:	6813      	ldr	r3, [r2, #0]
    21c6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    21ca:	6013      	str	r3, [r2, #0]
    21cc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    21d0:	f640 023a 	movw	r2, #2106	; 0x83a
    21d4:	4293      	cmp	r3, r2
    21d6:	d90c      	bls.n	21f2 <set_date_time+0xe2>
    21d8:	4616      	mov	r6, r2
    21da:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    21de:	4610      	mov	r0, r2
    21e0:	f7ff fee2 	bl	1fa8 <leap_year>
    21e4:	4607      	mov	r7, r0
    21e6:	2400      	movs	r4, #0
    21e8:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    21ec:	f8df 9044 	ldr.w	r9, [pc, #68]	; 2234 <set_date_time+0x124>
    21f0:	e00e      	b.n	2210 <set_date_time+0x100>
	leap=leap_year(dt->year);
    21f2:	8906      	ldrh	r6, [r0, #8]
    21f4:	4630      	mov	r0, r6
    21f6:	f7ff fed7 	bl	1fa8 <leap_year>
    21fa:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    21fc:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2200:	429e      	cmp	r6, r3
    2202:	d8f0      	bhi.n	21e6 <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    2204:	2400      	movs	r4, #0
    2206:	e793      	b.n	2130 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    2208:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    220a:	3501      	adds	r5, #1
    220c:	42b5      	cmp	r5, r6
    220e:	d28f      	bcs.n	2130 <set_date_time+0x20>
		if (leap_year(i)){
    2210:	4628      	mov	r0, r5
    2212:	f7ff fec9 	bl	1fa8 <leap_year>
    2216:	2800      	cmp	r0, #0
    2218:	d0f6      	beq.n	2208 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    221a:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    221e:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    2222:	e7f2      	b.n	220a <set_date_time+0xfa>
    2224:	00015180 	.word	0x00015180
    2228:	40021000 	.word	0x40021000
    222c:	40002800 	.word	0x40002800
    2230:	40007000 	.word	0x40007000
    2234:	01e13380 	.word	0x01e13380

00002238 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    2238:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    223a:	4b35      	ldr	r3, [pc, #212]	; (2310 <rtc_init+0xd8>)
    223c:	685a      	ldr	r2, [r3, #4]
    223e:	f64a 2355 	movw	r3, #43605	; 0xaa55
    2242:	429a      	cmp	r2, r3
    2244:	d05c      	beq.n	2300 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2246:	4b33      	ldr	r3, [pc, #204]	; (2314 <rtc_init+0xdc>)
    2248:	69da      	ldr	r2, [r3, #28]
    224a:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    224e:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2250:	4c31      	ldr	r4, [pc, #196]	; (2318 <rtc_init+0xe0>)
    2252:	6822      	ldr	r2, [r4, #0]
    2254:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2258:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    225a:	6a1a      	ldr	r2, [r3, #32]
    225c:	f042 0201 	orr.w	r2, r2, #1
    2260:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    2262:	461a      	mov	r2, r3
    2264:	6a13      	ldr	r3, [r2, #32]
    2266:	f013 0f02 	tst.w	r3, #2
    226a:	d0fb      	beq.n	2264 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    226c:	4a29      	ldr	r2, [pc, #164]	; (2314 <rtc_init+0xdc>)
    226e:	6a13      	ldr	r3, [r2, #32]
    2270:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2274:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    2276:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    227a:	6853      	ldr	r3, [r2, #4]
    227c:	f013 0f08 	tst.w	r3, #8
    2280:	d0fb      	beq.n	227a <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    2282:	4a26      	ldr	r2, [pc, #152]	; (231c <rtc_init+0xe4>)
    2284:	6853      	ldr	r3, [r2, #4]
    2286:	f013 0f20 	tst.w	r3, #32
    228a:	d0fb      	beq.n	2284 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    228c:	4a23      	ldr	r2, [pc, #140]	; (231c <rtc_init+0xe4>)
    228e:	6853      	ldr	r3, [r2, #4]
    2290:	f043 0310 	orr.w	r3, r3, #16
    2294:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    2296:	6853      	ldr	r3, [r2, #4]
    2298:	f013 0f20 	tst.w	r3, #32
    229c:	d0fb      	beq.n	2296 <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    229e:	4a1f      	ldr	r2, [pc, #124]	; (231c <rtc_init+0xe4>)
    22a0:	6813      	ldr	r3, [r2, #0]
    22a2:	4319      	orrs	r1, r3
    22a4:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    22a6:	6853      	ldr	r3, [r2, #4]
    22a8:	f013 0f20 	tst.w	r3, #32
    22ac:	d0fb      	beq.n	22a6 <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    22ae:	03c2      	lsls	r2, r0, #15
    22b0:	481b      	ldr	r0, [pc, #108]	; (2320 <rtc_init+0xe8>)
    22b2:	fba0 3202 	umull	r3, r2, r0, r2
    22b6:	0992      	lsrs	r2, r2, #6
    22b8:	3a01      	subs	r2, #1
    22ba:	b291      	uxth	r1, r2
    22bc:	4b17      	ldr	r3, [pc, #92]	; (231c <rtc_init+0xe4>)
    22be:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    22c0:	4619      	mov	r1, r3
    22c2:	684b      	ldr	r3, [r1, #4]
    22c4:	f013 0f20 	tst.w	r3, #32
    22c8:	d0fb      	beq.n	22c2 <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    22ca:	f3c2 4203 	ubfx	r2, r2, #16, #4
    22ce:	4b13      	ldr	r3, [pc, #76]	; (231c <rtc_init+0xe4>)
    22d0:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    22d2:	461a      	mov	r2, r3
    22d4:	6853      	ldr	r3, [r2, #4]
    22d6:	f013 0f20 	tst.w	r3, #32
    22da:	d0fb      	beq.n	22d4 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    22dc:	f64a 2255 	movw	r2, #43605	; 0xaa55
    22e0:	4b0b      	ldr	r3, [pc, #44]	; (2310 <rtc_init+0xd8>)
    22e2:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    22e4:	4a0d      	ldr	r2, [pc, #52]	; (231c <rtc_init+0xe4>)
    22e6:	6853      	ldr	r3, [r2, #4]
    22e8:	f023 0310 	bic.w	r3, r3, #16
    22ec:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    22ee:	6853      	ldr	r3, [r2, #4]
    22f0:	f013 0f20 	tst.w	r3, #32
    22f4:	d0fb      	beq.n	22ee <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    22f6:	4a08      	ldr	r2, [pc, #32]	; (2318 <rtc_init+0xe0>)
    22f8:	6813      	ldr	r3, [r2, #0]
    22fa:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    22fe:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    2300:	210f      	movs	r1, #15
    2302:	2003      	movs	r0, #3
    2304:	f7ff fe38 	bl	1f78 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    2308:	2003      	movs	r0, #3
    230a:	f7ff fdd5 	bl	1eb8 <enable_interrupt>
    230e:	bd10      	pop	{r4, pc}
    2310:	40006c00 	.word	0x40006c00
    2314:	40021000 	.word	0x40021000
    2318:	40007000 	.word	0x40007000
    231c:	40002800 	.word	0x40002800
    2320:	10624dd3 	.word	0x10624dd3

00002324 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2324:	4b06      	ldr	r3, [pc, #24]	; (2340 <reset_backup_domain+0x1c>)
    2326:	69da      	ldr	r2, [r3, #28]
    2328:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    232c:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    232e:	6a1a      	ldr	r2, [r3, #32]
    2330:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    2334:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    2336:	6a1a      	ldr	r2, [r3, #32]
    2338:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    233c:	621a      	str	r2, [r3, #32]
    233e:	4770      	bx	lr
    2340:	40021000 	.word	0x40021000

00002344 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2344:	4a27      	ldr	r2, [pc, #156]	; (23e4 <rtc_clock_trim+0xa0>)
    2346:	69d3      	ldr	r3, [r2, #28]
    2348:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    234c:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    234e:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2352:	6853      	ldr	r3, [r2, #4]
    2354:	f013 0f08 	tst.w	r3, #8
    2358:	d0fb      	beq.n	2352 <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    235a:	4a23      	ldr	r2, [pc, #140]	; (23e8 <rtc_clock_trim+0xa4>)
    235c:	6813      	ldr	r3, [r2, #0]
    235e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2362:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2364:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    2368:	6853      	ldr	r3, [r2, #4]
    236a:	f043 0310 	orr.w	r3, r3, #16
    236e:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2370:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    2374:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    2376:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    237a:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    237c:	b9b8      	cbnz	r0, 23ae <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    237e:	2200      	movs	r2, #0
    2380:	4b1a      	ldr	r3, [pc, #104]	; (23ec <rtc_clock_trim+0xa8>)
    2382:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    2384:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    2388:	f647 71ff 	movw	r1, #32767	; 0x7fff
    238c:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    238e:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2390:	4a17      	ldr	r2, [pc, #92]	; (23f0 <rtc_clock_trim+0xac>)
    2392:	6853      	ldr	r3, [r2, #4]
    2394:	f023 0310 	bic.w	r3, r3, #16
    2398:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    239a:	6853      	ldr	r3, [r2, #4]
    239c:	f013 0f20 	tst.w	r3, #32
    23a0:	d0fb      	beq.n	239a <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    23a2:	4a11      	ldr	r2, [pc, #68]	; (23e8 <rtc_clock_trim+0xa4>)
    23a4:	6813      	ldr	r3, [r2, #0]
    23a6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23aa:	6013      	str	r3, [r2, #0]
    23ac:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    23ae:	2800      	cmp	r0, #0
    23b0:	dd06      	ble.n	23c0 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    23b2:	4b0e      	ldr	r3, [pc, #56]	; (23ec <rtc_clock_trim+0xa8>)
    23b4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    23b6:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    23ba:	4310      	orrs	r0, r2
    23bc:	62d8      	str	r0, [r3, #44]	; 0x2c
    23be:	e7e7      	b.n	2390 <rtc_clock_trim+0x4c>
		trim=-trim;
    23c0:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    23c2:	2100      	movs	r1, #0
    23c4:	4b09      	ldr	r3, [pc, #36]	; (23ec <rtc_clock_trim+0xa8>)
    23c6:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    23c8:	f64f 73ff 	movw	r3, #65535	; 0xffff
    23cc:	287f      	cmp	r0, #127	; 0x7f
    23ce:	bfd4      	ite	le
    23d0:	1a18      	suble	r0, r3, r0
    23d2:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    23d6:	f3c0 000e 	ubfx	r0, r0, #0, #15
    23da:	4a05      	ldr	r2, [pc, #20]	; (23f0 <rtc_clock_trim+0xac>)
    23dc:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    23de:	6091      	str	r1, [r2, #8]
    23e0:	e7d6      	b.n	2390 <rtc_clock_trim+0x4c>
    23e2:	bf00      	nop
    23e4:	40021000 	.word	0x40021000
    23e8:	40007000 	.word	0x40007000
    23ec:	40006c00 	.word	0x40006c00
    23f0:	40002800 	.word	0x40002800

000023f4 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    23f4:	4770      	bx	lr

000023f6 <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    23f6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    23fa:	4607      	mov	r7, r0
    23fc:	4688      	mov	r8, r1
    23fe:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    2400:	2400      	movs	r4, #0
	i=0;
    2402:	4626      	mov	r6, r4
	while (digit(date[i])){
    2404:	e008      	b.n	2418 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    2406:	3601      	adds	r6, #1
    2408:	3501      	adds	r5, #1
    240a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    240e:	f899 3000 	ldrb.w	r3, [r9]
    2412:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    2416:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2418:	46a9      	mov	r9, r5
    241a:	7828      	ldrb	r0, [r5, #0]
    241c:	f7fe feb1 	bl	1182 <digit>
    2420:	4682      	mov	sl, r0
    2422:	2800      	cmp	r0, #0
    2424:	d1ef      	bne.n	2406 <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    2426:	2e03      	cmp	r6, #3
    2428:	dd02      	ble.n	2430 <str_to_date+0x3a>
    242a:	782b      	ldrb	r3, [r5, #0]
    242c:	2b2f      	cmp	r3, #47	; 0x2f
    242e:	d002      	beq.n	2436 <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    2430:	4650      	mov	r0, sl
    2432:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    2436:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    243a:	3601      	adds	r6, #1
    243c:	19bd      	adds	r5, r7, r6
	n=0;
    243e:	4604      	mov	r4, r0
	while (digit(date[i])){
    2440:	e008      	b.n	2454 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    2442:	3601      	adds	r6, #1
    2444:	3501      	adds	r5, #1
    2446:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    244a:	f899 3000 	ldrb.w	r3, [r9]
    244e:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    2452:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2454:	46a9      	mov	r9, r5
    2456:	7828      	ldrb	r0, [r5, #0]
    2458:	f7fe fe93 	bl	1182 <digit>
    245c:	4682      	mov	sl, r0
    245e:	2800      	cmp	r0, #0
    2460:	d1ef      	bne.n	2442 <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    2462:	2e06      	cmp	r6, #6
    2464:	dde4      	ble.n	2430 <str_to_date+0x3a>
    2466:	782b      	ldrb	r3, [r5, #0]
    2468:	2b2f      	cmp	r3, #47	; 0x2f
    246a:	d1e1      	bne.n	2430 <str_to_date+0x3a>
	dt->month=n;
    246c:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2470:	f364 1389 	bfi	r3, r4, #6, #4
    2474:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2478:	1c74      	adds	r4, r6, #1
    247a:	443e      	add	r6, r7
	while (digit(date[i])){
    247c:	e008      	b.n	2490 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    247e:	3401      	adds	r4, #1
    2480:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2484:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2488:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    248c:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2490:	7870      	ldrb	r0, [r6, #1]
    2492:	f7fe fe76 	bl	1182 <digit>
    2496:	2800      	cmp	r0, #0
    2498:	d1f1      	bne.n	247e <str_to_date+0x88>
	if (i<10) return 0;
    249a:	2c09      	cmp	r4, #9
    249c:	dd08      	ble.n	24b0 <str_to_date+0xba>
	dt->day=n;
    249e:	f898 3002 	ldrb.w	r3, [r8, #2]
    24a2:	f36a 0345 	bfi	r3, sl, #1, #5
    24a6:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    24aa:	f04f 0a01 	mov.w	sl, #1
    24ae:	e7bf      	b.n	2430 <str_to_date+0x3a>
	if (i<10) return 0;
    24b0:	4682      	mov	sl, r0
    24b2:	e7bd      	b.n	2430 <str_to_date+0x3a>

000024b4 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    24b4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    24b8:	4607      	mov	r7, r0
    24ba:	4688      	mov	r8, r1
    24bc:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    24be:	2400      	movs	r4, #0
	i=0;
    24c0:	4626      	mov	r6, r4
	while (digit(time[i])){
    24c2:	e00a      	b.n	24da <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    24c4:	3601      	adds	r6, #1
    24c6:	3501      	adds	r5, #1
    24c8:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    24cc:	0064      	lsls	r4, r4, #1
    24ce:	3c30      	subs	r4, #48	; 0x30
    24d0:	f899 3000 	ldrb.w	r3, [r9]
    24d4:	441c      	add	r4, r3
    24d6:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    24da:	46a9      	mov	r9, r5
    24dc:	7828      	ldrb	r0, [r5, #0]
    24de:	f7fe fe50 	bl	1182 <digit>
    24e2:	4603      	mov	r3, r0
    24e4:	2800      	cmp	r0, #0
    24e6:	d1ed      	bne.n	24c4 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    24e8:	2c17      	cmp	r4, #23
    24ea:	d802      	bhi.n	24f2 <str_to_time+0x3e>
    24ec:	782a      	ldrb	r2, [r5, #0]
    24ee:	2a3a      	cmp	r2, #58	; 0x3a
    24f0:	d002      	beq.n	24f8 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    24f2:	4618      	mov	r0, r3
    24f4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    24f8:	f8d8 3000 	ldr.w	r3, [r8]
    24fc:	f364 3310 	bfi	r3, r4, #12, #5
    2500:	f8c8 3000 	str.w	r3, [r8]
	i++;
    2504:	3601      	adds	r6, #1
    2506:	19bd      	adds	r5, r7, r6
	n=0;
    2508:	2400      	movs	r4, #0
	while (digit(time[i])){
    250a:	e00a      	b.n	2522 <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    250c:	3601      	adds	r6, #1
    250e:	3501      	adds	r5, #1
    2510:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2514:	0064      	lsls	r4, r4, #1
    2516:	3c30      	subs	r4, #48	; 0x30
    2518:	f899 3000 	ldrb.w	r3, [r9]
    251c:	441c      	add	r4, r3
    251e:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2522:	46a9      	mov	r9, r5
    2524:	7828      	ldrb	r0, [r5, #0]
    2526:	f7fe fe2c 	bl	1182 <digit>
    252a:	4603      	mov	r3, r0
    252c:	2800      	cmp	r0, #0
    252e:	d1ed      	bne.n	250c <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    2530:	2c3b      	cmp	r4, #59	; 0x3b
    2532:	d8de      	bhi.n	24f2 <str_to_time+0x3e>
    2534:	782a      	ldrb	r2, [r5, #0]
    2536:	2a3a      	cmp	r2, #58	; 0x3a
    2538:	d1db      	bne.n	24f2 <str_to_time+0x3e>
	dt->minute=n;
    253a:	f8b8 3000 	ldrh.w	r3, [r8]
    253e:	f364 138b 	bfi	r3, r4, #6, #6
    2542:	f8a8 3000 	strh.w	r3, [r8]
    2546:	443e      	add	r6, r7
	n=0;
    2548:	2400      	movs	r4, #0
	while (digit(time[i])){
    254a:	e008      	b.n	255e <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    254c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2550:	0064      	lsls	r4, r4, #1
    2552:	3c30      	subs	r4, #48	; 0x30
    2554:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2558:	441c      	add	r4, r3
    255a:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    255e:	7870      	ldrb	r0, [r6, #1]
    2560:	f7fe fe0f 	bl	1182 <digit>
    2564:	4603      	mov	r3, r0
    2566:	2800      	cmp	r0, #0
    2568:	d1f0      	bne.n	254c <str_to_time+0x98>
	if (n>59) return 0;
    256a:	2c3b      	cmp	r4, #59	; 0x3b
    256c:	d8c1      	bhi.n	24f2 <str_to_time+0x3e>
	dt->second=n;
    256e:	f898 3000 	ldrb.w	r3, [r8]
    2572:	f364 0305 	bfi	r3, r4, #0, #6
    2576:	f888 3000 	strb.w	r3, [r8]
	return 1;
    257a:	2301      	movs	r3, #1
    257c:	e7b9      	b.n	24f2 <str_to_time+0x3e>

0000257e <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    257e:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2580:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    2582:	4b23      	ldr	r3, [pc, #140]	; (2610 <date_str+0x92>)
    2584:	fba3 4302 	umull	r4, r3, r3, r2
    2588:	099b      	lsrs	r3, r3, #6
    258a:	f103 0430 	add.w	r4, r3, #48	; 0x30
    258e:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2590:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2594:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2598:	4b1e      	ldr	r3, [pc, #120]	; (2614 <date_str+0x96>)
    259a:	fba3 4302 	umull	r4, r3, r3, r2
    259e:	095b      	lsrs	r3, r3, #5
    25a0:	f103 0430 	add.w	r4, r3, #48	; 0x30
    25a4:	704c      	strb	r4, [r1, #1]
	n%=100;
    25a6:	2464      	movs	r4, #100	; 0x64
    25a8:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    25ac:	4a1a      	ldr	r2, [pc, #104]	; (2618 <date_str+0x9a>)
    25ae:	fba2 5403 	umull	r5, r4, r2, r3
    25b2:	08e4      	lsrs	r4, r4, #3
    25b4:	f104 0530 	add.w	r5, r4, #48	; 0x30
    25b8:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    25ba:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25be:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    25c2:	3330      	adds	r3, #48	; 0x30
    25c4:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    25c6:	262f      	movs	r6, #47	; 0x2f
    25c8:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    25ca:	8843      	ldrh	r3, [r0, #2]
    25cc:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    25d0:	fba2 5403 	umull	r5, r4, r2, r3
    25d4:	08e4      	lsrs	r4, r4, #3
    25d6:	f104 0530 	add.w	r5, r4, #48	; 0x30
    25da:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    25dc:	00a5      	lsls	r5, r4, #2
    25de:	442c      	add	r4, r5
    25e0:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    25e4:	3330      	adds	r3, #48	; 0x30
    25e6:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    25e8:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    25ea:	7880      	ldrb	r0, [r0, #2]
    25ec:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    25f0:	fba2 3200 	umull	r3, r2, r2, r0
    25f4:	08d3      	lsrs	r3, r2, #3
    25f6:	f103 0230 	add.w	r2, r3, #48	; 0x30
    25fa:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    25fc:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2600:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    2604:	3330      	adds	r3, #48	; 0x30
    2606:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    2608:	2300      	movs	r3, #0
    260a:	728b      	strb	r3, [r1, #10]

}
    260c:	bc70      	pop	{r4, r5, r6}
    260e:	4770      	bx	lr
    2610:	10624dd3 	.word	0x10624dd3
    2614:	51eb851f 	.word	0x51eb851f
    2618:	cccccccd 	.word	0xcccccccd

0000261c <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    261c:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    261e:	6802      	ldr	r2, [r0, #0]
    2620:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    2624:	4b18      	ldr	r3, [pc, #96]	; (2688 <time_str+0x6c>)
    2626:	fba3 5402 	umull	r5, r4, r3, r2
    262a:	08e4      	lsrs	r4, r4, #3
    262c:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2630:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    2632:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2636:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    263a:	3230      	adds	r2, #48	; 0x30
    263c:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    263e:	253a      	movs	r5, #58	; 0x3a
    2640:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    2642:	8802      	ldrh	r2, [r0, #0]
    2644:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2648:	fba3 6402 	umull	r6, r4, r3, r2
    264c:	08e4      	lsrs	r4, r4, #3
    264e:	f104 0630 	add.w	r6, r4, #48	; 0x30
    2652:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    2654:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2658:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    265c:	3230      	adds	r2, #48	; 0x30
    265e:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2660:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    2662:	7802      	ldrb	r2, [r0, #0]
    2664:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    2668:	fba3 0302 	umull	r0, r3, r3, r2
    266c:	08db      	lsrs	r3, r3, #3
    266e:	f103 0030 	add.w	r0, r3, #48	; 0x30
    2672:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2674:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2678:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    267c:	3330      	adds	r3, #48	; 0x30
    267e:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2680:	2300      	movs	r3, #0
    2682:	720b      	strb	r3, [r1, #8]
}
    2684:	bc70      	pop	{r4, r5, r6}
    2686:	4770      	bx	lr
    2688:	cccccccd 	.word	0xcccccccd

0000268c <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    268c:	b500      	push	{lr}
    268e:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2690:	a801      	add	r0, sp, #4
    2692:	f7ff fcbb 	bl	200c <get_date_time>
	t.fields.second=dt.second/2;
    2696:	f89d 3004 	ldrb.w	r3, [sp, #4]
    269a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    269e:	2000      	movs	r0, #0
    26a0:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    26a4:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    26a8:	f3c3 1385 	ubfx	r3, r3, #6, #6
    26ac:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    26b0:	9b01      	ldr	r3, [sp, #4]
    26b2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    26b6:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    26ba:	f89d 3006 	ldrb.w	r3, [sp, #6]
    26be:	f3c3 0344 	ubfx	r3, r3, #1, #5
    26c2:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    26c6:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    26ca:	f3c3 1383 	ubfx	r3, r3, #6, #4
    26ce:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    26d2:	f89d 300c 	ldrb.w	r3, [sp, #12]
    26d6:	3344      	adds	r3, #68	; 0x44
    26d8:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    26dc:	b005      	add	sp, #20
    26de:	f85d fb04 	ldr.w	pc, [sp], #4

000026e2 <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    26e2:	4b07      	ldr	r3, [pc, #28]	; (2700 <RTC_handler+0x1e>)
    26e4:	685b      	ldr	r3, [r3, #4]
    26e6:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    26ea:	bf1c      	itt	ne
    26ec:	4b04      	ldrne	r3, [pc, #16]	; (2700 <RTC_handler+0x1e>)
    26ee:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    26f0:	4b03      	ldr	r3, [pc, #12]	; (2700 <RTC_handler+0x1e>)
    26f2:	685b      	ldr	r3, [r3, #4]
    26f4:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    26f8:	bf1c      	itt	ne
    26fa:	4b01      	ldrne	r3, [pc, #4]	; (2700 <RTC_handler+0x1e>)
    26fc:	685b      	ldrne	r3, [r3, #4]
    26fe:	4770      	bx	lr
    2700:	40002800 	.word	0x40002800

00002704 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    2704:	b508      	push	{r3, lr}
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    2706:	4b12      	ldr	r3, [pc, #72]	; (2750 <sound_init+0x4c>)
    2708:	685a      	ldr	r2, [r3, #4]
    270a:	f402 7240 	and.w	r2, r2, #768	; 0x300
    270e:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    2710:	685a      	ldr	r2, [r3, #4]
    2712:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    2716:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    2718:	220a      	movs	r2, #10
    271a:	4611      	mov	r1, r2
    271c:	480d      	ldr	r0, [pc, #52]	; (2754 <sound_init+0x50>)
    271e:	f7fe fe5b 	bl	13d8 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    2722:	4a0d      	ldr	r2, [pc, #52]	; (2758 <sound_init+0x54>)
    2724:	69d3      	ldr	r3, [r2, #28]
    2726:	f043 0301 	orr.w	r3, r3, #1
    272a:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    272c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2730:	2278      	movs	r2, #120	; 0x78
    2732:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    2734:	f44f 7280 	mov.w	r2, #256	; 0x100
    2738:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    273a:	2209      	movs	r2, #9
    273c:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    273e:	2100      	movs	r1, #0
    2740:	201c      	movs	r0, #28
    2742:	f7ff fc19 	bl	1f78 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    2746:	201c      	movs	r0, #28
    2748:	f7ff fbb6 	bl	1eb8 <enable_interrupt>
    274c:	bd08      	pop	{r3, pc}
    274e:	bf00      	nop
    2750:	40010000 	.word	0x40010000
    2754:	40010c00 	.word	0x40010c00
    2758:	40021000 	.word	0x40021000

0000275c <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    275c:	4b07      	ldr	r3, [pc, #28]	; (277c <tone+0x20>)
    275e:	fbb3 f0f0 	udiv	r0, r3, r0
    2762:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2766:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    2768:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    276a:	0852      	lsrs	r2, r2, #1
    276c:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    276e:	681a      	ldr	r2, [r3, #0]
    2770:	f042 0201 	orr.w	r2, r2, #1
    2774:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2776:	4b02      	ldr	r3, [pc, #8]	; (2780 <tone+0x24>)
    2778:	8019      	strh	r1, [r3, #0]
    277a:	4770      	bx	lr
    277c:	006d3d32 	.word	0x006d3d32
    2780:	20004e24 	.word	0x20004e24

00002784 <beep>:
}

void beep(uint16_t duration){
    2784:	b508      	push	{r3, lr}
    tone(1000,duration);
    2786:	4601      	mov	r1, r0
    2788:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    278c:	f7ff ffe6 	bl	275c <tone>
    2790:	bd08      	pop	{r3, pc}

00002792 <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    2792:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2796:	681a      	ldr	r2, [r3, #0]
    2798:	f022 0201 	bic.w	r2, r2, #1
    279c:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    279e:	68da      	ldr	r2, [r3, #12]
    27a0:	f022 0201 	bic.w	r2, r2, #1
    27a4:	60da      	str	r2, [r3, #12]
    27a6:	4770      	bx	lr

000027a8 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    27a8:	b510      	push	{r4, lr}
    27aa:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    27ac:	b289      	uxth	r1, r1
    27ae:	4b06      	ldr	r3, [pc, #24]	; (27c8 <key_tone+0x20>)
    27b0:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    27b4:	f7ff ffd2 	bl	275c <tone>
    if (wait_end) while (sound_timer);
    27b8:	b124      	cbz	r4, 27c4 <key_tone+0x1c>
    27ba:	4a04      	ldr	r2, [pc, #16]	; (27cc <key_tone+0x24>)
    27bc:	8813      	ldrh	r3, [r2, #0]
    27be:	b29b      	uxth	r3, r3
    27c0:	2b00      	cmp	r3, #0
    27c2:	d1fb      	bne.n	27bc <key_tone+0x14>
    27c4:	bd10      	pop	{r4, pc}
    27c6:	bf00      	nop
    27c8:	00003a74 	.word	0x00003a74
    27cc:	20004e24 	.word	0x20004e24

000027d0 <noise>:
}

// produit un bruit 
void noise(int length){
    27d0:	b510      	push	{r4, lr}
    27d2:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    27d4:	4b07      	ldr	r3, [pc, #28]	; (27f4 <noise+0x24>)
    27d6:	6818      	ldr	r0, [r3, #0]
    27d8:	f7fd fdf2 	bl	3c0 <srand>
    tone(6000,length);
    27dc:	b2a1      	uxth	r1, r4
    27de:	f241 7070 	movw	r0, #6000	; 0x1770
    27e2:	f7ff ffbb 	bl	275c <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    27e6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    27ea:	68d3      	ldr	r3, [r2, #12]
    27ec:	f043 0301 	orr.w	r3, r3, #1
    27f0:	60d3      	str	r3, [r2, #12]
    27f2:	bd10      	pop	{r4, pc}
    27f4:	20004e20 	.word	0x20004e20

000027f8 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    27f8:	4668      	mov	r0, sp
    27fa:	f020 0107 	bic.w	r1, r0, #7
    27fe:	468d      	mov	sp, r1
    2800:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    2802:	f7fd fde3 	bl	3cc <rand>
    2806:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    280a:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    280e:	6a13      	ldr	r3, [r2, #32]
    2810:	bf14      	ite	ne
    2812:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    2816:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    281a:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    281c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2820:	6913      	ldr	r3, [r2, #16]
    2822:	f023 0301 	bic.w	r3, r3, #1
    2826:	6113      	str	r3, [r2, #16]
}
    2828:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    282c:	4685      	mov	sp, r0
    282e:	4770      	bx	lr

00002830 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    2830:	6803      	ldr	r3, [r0, #0]
    2832:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2836:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2838:	6803      	ldr	r3, [r0, #0]
    283a:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    283e:	6001      	str	r1, [r0, #0]
    2840:	4770      	bx	lr

00002842 <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2842:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2844:	4a2f      	ldr	r2, [pc, #188]	; (2904 <spi_config_port+0xc2>)
    2846:	6993      	ldr	r3, [r2, #24]
    2848:	f043 0301 	orr.w	r3, r3, #1
    284c:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    284e:	4b2e      	ldr	r3, [pc, #184]	; (2908 <spi_config_port+0xc6>)
    2850:	4298      	cmp	r0, r3
    2852:	d01a      	beq.n	288a <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2854:	4a2b      	ldr	r2, [pc, #172]	; (2904 <spi_config_port+0xc2>)
    2856:	6993      	ldr	r3, [r2, #24]
    2858:	f043 0308 	orr.w	r3, r3, #8
    285c:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    285e:	4c2b      	ldr	r4, [pc, #172]	; (290c <spi_config_port+0xca>)
    2860:	2203      	movs	r2, #3
    2862:	2102      	movs	r1, #2
    2864:	4620      	mov	r0, r4
    2866:	f7fe fdb7 	bl	13d8 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    286a:	220b      	movs	r2, #11
    286c:	210d      	movs	r1, #13
    286e:	4620      	mov	r0, r4
    2870:	f7fe fdb2 	bl	13d8 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2874:	2204      	movs	r2, #4
    2876:	210e      	movs	r1, #14
    2878:	4620      	mov	r0, r4
    287a:	f7fe fdad 	bl	13d8 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    287e:	220b      	movs	r2, #11
    2880:	210f      	movs	r1, #15
    2882:	4620      	mov	r0, r4
    2884:	f7fe fda8 	bl	13d8 <config_pin>
    2888:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    288a:	b9c9      	cbnz	r1, 28c0 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    288c:	6993      	ldr	r3, [r2, #24]
    288e:	f043 0304 	orr.w	r3, r3, #4
    2892:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2894:	4c1e      	ldr	r4, [pc, #120]	; (2910 <spi_config_port+0xce>)
    2896:	2203      	movs	r2, #3
    2898:	2104      	movs	r1, #4
    289a:	4620      	mov	r0, r4
    289c:	f7fe fd9c 	bl	13d8 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    28a0:	220b      	movs	r2, #11
    28a2:	2105      	movs	r1, #5
    28a4:	4620      	mov	r0, r4
    28a6:	f7fe fd97 	bl	13d8 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    28aa:	2204      	movs	r2, #4
    28ac:	2106      	movs	r1, #6
    28ae:	4620      	mov	r0, r4
    28b0:	f7fe fd92 	bl	13d8 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    28b4:	220b      	movs	r2, #11
    28b6:	2107      	movs	r1, #7
    28b8:	4620      	mov	r0, r4
    28ba:	f7fe fd8d 	bl	13d8 <config_pin>
    28be:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    28c0:	4a10      	ldr	r2, [pc, #64]	; (2904 <spi_config_port+0xc2>)
    28c2:	6993      	ldr	r3, [r2, #24]
    28c4:	f043 030d 	orr.w	r3, r3, #13
    28c8:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    28ca:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    28ce:	6853      	ldr	r3, [r2, #4]
    28d0:	f043 0301 	orr.w	r3, r3, #1
    28d4:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    28d6:	2203      	movs	r2, #3
    28d8:	210f      	movs	r1, #15
    28da:	480d      	ldr	r0, [pc, #52]	; (2910 <spi_config_port+0xce>)
    28dc:	f7fe fd7c 	bl	13d8 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    28e0:	4c0a      	ldr	r4, [pc, #40]	; (290c <spi_config_port+0xca>)
    28e2:	220b      	movs	r2, #11
    28e4:	2103      	movs	r1, #3
    28e6:	4620      	mov	r0, r4
    28e8:	f7fe fd76 	bl	13d8 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    28ec:	2204      	movs	r2, #4
    28ee:	4611      	mov	r1, r2
    28f0:	4620      	mov	r0, r4
    28f2:	f7fe fd71 	bl	13d8 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    28f6:	220b      	movs	r2, #11
    28f8:	2105      	movs	r1, #5
    28fa:	4620      	mov	r0, r4
    28fc:	f7fe fd6c 	bl	13d8 <config_pin>
    2900:	bd10      	pop	{r4, pc}
    2902:	bf00      	nop
    2904:	40021000 	.word	0x40021000
    2908:	40013000 	.word	0x40013000
    290c:	40010c00 	.word	0x40010c00
    2910:	40010800 	.word	0x40010800

00002914 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2914:	b570      	push	{r4, r5, r6, lr}
    2916:	4604      	mov	r4, r0
    2918:	460d      	mov	r5, r1
    291a:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    291c:	4619      	mov	r1, r3
    291e:	f7ff ff90 	bl	2842 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2922:	4b0c      	ldr	r3, [pc, #48]	; (2954 <spi_init+0x40>)
    2924:	429c      	cmp	r4, r3
    2926:	d00e      	beq.n	2946 <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2928:	4a0b      	ldr	r2, [pc, #44]	; (2958 <spi_init+0x44>)
    292a:	69d3      	ldr	r3, [r2, #28]
    292c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2930:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    2932:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2934:	4629      	mov	r1, r5
    2936:	4620      	mov	r0, r4
    2938:	f7ff ff7a 	bl	2830 <spi_baudrate>
	_spi_enable(channel);
    293c:	6823      	ldr	r3, [r4, #0]
    293e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2942:	6023      	str	r3, [r4, #0]
    2944:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2946:	4a04      	ldr	r2, [pc, #16]	; (2958 <spi_init+0x44>)
    2948:	6993      	ldr	r3, [r2, #24]
    294a:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    294e:	6193      	str	r3, [r2, #24]
    2950:	e7ef      	b.n	2932 <spi_init+0x1e>
    2952:	bf00      	nop
    2954:	40013000 	.word	0x40013000
    2958:	40021000 	.word	0x40021000

0000295c <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    295c:	6883      	ldr	r3, [r0, #8]
    295e:	f013 0f02 	tst.w	r3, #2
    2962:	d0fb      	beq.n	295c <spi_send>
	channel->DR=b;
    2964:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2966:	6883      	ldr	r3, [r0, #8]
    2968:	f013 0f01 	tst.w	r3, #1
    296c:	d0fb      	beq.n	2966 <spi_send+0xa>
	return (uint8_t)channel->DR;
    296e:	68c0      	ldr	r0, [r0, #12]
}
    2970:	b2c0      	uxtb	r0, r0
    2972:	4770      	bx	lr

00002974 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2974:	6883      	ldr	r3, [r0, #8]
    2976:	f013 0f02 	tst.w	r3, #2
    297a:	d0fb      	beq.n	2974 <spi_receive>
	channel->DR=255;
    297c:	23ff      	movs	r3, #255	; 0xff
    297e:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2980:	6883      	ldr	r3, [r0, #8]
    2982:	f013 0f01 	tst.w	r3, #1
    2986:	d0fb      	beq.n	2980 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2988:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    298a:	b2c0      	uxtb	r0, r0
    298c:	4770      	bx	lr

0000298e <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    298e:	b14a      	cbz	r2, 29a4 <spi_send_block+0x16>
    2990:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2992:	f811 3b01 	ldrb.w	r3, [r1], #1
    2996:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2998:	6883      	ldr	r3, [r0, #8]
    299a:	f013 0f02 	tst.w	r3, #2
    299e:	d0fb      	beq.n	2998 <spi_send_block+0xa>
	while (count){
    29a0:	428a      	cmp	r2, r1
    29a2:	d1f6      	bne.n	2992 <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    29a4:	6883      	ldr	r3, [r0, #8]
    29a6:	f013 0f80 	tst.w	r3, #128	; 0x80
    29aa:	d1fb      	bne.n	29a4 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    29ac:	68c3      	ldr	r3, [r0, #12]
    29ae:	4770      	bx	lr

000029b0 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    29b0:	b16a      	cbz	r2, 29ce <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    29b2:	b410      	push	{r4}
    29b4:	188a      	adds	r2, r1, r2
		channel->DR=0;
    29b6:	2400      	movs	r4, #0
    29b8:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    29ba:	6883      	ldr	r3, [r0, #8]
    29bc:	f013 0f01 	tst.w	r3, #1
    29c0:	d0fb      	beq.n	29ba <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    29c2:	68c3      	ldr	r3, [r0, #12]
    29c4:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    29c8:	428a      	cmp	r2, r1
    29ca:	d1f5      	bne.n	29b8 <spi_receive_block+0x8>
		count--;
	}
}
    29cc:	bc10      	pop	{r4}
    29ce:	4770      	bx	lr

000029d0 <reset_mcu>:
	_reset_mcu();
    29d0:	4a01      	ldr	r2, [pc, #4]	; (29d8 <reset_mcu+0x8>)
    29d2:	4b02      	ldr	r3, [pc, #8]	; (29dc <reset_mcu+0xc>)
    29d4:	601a      	str	r2, [r3, #0]
    29d6:	bf00      	nop
    29d8:	05fa0004 	.word	0x05fa0004
    29dc:	e000ed0c 	.word	0xe000ed0c

000029e0 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    29e0:	b508      	push	{r3, lr}
    29e2:	460c      	mov	r4, r1
	print(msg);
    29e4:	f000 f960 	bl	2ca8 <print>
	print("\nat address ");
    29e8:	4813      	ldr	r0, [pc, #76]	; (2a38 <print_fault+0x58>)
    29ea:	f000 f95d 	bl	2ca8 <print>
	if (adr) {
    29ee:	b9ec      	cbnz	r4, 2a2c <print_fault+0x4c>
	put_char(CR);
    29f0:	200d      	movs	r0, #13
    29f2:	f000 f8b9 	bl	2b68 <put_char>
	print("\nUFSR=");
    29f6:	4811      	ldr	r0, [pc, #68]	; (2a3c <print_fault+0x5c>)
    29f8:	f000 f956 	bl	2ca8 <print>
	print_int(CFSR->fsr.usageFalt,16);
    29fc:	4c10      	ldr	r4, [pc, #64]	; (2a40 <print_fault+0x60>)
    29fe:	6820      	ldr	r0, [r4, #0]
    2a00:	2110      	movs	r1, #16
    2a02:	40c8      	lsrs	r0, r1
    2a04:	f000 f96b 	bl	2cde <print_int>
	print("\nBFSR=");
    2a08:	480e      	ldr	r0, [pc, #56]	; (2a44 <print_fault+0x64>)
    2a0a:	f000 f94d 	bl	2ca8 <print>
	print_int(CFSR->fsr.busFault,16);
    2a0e:	6820      	ldr	r0, [r4, #0]
    2a10:	2110      	movs	r1, #16
    2a12:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2a16:	f000 f962 	bl	2cde <print_int>
	print("\nMMFSR=");
    2a1a:	480b      	ldr	r0, [pc, #44]	; (2a48 <print_fault+0x68>)
    2a1c:	f000 f944 	bl	2ca8 <print>
	print_int(CFSR->fsr.mmFault,16);
    2a20:	6820      	ldr	r0, [r4, #0]
    2a22:	2110      	movs	r1, #16
    2a24:	b2c0      	uxtb	r0, r0
    2a26:	f000 f95a 	bl	2cde <print_int>
    2a2a:	e7fe      	b.n	2a2a <print_fault+0x4a>
		print_int(adr,16);
    2a2c:	2110      	movs	r1, #16
    2a2e:	4620      	mov	r0, r4
    2a30:	f000 f955 	bl	2cde <print_int>
    2a34:	e7dc      	b.n	29f0 <print_fault+0x10>
    2a36:	bf00      	nop
    2a38:	00003cf4 	.word	0x00003cf4
    2a3c:	00003d04 	.word	0x00003d04
    2a40:	e000ed28 	.word	0xe000ed28
    2a44:	00003d0c 	.word	0x00003d0c
    2a48:	00003d14 	.word	0x00003d14

00002a4c <draw_char>:
	}else{
		usart_putc(USART1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2a4c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2a50:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2a52:	18cb      	adds	r3, r1, r3
    2a54:	9301      	str	r3, [sp, #4]
    2a56:	4299      	cmp	r1, r3
    2a58:	da20      	bge.n	2a9c <draw_char+0x50>
    2a5a:	4683      	mov	fp, r0
    2a5c:	460e      	mov	r6, r1
    2a5e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2a60:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2a64:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2a66:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2aa4 <draw_char+0x58>
		byte=*glyph++;
    2a6a:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2a6e:	45bb      	cmp	fp, r7
    2a70:	da10      	bge.n	2a94 <draw_char+0x48>
    2a72:	465c      	mov	r4, fp
    2a74:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2a76:	ea18 0f05 	tst.w	r8, r5
    2a7a:	bf14      	ite	ne
    2a7c:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2a80:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2a84:	4631      	mov	r1, r6
    2a86:	4620      	mov	r0, r4
    2a88:	f7fe fd32 	bl	14f0 <gfx_plot>
			mask>>=1;
    2a8c:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2a8e:	3401      	adds	r4, #1
    2a90:	42bc      	cmp	r4, r7
    2a92:	d1f0      	bne.n	2a76 <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2a94:	3601      	adds	r6, #1
    2a96:	9b01      	ldr	r3, [sp, #4]
    2a98:	429e      	cmp	r6, r3
    2a9a:	d1e6      	bne.n	2a6a <draw_char+0x1e>
		}
	}
}
    2a9c:	b003      	add	sp, #12
    2a9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2aa2:	bf00      	nop
    2aa4:	200001e8 	.word	0x200001e8

00002aa8 <font_color>:
	text_colors[FG]=color&0xf;
    2aa8:	f000 000f 	and.w	r0, r0, #15
    2aac:	4b01      	ldr	r3, [pc, #4]	; (2ab4 <font_color+0xc>)
    2aae:	7058      	strb	r0, [r3, #1]
    2ab0:	4770      	bx	lr
    2ab2:	bf00      	nop
    2ab4:	200001e8 	.word	0x200001e8

00002ab8 <bg_color>:
	text_colors[BG]=color&0xf;
    2ab8:	f000 000f 	and.w	r0, r0, #15
    2abc:	4b01      	ldr	r3, [pc, #4]	; (2ac4 <bg_color+0xc>)
    2abe:	7018      	strb	r0, [r3, #0]
    2ac0:	4770      	bx	lr
    2ac2:	bf00      	nop
    2ac4:	200001e8 	.word	0x200001e8

00002ac8 <select_font>:
	font=font_id;
    2ac8:	4b01      	ldr	r3, [pc, #4]	; (2ad0 <select_font+0x8>)
    2aca:	7098      	strb	r0, [r3, #2]
    2acc:	4770      	bx	lr
    2ace:	bf00      	nop
    2ad0:	200001e8 	.word	0x200001e8

00002ad4 <new_line>:
void new_line(){
    2ad4:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2ad6:	4b21      	ldr	r3, [pc, #132]	; (2b5c <new_line+0x88>)
    2ad8:	781b      	ldrb	r3, [r3, #0]
    2ada:	2b00      	cmp	r3, #0
    2adc:	d138      	bne.n	2b50 <new_line+0x7c>
		xpos=0;
    2ade:	2200      	movs	r2, #0
    2ae0:	4b1e      	ldr	r3, [pc, #120]	; (2b5c <new_line+0x88>)
    2ae2:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2ae4:	f000 fbf2 	bl	32cc <get_video_params>
		switch (font){
    2ae8:	4b1d      	ldr	r3, [pc, #116]	; (2b60 <new_line+0x8c>)
    2aea:	789b      	ldrb	r3, [r3, #2]
    2aec:	2b01      	cmp	r3, #1
    2aee:	d011      	beq.n	2b14 <new_line+0x40>
    2af0:	b113      	cbz	r3, 2af8 <new_line+0x24>
    2af2:	2b02      	cmp	r3, #2
    2af4:	d01d      	beq.n	2b32 <new_line+0x5e>
    2af6:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2af8:	4b18      	ldr	r3, [pc, #96]	; (2b5c <new_line+0x88>)
    2afa:	789b      	ldrb	r3, [r3, #2]
    2afc:	1d99      	adds	r1, r3, #6
    2afe:	89c2      	ldrh	r2, [r0, #14]
    2b00:	3a05      	subs	r2, #5
    2b02:	4291      	cmp	r1, r2
    2b04:	dc02      	bgt.n	2b0c <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2b06:	4a15      	ldr	r2, [pc, #84]	; (2b5c <new_line+0x88>)
    2b08:	7091      	strb	r1, [r2, #2]
    2b0a:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2b0c:	2006      	movs	r0, #6
    2b0e:	f7fe fd2d 	bl	156c <gfx_scroll_up>
    2b12:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2b14:	4b11      	ldr	r3, [pc, #68]	; (2b5c <new_line+0x88>)
    2b16:	789b      	ldrb	r3, [r3, #2]
    2b18:	f103 010a 	add.w	r1, r3, #10
    2b1c:	89c2      	ldrh	r2, [r0, #14]
    2b1e:	3a09      	subs	r2, #9
    2b20:	4291      	cmp	r1, r2
    2b22:	dc02      	bgt.n	2b2a <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2b24:	4a0d      	ldr	r2, [pc, #52]	; (2b5c <new_line+0x88>)
    2b26:	7091      	strb	r1, [r2, #2]
    2b28:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2b2a:	200a      	movs	r0, #10
    2b2c:	f7fe fd1e 	bl	156c <gfx_scroll_up>
    2b30:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2b32:	4b0a      	ldr	r3, [pc, #40]	; (2b5c <new_line+0x88>)
    2b34:	789b      	ldrb	r3, [r3, #2]
    2b36:	f103 0108 	add.w	r1, r3, #8
    2b3a:	89c2      	ldrh	r2, [r0, #14]
    2b3c:	3a07      	subs	r2, #7
    2b3e:	4291      	cmp	r1, r2
    2b40:	dc02      	bgt.n	2b48 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2b42:	4a06      	ldr	r2, [pc, #24]	; (2b5c <new_line+0x88>)
    2b44:	7091      	strb	r1, [r2, #2]
    2b46:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2b48:	2008      	movs	r0, #8
    2b4a:	f7fe fd0f 	bl	156c <gfx_scroll_up>
    2b4e:	bd08      	pop	{r3, pc}
		usart_putc(USART1,'\n');
    2b50:	210a      	movs	r1, #10
    2b52:	4804      	ldr	r0, [pc, #16]	; (2b64 <new_line+0x90>)
    2b54:	f000 fcfc 	bl	3550 <usart_putc>
    2b58:	bd08      	pop	{r3, pc}
    2b5a:	bf00      	nop
    2b5c:	20000680 	.word	0x20000680
    2b60:	200001e8 	.word	0x200001e8
    2b64:	40013800 	.word	0x40013800

00002b68 <put_char>:

void put_char(uint8_t c){
    2b68:	b530      	push	{r4, r5, lr}
    2b6a:	b083      	sub	sp, #12
	if (console==LOCAL){
    2b6c:	4b2e      	ldr	r3, [pc, #184]	; (2c28 <put_char+0xc0>)
    2b6e:	781b      	ldrb	r3, [r3, #0]
    2b70:	2b00      	cmp	r3, #0
    2b72:	d153      	bne.n	2c1c <put_char+0xb4>
	switch(font){
    2b74:	4b2d      	ldr	r3, [pc, #180]	; (2c2c <put_char+0xc4>)
    2b76:	789b      	ldrb	r3, [r3, #2]
    2b78:	2b01      	cmp	r3, #1
    2b7a:	d036      	beq.n	2bea <put_char+0x82>
    2b7c:	b1e3      	cbz	r3, 2bb8 <put_char+0x50>
    2b7e:	2b02      	cmp	r3, #2
    2b80:	d150      	bne.n	2c24 <put_char+0xbc>
				new_line();
			}
		}
		break;
	case FONT_ASCII:
		if ((c>31) && (c<(FONT_SIZE+32))){
    2b82:	f1a0 0320 	sub.w	r3, r0, #32
    2b86:	b2db      	uxtb	r3, r3
    2b88:	2b64      	cmp	r3, #100	; 0x64
    2b8a:	d84b      	bhi.n	2c24 <put_char+0xbc>
			draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2b8c:	4c26      	ldr	r4, [pc, #152]	; (2c28 <put_char+0xc0>)
    2b8e:	78a1      	ldrb	r1, [r4, #2]
    2b90:	7865      	ldrb	r5, [r4, #1]
    2b92:	3820      	subs	r0, #32
    2b94:	4b26      	ldr	r3, [pc, #152]	; (2c30 <put_char+0xc8>)
    2b96:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2b9a:	9300      	str	r3, [sp, #0]
    2b9c:	2308      	movs	r3, #8
    2b9e:	2206      	movs	r2, #6
    2ba0:	4628      	mov	r0, r5
    2ba2:	f7ff ff53 	bl	2a4c <draw_char>
			xpos+=CHAR_WIDTH;
    2ba6:	7863      	ldrb	r3, [r4, #1]
    2ba8:	3306      	adds	r3, #6
    2baa:	b2db      	uxtb	r3, r3
    2bac:	7063      	strb	r3, [r4, #1]
			if (xpos>(HRES-CHAR_WIDTH+1)){
    2bae:	2baf      	cmp	r3, #175	; 0xaf
    2bb0:	d938      	bls.n	2c24 <put_char+0xbc>
				new_line();
    2bb2:	f7ff ff8f 	bl	2ad4 <new_line>
    2bb6:	e035      	b.n	2c24 <put_char+0xbc>
		if (c<16){
    2bb8:	280f      	cmp	r0, #15
    2bba:	d833      	bhi.n	2c24 <put_char+0xbc>
			draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2bbc:	4c1a      	ldr	r4, [pc, #104]	; (2c28 <put_char+0xc0>)
    2bbe:	78a1      	ldrb	r1, [r4, #2]
    2bc0:	7865      	ldrb	r5, [r4, #1]
    2bc2:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2bc6:	4b1b      	ldr	r3, [pc, #108]	; (2c34 <put_char+0xcc>)
    2bc8:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2bcc:	9300      	str	r3, [sp, #0]
    2bce:	2306      	movs	r3, #6
    2bd0:	2204      	movs	r2, #4
    2bd2:	4628      	mov	r0, r5
    2bd4:	f7ff ff3a 	bl	2a4c <draw_char>
			xpos+=SHEX_WIDTH;
    2bd8:	7863      	ldrb	r3, [r4, #1]
    2bda:	3304      	adds	r3, #4
    2bdc:	b2db      	uxtb	r3, r3
    2bde:	7063      	strb	r3, [r4, #1]
			if (xpos>(HRES-SHEX_WIDTH+1)){
    2be0:	2bb1      	cmp	r3, #177	; 0xb1
    2be2:	d91f      	bls.n	2c24 <put_char+0xbc>
				new_line();
    2be4:	f7ff ff76 	bl	2ad4 <new_line>
    2be8:	e01c      	b.n	2c24 <put_char+0xbc>
		if (c<16){
    2bea:	280f      	cmp	r0, #15
    2bec:	d81a      	bhi.n	2c24 <put_char+0xbc>
			draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2bee:	4c0e      	ldr	r4, [pc, #56]	; (2c28 <put_char+0xc0>)
    2bf0:	78a1      	ldrb	r1, [r4, #2]
    2bf2:	7865      	ldrb	r5, [r4, #1]
    2bf4:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2bf8:	4b0f      	ldr	r3, [pc, #60]	; (2c38 <put_char+0xd0>)
    2bfa:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2bfe:	9300      	str	r3, [sp, #0]
    2c00:	230a      	movs	r3, #10
    2c02:	2208      	movs	r2, #8
    2c04:	4628      	mov	r0, r5
    2c06:	f7ff ff21 	bl	2a4c <draw_char>
			xpos+=LHEX_WIDTH;
    2c0a:	7863      	ldrb	r3, [r4, #1]
    2c0c:	3308      	adds	r3, #8
    2c0e:	b2db      	uxtb	r3, r3
    2c10:	7063      	strb	r3, [r4, #1]
			if (xpos>(HRES-LHEX_WIDTH+1)){
    2c12:	2bad      	cmp	r3, #173	; 0xad
    2c14:	d906      	bls.n	2c24 <put_char+0xbc>
				new_line();
    2c16:	f7ff ff5d 	bl	2ad4 <new_line>
    2c1a:	e003      	b.n	2c24 <put_char+0xbc>
			}
		}
		break;		
	}
	}else{
		usart_putc(USART1,c);
    2c1c:	4601      	mov	r1, r0
    2c1e:	4807      	ldr	r0, [pc, #28]	; (2c3c <put_char+0xd4>)
    2c20:	f000 fc96 	bl	3550 <usart_putc>
	}
}
    2c24:	b003      	add	sp, #12
    2c26:	bd30      	pop	{r4, r5, pc}
    2c28:	20000680 	.word	0x20000680
    2c2c:	200001e8 	.word	0x200001e8
    2c30:	000035ec 	.word	0x000035ec
    2c34:	000039b4 	.word	0x000039b4
    2c38:	00003914 	.word	0x00003914
    2c3c:	40013800 	.word	0x40013800

00002c40 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2c40:	4b01      	ldr	r3, [pc, #4]	; (2c48 <set_cursor+0x8>)
    2c42:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2c44:	7099      	strb	r1, [r3, #2]
    2c46:	4770      	bx	lr
    2c48:	20000680 	.word	0x20000680

00002c4c <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2c4c:	4b03      	ldr	r3, [pc, #12]	; (2c5c <get_cursor+0x10>)
    2c4e:	785a      	ldrb	r2, [r3, #1]
    2c50:	7898      	ldrb	r0, [r3, #2]
    2c52:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2c56:	b280      	uxth	r0, r0
    2c58:	4770      	bx	lr
    2c5a:	bf00      	nop
    2c5c:	20000680 	.word	0x20000680

00002c60 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2c60:	4b0f      	ldr	r3, [pc, #60]	; (2ca0 <cursor_left+0x40>)
    2c62:	789b      	ldrb	r3, [r3, #2]
    2c64:	2b01      	cmp	r3, #1
    2c66:	d00b      	beq.n	2c80 <cursor_left+0x20>
    2c68:	b113      	cbz	r3, 2c70 <cursor_left+0x10>
    2c6a:	2b02      	cmp	r3, #2
    2c6c:	d010      	beq.n	2c90 <cursor_left+0x30>
    2c6e:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2c70:	4b0c      	ldr	r3, [pc, #48]	; (2ca4 <cursor_left+0x44>)
    2c72:	785b      	ldrb	r3, [r3, #1]
    2c74:	2b04      	cmp	r3, #4
    2c76:	d412      	bmi.n	2c9e <cursor_left+0x3e>
    2c78:	3b04      	subs	r3, #4
    2c7a:	4a0a      	ldr	r2, [pc, #40]	; (2ca4 <cursor_left+0x44>)
    2c7c:	7053      	strb	r3, [r2, #1]
    2c7e:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2c80:	4b08      	ldr	r3, [pc, #32]	; (2ca4 <cursor_left+0x44>)
    2c82:	785b      	ldrb	r3, [r3, #1]
    2c84:	2b08      	cmp	r3, #8
    2c86:	d40a      	bmi.n	2c9e <cursor_left+0x3e>
    2c88:	3b08      	subs	r3, #8
    2c8a:	4a06      	ldr	r2, [pc, #24]	; (2ca4 <cursor_left+0x44>)
    2c8c:	7053      	strb	r3, [r2, #1]
    2c8e:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2c90:	4b04      	ldr	r3, [pc, #16]	; (2ca4 <cursor_left+0x44>)
    2c92:	785b      	ldrb	r3, [r3, #1]
    2c94:	2b06      	cmp	r3, #6
    2c96:	d402      	bmi.n	2c9e <cursor_left+0x3e>
    2c98:	3b06      	subs	r3, #6
    2c9a:	4a02      	ldr	r2, [pc, #8]	; (2ca4 <cursor_left+0x44>)
    2c9c:	7053      	strb	r3, [r2, #1]
    2c9e:	4770      	bx	lr
    2ca0:	200001e8 	.word	0x200001e8
    2ca4:	20000680 	.word	0x20000680

00002ca8 <print>:
void print(const char* str){
    2ca8:	b510      	push	{r4, lr}
    2caa:	4604      	mov	r4, r0
    while ((c=*str++)){
    2cac:	e001      	b.n	2cb2 <print+0xa>
            new_line();
    2cae:	f7ff ff11 	bl	2ad4 <new_line>
    while ((c=*str++)){
    2cb2:	f814 0b01 	ldrb.w	r0, [r4], #1
    2cb6:	b158      	cbz	r0, 2cd0 <print+0x28>
        switch(c){
    2cb8:	280a      	cmp	r0, #10
    2cba:	d0f8      	beq.n	2cae <print+0x6>
    2cbc:	280d      	cmp	r0, #13
    2cbe:	d0f6      	beq.n	2cae <print+0x6>
    2cc0:	2808      	cmp	r0, #8
    2cc2:	d002      	beq.n	2cca <print+0x22>
            put_char(c);
    2cc4:	f7ff ff50 	bl	2b68 <put_char>
    2cc8:	e7f3      	b.n	2cb2 <print+0xa>
            cursor_left();    
    2cca:	f7ff ffc9 	bl	2c60 <cursor_left>
            break;
    2cce:	e7f0      	b.n	2cb2 <print+0xa>
}
    2cd0:	bd10      	pop	{r4, pc}

00002cd2 <println>:
void println(const char *text){
    2cd2:	b508      	push	{r3, lr}
	print(text);
    2cd4:	f7ff ffe8 	bl	2ca8 <print>
	new_line();
    2cd8:	f7ff fefc 	bl	2ad4 <new_line>
    2cdc:	bd08      	pop	{r3, pc}

00002cde <print_int>:
void print_int(int i,uint8_t base){
    2cde:	b530      	push	{r4, r5, lr}
    2ce0:	b085      	sub	sp, #20
    fmt[15]=0;
    2ce2:	2300      	movs	r3, #0
    2ce4:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2ce8:	2320      	movs	r3, #32
    2cea:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2cee:	1e02      	subs	r2, r0, #0
        i=-i;
    2cf0:	bfba      	itte	lt
    2cf2:	4252      	neglt	r2, r2
        sign=1;
    2cf4:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2cf6:	2500      	movge	r5, #0
    while (idx>1 && i){
    2cf8:	b1aa      	cbz	r2, 2d26 <print_int+0x48>
    2cfa:	f10d 040e 	add.w	r4, sp, #14
    2cfe:	200e      	movs	r0, #14
        d=i%base;
    2d00:	fb92 f3f1 	sdiv	r3, r2, r1
    2d04:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2d08:	2b09      	cmp	r3, #9
    2d0a:	bfc8      	it	gt
    2d0c:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2d0e:	3801      	subs	r0, #1
    2d10:	3330      	adds	r3, #48	; 0x30
    2d12:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2d16:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2d1a:	2801      	cmp	r0, #1
    2d1c:	d007      	beq.n	2d2e <print_int+0x50>
    2d1e:	2a00      	cmp	r2, #0
    2d20:	d1ee      	bne.n	2d00 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2d22:	280e      	cmp	r0, #14
    2d24:	d103      	bne.n	2d2e <print_int+0x50>
    2d26:	2330      	movs	r3, #48	; 0x30
    2d28:	f88d 300d 	strb.w	r3, [sp, #13]
    2d2c:	200d      	movs	r0, #13
    if (base==10 && sign){
    2d2e:	290a      	cmp	r1, #10
    2d30:	d006      	beq.n	2d40 <print_int+0x62>
    }else if (base==16){
    2d32:	2910      	cmp	r1, #16
    2d34:	d00d      	beq.n	2d52 <print_int+0x74>
    print(&fmt[idx]);
    2d36:	4468      	add	r0, sp
    2d38:	f7ff ffb6 	bl	2ca8 <print>
}
    2d3c:	b005      	add	sp, #20
    2d3e:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2d40:	2d00      	cmp	r5, #0
    2d42:	d0f8      	beq.n	2d36 <print_int+0x58>
        fmt[--idx]='-';
    2d44:	3801      	subs	r0, #1
    2d46:	ab04      	add	r3, sp, #16
    2d48:	4403      	add	r3, r0
    2d4a:	222d      	movs	r2, #45	; 0x2d
    2d4c:	f803 2c10 	strb.w	r2, [r3, #-16]
    2d50:	e7f1      	b.n	2d36 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2d52:	f010 0f01 	tst.w	r0, #1
    2d56:	d005      	beq.n	2d64 <print_int+0x86>
    2d58:	3801      	subs	r0, #1
    2d5a:	ab04      	add	r3, sp, #16
    2d5c:	4403      	add	r3, r0
    2d5e:	2230      	movs	r2, #48	; 0x30
    2d60:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2d64:	3801      	subs	r0, #1
    2d66:	ab04      	add	r3, sp, #16
    2d68:	4403      	add	r3, r0
    2d6a:	2224      	movs	r2, #36	; 0x24
    2d6c:	f803 2c10 	strb.w	r2, [r3, #-16]
    2d70:	e7e1      	b.n	2d36 <print_int+0x58>

00002d72 <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2d72:	b508      	push	{r3, lr}
	print("press button");
    2d74:	4801      	ldr	r0, [pc, #4]	; (2d7c <prompt_btn+0xa>)
    2d76:	f7ff ff97 	bl	2ca8 <print>
    2d7a:	bd08      	pop	{r3, pc}
    2d7c:	00003d60 	.word	0x00003d60

00002d80 <clear_screen>:
}

void clear_screen(){
    2d80:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2d82:	4b07      	ldr	r3, [pc, #28]	; (2da0 <clear_screen+0x20>)
    2d84:	781b      	ldrb	r3, [r3, #0]
    2d86:	b123      	cbz	r3, 2d92 <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(USART1,FF);
    2d88:	210c      	movs	r1, #12
    2d8a:	4806      	ldr	r0, [pc, #24]	; (2da4 <clear_screen+0x24>)
    2d8c:	f000 fbe0 	bl	3550 <usart_putc>
    2d90:	bd08      	pop	{r3, pc}
		gfx_cls();
    2d92:	f7fe fbd7 	bl	1544 <gfx_cls>
		xpos=0;
    2d96:	4b02      	ldr	r3, [pc, #8]	; (2da0 <clear_screen+0x20>)
    2d98:	2200      	movs	r2, #0
    2d9a:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2d9c:	709a      	strb	r2, [r3, #2]
    2d9e:	bd08      	pop	{r3, pc}
    2da0:	20000680 	.word	0x20000680
    2da4:	40013800 	.word	0x40013800

00002da8 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2da8:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2daa:	2800      	cmp	r0, #0
    2dac:	bf14      	ite	ne
    2dae:	260f      	movne	r6, #15
    2db0:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2db2:	4b09      	ldr	r3, [pc, #36]	; (2dd8 <show_cursor+0x30>)
    2db4:	785c      	ldrb	r4, [r3, #1]
    2db6:	1da3      	adds	r3, r4, #6
    2db8:	429c      	cmp	r4, r3
    2dba:	da0b      	bge.n	2dd4 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2dbc:	4d06      	ldr	r5, [pc, #24]	; (2dd8 <show_cursor+0x30>)
    2dbe:	78a9      	ldrb	r1, [r5, #2]
    2dc0:	4632      	mov	r2, r6
    2dc2:	3107      	adds	r1, #7
    2dc4:	4620      	mov	r0, r4
    2dc6:	f7fe fb93 	bl	14f0 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2dca:	3401      	adds	r4, #1
    2dcc:	786b      	ldrb	r3, [r5, #1]
    2dce:	3306      	adds	r3, #6
    2dd0:	42a3      	cmp	r3, r4
    2dd2:	dcf4      	bgt.n	2dbe <show_cursor+0x16>
    2dd4:	bd70      	pop	{r4, r5, r6, pc}
    2dd6:	bf00      	nop
    2dd8:	20000680 	.word	0x20000680

00002ddc <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2ddc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2de0:	f000 fa74 	bl	32cc <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2de4:	4b0c      	ldr	r3, [pc, #48]	; (2e18 <clear_line+0x3c>)
    2de6:	789c      	ldrb	r4, [r3, #2]
    2de8:	f104 0308 	add.w	r3, r4, #8
    2dec:	429c      	cmp	r4, r3
    2dee:	da10      	bge.n	2e12 <clear_line+0x36>
    2df0:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2df2:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2e1c <clear_line+0x40>
    2df6:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2df8:	4e07      	ldr	r6, [pc, #28]	; (2e18 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2dfa:	7a28      	ldrb	r0, [r5, #8]
    2dfc:	463a      	mov	r2, r7
    2dfe:	4601      	mov	r1, r0
    2e00:	fb04 8000 	mla	r0, r4, r0, r8
    2e04:	f7fe fa3f 	bl	1286 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2e08:	3401      	adds	r4, #1
    2e0a:	78b3      	ldrb	r3, [r6, #2]
    2e0c:	3308      	adds	r3, #8
    2e0e:	42a3      	cmp	r3, r4
    2e10:	dcf3      	bgt.n	2dfa <clear_line+0x1e>
    2e12:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2e16:	bf00      	nop
    2e18:	20000680 	.word	0x20000680
    2e1c:	200026bc 	.word	0x200026bc

00002e20 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    2e20:	4b01      	ldr	r3, [pc, #4]	; (2e28 <select_console+0x8>)
    2e22:	7018      	strb	r0, [r3, #0]
    2e24:	4770      	bx	lr
    2e26:	bf00      	nop
    2e28:	20000680 	.word	0x20000680

00002e2c <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2e2c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2e30:	4c31      	ldr	r4, [pc, #196]	; (2ef8 <tvout_init+0xcc>)
    2e32:	4b32      	ldr	r3, [pc, #200]	; (2efc <tvout_init+0xd0>)
    2e34:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2e36:	4a32      	ldr	r2, [pc, #200]	; (2f00 <tvout_init+0xd4>)
    2e38:	4b32      	ldr	r3, [pc, #200]	; (2f04 <tvout_init+0xd8>)
    2e3a:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2e3c:	220a      	movs	r2, #10
    2e3e:	2108      	movs	r1, #8
    2e40:	4620      	mov	r0, r4
    2e42:	f7fe fac9 	bl	13d8 <config_pin>
    PORTA->ODR=0;
    2e46:	2500      	movs	r5, #0
    2e48:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2e4a:	4e2f      	ldr	r6, [pc, #188]	; (2f08 <tvout_init+0xdc>)
    2e4c:	69b3      	ldr	r3, [r6, #24]
    2e4e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2e52:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2e54:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2e58:	f04f 0878 	mov.w	r8, #120	; 0x78
    2e5c:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2e60:	2301      	movs	r3, #1
    2e62:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2e64:	2784      	movs	r7, #132	; 0x84
    2e66:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2e68:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2e6c:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2e6e:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2e72:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    2e74:	f240 1365 	movw	r3, #357	; 0x165
    2e78:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2e7a:	6963      	ldr	r3, [r4, #20]
    2e7c:	f043 0301 	orr.w	r3, r3, #1
    2e80:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2e82:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2e86:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2e88:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2e8a:	68e3      	ldr	r3, [r4, #12]
    2e8c:	f043 0301 	orr.w	r3, r3, #1
    2e90:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2e92:	4629      	mov	r1, r5
    2e94:	2019      	movs	r0, #25
    2e96:	f7ff f86f 	bl	1f78 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2e9a:	4629      	mov	r1, r5
    2e9c:	201b      	movs	r0, #27
    2e9e:	f7ff f86b 	bl	1f78 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2ea2:	2019      	movs	r0, #25
    2ea4:	f7ff f808 	bl	1eb8 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2ea8:	201b      	movs	r0, #27
    2eaa:	f7ff f805 	bl	1eb8 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2eae:	6823      	ldr	r3, [r4, #0]
    2eb0:	f043 0301 	orr.w	r3, r3, #1
    2eb4:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2eb6:	220a      	movs	r2, #10
    2eb8:	4629      	mov	r1, r5
    2eba:	4814      	ldr	r0, [pc, #80]	; (2f0c <tvout_init+0xe0>)
    2ebc:	f7fe fa8c 	bl	13d8 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2ec0:	69f3      	ldr	r3, [r6, #28]
    2ec2:	f043 0302 	orr.w	r3, r3, #2
    2ec6:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2ec8:	4b11      	ldr	r3, [pc, #68]	; (2f10 <tvout_init+0xe4>)
    2eca:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2ece:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2ed0:	2213      	movs	r2, #19
    2ed2:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2ed4:	220a      	movs	r2, #10
    2ed6:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2ed8:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2eda:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2ede:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2ee0:	695a      	ldr	r2, [r3, #20]
    2ee2:	f042 0201 	orr.w	r2, r2, #1
    2ee6:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2ee8:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2eea:	681a      	ldr	r2, [r3, #0]
    2eec:	f042 0201 	orr.w	r2, r2, #1
    2ef0:	601a      	str	r2, [r3, #0]
    2ef2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2ef6:	bf00      	nop
    2ef8:	40010800 	.word	0x40010800
    2efc:	88883333 	.word	0x88883333
    2f00:	84484444 	.word	0x84484444
    2f04:	40010804 	.word	0x40010804
    2f08:	40021000 	.word	0x40021000
    2f0c:	40010c00 	.word	0x40010c00
    2f10:	40000400 	.word	0x40000400

00002f14 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2f14:	4668      	mov	r0, sp
    2f16:	f020 0107 	bic.w	r1, r0, #7
    2f1a:	468d      	mov	sp, r1
    2f1c:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    2f1e:	4a2f      	ldr	r2, [pc, #188]	; (2fdc <TV_OUT_handler+0xc8>)
    2f20:	6a13      	ldr	r3, [r2, #32]
    2f22:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2f26:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    2f28:	492d      	ldr	r1, [pc, #180]	; (2fe0 <TV_OUT_handler+0xcc>)
    2f2a:	f240 2209 	movw	r2, #521	; 0x209
    2f2e:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    2f30:	4293      	cmp	r3, r2
    2f32:	d9fc      	bls.n	2f2e <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    2f34:	4a29      	ldr	r2, [pc, #164]	; (2fdc <TV_OUT_handler+0xc8>)
    2f36:	6a13      	ldr	r3, [r2, #32]
    2f38:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2f3c:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    2f3e:	4b29      	ldr	r3, [pc, #164]	; (2fe4 <TV_OUT_handler+0xd0>)
    2f40:	881d      	ldrh	r5, [r3, #0]
    2f42:	b2ad      	uxth	r5, r5
    2f44:	4b28      	ldr	r3, [pc, #160]	; (2fe8 <TV_OUT_handler+0xd4>)
    2f46:	7818      	ldrb	r0, [r3, #0]
    2f48:	785a      	ldrb	r2, [r3, #1]
    2f4a:	fb95 f5f2 	sdiv	r5, r5, r2
    2f4e:	4a27      	ldr	r2, [pc, #156]	; (2fec <TV_OUT_handler+0xd8>)
    2f50:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    2f54:	8859      	ldrh	r1, [r3, #2]
    2f56:	4a22      	ldr	r2, [pc, #136]	; (2fe0 <TV_OUT_handler+0xcc>)
    2f58:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2f5a:	428b      	cmp	r3, r1
    2f5c:	d3fc      	bcc.n	2f58 <TV_OUT_handler+0x44>
    _jitter_cancel();
    2f5e:	4b24      	ldr	r3, [pc, #144]	; (2ff0 <TV_OUT_handler+0xdc>)
    2f60:	461a      	mov	r2, r3
    2f62:	6812      	ldr	r2, [r2, #0]
    2f64:	f002 0207 	and.w	r2, r2, #7
    2f68:	ea4f 0242 	mov.w	r2, r2, lsl #1
    2f6c:	4497      	add	pc, r2
    2f6e:	bf00      	nop
    2f70:	bf00      	nop
    2f72:	bf00      	nop
    2f74:	bf00      	nop
    2f76:	bf00      	nop
    2f78:	bf00      	nop
    2f7a:	bf00      	nop
    2f7c:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    2f7e:	4a17      	ldr	r2, [pc, #92]	; (2fdc <TV_OUT_handler+0xc8>)
    2f80:	6a13      	ldr	r3, [r2, #32]
    2f82:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2f86:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    2f88:	b1b0      	cbz	r0, 2fb8 <TV_OUT_handler+0xa4>
    2f8a:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    2f8c:	4819      	ldr	r0, [pc, #100]	; (2ff4 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    2f8e:	4916      	ldr	r1, [pc, #88]	; (2fe8 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    2f90:	781a      	ldrb	r2, [r3, #0]
    2f92:	0912      	lsrs	r2, r2, #4
    2f94:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    2f96:	790c      	ldrb	r4, [r1, #4]
    2f98:	4622      	mov	r2, r4
    2f9a:	3a01      	subs	r2, #1
    2f9c:	d1fd      	bne.n	2f9a <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    2f9e:	f813 2b01 	ldrb.w	r2, [r3], #1
    2fa2:	f002 020f 	and.w	r2, r2, #15
    2fa6:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    2fa8:	790c      	ldrb	r4, [r1, #4]
    2faa:	4622      	mov	r2, r4
    2fac:	3a01      	subs	r2, #1
    2fae:	d1fd      	bne.n	2fac <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    2fb0:	1b5c      	subs	r4, r3, r5
    2fb2:	780a      	ldrb	r2, [r1, #0]
    2fb4:	4294      	cmp	r4, r2
    2fb6:	d3eb      	bcc.n	2f90 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    2fb8:	2200      	movs	r2, #0
    2fba:	4b0f      	ldr	r3, [pc, #60]	; (2ff8 <TV_OUT_handler+0xe4>)
    2fbc:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    2fbe:	4a07      	ldr	r2, [pc, #28]	; (2fdc <TV_OUT_handler+0xc8>)
    2fc0:	6a13      	ldr	r3, [r2, #32]
    2fc2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2fc6:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    2fc8:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    2fcc:	6913      	ldr	r3, [r2, #16]
    2fce:	f023 0304 	bic.w	r3, r3, #4
    2fd2:	6113      	str	r3, [r2, #16]
}
    2fd4:	bc31      	pop	{r0, r4, r5}
    2fd6:	4685      	mov	sp, r0
    2fd8:	4770      	bx	lr
    2fda:	bf00      	nop
    2fdc:	40000400 	.word	0x40000400
    2fe0:	40012c00 	.word	0x40012c00
    2fe4:	20000684 	.word	0x20000684
    2fe8:	200001ec 	.word	0x200001ec
    2fec:	200026bc 	.word	0x200026bc
    2ff0:	40012c24 	.word	0x40012c24
    2ff4:	4001080c 	.word	0x4001080c
    2ff8:	40010800 	.word	0x40010800

00002ffc <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    2ffc:	4668      	mov	r0, sp
    2ffe:	f020 0107 	bic.w	r1, r0, #7
    3002:	468d      	mov	sp, r1
    3004:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    3006:	4a8e      	ldr	r2, [pc, #568]	; (3240 <TV_SYNC_handler+0x244>)
    3008:	8853      	ldrh	r3, [r2, #2]
    300a:	3301      	adds	r3, #1
    300c:	b29b      	uxth	r3, r3
    300e:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    3010:	498c      	ldr	r1, [pc, #560]	; (3244 <TV_SYNC_handler+0x248>)
    3012:	680b      	ldr	r3, [r1, #0]
    3014:	3301      	adds	r3, #1
    3016:	600b      	str	r3, [r1, #0]
    switch (task){
    3018:	8893      	ldrh	r3, [r2, #4]
    301a:	b29b      	uxth	r3, r3
    301c:	2b09      	cmp	r3, #9
    301e:	f200 8081 	bhi.w	3124 <TV_SYNC_handler+0x128>
    3022:	e8df f013 	tbh	[pc, r3, lsl #1]
    3026:	000a      	.short	0x000a
    3028:	0048002a 	.word	0x0048002a
    302c:	00880069 	.word	0x00880069
    3030:	00a50090 	.word	0x00a50090
    3034:	00d100b4 	.word	0x00d100b4
    3038:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    303a:	4b81      	ldr	r3, [pc, #516]	; (3240 <TV_SYNC_handler+0x244>)
    303c:	881b      	ldrh	r3, [r3, #0]
    303e:	b29b      	uxth	r3, r3
    3040:	b17b      	cbz	r3, 3062 <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    3042:	4a7f      	ldr	r2, [pc, #508]	; (3240 <TV_SYNC_handler+0x244>)
    3044:	8813      	ldrh	r3, [r2, #0]
    3046:	3301      	adds	r3, #1
    3048:	b29b      	uxth	r3, r3
    304a:	8013      	strh	r3, [r2, #0]
    304c:	8813      	ldrh	r3, [r2, #0]
    304e:	b29b      	uxth	r3, r3
    3050:	2b06      	cmp	r3, #6
    3052:	d167      	bne.n	3124 <TV_SYNC_handler+0x128>
    3054:	2300      	movs	r3, #0
    3056:	8013      	strh	r3, [r2, #0]
    3058:	8893      	ldrh	r3, [r2, #4]
    305a:	3301      	adds	r3, #1
    305c:	b29b      	uxth	r3, r3
    305e:	8093      	strh	r3, [r2, #4]
    3060:	e060      	b.n	3124 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    3062:	4b79      	ldr	r3, [pc, #484]	; (3248 <TV_SYNC_handler+0x24c>)
    3064:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3068:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    306a:	22a4      	movs	r2, #164	; 0xa4
    306c:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    306e:	4a74      	ldr	r2, [pc, #464]	; (3240 <TV_SYNC_handler+0x244>)
    3070:	8813      	ldrh	r3, [r2, #0]
    3072:	3301      	adds	r3, #1
    3074:	b29b      	uxth	r3, r3
    3076:	8013      	strh	r3, [r2, #0]
    3078:	e054      	b.n	3124 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    307a:	4b71      	ldr	r3, [pc, #452]	; (3240 <TV_SYNC_handler+0x244>)
    307c:	881b      	ldrh	r3, [r3, #0]
    307e:	b29b      	uxth	r3, r3
    3080:	b17b      	cbz	r3, 30a2 <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    3082:	4a6f      	ldr	r2, [pc, #444]	; (3240 <TV_SYNC_handler+0x244>)
    3084:	8813      	ldrh	r3, [r2, #0]
    3086:	3301      	adds	r3, #1
    3088:	b29b      	uxth	r3, r3
    308a:	8013      	strh	r3, [r2, #0]
    308c:	8813      	ldrh	r3, [r2, #0]
    308e:	b29b      	uxth	r3, r3
    3090:	2b06      	cmp	r3, #6
    3092:	d147      	bne.n	3124 <TV_SYNC_handler+0x128>
    3094:	2300      	movs	r3, #0
    3096:	8013      	strh	r3, [r2, #0]
    3098:	8893      	ldrh	r3, [r2, #4]
    309a:	3301      	adds	r3, #1
    309c:	b29b      	uxth	r3, r3
    309e:	8093      	strh	r3, [r2, #4]
    30a0:	e040      	b.n	3124 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    30a2:	f240 7294 	movw	r2, #1940	; 0x794
    30a6:	4b68      	ldr	r3, [pc, #416]	; (3248 <TV_SYNC_handler+0x24c>)
    30a8:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    30aa:	4a65      	ldr	r2, [pc, #404]	; (3240 <TV_SYNC_handler+0x244>)
    30ac:	8813      	ldrh	r3, [r2, #0]
    30ae:	3301      	adds	r3, #1
    30b0:	b29b      	uxth	r3, r3
    30b2:	8013      	strh	r3, [r2, #0]
    30b4:	e036      	b.n	3124 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    30b6:	4b62      	ldr	r3, [pc, #392]	; (3240 <TV_SYNC_handler+0x244>)
    30b8:	881b      	ldrh	r3, [r3, #0]
    30ba:	b29b      	uxth	r3, r3
    30bc:	b153      	cbz	r3, 30d4 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    30be:	4b60      	ldr	r3, [pc, #384]	; (3240 <TV_SYNC_handler+0x244>)
    30c0:	881b      	ldrh	r3, [r3, #0]
    30c2:	b29b      	uxth	r3, r3
    30c4:	2b06      	cmp	r3, #6
    30c6:	d00e      	beq.n	30e6 <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    30c8:	4a5d      	ldr	r2, [pc, #372]	; (3240 <TV_SYNC_handler+0x244>)
    30ca:	8813      	ldrh	r3, [r2, #0]
    30cc:	3301      	adds	r3, #1
    30ce:	b29b      	uxth	r3, r3
    30d0:	8013      	strh	r3, [r2, #0]
            break;
    30d2:	e027      	b.n	3124 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    30d4:	22a4      	movs	r2, #164	; 0xa4
    30d6:	4b5c      	ldr	r3, [pc, #368]	; (3248 <TV_SYNC_handler+0x24c>)
    30d8:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    30da:	4a59      	ldr	r2, [pc, #356]	; (3240 <TV_SYNC_handler+0x244>)
    30dc:	8813      	ldrh	r3, [r2, #0]
    30de:	3301      	adds	r3, #1
    30e0:	b29b      	uxth	r3, r3
    30e2:	8013      	strh	r3, [r2, #0]
            break;
    30e4:	e01e      	b.n	3124 <TV_SYNC_handler+0x128>
            task++;
    30e6:	4a56      	ldr	r2, [pc, #344]	; (3240 <TV_SYNC_handler+0x244>)
    30e8:	8893      	ldrh	r3, [r2, #4]
    30ea:	3301      	adds	r3, #1
    30ec:	b29b      	uxth	r3, r3
    30ee:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    30f0:	88d3      	ldrh	r3, [r2, #6]
    30f2:	f013 0f01 	tst.w	r3, #1
    30f6:	d015      	beq.n	3124 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    30f8:	4b53      	ldr	r3, [pc, #332]	; (3248 <TV_SYNC_handler+0x24c>)
    30fa:	f241 12c5 	movw	r2, #4549	; 0x11c5
    30fe:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    3100:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3104:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    3106:	4a4e      	ldr	r2, [pc, #312]	; (3240 <TV_SYNC_handler+0x244>)
    3108:	88d3      	ldrh	r3, [r2, #6]
    310a:	f023 0302 	bic.w	r3, r3, #2
    310e:	041b      	lsls	r3, r3, #16
    3110:	0c1b      	lsrs	r3, r3, #16
    3112:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    3114:	8853      	ldrh	r3, [r2, #2]
    3116:	f3c3 038d 	ubfx	r3, r3, #2, #14
    311a:	8053      	strh	r3, [r2, #2]
        task++;
    311c:	8893      	ldrh	r3, [r2, #4]
    311e:	3301      	adds	r3, #1
    3120:	b29b      	uxth	r3, r3
    3122:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    3124:	4a48      	ldr	r2, [pc, #288]	; (3248 <TV_SYNC_handler+0x24c>)
    3126:	6913      	ldr	r3, [r2, #16]
    3128:	f023 0301 	bic.w	r3, r3, #1
    312c:	6113      	str	r3, [r2, #16]
}
    312e:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    3132:	4685      	mov	sp, r0
    3134:	4770      	bx	lr
        read_gamepad();
    3136:	f7fd ff4b 	bl	fd0 <read_gamepad>
        task++;
    313a:	4a41      	ldr	r2, [pc, #260]	; (3240 <TV_SYNC_handler+0x244>)
    313c:	8893      	ldrh	r3, [r2, #4]
    313e:	3301      	adds	r3, #1
    3140:	b29b      	uxth	r3, r3
    3142:	8093      	strh	r3, [r2, #4]
        break;    
    3144:	e7ee      	b.n	3124 <TV_SYNC_handler+0x128>
        if (sound_timer){
    3146:	4b41      	ldr	r3, [pc, #260]	; (324c <TV_SYNC_handler+0x250>)
    3148:	881b      	ldrh	r3, [r3, #0]
    314a:	b29b      	uxth	r3, r3
    314c:	b13b      	cbz	r3, 315e <TV_SYNC_handler+0x162>
            sound_timer--;
    314e:	4a3f      	ldr	r2, [pc, #252]	; (324c <TV_SYNC_handler+0x250>)
    3150:	8813      	ldrh	r3, [r2, #0]
    3152:	3b01      	subs	r3, #1
    3154:	b29b      	uxth	r3, r3
    3156:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3158:	8813      	ldrh	r3, [r2, #0]
    315a:	b29b      	uxth	r3, r3
    315c:	b12b      	cbz	r3, 316a <TV_SYNC_handler+0x16e>
        task++;
    315e:	4a38      	ldr	r2, [pc, #224]	; (3240 <TV_SYNC_handler+0x244>)
    3160:	8893      	ldrh	r3, [r2, #4]
    3162:	3301      	adds	r3, #1
    3164:	b29b      	uxth	r3, r3
    3166:	8093      	strh	r3, [r2, #4]
        break;    
    3168:	e7dc      	b.n	3124 <TV_SYNC_handler+0x128>
                sound_stop();
    316a:	f7ff fb12 	bl	2792 <sound_stop>
    316e:	e7f6      	b.n	315e <TV_SYNC_handler+0x162>
        if (game_timer){
    3170:	4b37      	ldr	r3, [pc, #220]	; (3250 <TV_SYNC_handler+0x254>)
    3172:	881b      	ldrh	r3, [r3, #0]
    3174:	b29b      	uxth	r3, r3
    3176:	b123      	cbz	r3, 3182 <TV_SYNC_handler+0x186>
            game_timer--;
    3178:	4a35      	ldr	r2, [pc, #212]	; (3250 <TV_SYNC_handler+0x254>)
    317a:	8813      	ldrh	r3, [r2, #0]
    317c:	3b01      	subs	r3, #1
    317e:	b29b      	uxth	r3, r3
    3180:	8013      	strh	r3, [r2, #0]
        task++;
    3182:	4a2f      	ldr	r2, [pc, #188]	; (3240 <TV_SYNC_handler+0x244>)
    3184:	8893      	ldrh	r3, [r2, #4]
    3186:	3301      	adds	r3, #1
    3188:	b29b      	uxth	r3, r3
    318a:	8093      	strh	r3, [r2, #4]
        break;
    318c:	e7ca      	b.n	3124 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    318e:	4b2c      	ldr	r3, [pc, #176]	; (3240 <TV_SYNC_handler+0x244>)
    3190:	885b      	ldrh	r3, [r3, #2]
    3192:	b29b      	uxth	r3, r3
    3194:	4a2f      	ldr	r2, [pc, #188]	; (3254 <TV_SYNC_handler+0x258>)
    3196:	88d2      	ldrh	r2, [r2, #6]
    3198:	429a      	cmp	r2, r3
    319a:	d1c3      	bne.n	3124 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    319c:	4b2a      	ldr	r3, [pc, #168]	; (3248 <TV_SYNC_handler+0x24c>)
    319e:	691a      	ldr	r2, [r3, #16]
    31a0:	f022 0204 	bic.w	r2, r2, #4
    31a4:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    31a6:	68da      	ldr	r2, [r3, #12]
    31a8:	f042 0204 	orr.w	r2, r2, #4
    31ac:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    31ae:	4b24      	ldr	r3, [pc, #144]	; (3240 <TV_SYNC_handler+0x244>)
    31b0:	88da      	ldrh	r2, [r3, #6]
    31b2:	b292      	uxth	r2, r2
    31b4:	f042 0204 	orr.w	r2, r2, #4
    31b8:	80da      	strh	r2, [r3, #6]
            task++;
    31ba:	889a      	ldrh	r2, [r3, #4]
    31bc:	3201      	adds	r2, #1
    31be:	b292      	uxth	r2, r2
    31c0:	809a      	strh	r2, [r3, #4]
            slice=0;
    31c2:	2200      	movs	r2, #0
    31c4:	801a      	strh	r2, [r3, #0]
    31c6:	e7ad      	b.n	3124 <TV_SYNC_handler+0x128>
        slice++;
    31c8:	4a1d      	ldr	r2, [pc, #116]	; (3240 <TV_SYNC_handler+0x244>)
    31ca:	8813      	ldrh	r3, [r2, #0]
    31cc:	3301      	adds	r3, #1
    31ce:	b29b      	uxth	r3, r3
    31d0:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    31d2:	8853      	ldrh	r3, [r2, #2]
    31d4:	b29b      	uxth	r3, r3
    31d6:	4a1f      	ldr	r2, [pc, #124]	; (3254 <TV_SYNC_handler+0x258>)
    31d8:	8912      	ldrh	r2, [r2, #8]
    31da:	429a      	cmp	r2, r3
    31dc:	d1a2      	bne.n	3124 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    31de:	4a1a      	ldr	r2, [pc, #104]	; (3248 <TV_SYNC_handler+0x24c>)
    31e0:	68d3      	ldr	r3, [r2, #12]
    31e2:	f023 0304 	bic.w	r3, r3, #4
    31e6:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    31e8:	4a15      	ldr	r2, [pc, #84]	; (3240 <TV_SYNC_handler+0x244>)
    31ea:	88d3      	ldrh	r3, [r2, #6]
    31ec:	f023 0304 	bic.w	r3, r3, #4
    31f0:	041b      	lsls	r3, r3, #16
    31f2:	0c1b      	lsrs	r3, r3, #16
    31f4:	80d3      	strh	r3, [r2, #6]
            task++;
    31f6:	8893      	ldrh	r3, [r2, #4]
    31f8:	3301      	adds	r3, #1
    31fa:	b29b      	uxth	r3, r3
    31fc:	8093      	strh	r3, [r2, #4]
    31fe:	e791      	b.n	3124 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    3200:	4b0f      	ldr	r3, [pc, #60]	; (3240 <TV_SYNC_handler+0x244>)
    3202:	885b      	ldrh	r3, [r3, #2]
    3204:	b29b      	uxth	r3, r3
    3206:	f240 1207 	movw	r2, #263	; 0x107
    320a:	4293      	cmp	r3, r2
    320c:	d18a      	bne.n	3124 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    320e:	4b0c      	ldr	r3, [pc, #48]	; (3240 <TV_SYNC_handler+0x244>)
    3210:	88db      	ldrh	r3, [r3, #6]
    3212:	f013 0f01 	tst.w	r3, #1
    3216:	d003      	beq.n	3220 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    3218:	f640 02e2 	movw	r2, #2274	; 0x8e2
    321c:	4b0a      	ldr	r3, [pc, #40]	; (3248 <TV_SYNC_handler+0x24c>)
    321e:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    3220:	4b07      	ldr	r3, [pc, #28]	; (3240 <TV_SYNC_handler+0x244>)
    3222:	88da      	ldrh	r2, [r3, #6]
    3224:	b292      	uxth	r2, r2
    3226:	f082 0201 	eor.w	r2, r2, #1
    322a:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    322c:	88da      	ldrh	r2, [r3, #6]
    322e:	b292      	uxth	r2, r2
    3230:	f042 0202 	orr.w	r2, r2, #2
    3234:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    3236:	2200      	movs	r2, #0
    3238:	805a      	strh	r2, [r3, #2]
            slice=0;
    323a:	801a      	strh	r2, [r3, #0]
            task=0;
    323c:	809a      	strh	r2, [r3, #4]
    323e:	e771      	b.n	3124 <TV_SYNC_handler+0x128>
    3240:	20000684 	.word	0x20000684
    3244:	20004e20 	.word	0x20004e20
    3248:	40012c00 	.word	0x40012c00
    324c:	20004e24 	.word	0x20004e24
    3250:	20004e1c 	.word	0x20004e1c
    3254:	200001ec 	.word	0x200001ec

00003258 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3258:	4a02      	ldr	r2, [pc, #8]	; (3264 <frame_sync+0xc>)
    325a:	88d3      	ldrh	r3, [r2, #6]
    325c:	f013 0f02 	tst.w	r3, #2
    3260:	d0fb      	beq.n	325a <frame_sync+0x2>
}
    3262:	4770      	bx	lr
    3264:	20000684 	.word	0x20000684

00003268 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3268:	4a02      	ldr	r2, [pc, #8]	; (3274 <wait_sync_end+0xc>)
    326a:	88d3      	ldrh	r3, [r2, #6]
    326c:	f013 0f02 	tst.w	r3, #2
    3270:	d1fb      	bne.n	326a <wait_sync_end+0x2>
}
    3272:	4770      	bx	lr
    3274:	20000684 	.word	0x20000684

00003278 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3278:	b510      	push	{r4, lr}
    327a:	4604      	mov	r4, r0
    frame_sync();
    327c:	f7ff ffec 	bl	3258 <frame_sync>
    video_mode=mode;
    3280:	4b0e      	ldr	r3, [pc, #56]	; (32bc <set_video_mode+0x44>)
    3282:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3284:	b1ac      	cbz	r4, 32b2 <set_video_mode+0x3a>
    3286:	2200      	movs	r2, #0
    3288:	4b0d      	ldr	r3, [pc, #52]	; (32c0 <set_video_mode+0x48>)
    328a:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    328c:	4b0d      	ldr	r3, [pc, #52]	; (32c4 <set_video_mode+0x4c>)
    328e:	480e      	ldr	r0, [pc, #56]	; (32c8 <set_video_mode+0x50>)
    3290:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    3294:	8842      	ldrh	r2, [r0, #2]
    3296:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3298:	8882      	ldrh	r2, [r0, #4]
    329a:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    329c:	88c2      	ldrh	r2, [r0, #6]
    329e:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    32a0:	7a02      	ldrb	r2, [r0, #8]
    32a2:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    32a4:	7a42      	ldrb	r2, [r0, #9]
    32a6:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    32a8:	7a82      	ldrb	r2, [r0, #10]
    32aa:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    32ac:	f7fe f94a 	bl	1544 <gfx_cls>
    32b0:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    32b2:	2202      	movs	r2, #2
    32b4:	4b02      	ldr	r3, [pc, #8]	; (32c0 <set_video_mode+0x48>)
    32b6:	701a      	strb	r2, [r3, #0]
    32b8:	e7e8      	b.n	328c <set_video_mode+0x14>
    32ba:	bf00      	nop
    32bc:	20000684 	.word	0x20000684
    32c0:	20000190 	.word	0x20000190
    32c4:	200001ec 	.word	0x200001ec
    32c8:	00003aa4 	.word	0x00003aa4

000032cc <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    32cc:	4b02      	ldr	r3, [pc, #8]	; (32d8 <get_video_params+0xc>)
    32ce:	7a18      	ldrb	r0, [r3, #8]
}
    32d0:	4b02      	ldr	r3, [pc, #8]	; (32dc <get_video_params+0x10>)
    32d2:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    32d6:	4770      	bx	lr
    32d8:	20000684 	.word	0x20000684
    32dc:	00003aa4 	.word	0x00003aa4

000032e0 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    32e0:	4b03      	ldr	r3, [pc, #12]	; (32f0 <game_pause+0x10>)
    32e2:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    32e4:	461a      	mov	r2, r3
    32e6:	8813      	ldrh	r3, [r2, #0]
    32e8:	b29b      	uxth	r3, r3
    32ea:	2b00      	cmp	r3, #0
    32ec:	d1fb      	bne.n	32e6 <game_pause+0x6>
}
    32ee:	4770      	bx	lr
    32f0:	20004e1c 	.word	0x20004e1c

000032f4 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    32f4:	4b03      	ldr	r3, [pc, #12]	; (3304 <micro_pause+0x10>)
    32f6:	681b      	ldr	r3, [r3, #0]
    32f8:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    32fa:	4a02      	ldr	r2, [pc, #8]	; (3304 <micro_pause+0x10>)
    32fc:	6813      	ldr	r3, [r2, #0]
    32fe:	4298      	cmp	r0, r3
    3300:	d8fc      	bhi.n	32fc <micro_pause+0x8>
}
    3302:	4770      	bx	lr
    3304:	20004e20 	.word	0x20004e20

00003308 <usart_config_port>:
#define _usart_select(n)  USART##n_
#define _usart_sfr_sel(n,s) USART##n_##s 

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    3308:	4b3b      	ldr	r3, [pc, #236]	; (33f8 <usart_config_port+0xf0>)
    330a:	4298      	cmp	r0, r3
    330c:	d057      	beq.n	33be <usart_config_port+0xb6>
    330e:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3312:	4298      	cmp	r0, r3
    3314:	d004      	beq.n	3320 <usart_config_port+0x18>
    3316:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    331a:	4298      	cmp	r0, r3
    331c:	d032      	beq.n	3384 <usart_config_port+0x7c>
    331e:	4770      	bx	lr
	case (uint32_t)USART1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    3320:	4836      	ldr	r0, [pc, #216]	; (33fc <usart_config_port+0xf4>)
    3322:	6983      	ldr	r3, [r0, #24]
    3324:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3328:	f043 0304 	orr.w	r3, r3, #4
    332c:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    332e:	2a01      	cmp	r2, #1
    3330:	d016      	beq.n	3360 <usart_config_port+0x58>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    3332:	4b33      	ldr	r3, [pc, #204]	; (3400 <usart_config_port+0xf8>)
    3334:	4299      	cmp	r1, r3
    3336:	d01c      	beq.n	3372 <usart_config_port+0x6a>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3338:	4a32      	ldr	r2, [pc, #200]	; (3404 <usart_config_port+0xfc>)
    333a:	6853      	ldr	r3, [r2, #4]
    333c:	f043 0304 	orr.w	r3, r3, #4
    3340:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3342:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    3346:	6993      	ldr	r3, [r2, #24]
    3348:	f043 0308 	orr.w	r3, r3, #8
    334c:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    334e:	680b      	ldr	r3, [r1, #0]
    3350:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3354:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    3356:	680b      	ldr	r3, [r1, #0]
    3358:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    335c:	600b      	str	r3, [r1, #0]
    335e:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    3360:	684b      	ldr	r3, [r1, #4]
    3362:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    3366:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3368:	684b      	ldr	r3, [r1, #4]
    336a:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    336e:	604b      	str	r3, [r1, #4]
    3370:	e7df      	b.n	3332 <usart_config_port+0x2a>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    3372:	685a      	ldr	r2, [r3, #4]
    3374:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3378:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    337a:	685a      	ldr	r2, [r3, #4]
    337c:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    3380:	605a      	str	r2, [r3, #4]
    3382:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3384:	4b1d      	ldr	r3, [pc, #116]	; (33fc <usart_config_port+0xf4>)
    3386:	69d8      	ldr	r0, [r3, #28]
    3388:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    338c:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    338e:	6998      	ldr	r0, [r3, #24]
    3390:	f040 0004 	orr.w	r0, r0, #4
    3394:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    3396:	2a01      	cmp	r2, #1
    3398:	d008      	beq.n	33ac <usart_config_port+0xa4>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    339a:	680b      	ldr	r3, [r1, #0]
    339c:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    33a0:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    33a2:	680b      	ldr	r3, [r1, #0]
    33a4:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    33a8:	600b      	str	r3, [r1, #0]
    33aa:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    33ac:	680b      	ldr	r3, [r1, #0]
    33ae:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    33b2:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    33b4:	680b      	ldr	r3, [r1, #0]
    33b6:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    33ba:	600b      	str	r3, [r1, #0]
    33bc:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    33be:	4b0f      	ldr	r3, [pc, #60]	; (33fc <usart_config_port+0xf4>)
    33c0:	69d8      	ldr	r0, [r3, #28]
    33c2:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    33c6:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    33c8:	6998      	ldr	r0, [r3, #24]
    33ca:	f040 0008 	orr.w	r0, r0, #8
    33ce:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    33d0:	2a01      	cmp	r2, #1
    33d2:	d008      	beq.n	33e6 <usart_config_port+0xde>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    33d4:	684b      	ldr	r3, [r1, #4]
    33d6:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    33da:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    33dc:	684b      	ldr	r3, [r1, #4]
    33de:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    33e2:	604b      	str	r3, [r1, #4]
		}
		break;
	}
}
    33e4:	e79b      	b.n	331e <usart_config_port+0x16>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    33e6:	684b      	ldr	r3, [r1, #4]
    33e8:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    33ec:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    33ee:	684b      	ldr	r3, [r1, #4]
    33f0:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    33f4:	604b      	str	r3, [r1, #4]
    33f6:	4770      	bx	lr
    33f8:	40004800 	.word	0x40004800
    33fc:	40021000 	.word	0x40021000
    3400:	40010800 	.word	0x40010800
    3404:	40010000 	.word	0x40010000

00003408 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    3408:	4b04      	ldr	r3, [pc, #16]	; (341c <usart_set_baud+0x14>)
    340a:	4298      	cmp	r0, r3
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
    340c:	bf0c      	ite	eq
    340e:	4b04      	ldreq	r3, [pc, #16]	; (3420 <usart_set_baud+0x18>)
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    3410:	4b04      	ldrne	r3, [pc, #16]	; (3424 <usart_set_baud+0x1c>)
    3412:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channel->BRR=rate;
    3416:	6081      	str	r1, [r0, #8]
    3418:	4770      	bx	lr
    341a:	bf00      	nop
    341c:	40013800 	.word	0x40013800
    3420:	044463f4 	.word	0x044463f4
    3424:	022231fa 	.word	0x022231fa

00003428 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
	channel->CR1&=USART_CR1_DIR_MASK;
    3428:	68c3      	ldr	r3, [r0, #12]
    342a:	f023 030c 	bic.w	r3, r3, #12
    342e:	60c3      	str	r3, [r0, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    3430:	68c3      	ldr	r3, [r0, #12]
    3432:	ea43 0181 	orr.w	r1, r3, r1, lsl #2
    3436:	60c1      	str	r1, [r0, #12]
    3438:	4770      	bx	lr

0000343a <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    343a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    343e:	4604      	mov	r4, r0
    3440:	460f      	mov	r7, r1
    3442:	4615      	mov	r5, r2
    3444:	4698      	mov	r8, r3
    3446:	9e07      	ldr	r6, [sp, #28]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    3448:	4b2e      	ldr	r3, [pc, #184]	; (3504 <usart_open_channel+0xca>)
    344a:	4298      	cmp	r0, r3
    344c:	d03e      	beq.n	34cc <usart_open_channel+0x92>
    344e:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3452:	4298      	cmp	r0, r3
    3454:	d01b      	beq.n	348e <usart_open_channel+0x54>
    3456:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    345a:	4298      	cmp	r0, r3
    345c:	d02a      	beq.n	34b4 <usart_open_channel+0x7a>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    345e:	2e01      	cmp	r6, #1
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3460:	bf04      	itt	eq
    3462:	f44f 7340 	moveq.w	r3, #768	; 0x300
    3466:	6163      	streq	r3, [r4, #20]
	}
	usart_comm_dir(channel,dir);
    3468:	4641      	mov	r1, r8
    346a:	4620      	mov	r0, r4
    346c:	f7ff ffdc 	bl	3428 <usart_comm_dir>
	switch (parity){
    3470:	2d01      	cmp	r5, #1
    3472:	d03c      	beq.n	34ee <usart_open_channel+0xb4>
    3474:	b3b5      	cbz	r5, 34e4 <usart_open_channel+0xaa>
    3476:	2d02      	cmp	r5, #2
    3478:	d03e      	beq.n	34f8 <usart_open_channel+0xbe>
		break;
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    347a:	4639      	mov	r1, r7
    347c:	4620      	mov	r0, r4
    347e:	f7ff ffc3 	bl	3408 <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    3482:	68e3      	ldr	r3, [r4, #12]
    3484:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3488:	60e3      	str	r3, [r4, #12]
    348a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    348e:	9b06      	ldr	r3, [sp, #24]
    3490:	b95b      	cbnz	r3, 34aa <usart_open_channel+0x70>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    3492:	4632      	mov	r2, r6
    3494:	491c      	ldr	r1, [pc, #112]	; (3508 <usart_open_channel+0xce>)
    3496:	f7ff ff37 	bl	3308 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    349a:	2107      	movs	r1, #7
    349c:	2025      	movs	r0, #37	; 0x25
    349e:	f7fe fd6b 	bl	1f78 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    34a2:	2025      	movs	r0, #37	; 0x25
    34a4:	f7fe fd08 	bl	1eb8 <enable_interrupt>
		break;
    34a8:	e7d9      	b.n	345e <usart_open_channel+0x24>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    34aa:	4632      	mov	r2, r6
    34ac:	4917      	ldr	r1, [pc, #92]	; (350c <usart_open_channel+0xd2>)
    34ae:	f7ff ff2b 	bl	3308 <usart_config_port>
    34b2:	e7f2      	b.n	349a <usart_open_channel+0x60>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    34b4:	4632      	mov	r2, r6
    34b6:	4914      	ldr	r1, [pc, #80]	; (3508 <usart_open_channel+0xce>)
    34b8:	f7ff ff26 	bl	3308 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    34bc:	2107      	movs	r1, #7
    34be:	2026      	movs	r0, #38	; 0x26
    34c0:	f7fe fd5a 	bl	1f78 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    34c4:	2026      	movs	r0, #38	; 0x26
    34c6:	f7fe fcf7 	bl	1eb8 <enable_interrupt>
		break;
    34ca:	e7c8      	b.n	345e <usart_open_channel+0x24>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    34cc:	4632      	mov	r2, r6
    34ce:	490f      	ldr	r1, [pc, #60]	; (350c <usart_open_channel+0xd2>)
    34d0:	f7ff ff1a 	bl	3308 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    34d4:	2107      	movs	r1, #7
    34d6:	2027      	movs	r0, #39	; 0x27
    34d8:	f7fe fd4e 	bl	1f78 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    34dc:	2027      	movs	r0, #39	; 0x27
    34de:	f7fe fceb 	bl	1eb8 <enable_interrupt>
		break;
    34e2:	e7bc      	b.n	345e <usart_open_channel+0x24>
		channel->CR1|=USART_CR1_RXNEIE;
    34e4:	68e3      	ldr	r3, [r4, #12]
    34e6:	f043 0320 	orr.w	r3, r3, #32
    34ea:	60e3      	str	r3, [r4, #12]
		break;
    34ec:	e7c5      	b.n	347a <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    34ee:	68e3      	ldr	r3, [r4, #12]
    34f0:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    34f4:	60e3      	str	r3, [r4, #12]
		break;
    34f6:	e7c0      	b.n	347a <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    34f8:	68e3      	ldr	r3, [r4, #12]
    34fa:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    34fe:	60e3      	str	r3, [r4, #12]
		break;
    3500:	e7bb      	b.n	347a <usart_open_channel+0x40>
    3502:	bf00      	nop
    3504:	40004800 	.word	0x40004800
    3508:	40010800 	.word	0x40010800
    350c:	40010c00 	.word	0x40010c00

00003510 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
	return channel->SR&USART_SR_RXNE;
    3510:	6800      	ldr	r0, [r0, #0]
}
    3512:	f000 0020 	and.w	r0, r0, #32
    3516:	4770      	bx	lr

00003518 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
	if (channel->SR&USART_SR_RXNE){
    3518:	6803      	ldr	r3, [r0, #0]
    351a:	f013 0320 	ands.w	r3, r3, #32
		return channel->DR;
    351e:	bf18      	it	ne
    3520:	6843      	ldrne	r3, [r0, #4]
	}else{
		return 0;
	}
		
}
    3522:	b2d8      	uxtb	r0, r3
    3524:	4770      	bx	lr

00003526 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
	unsigned t0=ntsc_ticks+dly;
    3526:	4b09      	ldr	r3, [pc, #36]	; (354c <usart_getc_dly+0x26>)
    3528:	681b      	ldr	r3, [r3, #0]
    352a:	4419      	add	r1, r3
	
	while ((ntsc_ticks<t0) && !(channel->SR&USART_SR_RXNE));
    352c:	4a07      	ldr	r2, [pc, #28]	; (354c <usart_getc_dly+0x26>)
    352e:	6813      	ldr	r3, [r2, #0]
    3530:	4299      	cmp	r1, r3
    3532:	d903      	bls.n	353c <usart_getc_dly+0x16>
    3534:	6803      	ldr	r3, [r0, #0]
    3536:	f013 0f20 	tst.w	r3, #32
    353a:	d0f8      	beq.n	352e <usart_getc_dly+0x8>
	if (ntsc_ticks<t0) return channel->DR; else return 0;
    353c:	4b03      	ldr	r3, [pc, #12]	; (354c <usart_getc_dly+0x26>)
    353e:	681b      	ldr	r3, [r3, #0]
    3540:	4299      	cmp	r1, r3
    3542:	bf8c      	ite	hi
    3544:	6840      	ldrhi	r0, [r0, #4]
    3546:	2000      	movls	r0, #0
}
    3548:	b2c0      	uxtb	r0, r0
    354a:	4770      	bx	lr
    354c:	20004e20 	.word	0x20004e20

00003550 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    3550:	6803      	ldr	r3, [r0, #0]
    3552:	f013 0f80 	tst.w	r3, #128	; 0x80
    3556:	d0fb      	beq.n	3550 <usart_putc>
	channel->DR=c;
    3558:	6041      	str	r1, [r0, #4]
    355a:	4770      	bx	lr

0000355c <usart_cts>:
}


int usart_cts(usart_t* channel){
	int cts;
	switch ((uint32_t)channel){
    355c:	4b0d      	ldr	r3, [pc, #52]	; (3594 <usart_cts+0x38>)
    355e:	4298      	cmp	r0, r3
    3560:	d013      	beq.n	358a <usart_cts+0x2e>
    3562:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3566:	4298      	cmp	r0, r3
    3568:	d005      	beq.n	3576 <usart_cts+0x1a>
    356a:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    356e:	4298      	cmp	r0, r3
    3570:	d006      	beq.n	3580 <usart_cts+0x24>
    3572:	2000      	movs	r0, #0
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3574:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    3576:	4b08      	ldr	r3, [pc, #32]	; (3598 <usart_cts+0x3c>)
    3578:	6898      	ldr	r0, [r3, #8]
    357a:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    357e:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    3580:	4b05      	ldr	r3, [pc, #20]	; (3598 <usart_cts+0x3c>)
    3582:	6898      	ldr	r0, [r3, #8]
    3584:	f000 0001 	and.w	r0, r0, #1
			break;
    3588:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    358a:	4b04      	ldr	r3, [pc, #16]	; (359c <usart_cts+0x40>)
    358c:	6898      	ldr	r0, [r3, #8]
    358e:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    3592:	4770      	bx	lr
    3594:	40004800 	.word	0x40004800
    3598:	40010800 	.word	0x40010800
    359c:	40010c00 	.word	0x40010c00

000035a0 <usart_print>:

void usart_print(usart_t* channel, const char *str){
    35a0:	b538      	push	{r3, r4, r5, lr}
    35a2:	4605      	mov	r5, r0
    35a4:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    35a6:	7809      	ldrb	r1, [r1, #0]
    35a8:	b131      	cbz	r1, 35b8 <usart_print+0x18>
    35aa:	4628      	mov	r0, r5
    35ac:	f7ff ffd0 	bl	3550 <usart_putc>
    35b0:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    35b4:	2900      	cmp	r1, #0
    35b6:	d1f8      	bne.n	35aa <usart_print+0xa>
    35b8:	bd38      	pop	{r3, r4, r5, pc}
    35ba:	bf00      	nop
