
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 9d 2b 00 00     .P. 1........+..
      10:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 9d 2b 00 00     .+...+...+...+..
      20:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 09 02 00 00     .+...+...+......
      30:	9d 2b 00 00 9d 2b 00 00 0d 02 00 00 11 02 00 00     .+...+..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 af 28 00 00     ........!....(..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 9d 2b 00 00 9d 2b 00 00 49 02 00 00     E....+...+..I...
      80:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 9d 2b 00 00     .+...+...+...+..
      90:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 4d 02 00 00     .+...+...+..M...
      a0:	9d 2b 00 00 f1 31 00 00 9d 2b 00 00 09 31 00 00     .+...1...+...1..
      b0:	c5 29 00 00 51 02 00 00 55 02 00 00 9d 2b 00 00     .)..Q...U....+..
      c0:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 9d 2b 00 00     .+...+...+...+..
      d0:	9d 2b 00 00 97 37 00 00 cd 37 00 00 0d 38 00 00     .+...7...7...8..
      e0:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 9d 2b 00 00     .+...+...+...+..
      f0:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 9d 2b 00 00     .+...+...+...+..
     100:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 9d 2b 00 00     .+...+...+...+..
     110:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 9d 2b 00 00     .+...+...+...+..
     120:	9d 2b 00 00 9d 2b 00 00 9d 2b 00 00 9d 2b 00 00     .+...+...+...+..

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
     186:	f001 fcd6 	bl	1b36 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e9a 	.word	0x20004e9a
     190:	2000022e 	.word	0x2000022e
     194:	20004e99 	.word	0x20004e99
     198:	2000022e 	.word	0x2000022e
     19c:	20000000 	.word	0x20000000
     1a0:	00009bf0 	.word	0x00009bf0
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
     1da:	f002 fce7 	bl	2bac <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fce4 	bl	2bac <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fce1 	bl	2bac <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fcde 	bl	2bac <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00004048 	.word	0x00004048
     1f8:	00004024 	.word	0x00004024
     1fc:	0000403c 	.word	0x0000403c
     200:	00004058 	.word	0x00004058

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fcca 	bl	2b9c <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fcc8 	bl	2b9c <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fcc6 	bl	2b9c <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fcc4 	bl	2b9c <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fcc2 	bl	2b9c <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fcc0 	bl	2b9c <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fcbe 	bl	2b9c <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fcbc 	bl	2b9c <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fcba 	bl	2b9c <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fcb8 	bl	2b9c <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fcb6 	bl	2b9c <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fcb4 	bl	2b9c <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fcb2 	bl	2b9c <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fcb0 	bl	2b9c <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fcae 	bl	2b9c <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fcac 	bl	2b9c <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fcaa 	bl	2b9c <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fca8 	bl	2b9c <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fca6 	bl	2b9c <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fca4 	bl	2b9c <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fca2 	bl	2b9c <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 fca0 	bl	2b9c <reset_mcu>
_default_handler(USART2_handler) // 38
     25c:	f002 fc9e 	bl	2b9c <reset_mcu>
_default_handler(USART3_handler) // 39
     260:	f002 fc9c 	bl	2b9c <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fc9a 	bl	2b9c <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fc98 	bl	2b9c <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fc96 	bl	2b9c <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fc94 	bl	2b9c <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fc92 	bl	2b9c <reset_mcu>

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
     316:	f002 fcc5 	bl	2ca4 <get_font>
     31a:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     31c:	2002      	movs	r0, #2
     31e:	f002 fcbb 	bl	2c98 <select_font>
	new_line();
     322:	f002 fcc5 	bl	2cb0 <new_line>
	print(msg);
     326:	4628      	mov	r0, r5
     328:	f002 fda8 	bl	2e7c <print>
	switch(error_code){
     32c:	2c02      	cmp	r4, #2
     32e:	d039      	beq.n	3a4 <print_vms+0x94>
     330:	2c03      	cmp	r4, #3
     332:	d102      	bne.n	33a <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     334:	481d      	ldr	r0, [pc, #116]	; (3ac <print_vms+0x9c>)
     336:	f002 fda1 	bl	2e7c <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     33a:	481d      	ldr	r0, [pc, #116]	; (3b0 <print_vms+0xa0>)
     33c:	f002 fd9e 	bl	2e7c <print>
	print_hex(vms.pc-2);
     340:	4d1c      	ldr	r5, [pc, #112]	; (3b4 <print_vms+0xa4>)
     342:	8828      	ldrh	r0, [r5, #0]
     344:	2110      	movs	r1, #16
     346:	3802      	subs	r0, #2
     348:	f002 fdb3 	bl	2eb2 <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     34c:	7e28      	ldrb	r0, [r5, #24]
     34e:	7e6b      	ldrb	r3, [r5, #25]
     350:	2110      	movs	r1, #16
     352:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     356:	f002 fdac 	bl	2eb2 <print_int>
	new_line();
     35a:	f002 fca9 	bl	2cb0 <new_line>
	print("I:");
     35e:	4816      	ldr	r0, [pc, #88]	; (3b8 <print_vms+0xa8>)
     360:	f002 fd8c 	bl	2e7c <print>
	print_hex(vms.ix);
     364:	2110      	movs	r1, #16
     366:	8868      	ldrh	r0, [r5, #2]
     368:	f002 fda3 	bl	2eb2 <print_int>
	print(" SP:");
     36c:	4813      	ldr	r0, [pc, #76]	; (3bc <print_vms+0xac>)
     36e:	f002 fd85 	bl	2e7c <print>
	print_hex(vms.sp);
     372:	2110      	movs	r1, #16
     374:	7928      	ldrb	r0, [r5, #4]
     376:	f002 fd9c 	bl	2eb2 <print_int>
	new_line();
     37a:	f002 fc99 	bl	2cb0 <new_line>
	print("var[]:");
     37e:	4810      	ldr	r0, [pc, #64]	; (3c0 <print_vms+0xb0>)
     380:	f002 fd7c 	bl	2e7c <print>
     384:	1dac      	adds	r4, r5, #6
     386:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     388:	2610      	movs	r6, #16
     38a:	4631      	mov	r1, r6
     38c:	f814 0b01 	ldrb.w	r0, [r4], #1
     390:	f002 fd8f 	bl	2eb2 <print_int>
	for (int i=0;i<16;i++){
     394:	42ac      	cmp	r4, r5
     396:	d1f8      	bne.n	38a <print_vms+0x7a>
	}
	new_line();
     398:	f002 fc8a 	bl	2cb0 <new_line>
	select_font(orig_font);
     39c:	4638      	mov	r0, r7
     39e:	f002 fc7b 	bl	2c98 <select_font>
     3a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3a4:	4807      	ldr	r0, [pc, #28]	; (3c4 <print_vms+0xb4>)
     3a6:	f002 fd69 	bl	2e7c <print>
		break;
     3aa:	e7c6      	b.n	33a <print_vms+0x2a>
     3ac:	00003d7c 	.word	0x00003d7c
     3b0:	00003da4 	.word	0x00003da4
     3b4:	20000230 	.word	0x20000230
     3b8:	00003da8 	.word	0x00003da8
     3bc:	00003dac 	.word	0x00003dac
     3c0:	00003db4 	.word	0x00003db4
     3c4:	00003d90 	.word	0x00003d90

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
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
	char c,buffer[24];
	int gx,gy;
	vmode_params_t *vparams;

	vms.pc=program_address;
     3f6:	4ba7      	ldr	r3, [pc, #668]	; (694 <chip_vm+0x2a4>)
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
     406:	f080 84a6 	bcs.w	d56 <chip_vm+0x966>
     40a:	460d      	mov	r5, r1
				dbg_level=DEBUG_SSTEP;
				goto single_step;
			}
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
     410:	4fa1      	ldr	r7, [pc, #644]	; (698 <chip_vm+0x2a8>)
     412:	e169      	b.n	6e8 <chip_vm+0x2f8>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     414:	2d00      	cmp	r5, #0
     416:	f040 816c 	bne.w	6f2 <chip_vm+0x302>
     41a:	2005      	movs	r0, #5
     41c:	f003 f82a 	bl	3474 <micro_pause>
		_get_opcode(vms.pc);
     420:	8823      	ldrh	r3, [r4, #0]
     422:	4a9e      	ldr	r2, [pc, #632]	; (69c <chip_vm+0x2ac>)
     424:	5cd1      	ldrb	r1, [r2, r3]
     426:	7621      	strb	r1, [r4, #24]
     428:	441a      	add	r2, r3
     42a:	7852      	ldrb	r2, [r2, #1]
     42c:	7662      	strb	r2, [r4, #25]
		vms.pc+=2;
     42e:	3302      	adds	r3, #2
     430:	8023      	strh	r3, [r4, #0]
     432:	e03c      	b.n	4ae <chip_vm+0xbe>
			_debug_print(itoa(vms.pc-2,buffer,16));
     434:	2210      	movs	r2, #16
     436:	a902      	add	r1, sp, #8
     438:	3802      	subs	r0, #2
     43a:	f001 f851 	bl	14e0 <itoa>
     43e:	4601      	mov	r1, r0
     440:	2000      	movs	r0, #0
     442:	f003 f99b 	bl	377c <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     446:	7e20      	ldrb	r0, [r4, #24]
     448:	7e63      	ldrb	r3, [r4, #25]
     44a:	2210      	movs	r2, #16
     44c:	a902      	add	r1, sp, #8
     44e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     452:	f001 f845 	bl	14e0 <itoa>
     456:	4601      	mov	r1, r0
     458:	2000      	movs	r0, #0
     45a:	f003 f98f 	bl	377c <usart_print>
			_debug_print("\n");
     45e:	4990      	ldr	r1, [pc, #576]	; (6a0 <chip_vm+0x2b0>)
     460:	2000      	movs	r0, #0
     462:	f003 f98b 	bl	377c <usart_print>
			break;
     466:	e022      	b.n	4ae <chip_vm+0xbe>
			select_console(SERIAL);
     468:	2001      	movs	r0, #1
     46a:	f002 fdc3 	bl	2ff4 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     46e:	2100      	movs	r1, #0
     470:	488c      	ldr	r0, [pc, #560]	; (6a4 <chip_vm+0x2b4>)
     472:	f7ff ff4d 	bl	310 <print_vms>
			select_console(LOCAL);
     476:	2000      	movs	r0, #0
     478:	f002 fdbc 	bl	2ff4 <select_console>
			break;
     47c:	e017      	b.n	4ae <chip_vm+0xbe>
			if (usart_getc(CHN1)==CTRL_C){
     47e:	2000      	movs	r0, #0
     480:	f003 f924 	bl	36cc <usart_getc>
     484:	2803      	cmp	r0, #3
     486:	d112      	bne.n	4ae <chip_vm+0xbe>
			select_console(SERIAL);
     488:	2001      	movs	r0, #1
     48a:	f002 fdb3 	bl	2ff4 <select_console>
			print_vms("vm state\n",CHIP_CONTINUE);
     48e:	2100      	movs	r1, #0
     490:	4885      	ldr	r0, [pc, #532]	; (6a8 <chip_vm+0x2b8>)
     492:	f7ff ff3d 	bl	310 <print_vms>
			print("<CTRL-Q> to quit, any to step.\n");
     496:	4885      	ldr	r0, [pc, #532]	; (6ac <chip_vm+0x2bc>)
     498:	f002 fcf0 	bl	2e7c <print>
			c=get_char();
     49c:	f002 fdb0 	bl	3000 <get_char>
			if (c==CTRL_Q) dbg_level=DEBUG_BOC;
     4a0:	2811      	cmp	r0, #17
     4a2:	bf14      	ite	ne
     4a4:	2503      	movne	r5, #3
     4a6:	2504      	moveq	r5, #4
			select_console(LOCAL);
     4a8:	2000      	movs	r0, #0
     4aa:	f002 fda3 	bl	2ff4 <select_console>
		x=rx(vms.b1);
     4ae:	7e22      	ldrb	r2, [r4, #24]
     4b0:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     4b4:	7e63      	ldrb	r3, [r4, #25]
     4b6:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     4ba:	0911      	lsrs	r1, r2, #4
     4bc:	290f      	cmp	r1, #15
     4be:	f200 810e 	bhi.w	6de <chip_vm+0x2ee>
     4c2:	e8df f011 	tbh	[pc, r1, lsl #1]
     4c6:	002c      	.short	0x002c
     4c8:	00940088 	.word	0x00940088
     4cc:	00b100a8 	.word	0x00b100a8
     4d0:	010900ba 	.word	0x010900ba
     4d4:	013b012f 	.word	0x013b012f
     4d8:	028501b6 	.word	0x028501b6
     4dc:	02a20292 	.word	0x02a20292
     4e0:	02dd02ad 	.word	0x02dd02ad
     4e4:	02fb      	.short	0x02fb
		x=rx(vms.b1);
     4e6:	7e22      	ldrb	r2, [r4, #24]
     4e8:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     4ec:	7e63      	ldrb	r3, [r4, #25]
     4ee:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     4f2:	0911      	lsrs	r1, r2, #4
     4f4:	290f      	cmp	r1, #15
     4f6:	f200 841f 	bhi.w	d38 <chip_vm+0x948>
     4fa:	e8df f011 	tbh	[pc, r1, lsl #1]
     4fe:	0010      	.short	0x0010
     500:	0078006c 	.word	0x0078006c
     504:	0095008c 	.word	0x0095008c
     508:	00ed009e 	.word	0x00ed009e
     50c:	011f0113 	.word	0x011f0113
     510:	0269019a 	.word	0x0269019a
     514:	02860276 	.word	0x02860276
     518:	02c10291 	.word	0x02c10291
     51c:	02df      	.short	0x02df
		    if ((vms.b1|vms.b2)==0){
     51e:	431a      	orrs	r2, r3
     520:	f000 80dd 	beq.w	6de <chip_vm+0x2ee>
     524:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     528:	2ac0      	cmp	r2, #192	; 0xc0
     52a:	d026      	beq.n	57a <chip_vm+0x18a>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
     52c:	2ad0      	cmp	r2, #208	; 0xd0
     52e:	d029      	beq.n	584 <chip_vm+0x194>
			}else switch(vms.b2){
     530:	3be0      	subs	r3, #224	; 0xe0
     532:	2b1f      	cmp	r3, #31
     534:	d82b      	bhi.n	58e <chip_vm+0x19e>
     536:	e8df f013 	tbh	[pc, r3, lsl #1]
     53a:	002d      	.short	0x002d
     53c:	002a002a 	.word	0x002a002a
     540:	002a002a 	.word	0x002a002a
     544:	002a002a 	.word	0x002a002a
     548:	002a002a 	.word	0x002a002a
     54c:	002a002a 	.word	0x002a002a
     550:	002a002a 	.word	0x002a002a
     554:	0030002a 	.word	0x0030002a
     558:	002a002a 	.word	0x002a002a
     55c:	002a002a 	.word	0x002a002a
     560:	002a002a 	.word	0x002a002a
     564:	002a002a 	.word	0x002a002a
     568:	002a002a 	.word	0x002a002a
     56c:	00440048 	.word	0x00440048
     570:	003c0038 	.word	0x003c0038
     574:	04020420 	.word	0x04020420
     578:	0040      	.short	0x0040
				gfx_scroll_down(vms.b2&0xf); 
     57a:	f003 000f 	and.w	r0, r3, #15
     57e:	f001 f8c3 	bl	1708 <gfx_scroll_down>
     582:	e0ac      	b.n	6de <chip_vm+0x2ee>
				gfx_scroll_up(vms.b2&0xf);					
     584:	f003 000f 	and.w	r0, r3, #15
     588:	f001 f898 	bl	16bc <gfx_scroll_up>
     58c:	e0a7      	b.n	6de <chip_vm+0x2ee>
					exit_code=CHIP_BAD_OPCODE;
     58e:	f04f 0802 	mov.w	r8, #2
     592:	e3e5      	b.n	d60 <chip_vm+0x970>
					gfx_cls();
     594:	f001 f87e 	bl	1694 <gfx_cls>
					break;
     598:	e0a1      	b.n	6de <chip_vm+0x2ee>
					vms.pc=vms.stack[vms.sp--];
     59a:	7923      	ldrb	r3, [r4, #4]
     59c:	1e5a      	subs	r2, r3, #1
     59e:	7122      	strb	r2, [r4, #4]
     5a0:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     5a4:	8b5b      	ldrh	r3, [r3, #26]
     5a6:	8023      	strh	r3, [r4, #0]
					break;
     5a8:	e099      	b.n	6de <chip_vm+0x2ee>
					gfx_scroll_right(4);
     5aa:	2004      	movs	r0, #4
     5ac:	f001 f8fe 	bl	17ac <gfx_scroll_right>
					break;
     5b0:	e095      	b.n	6de <chip_vm+0x2ee>
					gfx_scroll_left(4);
     5b2:	2004      	movs	r0, #4
     5b4:	f001 f8cc 	bl	1750 <gfx_scroll_left>
					break;
     5b8:	e091      	b.n	6de <chip_vm+0x2ee>
					set_video_mode(VM_SCHIP);
     5ba:	2001      	movs	r0, #1
     5bc:	f002 ff1c 	bl	33f8 <set_video_mode>
					break; 
     5c0:	e08d      	b.n	6de <chip_vm+0x2ee>
					set_video_mode(VM_BPCHIP);
     5c2:	2000      	movs	r0, #0
     5c4:	f002 ff18 	bl	33f8 <set_video_mode>
					break;
     5c8:	e089      	b.n	6de <chip_vm+0x2ee>
					set_palette((const uint8_t*)&game_ram[vms.ix]);
     5ca:	8863      	ldrh	r3, [r4, #2]
     5cc:	4833      	ldr	r0, [pc, #204]	; (69c <chip_vm+0x2ac>)
     5ce:	4418      	add	r0, r3
     5d0:	f001 f808 	bl	15e4 <set_palette>
					break;	
     5d4:	e083      	b.n	6de <chip_vm+0x2ee>
			vms.pc=caddr(vms.b1,vms.b2);
     5d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5da:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5de:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5e0:	4a33      	ldr	r2, [pc, #204]	; (6b0 <chip_vm+0x2c0>)
     5e2:	7812      	ldrb	r2, [r2, #0]
     5e4:	2a00      	cmp	r2, #0
     5e6:	d17a      	bne.n	6de <chip_vm+0x2ee>
				vms.pc<<=1;
     5e8:	005b      	lsls	r3, r3, #1
     5ea:	8023      	strh	r3, [r4, #0]
     5ec:	e077      	b.n	6de <chip_vm+0x2ee>
			vms.stack[++vms.sp]=vms.pc;
     5ee:	7921      	ldrb	r1, [r4, #4]
     5f0:	3101      	adds	r1, #1
     5f2:	b2c9      	uxtb	r1, r1
     5f4:	7121      	strb	r1, [r4, #4]
     5f6:	eb04 0141 	add.w	r1, r4, r1, lsl #1
     5fa:	8820      	ldrh	r0, [r4, #0]
     5fc:	8348      	strh	r0, [r1, #26]
			vms.pc=caddr(vms.b1,vms.b2);
     5fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     602:	f3c3 030b 	ubfx	r3, r3, #0, #12
     606:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     608:	4a29      	ldr	r2, [pc, #164]	; (6b0 <chip_vm+0x2c0>)
     60a:	7812      	ldrb	r2, [r2, #0]
     60c:	2a00      	cmp	r2, #0
     60e:	d166      	bne.n	6de <chip_vm+0x2ee>
				vms.pc<<=1;
     610:	005b      	lsls	r3, r3, #1
     612:	8023      	strh	r3, [r4, #0]
     614:	e063      	b.n	6de <chip_vm+0x2ee>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     616:	44a0      	add	r8, r4
     618:	f898 2006 	ldrb.w	r2, [r8, #6]
     61c:	429a      	cmp	r2, r3
     61e:	d15e      	bne.n	6de <chip_vm+0x2ee>
     620:	8823      	ldrh	r3, [r4, #0]
     622:	3302      	adds	r3, #2
     624:	8023      	strh	r3, [r4, #0]
     626:	e05a      	b.n	6de <chip_vm+0x2ee>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     628:	44a0      	add	r8, r4
     62a:	f898 2006 	ldrb.w	r2, [r8, #6]
     62e:	429a      	cmp	r2, r3
     630:	d055      	beq.n	6de <chip_vm+0x2ee>
     632:	8823      	ldrh	r3, [r4, #0]
     634:	3302      	adds	r3, #2
     636:	8023      	strh	r3, [r4, #0]
     638:	e051      	b.n	6de <chip_vm+0x2ee>
			switch(vms.b2&0xf){
     63a:	f003 030f 	and.w	r3, r3, #15
     63e:	2b02      	cmp	r3, #2
     640:	d015      	beq.n	66e <chip_vm+0x27e>
     642:	2b03      	cmp	r3, #3
     644:	d036      	beq.n	6b4 <chip_vm+0x2c4>
     646:	b133      	cbz	r3, 656 <chip_vm+0x266>
     648:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     64c:	f1b8 0f00 	cmp.w	r8, #0
     650:	f040 8386 	bne.w	d60 <chip_vm+0x970>
     654:	e043      	b.n	6de <chip_vm+0x2ee>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     656:	44a0      	add	r8, r4
     658:	44a1      	add	r9, r4
     65a:	f898 2006 	ldrb.w	r2, [r8, #6]
     65e:	f899 3006 	ldrb.w	r3, [r9, #6]
     662:	429a      	cmp	r2, r3
     664:	d13b      	bne.n	6de <chip_vm+0x2ee>
     666:	8823      	ldrh	r3, [r4, #0]
     668:	3302      	adds	r3, #2
     66a:	8023      	strh	r3, [r4, #0]
     66c:	e037      	b.n	6de <chip_vm+0x2ee>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     66e:	4640      	mov	r0, r8
     670:	45c8      	cmp	r8, r9
     672:	bf28      	it	cs
     674:	4648      	movcs	r0, r9
     676:	eba9 0208 	sub.w	r2, r9, r8
     67a:	2a00      	cmp	r2, #0
     67c:	bfb8      	it	lt
     67e:	4252      	neglt	r2, r2
     680:	8863      	ldrh	r3, [r4, #2]
     682:	3006      	adds	r0, #6
     684:	3201      	adds	r2, #1
     686:	4905      	ldr	r1, [pc, #20]	; (69c <chip_vm+0x2ac>)
     688:	4419      	add	r1, r3
     68a:	4420      	add	r0, r4
     68c:	f000 feb7 	bl	13fe <move>
				break;
     690:	e025      	b.n	6de <chip_vm+0x2ee>
     692:	bf00      	nop
     694:	20000230 	.word	0x20000230
     698:	51eb851f 	.word	0x51eb851f
     69c:	20000700 	.word	0x20000700
     6a0:	00003ed8 	.word	0x00003ed8
     6a4:	00003dbc 	.word	0x00003dbc
     6a8:	00003dd0 	.word	0x00003dd0
     6ac:	00003ddc 	.word	0x00003ddc
     6b0:	200006c4 	.word	0x200006c4
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     6b4:	8863      	ldrh	r3, [r4, #2]
     6b6:	4641      	mov	r1, r8
     6b8:	45c8      	cmp	r8, r9
     6ba:	bf28      	it	cs
     6bc:	4649      	movcs	r1, r9
     6be:	eba9 0208 	sub.w	r2, r9, r8
     6c2:	2a00      	cmp	r2, #0
     6c4:	bfb8      	it	lt
     6c6:	4252      	neglt	r2, r2
     6c8:	3106      	adds	r1, #6
     6ca:	3201      	adds	r2, #1
     6cc:	4421      	add	r1, r4
     6ce:	48be      	ldr	r0, [pc, #760]	; (9c8 <chip_vm+0x5d8>)
     6d0:	4418      	add	r0, r3
     6d2:	f000 fe94 	bl	13fe <move>
				break;
     6d6:	e002      	b.n	6de <chip_vm+0x2ee>
			vms.var[x]=vms.b2;
     6d8:	44a0      	add	r8, r4
     6da:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     6de:	8823      	ldrh	r3, [r4, #0]
     6e0:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     6e4:	f080 833a 	bcs.w	d5c <chip_vm+0x96c>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     6e8:	4bb8      	ldr	r3, [pc, #736]	; (9cc <chip_vm+0x5dc>)
     6ea:	781b      	ldrb	r3, [r3, #0]
     6ec:	2b01      	cmp	r3, #1
     6ee:	f43f ae91 	beq.w	414 <chip_vm+0x24>
		_get_opcode(vms.pc);
     6f2:	8820      	ldrh	r0, [r4, #0]
     6f4:	4bb4      	ldr	r3, [pc, #720]	; (9c8 <chip_vm+0x5d8>)
     6f6:	5c1a      	ldrb	r2, [r3, r0]
     6f8:	7622      	strb	r2, [r4, #24]
     6fa:	4403      	add	r3, r0
     6fc:	785b      	ldrb	r3, [r3, #1]
     6fe:	7663      	strb	r3, [r4, #25]
		vms.pc+=2;
     700:	3002      	adds	r0, #2
     702:	b280      	uxth	r0, r0
     704:	8020      	strh	r0, [r4, #0]
		switch(dbg_level){
     706:	1e6b      	subs	r3, r5, #1
     708:	2b03      	cmp	r3, #3
     70a:	f63f aeec 	bhi.w	4e6 <chip_vm+0xf6>
     70e:	a201      	add	r2, pc, #4	; (adr r2, 714 <chip_vm+0x324>)
     710:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     714:	00000435 	.word	0x00000435
     718:	00000469 	.word	0x00000469
     71c:	00000489 	.word	0x00000489
     720:	0000047f 	.word	0x0000047f
		    n=(vms.var[x]+vms.b2)>255;
     724:	44a0      	add	r8, r4
     726:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     72a:	4403      	add	r3, r0
     72c:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     730:	2bff      	cmp	r3, #255	; 0xff
     732:	bfd4      	ite	le
     734:	2300      	movle	r3, #0
     736:	2301      	movgt	r3, #1
     738:	7563      	strb	r3, [r4, #21]
			break;
     73a:	e7d0      	b.n	6de <chip_vm+0x2ee>
			switch(vms.b2&0xf){
     73c:	f003 030f 	and.w	r3, r3, #15
     740:	2b0e      	cmp	r3, #14
     742:	f200 82ff 	bhi.w	d44 <chip_vm+0x954>
     746:	e8df f013 	tbh	[pc, r3, lsl #1]
     74a:	000f      	.short	0x000f
     74c:	00200016 	.word	0x00200016
     750:	0034002a 	.word	0x0034002a
     754:	00520043 	.word	0x00520043
     758:	02fd005c 	.word	0x02fd005c
     75c:	02fd02fd 	.word	0x02fd02fd
     760:	02fd02fd 	.word	0x02fd02fd
     764:	006b02fd 	.word	0x006b02fd
				vms.var[x]=vms.var[y];
     768:	44a1      	add	r9, r4
     76a:	f899 3006 	ldrb.w	r3, [r9, #6]
     76e:	44a0      	add	r8, r4
     770:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     774:	e7b3      	b.n	6de <chip_vm+0x2ee>
				vms.var[x]|=vms.var[y];
     776:	44a0      	add	r8, r4
     778:	44a1      	add	r9, r4
     77a:	f898 3006 	ldrb.w	r3, [r8, #6]
     77e:	f899 2006 	ldrb.w	r2, [r9, #6]
     782:	4313      	orrs	r3, r2
     784:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     788:	e7a9      	b.n	6de <chip_vm+0x2ee>
				vms.var[x]&=vms.var[y];
     78a:	44a0      	add	r8, r4
     78c:	44a1      	add	r9, r4
     78e:	f898 3006 	ldrb.w	r3, [r8, #6]
     792:	f899 2006 	ldrb.w	r2, [r9, #6]
     796:	4013      	ands	r3, r2
     798:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     79c:	e79f      	b.n	6de <chip_vm+0x2ee>
				vms.var[x]^=vms.var[y];
     79e:	44a0      	add	r8, r4
     7a0:	44a1      	add	r9, r4
     7a2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7a6:	f899 2006 	ldrb.w	r2, [r9, #6]
     7aa:	4053      	eors	r3, r2
     7ac:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7b0:	e795      	b.n	6de <chip_vm+0x2ee>
				n=(vms.var[x]+vms.var[y])>255;
     7b2:	44a0      	add	r8, r4
     7b4:	f898 3006 	ldrb.w	r3, [r8, #6]
     7b8:	44a1      	add	r9, r4
     7ba:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     7be:	4413      	add	r3, r2
     7c0:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     7c4:	2bff      	cmp	r3, #255	; 0xff
     7c6:	bfd4      	ite	le
     7c8:	2300      	movle	r3, #0
     7ca:	2301      	movgt	r3, #1
     7cc:	7563      	strb	r3, [r4, #21]
				break;
     7ce:	e786      	b.n	6de <chip_vm+0x2ee>
				n=vms.var[x]>=vms.var[y];
     7d0:	44a0      	add	r8, r4
     7d2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7d6:	44a1      	add	r9, r4
     7d8:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     7dc:	1a99      	subs	r1, r3, r2
     7de:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     7e2:	4293      	cmp	r3, r2
     7e4:	bf34      	ite	cc
     7e6:	2300      	movcc	r3, #0
     7e8:	2301      	movcs	r3, #1
     7ea:	7563      	strb	r3, [r4, #21]
				break;
     7ec:	e777      	b.n	6de <chip_vm+0x2ee>
				n=(vms.var[x]&1u);
     7ee:	44a0      	add	r8, r4
     7f0:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     7f4:	085a      	lsrs	r2, r3, #1
     7f6:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     7fa:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     7fe:	7563      	strb	r3, [r4, #21]
				break;
     800:	e76d      	b.n	6de <chip_vm+0x2ee>
				n=vms.var[y]>=vms.var[x];
     802:	44a1      	add	r9, r4
     804:	f899 3006 	ldrb.w	r3, [r9, #6]
     808:	44a0      	add	r8, r4
     80a:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     80e:	1a99      	subs	r1, r3, r2
     810:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     814:	4293      	cmp	r3, r2
     816:	bf34      	ite	cc
     818:	2300      	movcc	r3, #0
     81a:	2301      	movcs	r3, #1
     81c:	7563      	strb	r3, [r4, #21]
				break;
     81e:	e75e      	b.n	6de <chip_vm+0x2ee>
				n=(vms.var[x]&128)>>7;
     820:	44a0      	add	r8, r4
     822:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     826:	005a      	lsls	r2, r3, #1
     828:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     82c:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     82e:	7563      	strb	r3, [r4, #21]
				break;
     830:	e755      	b.n	6de <chip_vm+0x2ee>
			switch (vms.b2&0xf){
     832:	f003 030f 	and.w	r3, r3, #15
     836:	2b0f      	cmp	r3, #15
     838:	f200 8287 	bhi.w	d4a <chip_vm+0x95a>
     83c:	e8df f003 	tbb	[pc, r3]
     840:	3c1f1508 	.word	0x3c1f1508
     844:	62574c47 	.word	0x62574c47
     848:	867a736c 	.word	0x867a736c
     84c:	bdae9f93 	.word	0xbdae9f93
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     850:	44a0      	add	r8, r4
     852:	44a1      	add	r9, r4
     854:	f898 2006 	ldrb.w	r2, [r8, #6]
     858:	f899 3006 	ldrb.w	r3, [r9, #6]
     85c:	429a      	cmp	r2, r3
     85e:	f43f af3e 	beq.w	6de <chip_vm+0x2ee>
     862:	8823      	ldrh	r3, [r4, #0]
     864:	3302      	adds	r3, #2
     866:	8023      	strh	r3, [r4, #0]
     868:	e739      	b.n	6de <chip_vm+0x2ee>
				key_tone(vms.var[x],vms.var[y],false);
     86a:	44a1      	add	r9, r4
     86c:	44a0      	add	r8, r4
     86e:	2200      	movs	r2, #0
     870:	f899 1006 	ldrb.w	r1, [r9, #6]
     874:	f898 0006 	ldrb.w	r0, [r8, #6]
     878:	f002 f87c 	bl	2974 <key_tone>
				break;
     87c:	e72f      	b.n	6de <chip_vm+0x2ee>
				select_font(FONT_ASCII);
     87e:	2002      	movs	r0, #2
     880:	f002 fa0a 	bl	2c98 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     884:	44a1      	add	r9, r4
     886:	44a0      	add	r8, r4
     888:	f899 1006 	ldrb.w	r1, [r9, #6]
     88c:	f898 0006 	ldrb.w	r0, [r8, #6]
     890:	f002 fac0 	bl	2e14 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     894:	8860      	ldrh	r0, [r4, #2]
     896:	f8df 9130 	ldr.w	r9, [pc, #304]	; 9c8 <chip_vm+0x5d8>
     89a:	4448      	add	r0, r9
     89c:	f002 faee 	bl	2e7c <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8a0:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8a4:	eb09 0008 	add.w	r0, r9, r8
     8a8:	f000 fdb3 	bl	1412 <strlen>
     8ac:	f108 0801 	add.w	r8, r8, #1
     8b0:	4480      	add	r8, r0
     8b2:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     8b6:	e712      	b.n	6de <chip_vm+0x2ee>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     8b8:	44a1      	add	r9, r4
     8ba:	44a0      	add	r8, r4
     8bc:	2303      	movs	r3, #3
     8be:	2200      	movs	r2, #0
     8c0:	f899 1006 	ldrb.w	r1, [r9, #6]
     8c4:	f898 0006 	ldrb.w	r0, [r8, #6]
     8c8:	f000 fe98 	bl	15fc <gfx_blit>
				break;
     8cc:	e707      	b.n	6de <chip_vm+0x2ee>
				noise((x<<4)+y);
     8ce:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8d2:	f002 f863 	bl	299c <noise>
				break;
     8d6:	e702      	b.n	6de <chip_vm+0x2ee>
				key_tone(vms.var[x],vms.var[y],true);
     8d8:	44a1      	add	r9, r4
     8da:	44a0      	add	r8, r4
     8dc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8e0:	f899 1006 	ldrb.w	r1, [r9, #6]
     8e4:	f898 0006 	ldrb.w	r0, [r8, #6]
     8e8:	f002 f844 	bl	2974 <key_tone>
				break;
     8ec:	e6f7      	b.n	6de <chip_vm+0x2ee>
				vms.stack[++vms.sp]=vms.var[x];
     8ee:	7923      	ldrb	r3, [r4, #4]
     8f0:	3301      	adds	r3, #1
     8f2:	b2db      	uxtb	r3, r3
     8f4:	7123      	strb	r3, [r4, #4]
     8f6:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     8fa:	44a0      	add	r8, r4
     8fc:	f898 2006 	ldrb.w	r2, [r8, #6]
     900:	835a      	strh	r2, [r3, #26]
				break;
     902:	e6ec      	b.n	6de <chip_vm+0x2ee>
				vms.var[x]=vms.stack[vms.sp--];
     904:	7923      	ldrb	r3, [r4, #4]
     906:	1e5a      	subs	r2, r3, #1
     908:	7122      	strb	r2, [r4, #4]
     90a:	44a0      	add	r8, r4
     90c:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     910:	8b5b      	ldrh	r3, [r3, #26]
     912:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     916:	e6e2      	b.n	6de <chip_vm+0x2ee>
					vparams=get_video_params();
     918:	f002 fd98 	bl	344c <get_video_params>
					vms.var[x]=vparams->hres;
     91c:	44a0      	add	r8, r4
     91e:	8983      	ldrh	r3, [r0, #12]
     920:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     924:	e6db      	b.n	6de <chip_vm+0x2ee>
					vparams=get_video_params();
     926:	f002 fd91 	bl	344c <get_video_params>
					vms.var[x]=vparams->vres;
     92a:	44a0      	add	r8, r4
     92c:	89c3      	ldrh	r3, [r0, #14]
     92e:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     932:	e6d4      	b.n	6de <chip_vm+0x2ee>
			    vms.var[x] |= (1<<(y&0x7));
     934:	44a0      	add	r8, r4
     936:	f009 0907 	and.w	r9, r9, #7
     93a:	2301      	movs	r3, #1
     93c:	fa03 f309 	lsl.w	r3, r3, r9
     940:	f898 2006 	ldrb.w	r2, [r8, #6]
     944:	4313      	orrs	r3, r2
     946:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     94a:	e6c8      	b.n	6de <chip_vm+0x2ee>
			    vms.var[x] &= ~(1<<(y&0x7));
     94c:	44a0      	add	r8, r4
     94e:	f009 0207 	and.w	r2, r9, #7
     952:	2301      	movs	r3, #1
     954:	fa03 f202 	lsl.w	r2, r3, r2
     958:	f898 3006 	ldrb.w	r3, [r8, #6]
     95c:	ea23 0302 	bic.w	r3, r3, r2
     960:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     964:	e6bb      	b.n	6de <chip_vm+0x2ee>
   			    vms.var[x] ^= (1<<(y&0x7));
     966:	44a0      	add	r8, r4
     968:	f009 0907 	and.w	r9, r9, #7
     96c:	2301      	movs	r3, #1
     96e:	fa03 f309 	lsl.w	r3, r3, r9
     972:	f898 2006 	ldrb.w	r2, [r8, #6]
     976:	4053      	eors	r3, r2
     978:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     97c:	e6af      	b.n	6de <chip_vm+0x2ee>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     97e:	44a0      	add	r8, r4
     980:	f898 3006 	ldrb.w	r3, [r8, #6]
     984:	f009 0907 	and.w	r9, r9, #7
     988:	fa43 f309 	asr.w	r3, r3, r9
     98c:	f013 0f01 	tst.w	r3, #1
     990:	f43f aea5 	beq.w	6de <chip_vm+0x2ee>
     994:	8823      	ldrh	r3, [r4, #0]
     996:	3302      	adds	r3, #2
     998:	8023      	strh	r3, [r4, #0]
     99a:	e6a0      	b.n	6de <chip_vm+0x2ee>
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     99c:	44a0      	add	r8, r4
     99e:	f898 3006 	ldrb.w	r3, [r8, #6]
     9a2:	f009 0907 	and.w	r9, r9, #7
     9a6:	fa43 f309 	asr.w	r3, r3, r9
     9aa:	f013 0f01 	tst.w	r3, #1
     9ae:	f47f ae96 	bne.w	6de <chip_vm+0x2ee>
     9b2:	8823      	ldrh	r3, [r4, #0]
     9b4:	3302      	adds	r3, #2
     9b6:	8023      	strh	r3, [r4, #0]
     9b8:	e691      	b.n	6de <chip_vm+0x2ee>
			    vms.var[15]=gfx_get_pixel(x,y);
     9ba:	4649      	mov	r1, r9
     9bc:	4640      	mov	r0, r8
     9be:	f000 ff29 	bl	1814 <gfx_get_pixel>
     9c2:	7560      	strb	r0, [r4, #21]
				break;  	
     9c4:	e68b      	b.n	6de <chip_vm+0x2ee>
     9c6:	bf00      	nop
     9c8:	20000700 	.word	0x20000700
     9cc:	200006c4 	.word	0x200006c4
			vms.ix=caddr(vms.b1,vms.b2);
     9d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9d4:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9d8:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9da:	4a99      	ldr	r2, [pc, #612]	; (c40 <chip_vm+0x850>)
     9dc:	7812      	ldrb	r2, [r2, #0]
     9de:	b90a      	cbnz	r2, 9e4 <chip_vm+0x5f4>
				vms.ix<<=1;
     9e0:	005b      	lsls	r3, r3, #1
     9e2:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     9e4:	2300      	movs	r3, #0
     9e6:	7163      	strb	r3, [r4, #5]
			break;
     9e8:	e679      	b.n	6de <chip_vm+0x2ee>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     9ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9ee:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9f2:	79a2      	ldrb	r2, [r4, #6]
     9f4:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     9f8:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     9fa:	4a91      	ldr	r2, [pc, #580]	; (c40 <chip_vm+0x850>)
     9fc:	7812      	ldrb	r2, [r2, #0]
     9fe:	2a00      	cmp	r2, #0
     a00:	f47f ae6d 	bne.w	6de <chip_vm+0x2ee>
				vms.pc<<=1;
     a04:	005b      	lsls	r3, r3, #1
     a06:	8023      	strh	r3, [r4, #0]
     a08:	e669      	b.n	6de <chip_vm+0x2ee>
			vms.var[x]=rand()%vms.b2;
     a0a:	f7ff fce3 	bl	3d4 <rand>
     a0e:	44a0      	add	r8, r4
     a10:	7e63      	ldrb	r3, [r4, #25]
     a12:	fb90 f2f3 	sdiv	r2, r0, r3
     a16:	fb02 0013 	mls	r0, r2, r3, r0
     a1a:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     a1e:	e65e      	b.n	6de <chip_vm+0x2ee>
			gx=(int)(unsigned)vms.var[x];
     a20:	44a0      	add	r8, r4
     a22:	f898 0006 	ldrb.w	r0, [r8, #6]
			gy=(int)(unsigned)vms.var[y];
     a26:	44a1      	add	r9, r4
     a28:	f899 1006 	ldrb.w	r1, [r9, #6]
			if (!n){
     a2c:	f013 030f 	ands.w	r3, r3, #15
     a30:	d113      	bne.n	a5a <chip_vm+0x66a>
				if (vms.sprite_mem==RAM_MEM){
     a32:	7963      	ldrb	r3, [r4, #5]
     a34:	b94b      	cbnz	r3, a4a <chip_vm+0x65a>
					vms.var[15]=gfx_sprite(gx,gy,16,16,(const uint8_t*)&game_ram[vms.ix]);
     a36:	8863      	ldrh	r3, [r4, #2]
     a38:	4a82      	ldr	r2, [pc, #520]	; (c44 <chip_vm+0x854>)
     a3a:	4413      	add	r3, r2
     a3c:	9300      	str	r3, [sp, #0]
     a3e:	2310      	movs	r3, #16
     a40:	461a      	mov	r2, r3
     a42:	f000 ff0d 	bl	1860 <gfx_sprite>
     a46:	7560      	strb	r0, [r4, #21]
     a48:	e649      	b.n	6de <chip_vm+0x2ee>
					vms.var[15]=gfx_sprite(gx,gy,16,16,(const uint8_t*)(uint32_t)vms.ix);
     a4a:	8863      	ldrh	r3, [r4, #2]
     a4c:	9300      	str	r3, [sp, #0]
     a4e:	2310      	movs	r3, #16
     a50:	461a      	mov	r2, r3
     a52:	f000 ff05 	bl	1860 <gfx_sprite>
     a56:	7560      	strb	r0, [r4, #21]
     a58:	e641      	b.n	6de <chip_vm+0x2ee>
				if (vms.sprite_mem==RAM_MEM){
     a5a:	7962      	ldrb	r2, [r4, #5]
     a5c:	b94a      	cbnz	r2, a72 <chip_vm+0x682>
					vms.var[15]=gfx_sprite(gx,gy,8,n,(const uint8_t*)&game_ram[vms.ix]);
     a5e:	8862      	ldrh	r2, [r4, #2]
     a60:	f8df e1e0 	ldr.w	lr, [pc, #480]	; c44 <chip_vm+0x854>
     a64:	4472      	add	r2, lr
     a66:	9200      	str	r2, [sp, #0]
     a68:	2208      	movs	r2, #8
     a6a:	f000 fef9 	bl	1860 <gfx_sprite>
     a6e:	7560      	strb	r0, [r4, #21]
     a70:	e635      	b.n	6de <chip_vm+0x2ee>
					vms.var[15]=gfx_sprite(gx,gy,8,n,(const uint8_t*)(uint32_t)vms.ix);
     a72:	8862      	ldrh	r2, [r4, #2]
     a74:	9200      	str	r2, [sp, #0]
     a76:	2208      	movs	r2, #8
     a78:	f000 fef2 	bl	1860 <gfx_sprite>
     a7c:	7560      	strb	r0, [r4, #21]
     a7e:	e62e      	b.n	6de <chip_vm+0x2ee>
				switch(vms.b2){
     a80:	2b9e      	cmp	r3, #158	; 0x9e
     a82:	d003      	beq.n	a8c <chip_vm+0x69c>
     a84:	2ba1      	cmp	r3, #161	; 0xa1
     a86:	d00d      	beq.n	aa4 <chip_vm+0x6b4>
					return CHIP_BAD_OPCODE;
     a88:	2002      	movs	r0, #2
     a8a:	e173      	b.n	d74 <chip_vm+0x984>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     a8c:	44a0      	add	r8, r4
     a8e:	f898 0006 	ldrb.w	r0, [r8, #6]
     a92:	f000 fb79 	bl	1188 <btn_query_down>
     a96:	2800      	cmp	r0, #0
     a98:	f43f ae21 	beq.w	6de <chip_vm+0x2ee>
     a9c:	8823      	ldrh	r3, [r4, #0]
     a9e:	3302      	adds	r3, #2
     aa0:	8023      	strh	r3, [r4, #0]
     aa2:	e61c      	b.n	6de <chip_vm+0x2ee>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     aa4:	44a0      	add	r8, r4
     aa6:	f898 0006 	ldrb.w	r0, [r8, #6]
     aaa:	f000 fb6d 	bl	1188 <btn_query_down>
     aae:	2800      	cmp	r0, #0
     ab0:	f47f ae15 	bne.w	6de <chip_vm+0x2ee>
     ab4:	8823      	ldrh	r3, [r4, #0]
     ab6:	3302      	adds	r3, #2
     ab8:	8023      	strh	r3, [r4, #0]
     aba:	e610      	b.n	6de <chip_vm+0x2ee>
			switch(vms.b2){
     abc:	3b01      	subs	r3, #1
     abe:	2b84      	cmp	r3, #132	; 0x84
     ac0:	f200 8146 	bhi.w	d50 <chip_vm+0x960>
     ac4:	e8df f013 	tbh	[pc, r3, lsl #1]
     ac8:	01440085 	.word	0x01440085
     acc:	01440144 	.word	0x01440144
     ad0:	01440144 	.word	0x01440144
     ad4:	0144008b 	.word	0x0144008b
     ad8:	00910144 	.word	0x00910144
     adc:	01440144 	.word	0x01440144
     ae0:	01440144 	.word	0x01440144
     ae4:	01440144 	.word	0x01440144
     ae8:	01440144 	.word	0x01440144
     aec:	01440144 	.word	0x01440144
     af0:	01440097 	.word	0x01440097
     af4:	009d0144 	.word	0x009d0144
     af8:	01440144 	.word	0x01440144
     afc:	01440144 	.word	0x01440144
     b00:	00a50144 	.word	0x00a50144
     b04:	01440144 	.word	0x01440144
     b08:	01440144 	.word	0x01440144
     b0c:	01440144 	.word	0x01440144
     b10:	01440144 	.word	0x01440144
     b14:	01440144 	.word	0x01440144
     b18:	014400ac 	.word	0x014400ac
     b1c:	01440144 	.word	0x01440144
     b20:	01440144 	.word	0x01440144
     b24:	00c60144 	.word	0x00c60144
     b28:	01440144 	.word	0x01440144
     b2c:	014400d4 	.word	0x014400d4
     b30:	01440144 	.word	0x01440144
     b34:	01440144 	.word	0x01440144
     b38:	01440144 	.word	0x01440144
     b3c:	01440144 	.word	0x01440144
     b40:	01440144 	.word	0x01440144
     b44:	01440144 	.word	0x01440144
     b48:	01440144 	.word	0x01440144
     b4c:	01440144 	.word	0x01440144
     b50:	01440144 	.word	0x01440144
     b54:	01440144 	.word	0x01440144
     b58:	01440144 	.word	0x01440144
     b5c:	01440144 	.word	0x01440144
     b60:	01440144 	.word	0x01440144
     b64:	01440144 	.word	0x01440144
     b68:	01440144 	.word	0x01440144
     b6c:	01440144 	.word	0x01440144
     b70:	014400f9 	.word	0x014400f9
     b74:	01440144 	.word	0x01440144
     b78:	01440144 	.word	0x01440144
     b7c:	01440144 	.word	0x01440144
     b80:	01440144 	.word	0x01440144
     b84:	01440144 	.word	0x01440144
     b88:	01440144 	.word	0x01440144
     b8c:	01440144 	.word	0x01440144
     b90:	01440102 	.word	0x01440102
     b94:	01440144 	.word	0x01440144
     b98:	01440144 	.word	0x01440144
     b9c:	01440144 	.word	0x01440144
     ba0:	01440144 	.word	0x01440144
     ba4:	01440144 	.word	0x01440144
     ba8:	01440144 	.word	0x01440144
     bac:	010b0144 	.word	0x010b0144
     bb0:	0144010e 	.word	0x0144010e
     bb4:	01440144 	.word	0x01440144
     bb8:	01440144 	.word	0x01440144
     bbc:	01440144 	.word	0x01440144
     bc0:	01440144 	.word	0x01440144
     bc4:	01440144 	.word	0x01440144
     bc8:	01440144 	.word	0x01440144
     bcc:	01440144 	.word	0x01440144
     bd0:	0123      	.short	0x0123
				sprite_bpp=(vms.b1&0xf)/2; 
     bd2:	ea4f 0858 	mov.w	r8, r8, lsr #1
     bd6:	4b1c      	ldr	r3, [pc, #112]	; (c48 <chip_vm+0x858>)
     bd8:	f883 8000 	strb.w	r8, [r3]
				break;
     bdc:	e57f      	b.n	6de <chip_vm+0x2ee>
				vms.var[x]=game_timer;
     bde:	4b1b      	ldr	r3, [pc, #108]	; (c4c <chip_vm+0x85c>)
     be0:	881b      	ldrh	r3, [r3, #0]
     be2:	44a0      	add	r8, r4
     be4:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     be8:	e579      	b.n	6de <chip_vm+0x2ee>
				vms.var[x]=btn_wait_any();
     bea:	f000 fb01 	bl	11f0 <btn_wait_any>
     bee:	44a0      	add	r8, r4
     bf0:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     bf4:	e573      	b.n	6de <chip_vm+0x2ee>
				game_timer=vms.var[x];
     bf6:	44a0      	add	r8, r4
     bf8:	f898 2006 	ldrb.w	r2, [r8, #6]
     bfc:	4b13      	ldr	r3, [pc, #76]	; (c4c <chip_vm+0x85c>)
     bfe:	801a      	strh	r2, [r3, #0]
				break;
     c00:	e56d      	b.n	6de <chip_vm+0x2ee>
				tone(523,vms.var[x]);
     c02:	44a0      	add	r8, r4
     c04:	f898 1006 	ldrb.w	r1, [r8, #6]
     c08:	f240 200b 	movw	r0, #523	; 0x20b
     c0c:	f001 fe8c 	bl	2928 <tone>
				break;
     c10:	e565      	b.n	6de <chip_vm+0x2ee>
				vms.ix += vms.var[x];
     c12:	44a0      	add	r8, r4
     c14:	f898 3006 	ldrb.w	r3, [r8, #6]
     c18:	8862      	ldrh	r2, [r4, #2]
     c1a:	4413      	add	r3, r2
     c1c:	8063      	strh	r3, [r4, #2]
				break;
     c1e:	e55e      	b.n	6de <chip_vm+0x2ee>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     c20:	44a0      	add	r8, r4
     c22:	f898 3006 	ldrb.w	r3, [r8, #6]
     c26:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     c2a:	4a09      	ldr	r2, [pc, #36]	; (c50 <chip_vm+0x860>)
     c2c:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c30:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c32:	2301      	movs	r3, #1
     c34:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     c36:	2000      	movs	r0, #0
     c38:	f002 f82e 	bl	2c98 <select_font>
				break;
     c3c:	e54f      	b.n	6de <chip_vm+0x2ee>
     c3e:	bf00      	nop
     c40:	200006c4 	.word	0x200006c4
     c44:	20000700 	.word	0x20000700
     c48:	200001c8 	.word	0x200001c8
     c4c:	20004e90 	.word	0x20004e90
     c50:	00003c48 	.word	0x00003c48
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c54:	44a0      	add	r8, r4
     c56:	f898 3006 	ldrb.w	r3, [r8, #6]
     c5a:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c5e:	4a48      	ldr	r2, [pc, #288]	; (d80 <chip_vm+0x990>)
     c60:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c64:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c66:	2001      	movs	r0, #1
     c68:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     c6a:	f002 f815 	bl	2c98 <select_font>
				break;
     c6e:	e536      	b.n	6de <chip_vm+0x2ee>
				n=vms.var[x];
     c70:	44a0      	add	r8, r4
     c72:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     c76:	4a43      	ldr	r2, [pc, #268]	; (d84 <chip_vm+0x994>)
     c78:	fba2 0301 	umull	r0, r3, r2, r1
     c7c:	08db      	lsrs	r3, r3, #3
     c7e:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     c82:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     c86:	f884 005e 	strb.w	r0, [r4, #94]	; 0x5e
				block[1]=n%10;
     c8a:	b2db      	uxtb	r3, r3
     c8c:	fba2 0203 	umull	r0, r2, r2, r3
     c90:	08d2      	lsrs	r2, r2, #3
     c92:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     c96:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     c9a:	f884 305d 	strb.w	r3, [r4, #93]	; 0x5d
				block[0]=n/10;
     c9e:	fba7 2301 	umull	r2, r3, r7, r1
     ca2:	095b      	lsrs	r3, r3, #5
     ca4:	f884 305c 	strb.w	r3, [r4, #92]	; 0x5c
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     ca8:	8863      	ldrh	r3, [r4, #2]
     caa:	2203      	movs	r2, #3
     cac:	4936      	ldr	r1, [pc, #216]	; (d88 <chip_vm+0x998>)
     cae:	4419      	add	r1, r3
     cb0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
     cb4:	f000 fba3 	bl	13fe <move>
				break;
     cb8:	e511      	b.n	6de <chip_vm+0x2ee>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     cba:	8863      	ldrh	r3, [r4, #2]
     cbc:	f108 0201 	add.w	r2, r8, #1
     cc0:	4931      	ldr	r1, [pc, #196]	; (d88 <chip_vm+0x998>)
     cc2:	4419      	add	r1, r3
     cc4:	4630      	mov	r0, r6
     cc6:	f000 fb9a 	bl	13fe <move>
				break;
     cca:	e508      	b.n	6de <chip_vm+0x2ee>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     ccc:	8863      	ldrh	r3, [r4, #2]
     cce:	f108 0201 	add.w	r2, r8, #1
     cd2:	4631      	mov	r1, r6
     cd4:	482c      	ldr	r0, [pc, #176]	; (d88 <chip_vm+0x998>)
     cd6:	4418      	add	r0, r3
     cd8:	f000 fb91 	bl	13fe <move>
				break;
     cdc:	e4ff      	b.n	6de <chip_vm+0x2ee>
				vms.s=(x&0x7)*FLASH_SECTOR_SIZE; // flash sector {0..7}
     cde:	0352      	lsls	r2, r2, #13
     ce0:	82e2      	strh	r2, [r4, #22]
				break;			
     ce2:	e4fc      	b.n	6de <chip_vm+0x2ee>
				if (video_mode==VM_BPCHIP){
     ce4:	4b29      	ldr	r3, [pc, #164]	; (d8c <chip_vm+0x99c>)
     ce6:	781b      	ldrb	r3, [r3, #0]
     ce8:	b953      	cbnz	r3, d00 <chip_vm+0x910>
					flash_write_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     cea:	8ae3      	ldrh	r3, [r4, #22]
     cec:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     cf0:	8860      	ldrh	r0, [r4, #2]
     cf2:	f108 0201 	add.w	r2, r8, #1
     cf6:	4631      	mov	r1, r6
     cf8:	4418      	add	r0, r3
     cfa:	f000 f985 	bl	1008 <flash_write_block>
     cfe:	e4ee      	b.n	6de <chip_vm+0x2ee>
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
     d00:	f108 0201 	add.w	r2, r8, #1
     d04:	4631      	mov	r1, r6
     d06:	4822      	ldr	r0, [pc, #136]	; (d90 <chip_vm+0x9a0>)
     d08:	f000 f97e 	bl	1008 <flash_write_block>
     d0c:	e4e7      	b.n	6de <chip_vm+0x2ee>
				if (video_mode==VM_BPCHIP){
     d0e:	4b1f      	ldr	r3, [pc, #124]	; (d8c <chip_vm+0x99c>)
     d10:	781b      	ldrb	r3, [r3, #0]
     d12:	b953      	cbnz	r3, d2a <chip_vm+0x93a>
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d14:	8ae3      	ldrh	r3, [r4, #22]
     d16:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d1a:	8860      	ldrh	r0, [r4, #2]
     d1c:	f108 0201 	add.w	r2, r8, #1
     d20:	4631      	mov	r1, r6
     d22:	4418      	add	r0, r3
     d24:	f000 f956 	bl	fd4 <flash_read_block>
     d28:	e4d9      	b.n	6de <chip_vm+0x2ee>
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     d2a:	f108 0201 	add.w	r2, r8, #1
     d2e:	4631      	mov	r1, r6
     d30:	4817      	ldr	r0, [pc, #92]	; (d90 <chip_vm+0x9a0>)
     d32:	f000 f94f 	bl	fd4 <flash_read_block>
     d36:	e4d2      	b.n	6de <chip_vm+0x2ee>
	    switch (vms.b1>>4){
     d38:	f04f 0800 	mov.w	r8, #0
     d3c:	e486      	b.n	64c <chip_vm+0x25c>
			}else switch(vms.b2){
     d3e:	f04f 0800 	mov.w	r8, #0
     d42:	e483      	b.n	64c <chip_vm+0x25c>
				exit_code=CHIP_BAD_OPCODE;
     d44:	f04f 0802 	mov.w	r8, #2
     d48:	e480      	b.n	64c <chip_vm+0x25c>
				exit_code=CHIP_BAD_OPCODE;
     d4a:	f04f 0802 	mov.w	r8, #2
     d4e:	e47d      	b.n	64c <chip_vm+0x25c>
				}
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     d50:	f04f 0802 	mov.w	r8, #2
     d54:	e47a      	b.n	64c <chip_vm+0x25c>
			exit_code=CHIP_BAD_ADDR;
     d56:	f04f 0803 	mov.w	r8, #3
     d5a:	e001      	b.n	d60 <chip_vm+0x970>
     d5c:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     d60:	2002      	movs	r0, #2
     d62:	f001 ff99 	bl	2c98 <select_font>
	set_keymap(default_kmap);
     d66:	480b      	ldr	r0, [pc, #44]	; (d94 <chip_vm+0x9a4>)
     d68:	f000 f9c4 	bl	10f4 <set_keymap>
	set_video_mode(VM_BPCHIP);
     d6c:	2000      	movs	r0, #0
     d6e:	f002 fb43 	bl	33f8 <set_video_mode>
	return exit_code;
     d72:	4640      	mov	r0, r8
}//schipp()
     d74:	b009      	add	sp, #36	; 0x24
     d76:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     d7a:	f04f 0801 	mov.w	r8, #1
     d7e:	e7ef      	b.n	d60 <chip_vm+0x970>
     d80:	00003ba8 	.word	0x00003ba8
     d84:	cccccccd 	.word	0xcccccccd
     d88:	20000700 	.word	0x20000700
     d8c:	200006c4 	.word	0x200006c4
     d90:	0001fff0 	.word	0x0001fff0
     d94:	00003ca8 	.word	0x00003ca8

00000d98 <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     d98:	2200      	movs	r2, #0
     d9a:	4b0f      	ldr	r3, [pc, #60]	; (dd8 <flash_enable+0x40>)
     d9c:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     d9e:	4b0f      	ldr	r3, [pc, #60]	; (ddc <flash_enable+0x44>)
     da0:	681b      	ldr	r3, [r3, #0]
     da2:	f013 0f01 	tst.w	r3, #1
     da6:	d10b      	bne.n	dc0 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     da8:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     dac:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     db0:	6813      	ldr	r3, [r2, #0]
     db2:	f043 0301 	orr.w	r3, r3, #1
     db6:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     db8:	6813      	ldr	r3, [r2, #0]
     dba:	f013 0f02 	tst.w	r3, #2
     dbe:	d0fb      	beq.n	db8 <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     dc0:	4b07      	ldr	r3, [pc, #28]	; (de0 <flash_enable+0x48>)
     dc2:	4a08      	ldr	r2, [pc, #32]	; (de4 <flash_enable+0x4c>)
     dc4:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     dc6:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     dca:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     dcc:	6918      	ldr	r0, [r3, #16]
     dce:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     dd2:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     dd6:	4770      	bx	lr
     dd8:	200002ac 	.word	0x200002ac
     ddc:	40021000 	.word	0x40021000
     de0:	40022000 	.word	0x40022000
     de4:	45670123 	.word	0x45670123

00000de8 <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     de8:	4a0b      	ldr	r2, [pc, #44]	; (e18 <flash_write_hword+0x30>)
     dea:	68d3      	ldr	r3, [r2, #12]
     dec:	f013 0f01 	tst.w	r3, #1
     df0:	d1fb      	bne.n	dea <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     df2:	4b09      	ldr	r3, [pc, #36]	; (e18 <flash_write_hword+0x30>)
     df4:	68da      	ldr	r2, [r3, #12]
     df6:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     dfa:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     dfc:	2201      	movs	r2, #1
     dfe:	611a      	str	r2, [r3, #16]
	*address=hword;
     e00:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     e02:	68da      	ldr	r2, [r3, #12]
     e04:	f012 0f01 	tst.w	r2, #1
     e08:	d003      	beq.n	e12 <flash_write_hword+0x2a>
     e0a:	68da      	ldr	r2, [r3, #12]
     e0c:	f012 0f20 	tst.w	r2, #32
     e10:	d0f7      	beq.n	e02 <flash_write_hword+0x1a>
	return *address==hword;
}
     e12:	2001      	movs	r0, #1
     e14:	4770      	bx	lr
     e16:	bf00      	nop
     e18:	40022000 	.word	0x40022000

00000e1c <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e1c:	283f      	cmp	r0, #63	; 0x3f
     e1e:	d914      	bls.n	e4a <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     e20:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     e22:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     e24:	1c81      	adds	r1, r0, #2
     e26:	8802      	ldrh	r2, [r0, #0]
     e28:	f64f 73ff 	movw	r3, #65535	; 0xffff
     e2c:	429a      	cmp	r2, r3
     e2e:	d110      	bne.n	e52 <flash_erase_row+0x36>
     e30:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     e34:	460b      	mov	r3, r1
     e36:	f64f 74ff 	movw	r4, #65535	; 0xffff
     e3a:	f833 2b02 	ldrh.w	r2, [r3], #2
     e3e:	42a2      	cmp	r2, r4
     e40:	d107      	bne.n	e52 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e42:	429d      	cmp	r5, r3
     e44:	d1f9      	bne.n	e3a <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     e46:	2001      	movs	r0, #1
     e48:	e02f      	b.n	eaa <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e4a:	2000      	movs	r0, #0
     e4c:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     e4e:	2000      	movs	r0, #0
     e50:	e02b      	b.n	eaa <flash_erase_row+0x8e>
     e52:	4b17      	ldr	r3, [pc, #92]	; (eb0 <flash_erase_row+0x94>)
     e54:	691b      	ldr	r3, [r3, #16]
     e56:	f013 0f80 	tst.w	r3, #128	; 0x80
     e5a:	d1f8      	bne.n	e4e <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e5c:	4b14      	ldr	r3, [pc, #80]	; (eb0 <flash_erase_row+0x94>)
     e5e:	68da      	ldr	r2, [r3, #12]
     e60:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     e64:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     e66:	2202      	movs	r2, #2
     e68:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     e6a:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     e6c:	691a      	ldr	r2, [r3, #16]
     e6e:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     e72:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     e74:	68da      	ldr	r2, [r3, #12]
     e76:	f012 0f01 	tst.w	r2, #1
     e7a:	d003      	beq.n	e84 <flash_erase_row+0x68>
     e7c:	68da      	ldr	r2, [r3, #12]
     e7e:	f012 0f20 	tst.w	r2, #32
     e82:	d0f7      	beq.n	e74 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     e84:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     e86:	f64f 72ff 	movw	r2, #65535	; 0xffff
     e8a:	4293      	cmp	r3, r2
     e8c:	d107      	bne.n	e9e <flash_erase_row+0x82>
     e8e:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     e92:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     e96:	4293      	cmp	r3, r2
     e98:	d101      	bne.n	e9e <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e9a:	4281      	cmp	r1, r0
     e9c:	d1f9      	bne.n	e92 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     e9e:	f64f 70ff 	movw	r0, #65535	; 0xffff
     ea2:	4283      	cmp	r3, r0
     ea4:	bf14      	ite	ne
     ea6:	2000      	movne	r0, #0
     ea8:	2001      	moveq	r0, #1
}
     eaa:	bc30      	pop	{r4, r5}
     eac:	4770      	bx	lr
     eae:	bf00      	nop
     eb0:	40022000 	.word	0x40022000

00000eb4 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     eb4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     eb6:	4b1c      	ldr	r3, [pc, #112]	; (f28 <flash_sync+0x74>)
     eb8:	781b      	ldrb	r3, [r3, #0]
     eba:	f013 0f01 	tst.w	r3, #1
     ebe:	d102      	bne.n	ec6 <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     ec0:	2301      	movs	r3, #1
}
     ec2:	4618      	mov	r0, r3
     ec4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     ec6:	4b18      	ldr	r3, [pc, #96]	; (f28 <flash_sync+0x74>)
     ec8:	7858      	ldrb	r0, [r3, #1]
     eca:	f7ff ffa7 	bl	e1c <flash_erase_row>
     ece:	4603      	mov	r3, r0
     ed0:	2800      	cmp	r0, #0
     ed2:	d0f6      	beq.n	ec2 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     ed4:	4e14      	ldr	r6, [pc, #80]	; (f28 <flash_sync+0x74>)
     ed6:	7875      	ldrb	r5, [r6, #1]
     ed8:	02ad      	lsls	r5, r5, #10
     eda:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     edc:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     ede:	f64f 77ff 	movw	r7, #65535	; 0xffff
     ee2:	e004      	b.n	eee <flash_sync+0x3a>
		dest++;
     ee4:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     ee6:	3401      	adds	r4, #1
     ee8:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     eec:	d00a      	beq.n	f04 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     eee:	f836 1b02 	ldrh.w	r1, [r6], #2
     ef2:	42b9      	cmp	r1, r7
     ef4:	d0f6      	beq.n	ee4 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     ef6:	4628      	mov	r0, r5
     ef8:	f7ff ff76 	bl	de8 <flash_write_hword>
     efc:	2800      	cmp	r0, #0
     efe:	d1f1      	bne.n	ee4 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     f00:	2c00      	cmp	r4, #0
     f02:	dd04      	ble.n	f0e <flash_sync+0x5a>
     f04:	4a08      	ldr	r2, [pc, #32]	; (f28 <flash_sync+0x74>)
     f06:	7813      	ldrb	r3, [r2, #0]
     f08:	f023 0304 	bic.w	r3, r3, #4
     f0c:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     f0e:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f12:	d106      	bne.n	f22 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     f14:	4a04      	ldr	r2, [pc, #16]	; (f28 <flash_sync+0x74>)
     f16:	7813      	ldrb	r3, [r2, #0]
     f18:	f023 0301 	bic.w	r3, r3, #1
     f1c:	7013      	strb	r3, [r2, #0]
			return 1;
     f1e:	2301      	movs	r3, #1
     f20:	e7cf      	b.n	ec2 <flash_sync+0xe>
		return 0;
     f22:	2300      	movs	r3, #0
     f24:	e7cd      	b.n	ec2 <flash_sync+0xe>
     f26:	bf00      	nop
     f28:	200002ac 	.word	0x200002ac

00000f2c <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     f2c:	2200      	movs	r2, #0
     f2e:	4b01      	ldr	r3, [pc, #4]	; (f34 <flash_flush+0x8>)
     f30:	701a      	strb	r2, [r3, #0]
     f32:	4770      	bx	lr
     f34:	200002ac 	.word	0x200002ac

00000f38 <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     f38:	b508      	push	{r3, lr}
	flash_sync();
     f3a:	f7ff ffbb 	bl	eb4 <flash_sync>
	row_buff.flags=0;
     f3e:	2200      	movs	r2, #0
     f40:	4b06      	ldr	r3, [pc, #24]	; (f5c <flash_disable+0x24>)
     f42:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     f44:	4a06      	ldr	r2, [pc, #24]	; (f60 <flash_disable+0x28>)
     f46:	6913      	ldr	r3, [r2, #16]
     f48:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     f4c:	6113      	str	r3, [r2, #16]
	RCC->CR&=~RCC_CR_HSION;
     f4e:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
     f52:	6813      	ldr	r3, [r2, #0]
     f54:	f023 0301 	bic.w	r3, r3, #1
     f58:	6013      	str	r3, [r2, #0]
     f5a:	bd08      	pop	{r3, pc}
     f5c:	200002ac 	.word	0x200002ac
     f60:	40022000 	.word	0x40022000

00000f64 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     f64:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     f68:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     f6c:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     f70:	d92c      	bls.n	fcc <flash_write_byte+0x68>
     f72:	460e      	mov	r6, r1
     f74:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     f76:	4b16      	ldr	r3, [pc, #88]	; (fd0 <flash_write_byte+0x6c>)
     f78:	785b      	ldrb	r3, [r3, #1]
     f7a:	4598      	cmp	r8, r3
     f7c:	d019      	beq.n	fb2 <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     f7e:	f7ff ff99 	bl	eb4 <flash_sync>
     f82:	4603      	mov	r3, r0
     f84:	b1f8      	cbz	r0, fc6 <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     f86:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     f8a:	f023 0303 	bic.w	r3, r3, #3
     f8e:	4a10      	ldr	r2, [pc, #64]	; (fd0 <flash_write_byte+0x6c>)
     f90:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     f94:	f833 4b02 	ldrh.w	r4, [r3], #2
     f98:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f9c:	42ab      	cmp	r3, r5
     f9e:	d1f9      	bne.n	f94 <flash_write_byte+0x30>
	row_buff.row=r;
     fa0:	4a0b      	ldr	r2, [pc, #44]	; (fd0 <flash_write_byte+0x6c>)
     fa2:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     fa6:	7813      	ldrb	r3, [r2, #0]
     fa8:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     fac:	f043 0302 	orr.w	r3, r3, #2
     fb0:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     fb2:	4a07      	ldr	r2, [pc, #28]	; (fd0 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     fb4:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     fb8:	4413      	add	r3, r2
     fba:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     fbc:	7813      	ldrb	r3, [r2, #0]
     fbe:	f043 0301 	orr.w	r3, r3, #1
     fc2:	7013      	strb	r3, [r2, #0]
	return 1;
     fc4:	2301      	movs	r3, #1
}
     fc6:	4618      	mov	r0, r3
     fc8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     fcc:	2300      	movs	r3, #0
     fce:	e7fa      	b.n	fc6 <flash_write_byte+0x62>
     fd0:	200002ac 	.word	0x200002ac

00000fd4 <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     fd4:	2a00      	cmp	r2, #0
     fd6:	dd13      	ble.n	1000 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     fd8:	b410      	push	{r4}
     fda:	4603      	mov	r3, r0
     fdc:	3901      	subs	r1, #1
     fde:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     fe0:	4a08      	ldr	r2, [pc, #32]	; (1004 <flash_read_block+0x30>)
     fe2:	7854      	ldrb	r4, [r2, #1]
     fe4:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     fe8:	bf03      	ittte	eq
     fea:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     fee:	18a4      	addeq	r4, r4, r2
     ff0:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     ff2:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     ff4:	f801 4f01 	strb.w	r4, [r1, #1]!
     ff8:	3301      	adds	r3, #1
     ffa:	4283      	cmp	r3, r0
     ffc:	d1f1      	bne.n	fe2 <flash_read_block+0xe>
}
     ffe:	bc10      	pop	{r4}
    1000:	4770      	bx	lr
    1002:	bf00      	nop
    1004:	200002ac 	.word	0x200002ac

00001008 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    1008:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<(void*)0x10000) return 0;
    100a:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
    100e:	d202      	bcs.n	1016 <flash_write_block+0xe>
    1010:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
    1012:	4618      	mov	r0, r3
    1014:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1016:	4604      	mov	r4, r0
    1018:	460e      	mov	r6, r1
    101a:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
    101c:	f7ff febc 	bl	d98 <flash_enable>
    1020:	4603      	mov	r3, r0
    1022:	2800      	cmp	r0, #0
    1024:	d0f5      	beq.n	1012 <flash_write_block+0xa>
	for (i=0;i<size;i++){
    1026:	2f00      	cmp	r7, #0
    1028:	dd0c      	ble.n	1044 <flash_write_block+0x3c>
    102a:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
    102c:	1c65      	adds	r5, r4, #1
    102e:	f816 1b01 	ldrb.w	r1, [r6], #1
    1032:	4620      	mov	r0, r4
    1034:	f7ff ff96 	bl	f64 <flash_write_byte>
    1038:	4603      	mov	r3, r0
    103a:	2800      	cmp	r0, #0
    103c:	d0e9      	beq.n	1012 <flash_write_block+0xa>
    103e:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
    1040:	42bd      	cmp	r5, r7
    1042:	d1f3      	bne.n	102c <flash_write_block+0x24>
	flash_disable();
    1044:	f7ff ff78 	bl	f38 <flash_disable>
	return 1;
    1048:	2301      	movs	r3, #1
    104a:	e7e2      	b.n	1012 <flash_write_block+0xa>

0000104c <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
    104c:	4b0a      	ldr	r3, [pc, #40]	; (1078 <btn_mask+0x2c>)
    104e:	781b      	ldrb	r3, [r3, #0]
    1050:	4283      	cmp	r3, r0
    1052:	d00a      	beq.n	106a <btn_mask+0x1e>
    1054:	4a09      	ldr	r2, [pc, #36]	; (107c <btn_mask+0x30>)
    for (i=0;i<8;i++){
    1056:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
    1058:	f812 1b01 	ldrb.w	r1, [r2], #1
    105c:	4281      	cmp	r1, r0
    105e:	d005      	beq.n	106c <btn_mask+0x20>
    for (i=0;i<8;i++){
    1060:	3301      	adds	r3, #1
    1062:	2b08      	cmp	r3, #8
    1064:	d1f8      	bne.n	1058 <btn_mask+0xc>
    }
    return 255;
    1066:	20ff      	movs	r0, #255	; 0xff
}
    1068:	4770      	bx	lr
    for (i=0;i<8;i++){
    106a:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
    106c:	2001      	movs	r0, #1
    106e:	fa00 f303 	lsl.w	r3, r0, r3
    1072:	b2d8      	uxtb	r0, r3
    1074:	4770      	bx	lr
    1076:	bf00      	nop
    1078:	200006b0 	.word	0x200006b0
    107c:	200006b1 	.word	0x200006b1

00001080 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
    1080:	b430      	push	{r4, r5}
    1082:	4605      	mov	r5, r0
    1084:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
    1086:	2000      	movs	r0, #0
    1088:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<MOSI_PIN);
    108a:	4b19      	ldr	r3, [pc, #100]	; (10f0 <shift_out+0x70>)
        if (byte&mask){
    108c:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
    108e:	68d9      	ldr	r1, [r3, #12]
    1090:	bf14      	ite	ne
    1092:	f441 4180 	orrne.w	r1, r1, #16384	; 0x4000
            GAMEPAD_PORT->ODR&=~(1<<MOSI_PIN);
    1096:	f421 4180 	biceq.w	r1, r1, #16384	; 0x4000
    109a:	60d9      	str	r1, [r3, #12]
        }
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    109c:	68d9      	ldr	r1, [r3, #12]
    109e:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
    10a2:	60d9      	str	r1, [r3, #12]
        _clk_delay();
    10a4:	bf00      	nop
    10a6:	bf00      	nop
    10a8:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10aa:	68d9      	ldr	r1, [r3, #12]
    10ac:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    10b0:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
    10b2:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&(1<<MISO_PIN)) rx_byte|=128;    
    10b4:	6899      	ldr	r1, [r3, #8]
    10b6:	f411 4f00 	tst.w	r1, #32768	; 0x8000
    10ba:	bf1c      	itt	ne
    10bc:	f060 007f 	ornne	r0, r0, #127	; 0x7f
    10c0:	b2c0      	uxtbne	r0, r0
        mask<<=1;
    10c2:	0052      	lsls	r2, r2, #1
    10c4:	b2d2      	uxtb	r2, r2
    while (mask){
    10c6:	3c01      	subs	r4, #1
    10c8:	d1e0      	bne.n	108c <shift_out+0xc>
    }
    GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
    10ca:	4b09      	ldr	r3, [pc, #36]	; (10f0 <shift_out+0x70>)
    10cc:	68da      	ldr	r2, [r3, #12]
    10ce:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
    10d2:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10d4:	68da      	ldr	r2, [r3, #12]
    10d6:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    10da:	60da      	str	r2, [r3, #12]
    _clk_delay();
    10dc:	bf00      	nop
    10de:	bf00      	nop
    10e0:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10e2:	68da      	ldr	r2, [r3, #12]
    10e4:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    10e8:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    10ea:	bc30      	pop	{r4, r5}
    10ec:	4770      	bx	lr
    10ee:	bf00      	nop
    10f0:	40010c00 	.word	0x40010c00

000010f4 <set_keymap>:
void set_keymap(const uint8_t *kmap){
    10f4:	1e43      	subs	r3, r0, #1
    10f6:	4a04      	ldr	r2, [pc, #16]	; (1108 <set_keymap+0x14>)
    10f8:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    10fa:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    10fe:	f802 1f01 	strb.w	r1, [r2, #1]!
    1102:	4283      	cmp	r3, r0
    1104:	d1f9      	bne.n	10fa <set_keymap+0x6>
}
    1106:	4770      	bx	lr
    1108:	200006af 	.word	0x200006af

0000110c <gamepad_init>:
void gamepad_init(){
    110c:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,MOSI_PIN,OUTPUT_PP_SLOW);
    110e:	4c09      	ldr	r4, [pc, #36]	; (1134 <gamepad_init+0x28>)
    1110:	2202      	movs	r2, #2
    1112:	210e      	movs	r1, #14
    1114:	4620      	mov	r0, r4
    1116:	f000 fa31 	bl	157c <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    111a:	2202      	movs	r2, #2
    111c:	210d      	movs	r1, #13
    111e:	4620      	mov	r0, r4
    1120:	f000 fa2c 	bl	157c <config_pin>
    btn_state=0xff;
    1124:	22ff      	movs	r2, #255	; 0xff
    1126:	4b04      	ldr	r3, [pc, #16]	; (1138 <gamepad_init+0x2c>)
    1128:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    112a:	4804      	ldr	r0, [pc, #16]	; (113c <gamepad_init+0x30>)
    112c:	f7ff ffe2 	bl	10f4 <set_keymap>
    1130:	bd10      	pop	{r4, pc}
    1132:	bf00      	nop
    1134:	40010c00 	.word	0x40010c00
    1138:	20002700 	.word	0x20002700
    113c:	00003ca8 	.word	0x00003ca8

00001140 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1140:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    1142:	20fe      	movs	r0, #254	; 0xfe
    1144:	f7ff ff9c 	bl	1080 <shift_out>
    1148:	4b0c      	ldr	r3, [pc, #48]	; (117c <read_gamepad+0x3c>)
    114a:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    114c:	781b      	ldrb	r3, [r3, #0]
    114e:	f013 0f12 	tst.w	r3, #18
    1152:	d111      	bne.n	1178 <read_gamepad+0x38>
        while (btn_state!=0xff){
    1154:	4b09      	ldr	r3, [pc, #36]	; (117c <read_gamepad+0x3c>)
    1156:	781b      	ldrb	r3, [r3, #0]
    1158:	b2db      	uxtb	r3, r3
    115a:	2bff      	cmp	r3, #255	; 0xff
    115c:	d009      	beq.n	1172 <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    115e:	25fe      	movs	r5, #254	; 0xfe
    1160:	4c06      	ldr	r4, [pc, #24]	; (117c <read_gamepad+0x3c>)
    1162:	4628      	mov	r0, r5
    1164:	f7ff ff8c 	bl	1080 <shift_out>
    1168:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    116a:	7823      	ldrb	r3, [r4, #0]
    116c:	b2db      	uxtb	r3, r3
    116e:	2bff      	cmp	r3, #255	; 0xff
    1170:	d1f7      	bne.n	1162 <read_gamepad+0x22>
        };
        _reset_mcu();
    1172:	4a03      	ldr	r2, [pc, #12]	; (1180 <read_gamepad+0x40>)
    1174:	4b03      	ldr	r3, [pc, #12]	; (1184 <read_gamepad+0x44>)
    1176:	601a      	str	r2, [r3, #0]
    1178:	bd38      	pop	{r3, r4, r5, pc}
    117a:	bf00      	nop
    117c:	20002700 	.word	0x20002700
    1180:	05fa0004 	.word	0x05fa0004
    1184:	e000ed0c 	.word	0xe000ed0c

00001188 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    1188:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    118a:	f7ff ff5f 	bl	104c <btn_mask>
    return !(btn_state&mask);
    118e:	4b03      	ldr	r3, [pc, #12]	; (119c <btn_query_down+0x14>)
    1190:	781b      	ldrb	r3, [r3, #0]
    1192:	4203      	tst	r3, r0
}
    1194:	bf0c      	ite	eq
    1196:	2001      	moveq	r0, #1
    1198:	2000      	movne	r0, #0
    119a:	bd08      	pop	{r3, pc}
    119c:	20002700 	.word	0x20002700

000011a0 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    11a0:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11a2:	f7ff ff53 	bl	104c <btn_mask>
    11a6:	4606      	mov	r6, r0
    int frame_count=0;
    11a8:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    11aa:	4d06      	ldr	r5, [pc, #24]	; (11c4 <btn_wait_down+0x24>)
    11ac:	e000      	b.n	11b0 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11ae:	2400      	movs	r4, #0
        frame_sync();
    11b0:	f002 f912 	bl	33d8 <frame_sync>
        if (!(btn_state&mask)){
    11b4:	782b      	ldrb	r3, [r5, #0]
    11b6:	4233      	tst	r3, r6
    11b8:	d1f9      	bne.n	11ae <btn_wait_down+0xe>
            frame_count++;
    11ba:	3401      	adds	r4, #1
    while (frame_count<3){
    11bc:	2c02      	cmp	r4, #2
    11be:	ddf7      	ble.n	11b0 <btn_wait_down+0x10>
        }
    }
}
    11c0:	bd70      	pop	{r4, r5, r6, pc}
    11c2:	bf00      	nop
    11c4:	20002700 	.word	0x20002700

000011c8 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    11c8:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11ca:	f7ff ff3f 	bl	104c <btn_mask>
    11ce:	4606      	mov	r6, r0
    int frame_count=0;
    11d0:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    11d2:	4d06      	ldr	r5, [pc, #24]	; (11ec <btn_wait_up+0x24>)
    11d4:	e000      	b.n	11d8 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11d6:	2400      	movs	r4, #0
        frame_sync();
    11d8:	f002 f8fe 	bl	33d8 <frame_sync>
        if ((btn_state&mask)){
    11dc:	782b      	ldrb	r3, [r5, #0]
    11de:	4233      	tst	r3, r6
    11e0:	d0f9      	beq.n	11d6 <btn_wait_up+0xe>
            frame_count++;
    11e2:	3401      	adds	r4, #1
    while (frame_count<3){
    11e4:	2c02      	cmp	r4, #2
    11e6:	ddf7      	ble.n	11d8 <btn_wait_up+0x10>
        }
    }
}
    11e8:	bd70      	pop	{r4, r5, r6, pc}
    11ea:	bf00      	nop
    11ec:	20002700 	.word	0x20002700

000011f0 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    11f0:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    11f2:	4b15      	ldr	r3, [pc, #84]	; (1248 <btn_wait_any+0x58>)
    11f4:	781c      	ldrb	r4, [r3, #0]
    11f6:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    11f8:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    11fa:	461d      	mov	r5, r3
    11fc:	e007      	b.n	120e <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    11fe:	782a      	ldrb	r2, [r5, #0]
    1200:	b2d2      	uxtb	r2, r2
    1202:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1204:	bf18      	it	ne
    1206:	3601      	addne	r6, #1
    while (frame_count<3){
    1208:	2e02      	cmp	r6, #2
    120a:	dc0a      	bgt.n	1222 <btn_wait_any+0x32>
    120c:	461c      	mov	r4, r3
        frame_sync();
    120e:	f002 f8e3 	bl	33d8 <frame_sync>
        if (last_state!=btn_state){
    1212:	782b      	ldrb	r3, [r5, #0]
    1214:	b2db      	uxtb	r3, r3
    1216:	42a3      	cmp	r3, r4
    1218:	d0f1      	beq.n	11fe <btn_wait_any+0xe>
            last_state=btn_state;
    121a:	782c      	ldrb	r4, [r5, #0]
    121c:	b2e4      	uxtb	r4, r4
            frame_count=0;
    121e:	2600      	movs	r6, #0
    1220:	e7f5      	b.n	120e <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    1222:	43e3      	mvns	r3, r4
    mask>>=1;
    1224:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1228:	b15b      	cbz	r3, 1242 <btn_wait_any+0x52>
    122a:	2200      	movs	r2, #0
    122c:	3201      	adds	r2, #1
    122e:	b2d2      	uxtb	r2, r2
    1230:	085b      	lsrs	r3, r3, #1
    1232:	d1fb      	bne.n	122c <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1234:	4b05      	ldr	r3, [pc, #20]	; (124c <btn_wait_any+0x5c>)
    1236:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1238:	4620      	mov	r0, r4
    123a:	f7ff ffc5 	bl	11c8 <btn_wait_up>
    return btn;
}
    123e:	4620      	mov	r0, r4
    1240:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    1242:	461a      	mov	r2, r3
    1244:	e7f6      	b.n	1234 <btn_wait_any+0x44>
    1246:	bf00      	nop
    1248:	20002700 	.word	0x20002700
    124c:	200006b0 	.word	0x200006b0

00001250 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1250:	4b01      	ldr	r3, [pc, #4]	; (1258 <btn_set_value+0x8>)
    1252:	5419      	strb	r1, [r3, r0]
    1254:	4770      	bx	lr
    1256:	bf00      	nop
    1258:	200006b0 	.word	0x200006b0

0000125c <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    125c:	4800      	ldr	r0, [pc, #0]	; (1260 <get_keymap+0x4>)
    125e:	4770      	bx	lr
    1260:	200006b0 	.word	0x200006b0

00001264 <btn_any_down>:

// wait for any button to be down
uint8_t btn_any_down(){
    while (btn_state==0xff);
    1264:	4a0a      	ldr	r2, [pc, #40]	; (1290 <btn_any_down+0x2c>)
    1266:	7813      	ldrb	r3, [r2, #0]
    1268:	b2db      	uxtb	r3, r3
    126a:	2bff      	cmp	r3, #255	; 0xff
    126c:	d0fb      	beq.n	1266 <btn_any_down+0x2>
    return buttons[btn_idx(btn_state^0xff)];
    126e:	4b08      	ldr	r3, [pc, #32]	; (1290 <btn_any_down+0x2c>)
    1270:	781a      	ldrb	r2, [r3, #0]
    1272:	43d2      	mvns	r2, r2
    mask>>=1;
    1274:	f3c2 0246 	ubfx	r2, r2, #1, #7
    while(mask){idx++; mask>>=1;}
    1278:	b13a      	cbz	r2, 128a <btn_any_down+0x26>
    127a:	2300      	movs	r3, #0
    127c:	3301      	adds	r3, #1
    127e:	b2db      	uxtb	r3, r3
    1280:	0852      	lsrs	r2, r2, #1
    1282:	d1fb      	bne.n	127c <btn_any_down+0x18>
    
    1284:	4a03      	ldr	r2, [pc, #12]	; (1294 <btn_any_down+0x30>)
    1286:	5cd0      	ldrb	r0, [r2, r3]
    1288:	4770      	bx	lr
    uint8_t idx=0;
    128a:	4613      	mov	r3, r2
    128c:	e7fa      	b.n	1284 <btn_any_down+0x20>
    128e:	bf00      	nop
    1290:	20002700 	.word	0x20002700
    1294:	200006b0 	.word	0x200006b0

00001298 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    1298:	4b06      	ldr	r3, [pc, #24]	; (12b4 <games_count+0x1c>)
    129a:	691b      	ldr	r3, [r3, #16]
    129c:	b13b      	cbz	r3, 12ae <games_count+0x16>
    129e:	4b05      	ldr	r3, [pc, #20]	; (12b4 <games_count+0x1c>)
    12a0:	2000      	movs	r0, #0
    for (i=0;;i++){
    12a2:	3001      	adds	r0, #1
    12a4:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    12a6:	691a      	ldr	r2, [r3, #16]
    12a8:	2a00      	cmp	r2, #0
    12aa:	d1fa      	bne.n	12a2 <games_count+0xa>
    12ac:	4770      	bx	lr
    for (i=0;;i++){
    12ae:	2000      	movs	r0, #0
    }
    return i;
}
    12b0:	4770      	bx	lr
    12b2:	bf00      	nop
    12b4:	20000004 	.word	0x20000004

000012b8 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    12b8:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    12ba:	7803      	ldrb	r3, [r0, #0]
    12bc:	b1fb      	cbz	r3, 12fe <strcmp+0x46>
    12be:	780a      	ldrb	r2, [r1, #0]
    12c0:	b17a      	cbz	r2, 12e2 <strcmp+0x2a>
		if (*s1<*s2){
    12c2:	4293      	cmp	r3, r2
    12c4:	d313      	bcc.n	12ee <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    12c6:	d815      	bhi.n	12f4 <strcmp+0x3c>
    12c8:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    12ca:	4621      	mov	r1, r4
	while (*s1 && *s2){
    12cc:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    12d0:	b1ab      	cbz	r3, 12fe <strcmp+0x46>
    12d2:	f814 2b01 	ldrb.w	r2, [r4], #1
    12d6:	b122      	cbz	r2, 12e2 <strcmp+0x2a>
		if (*s1<*s2){
    12d8:	4293      	cmp	r3, r2
    12da:	d30d      	bcc.n	12f8 <strcmp+0x40>
		}else if (*s1>*s2){
    12dc:	d9f5      	bls.n	12ca <strcmp+0x12>
			result=1;
    12de:	2001      	movs	r0, #1
    12e0:	e003      	b.n	12ea <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    12e2:	7808      	ldrb	r0, [r1, #0]
    12e4:	fab0 f080 	clz	r0, r0
    12e8:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    12ea:	bc10      	pop	{r4}
    12ec:	4770      	bx	lr
			result=-1;
    12ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    12f2:	e7fa      	b.n	12ea <strcmp+0x32>
			result=1;
    12f4:	2001      	movs	r0, #1
    12f6:	e7f8      	b.n	12ea <strcmp+0x32>
			result=-1;
    12f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    12fc:	e7f5      	b.n	12ea <strcmp+0x32>
		if (!*s1 && *s2){
    12fe:	7808      	ldrb	r0, [r1, #0]
    1300:	3000      	adds	r0, #0
    1302:	bf18      	it	ne
    1304:	2001      	movne	r0, #1
    1306:	4240      	negs	r0, r0
    1308:	e7ef      	b.n	12ea <strcmp+0x32>

0000130a <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    130a:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    130e:	b2db      	uxtb	r3, r3
    1310:	2b19      	cmp	r3, #25
    1312:	d906      	bls.n	1322 <alpha+0x18>
    1314:	3841      	subs	r0, #65	; 0x41
    1316:	b2c0      	uxtb	r0, r0
    1318:	2819      	cmp	r0, #25
    131a:	bf8c      	ite	hi
    131c:	2000      	movhi	r0, #0
    131e:	2001      	movls	r0, #1
    1320:	4770      	bx	lr
    1322:	2001      	movs	r0, #1
}
    1324:	4770      	bx	lr

00001326 <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    1326:	3830      	subs	r0, #48	; 0x30
    1328:	b2c0      	uxtb	r0, r0
}
    132a:	2809      	cmp	r0, #9
    132c:	bf8c      	ite	hi
    132e:	2000      	movhi	r0, #0
    1330:	2001      	movls	r0, #1
    1332:	4770      	bx	lr

00001334 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1334:	2860      	cmp	r0, #96	; 0x60
    1336:	bf84      	itt	hi
    1338:	3820      	subhi	r0, #32
    133a:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    133c:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1340:	b2db      	uxtb	r3, r3
    1342:	2b09      	cmp	r3, #9
    1344:	d906      	bls.n	1354 <hexdigit+0x20>
    1346:	3841      	subs	r0, #65	; 0x41
    1348:	b2c0      	uxtb	r0, r0
    134a:	2805      	cmp	r0, #5
    134c:	bf8c      	ite	hi
    134e:	2000      	movhi	r0, #0
    1350:	2001      	movls	r0, #1
    1352:	4770      	bx	lr
    1354:	2001      	movs	r0, #1
}
    1356:	4770      	bx	lr

00001358 <atoi>:

int atoi(const char *str){
    1358:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    135c:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    135e:	7803      	ldrb	r3, [r0, #0]
    1360:	2b20      	cmp	r3, #32
    1362:	d103      	bne.n	136c <atoi+0x14>
    1364:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1368:	2b20      	cmp	r3, #32
    136a:	d0fb      	beq.n	1364 <atoi+0xc>
	if (*str=='-'){
    136c:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    136e:	bf06      	itte	eq
    1370:	3501      	addeq	r5, #1
		sign=-1;
    1372:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    1376:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    137a:	782b      	ldrb	r3, [r5, #0]
    137c:	2b24      	cmp	r3, #36	; 0x24
    137e:	d005      	beq.n	138c <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1380:	2b30      	cmp	r3, #48	; 0x30
    1382:	d00a      	beq.n	139a <atoi+0x42>
	int n=0,sign=1,base=10;
    1384:	270a      	movs	r7, #10
    1386:	3d01      	subs	r5, #1
    1388:	2600      	movs	r6, #0
    138a:	e026      	b.n	13da <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    138c:	7868      	ldrb	r0, [r5, #1]
    138e:	f7ff ffd1 	bl	1334 <hexdigit>
    1392:	b160      	cbz	r0, 13ae <atoi+0x56>
		str++;
    1394:	3501      	adds	r5, #1
		base=16;
    1396:	2710      	movs	r7, #16
		str++;
    1398:	e7f5      	b.n	1386 <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    139a:	786b      	ldrb	r3, [r5, #1]
    139c:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    13a0:	2b58      	cmp	r3, #88	; 0x58
    13a2:	d001      	beq.n	13a8 <atoi+0x50>
	int n=0,sign=1,base=10;
    13a4:	270a      	movs	r7, #10
    13a6:	e7ee      	b.n	1386 <atoi+0x2e>
		base=16;
		str+=2;
    13a8:	3502      	adds	r5, #2
		base=16;
    13aa:	2710      	movs	r7, #16
    13ac:	e7eb      	b.n	1386 <atoi+0x2e>
	int n=0,sign=1,base=10;
    13ae:	270a      	movs	r7, #10
    13b0:	e7e9      	b.n	1386 <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13b2:	4620      	mov	r0, r4
    13b4:	f7ff ffbe 	bl	1334 <hexdigit>
    13b8:	3000      	adds	r0, #0
    13ba:	bf18      	it	ne
    13bc:	2001      	movne	r0, #1
    13be:	b1d0      	cbz	r0, 13f6 <atoi+0x9e>
		if (c>='a'){c-=32;}
    13c0:	2c60      	cmp	r4, #96	; 0x60
    13c2:	bf84      	itt	hi
    13c4:	3c20      	subhi	r4, #32
    13c6:	b2e4      	uxtbhi	r4, r4
		c-='0';
    13c8:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    13cc:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    13ce:	2b09      	cmp	r3, #9
    13d0:	bf84      	itt	hi
    13d2:	3c37      	subhi	r4, #55	; 0x37
    13d4:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    13d6:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13da:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    13de:	2c00      	cmp	r4, #0
    13e0:	d0e7      	beq.n	13b2 <atoi+0x5a>
    13e2:	2f0a      	cmp	r7, #10
    13e4:	d1e5      	bne.n	13b2 <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    13e6:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    13ea:	b2c0      	uxtb	r0, r0
    13ec:	2809      	cmp	r0, #9
    13ee:	bf8c      	ite	hi
    13f0:	2000      	movhi	r0, #0
    13f2:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13f4:	e7e3      	b.n	13be <atoi+0x66>
		str++;
	}
	return sign*n;
}
    13f6:	fb08 f006 	mul.w	r0, r8, r6
    13fa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000013fe <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    13fe:	b13a      	cbz	r2, 1410 <move+0x12>
    1400:	3901      	subs	r1, #1
    1402:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1404:	f810 3b01 	ldrb.w	r3, [r0], #1
    1408:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    140c:	4290      	cmp	r0, r2
    140e:	d1f9      	bne.n	1404 <move+0x6>
    1410:	4770      	bx	lr

00001412 <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    1412:	7803      	ldrb	r3, [r0, #0]
    1414:	b13b      	cbz	r3, 1426 <strlen+0x14>
    1416:	4603      	mov	r3, r0
    1418:	2000      	movs	r0, #0
    141a:	3001      	adds	r0, #1
    141c:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1420:	2a00      	cmp	r2, #0
    1422:	d1fa      	bne.n	141a <strlen+0x8>
    1424:	4770      	bx	lr
	int ll=0;
    1426:	2000      	movs	r0, #0
	return ll;
}
    1428:	4770      	bx	lr

0000142a <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    142a:	b121      	cbz	r1, 1436 <fill+0xc>
    142c:	1841      	adds	r1, r0, r1
    142e:	f800 2b01 	strb.w	r2, [r0], #1
    1432:	4288      	cmp	r0, r1
    1434:	d1fb      	bne.n	142e <fill+0x4>
    1436:	4770      	bx	lr

00001438 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1438:	3861      	subs	r0, #97	; 0x61
    143a:	b2c0      	uxtb	r0, r0
}
    143c:	2819      	cmp	r0, #25
    143e:	bf8c      	ite	hi
    1440:	2000      	movhi	r0, #0
    1442:	2001      	movls	r0, #1
    1444:	4770      	bx	lr

00001446 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    1446:	3841      	subs	r0, #65	; 0x41
    1448:	b2c0      	uxtb	r0, r0
}
    144a:	2819      	cmp	r0, #25
    144c:	bf8c      	ite	hi
    144e:	2000      	movhi	r0, #0
    1450:	2001      	movls	r0, #1
    1452:	4770      	bx	lr

00001454 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1454:	7803      	ldrb	r3, [r0, #0]
    1456:	b153      	cbz	r3, 146e <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1458:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    145c:	b2d2      	uxtb	r2, r2
    145e:	2a19      	cmp	r2, #25
    1460:	bf9c      	itt	ls
    1462:	3b20      	subls	r3, #32
    1464:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    1466:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    146a:	2b00      	cmp	r3, #0
    146c:	d1f4      	bne.n	1458 <uppercase+0x4>
    146e:	4770      	bx	lr

00001470 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1470:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    1472:	1844      	adds	r4, r0, r1
    1474:	5c43      	ldrb	r3, [r0, r1]
    1476:	b153      	cbz	r3, 148e <scan+0x1e>
    1478:	429a      	cmp	r2, r3
    147a:	d00a      	beq.n	1492 <scan+0x22>
    147c:	4608      	mov	r0, r1
    147e:	3001      	adds	r0, #1
    1480:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    1484:	b10b      	cbz	r3, 148a <scan+0x1a>
    1486:	4293      	cmp	r3, r2
    1488:	d1f9      	bne.n	147e <scan+0xe>
	return start;
}
    148a:	bc10      	pop	{r4}
    148c:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    148e:	4608      	mov	r0, r1
    1490:	e7fb      	b.n	148a <scan+0x1a>
    1492:	4608      	mov	r0, r1
	return start;
    1494:	e7f9      	b.n	148a <scan+0x1a>

00001496 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    1496:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    1498:	1844      	adds	r4, r0, r1
    149a:	5c43      	ldrb	r3, [r0, r1]
    149c:	b153      	cbz	r3, 14b4 <skip+0x1e>
    149e:	429a      	cmp	r2, r3
    14a0:	d10a      	bne.n	14b8 <skip+0x22>
    14a2:	4608      	mov	r0, r1
    14a4:	3001      	adds	r0, #1
    14a6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14aa:	b10b      	cbz	r3, 14b0 <skip+0x1a>
    14ac:	4293      	cmp	r3, r2
    14ae:	d0f9      	beq.n	14a4 <skip+0xe>
	return start;
}
    14b0:	bc10      	pop	{r4}
    14b2:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    14b4:	4608      	mov	r0, r1
    14b6:	e7fb      	b.n	14b0 <skip+0x1a>
    14b8:	4608      	mov	r0, r1
	return start;
    14ba:	e7f9      	b.n	14b0 <skip+0x1a>

000014bc <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    14bc:	b538      	push	{r3, r4, r5, lr}
    14be:	4604      	mov	r4, r0
    14c0:	460d      	mov	r5, r1
	s1+=strlen(s1);
    14c2:	f7ff ffa6 	bl	1412 <strlen>
    14c6:	4420      	add	r0, r4
	while (*s2){
    14c8:	782b      	ldrb	r3, [r5, #0]
    14ca:	b133      	cbz	r3, 14da <strcat+0x1e>
    14cc:	4629      	mov	r1, r5
		*s1++=*s2++;
    14ce:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    14d2:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    14d6:	2b00      	cmp	r3, #0
    14d8:	d1f9      	bne.n	14ce <strcat+0x12>
	}
	*s1=0;
    14da:	2300      	movs	r3, #0
    14dc:	7003      	strb	r3, [r0, #0]
	return s1;
}
    14de:	bd38      	pop	{r3, r4, r5, pc}

000014e0 <itoa>:

char *itoa(int n,char *buffer,int base){
    14e0:	b5f0      	push	{r4, r5, r6, r7, lr}
    14e2:	b085      	sub	sp, #20
    14e4:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    14e6:	2a0a      	cmp	r2, #10
    14e8:	d033      	beq.n	1552 <itoa+0x72>
	int i=14,sign=0;
    14ea:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    14ec:	2300      	movs	r3, #0
    14ee:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    14f2:	2320      	movs	r3, #32
    14f4:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    14f8:	b390      	cbz	r0, 1560 <itoa+0x80>
    14fa:	f10d 060d 	add.w	r6, sp, #13
    14fe:	250e      	movs	r5, #14
		d=n%base+'0';
    1500:	fb90 f3f2 	sdiv	r3, r0, r2
    1504:	fb02 0313 	mls	r3, r2, r3, r0
    1508:	b2db      	uxtb	r3, r3
    150a:	f103 0130 	add.w	r1, r3, #48	; 0x30
    150e:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1510:	2939      	cmp	r1, #57	; 0x39
    1512:	bf84      	itt	hi
    1514:	3337      	addhi	r3, #55	; 0x37
    1516:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1518:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    151c:	3d01      	subs	r5, #1
    151e:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    1522:	2800      	cmp	r0, #0
    1524:	d1ec      	bne.n	1500 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    1526:	2d0e      	cmp	r5, #14
    1528:	d01a      	beq.n	1560 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    152a:	2a0a      	cmp	r2, #10
    152c:	d01d      	beq.n	156a <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    152e:	2a10      	cmp	r2, #16
    1530:	d105      	bne.n	153e <itoa+0x5e>
    1532:	3d01      	subs	r5, #1
    1534:	ab04      	add	r3, sp, #16
    1536:	442b      	add	r3, r5
    1538:	2224      	movs	r2, #36	; 0x24
    153a:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    153e:	f1c5 0210 	rsb	r2, r5, #16
    1542:	4621      	mov	r1, r4
    1544:	eb0d 0005 	add.w	r0, sp, r5
    1548:	f7ff ff59 	bl	13fe <move>
	return buffer;
    154c:	4620      	mov	r0, r4
    154e:	b005      	add	sp, #20
    1550:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    1552:	2800      	cmp	r0, #0
    1554:	db01      	blt.n	155a <itoa+0x7a>
	int i=14,sign=0;
    1556:	2700      	movs	r7, #0
    1558:	e7c8      	b.n	14ec <itoa+0xc>
		n=-n;
    155a:	4240      	negs	r0, r0
		sign=1;
    155c:	2701      	movs	r7, #1
    155e:	e7c5      	b.n	14ec <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1560:	2330      	movs	r3, #48	; 0x30
    1562:	f88d 300d 	strb.w	r3, [sp, #13]
    1566:	250d      	movs	r5, #13
    1568:	e7df      	b.n	152a <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    156a:	2f00      	cmp	r7, #0
    156c:	d0e7      	beq.n	153e <itoa+0x5e>
    156e:	3d01      	subs	r5, #1
    1570:	ab04      	add	r3, sp, #16
    1572:	442b      	add	r3, r5
    1574:	222d      	movs	r2, #45	; 0x2d
    1576:	f803 2c10 	strb.w	r2, [r3, #-16]
    157a:	e7e0      	b.n	153e <itoa+0x5e>

0000157c <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    157c:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    157e:	08cb      	lsrs	r3, r1, #3
    1580:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    1584:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    1586:	f001 011c 	and.w	r1, r1, #28
    158a:	250f      	movs	r5, #15
    158c:	408d      	lsls	r5, r1
    158e:	ea24 0405 	bic.w	r4, r4, r5
    1592:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    1596:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    159a:	fa02 f101 	lsl.w	r1, r2, r1
    159e:	4321      	orrs	r1, r4
    15a0:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    15a4:	bc30      	pop	{r4, r5}
    15a6:	4770      	bx	lr

000015a8 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    15a8:	6880      	ldr	r0, [r0, #8]
    15aa:	2301      	movs	r3, #1
    15ac:	fa03 f101 	lsl.w	r1, r3, r1
}
    15b0:	4008      	ands	r0, r1
    15b2:	4770      	bx	lr

000015b4 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15b4:	b93a      	cbnz	r2, 15c6 <write_pin+0x12>
    15b6:	68c3      	ldr	r3, [r0, #12]
    15b8:	2201      	movs	r2, #1
    15ba:	fa02 f101 	lsl.w	r1, r2, r1
    15be:	ea23 0101 	bic.w	r1, r3, r1
    15c2:	60c1      	str	r1, [r0, #12]
    15c4:	4770      	bx	lr
    15c6:	68c2      	ldr	r2, [r0, #12]
    15c8:	2301      	movs	r3, #1
    15ca:	fa03 f101 	lsl.w	r1, r3, r1
    15ce:	4311      	orrs	r1, r2
    15d0:	60c1      	str	r1, [r0, #12]
    15d2:	4770      	bx	lr

000015d4 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    15d4:	68c2      	ldr	r2, [r0, #12]
    15d6:	2301      	movs	r3, #1
    15d8:	fa03 f101 	lsl.w	r1, r3, r1
    15dc:	4051      	eors	r1, r2
    15de:	60c1      	str	r1, [r0, #12]
    15e0:	4770      	bx	lr
	...

000015e4 <set_palette>:
static uint8_t palette[4]={0,15,3,5};

const uint8_t DEFAULT_PALETTE[4]={0,15,3,5};

void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    15e4:	4b04      	ldr	r3, [pc, #16]	; (15f8 <set_palette+0x14>)
    15e6:	7802      	ldrb	r2, [r0, #0]
    15e8:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    15ea:	7842      	ldrb	r2, [r0, #1]
    15ec:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    15ee:	7882      	ldrb	r2, [r0, #2]
    15f0:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    15f2:	78c2      	ldrb	r2, [r0, #3]
    15f4:	70da      	strb	r2, [r3, #3]
    15f6:	4770      	bx	lr
    15f8:	200001c4 	.word	0x200001c4

000015fc <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    15fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    15fe:	4604      	mov	r4, r0
    1600:	460e      	mov	r6, r1
    1602:	4615      	mov	r5, r2
    1604:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    1606:	f001 ff21 	bl	344c <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    160a:	2c00      	cmp	r4, #0
    160c:	db38      	blt.n	1680 <gfx_blit+0x84>
    160e:	8983      	ldrh	r3, [r0, #12]
    1610:	429c      	cmp	r4, r3
    1612:	da37      	bge.n	1684 <gfx_blit+0x88>
    1614:	2e00      	cmp	r6, #0
    1616:	db37      	blt.n	1688 <gfx_blit+0x8c>
    1618:	89c3      	ldrh	r3, [r0, #14]
    161a:	429e      	cmp	r6, r3
    161c:	da36      	bge.n	168c <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    161e:	7a03      	ldrb	r3, [r0, #8]
    1620:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1624:	1052      	asrs	r2, r2, #1
    1626:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    162a:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    162e:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    1632:	bf06      	itte	eq
    1634:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    1636:	220f      	moveq	r2, #15
    mask=0xf0;
    1638:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    163a:	4b15      	ldr	r3, [pc, #84]	; (1690 <gfx_blit+0x94>)
    163c:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    163e:	2f04      	cmp	r7, #4
    1640:	d805      	bhi.n	164e <gfx_blit+0x52>
    1642:	e8df f007 	tbb	[pc, r7]
    1646:	1003      	.short	0x1003
    1648:	1412      	.short	0x1412
    164a:	18          	.byte	0x18
    164b:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    164c:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    164e:	4910      	ldr	r1, [pc, #64]	; (1690 <gfx_blit+0x94>)
    1650:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    1652:	ea23 0302 	bic.w	r3, r3, r2
    1656:	fab0 f080 	clz	r0, r0
    165a:	0940      	lsrs	r0, r0, #5
    165c:	4283      	cmp	r3, r0
    165e:	bf14      	ite	ne
    1660:	2000      	movne	r0, #0
    1662:	2001      	moveq	r0, #1
    1664:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    1666:	4003      	ands	r3, r0
        break;
    1668:	e7f1      	b.n	164e <gfx_blit+0x52>
        byte^=color;
    166a:	4043      	eors	r3, r0
        break;
    166c:	e7ef      	b.n	164e <gfx_blit+0x52>
        byte^=~mask;
    166e:	43d4      	mvns	r4, r2
    1670:	405c      	eors	r4, r3
    1672:	b2e3      	uxtb	r3, r4
        break;
    1674:	e7eb      	b.n	164e <gfx_blit+0x52>
        byte &=mask;
    1676:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    167a:	ea40 0304 	orr.w	r3, r0, r4
        break;
    167e:	e7e6      	b.n	164e <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1680:	2000      	movs	r0, #0
    1682:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1684:	2000      	movs	r0, #0
    1686:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1688:	2000      	movs	r0, #0
    168a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    168c:	2000      	movs	r0, #0
}
    168e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1690:	20002730 	.word	0x20002730

00001694 <gfx_cls>:
    }
    video_buffer[idx]=byte;
}
*/

void gfx_cls(){
    1694:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    1696:	f001 fed9 	bl	344c <get_video_params>
    169a:	4b06      	ldr	r3, [pc, #24]	; (16b4 <gfx_cls+0x20>)
    169c:	4906      	ldr	r1, [pc, #24]	; (16b8 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    169e:	2200      	movs	r2, #0
    16a0:	f803 2f01 	strb.w	r2, [r3, #1]!
    16a4:	428b      	cmp	r3, r1
    16a6:	d1fb      	bne.n	16a0 <gfx_cls+0xc>
    set_cursor(0,0);
    16a8:	2100      	movs	r1, #0
    16aa:	4608      	mov	r0, r1
    16ac:	f001 fbb2 	bl	2e14 <set_cursor>
    16b0:	bd08      	pop	{r3, pc}
    16b2:	bf00      	nop
    16b4:	2000272f 	.word	0x2000272f
    16b8:	20004e8f 	.word	0x20004e8f

000016bc <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    16bc:	b570      	push	{r4, r5, r6, lr}
    16be:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    16c0:	f001 fec4 	bl	344c <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    16c4:	7a06      	ldrb	r6, [r0, #8]
    16c6:	4b0f      	ldr	r3, [pc, #60]	; (1704 <gfx_scroll_up+0x48>)
    16c8:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    16cc:	89c2      	ldrh	r2, [r0, #14]
    16ce:	1b12      	subs	r2, r2, r4
    16d0:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    16d4:	b1a6      	cbz	r6, 1700 <gfx_scroll_up+0x44>
    16d6:	4a0b      	ldr	r2, [pc, #44]	; (1704 <gfx_scroll_up+0x48>)
    16d8:	199d      	adds	r5, r3, r6
    16da:	f813 1b01 	ldrb.w	r1, [r3], #1
    16de:	f802 1b01 	strb.w	r1, [r2], #1
    16e2:	42ab      	cmp	r3, r5
    16e4:	d1f9      	bne.n	16da <gfx_scroll_up+0x1e>
    16e6:	4b07      	ldr	r3, [pc, #28]	; (1704 <gfx_scroll_up+0x48>)
    16e8:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    16ea:	7a02      	ldrb	r2, [r0, #8]
    16ec:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    16f0:	b12a      	cbz	r2, 16fe <gfx_scroll_up+0x42>
    16f2:	441a      	add	r2, r3
    16f4:	2100      	movs	r1, #0
    16f6:	f803 1b01 	strb.w	r1, [r3], #1
    16fa:	4293      	cmp	r3, r2
    16fc:	d1fb      	bne.n	16f6 <gfx_scroll_up+0x3a>
    16fe:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1700:	4b00      	ldr	r3, [pc, #0]	; (1704 <gfx_scroll_up+0x48>)
    1702:	e7f2      	b.n	16ea <gfx_scroll_up+0x2e>
    1704:	20002730 	.word	0x20002730

00001708 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1708:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    170a:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    170c:	f001 fe9e 	bl	344c <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1710:	89c3      	ldrh	r3, [r0, #14]
    1712:	7a04      	ldrb	r4, [r0, #8]
    1714:	1b5f      	subs	r7, r3, r5
    1716:	fb04 f707 	mul.w	r7, r4, r7
    171a:	490c      	ldr	r1, [pc, #48]	; (174c <gfx_scroll_down+0x44>)
    171c:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    171e:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    1722:	b147      	cbz	r7, 1736 <gfx_scroll_down+0x2e>
    1724:	4619      	mov	r1, r3
    1726:	4e09      	ldr	r6, [pc, #36]	; (174c <gfx_scroll_down+0x44>)
    1728:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    172c:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1730:	42b2      	cmp	r2, r6
    1732:	d1f9      	bne.n	1728 <gfx_scroll_down+0x20>
    1734:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    1736:	7a02      	ldrb	r2, [r0, #8]
    1738:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    173c:	b12a      	cbz	r2, 174a <gfx_scroll_down+0x42>
    173e:	1a9a      	subs	r2, r3, r2
    1740:	2100      	movs	r1, #0
    1742:	f803 1d01 	strb.w	r1, [r3, #-1]!
    1746:	4293      	cmp	r3, r2
    1748:	d1fb      	bne.n	1742 <gfx_scroll_down+0x3a>
    174a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    174c:	20002730 	.word	0x20002730

00001750 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    1750:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1754:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    1756:	f001 fe79 	bl	344c <get_video_params>
    for (y=0;y<vparams->vres;y++){
    175a:	89c3      	ldrh	r3, [r0, #14]
    175c:	b30b      	cbz	r3, 17a2 <gfx_scroll_left+0x52>
    175e:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    1762:	f8df 8044 	ldr.w	r8, [pc, #68]	; 17a8 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    1766:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    1768:	7a03      	ldrb	r3, [r0, #8]
    176a:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    176e:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    1770:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    1772:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    1776:	d009      	beq.n	178c <gfx_scroll_left+0x3c>
    1778:	1e59      	subs	r1, r3, #1
    177a:	eb02 050e 	add.w	r5, r2, lr
    177e:	f812 4b01 	ldrb.w	r4, [r2], #1
    1782:	f801 4f01 	strb.w	r4, [r1, #1]!
    1786:	4295      	cmp	r5, r2
    1788:	d1f9      	bne.n	177e <gfx_scroll_left+0x2e>
    178a:	4473      	add	r3, lr
        while (size--) *dest++=0;
    178c:	b126      	cbz	r6, 1798 <gfx_scroll_left+0x48>
    178e:	199a      	adds	r2, r3, r6
    1790:	f803 7b01 	strb.w	r7, [r3], #1
    1794:	4293      	cmp	r3, r2
    1796:	d1fb      	bne.n	1790 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    1798:	f10c 0c01 	add.w	ip, ip, #1
    179c:	89c3      	ldrh	r3, [r0, #14]
    179e:	4563      	cmp	r3, ip
    17a0:	dce2      	bgt.n	1768 <gfx_scroll_left+0x18>
    17a2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    17a6:	bf00      	nop
    17a8:	20002730 	.word	0x20002730

000017ac <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    17ac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    17b0:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    17b2:	f001 fe4b 	bl	344c <get_video_params>
    for (y=0;y<vparams->vres;y++){
    17b6:	89c3      	ldrh	r3, [r0, #14]
    17b8:	b33b      	cbz	r3, 180a <gfx_scroll_right+0x5e>
    17ba:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    17be:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1810 <gfx_scroll_right+0x64>
        src=dest-n;
    17c2:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    17c6:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    17c8:	7a03      	ldrb	r3, [r0, #8]
    17ca:	fb0e 3303 	mla	r3, lr, r3, r3
    17ce:	4443      	add	r3, r8
        src=dest-n;
    17d0:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    17d4:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    17d6:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    17da:	d00a      	beq.n	17f2 <gfx_scroll_right+0x46>
    17dc:	4619      	mov	r1, r3
    17de:	eba2 0609 	sub.w	r6, r2, r9
    17e2:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    17e6:	f801 4d01 	strb.w	r4, [r1, #-1]!
    17ea:	42b2      	cmp	r2, r6
    17ec:	d1f9      	bne.n	17e2 <gfx_scroll_right+0x36>
    17ee:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    17f2:	b12d      	cbz	r5, 1800 <gfx_scroll_right+0x54>
    17f4:	eb03 020c 	add.w	r2, r3, ip
    17f8:	f803 7d01 	strb.w	r7, [r3, #-1]!
    17fc:	429a      	cmp	r2, r3
    17fe:	d1fb      	bne.n	17f8 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1800:	f10e 0e01 	add.w	lr, lr, #1
    1804:	89c3      	ldrh	r3, [r0, #14]
    1806:	4573      	cmp	r3, lr
    1808:	dcde      	bgt.n	17c8 <gfx_scroll_right+0x1c>
    180a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    180e:	bf00      	nop
    1810:	20002730 	.word	0x20002730

00001814 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1814:	b538      	push	{r3, r4, r5, lr}
    1816:	4604      	mov	r4, r0
    1818:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    181a:	f001 fe17 	bl	344c <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    181e:	2c00      	cmp	r4, #0
    1820:	db18      	blt.n	1854 <gfx_get_pixel+0x40>
    1822:	8983      	ldrh	r3, [r0, #12]
    1824:	429c      	cmp	r4, r3
    1826:	db01      	blt.n	182c <gfx_get_pixel+0x18>
    1828:	20ff      	movs	r0, #255	; 0xff
    182a:	bd38      	pop	{r3, r4, r5, pc}
    182c:	2d00      	cmp	r5, #0
    182e:	db13      	blt.n	1858 <gfx_get_pixel+0x44>
    1830:	89c3      	ldrh	r3, [r0, #14]
    1832:	429d      	cmp	r5, r3
    1834:	db01      	blt.n	183a <gfx_get_pixel+0x26>
    1836:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    1838:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    183a:	7a03      	ldrb	r3, [r0, #8]
    183c:	1062      	asrs	r2, r4, #1
    183e:	4907      	ldr	r1, [pc, #28]	; (185c <gfx_get_pixel+0x48>)
    1840:	fb05 1503 	mla	r5, r5, r3, r1
    1844:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    1846:	f014 0f01 	tst.w	r4, #1
    184a:	bf08      	it	eq
    184c:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    184e:	f000 000f 	and.w	r0, r0, #15
    1852:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1854:	20ff      	movs	r0, #255	; 0xff
    1856:	bd38      	pop	{r3, r4, r5, pc}
    1858:	20ff      	movs	r0, #255	; 0xff
    185a:	bd38      	pop	{r3, r4, r5, pc}
    185c:	20002730 	.word	0x20002730

00001860 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    1860:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1864:	b085      	sub	sp, #20
    1866:	9001      	str	r0, [sp, #4]
    1868:	460e      	mov	r6, r1
    186a:	9100      	str	r1, [sp, #0]
    186c:	9203      	str	r2, [sp, #12]
    186e:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    
    shift=bit_shift[sprite_bpp];
    1870:	4a26      	ldr	r2, [pc, #152]	; (190c <gfx_sprite+0xac>)
    1872:	7911      	ldrb	r1, [r2, #4]
    1874:	4a26      	ldr	r2, [pc, #152]	; (1910 <gfx_sprite+0xb0>)
    1876:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    187a:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    187c:	440a      	add	r2, r1
    187e:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    1880:	4433      	add	r3, r6
    1882:	9302      	str	r3, [sp, #8]
    1884:	429e      	cmp	r6, r3
    int collision=0;
    1886:	bfa8      	it	ge
    1888:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    188a:	da3a      	bge.n	1902 <gfx_sprite+0xa2>
    188c:	f100 0901 	add.w	r9, r0, #1
    1890:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    1892:	f8df 8078 	ldr.w	r8, [pc, #120]	; 190c <gfx_sprite+0xac>
    1896:	e02b      	b.n	18f0 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    1898:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    189c:	f898 3004 	ldrb.w	r3, [r8, #4]
    18a0:	4a1b      	ldr	r2, [pc, #108]	; (1910 <gfx_sprite+0xb0>)
    18a2:	4413      	add	r3, r2
    18a4:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    18a6:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    18aa:	3601      	adds	r6, #1
    18ac:	4556      	cmp	r6, sl
    18ae:	d019      	beq.n	18e4 <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    18b0:	f898 3004 	ldrb.w	r3, [r8, #4]
    18b4:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    18b6:	bf99      	ittee	ls
    18b8:	fa45 f30b 	asrls.w	r3, r5, fp
    18bc:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    18c0:	fa45 f20b 	asrhi.w	r2, r5, fp
    18c4:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    18c6:	2302      	movs	r3, #2
    18c8:	9900      	ldr	r1, [sp, #0]
    18ca:	4630      	mov	r0, r6
    18cc:	f7ff fe96 	bl	15fc <gfx_blit>
    18d0:	4307      	orrs	r7, r0
            ppb--;
    18d2:	3c01      	subs	r4, #1
            if (!ppb){
    18d4:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    18d8:	d0de      	beq.n	1898 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    18da:	f1cb 0308 	rsb	r3, fp, #8
    18de:	409d      	lsls	r5, r3
    18e0:	b2ed      	uxtb	r5, r5
    18e2:	e7e2      	b.n	18aa <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    18e4:	9b00      	ldr	r3, [sp, #0]
    18e6:	3301      	adds	r3, #1
    18e8:	9300      	str	r3, [sp, #0]
    18ea:	9a02      	ldr	r2, [sp, #8]
    18ec:	4293      	cmp	r3, r2
    18ee:	d008      	beq.n	1902 <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    18f0:	9b03      	ldr	r3, [sp, #12]
    18f2:	4619      	mov	r1, r3
    18f4:	9a01      	ldr	r2, [sp, #4]
    18f6:	eb01 0a02 	add.w	sl, r1, r2
    18fa:	4552      	cmp	r2, sl
    18fc:	daf2      	bge.n	18e4 <gfx_sprite+0x84>
    18fe:	9e01      	ldr	r6, [sp, #4]
    1900:	e7d6      	b.n	18b0 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    return collision;
}
    1902:	4638      	mov	r0, r7
    1904:	b005      	add	sp, #20
    1906:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    190a:	bf00      	nop
    190c:	200001c4 	.word	0x200001c4
    1910:	00003cb0 	.word	0x00003cb0

00001914 <draw_balls>:

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

static const uint8_t pal2[4]={0,9,2,10};
static void draw_balls(){
    1914:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1918:	b082      	sub	sp, #8
	int i;
	frame_sync();
    191a:	f001 fd5d 	bl	33d8 <frame_sync>
    191e:	4c14      	ldr	r4, [pc, #80]	; (1970 <draw_balls+0x5c>)
    1920:	2501      	movs	r5, #1
	for (i=0;i<BALL_COUNT;i++){
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    1922:	4f14      	ldr	r7, [pc, #80]	; (1974 <draw_balls+0x60>)
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1924:	2608      	movs	r6, #8
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    1926:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1978 <draw_balls+0x64>
    192a:	e00c      	b.n	1946 <draw_balls+0x32>
    192c:	4640      	mov	r0, r8
    192e:	f7ff fe59 	bl	15e4 <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1932:	6923      	ldr	r3, [r4, #16]
    1934:	9300      	str	r3, [sp, #0]
    1936:	4633      	mov	r3, r6
    1938:	4632      	mov	r2, r6
    193a:	6861      	ldr	r1, [r4, #4]
    193c:	6820      	ldr	r0, [r4, #0]
    193e:	f7ff ff8f 	bl	1860 <gfx_sprite>
    1942:	3501      	adds	r5, #1
    1944:	3414      	adds	r4, #20
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    1946:	2d01      	cmp	r5, #1
    1948:	d0f0      	beq.n	192c <draw_balls+0x18>
    194a:	4638      	mov	r0, r7
    194c:	f7ff fe4a 	bl	15e4 <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1950:	6923      	ldr	r3, [r4, #16]
    1952:	9300      	str	r3, [sp, #0]
    1954:	4633      	mov	r3, r6
    1956:	4632      	mov	r2, r6
    1958:	6861      	ldr	r1, [r4, #4]
    195a:	6820      	ldr	r0, [r4, #0]
    195c:	f7ff ff80 	bl	1860 <gfx_sprite>
	for (i=0;i<BALL_COUNT;i++){
    1960:	2d01      	cmp	r5, #1
    1962:	ddee      	ble.n	1942 <draw_balls+0x2e>
	}
	wait_sync_end();
    1964:	f001 fd40 	bl	33e8 <wait_sync_end>
}
    1968:	b002      	add	sp, #8
    196a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    196e:	bf00      	nop
    1970:	20002708 	.word	0x20002708
    1974:	00003ccc 	.word	0x00003ccc
    1978:	00003cb8 	.word	0x00003cb8

0000197c <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    197c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    1980:	f001 fd64 	bl	344c <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    1984:	89c3      	ldrh	r3, [r0, #14]
    1986:	089e      	lsrs	r6, r3, #2
    1988:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    198c:	429e      	cmp	r6, r3
    198e:	da1b      	bge.n	19c8 <color_bars+0x4c>
    1990:	4680      	mov	r8, r0
static void color_bars(){
    1992:	f04f 0910 	mov.w	r9, #16
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
				c--;
			}
			gfx_blit(x,y,c,BIT_SET);
    1996:	2704      	movs	r7, #4
static void color_bars(){
    1998:	464d      	mov	r5, r9
    199a:	2400      	movs	r4, #0
			if (x%8==0){
    199c:	f014 0f07 	tst.w	r4, #7
				c--;
    19a0:	bf04      	itt	eq
    19a2:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    19a6:	b2ed      	uxtbeq	r5, r5
			gfx_blit(x,y,c,BIT_SET);
    19a8:	463b      	mov	r3, r7
    19aa:	462a      	mov	r2, r5
    19ac:	4631      	mov	r1, r6
    19ae:	4620      	mov	r0, r4
    19b0:	f7ff fe24 	bl	15fc <gfx_blit>
		for (x=0;x<128;x++){
    19b4:	3401      	adds	r4, #1
    19b6:	2c80      	cmp	r4, #128	; 0x80
    19b8:	d1f0      	bne.n	199c <color_bars+0x20>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19ba:	3601      	adds	r6, #1
    19bc:	f8b8 300e 	ldrh.w	r3, [r8, #14]
    19c0:	42b3      	cmp	r3, r6
    19c2:	dce9      	bgt.n	1998 <color_bars+0x1c>
    19c4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    19c8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

000019cc <vertical_bars>:
	}
		

}

static void vertical_bars(){
    19cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    19d0:	f001 fd3c 	bl	344c <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19d4:	89c3      	ldrh	r3, [r0, #14]
    19d6:	2b10      	cmp	r3, #16
    19d8:	dd16      	ble.n	1a08 <vertical_bars+0x3c>
    19da:	4605      	mov	r5, r0
    19dc:	2410      	movs	r4, #16
		gfx_blit(0,y,15,BIT_SET);
    19de:	2704      	movs	r7, #4
    19e0:	260f      	movs	r6, #15
    19e2:	f04f 0800 	mov.w	r8, #0
    19e6:	463b      	mov	r3, r7
    19e8:	4632      	mov	r2, r6
    19ea:	4621      	mov	r1, r4
    19ec:	4640      	mov	r0, r8
    19ee:	f7ff fe05 	bl	15fc <gfx_blit>
		gfx_blit(vparams->hres-1,y,15,BIT_SET);
    19f2:	89a8      	ldrh	r0, [r5, #12]
    19f4:	463b      	mov	r3, r7
    19f6:	4632      	mov	r2, r6
    19f8:	4621      	mov	r1, r4
    19fa:	3801      	subs	r0, #1
    19fc:	f7ff fdfe 	bl	15fc <gfx_blit>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1a00:	3401      	adds	r4, #1
    1a02:	89eb      	ldrh	r3, [r5, #14]
    1a04:	42a3      	cmp	r3, r4
    1a06:	dcee      	bgt.n	19e6 <vertical_bars+0x1a>
    1a08:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001a0c <horiz_bars>:
	}
}

static void horiz_bars(){
    1a0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1a10:	f001 fd1c 	bl	344c <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1a14:	8983      	ldrh	r3, [r0, #12]
    1a16:	b1ab      	cbz	r3, 1a44 <horiz_bars+0x38>
    1a18:	4605      	mov	r5, r0
    1a1a:	2400      	movs	r4, #0
		gfx_blit(x,0,15,BIT_SET);
    1a1c:	2704      	movs	r7, #4
    1a1e:	260f      	movs	r6, #15
    1a20:	46a0      	mov	r8, r4
    1a22:	463b      	mov	r3, r7
    1a24:	4632      	mov	r2, r6
    1a26:	4641      	mov	r1, r8
    1a28:	4620      	mov	r0, r4
    1a2a:	f7ff fde7 	bl	15fc <gfx_blit>
		gfx_blit(x,vparams->vres-1,15,BIT_SET);
    1a2e:	89e9      	ldrh	r1, [r5, #14]
    1a30:	463b      	mov	r3, r7
    1a32:	4632      	mov	r2, r6
    1a34:	3901      	subs	r1, #1
    1a36:	4620      	mov	r0, r4
    1a38:	f7ff fde0 	bl	15fc <gfx_blit>
	for (x=0;x<vparams->hres;x++){
    1a3c:	3401      	adds	r4, #1
    1a3e:	89ab      	ldrh	r3, [r5, #12]
    1a40:	42a3      	cmp	r3, r4
    1a42:	dcee      	bgt.n	1a22 <horiz_bars+0x16>
    1a44:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001a48 <init_balls>:
static void init_balls(){
    1a48:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a4c:	f001 fcfe 	bl	344c <get_video_params>
    1a50:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a52:	4b19      	ldr	r3, [pc, #100]	; (1ab8 <init_balls+0x70>)
    1a54:	6818      	ldr	r0, [r3, #0]
    1a56:	f7fe fcb7 	bl	3c8 <srand>
    1a5a:	4c18      	ldr	r4, [pc, #96]	; (1abc <init_balls+0x74>)
    1a5c:	f104 0628 	add.w	r6, r4, #40	; 0x28
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1a60:	4f17      	ldr	r7, [pc, #92]	; (1ac0 <init_balls+0x78>)
    1a62:	f107 0914 	add.w	r9, r7, #20
			sprite_bpp=TWO_BPP;
    1a66:	f8df 805c 	ldr.w	r8, [pc, #92]	; 1ac4 <init_balls+0x7c>
    1a6a:	e004      	b.n	1a76 <init_balls+0x2e>
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1a6c:	f8c4 9010 	str.w	r9, [r4, #16]
    1a70:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1a72:	42b4      	cmp	r4, r6
    1a74:	d01d      	beq.n	1ab2 <init_balls+0x6a>
		balls[i].x=rand()%vparams->hres;
    1a76:	f7fe fcad 	bl	3d4 <rand>
    1a7a:	89ab      	ldrh	r3, [r5, #12]
    1a7c:	fb90 f2f3 	sdiv	r2, r0, r3
    1a80:	fb02 0013 	mls	r0, r2, r3, r0
    1a84:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1a86:	f7fe fca5 	bl	3d4 <rand>
    1a8a:	89eb      	ldrh	r3, [r5, #14]
    1a8c:	3b10      	subs	r3, #16
    1a8e:	fb90 f2f3 	sdiv	r2, r0, r3
    1a92:	fb02 0013 	mls	r0, r2, r3, r0
    1a96:	3010      	adds	r0, #16
    1a98:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1a9a:	2301      	movs	r3, #1
    1a9c:	60a3      	str	r3, [r4, #8]
		balls[i].dy=1;
    1a9e:	60e3      	str	r3, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1aa0:	782b      	ldrb	r3, [r5, #0]
    1aa2:	2b00      	cmp	r3, #0
    1aa4:	d1e2      	bne.n	1a6c <init_balls+0x24>
			balls[i].ball_sprite=ball8x8_2bpp;//ball8x8;
    1aa6:	1d3b      	adds	r3, r7, #4
    1aa8:	6123      	str	r3, [r4, #16]
			sprite_bpp=TWO_BPP;
    1aaa:	2301      	movs	r3, #1
    1aac:	f888 3000 	strb.w	r3, [r8]
    1ab0:	e7de      	b.n	1a70 <init_balls+0x28>
}
    1ab2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1ab6:	bf00      	nop
    1ab8:	20004e94 	.word	0x20004e94
    1abc:	20002708 	.word	0x20002708
    1ac0:	00003ccc 	.word	0x00003ccc
    1ac4:	200001c8 	.word	0x200001c8

00001ac8 <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    1ac8:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1aca:	f7ff fde3 	bl	1694 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1ace:	4806      	ldr	r0, [pc, #24]	; (1ae8 <display_menu+0x20>)
    1ad0:	f001 f9e9 	bl	2ea6 <println>
    1ad4:	4805      	ldr	r0, [pc, #20]	; (1aec <display_menu+0x24>)
    1ad6:	f001 f9e6 	bl	2ea6 <println>
    1ada:	4805      	ldr	r0, [pc, #20]	; (1af0 <display_menu+0x28>)
    1adc:	f001 f9e3 	bl	2ea6 <println>
    1ae0:	4804      	ldr	r0, [pc, #16]	; (1af4 <display_menu+0x2c>)
    1ae2:	f001 f9e0 	bl	2ea6 <println>
    1ae6:	bd08      	pop	{r3, pc}
    1ae8:	00003dfc 	.word	0x00003dfc
    1aec:	00003e08 	.word	0x00003e08
    1af0:	00003e18 	.word	0x00003e18
    1af4:	00003e24 	.word	0x00003e24

00001af8 <isqrt>:
	if (n<2) return n;
    1af8:	2801      	cmp	r0, #1
    1afa:	dd0c      	ble.n	1b16 <isqrt+0x1e>
int isqrt(int n){
    1afc:	b510      	push	{r4, lr}
    1afe:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1b00:	1080      	asrs	r0, r0, #2
    1b02:	f7ff fff9 	bl	1af8 <isqrt>
    1b06:	0040      	lsls	r0, r0, #1
	large = small + 1;
    1b08:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    1b0a:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    1b0e:	4294      	cmp	r4, r2
    1b10:	bfa8      	it	ge
    1b12:	4618      	movge	r0, r3
}
    1b14:	bd10      	pop	{r4, pc}
    1b16:	4770      	bx	lr

00001b18 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    1b18:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    1b1a:	6803      	ldr	r3, [r0, #0]
    1b1c:	680a      	ldr	r2, [r1, #0]
    1b1e:	6844      	ldr	r4, [r0, #4]
    1b20:	6848      	ldr	r0, [r1, #4]
    1b22:	fb00 f004 	mul.w	r0, r0, r4
    1b26:	fb02 0003 	mla	r0, r2, r3, r0
    1b2a:	2800      	cmp	r0, #0
    1b2c:	bfb8      	it	lt
    1b2e:	4240      	neglt	r0, r0
    1b30:	f7ff ffe2 	bl	1af8 <isqrt>
}
    1b34:	bd10      	pop	{r4, pc}

00001b36 <main>:
			break;	
		}
	}//while
}

void main(void){
    1b36:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1b3a:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1b3c:	4ac2      	ldr	r2, [pc, #776]	; (1e48 <main+0x312>)
    1b3e:	6813      	ldr	r3, [r2, #0]
    1b40:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1b44:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1b46:	4613      	mov	r3, r2
    1b48:	681a      	ldr	r2, [r3, #0]
    1b4a:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1b4e:	d0fb      	beq.n	1b48 <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1b50:	4bbd      	ldr	r3, [pc, #756]	; (1e48 <main+0x312>)
    1b52:	685a      	ldr	r2, [r3, #4]
    1b54:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1b58:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1b5a:	681a      	ldr	r2, [r3, #0]
    1b5c:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1b60:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1b62:	681a      	ldr	r2, [r3, #0]
    1b64:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1b68:	d0fb      	beq.n	1b62 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1b6a:	4ab8      	ldr	r2, [pc, #736]	; (1e4c <main+0x316>)
    1b6c:	6813      	ldr	r3, [r2, #0]
    1b6e:	f043 0312 	orr.w	r3, r3, #18
    1b72:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1b74:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1b78:	6853      	ldr	r3, [r2, #4]
    1b7a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1b7e:	f043 0302 	orr.w	r3, r3, #2
    1b82:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1b84:	f640 031d 	movw	r3, #2077	; 0x81d
    1b88:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1b8a:	4cb1      	ldr	r4, [pc, #708]	; (1e50 <main+0x31a>)
    1b8c:	2206      	movs	r2, #6
    1b8e:	210d      	movs	r1, #13
    1b90:	4620      	mov	r0, r4
    1b92:	f7ff fcf3 	bl	157c <config_pin>
	_led_off();
    1b96:	68e3      	ldr	r3, [r4, #12]
    1b98:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1b9c:	60e3      	str	r3, [r4, #12]
	tvout_init();
    1b9e:	f001 fa37 	bl	3010 <tvout_init>
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1ba2:	2400      	movs	r4, #0
    1ba4:	9401      	str	r4, [sp, #4]
    1ba6:	2301      	movs	r3, #1
    1ba8:	9300      	str	r3, [sp, #0]
    1baa:	2303      	movs	r3, #3
    1bac:	4622      	mov	r2, r4
    1bae:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1bb2:	4620      	mov	r0, r4
    1bb4:	f001 fd02 	bl	35bc <usart_open_channel>
	gamepad_init();
    1bb8:	f7ff faa8 	bl	110c <gamepad_init>
	sound_init();
    1bbc:	f000 fe88 	bl	28d0 <sound_init>
	gfx_cls();
    1bc0:	f7ff fd68 	bl	1694 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1bc4:	f001 fc42 	bl	344c <get_video_params>
	display_menu();
    1bc8:	f7ff ff7e 	bl	1ac8 <display_menu>
	int i=0;
    1bcc:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1bce:	4ba1      	ldr	r3, [pc, #644]	; (1e54 <main+0x31e>)
    1bd0:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1bd4:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1bd8:	9304      	str	r3, [sp, #16]
    1bda:	e1d0      	b.n	1f7e <main+0x448>
			if (i<(MENU_ITEMS-1)) i++;
    1bdc:	f1ba 0f02 	cmp.w	sl, #2
    1be0:	f300 81cd 	bgt.w	1f7e <main+0x448>
    1be4:	f10a 0a01 	add.w	sl, sl, #1
    1be8:	e1c9      	b.n	1f7e <main+0x448>
			switch(i){
    1bea:	f1ba 0f03 	cmp.w	sl, #3
    1bee:	f200 81c4 	bhi.w	1f7a <main+0x444>
    1bf2:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1bf6:	0004      	.short	0x0004
    1bf8:	010f00cf 	.word	0x010f00cf
    1bfc:	01e8      	.short	0x01e8
	count=games_count();
    1bfe:	f7ff fb4b 	bl	1298 <games_count>
    1c02:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1c04:	2000      	movs	r0, #0
    1c06:	f001 fbf7 	bl	33f8 <set_video_mode>
	vparams=get_video_params();
    1c0a:	f001 fc1f 	bl	344c <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1c0e:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1c12:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1c16:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1c18:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1c1c:	454e      	cmp	r6, r9
    1c1e:	bfda      	itte	le
    1c20:	eba9 0806 	suble.w	r8, r9, r6
    1c24:	f108 0801 	addle.w	r8, r8, #1
    1c28:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1c2a:	2100      	movs	r1, #0
    1c2c:	4608      	mov	r0, r1
    1c2e:	f001 f8f1 	bl	2e14 <set_cursor>
	print(" ********** GAMES **********");
    1c32:	4889      	ldr	r0, [pc, #548]	; (1e58 <main+0x322>)
    1c34:	f001 f922 	bl	2e7c <print>
	while ((r<rows) && games_list[first].size){
    1c38:	f1bb 0f01 	cmp.w	fp, #1
    1c3c:	d92d      	bls.n	1c9a <main+0x164>
    1c3e:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1c42:	4a86      	ldr	r2, [pc, #536]	; (1e5c <main+0x326>)
    1c44:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1c48:	691b      	ldr	r3, [r3, #16]
    1c4a:	b333      	cbz	r3, 1c9a <main+0x164>
    1c4c:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1c50:	1c53      	adds	r3, r2, #1
    1c52:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1c56:	2501      	movs	r5, #1
		put_char(' ');
    1c58:	2720      	movs	r7, #32
		new_line();
    1c5a:	f001 f829 	bl	2cb0 <new_line>
		clear_line();
    1c5e:	f001 f9a7 	bl	2fb0 <clear_line>
		put_char(' ');
    1c62:	4638      	mov	r0, r7
    1c64:	f001 f86c 	bl	2d40 <put_char>
		print(games_list[first].name);
    1c68:	4620      	mov	r0, r4
    1c6a:	f001 f907 	bl	2e7c <print>
		line=get_cursor()&0xff;
    1c6e:	f001 f8d7 	bl	2e20 <get_cursor>
		set_cursor(90,line);
    1c72:	b2c1      	uxtb	r1, r0
    1c74:	205a      	movs	r0, #90	; 0x5a
    1c76:	f001 f8cd 	bl	2e14 <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1c7a:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1c7e:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1c80:	bf0c      	ite	eq
    1c82:	4877      	ldreq	r0, [pc, #476]	; (1e60 <main+0x32a>)
			print("(BPCHIP)");
    1c84:	4877      	ldrne	r0, [pc, #476]	; (1e64 <main+0x32e>)
    1c86:	f001 f8f9 	bl	2e7c <print>
		r++;
    1c8a:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1c8c:	42ae      	cmp	r6, r5
    1c8e:	d004      	beq.n	1c9a <main+0x164>
    1c90:	341c      	adds	r4, #28
    1c92:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1c96:	2b00      	cmp	r3, #0
    1c98:	d1df      	bne.n	1c5a <main+0x124>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1c9a:	eba9 0108 	sub.w	r1, r9, r8
    1c9e:	00c9      	lsls	r1, r1, #3
    1ca0:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1ca4:	2000      	movs	r0, #0
    1ca6:	f001 f8b5 	bl	2e14 <set_cursor>
		put_char('>');
    1caa:	203e      	movs	r0, #62	; 0x3e
    1cac:	f001 f848 	bl	2d40 <put_char>
		btn=btn_wait_any();
    1cb0:	f7ff fa9e 	bl	11f0 <btn_wait_any>
    1cb4:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1cb6:	f7ff fa87 	bl	11c8 <btn_wait_up>
		switch(btn){
    1cba:	2c04      	cmp	r4, #4
    1cbc:	d056      	beq.n	1d6c <main+0x236>
    1cbe:	d946      	bls.n	1d4e <main+0x218>
    1cc0:	2c40      	cmp	r4, #64	; 0x40
    1cc2:	d05a      	beq.n	1d7a <main+0x244>
    1cc4:	2c80      	cmp	r4, #128	; 0x80
    1cc6:	f000 8158 	beq.w	1f7a <main+0x444>
    1cca:	2c20      	cmp	r4, #32
    1ccc:	d1a6      	bne.n	1c1c <main+0xe6>
	run_game(selected-1);
    1cce:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1cd2:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1cd6:	4b61      	ldr	r3, [pc, #388]	; (1e5c <main+0x326>)
    1cd8:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1cdc:	2b01      	cmp	r3, #1
    1cde:	bf14      	ite	ne
    1ce0:	2600      	movne	r6, #0
    1ce2:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1ce6:	4f5d      	ldr	r7, [pc, #372]	; (1e5c <main+0x326>)
    1ce8:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1cec:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1cf0:	6922      	ldr	r2, [r4, #16]
    1cf2:	495d      	ldr	r1, [pc, #372]	; (1e68 <main+0x332>)
    1cf4:	4431      	add	r1, r6
    1cf6:	6960      	ldr	r0, [r4, #20]
    1cf8:	f7ff fb81 	bl	13fe <move>
	set_keymap(games_list[idx].keymap);
    1cfc:	69a0      	ldr	r0, [r4, #24]
    1cfe:	f7ff f9f9 	bl	10f4 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1d02:	eba5 0909 	sub.w	r9, r5, r9
    1d06:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1d0a:	f001 fb75 	bl	33f8 <set_video_mode>
	set_palette(DEFAULT_PALETTE);
    1d0e:	4857      	ldr	r0, [pc, #348]	; (1e6c <main+0x336>)
    1d10:	f7ff fc68 	bl	15e4 <set_palette>
	exit_code=chip_vm(addr,debug_level);
    1d14:	4b56      	ldr	r3, [pc, #344]	; (1e70 <main+0x33a>)
    1d16:	7819      	ldrb	r1, [r3, #0]
    1d18:	4630      	mov	r0, r6
    1d1a:	f7fe fb69 	bl	3f0 <chip_vm>
    1d1e:	4604      	mov	r4, r0
	print("exit code: ");
    1d20:	4854      	ldr	r0, [pc, #336]	; (1e74 <main+0x33e>)
    1d22:	f001 f8ab 	bl	2e7c <print>
	switch(exit_code){
    1d26:	2c01      	cmp	r4, #1
    1d28:	d02a      	beq.n	1d80 <main+0x24a>
    1d2a:	b374      	cbz	r4, 1d8a <main+0x254>
    1d2c:	2c03      	cmp	r4, #3
    1d2e:	d82c      	bhi.n	1d8a <main+0x254>
		select_console(SERIAL);
    1d30:	2001      	movs	r0, #1
    1d32:	f001 f95f 	bl	2ff4 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1d36:	4621      	mov	r1, r4
    1d38:	484f      	ldr	r0, [pc, #316]	; (1e78 <main+0x342>)
    1d3a:	f7fe fae9 	bl	310 <print_vms>
		select_console(LOCAL);
    1d3e:	2000      	movs	r0, #0
    1d40:	f001 f958 	bl	2ff4 <select_console>
		btn_wait_any();
    1d44:	f7ff fa54 	bl	11f0 <btn_wait_any>
		i=1;
    1d48:	2301      	movs	r3, #1
    1d4a:	9305      	str	r3, [sp, #20]
    1d4c:	e01d      	b.n	1d8a <main+0x254>
		switch(btn){
    1d4e:	2c01      	cmp	r4, #1
    1d50:	d009      	beq.n	1d66 <main+0x230>
    1d52:	2c02      	cmp	r4, #2
    1d54:	f47f af62 	bne.w	1c1c <main+0xe6>
			if (selected>1) selected--;
    1d58:	f1b9 0f01 	cmp.w	r9, #1
    1d5c:	f77f af5e 	ble.w	1c1c <main+0xe6>
    1d60:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1d64:	e75a      	b.n	1c1c <main+0xe6>
			selected=1;
    1d66:	f04f 0901 	mov.w	r9, #1
    1d6a:	e757      	b.n	1c1c <main+0xe6>
			if (selected<count){
    1d6c:	9b03      	ldr	r3, [sp, #12]
    1d6e:	454b      	cmp	r3, r9
    1d70:	f77f af54 	ble.w	1c1c <main+0xe6>
				selected++;
    1d74:	f109 0901 	add.w	r9, r9, #1
    1d78:	e750      	b.n	1c1c <main+0xe6>
			selected=count;
    1d7a:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1d7e:	e74d      	b.n	1c1c <main+0xe6>
		print("CHIP EXIT OK");
    1d80:	483e      	ldr	r0, [pc, #248]	; (1e7c <main+0x346>)
    1d82:	f001 f87b 	bl	2e7c <print>
		i=0;
    1d86:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1d8a:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1d8e:	f001 fb67 	bl	3460 <game_pause>
    1d92:	e0f2      	b.n	1f7a <main+0x444>
	gfx_cls();
    1d94:	f7ff fc7e 	bl	1694 <gfx_cls>
	print(" **** VM debug support ****\n");
    1d98:	4839      	ldr	r0, [pc, #228]	; (1e80 <main+0x34a>)
    1d9a:	f001 f86f 	bl	2e7c <print>
	print(" No debug support\n");
    1d9e:	4839      	ldr	r0, [pc, #228]	; (1e84 <main+0x34e>)
    1da0:	f001 f86c 	bl	2e7c <print>
	print(" Print PC and OPCODE\n");
    1da4:	4838      	ldr	r0, [pc, #224]	; (1e88 <main+0x352>)
    1da6:	f001 f869 	bl	2e7c <print>
	print(" Print all VM states.\n");
    1daa:	4838      	ldr	r0, [pc, #224]	; (1e8c <main+0x356>)
    1dac:	f001 f866 	bl	2e7c <print>
	print(" Single step\n");
    1db0:	4837      	ldr	r0, [pc, #220]	; (1e90 <main+0x35a>)
    1db2:	f001 f863 	bl	2e7c <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1db6:	4c2e      	ldr	r4, [pc, #184]	; (1e70 <main+0x33a>)
    1db8:	2500      	movs	r5, #0
		put_char('*');
    1dba:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1dbc:	7821      	ldrb	r1, [r4, #0]
    1dbe:	3101      	adds	r1, #1
    1dc0:	00c9      	lsls	r1, r1, #3
    1dc2:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1dc6:	4628      	mov	r0, r5
    1dc8:	f001 f824 	bl	2e14 <set_cursor>
		put_char('*');
    1dcc:	4630      	mov	r0, r6
    1dce:	f000 ffb7 	bl	2d40 <put_char>
		btn=btn_wait_any();
    1dd2:	f7ff fa0d 	bl	11f0 <btn_wait_any>
    1dd6:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1dd8:	7821      	ldrb	r1, [r4, #0]
    1dda:	3101      	adds	r1, #1
    1ddc:	00c9      	lsls	r1, r1, #3
    1dde:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1de2:	4628      	mov	r0, r5
    1de4:	f001 f816 	bl	2e14 <set_cursor>
		put_char(' ');
    1de8:	2020      	movs	r0, #32
    1dea:	f000 ffa9 	bl	2d40 <put_char>
		switch(btn){
    1dee:	2f04      	cmp	r7, #4
    1df0:	d00a      	beq.n	1e08 <main+0x2d2>
    1df2:	2f20      	cmp	r7, #32
    1df4:	f000 80c1 	beq.w	1f7a <main+0x444>
    1df8:	2f02      	cmp	r7, #2
    1dfa:	d1df      	bne.n	1dbc <main+0x286>
			if (debug_level) debug_level--;
    1dfc:	7823      	ldrb	r3, [r4, #0]
    1dfe:	2b00      	cmp	r3, #0
    1e00:	d0dc      	beq.n	1dbc <main+0x286>
    1e02:	3b01      	subs	r3, #1
    1e04:	7023      	strb	r3, [r4, #0]
    1e06:	e7d9      	b.n	1dbc <main+0x286>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1e08:	7823      	ldrb	r3, [r4, #0]
    1e0a:	2b02      	cmp	r3, #2
    1e0c:	d8d6      	bhi.n	1dbc <main+0x286>
    1e0e:	3301      	adds	r3, #1
    1e10:	7023      	strb	r3, [r4, #0]
    1e12:	e7d3      	b.n	1dbc <main+0x286>
	set_video_mode(p);
    1e14:	2000      	movs	r0, #0
    1e16:	f001 faef 	bl	33f8 <set_video_mode>
	color_bars();
    1e1a:	f7ff fdaf 	bl	197c <color_bars>
	vertical_bars();
    1e1e:	f7ff fdd5 	bl	19cc <vertical_bars>
	horiz_bars();
    1e22:	f7ff fdf3 	bl	1a0c <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1e26:	2110      	movs	r1, #16
    1e28:	481a      	ldr	r0, [pc, #104]	; (1e94 <main+0x35e>)
    1e2a:	f001 f842 	bl	2eb2 <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1e2e:	210a      	movs	r1, #10
    1e30:	9804      	ldr	r0, [sp, #16]
    1e32:	f001 f83e 	bl	2eb2 <print_int>
	init_balls();
    1e36:	f7ff fe07 	bl	1a48 <init_balls>
	p=0;
    1e3a:	2500      	movs	r5, #0
	if (distance(&balls[0],&balls[1])<8){
    1e3c:	4e16      	ldr	r6, [pc, #88]	; (1e98 <main+0x362>)
    1e3e:	f1a6 0814 	sub.w	r8, r6, #20
		if (balls[0].dx!=balls[1].dx){
    1e42:	4644      	mov	r4, r8
    1e44:	e06a      	b.n	1f1c <main+0x3e6>
    1e46:	bf00      	nop
    1e48:	40021000 	.word	0x40021000
    1e4c:	40022000 	.word	0x40022000
    1e50:	40011000 	.word	0x40011000
    1e54:	20004ea0 	.word	0x20004ea0
    1e58:	00003e30 	.word	0x00003e30
    1e5c:	20000004 	.word	0x20000004
    1e60:	00003e50 	.word	0x00003e50
    1e64:	00003e58 	.word	0x00003e58
    1e68:	20000700 	.word	0x20000700
    1e6c:	00003cb8 	.word	0x00003cb8
    1e70:	20002704 	.word	0x20002704
    1e74:	00003e64 	.word	0x00003e64
    1e78:	00003e80 	.word	0x00003e80
    1e7c:	00003e70 	.word	0x00003e70
    1e80:	00003e90 	.word	0x00003e90
    1e84:	00003eb0 	.word	0x00003eb0
    1e88:	00003ec4 	.word	0x00003ec4
    1e8c:	00003edc 	.word	0x00003edc
    1e90:	00003ef4 	.word	0x00003ef4
    1e94:	00004400 	.word	0x00004400
    1e98:	2000271c 	.word	0x2000271c
			balls[i].dy=-balls[i].dy;
    1e9c:	4249      	negs	r1, r1
    1e9e:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1ea0:	f8c2 c004 	str.w	ip, [r2, #4]
    1ea4:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    1ea6:	4573      	cmp	r3, lr
    1ea8:	d01e      	beq.n	1ee8 <main+0x3b2>
    1eaa:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1eac:	f8d3 c000 	ldr.w	ip, [r3]
    1eb0:	6899      	ldr	r1, [r3, #8]
    1eb2:	eb0c 0701 	add.w	r7, ip, r1
    1eb6:	601f      	str	r7, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    1eb8:	f117 0f07 	cmn.w	r7, #7
    1ebc:	db03      	blt.n	1ec6 <main+0x390>
    1ebe:	f8b0 900c 	ldrh.w	r9, [r0, #12]
    1ec2:	454f      	cmp	r7, r9
    1ec4:	db03      	blt.n	1ece <main+0x398>
			balls[i].dx=-balls[i].dx;
    1ec6:	4249      	negs	r1, r1
    1ec8:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1eca:	f8c2 c000 	str.w	ip, [r2]
		balls[i].y+=balls[i].dy;
    1ece:	f8d2 c004 	ldr.w	ip, [r2, #4]
    1ed2:	68d1      	ldr	r1, [r2, #12]
    1ed4:	eb0c 0701 	add.w	r7, ip, r1
    1ed8:	6057      	str	r7, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1eda:	2f0f      	cmp	r7, #15
    1edc:	ddde      	ble.n	1e9c <main+0x366>
    1ede:	f8b0 900e 	ldrh.w	r9, [r0, #14]
    1ee2:	454f      	cmp	r7, r9
    1ee4:	dbde      	blt.n	1ea4 <main+0x36e>
    1ee6:	e7d9      	b.n	1e9c <main+0x366>
	if (distance(&balls[0],&balls[1])<8){
    1ee8:	4631      	mov	r1, r6
    1eea:	4640      	mov	r0, r8
    1eec:	f7ff fe14 	bl	1b18 <distance>
    1ef0:	2807      	cmp	r0, #7
    1ef2:	d80b      	bhi.n	1f0c <main+0x3d6>
		if (balls[0].dx!=balls[1].dx){
    1ef4:	68a3      	ldr	r3, [r4, #8]
    1ef6:	69e2      	ldr	r2, [r4, #28]
    1ef8:	4293      	cmp	r3, r2
			balls[0].dx=balls[1].dx;
    1efa:	bf1c      	itt	ne
    1efc:	60a2      	strne	r2, [r4, #8]
			balls[1].dx=i;
    1efe:	61e3      	strne	r3, [r4, #28]
		if (balls[0].dy!=balls[1].dy){
    1f00:	68e3      	ldr	r3, [r4, #12]
    1f02:	6a22      	ldr	r2, [r4, #32]
    1f04:	4293      	cmp	r3, r2
			balls[0].dy=balls[1].dy;
    1f06:	bf1c      	itt	ne
    1f08:	60e2      	strne	r2, [r4, #12]
			balls[1].dy=i;
    1f0a:	6223      	strne	r3, [r4, #32]
		if (btn_query_down(KEY_RIGHT)){
    1f0c:	2010      	movs	r0, #16
    1f0e:	f7ff f93b 	bl	1188 <btn_query_down>
    1f12:	b968      	cbnz	r0, 1f30 <main+0x3fa>
		}else if (btn_query_down(KEY_B)){
    1f14:	2020      	movs	r0, #32
    1f16:	f7ff f937 	bl	1188 <btn_query_down>
    1f1a:	bb40      	cbnz	r0, 1f6e <main+0x438>
		draw_balls();
    1f1c:	f7ff fcfa 	bl	1914 <draw_balls>
		draw_balls();
    1f20:	f7ff fcf8 	bl	1914 <draw_balls>
	vmode_params_t *vparams=get_video_params();
    1f24:	f001 fa92 	bl	344c <get_video_params>
    1f28:	4b50      	ldr	r3, [pc, #320]	; (206c <main+0x536>)
    1f2a:	f103 0e28 	add.w	lr, r3, #40	; 0x28
    1f2e:	e7bc      	b.n	1eaa <main+0x374>
			p^=1;
    1f30:	f085 0501 	eor.w	r5, r5, #1
			set_video_mode(p);
    1f34:	4628      	mov	r0, r5
    1f36:	f001 fa5f 	bl	33f8 <set_video_mode>
			switch(p){
    1f3a:	b15d      	cbz	r5, 1f54 <main+0x41e>
    1f3c:	2d01      	cmp	r5, #1
    1f3e:	d012      	beq.n	1f66 <main+0x430>
			vertical_bars();
    1f40:	f7ff fd44 	bl	19cc <vertical_bars>
			horiz_bars();
    1f44:	f7ff fd62 	bl	1a0c <horiz_bars>
			init_balls();
    1f48:	f7ff fd7e 	bl	1a48 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1f4c:	2010      	movs	r0, #16
    1f4e:	f7ff f93b 	bl	11c8 <btn_wait_up>
    1f52:	e7e3      	b.n	1f1c <main+0x3e6>
				print("BPCHIP mode\n180x112 16 colors");
    1f54:	4846      	ldr	r0, [pc, #280]	; (2070 <main+0x53a>)
    1f56:	f000 ff91 	bl	2e7c <print>
				color_bars();
    1f5a:	f7ff fd0f 	bl	197c <color_bars>
				sprite_bpp=TWO_BPP;
    1f5e:	2201      	movs	r2, #1
    1f60:	4b44      	ldr	r3, [pc, #272]	; (2074 <main+0x53e>)
    1f62:	701a      	strb	r2, [r3, #0]
    1f64:	e7ec      	b.n	1f40 <main+0x40a>
				print("SCHIP mode\n128x64 mono");
    1f66:	4844      	ldr	r0, [pc, #272]	; (2078 <main+0x542>)
    1f68:	f000 ff88 	bl	2e7c <print>
    1f6c:	e7e8      	b.n	1f40 <main+0x40a>
			btn_wait_up(KEY_B);
    1f6e:	2020      	movs	r0, #32
    1f70:	f7ff f92a 	bl	11c8 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1f74:	2000      	movs	r0, #0
    1f76:	f001 fa3f 	bl	33f8 <set_video_mode>
			display_menu();
    1f7a:	f7ff fda5 	bl	1ac8 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1f7e:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1f82:	b2e4      	uxtb	r4, r4
    1f84:	4621      	mov	r1, r4
    1f86:	2000      	movs	r0, #0
    1f88:	f000 ff44 	bl	2e14 <set_cursor>
		put_char('>');
    1f8c:	203e      	movs	r0, #62	; 0x3e
    1f8e:	f000 fed7 	bl	2d40 <put_char>
		btn=btn_wait_any();
    1f92:	f7ff f92d 	bl	11f0 <btn_wait_any>
    1f96:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1f98:	f7ff f916 	bl	11c8 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1f9c:	4621      	mov	r1, r4
    1f9e:	2000      	movs	r0, #0
    1fa0:	f000 ff38 	bl	2e14 <set_cursor>
		put_char(' ');
    1fa4:	2020      	movs	r0, #32
    1fa6:	f000 fecb 	bl	2d40 <put_char>
		switch(btn){
    1faa:	2d04      	cmp	r5, #4
    1fac:	f43f ae16 	beq.w	1bdc <main+0xa6>
    1fb0:	2d20      	cmp	r5, #32
    1fb2:	f43f ae1a 	beq.w	1bea <main+0xb4>
    1fb6:	2d02      	cmp	r5, #2
    1fb8:	d1e1      	bne.n	1f7e <main+0x448>
			if (i) i--;
    1fba:	f1ba 0f00 	cmp.w	sl, #0
    1fbe:	d0de      	beq.n	1f7e <main+0x448>
    1fc0:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1fc4:	e7db      	b.n	1f7e <main+0x448>
	gfx_cls();
    1fc6:	f7ff fb65 	bl	1694 <gfx_cls>
	print("press buttons\n");
    1fca:	482c      	ldr	r0, [pc, #176]	; (207c <main+0x546>)
    1fcc:	f000 ff56 	bl	2e7c <print>
		tone(freq,3);
    1fd0:	2503      	movs	r5, #3
			freq=493;
    1fd2:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    1fd6:	f240 266e 	movw	r6, #622	; 0x26e
    1fda:	e019      	b.n	2010 <main+0x4da>
		switch(key){
    1fdc:	2802      	cmp	r0, #2
    1fde:	d03f      	beq.n	2060 <main+0x52a>
    1fe0:	2804      	cmp	r0, #4
    1fe2:	d00e      	beq.n	2002 <main+0x4cc>
    1fe4:	2801      	cmp	r0, #1
    1fe6:	d024      	beq.n	2032 <main+0x4fc>
		tone(freq,3);
    1fe8:	4629      	mov	r1, r5
    1fea:	9802      	ldr	r0, [sp, #8]
    1fec:	f000 fc9c 	bl	2928 <tone>
	while (key!=KEY_B){
    1ff0:	2c20      	cmp	r4, #32
    1ff2:	d10d      	bne.n	2010 <main+0x4da>
    1ff4:	e028      	b.n	2048 <main+0x512>
		switch(key){
    1ff6:	2810      	cmp	r0, #16
    1ff8:	d1f6      	bne.n	1fe8 <main+0x4b2>
			freq=523;
    1ffa:	f240 230b 	movw	r3, #523	; 0x20b
    1ffe:	9302      	str	r3, [sp, #8]
    2000:	e002      	b.n	2008 <main+0x4d2>
			freq=466;
    2002:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2006:	9302      	str	r3, [sp, #8]
		tone(freq,3);
    2008:	4629      	mov	r1, r5
    200a:	9802      	ldr	r0, [sp, #8]
    200c:	f000 fc8c 	bl	2928 <tone>
		key=btn_any_down();
    2010:	f7ff f928 	bl	1264 <btn_any_down>
    2014:	4604      	mov	r4, r0
		switch(key){
    2016:	2808      	cmp	r0, #8
    2018:	d026      	beq.n	2068 <main+0x532>
    201a:	d9df      	bls.n	1fdc <main+0x4a6>
    201c:	2820      	cmp	r0, #32
    201e:	d00e      	beq.n	203e <main+0x508>
    2020:	d9e9      	bls.n	1ff6 <main+0x4c0>
    2022:	2840      	cmp	r0, #64	; 0x40
    2024:	d009      	beq.n	203a <main+0x504>
    2026:	2880      	cmp	r0, #128	; 0x80
    2028:	d1de      	bne.n	1fe8 <main+0x4b2>
			freq=659;
    202a:	f240 2393 	movw	r3, #659	; 0x293
    202e:	9302      	str	r3, [sp, #8]
    2030:	e7ea      	b.n	2008 <main+0x4d2>
			freq=554;
    2032:	f240 232a 	movw	r3, #554	; 0x22a
    2036:	9302      	str	r3, [sp, #8]
    2038:	e7e6      	b.n	2008 <main+0x4d2>
			freq=622;
    203a:	9602      	str	r6, [sp, #8]
    203c:	e7e4      	b.n	2008 <main+0x4d2>
		tone(freq,3);
    203e:	2103      	movs	r1, #3
    2040:	f240 204b 	movw	r0, #587	; 0x24b
    2044:	f000 fc70 	bl	2928 <tone>
	btn_wait_up(key);
    2048:	2020      	movs	r0, #32
    204a:	f7ff f8bd 	bl	11c8 <btn_wait_up>
	noise(30);
    204e:	201e      	movs	r0, #30
    2050:	f000 fca4 	bl	299c <noise>
	while(sound_timer);
    2054:	4a0a      	ldr	r2, [pc, #40]	; (2080 <main+0x54a>)
    2056:	8813      	ldrh	r3, [r2, #0]
    2058:	b29b      	uxth	r3, r3
    205a:	2b00      	cmp	r3, #0
    205c:	d1fb      	bne.n	2056 <main+0x520>
    205e:	e78c      	b.n	1f7a <main+0x444>
			freq=440;
    2060:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2064:	9302      	str	r3, [sp, #8]
    2066:	e7cf      	b.n	2008 <main+0x4d2>
			freq=493;
    2068:	9702      	str	r7, [sp, #8]
    206a:	e7cd      	b.n	2008 <main+0x4d2>
    206c:	20002708 	.word	0x20002708
    2070:	00003f04 	.word	0x00003f04
    2074:	200001c8 	.word	0x200001c8
    2078:	00003f24 	.word	0x00003f24
    207c:	00003f3c 	.word	0x00003f3c
    2080:	20004e98 	.word	0x20004e98

00002084 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    2084:	283b      	cmp	r0, #59	; 0x3b
    2086:	dc0d      	bgt.n	20a4 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    2088:	1143      	asrs	r3, r0, #5
    208a:	009b      	lsls	r3, r3, #2
    208c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2090:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    2094:	6819      	ldr	r1, [r3, #0]
    2096:	f000 001f 	and.w	r0, r0, #31
    209a:	2201      	movs	r2, #1
    209c:	fa02 f000 	lsl.w	r0, r2, r0
    20a0:	4308      	orrs	r0, r1
    20a2:	6018      	str	r0, [r3, #0]
    20a4:	4770      	bx	lr

000020a6 <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20a6:	283b      	cmp	r0, #59	; 0x3b
    20a8:	dc08      	bgt.n	20bc <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    20aa:	1142      	asrs	r2, r0, #5
    20ac:	f000 001f 	and.w	r0, r0, #31
    20b0:	2301      	movs	r3, #1
    20b2:	fa03 f000 	lsl.w	r0, r3, r0
    20b6:	4b02      	ldr	r3, [pc, #8]	; (20c0 <disable_interrupt+0x1a>)
    20b8:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    20bc:	4770      	bx	lr
    20be:	bf00      	nop
    20c0:	e000e180 	.word	0xe000e180

000020c4 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    20c4:	283b      	cmp	r0, #59	; 0x3b
    20c6:	dc09      	bgt.n	20dc <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    20c8:	1142      	asrs	r2, r0, #5
    20ca:	4b05      	ldr	r3, [pc, #20]	; (20e0 <get_pending+0x1c>)
    20cc:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    20d0:	f000 031f 	and.w	r3, r0, #31
    20d4:	2001      	movs	r0, #1
    20d6:	4098      	lsls	r0, r3
    20d8:	4010      	ands	r0, r2
    20da:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    20dc:	2000      	movs	r0, #0
}
    20de:	4770      	bx	lr
    20e0:	e000e280 	.word	0xe000e280

000020e4 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    20e4:	283b      	cmp	r0, #59	; 0x3b
    20e6:	dc0c      	bgt.n	2102 <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    20e8:	1143      	asrs	r3, r0, #5
    20ea:	009b      	lsls	r3, r3, #2
    20ec:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    20f0:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    20f4:	681a      	ldr	r2, [r3, #0]
    20f6:	f000 031f 	and.w	r3, r0, #31
    20fa:	2001      	movs	r0, #1
    20fc:	4098      	lsls	r0, r3
    20fe:	4010      	ands	r0, r2
    2100:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    2102:	2000      	movs	r0, #0
}
    2104:	4770      	bx	lr

00002106 <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    2106:	283b      	cmp	r0, #59	; 0x3b
    2108:	dc0d      	bgt.n	2126 <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    210a:	1143      	asrs	r3, r0, #5
    210c:	009b      	lsls	r3, r3, #2
    210e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2112:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2116:	6819      	ldr	r1, [r3, #0]
    2118:	f000 001f 	and.w	r0, r0, #31
    211c:	2201      	movs	r2, #1
    211e:	fa02 f000 	lsl.w	r0, r2, r0
    2122:	4308      	orrs	r0, r1
    2124:	6018      	str	r0, [r3, #0]
    2126:	4770      	bx	lr

00002128 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2128:	283b      	cmp	r0, #59	; 0x3b
    212a:	dc08      	bgt.n	213e <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    212c:	1142      	asrs	r2, r0, #5
    212e:	f000 001f 	and.w	r0, r0, #31
    2132:	2301      	movs	r3, #1
    2134:	fa03 f000 	lsl.w	r0, r3, r0
    2138:	4b01      	ldr	r3, [pc, #4]	; (2140 <clear_pending+0x18>)
    213a:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    213e:	4770      	bx	lr
    2140:	e000e280 	.word	0xe000e280

00002144 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    2144:	283b      	cmp	r0, #59	; 0x3b
    2146:	d90c      	bls.n	2162 <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2148:	f100 030f 	add.w	r3, r0, #15
    214c:	2b0e      	cmp	r3, #14
    214e:	d807      	bhi.n	2160 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    2150:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    2154:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2158:	30fc      	adds	r0, #252	; 0xfc
    215a:	0109      	lsls	r1, r1, #4
    215c:	4b04      	ldr	r3, [pc, #16]	; (2170 <set_int_priority+0x2c>)
    215e:	54c1      	strb	r1, [r0, r3]
    2160:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    2162:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    2166:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    216a:	0109      	lsls	r1, r1, #4
    216c:	7001      	strb	r1, [r0, #0]
    216e:	4770      	bx	lr
    2170:	e000ed18 	.word	0xe000ed18

00002174 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    2174:	f010 0f03 	tst.w	r0, #3
    2178:	d113      	bne.n	21a2 <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    217a:	4b0c      	ldr	r3, [pc, #48]	; (21ac <leap_year+0x38>)
    217c:	fba3 2300 	umull	r2, r3, r3, r0
    2180:	095b      	lsrs	r3, r3, #5
    2182:	2264      	movs	r2, #100	; 0x64
    2184:	fb02 0313 	mls	r3, r2, r3, r0
    2188:	b96b      	cbnz	r3, 21a6 <leap_year+0x32>
    218a:	4b08      	ldr	r3, [pc, #32]	; (21ac <leap_year+0x38>)
    218c:	fba3 2300 	umull	r2, r3, r3, r0
    2190:	09db      	lsrs	r3, r3, #7
    2192:	f44f 72c8 	mov.w	r2, #400	; 0x190
    2196:	fb02 0013 	mls	r0, r2, r3, r0
    219a:	fab0 f080 	clz	r0, r0
    219e:	0940      	lsrs	r0, r0, #5
    21a0:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    21a2:	2000      	movs	r0, #0
    21a4:	4770      	bx	lr
		return 1;
    21a6:	2001      	movs	r0, #1
}
    21a8:	4770      	bx	lr
    21aa:	bf00      	nop
    21ac:	51eb851f 	.word	0x51eb851f

000021b0 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    21b0:	4b07      	ldr	r3, [pc, #28]	; (21d0 <sec_per_month+0x20>)
    21b2:	5c5a      	ldrb	r2, [r3, r1]
    21b4:	4b07      	ldr	r3, [pc, #28]	; (21d4 <sec_per_month+0x24>)
    21b6:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    21ba:	2902      	cmp	r1, #2
    21bc:	d001      	beq.n	21c2 <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    21be:	4618      	mov	r0, r3
    21c0:	4770      	bx	lr
	if (month==2 && leap){
    21c2:	2800      	cmp	r0, #0
    21c4:	d0fb      	beq.n	21be <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    21c6:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    21ca:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    21ce:	e7f6      	b.n	21be <sec_per_month+0xe>
    21d0:	00003cf8 	.word	0x00003cf8
    21d4:	00015180 	.word	0x00015180

000021d8 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    21d8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    21dc:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    21de:	4b37      	ldr	r3, [pc, #220]	; (22bc <get_date_time+0xe4>)
    21e0:	699a      	ldr	r2, [r3, #24]
    21e2:	69dc      	ldr	r4, [r3, #28]
    21e4:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    21e8:	f240 70b2 	movw	r0, #1970	; 0x7b2
    21ec:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    21ee:	f7ff ffc1 	bl	2174 <leap_year>
    21f2:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    21f4:	4d32      	ldr	r5, [pc, #200]	; (22c0 <get_date_time+0xe8>)
    21f6:	4f33      	ldr	r7, [pc, #204]	; (22c4 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    21f8:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 22d8 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    21fc:	e00e      	b.n	221c <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    21fe:	4444      	add	r4, r8
    2200:	e005      	b.n	220e <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2202:	42ac      	cmp	r4, r5
    2204:	d90f      	bls.n	2226 <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    2206:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    220a:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    220e:	8930      	ldrh	r0, [r6, #8]
    2210:	3001      	adds	r0, #1
    2212:	b280      	uxth	r0, r0
    2214:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    2216:	f7ff ffad 	bl	2174 <leap_year>
    221a:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    221c:	f1b9 0f00 	cmp.w	r9, #0
    2220:	d1ef      	bne.n	2202 <get_date_time+0x2a>
    2222:	42bc      	cmp	r4, r7
    2224:	d8eb      	bhi.n	21fe <get_date_time+0x26>
	}//while
	dt->month=1;
    2226:	8873      	ldrh	r3, [r6, #2]
    2228:	2201      	movs	r2, #1
    222a:	f362 1389 	bfi	r3, r2, #6, #4
    222e:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    2230:	f362 0345 	bfi	r3, r2, #1, #5
    2234:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    2236:	6833      	ldr	r3, [r6, #0]
    2238:	f36f 3310 	bfc	r3, #12, #5
    223c:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    223e:	f36f 138b 	bfc	r3, #6, #6
    2242:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    2244:	f36f 0305 	bfc	r3, #0, #6
    2248:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    224a:	e005      	b.n	2258 <get_date_time+0x80>
		dt->month++;
    224c:	3501      	adds	r5, #1
    224e:	8873      	ldrh	r3, [r6, #2]
    2250:	f365 1389 	bfi	r3, r5, #6, #4
    2254:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    2256:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2258:	8875      	ldrh	r5, [r6, #2]
    225a:	f3c5 1583 	ubfx	r5, r5, #6, #4
    225e:	4629      	mov	r1, r5
    2260:	4648      	mov	r0, r9
    2262:	f7ff ffa5 	bl	21b0 <sec_per_month>
    2266:	4284      	cmp	r4, r0
    2268:	d8f0      	bhi.n	224c <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    226a:	4a17      	ldr	r2, [pc, #92]	; (22c8 <get_date_time+0xf0>)
    226c:	fba2 3204 	umull	r3, r2, r2, r4
    2270:	0c12      	lsrs	r2, r2, #16
    2272:	1c51      	adds	r1, r2, #1
    2274:	78b3      	ldrb	r3, [r6, #2]
    2276:	f361 0345 	bfi	r3, r1, #1, #5
    227a:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    227c:	4b13      	ldr	r3, [pc, #76]	; (22cc <get_date_time+0xf4>)
    227e:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    2282:	4c13      	ldr	r4, [pc, #76]	; (22d0 <get_date_time+0xf8>)
    2284:	fba4 3402 	umull	r3, r4, r4, r2
    2288:	0ae4      	lsrs	r4, r4, #11
    228a:	6833      	ldr	r3, [r6, #0]
    228c:	f364 3310 	bfi	r3, r4, #12, #5
    2290:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    2292:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2296:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    229a:	4a0e      	ldr	r2, [pc, #56]	; (22d4 <get_date_time+0xfc>)
    229c:	fba2 1204 	umull	r1, r2, r2, r4
    22a0:	0952      	lsrs	r2, r2, #5
    22a2:	f362 138b 	bfi	r3, r2, #6, #6
    22a6:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    22a8:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    22ac:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    22b0:	f364 0305 	bfi	r3, r4, #0, #6
    22b4:	7033      	strb	r3, [r6, #0]
    22b6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    22ba:	bf00      	nop
    22bc:	40002800 	.word	0x40002800
    22c0:	01e284ff 	.word	0x01e284ff
    22c4:	01e1337f 	.word	0x01e1337f
    22c8:	c22e4507 	.word	0xc22e4507
    22cc:	00015180 	.word	0x00015180
    22d0:	91a2b3c5 	.word	0x91a2b3c5
    22d4:	88888889 	.word	0x88888889
    22d8:	fe1ecc80 	.word	0xfe1ecc80

000022dc <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    22dc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    22e0:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    22e2:	8903      	ldrh	r3, [r0, #8]
    22e4:	f240 72b1 	movw	r2, #1969	; 0x7b1
    22e8:	4293      	cmp	r3, r2
    22ea:	d857      	bhi.n	239c <set_date_time+0xc0>
    22ec:	f240 70b2 	movw	r0, #1970	; 0x7b2
    22f0:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    22f4:	f7ff ff3e 	bl	2174 <leap_year>
    22f8:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    22fa:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    22fc:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    2300:	f3c6 1683 	ubfx	r6, r6, #6, #4
    2304:	2e01      	cmp	r6, #1
    2306:	d908      	bls.n	231a <set_date_time+0x3e>
    2308:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    230a:	4629      	mov	r1, r5
    230c:	4638      	mov	r0, r7
    230e:	f7ff ff4f 	bl	21b0 <sec_per_month>
    2312:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    2314:	3501      	adds	r5, #1
    2316:	42b5      	cmp	r5, r6
    2318:	d1f7      	bne.n	230a <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    231a:	f8d8 2000 	ldr.w	r2, [r8]
    231e:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    2322:	f8b8 2000 	ldrh.w	r2, [r8]
    2326:	f3c2 1285 	ubfx	r2, r2, #6, #6
    232a:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    232e:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    2330:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2334:	fb01 2203 	mla	r2, r1, r3, r2
    2338:	f898 3000 	ldrb.w	r3, [r8]
    233c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2340:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    2342:	f898 3002 	ldrb.w	r3, [r8, #2]
    2346:	f3c3 0344 	ubfx	r3, r3, #1, #5
    234a:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    234c:	4928      	ldr	r1, [pc, #160]	; (23f0 <set_date_time+0x114>)
    234e:	fb01 2303 	mla	r3, r1, r3, r2
    2352:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2354:	4a27      	ldr	r2, [pc, #156]	; (23f4 <set_date_time+0x118>)
    2356:	69d3      	ldr	r3, [r2, #28]
    2358:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    235c:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    235e:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    2362:	6813      	ldr	r3, [r2, #0]
    2364:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2368:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    236a:	4b23      	ldr	r3, [pc, #140]	; (23f8 <set_date_time+0x11c>)
    236c:	685a      	ldr	r2, [r3, #4]
    236e:	f042 0210 	orr.w	r2, r2, #16
    2372:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    2374:	0c22      	lsrs	r2, r4, #16
    2376:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    2378:	b2a4      	uxth	r4, r4
    237a:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    237c:	685a      	ldr	r2, [r3, #4]
    237e:	f022 0210 	bic.w	r2, r2, #16
    2382:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    2384:	461a      	mov	r2, r3
    2386:	6853      	ldr	r3, [r2, #4]
    2388:	f013 0f20 	tst.w	r3, #32
    238c:	d0fb      	beq.n	2386 <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    238e:	4a1b      	ldr	r2, [pc, #108]	; (23fc <set_date_time+0x120>)
    2390:	6813      	ldr	r3, [r2, #0]
    2392:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2396:	6013      	str	r3, [r2, #0]
    2398:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    239c:	f640 023a 	movw	r2, #2106	; 0x83a
    23a0:	4293      	cmp	r3, r2
    23a2:	d90c      	bls.n	23be <set_date_time+0xe2>
    23a4:	4616      	mov	r6, r2
    23a6:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    23aa:	4610      	mov	r0, r2
    23ac:	f7ff fee2 	bl	2174 <leap_year>
    23b0:	4607      	mov	r7, r0
    23b2:	2400      	movs	r4, #0
    23b4:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    23b8:	f8df 9044 	ldr.w	r9, [pc, #68]	; 2400 <set_date_time+0x124>
    23bc:	e00e      	b.n	23dc <set_date_time+0x100>
	leap=leap_year(dt->year);
    23be:	8906      	ldrh	r6, [r0, #8]
    23c0:	4630      	mov	r0, r6
    23c2:	f7ff fed7 	bl	2174 <leap_year>
    23c6:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    23c8:	f240 73b2 	movw	r3, #1970	; 0x7b2
    23cc:	429e      	cmp	r6, r3
    23ce:	d8f0      	bhi.n	23b2 <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    23d0:	2400      	movs	r4, #0
    23d2:	e793      	b.n	22fc <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    23d4:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    23d6:	3501      	adds	r5, #1
    23d8:	42b5      	cmp	r5, r6
    23da:	d28f      	bcs.n	22fc <set_date_time+0x20>
		if (leap_year(i)){
    23dc:	4628      	mov	r0, r5
    23de:	f7ff fec9 	bl	2174 <leap_year>
    23e2:	2800      	cmp	r0, #0
    23e4:	d0f6      	beq.n	23d4 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    23e6:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    23ea:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    23ee:	e7f2      	b.n	23d6 <set_date_time+0xfa>
    23f0:	00015180 	.word	0x00015180
    23f4:	40021000 	.word	0x40021000
    23f8:	40002800 	.word	0x40002800
    23fc:	40007000 	.word	0x40007000
    2400:	01e13380 	.word	0x01e13380

00002404 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    2404:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    2406:	4b35      	ldr	r3, [pc, #212]	; (24dc <rtc_init+0xd8>)
    2408:	685a      	ldr	r2, [r3, #4]
    240a:	f64a 2355 	movw	r3, #43605	; 0xaa55
    240e:	429a      	cmp	r2, r3
    2410:	d05c      	beq.n	24cc <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2412:	4b33      	ldr	r3, [pc, #204]	; (24e0 <rtc_init+0xdc>)
    2414:	69da      	ldr	r2, [r3, #28]
    2416:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    241a:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    241c:	4c31      	ldr	r4, [pc, #196]	; (24e4 <rtc_init+0xe0>)
    241e:	6822      	ldr	r2, [r4, #0]
    2420:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2424:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    2426:	6a1a      	ldr	r2, [r3, #32]
    2428:	f042 0201 	orr.w	r2, r2, #1
    242c:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    242e:	461a      	mov	r2, r3
    2430:	6a13      	ldr	r3, [r2, #32]
    2432:	f013 0f02 	tst.w	r3, #2
    2436:	d0fb      	beq.n	2430 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2438:	4a29      	ldr	r2, [pc, #164]	; (24e0 <rtc_init+0xdc>)
    243a:	6a13      	ldr	r3, [r2, #32]
    243c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2440:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    2442:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2446:	6853      	ldr	r3, [r2, #4]
    2448:	f013 0f08 	tst.w	r3, #8
    244c:	d0fb      	beq.n	2446 <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    244e:	4a26      	ldr	r2, [pc, #152]	; (24e8 <rtc_init+0xe4>)
    2450:	6853      	ldr	r3, [r2, #4]
    2452:	f013 0f20 	tst.w	r3, #32
    2456:	d0fb      	beq.n	2450 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2458:	4a23      	ldr	r2, [pc, #140]	; (24e8 <rtc_init+0xe4>)
    245a:	6853      	ldr	r3, [r2, #4]
    245c:	f043 0310 	orr.w	r3, r3, #16
    2460:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    2462:	6853      	ldr	r3, [r2, #4]
    2464:	f013 0f20 	tst.w	r3, #32
    2468:	d0fb      	beq.n	2462 <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    246a:	4a1f      	ldr	r2, [pc, #124]	; (24e8 <rtc_init+0xe4>)
    246c:	6813      	ldr	r3, [r2, #0]
    246e:	4319      	orrs	r1, r3
    2470:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    2472:	6853      	ldr	r3, [r2, #4]
    2474:	f013 0f20 	tst.w	r3, #32
    2478:	d0fb      	beq.n	2472 <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    247a:	03c2      	lsls	r2, r0, #15
    247c:	481b      	ldr	r0, [pc, #108]	; (24ec <rtc_init+0xe8>)
    247e:	fba0 3202 	umull	r3, r2, r0, r2
    2482:	0992      	lsrs	r2, r2, #6
    2484:	3a01      	subs	r2, #1
    2486:	b291      	uxth	r1, r2
    2488:	4b17      	ldr	r3, [pc, #92]	; (24e8 <rtc_init+0xe4>)
    248a:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    248c:	4619      	mov	r1, r3
    248e:	684b      	ldr	r3, [r1, #4]
    2490:	f013 0f20 	tst.w	r3, #32
    2494:	d0fb      	beq.n	248e <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    2496:	f3c2 4203 	ubfx	r2, r2, #16, #4
    249a:	4b13      	ldr	r3, [pc, #76]	; (24e8 <rtc_init+0xe4>)
    249c:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    249e:	461a      	mov	r2, r3
    24a0:	6853      	ldr	r3, [r2, #4]
    24a2:	f013 0f20 	tst.w	r3, #32
    24a6:	d0fb      	beq.n	24a0 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    24a8:	f64a 2255 	movw	r2, #43605	; 0xaa55
    24ac:	4b0b      	ldr	r3, [pc, #44]	; (24dc <rtc_init+0xd8>)
    24ae:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    24b0:	4a0d      	ldr	r2, [pc, #52]	; (24e8 <rtc_init+0xe4>)
    24b2:	6853      	ldr	r3, [r2, #4]
    24b4:	f023 0310 	bic.w	r3, r3, #16
    24b8:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    24ba:	6853      	ldr	r3, [r2, #4]
    24bc:	f013 0f20 	tst.w	r3, #32
    24c0:	d0fb      	beq.n	24ba <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    24c2:	4a08      	ldr	r2, [pc, #32]	; (24e4 <rtc_init+0xe0>)
    24c4:	6813      	ldr	r3, [r2, #0]
    24c6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    24ca:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    24cc:	210f      	movs	r1, #15
    24ce:	2003      	movs	r0, #3
    24d0:	f7ff fe38 	bl	2144 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    24d4:	2003      	movs	r0, #3
    24d6:	f7ff fdd5 	bl	2084 <enable_interrupt>
    24da:	bd10      	pop	{r4, pc}
    24dc:	40006c00 	.word	0x40006c00
    24e0:	40021000 	.word	0x40021000
    24e4:	40007000 	.word	0x40007000
    24e8:	40002800 	.word	0x40002800
    24ec:	10624dd3 	.word	0x10624dd3

000024f0 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    24f0:	4b06      	ldr	r3, [pc, #24]	; (250c <reset_backup_domain+0x1c>)
    24f2:	69da      	ldr	r2, [r3, #28]
    24f4:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    24f8:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    24fa:	6a1a      	ldr	r2, [r3, #32]
    24fc:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    2500:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    2502:	6a1a      	ldr	r2, [r3, #32]
    2504:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    2508:	621a      	str	r2, [r3, #32]
    250a:	4770      	bx	lr
    250c:	40021000 	.word	0x40021000

00002510 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2510:	4a27      	ldr	r2, [pc, #156]	; (25b0 <rtc_clock_trim+0xa0>)
    2512:	69d3      	ldr	r3, [r2, #28]
    2514:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2518:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    251a:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    251e:	6853      	ldr	r3, [r2, #4]
    2520:	f013 0f08 	tst.w	r3, #8
    2524:	d0fb      	beq.n	251e <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2526:	4a23      	ldr	r2, [pc, #140]	; (25b4 <rtc_clock_trim+0xa4>)
    2528:	6813      	ldr	r3, [r2, #0]
    252a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    252e:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2530:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    2534:	6853      	ldr	r3, [r2, #4]
    2536:	f043 0310 	orr.w	r3, r3, #16
    253a:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    253c:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    2540:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    2542:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2546:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2548:	b9b8      	cbnz	r0, 257a <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    254a:	2200      	movs	r2, #0
    254c:	4b1a      	ldr	r3, [pc, #104]	; (25b8 <rtc_clock_trim+0xa8>)
    254e:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    2550:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    2554:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2558:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    255a:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    255c:	4a17      	ldr	r2, [pc, #92]	; (25bc <rtc_clock_trim+0xac>)
    255e:	6853      	ldr	r3, [r2, #4]
    2560:	f023 0310 	bic.w	r3, r3, #16
    2564:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    2566:	6853      	ldr	r3, [r2, #4]
    2568:	f013 0f20 	tst.w	r3, #32
    256c:	d0fb      	beq.n	2566 <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    256e:	4a11      	ldr	r2, [pc, #68]	; (25b4 <rtc_clock_trim+0xa4>)
    2570:	6813      	ldr	r3, [r2, #0]
    2572:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2576:	6013      	str	r3, [r2, #0]
    2578:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    257a:	2800      	cmp	r0, #0
    257c:	dd06      	ble.n	258c <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    257e:	4b0e      	ldr	r3, [pc, #56]	; (25b8 <rtc_clock_trim+0xa8>)
    2580:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    2582:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    2586:	4310      	orrs	r0, r2
    2588:	62d8      	str	r0, [r3, #44]	; 0x2c
    258a:	e7e7      	b.n	255c <rtc_clock_trim+0x4c>
		trim=-trim;
    258c:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    258e:	2100      	movs	r1, #0
    2590:	4b09      	ldr	r3, [pc, #36]	; (25b8 <rtc_clock_trim+0xa8>)
    2592:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    2594:	f64f 73ff 	movw	r3, #65535	; 0xffff
    2598:	287f      	cmp	r0, #127	; 0x7f
    259a:	bfd4      	ite	le
    259c:	1a18      	suble	r0, r3, r0
    259e:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    25a2:	f3c0 000e 	ubfx	r0, r0, #0, #15
    25a6:	4a05      	ldr	r2, [pc, #20]	; (25bc <rtc_clock_trim+0xac>)
    25a8:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    25aa:	6091      	str	r1, [r2, #8]
    25ac:	e7d6      	b.n	255c <rtc_clock_trim+0x4c>
    25ae:	bf00      	nop
    25b0:	40021000 	.word	0x40021000
    25b4:	40007000 	.word	0x40007000
    25b8:	40006c00 	.word	0x40006c00
    25bc:	40002800 	.word	0x40002800

000025c0 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    25c0:	4770      	bx	lr

000025c2 <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    25c2:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    25c6:	4607      	mov	r7, r0
    25c8:	4688      	mov	r8, r1
    25ca:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    25cc:	2400      	movs	r4, #0
	i=0;
    25ce:	4626      	mov	r6, r4
	while (digit(date[i])){
    25d0:	e008      	b.n	25e4 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    25d2:	3601      	adds	r6, #1
    25d4:	3501      	adds	r5, #1
    25d6:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25da:	f899 3000 	ldrb.w	r3, [r9]
    25de:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    25e2:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    25e4:	46a9      	mov	r9, r5
    25e6:	7828      	ldrb	r0, [r5, #0]
    25e8:	f7fe fe9d 	bl	1326 <digit>
    25ec:	4682      	mov	sl, r0
    25ee:	2800      	cmp	r0, #0
    25f0:	d1ef      	bne.n	25d2 <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    25f2:	2e03      	cmp	r6, #3
    25f4:	dd02      	ble.n	25fc <str_to_date+0x3a>
    25f6:	782b      	ldrb	r3, [r5, #0]
    25f8:	2b2f      	cmp	r3, #47	; 0x2f
    25fa:	d002      	beq.n	2602 <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    25fc:	4650      	mov	r0, sl
    25fe:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    2602:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    2606:	3601      	adds	r6, #1
    2608:	19bd      	adds	r5, r7, r6
	n=0;
    260a:	4604      	mov	r4, r0
	while (digit(date[i])){
    260c:	e008      	b.n	2620 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    260e:	3601      	adds	r6, #1
    2610:	3501      	adds	r5, #1
    2612:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2616:	f899 3000 	ldrb.w	r3, [r9]
    261a:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    261e:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2620:	46a9      	mov	r9, r5
    2622:	7828      	ldrb	r0, [r5, #0]
    2624:	f7fe fe7f 	bl	1326 <digit>
    2628:	4682      	mov	sl, r0
    262a:	2800      	cmp	r0, #0
    262c:	d1ef      	bne.n	260e <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    262e:	2e06      	cmp	r6, #6
    2630:	dde4      	ble.n	25fc <str_to_date+0x3a>
    2632:	782b      	ldrb	r3, [r5, #0]
    2634:	2b2f      	cmp	r3, #47	; 0x2f
    2636:	d1e1      	bne.n	25fc <str_to_date+0x3a>
	dt->month=n;
    2638:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    263c:	f364 1389 	bfi	r3, r4, #6, #4
    2640:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2644:	1c74      	adds	r4, r6, #1
    2646:	443e      	add	r6, r7
	while (digit(date[i])){
    2648:	e008      	b.n	265c <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    264a:	3401      	adds	r4, #1
    264c:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2650:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2654:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2658:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    265c:	7870      	ldrb	r0, [r6, #1]
    265e:	f7fe fe62 	bl	1326 <digit>
    2662:	2800      	cmp	r0, #0
    2664:	d1f1      	bne.n	264a <str_to_date+0x88>
	if (i<10) return 0;
    2666:	2c09      	cmp	r4, #9
    2668:	dd08      	ble.n	267c <str_to_date+0xba>
	dt->day=n;
    266a:	f898 3002 	ldrb.w	r3, [r8, #2]
    266e:	f36a 0345 	bfi	r3, sl, #1, #5
    2672:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    2676:	f04f 0a01 	mov.w	sl, #1
    267a:	e7bf      	b.n	25fc <str_to_date+0x3a>
	if (i<10) return 0;
    267c:	4682      	mov	sl, r0
    267e:	e7bd      	b.n	25fc <str_to_date+0x3a>

00002680 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    2680:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2684:	4607      	mov	r7, r0
    2686:	4688      	mov	r8, r1
    2688:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    268a:	2400      	movs	r4, #0
	i=0;
    268c:	4626      	mov	r6, r4
	while (digit(time[i])){
    268e:	e00a      	b.n	26a6 <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    2690:	3601      	adds	r6, #1
    2692:	3501      	adds	r5, #1
    2694:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2698:	0064      	lsls	r4, r4, #1
    269a:	3c30      	subs	r4, #48	; 0x30
    269c:	f899 3000 	ldrb.w	r3, [r9]
    26a0:	441c      	add	r4, r3
    26a2:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    26a6:	46a9      	mov	r9, r5
    26a8:	7828      	ldrb	r0, [r5, #0]
    26aa:	f7fe fe3c 	bl	1326 <digit>
    26ae:	4603      	mov	r3, r0
    26b0:	2800      	cmp	r0, #0
    26b2:	d1ed      	bne.n	2690 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    26b4:	2c17      	cmp	r4, #23
    26b6:	d802      	bhi.n	26be <str_to_time+0x3e>
    26b8:	782a      	ldrb	r2, [r5, #0]
    26ba:	2a3a      	cmp	r2, #58	; 0x3a
    26bc:	d002      	beq.n	26c4 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    26be:	4618      	mov	r0, r3
    26c0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    26c4:	f8d8 3000 	ldr.w	r3, [r8]
    26c8:	f364 3310 	bfi	r3, r4, #12, #5
    26cc:	f8c8 3000 	str.w	r3, [r8]
	i++;
    26d0:	3601      	adds	r6, #1
    26d2:	19bd      	adds	r5, r7, r6
	n=0;
    26d4:	2400      	movs	r4, #0
	while (digit(time[i])){
    26d6:	e00a      	b.n	26ee <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    26d8:	3601      	adds	r6, #1
    26da:	3501      	adds	r5, #1
    26dc:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26e0:	0064      	lsls	r4, r4, #1
    26e2:	3c30      	subs	r4, #48	; 0x30
    26e4:	f899 3000 	ldrb.w	r3, [r9]
    26e8:	441c      	add	r4, r3
    26ea:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    26ee:	46a9      	mov	r9, r5
    26f0:	7828      	ldrb	r0, [r5, #0]
    26f2:	f7fe fe18 	bl	1326 <digit>
    26f6:	4603      	mov	r3, r0
    26f8:	2800      	cmp	r0, #0
    26fa:	d1ed      	bne.n	26d8 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    26fc:	2c3b      	cmp	r4, #59	; 0x3b
    26fe:	d8de      	bhi.n	26be <str_to_time+0x3e>
    2700:	782a      	ldrb	r2, [r5, #0]
    2702:	2a3a      	cmp	r2, #58	; 0x3a
    2704:	d1db      	bne.n	26be <str_to_time+0x3e>
	dt->minute=n;
    2706:	f8b8 3000 	ldrh.w	r3, [r8]
    270a:	f364 138b 	bfi	r3, r4, #6, #6
    270e:	f8a8 3000 	strh.w	r3, [r8]
    2712:	443e      	add	r6, r7
	n=0;
    2714:	2400      	movs	r4, #0
	while (digit(time[i])){
    2716:	e008      	b.n	272a <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2718:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    271c:	0064      	lsls	r4, r4, #1
    271e:	3c30      	subs	r4, #48	; 0x30
    2720:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2724:	441c      	add	r4, r3
    2726:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    272a:	7870      	ldrb	r0, [r6, #1]
    272c:	f7fe fdfb 	bl	1326 <digit>
    2730:	4603      	mov	r3, r0
    2732:	2800      	cmp	r0, #0
    2734:	d1f0      	bne.n	2718 <str_to_time+0x98>
	if (n>59) return 0;
    2736:	2c3b      	cmp	r4, #59	; 0x3b
    2738:	d8c1      	bhi.n	26be <str_to_time+0x3e>
	dt->second=n;
    273a:	f898 3000 	ldrb.w	r3, [r8]
    273e:	f364 0305 	bfi	r3, r4, #0, #6
    2742:	f888 3000 	strb.w	r3, [r8]
	return 1;
    2746:	2301      	movs	r3, #1
    2748:	e7b9      	b.n	26be <str_to_time+0x3e>

0000274a <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    274a:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    274c:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    274e:	4b23      	ldr	r3, [pc, #140]	; (27dc <date_str+0x92>)
    2750:	fba3 4302 	umull	r4, r3, r3, r2
    2754:	099b      	lsrs	r3, r3, #6
    2756:	f103 0430 	add.w	r4, r3, #48	; 0x30
    275a:	700c      	strb	r4, [r1, #0]
	n%=1000;
    275c:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2760:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2764:	4b1e      	ldr	r3, [pc, #120]	; (27e0 <date_str+0x96>)
    2766:	fba3 4302 	umull	r4, r3, r3, r2
    276a:	095b      	lsrs	r3, r3, #5
    276c:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2770:	704c      	strb	r4, [r1, #1]
	n%=100;
    2772:	2464      	movs	r4, #100	; 0x64
    2774:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2778:	4a1a      	ldr	r2, [pc, #104]	; (27e4 <date_str+0x9a>)
    277a:	fba2 5403 	umull	r5, r4, r2, r3
    277e:	08e4      	lsrs	r4, r4, #3
    2780:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2784:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    2786:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    278a:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    278e:	3330      	adds	r3, #48	; 0x30
    2790:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    2792:	262f      	movs	r6, #47	; 0x2f
    2794:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    2796:	8843      	ldrh	r3, [r0, #2]
    2798:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    279c:	fba2 5403 	umull	r5, r4, r2, r3
    27a0:	08e4      	lsrs	r4, r4, #3
    27a2:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27a6:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    27a8:	00a5      	lsls	r5, r4, #2
    27aa:	442c      	add	r4, r5
    27ac:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27b0:	3330      	adds	r3, #48	; 0x30
    27b2:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    27b4:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    27b6:	7880      	ldrb	r0, [r0, #2]
    27b8:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    27bc:	fba2 3200 	umull	r3, r2, r2, r0
    27c0:	08d3      	lsrs	r3, r2, #3
    27c2:	f103 0230 	add.w	r2, r3, #48	; 0x30
    27c6:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    27c8:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    27cc:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    27d0:	3330      	adds	r3, #48	; 0x30
    27d2:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    27d4:	2300      	movs	r3, #0
    27d6:	728b      	strb	r3, [r1, #10]

}
    27d8:	bc70      	pop	{r4, r5, r6}
    27da:	4770      	bx	lr
    27dc:	10624dd3 	.word	0x10624dd3
    27e0:	51eb851f 	.word	0x51eb851f
    27e4:	cccccccd 	.word	0xcccccccd

000027e8 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    27e8:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    27ea:	6802      	ldr	r2, [r0, #0]
    27ec:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    27f0:	4b18      	ldr	r3, [pc, #96]	; (2854 <time_str+0x6c>)
    27f2:	fba3 5402 	umull	r5, r4, r3, r2
    27f6:	08e4      	lsrs	r4, r4, #3
    27f8:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27fc:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    27fe:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2802:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2806:	3230      	adds	r2, #48	; 0x30
    2808:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    280a:	253a      	movs	r5, #58	; 0x3a
    280c:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    280e:	8802      	ldrh	r2, [r0, #0]
    2810:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2814:	fba3 6402 	umull	r6, r4, r3, r2
    2818:	08e4      	lsrs	r4, r4, #3
    281a:	f104 0630 	add.w	r6, r4, #48	; 0x30
    281e:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    2820:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2824:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2828:	3230      	adds	r2, #48	; 0x30
    282a:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    282c:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    282e:	7802      	ldrb	r2, [r0, #0]
    2830:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    2834:	fba3 0302 	umull	r0, r3, r3, r2
    2838:	08db      	lsrs	r3, r3, #3
    283a:	f103 0030 	add.w	r0, r3, #48	; 0x30
    283e:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2840:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2844:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2848:	3330      	adds	r3, #48	; 0x30
    284a:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    284c:	2300      	movs	r3, #0
    284e:	720b      	strb	r3, [r1, #8]
}
    2850:	bc70      	pop	{r4, r5, r6}
    2852:	4770      	bx	lr
    2854:	cccccccd 	.word	0xcccccccd

00002858 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2858:	b500      	push	{lr}
    285a:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    285c:	a801      	add	r0, sp, #4
    285e:	f7ff fcbb 	bl	21d8 <get_date_time>
	t.fields.second=dt.second/2;
    2862:	f89d 3004 	ldrb.w	r3, [sp, #4]
    2866:	f3c3 0344 	ubfx	r3, r3, #1, #5
    286a:	2000      	movs	r0, #0
    286c:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2870:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2874:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2878:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    287c:	9b01      	ldr	r3, [sp, #4]
    287e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2882:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    2886:	f89d 3006 	ldrb.w	r3, [sp, #6]
    288a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    288e:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    2892:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    2896:	f3c3 1383 	ubfx	r3, r3, #6, #4
    289a:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    289e:	f89d 300c 	ldrb.w	r3, [sp, #12]
    28a2:	3344      	adds	r3, #68	; 0x44
    28a4:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    28a8:	b005      	add	sp, #20
    28aa:	f85d fb04 	ldr.w	pc, [sp], #4

000028ae <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    28ae:	4b07      	ldr	r3, [pc, #28]	; (28cc <RTC_handler+0x1e>)
    28b0:	685b      	ldr	r3, [r3, #4]
    28b2:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    28b6:	bf1c      	itt	ne
    28b8:	4b04      	ldrne	r3, [pc, #16]	; (28cc <RTC_handler+0x1e>)
    28ba:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    28bc:	4b03      	ldr	r3, [pc, #12]	; (28cc <RTC_handler+0x1e>)
    28be:	685b      	ldr	r3, [r3, #4]
    28c0:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    28c4:	bf1c      	itt	ne
    28c6:	4b01      	ldrne	r3, [pc, #4]	; (28cc <RTC_handler+0x1e>)
    28c8:	685b      	ldrne	r3, [r3, #4]
    28ca:	4770      	bx	lr
    28cc:	40002800 	.word	0x40002800

000028d0 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    28d0:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    28d2:	4b12      	ldr	r3, [pc, #72]	; (291c <sound_init+0x4c>)
    28d4:	685a      	ldr	r2, [r3, #4]
    28d6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    28da:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    28dc:	685a      	ldr	r2, [r3, #4]
    28de:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    28e2:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    28e4:	220a      	movs	r2, #10
    28e6:	4611      	mov	r1, r2
    28e8:	480d      	ldr	r0, [pc, #52]	; (2920 <sound_init+0x50>)
    28ea:	f7fe fe47 	bl	157c <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    28ee:	4a0d      	ldr	r2, [pc, #52]	; (2924 <sound_init+0x54>)
    28f0:	69d3      	ldr	r3, [r2, #28]
    28f2:	f043 0301 	orr.w	r3, r3, #1
    28f6:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    28f8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    28fc:	2278      	movs	r2, #120	; 0x78
    28fe:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    2900:	f44f 7280 	mov.w	r2, #256	; 0x100
    2904:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    2906:	2209      	movs	r2, #9
    2908:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    290a:	2100      	movs	r1, #0
    290c:	201c      	movs	r0, #28
    290e:	f7ff fc19 	bl	2144 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    2912:	201c      	movs	r0, #28
    2914:	f7ff fbb6 	bl	2084 <enable_interrupt>
    2918:	bd08      	pop	{r3, pc}
    291a:	bf00      	nop
    291c:	40010000 	.word	0x40010000
    2920:	40010c00 	.word	0x40010c00
    2924:	40021000 	.word	0x40021000

00002928 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2928:	4b07      	ldr	r3, [pc, #28]	; (2948 <tone+0x20>)
    292a:	fbb3 f0f0 	udiv	r0, r3, r0
    292e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2932:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    2934:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2936:	0852      	lsrs	r2, r2, #1
    2938:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    293a:	681a      	ldr	r2, [r3, #0]
    293c:	f042 0201 	orr.w	r2, r2, #1
    2940:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2942:	4b02      	ldr	r3, [pc, #8]	; (294c <tone+0x24>)
    2944:	8019      	strh	r1, [r3, #0]
    2946:	4770      	bx	lr
    2948:	006d3d32 	.word	0x006d3d32
    294c:	20004e98 	.word	0x20004e98

00002950 <beep>:
}

void beep(uint16_t duration){
    2950:	b508      	push	{r3, lr}
    tone(1000,duration);
    2952:	4601      	mov	r1, r0
    2954:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2958:	f7ff ffe6 	bl	2928 <tone>
    295c:	bd08      	pop	{r3, pc}

0000295e <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    295e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2962:	681a      	ldr	r2, [r3, #0]
    2964:	f022 0201 	bic.w	r2, r2, #1
    2968:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    296a:	68da      	ldr	r2, [r3, #12]
    296c:	f022 0201 	bic.w	r2, r2, #1
    2970:	60da      	str	r2, [r3, #12]
    2972:	4770      	bx	lr

00002974 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    2974:	b510      	push	{r4, lr}
    2976:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    2978:	b289      	uxth	r1, r1
    297a:	4b06      	ldr	r3, [pc, #24]	; (2994 <key_tone+0x20>)
    297c:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    2980:	f7ff ffd2 	bl	2928 <tone>
    if (wait_end) while (sound_timer);
    2984:	b124      	cbz	r4, 2990 <key_tone+0x1c>
    2986:	4a04      	ldr	r2, [pc, #16]	; (2998 <key_tone+0x24>)
    2988:	8813      	ldrh	r3, [r2, #0]
    298a:	b29b      	uxth	r3, r3
    298c:	2b00      	cmp	r3, #0
    298e:	d1fb      	bne.n	2988 <key_tone+0x14>
    2990:	bd10      	pop	{r4, pc}
    2992:	bf00      	nop
    2994:	00003d08 	.word	0x00003d08
    2998:	20004e98 	.word	0x20004e98

0000299c <noise>:
}

// produit un bruit 
void noise(int length){
    299c:	b510      	push	{r4, lr}
    299e:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    29a0:	4b07      	ldr	r3, [pc, #28]	; (29c0 <noise+0x24>)
    29a2:	6818      	ldr	r0, [r3, #0]
    29a4:	f7fd fd10 	bl	3c8 <srand>
    tone(6000,length);
    29a8:	b2a1      	uxth	r1, r4
    29aa:	f241 7070 	movw	r0, #6000	; 0x1770
    29ae:	f7ff ffbb 	bl	2928 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    29b2:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29b6:	68d3      	ldr	r3, [r2, #12]
    29b8:	f043 0301 	orr.w	r3, r3, #1
    29bc:	60d3      	str	r3, [r2, #12]
    29be:	bd10      	pop	{r4, pc}
    29c0:	20004e94 	.word	0x20004e94

000029c4 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    29c4:	4668      	mov	r0, sp
    29c6:	f020 0107 	bic.w	r1, r0, #7
    29ca:	468d      	mov	sp, r1
    29cc:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    29ce:	f7fd fd01 	bl	3d4 <rand>
    29d2:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    29d6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29da:	6a13      	ldr	r3, [r2, #32]
    29dc:	bf14      	ite	ne
    29de:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    29e2:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    29e6:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    29e8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29ec:	6913      	ldr	r3, [r2, #16]
    29ee:	f023 0301 	bic.w	r3, r3, #1
    29f2:	6113      	str	r3, [r2, #16]
}
    29f4:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    29f8:	4685      	mov	sp, r0
    29fa:	4770      	bx	lr

000029fc <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    29fc:	6803      	ldr	r3, [r0, #0]
    29fe:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2a02:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2a04:	6803      	ldr	r3, [r0, #0]
    2a06:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2a0a:	6001      	str	r1, [r0, #0]
    2a0c:	4770      	bx	lr

00002a0e <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2a0e:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2a10:	4a2f      	ldr	r2, [pc, #188]	; (2ad0 <spi_config_port+0xc2>)
    2a12:	6993      	ldr	r3, [r2, #24]
    2a14:	f043 0301 	orr.w	r3, r3, #1
    2a18:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2a1a:	4b2e      	ldr	r3, [pc, #184]	; (2ad4 <spi_config_port+0xc6>)
    2a1c:	4298      	cmp	r0, r3
    2a1e:	d01a      	beq.n	2a56 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2a20:	4a2b      	ldr	r2, [pc, #172]	; (2ad0 <spi_config_port+0xc2>)
    2a22:	6993      	ldr	r3, [r2, #24]
    2a24:	f043 0308 	orr.w	r3, r3, #8
    2a28:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2a2a:	4c2b      	ldr	r4, [pc, #172]	; (2ad8 <spi_config_port+0xca>)
    2a2c:	2203      	movs	r2, #3
    2a2e:	2102      	movs	r1, #2
    2a30:	4620      	mov	r0, r4
    2a32:	f7fe fda3 	bl	157c <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2a36:	220b      	movs	r2, #11
    2a38:	210d      	movs	r1, #13
    2a3a:	4620      	mov	r0, r4
    2a3c:	f7fe fd9e 	bl	157c <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2a40:	2204      	movs	r2, #4
    2a42:	210e      	movs	r1, #14
    2a44:	4620      	mov	r0, r4
    2a46:	f7fe fd99 	bl	157c <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2a4a:	220b      	movs	r2, #11
    2a4c:	210f      	movs	r1, #15
    2a4e:	4620      	mov	r0, r4
    2a50:	f7fe fd94 	bl	157c <config_pin>
    2a54:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    2a56:	b9c9      	cbnz	r1, 2a8c <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2a58:	6993      	ldr	r3, [r2, #24]
    2a5a:	f043 0304 	orr.w	r3, r3, #4
    2a5e:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2a60:	4c1e      	ldr	r4, [pc, #120]	; (2adc <spi_config_port+0xce>)
    2a62:	2203      	movs	r2, #3
    2a64:	2104      	movs	r1, #4
    2a66:	4620      	mov	r0, r4
    2a68:	f7fe fd88 	bl	157c <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2a6c:	220b      	movs	r2, #11
    2a6e:	2105      	movs	r1, #5
    2a70:	4620      	mov	r0, r4
    2a72:	f7fe fd83 	bl	157c <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2a76:	2204      	movs	r2, #4
    2a78:	2106      	movs	r1, #6
    2a7a:	4620      	mov	r0, r4
    2a7c:	f7fe fd7e 	bl	157c <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2a80:	220b      	movs	r2, #11
    2a82:	2107      	movs	r1, #7
    2a84:	4620      	mov	r0, r4
    2a86:	f7fe fd79 	bl	157c <config_pin>
    2a8a:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2a8c:	4a10      	ldr	r2, [pc, #64]	; (2ad0 <spi_config_port+0xc2>)
    2a8e:	6993      	ldr	r3, [r2, #24]
    2a90:	f043 030d 	orr.w	r3, r3, #13
    2a94:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2a96:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    2a9a:	6853      	ldr	r3, [r2, #4]
    2a9c:	f043 0301 	orr.w	r3, r3, #1
    2aa0:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2aa2:	2203      	movs	r2, #3
    2aa4:	210f      	movs	r1, #15
    2aa6:	480d      	ldr	r0, [pc, #52]	; (2adc <spi_config_port+0xce>)
    2aa8:	f7fe fd68 	bl	157c <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2aac:	4c0a      	ldr	r4, [pc, #40]	; (2ad8 <spi_config_port+0xca>)
    2aae:	220b      	movs	r2, #11
    2ab0:	2103      	movs	r1, #3
    2ab2:	4620      	mov	r0, r4
    2ab4:	f7fe fd62 	bl	157c <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2ab8:	2204      	movs	r2, #4
    2aba:	4611      	mov	r1, r2
    2abc:	4620      	mov	r0, r4
    2abe:	f7fe fd5d 	bl	157c <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2ac2:	220b      	movs	r2, #11
    2ac4:	2105      	movs	r1, #5
    2ac6:	4620      	mov	r0, r4
    2ac8:	f7fe fd58 	bl	157c <config_pin>
    2acc:	bd10      	pop	{r4, pc}
    2ace:	bf00      	nop
    2ad0:	40021000 	.word	0x40021000
    2ad4:	40013000 	.word	0x40013000
    2ad8:	40010c00 	.word	0x40010c00
    2adc:	40010800 	.word	0x40010800

00002ae0 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2ae0:	b570      	push	{r4, r5, r6, lr}
    2ae2:	4604      	mov	r4, r0
    2ae4:	460d      	mov	r5, r1
    2ae6:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2ae8:	4619      	mov	r1, r3
    2aea:	f7ff ff90 	bl	2a0e <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2aee:	4b0c      	ldr	r3, [pc, #48]	; (2b20 <spi_init+0x40>)
    2af0:	429c      	cmp	r4, r3
    2af2:	d00e      	beq.n	2b12 <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2af4:	4a0b      	ldr	r2, [pc, #44]	; (2b24 <spi_init+0x44>)
    2af6:	69d3      	ldr	r3, [r2, #28]
    2af8:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2afc:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    2afe:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2b00:	4629      	mov	r1, r5
    2b02:	4620      	mov	r0, r4
    2b04:	f7ff ff7a 	bl	29fc <spi_baudrate>
	_spi_enable(channel);
    2b08:	6823      	ldr	r3, [r4, #0]
    2b0a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2b0e:	6023      	str	r3, [r4, #0]
    2b10:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2b12:	4a04      	ldr	r2, [pc, #16]	; (2b24 <spi_init+0x44>)
    2b14:	6993      	ldr	r3, [r2, #24]
    2b16:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2b1a:	6193      	str	r3, [r2, #24]
    2b1c:	e7ef      	b.n	2afe <spi_init+0x1e>
    2b1e:	bf00      	nop
    2b20:	40013000 	.word	0x40013000
    2b24:	40021000 	.word	0x40021000

00002b28 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2b28:	6883      	ldr	r3, [r0, #8]
    2b2a:	f013 0f02 	tst.w	r3, #2
    2b2e:	d0fb      	beq.n	2b28 <spi_send>
	channel->DR=b;
    2b30:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b32:	6883      	ldr	r3, [r0, #8]
    2b34:	f013 0f01 	tst.w	r3, #1
    2b38:	d0fb      	beq.n	2b32 <spi_send+0xa>
	return (uint8_t)channel->DR;
    2b3a:	68c0      	ldr	r0, [r0, #12]
}
    2b3c:	b2c0      	uxtb	r0, r0
    2b3e:	4770      	bx	lr

00002b40 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2b40:	6883      	ldr	r3, [r0, #8]
    2b42:	f013 0f02 	tst.w	r3, #2
    2b46:	d0fb      	beq.n	2b40 <spi_receive>
	channel->DR=255;
    2b48:	23ff      	movs	r3, #255	; 0xff
    2b4a:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b4c:	6883      	ldr	r3, [r0, #8]
    2b4e:	f013 0f01 	tst.w	r3, #1
    2b52:	d0fb      	beq.n	2b4c <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2b54:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2b56:	b2c0      	uxtb	r0, r0
    2b58:	4770      	bx	lr

00002b5a <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2b5a:	b14a      	cbz	r2, 2b70 <spi_send_block+0x16>
    2b5c:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2b5e:	f811 3b01 	ldrb.w	r3, [r1], #1
    2b62:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2b64:	6883      	ldr	r3, [r0, #8]
    2b66:	f013 0f02 	tst.w	r3, #2
    2b6a:	d0fb      	beq.n	2b64 <spi_send_block+0xa>
	while (count){
    2b6c:	428a      	cmp	r2, r1
    2b6e:	d1f6      	bne.n	2b5e <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2b70:	6883      	ldr	r3, [r0, #8]
    2b72:	f013 0f80 	tst.w	r3, #128	; 0x80
    2b76:	d1fb      	bne.n	2b70 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2b78:	68c3      	ldr	r3, [r0, #12]
    2b7a:	4770      	bx	lr

00002b7c <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2b7c:	b16a      	cbz	r2, 2b9a <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2b7e:	b410      	push	{r4}
    2b80:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2b82:	2400      	movs	r4, #0
    2b84:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2b86:	6883      	ldr	r3, [r0, #8]
    2b88:	f013 0f01 	tst.w	r3, #1
    2b8c:	d0fb      	beq.n	2b86 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2b8e:	68c3      	ldr	r3, [r0, #12]
    2b90:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2b94:	428a      	cmp	r2, r1
    2b96:	d1f5      	bne.n	2b84 <spi_receive_block+0x8>
		count--;
	}
}
    2b98:	bc10      	pop	{r4}
    2b9a:	4770      	bx	lr

00002b9c <reset_mcu>:
	_reset_mcu();
    2b9c:	4a01      	ldr	r2, [pc, #4]	; (2ba4 <reset_mcu+0x8>)
    2b9e:	4b02      	ldr	r3, [pc, #8]	; (2ba8 <reset_mcu+0xc>)
    2ba0:	601a      	str	r2, [r3, #0]
    2ba2:	bf00      	nop
    2ba4:	05fa0004 	.word	0x05fa0004
    2ba8:	e000ed0c 	.word	0xe000ed0c

00002bac <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2bac:	b508      	push	{r3, lr}
    2bae:	460c      	mov	r4, r1
	print(msg);
    2bb0:	f000 f964 	bl	2e7c <print>
	print("\nat address ");
    2bb4:	4813      	ldr	r0, [pc, #76]	; (2c04 <print_fault+0x58>)
    2bb6:	f000 f961 	bl	2e7c <print>
	if (adr) {
    2bba:	b9ec      	cbnz	r4, 2bf8 <print_fault+0x4c>
	put_char(CR);
    2bbc:	200d      	movs	r0, #13
    2bbe:	f000 f8bf 	bl	2d40 <put_char>
	print("\nUFSR=");
    2bc2:	4811      	ldr	r0, [pc, #68]	; (2c08 <print_fault+0x5c>)
    2bc4:	f000 f95a 	bl	2e7c <print>
	print_int(CFSR->fsr.usageFalt,16);
    2bc8:	4c10      	ldr	r4, [pc, #64]	; (2c0c <print_fault+0x60>)
    2bca:	6820      	ldr	r0, [r4, #0]
    2bcc:	2110      	movs	r1, #16
    2bce:	40c8      	lsrs	r0, r1
    2bd0:	f000 f96f 	bl	2eb2 <print_int>
	print("\nBFSR=");
    2bd4:	480e      	ldr	r0, [pc, #56]	; (2c10 <print_fault+0x64>)
    2bd6:	f000 f951 	bl	2e7c <print>
	print_int(CFSR->fsr.busFault,16);
    2bda:	6820      	ldr	r0, [r4, #0]
    2bdc:	2110      	movs	r1, #16
    2bde:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2be2:	f000 f966 	bl	2eb2 <print_int>
	print("\nMMFSR=");
    2be6:	480b      	ldr	r0, [pc, #44]	; (2c14 <print_fault+0x68>)
    2be8:	f000 f948 	bl	2e7c <print>
	print_int(CFSR->fsr.mmFault,16);
    2bec:	6820      	ldr	r0, [r4, #0]
    2bee:	2110      	movs	r1, #16
    2bf0:	b2c0      	uxtb	r0, r0
    2bf2:	f000 f95e 	bl	2eb2 <print_int>
    2bf6:	e7fe      	b.n	2bf6 <print_fault+0x4a>
		print_int(adr,16);
    2bf8:	2110      	movs	r1, #16
    2bfa:	4620      	mov	r0, r4
    2bfc:	f000 f959 	bl	2eb2 <print_int>
    2c00:	e7dc      	b.n	2bbc <print_fault+0x10>
    2c02:	bf00      	nop
    2c04:	00003ffc 	.word	0x00003ffc
    2c08:	0000400c 	.word	0x0000400c
    2c0c:	e000ed28 	.word	0xe000ed28
    2c10:	00004014 	.word	0x00004014
    2c14:	0000401c 	.word	0x0000401c

00002c18 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2c18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2c1c:	b083      	sub	sp, #12
    2c1e:	9001      	str	r0, [sp, #4]
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2c20:	18cb      	adds	r3, r1, r3
    2c22:	9300      	str	r3, [sp, #0]
    2c24:	4299      	cmp	r1, r3
    2c26:	da22      	bge.n	2c6e <draw_char+0x56>
    2c28:	460e      	mov	r6, r1
    2c2a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2c2c:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2c30:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c32:	f8df a040 	ldr.w	sl, [pc, #64]	; 2c74 <draw_char+0x5c>
		byte=*glyph++;
    2c36:	f81b 8f01 	ldrb.w	r8, [fp, #1]!
		for (x0=x;x0<(x+w);x0++){
    2c3a:	9c01      	ldr	r4, [sp, #4]
    2c3c:	42bc      	cmp	r4, r7
    2c3e:	da12      	bge.n	2c66 <draw_char+0x4e>
    2c40:	2580      	movs	r5, #128	; 0x80
			gfx_blit(x0,y0,c,BIT_SET);
    2c42:	f04f 0904 	mov.w	r9, #4
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c46:	ea18 0f05 	tst.w	r8, r5
    2c4a:	bf14      	ite	ne
    2c4c:	f89a 2001 	ldrbne.w	r2, [sl, #1]
    2c50:	f89a 2000 	ldrbeq.w	r2, [sl]
			gfx_blit(x0,y0,c,BIT_SET);
    2c54:	464b      	mov	r3, r9
    2c56:	4631      	mov	r1, r6
    2c58:	4620      	mov	r0, r4
    2c5a:	f7fe fccf 	bl	15fc <gfx_blit>
			mask>>=1;
    2c5e:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2c60:	3401      	adds	r4, #1
    2c62:	42bc      	cmp	r4, r7
    2c64:	d1ef      	bne.n	2c46 <draw_char+0x2e>
	for (y0=y;y0<(y+h);y0++){
    2c66:	3601      	adds	r6, #1
    2c68:	9b00      	ldr	r3, [sp, #0]
    2c6a:	429e      	cmp	r6, r3
    2c6c:	d1e3      	bne.n	2c36 <draw_char+0x1e>
		}
	}
}
    2c6e:	b003      	add	sp, #12
    2c70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2c74:	20000220 	.word	0x20000220

00002c78 <font_color>:
	text_colors[FG]=color&0xf;
    2c78:	f000 000f 	and.w	r0, r0, #15
    2c7c:	4b01      	ldr	r3, [pc, #4]	; (2c84 <font_color+0xc>)
    2c7e:	7058      	strb	r0, [r3, #1]
    2c80:	4770      	bx	lr
    2c82:	bf00      	nop
    2c84:	20000220 	.word	0x20000220

00002c88 <bg_color>:
	text_colors[BG]=color&0xf;
    2c88:	f000 000f 	and.w	r0, r0, #15
    2c8c:	4b01      	ldr	r3, [pc, #4]	; (2c94 <bg_color+0xc>)
    2c8e:	7018      	strb	r0, [r3, #0]
    2c90:	4770      	bx	lr
    2c92:	bf00      	nop
    2c94:	20000220 	.word	0x20000220

00002c98 <select_font>:
	font=font_id;
    2c98:	4b01      	ldr	r3, [pc, #4]	; (2ca0 <select_font+0x8>)
    2c9a:	7098      	strb	r0, [r3, #2]
    2c9c:	4770      	bx	lr
    2c9e:	bf00      	nop
    2ca0:	20000220 	.word	0x20000220

00002ca4 <get_font>:
}
    2ca4:	4b01      	ldr	r3, [pc, #4]	; (2cac <get_font+0x8>)
    2ca6:	7898      	ldrb	r0, [r3, #2]
    2ca8:	4770      	bx	lr
    2caa:	bf00      	nop
    2cac:	20000220 	.word	0x20000220

00002cb0 <new_line>:
void new_line(){
    2cb0:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2cb2:	4b21      	ldr	r3, [pc, #132]	; (2d38 <new_line+0x88>)
    2cb4:	781b      	ldrb	r3, [r3, #0]
    2cb6:	2b00      	cmp	r3, #0
    2cb8:	d138      	bne.n	2d2c <new_line+0x7c>
		xpos=0;
    2cba:	2200      	movs	r2, #0
    2cbc:	4b1e      	ldr	r3, [pc, #120]	; (2d38 <new_line+0x88>)
    2cbe:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2cc0:	f000 fbc4 	bl	344c <get_video_params>
		switch (font){
    2cc4:	4b1d      	ldr	r3, [pc, #116]	; (2d3c <new_line+0x8c>)
    2cc6:	789b      	ldrb	r3, [r3, #2]
    2cc8:	2b01      	cmp	r3, #1
    2cca:	d011      	beq.n	2cf0 <new_line+0x40>
    2ccc:	b113      	cbz	r3, 2cd4 <new_line+0x24>
    2cce:	2b02      	cmp	r3, #2
    2cd0:	d01d      	beq.n	2d0e <new_line+0x5e>
    2cd2:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2cd4:	4b18      	ldr	r3, [pc, #96]	; (2d38 <new_line+0x88>)
    2cd6:	789b      	ldrb	r3, [r3, #2]
    2cd8:	1d99      	adds	r1, r3, #6
    2cda:	89c2      	ldrh	r2, [r0, #14]
    2cdc:	3a05      	subs	r2, #5
    2cde:	4291      	cmp	r1, r2
    2ce0:	dc02      	bgt.n	2ce8 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2ce2:	4a15      	ldr	r2, [pc, #84]	; (2d38 <new_line+0x88>)
    2ce4:	7091      	strb	r1, [r2, #2]
    2ce6:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2ce8:	2006      	movs	r0, #6
    2cea:	f7fe fce7 	bl	16bc <gfx_scroll_up>
    2cee:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2cf0:	4b11      	ldr	r3, [pc, #68]	; (2d38 <new_line+0x88>)
    2cf2:	789b      	ldrb	r3, [r3, #2]
    2cf4:	f103 010a 	add.w	r1, r3, #10
    2cf8:	89c2      	ldrh	r2, [r0, #14]
    2cfa:	3a09      	subs	r2, #9
    2cfc:	4291      	cmp	r1, r2
    2cfe:	dc02      	bgt.n	2d06 <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2d00:	4a0d      	ldr	r2, [pc, #52]	; (2d38 <new_line+0x88>)
    2d02:	7091      	strb	r1, [r2, #2]
    2d04:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2d06:	200a      	movs	r0, #10
    2d08:	f7fe fcd8 	bl	16bc <gfx_scroll_up>
    2d0c:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2d0e:	4b0a      	ldr	r3, [pc, #40]	; (2d38 <new_line+0x88>)
    2d10:	789b      	ldrb	r3, [r3, #2]
    2d12:	f103 0108 	add.w	r1, r3, #8
    2d16:	89c2      	ldrh	r2, [r0, #14]
    2d18:	3a07      	subs	r2, #7
    2d1a:	4291      	cmp	r1, r2
    2d1c:	dc02      	bgt.n	2d24 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2d1e:	4a06      	ldr	r2, [pc, #24]	; (2d38 <new_line+0x88>)
    2d20:	7091      	strb	r1, [r2, #2]
    2d22:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2d24:	2008      	movs	r0, #8
    2d26:	f7fe fcc9 	bl	16bc <gfx_scroll_up>
    2d2a:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    2d2c:	210a      	movs	r1, #10
    2d2e:	2000      	movs	r0, #0
    2d30:	f000 fcfe 	bl	3730 <usart_putc>
    2d34:	bd08      	pop	{r3, pc}
    2d36:	bf00      	nop
    2d38:	200006b8 	.word	0x200006b8
    2d3c:	20000220 	.word	0x20000220

00002d40 <put_char>:

void put_char(uint8_t c){
    2d40:	b530      	push	{r4, r5, lr}
    2d42:	b083      	sub	sp, #12
	if (console==LOCAL){
    2d44:	4b2e      	ldr	r3, [pc, #184]	; (2e00 <put_char+0xc0>)
    2d46:	781b      	ldrb	r3, [r3, #0]
    2d48:	2b00      	cmp	r3, #0
    2d4a:	d153      	bne.n	2df4 <put_char+0xb4>
		switch(font){
    2d4c:	4b2d      	ldr	r3, [pc, #180]	; (2e04 <put_char+0xc4>)
    2d4e:	789b      	ldrb	r3, [r3, #2]
    2d50:	2b01      	cmp	r3, #1
    2d52:	d036      	beq.n	2dc2 <put_char+0x82>
    2d54:	b1e3      	cbz	r3, 2d90 <put_char+0x50>
    2d56:	2b02      	cmp	r3, #2
    2d58:	d150      	bne.n	2dfc <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2d5a:	f1a0 0320 	sub.w	r3, r0, #32
    2d5e:	b2db      	uxtb	r3, r3
    2d60:	2b64      	cmp	r3, #100	; 0x64
    2d62:	d84b      	bhi.n	2dfc <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2d64:	4c26      	ldr	r4, [pc, #152]	; (2e00 <put_char+0xc0>)
    2d66:	78a1      	ldrb	r1, [r4, #2]
    2d68:	7865      	ldrb	r5, [r4, #1]
    2d6a:	3820      	subs	r0, #32
    2d6c:	4b26      	ldr	r3, [pc, #152]	; (2e08 <put_char+0xc8>)
    2d6e:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2d72:	9300      	str	r3, [sp, #0]
    2d74:	2308      	movs	r3, #8
    2d76:	2206      	movs	r2, #6
    2d78:	4628      	mov	r0, r5
    2d7a:	f7ff ff4d 	bl	2c18 <draw_char>
				xpos+=CHAR_WIDTH;
    2d7e:	7863      	ldrb	r3, [r4, #1]
    2d80:	3306      	adds	r3, #6
    2d82:	b2db      	uxtb	r3, r3
    2d84:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2d86:	2baf      	cmp	r3, #175	; 0xaf
    2d88:	d938      	bls.n	2dfc <put_char+0xbc>
					new_line();
    2d8a:	f7ff ff91 	bl	2cb0 <new_line>
    2d8e:	e035      	b.n	2dfc <put_char+0xbc>
			if (c<16){
    2d90:	280f      	cmp	r0, #15
    2d92:	d833      	bhi.n	2dfc <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2d94:	4c1a      	ldr	r4, [pc, #104]	; (2e00 <put_char+0xc0>)
    2d96:	78a1      	ldrb	r1, [r4, #2]
    2d98:	7865      	ldrb	r5, [r4, #1]
    2d9a:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2d9e:	4b1b      	ldr	r3, [pc, #108]	; (2e0c <put_char+0xcc>)
    2da0:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2da4:	9300      	str	r3, [sp, #0]
    2da6:	2306      	movs	r3, #6
    2da8:	2204      	movs	r2, #4
    2daa:	4628      	mov	r0, r5
    2dac:	f7ff ff34 	bl	2c18 <draw_char>
				xpos+=SHEX_WIDTH;
    2db0:	7863      	ldrb	r3, [r4, #1]
    2db2:	3304      	adds	r3, #4
    2db4:	b2db      	uxtb	r3, r3
    2db6:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2db8:	2bb1      	cmp	r3, #177	; 0xb1
    2dba:	d91f      	bls.n	2dfc <put_char+0xbc>
					new_line();
    2dbc:	f7ff ff78 	bl	2cb0 <new_line>
    2dc0:	e01c      	b.n	2dfc <put_char+0xbc>
			if (c<16){
    2dc2:	280f      	cmp	r0, #15
    2dc4:	d81a      	bhi.n	2dfc <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2dc6:	4c0e      	ldr	r4, [pc, #56]	; (2e00 <put_char+0xc0>)
    2dc8:	78a1      	ldrb	r1, [r4, #2]
    2dca:	7865      	ldrb	r5, [r4, #1]
    2dcc:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2dd0:	4b0f      	ldr	r3, [pc, #60]	; (2e10 <put_char+0xd0>)
    2dd2:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dd6:	9300      	str	r3, [sp, #0]
    2dd8:	230a      	movs	r3, #10
    2dda:	2208      	movs	r2, #8
    2ddc:	4628      	mov	r0, r5
    2dde:	f7ff ff1b 	bl	2c18 <draw_char>
				xpos+=LHEX_WIDTH;
    2de2:	7863      	ldrb	r3, [r4, #1]
    2de4:	3308      	adds	r3, #8
    2de6:	b2db      	uxtb	r3, r3
    2de8:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2dea:	2bad      	cmp	r3, #173	; 0xad
    2dec:	d906      	bls.n	2dfc <put_char+0xbc>
					new_line();
    2dee:	f7ff ff5f 	bl	2cb0 <new_line>
    2df2:	e003      	b.n	2dfc <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2df4:	4601      	mov	r1, r0
    2df6:	2000      	movs	r0, #0
    2df8:	f000 fc9a 	bl	3730 <usart_putc>
	}
}
    2dfc:	b003      	add	sp, #12
    2dfe:	bd30      	pop	{r4, r5, pc}
    2e00:	200006b8 	.word	0x200006b8
    2e04:	20000220 	.word	0x20000220
    2e08:	00003880 	.word	0x00003880
    2e0c:	00003c48 	.word	0x00003c48
    2e10:	00003ba8 	.word	0x00003ba8

00002e14 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2e14:	4b01      	ldr	r3, [pc, #4]	; (2e1c <set_cursor+0x8>)
    2e16:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2e18:	7099      	strb	r1, [r3, #2]
    2e1a:	4770      	bx	lr
    2e1c:	200006b8 	.word	0x200006b8

00002e20 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2e20:	4b03      	ldr	r3, [pc, #12]	; (2e30 <get_cursor+0x10>)
    2e22:	785a      	ldrb	r2, [r3, #1]
    2e24:	7898      	ldrb	r0, [r3, #2]
    2e26:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2e2a:	b280      	uxth	r0, r0
    2e2c:	4770      	bx	lr
    2e2e:	bf00      	nop
    2e30:	200006b8 	.word	0x200006b8

00002e34 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2e34:	4b0f      	ldr	r3, [pc, #60]	; (2e74 <cursor_left+0x40>)
    2e36:	789b      	ldrb	r3, [r3, #2]
    2e38:	2b01      	cmp	r3, #1
    2e3a:	d00b      	beq.n	2e54 <cursor_left+0x20>
    2e3c:	b113      	cbz	r3, 2e44 <cursor_left+0x10>
    2e3e:	2b02      	cmp	r3, #2
    2e40:	d010      	beq.n	2e64 <cursor_left+0x30>
    2e42:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2e44:	4b0c      	ldr	r3, [pc, #48]	; (2e78 <cursor_left+0x44>)
    2e46:	785b      	ldrb	r3, [r3, #1]
    2e48:	2b04      	cmp	r3, #4
    2e4a:	d412      	bmi.n	2e72 <cursor_left+0x3e>
    2e4c:	3b04      	subs	r3, #4
    2e4e:	4a0a      	ldr	r2, [pc, #40]	; (2e78 <cursor_left+0x44>)
    2e50:	7053      	strb	r3, [r2, #1]
    2e52:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2e54:	4b08      	ldr	r3, [pc, #32]	; (2e78 <cursor_left+0x44>)
    2e56:	785b      	ldrb	r3, [r3, #1]
    2e58:	2b08      	cmp	r3, #8
    2e5a:	d40a      	bmi.n	2e72 <cursor_left+0x3e>
    2e5c:	3b08      	subs	r3, #8
    2e5e:	4a06      	ldr	r2, [pc, #24]	; (2e78 <cursor_left+0x44>)
    2e60:	7053      	strb	r3, [r2, #1]
    2e62:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2e64:	4b04      	ldr	r3, [pc, #16]	; (2e78 <cursor_left+0x44>)
    2e66:	785b      	ldrb	r3, [r3, #1]
    2e68:	2b06      	cmp	r3, #6
    2e6a:	d402      	bmi.n	2e72 <cursor_left+0x3e>
    2e6c:	3b06      	subs	r3, #6
    2e6e:	4a02      	ldr	r2, [pc, #8]	; (2e78 <cursor_left+0x44>)
    2e70:	7053      	strb	r3, [r2, #1]
    2e72:	4770      	bx	lr
    2e74:	20000220 	.word	0x20000220
    2e78:	200006b8 	.word	0x200006b8

00002e7c <print>:
void print(const char* str){
    2e7c:	b510      	push	{r4, lr}
    2e7e:	4604      	mov	r4, r0
    while ((c=*str++)){
    2e80:	e001      	b.n	2e86 <print+0xa>
            new_line();
    2e82:	f7ff ff15 	bl	2cb0 <new_line>
    while ((c=*str++)){
    2e86:	f814 0b01 	ldrb.w	r0, [r4], #1
    2e8a:	b158      	cbz	r0, 2ea4 <print+0x28>
        switch(c){
    2e8c:	280a      	cmp	r0, #10
    2e8e:	d0f8      	beq.n	2e82 <print+0x6>
    2e90:	280d      	cmp	r0, #13
    2e92:	d0f6      	beq.n	2e82 <print+0x6>
    2e94:	2808      	cmp	r0, #8
    2e96:	d002      	beq.n	2e9e <print+0x22>
            put_char(c);
    2e98:	f7ff ff52 	bl	2d40 <put_char>
    2e9c:	e7f3      	b.n	2e86 <print+0xa>
            cursor_left();    
    2e9e:	f7ff ffc9 	bl	2e34 <cursor_left>
            break;
    2ea2:	e7f0      	b.n	2e86 <print+0xa>
}
    2ea4:	bd10      	pop	{r4, pc}

00002ea6 <println>:
void println(const char *text){
    2ea6:	b508      	push	{r3, lr}
	print(text);
    2ea8:	f7ff ffe8 	bl	2e7c <print>
	new_line();
    2eac:	f7ff ff00 	bl	2cb0 <new_line>
    2eb0:	bd08      	pop	{r3, pc}

00002eb2 <print_int>:
void print_int(int i,uint8_t base){
    2eb2:	b530      	push	{r4, r5, lr}
    2eb4:	b085      	sub	sp, #20
    fmt[15]=0;
    2eb6:	2300      	movs	r3, #0
    2eb8:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2ebc:	2320      	movs	r3, #32
    2ebe:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2ec2:	1e02      	subs	r2, r0, #0
        i=-i;
    2ec4:	bfba      	itte	lt
    2ec6:	4252      	neglt	r2, r2
        sign=1;
    2ec8:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2eca:	2500      	movge	r5, #0
    while (idx>1 && i){
    2ecc:	b1aa      	cbz	r2, 2efa <print_int+0x48>
    2ece:	f10d 040e 	add.w	r4, sp, #14
    2ed2:	200e      	movs	r0, #14
        d=i%base;
    2ed4:	fb92 f3f1 	sdiv	r3, r2, r1
    2ed8:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2edc:	2b09      	cmp	r3, #9
    2ede:	bfc8      	it	gt
    2ee0:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2ee2:	3801      	subs	r0, #1
    2ee4:	3330      	adds	r3, #48	; 0x30
    2ee6:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2eea:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2eee:	2801      	cmp	r0, #1
    2ef0:	d007      	beq.n	2f02 <print_int+0x50>
    2ef2:	2a00      	cmp	r2, #0
    2ef4:	d1ee      	bne.n	2ed4 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2ef6:	280e      	cmp	r0, #14
    2ef8:	d103      	bne.n	2f02 <print_int+0x50>
    2efa:	2330      	movs	r3, #48	; 0x30
    2efc:	f88d 300d 	strb.w	r3, [sp, #13]
    2f00:	200d      	movs	r0, #13
    if (base==10 && sign){
    2f02:	290a      	cmp	r1, #10
    2f04:	d006      	beq.n	2f14 <print_int+0x62>
    }else if (base==16){
    2f06:	2910      	cmp	r1, #16
    2f08:	d00d      	beq.n	2f26 <print_int+0x74>
    print(&fmt[idx]);
    2f0a:	4468      	add	r0, sp
    2f0c:	f7ff ffb6 	bl	2e7c <print>
}
    2f10:	b005      	add	sp, #20
    2f12:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2f14:	2d00      	cmp	r5, #0
    2f16:	d0f8      	beq.n	2f0a <print_int+0x58>
        fmt[--idx]='-';
    2f18:	3801      	subs	r0, #1
    2f1a:	ab04      	add	r3, sp, #16
    2f1c:	4403      	add	r3, r0
    2f1e:	222d      	movs	r2, #45	; 0x2d
    2f20:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f24:	e7f1      	b.n	2f0a <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2f26:	f010 0f01 	tst.w	r0, #1
    2f2a:	d005      	beq.n	2f38 <print_int+0x86>
    2f2c:	3801      	subs	r0, #1
    2f2e:	ab04      	add	r3, sp, #16
    2f30:	4403      	add	r3, r0
    2f32:	2230      	movs	r2, #48	; 0x30
    2f34:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2f38:	3801      	subs	r0, #1
    2f3a:	ab04      	add	r3, sp, #16
    2f3c:	4403      	add	r3, r0
    2f3e:	2224      	movs	r2, #36	; 0x24
    2f40:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f44:	e7e1      	b.n	2f0a <print_int+0x58>

00002f46 <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2f46:	b508      	push	{r3, lr}
	print("press button");
    2f48:	4801      	ldr	r0, [pc, #4]	; (2f50 <prompt_btn+0xa>)
    2f4a:	f7ff ff97 	bl	2e7c <print>
    2f4e:	bd08      	pop	{r3, pc}
    2f50:	00004068 	.word	0x00004068

00002f54 <clear_screen>:
}

void clear_screen(){
    2f54:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2f56:	4b07      	ldr	r3, [pc, #28]	; (2f74 <clear_screen+0x20>)
    2f58:	781b      	ldrb	r3, [r3, #0]
    2f5a:	b123      	cbz	r3, 2f66 <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    2f5c:	210c      	movs	r1, #12
    2f5e:	2000      	movs	r0, #0
    2f60:	f000 fbe6 	bl	3730 <usart_putc>
    2f64:	bd08      	pop	{r3, pc}
		gfx_cls();
    2f66:	f7fe fb95 	bl	1694 <gfx_cls>
		xpos=0;
    2f6a:	4b02      	ldr	r3, [pc, #8]	; (2f74 <clear_screen+0x20>)
    2f6c:	2200      	movs	r2, #0
    2f6e:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2f70:	709a      	strb	r2, [r3, #2]
    2f72:	bd08      	pop	{r3, pc}
    2f74:	200006b8 	.word	0x200006b8

00002f78 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2f78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x,y;
	uint8_t color=show?15:0;
    2f7a:	2800      	cmp	r0, #0
    2f7c:	bf14      	ite	ne
    2f7e:	260f      	movne	r6, #15
    2f80:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2f82:	4b0a      	ldr	r3, [pc, #40]	; (2fac <show_cursor+0x34>)
    2f84:	785c      	ldrb	r4, [r3, #1]
    2f86:	1da3      	adds	r3, r4, #6
    2f88:	429c      	cmp	r4, r3
    2f8a:	da0d      	bge.n	2fa8 <show_cursor+0x30>
			gfx_blit(x,ypos+CHAR_HEIGHT-1,color,BIT_SET);
    2f8c:	4d07      	ldr	r5, [pc, #28]	; (2fac <show_cursor+0x34>)
    2f8e:	2704      	movs	r7, #4
    2f90:	78a9      	ldrb	r1, [r5, #2]
    2f92:	463b      	mov	r3, r7
    2f94:	4632      	mov	r2, r6
    2f96:	3107      	adds	r1, #7
    2f98:	4620      	mov	r0, r4
    2f9a:	f7fe fb2f 	bl	15fc <gfx_blit>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2f9e:	3401      	adds	r4, #1
    2fa0:	786b      	ldrb	r3, [r5, #1]
    2fa2:	3306      	adds	r3, #6
    2fa4:	42a3      	cmp	r3, r4
    2fa6:	dcf3      	bgt.n	2f90 <show_cursor+0x18>
    2fa8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    2faa:	bf00      	nop
    2fac:	200006b8 	.word	0x200006b8

00002fb0 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2fb0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2fb4:	f000 fa4a 	bl	344c <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fb8:	4b0c      	ldr	r3, [pc, #48]	; (2fec <clear_line+0x3c>)
    2fba:	789c      	ldrb	r4, [r3, #2]
    2fbc:	f104 0308 	add.w	r3, r4, #8
    2fc0:	429c      	cmp	r4, r3
    2fc2:	da10      	bge.n	2fe6 <clear_line+0x36>
    2fc4:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fc6:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2ff0 <clear_line+0x40>
    2fca:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fcc:	4e07      	ldr	r6, [pc, #28]	; (2fec <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fce:	7a28      	ldrb	r0, [r5, #8]
    2fd0:	463a      	mov	r2, r7
    2fd2:	4601      	mov	r1, r0
    2fd4:	fb04 8000 	mla	r0, r4, r0, r8
    2fd8:	f7fe fa27 	bl	142a <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fdc:	3401      	adds	r4, #1
    2fde:	78b3      	ldrb	r3, [r6, #2]
    2fe0:	3308      	adds	r3, #8
    2fe2:	42a3      	cmp	r3, r4
    2fe4:	dcf3      	bgt.n	2fce <clear_line+0x1e>
    2fe6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2fea:	bf00      	nop
    2fec:	200006b8 	.word	0x200006b8
    2ff0:	20002730 	.word	0x20002730

00002ff4 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    2ff4:	4b01      	ldr	r3, [pc, #4]	; (2ffc <select_console+0x8>)
    2ff6:	7018      	strb	r0, [r3, #0]
    2ff8:	4770      	bx	lr
    2ffa:	bf00      	nop
    2ffc:	200006b8 	.word	0x200006b8

00003000 <get_char>:
}

//read a character from serial port
char get_char(){
    3000:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    3002:	2400      	movs	r4, #0
    3004:	4620      	mov	r0, r4
    3006:	f000 fb61 	bl	36cc <usart_getc>
    300a:	2800      	cmp	r0, #0
    300c:	d0fa      	beq.n	3004 <get_char+0x4>
	return c;
}
    300e:	bd10      	pop	{r4, pc}

00003010 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    3010:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    3014:	4c34      	ldr	r4, [pc, #208]	; (30e8 <tvout_init+0xd8>)
    3016:	4b35      	ldr	r3, [pc, #212]	; (30ec <tvout_init+0xdc>)
    3018:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    301a:	4a35      	ldr	r2, [pc, #212]	; (30f0 <tvout_init+0xe0>)
    301c:	4b35      	ldr	r3, [pc, #212]	; (30f4 <tvout_init+0xe4>)
    301e:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    3020:	220a      	movs	r2, #10
    3022:	2108      	movs	r1, #8
    3024:	4620      	mov	r0, r4
    3026:	f7fe faa9 	bl	157c <config_pin>
    PORTA->ODR=0;
    302a:	2500      	movs	r5, #0
    302c:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    302e:	4e32      	ldr	r6, [pc, #200]	; (30f8 <tvout_init+0xe8>)
    3030:	69b3      	ldr	r3, [r6, #24]
    3032:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3036:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    3038:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    303c:	f04f 0878 	mov.w	r8, #120	; 0x78
    3040:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    3044:	2301      	movs	r3, #1
    3046:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    3048:	2784      	movs	r7, #132	; 0x84
    304a:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    304c:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3050:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    3052:	f44f 73a8 	mov.w	r3, #336	; 0x150
    3056:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    3058:	f240 1365 	movw	r3, #357	; 0x165
    305c:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    305e:	6963      	ldr	r3, [r4, #20]
    3060:	f043 0301 	orr.w	r3, r3, #1
    3064:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    3066:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    306a:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    306c:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    306e:	68e3      	ldr	r3, [r4, #12]
    3070:	f043 0301 	orr.w	r3, r3, #1
    3074:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    3076:	4629      	mov	r1, r5
    3078:	2019      	movs	r0, #25
    307a:	f7ff f863 	bl	2144 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    307e:	4629      	mov	r1, r5
    3080:	201b      	movs	r0, #27
    3082:	f7ff f85f 	bl	2144 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    3086:	2019      	movs	r0, #25
    3088:	f7fe fffc 	bl	2084 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    308c:	201b      	movs	r0, #27
    308e:	f7fe fff9 	bl	2084 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    3092:	6823      	ldr	r3, [r4, #0]
    3094:	f043 0301 	orr.w	r3, r3, #1
    3098:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    309a:	220a      	movs	r2, #10
    309c:	4629      	mov	r1, r5
    309e:	4817      	ldr	r0, [pc, #92]	; (30fc <tvout_init+0xec>)
    30a0:	f7fe fa6c 	bl	157c <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    30a4:	69f3      	ldr	r3, [r6, #28]
    30a6:	f043 0302 	orr.w	r3, r3, #2
    30aa:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    30ac:	4b14      	ldr	r3, [pc, #80]	; (3100 <tvout_init+0xf0>)
    30ae:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    30b2:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    30b4:	2213      	movs	r2, #19
    30b6:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    30b8:	220a      	movs	r2, #10
    30ba:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    30bc:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    30be:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    30c2:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    30c4:	695a      	ldr	r2, [r3, #20]
    30c6:	f042 0201 	orr.w	r2, r2, #1
    30ca:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    30cc:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN;
    30ce:	681a      	ldr	r2, [r3, #0]
    30d0:	f042 0201 	orr.w	r2, r2, #1
    30d4:	601a      	str	r2, [r3, #0]
    flags|=F_EVEN;
    30d6:	4a0b      	ldr	r2, [pc, #44]	; (3104 <tvout_init+0xf4>)
    30d8:	8813      	ldrh	r3, [r2, #0]
    30da:	b29b      	uxth	r3, r3
    30dc:	f043 0301 	orr.w	r3, r3, #1
    30e0:	8013      	strh	r3, [r2, #0]
    scan_line=0; 
    30e2:	8055      	strh	r5, [r2, #2]
    30e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    30e8:	40010800 	.word	0x40010800
    30ec:	88883333 	.word	0x88883333
    30f0:	84484444 	.word	0x84484444
    30f4:	40010804 	.word	0x40010804
    30f8:	40021000 	.word	0x40021000
    30fc:	40010c00 	.word	0x40010c00
    3100:	40000400 	.word	0x40000400
    3104:	200006bc 	.word	0x200006bc

00003108 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    3108:	4668      	mov	r0, sp
    310a:	f020 0107 	bic.w	r1, r0, #7
    310e:	468d      	mov	sp, r1
    3110:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    3112:	4a2f      	ldr	r2, [pc, #188]	; (31d0 <TV_OUT_handler+0xc8>)
    3114:	6a13      	ldr	r3, [r2, #32]
    3116:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    311a:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    311c:	492d      	ldr	r1, [pc, #180]	; (31d4 <TV_OUT_handler+0xcc>)
    311e:	f240 2209 	movw	r2, #521	; 0x209
    3122:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3124:	4293      	cmp	r3, r2
    3126:	d9fc      	bls.n	3122 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    3128:	4a29      	ldr	r2, [pc, #164]	; (31d0 <TV_OUT_handler+0xc8>)
    312a:	6a13      	ldr	r3, [r2, #32]
    312c:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3130:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    3132:	4b29      	ldr	r3, [pc, #164]	; (31d8 <TV_OUT_handler+0xd0>)
    3134:	889d      	ldrh	r5, [r3, #4]
    3136:	b2ad      	uxth	r5, r5
    3138:	4b28      	ldr	r3, [pc, #160]	; (31dc <TV_OUT_handler+0xd4>)
    313a:	7818      	ldrb	r0, [r3, #0]
    313c:	785a      	ldrb	r2, [r3, #1]
    313e:	fb95 f5f2 	sdiv	r5, r5, r2
    3142:	4a27      	ldr	r2, [pc, #156]	; (31e0 <TV_OUT_handler+0xd8>)
    3144:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    3148:	8859      	ldrh	r1, [r3, #2]
    314a:	4a22      	ldr	r2, [pc, #136]	; (31d4 <TV_OUT_handler+0xcc>)
    314c:	6a53      	ldr	r3, [r2, #36]	; 0x24
    314e:	428b      	cmp	r3, r1
    3150:	d3fc      	bcc.n	314c <TV_OUT_handler+0x44>
    _jitter_cancel();
    3152:	4b24      	ldr	r3, [pc, #144]	; (31e4 <TV_OUT_handler+0xdc>)
    3154:	461a      	mov	r2, r3
    3156:	6812      	ldr	r2, [r2, #0]
    3158:	f002 0207 	and.w	r2, r2, #7
    315c:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3160:	4497      	add	pc, r2
    3162:	bf00      	nop
    3164:	bf00      	nop
    3166:	bf00      	nop
    3168:	bf00      	nop
    316a:	bf00      	nop
    316c:	bf00      	nop
    316e:	bf00      	nop
    3170:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    3172:	4a17      	ldr	r2, [pc, #92]	; (31d0 <TV_OUT_handler+0xc8>)
    3174:	6a13      	ldr	r3, [r2, #32]
    3176:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    317a:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    317c:	b1b0      	cbz	r0, 31ac <TV_OUT_handler+0xa4>
    317e:	462b      	mov	r3, r5
        _pixel_delay(pixel_delay);
    3180:	4916      	ldr	r1, [pc, #88]	; (31dc <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    3182:	4819      	ldr	r0, [pc, #100]	; (31e8 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    3184:	790c      	ldrb	r4, [r1, #4]
    3186:	4622      	mov	r2, r4
    3188:	3a01      	subs	r2, #1
    318a:	d1fd      	bne.n	3188 <TV_OUT_handler+0x80>
        *video_port=(*video_data)>>4;
    318c:	781a      	ldrb	r2, [r3, #0]
    318e:	0912      	lsrs	r2, r2, #4
    3190:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    3192:	790c      	ldrb	r4, [r1, #4]
    3194:	4622      	mov	r2, r4
    3196:	3a01      	subs	r2, #1
    3198:	d1fd      	bne.n	3196 <TV_OUT_handler+0x8e>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    319a:	f813 2b01 	ldrb.w	r2, [r3], #1
    319e:	f002 020f 	and.w	r2, r2, #15
    31a2:	8002      	strh	r2, [r0, #0]
    for (i=0;i<byte_per_row;i++){
    31a4:	1b5c      	subs	r4, r3, r5
    31a6:	780a      	ldrb	r2, [r1, #0]
    31a8:	4294      	cmp	r4, r2
    31aa:	d3eb      	bcc.n	3184 <TV_OUT_handler+0x7c>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
    }
    PORTA->ODR=0;
    31ac:	2200      	movs	r2, #0
    31ae:	4b0f      	ldr	r3, [pc, #60]	; (31ec <TV_OUT_handler+0xe4>)
    31b0:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    31b2:	4a07      	ldr	r2, [pc, #28]	; (31d0 <TV_OUT_handler+0xc8>)
    31b4:	6a13      	ldr	r3, [r2, #32]
    31b6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    31ba:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    31bc:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    31c0:	6913      	ldr	r3, [r2, #16]
    31c2:	f023 0304 	bic.w	r3, r3, #4
    31c6:	6113      	str	r3, [r2, #16]
}
    31c8:	bc31      	pop	{r0, r4, r5}
    31ca:	4685      	mov	sp, r0
    31cc:	4770      	bx	lr
    31ce:	bf00      	nop
    31d0:	40000400 	.word	0x40000400
    31d4:	40012c00 	.word	0x40012c00
    31d8:	200006bc 	.word	0x200006bc
    31dc:	20000224 	.word	0x20000224
    31e0:	20002730 	.word	0x20002730
    31e4:	40012c24 	.word	0x40012c24
    31e8:	4001080c 	.word	0x4001080c
    31ec:	40010800 	.word	0x40010800

000031f0 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    31f0:	4668      	mov	r0, sp
    31f2:	f020 0107 	bic.w	r1, r0, #7
    31f6:	468d      	mov	sp, r1
    31f8:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    31fa:	4a71      	ldr	r2, [pc, #452]	; (33c0 <TV_SYNC_handler+0x1d0>)
    31fc:	8853      	ldrh	r3, [r2, #2]
    31fe:	3301      	adds	r3, #1
    3200:	b21b      	sxth	r3, r3
    3202:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    3204:	496f      	ldr	r1, [pc, #444]	; (33c4 <TV_SYNC_handler+0x1d4>)
    3206:	680b      	ldr	r3, [r1, #0]
    3208:	3301      	adds	r3, #1
    320a:	600b      	str	r3, [r1, #0]
    switch (task){
    320c:	88d3      	ldrh	r3, [r2, #6]
    320e:	b29b      	uxth	r3, r3
    3210:	2b06      	cmp	r3, #6
    3212:	d849      	bhi.n	32a8 <TV_SYNC_handler+0xb8>
    3214:	e8df f013 	tbh	[pc, r3, lsl #1]
    3218:	00410007 	.word	0x00410007
    321c:	00660051 	.word	0x00660051
    3220:	00920075 	.word	0x00920075
    3224:	00ae      	.short	0x00ae
    case VSYNC:
        switch(scan_line){
    3226:	4b66      	ldr	r3, [pc, #408]	; (33c0 <TV_SYNC_handler+0x1d0>)
    3228:	885b      	ldrh	r3, [r3, #2]
    322a:	b21b      	sxth	r3, r3
    322c:	3b01      	subs	r3, #1
    322e:	2b12      	cmp	r3, #18
    3230:	d83a      	bhi.n	32a8 <TV_SYNC_handler+0xb8>
    3232:	e8df f003 	tbb	[pc, r3]
    3236:	390a      	.short	0x390a
    3238:	39393939 	.word	0x39393939
    323c:	39393911 	.word	0x39393911
    3240:	39163939 	.word	0x39163939
    3244:	1a393939 	.word	0x1a393939
    3248:	1f          	.byte	0x1f
    3249:	00          	.byte	0x00
        case 1:
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
    324a:	4b5f      	ldr	r3, [pc, #380]	; (33c8 <TV_SYNC_handler+0x1d8>)
    324c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3250:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3252:	22a4      	movs	r2, #164	; 0xa4
    3254:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    3256:	e027      	b.n	32a8 <TV_SYNC_handler+0xb8>
        case 7:
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
    3258:	f240 7294 	movw	r2, #1940	; 0x794
    325c:	4b5a      	ldr	r3, [pc, #360]	; (33c8 <TV_SYNC_handler+0x1d8>)
    325e:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    3260:	e022      	b.n	32a8 <TV_SYNC_handler+0xb8>
        case 13:
            // set post-sync pulse    
            TMR1->CCR1=SERRATION;
    3262:	22a4      	movs	r2, #164	; 0xa4
    3264:	4b58      	ldr	r3, [pc, #352]	; (33c8 <TV_SYNC_handler+0x1d8>)
    3266:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    3268:	e01e      	b.n	32a8 <TV_SYNC_handler+0xb8>
        case 18:
            if (!(flags&F_EVEN)){
    326a:	4b55      	ldr	r3, [pc, #340]	; (33c0 <TV_SYNC_handler+0x1d0>)
    326c:	881b      	ldrh	r3, [r3, #0]
    326e:	f013 0f01 	tst.w	r3, #1
    3272:	d119      	bne.n	32a8 <TV_SYNC_handler+0xb8>
sync_end:                
                TMR1->ARR=HPERIOD;
    3274:	4b54      	ldr	r3, [pc, #336]	; (33c8 <TV_SYNC_handler+0x1d8>)
    3276:	f241 12c5 	movw	r2, #4549	; 0x11c5
    327a:	62da      	str	r2, [r3, #44]	; 0x2c
                TMR1->CCR1=HPULSE;
    327c:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3280:	635a      	str	r2, [r3, #52]	; 0x34
                flags&=~F_VSYNC;
    3282:	4a4f      	ldr	r2, [pc, #316]	; (33c0 <TV_SYNC_handler+0x1d0>)
    3284:	8813      	ldrh	r3, [r2, #0]
    3286:	f023 0302 	bic.w	r3, r3, #2
    328a:	041b      	lsls	r3, r3, #16
    328c:	0c1b      	lsrs	r3, r3, #16
    328e:	8013      	strh	r3, [r2, #0]
                task++;
    3290:	88d3      	ldrh	r3, [r2, #6]
    3292:	3301      	adds	r3, #1
    3294:	b29b      	uxth	r3, r3
    3296:	80d3      	strh	r3, [r2, #6]
    3298:	e006      	b.n	32a8 <TV_SYNC_handler+0xb8>
            goto sync_end;
            break;
        }//switch(scan_line)
        break;
    case READ_PAD:
        read_gamepad();
    329a:	f7fd ff51 	bl	1140 <read_gamepad>
        task++;
    329e:	4a48      	ldr	r2, [pc, #288]	; (33c0 <TV_SYNC_handler+0x1d0>)
    32a0:	88d3      	ldrh	r3, [r2, #6]
    32a2:	3301      	adds	r3, #1
    32a4:	b29b      	uxth	r3, r3
    32a6:	80d3      	strh	r3, [r2, #6]
                scan_line=0;
            }
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    32a8:	4a47      	ldr	r2, [pc, #284]	; (33c8 <TV_SYNC_handler+0x1d8>)
    32aa:	6913      	ldr	r3, [r2, #16]
    32ac:	f023 0301 	bic.w	r3, r3, #1
    32b0:	6113      	str	r3, [r2, #16]
}
    32b2:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    32b6:	4685      	mov	sp, r0
    32b8:	4770      	bx	lr
        if (sound_timer){
    32ba:	4b44      	ldr	r3, [pc, #272]	; (33cc <TV_SYNC_handler+0x1dc>)
    32bc:	881b      	ldrh	r3, [r3, #0]
    32be:	b29b      	uxth	r3, r3
    32c0:	b13b      	cbz	r3, 32d2 <TV_SYNC_handler+0xe2>
            sound_timer--;
    32c2:	4a42      	ldr	r2, [pc, #264]	; (33cc <TV_SYNC_handler+0x1dc>)
    32c4:	8813      	ldrh	r3, [r2, #0]
    32c6:	3b01      	subs	r3, #1
    32c8:	b29b      	uxth	r3, r3
    32ca:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    32cc:	8813      	ldrh	r3, [r2, #0]
    32ce:	b29b      	uxth	r3, r3
    32d0:	b12b      	cbz	r3, 32de <TV_SYNC_handler+0xee>
        task++;
    32d2:	4a3b      	ldr	r2, [pc, #236]	; (33c0 <TV_SYNC_handler+0x1d0>)
    32d4:	88d3      	ldrh	r3, [r2, #6]
    32d6:	3301      	adds	r3, #1
    32d8:	b29b      	uxth	r3, r3
    32da:	80d3      	strh	r3, [r2, #6]
        break;    
    32dc:	e7e4      	b.n	32a8 <TV_SYNC_handler+0xb8>
                sound_stop();
    32de:	f7ff fb3e 	bl	295e <sound_stop>
    32e2:	e7f6      	b.n	32d2 <TV_SYNC_handler+0xe2>
        if (game_timer){
    32e4:	4b3a      	ldr	r3, [pc, #232]	; (33d0 <TV_SYNC_handler+0x1e0>)
    32e6:	881b      	ldrh	r3, [r3, #0]
    32e8:	b29b      	uxth	r3, r3
    32ea:	b123      	cbz	r3, 32f6 <TV_SYNC_handler+0x106>
            game_timer--;
    32ec:	4a38      	ldr	r2, [pc, #224]	; (33d0 <TV_SYNC_handler+0x1e0>)
    32ee:	8813      	ldrh	r3, [r2, #0]
    32f0:	3b01      	subs	r3, #1
    32f2:	b29b      	uxth	r3, r3
    32f4:	8013      	strh	r3, [r2, #0]
        task++;
    32f6:	4a32      	ldr	r2, [pc, #200]	; (33c0 <TV_SYNC_handler+0x1d0>)
    32f8:	88d3      	ldrh	r3, [r2, #6]
    32fa:	3301      	adds	r3, #1
    32fc:	b29b      	uxth	r3, r3
    32fe:	80d3      	strh	r3, [r2, #6]
        break;
    3300:	e7d2      	b.n	32a8 <TV_SYNC_handler+0xb8>
        if (scan_line==video_start){
    3302:	4b2f      	ldr	r3, [pc, #188]	; (33c0 <TV_SYNC_handler+0x1d0>)
    3304:	885b      	ldrh	r3, [r3, #2]
    3306:	b21b      	sxth	r3, r3
    3308:	4a32      	ldr	r2, [pc, #200]	; (33d4 <TV_SYNC_handler+0x1e4>)
    330a:	88d2      	ldrh	r2, [r2, #6]
    330c:	4293      	cmp	r3, r2
    330e:	d1cb      	bne.n	32a8 <TV_SYNC_handler+0xb8>
            TMR1->SR&=~TMR_SR_CC2IF;
    3310:	4b2d      	ldr	r3, [pc, #180]	; (33c8 <TV_SYNC_handler+0x1d8>)
    3312:	691a      	ldr	r2, [r3, #16]
    3314:	f022 0204 	bic.w	r2, r2, #4
    3318:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    331a:	68da      	ldr	r2, [r3, #12]
    331c:	f042 0204 	orr.w	r2, r2, #4
    3320:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    3322:	4b27      	ldr	r3, [pc, #156]	; (33c0 <TV_SYNC_handler+0x1d0>)
    3324:	881a      	ldrh	r2, [r3, #0]
    3326:	b292      	uxth	r2, r2
    3328:	f042 0204 	orr.w	r2, r2, #4
    332c:	801a      	strh	r2, [r3, #0]
            task++;
    332e:	88da      	ldrh	r2, [r3, #6]
    3330:	3201      	adds	r2, #1
    3332:	b292      	uxth	r2, r2
    3334:	80da      	strh	r2, [r3, #6]
            slice=0;
    3336:	2200      	movs	r2, #0
    3338:	809a      	strh	r2, [r3, #4]
    333a:	e7b5      	b.n	32a8 <TV_SYNC_handler+0xb8>
        slice++;
    333c:	4a20      	ldr	r2, [pc, #128]	; (33c0 <TV_SYNC_handler+0x1d0>)
    333e:	8893      	ldrh	r3, [r2, #4]
    3340:	3301      	adds	r3, #1
    3342:	b29b      	uxth	r3, r3
    3344:	8093      	strh	r3, [r2, #4]
        if (scan_line==video_end){
    3346:	8853      	ldrh	r3, [r2, #2]
    3348:	b21b      	sxth	r3, r3
    334a:	4a22      	ldr	r2, [pc, #136]	; (33d4 <TV_SYNC_handler+0x1e4>)
    334c:	8912      	ldrh	r2, [r2, #8]
    334e:	4293      	cmp	r3, r2
    3350:	d1aa      	bne.n	32a8 <TV_SYNC_handler+0xb8>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    3352:	4a1d      	ldr	r2, [pc, #116]	; (33c8 <TV_SYNC_handler+0x1d8>)
    3354:	68d3      	ldr	r3, [r2, #12]
    3356:	f023 0304 	bic.w	r3, r3, #4
    335a:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    335c:	4a18      	ldr	r2, [pc, #96]	; (33c0 <TV_SYNC_handler+0x1d0>)
    335e:	8813      	ldrh	r3, [r2, #0]
    3360:	f023 0304 	bic.w	r3, r3, #4
    3364:	041b      	lsls	r3, r3, #16
    3366:	0c1b      	lsrs	r3, r3, #16
    3368:	8013      	strh	r3, [r2, #0]
            task++;
    336a:	88d3      	ldrh	r3, [r2, #6]
    336c:	3301      	adds	r3, #1
    336e:	b29b      	uxth	r3, r3
    3370:	80d3      	strh	r3, [r2, #6]
    3372:	e799      	b.n	32a8 <TV_SYNC_handler+0xb8>
        if (scan_line==271 && !(flags&F_EVEN)){
    3374:	4b12      	ldr	r3, [pc, #72]	; (33c0 <TV_SYNC_handler+0x1d0>)
    3376:	885b      	ldrh	r3, [r3, #2]
    3378:	b21b      	sxth	r3, r3
    337a:	f240 120f 	movw	r2, #271	; 0x10f
    337e:	4293      	cmp	r3, r2
    3380:	d018      	beq.n	33b4 <TV_SYNC_handler+0x1c4>
            if (scan_line==272){
    3382:	4b0f      	ldr	r3, [pc, #60]	; (33c0 <TV_SYNC_handler+0x1d0>)
    3384:	885b      	ldrh	r3, [r3, #2]
    3386:	b21b      	sxth	r3, r3
    3388:	f5b3 7f88 	cmp.w	r3, #272	; 0x110
    338c:	d18c      	bne.n	32a8 <TV_SYNC_handler+0xb8>
                TMR1->ARR=SYNC_LINE;
    338e:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3392:	4b0d      	ldr	r3, [pc, #52]	; (33c8 <TV_SYNC_handler+0x1d8>)
    3394:	62da      	str	r2, [r3, #44]	; 0x2c
                flags^=F_EVEN;
    3396:	4b0a      	ldr	r3, [pc, #40]	; (33c0 <TV_SYNC_handler+0x1d0>)
    3398:	881a      	ldrh	r2, [r3, #0]
    339a:	b292      	uxth	r2, r2
    339c:	f082 0201 	eor.w	r2, r2, #1
    33a0:	801a      	strh	r2, [r3, #0]
                flags|=F_VSYNC;
    33a2:	881a      	ldrh	r2, [r3, #0]
    33a4:	b292      	uxth	r2, r2
    33a6:	f042 0202 	orr.w	r2, r2, #2
    33aa:	801a      	strh	r2, [r3, #0]
                task=VSYNC;
    33ac:	2200      	movs	r2, #0
    33ae:	80da      	strh	r2, [r3, #6]
                scan_line=0;
    33b0:	805a      	strh	r2, [r3, #2]
    33b2:	e779      	b.n	32a8 <TV_SYNC_handler+0xb8>
        if (scan_line==271 && !(flags&F_EVEN)){
    33b4:	4b02      	ldr	r3, [pc, #8]	; (33c0 <TV_SYNC_handler+0x1d0>)
    33b6:	881b      	ldrh	r3, [r3, #0]
    33b8:	f013 0f01 	tst.w	r3, #1
    33bc:	d0eb      	beq.n	3396 <TV_SYNC_handler+0x1a6>
    33be:	e7e0      	b.n	3382 <TV_SYNC_handler+0x192>
    33c0:	200006bc 	.word	0x200006bc
    33c4:	20004e94 	.word	0x20004e94
    33c8:	40012c00 	.word	0x40012c00
    33cc:	20004e98 	.word	0x20004e98
    33d0:	20004e90 	.word	0x20004e90
    33d4:	20000224 	.word	0x20000224

000033d8 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    33d8:	4a02      	ldr	r2, [pc, #8]	; (33e4 <frame_sync+0xc>)
    33da:	8813      	ldrh	r3, [r2, #0]
    33dc:	f013 0f02 	tst.w	r3, #2
    33e0:	d0fb      	beq.n	33da <frame_sync+0x2>
}
    33e2:	4770      	bx	lr
    33e4:	200006bc 	.word	0x200006bc

000033e8 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    33e8:	4a02      	ldr	r2, [pc, #8]	; (33f4 <wait_sync_end+0xc>)
    33ea:	8813      	ldrh	r3, [r2, #0]
    33ec:	f013 0f02 	tst.w	r3, #2
    33f0:	d1fb      	bne.n	33ea <wait_sync_end+0x2>
}
    33f2:	4770      	bx	lr
    33f4:	200006bc 	.word	0x200006bc

000033f8 <set_video_mode>:

void set_video_mode(vmode_t mode){
    33f8:	b510      	push	{r4, lr}
    33fa:	4604      	mov	r4, r0
    frame_sync();
    33fc:	f7ff ffec 	bl	33d8 <frame_sync>
    video_mode=mode;
    3400:	4b0e      	ldr	r3, [pc, #56]	; (343c <set_video_mode+0x44>)
    3402:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3404:	b1ac      	cbz	r4, 3432 <set_video_mode+0x3a>
    3406:	2200      	movs	r2, #0
    3408:	4b0d      	ldr	r3, [pc, #52]	; (3440 <set_video_mode+0x48>)
    340a:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    340c:	4b0d      	ldr	r3, [pc, #52]	; (3444 <set_video_mode+0x4c>)
    340e:	480e      	ldr	r0, [pc, #56]	; (3448 <set_video_mode+0x50>)
    3410:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    3414:	8842      	ldrh	r2, [r0, #2]
    3416:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3418:	8882      	ldrh	r2, [r0, #4]
    341a:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    341c:	88c2      	ldrh	r2, [r0, #6]
    341e:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    3420:	7a02      	ldrb	r2, [r0, #8]
    3422:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    3424:	7a42      	ldrb	r2, [r0, #9]
    3426:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    3428:	7a82      	ldrb	r2, [r0, #10]
    342a:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    342c:	f7fe f932 	bl	1694 <gfx_cls>
    3430:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3432:	2202      	movs	r2, #2
    3434:	4b02      	ldr	r3, [pc, #8]	; (3440 <set_video_mode+0x48>)
    3436:	701a      	strb	r2, [r3, #0]
    3438:	e7e8      	b.n	340c <set_video_mode+0x14>
    343a:	bf00      	nop
    343c:	200006bc 	.word	0x200006bc
    3440:	200001c8 	.word	0x200001c8
    3444:	20000224 	.word	0x20000224
    3448:	00003d40 	.word	0x00003d40

0000344c <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    344c:	4b02      	ldr	r3, [pc, #8]	; (3458 <get_video_params+0xc>)
    344e:	7a18      	ldrb	r0, [r3, #8]
}
    3450:	4b02      	ldr	r3, [pc, #8]	; (345c <get_video_params+0x10>)
    3452:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    3456:	4770      	bx	lr
    3458:	200006bc 	.word	0x200006bc
    345c:	00003d40 	.word	0x00003d40

00003460 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    3460:	4b03      	ldr	r3, [pc, #12]	; (3470 <game_pause+0x10>)
    3462:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    3464:	461a      	mov	r2, r3
    3466:	8813      	ldrh	r3, [r2, #0]
    3468:	b29b      	uxth	r3, r3
    346a:	2b00      	cmp	r3, #0
    346c:	d1fb      	bne.n	3466 <game_pause+0x6>
}
    346e:	4770      	bx	lr
    3470:	20004e90 	.word	0x20004e90

00003474 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    3474:	4b03      	ldr	r3, [pc, #12]	; (3484 <micro_pause+0x10>)
    3476:	681b      	ldr	r3, [r3, #0]
    3478:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    347a:	4a02      	ldr	r2, [pc, #8]	; (3484 <micro_pause+0x10>)
    347c:	6813      	ldr	r3, [r2, #0]
    347e:	4298      	cmp	r0, r3
    3480:	d8fc      	bhi.n	347c <micro_pause+0x8>
}
    3482:	4770      	bx	lr
    3484:	20004e94 	.word	0x20004e94

00003488 <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    3488:	2801      	cmp	r0, #1
    348a:	d035      	beq.n	34f8 <usart_config_port+0x70>
    348c:	b110      	cbz	r0, 3494 <usart_config_port+0xc>
    348e:	2802      	cmp	r0, #2
    3490:	d04f      	beq.n	3532 <usart_config_port+0xaa>
    3492:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    3494:	4835      	ldr	r0, [pc, #212]	; (356c <usart_config_port+0xe4>)
    3496:	6983      	ldr	r3, [r0, #24]
    3498:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    349c:	f043 0304 	orr.w	r3, r3, #4
    34a0:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    34a2:	2a01      	cmp	r2, #1
    34a4:	d016      	beq.n	34d4 <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    34a6:	4b32      	ldr	r3, [pc, #200]	; (3570 <usart_config_port+0xe8>)
    34a8:	4299      	cmp	r1, r3
    34aa:	d01c      	beq.n	34e6 <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    34ac:	4a31      	ldr	r2, [pc, #196]	; (3574 <usart_config_port+0xec>)
    34ae:	6853      	ldr	r3, [r2, #4]
    34b0:	f043 0304 	orr.w	r3, r3, #4
    34b4:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    34b6:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    34ba:	6993      	ldr	r3, [r2, #24]
    34bc:	f043 0308 	orr.w	r3, r3, #8
    34c0:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    34c2:	680b      	ldr	r3, [r1, #0]
    34c4:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    34c8:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    34ca:	680b      	ldr	r3, [r1, #0]
    34cc:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    34d0:	600b      	str	r3, [r1, #0]
    34d2:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    34d4:	684b      	ldr	r3, [r1, #4]
    34d6:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    34da:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    34dc:	684b      	ldr	r3, [r1, #4]
    34de:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    34e2:	604b      	str	r3, [r1, #4]
    34e4:	e7df      	b.n	34a6 <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    34e6:	685a      	ldr	r2, [r3, #4]
    34e8:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    34ec:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    34ee:	685a      	ldr	r2, [r3, #4]
    34f0:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    34f4:	605a      	str	r2, [r3, #4]
    34f6:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    34f8:	4b1c      	ldr	r3, [pc, #112]	; (356c <usart_config_port+0xe4>)
    34fa:	69d8      	ldr	r0, [r3, #28]
    34fc:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3500:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    3502:	6998      	ldr	r0, [r3, #24]
    3504:	f040 0004 	orr.w	r0, r0, #4
    3508:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    350a:	2a01      	cmp	r2, #1
    350c:	d008      	beq.n	3520 <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    350e:	680b      	ldr	r3, [r1, #0]
    3510:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3514:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    3516:	680b      	ldr	r3, [r1, #0]
    3518:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    351c:	600b      	str	r3, [r1, #0]
    351e:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3520:	680b      	ldr	r3, [r1, #0]
    3522:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    3526:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    3528:	680b      	ldr	r3, [r1, #0]
    352a:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    352e:	600b      	str	r3, [r1, #0]
    3530:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    3532:	4b0e      	ldr	r3, [pc, #56]	; (356c <usart_config_port+0xe4>)
    3534:	69d8      	ldr	r0, [r3, #28]
    3536:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    353a:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    353c:	6998      	ldr	r0, [r3, #24]
    353e:	f040 0008 	orr.w	r0, r0, #8
    3542:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    3544:	2a01      	cmp	r2, #1
    3546:	d008      	beq.n	355a <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    3548:	684b      	ldr	r3, [r1, #4]
    354a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    354e:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    3550:	684b      	ldr	r3, [r1, #4]
    3552:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3556:	604b      	str	r3, [r1, #4]
    3558:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    355a:	684b      	ldr	r3, [r1, #4]
    355c:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    3560:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    3562:	684b      	ldr	r3, [r1, #4]
    3564:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    3568:	604b      	str	r3, [r1, #4]
    356a:	4770      	bx	lr
    356c:	40021000 	.word	0x40021000
    3570:	40010800 	.word	0x40010800
    3574:	40010000 	.word	0x40010000

00003578 <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    3578:	4602      	mov	r2, r0
    357a:	b138      	cbz	r0, 358c <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    357c:	4b05      	ldr	r3, [pc, #20]	; (3594 <usart_set_baud+0x1c>)
    357e:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    3582:	4b05      	ldr	r3, [pc, #20]	; (3598 <usart_set_baud+0x20>)
    3584:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    3588:	6099      	str	r1, [r3, #8]
    358a:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    358c:	4b03      	ldr	r3, [pc, #12]	; (359c <usart_set_baud+0x24>)
    358e:	fbb3 f1f1 	udiv	r1, r3, r1
    3592:	e7f6      	b.n	3582 <usart_set_baud+0xa>
    3594:	022231fa 	.word	0x022231fa
    3598:	00003d68 	.word	0x00003d68
    359c:	044463f4 	.word	0x044463f4

000035a0 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    35a0:	4b05      	ldr	r3, [pc, #20]	; (35b8 <usart_comm_dir+0x18>)
    35a2:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    35a6:	68da      	ldr	r2, [r3, #12]
    35a8:	f022 020c 	bic.w	r2, r2, #12
    35ac:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    35ae:	68da      	ldr	r2, [r3, #12]
    35b0:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    35b4:	60d9      	str	r1, [r3, #12]
    35b6:	4770      	bx	lr
    35b8:	00003d68 	.word	0x00003d68

000035bc <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    35bc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    35c0:	4604      	mov	r4, r0
    35c2:	460f      	mov	r7, r1
    35c4:	4615      	mov	r5, r2
    35c6:	4698      	mov	r8, r3
    35c8:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    35ca:	2801      	cmp	r0, #1
    35cc:	d030      	beq.n	3630 <usart_open_channel+0x74>
    35ce:	b1d0      	cbz	r0, 3606 <usart_open_channel+0x4a>
    35d0:	2802      	cmp	r0, #2
    35d2:	d03a      	beq.n	364a <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    35d4:	2e01      	cmp	r6, #1
    35d6:	d045      	beq.n	3664 <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    35d8:	4641      	mov	r1, r8
    35da:	4620      	mov	r0, r4
    35dc:	f7ff ffe0 	bl	35a0 <usart_comm_dir>
	switch (parity){
    35e0:	2d01      	cmp	r5, #1
    35e2:	d04e      	beq.n	3682 <usart_open_channel+0xc6>
    35e4:	2d00      	cmp	r5, #0
    35e6:	d044      	beq.n	3672 <usart_open_channel+0xb6>
    35e8:	2d02      	cmp	r5, #2
    35ea:	d052      	beq.n	3692 <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    35ec:	4639      	mov	r1, r7
    35ee:	4620      	mov	r0, r4
    35f0:	f7ff ffc2 	bl	3578 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    35f4:	4b2b      	ldr	r3, [pc, #172]	; (36a4 <usart_open_channel+0xe8>)
    35f6:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    35fa:	68d3      	ldr	r3, [r2, #12]
    35fc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3600:	60d3      	str	r3, [r2, #12]
    3602:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    3606:	9b06      	ldr	r3, [sp, #24]
    3608:	b963      	cbnz	r3, 3624 <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    360a:	4632      	mov	r2, r6
    360c:	4926      	ldr	r1, [pc, #152]	; (36a8 <usart_open_channel+0xec>)
    360e:	2000      	movs	r0, #0
    3610:	f7ff ff3a 	bl	3488 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    3614:	2107      	movs	r1, #7
    3616:	2025      	movs	r0, #37	; 0x25
    3618:	f7fe fd94 	bl	2144 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    361c:	2025      	movs	r0, #37	; 0x25
    361e:	f7fe fd31 	bl	2084 <enable_interrupt>
		break;
    3622:	e7d7      	b.n	35d4 <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    3624:	4632      	mov	r2, r6
    3626:	4921      	ldr	r1, [pc, #132]	; (36ac <usart_open_channel+0xf0>)
    3628:	2000      	movs	r0, #0
    362a:	f7ff ff2d 	bl	3488 <usart_config_port>
    362e:	e7f1      	b.n	3614 <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    3630:	4632      	mov	r2, r6
    3632:	491d      	ldr	r1, [pc, #116]	; (36a8 <usart_open_channel+0xec>)
    3634:	2001      	movs	r0, #1
    3636:	f7ff ff27 	bl	3488 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    363a:	2107      	movs	r1, #7
    363c:	2026      	movs	r0, #38	; 0x26
    363e:	f7fe fd81 	bl	2144 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    3642:	2026      	movs	r0, #38	; 0x26
    3644:	f7fe fd1e 	bl	2084 <enable_interrupt>
		break;
    3648:	e7c4      	b.n	35d4 <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    364a:	4632      	mov	r2, r6
    364c:	4917      	ldr	r1, [pc, #92]	; (36ac <usart_open_channel+0xf0>)
    364e:	2002      	movs	r0, #2
    3650:	f7ff ff1a 	bl	3488 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    3654:	2107      	movs	r1, #7
    3656:	2027      	movs	r0, #39	; 0x27
    3658:	f7fe fd74 	bl	2144 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    365c:	2027      	movs	r0, #39	; 0x27
    365e:	f7fe fd11 	bl	2084 <enable_interrupt>
		break;
    3662:	e7b7      	b.n	35d4 <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3664:	4b0f      	ldr	r3, [pc, #60]	; (36a4 <usart_open_channel+0xe8>)
    3666:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    366a:	f44f 7240 	mov.w	r2, #768	; 0x300
    366e:	615a      	str	r2, [r3, #20]
    3670:	e7b2      	b.n	35d8 <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    3672:	4b0c      	ldr	r3, [pc, #48]	; (36a4 <usart_open_channel+0xe8>)
    3674:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3678:	68d3      	ldr	r3, [r2, #12]
    367a:	f043 0320 	orr.w	r3, r3, #32
    367e:	60d3      	str	r3, [r2, #12]
		break;
    3680:	e7b4      	b.n	35ec <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    3682:	4b08      	ldr	r3, [pc, #32]	; (36a4 <usart_open_channel+0xe8>)
    3684:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3688:	68d3      	ldr	r3, [r2, #12]
    368a:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    368e:	60d3      	str	r3, [r2, #12]
		break;
    3690:	e7ac      	b.n	35ec <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    3692:	4b04      	ldr	r3, [pc, #16]	; (36a4 <usart_open_channel+0xe8>)
    3694:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3698:	68d3      	ldr	r3, [r2, #12]
    369a:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    369e:	60d3      	str	r3, [r2, #12]
		break;
    36a0:	e7a4      	b.n	35ec <usart_open_channel+0x30>
    36a2:	bf00      	nop
    36a4:	00003d68 	.word	0x00003d68
    36a8:	40010800 	.word	0x40010800
    36ac:	40010c00 	.word	0x40010c00

000036b0 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return usart_queue[channel].head!=usart_queue[channel].tail;
    36b0:	4a05      	ldr	r2, [pc, #20]	; (36c8 <usart_stat+0x18>)
    36b2:	00c3      	lsls	r3, r0, #3
    36b4:	1819      	adds	r1, r3, r0
    36b6:	eb02 0341 	add.w	r3, r2, r1, lsl #1
    36ba:	f812 0011 	ldrb.w	r0, [r2, r1, lsl #1]
    36be:	785b      	ldrb	r3, [r3, #1]
}
    36c0:	1ac0      	subs	r0, r0, r3
    36c2:	bf18      	it	ne
    36c4:	2001      	movne	r0, #1
    36c6:	4770      	bx	lr
    36c8:	200006c8 	.word	0x200006c8

000036cc <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    36cc:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    36ce:	490c      	ldr	r1, [pc, #48]	; (3700 <usart_getc+0x34>)
    36d0:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    36d4:	005b      	lsls	r3, r3, #1
    36d6:	18c8      	adds	r0, r1, r3
    36d8:	5ccb      	ldrb	r3, [r1, r3]
    36da:	7841      	ldrb	r1, [r0, #1]
    36dc:	4299      	cmp	r1, r3
    36de:	d00d      	beq.n	36fc <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    36e0:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    36e2:	4d07      	ldr	r5, [pc, #28]	; (3700 <usart_getc+0x34>)
    36e4:	00d4      	lsls	r4, r2, #3
    36e6:	4601      	mov	r1, r0
    36e8:	4419      	add	r1, r3
    36ea:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    36ec:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    36ee:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    36f0:	f003 030f 	and.w	r3, r3, #15
    36f4:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    36f8:	bc30      	pop	{r4, r5}
    36fa:	4770      	bx	lr
		return 0;
    36fc:	2000      	movs	r0, #0
    36fe:	4770      	bx	lr
    3700:	200006c8 	.word	0x200006c8

00003704 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    3704:	b570      	push	{r4, r5, r6, lr}
    3706:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    3708:	4b08      	ldr	r3, [pc, #32]	; (372c <usart_getc_dly+0x28>)
    370a:	681c      	ldr	r4, [r3, #0]
    370c:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    370e:	461d      	mov	r5, r3
    3710:	682b      	ldr	r3, [r5, #0]
    3712:	429c      	cmp	r4, r3
    3714:	d906      	bls.n	3724 <usart_getc_dly+0x20>
    3716:	4630      	mov	r0, r6
    3718:	f7ff ffd8 	bl	36cc <usart_getc>
    371c:	4603      	mov	r3, r0
    371e:	2800      	cmp	r0, #0
    3720:	d0f6      	beq.n	3710 <usart_getc_dly+0xc>
    3722:	e000      	b.n	3726 <usart_getc_dly+0x22>
    3724:	2300      	movs	r3, #0
	return c;
}
    3726:	4618      	mov	r0, r3
    3728:	bd70      	pop	{r4, r5, r6, pc}
    372a:	bf00      	nop
    372c:	20004e94 	.word	0x20004e94

00003730 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    3730:	4b04      	ldr	r3, [pc, #16]	; (3744 <usart_putc+0x14>)
    3732:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    3736:	6813      	ldr	r3, [r2, #0]
    3738:	f013 0f80 	tst.w	r3, #128	; 0x80
    373c:	d0fb      	beq.n	3736 <usart_putc+0x6>
	channels[channel]->DR=c;
    373e:	6051      	str	r1, [r2, #4]
    3740:	4770      	bx	lr
    3742:	bf00      	nop
    3744:	00003d68 	.word	0x00003d68

00003748 <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    3748:	2801      	cmp	r0, #1
    374a:	d009      	beq.n	3760 <usart_cts+0x18>
    374c:	b118      	cbz	r0, 3756 <usart_cts+0xe>
    374e:	2802      	cmp	r0, #2
    3750:	d00b      	beq.n	376a <usart_cts+0x22>
    3752:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3754:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    3756:	4b07      	ldr	r3, [pc, #28]	; (3774 <usart_cts+0x2c>)
    3758:	6898      	ldr	r0, [r3, #8]
    375a:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    375e:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    3760:	4b04      	ldr	r3, [pc, #16]	; (3774 <usart_cts+0x2c>)
    3762:	6898      	ldr	r0, [r3, #8]
    3764:	f000 0001 	and.w	r0, r0, #1
			break;
    3768:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    376a:	4b03      	ldr	r3, [pc, #12]	; (3778 <usart_cts+0x30>)
    376c:	6898      	ldr	r0, [r3, #8]
    376e:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    3772:	4770      	bx	lr
    3774:	40010800 	.word	0x40010800
    3778:	40010c00 	.word	0x40010c00

0000377c <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    377c:	b538      	push	{r3, r4, r5, lr}
    377e:	4605      	mov	r5, r0
    3780:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    3782:	7809      	ldrb	r1, [r1, #0]
    3784:	b131      	cbz	r1, 3794 <usart_print+0x18>
    3786:	4628      	mov	r0, r5
    3788:	f7ff ffd2 	bl	3730 <usart_putc>
    378c:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    3790:	2900      	cmp	r1, #0
    3792:	d1f8      	bne.n	3786 <usart_print+0xa>
    3794:	bd38      	pop	{r3, r4, r5, pc}

00003796 <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    3796:	4668      	mov	r0, sp
    3798:	f020 0107 	bic.w	r1, r0, #7
    379c:	468d      	mov	sp, r1
    379e:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    37a0:	4b08      	ldr	r3, [pc, #32]	; (37c4 <USART1_handler+0x2e>)
    37a2:	681b      	ldr	r3, [r3, #0]
    37a4:	f013 0f20 	tst.w	r3, #32
    37a8:	d009      	beq.n	37be <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    37aa:	4a07      	ldr	r2, [pc, #28]	; (37c8 <USART1_handler+0x32>)
    37ac:	7853      	ldrb	r3, [r2, #1]
    37ae:	4905      	ldr	r1, [pc, #20]	; (37c4 <USART1_handler+0x2e>)
    37b0:	6848      	ldr	r0, [r1, #4]
    37b2:	18d1      	adds	r1, r2, r3
    37b4:	7088      	strb	r0, [r1, #2]
    37b6:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    37b8:	f003 030f 	and.w	r3, r3, #15
    37bc:	7053      	strb	r3, [r2, #1]
		}
}
    37be:	bc01      	pop	{r0}
    37c0:	4685      	mov	sp, r0
    37c2:	4770      	bx	lr
    37c4:	40013800 	.word	0x40013800
    37c8:	200006c8 	.word	0x200006c8

000037cc <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    37cc:	4668      	mov	r0, sp
    37ce:	f020 0107 	bic.w	r1, r0, #7
    37d2:	468d      	mov	sp, r1
    37d4:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    37d6:	4b0a      	ldr	r3, [pc, #40]	; (3800 <USART2_handler+0x34>)
    37d8:	681b      	ldr	r3, [r3, #0]
    37da:	f013 0f20 	tst.w	r3, #32
    37de:	d00b      	beq.n	37f8 <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    37e0:	4a08      	ldr	r2, [pc, #32]	; (3804 <USART2_handler+0x38>)
    37e2:	7cd1      	ldrb	r1, [r2, #19]
    37e4:	1c4b      	adds	r3, r1, #1
    37e6:	b2db      	uxtb	r3, r3
    37e8:	74d3      	strb	r3, [r2, #19]
    37ea:	4807      	ldr	r0, [pc, #28]	; (3808 <USART2_handler+0x3c>)
    37ec:	6840      	ldr	r0, [r0, #4]
    37ee:	4411      	add	r1, r2
    37f0:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    37f2:	f003 030f 	and.w	r3, r3, #15
    37f6:	74d3      	strb	r3, [r2, #19]
		}
}
    37f8:	bc01      	pop	{r0}
    37fa:	4685      	mov	sp, r0
    37fc:	4770      	bx	lr
    37fe:	bf00      	nop
    3800:	40013800 	.word	0x40013800
    3804:	200006c8 	.word	0x200006c8
    3808:	40004400 	.word	0x40004400

0000380c <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    380c:	4668      	mov	r0, sp
    380e:	f020 0107 	bic.w	r1, r0, #7
    3812:	468d      	mov	sp, r1
    3814:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3816:	4b0b      	ldr	r3, [pc, #44]	; (3844 <USART3_handler+0x38>)
    3818:	681b      	ldr	r3, [r3, #0]
    381a:	f013 0f20 	tst.w	r3, #32
    381e:	d00d      	beq.n	383c <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    3820:	4b09      	ldr	r3, [pc, #36]	; (3848 <USART3_handler+0x3c>)
    3822:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    3826:	1c51      	adds	r1, r2, #1
    3828:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    382c:	4907      	ldr	r1, [pc, #28]	; (384c <USART3_handler+0x40>)
    382e:	6849      	ldr	r1, [r1, #4]
    3830:	441a      	add	r2, r3
    3832:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3834:	7cda      	ldrb	r2, [r3, #19]
    3836:	f002 020f 	and.w	r2, r2, #15
    383a:	74da      	strb	r2, [r3, #19]
		}
}
    383c:	bc01      	pop	{r0}
    383e:	4685      	mov	sp, r0
    3840:	4770      	bx	lr
    3842:	bf00      	nop
    3844:	40013800 	.word	0x40013800
    3848:	200006c8 	.word	0x200006c8
    384c:	40004800 	.word	0x40004800
