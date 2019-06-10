
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 c5 2b 00 00     .P. 1........+..
      10:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..
      20:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 09 02 00 00     .+...+...+......
      30:	c5 2b 00 00 c5 2b 00 00 0d 02 00 00 11 02 00 00     .+...+..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 d7 28 00 00     ........!....(..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 c5 2b 00 00 c5 2b 00 00 49 02 00 00     E....+...+..I...
      80:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..
      90:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 4d 02 00 00     .+...+...+..M...
      a0:	c5 2b 00 00 09 32 00 00 c5 2b 00 00 21 31 00 00     .+...2...+..!1..
      b0:	ed 29 00 00 51 02 00 00 55 02 00 00 c5 2b 00 00     .)..Q...U....+..
      c0:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..
      d0:	c5 2b 00 00 17 38 00 00 4d 38 00 00 8d 38 00 00     .+...8..M8...8..
      e0:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..
      f0:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..
     100:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..
     110:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..
     120:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..

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
     186:	f001 fcea 	bl	1b5e <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e9a 	.word	0x20004e9a
     190:	2000022e 	.word	0x2000022e
     194:	20004e99 	.word	0x20004e99
     198:	2000022e 	.word	0x2000022e
     19c:	20000000 	.word	0x20000000
     1a0:	00009bdc 	.word	0x00009bdc
     1a4:	20000231 	.word	0x20000231
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
     1da:	f002 fcfb 	bl	2bd4 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fcf8 	bl	2bd4 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fcf5 	bl	2bd4 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fcf2 	bl	2bd4 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	000040b8 	.word	0x000040b8
     1f8:	00004094 	.word	0x00004094
     1fc:	000040ac 	.word	0x000040ac
     200:	000040c8 	.word	0x000040c8

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fcde 	bl	2bc4 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fcdc 	bl	2bc4 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fcda 	bl	2bc4 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fcd8 	bl	2bc4 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fcd6 	bl	2bc4 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fcd4 	bl	2bc4 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fcd2 	bl	2bc4 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fcd0 	bl	2bc4 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fcce 	bl	2bc4 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fccc 	bl	2bc4 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fcca 	bl	2bc4 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fcc8 	bl	2bc4 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fcc6 	bl	2bc4 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fcc4 	bl	2bc4 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fcc2 	bl	2bc4 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fcc0 	bl	2bc4 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fcbe 	bl	2bc4 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fcbc 	bl	2bc4 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fcba 	bl	2bc4 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fcb8 	bl	2bc4 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fcb6 	bl	2bc4 <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 fcb4 	bl	2bc4 <reset_mcu>
_default_handler(USART2_handler) // 38
     25c:	f002 fcb2 	bl	2bc4 <reset_mcu>
_default_handler(USART3_handler) // 39
     260:	f002 fcb0 	bl	2bc4 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fcae 	bl	2bc4 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fcac 	bl	2bc4 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fcaa 	bl	2bc4 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fca8 	bl	2bc4 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fca6 	bl	2bc4 <reset_mcu>

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
static uint8_t block[32];

uint8_t game_ram[GAME_SPACE];

// print virtual machine states
void print_vms(const char *msg,uint8_t error_code){
     310:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     312:	4605      	mov	r5, r0
     314:	460c      	mov	r4, r1
	uint8_t orig_font;
	orig_font=get_font();
     316:	f002 fcd9 	bl	2ccc <get_font>
     31a:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     31c:	2002      	movs	r0, #2
     31e:	f002 fccf 	bl	2cc0 <select_font>
	new_line();
     322:	f002 fcd9 	bl	2cd8 <new_line>
	print(msg);
     326:	4628      	mov	r0, r5
     328:	f002 fdbc 	bl	2ea4 <print>
	switch(error_code){
     32c:	2c02      	cmp	r4, #2
     32e:	d039      	beq.n	3a4 <print_vms+0x94>
     330:	2c03      	cmp	r4, #3
     332:	d102      	bne.n	33a <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     334:	481d      	ldr	r0, [pc, #116]	; (3ac <print_vms+0x9c>)
     336:	f002 fdb5 	bl	2ea4 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     33a:	481d      	ldr	r0, [pc, #116]	; (3b0 <print_vms+0xa0>)
     33c:	f002 fdb2 	bl	2ea4 <print>
	print_hex(vms.pc-2);
     340:	4d1c      	ldr	r5, [pc, #112]	; (3b4 <print_vms+0xa4>)
     342:	8828      	ldrh	r0, [r5, #0]
     344:	2110      	movs	r1, #16
     346:	3802      	subs	r0, #2
     348:	f002 fdc7 	bl	2eda <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     34c:	7e28      	ldrb	r0, [r5, #24]
     34e:	7e6b      	ldrb	r3, [r5, #25]
     350:	2110      	movs	r1, #16
     352:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     356:	f002 fdc0 	bl	2eda <print_int>
	new_line();
     35a:	f002 fcbd 	bl	2cd8 <new_line>
	print("I:");
     35e:	4816      	ldr	r0, [pc, #88]	; (3b8 <print_vms+0xa8>)
     360:	f002 fda0 	bl	2ea4 <print>
	print_hex(vms.ix);
     364:	2110      	movs	r1, #16
     366:	8868      	ldrh	r0, [r5, #2]
     368:	f002 fdb7 	bl	2eda <print_int>
	print(" SP:");
     36c:	4813      	ldr	r0, [pc, #76]	; (3bc <print_vms+0xac>)
     36e:	f002 fd99 	bl	2ea4 <print>
	print_hex(vms.sp);
     372:	2110      	movs	r1, #16
     374:	7928      	ldrb	r0, [r5, #4]
     376:	f002 fdb0 	bl	2eda <print_int>
	new_line();
     37a:	f002 fcad 	bl	2cd8 <new_line>
	print("var[]:");
     37e:	4810      	ldr	r0, [pc, #64]	; (3c0 <print_vms+0xb0>)
     380:	f002 fd90 	bl	2ea4 <print>
     384:	1dac      	adds	r4, r5, #6
     386:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     388:	2610      	movs	r6, #16
     38a:	4631      	mov	r1, r6
     38c:	f814 0b01 	ldrb.w	r0, [r4], #1
     390:	f002 fda3 	bl	2eda <print_int>
	for (int i=0;i<16;i++){
     394:	42ac      	cmp	r4, r5
     396:	d1f8      	bne.n	38a <print_vms+0x7a>
	}
	new_line();
     398:	f002 fc9e 	bl	2cd8 <new_line>
	select_font(orig_font);
     39c:	4638      	mov	r0, r7
     39e:	f002 fc8f 	bl	2cc0 <select_font>
     3a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3a4:	4807      	ldr	r0, [pc, #28]	; (3c4 <print_vms+0xb4>)
     3a6:	f002 fd7d 	bl	2ea4 <print>
		break;
     3aa:	e7c6      	b.n	33a <print_vms+0x2a>
     3ac:	00003dfc 	.word	0x00003dfc
     3b0:	00003e24 	.word	0x00003e24
     3b4:	20000230 	.word	0x20000230
     3b8:	00003e28 	.word	0x00003e28
     3bc:	00003e2c 	.word	0x00003e2c
     3c0:	00003e34 	.word	0x00003e34
     3c4:	00003e10 	.word	0x00003e10

000003c8 <srand>:
}

static uint32_t state=1;

void srand(unsigned n){
	state=n;
     3c8:	4b01      	ldr	r3, [pc, #4]	; (3d0 <srand+0x8>)
     3ca:	6018      	str	r0, [r3, #0]
     3cc:	4770      	bx	lr
     3ce:	bf00      	nop
     3d0:	20000000 	.word	0x20000000

000003d4 <rand>:
}

int rand(){
	uint32_t x;
	x=state;
     3d4:	4b05      	ldr	r3, [pc, #20]	; (3ec <rand+0x18>)
     3d6:	6818      	ldr	r0, [r3, #0]
	x^=x<<13;
     3d8:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
	x^=x>>17;
     3dc:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
	x^=x<<5;
     3e0:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
	state=x;
     3e4:	6018      	str	r0, [r3, #0]
	return x&0x7fffffff; 
}
     3e6:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
     3ea:	4770      	bx	lr
     3ec:	20000000 	.word	0x20000000

000003f0 <chip_vm>:


//  SCHIP/BPCHIP  virtual machine
vm_exit_code_t chip_vm(uint16_t program_address, vm_debug_t dbg_level){
     3f0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
     3f4:	b089      	sub	sp, #36	; 0x24
#define SLOW_DOWN 5
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
	char buffer[24];

	vms.pc=program_address;
     3f6:	4b9e      	ldr	r3, [pc, #632]	; (670 <chip_vm+0x280>)
     3f8:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     3fa:	2200      	movs	r2, #0
     3fc:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     3fe:	805a      	strh	r2, [r3, #2]
	vms.s=0;
     400:	82da      	strh	r2, [r3, #22]
 	while (exit_code==CHIP_CONTINUE){
		if (vms.pc>=GAME_SPACE){
     402:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
     406:	f080 84b7 	bcs.w	d78 <chip_vm+0x988>
     40a:	460d      	mov	r5, r1
			print("vt100 keyboard to continue\n");
			get_char();
			select_console(LOCAL);
			break;
		}//switch(dbg_level)
		x=rx(vms.b1);
     40c:	461c      	mov	r4, r3
				break;	
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash ; SCHIP, BPCHIP
				if (video_mode==VM_BPCHIP){
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
				}else{
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     40e:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     410:	4f98      	ldr	r7, [pc, #608]	; (674 <chip_vm+0x284>)
     412:	e143      	b.n	69c <chip_vm+0x2ac>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     414:	2d00      	cmp	r5, #0
     416:	f040 8146 	bne.w	6a6 <chip_vm+0x2b6>
     41a:	2005      	movs	r0, #5
     41c:	f003 f86e 	bl	34fc <micro_pause>
		_get_opcode(vms.pc);
     420:	8823      	ldrh	r3, [r4, #0]
     422:	4a95      	ldr	r2, [pc, #596]	; (678 <chip_vm+0x288>)
     424:	5cd1      	ldrb	r1, [r2, r3]
     426:	7621      	strb	r1, [r4, #24]
     428:	441a      	add	r2, r3
     42a:	7852      	ldrb	r2, [r2, #1]
     42c:	7662      	strb	r2, [r4, #25]
		vms.pc+=2;
     42e:	3302      	adds	r3, #2
     430:	8023      	strh	r3, [r4, #0]
     432:	e018      	b.n	466 <chip_vm+0x76>
			_debug_print(itoa(vms.pc-2,buffer,16));
     434:	2210      	movs	r2, #16
     436:	a902      	add	r1, sp, #8
     438:	3802      	subs	r0, #2
     43a:	f001 f865 	bl	1508 <itoa>
     43e:	4601      	mov	r1, r0
     440:	2000      	movs	r0, #0
     442:	f003 f9db 	bl	37fc <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     446:	7e20      	ldrb	r0, [r4, #24]
     448:	7e63      	ldrb	r3, [r4, #25]
     44a:	2210      	movs	r2, #16
     44c:	a902      	add	r1, sp, #8
     44e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     452:	f001 f859 	bl	1508 <itoa>
     456:	4601      	mov	r1, r0
     458:	2000      	movs	r0, #0
     45a:	f003 f9cf 	bl	37fc <usart_print>
			_debug_print("\n");
     45e:	4987      	ldr	r1, [pc, #540]	; (67c <chip_vm+0x28c>)
     460:	2000      	movs	r0, #0
     462:	f003 f9cb 	bl	37fc <usart_print>
		x=rx(vms.b1);
     466:	7e22      	ldrb	r2, [r4, #24]
     468:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     46c:	7e63      	ldrb	r3, [r4, #25]
     46e:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     472:	0911      	lsrs	r1, r2, #4
     474:	290f      	cmp	r1, #15
     476:	f200 810c 	bhi.w	692 <chip_vm+0x2a2>
     47a:	e8df f011 	tbh	[pc, r1, lsl #1]
     47e:	002b      	.short	0x002b
     480:	00940088 	.word	0x00940088
     484:	00b100a8 	.word	0x00b100a8
     488:	010700ba 	.word	0x010700ba
     48c:	01610155 	.word	0x01610155
     490:	02aa01dc 	.word	0x02aa01dc
     494:	02c702b7 	.word	0x02c702b7
     498:	031402d2 	.word	0x031402d2
     49c:	0332      	.short	0x0332
			select_console(SERIAL);
     49e:	2001      	movs	r0, #1
     4a0:	f002 fdbc 	bl	301c <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4a4:	2100      	movs	r1, #0
     4a6:	4876      	ldr	r0, [pc, #472]	; (680 <chip_vm+0x290>)
     4a8:	f7ff ff32 	bl	310 <print_vms>
			select_console(LOCAL);
     4ac:	2000      	movs	r0, #0
     4ae:	f002 fdb5 	bl	301c <select_console>
			break;
     4b2:	e7d8      	b.n	466 <chip_vm+0x76>
			select_console(SERIAL);
     4b4:	2001      	movs	r0, #1
     4b6:	f002 fdb1 	bl	301c <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4ba:	2100      	movs	r1, #0
     4bc:	4870      	ldr	r0, [pc, #448]	; (680 <chip_vm+0x290>)
     4be:	f7ff ff27 	bl	310 <print_vms>
			print("vt100 keyboard to continue\n");
     4c2:	4870      	ldr	r0, [pc, #448]	; (684 <chip_vm+0x294>)
     4c4:	f002 fcee 	bl	2ea4 <print>
			get_char();
     4c8:	f002 fdae 	bl	3028 <get_char>
			select_console(LOCAL);
     4cc:	2000      	movs	r0, #0
     4ce:	f002 fda5 	bl	301c <select_console>
			break;
     4d2:	e7c8      	b.n	466 <chip_vm+0x76>
		    if ((vms.b1|vms.b2)==0){
     4d4:	431a      	orrs	r2, r3
     4d6:	f000 80dc 	beq.w	692 <chip_vm+0x2a2>
     4da:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     4de:	2ac0      	cmp	r2, #192	; 0xc0
     4e0:	d026      	beq.n	530 <chip_vm+0x140>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
     4e2:	2ad0      	cmp	r2, #208	; 0xd0
     4e4:	d029      	beq.n	53a <chip_vm+0x14a>
			}else switch(vms.b2){
     4e6:	3be0      	subs	r3, #224	; 0xe0
     4e8:	2b1f      	cmp	r3, #31
     4ea:	d82b      	bhi.n	544 <chip_vm+0x154>
     4ec:	e8df f013 	tbh	[pc, r3, lsl #1]
     4f0:	002a002e 	.word	0x002a002e
     4f4:	002a002a 	.word	0x002a002a
     4f8:	002a002a 	.word	0x002a002a
     4fc:	002a002a 	.word	0x002a002a
     500:	002a002a 	.word	0x002a002a
     504:	002a002a 	.word	0x002a002a
     508:	002a002a 	.word	0x002a002a
     50c:	002a0031 	.word	0x002a0031
     510:	002a002a 	.word	0x002a002a
     514:	002a002a 	.word	0x002a002a
     518:	002a002a 	.word	0x002a002a
     51c:	002a002a 	.word	0x002a002a
     520:	0049002a 	.word	0x0049002a
     524:	00390045 	.word	0x00390045
     528:	0456003d 	.word	0x0456003d
     52c:	00410438 	.word	0x00410438
				gfx_scroll_down(vms.b2&0xf); 
     530:	f003 000f 	and.w	r0, r3, #15
     534:	f001 f8fc 	bl	1730 <gfx_scroll_down>
     538:	e0ab      	b.n	692 <chip_vm+0x2a2>
				gfx_scroll_up(vms.b2&0xf);					
     53a:	f003 000f 	and.w	r0, r3, #15
     53e:	f001 f8d1 	bl	16e4 <gfx_scroll_up>
     542:	e0a6      	b.n	692 <chip_vm+0x2a2>
					exit_code=CHIP_BAD_OPCODE;
     544:	f04f 0802 	mov.w	r8, #2
     548:	f000 bc1b 	b.w	d82 <chip_vm+0x992>
					gfx_cls();
     54c:	f001 f8b6 	bl	16bc <gfx_cls>
					break;
     550:	e09f      	b.n	692 <chip_vm+0x2a2>
					vms.pc=vms.stack[vms.sp--];
     552:	7923      	ldrb	r3, [r4, #4]
     554:	1e5a      	subs	r2, r3, #1
     556:	7122      	strb	r2, [r4, #4]
     558:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     55c:	8b5b      	ldrh	r3, [r3, #26]
     55e:	8023      	strh	r3, [r4, #0]
					break;
     560:	e097      	b.n	692 <chip_vm+0x2a2>
					gfx_scroll_right(4);
     562:	2004      	movs	r0, #4
     564:	f001 f936 	bl	17d4 <gfx_scroll_right>
					break;
     568:	e093      	b.n	692 <chip_vm+0x2a2>
					gfx_scroll_left(4);
     56a:	2004      	movs	r0, #4
     56c:	f001 f904 	bl	1778 <gfx_scroll_left>
					break;
     570:	e08f      	b.n	692 <chip_vm+0x2a2>
					set_video_mode(VM_SCHIP);
     572:	2001      	movs	r0, #1
     574:	f002 ff84 	bl	3480 <set_video_mode>
					break; 
     578:	e08b      	b.n	692 <chip_vm+0x2a2>
					set_video_mode(VM_BPCHIP);
     57a:	2000      	movs	r0, #0
     57c:	f002 ff80 	bl	3480 <set_video_mode>
					break;
     580:	e087      	b.n	692 <chip_vm+0x2a2>
					set_palette((const uint8_t*)&game_ram[vms.ix]);
     582:	8863      	ldrh	r3, [r4, #2]
     584:	483c      	ldr	r0, [pc, #240]	; (678 <chip_vm+0x288>)
     586:	4418      	add	r0, r3
     588:	f001 f840 	bl	160c <set_palette>
					break;	
     58c:	e081      	b.n	692 <chip_vm+0x2a2>
			vms.pc=caddr(vms.b1,vms.b2);
     58e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     592:	f3c3 030b 	ubfx	r3, r3, #0, #12
     596:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     598:	4a3b      	ldr	r2, [pc, #236]	; (688 <chip_vm+0x298>)
     59a:	7812      	ldrb	r2, [r2, #0]
     59c:	2a00      	cmp	r2, #0
     59e:	d178      	bne.n	692 <chip_vm+0x2a2>
				vms.pc<<=1;
     5a0:	005b      	lsls	r3, r3, #1
     5a2:	8023      	strh	r3, [r4, #0]
     5a4:	e075      	b.n	692 <chip_vm+0x2a2>
			vms.stack[++vms.sp]=vms.pc;
     5a6:	7921      	ldrb	r1, [r4, #4]
     5a8:	3101      	adds	r1, #1
     5aa:	b2c9      	uxtb	r1, r1
     5ac:	7121      	strb	r1, [r4, #4]
     5ae:	eb04 0141 	add.w	r1, r4, r1, lsl #1
     5b2:	8820      	ldrh	r0, [r4, #0]
     5b4:	8348      	strh	r0, [r1, #26]
			vms.pc=caddr(vms.b1,vms.b2);
     5b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5ba:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5be:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5c0:	4a31      	ldr	r2, [pc, #196]	; (688 <chip_vm+0x298>)
     5c2:	7812      	ldrb	r2, [r2, #0]
     5c4:	2a00      	cmp	r2, #0
     5c6:	d164      	bne.n	692 <chip_vm+0x2a2>
				vms.pc<<=1;
     5c8:	005b      	lsls	r3, r3, #1
     5ca:	8023      	strh	r3, [r4, #0]
     5cc:	e061      	b.n	692 <chip_vm+0x2a2>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     5ce:	44a0      	add	r8, r4
     5d0:	f898 2006 	ldrb.w	r2, [r8, #6]
     5d4:	429a      	cmp	r2, r3
     5d6:	d15c      	bne.n	692 <chip_vm+0x2a2>
     5d8:	8823      	ldrh	r3, [r4, #0]
     5da:	3302      	adds	r3, #2
     5dc:	8023      	strh	r3, [r4, #0]
     5de:	e058      	b.n	692 <chip_vm+0x2a2>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     5e0:	44a0      	add	r8, r4
     5e2:	f898 2006 	ldrb.w	r2, [r8, #6]
     5e6:	429a      	cmp	r2, r3
     5e8:	d053      	beq.n	692 <chip_vm+0x2a2>
     5ea:	8823      	ldrh	r3, [r4, #0]
     5ec:	3302      	adds	r3, #2
     5ee:	8023      	strh	r3, [r4, #0]
     5f0:	e04f      	b.n	692 <chip_vm+0x2a2>
			switch(vms.b2&0xf){
     5f2:	f003 030f 	and.w	r3, r3, #15
     5f6:	2b02      	cmp	r3, #2
     5f8:	d015      	beq.n	626 <chip_vm+0x236>
     5fa:	2b03      	cmp	r3, #3
     5fc:	d025      	beq.n	64a <chip_vm+0x25a>
     5fe:	b133      	cbz	r3, 60e <chip_vm+0x21e>
     600:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     604:	f1b8 0f00 	cmp.w	r8, #0
     608:	f040 83bb 	bne.w	d82 <chip_vm+0x992>
     60c:	e041      	b.n	692 <chip_vm+0x2a2>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     60e:	44a0      	add	r8, r4
     610:	44a1      	add	r9, r4
     612:	f898 2006 	ldrb.w	r2, [r8, #6]
     616:	f899 3006 	ldrb.w	r3, [r9, #6]
     61a:	429a      	cmp	r2, r3
     61c:	d139      	bne.n	692 <chip_vm+0x2a2>
     61e:	8823      	ldrh	r3, [r4, #0]
     620:	3302      	adds	r3, #2
     622:	8023      	strh	r3, [r4, #0]
     624:	e035      	b.n	692 <chip_vm+0x2a2>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     626:	4640      	mov	r0, r8
     628:	45c8      	cmp	r8, r9
     62a:	bf28      	it	cs
     62c:	4648      	movcs	r0, r9
     62e:	eba9 0208 	sub.w	r2, r9, r8
     632:	2a00      	cmp	r2, #0
     634:	bfb8      	it	lt
     636:	4252      	neglt	r2, r2
     638:	8863      	ldrh	r3, [r4, #2]
     63a:	3006      	adds	r0, #6
     63c:	3201      	adds	r2, #1
     63e:	490e      	ldr	r1, [pc, #56]	; (678 <chip_vm+0x288>)
     640:	4419      	add	r1, r3
     642:	4420      	add	r0, r4
     644:	f000 feef 	bl	1426 <move>
				break;
     648:	e023      	b.n	692 <chip_vm+0x2a2>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     64a:	8863      	ldrh	r3, [r4, #2]
     64c:	4641      	mov	r1, r8
     64e:	45c8      	cmp	r8, r9
     650:	bf28      	it	cs
     652:	4649      	movcs	r1, r9
     654:	eba9 0208 	sub.w	r2, r9, r8
     658:	2a00      	cmp	r2, #0
     65a:	bfb8      	it	lt
     65c:	4252      	neglt	r2, r2
     65e:	3106      	adds	r1, #6
     660:	3201      	adds	r2, #1
     662:	4421      	add	r1, r4
     664:	4804      	ldr	r0, [pc, #16]	; (678 <chip_vm+0x288>)
     666:	4418      	add	r0, r3
     668:	f000 fedd 	bl	1426 <move>
				break;
     66c:	e011      	b.n	692 <chip_vm+0x2a2>
     66e:	bf00      	nop
     670:	20000230 	.word	0x20000230
     674:	51eb851f 	.word	0x51eb851f
     678:	20000700 	.word	0x20000700
     67c:	00003f48 	.word	0x00003f48
     680:	00003e3c 	.word	0x00003e3c
     684:	00003e50 	.word	0x00003e50
     688:	200006c4 	.word	0x200006c4
			vms.var[x]=vms.b2;
     68c:	44a0      	add	r8, r4
     68e:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     692:	8823      	ldrh	r3, [r4, #0]
     694:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     698:	f080 8371 	bcs.w	d7e <chip_vm+0x98e>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     69c:	4bc0      	ldr	r3, [pc, #768]	; (9a0 <chip_vm+0x5b0>)
     69e:	781b      	ldrb	r3, [r3, #0]
     6a0:	2b01      	cmp	r3, #1
     6a2:	f43f aeb7 	beq.w	414 <chip_vm+0x24>
		_get_opcode(vms.pc);
     6a6:	8820      	ldrh	r0, [r4, #0]
     6a8:	4bbe      	ldr	r3, [pc, #760]	; (9a4 <chip_vm+0x5b4>)
     6aa:	5c1a      	ldrb	r2, [r3, r0]
     6ac:	7622      	strb	r2, [r4, #24]
     6ae:	4403      	add	r3, r0
     6b0:	785b      	ldrb	r3, [r3, #1]
     6b2:	7663      	strb	r3, [r4, #25]
		vms.pc+=2;
     6b4:	3002      	adds	r0, #2
     6b6:	b280      	uxth	r0, r0
     6b8:	8020      	strh	r0, [r4, #0]
		switch(dbg_level){
     6ba:	2d02      	cmp	r5, #2
     6bc:	f43f aeef 	beq.w	49e <chip_vm+0xae>
     6c0:	2d03      	cmp	r5, #3
     6c2:	f43f aef7 	beq.w	4b4 <chip_vm+0xc4>
     6c6:	2d01      	cmp	r5, #1
     6c8:	f43f aeb4 	beq.w	434 <chip_vm+0x44>
		x=rx(vms.b1);
     6cc:	7e22      	ldrb	r2, [r4, #24]
     6ce:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     6d2:	7e63      	ldrb	r3, [r4, #25]
     6d4:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     6d8:	0911      	lsrs	r1, r2, #4
     6da:	290f      	cmp	r1, #15
     6dc:	f200 833d 	bhi.w	d5a <chip_vm+0x96a>
     6e0:	a001      	add	r0, pc, #4	; (adr r0, 6e8 <chip_vm+0x2f8>)
     6e2:	f850 f021 	ldr.w	pc, [r0, r1, lsl #2]
     6e6:	bf00      	nop
     6e8:	000004d5 	.word	0x000004d5
     6ec:	0000058f 	.word	0x0000058f
     6f0:	000005a7 	.word	0x000005a7
     6f4:	000005cf 	.word	0x000005cf
     6f8:	000005e1 	.word	0x000005e1
     6fc:	000005f3 	.word	0x000005f3
     700:	0000068d 	.word	0x0000068d
     704:	00000729 	.word	0x00000729
     708:	00000741 	.word	0x00000741
     70c:	00000837 	.word	0x00000837
     710:	000009d3 	.word	0x000009d3
     714:	000009ed 	.word	0x000009ed
     718:	00000a0d 	.word	0x00000a0d
     71c:	00000a23 	.word	0x00000a23
     720:	00000aa7 	.word	0x00000aa7
     724:	00000ae3 	.word	0x00000ae3
		    n=(vms.var[x]+vms.b2)>255;
     728:	44a0      	add	r8, r4
     72a:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     72e:	4403      	add	r3, r0
     730:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     734:	2bff      	cmp	r3, #255	; 0xff
     736:	bfd4      	ite	le
     738:	2300      	movle	r3, #0
     73a:	2301      	movgt	r3, #1
     73c:	7563      	strb	r3, [r4, #21]
			break;
     73e:	e7a8      	b.n	692 <chip_vm+0x2a2>
			switch(vms.b2&0xf){
     740:	f003 030f 	and.w	r3, r3, #15
     744:	2b0e      	cmp	r3, #14
     746:	f200 830e 	bhi.w	d66 <chip_vm+0x976>
     74a:	e8df f013 	tbh	[pc, r3, lsl #1]
     74e:	000f      	.short	0x000f
     750:	00200016 	.word	0x00200016
     754:	0034002a 	.word	0x0034002a
     758:	00520043 	.word	0x00520043
     75c:	030c005c 	.word	0x030c005c
     760:	030c030c 	.word	0x030c030c
     764:	030c030c 	.word	0x030c030c
     768:	006b030c 	.word	0x006b030c
				vms.var[x]=vms.var[y];
     76c:	44a1      	add	r9, r4
     76e:	f899 3006 	ldrb.w	r3, [r9, #6]
     772:	44a0      	add	r8, r4
     774:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     778:	e78b      	b.n	692 <chip_vm+0x2a2>
				vms.var[x]|=vms.var[y];
     77a:	44a0      	add	r8, r4
     77c:	44a1      	add	r9, r4
     77e:	f898 3006 	ldrb.w	r3, [r8, #6]
     782:	f899 2006 	ldrb.w	r2, [r9, #6]
     786:	4313      	orrs	r3, r2
     788:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     78c:	e781      	b.n	692 <chip_vm+0x2a2>
				vms.var[x]&=vms.var[y];
     78e:	44a0      	add	r8, r4
     790:	44a1      	add	r9, r4
     792:	f898 3006 	ldrb.w	r3, [r8, #6]
     796:	f899 2006 	ldrb.w	r2, [r9, #6]
     79a:	4013      	ands	r3, r2
     79c:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7a0:	e777      	b.n	692 <chip_vm+0x2a2>
				vms.var[x]^=vms.var[y];
     7a2:	44a0      	add	r8, r4
     7a4:	44a1      	add	r9, r4
     7a6:	f898 3006 	ldrb.w	r3, [r8, #6]
     7aa:	f899 2006 	ldrb.w	r2, [r9, #6]
     7ae:	4053      	eors	r3, r2
     7b0:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7b4:	e76d      	b.n	692 <chip_vm+0x2a2>
				n=(vms.var[x]+vms.var[y])>255;
     7b6:	44a0      	add	r8, r4
     7b8:	f898 3006 	ldrb.w	r3, [r8, #6]
     7bc:	44a1      	add	r9, r4
     7be:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     7c2:	4413      	add	r3, r2
     7c4:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     7c8:	2bff      	cmp	r3, #255	; 0xff
     7ca:	bfd4      	ite	le
     7cc:	2300      	movle	r3, #0
     7ce:	2301      	movgt	r3, #1
     7d0:	7563      	strb	r3, [r4, #21]
				break;
     7d2:	e75e      	b.n	692 <chip_vm+0x2a2>
				n=vms.var[x]>=vms.var[y];
     7d4:	44a0      	add	r8, r4
     7d6:	f898 3006 	ldrb.w	r3, [r8, #6]
     7da:	44a1      	add	r9, r4
     7dc:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     7e0:	1a99      	subs	r1, r3, r2
     7e2:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     7e6:	4293      	cmp	r3, r2
     7e8:	bf34      	ite	cc
     7ea:	2300      	movcc	r3, #0
     7ec:	2301      	movcs	r3, #1
     7ee:	7563      	strb	r3, [r4, #21]
				break;
     7f0:	e74f      	b.n	692 <chip_vm+0x2a2>
				n=(vms.var[x]&1u);
     7f2:	44a0      	add	r8, r4
     7f4:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     7f8:	085a      	lsrs	r2, r3, #1
     7fa:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     7fe:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     802:	7563      	strb	r3, [r4, #21]
				break;
     804:	e745      	b.n	692 <chip_vm+0x2a2>
				n=vms.var[y]>=vms.var[x];
     806:	44a1      	add	r9, r4
     808:	f899 3006 	ldrb.w	r3, [r9, #6]
     80c:	44a0      	add	r8, r4
     80e:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     812:	1a99      	subs	r1, r3, r2
     814:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     818:	4293      	cmp	r3, r2
     81a:	bf34      	ite	cc
     81c:	2300      	movcc	r3, #0
     81e:	2301      	movcs	r3, #1
     820:	7563      	strb	r3, [r4, #21]
				break;
     822:	e736      	b.n	692 <chip_vm+0x2a2>
				n=(vms.var[x]&128)>>7;
     824:	44a0      	add	r8, r4
     826:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     82a:	005a      	lsls	r2, r3, #1
     82c:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     830:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     832:	7563      	strb	r3, [r4, #21]
				break;
     834:	e72d      	b.n	692 <chip_vm+0x2a2>
			switch (vms.b2&0xf){
     836:	f003 030f 	and.w	r3, r3, #15
     83a:	2b0f      	cmp	r3, #15
     83c:	f200 8296 	bhi.w	d6c <chip_vm+0x97c>
     840:	e8df f003 	tbb	[pc, r3]
     844:	3c1f1508 	.word	0x3c1f1508
     848:	62574c47 	.word	0x62574c47
     84c:	867a736c 	.word	0x867a736c
     850:	c1b29f93 	.word	0xc1b29f93
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     854:	44a0      	add	r8, r4
     856:	44a1      	add	r9, r4
     858:	f898 2006 	ldrb.w	r2, [r8, #6]
     85c:	f899 3006 	ldrb.w	r3, [r9, #6]
     860:	429a      	cmp	r2, r3
     862:	f43f af16 	beq.w	692 <chip_vm+0x2a2>
     866:	8823      	ldrh	r3, [r4, #0]
     868:	3302      	adds	r3, #2
     86a:	8023      	strh	r3, [r4, #0]
     86c:	e711      	b.n	692 <chip_vm+0x2a2>
				key_tone(vms.var[x],vms.var[y],false);
     86e:	44a1      	add	r9, r4
     870:	44a0      	add	r8, r4
     872:	2200      	movs	r2, #0
     874:	f899 1006 	ldrb.w	r1, [r9, #6]
     878:	f898 0006 	ldrb.w	r0, [r8, #6]
     87c:	f002 f88e 	bl	299c <key_tone>
				break;
     880:	e707      	b.n	692 <chip_vm+0x2a2>
				select_font(FONT_ASCII);
     882:	2002      	movs	r0, #2
     884:	f002 fa1c 	bl	2cc0 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     888:	44a1      	add	r9, r4
     88a:	44a0      	add	r8, r4
     88c:	f899 1006 	ldrb.w	r1, [r9, #6]
     890:	f898 0006 	ldrb.w	r0, [r8, #6]
     894:	f002 fad2 	bl	2e3c <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     898:	8860      	ldrh	r0, [r4, #2]
     89a:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9a4 <chip_vm+0x5b4>
     89e:	4448      	add	r0, r9
     8a0:	f002 fb00 	bl	2ea4 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8a4:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8a8:	eb09 0008 	add.w	r0, r9, r8
     8ac:	f000 fdc5 	bl	143a <strlen>
     8b0:	f108 0801 	add.w	r8, r8, #1
     8b4:	4480      	add	r8, r0
     8b6:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     8ba:	e6ea      	b.n	692 <chip_vm+0x2a2>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     8bc:	44a1      	add	r9, r4
     8be:	44a0      	add	r8, r4
     8c0:	2303      	movs	r3, #3
     8c2:	2200      	movs	r2, #0
     8c4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8c8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8cc:	f000 feaa 	bl	1624 <gfx_blit>
				break;
     8d0:	e6df      	b.n	692 <chip_vm+0x2a2>
				noise((x<<4)+y);
     8d2:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8d6:	f002 f875 	bl	29c4 <noise>
				break;
     8da:	e6da      	b.n	692 <chip_vm+0x2a2>
				key_tone(vms.var[x],vms.var[y],true);
     8dc:	44a1      	add	r9, r4
     8de:	44a0      	add	r8, r4
     8e0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8e4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8e8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8ec:	f002 f856 	bl	299c <key_tone>
				break;
     8f0:	e6cf      	b.n	692 <chip_vm+0x2a2>
				vms.stack[++vms.sp]=vms.var[x];
     8f2:	7923      	ldrb	r3, [r4, #4]
     8f4:	3301      	adds	r3, #1
     8f6:	b2db      	uxtb	r3, r3
     8f8:	7123      	strb	r3, [r4, #4]
     8fa:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     8fe:	44a0      	add	r8, r4
     900:	f898 2006 	ldrb.w	r2, [r8, #6]
     904:	835a      	strh	r2, [r3, #26]
				break;
     906:	e6c4      	b.n	692 <chip_vm+0x2a2>
				vms.var[x]=vms.stack[vms.sp--];
     908:	7923      	ldrb	r3, [r4, #4]
     90a:	1e5a      	subs	r2, r3, #1
     90c:	7122      	strb	r2, [r4, #4]
     90e:	44a0      	add	r8, r4
     910:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     914:	8b5b      	ldrh	r3, [r3, #26]
     916:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     91a:	e6ba      	b.n	692 <chip_vm+0x2a2>
				{ 	vmode_params_t *vparams=get_video_params();
     91c:	f002 fdda 	bl	34d4 <get_video_params>
					vms.var[x]=vparams->hres;
     920:	44a0      	add	r8, r4
     922:	8983      	ldrh	r3, [r0, #12]
     924:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     928:	e6b3      	b.n	692 <chip_vm+0x2a2>
					vmode_params_t *vparams=get_video_params();
     92a:	f002 fdd3 	bl	34d4 <get_video_params>
					vms.var[x]=vparams->vres;
     92e:	44a0      	add	r8, r4
     930:	89c3      	ldrh	r3, [r0, #14]
     932:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     936:	e6ac      	b.n	692 <chip_vm+0x2a2>
			    vms.var[x] |= (1<<(y&0x7));
     938:	44a0      	add	r8, r4
     93a:	f009 0907 	and.w	r9, r9, #7
     93e:	2301      	movs	r3, #1
     940:	fa03 f309 	lsl.w	r3, r3, r9
     944:	f898 2006 	ldrb.w	r2, [r8, #6]
     948:	4313      	orrs	r3, r2
     94a:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     94e:	e6a0      	b.n	692 <chip_vm+0x2a2>
			    vms.var[x] &= ~(1<<(y&0x7));
     950:	44a0      	add	r8, r4
     952:	f009 0207 	and.w	r2, r9, #7
     956:	2301      	movs	r3, #1
     958:	fa03 f202 	lsl.w	r2, r3, r2
     95c:	f898 3006 	ldrb.w	r3, [r8, #6]
     960:	ea23 0302 	bic.w	r3, r3, r2
     964:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     968:	e693      	b.n	692 <chip_vm+0x2a2>
   			    vms.var[x] ^= (1<<(y&0x7));
     96a:	44a0      	add	r8, r4
     96c:	f009 0907 	and.w	r9, r9, #7
     970:	2301      	movs	r3, #1
     972:	fa03 f309 	lsl.w	r3, r3, r9
     976:	f898 2006 	ldrb.w	r2, [r8, #6]
     97a:	4053      	eors	r3, r2
     97c:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     980:	e687      	b.n	692 <chip_vm+0x2a2>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     982:	44a0      	add	r8, r4
     984:	f898 3006 	ldrb.w	r3, [r8, #6]
     988:	f009 0907 	and.w	r9, r9, #7
     98c:	fa43 f309 	asr.w	r3, r3, r9
     990:	f013 0f01 	tst.w	r3, #1
     994:	f43f ae7d 	beq.w	692 <chip_vm+0x2a2>
     998:	8823      	ldrh	r3, [r4, #0]
     99a:	3302      	adds	r3, #2
     99c:	8023      	strh	r3, [r4, #0]
     99e:	e678      	b.n	692 <chip_vm+0x2a2>
     9a0:	200006c4 	.word	0x200006c4
     9a4:	20000700 	.word	0x20000700
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     9a8:	44a0      	add	r8, r4
     9aa:	f898 3006 	ldrb.w	r3, [r8, #6]
     9ae:	f009 0907 	and.w	r9, r9, #7
     9b2:	fa43 f309 	asr.w	r3, r3, r9
     9b6:	f013 0f01 	tst.w	r3, #1
     9ba:	f47f ae6a 	bne.w	692 <chip_vm+0x2a2>
     9be:	8823      	ldrh	r3, [r4, #0]
     9c0:	3302      	adds	r3, #2
     9c2:	8023      	strh	r3, [r4, #0]
     9c4:	e665      	b.n	692 <chip_vm+0x2a2>
			    vms.var[15]=gfx_get_pixel(x,y);
     9c6:	4649      	mov	r1, r9
     9c8:	4640      	mov	r0, r8
     9ca:	f000 ff37 	bl	183c <gfx_get_pixel>
     9ce:	7560      	strb	r0, [r4, #21]
				break;  	
     9d0:	e65f      	b.n	692 <chip_vm+0x2a2>
			vms.ix=caddr(vms.b1,vms.b2);
     9d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9d6:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9da:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9dc:	4a9a      	ldr	r2, [pc, #616]	; (c48 <chip_vm+0x858>)
     9de:	7812      	ldrb	r2, [r2, #0]
     9e0:	b90a      	cbnz	r2, 9e6 <chip_vm+0x5f6>
				vms.ix<<=1;
     9e2:	005b      	lsls	r3, r3, #1
     9e4:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     9e6:	2300      	movs	r3, #0
     9e8:	7163      	strb	r3, [r4, #5]
			break;
     9ea:	e652      	b.n	692 <chip_vm+0x2a2>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     9ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9f0:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9f4:	79a2      	ldrb	r2, [r4, #6]
     9f6:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     9fa:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     9fc:	4a92      	ldr	r2, [pc, #584]	; (c48 <chip_vm+0x858>)
     9fe:	7812      	ldrb	r2, [r2, #0]
     a00:	2a00      	cmp	r2, #0
     a02:	f47f ae46 	bne.w	692 <chip_vm+0x2a2>
				vms.pc<<=1;
     a06:	005b      	lsls	r3, r3, #1
     a08:	8023      	strh	r3, [r4, #0]
     a0a:	e642      	b.n	692 <chip_vm+0x2a2>
			vms.var[x]=rand()%vms.b2;
     a0c:	f7ff fce2 	bl	3d4 <rand>
     a10:	44a0      	add	r8, r4
     a12:	7e63      	ldrb	r3, [r4, #25]
     a14:	fb90 f2f3 	sdiv	r2, r0, r3
     a18:	fb02 0013 	mls	r0, r2, r3, r0
     a1c:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     a20:	e637      	b.n	692 <chip_vm+0x2a2>
			if (!n){
     a22:	f013 030f 	ands.w	r3, r3, #15
     a26:	d11f      	bne.n	a68 <chip_vm+0x678>
				if (vms.sprite_mem==RAM_MEM){
     a28:	7963      	ldrb	r3, [r4, #5]
     a2a:	b97b      	cbnz	r3, a4c <chip_vm+0x65c>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     a2c:	44a1      	add	r9, r4
     a2e:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a32:	44a0      	add	r8, r4
     a34:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a38:	8863      	ldrh	r3, [r4, #2]
     a3a:	4a84      	ldr	r2, [pc, #528]	; (c4c <chip_vm+0x85c>)
     a3c:	4413      	add	r3, r2
     a3e:	9300      	str	r3, [sp, #0]
     a40:	2310      	movs	r3, #16
     a42:	461a      	mov	r2, r3
     a44:	f000 ff20 	bl	1888 <gfx_sprite>
     a48:	7560      	strb	r0, [r4, #21]
     a4a:	e622      	b.n	692 <chip_vm+0x2a2>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     a4c:	44a1      	add	r9, r4
     a4e:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a52:	44a0      	add	r8, r4
     a54:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a58:	8863      	ldrh	r3, [r4, #2]
     a5a:	9300      	str	r3, [sp, #0]
     a5c:	2310      	movs	r3, #16
     a5e:	461a      	mov	r2, r3
     a60:	f000 ff12 	bl	1888 <gfx_sprite>
     a64:	7560      	strb	r0, [r4, #21]
     a66:	e614      	b.n	692 <chip_vm+0x2a2>
				if (vms.sprite_mem==RAM_MEM){
     a68:	7962      	ldrb	r2, [r4, #5]
     a6a:	b97a      	cbnz	r2, a8c <chip_vm+0x69c>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     a6c:	44a1      	add	r9, r4
     a6e:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a72:	44a0      	add	r8, r4
     a74:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a78:	8862      	ldrh	r2, [r4, #2]
     a7a:	f8df e1d0 	ldr.w	lr, [pc, #464]	; c4c <chip_vm+0x85c>
     a7e:	4472      	add	r2, lr
     a80:	9200      	str	r2, [sp, #0]
     a82:	2208      	movs	r2, #8
     a84:	f000 ff00 	bl	1888 <gfx_sprite>
     a88:	7560      	strb	r0, [r4, #21]
     a8a:	e602      	b.n	692 <chip_vm+0x2a2>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     a8c:	44a1      	add	r9, r4
     a8e:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a92:	44a0      	add	r8, r4
     a94:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a98:	8862      	ldrh	r2, [r4, #2]
     a9a:	9200      	str	r2, [sp, #0]
     a9c:	2208      	movs	r2, #8
     a9e:	f000 fef3 	bl	1888 <gfx_sprite>
     aa2:	7560      	strb	r0, [r4, #21]
     aa4:	e5f5      	b.n	692 <chip_vm+0x2a2>
				switch(vms.b2){
     aa6:	2b9e      	cmp	r3, #158	; 0x9e
     aa8:	d003      	beq.n	ab2 <chip_vm+0x6c2>
     aaa:	2ba1      	cmp	r3, #161	; 0xa1
     aac:	d00d      	beq.n	aca <chip_vm+0x6da>
					return CHIP_BAD_OPCODE;
     aae:	2002      	movs	r0, #2
     ab0:	e171      	b.n	d96 <chip_vm+0x9a6>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     ab2:	44a0      	add	r8, r4
     ab4:	f898 0006 	ldrb.w	r0, [r8, #6]
     ab8:	f000 fb7a 	bl	11b0 <btn_query_down>
     abc:	2800      	cmp	r0, #0
     abe:	f43f ade8 	beq.w	692 <chip_vm+0x2a2>
     ac2:	8823      	ldrh	r3, [r4, #0]
     ac4:	3302      	adds	r3, #2
     ac6:	8023      	strh	r3, [r4, #0]
     ac8:	e5e3      	b.n	692 <chip_vm+0x2a2>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     aca:	44a0      	add	r8, r4
     acc:	f898 0006 	ldrb.w	r0, [r8, #6]
     ad0:	f000 fb6e 	bl	11b0 <btn_query_down>
     ad4:	2800      	cmp	r0, #0
     ad6:	f47f addc 	bne.w	692 <chip_vm+0x2a2>
     ada:	8823      	ldrh	r3, [r4, #0]
     adc:	3302      	adds	r3, #2
     ade:	8023      	strh	r3, [r4, #0]
     ae0:	e5d7      	b.n	692 <chip_vm+0x2a2>
			switch(vms.b2){
     ae2:	3b01      	subs	r3, #1
     ae4:	2b84      	cmp	r3, #132	; 0x84
     ae6:	f200 8144 	bhi.w	d72 <chip_vm+0x982>
     aea:	e8df f013 	tbh	[pc, r3, lsl #1]
     aee:	0085      	.short	0x0085
     af0:	01420142 	.word	0x01420142
     af4:	01420142 	.word	0x01420142
     af8:	008b0142 	.word	0x008b0142
     afc:	01420142 	.word	0x01420142
     b00:	01420091 	.word	0x01420091
     b04:	01420142 	.word	0x01420142
     b08:	01420142 	.word	0x01420142
     b0c:	01420142 	.word	0x01420142
     b10:	01420142 	.word	0x01420142
     b14:	00970142 	.word	0x00970142
     b18:	01420142 	.word	0x01420142
     b1c:	0142009d 	.word	0x0142009d
     b20:	01420142 	.word	0x01420142
     b24:	01420142 	.word	0x01420142
     b28:	014200a5 	.word	0x014200a5
     b2c:	01420142 	.word	0x01420142
     b30:	01420142 	.word	0x01420142
     b34:	01420142 	.word	0x01420142
     b38:	01420142 	.word	0x01420142
     b3c:	00b50142 	.word	0x00b50142
     b40:	01420142 	.word	0x01420142
     b44:	01420142 	.word	0x01420142
     b48:	01420142 	.word	0x01420142
     b4c:	014200c4 	.word	0x014200c4
     b50:	00d20142 	.word	0x00d20142
     b54:	01420142 	.word	0x01420142
     b58:	01420142 	.word	0x01420142
     b5c:	01420142 	.word	0x01420142
     b60:	01420142 	.word	0x01420142
     b64:	01420142 	.word	0x01420142
     b68:	01420142 	.word	0x01420142
     b6c:	01420142 	.word	0x01420142
     b70:	01420142 	.word	0x01420142
     b74:	01420142 	.word	0x01420142
     b78:	01420142 	.word	0x01420142
     b7c:	01420142 	.word	0x01420142
     b80:	01420142 	.word	0x01420142
     b84:	01420142 	.word	0x01420142
     b88:	01420142 	.word	0x01420142
     b8c:	01420142 	.word	0x01420142
     b90:	01420142 	.word	0x01420142
     b94:	00f70142 	.word	0x00f70142
     b98:	01420142 	.word	0x01420142
     b9c:	01420142 	.word	0x01420142
     ba0:	01420142 	.word	0x01420142
     ba4:	01420142 	.word	0x01420142
     ba8:	01420142 	.word	0x01420142
     bac:	01420142 	.word	0x01420142
     bb0:	01420142 	.word	0x01420142
     bb4:	01000142 	.word	0x01000142
     bb8:	01420142 	.word	0x01420142
     bbc:	01420142 	.word	0x01420142
     bc0:	01420142 	.word	0x01420142
     bc4:	01420142 	.word	0x01420142
     bc8:	01420142 	.word	0x01420142
     bcc:	01420142 	.word	0x01420142
     bd0:	01420142 	.word	0x01420142
     bd4:	010c0109 	.word	0x010c0109
     bd8:	01420142 	.word	0x01420142
     bdc:	01420142 	.word	0x01420142
     be0:	01420142 	.word	0x01420142
     be4:	01420142 	.word	0x01420142
     be8:	01420142 	.word	0x01420142
     bec:	01420142 	.word	0x01420142
     bf0:	01420142 	.word	0x01420142
     bf4:	01210142 	.word	0x01210142
				sprite_bpp=(vms.b1&0xf)/2; 
     bf8:	ea4f 0858 	mov.w	r8, r8, lsr #1
     bfc:	4b14      	ldr	r3, [pc, #80]	; (c50 <chip_vm+0x860>)
     bfe:	f883 8000 	strb.w	r8, [r3]
				break;
     c02:	e546      	b.n	692 <chip_vm+0x2a2>
				vms.var[x]=game_timer;
     c04:	4b13      	ldr	r3, [pc, #76]	; (c54 <chip_vm+0x864>)
     c06:	881b      	ldrh	r3, [r3, #0]
     c08:	44a0      	add	r8, r4
     c0a:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     c0e:	e540      	b.n	692 <chip_vm+0x2a2>
				vms.var[x]=btn_wait_any();
     c10:	f000 fb02 	bl	1218 <btn_wait_any>
     c14:	44a0      	add	r8, r4
     c16:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     c1a:	e53a      	b.n	692 <chip_vm+0x2a2>
				game_timer=vms.var[x];
     c1c:	44a0      	add	r8, r4
     c1e:	f898 2006 	ldrb.w	r2, [r8, #6]
     c22:	4b0c      	ldr	r3, [pc, #48]	; (c54 <chip_vm+0x864>)
     c24:	801a      	strh	r2, [r3, #0]
				break;
     c26:	e534      	b.n	692 <chip_vm+0x2a2>
				tone(523,vms.var[x]);
     c28:	44a0      	add	r8, r4
     c2a:	f898 1006 	ldrb.w	r1, [r8, #6]
     c2e:	f240 200b 	movw	r0, #523	; 0x20b
     c32:	f001 fe8d 	bl	2950 <tone>
				break;
     c36:	e52c      	b.n	692 <chip_vm+0x2a2>
				vms.ix += vms.var[x];
     c38:	44a0      	add	r8, r4
     c3a:	f898 3006 	ldrb.w	r3, [r8, #6]
     c3e:	8862      	ldrh	r2, [r4, #2]
     c40:	4413      	add	r3, r2
     c42:	8063      	strh	r3, [r4, #2]
				break;
     c44:	e525      	b.n	692 <chip_vm+0x2a2>
     c46:	bf00      	nop
     c48:	200006c4 	.word	0x200006c4
     c4c:	20000700 	.word	0x20000700
     c50:	200001c8 	.word	0x200001c8
     c54:	20004e90 	.word	0x20004e90
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     c58:	44a0      	add	r8, r4
     c5a:	f898 3006 	ldrb.w	r3, [r8, #6]
     c5e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     c62:	4a50      	ldr	r2, [pc, #320]	; (da4 <chip_vm+0x9b4>)
     c64:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c68:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c6a:	2301      	movs	r3, #1
     c6c:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     c6e:	2000      	movs	r0, #0
     c70:	f002 f826 	bl	2cc0 <select_font>
				break;
     c74:	e50d      	b.n	692 <chip_vm+0x2a2>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c76:	44a0      	add	r8, r4
     c78:	f898 3006 	ldrb.w	r3, [r8, #6]
     c7c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c80:	4a49      	ldr	r2, [pc, #292]	; (da8 <chip_vm+0x9b8>)
     c82:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c86:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c88:	2001      	movs	r0, #1
     c8a:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     c8c:	f002 f818 	bl	2cc0 <select_font>
				break;
     c90:	e4ff      	b.n	692 <chip_vm+0x2a2>
				n=vms.var[x];
     c92:	44a0      	add	r8, r4
     c94:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     c98:	4a44      	ldr	r2, [pc, #272]	; (dac <chip_vm+0x9bc>)
     c9a:	fba2 0301 	umull	r0, r3, r2, r1
     c9e:	08db      	lsrs	r3, r3, #3
     ca0:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     ca4:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     ca8:	f884 005e 	strb.w	r0, [r4, #94]	; 0x5e
				block[1]=n%10;
     cac:	b2db      	uxtb	r3, r3
     cae:	fba2 0203 	umull	r0, r2, r2, r3
     cb2:	08d2      	lsrs	r2, r2, #3
     cb4:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     cb8:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     cbc:	f884 305d 	strb.w	r3, [r4, #93]	; 0x5d
				block[0]=n/10;
     cc0:	fba7 2301 	umull	r2, r3, r7, r1
     cc4:	095b      	lsrs	r3, r3, #5
     cc6:	f884 305c 	strb.w	r3, [r4, #92]	; 0x5c
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     cca:	8863      	ldrh	r3, [r4, #2]
     ccc:	2203      	movs	r2, #3
     cce:	4938      	ldr	r1, [pc, #224]	; (db0 <chip_vm+0x9c0>)
     cd0:	4419      	add	r1, r3
     cd2:	f104 005c 	add.w	r0, r4, #92	; 0x5c
     cd6:	f000 fba6 	bl	1426 <move>
				break;
     cda:	e4da      	b.n	692 <chip_vm+0x2a2>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     cdc:	8863      	ldrh	r3, [r4, #2]
     cde:	f108 0201 	add.w	r2, r8, #1
     ce2:	4933      	ldr	r1, [pc, #204]	; (db0 <chip_vm+0x9c0>)
     ce4:	4419      	add	r1, r3
     ce6:	4630      	mov	r0, r6
     ce8:	f000 fb9d 	bl	1426 <move>
				break;
     cec:	e4d1      	b.n	692 <chip_vm+0x2a2>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     cee:	8863      	ldrh	r3, [r4, #2]
     cf0:	f108 0201 	add.w	r2, r8, #1
     cf4:	4631      	mov	r1, r6
     cf6:	482e      	ldr	r0, [pc, #184]	; (db0 <chip_vm+0x9c0>)
     cf8:	4418      	add	r0, r3
     cfa:	f000 fb94 	bl	1426 <move>
				break;
     cfe:	e4c8      	b.n	692 <chip_vm+0x2a2>
				vms.s=(x&0x7)*FLASH_SECTOR_SIZE; // flash sector {0..7}
     d00:	0352      	lsls	r2, r2, #13
     d02:	82e2      	strh	r2, [r4, #22]
				break;			
     d04:	e4c5      	b.n	692 <chip_vm+0x2a2>
				if (video_mode==VM_BPCHIP){
     d06:	4b2b      	ldr	r3, [pc, #172]	; (db4 <chip_vm+0x9c4>)
     d08:	781b      	ldrb	r3, [r3, #0]
     d0a:	b953      	cbnz	r3, d22 <chip_vm+0x932>
					flash_write_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d0c:	8ae3      	ldrh	r3, [r4, #22]
     d0e:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d12:	8860      	ldrh	r0, [r4, #2]
     d14:	f108 0201 	add.w	r2, r8, #1
     d18:	4631      	mov	r1, r6
     d1a:	4418      	add	r0, r3
     d1c:	f000 f988 	bl	1030 <flash_write_block>
     d20:	e4b7      	b.n	692 <chip_vm+0x2a2>
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
     d22:	f108 0201 	add.w	r2, r8, #1
     d26:	4631      	mov	r1, r6
     d28:	4823      	ldr	r0, [pc, #140]	; (db8 <chip_vm+0x9c8>)
     d2a:	f000 f981 	bl	1030 <flash_write_block>
     d2e:	e4b0      	b.n	692 <chip_vm+0x2a2>
				if (video_mode==VM_BPCHIP){
     d30:	4b20      	ldr	r3, [pc, #128]	; (db4 <chip_vm+0x9c4>)
     d32:	781b      	ldrb	r3, [r3, #0]
     d34:	b953      	cbnz	r3, d4c <chip_vm+0x95c>
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d36:	8ae3      	ldrh	r3, [r4, #22]
     d38:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d3c:	8860      	ldrh	r0, [r4, #2]
     d3e:	f108 0201 	add.w	r2, r8, #1
     d42:	4631      	mov	r1, r6
     d44:	4418      	add	r0, r3
     d46:	f000 f959 	bl	ffc <flash_read_block>
     d4a:	e4a2      	b.n	692 <chip_vm+0x2a2>
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     d4c:	f108 0201 	add.w	r2, r8, #1
     d50:	4631      	mov	r1, r6
     d52:	4819      	ldr	r0, [pc, #100]	; (db8 <chip_vm+0x9c8>)
     d54:	f000 f952 	bl	ffc <flash_read_block>
     d58:	e49b      	b.n	692 <chip_vm+0x2a2>
	    switch (vms.b1>>4){
     d5a:	f04f 0800 	mov.w	r8, #0
     d5e:	e451      	b.n	604 <chip_vm+0x214>
			}else switch(vms.b2){
     d60:	f04f 0800 	mov.w	r8, #0
     d64:	e44e      	b.n	604 <chip_vm+0x214>
				exit_code=CHIP_BAD_OPCODE;
     d66:	f04f 0802 	mov.w	r8, #2
     d6a:	e44b      	b.n	604 <chip_vm+0x214>
				exit_code=CHIP_BAD_OPCODE;
     d6c:	f04f 0802 	mov.w	r8, #2
     d70:	e448      	b.n	604 <chip_vm+0x214>
				}
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     d72:	f04f 0802 	mov.w	r8, #2
     d76:	e445      	b.n	604 <chip_vm+0x214>
			exit_code=CHIP_BAD_ADDR;
     d78:	f04f 0803 	mov.w	r8, #3
     d7c:	e001      	b.n	d82 <chip_vm+0x992>
     d7e:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     d82:	2002      	movs	r0, #2
     d84:	f001 ff9c 	bl	2cc0 <select_font>
	set_keymap(default_kmap);
     d88:	480c      	ldr	r0, [pc, #48]	; (dbc <chip_vm+0x9cc>)
     d8a:	f000 f9c7 	bl	111c <set_keymap>
	set_video_mode(VM_BPCHIP);
     d8e:	2000      	movs	r0, #0
     d90:	f002 fb76 	bl	3480 <set_video_mode>
	return exit_code;
     d94:	4640      	mov	r0, r8
}//schipp()
     d96:	b009      	add	sp, #36	; 0x24
     d98:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     d9c:	f04f 0801 	mov.w	r8, #1
     da0:	e7ef      	b.n	d82 <chip_vm+0x992>
     da2:	bf00      	nop
     da4:	00003cc8 	.word	0x00003cc8
     da8:	00003c28 	.word	0x00003c28
     dac:	cccccccd 	.word	0xcccccccd
     db0:	20000700 	.word	0x20000700
     db4:	200006c4 	.word	0x200006c4
     db8:	0001fff0 	.word	0x0001fff0
     dbc:	00003d28 	.word	0x00003d28

00000dc0 <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     dc0:	2200      	movs	r2, #0
     dc2:	4b0f      	ldr	r3, [pc, #60]	; (e00 <flash_enable+0x40>)
     dc4:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     dc6:	4b0f      	ldr	r3, [pc, #60]	; (e04 <flash_enable+0x44>)
     dc8:	681b      	ldr	r3, [r3, #0]
     dca:	f013 0f01 	tst.w	r3, #1
     dce:	d10b      	bne.n	de8 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     dd0:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     dd4:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     dd8:	6813      	ldr	r3, [r2, #0]
     dda:	f043 0301 	orr.w	r3, r3, #1
     dde:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     de0:	6813      	ldr	r3, [r2, #0]
     de2:	f013 0f02 	tst.w	r3, #2
     de6:	d0fb      	beq.n	de0 <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     de8:	4b07      	ldr	r3, [pc, #28]	; (e08 <flash_enable+0x48>)
     dea:	4a08      	ldr	r2, [pc, #32]	; (e0c <flash_enable+0x4c>)
     dec:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     dee:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     df2:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     df4:	6918      	ldr	r0, [r3, #16]
     df6:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     dfa:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     dfe:	4770      	bx	lr
     e00:	200002ac 	.word	0x200002ac
     e04:	40021000 	.word	0x40021000
     e08:	40022000 	.word	0x40022000
     e0c:	45670123 	.word	0x45670123

00000e10 <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     e10:	4a0b      	ldr	r2, [pc, #44]	; (e40 <flash_write_hword+0x30>)
     e12:	68d3      	ldr	r3, [r2, #12]
     e14:	f013 0f01 	tst.w	r3, #1
     e18:	d1fb      	bne.n	e12 <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e1a:	4b09      	ldr	r3, [pc, #36]	; (e40 <flash_write_hword+0x30>)
     e1c:	68da      	ldr	r2, [r3, #12]
     e1e:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     e22:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     e24:	2201      	movs	r2, #1
     e26:	611a      	str	r2, [r3, #16]
	*address=hword;
     e28:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     e2a:	68da      	ldr	r2, [r3, #12]
     e2c:	f012 0f01 	tst.w	r2, #1
     e30:	d003      	beq.n	e3a <flash_write_hword+0x2a>
     e32:	68da      	ldr	r2, [r3, #12]
     e34:	f012 0f20 	tst.w	r2, #32
     e38:	d0f7      	beq.n	e2a <flash_write_hword+0x1a>
	return *address==hword;
}
     e3a:	2001      	movs	r0, #1
     e3c:	4770      	bx	lr
     e3e:	bf00      	nop
     e40:	40022000 	.word	0x40022000

00000e44 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e44:	283f      	cmp	r0, #63	; 0x3f
     e46:	d914      	bls.n	e72 <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     e48:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     e4a:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     e4c:	1c81      	adds	r1, r0, #2
     e4e:	8802      	ldrh	r2, [r0, #0]
     e50:	f64f 73ff 	movw	r3, #65535	; 0xffff
     e54:	429a      	cmp	r2, r3
     e56:	d110      	bne.n	e7a <flash_erase_row+0x36>
     e58:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     e5c:	460b      	mov	r3, r1
     e5e:	f64f 74ff 	movw	r4, #65535	; 0xffff
     e62:	f833 2b02 	ldrh.w	r2, [r3], #2
     e66:	42a2      	cmp	r2, r4
     e68:	d107      	bne.n	e7a <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e6a:	429d      	cmp	r5, r3
     e6c:	d1f9      	bne.n	e62 <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     e6e:	2001      	movs	r0, #1
     e70:	e02f      	b.n	ed2 <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e72:	2000      	movs	r0, #0
     e74:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     e76:	2000      	movs	r0, #0
     e78:	e02b      	b.n	ed2 <flash_erase_row+0x8e>
     e7a:	4b17      	ldr	r3, [pc, #92]	; (ed8 <flash_erase_row+0x94>)
     e7c:	691b      	ldr	r3, [r3, #16]
     e7e:	f013 0f80 	tst.w	r3, #128	; 0x80
     e82:	d1f8      	bne.n	e76 <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e84:	4b14      	ldr	r3, [pc, #80]	; (ed8 <flash_erase_row+0x94>)
     e86:	68da      	ldr	r2, [r3, #12]
     e88:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     e8c:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     e8e:	2202      	movs	r2, #2
     e90:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     e92:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     e94:	691a      	ldr	r2, [r3, #16]
     e96:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     e9a:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     e9c:	68da      	ldr	r2, [r3, #12]
     e9e:	f012 0f01 	tst.w	r2, #1
     ea2:	d003      	beq.n	eac <flash_erase_row+0x68>
     ea4:	68da      	ldr	r2, [r3, #12]
     ea6:	f012 0f20 	tst.w	r2, #32
     eaa:	d0f7      	beq.n	e9c <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     eac:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     eae:	f64f 72ff 	movw	r2, #65535	; 0xffff
     eb2:	4293      	cmp	r3, r2
     eb4:	d107      	bne.n	ec6 <flash_erase_row+0x82>
     eb6:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     eba:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     ebe:	4293      	cmp	r3, r2
     ec0:	d101      	bne.n	ec6 <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     ec2:	4281      	cmp	r1, r0
     ec4:	d1f9      	bne.n	eba <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     ec6:	f64f 70ff 	movw	r0, #65535	; 0xffff
     eca:	4283      	cmp	r3, r0
     ecc:	bf14      	ite	ne
     ece:	2000      	movne	r0, #0
     ed0:	2001      	moveq	r0, #1
}
     ed2:	bc30      	pop	{r4, r5}
     ed4:	4770      	bx	lr
     ed6:	bf00      	nop
     ed8:	40022000 	.word	0x40022000

00000edc <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     edc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     ede:	4b1c      	ldr	r3, [pc, #112]	; (f50 <flash_sync+0x74>)
     ee0:	781b      	ldrb	r3, [r3, #0]
     ee2:	f013 0f01 	tst.w	r3, #1
     ee6:	d102      	bne.n	eee <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     ee8:	2301      	movs	r3, #1
}
     eea:	4618      	mov	r0, r3
     eec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     eee:	4b18      	ldr	r3, [pc, #96]	; (f50 <flash_sync+0x74>)
     ef0:	7858      	ldrb	r0, [r3, #1]
     ef2:	f7ff ffa7 	bl	e44 <flash_erase_row>
     ef6:	4603      	mov	r3, r0
     ef8:	2800      	cmp	r0, #0
     efa:	d0f6      	beq.n	eea <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     efc:	4e14      	ldr	r6, [pc, #80]	; (f50 <flash_sync+0x74>)
     efe:	7875      	ldrb	r5, [r6, #1]
     f00:	02ad      	lsls	r5, r5, #10
     f02:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f04:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     f06:	f64f 77ff 	movw	r7, #65535	; 0xffff
     f0a:	e004      	b.n	f16 <flash_sync+0x3a>
		dest++;
     f0c:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f0e:	3401      	adds	r4, #1
     f10:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f14:	d00a      	beq.n	f2c <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     f16:	f836 1b02 	ldrh.w	r1, [r6], #2
     f1a:	42b9      	cmp	r1, r7
     f1c:	d0f6      	beq.n	f0c <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     f1e:	4628      	mov	r0, r5
     f20:	f7ff ff76 	bl	e10 <flash_write_hword>
     f24:	2800      	cmp	r0, #0
     f26:	d1f1      	bne.n	f0c <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     f28:	2c00      	cmp	r4, #0
     f2a:	dd04      	ble.n	f36 <flash_sync+0x5a>
     f2c:	4a08      	ldr	r2, [pc, #32]	; (f50 <flash_sync+0x74>)
     f2e:	7813      	ldrb	r3, [r2, #0]
     f30:	f023 0304 	bic.w	r3, r3, #4
     f34:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     f36:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f3a:	d106      	bne.n	f4a <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     f3c:	4a04      	ldr	r2, [pc, #16]	; (f50 <flash_sync+0x74>)
     f3e:	7813      	ldrb	r3, [r2, #0]
     f40:	f023 0301 	bic.w	r3, r3, #1
     f44:	7013      	strb	r3, [r2, #0]
			return 1;
     f46:	2301      	movs	r3, #1
     f48:	e7cf      	b.n	eea <flash_sync+0xe>
		return 0;
     f4a:	2300      	movs	r3, #0
     f4c:	e7cd      	b.n	eea <flash_sync+0xe>
     f4e:	bf00      	nop
     f50:	200002ac 	.word	0x200002ac

00000f54 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     f54:	2200      	movs	r2, #0
     f56:	4b01      	ldr	r3, [pc, #4]	; (f5c <flash_flush+0x8>)
     f58:	701a      	strb	r2, [r3, #0]
     f5a:	4770      	bx	lr
     f5c:	200002ac 	.word	0x200002ac

00000f60 <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     f60:	b508      	push	{r3, lr}
	flash_sync();
     f62:	f7ff ffbb 	bl	edc <flash_sync>
	row_buff.flags=0;
     f66:	2200      	movs	r2, #0
     f68:	4b06      	ldr	r3, [pc, #24]	; (f84 <flash_disable+0x24>)
     f6a:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     f6c:	4a06      	ldr	r2, [pc, #24]	; (f88 <flash_disable+0x28>)
     f6e:	6913      	ldr	r3, [r2, #16]
     f70:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     f74:	6113      	str	r3, [r2, #16]
	RCC->CR&=~RCC_CR_HSION;
     f76:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
     f7a:	6813      	ldr	r3, [r2, #0]
     f7c:	f023 0301 	bic.w	r3, r3, #1
     f80:	6013      	str	r3, [r2, #0]
     f82:	bd08      	pop	{r3, pc}
     f84:	200002ac 	.word	0x200002ac
     f88:	40022000 	.word	0x40022000

00000f8c <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     f8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     f90:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     f94:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     f98:	d92c      	bls.n	ff4 <flash_write_byte+0x68>
     f9a:	460e      	mov	r6, r1
     f9c:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     f9e:	4b16      	ldr	r3, [pc, #88]	; (ff8 <flash_write_byte+0x6c>)
     fa0:	785b      	ldrb	r3, [r3, #1]
     fa2:	4598      	cmp	r8, r3
     fa4:	d019      	beq.n	fda <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     fa6:	f7ff ff99 	bl	edc <flash_sync>
     faa:	4603      	mov	r3, r0
     fac:	b1f8      	cbz	r0, fee <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     fae:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     fb2:	f023 0303 	bic.w	r3, r3, #3
     fb6:	4a10      	ldr	r2, [pc, #64]	; (ff8 <flash_write_byte+0x6c>)
     fb8:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     fbc:	f833 4b02 	ldrh.w	r4, [r3], #2
     fc0:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     fc4:	42ab      	cmp	r3, r5
     fc6:	d1f9      	bne.n	fbc <flash_write_byte+0x30>
	row_buff.row=r;
     fc8:	4a0b      	ldr	r2, [pc, #44]	; (ff8 <flash_write_byte+0x6c>)
     fca:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     fce:	7813      	ldrb	r3, [r2, #0]
     fd0:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     fd4:	f043 0302 	orr.w	r3, r3, #2
     fd8:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     fda:	4a07      	ldr	r2, [pc, #28]	; (ff8 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     fdc:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     fe0:	4413      	add	r3, r2
     fe2:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     fe4:	7813      	ldrb	r3, [r2, #0]
     fe6:	f043 0301 	orr.w	r3, r3, #1
     fea:	7013      	strb	r3, [r2, #0]
	return 1;
     fec:	2301      	movs	r3, #1
}
     fee:	4618      	mov	r0, r3
     ff0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     ff4:	2300      	movs	r3, #0
     ff6:	e7fa      	b.n	fee <flash_write_byte+0x62>
     ff8:	200002ac 	.word	0x200002ac

00000ffc <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     ffc:	2a00      	cmp	r2, #0
     ffe:	dd13      	ble.n	1028 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
    1000:	b410      	push	{r4}
    1002:	4603      	mov	r3, r0
    1004:	3901      	subs	r1, #1
    1006:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
    1008:	4a08      	ldr	r2, [pc, #32]	; (102c <flash_read_block+0x30>)
    100a:	7854      	ldrb	r4, [r2, #1]
    100c:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
    1010:	bf03      	ittte	eq
    1012:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
    1016:	18a4      	addeq	r4, r4, r2
    1018:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
    101a:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    101c:	f801 4f01 	strb.w	r4, [r1, #1]!
    1020:	3301      	adds	r3, #1
    1022:	4283      	cmp	r3, r0
    1024:	d1f1      	bne.n	100a <flash_read_block+0xe>
}
    1026:	bc10      	pop	{r4}
    1028:	4770      	bx	lr
    102a:	bf00      	nop
    102c:	200002ac 	.word	0x200002ac

00001030 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    1030:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<(void*)0x10000) return 0;
    1032:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
    1036:	d202      	bcs.n	103e <flash_write_block+0xe>
    1038:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
    103a:	4618      	mov	r0, r3
    103c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    103e:	4604      	mov	r4, r0
    1040:	460e      	mov	r6, r1
    1042:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
    1044:	f7ff febc 	bl	dc0 <flash_enable>
    1048:	4603      	mov	r3, r0
    104a:	2800      	cmp	r0, #0
    104c:	d0f5      	beq.n	103a <flash_write_block+0xa>
	for (i=0;i<size;i++){
    104e:	2f00      	cmp	r7, #0
    1050:	dd0c      	ble.n	106c <flash_write_block+0x3c>
    1052:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
    1054:	1c65      	adds	r5, r4, #1
    1056:	f816 1b01 	ldrb.w	r1, [r6], #1
    105a:	4620      	mov	r0, r4
    105c:	f7ff ff96 	bl	f8c <flash_write_byte>
    1060:	4603      	mov	r3, r0
    1062:	2800      	cmp	r0, #0
    1064:	d0e9      	beq.n	103a <flash_write_block+0xa>
    1066:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
    1068:	42bd      	cmp	r5, r7
    106a:	d1f3      	bne.n	1054 <flash_write_block+0x24>
	flash_disable();
    106c:	f7ff ff78 	bl	f60 <flash_disable>
	return 1;
    1070:	2301      	movs	r3, #1
    1072:	e7e2      	b.n	103a <flash_write_block+0xa>

00001074 <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
    1074:	4b0a      	ldr	r3, [pc, #40]	; (10a0 <btn_mask+0x2c>)
    1076:	781b      	ldrb	r3, [r3, #0]
    1078:	4283      	cmp	r3, r0
    107a:	d00a      	beq.n	1092 <btn_mask+0x1e>
    107c:	4a09      	ldr	r2, [pc, #36]	; (10a4 <btn_mask+0x30>)
    for (i=0;i<8;i++){
    107e:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
    1080:	f812 1b01 	ldrb.w	r1, [r2], #1
    1084:	4281      	cmp	r1, r0
    1086:	d005      	beq.n	1094 <btn_mask+0x20>
    for (i=0;i<8;i++){
    1088:	3301      	adds	r3, #1
    108a:	2b08      	cmp	r3, #8
    108c:	d1f8      	bne.n	1080 <btn_mask+0xc>
    }
    return 255;
    108e:	20ff      	movs	r0, #255	; 0xff
}
    1090:	4770      	bx	lr
    for (i=0;i<8;i++){
    1092:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
    1094:	2001      	movs	r0, #1
    1096:	fa00 f303 	lsl.w	r3, r0, r3
    109a:	b2d8      	uxtb	r0, r3
    109c:	4770      	bx	lr
    109e:	bf00      	nop
    10a0:	200006b0 	.word	0x200006b0
    10a4:	200006b1 	.word	0x200006b1

000010a8 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
    10a8:	b430      	push	{r4, r5}
    10aa:	4605      	mov	r5, r0
    10ac:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
    10ae:	2000      	movs	r0, #0
    10b0:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<MOSI_PIN);
    10b2:	4b19      	ldr	r3, [pc, #100]	; (1118 <shift_out+0x70>)
        if (byte&mask){
    10b4:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
    10b6:	68d9      	ldr	r1, [r3, #12]
    10b8:	bf14      	ite	ne
    10ba:	f441 4180 	orrne.w	r1, r1, #16384	; 0x4000
            GAMEPAD_PORT->ODR&=~(1<<MOSI_PIN);
    10be:	f421 4180 	biceq.w	r1, r1, #16384	; 0x4000
    10c2:	60d9      	str	r1, [r3, #12]
        }
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10c4:	68d9      	ldr	r1, [r3, #12]
    10c6:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
    10ca:	60d9      	str	r1, [r3, #12]
        _clk_delay();
    10cc:	bf00      	nop
    10ce:	bf00      	nop
    10d0:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10d2:	68d9      	ldr	r1, [r3, #12]
    10d4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    10d8:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
    10da:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&(1<<MISO_PIN)) rx_byte|=128;    
    10dc:	6899      	ldr	r1, [r3, #8]
    10de:	f411 4f00 	tst.w	r1, #32768	; 0x8000
    10e2:	bf1c      	itt	ne
    10e4:	f060 007f 	ornne	r0, r0, #127	; 0x7f
    10e8:	b2c0      	uxtbne	r0, r0
        mask<<=1;
    10ea:	0052      	lsls	r2, r2, #1
    10ec:	b2d2      	uxtb	r2, r2
    while (mask){
    10ee:	3c01      	subs	r4, #1
    10f0:	d1e0      	bne.n	10b4 <shift_out+0xc>
    }
    GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
    10f2:	4b09      	ldr	r3, [pc, #36]	; (1118 <shift_out+0x70>)
    10f4:	68da      	ldr	r2, [r3, #12]
    10f6:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
    10fa:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10fc:	68da      	ldr	r2, [r3, #12]
    10fe:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    1102:	60da      	str	r2, [r3, #12]
    _clk_delay();
    1104:	bf00      	nop
    1106:	bf00      	nop
    1108:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    110a:	68da      	ldr	r2, [r3, #12]
    110c:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    1110:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    1112:	bc30      	pop	{r4, r5}
    1114:	4770      	bx	lr
    1116:	bf00      	nop
    1118:	40010c00 	.word	0x40010c00

0000111c <set_keymap>:
void set_keymap(const uint8_t *kmap){
    111c:	1e43      	subs	r3, r0, #1
    111e:	4a04      	ldr	r2, [pc, #16]	; (1130 <set_keymap+0x14>)
    1120:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    1122:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    1126:	f802 1f01 	strb.w	r1, [r2, #1]!
    112a:	4283      	cmp	r3, r0
    112c:	d1f9      	bne.n	1122 <set_keymap+0x6>
}
    112e:	4770      	bx	lr
    1130:	200006af 	.word	0x200006af

00001134 <gamepad_init>:
void gamepad_init(){
    1134:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,MOSI_PIN,OUTPUT_PP_SLOW);
    1136:	4c09      	ldr	r4, [pc, #36]	; (115c <gamepad_init+0x28>)
    1138:	2202      	movs	r2, #2
    113a:	210e      	movs	r1, #14
    113c:	4620      	mov	r0, r4
    113e:	f000 fa31 	bl	15a4 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    1142:	2202      	movs	r2, #2
    1144:	210d      	movs	r1, #13
    1146:	4620      	mov	r0, r4
    1148:	f000 fa2c 	bl	15a4 <config_pin>
    btn_state=0xff;
    114c:	22ff      	movs	r2, #255	; 0xff
    114e:	4b04      	ldr	r3, [pc, #16]	; (1160 <gamepad_init+0x2c>)
    1150:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1152:	4804      	ldr	r0, [pc, #16]	; (1164 <gamepad_init+0x30>)
    1154:	f7ff ffe2 	bl	111c <set_keymap>
    1158:	bd10      	pop	{r4, pc}
    115a:	bf00      	nop
    115c:	40010c00 	.word	0x40010c00
    1160:	20002700 	.word	0x20002700
    1164:	00003d28 	.word	0x00003d28

00001168 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1168:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    116a:	20fe      	movs	r0, #254	; 0xfe
    116c:	f7ff ff9c 	bl	10a8 <shift_out>
    1170:	4b0c      	ldr	r3, [pc, #48]	; (11a4 <read_gamepad+0x3c>)
    1172:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1174:	781b      	ldrb	r3, [r3, #0]
    1176:	f013 0f12 	tst.w	r3, #18
    117a:	d111      	bne.n	11a0 <read_gamepad+0x38>
        while (btn_state!=0xff){
    117c:	4b09      	ldr	r3, [pc, #36]	; (11a4 <read_gamepad+0x3c>)
    117e:	781b      	ldrb	r3, [r3, #0]
    1180:	b2db      	uxtb	r3, r3
    1182:	2bff      	cmp	r3, #255	; 0xff
    1184:	d009      	beq.n	119a <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    1186:	25fe      	movs	r5, #254	; 0xfe
    1188:	4c06      	ldr	r4, [pc, #24]	; (11a4 <read_gamepad+0x3c>)
    118a:	4628      	mov	r0, r5
    118c:	f7ff ff8c 	bl	10a8 <shift_out>
    1190:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    1192:	7823      	ldrb	r3, [r4, #0]
    1194:	b2db      	uxtb	r3, r3
    1196:	2bff      	cmp	r3, #255	; 0xff
    1198:	d1f7      	bne.n	118a <read_gamepad+0x22>
        };
        _reset_mcu();
    119a:	4a03      	ldr	r2, [pc, #12]	; (11a8 <read_gamepad+0x40>)
    119c:	4b03      	ldr	r3, [pc, #12]	; (11ac <read_gamepad+0x44>)
    119e:	601a      	str	r2, [r3, #0]
    11a0:	bd38      	pop	{r3, r4, r5, pc}
    11a2:	bf00      	nop
    11a4:	20002700 	.word	0x20002700
    11a8:	05fa0004 	.word	0x05fa0004
    11ac:	e000ed0c 	.word	0xe000ed0c

000011b0 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    11b0:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    11b2:	f7ff ff5f 	bl	1074 <btn_mask>
    return !(btn_state&mask);
    11b6:	4b03      	ldr	r3, [pc, #12]	; (11c4 <btn_query_down+0x14>)
    11b8:	781b      	ldrb	r3, [r3, #0]
    11ba:	4203      	tst	r3, r0
}
    11bc:	bf0c      	ite	eq
    11be:	2001      	moveq	r0, #1
    11c0:	2000      	movne	r0, #0
    11c2:	bd08      	pop	{r3, pc}
    11c4:	20002700 	.word	0x20002700

000011c8 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    11c8:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11ca:	f7ff ff53 	bl	1074 <btn_mask>
    11ce:	4606      	mov	r6, r0
    int frame_count=0;
    11d0:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    11d2:	4d06      	ldr	r5, [pc, #24]	; (11ec <btn_wait_down+0x24>)
    11d4:	e000      	b.n	11d8 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11d6:	2400      	movs	r4, #0
        frame_sync();
    11d8:	f002 f942 	bl	3460 <frame_sync>
        if (!(btn_state&mask)){
    11dc:	782b      	ldrb	r3, [r5, #0]
    11de:	4233      	tst	r3, r6
    11e0:	d1f9      	bne.n	11d6 <btn_wait_down+0xe>
            frame_count++;
    11e2:	3401      	adds	r4, #1
    while (frame_count<3){
    11e4:	2c02      	cmp	r4, #2
    11e6:	ddf7      	ble.n	11d8 <btn_wait_down+0x10>
        }
    }
}
    11e8:	bd70      	pop	{r4, r5, r6, pc}
    11ea:	bf00      	nop
    11ec:	20002700 	.word	0x20002700

000011f0 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    11f0:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11f2:	f7ff ff3f 	bl	1074 <btn_mask>
    11f6:	4606      	mov	r6, r0
    int frame_count=0;
    11f8:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    11fa:	4d06      	ldr	r5, [pc, #24]	; (1214 <btn_wait_up+0x24>)
    11fc:	e000      	b.n	1200 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11fe:	2400      	movs	r4, #0
        frame_sync();
    1200:	f002 f92e 	bl	3460 <frame_sync>
        if ((btn_state&mask)){
    1204:	782b      	ldrb	r3, [r5, #0]
    1206:	4233      	tst	r3, r6
    1208:	d0f9      	beq.n	11fe <btn_wait_up+0xe>
            frame_count++;
    120a:	3401      	adds	r4, #1
    while (frame_count<3){
    120c:	2c02      	cmp	r4, #2
    120e:	ddf7      	ble.n	1200 <btn_wait_up+0x10>
        }
    }
}
    1210:	bd70      	pop	{r4, r5, r6, pc}
    1212:	bf00      	nop
    1214:	20002700 	.word	0x20002700

00001218 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1218:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    121a:	4b15      	ldr	r3, [pc, #84]	; (1270 <btn_wait_any+0x58>)
    121c:	781c      	ldrb	r4, [r3, #0]
    121e:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1220:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    1222:	461d      	mov	r5, r3
    1224:	e007      	b.n	1236 <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    1226:	782a      	ldrb	r2, [r5, #0]
    1228:	b2d2      	uxtb	r2, r2
    122a:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    122c:	bf18      	it	ne
    122e:	3601      	addne	r6, #1
    while (frame_count<3){
    1230:	2e02      	cmp	r6, #2
    1232:	dc0a      	bgt.n	124a <btn_wait_any+0x32>
    1234:	461c      	mov	r4, r3
        frame_sync();
    1236:	f002 f913 	bl	3460 <frame_sync>
        if (last_state!=btn_state){
    123a:	782b      	ldrb	r3, [r5, #0]
    123c:	b2db      	uxtb	r3, r3
    123e:	42a3      	cmp	r3, r4
    1240:	d0f1      	beq.n	1226 <btn_wait_any+0xe>
            last_state=btn_state;
    1242:	782c      	ldrb	r4, [r5, #0]
    1244:	b2e4      	uxtb	r4, r4
            frame_count=0;
    1246:	2600      	movs	r6, #0
    1248:	e7f5      	b.n	1236 <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    124a:	43e3      	mvns	r3, r4
    mask>>=1;
    124c:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1250:	b15b      	cbz	r3, 126a <btn_wait_any+0x52>
    1252:	2200      	movs	r2, #0
    1254:	3201      	adds	r2, #1
    1256:	b2d2      	uxtb	r2, r2
    1258:	085b      	lsrs	r3, r3, #1
    125a:	d1fb      	bne.n	1254 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    125c:	4b05      	ldr	r3, [pc, #20]	; (1274 <btn_wait_any+0x5c>)
    125e:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1260:	4620      	mov	r0, r4
    1262:	f7ff ffc5 	bl	11f0 <btn_wait_up>
    return btn;
}
    1266:	4620      	mov	r0, r4
    1268:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    126a:	461a      	mov	r2, r3
    126c:	e7f6      	b.n	125c <btn_wait_any+0x44>
    126e:	bf00      	nop
    1270:	20002700 	.word	0x20002700
    1274:	200006b0 	.word	0x200006b0

00001278 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1278:	4b01      	ldr	r3, [pc, #4]	; (1280 <btn_set_value+0x8>)
    127a:	5419      	strb	r1, [r3, r0]
    127c:	4770      	bx	lr
    127e:	bf00      	nop
    1280:	200006b0 	.word	0x200006b0

00001284 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    1284:	4800      	ldr	r0, [pc, #0]	; (1288 <get_keymap+0x4>)
    1286:	4770      	bx	lr
    1288:	200006b0 	.word	0x200006b0

0000128c <btn_any_down>:

// wait for any button to be down
uint8_t btn_any_down(){
    while (btn_state==0xff);
    128c:	4a0a      	ldr	r2, [pc, #40]	; (12b8 <btn_any_down+0x2c>)
    128e:	7813      	ldrb	r3, [r2, #0]
    1290:	b2db      	uxtb	r3, r3
    1292:	2bff      	cmp	r3, #255	; 0xff
    1294:	d0fb      	beq.n	128e <btn_any_down+0x2>
    return buttons[btn_idx(btn_state^0xff)];
    1296:	4b08      	ldr	r3, [pc, #32]	; (12b8 <btn_any_down+0x2c>)
    1298:	781a      	ldrb	r2, [r3, #0]
    129a:	43d2      	mvns	r2, r2
    mask>>=1;
    129c:	f3c2 0246 	ubfx	r2, r2, #1, #7
    while(mask){idx++; mask>>=1;}
    12a0:	b13a      	cbz	r2, 12b2 <btn_any_down+0x26>
    12a2:	2300      	movs	r3, #0
    12a4:	3301      	adds	r3, #1
    12a6:	b2db      	uxtb	r3, r3
    12a8:	0852      	lsrs	r2, r2, #1
    12aa:	d1fb      	bne.n	12a4 <btn_any_down+0x18>
    
    12ac:	4a03      	ldr	r2, [pc, #12]	; (12bc <btn_any_down+0x30>)
    12ae:	5cd0      	ldrb	r0, [r2, r3]
    12b0:	4770      	bx	lr
    uint8_t idx=0;
    12b2:	4613      	mov	r3, r2
    12b4:	e7fa      	b.n	12ac <btn_any_down+0x20>
    12b6:	bf00      	nop
    12b8:	20002700 	.word	0x20002700
    12bc:	200006b0 	.word	0x200006b0

000012c0 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    12c0:	4b06      	ldr	r3, [pc, #24]	; (12dc <games_count+0x1c>)
    12c2:	691b      	ldr	r3, [r3, #16]
    12c4:	b13b      	cbz	r3, 12d6 <games_count+0x16>
    12c6:	4b05      	ldr	r3, [pc, #20]	; (12dc <games_count+0x1c>)
    12c8:	2000      	movs	r0, #0
    for (i=0;;i++){
    12ca:	3001      	adds	r0, #1
    12cc:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    12ce:	691a      	ldr	r2, [r3, #16]
    12d0:	2a00      	cmp	r2, #0
    12d2:	d1fa      	bne.n	12ca <games_count+0xa>
    12d4:	4770      	bx	lr
    for (i=0;;i++){
    12d6:	2000      	movs	r0, #0
    }
    return i;
}
    12d8:	4770      	bx	lr
    12da:	bf00      	nop
    12dc:	20000004 	.word	0x20000004

000012e0 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    12e0:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    12e2:	7803      	ldrb	r3, [r0, #0]
    12e4:	b1fb      	cbz	r3, 1326 <strcmp+0x46>
    12e6:	780a      	ldrb	r2, [r1, #0]
    12e8:	b17a      	cbz	r2, 130a <strcmp+0x2a>
		if (*s1<*s2){
    12ea:	4293      	cmp	r3, r2
    12ec:	d313      	bcc.n	1316 <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    12ee:	d815      	bhi.n	131c <strcmp+0x3c>
    12f0:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    12f2:	4621      	mov	r1, r4
	while (*s1 && *s2){
    12f4:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    12f8:	b1ab      	cbz	r3, 1326 <strcmp+0x46>
    12fa:	f814 2b01 	ldrb.w	r2, [r4], #1
    12fe:	b122      	cbz	r2, 130a <strcmp+0x2a>
		if (*s1<*s2){
    1300:	4293      	cmp	r3, r2
    1302:	d30d      	bcc.n	1320 <strcmp+0x40>
		}else if (*s1>*s2){
    1304:	d9f5      	bls.n	12f2 <strcmp+0x12>
			result=1;
    1306:	2001      	movs	r0, #1
    1308:	e003      	b.n	1312 <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    130a:	7808      	ldrb	r0, [r1, #0]
    130c:	fab0 f080 	clz	r0, r0
    1310:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    1312:	bc10      	pop	{r4}
    1314:	4770      	bx	lr
			result=-1;
    1316:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    131a:	e7fa      	b.n	1312 <strcmp+0x32>
			result=1;
    131c:	2001      	movs	r0, #1
    131e:	e7f8      	b.n	1312 <strcmp+0x32>
			result=-1;
    1320:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1324:	e7f5      	b.n	1312 <strcmp+0x32>
		if (!*s1 && *s2){
    1326:	7808      	ldrb	r0, [r1, #0]
    1328:	3000      	adds	r0, #0
    132a:	bf18      	it	ne
    132c:	2001      	movne	r0, #1
    132e:	4240      	negs	r0, r0
    1330:	e7ef      	b.n	1312 <strcmp+0x32>

00001332 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1332:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    1336:	b2db      	uxtb	r3, r3
    1338:	2b19      	cmp	r3, #25
    133a:	d906      	bls.n	134a <alpha+0x18>
    133c:	3841      	subs	r0, #65	; 0x41
    133e:	b2c0      	uxtb	r0, r0
    1340:	2819      	cmp	r0, #25
    1342:	bf8c      	ite	hi
    1344:	2000      	movhi	r0, #0
    1346:	2001      	movls	r0, #1
    1348:	4770      	bx	lr
    134a:	2001      	movs	r0, #1
}
    134c:	4770      	bx	lr

0000134e <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    134e:	3830      	subs	r0, #48	; 0x30
    1350:	b2c0      	uxtb	r0, r0
}
    1352:	2809      	cmp	r0, #9
    1354:	bf8c      	ite	hi
    1356:	2000      	movhi	r0, #0
    1358:	2001      	movls	r0, #1
    135a:	4770      	bx	lr

0000135c <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    135c:	2860      	cmp	r0, #96	; 0x60
    135e:	bf84      	itt	hi
    1360:	3820      	subhi	r0, #32
    1362:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1364:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1368:	b2db      	uxtb	r3, r3
    136a:	2b09      	cmp	r3, #9
    136c:	d906      	bls.n	137c <hexdigit+0x20>
    136e:	3841      	subs	r0, #65	; 0x41
    1370:	b2c0      	uxtb	r0, r0
    1372:	2805      	cmp	r0, #5
    1374:	bf8c      	ite	hi
    1376:	2000      	movhi	r0, #0
    1378:	2001      	movls	r0, #1
    137a:	4770      	bx	lr
    137c:	2001      	movs	r0, #1
}
    137e:	4770      	bx	lr

00001380 <atoi>:

int atoi(const char *str){
    1380:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1384:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1386:	7803      	ldrb	r3, [r0, #0]
    1388:	2b20      	cmp	r3, #32
    138a:	d103      	bne.n	1394 <atoi+0x14>
    138c:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1390:	2b20      	cmp	r3, #32
    1392:	d0fb      	beq.n	138c <atoi+0xc>
	if (*str=='-'){
    1394:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    1396:	bf06      	itte	eq
    1398:	3501      	addeq	r5, #1
		sign=-1;
    139a:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    139e:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    13a2:	782b      	ldrb	r3, [r5, #0]
    13a4:	2b24      	cmp	r3, #36	; 0x24
    13a6:	d005      	beq.n	13b4 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    13a8:	2b30      	cmp	r3, #48	; 0x30
    13aa:	d00a      	beq.n	13c2 <atoi+0x42>
	int n=0,sign=1,base=10;
    13ac:	270a      	movs	r7, #10
    13ae:	3d01      	subs	r5, #1
    13b0:	2600      	movs	r6, #0
    13b2:	e026      	b.n	1402 <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    13b4:	7868      	ldrb	r0, [r5, #1]
    13b6:	f7ff ffd1 	bl	135c <hexdigit>
    13ba:	b160      	cbz	r0, 13d6 <atoi+0x56>
		str++;
    13bc:	3501      	adds	r5, #1
		base=16;
    13be:	2710      	movs	r7, #16
		str++;
    13c0:	e7f5      	b.n	13ae <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    13c2:	786b      	ldrb	r3, [r5, #1]
    13c4:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    13c8:	2b58      	cmp	r3, #88	; 0x58
    13ca:	d001      	beq.n	13d0 <atoi+0x50>
	int n=0,sign=1,base=10;
    13cc:	270a      	movs	r7, #10
    13ce:	e7ee      	b.n	13ae <atoi+0x2e>
		base=16;
		str+=2;
    13d0:	3502      	adds	r5, #2
		base=16;
    13d2:	2710      	movs	r7, #16
    13d4:	e7eb      	b.n	13ae <atoi+0x2e>
	int n=0,sign=1,base=10;
    13d6:	270a      	movs	r7, #10
    13d8:	e7e9      	b.n	13ae <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13da:	4620      	mov	r0, r4
    13dc:	f7ff ffbe 	bl	135c <hexdigit>
    13e0:	3000      	adds	r0, #0
    13e2:	bf18      	it	ne
    13e4:	2001      	movne	r0, #1
    13e6:	b1d0      	cbz	r0, 141e <atoi+0x9e>
		if (c>='a'){c-=32;}
    13e8:	2c60      	cmp	r4, #96	; 0x60
    13ea:	bf84      	itt	hi
    13ec:	3c20      	subhi	r4, #32
    13ee:	b2e4      	uxtbhi	r4, r4
		c-='0';
    13f0:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    13f4:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    13f6:	2b09      	cmp	r3, #9
    13f8:	bf84      	itt	hi
    13fa:	3c37      	subhi	r4, #55	; 0x37
    13fc:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    13fe:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1402:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    1406:	2c00      	cmp	r4, #0
    1408:	d0e7      	beq.n	13da <atoi+0x5a>
    140a:	2f0a      	cmp	r7, #10
    140c:	d1e5      	bne.n	13da <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    140e:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    1412:	b2c0      	uxtb	r0, r0
    1414:	2809      	cmp	r0, #9
    1416:	bf8c      	ite	hi
    1418:	2000      	movhi	r0, #0
    141a:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    141c:	e7e3      	b.n	13e6 <atoi+0x66>
		str++;
	}
	return sign*n;
}
    141e:	fb08 f006 	mul.w	r0, r8, r6
    1422:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001426 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    1426:	b13a      	cbz	r2, 1438 <move+0x12>
    1428:	3901      	subs	r1, #1
    142a:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    142c:	f810 3b01 	ldrb.w	r3, [r0], #1
    1430:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1434:	4290      	cmp	r0, r2
    1436:	d1f9      	bne.n	142c <move+0x6>
    1438:	4770      	bx	lr

0000143a <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    143a:	7803      	ldrb	r3, [r0, #0]
    143c:	b13b      	cbz	r3, 144e <strlen+0x14>
    143e:	4603      	mov	r3, r0
    1440:	2000      	movs	r0, #0
    1442:	3001      	adds	r0, #1
    1444:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1448:	2a00      	cmp	r2, #0
    144a:	d1fa      	bne.n	1442 <strlen+0x8>
    144c:	4770      	bx	lr
	int ll=0;
    144e:	2000      	movs	r0, #0
	return ll;
}
    1450:	4770      	bx	lr

00001452 <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1452:	b121      	cbz	r1, 145e <fill+0xc>
    1454:	1841      	adds	r1, r0, r1
    1456:	f800 2b01 	strb.w	r2, [r0], #1
    145a:	4288      	cmp	r0, r1
    145c:	d1fb      	bne.n	1456 <fill+0x4>
    145e:	4770      	bx	lr

00001460 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1460:	3861      	subs	r0, #97	; 0x61
    1462:	b2c0      	uxtb	r0, r0
}
    1464:	2819      	cmp	r0, #25
    1466:	bf8c      	ite	hi
    1468:	2000      	movhi	r0, #0
    146a:	2001      	movls	r0, #1
    146c:	4770      	bx	lr

0000146e <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    146e:	3841      	subs	r0, #65	; 0x41
    1470:	b2c0      	uxtb	r0, r0
}
    1472:	2819      	cmp	r0, #25
    1474:	bf8c      	ite	hi
    1476:	2000      	movhi	r0, #0
    1478:	2001      	movls	r0, #1
    147a:	4770      	bx	lr

0000147c <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    147c:	7803      	ldrb	r3, [r0, #0]
    147e:	b153      	cbz	r3, 1496 <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1480:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1484:	b2d2      	uxtb	r2, r2
    1486:	2a19      	cmp	r2, #25
    1488:	bf9c      	itt	ls
    148a:	3b20      	subls	r3, #32
    148c:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    148e:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    1492:	2b00      	cmp	r3, #0
    1494:	d1f4      	bne.n	1480 <uppercase+0x4>
    1496:	4770      	bx	lr

00001498 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1498:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    149a:	1844      	adds	r4, r0, r1
    149c:	5c43      	ldrb	r3, [r0, r1]
    149e:	b153      	cbz	r3, 14b6 <scan+0x1e>
    14a0:	429a      	cmp	r2, r3
    14a2:	d00a      	beq.n	14ba <scan+0x22>
    14a4:	4608      	mov	r0, r1
    14a6:	3001      	adds	r0, #1
    14a8:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14ac:	b10b      	cbz	r3, 14b2 <scan+0x1a>
    14ae:	4293      	cmp	r3, r2
    14b0:	d1f9      	bne.n	14a6 <scan+0xe>
	return start;
}
    14b2:	bc10      	pop	{r4}
    14b4:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    14b6:	4608      	mov	r0, r1
    14b8:	e7fb      	b.n	14b2 <scan+0x1a>
    14ba:	4608      	mov	r0, r1
	return start;
    14bc:	e7f9      	b.n	14b2 <scan+0x1a>

000014be <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    14be:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    14c0:	1844      	adds	r4, r0, r1
    14c2:	5c43      	ldrb	r3, [r0, r1]
    14c4:	b153      	cbz	r3, 14dc <skip+0x1e>
    14c6:	429a      	cmp	r2, r3
    14c8:	d10a      	bne.n	14e0 <skip+0x22>
    14ca:	4608      	mov	r0, r1
    14cc:	3001      	adds	r0, #1
    14ce:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14d2:	b10b      	cbz	r3, 14d8 <skip+0x1a>
    14d4:	4293      	cmp	r3, r2
    14d6:	d0f9      	beq.n	14cc <skip+0xe>
	return start;
}
    14d8:	bc10      	pop	{r4}
    14da:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    14dc:	4608      	mov	r0, r1
    14de:	e7fb      	b.n	14d8 <skip+0x1a>
    14e0:	4608      	mov	r0, r1
	return start;
    14e2:	e7f9      	b.n	14d8 <skip+0x1a>

000014e4 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    14e4:	b538      	push	{r3, r4, r5, lr}
    14e6:	4604      	mov	r4, r0
    14e8:	460d      	mov	r5, r1
	s1+=strlen(s1);
    14ea:	f7ff ffa6 	bl	143a <strlen>
    14ee:	4420      	add	r0, r4
	while (*s2){
    14f0:	782b      	ldrb	r3, [r5, #0]
    14f2:	b133      	cbz	r3, 1502 <strcat+0x1e>
    14f4:	4629      	mov	r1, r5
		*s1++=*s2++;
    14f6:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    14fa:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    14fe:	2b00      	cmp	r3, #0
    1500:	d1f9      	bne.n	14f6 <strcat+0x12>
	}
	*s1=0;
    1502:	2300      	movs	r3, #0
    1504:	7003      	strb	r3, [r0, #0]
	return s1;
}
    1506:	bd38      	pop	{r3, r4, r5, pc}

00001508 <itoa>:

char *itoa(int n,char *buffer,int base){
    1508:	b5f0      	push	{r4, r5, r6, r7, lr}
    150a:	b085      	sub	sp, #20
    150c:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    150e:	2a0a      	cmp	r2, #10
    1510:	d033      	beq.n	157a <itoa+0x72>
	int i=14,sign=0;
    1512:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    1514:	2300      	movs	r3, #0
    1516:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    151a:	2320      	movs	r3, #32
    151c:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    1520:	b390      	cbz	r0, 1588 <itoa+0x80>
    1522:	f10d 060d 	add.w	r6, sp, #13
    1526:	250e      	movs	r5, #14
		d=n%base+'0';
    1528:	fb90 f3f2 	sdiv	r3, r0, r2
    152c:	fb02 0313 	mls	r3, r2, r3, r0
    1530:	b2db      	uxtb	r3, r3
    1532:	f103 0130 	add.w	r1, r3, #48	; 0x30
    1536:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1538:	2939      	cmp	r1, #57	; 0x39
    153a:	bf84      	itt	hi
    153c:	3337      	addhi	r3, #55	; 0x37
    153e:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1540:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1544:	3d01      	subs	r5, #1
    1546:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    154a:	2800      	cmp	r0, #0
    154c:	d1ec      	bne.n	1528 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    154e:	2d0e      	cmp	r5, #14
    1550:	d01a      	beq.n	1588 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    1552:	2a0a      	cmp	r2, #10
    1554:	d01d      	beq.n	1592 <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    1556:	2a10      	cmp	r2, #16
    1558:	d105      	bne.n	1566 <itoa+0x5e>
    155a:	3d01      	subs	r5, #1
    155c:	ab04      	add	r3, sp, #16
    155e:	442b      	add	r3, r5
    1560:	2224      	movs	r2, #36	; 0x24
    1562:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    1566:	f1c5 0210 	rsb	r2, r5, #16
    156a:	4621      	mov	r1, r4
    156c:	eb0d 0005 	add.w	r0, sp, r5
    1570:	f7ff ff59 	bl	1426 <move>
	return buffer;
    1574:	4620      	mov	r0, r4
    1576:	b005      	add	sp, #20
    1578:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    157a:	2800      	cmp	r0, #0
    157c:	db01      	blt.n	1582 <itoa+0x7a>
	int i=14,sign=0;
    157e:	2700      	movs	r7, #0
    1580:	e7c8      	b.n	1514 <itoa+0xc>
		n=-n;
    1582:	4240      	negs	r0, r0
		sign=1;
    1584:	2701      	movs	r7, #1
    1586:	e7c5      	b.n	1514 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1588:	2330      	movs	r3, #48	; 0x30
    158a:	f88d 300d 	strb.w	r3, [sp, #13]
    158e:	250d      	movs	r5, #13
    1590:	e7df      	b.n	1552 <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    1592:	2f00      	cmp	r7, #0
    1594:	d0e7      	beq.n	1566 <itoa+0x5e>
    1596:	3d01      	subs	r5, #1
    1598:	ab04      	add	r3, sp, #16
    159a:	442b      	add	r3, r5
    159c:	222d      	movs	r2, #45	; 0x2d
    159e:	f803 2c10 	strb.w	r2, [r3, #-16]
    15a2:	e7e0      	b.n	1566 <itoa+0x5e>

000015a4 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    15a4:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    15a6:	08cb      	lsrs	r3, r1, #3
    15a8:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    15ac:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    15ae:	f001 011c 	and.w	r1, r1, #28
    15b2:	250f      	movs	r5, #15
    15b4:	408d      	lsls	r5, r1
    15b6:	ea24 0405 	bic.w	r4, r4, r5
    15ba:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    15be:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    15c2:	fa02 f101 	lsl.w	r1, r2, r1
    15c6:	4321      	orrs	r1, r4
    15c8:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    15cc:	bc30      	pop	{r4, r5}
    15ce:	4770      	bx	lr

000015d0 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    15d0:	6880      	ldr	r0, [r0, #8]
    15d2:	2301      	movs	r3, #1
    15d4:	fa03 f101 	lsl.w	r1, r3, r1
}
    15d8:	4008      	ands	r0, r1
    15da:	4770      	bx	lr

000015dc <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15dc:	b93a      	cbnz	r2, 15ee <write_pin+0x12>
    15de:	68c3      	ldr	r3, [r0, #12]
    15e0:	2201      	movs	r2, #1
    15e2:	fa02 f101 	lsl.w	r1, r2, r1
    15e6:	ea23 0101 	bic.w	r1, r3, r1
    15ea:	60c1      	str	r1, [r0, #12]
    15ec:	4770      	bx	lr
    15ee:	68c2      	ldr	r2, [r0, #12]
    15f0:	2301      	movs	r3, #1
    15f2:	fa03 f101 	lsl.w	r1, r3, r1
    15f6:	4311      	orrs	r1, r2
    15f8:	60c1      	str	r1, [r0, #12]
    15fa:	4770      	bx	lr

000015fc <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    15fc:	68c2      	ldr	r2, [r0, #12]
    15fe:	2301      	movs	r3, #1
    1600:	fa03 f101 	lsl.w	r1, r3, r1
    1604:	4051      	eors	r1, r2
    1606:	60c1      	str	r1, [r0, #12]
    1608:	4770      	bx	lr
	...

0000160c <set_palette>:
static uint8_t palette[4]={0,15,3,5};

const uint8_t DEFAULT_PALETTE[4]={0,15,3,5};

void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    160c:	4b04      	ldr	r3, [pc, #16]	; (1620 <set_palette+0x14>)
    160e:	7802      	ldrb	r2, [r0, #0]
    1610:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    1612:	7842      	ldrb	r2, [r0, #1]
    1614:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    1616:	7882      	ldrb	r2, [r0, #2]
    1618:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    161a:	78c2      	ldrb	r2, [r0, #3]
    161c:	70da      	strb	r2, [r3, #3]
    161e:	4770      	bx	lr
    1620:	200001c4 	.word	0x200001c4

00001624 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    1624:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1626:	4604      	mov	r4, r0
    1628:	460e      	mov	r6, r1
    162a:	4615      	mov	r5, r2
    162c:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    162e:	f001 ff51 	bl	34d4 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1632:	2c00      	cmp	r4, #0
    1634:	db38      	blt.n	16a8 <gfx_blit+0x84>
    1636:	8983      	ldrh	r3, [r0, #12]
    1638:	429c      	cmp	r4, r3
    163a:	da37      	bge.n	16ac <gfx_blit+0x88>
    163c:	2e00      	cmp	r6, #0
    163e:	db37      	blt.n	16b0 <gfx_blit+0x8c>
    1640:	89c3      	ldrh	r3, [r0, #14]
    1642:	429e      	cmp	r6, r3
    1644:	da36      	bge.n	16b4 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    1646:	7a03      	ldrb	r3, [r0, #8]
    1648:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    164c:	1052      	asrs	r2, r2, #1
    164e:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    1652:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    1656:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    165a:	bf06      	itte	eq
    165c:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    165e:	220f      	moveq	r2, #15
    mask=0xf0;
    1660:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    1662:	4b15      	ldr	r3, [pc, #84]	; (16b8 <gfx_blit+0x94>)
    1664:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    1666:	2f04      	cmp	r7, #4
    1668:	d805      	bhi.n	1676 <gfx_blit+0x52>
    166a:	e8df f007 	tbb	[pc, r7]
    166e:	1003      	.short	0x1003
    1670:	1412      	.short	0x1412
    1672:	18          	.byte	0x18
    1673:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1674:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    1676:	4910      	ldr	r1, [pc, #64]	; (16b8 <gfx_blit+0x94>)
    1678:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    167a:	ea23 0302 	bic.w	r3, r3, r2
    167e:	fab0 f080 	clz	r0, r0
    1682:	0940      	lsrs	r0, r0, #5
    1684:	4283      	cmp	r3, r0
    1686:	bf14      	ite	ne
    1688:	2000      	movne	r0, #0
    168a:	2001      	moveq	r0, #1
    168c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    168e:	4003      	ands	r3, r0
        break;
    1690:	e7f1      	b.n	1676 <gfx_blit+0x52>
        byte^=color;
    1692:	4043      	eors	r3, r0
        break;
    1694:	e7ef      	b.n	1676 <gfx_blit+0x52>
        byte^=~mask;
    1696:	43d4      	mvns	r4, r2
    1698:	405c      	eors	r4, r3
    169a:	b2e3      	uxtb	r3, r4
        break;
    169c:	e7eb      	b.n	1676 <gfx_blit+0x52>
        byte &=mask;
    169e:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    16a2:	ea40 0304 	orr.w	r3, r0, r4
        break;
    16a6:	e7e6      	b.n	1676 <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    16a8:	2000      	movs	r0, #0
    16aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16ac:	2000      	movs	r0, #0
    16ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16b0:	2000      	movs	r0, #0
    16b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16b4:	2000      	movs	r0, #0
}
    16b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16b8:	20002730 	.word	0x20002730

000016bc <gfx_cls>:
        byte|=color<<4;
    }
    video_buffer[idx]=byte;
}
*/
void gfx_cls(){
    16bc:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    16be:	f001 ff09 	bl	34d4 <get_video_params>
    16c2:	4b06      	ldr	r3, [pc, #24]	; (16dc <gfx_cls+0x20>)
    16c4:	4906      	ldr	r1, [pc, #24]	; (16e0 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    16c6:	2200      	movs	r2, #0
    16c8:	f803 2f01 	strb.w	r2, [r3, #1]!
    16cc:	428b      	cmp	r3, r1
    16ce:	d1fb      	bne.n	16c8 <gfx_cls+0xc>
    set_cursor(0,0);
    16d0:	2100      	movs	r1, #0
    16d2:	4608      	mov	r0, r1
    16d4:	f001 fbb2 	bl	2e3c <set_cursor>
    16d8:	bd08      	pop	{r3, pc}
    16da:	bf00      	nop
    16dc:	2000272f 	.word	0x2000272f
    16e0:	20004e8f 	.word	0x20004e8f

000016e4 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    16e4:	b570      	push	{r4, r5, r6, lr}
    16e6:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    16e8:	f001 fef4 	bl	34d4 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    16ec:	7a06      	ldrb	r6, [r0, #8]
    16ee:	4b0f      	ldr	r3, [pc, #60]	; (172c <gfx_scroll_up+0x48>)
    16f0:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    16f4:	89c2      	ldrh	r2, [r0, #14]
    16f6:	1b12      	subs	r2, r2, r4
    16f8:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    16fc:	b1a6      	cbz	r6, 1728 <gfx_scroll_up+0x44>
    16fe:	4a0b      	ldr	r2, [pc, #44]	; (172c <gfx_scroll_up+0x48>)
    1700:	199d      	adds	r5, r3, r6
    1702:	f813 1b01 	ldrb.w	r1, [r3], #1
    1706:	f802 1b01 	strb.w	r1, [r2], #1
    170a:	42ab      	cmp	r3, r5
    170c:	d1f9      	bne.n	1702 <gfx_scroll_up+0x1e>
    170e:	4b07      	ldr	r3, [pc, #28]	; (172c <gfx_scroll_up+0x48>)
    1710:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    1712:	7a02      	ldrb	r2, [r0, #8]
    1714:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1718:	b12a      	cbz	r2, 1726 <gfx_scroll_up+0x42>
    171a:	441a      	add	r2, r3
    171c:	2100      	movs	r1, #0
    171e:	f803 1b01 	strb.w	r1, [r3], #1
    1722:	4293      	cmp	r3, r2
    1724:	d1fb      	bne.n	171e <gfx_scroll_up+0x3a>
    1726:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1728:	4b00      	ldr	r3, [pc, #0]	; (172c <gfx_scroll_up+0x48>)
    172a:	e7f2      	b.n	1712 <gfx_scroll_up+0x2e>
    172c:	20002730 	.word	0x20002730

00001730 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1730:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1732:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1734:	f001 fece 	bl	34d4 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1738:	89c3      	ldrh	r3, [r0, #14]
    173a:	7a04      	ldrb	r4, [r0, #8]
    173c:	1b5f      	subs	r7, r3, r5
    173e:	fb04 f707 	mul.w	r7, r4, r7
    1742:	490c      	ldr	r1, [pc, #48]	; (1774 <gfx_scroll_down+0x44>)
    1744:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    1746:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    174a:	b147      	cbz	r7, 175e <gfx_scroll_down+0x2e>
    174c:	4619      	mov	r1, r3
    174e:	4e09      	ldr	r6, [pc, #36]	; (1774 <gfx_scroll_down+0x44>)
    1750:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1754:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1758:	42b2      	cmp	r2, r6
    175a:	d1f9      	bne.n	1750 <gfx_scroll_down+0x20>
    175c:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    175e:	7a02      	ldrb	r2, [r0, #8]
    1760:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    1764:	b12a      	cbz	r2, 1772 <gfx_scroll_down+0x42>
    1766:	1a9a      	subs	r2, r3, r2
    1768:	2100      	movs	r1, #0
    176a:	f803 1d01 	strb.w	r1, [r3, #-1]!
    176e:	4293      	cmp	r3, r2
    1770:	d1fb      	bne.n	176a <gfx_scroll_down+0x3a>
    1772:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1774:	20002730 	.word	0x20002730

00001778 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    1778:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    177c:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    177e:	f001 fea9 	bl	34d4 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    1782:	89c3      	ldrh	r3, [r0, #14]
    1784:	b30b      	cbz	r3, 17ca <gfx_scroll_left+0x52>
    1786:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    178a:	f8df 8044 	ldr.w	r8, [pc, #68]	; 17d0 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    178e:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    1790:	7a03      	ldrb	r3, [r0, #8]
    1792:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    1796:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    1798:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    179a:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    179e:	d009      	beq.n	17b4 <gfx_scroll_left+0x3c>
    17a0:	1e59      	subs	r1, r3, #1
    17a2:	eb02 050e 	add.w	r5, r2, lr
    17a6:	f812 4b01 	ldrb.w	r4, [r2], #1
    17aa:	f801 4f01 	strb.w	r4, [r1, #1]!
    17ae:	4295      	cmp	r5, r2
    17b0:	d1f9      	bne.n	17a6 <gfx_scroll_left+0x2e>
    17b2:	4473      	add	r3, lr
        while (size--) *dest++=0;
    17b4:	b126      	cbz	r6, 17c0 <gfx_scroll_left+0x48>
    17b6:	199a      	adds	r2, r3, r6
    17b8:	f803 7b01 	strb.w	r7, [r3], #1
    17bc:	4293      	cmp	r3, r2
    17be:	d1fb      	bne.n	17b8 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    17c0:	f10c 0c01 	add.w	ip, ip, #1
    17c4:	89c3      	ldrh	r3, [r0, #14]
    17c6:	4563      	cmp	r3, ip
    17c8:	dce2      	bgt.n	1790 <gfx_scroll_left+0x18>
    17ca:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    17ce:	bf00      	nop
    17d0:	20002730 	.word	0x20002730

000017d4 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    17d4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    17d8:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    17da:	f001 fe7b 	bl	34d4 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    17de:	89c3      	ldrh	r3, [r0, #14]
    17e0:	b33b      	cbz	r3, 1832 <gfx_scroll_right+0x5e>
    17e2:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    17e6:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1838 <gfx_scroll_right+0x64>
        src=dest-n;
    17ea:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    17ee:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    17f0:	7a03      	ldrb	r3, [r0, #8]
    17f2:	fb0e 3303 	mla	r3, lr, r3, r3
    17f6:	4443      	add	r3, r8
        src=dest-n;
    17f8:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    17fc:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    17fe:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    1802:	d00a      	beq.n	181a <gfx_scroll_right+0x46>
    1804:	4619      	mov	r1, r3
    1806:	eba2 0609 	sub.w	r6, r2, r9
    180a:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    180e:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1812:	42b2      	cmp	r2, r6
    1814:	d1f9      	bne.n	180a <gfx_scroll_right+0x36>
    1816:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    181a:	b12d      	cbz	r5, 1828 <gfx_scroll_right+0x54>
    181c:	eb03 020c 	add.w	r2, r3, ip
    1820:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1824:	429a      	cmp	r2, r3
    1826:	d1fb      	bne.n	1820 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1828:	f10e 0e01 	add.w	lr, lr, #1
    182c:	89c3      	ldrh	r3, [r0, #14]
    182e:	4573      	cmp	r3, lr
    1830:	dcde      	bgt.n	17f0 <gfx_scroll_right+0x1c>
    1832:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1836:	bf00      	nop
    1838:	20002730 	.word	0x20002730

0000183c <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    183c:	b538      	push	{r3, r4, r5, lr}
    183e:	4604      	mov	r4, r0
    1840:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1842:	f001 fe47 	bl	34d4 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1846:	2c00      	cmp	r4, #0
    1848:	db18      	blt.n	187c <gfx_get_pixel+0x40>
    184a:	8983      	ldrh	r3, [r0, #12]
    184c:	429c      	cmp	r4, r3
    184e:	db01      	blt.n	1854 <gfx_get_pixel+0x18>
    1850:	20ff      	movs	r0, #255	; 0xff
    1852:	bd38      	pop	{r3, r4, r5, pc}
    1854:	2d00      	cmp	r5, #0
    1856:	db13      	blt.n	1880 <gfx_get_pixel+0x44>
    1858:	89c3      	ldrh	r3, [r0, #14]
    185a:	429d      	cmp	r5, r3
    185c:	db01      	blt.n	1862 <gfx_get_pixel+0x26>
    185e:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    1860:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    1862:	7a03      	ldrb	r3, [r0, #8]
    1864:	1062      	asrs	r2, r4, #1
    1866:	4907      	ldr	r1, [pc, #28]	; (1884 <gfx_get_pixel+0x48>)
    1868:	fb05 1503 	mla	r5, r5, r3, r1
    186c:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    186e:	f014 0f01 	tst.w	r4, #1
    1872:	bf08      	it	eq
    1874:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    1876:	f000 000f 	and.w	r0, r0, #15
    187a:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    187c:	20ff      	movs	r0, #255	; 0xff
    187e:	bd38      	pop	{r3, r4, r5, pc}
    1880:	20ff      	movs	r0, #255	; 0xff
    1882:	bd38      	pop	{r3, r4, r5, pc}
    1884:	20002730 	.word	0x20002730

00001888 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    1888:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    188c:	b085      	sub	sp, #20
    188e:	9001      	str	r0, [sp, #4]
    1890:	460e      	mov	r6, r1
    1892:	9100      	str	r1, [sp, #0]
    1894:	9203      	str	r2, [sp, #12]
    1896:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    
    shift=bit_shift[sprite_bpp];
    1898:	4a26      	ldr	r2, [pc, #152]	; (1934 <gfx_sprite+0xac>)
    189a:	7911      	ldrb	r1, [r2, #4]
    189c:	4a26      	ldr	r2, [pc, #152]	; (1938 <gfx_sprite+0xb0>)
    189e:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    18a2:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    18a4:	440a      	add	r2, r1
    18a6:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    18a8:	4433      	add	r3, r6
    18aa:	9302      	str	r3, [sp, #8]
    18ac:	429e      	cmp	r6, r3
    int collision=0;
    18ae:	bfa8      	it	ge
    18b0:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    18b2:	da3a      	bge.n	192a <gfx_sprite+0xa2>
    18b4:	f100 0901 	add.w	r9, r0, #1
    18b8:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    18ba:	f8df 8078 	ldr.w	r8, [pc, #120]	; 1934 <gfx_sprite+0xac>
    18be:	e02b      	b.n	1918 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    18c0:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    18c4:	f898 3004 	ldrb.w	r3, [r8, #4]
    18c8:	4a1b      	ldr	r2, [pc, #108]	; (1938 <gfx_sprite+0xb0>)
    18ca:	4413      	add	r3, r2
    18cc:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    18ce:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    18d2:	3601      	adds	r6, #1
    18d4:	4556      	cmp	r6, sl
    18d6:	d019      	beq.n	190c <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    18d8:	f898 3004 	ldrb.w	r3, [r8, #4]
    18dc:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    18de:	bf99      	ittee	ls
    18e0:	fa45 f30b 	asrls.w	r3, r5, fp
    18e4:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    18e8:	fa45 f20b 	asrhi.w	r2, r5, fp
    18ec:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    18ee:	2302      	movs	r3, #2
    18f0:	9900      	ldr	r1, [sp, #0]
    18f2:	4630      	mov	r0, r6
    18f4:	f7ff fe96 	bl	1624 <gfx_blit>
    18f8:	4307      	orrs	r7, r0
            ppb--;
    18fa:	3c01      	subs	r4, #1
            if (!ppb){
    18fc:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1900:	d0de      	beq.n	18c0 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    1902:	f1cb 0308 	rsb	r3, fp, #8
    1906:	409d      	lsls	r5, r3
    1908:	b2ed      	uxtb	r5, r5
    190a:	e7e2      	b.n	18d2 <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    190c:	9b00      	ldr	r3, [sp, #0]
    190e:	3301      	adds	r3, #1
    1910:	9300      	str	r3, [sp, #0]
    1912:	9a02      	ldr	r2, [sp, #8]
    1914:	4293      	cmp	r3, r2
    1916:	d008      	beq.n	192a <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    1918:	9b03      	ldr	r3, [sp, #12]
    191a:	4619      	mov	r1, r3
    191c:	9a01      	ldr	r2, [sp, #4]
    191e:	eb01 0a02 	add.w	sl, r1, r2
    1922:	4552      	cmp	r2, sl
    1924:	daf2      	bge.n	190c <gfx_sprite+0x84>
    1926:	9e01      	ldr	r6, [sp, #4]
    1928:	e7d6      	b.n	18d8 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    return collision;
}
    192a:	4638      	mov	r0, r7
    192c:	b005      	add	sp, #20
    192e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1932:	bf00      	nop
    1934:	200001c4 	.word	0x200001c4
    1938:	00003d30 	.word	0x00003d30

0000193c <draw_balls>:

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

static const uint8_t pal2[4]={0,9,2,10};
static void draw_balls(){
    193c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1940:	b082      	sub	sp, #8
	int i;
	frame_sync();
    1942:	f001 fd8d 	bl	3460 <frame_sync>
    1946:	4c14      	ldr	r4, [pc, #80]	; (1998 <draw_balls+0x5c>)
    1948:	2501      	movs	r5, #1
	for (i=0;i<BALL_COUNT;i++){
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    194a:	4f14      	ldr	r7, [pc, #80]	; (199c <draw_balls+0x60>)
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    194c:	2608      	movs	r6, #8
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    194e:	f8df 8050 	ldr.w	r8, [pc, #80]	; 19a0 <draw_balls+0x64>
    1952:	e00c      	b.n	196e <draw_balls+0x32>
    1954:	4640      	mov	r0, r8
    1956:	f7ff fe59 	bl	160c <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    195a:	6923      	ldr	r3, [r4, #16]
    195c:	9300      	str	r3, [sp, #0]
    195e:	4633      	mov	r3, r6
    1960:	4632      	mov	r2, r6
    1962:	6861      	ldr	r1, [r4, #4]
    1964:	6820      	ldr	r0, [r4, #0]
    1966:	f7ff ff8f 	bl	1888 <gfx_sprite>
    196a:	3501      	adds	r5, #1
    196c:	3414      	adds	r4, #20
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    196e:	2d01      	cmp	r5, #1
    1970:	d0f0      	beq.n	1954 <draw_balls+0x18>
    1972:	4638      	mov	r0, r7
    1974:	f7ff fe4a 	bl	160c <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1978:	6923      	ldr	r3, [r4, #16]
    197a:	9300      	str	r3, [sp, #0]
    197c:	4633      	mov	r3, r6
    197e:	4632      	mov	r2, r6
    1980:	6861      	ldr	r1, [r4, #4]
    1982:	6820      	ldr	r0, [r4, #0]
    1984:	f7ff ff80 	bl	1888 <gfx_sprite>
	for (i=0;i<BALL_COUNT;i++){
    1988:	2d01      	cmp	r5, #1
    198a:	ddee      	ble.n	196a <draw_balls+0x2e>
	}
	wait_sync_end();
    198c:	f001 fd70 	bl	3470 <wait_sync_end>
}
    1990:	b002      	add	sp, #8
    1992:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    1996:	bf00      	nop
    1998:	20002708 	.word	0x20002708
    199c:	00003d4c 	.word	0x00003d4c
    19a0:	00003d38 	.word	0x00003d38

000019a4 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    19a4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    19a8:	f001 fd94 	bl	34d4 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19ac:	89c3      	ldrh	r3, [r0, #14]
    19ae:	089e      	lsrs	r6, r3, #2
    19b0:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    19b4:	429e      	cmp	r6, r3
    19b6:	da1b      	bge.n	19f0 <color_bars+0x4c>
    19b8:	4680      	mov	r8, r0
static void color_bars(){
    19ba:	f04f 0910 	mov.w	r9, #16
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
				c--;
			}
			gfx_blit(x,y,c,BIT_SET);
    19be:	2704      	movs	r7, #4
static void color_bars(){
    19c0:	464d      	mov	r5, r9
    19c2:	2400      	movs	r4, #0
			if (x%8==0){
    19c4:	f014 0f07 	tst.w	r4, #7
				c--;
    19c8:	bf04      	itt	eq
    19ca:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    19ce:	b2ed      	uxtbeq	r5, r5
			gfx_blit(x,y,c,BIT_SET);
    19d0:	463b      	mov	r3, r7
    19d2:	462a      	mov	r2, r5
    19d4:	4631      	mov	r1, r6
    19d6:	4620      	mov	r0, r4
    19d8:	f7ff fe24 	bl	1624 <gfx_blit>
		for (x=0;x<128;x++){
    19dc:	3401      	adds	r4, #1
    19de:	2c80      	cmp	r4, #128	; 0x80
    19e0:	d1f0      	bne.n	19c4 <color_bars+0x20>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19e2:	3601      	adds	r6, #1
    19e4:	f8b8 300e 	ldrh.w	r3, [r8, #14]
    19e8:	42b3      	cmp	r3, r6
    19ea:	dce9      	bgt.n	19c0 <color_bars+0x1c>
    19ec:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    19f0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

000019f4 <vertical_bars>:
	}
		

}

static void vertical_bars(){
    19f4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    19f8:	f001 fd6c 	bl	34d4 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19fc:	89c3      	ldrh	r3, [r0, #14]
    19fe:	2b10      	cmp	r3, #16
    1a00:	dd16      	ble.n	1a30 <vertical_bars+0x3c>
    1a02:	4605      	mov	r5, r0
    1a04:	2410      	movs	r4, #16
		gfx_blit(0,y,15,BIT_SET);
    1a06:	2704      	movs	r7, #4
    1a08:	260f      	movs	r6, #15
    1a0a:	f04f 0800 	mov.w	r8, #0
    1a0e:	463b      	mov	r3, r7
    1a10:	4632      	mov	r2, r6
    1a12:	4621      	mov	r1, r4
    1a14:	4640      	mov	r0, r8
    1a16:	f7ff fe05 	bl	1624 <gfx_blit>
		gfx_blit(vparams->hres-1,y,15,BIT_SET);
    1a1a:	89a8      	ldrh	r0, [r5, #12]
    1a1c:	463b      	mov	r3, r7
    1a1e:	4632      	mov	r2, r6
    1a20:	4621      	mov	r1, r4
    1a22:	3801      	subs	r0, #1
    1a24:	f7ff fdfe 	bl	1624 <gfx_blit>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1a28:	3401      	adds	r4, #1
    1a2a:	89eb      	ldrh	r3, [r5, #14]
    1a2c:	42a3      	cmp	r3, r4
    1a2e:	dcee      	bgt.n	1a0e <vertical_bars+0x1a>
    1a30:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001a34 <horiz_bars>:
	}
}

static void horiz_bars(){
    1a34:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1a38:	f001 fd4c 	bl	34d4 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1a3c:	8983      	ldrh	r3, [r0, #12]
    1a3e:	b1ab      	cbz	r3, 1a6c <horiz_bars+0x38>
    1a40:	4605      	mov	r5, r0
    1a42:	2400      	movs	r4, #0
		gfx_blit(x,0,15,BIT_SET);
    1a44:	2704      	movs	r7, #4
    1a46:	260f      	movs	r6, #15
    1a48:	46a0      	mov	r8, r4
    1a4a:	463b      	mov	r3, r7
    1a4c:	4632      	mov	r2, r6
    1a4e:	4641      	mov	r1, r8
    1a50:	4620      	mov	r0, r4
    1a52:	f7ff fde7 	bl	1624 <gfx_blit>
		gfx_blit(x,vparams->vres-1,15,BIT_SET);
    1a56:	89e9      	ldrh	r1, [r5, #14]
    1a58:	463b      	mov	r3, r7
    1a5a:	4632      	mov	r2, r6
    1a5c:	3901      	subs	r1, #1
    1a5e:	4620      	mov	r0, r4
    1a60:	f7ff fde0 	bl	1624 <gfx_blit>
	for (x=0;x<vparams->hres;x++){
    1a64:	3401      	adds	r4, #1
    1a66:	89ab      	ldrh	r3, [r5, #12]
    1a68:	42a3      	cmp	r3, r4
    1a6a:	dcee      	bgt.n	1a4a <horiz_bars+0x16>
    1a6c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001a70 <init_balls>:
static void init_balls(){
    1a70:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a74:	f001 fd2e 	bl	34d4 <get_video_params>
    1a78:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a7a:	4b19      	ldr	r3, [pc, #100]	; (1ae0 <init_balls+0x70>)
    1a7c:	6818      	ldr	r0, [r3, #0]
    1a7e:	f7fe fca3 	bl	3c8 <srand>
    1a82:	4c18      	ldr	r4, [pc, #96]	; (1ae4 <init_balls+0x74>)
    1a84:	f104 0628 	add.w	r6, r4, #40	; 0x28
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1a88:	4f17      	ldr	r7, [pc, #92]	; (1ae8 <init_balls+0x78>)
    1a8a:	f107 0914 	add.w	r9, r7, #20
			sprite_bpp=TWO_BPP;
    1a8e:	f8df 805c 	ldr.w	r8, [pc, #92]	; 1aec <init_balls+0x7c>
    1a92:	e004      	b.n	1a9e <init_balls+0x2e>
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1a94:	f8c4 9010 	str.w	r9, [r4, #16]
    1a98:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1a9a:	42b4      	cmp	r4, r6
    1a9c:	d01d      	beq.n	1ada <init_balls+0x6a>
		balls[i].x=rand()%vparams->hres;
    1a9e:	f7fe fc99 	bl	3d4 <rand>
    1aa2:	89ab      	ldrh	r3, [r5, #12]
    1aa4:	fb90 f2f3 	sdiv	r2, r0, r3
    1aa8:	fb02 0013 	mls	r0, r2, r3, r0
    1aac:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1aae:	f7fe fc91 	bl	3d4 <rand>
    1ab2:	89eb      	ldrh	r3, [r5, #14]
    1ab4:	3b10      	subs	r3, #16
    1ab6:	fb90 f2f3 	sdiv	r2, r0, r3
    1aba:	fb02 0013 	mls	r0, r2, r3, r0
    1abe:	3010      	adds	r0, #16
    1ac0:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1ac2:	2301      	movs	r3, #1
    1ac4:	60a3      	str	r3, [r4, #8]
		balls[i].dy=1;
    1ac6:	60e3      	str	r3, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1ac8:	782b      	ldrb	r3, [r5, #0]
    1aca:	2b00      	cmp	r3, #0
    1acc:	d1e2      	bne.n	1a94 <init_balls+0x24>
			balls[i].ball_sprite=ball8x8_2bpp;//ball8x8;
    1ace:	1d3b      	adds	r3, r7, #4
    1ad0:	6123      	str	r3, [r4, #16]
			sprite_bpp=TWO_BPP;
    1ad2:	2301      	movs	r3, #1
    1ad4:	f888 3000 	strb.w	r3, [r8]
    1ad8:	e7de      	b.n	1a98 <init_balls+0x28>
}
    1ada:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1ade:	bf00      	nop
    1ae0:	20004e94 	.word	0x20004e94
    1ae4:	20002708 	.word	0x20002708
    1ae8:	00003d4c 	.word	0x00003d4c
    1aec:	200001c8 	.word	0x200001c8

00001af0 <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    1af0:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1af2:	f7ff fde3 	bl	16bc <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1af6:	4806      	ldr	r0, [pc, #24]	; (1b10 <display_menu+0x20>)
    1af8:	f001 f9e9 	bl	2ece <println>
    1afc:	4805      	ldr	r0, [pc, #20]	; (1b14 <display_menu+0x24>)
    1afe:	f001 f9e6 	bl	2ece <println>
    1b02:	4805      	ldr	r0, [pc, #20]	; (1b18 <display_menu+0x28>)
    1b04:	f001 f9e3 	bl	2ece <println>
    1b08:	4804      	ldr	r0, [pc, #16]	; (1b1c <display_menu+0x2c>)
    1b0a:	f001 f9e0 	bl	2ece <println>
    1b0e:	bd08      	pop	{r3, pc}
    1b10:	00003e6c 	.word	0x00003e6c
    1b14:	00003e78 	.word	0x00003e78
    1b18:	00003e88 	.word	0x00003e88
    1b1c:	00003e94 	.word	0x00003e94

00001b20 <isqrt>:
	if (n<2) return n;
    1b20:	2801      	cmp	r0, #1
    1b22:	dd0c      	ble.n	1b3e <isqrt+0x1e>
int isqrt(int n){
    1b24:	b510      	push	{r4, lr}
    1b26:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1b28:	1080      	asrs	r0, r0, #2
    1b2a:	f7ff fff9 	bl	1b20 <isqrt>
    1b2e:	0040      	lsls	r0, r0, #1
	large = small + 1;
    1b30:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    1b32:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    1b36:	4294      	cmp	r4, r2
    1b38:	bfa8      	it	ge
    1b3a:	4618      	movge	r0, r3
}
    1b3c:	bd10      	pop	{r4, pc}
    1b3e:	4770      	bx	lr

00001b40 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    1b40:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    1b42:	6803      	ldr	r3, [r0, #0]
    1b44:	680a      	ldr	r2, [r1, #0]
    1b46:	6844      	ldr	r4, [r0, #4]
    1b48:	6848      	ldr	r0, [r1, #4]
    1b4a:	fb00 f004 	mul.w	r0, r0, r4
    1b4e:	fb02 0003 	mla	r0, r2, r3, r0
    1b52:	2800      	cmp	r0, #0
    1b54:	bfb8      	it	lt
    1b56:	4240      	neglt	r0, r0
    1b58:	f7ff ffe2 	bl	1b20 <isqrt>
}
    1b5c:	bd10      	pop	{r4, pc}

00001b5e <main>:
			break;	
		}
	}//while
}

void main(void){
    1b5e:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1b62:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1b64:	4ac2      	ldr	r2, [pc, #776]	; (1e70 <main+0x312>)
    1b66:	6813      	ldr	r3, [r2, #0]
    1b68:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1b6c:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1b6e:	4613      	mov	r3, r2
    1b70:	681a      	ldr	r2, [r3, #0]
    1b72:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1b76:	d0fb      	beq.n	1b70 <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1b78:	4bbd      	ldr	r3, [pc, #756]	; (1e70 <main+0x312>)
    1b7a:	685a      	ldr	r2, [r3, #4]
    1b7c:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1b80:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1b82:	681a      	ldr	r2, [r3, #0]
    1b84:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1b88:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1b8a:	681a      	ldr	r2, [r3, #0]
    1b8c:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1b90:	d0fb      	beq.n	1b8a <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1b92:	4ab8      	ldr	r2, [pc, #736]	; (1e74 <main+0x316>)
    1b94:	6813      	ldr	r3, [r2, #0]
    1b96:	f043 0312 	orr.w	r3, r3, #18
    1b9a:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1b9c:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1ba0:	6853      	ldr	r3, [r2, #4]
    1ba2:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1ba6:	f043 0302 	orr.w	r3, r3, #2
    1baa:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1bac:	f640 031d 	movw	r3, #2077	; 0x81d
    1bb0:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1bb2:	4cb1      	ldr	r4, [pc, #708]	; (1e78 <main+0x31a>)
    1bb4:	2206      	movs	r2, #6
    1bb6:	210d      	movs	r1, #13
    1bb8:	4620      	mov	r0, r4
    1bba:	f7ff fcf3 	bl	15a4 <config_pin>
	_led_off();
    1bbe:	68e3      	ldr	r3, [r4, #12]
    1bc0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1bc4:	60e3      	str	r3, [r4, #12]
	tvout_init();
    1bc6:	f001 fa37 	bl	3038 <tvout_init>
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1bca:	2400      	movs	r4, #0
    1bcc:	9401      	str	r4, [sp, #4]
    1bce:	2301      	movs	r3, #1
    1bd0:	9300      	str	r3, [sp, #0]
    1bd2:	2303      	movs	r3, #3
    1bd4:	4622      	mov	r2, r4
    1bd6:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1bda:	4620      	mov	r0, r4
    1bdc:	f001 fd32 	bl	3644 <usart_open_channel>
	gamepad_init();
    1be0:	f7ff faa8 	bl	1134 <gamepad_init>
	sound_init();
    1be4:	f000 fe88 	bl	28f8 <sound_init>
	gfx_cls();
    1be8:	f7ff fd68 	bl	16bc <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1bec:	f001 fc72 	bl	34d4 <get_video_params>
	display_menu();
    1bf0:	f7ff ff7e 	bl	1af0 <display_menu>
	int i=0;
    1bf4:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1bf6:	4ba1      	ldr	r3, [pc, #644]	; (1e7c <main+0x31e>)
    1bf8:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1bfc:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1c00:	9304      	str	r3, [sp, #16]
    1c02:	e1d0      	b.n	1fa6 <main+0x448>
			if (i<(MENU_ITEMS-1)) i++;
    1c04:	f1ba 0f02 	cmp.w	sl, #2
    1c08:	f300 81cd 	bgt.w	1fa6 <main+0x448>
    1c0c:	f10a 0a01 	add.w	sl, sl, #1
    1c10:	e1c9      	b.n	1fa6 <main+0x448>
			switch(i){
    1c12:	f1ba 0f03 	cmp.w	sl, #3
    1c16:	f200 81c4 	bhi.w	1fa2 <main+0x444>
    1c1a:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1c1e:	0004      	.short	0x0004
    1c20:	010f00cf 	.word	0x010f00cf
    1c24:	01e8      	.short	0x01e8
	count=games_count();
    1c26:	f7ff fb4b 	bl	12c0 <games_count>
    1c2a:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1c2c:	2000      	movs	r0, #0
    1c2e:	f001 fc27 	bl	3480 <set_video_mode>
	vparams=get_video_params();
    1c32:	f001 fc4f 	bl	34d4 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1c36:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1c3a:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1c3e:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1c40:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1c44:	454e      	cmp	r6, r9
    1c46:	bfda      	itte	le
    1c48:	eba9 0806 	suble.w	r8, r9, r6
    1c4c:	f108 0801 	addle.w	r8, r8, #1
    1c50:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1c52:	2100      	movs	r1, #0
    1c54:	4608      	mov	r0, r1
    1c56:	f001 f8f1 	bl	2e3c <set_cursor>
	print(" ********** GAMES **********");
    1c5a:	4889      	ldr	r0, [pc, #548]	; (1e80 <main+0x322>)
    1c5c:	f001 f922 	bl	2ea4 <print>
	while ((r<rows) && games_list[first].size){
    1c60:	f1bb 0f01 	cmp.w	fp, #1
    1c64:	d92d      	bls.n	1cc2 <main+0x164>
    1c66:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1c6a:	4a86      	ldr	r2, [pc, #536]	; (1e84 <main+0x326>)
    1c6c:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1c70:	691b      	ldr	r3, [r3, #16]
    1c72:	b333      	cbz	r3, 1cc2 <main+0x164>
    1c74:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1c78:	1c53      	adds	r3, r2, #1
    1c7a:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1c7e:	2501      	movs	r5, #1
		put_char(' ');
    1c80:	2720      	movs	r7, #32
		new_line();
    1c82:	f001 f829 	bl	2cd8 <new_line>
		clear_line();
    1c86:	f001 f9a7 	bl	2fd8 <clear_line>
		put_char(' ');
    1c8a:	4638      	mov	r0, r7
    1c8c:	f001 f86c 	bl	2d68 <put_char>
		print(games_list[first].name);
    1c90:	4620      	mov	r0, r4
    1c92:	f001 f907 	bl	2ea4 <print>
		line=get_cursor()&0xff;
    1c96:	f001 f8d7 	bl	2e48 <get_cursor>
		set_cursor(90,line);
    1c9a:	b2c1      	uxtb	r1, r0
    1c9c:	205a      	movs	r0, #90	; 0x5a
    1c9e:	f001 f8cd 	bl	2e3c <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1ca2:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1ca6:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1ca8:	bf0c      	ite	eq
    1caa:	4877      	ldreq	r0, [pc, #476]	; (1e88 <main+0x32a>)
			print("(BPCHIP)");
    1cac:	4877      	ldrne	r0, [pc, #476]	; (1e8c <main+0x32e>)
    1cae:	f001 f8f9 	bl	2ea4 <print>
		r++;
    1cb2:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1cb4:	42ae      	cmp	r6, r5
    1cb6:	d004      	beq.n	1cc2 <main+0x164>
    1cb8:	341c      	adds	r4, #28
    1cba:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1cbe:	2b00      	cmp	r3, #0
    1cc0:	d1df      	bne.n	1c82 <main+0x124>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1cc2:	eba9 0108 	sub.w	r1, r9, r8
    1cc6:	00c9      	lsls	r1, r1, #3
    1cc8:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1ccc:	2000      	movs	r0, #0
    1cce:	f001 f8b5 	bl	2e3c <set_cursor>
		put_char('>');
    1cd2:	203e      	movs	r0, #62	; 0x3e
    1cd4:	f001 f848 	bl	2d68 <put_char>
		btn=btn_wait_any();
    1cd8:	f7ff fa9e 	bl	1218 <btn_wait_any>
    1cdc:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1cde:	f7ff fa87 	bl	11f0 <btn_wait_up>
		switch(btn){
    1ce2:	2c04      	cmp	r4, #4
    1ce4:	d056      	beq.n	1d94 <main+0x236>
    1ce6:	d946      	bls.n	1d76 <main+0x218>
    1ce8:	2c40      	cmp	r4, #64	; 0x40
    1cea:	d05a      	beq.n	1da2 <main+0x244>
    1cec:	2c80      	cmp	r4, #128	; 0x80
    1cee:	f000 8158 	beq.w	1fa2 <main+0x444>
    1cf2:	2c20      	cmp	r4, #32
    1cf4:	d1a6      	bne.n	1c44 <main+0xe6>
	run_game(selected-1);
    1cf6:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1cfa:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1cfe:	4b61      	ldr	r3, [pc, #388]	; (1e84 <main+0x326>)
    1d00:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1d04:	2b01      	cmp	r3, #1
    1d06:	bf14      	ite	ne
    1d08:	2600      	movne	r6, #0
    1d0a:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1d0e:	4f5d      	ldr	r7, [pc, #372]	; (1e84 <main+0x326>)
    1d10:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1d14:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1d18:	6922      	ldr	r2, [r4, #16]
    1d1a:	495d      	ldr	r1, [pc, #372]	; (1e90 <main+0x332>)
    1d1c:	4431      	add	r1, r6
    1d1e:	6960      	ldr	r0, [r4, #20]
    1d20:	f7ff fb81 	bl	1426 <move>
	set_keymap(games_list[idx].keymap);
    1d24:	69a0      	ldr	r0, [r4, #24]
    1d26:	f7ff f9f9 	bl	111c <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1d2a:	eba5 0909 	sub.w	r9, r5, r9
    1d2e:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1d32:	f001 fba5 	bl	3480 <set_video_mode>
	set_palette(DEFAULT_PALETTE);
    1d36:	4857      	ldr	r0, [pc, #348]	; (1e94 <main+0x336>)
    1d38:	f7ff fc68 	bl	160c <set_palette>
	exit_code=chip_vm(addr,debug_level);
    1d3c:	4b56      	ldr	r3, [pc, #344]	; (1e98 <main+0x33a>)
    1d3e:	7819      	ldrb	r1, [r3, #0]
    1d40:	4630      	mov	r0, r6
    1d42:	f7fe fb55 	bl	3f0 <chip_vm>
    1d46:	4604      	mov	r4, r0
	print("exit code: ");
    1d48:	4854      	ldr	r0, [pc, #336]	; (1e9c <main+0x33e>)
    1d4a:	f001 f8ab 	bl	2ea4 <print>
	switch(exit_code){
    1d4e:	2c01      	cmp	r4, #1
    1d50:	d02a      	beq.n	1da8 <main+0x24a>
    1d52:	b374      	cbz	r4, 1db2 <main+0x254>
    1d54:	2c03      	cmp	r4, #3
    1d56:	d82c      	bhi.n	1db2 <main+0x254>
		select_console(SERIAL);
    1d58:	2001      	movs	r0, #1
    1d5a:	f001 f95f 	bl	301c <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1d5e:	4621      	mov	r1, r4
    1d60:	484f      	ldr	r0, [pc, #316]	; (1ea0 <main+0x342>)
    1d62:	f7fe fad5 	bl	310 <print_vms>
		select_console(LOCAL);
    1d66:	2000      	movs	r0, #0
    1d68:	f001 f958 	bl	301c <select_console>
		btn_wait_any();
    1d6c:	f7ff fa54 	bl	1218 <btn_wait_any>
		i=1;
    1d70:	2301      	movs	r3, #1
    1d72:	9305      	str	r3, [sp, #20]
    1d74:	e01d      	b.n	1db2 <main+0x254>
		switch(btn){
    1d76:	2c01      	cmp	r4, #1
    1d78:	d009      	beq.n	1d8e <main+0x230>
    1d7a:	2c02      	cmp	r4, #2
    1d7c:	f47f af62 	bne.w	1c44 <main+0xe6>
			if (selected>1) selected--;
    1d80:	f1b9 0f01 	cmp.w	r9, #1
    1d84:	f77f af5e 	ble.w	1c44 <main+0xe6>
    1d88:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1d8c:	e75a      	b.n	1c44 <main+0xe6>
			selected=1;
    1d8e:	f04f 0901 	mov.w	r9, #1
    1d92:	e757      	b.n	1c44 <main+0xe6>
			if (selected<count){
    1d94:	9b03      	ldr	r3, [sp, #12]
    1d96:	454b      	cmp	r3, r9
    1d98:	f77f af54 	ble.w	1c44 <main+0xe6>
				selected++;
    1d9c:	f109 0901 	add.w	r9, r9, #1
    1da0:	e750      	b.n	1c44 <main+0xe6>
			selected=count;
    1da2:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1da6:	e74d      	b.n	1c44 <main+0xe6>
		print("CHIP EXIT OK");
    1da8:	483e      	ldr	r0, [pc, #248]	; (1ea4 <main+0x346>)
    1daa:	f001 f87b 	bl	2ea4 <print>
		i=0;
    1dae:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1db2:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1db6:	f001 fb97 	bl	34e8 <game_pause>
    1dba:	e0f2      	b.n	1fa2 <main+0x444>
	gfx_cls();
    1dbc:	f7ff fc7e 	bl	16bc <gfx_cls>
	print(" **** VM debug support ****\n");
    1dc0:	4839      	ldr	r0, [pc, #228]	; (1ea8 <main+0x34a>)
    1dc2:	f001 f86f 	bl	2ea4 <print>
	print(" No debug support\n");
    1dc6:	4839      	ldr	r0, [pc, #228]	; (1eac <main+0x34e>)
    1dc8:	f001 f86c 	bl	2ea4 <print>
	print(" Print PC and OPCODE\n");
    1dcc:	4838      	ldr	r0, [pc, #224]	; (1eb0 <main+0x352>)
    1dce:	f001 f869 	bl	2ea4 <print>
	print(" Print all VM states.\n");
    1dd2:	4838      	ldr	r0, [pc, #224]	; (1eb4 <main+0x356>)
    1dd4:	f001 f866 	bl	2ea4 <print>
	print(" Single step\n");
    1dd8:	4837      	ldr	r0, [pc, #220]	; (1eb8 <main+0x35a>)
    1dda:	f001 f863 	bl	2ea4 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1dde:	4c2e      	ldr	r4, [pc, #184]	; (1e98 <main+0x33a>)
    1de0:	2500      	movs	r5, #0
		put_char('*');
    1de2:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1de4:	7821      	ldrb	r1, [r4, #0]
    1de6:	3101      	adds	r1, #1
    1de8:	00c9      	lsls	r1, r1, #3
    1dea:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1dee:	4628      	mov	r0, r5
    1df0:	f001 f824 	bl	2e3c <set_cursor>
		put_char('*');
    1df4:	4630      	mov	r0, r6
    1df6:	f000 ffb7 	bl	2d68 <put_char>
		btn=btn_wait_any();
    1dfa:	f7ff fa0d 	bl	1218 <btn_wait_any>
    1dfe:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e00:	7821      	ldrb	r1, [r4, #0]
    1e02:	3101      	adds	r1, #1
    1e04:	00c9      	lsls	r1, r1, #3
    1e06:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1e0a:	4628      	mov	r0, r5
    1e0c:	f001 f816 	bl	2e3c <set_cursor>
		put_char(' ');
    1e10:	2020      	movs	r0, #32
    1e12:	f000 ffa9 	bl	2d68 <put_char>
		switch(btn){
    1e16:	2f04      	cmp	r7, #4
    1e18:	d00a      	beq.n	1e30 <main+0x2d2>
    1e1a:	2f20      	cmp	r7, #32
    1e1c:	f000 80c1 	beq.w	1fa2 <main+0x444>
    1e20:	2f02      	cmp	r7, #2
    1e22:	d1df      	bne.n	1de4 <main+0x286>
			if (debug_level) debug_level--;
    1e24:	7823      	ldrb	r3, [r4, #0]
    1e26:	2b00      	cmp	r3, #0
    1e28:	d0dc      	beq.n	1de4 <main+0x286>
    1e2a:	3b01      	subs	r3, #1
    1e2c:	7023      	strb	r3, [r4, #0]
    1e2e:	e7d9      	b.n	1de4 <main+0x286>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1e30:	7823      	ldrb	r3, [r4, #0]
    1e32:	2b02      	cmp	r3, #2
    1e34:	d8d6      	bhi.n	1de4 <main+0x286>
    1e36:	3301      	adds	r3, #1
    1e38:	7023      	strb	r3, [r4, #0]
    1e3a:	e7d3      	b.n	1de4 <main+0x286>
	set_video_mode(p);
    1e3c:	2000      	movs	r0, #0
    1e3e:	f001 fb1f 	bl	3480 <set_video_mode>
	color_bars();
    1e42:	f7ff fdaf 	bl	19a4 <color_bars>
	vertical_bars();
    1e46:	f7ff fdd5 	bl	19f4 <vertical_bars>
	horiz_bars();
    1e4a:	f7ff fdf3 	bl	1a34 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1e4e:	2110      	movs	r1, #16
    1e50:	481a      	ldr	r0, [pc, #104]	; (1ebc <main+0x35e>)
    1e52:	f001 f842 	bl	2eda <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1e56:	210a      	movs	r1, #10
    1e58:	9804      	ldr	r0, [sp, #16]
    1e5a:	f001 f83e 	bl	2eda <print_int>
	init_balls();
    1e5e:	f7ff fe07 	bl	1a70 <init_balls>
	p=0;
    1e62:	2500      	movs	r5, #0
	if (distance(&balls[0],&balls[1])<8){
    1e64:	4e16      	ldr	r6, [pc, #88]	; (1ec0 <main+0x362>)
    1e66:	f1a6 0814 	sub.w	r8, r6, #20
		if (balls[0].dx!=balls[1].dx){
    1e6a:	4644      	mov	r4, r8
    1e6c:	e06a      	b.n	1f44 <main+0x3e6>
    1e6e:	bf00      	nop
    1e70:	40021000 	.word	0x40021000
    1e74:	40022000 	.word	0x40022000
    1e78:	40011000 	.word	0x40011000
    1e7c:	20004ea0 	.word	0x20004ea0
    1e80:	00003ea0 	.word	0x00003ea0
    1e84:	20000004 	.word	0x20000004
    1e88:	00003ec0 	.word	0x00003ec0
    1e8c:	00003ec8 	.word	0x00003ec8
    1e90:	20000700 	.word	0x20000700
    1e94:	00003d38 	.word	0x00003d38
    1e98:	20002704 	.word	0x20002704
    1e9c:	00003ed4 	.word	0x00003ed4
    1ea0:	00003ef0 	.word	0x00003ef0
    1ea4:	00003ee0 	.word	0x00003ee0
    1ea8:	00003f00 	.word	0x00003f00
    1eac:	00003f20 	.word	0x00003f20
    1eb0:	00003f34 	.word	0x00003f34
    1eb4:	00003f4c 	.word	0x00003f4c
    1eb8:	00003f64 	.word	0x00003f64
    1ebc:	00004400 	.word	0x00004400
    1ec0:	2000271c 	.word	0x2000271c
			balls[i].dy=-balls[i].dy;
    1ec4:	4249      	negs	r1, r1
    1ec6:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1ec8:	f8c2 c004 	str.w	ip, [r2, #4]
    1ecc:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    1ece:	4573      	cmp	r3, lr
    1ed0:	d01e      	beq.n	1f10 <main+0x3b2>
    1ed2:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1ed4:	f8d3 c000 	ldr.w	ip, [r3]
    1ed8:	6899      	ldr	r1, [r3, #8]
    1eda:	eb0c 0701 	add.w	r7, ip, r1
    1ede:	601f      	str	r7, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    1ee0:	f117 0f07 	cmn.w	r7, #7
    1ee4:	db03      	blt.n	1eee <main+0x390>
    1ee6:	f8b0 900c 	ldrh.w	r9, [r0, #12]
    1eea:	454f      	cmp	r7, r9
    1eec:	db03      	blt.n	1ef6 <main+0x398>
			balls[i].dx=-balls[i].dx;
    1eee:	4249      	negs	r1, r1
    1ef0:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1ef2:	f8c2 c000 	str.w	ip, [r2]
		balls[i].y+=balls[i].dy;
    1ef6:	f8d2 c004 	ldr.w	ip, [r2, #4]
    1efa:	68d1      	ldr	r1, [r2, #12]
    1efc:	eb0c 0701 	add.w	r7, ip, r1
    1f00:	6057      	str	r7, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1f02:	2f0f      	cmp	r7, #15
    1f04:	ddde      	ble.n	1ec4 <main+0x366>
    1f06:	f8b0 900e 	ldrh.w	r9, [r0, #14]
    1f0a:	454f      	cmp	r7, r9
    1f0c:	dbde      	blt.n	1ecc <main+0x36e>
    1f0e:	e7d9      	b.n	1ec4 <main+0x366>
	if (distance(&balls[0],&balls[1])<8){
    1f10:	4631      	mov	r1, r6
    1f12:	4640      	mov	r0, r8
    1f14:	f7ff fe14 	bl	1b40 <distance>
    1f18:	2807      	cmp	r0, #7
    1f1a:	d80b      	bhi.n	1f34 <main+0x3d6>
		if (balls[0].dx!=balls[1].dx){
    1f1c:	68a3      	ldr	r3, [r4, #8]
    1f1e:	69e2      	ldr	r2, [r4, #28]
    1f20:	4293      	cmp	r3, r2
			balls[0].dx=balls[1].dx;
    1f22:	bf1c      	itt	ne
    1f24:	60a2      	strne	r2, [r4, #8]
			balls[1].dx=i;
    1f26:	61e3      	strne	r3, [r4, #28]
		if (balls[0].dy!=balls[1].dy){
    1f28:	68e3      	ldr	r3, [r4, #12]
    1f2a:	6a22      	ldr	r2, [r4, #32]
    1f2c:	4293      	cmp	r3, r2
			balls[0].dy=balls[1].dy;
    1f2e:	bf1c      	itt	ne
    1f30:	60e2      	strne	r2, [r4, #12]
			balls[1].dy=i;
    1f32:	6223      	strne	r3, [r4, #32]
		if (btn_query_down(KEY_RIGHT)){
    1f34:	2010      	movs	r0, #16
    1f36:	f7ff f93b 	bl	11b0 <btn_query_down>
    1f3a:	b968      	cbnz	r0, 1f58 <main+0x3fa>
		}else if (btn_query_down(KEY_B)){
    1f3c:	2020      	movs	r0, #32
    1f3e:	f7ff f937 	bl	11b0 <btn_query_down>
    1f42:	bb40      	cbnz	r0, 1f96 <main+0x438>
		draw_balls();
    1f44:	f7ff fcfa 	bl	193c <draw_balls>
		draw_balls();
    1f48:	f7ff fcf8 	bl	193c <draw_balls>
	vmode_params_t *vparams=get_video_params();
    1f4c:	f001 fac2 	bl	34d4 <get_video_params>
    1f50:	4b50      	ldr	r3, [pc, #320]	; (2094 <main+0x536>)
    1f52:	f103 0e28 	add.w	lr, r3, #40	; 0x28
    1f56:	e7bc      	b.n	1ed2 <main+0x374>
			p^=1;
    1f58:	f085 0501 	eor.w	r5, r5, #1
			set_video_mode(p);
    1f5c:	4628      	mov	r0, r5
    1f5e:	f001 fa8f 	bl	3480 <set_video_mode>
			switch(p){
    1f62:	b15d      	cbz	r5, 1f7c <main+0x41e>
    1f64:	2d01      	cmp	r5, #1
    1f66:	d012      	beq.n	1f8e <main+0x430>
			vertical_bars();
    1f68:	f7ff fd44 	bl	19f4 <vertical_bars>
			horiz_bars();
    1f6c:	f7ff fd62 	bl	1a34 <horiz_bars>
			init_balls();
    1f70:	f7ff fd7e 	bl	1a70 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1f74:	2010      	movs	r0, #16
    1f76:	f7ff f93b 	bl	11f0 <btn_wait_up>
    1f7a:	e7e3      	b.n	1f44 <main+0x3e6>
				print("BPCHIP mode\n180x112 16 colors");
    1f7c:	4846      	ldr	r0, [pc, #280]	; (2098 <main+0x53a>)
    1f7e:	f000 ff91 	bl	2ea4 <print>
				color_bars();
    1f82:	f7ff fd0f 	bl	19a4 <color_bars>
				sprite_bpp=TWO_BPP;
    1f86:	2201      	movs	r2, #1
    1f88:	4b44      	ldr	r3, [pc, #272]	; (209c <main+0x53e>)
    1f8a:	701a      	strb	r2, [r3, #0]
    1f8c:	e7ec      	b.n	1f68 <main+0x40a>
				print("SCHIP mode\n128x64 mono");
    1f8e:	4844      	ldr	r0, [pc, #272]	; (20a0 <main+0x542>)
    1f90:	f000 ff88 	bl	2ea4 <print>
    1f94:	e7e8      	b.n	1f68 <main+0x40a>
			btn_wait_up(KEY_B);
    1f96:	2020      	movs	r0, #32
    1f98:	f7ff f92a 	bl	11f0 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1f9c:	2000      	movs	r0, #0
    1f9e:	f001 fa6f 	bl	3480 <set_video_mode>
			display_menu();
    1fa2:	f7ff fda5 	bl	1af0 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1fa6:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1faa:	b2e4      	uxtb	r4, r4
    1fac:	4621      	mov	r1, r4
    1fae:	2000      	movs	r0, #0
    1fb0:	f000 ff44 	bl	2e3c <set_cursor>
		put_char('>');
    1fb4:	203e      	movs	r0, #62	; 0x3e
    1fb6:	f000 fed7 	bl	2d68 <put_char>
		btn=btn_wait_any();
    1fba:	f7ff f92d 	bl	1218 <btn_wait_any>
    1fbe:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1fc0:	f7ff f916 	bl	11f0 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1fc4:	4621      	mov	r1, r4
    1fc6:	2000      	movs	r0, #0
    1fc8:	f000 ff38 	bl	2e3c <set_cursor>
		put_char(' ');
    1fcc:	2020      	movs	r0, #32
    1fce:	f000 fecb 	bl	2d68 <put_char>
		switch(btn){
    1fd2:	2d04      	cmp	r5, #4
    1fd4:	f43f ae16 	beq.w	1c04 <main+0xa6>
    1fd8:	2d20      	cmp	r5, #32
    1fda:	f43f ae1a 	beq.w	1c12 <main+0xb4>
    1fde:	2d02      	cmp	r5, #2
    1fe0:	d1e1      	bne.n	1fa6 <main+0x448>
			if (i) i--;
    1fe2:	f1ba 0f00 	cmp.w	sl, #0
    1fe6:	d0de      	beq.n	1fa6 <main+0x448>
    1fe8:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1fec:	e7db      	b.n	1fa6 <main+0x448>
	gfx_cls();
    1fee:	f7ff fb65 	bl	16bc <gfx_cls>
	print("press buttons\n");
    1ff2:	482c      	ldr	r0, [pc, #176]	; (20a4 <main+0x546>)
    1ff4:	f000 ff56 	bl	2ea4 <print>
		tone(freq,3);
    1ff8:	2503      	movs	r5, #3
			freq=493;
    1ffa:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    1ffe:	f240 266e 	movw	r6, #622	; 0x26e
    2002:	e019      	b.n	2038 <main+0x4da>
		switch(key){
    2004:	2802      	cmp	r0, #2
    2006:	d03f      	beq.n	2088 <main+0x52a>
    2008:	2804      	cmp	r0, #4
    200a:	d00e      	beq.n	202a <main+0x4cc>
    200c:	2801      	cmp	r0, #1
    200e:	d024      	beq.n	205a <main+0x4fc>
		tone(freq,3);
    2010:	4629      	mov	r1, r5
    2012:	9802      	ldr	r0, [sp, #8]
    2014:	f000 fc9c 	bl	2950 <tone>
	while (key!=KEY_B){
    2018:	2c20      	cmp	r4, #32
    201a:	d10d      	bne.n	2038 <main+0x4da>
    201c:	e028      	b.n	2070 <main+0x512>
		switch(key){
    201e:	2810      	cmp	r0, #16
    2020:	d1f6      	bne.n	2010 <main+0x4b2>
			freq=523;
    2022:	f240 230b 	movw	r3, #523	; 0x20b
    2026:	9302      	str	r3, [sp, #8]
    2028:	e002      	b.n	2030 <main+0x4d2>
			freq=466;
    202a:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    202e:	9302      	str	r3, [sp, #8]
		tone(freq,3);
    2030:	4629      	mov	r1, r5
    2032:	9802      	ldr	r0, [sp, #8]
    2034:	f000 fc8c 	bl	2950 <tone>
		key=btn_any_down();
    2038:	f7ff f928 	bl	128c <btn_any_down>
    203c:	4604      	mov	r4, r0
		switch(key){
    203e:	2808      	cmp	r0, #8
    2040:	d026      	beq.n	2090 <main+0x532>
    2042:	d9df      	bls.n	2004 <main+0x4a6>
    2044:	2820      	cmp	r0, #32
    2046:	d00e      	beq.n	2066 <main+0x508>
    2048:	d9e9      	bls.n	201e <main+0x4c0>
    204a:	2840      	cmp	r0, #64	; 0x40
    204c:	d009      	beq.n	2062 <main+0x504>
    204e:	2880      	cmp	r0, #128	; 0x80
    2050:	d1de      	bne.n	2010 <main+0x4b2>
			freq=659;
    2052:	f240 2393 	movw	r3, #659	; 0x293
    2056:	9302      	str	r3, [sp, #8]
    2058:	e7ea      	b.n	2030 <main+0x4d2>
			freq=554;
    205a:	f240 232a 	movw	r3, #554	; 0x22a
    205e:	9302      	str	r3, [sp, #8]
    2060:	e7e6      	b.n	2030 <main+0x4d2>
			freq=622;
    2062:	9602      	str	r6, [sp, #8]
    2064:	e7e4      	b.n	2030 <main+0x4d2>
		tone(freq,3);
    2066:	2103      	movs	r1, #3
    2068:	f240 204b 	movw	r0, #587	; 0x24b
    206c:	f000 fc70 	bl	2950 <tone>
	btn_wait_up(key);
    2070:	2020      	movs	r0, #32
    2072:	f7ff f8bd 	bl	11f0 <btn_wait_up>
	noise(30);
    2076:	201e      	movs	r0, #30
    2078:	f000 fca4 	bl	29c4 <noise>
	while(sound_timer);
    207c:	4a0a      	ldr	r2, [pc, #40]	; (20a8 <main+0x54a>)
    207e:	8813      	ldrh	r3, [r2, #0]
    2080:	b29b      	uxth	r3, r3
    2082:	2b00      	cmp	r3, #0
    2084:	d1fb      	bne.n	207e <main+0x520>
    2086:	e78c      	b.n	1fa2 <main+0x444>
			freq=440;
    2088:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    208c:	9302      	str	r3, [sp, #8]
    208e:	e7cf      	b.n	2030 <main+0x4d2>
			freq=493;
    2090:	9702      	str	r7, [sp, #8]
    2092:	e7cd      	b.n	2030 <main+0x4d2>
    2094:	20002708 	.word	0x20002708
    2098:	00003f74 	.word	0x00003f74
    209c:	200001c8 	.word	0x200001c8
    20a0:	00003f94 	.word	0x00003f94
    20a4:	00003fac 	.word	0x00003fac
    20a8:	20004e98 	.word	0x20004e98

000020ac <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20ac:	283b      	cmp	r0, #59	; 0x3b
    20ae:	dc0d      	bgt.n	20cc <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    20b0:	1143      	asrs	r3, r0, #5
    20b2:	009b      	lsls	r3, r3, #2
    20b4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    20b8:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    20bc:	6819      	ldr	r1, [r3, #0]
    20be:	f000 001f 	and.w	r0, r0, #31
    20c2:	2201      	movs	r2, #1
    20c4:	fa02 f000 	lsl.w	r0, r2, r0
    20c8:	4308      	orrs	r0, r1
    20ca:	6018      	str	r0, [r3, #0]
    20cc:	4770      	bx	lr

000020ce <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20ce:	283b      	cmp	r0, #59	; 0x3b
    20d0:	dc08      	bgt.n	20e4 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    20d2:	1142      	asrs	r2, r0, #5
    20d4:	f000 001f 	and.w	r0, r0, #31
    20d8:	2301      	movs	r3, #1
    20da:	fa03 f000 	lsl.w	r0, r3, r0
    20de:	4b02      	ldr	r3, [pc, #8]	; (20e8 <disable_interrupt+0x1a>)
    20e0:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    20e4:	4770      	bx	lr
    20e6:	bf00      	nop
    20e8:	e000e180 	.word	0xe000e180

000020ec <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    20ec:	283b      	cmp	r0, #59	; 0x3b
    20ee:	dc09      	bgt.n	2104 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    20f0:	1142      	asrs	r2, r0, #5
    20f2:	4b05      	ldr	r3, [pc, #20]	; (2108 <get_pending+0x1c>)
    20f4:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    20f8:	f000 031f 	and.w	r3, r0, #31
    20fc:	2001      	movs	r0, #1
    20fe:	4098      	lsls	r0, r3
    2100:	4010      	ands	r0, r2
    2102:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    2104:	2000      	movs	r0, #0
}
    2106:	4770      	bx	lr
    2108:	e000e280 	.word	0xe000e280

0000210c <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    210c:	283b      	cmp	r0, #59	; 0x3b
    210e:	dc0c      	bgt.n	212a <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    2110:	1143      	asrs	r3, r0, #5
    2112:	009b      	lsls	r3, r3, #2
    2114:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2118:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    211c:	681a      	ldr	r2, [r3, #0]
    211e:	f000 031f 	and.w	r3, r0, #31
    2122:	2001      	movs	r0, #1
    2124:	4098      	lsls	r0, r3
    2126:	4010      	ands	r0, r2
    2128:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    212a:	2000      	movs	r0, #0
}
    212c:	4770      	bx	lr

0000212e <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    212e:	283b      	cmp	r0, #59	; 0x3b
    2130:	dc0d      	bgt.n	214e <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    2132:	1143      	asrs	r3, r0, #5
    2134:	009b      	lsls	r3, r3, #2
    2136:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    213a:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    213e:	6819      	ldr	r1, [r3, #0]
    2140:	f000 001f 	and.w	r0, r0, #31
    2144:	2201      	movs	r2, #1
    2146:	fa02 f000 	lsl.w	r0, r2, r0
    214a:	4308      	orrs	r0, r1
    214c:	6018      	str	r0, [r3, #0]
    214e:	4770      	bx	lr

00002150 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2150:	283b      	cmp	r0, #59	; 0x3b
    2152:	dc08      	bgt.n	2166 <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    2154:	1142      	asrs	r2, r0, #5
    2156:	f000 001f 	and.w	r0, r0, #31
    215a:	2301      	movs	r3, #1
    215c:	fa03 f000 	lsl.w	r0, r3, r0
    2160:	4b01      	ldr	r3, [pc, #4]	; (2168 <clear_pending+0x18>)
    2162:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    2166:	4770      	bx	lr
    2168:	e000e280 	.word	0xe000e280

0000216c <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    216c:	283b      	cmp	r0, #59	; 0x3b
    216e:	d90c      	bls.n	218a <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2170:	f100 030f 	add.w	r3, r0, #15
    2174:	2b0e      	cmp	r3, #14
    2176:	d807      	bhi.n	2188 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    2178:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    217c:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2180:	30fc      	adds	r0, #252	; 0xfc
    2182:	0109      	lsls	r1, r1, #4
    2184:	4b04      	ldr	r3, [pc, #16]	; (2198 <set_int_priority+0x2c>)
    2186:	54c1      	strb	r1, [r0, r3]
    2188:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    218a:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    218e:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    2192:	0109      	lsls	r1, r1, #4
    2194:	7001      	strb	r1, [r0, #0]
    2196:	4770      	bx	lr
    2198:	e000ed18 	.word	0xe000ed18

0000219c <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    219c:	f010 0f03 	tst.w	r0, #3
    21a0:	d113      	bne.n	21ca <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    21a2:	4b0c      	ldr	r3, [pc, #48]	; (21d4 <leap_year+0x38>)
    21a4:	fba3 2300 	umull	r2, r3, r3, r0
    21a8:	095b      	lsrs	r3, r3, #5
    21aa:	2264      	movs	r2, #100	; 0x64
    21ac:	fb02 0313 	mls	r3, r2, r3, r0
    21b0:	b96b      	cbnz	r3, 21ce <leap_year+0x32>
    21b2:	4b08      	ldr	r3, [pc, #32]	; (21d4 <leap_year+0x38>)
    21b4:	fba3 2300 	umull	r2, r3, r3, r0
    21b8:	09db      	lsrs	r3, r3, #7
    21ba:	f44f 72c8 	mov.w	r2, #400	; 0x190
    21be:	fb02 0013 	mls	r0, r2, r3, r0
    21c2:	fab0 f080 	clz	r0, r0
    21c6:	0940      	lsrs	r0, r0, #5
    21c8:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    21ca:	2000      	movs	r0, #0
    21cc:	4770      	bx	lr
		return 1;
    21ce:	2001      	movs	r0, #1
}
    21d0:	4770      	bx	lr
    21d2:	bf00      	nop
    21d4:	51eb851f 	.word	0x51eb851f

000021d8 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    21d8:	4b07      	ldr	r3, [pc, #28]	; (21f8 <sec_per_month+0x20>)
    21da:	5c5a      	ldrb	r2, [r3, r1]
    21dc:	4b07      	ldr	r3, [pc, #28]	; (21fc <sec_per_month+0x24>)
    21de:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    21e2:	2902      	cmp	r1, #2
    21e4:	d001      	beq.n	21ea <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    21e6:	4618      	mov	r0, r3
    21e8:	4770      	bx	lr
	if (month==2 && leap){
    21ea:	2800      	cmp	r0, #0
    21ec:	d0fb      	beq.n	21e6 <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    21ee:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    21f2:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    21f6:	e7f6      	b.n	21e6 <sec_per_month+0xe>
    21f8:	00003d78 	.word	0x00003d78
    21fc:	00015180 	.word	0x00015180

00002200 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    2200:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2204:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    2206:	4b37      	ldr	r3, [pc, #220]	; (22e4 <get_date_time+0xe4>)
    2208:	699a      	ldr	r2, [r3, #24]
    220a:	69dc      	ldr	r4, [r3, #28]
    220c:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    2210:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2214:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    2216:	f7ff ffc1 	bl	219c <leap_year>
    221a:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    221c:	4d32      	ldr	r5, [pc, #200]	; (22e8 <get_date_time+0xe8>)
    221e:	4f33      	ldr	r7, [pc, #204]	; (22ec <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    2220:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 2300 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2224:	e00e      	b.n	2244 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    2226:	4444      	add	r4, r8
    2228:	e005      	b.n	2236 <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    222a:	42ac      	cmp	r4, r5
    222c:	d90f      	bls.n	224e <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    222e:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    2232:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    2236:	8930      	ldrh	r0, [r6, #8]
    2238:	3001      	adds	r0, #1
    223a:	b280      	uxth	r0, r0
    223c:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    223e:	f7ff ffad 	bl	219c <leap_year>
    2242:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2244:	f1b9 0f00 	cmp.w	r9, #0
    2248:	d1ef      	bne.n	222a <get_date_time+0x2a>
    224a:	42bc      	cmp	r4, r7
    224c:	d8eb      	bhi.n	2226 <get_date_time+0x26>
	}//while
	dt->month=1;
    224e:	8873      	ldrh	r3, [r6, #2]
    2250:	2201      	movs	r2, #1
    2252:	f362 1389 	bfi	r3, r2, #6, #4
    2256:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    2258:	f362 0345 	bfi	r3, r2, #1, #5
    225c:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    225e:	6833      	ldr	r3, [r6, #0]
    2260:	f36f 3310 	bfc	r3, #12, #5
    2264:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    2266:	f36f 138b 	bfc	r3, #6, #6
    226a:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    226c:	f36f 0305 	bfc	r3, #0, #6
    2270:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2272:	e005      	b.n	2280 <get_date_time+0x80>
		dt->month++;
    2274:	3501      	adds	r5, #1
    2276:	8873      	ldrh	r3, [r6, #2]
    2278:	f365 1389 	bfi	r3, r5, #6, #4
    227c:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    227e:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2280:	8875      	ldrh	r5, [r6, #2]
    2282:	f3c5 1583 	ubfx	r5, r5, #6, #4
    2286:	4629      	mov	r1, r5
    2288:	4648      	mov	r0, r9
    228a:	f7ff ffa5 	bl	21d8 <sec_per_month>
    228e:	4284      	cmp	r4, r0
    2290:	d8f0      	bhi.n	2274 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    2292:	4a17      	ldr	r2, [pc, #92]	; (22f0 <get_date_time+0xf0>)
    2294:	fba2 3204 	umull	r3, r2, r2, r4
    2298:	0c12      	lsrs	r2, r2, #16
    229a:	1c51      	adds	r1, r2, #1
    229c:	78b3      	ldrb	r3, [r6, #2]
    229e:	f361 0345 	bfi	r3, r1, #1, #5
    22a2:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    22a4:	4b13      	ldr	r3, [pc, #76]	; (22f4 <get_date_time+0xf4>)
    22a6:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    22aa:	4c13      	ldr	r4, [pc, #76]	; (22f8 <get_date_time+0xf8>)
    22ac:	fba4 3402 	umull	r3, r4, r4, r2
    22b0:	0ae4      	lsrs	r4, r4, #11
    22b2:	6833      	ldr	r3, [r6, #0]
    22b4:	f364 3310 	bfi	r3, r4, #12, #5
    22b8:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    22ba:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    22be:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    22c2:	4a0e      	ldr	r2, [pc, #56]	; (22fc <get_date_time+0xfc>)
    22c4:	fba2 1204 	umull	r1, r2, r2, r4
    22c8:	0952      	lsrs	r2, r2, #5
    22ca:	f362 138b 	bfi	r3, r2, #6, #6
    22ce:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    22d0:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    22d4:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    22d8:	f364 0305 	bfi	r3, r4, #0, #6
    22dc:	7033      	strb	r3, [r6, #0]
    22de:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    22e2:	bf00      	nop
    22e4:	40002800 	.word	0x40002800
    22e8:	01e284ff 	.word	0x01e284ff
    22ec:	01e1337f 	.word	0x01e1337f
    22f0:	c22e4507 	.word	0xc22e4507
    22f4:	00015180 	.word	0x00015180
    22f8:	91a2b3c5 	.word	0x91a2b3c5
    22fc:	88888889 	.word	0x88888889
    2300:	fe1ecc80 	.word	0xfe1ecc80

00002304 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    2304:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2308:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    230a:	8903      	ldrh	r3, [r0, #8]
    230c:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2310:	4293      	cmp	r3, r2
    2312:	d857      	bhi.n	23c4 <set_date_time+0xc0>
    2314:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2318:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    231c:	f7ff ff3e 	bl	219c <leap_year>
    2320:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    2322:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    2324:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    2328:	f3c6 1683 	ubfx	r6, r6, #6, #4
    232c:	2e01      	cmp	r6, #1
    232e:	d908      	bls.n	2342 <set_date_time+0x3e>
    2330:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    2332:	4629      	mov	r1, r5
    2334:	4638      	mov	r0, r7
    2336:	f7ff ff4f 	bl	21d8 <sec_per_month>
    233a:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    233c:	3501      	adds	r5, #1
    233e:	42b5      	cmp	r5, r6
    2340:	d1f7      	bne.n	2332 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    2342:	f8d8 2000 	ldr.w	r2, [r8]
    2346:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    234a:	f8b8 2000 	ldrh.w	r2, [r8]
    234e:	f3c2 1285 	ubfx	r2, r2, #6, #6
    2352:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2356:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    2358:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    235c:	fb01 2203 	mla	r2, r1, r3, r2
    2360:	f898 3000 	ldrb.w	r3, [r8]
    2364:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2368:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    236a:	f898 3002 	ldrb.w	r3, [r8, #2]
    236e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2372:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2374:	4928      	ldr	r1, [pc, #160]	; (2418 <set_date_time+0x114>)
    2376:	fb01 2303 	mla	r3, r1, r3, r2
    237a:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    237c:	4a27      	ldr	r2, [pc, #156]	; (241c <set_date_time+0x118>)
    237e:	69d3      	ldr	r3, [r2, #28]
    2380:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2384:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2386:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    238a:	6813      	ldr	r3, [r2, #0]
    238c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2390:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2392:	4b23      	ldr	r3, [pc, #140]	; (2420 <set_date_time+0x11c>)
    2394:	685a      	ldr	r2, [r3, #4]
    2396:	f042 0210 	orr.w	r2, r2, #16
    239a:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    239c:	0c22      	lsrs	r2, r4, #16
    239e:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    23a0:	b2a4      	uxth	r4, r4
    23a2:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    23a4:	685a      	ldr	r2, [r3, #4]
    23a6:	f022 0210 	bic.w	r2, r2, #16
    23aa:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    23ac:	461a      	mov	r2, r3
    23ae:	6853      	ldr	r3, [r2, #4]
    23b0:	f013 0f20 	tst.w	r3, #32
    23b4:	d0fb      	beq.n	23ae <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    23b6:	4a1b      	ldr	r2, [pc, #108]	; (2424 <set_date_time+0x120>)
    23b8:	6813      	ldr	r3, [r2, #0]
    23ba:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23be:	6013      	str	r3, [r2, #0]
    23c0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    23c4:	f640 023a 	movw	r2, #2106	; 0x83a
    23c8:	4293      	cmp	r3, r2
    23ca:	d90c      	bls.n	23e6 <set_date_time+0xe2>
    23cc:	4616      	mov	r6, r2
    23ce:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    23d2:	4610      	mov	r0, r2
    23d4:	f7ff fee2 	bl	219c <leap_year>
    23d8:	4607      	mov	r7, r0
    23da:	2400      	movs	r4, #0
    23dc:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    23e0:	f8df 9044 	ldr.w	r9, [pc, #68]	; 2428 <set_date_time+0x124>
    23e4:	e00e      	b.n	2404 <set_date_time+0x100>
	leap=leap_year(dt->year);
    23e6:	8906      	ldrh	r6, [r0, #8]
    23e8:	4630      	mov	r0, r6
    23ea:	f7ff fed7 	bl	219c <leap_year>
    23ee:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    23f0:	f240 73b2 	movw	r3, #1970	; 0x7b2
    23f4:	429e      	cmp	r6, r3
    23f6:	d8f0      	bhi.n	23da <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    23f8:	2400      	movs	r4, #0
    23fa:	e793      	b.n	2324 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    23fc:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    23fe:	3501      	adds	r5, #1
    2400:	42b5      	cmp	r5, r6
    2402:	d28f      	bcs.n	2324 <set_date_time+0x20>
		if (leap_year(i)){
    2404:	4628      	mov	r0, r5
    2406:	f7ff fec9 	bl	219c <leap_year>
    240a:	2800      	cmp	r0, #0
    240c:	d0f6      	beq.n	23fc <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    240e:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    2412:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    2416:	e7f2      	b.n	23fe <set_date_time+0xfa>
    2418:	00015180 	.word	0x00015180
    241c:	40021000 	.word	0x40021000
    2420:	40002800 	.word	0x40002800
    2424:	40007000 	.word	0x40007000
    2428:	01e13380 	.word	0x01e13380

0000242c <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    242c:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    242e:	4b35      	ldr	r3, [pc, #212]	; (2504 <rtc_init+0xd8>)
    2430:	685a      	ldr	r2, [r3, #4]
    2432:	f64a 2355 	movw	r3, #43605	; 0xaa55
    2436:	429a      	cmp	r2, r3
    2438:	d05c      	beq.n	24f4 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    243a:	4b33      	ldr	r3, [pc, #204]	; (2508 <rtc_init+0xdc>)
    243c:	69da      	ldr	r2, [r3, #28]
    243e:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2442:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2444:	4c31      	ldr	r4, [pc, #196]	; (250c <rtc_init+0xe0>)
    2446:	6822      	ldr	r2, [r4, #0]
    2448:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    244c:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    244e:	6a1a      	ldr	r2, [r3, #32]
    2450:	f042 0201 	orr.w	r2, r2, #1
    2454:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    2456:	461a      	mov	r2, r3
    2458:	6a13      	ldr	r3, [r2, #32]
    245a:	f013 0f02 	tst.w	r3, #2
    245e:	d0fb      	beq.n	2458 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2460:	4a29      	ldr	r2, [pc, #164]	; (2508 <rtc_init+0xdc>)
    2462:	6a13      	ldr	r3, [r2, #32]
    2464:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2468:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    246a:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    246e:	6853      	ldr	r3, [r2, #4]
    2470:	f013 0f08 	tst.w	r3, #8
    2474:	d0fb      	beq.n	246e <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    2476:	4a26      	ldr	r2, [pc, #152]	; (2510 <rtc_init+0xe4>)
    2478:	6853      	ldr	r3, [r2, #4]
    247a:	f013 0f20 	tst.w	r3, #32
    247e:	d0fb      	beq.n	2478 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2480:	4a23      	ldr	r2, [pc, #140]	; (2510 <rtc_init+0xe4>)
    2482:	6853      	ldr	r3, [r2, #4]
    2484:	f043 0310 	orr.w	r3, r3, #16
    2488:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    248a:	6853      	ldr	r3, [r2, #4]
    248c:	f013 0f20 	tst.w	r3, #32
    2490:	d0fb      	beq.n	248a <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    2492:	4a1f      	ldr	r2, [pc, #124]	; (2510 <rtc_init+0xe4>)
    2494:	6813      	ldr	r3, [r2, #0]
    2496:	4319      	orrs	r1, r3
    2498:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    249a:	6853      	ldr	r3, [r2, #4]
    249c:	f013 0f20 	tst.w	r3, #32
    24a0:	d0fb      	beq.n	249a <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    24a2:	03c2      	lsls	r2, r0, #15
    24a4:	481b      	ldr	r0, [pc, #108]	; (2514 <rtc_init+0xe8>)
    24a6:	fba0 3202 	umull	r3, r2, r0, r2
    24aa:	0992      	lsrs	r2, r2, #6
    24ac:	3a01      	subs	r2, #1
    24ae:	b291      	uxth	r1, r2
    24b0:	4b17      	ldr	r3, [pc, #92]	; (2510 <rtc_init+0xe4>)
    24b2:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    24b4:	4619      	mov	r1, r3
    24b6:	684b      	ldr	r3, [r1, #4]
    24b8:	f013 0f20 	tst.w	r3, #32
    24bc:	d0fb      	beq.n	24b6 <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    24be:	f3c2 4203 	ubfx	r2, r2, #16, #4
    24c2:	4b13      	ldr	r3, [pc, #76]	; (2510 <rtc_init+0xe4>)
    24c4:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    24c6:	461a      	mov	r2, r3
    24c8:	6853      	ldr	r3, [r2, #4]
    24ca:	f013 0f20 	tst.w	r3, #32
    24ce:	d0fb      	beq.n	24c8 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    24d0:	f64a 2255 	movw	r2, #43605	; 0xaa55
    24d4:	4b0b      	ldr	r3, [pc, #44]	; (2504 <rtc_init+0xd8>)
    24d6:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    24d8:	4a0d      	ldr	r2, [pc, #52]	; (2510 <rtc_init+0xe4>)
    24da:	6853      	ldr	r3, [r2, #4]
    24dc:	f023 0310 	bic.w	r3, r3, #16
    24e0:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    24e2:	6853      	ldr	r3, [r2, #4]
    24e4:	f013 0f20 	tst.w	r3, #32
    24e8:	d0fb      	beq.n	24e2 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    24ea:	4a08      	ldr	r2, [pc, #32]	; (250c <rtc_init+0xe0>)
    24ec:	6813      	ldr	r3, [r2, #0]
    24ee:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    24f2:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    24f4:	210f      	movs	r1, #15
    24f6:	2003      	movs	r0, #3
    24f8:	f7ff fe38 	bl	216c <set_int_priority>
	enable_interrupt(IRQ_RTC);
    24fc:	2003      	movs	r0, #3
    24fe:	f7ff fdd5 	bl	20ac <enable_interrupt>
    2502:	bd10      	pop	{r4, pc}
    2504:	40006c00 	.word	0x40006c00
    2508:	40021000 	.word	0x40021000
    250c:	40007000 	.word	0x40007000
    2510:	40002800 	.word	0x40002800
    2514:	10624dd3 	.word	0x10624dd3

00002518 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2518:	4b06      	ldr	r3, [pc, #24]	; (2534 <reset_backup_domain+0x1c>)
    251a:	69da      	ldr	r2, [r3, #28]
    251c:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2520:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    2522:	6a1a      	ldr	r2, [r3, #32]
    2524:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    2528:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    252a:	6a1a      	ldr	r2, [r3, #32]
    252c:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    2530:	621a      	str	r2, [r3, #32]
    2532:	4770      	bx	lr
    2534:	40021000 	.word	0x40021000

00002538 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2538:	4a27      	ldr	r2, [pc, #156]	; (25d8 <rtc_clock_trim+0xa0>)
    253a:	69d3      	ldr	r3, [r2, #28]
    253c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2540:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    2542:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2546:	6853      	ldr	r3, [r2, #4]
    2548:	f013 0f08 	tst.w	r3, #8
    254c:	d0fb      	beq.n	2546 <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    254e:	4a23      	ldr	r2, [pc, #140]	; (25dc <rtc_clock_trim+0xa4>)
    2550:	6813      	ldr	r3, [r2, #0]
    2552:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2556:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2558:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    255c:	6853      	ldr	r3, [r2, #4]
    255e:	f043 0310 	orr.w	r3, r3, #16
    2562:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2564:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    2568:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    256a:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    256e:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2570:	b9b8      	cbnz	r0, 25a2 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    2572:	2200      	movs	r2, #0
    2574:	4b1a      	ldr	r3, [pc, #104]	; (25e0 <rtc_clock_trim+0xa8>)
    2576:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    2578:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    257c:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2580:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2582:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2584:	4a17      	ldr	r2, [pc, #92]	; (25e4 <rtc_clock_trim+0xac>)
    2586:	6853      	ldr	r3, [r2, #4]
    2588:	f023 0310 	bic.w	r3, r3, #16
    258c:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    258e:	6853      	ldr	r3, [r2, #4]
    2590:	f013 0f20 	tst.w	r3, #32
    2594:	d0fb      	beq.n	258e <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2596:	4a11      	ldr	r2, [pc, #68]	; (25dc <rtc_clock_trim+0xa4>)
    2598:	6813      	ldr	r3, [r2, #0]
    259a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    259e:	6013      	str	r3, [r2, #0]
    25a0:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    25a2:	2800      	cmp	r0, #0
    25a4:	dd06      	ble.n	25b4 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    25a6:	4b0e      	ldr	r3, [pc, #56]	; (25e0 <rtc_clock_trim+0xa8>)
    25a8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    25aa:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    25ae:	4310      	orrs	r0, r2
    25b0:	62d8      	str	r0, [r3, #44]	; 0x2c
    25b2:	e7e7      	b.n	2584 <rtc_clock_trim+0x4c>
		trim=-trim;
    25b4:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    25b6:	2100      	movs	r1, #0
    25b8:	4b09      	ldr	r3, [pc, #36]	; (25e0 <rtc_clock_trim+0xa8>)
    25ba:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    25bc:	f64f 73ff 	movw	r3, #65535	; 0xffff
    25c0:	287f      	cmp	r0, #127	; 0x7f
    25c2:	bfd4      	ite	le
    25c4:	1a18      	suble	r0, r3, r0
    25c6:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    25ca:	f3c0 000e 	ubfx	r0, r0, #0, #15
    25ce:	4a05      	ldr	r2, [pc, #20]	; (25e4 <rtc_clock_trim+0xac>)
    25d0:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    25d2:	6091      	str	r1, [r2, #8]
    25d4:	e7d6      	b.n	2584 <rtc_clock_trim+0x4c>
    25d6:	bf00      	nop
    25d8:	40021000 	.word	0x40021000
    25dc:	40007000 	.word	0x40007000
    25e0:	40006c00 	.word	0x40006c00
    25e4:	40002800 	.word	0x40002800

000025e8 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    25e8:	4770      	bx	lr

000025ea <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    25ea:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    25ee:	4607      	mov	r7, r0
    25f0:	4688      	mov	r8, r1
    25f2:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    25f4:	2400      	movs	r4, #0
	i=0;
    25f6:	4626      	mov	r6, r4
	while (digit(date[i])){
    25f8:	e008      	b.n	260c <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    25fa:	3601      	adds	r6, #1
    25fc:	3501      	adds	r5, #1
    25fe:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2602:	f899 3000 	ldrb.w	r3, [r9]
    2606:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    260a:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    260c:	46a9      	mov	r9, r5
    260e:	7828      	ldrb	r0, [r5, #0]
    2610:	f7fe fe9d 	bl	134e <digit>
    2614:	4682      	mov	sl, r0
    2616:	2800      	cmp	r0, #0
    2618:	d1ef      	bne.n	25fa <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    261a:	2e03      	cmp	r6, #3
    261c:	dd02      	ble.n	2624 <str_to_date+0x3a>
    261e:	782b      	ldrb	r3, [r5, #0]
    2620:	2b2f      	cmp	r3, #47	; 0x2f
    2622:	d002      	beq.n	262a <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    2624:	4650      	mov	r0, sl
    2626:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    262a:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    262e:	3601      	adds	r6, #1
    2630:	19bd      	adds	r5, r7, r6
	n=0;
    2632:	4604      	mov	r4, r0
	while (digit(date[i])){
    2634:	e008      	b.n	2648 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    2636:	3601      	adds	r6, #1
    2638:	3501      	adds	r5, #1
    263a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    263e:	f899 3000 	ldrb.w	r3, [r9]
    2642:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    2646:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2648:	46a9      	mov	r9, r5
    264a:	7828      	ldrb	r0, [r5, #0]
    264c:	f7fe fe7f 	bl	134e <digit>
    2650:	4682      	mov	sl, r0
    2652:	2800      	cmp	r0, #0
    2654:	d1ef      	bne.n	2636 <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    2656:	2e06      	cmp	r6, #6
    2658:	dde4      	ble.n	2624 <str_to_date+0x3a>
    265a:	782b      	ldrb	r3, [r5, #0]
    265c:	2b2f      	cmp	r3, #47	; 0x2f
    265e:	d1e1      	bne.n	2624 <str_to_date+0x3a>
	dt->month=n;
    2660:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2664:	f364 1389 	bfi	r3, r4, #6, #4
    2668:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    266c:	1c74      	adds	r4, r6, #1
    266e:	443e      	add	r6, r7
	while (digit(date[i])){
    2670:	e008      	b.n	2684 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    2672:	3401      	adds	r4, #1
    2674:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2678:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    267c:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2680:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2684:	7870      	ldrb	r0, [r6, #1]
    2686:	f7fe fe62 	bl	134e <digit>
    268a:	2800      	cmp	r0, #0
    268c:	d1f1      	bne.n	2672 <str_to_date+0x88>
	if (i<10) return 0;
    268e:	2c09      	cmp	r4, #9
    2690:	dd08      	ble.n	26a4 <str_to_date+0xba>
	dt->day=n;
    2692:	f898 3002 	ldrb.w	r3, [r8, #2]
    2696:	f36a 0345 	bfi	r3, sl, #1, #5
    269a:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    269e:	f04f 0a01 	mov.w	sl, #1
    26a2:	e7bf      	b.n	2624 <str_to_date+0x3a>
	if (i<10) return 0;
    26a4:	4682      	mov	sl, r0
    26a6:	e7bd      	b.n	2624 <str_to_date+0x3a>

000026a8 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    26a8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    26ac:	4607      	mov	r7, r0
    26ae:	4688      	mov	r8, r1
    26b0:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    26b2:	2400      	movs	r4, #0
	i=0;
    26b4:	4626      	mov	r6, r4
	while (digit(time[i])){
    26b6:	e00a      	b.n	26ce <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    26b8:	3601      	adds	r6, #1
    26ba:	3501      	adds	r5, #1
    26bc:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26c0:	0064      	lsls	r4, r4, #1
    26c2:	3c30      	subs	r4, #48	; 0x30
    26c4:	f899 3000 	ldrb.w	r3, [r9]
    26c8:	441c      	add	r4, r3
    26ca:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    26ce:	46a9      	mov	r9, r5
    26d0:	7828      	ldrb	r0, [r5, #0]
    26d2:	f7fe fe3c 	bl	134e <digit>
    26d6:	4603      	mov	r3, r0
    26d8:	2800      	cmp	r0, #0
    26da:	d1ed      	bne.n	26b8 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    26dc:	2c17      	cmp	r4, #23
    26de:	d802      	bhi.n	26e6 <str_to_time+0x3e>
    26e0:	782a      	ldrb	r2, [r5, #0]
    26e2:	2a3a      	cmp	r2, #58	; 0x3a
    26e4:	d002      	beq.n	26ec <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    26e6:	4618      	mov	r0, r3
    26e8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    26ec:	f8d8 3000 	ldr.w	r3, [r8]
    26f0:	f364 3310 	bfi	r3, r4, #12, #5
    26f4:	f8c8 3000 	str.w	r3, [r8]
	i++;
    26f8:	3601      	adds	r6, #1
    26fa:	19bd      	adds	r5, r7, r6
	n=0;
    26fc:	2400      	movs	r4, #0
	while (digit(time[i])){
    26fe:	e00a      	b.n	2716 <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    2700:	3601      	adds	r6, #1
    2702:	3501      	adds	r5, #1
    2704:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2708:	0064      	lsls	r4, r4, #1
    270a:	3c30      	subs	r4, #48	; 0x30
    270c:	f899 3000 	ldrb.w	r3, [r9]
    2710:	441c      	add	r4, r3
    2712:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2716:	46a9      	mov	r9, r5
    2718:	7828      	ldrb	r0, [r5, #0]
    271a:	f7fe fe18 	bl	134e <digit>
    271e:	4603      	mov	r3, r0
    2720:	2800      	cmp	r0, #0
    2722:	d1ed      	bne.n	2700 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    2724:	2c3b      	cmp	r4, #59	; 0x3b
    2726:	d8de      	bhi.n	26e6 <str_to_time+0x3e>
    2728:	782a      	ldrb	r2, [r5, #0]
    272a:	2a3a      	cmp	r2, #58	; 0x3a
    272c:	d1db      	bne.n	26e6 <str_to_time+0x3e>
	dt->minute=n;
    272e:	f8b8 3000 	ldrh.w	r3, [r8]
    2732:	f364 138b 	bfi	r3, r4, #6, #6
    2736:	f8a8 3000 	strh.w	r3, [r8]
    273a:	443e      	add	r6, r7
	n=0;
    273c:	2400      	movs	r4, #0
	while (digit(time[i])){
    273e:	e008      	b.n	2752 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2740:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2744:	0064      	lsls	r4, r4, #1
    2746:	3c30      	subs	r4, #48	; 0x30
    2748:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    274c:	441c      	add	r4, r3
    274e:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2752:	7870      	ldrb	r0, [r6, #1]
    2754:	f7fe fdfb 	bl	134e <digit>
    2758:	4603      	mov	r3, r0
    275a:	2800      	cmp	r0, #0
    275c:	d1f0      	bne.n	2740 <str_to_time+0x98>
	if (n>59) return 0;
    275e:	2c3b      	cmp	r4, #59	; 0x3b
    2760:	d8c1      	bhi.n	26e6 <str_to_time+0x3e>
	dt->second=n;
    2762:	f898 3000 	ldrb.w	r3, [r8]
    2766:	f364 0305 	bfi	r3, r4, #0, #6
    276a:	f888 3000 	strb.w	r3, [r8]
	return 1;
    276e:	2301      	movs	r3, #1
    2770:	e7b9      	b.n	26e6 <str_to_time+0x3e>

00002772 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    2772:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2774:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    2776:	4b23      	ldr	r3, [pc, #140]	; (2804 <date_str+0x92>)
    2778:	fba3 4302 	umull	r4, r3, r3, r2
    277c:	099b      	lsrs	r3, r3, #6
    277e:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2782:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2784:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2788:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    278c:	4b1e      	ldr	r3, [pc, #120]	; (2808 <date_str+0x96>)
    278e:	fba3 4302 	umull	r4, r3, r3, r2
    2792:	095b      	lsrs	r3, r3, #5
    2794:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2798:	704c      	strb	r4, [r1, #1]
	n%=100;
    279a:	2464      	movs	r4, #100	; 0x64
    279c:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    27a0:	4a1a      	ldr	r2, [pc, #104]	; (280c <date_str+0x9a>)
    27a2:	fba2 5403 	umull	r5, r4, r2, r3
    27a6:	08e4      	lsrs	r4, r4, #3
    27a8:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27ac:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    27ae:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    27b2:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27b6:	3330      	adds	r3, #48	; 0x30
    27b8:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    27ba:	262f      	movs	r6, #47	; 0x2f
    27bc:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    27be:	8843      	ldrh	r3, [r0, #2]
    27c0:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    27c4:	fba2 5403 	umull	r5, r4, r2, r3
    27c8:	08e4      	lsrs	r4, r4, #3
    27ca:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27ce:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    27d0:	00a5      	lsls	r5, r4, #2
    27d2:	442c      	add	r4, r5
    27d4:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27d8:	3330      	adds	r3, #48	; 0x30
    27da:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    27dc:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    27de:	7880      	ldrb	r0, [r0, #2]
    27e0:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    27e4:	fba2 3200 	umull	r3, r2, r2, r0
    27e8:	08d3      	lsrs	r3, r2, #3
    27ea:	f103 0230 	add.w	r2, r3, #48	; 0x30
    27ee:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    27f0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    27f4:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    27f8:	3330      	adds	r3, #48	; 0x30
    27fa:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    27fc:	2300      	movs	r3, #0
    27fe:	728b      	strb	r3, [r1, #10]

}
    2800:	bc70      	pop	{r4, r5, r6}
    2802:	4770      	bx	lr
    2804:	10624dd3 	.word	0x10624dd3
    2808:	51eb851f 	.word	0x51eb851f
    280c:	cccccccd 	.word	0xcccccccd

00002810 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    2810:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    2812:	6802      	ldr	r2, [r0, #0]
    2814:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    2818:	4b18      	ldr	r3, [pc, #96]	; (287c <time_str+0x6c>)
    281a:	fba3 5402 	umull	r5, r4, r3, r2
    281e:	08e4      	lsrs	r4, r4, #3
    2820:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2824:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    2826:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    282a:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    282e:	3230      	adds	r2, #48	; 0x30
    2830:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    2832:	253a      	movs	r5, #58	; 0x3a
    2834:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    2836:	8802      	ldrh	r2, [r0, #0]
    2838:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    283c:	fba3 6402 	umull	r6, r4, r3, r2
    2840:	08e4      	lsrs	r4, r4, #3
    2842:	f104 0630 	add.w	r6, r4, #48	; 0x30
    2846:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    2848:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    284c:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2850:	3230      	adds	r2, #48	; 0x30
    2852:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2854:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    2856:	7802      	ldrb	r2, [r0, #0]
    2858:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    285c:	fba3 0302 	umull	r0, r3, r3, r2
    2860:	08db      	lsrs	r3, r3, #3
    2862:	f103 0030 	add.w	r0, r3, #48	; 0x30
    2866:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2868:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    286c:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2870:	3330      	adds	r3, #48	; 0x30
    2872:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2874:	2300      	movs	r3, #0
    2876:	720b      	strb	r3, [r1, #8]
}
    2878:	bc70      	pop	{r4, r5, r6}
    287a:	4770      	bx	lr
    287c:	cccccccd 	.word	0xcccccccd

00002880 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2880:	b500      	push	{lr}
    2882:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2884:	a801      	add	r0, sp, #4
    2886:	f7ff fcbb 	bl	2200 <get_date_time>
	t.fields.second=dt.second/2;
    288a:	f89d 3004 	ldrb.w	r3, [sp, #4]
    288e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2892:	2000      	movs	r0, #0
    2894:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2898:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    289c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    28a0:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    28a4:	9b01      	ldr	r3, [sp, #4]
    28a6:	f3c3 3304 	ubfx	r3, r3, #12, #5
    28aa:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    28ae:	f89d 3006 	ldrb.w	r3, [sp, #6]
    28b2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    28b6:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    28ba:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    28be:	f3c3 1383 	ubfx	r3, r3, #6, #4
    28c2:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    28c6:	f89d 300c 	ldrb.w	r3, [sp, #12]
    28ca:	3344      	adds	r3, #68	; 0x44
    28cc:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    28d0:	b005      	add	sp, #20
    28d2:	f85d fb04 	ldr.w	pc, [sp], #4

000028d6 <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    28d6:	4b07      	ldr	r3, [pc, #28]	; (28f4 <RTC_handler+0x1e>)
    28d8:	685b      	ldr	r3, [r3, #4]
    28da:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    28de:	bf1c      	itt	ne
    28e0:	4b04      	ldrne	r3, [pc, #16]	; (28f4 <RTC_handler+0x1e>)
    28e2:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    28e4:	4b03      	ldr	r3, [pc, #12]	; (28f4 <RTC_handler+0x1e>)
    28e6:	685b      	ldr	r3, [r3, #4]
    28e8:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    28ec:	bf1c      	itt	ne
    28ee:	4b01      	ldrne	r3, [pc, #4]	; (28f4 <RTC_handler+0x1e>)
    28f0:	685b      	ldrne	r3, [r3, #4]
    28f2:	4770      	bx	lr
    28f4:	40002800 	.word	0x40002800

000028f8 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    28f8:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    28fa:	4b12      	ldr	r3, [pc, #72]	; (2944 <sound_init+0x4c>)
    28fc:	685a      	ldr	r2, [r3, #4]
    28fe:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    2902:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    2904:	685a      	ldr	r2, [r3, #4]
    2906:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    290a:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    290c:	220a      	movs	r2, #10
    290e:	4611      	mov	r1, r2
    2910:	480d      	ldr	r0, [pc, #52]	; (2948 <sound_init+0x50>)
    2912:	f7fe fe47 	bl	15a4 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    2916:	4a0d      	ldr	r2, [pc, #52]	; (294c <sound_init+0x54>)
    2918:	69d3      	ldr	r3, [r2, #28]
    291a:	f043 0301 	orr.w	r3, r3, #1
    291e:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2920:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2924:	2278      	movs	r2, #120	; 0x78
    2926:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    2928:	f44f 7280 	mov.w	r2, #256	; 0x100
    292c:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    292e:	2209      	movs	r2, #9
    2930:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    2932:	2100      	movs	r1, #0
    2934:	201c      	movs	r0, #28
    2936:	f7ff fc19 	bl	216c <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    293a:	201c      	movs	r0, #28
    293c:	f7ff fbb6 	bl	20ac <enable_interrupt>
    2940:	bd08      	pop	{r3, pc}
    2942:	bf00      	nop
    2944:	40010000 	.word	0x40010000
    2948:	40010c00 	.word	0x40010c00
    294c:	40021000 	.word	0x40021000

00002950 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2950:	4b07      	ldr	r3, [pc, #28]	; (2970 <tone+0x20>)
    2952:	fbb3 f0f0 	udiv	r0, r3, r0
    2956:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    295a:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    295c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    295e:	0852      	lsrs	r2, r2, #1
    2960:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    2962:	681a      	ldr	r2, [r3, #0]
    2964:	f042 0201 	orr.w	r2, r2, #1
    2968:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    296a:	4b02      	ldr	r3, [pc, #8]	; (2974 <tone+0x24>)
    296c:	8019      	strh	r1, [r3, #0]
    296e:	4770      	bx	lr
    2970:	006d3d32 	.word	0x006d3d32
    2974:	20004e98 	.word	0x20004e98

00002978 <beep>:
}

void beep(uint16_t duration){
    2978:	b508      	push	{r3, lr}
    tone(1000,duration);
    297a:	4601      	mov	r1, r0
    297c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2980:	f7ff ffe6 	bl	2950 <tone>
    2984:	bd08      	pop	{r3, pc}

00002986 <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    2986:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    298a:	681a      	ldr	r2, [r3, #0]
    298c:	f022 0201 	bic.w	r2, r2, #1
    2990:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    2992:	68da      	ldr	r2, [r3, #12]
    2994:	f022 0201 	bic.w	r2, r2, #1
    2998:	60da      	str	r2, [r3, #12]
    299a:	4770      	bx	lr

0000299c <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    299c:	b510      	push	{r4, lr}
    299e:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    29a0:	b289      	uxth	r1, r1
    29a2:	4b06      	ldr	r3, [pc, #24]	; (29bc <key_tone+0x20>)
    29a4:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    29a8:	f7ff ffd2 	bl	2950 <tone>
    if (wait_end) while (sound_timer);
    29ac:	b124      	cbz	r4, 29b8 <key_tone+0x1c>
    29ae:	4a04      	ldr	r2, [pc, #16]	; (29c0 <key_tone+0x24>)
    29b0:	8813      	ldrh	r3, [r2, #0]
    29b2:	b29b      	uxth	r3, r3
    29b4:	2b00      	cmp	r3, #0
    29b6:	d1fb      	bne.n	29b0 <key_tone+0x14>
    29b8:	bd10      	pop	{r4, pc}
    29ba:	bf00      	nop
    29bc:	00003d88 	.word	0x00003d88
    29c0:	20004e98 	.word	0x20004e98

000029c4 <noise>:
}

// produit un bruit 
void noise(int length){
    29c4:	b510      	push	{r4, lr}
    29c6:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    29c8:	4b07      	ldr	r3, [pc, #28]	; (29e8 <noise+0x24>)
    29ca:	6818      	ldr	r0, [r3, #0]
    29cc:	f7fd fcfc 	bl	3c8 <srand>
    tone(6000,length);
    29d0:	b2a1      	uxth	r1, r4
    29d2:	f241 7070 	movw	r0, #6000	; 0x1770
    29d6:	f7ff ffbb 	bl	2950 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    29da:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29de:	68d3      	ldr	r3, [r2, #12]
    29e0:	f043 0301 	orr.w	r3, r3, #1
    29e4:	60d3      	str	r3, [r2, #12]
    29e6:	bd10      	pop	{r4, pc}
    29e8:	20004e94 	.word	0x20004e94

000029ec <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    29ec:	4668      	mov	r0, sp
    29ee:	f020 0107 	bic.w	r1, r0, #7
    29f2:	468d      	mov	sp, r1
    29f4:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    29f6:	f7fd fced 	bl	3d4 <rand>
    29fa:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    29fe:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2a02:	6a13      	ldr	r3, [r2, #32]
    2a04:	bf14      	ite	ne
    2a06:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    2a0a:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    2a0e:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    2a10:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2a14:	6913      	ldr	r3, [r2, #16]
    2a16:	f023 0301 	bic.w	r3, r3, #1
    2a1a:	6113      	str	r3, [r2, #16]
}
    2a1c:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    2a20:	4685      	mov	sp, r0
    2a22:	4770      	bx	lr

00002a24 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    2a24:	6803      	ldr	r3, [r0, #0]
    2a26:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2a2a:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2a2c:	6803      	ldr	r3, [r0, #0]
    2a2e:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2a32:	6001      	str	r1, [r0, #0]
    2a34:	4770      	bx	lr

00002a36 <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2a36:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2a38:	4a2f      	ldr	r2, [pc, #188]	; (2af8 <spi_config_port+0xc2>)
    2a3a:	6993      	ldr	r3, [r2, #24]
    2a3c:	f043 0301 	orr.w	r3, r3, #1
    2a40:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2a42:	4b2e      	ldr	r3, [pc, #184]	; (2afc <spi_config_port+0xc6>)
    2a44:	4298      	cmp	r0, r3
    2a46:	d01a      	beq.n	2a7e <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2a48:	4a2b      	ldr	r2, [pc, #172]	; (2af8 <spi_config_port+0xc2>)
    2a4a:	6993      	ldr	r3, [r2, #24]
    2a4c:	f043 0308 	orr.w	r3, r3, #8
    2a50:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2a52:	4c2b      	ldr	r4, [pc, #172]	; (2b00 <spi_config_port+0xca>)
    2a54:	2203      	movs	r2, #3
    2a56:	2102      	movs	r1, #2
    2a58:	4620      	mov	r0, r4
    2a5a:	f7fe fda3 	bl	15a4 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2a5e:	220b      	movs	r2, #11
    2a60:	210d      	movs	r1, #13
    2a62:	4620      	mov	r0, r4
    2a64:	f7fe fd9e 	bl	15a4 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2a68:	2204      	movs	r2, #4
    2a6a:	210e      	movs	r1, #14
    2a6c:	4620      	mov	r0, r4
    2a6e:	f7fe fd99 	bl	15a4 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2a72:	220b      	movs	r2, #11
    2a74:	210f      	movs	r1, #15
    2a76:	4620      	mov	r0, r4
    2a78:	f7fe fd94 	bl	15a4 <config_pin>
    2a7c:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    2a7e:	b9c9      	cbnz	r1, 2ab4 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2a80:	6993      	ldr	r3, [r2, #24]
    2a82:	f043 0304 	orr.w	r3, r3, #4
    2a86:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2a88:	4c1e      	ldr	r4, [pc, #120]	; (2b04 <spi_config_port+0xce>)
    2a8a:	2203      	movs	r2, #3
    2a8c:	2104      	movs	r1, #4
    2a8e:	4620      	mov	r0, r4
    2a90:	f7fe fd88 	bl	15a4 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2a94:	220b      	movs	r2, #11
    2a96:	2105      	movs	r1, #5
    2a98:	4620      	mov	r0, r4
    2a9a:	f7fe fd83 	bl	15a4 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2a9e:	2204      	movs	r2, #4
    2aa0:	2106      	movs	r1, #6
    2aa2:	4620      	mov	r0, r4
    2aa4:	f7fe fd7e 	bl	15a4 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2aa8:	220b      	movs	r2, #11
    2aaa:	2107      	movs	r1, #7
    2aac:	4620      	mov	r0, r4
    2aae:	f7fe fd79 	bl	15a4 <config_pin>
    2ab2:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2ab4:	4a10      	ldr	r2, [pc, #64]	; (2af8 <spi_config_port+0xc2>)
    2ab6:	6993      	ldr	r3, [r2, #24]
    2ab8:	f043 030d 	orr.w	r3, r3, #13
    2abc:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2abe:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    2ac2:	6853      	ldr	r3, [r2, #4]
    2ac4:	f043 0301 	orr.w	r3, r3, #1
    2ac8:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2aca:	2203      	movs	r2, #3
    2acc:	210f      	movs	r1, #15
    2ace:	480d      	ldr	r0, [pc, #52]	; (2b04 <spi_config_port+0xce>)
    2ad0:	f7fe fd68 	bl	15a4 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2ad4:	4c0a      	ldr	r4, [pc, #40]	; (2b00 <spi_config_port+0xca>)
    2ad6:	220b      	movs	r2, #11
    2ad8:	2103      	movs	r1, #3
    2ada:	4620      	mov	r0, r4
    2adc:	f7fe fd62 	bl	15a4 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2ae0:	2204      	movs	r2, #4
    2ae2:	4611      	mov	r1, r2
    2ae4:	4620      	mov	r0, r4
    2ae6:	f7fe fd5d 	bl	15a4 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2aea:	220b      	movs	r2, #11
    2aec:	2105      	movs	r1, #5
    2aee:	4620      	mov	r0, r4
    2af0:	f7fe fd58 	bl	15a4 <config_pin>
    2af4:	bd10      	pop	{r4, pc}
    2af6:	bf00      	nop
    2af8:	40021000 	.word	0x40021000
    2afc:	40013000 	.word	0x40013000
    2b00:	40010c00 	.word	0x40010c00
    2b04:	40010800 	.word	0x40010800

00002b08 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2b08:	b570      	push	{r4, r5, r6, lr}
    2b0a:	4604      	mov	r4, r0
    2b0c:	460d      	mov	r5, r1
    2b0e:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2b10:	4619      	mov	r1, r3
    2b12:	f7ff ff90 	bl	2a36 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2b16:	4b0c      	ldr	r3, [pc, #48]	; (2b48 <spi_init+0x40>)
    2b18:	429c      	cmp	r4, r3
    2b1a:	d00e      	beq.n	2b3a <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2b1c:	4a0b      	ldr	r2, [pc, #44]	; (2b4c <spi_init+0x44>)
    2b1e:	69d3      	ldr	r3, [r2, #28]
    2b20:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2b24:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    2b26:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2b28:	4629      	mov	r1, r5
    2b2a:	4620      	mov	r0, r4
    2b2c:	f7ff ff7a 	bl	2a24 <spi_baudrate>
	_spi_enable(channel);
    2b30:	6823      	ldr	r3, [r4, #0]
    2b32:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2b36:	6023      	str	r3, [r4, #0]
    2b38:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2b3a:	4a04      	ldr	r2, [pc, #16]	; (2b4c <spi_init+0x44>)
    2b3c:	6993      	ldr	r3, [r2, #24]
    2b3e:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2b42:	6193      	str	r3, [r2, #24]
    2b44:	e7ef      	b.n	2b26 <spi_init+0x1e>
    2b46:	bf00      	nop
    2b48:	40013000 	.word	0x40013000
    2b4c:	40021000 	.word	0x40021000

00002b50 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2b50:	6883      	ldr	r3, [r0, #8]
    2b52:	f013 0f02 	tst.w	r3, #2
    2b56:	d0fb      	beq.n	2b50 <spi_send>
	channel->DR=b;
    2b58:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b5a:	6883      	ldr	r3, [r0, #8]
    2b5c:	f013 0f01 	tst.w	r3, #1
    2b60:	d0fb      	beq.n	2b5a <spi_send+0xa>
	return (uint8_t)channel->DR;
    2b62:	68c0      	ldr	r0, [r0, #12]
}
    2b64:	b2c0      	uxtb	r0, r0
    2b66:	4770      	bx	lr

00002b68 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2b68:	6883      	ldr	r3, [r0, #8]
    2b6a:	f013 0f02 	tst.w	r3, #2
    2b6e:	d0fb      	beq.n	2b68 <spi_receive>
	channel->DR=255;
    2b70:	23ff      	movs	r3, #255	; 0xff
    2b72:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b74:	6883      	ldr	r3, [r0, #8]
    2b76:	f013 0f01 	tst.w	r3, #1
    2b7a:	d0fb      	beq.n	2b74 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2b7c:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2b7e:	b2c0      	uxtb	r0, r0
    2b80:	4770      	bx	lr

00002b82 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2b82:	b14a      	cbz	r2, 2b98 <spi_send_block+0x16>
    2b84:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2b86:	f811 3b01 	ldrb.w	r3, [r1], #1
    2b8a:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2b8c:	6883      	ldr	r3, [r0, #8]
    2b8e:	f013 0f02 	tst.w	r3, #2
    2b92:	d0fb      	beq.n	2b8c <spi_send_block+0xa>
	while (count){
    2b94:	428a      	cmp	r2, r1
    2b96:	d1f6      	bne.n	2b86 <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2b98:	6883      	ldr	r3, [r0, #8]
    2b9a:	f013 0f80 	tst.w	r3, #128	; 0x80
    2b9e:	d1fb      	bne.n	2b98 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2ba0:	68c3      	ldr	r3, [r0, #12]
    2ba2:	4770      	bx	lr

00002ba4 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2ba4:	b16a      	cbz	r2, 2bc2 <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2ba6:	b410      	push	{r4}
    2ba8:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2baa:	2400      	movs	r4, #0
    2bac:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2bae:	6883      	ldr	r3, [r0, #8]
    2bb0:	f013 0f01 	tst.w	r3, #1
    2bb4:	d0fb      	beq.n	2bae <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2bb6:	68c3      	ldr	r3, [r0, #12]
    2bb8:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2bbc:	428a      	cmp	r2, r1
    2bbe:	d1f5      	bne.n	2bac <spi_receive_block+0x8>
		count--;
	}
}
    2bc0:	bc10      	pop	{r4}
    2bc2:	4770      	bx	lr

00002bc4 <reset_mcu>:
	_reset_mcu();
    2bc4:	4a01      	ldr	r2, [pc, #4]	; (2bcc <reset_mcu+0x8>)
    2bc6:	4b02      	ldr	r3, [pc, #8]	; (2bd0 <reset_mcu+0xc>)
    2bc8:	601a      	str	r2, [r3, #0]
    2bca:	bf00      	nop
    2bcc:	05fa0004 	.word	0x05fa0004
    2bd0:	e000ed0c 	.word	0xe000ed0c

00002bd4 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2bd4:	b508      	push	{r3, lr}
    2bd6:	460c      	mov	r4, r1
	print(msg);
    2bd8:	f000 f964 	bl	2ea4 <print>
	print("\nat address ");
    2bdc:	4813      	ldr	r0, [pc, #76]	; (2c2c <print_fault+0x58>)
    2bde:	f000 f961 	bl	2ea4 <print>
	if (adr) {
    2be2:	b9ec      	cbnz	r4, 2c20 <print_fault+0x4c>
	put_char(CR);
    2be4:	200d      	movs	r0, #13
    2be6:	f000 f8bf 	bl	2d68 <put_char>
	print("\nUFSR=");
    2bea:	4811      	ldr	r0, [pc, #68]	; (2c30 <print_fault+0x5c>)
    2bec:	f000 f95a 	bl	2ea4 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2bf0:	4c10      	ldr	r4, [pc, #64]	; (2c34 <print_fault+0x60>)
    2bf2:	6820      	ldr	r0, [r4, #0]
    2bf4:	2110      	movs	r1, #16
    2bf6:	40c8      	lsrs	r0, r1
    2bf8:	f000 f96f 	bl	2eda <print_int>
	print("\nBFSR=");
    2bfc:	480e      	ldr	r0, [pc, #56]	; (2c38 <print_fault+0x64>)
    2bfe:	f000 f951 	bl	2ea4 <print>
	print_int(CFSR->fsr.busFault,16);
    2c02:	6820      	ldr	r0, [r4, #0]
    2c04:	2110      	movs	r1, #16
    2c06:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2c0a:	f000 f966 	bl	2eda <print_int>
	print("\nMMFSR=");
    2c0e:	480b      	ldr	r0, [pc, #44]	; (2c3c <print_fault+0x68>)
    2c10:	f000 f948 	bl	2ea4 <print>
	print_int(CFSR->fsr.mmFault,16);
    2c14:	6820      	ldr	r0, [r4, #0]
    2c16:	2110      	movs	r1, #16
    2c18:	b2c0      	uxtb	r0, r0
    2c1a:	f000 f95e 	bl	2eda <print_int>
    2c1e:	e7fe      	b.n	2c1e <print_fault+0x4a>
		print_int(adr,16);
    2c20:	2110      	movs	r1, #16
    2c22:	4620      	mov	r0, r4
    2c24:	f000 f959 	bl	2eda <print_int>
    2c28:	e7dc      	b.n	2be4 <print_fault+0x10>
    2c2a:	bf00      	nop
    2c2c:	0000406c 	.word	0x0000406c
    2c30:	0000407c 	.word	0x0000407c
    2c34:	e000ed28 	.word	0xe000ed28
    2c38:	00004084 	.word	0x00004084
    2c3c:	0000408c 	.word	0x0000408c

00002c40 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2c40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2c44:	b083      	sub	sp, #12
    2c46:	9001      	str	r0, [sp, #4]
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2c48:	18cb      	adds	r3, r1, r3
    2c4a:	9300      	str	r3, [sp, #0]
    2c4c:	4299      	cmp	r1, r3
    2c4e:	da22      	bge.n	2c96 <draw_char+0x56>
    2c50:	460e      	mov	r6, r1
    2c52:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2c54:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2c58:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c5a:	f8df a040 	ldr.w	sl, [pc, #64]	; 2c9c <draw_char+0x5c>
		byte=*glyph++;
    2c5e:	f81b 8f01 	ldrb.w	r8, [fp, #1]!
		for (x0=x;x0<(x+w);x0++){
    2c62:	9c01      	ldr	r4, [sp, #4]
    2c64:	42bc      	cmp	r4, r7
    2c66:	da12      	bge.n	2c8e <draw_char+0x4e>
    2c68:	2580      	movs	r5, #128	; 0x80
			gfx_blit(x0,y0,c,BIT_SET);
    2c6a:	f04f 0904 	mov.w	r9, #4
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c6e:	ea18 0f05 	tst.w	r8, r5
    2c72:	bf14      	ite	ne
    2c74:	f89a 2001 	ldrbne.w	r2, [sl, #1]
    2c78:	f89a 2000 	ldrbeq.w	r2, [sl]
			gfx_blit(x0,y0,c,BIT_SET);
    2c7c:	464b      	mov	r3, r9
    2c7e:	4631      	mov	r1, r6
    2c80:	4620      	mov	r0, r4
    2c82:	f7fe fccf 	bl	1624 <gfx_blit>
			mask>>=1;
    2c86:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2c88:	3401      	adds	r4, #1
    2c8a:	42bc      	cmp	r4, r7
    2c8c:	d1ef      	bne.n	2c6e <draw_char+0x2e>
	for (y0=y;y0<(y+h);y0++){
    2c8e:	3601      	adds	r6, #1
    2c90:	9b00      	ldr	r3, [sp, #0]
    2c92:	429e      	cmp	r6, r3
    2c94:	d1e3      	bne.n	2c5e <draw_char+0x1e>
		}
	}
}
    2c96:	b003      	add	sp, #12
    2c98:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2c9c:	20000220 	.word	0x20000220

00002ca0 <font_color>:
	text_colors[FG]=color&0xf;
    2ca0:	f000 000f 	and.w	r0, r0, #15
    2ca4:	4b01      	ldr	r3, [pc, #4]	; (2cac <font_color+0xc>)
    2ca6:	7058      	strb	r0, [r3, #1]
    2ca8:	4770      	bx	lr
    2caa:	bf00      	nop
    2cac:	20000220 	.word	0x20000220

00002cb0 <bg_color>:
	text_colors[BG]=color&0xf;
    2cb0:	f000 000f 	and.w	r0, r0, #15
    2cb4:	4b01      	ldr	r3, [pc, #4]	; (2cbc <bg_color+0xc>)
    2cb6:	7018      	strb	r0, [r3, #0]
    2cb8:	4770      	bx	lr
    2cba:	bf00      	nop
    2cbc:	20000220 	.word	0x20000220

00002cc0 <select_font>:
	font=font_id;
    2cc0:	4b01      	ldr	r3, [pc, #4]	; (2cc8 <select_font+0x8>)
    2cc2:	7098      	strb	r0, [r3, #2]
    2cc4:	4770      	bx	lr
    2cc6:	bf00      	nop
    2cc8:	20000220 	.word	0x20000220

00002ccc <get_font>:
}
    2ccc:	4b01      	ldr	r3, [pc, #4]	; (2cd4 <get_font+0x8>)
    2cce:	7898      	ldrb	r0, [r3, #2]
    2cd0:	4770      	bx	lr
    2cd2:	bf00      	nop
    2cd4:	20000220 	.word	0x20000220

00002cd8 <new_line>:
void new_line(){
    2cd8:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2cda:	4b21      	ldr	r3, [pc, #132]	; (2d60 <new_line+0x88>)
    2cdc:	781b      	ldrb	r3, [r3, #0]
    2cde:	2b00      	cmp	r3, #0
    2ce0:	d138      	bne.n	2d54 <new_line+0x7c>
		xpos=0;
    2ce2:	2200      	movs	r2, #0
    2ce4:	4b1e      	ldr	r3, [pc, #120]	; (2d60 <new_line+0x88>)
    2ce6:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2ce8:	f000 fbf4 	bl	34d4 <get_video_params>
		switch (font){
    2cec:	4b1d      	ldr	r3, [pc, #116]	; (2d64 <new_line+0x8c>)
    2cee:	789b      	ldrb	r3, [r3, #2]
    2cf0:	2b01      	cmp	r3, #1
    2cf2:	d011      	beq.n	2d18 <new_line+0x40>
    2cf4:	b113      	cbz	r3, 2cfc <new_line+0x24>
    2cf6:	2b02      	cmp	r3, #2
    2cf8:	d01d      	beq.n	2d36 <new_line+0x5e>
    2cfa:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2cfc:	4b18      	ldr	r3, [pc, #96]	; (2d60 <new_line+0x88>)
    2cfe:	789b      	ldrb	r3, [r3, #2]
    2d00:	1d99      	adds	r1, r3, #6
    2d02:	89c2      	ldrh	r2, [r0, #14]
    2d04:	3a05      	subs	r2, #5
    2d06:	4291      	cmp	r1, r2
    2d08:	dc02      	bgt.n	2d10 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2d0a:	4a15      	ldr	r2, [pc, #84]	; (2d60 <new_line+0x88>)
    2d0c:	7091      	strb	r1, [r2, #2]
    2d0e:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2d10:	2006      	movs	r0, #6
    2d12:	f7fe fce7 	bl	16e4 <gfx_scroll_up>
    2d16:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2d18:	4b11      	ldr	r3, [pc, #68]	; (2d60 <new_line+0x88>)
    2d1a:	789b      	ldrb	r3, [r3, #2]
    2d1c:	f103 010a 	add.w	r1, r3, #10
    2d20:	89c2      	ldrh	r2, [r0, #14]
    2d22:	3a09      	subs	r2, #9
    2d24:	4291      	cmp	r1, r2
    2d26:	dc02      	bgt.n	2d2e <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2d28:	4a0d      	ldr	r2, [pc, #52]	; (2d60 <new_line+0x88>)
    2d2a:	7091      	strb	r1, [r2, #2]
    2d2c:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2d2e:	200a      	movs	r0, #10
    2d30:	f7fe fcd8 	bl	16e4 <gfx_scroll_up>
    2d34:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2d36:	4b0a      	ldr	r3, [pc, #40]	; (2d60 <new_line+0x88>)
    2d38:	789b      	ldrb	r3, [r3, #2]
    2d3a:	f103 0108 	add.w	r1, r3, #8
    2d3e:	89c2      	ldrh	r2, [r0, #14]
    2d40:	3a07      	subs	r2, #7
    2d42:	4291      	cmp	r1, r2
    2d44:	dc02      	bgt.n	2d4c <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2d46:	4a06      	ldr	r2, [pc, #24]	; (2d60 <new_line+0x88>)
    2d48:	7091      	strb	r1, [r2, #2]
    2d4a:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2d4c:	2008      	movs	r0, #8
    2d4e:	f7fe fcc9 	bl	16e4 <gfx_scroll_up>
    2d52:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    2d54:	210a      	movs	r1, #10
    2d56:	2000      	movs	r0, #0
    2d58:	f000 fd2a 	bl	37b0 <usart_putc>
    2d5c:	bd08      	pop	{r3, pc}
    2d5e:	bf00      	nop
    2d60:	200006b8 	.word	0x200006b8
    2d64:	20000220 	.word	0x20000220

00002d68 <put_char>:

void put_char(uint8_t c){
    2d68:	b530      	push	{r4, r5, lr}
    2d6a:	b083      	sub	sp, #12
	if (console==LOCAL){
    2d6c:	4b2e      	ldr	r3, [pc, #184]	; (2e28 <put_char+0xc0>)
    2d6e:	781b      	ldrb	r3, [r3, #0]
    2d70:	2b00      	cmp	r3, #0
    2d72:	d153      	bne.n	2e1c <put_char+0xb4>
		switch(font){
    2d74:	4b2d      	ldr	r3, [pc, #180]	; (2e2c <put_char+0xc4>)
    2d76:	789b      	ldrb	r3, [r3, #2]
    2d78:	2b01      	cmp	r3, #1
    2d7a:	d036      	beq.n	2dea <put_char+0x82>
    2d7c:	b1e3      	cbz	r3, 2db8 <put_char+0x50>
    2d7e:	2b02      	cmp	r3, #2
    2d80:	d150      	bne.n	2e24 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2d82:	f1a0 0320 	sub.w	r3, r0, #32
    2d86:	b2db      	uxtb	r3, r3
    2d88:	2b64      	cmp	r3, #100	; 0x64
    2d8a:	d84b      	bhi.n	2e24 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2d8c:	4c26      	ldr	r4, [pc, #152]	; (2e28 <put_char+0xc0>)
    2d8e:	78a1      	ldrb	r1, [r4, #2]
    2d90:	7865      	ldrb	r5, [r4, #1]
    2d92:	3820      	subs	r0, #32
    2d94:	4b26      	ldr	r3, [pc, #152]	; (2e30 <put_char+0xc8>)
    2d96:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2d9a:	9300      	str	r3, [sp, #0]
    2d9c:	2308      	movs	r3, #8
    2d9e:	2206      	movs	r2, #6
    2da0:	4628      	mov	r0, r5
    2da2:	f7ff ff4d 	bl	2c40 <draw_char>
				xpos+=CHAR_WIDTH;
    2da6:	7863      	ldrb	r3, [r4, #1]
    2da8:	3306      	adds	r3, #6
    2daa:	b2db      	uxtb	r3, r3
    2dac:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2dae:	2baf      	cmp	r3, #175	; 0xaf
    2db0:	d938      	bls.n	2e24 <put_char+0xbc>
					new_line();
    2db2:	f7ff ff91 	bl	2cd8 <new_line>
    2db6:	e035      	b.n	2e24 <put_char+0xbc>
			if (c<16){
    2db8:	280f      	cmp	r0, #15
    2dba:	d833      	bhi.n	2e24 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2dbc:	4c1a      	ldr	r4, [pc, #104]	; (2e28 <put_char+0xc0>)
    2dbe:	78a1      	ldrb	r1, [r4, #2]
    2dc0:	7865      	ldrb	r5, [r4, #1]
    2dc2:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2dc6:	4b1b      	ldr	r3, [pc, #108]	; (2e34 <put_char+0xcc>)
    2dc8:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dcc:	9300      	str	r3, [sp, #0]
    2dce:	2306      	movs	r3, #6
    2dd0:	2204      	movs	r2, #4
    2dd2:	4628      	mov	r0, r5
    2dd4:	f7ff ff34 	bl	2c40 <draw_char>
				xpos+=SHEX_WIDTH;
    2dd8:	7863      	ldrb	r3, [r4, #1]
    2dda:	3304      	adds	r3, #4
    2ddc:	b2db      	uxtb	r3, r3
    2dde:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2de0:	2bb1      	cmp	r3, #177	; 0xb1
    2de2:	d91f      	bls.n	2e24 <put_char+0xbc>
					new_line();
    2de4:	f7ff ff78 	bl	2cd8 <new_line>
    2de8:	e01c      	b.n	2e24 <put_char+0xbc>
			if (c<16){
    2dea:	280f      	cmp	r0, #15
    2dec:	d81a      	bhi.n	2e24 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2dee:	4c0e      	ldr	r4, [pc, #56]	; (2e28 <put_char+0xc0>)
    2df0:	78a1      	ldrb	r1, [r4, #2]
    2df2:	7865      	ldrb	r5, [r4, #1]
    2df4:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2df8:	4b0f      	ldr	r3, [pc, #60]	; (2e38 <put_char+0xd0>)
    2dfa:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dfe:	9300      	str	r3, [sp, #0]
    2e00:	230a      	movs	r3, #10
    2e02:	2208      	movs	r2, #8
    2e04:	4628      	mov	r0, r5
    2e06:	f7ff ff1b 	bl	2c40 <draw_char>
				xpos+=LHEX_WIDTH;
    2e0a:	7863      	ldrb	r3, [r4, #1]
    2e0c:	3308      	adds	r3, #8
    2e0e:	b2db      	uxtb	r3, r3
    2e10:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2e12:	2bad      	cmp	r3, #173	; 0xad
    2e14:	d906      	bls.n	2e24 <put_char+0xbc>
					new_line();
    2e16:	f7ff ff5f 	bl	2cd8 <new_line>
    2e1a:	e003      	b.n	2e24 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2e1c:	4601      	mov	r1, r0
    2e1e:	2000      	movs	r0, #0
    2e20:	f000 fcc6 	bl	37b0 <usart_putc>
	}
}
    2e24:	b003      	add	sp, #12
    2e26:	bd30      	pop	{r4, r5, pc}
    2e28:	200006b8 	.word	0x200006b8
    2e2c:	20000220 	.word	0x20000220
    2e30:	00003900 	.word	0x00003900
    2e34:	00003cc8 	.word	0x00003cc8
    2e38:	00003c28 	.word	0x00003c28

00002e3c <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2e3c:	4b01      	ldr	r3, [pc, #4]	; (2e44 <set_cursor+0x8>)
    2e3e:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2e40:	7099      	strb	r1, [r3, #2]
    2e42:	4770      	bx	lr
    2e44:	200006b8 	.word	0x200006b8

00002e48 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2e48:	4b03      	ldr	r3, [pc, #12]	; (2e58 <get_cursor+0x10>)
    2e4a:	785a      	ldrb	r2, [r3, #1]
    2e4c:	7898      	ldrb	r0, [r3, #2]
    2e4e:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2e52:	b280      	uxth	r0, r0
    2e54:	4770      	bx	lr
    2e56:	bf00      	nop
    2e58:	200006b8 	.word	0x200006b8

00002e5c <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2e5c:	4b0f      	ldr	r3, [pc, #60]	; (2e9c <cursor_left+0x40>)
    2e5e:	789b      	ldrb	r3, [r3, #2]
    2e60:	2b01      	cmp	r3, #1
    2e62:	d00b      	beq.n	2e7c <cursor_left+0x20>
    2e64:	b113      	cbz	r3, 2e6c <cursor_left+0x10>
    2e66:	2b02      	cmp	r3, #2
    2e68:	d010      	beq.n	2e8c <cursor_left+0x30>
    2e6a:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2e6c:	4b0c      	ldr	r3, [pc, #48]	; (2ea0 <cursor_left+0x44>)
    2e6e:	785b      	ldrb	r3, [r3, #1]
    2e70:	2b04      	cmp	r3, #4
    2e72:	d412      	bmi.n	2e9a <cursor_left+0x3e>
    2e74:	3b04      	subs	r3, #4
    2e76:	4a0a      	ldr	r2, [pc, #40]	; (2ea0 <cursor_left+0x44>)
    2e78:	7053      	strb	r3, [r2, #1]
    2e7a:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2e7c:	4b08      	ldr	r3, [pc, #32]	; (2ea0 <cursor_left+0x44>)
    2e7e:	785b      	ldrb	r3, [r3, #1]
    2e80:	2b08      	cmp	r3, #8
    2e82:	d40a      	bmi.n	2e9a <cursor_left+0x3e>
    2e84:	3b08      	subs	r3, #8
    2e86:	4a06      	ldr	r2, [pc, #24]	; (2ea0 <cursor_left+0x44>)
    2e88:	7053      	strb	r3, [r2, #1]
    2e8a:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2e8c:	4b04      	ldr	r3, [pc, #16]	; (2ea0 <cursor_left+0x44>)
    2e8e:	785b      	ldrb	r3, [r3, #1]
    2e90:	2b06      	cmp	r3, #6
    2e92:	d402      	bmi.n	2e9a <cursor_left+0x3e>
    2e94:	3b06      	subs	r3, #6
    2e96:	4a02      	ldr	r2, [pc, #8]	; (2ea0 <cursor_left+0x44>)
    2e98:	7053      	strb	r3, [r2, #1]
    2e9a:	4770      	bx	lr
    2e9c:	20000220 	.word	0x20000220
    2ea0:	200006b8 	.word	0x200006b8

00002ea4 <print>:
void print(const char* str){
    2ea4:	b510      	push	{r4, lr}
    2ea6:	4604      	mov	r4, r0
    while ((c=*str++)){
    2ea8:	e001      	b.n	2eae <print+0xa>
            new_line();
    2eaa:	f7ff ff15 	bl	2cd8 <new_line>
    while ((c=*str++)){
    2eae:	f814 0b01 	ldrb.w	r0, [r4], #1
    2eb2:	b158      	cbz	r0, 2ecc <print+0x28>
        switch(c){
    2eb4:	280a      	cmp	r0, #10
    2eb6:	d0f8      	beq.n	2eaa <print+0x6>
    2eb8:	280d      	cmp	r0, #13
    2eba:	d0f6      	beq.n	2eaa <print+0x6>
    2ebc:	2808      	cmp	r0, #8
    2ebe:	d002      	beq.n	2ec6 <print+0x22>
            put_char(c);
    2ec0:	f7ff ff52 	bl	2d68 <put_char>
    2ec4:	e7f3      	b.n	2eae <print+0xa>
            cursor_left();    
    2ec6:	f7ff ffc9 	bl	2e5c <cursor_left>
            break;
    2eca:	e7f0      	b.n	2eae <print+0xa>
}
    2ecc:	bd10      	pop	{r4, pc}

00002ece <println>:
void println(const char *text){
    2ece:	b508      	push	{r3, lr}
	print(text);
    2ed0:	f7ff ffe8 	bl	2ea4 <print>
	new_line();
    2ed4:	f7ff ff00 	bl	2cd8 <new_line>
    2ed8:	bd08      	pop	{r3, pc}

00002eda <print_int>:
void print_int(int i,uint8_t base){
    2eda:	b530      	push	{r4, r5, lr}
    2edc:	b085      	sub	sp, #20
    fmt[15]=0;
    2ede:	2300      	movs	r3, #0
    2ee0:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2ee4:	2320      	movs	r3, #32
    2ee6:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2eea:	1e02      	subs	r2, r0, #0
        i=-i;
    2eec:	bfba      	itte	lt
    2eee:	4252      	neglt	r2, r2
        sign=1;
    2ef0:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2ef2:	2500      	movge	r5, #0
    while (idx>1 && i){
    2ef4:	b1aa      	cbz	r2, 2f22 <print_int+0x48>
    2ef6:	f10d 040e 	add.w	r4, sp, #14
    2efa:	200e      	movs	r0, #14
        d=i%base;
    2efc:	fb92 f3f1 	sdiv	r3, r2, r1
    2f00:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2f04:	2b09      	cmp	r3, #9
    2f06:	bfc8      	it	gt
    2f08:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2f0a:	3801      	subs	r0, #1
    2f0c:	3330      	adds	r3, #48	; 0x30
    2f0e:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2f12:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2f16:	2801      	cmp	r0, #1
    2f18:	d007      	beq.n	2f2a <print_int+0x50>
    2f1a:	2a00      	cmp	r2, #0
    2f1c:	d1ee      	bne.n	2efc <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2f1e:	280e      	cmp	r0, #14
    2f20:	d103      	bne.n	2f2a <print_int+0x50>
    2f22:	2330      	movs	r3, #48	; 0x30
    2f24:	f88d 300d 	strb.w	r3, [sp, #13]
    2f28:	200d      	movs	r0, #13
    if (base==10 && sign){
    2f2a:	290a      	cmp	r1, #10
    2f2c:	d006      	beq.n	2f3c <print_int+0x62>
    }else if (base==16){
    2f2e:	2910      	cmp	r1, #16
    2f30:	d00d      	beq.n	2f4e <print_int+0x74>
    print(&fmt[idx]);
    2f32:	4468      	add	r0, sp
    2f34:	f7ff ffb6 	bl	2ea4 <print>
}
    2f38:	b005      	add	sp, #20
    2f3a:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2f3c:	2d00      	cmp	r5, #0
    2f3e:	d0f8      	beq.n	2f32 <print_int+0x58>
        fmt[--idx]='-';
    2f40:	3801      	subs	r0, #1
    2f42:	ab04      	add	r3, sp, #16
    2f44:	4403      	add	r3, r0
    2f46:	222d      	movs	r2, #45	; 0x2d
    2f48:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f4c:	e7f1      	b.n	2f32 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2f4e:	f010 0f01 	tst.w	r0, #1
    2f52:	d005      	beq.n	2f60 <print_int+0x86>
    2f54:	3801      	subs	r0, #1
    2f56:	ab04      	add	r3, sp, #16
    2f58:	4403      	add	r3, r0
    2f5a:	2230      	movs	r2, #48	; 0x30
    2f5c:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2f60:	3801      	subs	r0, #1
    2f62:	ab04      	add	r3, sp, #16
    2f64:	4403      	add	r3, r0
    2f66:	2224      	movs	r2, #36	; 0x24
    2f68:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f6c:	e7e1      	b.n	2f32 <print_int+0x58>

00002f6e <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2f6e:	b508      	push	{r3, lr}
	print("press button");
    2f70:	4801      	ldr	r0, [pc, #4]	; (2f78 <prompt_btn+0xa>)
    2f72:	f7ff ff97 	bl	2ea4 <print>
    2f76:	bd08      	pop	{r3, pc}
    2f78:	000040d8 	.word	0x000040d8

00002f7c <clear_screen>:
}

void clear_screen(){
    2f7c:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2f7e:	4b07      	ldr	r3, [pc, #28]	; (2f9c <clear_screen+0x20>)
    2f80:	781b      	ldrb	r3, [r3, #0]
    2f82:	b123      	cbz	r3, 2f8e <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    2f84:	210c      	movs	r1, #12
    2f86:	2000      	movs	r0, #0
    2f88:	f000 fc12 	bl	37b0 <usart_putc>
    2f8c:	bd08      	pop	{r3, pc}
		gfx_cls();
    2f8e:	f7fe fb95 	bl	16bc <gfx_cls>
		xpos=0;
    2f92:	4b02      	ldr	r3, [pc, #8]	; (2f9c <clear_screen+0x20>)
    2f94:	2200      	movs	r2, #0
    2f96:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2f98:	709a      	strb	r2, [r3, #2]
    2f9a:	bd08      	pop	{r3, pc}
    2f9c:	200006b8 	.word	0x200006b8

00002fa0 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2fa0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x,y;
	uint8_t color=show?15:0;
    2fa2:	2800      	cmp	r0, #0
    2fa4:	bf14      	ite	ne
    2fa6:	260f      	movne	r6, #15
    2fa8:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2faa:	4b0a      	ldr	r3, [pc, #40]	; (2fd4 <show_cursor+0x34>)
    2fac:	785c      	ldrb	r4, [r3, #1]
    2fae:	1da3      	adds	r3, r4, #6
    2fb0:	429c      	cmp	r4, r3
    2fb2:	da0d      	bge.n	2fd0 <show_cursor+0x30>
			gfx_blit(x,ypos+CHAR_HEIGHT-1,color,BIT_SET);
    2fb4:	4d07      	ldr	r5, [pc, #28]	; (2fd4 <show_cursor+0x34>)
    2fb6:	2704      	movs	r7, #4
    2fb8:	78a9      	ldrb	r1, [r5, #2]
    2fba:	463b      	mov	r3, r7
    2fbc:	4632      	mov	r2, r6
    2fbe:	3107      	adds	r1, #7
    2fc0:	4620      	mov	r0, r4
    2fc2:	f7fe fb2f 	bl	1624 <gfx_blit>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2fc6:	3401      	adds	r4, #1
    2fc8:	786b      	ldrb	r3, [r5, #1]
    2fca:	3306      	adds	r3, #6
    2fcc:	42a3      	cmp	r3, r4
    2fce:	dcf3      	bgt.n	2fb8 <show_cursor+0x18>
    2fd0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    2fd2:	bf00      	nop
    2fd4:	200006b8 	.word	0x200006b8

00002fd8 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2fd8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2fdc:	f000 fa7a 	bl	34d4 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fe0:	4b0c      	ldr	r3, [pc, #48]	; (3014 <clear_line+0x3c>)
    2fe2:	789c      	ldrb	r4, [r3, #2]
    2fe4:	f104 0308 	add.w	r3, r4, #8
    2fe8:	429c      	cmp	r4, r3
    2fea:	da10      	bge.n	300e <clear_line+0x36>
    2fec:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fee:	f8df 8028 	ldr.w	r8, [pc, #40]	; 3018 <clear_line+0x40>
    2ff2:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ff4:	4e07      	ldr	r6, [pc, #28]	; (3014 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2ff6:	7a28      	ldrb	r0, [r5, #8]
    2ff8:	463a      	mov	r2, r7
    2ffa:	4601      	mov	r1, r0
    2ffc:	fb04 8000 	mla	r0, r4, r0, r8
    3000:	f7fe fa27 	bl	1452 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    3004:	3401      	adds	r4, #1
    3006:	78b3      	ldrb	r3, [r6, #2]
    3008:	3308      	adds	r3, #8
    300a:	42a3      	cmp	r3, r4
    300c:	dcf3      	bgt.n	2ff6 <clear_line+0x1e>
    300e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    3012:	bf00      	nop
    3014:	200006b8 	.word	0x200006b8
    3018:	20002730 	.word	0x20002730

0000301c <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    301c:	4b01      	ldr	r3, [pc, #4]	; (3024 <select_console+0x8>)
    301e:	7018      	strb	r0, [r3, #0]
    3020:	4770      	bx	lr
    3022:	bf00      	nop
    3024:	200006b8 	.word	0x200006b8

00003028 <get_char>:
}

//read a character from serial port
char get_char(){
    3028:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    302a:	2400      	movs	r4, #0
    302c:	4620      	mov	r0, r4
    302e:	f000 fb8d 	bl	374c <usart_getc>
    3032:	2800      	cmp	r0, #0
    3034:	d0fa      	beq.n	302c <get_char+0x4>
	return c;
}
    3036:	bd10      	pop	{r4, pc}

00003038 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    3038:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    303c:	4c31      	ldr	r4, [pc, #196]	; (3104 <tvout_init+0xcc>)
    303e:	4b32      	ldr	r3, [pc, #200]	; (3108 <tvout_init+0xd0>)
    3040:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    3042:	4a32      	ldr	r2, [pc, #200]	; (310c <tvout_init+0xd4>)
    3044:	4b32      	ldr	r3, [pc, #200]	; (3110 <tvout_init+0xd8>)
    3046:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    3048:	220a      	movs	r2, #10
    304a:	2108      	movs	r1, #8
    304c:	4620      	mov	r0, r4
    304e:	f7fe faa9 	bl	15a4 <config_pin>
    PORTA->ODR=0;
    3052:	2500      	movs	r5, #0
    3054:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    3056:	4e2f      	ldr	r6, [pc, #188]	; (3114 <tvout_init+0xdc>)
    3058:	69b3      	ldr	r3, [r6, #24]
    305a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    305e:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    3060:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    3064:	f04f 0878 	mov.w	r8, #120	; 0x78
    3068:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    306c:	2301      	movs	r3, #1
    306e:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    3070:	2784      	movs	r7, #132	; 0x84
    3072:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    3074:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3078:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    307a:	f44f 73a8 	mov.w	r3, #336	; 0x150
    307e:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    3080:	f240 1365 	movw	r3, #357	; 0x165
    3084:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    3086:	6963      	ldr	r3, [r4, #20]
    3088:	f043 0301 	orr.w	r3, r3, #1
    308c:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    308e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    3092:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    3094:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    3096:	68e3      	ldr	r3, [r4, #12]
    3098:	f043 0301 	orr.w	r3, r3, #1
    309c:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    309e:	4629      	mov	r1, r5
    30a0:	2019      	movs	r0, #25
    30a2:	f7ff f863 	bl	216c <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    30a6:	4629      	mov	r1, r5
    30a8:	201b      	movs	r0, #27
    30aa:	f7ff f85f 	bl	216c <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    30ae:	2019      	movs	r0, #25
    30b0:	f7fe fffc 	bl	20ac <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    30b4:	201b      	movs	r0, #27
    30b6:	f7fe fff9 	bl	20ac <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    30ba:	6823      	ldr	r3, [r4, #0]
    30bc:	f043 0301 	orr.w	r3, r3, #1
    30c0:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    30c2:	220a      	movs	r2, #10
    30c4:	4629      	mov	r1, r5
    30c6:	4814      	ldr	r0, [pc, #80]	; (3118 <tvout_init+0xe0>)
    30c8:	f7fe fa6c 	bl	15a4 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    30cc:	69f3      	ldr	r3, [r6, #28]
    30ce:	f043 0302 	orr.w	r3, r3, #2
    30d2:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    30d4:	4b11      	ldr	r3, [pc, #68]	; (311c <tvout_init+0xe4>)
    30d6:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    30da:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    30dc:	2213      	movs	r2, #19
    30de:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    30e0:	220a      	movs	r2, #10
    30e2:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    30e4:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    30e6:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    30ea:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    30ec:	695a      	ldr	r2, [r3, #20]
    30ee:	f042 0201 	orr.w	r2, r2, #1
    30f2:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    30f4:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    30f6:	681a      	ldr	r2, [r3, #0]
    30f8:	f042 0201 	orr.w	r2, r2, #1
    30fc:	601a      	str	r2, [r3, #0]
    30fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    3102:	bf00      	nop
    3104:	40010800 	.word	0x40010800
    3108:	88883333 	.word	0x88883333
    310c:	84484444 	.word	0x84484444
    3110:	40010804 	.word	0x40010804
    3114:	40021000 	.word	0x40021000
    3118:	40010c00 	.word	0x40010c00
    311c:	40000400 	.word	0x40000400

00003120 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    3120:	4668      	mov	r0, sp
    3122:	f020 0107 	bic.w	r1, r0, #7
    3126:	468d      	mov	sp, r1
    3128:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    312a:	4a2f      	ldr	r2, [pc, #188]	; (31e8 <TV_OUT_handler+0xc8>)
    312c:	6a13      	ldr	r3, [r2, #32]
    312e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3132:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    3134:	492d      	ldr	r1, [pc, #180]	; (31ec <TV_OUT_handler+0xcc>)
    3136:	f240 2209 	movw	r2, #521	; 0x209
    313a:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    313c:	4293      	cmp	r3, r2
    313e:	d9fc      	bls.n	313a <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    3140:	4a29      	ldr	r2, [pc, #164]	; (31e8 <TV_OUT_handler+0xc8>)
    3142:	6a13      	ldr	r3, [r2, #32]
    3144:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3148:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    314a:	4b29      	ldr	r3, [pc, #164]	; (31f0 <TV_OUT_handler+0xd0>)
    314c:	881d      	ldrh	r5, [r3, #0]
    314e:	b2ad      	uxth	r5, r5
    3150:	4b28      	ldr	r3, [pc, #160]	; (31f4 <TV_OUT_handler+0xd4>)
    3152:	7818      	ldrb	r0, [r3, #0]
    3154:	785a      	ldrb	r2, [r3, #1]
    3156:	fb95 f5f2 	sdiv	r5, r5, r2
    315a:	4a27      	ldr	r2, [pc, #156]	; (31f8 <TV_OUT_handler+0xd8>)
    315c:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    3160:	8859      	ldrh	r1, [r3, #2]
    3162:	4a22      	ldr	r2, [pc, #136]	; (31ec <TV_OUT_handler+0xcc>)
    3164:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3166:	428b      	cmp	r3, r1
    3168:	d3fc      	bcc.n	3164 <TV_OUT_handler+0x44>
    _jitter_cancel();
    316a:	4b24      	ldr	r3, [pc, #144]	; (31fc <TV_OUT_handler+0xdc>)
    316c:	461a      	mov	r2, r3
    316e:	6812      	ldr	r2, [r2, #0]
    3170:	f002 0207 	and.w	r2, r2, #7
    3174:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3178:	4497      	add	pc, r2
    317a:	bf00      	nop
    317c:	bf00      	nop
    317e:	bf00      	nop
    3180:	bf00      	nop
    3182:	bf00      	nop
    3184:	bf00      	nop
    3186:	bf00      	nop
    3188:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    318a:	4a17      	ldr	r2, [pc, #92]	; (31e8 <TV_OUT_handler+0xc8>)
    318c:	6a13      	ldr	r3, [r2, #32]
    318e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3192:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    3194:	b1b0      	cbz	r0, 31c4 <TV_OUT_handler+0xa4>
    3196:	462b      	mov	r3, r5
        _pixel_delay(pixel_delay);
    3198:	4916      	ldr	r1, [pc, #88]	; (31f4 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    319a:	4819      	ldr	r0, [pc, #100]	; (3200 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    319c:	790c      	ldrb	r4, [r1, #4]
    319e:	4622      	mov	r2, r4
    31a0:	3a01      	subs	r2, #1
    31a2:	d1fd      	bne.n	31a0 <TV_OUT_handler+0x80>
        *video_port=(*video_data)>>4;
    31a4:	781a      	ldrb	r2, [r3, #0]
    31a6:	0912      	lsrs	r2, r2, #4
    31a8:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    31aa:	790c      	ldrb	r4, [r1, #4]
    31ac:	4622      	mov	r2, r4
    31ae:	3a01      	subs	r2, #1
    31b0:	d1fd      	bne.n	31ae <TV_OUT_handler+0x8e>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    31b2:	f813 2b01 	ldrb.w	r2, [r3], #1
    31b6:	f002 020f 	and.w	r2, r2, #15
    31ba:	8002      	strh	r2, [r0, #0]
    for (i=0;i<byte_per_row;i++){
    31bc:	1b5c      	subs	r4, r3, r5
    31be:	780a      	ldrb	r2, [r1, #0]
    31c0:	4294      	cmp	r4, r2
    31c2:	d3eb      	bcc.n	319c <TV_OUT_handler+0x7c>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
    }
    PORTA->ODR=0;
    31c4:	2200      	movs	r2, #0
    31c6:	4b0f      	ldr	r3, [pc, #60]	; (3204 <TV_OUT_handler+0xe4>)
    31c8:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    31ca:	4a07      	ldr	r2, [pc, #28]	; (31e8 <TV_OUT_handler+0xc8>)
    31cc:	6a13      	ldr	r3, [r2, #32]
    31ce:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    31d2:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    31d4:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    31d8:	6913      	ldr	r3, [r2, #16]
    31da:	f023 0304 	bic.w	r3, r3, #4
    31de:	6113      	str	r3, [r2, #16]
}
    31e0:	bc31      	pop	{r0, r4, r5}
    31e2:	4685      	mov	sp, r0
    31e4:	4770      	bx	lr
    31e6:	bf00      	nop
    31e8:	40000400 	.word	0x40000400
    31ec:	40012c00 	.word	0x40012c00
    31f0:	200006bc 	.word	0x200006bc
    31f4:	20000224 	.word	0x20000224
    31f8:	20002730 	.word	0x20002730
    31fc:	40012c24 	.word	0x40012c24
    3200:	4001080c 	.word	0x4001080c
    3204:	40010800 	.word	0x40010800

00003208 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    3208:	4668      	mov	r0, sp
    320a:	f020 0107 	bic.w	r1, r0, #7
    320e:	468d      	mov	sp, r1
    3210:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    3212:	4a8d      	ldr	r2, [pc, #564]	; (3448 <TV_SYNC_handler+0x240>)
    3214:	8853      	ldrh	r3, [r2, #2]
    3216:	3301      	adds	r3, #1
    3218:	b29b      	uxth	r3, r3
    321a:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    321c:	498b      	ldr	r1, [pc, #556]	; (344c <TV_SYNC_handler+0x244>)
    321e:	680b      	ldr	r3, [r1, #0]
    3220:	3301      	adds	r3, #1
    3222:	600b      	str	r3, [r1, #0]
    switch (task){
    3224:	8893      	ldrh	r3, [r2, #4]
    3226:	b29b      	uxth	r3, r3
    3228:	2b09      	cmp	r3, #9
    322a:	d87e      	bhi.n	332a <TV_SYNC_handler+0x122>
    322c:	e8df f013 	tbh	[pc, r3, lsl #1]
    3230:	002a000a 	.word	0x002a000a
    3234:	006b0048 	.word	0x006b0048
    3238:	008e0086 	.word	0x008e0086
    323c:	00b200a3 	.word	0x00b200a3
    3240:	00eb00cf 	.word	0x00eb00cf
    case PRE_SYNC:
        if (!slice){
    3244:	4b80      	ldr	r3, [pc, #512]	; (3448 <TV_SYNC_handler+0x240>)
    3246:	881b      	ldrh	r3, [r3, #0]
    3248:	b29b      	uxth	r3, r3
    324a:	b17b      	cbz	r3, 326c <TV_SYNC_handler+0x64>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    324c:	4a7e      	ldr	r2, [pc, #504]	; (3448 <TV_SYNC_handler+0x240>)
    324e:	8813      	ldrh	r3, [r2, #0]
    3250:	3301      	adds	r3, #1
    3252:	b29b      	uxth	r3, r3
    3254:	8013      	strh	r3, [r2, #0]
    3256:	8813      	ldrh	r3, [r2, #0]
    3258:	b29b      	uxth	r3, r3
    325a:	2b06      	cmp	r3, #6
    325c:	d165      	bne.n	332a <TV_SYNC_handler+0x122>
    325e:	2300      	movs	r3, #0
    3260:	8013      	strh	r3, [r2, #0]
    3262:	8893      	ldrh	r3, [r2, #4]
    3264:	3301      	adds	r3, #1
    3266:	b29b      	uxth	r3, r3
    3268:	8093      	strh	r3, [r2, #4]
    326a:	e05e      	b.n	332a <TV_SYNC_handler+0x122>
            TMR1->ARR=SYNC_LINE;
    326c:	4b78      	ldr	r3, [pc, #480]	; (3450 <TV_SYNC_handler+0x248>)
    326e:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3272:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3274:	22a4      	movs	r2, #164	; 0xa4
    3276:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3278:	4a73      	ldr	r2, [pc, #460]	; (3448 <TV_SYNC_handler+0x240>)
    327a:	8813      	ldrh	r3, [r2, #0]
    327c:	3301      	adds	r3, #1
    327e:	b29b      	uxth	r3, r3
    3280:	8013      	strh	r3, [r2, #0]
    3282:	e052      	b.n	332a <TV_SYNC_handler+0x122>
        }
        break;
    case VSYNC:
        if (!slice){
    3284:	4b70      	ldr	r3, [pc, #448]	; (3448 <TV_SYNC_handler+0x240>)
    3286:	881b      	ldrh	r3, [r3, #0]
    3288:	b29b      	uxth	r3, r3
    328a:	b17b      	cbz	r3, 32ac <TV_SYNC_handler+0xa4>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    328c:	4a6e      	ldr	r2, [pc, #440]	; (3448 <TV_SYNC_handler+0x240>)
    328e:	8813      	ldrh	r3, [r2, #0]
    3290:	3301      	adds	r3, #1
    3292:	b29b      	uxth	r3, r3
    3294:	8013      	strh	r3, [r2, #0]
    3296:	8813      	ldrh	r3, [r2, #0]
    3298:	b29b      	uxth	r3, r3
    329a:	2b06      	cmp	r3, #6
    329c:	d145      	bne.n	332a <TV_SYNC_handler+0x122>
    329e:	2300      	movs	r3, #0
    32a0:	8013      	strh	r3, [r2, #0]
    32a2:	8893      	ldrh	r3, [r2, #4]
    32a4:	3301      	adds	r3, #1
    32a6:	b29b      	uxth	r3, r3
    32a8:	8093      	strh	r3, [r2, #4]
    32aa:	e03e      	b.n	332a <TV_SYNC_handler+0x122>
            TMR1->CCR1=SYNC_PULSE;
    32ac:	f240 7294 	movw	r2, #1940	; 0x794
    32b0:	4b67      	ldr	r3, [pc, #412]	; (3450 <TV_SYNC_handler+0x248>)
    32b2:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32b4:	4a64      	ldr	r2, [pc, #400]	; (3448 <TV_SYNC_handler+0x240>)
    32b6:	8813      	ldrh	r3, [r2, #0]
    32b8:	3301      	adds	r3, #1
    32ba:	b29b      	uxth	r3, r3
    32bc:	8013      	strh	r3, [r2, #0]
    32be:	e034      	b.n	332a <TV_SYNC_handler+0x122>
        }
        break;
    case POST_SYNC:
        if (!slice){
    32c0:	4b61      	ldr	r3, [pc, #388]	; (3448 <TV_SYNC_handler+0x240>)
    32c2:	881b      	ldrh	r3, [r3, #0]
    32c4:	b29b      	uxth	r3, r3
    32c6:	b153      	cbz	r3, 32de <TV_SYNC_handler+0xd6>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==5){
    32c8:	4b5f      	ldr	r3, [pc, #380]	; (3448 <TV_SYNC_handler+0x240>)
    32ca:	881b      	ldrh	r3, [r3, #0]
    32cc:	b29b      	uxth	r3, r3
    32ce:	2b05      	cmp	r3, #5
    32d0:	d00e      	beq.n	32f0 <TV_SYNC_handler+0xe8>
            scan_line=9;
            if ((flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    32d2:	4a5d      	ldr	r2, [pc, #372]	; (3448 <TV_SYNC_handler+0x240>)
    32d4:	8813      	ldrh	r3, [r2, #0]
    32d6:	3301      	adds	r3, #1
    32d8:	b29b      	uxth	r3, r3
    32da:	8013      	strh	r3, [r2, #0]
            break;
    32dc:	e025      	b.n	332a <TV_SYNC_handler+0x122>
            TMR1->CCR1=SERRATION;    
    32de:	22a4      	movs	r2, #164	; 0xa4
    32e0:	4b5b      	ldr	r3, [pc, #364]	; (3450 <TV_SYNC_handler+0x248>)
    32e2:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32e4:	4a58      	ldr	r2, [pc, #352]	; (3448 <TV_SYNC_handler+0x240>)
    32e6:	8813      	ldrh	r3, [r2, #0]
    32e8:	3301      	adds	r3, #1
    32ea:	b29b      	uxth	r3, r3
    32ec:	8013      	strh	r3, [r2, #0]
            break;
    32ee:	e01c      	b.n	332a <TV_SYNC_handler+0x122>
            task++;
    32f0:	4a55      	ldr	r2, [pc, #340]	; (3448 <TV_SYNC_handler+0x240>)
    32f2:	8893      	ldrh	r3, [r2, #4]
    32f4:	3301      	adds	r3, #1
    32f6:	b29b      	uxth	r3, r3
    32f8:	8093      	strh	r3, [r2, #4]
            scan_line=9;
    32fa:	2309      	movs	r3, #9
    32fc:	8053      	strh	r3, [r2, #2]
            if ((flags&F_EVEN)){
    32fe:	88d3      	ldrh	r3, [r2, #6]
    3300:	f013 0f01 	tst.w	r3, #1
    3304:	d111      	bne.n	332a <TV_SYNC_handler+0x122>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    3306:	4b52      	ldr	r3, [pc, #328]	; (3450 <TV_SYNC_handler+0x248>)
    3308:	f241 12c5 	movw	r2, #4549	; 0x11c5
    330c:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    330e:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3312:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    3314:	4a4c      	ldr	r2, [pc, #304]	; (3448 <TV_SYNC_handler+0x240>)
    3316:	88d3      	ldrh	r3, [r2, #6]
    3318:	f023 0302 	bic.w	r3, r3, #2
    331c:	041b      	lsls	r3, r3, #16
    331e:	0c1b      	lsrs	r3, r3, #16
    3320:	80d3      	strh	r3, [r2, #6]
        task++;
    3322:	8893      	ldrh	r3, [r2, #4]
    3324:	3301      	adds	r3, #1
    3326:	b29b      	uxth	r3, r3
    3328:	8093      	strh	r3, [r2, #4]
            task=0;
        }
      
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    332a:	4a49      	ldr	r2, [pc, #292]	; (3450 <TV_SYNC_handler+0x248>)
    332c:	6913      	ldr	r3, [r2, #16]
    332e:	f023 0301 	bic.w	r3, r3, #1
    3332:	6113      	str	r3, [r2, #16]
}
    3334:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    3338:	4685      	mov	sp, r0
    333a:	4770      	bx	lr
        read_gamepad();
    333c:	f7fd ff14 	bl	1168 <read_gamepad>
        task++;
    3340:	4a41      	ldr	r2, [pc, #260]	; (3448 <TV_SYNC_handler+0x240>)
    3342:	8893      	ldrh	r3, [r2, #4]
    3344:	3301      	adds	r3, #1
    3346:	b29b      	uxth	r3, r3
    3348:	8093      	strh	r3, [r2, #4]
        break;    
    334a:	e7ee      	b.n	332a <TV_SYNC_handler+0x122>
        if (sound_timer){
    334c:	4b41      	ldr	r3, [pc, #260]	; (3454 <TV_SYNC_handler+0x24c>)
    334e:	881b      	ldrh	r3, [r3, #0]
    3350:	b29b      	uxth	r3, r3
    3352:	b13b      	cbz	r3, 3364 <TV_SYNC_handler+0x15c>
            sound_timer--;
    3354:	4a3f      	ldr	r2, [pc, #252]	; (3454 <TV_SYNC_handler+0x24c>)
    3356:	8813      	ldrh	r3, [r2, #0]
    3358:	3b01      	subs	r3, #1
    335a:	b29b      	uxth	r3, r3
    335c:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    335e:	8813      	ldrh	r3, [r2, #0]
    3360:	b29b      	uxth	r3, r3
    3362:	b12b      	cbz	r3, 3370 <TV_SYNC_handler+0x168>
        task++;
    3364:	4a38      	ldr	r2, [pc, #224]	; (3448 <TV_SYNC_handler+0x240>)
    3366:	8893      	ldrh	r3, [r2, #4]
    3368:	3301      	adds	r3, #1
    336a:	b29b      	uxth	r3, r3
    336c:	8093      	strh	r3, [r2, #4]
        break;    
    336e:	e7dc      	b.n	332a <TV_SYNC_handler+0x122>
                sound_stop();
    3370:	f7ff fb09 	bl	2986 <sound_stop>
    3374:	e7f6      	b.n	3364 <TV_SYNC_handler+0x15c>
        if (game_timer){
    3376:	4b38      	ldr	r3, [pc, #224]	; (3458 <TV_SYNC_handler+0x250>)
    3378:	881b      	ldrh	r3, [r3, #0]
    337a:	b29b      	uxth	r3, r3
    337c:	b123      	cbz	r3, 3388 <TV_SYNC_handler+0x180>
            game_timer--;
    337e:	4a36      	ldr	r2, [pc, #216]	; (3458 <TV_SYNC_handler+0x250>)
    3380:	8813      	ldrh	r3, [r2, #0]
    3382:	3b01      	subs	r3, #1
    3384:	b29b      	uxth	r3, r3
    3386:	8013      	strh	r3, [r2, #0]
        task++;
    3388:	4a2f      	ldr	r2, [pc, #188]	; (3448 <TV_SYNC_handler+0x240>)
    338a:	8893      	ldrh	r3, [r2, #4]
    338c:	3301      	adds	r3, #1
    338e:	b29b      	uxth	r3, r3
    3390:	8093      	strh	r3, [r2, #4]
        break;
    3392:	e7ca      	b.n	332a <TV_SYNC_handler+0x122>
        if (scan_line==video_start){
    3394:	4b2c      	ldr	r3, [pc, #176]	; (3448 <TV_SYNC_handler+0x240>)
    3396:	885b      	ldrh	r3, [r3, #2]
    3398:	b29b      	uxth	r3, r3
    339a:	4a30      	ldr	r2, [pc, #192]	; (345c <TV_SYNC_handler+0x254>)
    339c:	88d2      	ldrh	r2, [r2, #6]
    339e:	429a      	cmp	r2, r3
    33a0:	d1c3      	bne.n	332a <TV_SYNC_handler+0x122>
            TMR1->SR&=~TMR_SR_CC2IF;
    33a2:	4b2b      	ldr	r3, [pc, #172]	; (3450 <TV_SYNC_handler+0x248>)
    33a4:	691a      	ldr	r2, [r3, #16]
    33a6:	f022 0204 	bic.w	r2, r2, #4
    33aa:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    33ac:	68da      	ldr	r2, [r3, #12]
    33ae:	f042 0204 	orr.w	r2, r2, #4
    33b2:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    33b4:	4b24      	ldr	r3, [pc, #144]	; (3448 <TV_SYNC_handler+0x240>)
    33b6:	88da      	ldrh	r2, [r3, #6]
    33b8:	b292      	uxth	r2, r2
    33ba:	f042 0204 	orr.w	r2, r2, #4
    33be:	80da      	strh	r2, [r3, #6]
            task++;
    33c0:	889a      	ldrh	r2, [r3, #4]
    33c2:	3201      	adds	r2, #1
    33c4:	b292      	uxth	r2, r2
    33c6:	809a      	strh	r2, [r3, #4]
            slice=0;
    33c8:	2200      	movs	r2, #0
    33ca:	801a      	strh	r2, [r3, #0]
    33cc:	e7ad      	b.n	332a <TV_SYNC_handler+0x122>
        slice++;
    33ce:	4a1e      	ldr	r2, [pc, #120]	; (3448 <TV_SYNC_handler+0x240>)
    33d0:	8813      	ldrh	r3, [r2, #0]
    33d2:	3301      	adds	r3, #1
    33d4:	b29b      	uxth	r3, r3
    33d6:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    33d8:	8853      	ldrh	r3, [r2, #2]
    33da:	b29b      	uxth	r3, r3
    33dc:	4a1f      	ldr	r2, [pc, #124]	; (345c <TV_SYNC_handler+0x254>)
    33de:	8912      	ldrh	r2, [r2, #8]
    33e0:	429a      	cmp	r2, r3
    33e2:	d1a2      	bne.n	332a <TV_SYNC_handler+0x122>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    33e4:	4a1a      	ldr	r2, [pc, #104]	; (3450 <TV_SYNC_handler+0x248>)
    33e6:	68d3      	ldr	r3, [r2, #12]
    33e8:	f023 0304 	bic.w	r3, r3, #4
    33ec:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    33ee:	4a16      	ldr	r2, [pc, #88]	; (3448 <TV_SYNC_handler+0x240>)
    33f0:	88d3      	ldrh	r3, [r2, #6]
    33f2:	f023 0304 	bic.w	r3, r3, #4
    33f6:	041b      	lsls	r3, r3, #16
    33f8:	0c1b      	lsrs	r3, r3, #16
    33fa:	80d3      	strh	r3, [r2, #6]
            task++;
    33fc:	8893      	ldrh	r3, [r2, #4]
    33fe:	3301      	adds	r3, #1
    3400:	b29b      	uxth	r3, r3
    3402:	8093      	strh	r3, [r2, #4]
    3404:	e791      	b.n	332a <TV_SYNC_handler+0x122>
          if (scan_line==263){
    3406:	4b10      	ldr	r3, [pc, #64]	; (3448 <TV_SYNC_handler+0x240>)
    3408:	885b      	ldrh	r3, [r3, #2]
    340a:	b29b      	uxth	r3, r3
    340c:	f240 1207 	movw	r2, #263	; 0x107
    3410:	4293      	cmp	r3, r2
    3412:	d18a      	bne.n	332a <TV_SYNC_handler+0x122>
            if (flags&F_EVEN){ // half length
    3414:	4b0c      	ldr	r3, [pc, #48]	; (3448 <TV_SYNC_handler+0x240>)
    3416:	88db      	ldrh	r3, [r3, #6]
    3418:	f013 0f01 	tst.w	r3, #1
    341c:	d003      	beq.n	3426 <TV_SYNC_handler+0x21e>
                TMR1->ARR=SYNC_LINE;
    341e:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3422:	4b0b      	ldr	r3, [pc, #44]	; (3450 <TV_SYNC_handler+0x248>)
    3424:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    3426:	4b08      	ldr	r3, [pc, #32]	; (3448 <TV_SYNC_handler+0x240>)
    3428:	88da      	ldrh	r2, [r3, #6]
    342a:	b292      	uxth	r2, r2
    342c:	f082 0201 	eor.w	r2, r2, #1
    3430:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    3432:	88da      	ldrh	r2, [r3, #6]
    3434:	b292      	uxth	r2, r2
    3436:	f042 0202 	orr.w	r2, r2, #2
    343a:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    343c:	2200      	movs	r2, #0
    343e:	805a      	strh	r2, [r3, #2]
            slice=0;
    3440:	801a      	strh	r2, [r3, #0]
            task=0;
    3442:	809a      	strh	r2, [r3, #4]
    3444:	e771      	b.n	332a <TV_SYNC_handler+0x122>
    3446:	bf00      	nop
    3448:	200006bc 	.word	0x200006bc
    344c:	20004e94 	.word	0x20004e94
    3450:	40012c00 	.word	0x40012c00
    3454:	20004e98 	.word	0x20004e98
    3458:	20004e90 	.word	0x20004e90
    345c:	20000224 	.word	0x20000224

00003460 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3460:	4a02      	ldr	r2, [pc, #8]	; (346c <frame_sync+0xc>)
    3462:	88d3      	ldrh	r3, [r2, #6]
    3464:	f013 0f02 	tst.w	r3, #2
    3468:	d0fb      	beq.n	3462 <frame_sync+0x2>
}
    346a:	4770      	bx	lr
    346c:	200006bc 	.word	0x200006bc

00003470 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3470:	4a02      	ldr	r2, [pc, #8]	; (347c <wait_sync_end+0xc>)
    3472:	88d3      	ldrh	r3, [r2, #6]
    3474:	f013 0f02 	tst.w	r3, #2
    3478:	d1fb      	bne.n	3472 <wait_sync_end+0x2>
}
    347a:	4770      	bx	lr
    347c:	200006bc 	.word	0x200006bc

00003480 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3480:	b510      	push	{r4, lr}
    3482:	4604      	mov	r4, r0
    frame_sync();
    3484:	f7ff ffec 	bl	3460 <frame_sync>
    video_mode=mode;
    3488:	4b0e      	ldr	r3, [pc, #56]	; (34c4 <set_video_mode+0x44>)
    348a:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    348c:	b1ac      	cbz	r4, 34ba <set_video_mode+0x3a>
    348e:	2200      	movs	r2, #0
    3490:	4b0d      	ldr	r3, [pc, #52]	; (34c8 <set_video_mode+0x48>)
    3492:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3494:	4b0d      	ldr	r3, [pc, #52]	; (34cc <set_video_mode+0x4c>)
    3496:	480e      	ldr	r0, [pc, #56]	; (34d0 <set_video_mode+0x50>)
    3498:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    349c:	8842      	ldrh	r2, [r0, #2]
    349e:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    34a0:	8882      	ldrh	r2, [r0, #4]
    34a2:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    34a4:	88c2      	ldrh	r2, [r0, #6]
    34a6:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    34a8:	7a02      	ldrb	r2, [r0, #8]
    34aa:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    34ac:	7a42      	ldrb	r2, [r0, #9]
    34ae:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    34b0:	7a82      	ldrb	r2, [r0, #10]
    34b2:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    34b4:	f7fe f902 	bl	16bc <gfx_cls>
    34b8:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    34ba:	2202      	movs	r2, #2
    34bc:	4b02      	ldr	r3, [pc, #8]	; (34c8 <set_video_mode+0x48>)
    34be:	701a      	strb	r2, [r3, #0]
    34c0:	e7e8      	b.n	3494 <set_video_mode+0x14>
    34c2:	bf00      	nop
    34c4:	200006bc 	.word	0x200006bc
    34c8:	200001c8 	.word	0x200001c8
    34cc:	20000224 	.word	0x20000224
    34d0:	00003dc0 	.word	0x00003dc0

000034d4 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    34d4:	4b02      	ldr	r3, [pc, #8]	; (34e0 <get_video_params+0xc>)
    34d6:	7a18      	ldrb	r0, [r3, #8]
}
    34d8:	4b02      	ldr	r3, [pc, #8]	; (34e4 <get_video_params+0x10>)
    34da:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    34de:	4770      	bx	lr
    34e0:	200006bc 	.word	0x200006bc
    34e4:	00003dc0 	.word	0x00003dc0

000034e8 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    34e8:	4b03      	ldr	r3, [pc, #12]	; (34f8 <game_pause+0x10>)
    34ea:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    34ec:	461a      	mov	r2, r3
    34ee:	8813      	ldrh	r3, [r2, #0]
    34f0:	b29b      	uxth	r3, r3
    34f2:	2b00      	cmp	r3, #0
    34f4:	d1fb      	bne.n	34ee <game_pause+0x6>
}
    34f6:	4770      	bx	lr
    34f8:	20004e90 	.word	0x20004e90

000034fc <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    34fc:	4b03      	ldr	r3, [pc, #12]	; (350c <micro_pause+0x10>)
    34fe:	681b      	ldr	r3, [r3, #0]
    3500:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    3502:	4a02      	ldr	r2, [pc, #8]	; (350c <micro_pause+0x10>)
    3504:	6813      	ldr	r3, [r2, #0]
    3506:	4298      	cmp	r0, r3
    3508:	d8fc      	bhi.n	3504 <micro_pause+0x8>
}
    350a:	4770      	bx	lr
    350c:	20004e94 	.word	0x20004e94

00003510 <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    3510:	2801      	cmp	r0, #1
    3512:	d035      	beq.n	3580 <usart_config_port+0x70>
    3514:	b110      	cbz	r0, 351c <usart_config_port+0xc>
    3516:	2802      	cmp	r0, #2
    3518:	d04f      	beq.n	35ba <usart_config_port+0xaa>
    351a:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    351c:	4835      	ldr	r0, [pc, #212]	; (35f4 <usart_config_port+0xe4>)
    351e:	6983      	ldr	r3, [r0, #24]
    3520:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3524:	f043 0304 	orr.w	r3, r3, #4
    3528:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    352a:	2a01      	cmp	r2, #1
    352c:	d016      	beq.n	355c <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    352e:	4b32      	ldr	r3, [pc, #200]	; (35f8 <usart_config_port+0xe8>)
    3530:	4299      	cmp	r1, r3
    3532:	d01c      	beq.n	356e <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3534:	4a31      	ldr	r2, [pc, #196]	; (35fc <usart_config_port+0xec>)
    3536:	6853      	ldr	r3, [r2, #4]
    3538:	f043 0304 	orr.w	r3, r3, #4
    353c:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    353e:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    3542:	6993      	ldr	r3, [r2, #24]
    3544:	f043 0308 	orr.w	r3, r3, #8
    3548:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    354a:	680b      	ldr	r3, [r1, #0]
    354c:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3550:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    3552:	680b      	ldr	r3, [r1, #0]
    3554:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    3558:	600b      	str	r3, [r1, #0]
    355a:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    355c:	684b      	ldr	r3, [r1, #4]
    355e:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    3562:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3564:	684b      	ldr	r3, [r1, #4]
    3566:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    356a:	604b      	str	r3, [r1, #4]
    356c:	e7df      	b.n	352e <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    356e:	685a      	ldr	r2, [r3, #4]
    3570:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3574:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    3576:	685a      	ldr	r2, [r3, #4]
    3578:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    357c:	605a      	str	r2, [r3, #4]
    357e:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3580:	4b1c      	ldr	r3, [pc, #112]	; (35f4 <usart_config_port+0xe4>)
    3582:	69d8      	ldr	r0, [r3, #28]
    3584:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3588:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    358a:	6998      	ldr	r0, [r3, #24]
    358c:	f040 0004 	orr.w	r0, r0, #4
    3590:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    3592:	2a01      	cmp	r2, #1
    3594:	d008      	beq.n	35a8 <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    3596:	680b      	ldr	r3, [r1, #0]
    3598:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    359c:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    359e:	680b      	ldr	r3, [r1, #0]
    35a0:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    35a4:	600b      	str	r3, [r1, #0]
    35a6:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    35a8:	680b      	ldr	r3, [r1, #0]
    35aa:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    35ae:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    35b0:	680b      	ldr	r3, [r1, #0]
    35b2:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    35b6:	600b      	str	r3, [r1, #0]
    35b8:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    35ba:	4b0e      	ldr	r3, [pc, #56]	; (35f4 <usart_config_port+0xe4>)
    35bc:	69d8      	ldr	r0, [r3, #28]
    35be:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    35c2:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    35c4:	6998      	ldr	r0, [r3, #24]
    35c6:	f040 0008 	orr.w	r0, r0, #8
    35ca:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    35cc:	2a01      	cmp	r2, #1
    35ce:	d008      	beq.n	35e2 <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    35d0:	684b      	ldr	r3, [r1, #4]
    35d2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    35d6:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    35d8:	684b      	ldr	r3, [r1, #4]
    35da:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    35de:	604b      	str	r3, [r1, #4]
    35e0:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    35e2:	684b      	ldr	r3, [r1, #4]
    35e4:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    35e8:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    35ea:	684b      	ldr	r3, [r1, #4]
    35ec:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    35f0:	604b      	str	r3, [r1, #4]
    35f2:	4770      	bx	lr
    35f4:	40021000 	.word	0x40021000
    35f8:	40010800 	.word	0x40010800
    35fc:	40010000 	.word	0x40010000

00003600 <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    3600:	4602      	mov	r2, r0
    3602:	b138      	cbz	r0, 3614 <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    3604:	4b05      	ldr	r3, [pc, #20]	; (361c <usart_set_baud+0x1c>)
    3606:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    360a:	4b05      	ldr	r3, [pc, #20]	; (3620 <usart_set_baud+0x20>)
    360c:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    3610:	6099      	str	r1, [r3, #8]
    3612:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    3614:	4b03      	ldr	r3, [pc, #12]	; (3624 <usart_set_baud+0x24>)
    3616:	fbb3 f1f1 	udiv	r1, r3, r1
    361a:	e7f6      	b.n	360a <usart_set_baud+0xa>
    361c:	022231fa 	.word	0x022231fa
    3620:	00003de8 	.word	0x00003de8
    3624:	044463f4 	.word	0x044463f4

00003628 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    3628:	4b05      	ldr	r3, [pc, #20]	; (3640 <usart_comm_dir+0x18>)
    362a:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    362e:	68da      	ldr	r2, [r3, #12]
    3630:	f022 020c 	bic.w	r2, r2, #12
    3634:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    3636:	68da      	ldr	r2, [r3, #12]
    3638:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    363c:	60d9      	str	r1, [r3, #12]
    363e:	4770      	bx	lr
    3640:	00003de8 	.word	0x00003de8

00003644 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    3644:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    3648:	4604      	mov	r4, r0
    364a:	460f      	mov	r7, r1
    364c:	4615      	mov	r5, r2
    364e:	4698      	mov	r8, r3
    3650:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    3652:	2801      	cmp	r0, #1
    3654:	d030      	beq.n	36b8 <usart_open_channel+0x74>
    3656:	b1d0      	cbz	r0, 368e <usart_open_channel+0x4a>
    3658:	2802      	cmp	r0, #2
    365a:	d03a      	beq.n	36d2 <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    365c:	2e01      	cmp	r6, #1
    365e:	d045      	beq.n	36ec <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    3660:	4641      	mov	r1, r8
    3662:	4620      	mov	r0, r4
    3664:	f7ff ffe0 	bl	3628 <usart_comm_dir>
	switch (parity){
    3668:	2d01      	cmp	r5, #1
    366a:	d04e      	beq.n	370a <usart_open_channel+0xc6>
    366c:	2d00      	cmp	r5, #0
    366e:	d044      	beq.n	36fa <usart_open_channel+0xb6>
    3670:	2d02      	cmp	r5, #2
    3672:	d052      	beq.n	371a <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3674:	4639      	mov	r1, r7
    3676:	4620      	mov	r0, r4
    3678:	f7ff ffc2 	bl	3600 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    367c:	4b2b      	ldr	r3, [pc, #172]	; (372c <usart_open_channel+0xe8>)
    367e:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3682:	68d3      	ldr	r3, [r2, #12]
    3684:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3688:	60d3      	str	r3, [r2, #12]
    368a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    368e:	9b06      	ldr	r3, [sp, #24]
    3690:	b963      	cbnz	r3, 36ac <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    3692:	4632      	mov	r2, r6
    3694:	4926      	ldr	r1, [pc, #152]	; (3730 <usart_open_channel+0xec>)
    3696:	2000      	movs	r0, #0
    3698:	f7ff ff3a 	bl	3510 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    369c:	2107      	movs	r1, #7
    369e:	2025      	movs	r0, #37	; 0x25
    36a0:	f7fe fd64 	bl	216c <set_int_priority>
		enable_interrupt(IRQ_USART1);
    36a4:	2025      	movs	r0, #37	; 0x25
    36a6:	f7fe fd01 	bl	20ac <enable_interrupt>
		break;
    36aa:	e7d7      	b.n	365c <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    36ac:	4632      	mov	r2, r6
    36ae:	4921      	ldr	r1, [pc, #132]	; (3734 <usart_open_channel+0xf0>)
    36b0:	2000      	movs	r0, #0
    36b2:	f7ff ff2d 	bl	3510 <usart_config_port>
    36b6:	e7f1      	b.n	369c <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    36b8:	4632      	mov	r2, r6
    36ba:	491d      	ldr	r1, [pc, #116]	; (3730 <usart_open_channel+0xec>)
    36bc:	2001      	movs	r0, #1
    36be:	f7ff ff27 	bl	3510 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    36c2:	2107      	movs	r1, #7
    36c4:	2026      	movs	r0, #38	; 0x26
    36c6:	f7fe fd51 	bl	216c <set_int_priority>
		enable_interrupt(IRQ_USART2);
    36ca:	2026      	movs	r0, #38	; 0x26
    36cc:	f7fe fcee 	bl	20ac <enable_interrupt>
		break;
    36d0:	e7c4      	b.n	365c <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    36d2:	4632      	mov	r2, r6
    36d4:	4917      	ldr	r1, [pc, #92]	; (3734 <usart_open_channel+0xf0>)
    36d6:	2002      	movs	r0, #2
    36d8:	f7ff ff1a 	bl	3510 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    36dc:	2107      	movs	r1, #7
    36de:	2027      	movs	r0, #39	; 0x27
    36e0:	f7fe fd44 	bl	216c <set_int_priority>
		enable_interrupt(IRQ_USART3);
    36e4:	2027      	movs	r0, #39	; 0x27
    36e6:	f7fe fce1 	bl	20ac <enable_interrupt>
		break;
    36ea:	e7b7      	b.n	365c <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    36ec:	4b0f      	ldr	r3, [pc, #60]	; (372c <usart_open_channel+0xe8>)
    36ee:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    36f2:	f44f 7240 	mov.w	r2, #768	; 0x300
    36f6:	615a      	str	r2, [r3, #20]
    36f8:	e7b2      	b.n	3660 <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    36fa:	4b0c      	ldr	r3, [pc, #48]	; (372c <usart_open_channel+0xe8>)
    36fc:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3700:	68d3      	ldr	r3, [r2, #12]
    3702:	f043 0320 	orr.w	r3, r3, #32
    3706:	60d3      	str	r3, [r2, #12]
		break;
    3708:	e7b4      	b.n	3674 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    370a:	4b08      	ldr	r3, [pc, #32]	; (372c <usart_open_channel+0xe8>)
    370c:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3710:	68d3      	ldr	r3, [r2, #12]
    3712:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    3716:	60d3      	str	r3, [r2, #12]
		break;
    3718:	e7ac      	b.n	3674 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    371a:	4b04      	ldr	r3, [pc, #16]	; (372c <usart_open_channel+0xe8>)
    371c:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3720:	68d3      	ldr	r3, [r2, #12]
    3722:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    3726:	60d3      	str	r3, [r2, #12]
		break;
    3728:	e7a4      	b.n	3674 <usart_open_channel+0x30>
    372a:	bf00      	nop
    372c:	00003de8 	.word	0x00003de8
    3730:	40010800 	.word	0x40010800
    3734:	40010c00 	.word	0x40010c00

00003738 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return channels[channel]->SR&USART_SR_RXNE;
    3738:	4b03      	ldr	r3, [pc, #12]	; (3748 <usart_stat+0x10>)
    373a:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    373e:	6818      	ldr	r0, [r3, #0]
}
    3740:	f000 0020 	and.w	r0, r0, #32
    3744:	4770      	bx	lr
    3746:	bf00      	nop
    3748:	00003de8 	.word	0x00003de8

0000374c <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    374c:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    374e:	490c      	ldr	r1, [pc, #48]	; (3780 <usart_getc+0x34>)
    3750:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3754:	005b      	lsls	r3, r3, #1
    3756:	18c8      	adds	r0, r1, r3
    3758:	5ccb      	ldrb	r3, [r1, r3]
    375a:	7841      	ldrb	r1, [r0, #1]
    375c:	4299      	cmp	r1, r3
    375e:	d00d      	beq.n	377c <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    3760:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3762:	4d07      	ldr	r5, [pc, #28]	; (3780 <usart_getc+0x34>)
    3764:	00d4      	lsls	r4, r2, #3
    3766:	4601      	mov	r1, r0
    3768:	4419      	add	r1, r3
    376a:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    376c:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    376e:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    3770:	f003 030f 	and.w	r3, r3, #15
    3774:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    3778:	bc30      	pop	{r4, r5}
    377a:	4770      	bx	lr
		return 0;
    377c:	2000      	movs	r0, #0
    377e:	4770      	bx	lr
    3780:	200006c8 	.word	0x200006c8

00003784 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    3784:	b570      	push	{r4, r5, r6, lr}
    3786:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    3788:	4b08      	ldr	r3, [pc, #32]	; (37ac <usart_getc_dly+0x28>)
    378a:	681c      	ldr	r4, [r3, #0]
    378c:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    378e:	461d      	mov	r5, r3
    3790:	682b      	ldr	r3, [r5, #0]
    3792:	429c      	cmp	r4, r3
    3794:	d906      	bls.n	37a4 <usart_getc_dly+0x20>
    3796:	4630      	mov	r0, r6
    3798:	f7ff ffd8 	bl	374c <usart_getc>
    379c:	4603      	mov	r3, r0
    379e:	2800      	cmp	r0, #0
    37a0:	d0f6      	beq.n	3790 <usart_getc_dly+0xc>
    37a2:	e000      	b.n	37a6 <usart_getc_dly+0x22>
    37a4:	2300      	movs	r3, #0
	return c;
}
    37a6:	4618      	mov	r0, r3
    37a8:	bd70      	pop	{r4, r5, r6, pc}
    37aa:	bf00      	nop
    37ac:	20004e94 	.word	0x20004e94

000037b0 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    37b0:	4b04      	ldr	r3, [pc, #16]	; (37c4 <usart_putc+0x14>)
    37b2:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    37b6:	6813      	ldr	r3, [r2, #0]
    37b8:	f013 0f80 	tst.w	r3, #128	; 0x80
    37bc:	d0fb      	beq.n	37b6 <usart_putc+0x6>
	channels[channel]->DR=c;
    37be:	6051      	str	r1, [r2, #4]
    37c0:	4770      	bx	lr
    37c2:	bf00      	nop
    37c4:	00003de8 	.word	0x00003de8

000037c8 <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    37c8:	2801      	cmp	r0, #1
    37ca:	d009      	beq.n	37e0 <usart_cts+0x18>
    37cc:	b118      	cbz	r0, 37d6 <usart_cts+0xe>
    37ce:	2802      	cmp	r0, #2
    37d0:	d00b      	beq.n	37ea <usart_cts+0x22>
    37d2:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    37d4:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    37d6:	4b07      	ldr	r3, [pc, #28]	; (37f4 <usart_cts+0x2c>)
    37d8:	6898      	ldr	r0, [r3, #8]
    37da:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    37de:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    37e0:	4b04      	ldr	r3, [pc, #16]	; (37f4 <usart_cts+0x2c>)
    37e2:	6898      	ldr	r0, [r3, #8]
    37e4:	f000 0001 	and.w	r0, r0, #1
			break;
    37e8:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    37ea:	4b03      	ldr	r3, [pc, #12]	; (37f8 <usart_cts+0x30>)
    37ec:	6898      	ldr	r0, [r3, #8]
    37ee:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    37f2:	4770      	bx	lr
    37f4:	40010800 	.word	0x40010800
    37f8:	40010c00 	.word	0x40010c00

000037fc <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    37fc:	b538      	push	{r3, r4, r5, lr}
    37fe:	4605      	mov	r5, r0
    3800:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    3802:	7809      	ldrb	r1, [r1, #0]
    3804:	b131      	cbz	r1, 3814 <usart_print+0x18>
    3806:	4628      	mov	r0, r5
    3808:	f7ff ffd2 	bl	37b0 <usart_putc>
    380c:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    3810:	2900      	cmp	r1, #0
    3812:	d1f8      	bne.n	3806 <usart_print+0xa>
    3814:	bd38      	pop	{r3, r4, r5, pc}

00003816 <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    3816:	4668      	mov	r0, sp
    3818:	f020 0107 	bic.w	r1, r0, #7
    381c:	468d      	mov	sp, r1
    381e:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3820:	4b08      	ldr	r3, [pc, #32]	; (3844 <USART1_handler+0x2e>)
    3822:	681b      	ldr	r3, [r3, #0]
    3824:	f013 0f20 	tst.w	r3, #32
    3828:	d009      	beq.n	383e <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    382a:	4a07      	ldr	r2, [pc, #28]	; (3848 <USART1_handler+0x32>)
    382c:	7853      	ldrb	r3, [r2, #1]
    382e:	4905      	ldr	r1, [pc, #20]	; (3844 <USART1_handler+0x2e>)
    3830:	6848      	ldr	r0, [r1, #4]
    3832:	18d1      	adds	r1, r2, r3
    3834:	7088      	strb	r0, [r1, #2]
    3836:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    3838:	f003 030f 	and.w	r3, r3, #15
    383c:	7053      	strb	r3, [r2, #1]
		}
}
    383e:	bc01      	pop	{r0}
    3840:	4685      	mov	sp, r0
    3842:	4770      	bx	lr
    3844:	40013800 	.word	0x40013800
    3848:	200006c8 	.word	0x200006c8

0000384c <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    384c:	4668      	mov	r0, sp
    384e:	f020 0107 	bic.w	r1, r0, #7
    3852:	468d      	mov	sp, r1
    3854:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3856:	4b0a      	ldr	r3, [pc, #40]	; (3880 <USART2_handler+0x34>)
    3858:	681b      	ldr	r3, [r3, #0]
    385a:	f013 0f20 	tst.w	r3, #32
    385e:	d00b      	beq.n	3878 <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    3860:	4a08      	ldr	r2, [pc, #32]	; (3884 <USART2_handler+0x38>)
    3862:	7cd1      	ldrb	r1, [r2, #19]
    3864:	1c4b      	adds	r3, r1, #1
    3866:	b2db      	uxtb	r3, r3
    3868:	74d3      	strb	r3, [r2, #19]
    386a:	4807      	ldr	r0, [pc, #28]	; (3888 <USART2_handler+0x3c>)
    386c:	6840      	ldr	r0, [r0, #4]
    386e:	4411      	add	r1, r2
    3870:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3872:	f003 030f 	and.w	r3, r3, #15
    3876:	74d3      	strb	r3, [r2, #19]
		}
}
    3878:	bc01      	pop	{r0}
    387a:	4685      	mov	sp, r0
    387c:	4770      	bx	lr
    387e:	bf00      	nop
    3880:	40013800 	.word	0x40013800
    3884:	200006c8 	.word	0x200006c8
    3888:	40004400 	.word	0x40004400

0000388c <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    388c:	4668      	mov	r0, sp
    388e:	f020 0107 	bic.w	r1, r0, #7
    3892:	468d      	mov	sp, r1
    3894:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3896:	4b0b      	ldr	r3, [pc, #44]	; (38c4 <USART3_handler+0x38>)
    3898:	681b      	ldr	r3, [r3, #0]
    389a:	f013 0f20 	tst.w	r3, #32
    389e:	d00d      	beq.n	38bc <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    38a0:	4b09      	ldr	r3, [pc, #36]	; (38c8 <USART3_handler+0x3c>)
    38a2:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    38a6:	1c51      	adds	r1, r2, #1
    38a8:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    38ac:	4907      	ldr	r1, [pc, #28]	; (38cc <USART3_handler+0x40>)
    38ae:	6849      	ldr	r1, [r1, #4]
    38b0:	441a      	add	r2, r3
    38b2:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    38b4:	7cda      	ldrb	r2, [r3, #19]
    38b6:	f002 020f 	and.w	r2, r2, #15
    38ba:	74da      	strb	r2, [r3, #19]
		}
}
    38bc:	bc01      	pop	{r0}
    38be:	4685      	mov	sp, r0
    38c0:	4770      	bx	lr
    38c2:	bf00      	nop
    38c4:	40013800 	.word	0x40013800
    38c8:	200006c8 	.word	0x200006c8
    38cc:	40004800 	.word	0x40004800
