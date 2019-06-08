
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 d5 2b 00 00     .P. 1........+..
      10:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 d5 2b 00 00     .+...+...+...+..
      20:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 09 02 00 00     .+...+...+......
      30:	d5 2b 00 00 d5 2b 00 00 0d 02 00 00 11 02 00 00     .+...+..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 e7 28 00 00     ........!....(..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 d5 2b 00 00 d5 2b 00 00 49 02 00 00     E....+...+..I...
      80:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 d5 2b 00 00     .+...+...+...+..
      90:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 4d 02 00 00     .+...+...+..M...
      a0:	d5 2b 00 00 19 32 00 00 d5 2b 00 00 31 31 00 00     .+...2...+..11..
      b0:	fd 29 00 00 51 02 00 00 55 02 00 00 d5 2b 00 00     .)..Q...U....+..
      c0:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 d5 2b 00 00     .+...+...+...+..
      d0:	d5 2b 00 00 2b 38 00 00 61 38 00 00 a1 38 00 00     .+..+8..a8...8..
      e0:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 d5 2b 00 00     .+...+...+...+..
      f0:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 d5 2b 00 00     .+...+...+...+..
     100:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 d5 2b 00 00     .+...+...+...+..
     110:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 d5 2b 00 00     .+...+...+...+..
     120:	d5 2b 00 00 d5 2b 00 00 d5 2b 00 00 d5 2b 00 00     .+...+...+...+..

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
     186:	f001 fcf2 	bl	1b6e <main>
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
     1da:	f002 fd03 	bl	2be4 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fd00 	bl	2be4 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fcfd 	bl	2be4 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fcfa 	bl	2be4 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	000040cc 	.word	0x000040cc
     1f8:	000040a8 	.word	0x000040a8
     1fc:	000040c0 	.word	0x000040c0
     200:	000040dc 	.word	0x000040dc

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fce6 	bl	2bd4 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fce4 	bl	2bd4 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fce2 	bl	2bd4 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fce0 	bl	2bd4 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fcde 	bl	2bd4 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fcdc 	bl	2bd4 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fcda 	bl	2bd4 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fcd8 	bl	2bd4 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fcd6 	bl	2bd4 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fcd4 	bl	2bd4 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fcd2 	bl	2bd4 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fcd0 	bl	2bd4 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fcce 	bl	2bd4 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fccc 	bl	2bd4 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fcca 	bl	2bd4 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fcc8 	bl	2bd4 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fcc6 	bl	2bd4 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fcc4 	bl	2bd4 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fcc2 	bl	2bd4 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fcc0 	bl	2bd4 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fcbe 	bl	2bd4 <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 fcbc 	bl	2bd4 <reset_mcu>
_default_handler(USART2_handler) // 38
     25c:	f002 fcba 	bl	2bd4 <reset_mcu>
_default_handler(USART3_handler) // 39
     260:	f002 fcb8 	bl	2bd4 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fcb6 	bl	2bd4 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fcb4 	bl	2bd4 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fcb2 	bl	2bd4 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fcb0 	bl	2bd4 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fcae 	bl	2bd4 <reset_mcu>

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
     316:	f002 fce1 	bl	2cdc <get_font>
     31a:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     31c:	2002      	movs	r0, #2
     31e:	f002 fcd7 	bl	2cd0 <select_font>
	new_line();
     322:	f002 fce1 	bl	2ce8 <new_line>
	print(msg);
     326:	4628      	mov	r0, r5
     328:	f002 fdc4 	bl	2eb4 <print>
	switch(error_code){
     32c:	2c02      	cmp	r4, #2
     32e:	d039      	beq.n	3a4 <print_vms+0x94>
     330:	2c03      	cmp	r4, #3
     332:	d102      	bne.n	33a <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     334:	481d      	ldr	r0, [pc, #116]	; (3ac <print_vms+0x9c>)
     336:	f002 fdbd 	bl	2eb4 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     33a:	481d      	ldr	r0, [pc, #116]	; (3b0 <print_vms+0xa0>)
     33c:	f002 fdba 	bl	2eb4 <print>
	print_hex(vms.pc-2);
     340:	4d1c      	ldr	r5, [pc, #112]	; (3b4 <print_vms+0xa4>)
     342:	8828      	ldrh	r0, [r5, #0]
     344:	2110      	movs	r1, #16
     346:	3802      	subs	r0, #2
     348:	f002 fdcf 	bl	2eea <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     34c:	7e28      	ldrb	r0, [r5, #24]
     34e:	7e6b      	ldrb	r3, [r5, #25]
     350:	2110      	movs	r1, #16
     352:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     356:	f002 fdc8 	bl	2eea <print_int>
	new_line();
     35a:	f002 fcc5 	bl	2ce8 <new_line>
	print("I:");
     35e:	4816      	ldr	r0, [pc, #88]	; (3b8 <print_vms+0xa8>)
     360:	f002 fda8 	bl	2eb4 <print>
	print_hex(vms.ix);
     364:	2110      	movs	r1, #16
     366:	8868      	ldrh	r0, [r5, #2]
     368:	f002 fdbf 	bl	2eea <print_int>
	print(" SP:");
     36c:	4813      	ldr	r0, [pc, #76]	; (3bc <print_vms+0xac>)
     36e:	f002 fda1 	bl	2eb4 <print>
	print_hex(vms.sp);
     372:	2110      	movs	r1, #16
     374:	7928      	ldrb	r0, [r5, #4]
     376:	f002 fdb8 	bl	2eea <print_int>
	new_line();
     37a:	f002 fcb5 	bl	2ce8 <new_line>
	print("var[]:");
     37e:	4810      	ldr	r0, [pc, #64]	; (3c0 <print_vms+0xb0>)
     380:	f002 fd98 	bl	2eb4 <print>
     384:	1dac      	adds	r4, r5, #6
     386:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     388:	2610      	movs	r6, #16
     38a:	4631      	mov	r1, r6
     38c:	f814 0b01 	ldrb.w	r0, [r4], #1
     390:	f002 fdab 	bl	2eea <print_int>
	for (int i=0;i<16;i++){
     394:	42ac      	cmp	r4, r5
     396:	d1f8      	bne.n	38a <print_vms+0x7a>
	}
	new_line();
     398:	f002 fca6 	bl	2ce8 <new_line>
	select_font(orig_font);
     39c:	4638      	mov	r0, r7
     39e:	f002 fc97 	bl	2cd0 <select_font>
     3a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3a4:	4807      	ldr	r0, [pc, #28]	; (3c4 <print_vms+0xb4>)
     3a6:	f002 fd85 	bl	2eb4 <print>
		break;
     3aa:	e7c6      	b.n	33a <print_vms+0x2a>
     3ac:	00003e10 	.word	0x00003e10
     3b0:	00003e38 	.word	0x00003e38
     3b4:	20000230 	.word	0x20000230
     3b8:	00003e3c 	.word	0x00003e3c
     3bc:	00003e40 	.word	0x00003e40
     3c0:	00003e48 	.word	0x00003e48
     3c4:	00003e24 	.word	0x00003e24

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
     41c:	f003 f878 	bl	3510 <micro_pause>
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
     43a:	f001 f86d 	bl	1518 <itoa>
     43e:	4601      	mov	r1, r0
     440:	2000      	movs	r0, #0
     442:	f003 f9e5 	bl	3810 <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     446:	7e20      	ldrb	r0, [r4, #24]
     448:	7e63      	ldrb	r3, [r4, #25]
     44a:	2210      	movs	r2, #16
     44c:	a902      	add	r1, sp, #8
     44e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     452:	f001 f861 	bl	1518 <itoa>
     456:	4601      	mov	r1, r0
     458:	2000      	movs	r0, #0
     45a:	f003 f9d9 	bl	3810 <usart_print>
			_debug_print("\n");
     45e:	4987      	ldr	r1, [pc, #540]	; (67c <chip_vm+0x28c>)
     460:	2000      	movs	r0, #0
     462:	f003 f9d5 	bl	3810 <usart_print>
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
     4a0:	f002 fdc4 	bl	302c <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4a4:	2100      	movs	r1, #0
     4a6:	4876      	ldr	r0, [pc, #472]	; (680 <chip_vm+0x290>)
     4a8:	f7ff ff32 	bl	310 <print_vms>
			select_console(LOCAL);
     4ac:	2000      	movs	r0, #0
     4ae:	f002 fdbd 	bl	302c <select_console>
			break;
     4b2:	e7d8      	b.n	466 <chip_vm+0x76>
			select_console(SERIAL);
     4b4:	2001      	movs	r0, #1
     4b6:	f002 fdb9 	bl	302c <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4ba:	2100      	movs	r1, #0
     4bc:	4870      	ldr	r0, [pc, #448]	; (680 <chip_vm+0x290>)
     4be:	f7ff ff27 	bl	310 <print_vms>
			print("vt100 keyboard to continue\n");
     4c2:	4870      	ldr	r0, [pc, #448]	; (684 <chip_vm+0x294>)
     4c4:	f002 fcf6 	bl	2eb4 <print>
			get_char();
     4c8:	f002 fdb6 	bl	3038 <get_char>
			select_console(LOCAL);
     4cc:	2000      	movs	r0, #0
     4ce:	f002 fdad 	bl	302c <select_console>
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
     534:	f001 f904 	bl	1740 <gfx_scroll_down>
     538:	e0ab      	b.n	692 <chip_vm+0x2a2>
				gfx_scroll_up(vms.b2&0xf);					
     53a:	f003 000f 	and.w	r0, r3, #15
     53e:	f001 f8d9 	bl	16f4 <gfx_scroll_up>
     542:	e0a6      	b.n	692 <chip_vm+0x2a2>
					exit_code=CHIP_BAD_OPCODE;
     544:	f04f 0802 	mov.w	r8, #2
     548:	f000 bc1b 	b.w	d82 <chip_vm+0x992>
					gfx_cls();
     54c:	f001 f8be 	bl	16cc <gfx_cls>
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
     564:	f001 f93e 	bl	17e4 <gfx_scroll_right>
					break;
     568:	e093      	b.n	692 <chip_vm+0x2a2>
					gfx_scroll_left(4);
     56a:	2004      	movs	r0, #4
     56c:	f001 f90c 	bl	1788 <gfx_scroll_left>
					break;
     570:	e08f      	b.n	692 <chip_vm+0x2a2>
					set_video_mode(VM_SCHIP);
     572:	2001      	movs	r0, #1
     574:	f002 ff8e 	bl	3494 <set_video_mode>
					break; 
     578:	e08b      	b.n	692 <chip_vm+0x2a2>
					set_video_mode(VM_BPCHIP);
     57a:	2000      	movs	r0, #0
     57c:	f002 ff8a 	bl	3494 <set_video_mode>
					break;
     580:	e087      	b.n	692 <chip_vm+0x2a2>
					set_palette((const uint8_t*)&game_ram[vms.ix]);
     582:	8863      	ldrh	r3, [r4, #2]
     584:	483c      	ldr	r0, [pc, #240]	; (678 <chip_vm+0x288>)
     586:	4418      	add	r0, r3
     588:	f001 f848 	bl	161c <set_palette>
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
     644:	f000 fef7 	bl	1436 <move>
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
     668:	f000 fee5 	bl	1436 <move>
				break;
     66c:	e011      	b.n	692 <chip_vm+0x2a2>
     66e:	bf00      	nop
     670:	20000230 	.word	0x20000230
     674:	51eb851f 	.word	0x51eb851f
     678:	20000700 	.word	0x20000700
     67c:	00003f5c 	.word	0x00003f5c
     680:	00003e50 	.word	0x00003e50
     684:	00003e64 	.word	0x00003e64
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
     87c:	f002 f896 	bl	29ac <key_tone>
				break;
     880:	e707      	b.n	692 <chip_vm+0x2a2>
				select_font(FONT_ASCII);
     882:	2002      	movs	r0, #2
     884:	f002 fa24 	bl	2cd0 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     888:	44a1      	add	r9, r4
     88a:	44a0      	add	r8, r4
     88c:	f899 1006 	ldrb.w	r1, [r9, #6]
     890:	f898 0006 	ldrb.w	r0, [r8, #6]
     894:	f002 fada 	bl	2e4c <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     898:	8860      	ldrh	r0, [r4, #2]
     89a:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9a4 <chip_vm+0x5b4>
     89e:	4448      	add	r0, r9
     8a0:	f002 fb08 	bl	2eb4 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8a4:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8a8:	eb09 0008 	add.w	r0, r9, r8
     8ac:	f000 fdcd 	bl	144a <strlen>
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
     8cc:	f000 feb2 	bl	1634 <gfx_blit>
				break;
     8d0:	e6df      	b.n	692 <chip_vm+0x2a2>
				noise((x<<4)+y);
     8d2:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8d6:	f002 f87d 	bl	29d4 <noise>
				break;
     8da:	e6da      	b.n	692 <chip_vm+0x2a2>
				key_tone(vms.var[x],vms.var[y],true);
     8dc:	44a1      	add	r9, r4
     8de:	44a0      	add	r8, r4
     8e0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8e4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8e8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8ec:	f002 f85e 	bl	29ac <key_tone>
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
     91c:	f002 fde4 	bl	34e8 <get_video_params>
					vms.var[x]=vparams->hres;
     920:	44a0      	add	r8, r4
     922:	8983      	ldrh	r3, [r0, #12]
     924:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     928:	e6b3      	b.n	692 <chip_vm+0x2a2>
					vmode_params_t *vparams=get_video_params();
     92a:	f002 fddd 	bl	34e8 <get_video_params>
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
     9ca:	f000 ff3f 	bl	184c <gfx_get_pixel>
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
     a44:	f000 ff28 	bl	1898 <gfx_sprite>
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
     a60:	f000 ff1a 	bl	1898 <gfx_sprite>
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
     a84:	f000 ff08 	bl	1898 <gfx_sprite>
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
     a9e:	f000 fefb 	bl	1898 <gfx_sprite>
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
     ab8:	f000 fb82 	bl	11c0 <btn_query_down>
     abc:	2800      	cmp	r0, #0
     abe:	f43f ade8 	beq.w	692 <chip_vm+0x2a2>
     ac2:	8823      	ldrh	r3, [r4, #0]
     ac4:	3302      	adds	r3, #2
     ac6:	8023      	strh	r3, [r4, #0]
     ac8:	e5e3      	b.n	692 <chip_vm+0x2a2>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     aca:	44a0      	add	r8, r4
     acc:	f898 0006 	ldrb.w	r0, [r8, #6]
     ad0:	f000 fb76 	bl	11c0 <btn_query_down>
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
     c10:	f000 fb0a 	bl	1228 <btn_wait_any>
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
     c32:	f001 fe95 	bl	2960 <tone>
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
     c70:	f002 f82e 	bl	2cd0 <select_font>
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
     c8c:	f002 f820 	bl	2cd0 <select_font>
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
     cd6:	f000 fbae 	bl	1436 <move>
				break;
     cda:	e4da      	b.n	692 <chip_vm+0x2a2>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     cdc:	8863      	ldrh	r3, [r4, #2]
     cde:	f108 0201 	add.w	r2, r8, #1
     ce2:	4933      	ldr	r1, [pc, #204]	; (db0 <chip_vm+0x9c0>)
     ce4:	4419      	add	r1, r3
     ce6:	4630      	mov	r0, r6
     ce8:	f000 fba5 	bl	1436 <move>
				break;
     cec:	e4d1      	b.n	692 <chip_vm+0x2a2>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     cee:	8863      	ldrh	r3, [r4, #2]
     cf0:	f108 0201 	add.w	r2, r8, #1
     cf4:	4631      	mov	r1, r6
     cf6:	482e      	ldr	r0, [pc, #184]	; (db0 <chip_vm+0x9c0>)
     cf8:	4418      	add	r0, r3
     cfa:	f000 fb9c 	bl	1436 <move>
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
     d84:	f001 ffa4 	bl	2cd0 <select_font>
	set_keymap(default_kmap);
     d88:	480c      	ldr	r0, [pc, #48]	; (dbc <chip_vm+0x9cc>)
     d8a:	f000 f9cb 	bl	1124 <set_keymap>
	set_video_mode(VM_BPCHIP);
     d8e:	2000      	movs	r0, #0
     d90:	f002 fb80 	bl	3494 <set_video_mode>
	return exit_code;
     d94:	4640      	mov	r0, r8
}//schipp()
     d96:	b009      	add	sp, #36	; 0x24
     d98:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     d9c:	f04f 0801 	mov.w	r8, #1
     da0:	e7ef      	b.n	d82 <chip_vm+0x992>
     da2:	bf00      	nop
     da4:	00003cdc 	.word	0x00003cdc
     da8:	00003c3c 	.word	0x00003c3c
     dac:	cccccccd 	.word	0xcccccccd
     db0:	20000700 	.word	0x20000700
     db4:	200006c4 	.word	0x200006c4
     db8:	0001fff0 	.word	0x0001fff0
     dbc:	00003d3c 	.word	0x00003d3c

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
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    10b2:	4b1b      	ldr	r3, [pc, #108]	; (1120 <shift_out+0x78>)
    10b4:	e003      	b.n	10be <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
    10b6:	0052      	lsls	r2, r2, #1
    10b8:	b2d2      	uxtb	r2, r2
    while (mask){
    10ba:	3c01      	subs	r4, #1
    10bc:	d01d      	beq.n	10fa <shift_out+0x52>
        if (byte&mask){
    10be:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    10c0:	68d9      	ldr	r1, [r3, #12]
    10c2:	bf14      	ite	ne
    10c4:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    10c8:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
    10cc:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10ce:	68d9      	ldr	r1, [r3, #12]
    10d0:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
    10d4:	60d9      	str	r1, [r3, #12]
        _clk_delay();
    10d6:	bf00      	nop
    10d8:	bf00      	nop
    10da:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10dc:	68d9      	ldr	r1, [r3, #12]
    10de:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    10e2:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
    10e4:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
    10e6:	6899      	ldr	r1, [r3, #8]
    10e8:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
    10ec:	6099      	str	r1, [r3, #8]
    10ee:	2900      	cmp	r1, #0
    10f0:	d0e1      	beq.n	10b6 <shift_out+0xe>
    10f2:	f060 007f 	orn	r0, r0, #127	; 0x7f
    10f6:	b2c0      	uxtb	r0, r0
    10f8:	e7dd      	b.n	10b6 <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    10fa:	4b09      	ldr	r3, [pc, #36]	; (1120 <shift_out+0x78>)
    10fc:	68da      	ldr	r2, [r3, #12]
    10fe:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    1102:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    1104:	68da      	ldr	r2, [r3, #12]
    1106:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    110a:	60da      	str	r2, [r3, #12]
    _clk_delay();
    110c:	bf00      	nop
    110e:	bf00      	nop
    1110:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    1112:	68da      	ldr	r2, [r3, #12]
    1114:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    1118:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    111a:	bc30      	pop	{r4, r5}
    111c:	4770      	bx	lr
    111e:	bf00      	nop
    1120:	40010c00 	.word	0x40010c00

00001124 <set_keymap>:
void set_keymap(const uint8_t *kmap){
    1124:	1e43      	subs	r3, r0, #1
    1126:	4a04      	ldr	r2, [pc, #16]	; (1138 <set_keymap+0x14>)
    1128:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    112a:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    112e:	f802 1f01 	strb.w	r1, [r2, #1]!
    1132:	4283      	cmp	r3, r0
    1134:	d1f9      	bne.n	112a <set_keymap+0x6>
}
    1136:	4770      	bx	lr
    1138:	200006af 	.word	0x200006af

0000113c <gamepad_init>:
void gamepad_init(){
    113c:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    113e:	4c0b      	ldr	r4, [pc, #44]	; (116c <gamepad_init+0x30>)
    1140:	2202      	movs	r2, #2
    1142:	210f      	movs	r1, #15
    1144:	4620      	mov	r0, r4
    1146:	f000 fa35 	bl	15b4 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    114a:	2202      	movs	r2, #2
    114c:	210d      	movs	r1, #13
    114e:	4620      	mov	r0, r4
    1150:	f000 fa30 	bl	15b4 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    1154:	2208      	movs	r2, #8
    1156:	210e      	movs	r1, #14
    1158:	4620      	mov	r0, r4
    115a:	f000 fa2b 	bl	15b4 <config_pin>
    btn_state=0xff;
    115e:	22ff      	movs	r2, #255	; 0xff
    1160:	4b03      	ldr	r3, [pc, #12]	; (1170 <gamepad_init+0x34>)
    1162:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1164:	4803      	ldr	r0, [pc, #12]	; (1174 <gamepad_init+0x38>)
    1166:	f7ff ffdd 	bl	1124 <set_keymap>
    116a:	bd10      	pop	{r4, pc}
    116c:	40010c00 	.word	0x40010c00
    1170:	20002700 	.word	0x20002700
    1174:	00003d3c 	.word	0x00003d3c

00001178 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1178:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    117a:	20fe      	movs	r0, #254	; 0xfe
    117c:	f7ff ff94 	bl	10a8 <shift_out>
    1180:	4b0c      	ldr	r3, [pc, #48]	; (11b4 <read_gamepad+0x3c>)
    1182:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1184:	781b      	ldrb	r3, [r3, #0]
    1186:	f013 0f12 	tst.w	r3, #18
    118a:	d111      	bne.n	11b0 <read_gamepad+0x38>
        while (btn_state!=0xff){
    118c:	4b09      	ldr	r3, [pc, #36]	; (11b4 <read_gamepad+0x3c>)
    118e:	781b      	ldrb	r3, [r3, #0]
    1190:	b2db      	uxtb	r3, r3
    1192:	2bff      	cmp	r3, #255	; 0xff
    1194:	d009      	beq.n	11aa <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    1196:	25fe      	movs	r5, #254	; 0xfe
    1198:	4c06      	ldr	r4, [pc, #24]	; (11b4 <read_gamepad+0x3c>)
    119a:	4628      	mov	r0, r5
    119c:	f7ff ff84 	bl	10a8 <shift_out>
    11a0:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    11a2:	7823      	ldrb	r3, [r4, #0]
    11a4:	b2db      	uxtb	r3, r3
    11a6:	2bff      	cmp	r3, #255	; 0xff
    11a8:	d1f7      	bne.n	119a <read_gamepad+0x22>
        };
        _reset_mcu();
    11aa:	4a03      	ldr	r2, [pc, #12]	; (11b8 <read_gamepad+0x40>)
    11ac:	4b03      	ldr	r3, [pc, #12]	; (11bc <read_gamepad+0x44>)
    11ae:	601a      	str	r2, [r3, #0]
    11b0:	bd38      	pop	{r3, r4, r5, pc}
    11b2:	bf00      	nop
    11b4:	20002700 	.word	0x20002700
    11b8:	05fa0004 	.word	0x05fa0004
    11bc:	e000ed0c 	.word	0xe000ed0c

000011c0 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    11c0:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    11c2:	f7ff ff57 	bl	1074 <btn_mask>
    return !(btn_state&mask);
    11c6:	4b03      	ldr	r3, [pc, #12]	; (11d4 <btn_query_down+0x14>)
    11c8:	781b      	ldrb	r3, [r3, #0]
    11ca:	4203      	tst	r3, r0
}
    11cc:	bf0c      	ite	eq
    11ce:	2001      	moveq	r0, #1
    11d0:	2000      	movne	r0, #0
    11d2:	bd08      	pop	{r3, pc}
    11d4:	20002700 	.word	0x20002700

000011d8 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    11d8:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11da:	f7ff ff4b 	bl	1074 <btn_mask>
    11de:	4606      	mov	r6, r0
    int frame_count=0;
    11e0:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    11e2:	4d06      	ldr	r5, [pc, #24]	; (11fc <btn_wait_down+0x24>)
    11e4:	e000      	b.n	11e8 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11e6:	2400      	movs	r4, #0
        frame_sync();
    11e8:	f002 f944 	bl	3474 <frame_sync>
        if (!(btn_state&mask)){
    11ec:	782b      	ldrb	r3, [r5, #0]
    11ee:	4233      	tst	r3, r6
    11f0:	d1f9      	bne.n	11e6 <btn_wait_down+0xe>
            frame_count++;
    11f2:	3401      	adds	r4, #1
    while (frame_count<3){
    11f4:	2c02      	cmp	r4, #2
    11f6:	ddf7      	ble.n	11e8 <btn_wait_down+0x10>
        }
    }
}
    11f8:	bd70      	pop	{r4, r5, r6, pc}
    11fa:	bf00      	nop
    11fc:	20002700 	.word	0x20002700

00001200 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1200:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    1202:	f7ff ff37 	bl	1074 <btn_mask>
    1206:	4606      	mov	r6, r0
    int frame_count=0;
    1208:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    120a:	4d06      	ldr	r5, [pc, #24]	; (1224 <btn_wait_up+0x24>)
    120c:	e000      	b.n	1210 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    120e:	2400      	movs	r4, #0
        frame_sync();
    1210:	f002 f930 	bl	3474 <frame_sync>
        if ((btn_state&mask)){
    1214:	782b      	ldrb	r3, [r5, #0]
    1216:	4233      	tst	r3, r6
    1218:	d0f9      	beq.n	120e <btn_wait_up+0xe>
            frame_count++;
    121a:	3401      	adds	r4, #1
    while (frame_count<3){
    121c:	2c02      	cmp	r4, #2
    121e:	ddf7      	ble.n	1210 <btn_wait_up+0x10>
        }
    }
}
    1220:	bd70      	pop	{r4, r5, r6, pc}
    1222:	bf00      	nop
    1224:	20002700 	.word	0x20002700

00001228 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1228:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    122a:	4b15      	ldr	r3, [pc, #84]	; (1280 <btn_wait_any+0x58>)
    122c:	781c      	ldrb	r4, [r3, #0]
    122e:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1230:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    1232:	461d      	mov	r5, r3
    1234:	e007      	b.n	1246 <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    1236:	782a      	ldrb	r2, [r5, #0]
    1238:	b2d2      	uxtb	r2, r2
    123a:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    123c:	bf18      	it	ne
    123e:	3601      	addne	r6, #1
    while (frame_count<3){
    1240:	2e02      	cmp	r6, #2
    1242:	dc0a      	bgt.n	125a <btn_wait_any+0x32>
    1244:	461c      	mov	r4, r3
        frame_sync();
    1246:	f002 f915 	bl	3474 <frame_sync>
        if (last_state!=btn_state){
    124a:	782b      	ldrb	r3, [r5, #0]
    124c:	b2db      	uxtb	r3, r3
    124e:	42a3      	cmp	r3, r4
    1250:	d0f1      	beq.n	1236 <btn_wait_any+0xe>
            last_state=btn_state;
    1252:	782c      	ldrb	r4, [r5, #0]
    1254:	b2e4      	uxtb	r4, r4
            frame_count=0;
    1256:	2600      	movs	r6, #0
    1258:	e7f5      	b.n	1246 <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    125a:	43e3      	mvns	r3, r4
    mask>>=1;
    125c:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1260:	b15b      	cbz	r3, 127a <btn_wait_any+0x52>
    1262:	2200      	movs	r2, #0
    1264:	3201      	adds	r2, #1
    1266:	b2d2      	uxtb	r2, r2
    1268:	085b      	lsrs	r3, r3, #1
    126a:	d1fb      	bne.n	1264 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    126c:	4b05      	ldr	r3, [pc, #20]	; (1284 <btn_wait_any+0x5c>)
    126e:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1270:	4620      	mov	r0, r4
    1272:	f7ff ffc5 	bl	1200 <btn_wait_up>
    return btn;
}
    1276:	4620      	mov	r0, r4
    1278:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    127a:	461a      	mov	r2, r3
    127c:	e7f6      	b.n	126c <btn_wait_any+0x44>
    127e:	bf00      	nop
    1280:	20002700 	.word	0x20002700
    1284:	200006b0 	.word	0x200006b0

00001288 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1288:	4b01      	ldr	r3, [pc, #4]	; (1290 <btn_set_value+0x8>)
    128a:	5419      	strb	r1, [r3, r0]
    128c:	4770      	bx	lr
    128e:	bf00      	nop
    1290:	200006b0 	.word	0x200006b0

00001294 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    1294:	4800      	ldr	r0, [pc, #0]	; (1298 <get_keymap+0x4>)
    1296:	4770      	bx	lr
    1298:	200006b0 	.word	0x200006b0

0000129c <btn_any_down>:

// wait for any button to be down
uint8_t btn_any_down(){
    while (btn_state==0xff);
    129c:	4a0a      	ldr	r2, [pc, #40]	; (12c8 <btn_any_down+0x2c>)
    129e:	7813      	ldrb	r3, [r2, #0]
    12a0:	b2db      	uxtb	r3, r3
    12a2:	2bff      	cmp	r3, #255	; 0xff
    12a4:	d0fb      	beq.n	129e <btn_any_down+0x2>
    return buttons[btn_idx(btn_state^0xff)];
    12a6:	4b08      	ldr	r3, [pc, #32]	; (12c8 <btn_any_down+0x2c>)
    12a8:	781a      	ldrb	r2, [r3, #0]
    12aa:	43d2      	mvns	r2, r2
    mask>>=1;
    12ac:	f3c2 0246 	ubfx	r2, r2, #1, #7
    while(mask){idx++; mask>>=1;}
    12b0:	b13a      	cbz	r2, 12c2 <btn_any_down+0x26>
    12b2:	2300      	movs	r3, #0
    12b4:	3301      	adds	r3, #1
    12b6:	b2db      	uxtb	r3, r3
    12b8:	0852      	lsrs	r2, r2, #1
    12ba:	d1fb      	bne.n	12b4 <btn_any_down+0x18>
    
    12bc:	4a03      	ldr	r2, [pc, #12]	; (12cc <btn_any_down+0x30>)
    12be:	5cd0      	ldrb	r0, [r2, r3]
    12c0:	4770      	bx	lr
    uint8_t idx=0;
    12c2:	4613      	mov	r3, r2
    12c4:	e7fa      	b.n	12bc <btn_any_down+0x20>
    12c6:	bf00      	nop
    12c8:	20002700 	.word	0x20002700
    12cc:	200006b0 	.word	0x200006b0

000012d0 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    12d0:	4b06      	ldr	r3, [pc, #24]	; (12ec <games_count+0x1c>)
    12d2:	691b      	ldr	r3, [r3, #16]
    12d4:	b13b      	cbz	r3, 12e6 <games_count+0x16>
    12d6:	4b05      	ldr	r3, [pc, #20]	; (12ec <games_count+0x1c>)
    12d8:	2000      	movs	r0, #0
    for (i=0;;i++){
    12da:	3001      	adds	r0, #1
    12dc:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    12de:	691a      	ldr	r2, [r3, #16]
    12e0:	2a00      	cmp	r2, #0
    12e2:	d1fa      	bne.n	12da <games_count+0xa>
    12e4:	4770      	bx	lr
    for (i=0;;i++){
    12e6:	2000      	movs	r0, #0
    }
    return i;
}
    12e8:	4770      	bx	lr
    12ea:	bf00      	nop
    12ec:	20000004 	.word	0x20000004

000012f0 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    12f0:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    12f2:	7803      	ldrb	r3, [r0, #0]
    12f4:	b1fb      	cbz	r3, 1336 <strcmp+0x46>
    12f6:	780a      	ldrb	r2, [r1, #0]
    12f8:	b17a      	cbz	r2, 131a <strcmp+0x2a>
		if (*s1<*s2){
    12fa:	4293      	cmp	r3, r2
    12fc:	d313      	bcc.n	1326 <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    12fe:	d815      	bhi.n	132c <strcmp+0x3c>
    1300:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    1302:	4621      	mov	r1, r4
	while (*s1 && *s2){
    1304:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    1308:	b1ab      	cbz	r3, 1336 <strcmp+0x46>
    130a:	f814 2b01 	ldrb.w	r2, [r4], #1
    130e:	b122      	cbz	r2, 131a <strcmp+0x2a>
		if (*s1<*s2){
    1310:	4293      	cmp	r3, r2
    1312:	d30d      	bcc.n	1330 <strcmp+0x40>
		}else if (*s1>*s2){
    1314:	d9f5      	bls.n	1302 <strcmp+0x12>
			result=1;
    1316:	2001      	movs	r0, #1
    1318:	e003      	b.n	1322 <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    131a:	7808      	ldrb	r0, [r1, #0]
    131c:	fab0 f080 	clz	r0, r0
    1320:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    1322:	bc10      	pop	{r4}
    1324:	4770      	bx	lr
			result=-1;
    1326:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    132a:	e7fa      	b.n	1322 <strcmp+0x32>
			result=1;
    132c:	2001      	movs	r0, #1
    132e:	e7f8      	b.n	1322 <strcmp+0x32>
			result=-1;
    1330:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1334:	e7f5      	b.n	1322 <strcmp+0x32>
		if (!*s1 && *s2){
    1336:	7808      	ldrb	r0, [r1, #0]
    1338:	3000      	adds	r0, #0
    133a:	bf18      	it	ne
    133c:	2001      	movne	r0, #1
    133e:	4240      	negs	r0, r0
    1340:	e7ef      	b.n	1322 <strcmp+0x32>

00001342 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1342:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    1346:	b2db      	uxtb	r3, r3
    1348:	2b19      	cmp	r3, #25
    134a:	d906      	bls.n	135a <alpha+0x18>
    134c:	3841      	subs	r0, #65	; 0x41
    134e:	b2c0      	uxtb	r0, r0
    1350:	2819      	cmp	r0, #25
    1352:	bf8c      	ite	hi
    1354:	2000      	movhi	r0, #0
    1356:	2001      	movls	r0, #1
    1358:	4770      	bx	lr
    135a:	2001      	movs	r0, #1
}
    135c:	4770      	bx	lr

0000135e <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    135e:	3830      	subs	r0, #48	; 0x30
    1360:	b2c0      	uxtb	r0, r0
}
    1362:	2809      	cmp	r0, #9
    1364:	bf8c      	ite	hi
    1366:	2000      	movhi	r0, #0
    1368:	2001      	movls	r0, #1
    136a:	4770      	bx	lr

0000136c <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    136c:	2860      	cmp	r0, #96	; 0x60
    136e:	bf84      	itt	hi
    1370:	3820      	subhi	r0, #32
    1372:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1374:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1378:	b2db      	uxtb	r3, r3
    137a:	2b09      	cmp	r3, #9
    137c:	d906      	bls.n	138c <hexdigit+0x20>
    137e:	3841      	subs	r0, #65	; 0x41
    1380:	b2c0      	uxtb	r0, r0
    1382:	2805      	cmp	r0, #5
    1384:	bf8c      	ite	hi
    1386:	2000      	movhi	r0, #0
    1388:	2001      	movls	r0, #1
    138a:	4770      	bx	lr
    138c:	2001      	movs	r0, #1
}
    138e:	4770      	bx	lr

00001390 <atoi>:

int atoi(const char *str){
    1390:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1394:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1396:	7803      	ldrb	r3, [r0, #0]
    1398:	2b20      	cmp	r3, #32
    139a:	d103      	bne.n	13a4 <atoi+0x14>
    139c:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    13a0:	2b20      	cmp	r3, #32
    13a2:	d0fb      	beq.n	139c <atoi+0xc>
	if (*str=='-'){
    13a4:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    13a6:	bf06      	itte	eq
    13a8:	3501      	addeq	r5, #1
		sign=-1;
    13aa:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    13ae:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    13b2:	782b      	ldrb	r3, [r5, #0]
    13b4:	2b24      	cmp	r3, #36	; 0x24
    13b6:	d005      	beq.n	13c4 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    13b8:	2b30      	cmp	r3, #48	; 0x30
    13ba:	d00a      	beq.n	13d2 <atoi+0x42>
	int n=0,sign=1,base=10;
    13bc:	270a      	movs	r7, #10
    13be:	3d01      	subs	r5, #1
    13c0:	2600      	movs	r6, #0
    13c2:	e026      	b.n	1412 <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    13c4:	7868      	ldrb	r0, [r5, #1]
    13c6:	f7ff ffd1 	bl	136c <hexdigit>
    13ca:	b160      	cbz	r0, 13e6 <atoi+0x56>
		str++;
    13cc:	3501      	adds	r5, #1
		base=16;
    13ce:	2710      	movs	r7, #16
		str++;
    13d0:	e7f5      	b.n	13be <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    13d2:	786b      	ldrb	r3, [r5, #1]
    13d4:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    13d8:	2b58      	cmp	r3, #88	; 0x58
    13da:	d001      	beq.n	13e0 <atoi+0x50>
	int n=0,sign=1,base=10;
    13dc:	270a      	movs	r7, #10
    13de:	e7ee      	b.n	13be <atoi+0x2e>
		base=16;
		str+=2;
    13e0:	3502      	adds	r5, #2
		base=16;
    13e2:	2710      	movs	r7, #16
    13e4:	e7eb      	b.n	13be <atoi+0x2e>
	int n=0,sign=1,base=10;
    13e6:	270a      	movs	r7, #10
    13e8:	e7e9      	b.n	13be <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13ea:	4620      	mov	r0, r4
    13ec:	f7ff ffbe 	bl	136c <hexdigit>
    13f0:	3000      	adds	r0, #0
    13f2:	bf18      	it	ne
    13f4:	2001      	movne	r0, #1
    13f6:	b1d0      	cbz	r0, 142e <atoi+0x9e>
		if (c>='a'){c-=32;}
    13f8:	2c60      	cmp	r4, #96	; 0x60
    13fa:	bf84      	itt	hi
    13fc:	3c20      	subhi	r4, #32
    13fe:	b2e4      	uxtbhi	r4, r4
		c-='0';
    1400:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    1404:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    1406:	2b09      	cmp	r3, #9
    1408:	bf84      	itt	hi
    140a:	3c37      	subhi	r4, #55	; 0x37
    140c:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    140e:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1412:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    1416:	2c00      	cmp	r4, #0
    1418:	d0e7      	beq.n	13ea <atoi+0x5a>
    141a:	2f0a      	cmp	r7, #10
    141c:	d1e5      	bne.n	13ea <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    141e:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    1422:	b2c0      	uxtb	r0, r0
    1424:	2809      	cmp	r0, #9
    1426:	bf8c      	ite	hi
    1428:	2000      	movhi	r0, #0
    142a:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    142c:	e7e3      	b.n	13f6 <atoi+0x66>
		str++;
	}
	return sign*n;
}
    142e:	fb08 f006 	mul.w	r0, r8, r6
    1432:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001436 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    1436:	b13a      	cbz	r2, 1448 <move+0x12>
    1438:	3901      	subs	r1, #1
    143a:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    143c:	f810 3b01 	ldrb.w	r3, [r0], #1
    1440:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1444:	4290      	cmp	r0, r2
    1446:	d1f9      	bne.n	143c <move+0x6>
    1448:	4770      	bx	lr

0000144a <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    144a:	7803      	ldrb	r3, [r0, #0]
    144c:	b13b      	cbz	r3, 145e <strlen+0x14>
    144e:	4603      	mov	r3, r0
    1450:	2000      	movs	r0, #0
    1452:	3001      	adds	r0, #1
    1454:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1458:	2a00      	cmp	r2, #0
    145a:	d1fa      	bne.n	1452 <strlen+0x8>
    145c:	4770      	bx	lr
	int ll=0;
    145e:	2000      	movs	r0, #0
	return ll;
}
    1460:	4770      	bx	lr

00001462 <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1462:	b121      	cbz	r1, 146e <fill+0xc>
    1464:	1841      	adds	r1, r0, r1
    1466:	f800 2b01 	strb.w	r2, [r0], #1
    146a:	4288      	cmp	r0, r1
    146c:	d1fb      	bne.n	1466 <fill+0x4>
    146e:	4770      	bx	lr

00001470 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1470:	3861      	subs	r0, #97	; 0x61
    1472:	b2c0      	uxtb	r0, r0
}
    1474:	2819      	cmp	r0, #25
    1476:	bf8c      	ite	hi
    1478:	2000      	movhi	r0, #0
    147a:	2001      	movls	r0, #1
    147c:	4770      	bx	lr

0000147e <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    147e:	3841      	subs	r0, #65	; 0x41
    1480:	b2c0      	uxtb	r0, r0
}
    1482:	2819      	cmp	r0, #25
    1484:	bf8c      	ite	hi
    1486:	2000      	movhi	r0, #0
    1488:	2001      	movls	r0, #1
    148a:	4770      	bx	lr

0000148c <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    148c:	7803      	ldrb	r3, [r0, #0]
    148e:	b153      	cbz	r3, 14a6 <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1490:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1494:	b2d2      	uxtb	r2, r2
    1496:	2a19      	cmp	r2, #25
    1498:	bf9c      	itt	ls
    149a:	3b20      	subls	r3, #32
    149c:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    149e:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    14a2:	2b00      	cmp	r3, #0
    14a4:	d1f4      	bne.n	1490 <uppercase+0x4>
    14a6:	4770      	bx	lr

000014a8 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    14a8:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    14aa:	1844      	adds	r4, r0, r1
    14ac:	5c43      	ldrb	r3, [r0, r1]
    14ae:	b153      	cbz	r3, 14c6 <scan+0x1e>
    14b0:	429a      	cmp	r2, r3
    14b2:	d00a      	beq.n	14ca <scan+0x22>
    14b4:	4608      	mov	r0, r1
    14b6:	3001      	adds	r0, #1
    14b8:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14bc:	b10b      	cbz	r3, 14c2 <scan+0x1a>
    14be:	4293      	cmp	r3, r2
    14c0:	d1f9      	bne.n	14b6 <scan+0xe>
	return start;
}
    14c2:	bc10      	pop	{r4}
    14c4:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    14c6:	4608      	mov	r0, r1
    14c8:	e7fb      	b.n	14c2 <scan+0x1a>
    14ca:	4608      	mov	r0, r1
	return start;
    14cc:	e7f9      	b.n	14c2 <scan+0x1a>

000014ce <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    14ce:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    14d0:	1844      	adds	r4, r0, r1
    14d2:	5c43      	ldrb	r3, [r0, r1]
    14d4:	b153      	cbz	r3, 14ec <skip+0x1e>
    14d6:	429a      	cmp	r2, r3
    14d8:	d10a      	bne.n	14f0 <skip+0x22>
    14da:	4608      	mov	r0, r1
    14dc:	3001      	adds	r0, #1
    14de:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14e2:	b10b      	cbz	r3, 14e8 <skip+0x1a>
    14e4:	4293      	cmp	r3, r2
    14e6:	d0f9      	beq.n	14dc <skip+0xe>
	return start;
}
    14e8:	bc10      	pop	{r4}
    14ea:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    14ec:	4608      	mov	r0, r1
    14ee:	e7fb      	b.n	14e8 <skip+0x1a>
    14f0:	4608      	mov	r0, r1
	return start;
    14f2:	e7f9      	b.n	14e8 <skip+0x1a>

000014f4 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    14f4:	b538      	push	{r3, r4, r5, lr}
    14f6:	4604      	mov	r4, r0
    14f8:	460d      	mov	r5, r1
	s1+=strlen(s1);
    14fa:	f7ff ffa6 	bl	144a <strlen>
    14fe:	4420      	add	r0, r4
	while (*s2){
    1500:	782b      	ldrb	r3, [r5, #0]
    1502:	b133      	cbz	r3, 1512 <strcat+0x1e>
    1504:	4629      	mov	r1, r5
		*s1++=*s2++;
    1506:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    150a:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    150e:	2b00      	cmp	r3, #0
    1510:	d1f9      	bne.n	1506 <strcat+0x12>
	}
	*s1=0;
    1512:	2300      	movs	r3, #0
    1514:	7003      	strb	r3, [r0, #0]
	return s1;
}
    1516:	bd38      	pop	{r3, r4, r5, pc}

00001518 <itoa>:

char *itoa(int n,char *buffer,int base){
    1518:	b5f0      	push	{r4, r5, r6, r7, lr}
    151a:	b085      	sub	sp, #20
    151c:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    151e:	2a0a      	cmp	r2, #10
    1520:	d033      	beq.n	158a <itoa+0x72>
	int i=14,sign=0;
    1522:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    1524:	2300      	movs	r3, #0
    1526:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    152a:	2320      	movs	r3, #32
    152c:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    1530:	b390      	cbz	r0, 1598 <itoa+0x80>
    1532:	f10d 060d 	add.w	r6, sp, #13
    1536:	250e      	movs	r5, #14
		d=n%base+'0';
    1538:	fb90 f3f2 	sdiv	r3, r0, r2
    153c:	fb02 0313 	mls	r3, r2, r3, r0
    1540:	b2db      	uxtb	r3, r3
    1542:	f103 0130 	add.w	r1, r3, #48	; 0x30
    1546:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1548:	2939      	cmp	r1, #57	; 0x39
    154a:	bf84      	itt	hi
    154c:	3337      	addhi	r3, #55	; 0x37
    154e:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1550:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1554:	3d01      	subs	r5, #1
    1556:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    155a:	2800      	cmp	r0, #0
    155c:	d1ec      	bne.n	1538 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    155e:	2d0e      	cmp	r5, #14
    1560:	d01a      	beq.n	1598 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    1562:	2a0a      	cmp	r2, #10
    1564:	d01d      	beq.n	15a2 <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    1566:	2a10      	cmp	r2, #16
    1568:	d105      	bne.n	1576 <itoa+0x5e>
    156a:	3d01      	subs	r5, #1
    156c:	ab04      	add	r3, sp, #16
    156e:	442b      	add	r3, r5
    1570:	2224      	movs	r2, #36	; 0x24
    1572:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    1576:	f1c5 0210 	rsb	r2, r5, #16
    157a:	4621      	mov	r1, r4
    157c:	eb0d 0005 	add.w	r0, sp, r5
    1580:	f7ff ff59 	bl	1436 <move>
	return buffer;
    1584:	4620      	mov	r0, r4
    1586:	b005      	add	sp, #20
    1588:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    158a:	2800      	cmp	r0, #0
    158c:	db01      	blt.n	1592 <itoa+0x7a>
	int i=14,sign=0;
    158e:	2700      	movs	r7, #0
    1590:	e7c8      	b.n	1524 <itoa+0xc>
		n=-n;
    1592:	4240      	negs	r0, r0
		sign=1;
    1594:	2701      	movs	r7, #1
    1596:	e7c5      	b.n	1524 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1598:	2330      	movs	r3, #48	; 0x30
    159a:	f88d 300d 	strb.w	r3, [sp, #13]
    159e:	250d      	movs	r5, #13
    15a0:	e7df      	b.n	1562 <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    15a2:	2f00      	cmp	r7, #0
    15a4:	d0e7      	beq.n	1576 <itoa+0x5e>
    15a6:	3d01      	subs	r5, #1
    15a8:	ab04      	add	r3, sp, #16
    15aa:	442b      	add	r3, r5
    15ac:	222d      	movs	r2, #45	; 0x2d
    15ae:	f803 2c10 	strb.w	r2, [r3, #-16]
    15b2:	e7e0      	b.n	1576 <itoa+0x5e>

000015b4 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    15b4:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    15b6:	08cb      	lsrs	r3, r1, #3
    15b8:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    15bc:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    15be:	f001 011c 	and.w	r1, r1, #28
    15c2:	250f      	movs	r5, #15
    15c4:	408d      	lsls	r5, r1
    15c6:	ea24 0405 	bic.w	r4, r4, r5
    15ca:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    15ce:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    15d2:	fa02 f101 	lsl.w	r1, r2, r1
    15d6:	4321      	orrs	r1, r4
    15d8:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    15dc:	bc30      	pop	{r4, r5}
    15de:	4770      	bx	lr

000015e0 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    15e0:	6880      	ldr	r0, [r0, #8]
    15e2:	2301      	movs	r3, #1
    15e4:	fa03 f101 	lsl.w	r1, r3, r1
}
    15e8:	4008      	ands	r0, r1
    15ea:	4770      	bx	lr

000015ec <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15ec:	b93a      	cbnz	r2, 15fe <write_pin+0x12>
    15ee:	68c3      	ldr	r3, [r0, #12]
    15f0:	2201      	movs	r2, #1
    15f2:	fa02 f101 	lsl.w	r1, r2, r1
    15f6:	ea23 0101 	bic.w	r1, r3, r1
    15fa:	60c1      	str	r1, [r0, #12]
    15fc:	4770      	bx	lr
    15fe:	68c2      	ldr	r2, [r0, #12]
    1600:	2301      	movs	r3, #1
    1602:	fa03 f101 	lsl.w	r1, r3, r1
    1606:	4311      	orrs	r1, r2
    1608:	60c1      	str	r1, [r0, #12]
    160a:	4770      	bx	lr

0000160c <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    160c:	68c2      	ldr	r2, [r0, #12]
    160e:	2301      	movs	r3, #1
    1610:	fa03 f101 	lsl.w	r1, r3, r1
    1614:	4051      	eors	r1, r2
    1616:	60c1      	str	r1, [r0, #12]
    1618:	4770      	bx	lr
	...

0000161c <set_palette>:
static uint8_t palette[4]={0,15,3,5};

const uint8_t DEFAULT_PALETTE[4]={0,15,3,5};

void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    161c:	4b04      	ldr	r3, [pc, #16]	; (1630 <set_palette+0x14>)
    161e:	7802      	ldrb	r2, [r0, #0]
    1620:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    1622:	7842      	ldrb	r2, [r0, #1]
    1624:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    1626:	7882      	ldrb	r2, [r0, #2]
    1628:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    162a:	78c2      	ldrb	r2, [r0, #3]
    162c:	70da      	strb	r2, [r3, #3]
    162e:	4770      	bx	lr
    1630:	200001c4 	.word	0x200001c4

00001634 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    1634:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1636:	4604      	mov	r4, r0
    1638:	460e      	mov	r6, r1
    163a:	4615      	mov	r5, r2
    163c:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    163e:	f001 ff53 	bl	34e8 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1642:	2c00      	cmp	r4, #0
    1644:	db38      	blt.n	16b8 <gfx_blit+0x84>
    1646:	8983      	ldrh	r3, [r0, #12]
    1648:	429c      	cmp	r4, r3
    164a:	da37      	bge.n	16bc <gfx_blit+0x88>
    164c:	2e00      	cmp	r6, #0
    164e:	db37      	blt.n	16c0 <gfx_blit+0x8c>
    1650:	89c3      	ldrh	r3, [r0, #14]
    1652:	429e      	cmp	r6, r3
    1654:	da36      	bge.n	16c4 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    1656:	7a03      	ldrb	r3, [r0, #8]
    1658:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    165c:	1052      	asrs	r2, r2, #1
    165e:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    1662:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    1666:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    166a:	bf06      	itte	eq
    166c:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    166e:	220f      	moveq	r2, #15
    mask=0xf0;
    1670:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    1672:	4b15      	ldr	r3, [pc, #84]	; (16c8 <gfx_blit+0x94>)
    1674:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    1676:	2f04      	cmp	r7, #4
    1678:	d805      	bhi.n	1686 <gfx_blit+0x52>
    167a:	e8df f007 	tbb	[pc, r7]
    167e:	1003      	.short	0x1003
    1680:	1412      	.short	0x1412
    1682:	18          	.byte	0x18
    1683:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1684:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    1686:	4910      	ldr	r1, [pc, #64]	; (16c8 <gfx_blit+0x94>)
    1688:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    168a:	ea23 0302 	bic.w	r3, r3, r2
    168e:	fab0 f080 	clz	r0, r0
    1692:	0940      	lsrs	r0, r0, #5
    1694:	4283      	cmp	r3, r0
    1696:	bf14      	ite	ne
    1698:	2000      	movne	r0, #0
    169a:	2001      	moveq	r0, #1
    169c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    169e:	4003      	ands	r3, r0
        break;
    16a0:	e7f1      	b.n	1686 <gfx_blit+0x52>
        byte^=color;
    16a2:	4043      	eors	r3, r0
        break;
    16a4:	e7ef      	b.n	1686 <gfx_blit+0x52>
        byte^=~mask;
    16a6:	43d4      	mvns	r4, r2
    16a8:	405c      	eors	r4, r3
    16aa:	b2e3      	uxtb	r3, r4
        break;
    16ac:	e7eb      	b.n	1686 <gfx_blit+0x52>
        byte &=mask;
    16ae:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    16b2:	ea40 0304 	orr.w	r3, r0, r4
        break;
    16b6:	e7e6      	b.n	1686 <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    16b8:	2000      	movs	r0, #0
    16ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16bc:	2000      	movs	r0, #0
    16be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16c0:	2000      	movs	r0, #0
    16c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16c4:	2000      	movs	r0, #0
}
    16c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16c8:	20002730 	.word	0x20002730

000016cc <gfx_cls>:
        byte|=color<<4;
    }
    video_buffer[idx]=byte;
}
*/
void gfx_cls(){
    16cc:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    16ce:	f001 ff0b 	bl	34e8 <get_video_params>
    16d2:	4b06      	ldr	r3, [pc, #24]	; (16ec <gfx_cls+0x20>)
    16d4:	4906      	ldr	r1, [pc, #24]	; (16f0 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    16d6:	2200      	movs	r2, #0
    16d8:	f803 2f01 	strb.w	r2, [r3, #1]!
    16dc:	428b      	cmp	r3, r1
    16de:	d1fb      	bne.n	16d8 <gfx_cls+0xc>
    set_cursor(0,0);
    16e0:	2100      	movs	r1, #0
    16e2:	4608      	mov	r0, r1
    16e4:	f001 fbb2 	bl	2e4c <set_cursor>
    16e8:	bd08      	pop	{r3, pc}
    16ea:	bf00      	nop
    16ec:	2000272f 	.word	0x2000272f
    16f0:	20004e8f 	.word	0x20004e8f

000016f4 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    16f4:	b570      	push	{r4, r5, r6, lr}
    16f6:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    16f8:	f001 fef6 	bl	34e8 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    16fc:	7a06      	ldrb	r6, [r0, #8]
    16fe:	4b0f      	ldr	r3, [pc, #60]	; (173c <gfx_scroll_up+0x48>)
    1700:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    1704:	89c2      	ldrh	r2, [r0, #14]
    1706:	1b12      	subs	r2, r2, r4
    1708:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    170c:	b1a6      	cbz	r6, 1738 <gfx_scroll_up+0x44>
    170e:	4a0b      	ldr	r2, [pc, #44]	; (173c <gfx_scroll_up+0x48>)
    1710:	199d      	adds	r5, r3, r6
    1712:	f813 1b01 	ldrb.w	r1, [r3], #1
    1716:	f802 1b01 	strb.w	r1, [r2], #1
    171a:	42ab      	cmp	r3, r5
    171c:	d1f9      	bne.n	1712 <gfx_scroll_up+0x1e>
    171e:	4b07      	ldr	r3, [pc, #28]	; (173c <gfx_scroll_up+0x48>)
    1720:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    1722:	7a02      	ldrb	r2, [r0, #8]
    1724:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1728:	b12a      	cbz	r2, 1736 <gfx_scroll_up+0x42>
    172a:	441a      	add	r2, r3
    172c:	2100      	movs	r1, #0
    172e:	f803 1b01 	strb.w	r1, [r3], #1
    1732:	4293      	cmp	r3, r2
    1734:	d1fb      	bne.n	172e <gfx_scroll_up+0x3a>
    1736:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1738:	4b00      	ldr	r3, [pc, #0]	; (173c <gfx_scroll_up+0x48>)
    173a:	e7f2      	b.n	1722 <gfx_scroll_up+0x2e>
    173c:	20002730 	.word	0x20002730

00001740 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1740:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1742:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1744:	f001 fed0 	bl	34e8 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1748:	89c3      	ldrh	r3, [r0, #14]
    174a:	7a04      	ldrb	r4, [r0, #8]
    174c:	1b5f      	subs	r7, r3, r5
    174e:	fb04 f707 	mul.w	r7, r4, r7
    1752:	490c      	ldr	r1, [pc, #48]	; (1784 <gfx_scroll_down+0x44>)
    1754:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    1756:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    175a:	b147      	cbz	r7, 176e <gfx_scroll_down+0x2e>
    175c:	4619      	mov	r1, r3
    175e:	4e09      	ldr	r6, [pc, #36]	; (1784 <gfx_scroll_down+0x44>)
    1760:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1764:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1768:	42b2      	cmp	r2, r6
    176a:	d1f9      	bne.n	1760 <gfx_scroll_down+0x20>
    176c:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    176e:	7a02      	ldrb	r2, [r0, #8]
    1770:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    1774:	b12a      	cbz	r2, 1782 <gfx_scroll_down+0x42>
    1776:	1a9a      	subs	r2, r3, r2
    1778:	2100      	movs	r1, #0
    177a:	f803 1d01 	strb.w	r1, [r3, #-1]!
    177e:	4293      	cmp	r3, r2
    1780:	d1fb      	bne.n	177a <gfx_scroll_down+0x3a>
    1782:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1784:	20002730 	.word	0x20002730

00001788 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    1788:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    178c:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    178e:	f001 feab 	bl	34e8 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    1792:	89c3      	ldrh	r3, [r0, #14]
    1794:	b30b      	cbz	r3, 17da <gfx_scroll_left+0x52>
    1796:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    179a:	f8df 8044 	ldr.w	r8, [pc, #68]	; 17e0 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    179e:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    17a0:	7a03      	ldrb	r3, [r0, #8]
    17a2:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    17a6:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    17a8:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    17aa:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    17ae:	d009      	beq.n	17c4 <gfx_scroll_left+0x3c>
    17b0:	1e59      	subs	r1, r3, #1
    17b2:	eb02 050e 	add.w	r5, r2, lr
    17b6:	f812 4b01 	ldrb.w	r4, [r2], #1
    17ba:	f801 4f01 	strb.w	r4, [r1, #1]!
    17be:	4295      	cmp	r5, r2
    17c0:	d1f9      	bne.n	17b6 <gfx_scroll_left+0x2e>
    17c2:	4473      	add	r3, lr
        while (size--) *dest++=0;
    17c4:	b126      	cbz	r6, 17d0 <gfx_scroll_left+0x48>
    17c6:	199a      	adds	r2, r3, r6
    17c8:	f803 7b01 	strb.w	r7, [r3], #1
    17cc:	4293      	cmp	r3, r2
    17ce:	d1fb      	bne.n	17c8 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    17d0:	f10c 0c01 	add.w	ip, ip, #1
    17d4:	89c3      	ldrh	r3, [r0, #14]
    17d6:	4563      	cmp	r3, ip
    17d8:	dce2      	bgt.n	17a0 <gfx_scroll_left+0x18>
    17da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    17de:	bf00      	nop
    17e0:	20002730 	.word	0x20002730

000017e4 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    17e4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    17e8:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    17ea:	f001 fe7d 	bl	34e8 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    17ee:	89c3      	ldrh	r3, [r0, #14]
    17f0:	b33b      	cbz	r3, 1842 <gfx_scroll_right+0x5e>
    17f2:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    17f6:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1848 <gfx_scroll_right+0x64>
        src=dest-n;
    17fa:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    17fe:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1800:	7a03      	ldrb	r3, [r0, #8]
    1802:	fb0e 3303 	mla	r3, lr, r3, r3
    1806:	4443      	add	r3, r8
        src=dest-n;
    1808:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    180c:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    180e:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    1812:	d00a      	beq.n	182a <gfx_scroll_right+0x46>
    1814:	4619      	mov	r1, r3
    1816:	eba2 0609 	sub.w	r6, r2, r9
    181a:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    181e:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1822:	42b2      	cmp	r2, r6
    1824:	d1f9      	bne.n	181a <gfx_scroll_right+0x36>
    1826:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    182a:	b12d      	cbz	r5, 1838 <gfx_scroll_right+0x54>
    182c:	eb03 020c 	add.w	r2, r3, ip
    1830:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1834:	429a      	cmp	r2, r3
    1836:	d1fb      	bne.n	1830 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1838:	f10e 0e01 	add.w	lr, lr, #1
    183c:	89c3      	ldrh	r3, [r0, #14]
    183e:	4573      	cmp	r3, lr
    1840:	dcde      	bgt.n	1800 <gfx_scroll_right+0x1c>
    1842:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1846:	bf00      	nop
    1848:	20002730 	.word	0x20002730

0000184c <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    184c:	b538      	push	{r3, r4, r5, lr}
    184e:	4604      	mov	r4, r0
    1850:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1852:	f001 fe49 	bl	34e8 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1856:	2c00      	cmp	r4, #0
    1858:	db18      	blt.n	188c <gfx_get_pixel+0x40>
    185a:	8983      	ldrh	r3, [r0, #12]
    185c:	429c      	cmp	r4, r3
    185e:	db01      	blt.n	1864 <gfx_get_pixel+0x18>
    1860:	20ff      	movs	r0, #255	; 0xff
    1862:	bd38      	pop	{r3, r4, r5, pc}
    1864:	2d00      	cmp	r5, #0
    1866:	db13      	blt.n	1890 <gfx_get_pixel+0x44>
    1868:	89c3      	ldrh	r3, [r0, #14]
    186a:	429d      	cmp	r5, r3
    186c:	db01      	blt.n	1872 <gfx_get_pixel+0x26>
    186e:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    1870:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    1872:	7a03      	ldrb	r3, [r0, #8]
    1874:	1062      	asrs	r2, r4, #1
    1876:	4907      	ldr	r1, [pc, #28]	; (1894 <gfx_get_pixel+0x48>)
    1878:	fb05 1503 	mla	r5, r5, r3, r1
    187c:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    187e:	f014 0f01 	tst.w	r4, #1
    1882:	bf08      	it	eq
    1884:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    1886:	f000 000f 	and.w	r0, r0, #15
    188a:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    188c:	20ff      	movs	r0, #255	; 0xff
    188e:	bd38      	pop	{r3, r4, r5, pc}
    1890:	20ff      	movs	r0, #255	; 0xff
    1892:	bd38      	pop	{r3, r4, r5, pc}
    1894:	20002730 	.word	0x20002730

00001898 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    1898:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    189c:	b085      	sub	sp, #20
    189e:	9001      	str	r0, [sp, #4]
    18a0:	460e      	mov	r6, r1
    18a2:	9100      	str	r1, [sp, #0]
    18a4:	9203      	str	r2, [sp, #12]
    18a6:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    
    shift=bit_shift[sprite_bpp];
    18a8:	4a26      	ldr	r2, [pc, #152]	; (1944 <gfx_sprite+0xac>)
    18aa:	7911      	ldrb	r1, [r2, #4]
    18ac:	4a26      	ldr	r2, [pc, #152]	; (1948 <gfx_sprite+0xb0>)
    18ae:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    18b2:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    18b4:	440a      	add	r2, r1
    18b6:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    18b8:	4433      	add	r3, r6
    18ba:	9302      	str	r3, [sp, #8]
    18bc:	429e      	cmp	r6, r3
    int collision=0;
    18be:	bfa8      	it	ge
    18c0:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    18c2:	da3a      	bge.n	193a <gfx_sprite+0xa2>
    18c4:	f100 0901 	add.w	r9, r0, #1
    18c8:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    18ca:	f8df 8078 	ldr.w	r8, [pc, #120]	; 1944 <gfx_sprite+0xac>
    18ce:	e02b      	b.n	1928 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    18d0:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    18d4:	f898 3004 	ldrb.w	r3, [r8, #4]
    18d8:	4a1b      	ldr	r2, [pc, #108]	; (1948 <gfx_sprite+0xb0>)
    18da:	4413      	add	r3, r2
    18dc:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    18de:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    18e2:	3601      	adds	r6, #1
    18e4:	4556      	cmp	r6, sl
    18e6:	d019      	beq.n	191c <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    18e8:	f898 3004 	ldrb.w	r3, [r8, #4]
    18ec:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    18ee:	bf99      	ittee	ls
    18f0:	fa45 f30b 	asrls.w	r3, r5, fp
    18f4:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    18f8:	fa45 f20b 	asrhi.w	r2, r5, fp
    18fc:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    18fe:	2302      	movs	r3, #2
    1900:	9900      	ldr	r1, [sp, #0]
    1902:	4630      	mov	r0, r6
    1904:	f7ff fe96 	bl	1634 <gfx_blit>
    1908:	4307      	orrs	r7, r0
            ppb--;
    190a:	3c01      	subs	r4, #1
            if (!ppb){
    190c:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1910:	d0de      	beq.n	18d0 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    1912:	f1cb 0308 	rsb	r3, fp, #8
    1916:	409d      	lsls	r5, r3
    1918:	b2ed      	uxtb	r5, r5
    191a:	e7e2      	b.n	18e2 <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    191c:	9b00      	ldr	r3, [sp, #0]
    191e:	3301      	adds	r3, #1
    1920:	9300      	str	r3, [sp, #0]
    1922:	9a02      	ldr	r2, [sp, #8]
    1924:	4293      	cmp	r3, r2
    1926:	d008      	beq.n	193a <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    1928:	9b03      	ldr	r3, [sp, #12]
    192a:	4619      	mov	r1, r3
    192c:	9a01      	ldr	r2, [sp, #4]
    192e:	eb01 0a02 	add.w	sl, r1, r2
    1932:	4552      	cmp	r2, sl
    1934:	daf2      	bge.n	191c <gfx_sprite+0x84>
    1936:	9e01      	ldr	r6, [sp, #4]
    1938:	e7d6      	b.n	18e8 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    return collision;
}
    193a:	4638      	mov	r0, r7
    193c:	b005      	add	sp, #20
    193e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1942:	bf00      	nop
    1944:	200001c4 	.word	0x200001c4
    1948:	00003d44 	.word	0x00003d44

0000194c <draw_balls>:

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

static const uint8_t pal2[4]={0,9,2,10};
static void draw_balls(){
    194c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1950:	b082      	sub	sp, #8
	int i;
	frame_sync();
    1952:	f001 fd8f 	bl	3474 <frame_sync>
    1956:	4c14      	ldr	r4, [pc, #80]	; (19a8 <draw_balls+0x5c>)
    1958:	2501      	movs	r5, #1
	for (i=0;i<BALL_COUNT;i++){
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    195a:	4f14      	ldr	r7, [pc, #80]	; (19ac <draw_balls+0x60>)
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    195c:	2608      	movs	r6, #8
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    195e:	f8df 8050 	ldr.w	r8, [pc, #80]	; 19b0 <draw_balls+0x64>
    1962:	e00c      	b.n	197e <draw_balls+0x32>
    1964:	4640      	mov	r0, r8
    1966:	f7ff fe59 	bl	161c <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    196a:	6923      	ldr	r3, [r4, #16]
    196c:	9300      	str	r3, [sp, #0]
    196e:	4633      	mov	r3, r6
    1970:	4632      	mov	r2, r6
    1972:	6861      	ldr	r1, [r4, #4]
    1974:	6820      	ldr	r0, [r4, #0]
    1976:	f7ff ff8f 	bl	1898 <gfx_sprite>
    197a:	3501      	adds	r5, #1
    197c:	3414      	adds	r4, #20
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    197e:	2d01      	cmp	r5, #1
    1980:	d0f0      	beq.n	1964 <draw_balls+0x18>
    1982:	4638      	mov	r0, r7
    1984:	f7ff fe4a 	bl	161c <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1988:	6923      	ldr	r3, [r4, #16]
    198a:	9300      	str	r3, [sp, #0]
    198c:	4633      	mov	r3, r6
    198e:	4632      	mov	r2, r6
    1990:	6861      	ldr	r1, [r4, #4]
    1992:	6820      	ldr	r0, [r4, #0]
    1994:	f7ff ff80 	bl	1898 <gfx_sprite>
	for (i=0;i<BALL_COUNT;i++){
    1998:	2d01      	cmp	r5, #1
    199a:	ddee      	ble.n	197a <draw_balls+0x2e>
	}
	wait_sync_end();
    199c:	f001 fd72 	bl	3484 <wait_sync_end>
}
    19a0:	b002      	add	sp, #8
    19a2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    19a6:	bf00      	nop
    19a8:	20002708 	.word	0x20002708
    19ac:	00003d60 	.word	0x00003d60
    19b0:	00003d4c 	.word	0x00003d4c

000019b4 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    19b4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    19b8:	f001 fd96 	bl	34e8 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19bc:	89c3      	ldrh	r3, [r0, #14]
    19be:	089e      	lsrs	r6, r3, #2
    19c0:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    19c4:	429e      	cmp	r6, r3
    19c6:	da1b      	bge.n	1a00 <color_bars+0x4c>
    19c8:	4680      	mov	r8, r0
static void color_bars(){
    19ca:	f04f 0910 	mov.w	r9, #16
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
				c--;
			}
			gfx_blit(x,y,c,BIT_SET);
    19ce:	2704      	movs	r7, #4
static void color_bars(){
    19d0:	464d      	mov	r5, r9
    19d2:	2400      	movs	r4, #0
			if (x%8==0){
    19d4:	f014 0f07 	tst.w	r4, #7
				c--;
    19d8:	bf04      	itt	eq
    19da:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    19de:	b2ed      	uxtbeq	r5, r5
			gfx_blit(x,y,c,BIT_SET);
    19e0:	463b      	mov	r3, r7
    19e2:	462a      	mov	r2, r5
    19e4:	4631      	mov	r1, r6
    19e6:	4620      	mov	r0, r4
    19e8:	f7ff fe24 	bl	1634 <gfx_blit>
		for (x=0;x<128;x++){
    19ec:	3401      	adds	r4, #1
    19ee:	2c80      	cmp	r4, #128	; 0x80
    19f0:	d1f0      	bne.n	19d4 <color_bars+0x20>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19f2:	3601      	adds	r6, #1
    19f4:	f8b8 300e 	ldrh.w	r3, [r8, #14]
    19f8:	42b3      	cmp	r3, r6
    19fa:	dce9      	bgt.n	19d0 <color_bars+0x1c>
    19fc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1a00:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

00001a04 <vertical_bars>:
	}
		

}

static void vertical_bars(){
    1a04:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    1a08:	f001 fd6e 	bl	34e8 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1a0c:	89c3      	ldrh	r3, [r0, #14]
    1a0e:	2b10      	cmp	r3, #16
    1a10:	dd16      	ble.n	1a40 <vertical_bars+0x3c>
    1a12:	4605      	mov	r5, r0
    1a14:	2410      	movs	r4, #16
		gfx_blit(0,y,15,BIT_SET);
    1a16:	2704      	movs	r7, #4
    1a18:	260f      	movs	r6, #15
    1a1a:	f04f 0800 	mov.w	r8, #0
    1a1e:	463b      	mov	r3, r7
    1a20:	4632      	mov	r2, r6
    1a22:	4621      	mov	r1, r4
    1a24:	4640      	mov	r0, r8
    1a26:	f7ff fe05 	bl	1634 <gfx_blit>
		gfx_blit(vparams->hres-1,y,15,BIT_SET);
    1a2a:	89a8      	ldrh	r0, [r5, #12]
    1a2c:	463b      	mov	r3, r7
    1a2e:	4632      	mov	r2, r6
    1a30:	4621      	mov	r1, r4
    1a32:	3801      	subs	r0, #1
    1a34:	f7ff fdfe 	bl	1634 <gfx_blit>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1a38:	3401      	adds	r4, #1
    1a3a:	89eb      	ldrh	r3, [r5, #14]
    1a3c:	42a3      	cmp	r3, r4
    1a3e:	dcee      	bgt.n	1a1e <vertical_bars+0x1a>
    1a40:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001a44 <horiz_bars>:
	}
}

static void horiz_bars(){
    1a44:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1a48:	f001 fd4e 	bl	34e8 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1a4c:	8983      	ldrh	r3, [r0, #12]
    1a4e:	b1ab      	cbz	r3, 1a7c <horiz_bars+0x38>
    1a50:	4605      	mov	r5, r0
    1a52:	2400      	movs	r4, #0
		gfx_blit(x,0,15,BIT_SET);
    1a54:	2704      	movs	r7, #4
    1a56:	260f      	movs	r6, #15
    1a58:	46a0      	mov	r8, r4
    1a5a:	463b      	mov	r3, r7
    1a5c:	4632      	mov	r2, r6
    1a5e:	4641      	mov	r1, r8
    1a60:	4620      	mov	r0, r4
    1a62:	f7ff fde7 	bl	1634 <gfx_blit>
		gfx_blit(x,vparams->vres-1,15,BIT_SET);
    1a66:	89e9      	ldrh	r1, [r5, #14]
    1a68:	463b      	mov	r3, r7
    1a6a:	4632      	mov	r2, r6
    1a6c:	3901      	subs	r1, #1
    1a6e:	4620      	mov	r0, r4
    1a70:	f7ff fde0 	bl	1634 <gfx_blit>
	for (x=0;x<vparams->hres;x++){
    1a74:	3401      	adds	r4, #1
    1a76:	89ab      	ldrh	r3, [r5, #12]
    1a78:	42a3      	cmp	r3, r4
    1a7a:	dcee      	bgt.n	1a5a <horiz_bars+0x16>
    1a7c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001a80 <init_balls>:
static void init_balls(){
    1a80:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a84:	f001 fd30 	bl	34e8 <get_video_params>
    1a88:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a8a:	4b19      	ldr	r3, [pc, #100]	; (1af0 <init_balls+0x70>)
    1a8c:	6818      	ldr	r0, [r3, #0]
    1a8e:	f7fe fc9b 	bl	3c8 <srand>
    1a92:	4c18      	ldr	r4, [pc, #96]	; (1af4 <init_balls+0x74>)
    1a94:	f104 0628 	add.w	r6, r4, #40	; 0x28
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1a98:	4f17      	ldr	r7, [pc, #92]	; (1af8 <init_balls+0x78>)
    1a9a:	f107 0914 	add.w	r9, r7, #20
			sprite_bpp=TWO_BPP;
    1a9e:	f8df 805c 	ldr.w	r8, [pc, #92]	; 1afc <init_balls+0x7c>
    1aa2:	e004      	b.n	1aae <init_balls+0x2e>
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1aa4:	f8c4 9010 	str.w	r9, [r4, #16]
    1aa8:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1aaa:	42b4      	cmp	r4, r6
    1aac:	d01d      	beq.n	1aea <init_balls+0x6a>
		balls[i].x=rand()%vparams->hres;
    1aae:	f7fe fc91 	bl	3d4 <rand>
    1ab2:	89ab      	ldrh	r3, [r5, #12]
    1ab4:	fb90 f2f3 	sdiv	r2, r0, r3
    1ab8:	fb02 0013 	mls	r0, r2, r3, r0
    1abc:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1abe:	f7fe fc89 	bl	3d4 <rand>
    1ac2:	89eb      	ldrh	r3, [r5, #14]
    1ac4:	3b10      	subs	r3, #16
    1ac6:	fb90 f2f3 	sdiv	r2, r0, r3
    1aca:	fb02 0013 	mls	r0, r2, r3, r0
    1ace:	3010      	adds	r0, #16
    1ad0:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1ad2:	2301      	movs	r3, #1
    1ad4:	60a3      	str	r3, [r4, #8]
		balls[i].dy=1;
    1ad6:	60e3      	str	r3, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1ad8:	782b      	ldrb	r3, [r5, #0]
    1ada:	2b00      	cmp	r3, #0
    1adc:	d1e2      	bne.n	1aa4 <init_balls+0x24>
			balls[i].ball_sprite=ball8x8_2bpp;//ball8x8;
    1ade:	1d3b      	adds	r3, r7, #4
    1ae0:	6123      	str	r3, [r4, #16]
			sprite_bpp=TWO_BPP;
    1ae2:	2301      	movs	r3, #1
    1ae4:	f888 3000 	strb.w	r3, [r8]
    1ae8:	e7de      	b.n	1aa8 <init_balls+0x28>
}
    1aea:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1aee:	bf00      	nop
    1af0:	20004e94 	.word	0x20004e94
    1af4:	20002708 	.word	0x20002708
    1af8:	00003d60 	.word	0x00003d60
    1afc:	200001c8 	.word	0x200001c8

00001b00 <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    1b00:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1b02:	f7ff fde3 	bl	16cc <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1b06:	4806      	ldr	r0, [pc, #24]	; (1b20 <display_menu+0x20>)
    1b08:	f001 f9e9 	bl	2ede <println>
    1b0c:	4805      	ldr	r0, [pc, #20]	; (1b24 <display_menu+0x24>)
    1b0e:	f001 f9e6 	bl	2ede <println>
    1b12:	4805      	ldr	r0, [pc, #20]	; (1b28 <display_menu+0x28>)
    1b14:	f001 f9e3 	bl	2ede <println>
    1b18:	4804      	ldr	r0, [pc, #16]	; (1b2c <display_menu+0x2c>)
    1b1a:	f001 f9e0 	bl	2ede <println>
    1b1e:	bd08      	pop	{r3, pc}
    1b20:	00003e80 	.word	0x00003e80
    1b24:	00003e8c 	.word	0x00003e8c
    1b28:	00003e9c 	.word	0x00003e9c
    1b2c:	00003ea8 	.word	0x00003ea8

00001b30 <isqrt>:
	if (n<2) return n;
    1b30:	2801      	cmp	r0, #1
    1b32:	dd0c      	ble.n	1b4e <isqrt+0x1e>
int isqrt(int n){
    1b34:	b510      	push	{r4, lr}
    1b36:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1b38:	1080      	asrs	r0, r0, #2
    1b3a:	f7ff fff9 	bl	1b30 <isqrt>
    1b3e:	0040      	lsls	r0, r0, #1
	large = small + 1;
    1b40:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    1b42:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    1b46:	4294      	cmp	r4, r2
    1b48:	bfa8      	it	ge
    1b4a:	4618      	movge	r0, r3
}
    1b4c:	bd10      	pop	{r4, pc}
    1b4e:	4770      	bx	lr

00001b50 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    1b50:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    1b52:	6803      	ldr	r3, [r0, #0]
    1b54:	680a      	ldr	r2, [r1, #0]
    1b56:	6844      	ldr	r4, [r0, #4]
    1b58:	6848      	ldr	r0, [r1, #4]
    1b5a:	fb00 f004 	mul.w	r0, r0, r4
    1b5e:	fb02 0003 	mla	r0, r2, r3, r0
    1b62:	2800      	cmp	r0, #0
    1b64:	bfb8      	it	lt
    1b66:	4240      	neglt	r0, r0
    1b68:	f7ff ffe2 	bl	1b30 <isqrt>
}
    1b6c:	bd10      	pop	{r4, pc}

00001b6e <main>:
			break;	
		}
	}//while
}

void main(void){
    1b6e:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1b72:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1b74:	4ac2      	ldr	r2, [pc, #776]	; (1e80 <main+0x312>)
    1b76:	6813      	ldr	r3, [r2, #0]
    1b78:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1b7c:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1b7e:	4613      	mov	r3, r2
    1b80:	681a      	ldr	r2, [r3, #0]
    1b82:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1b86:	d0fb      	beq.n	1b80 <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1b88:	4bbd      	ldr	r3, [pc, #756]	; (1e80 <main+0x312>)
    1b8a:	685a      	ldr	r2, [r3, #4]
    1b8c:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1b90:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1b92:	681a      	ldr	r2, [r3, #0]
    1b94:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1b98:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1b9a:	681a      	ldr	r2, [r3, #0]
    1b9c:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1ba0:	d0fb      	beq.n	1b9a <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1ba2:	4ab8      	ldr	r2, [pc, #736]	; (1e84 <main+0x316>)
    1ba4:	6813      	ldr	r3, [r2, #0]
    1ba6:	f043 0312 	orr.w	r3, r3, #18
    1baa:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1bac:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1bb0:	6853      	ldr	r3, [r2, #4]
    1bb2:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1bb6:	f043 0302 	orr.w	r3, r3, #2
    1bba:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1bbc:	f640 031d 	movw	r3, #2077	; 0x81d
    1bc0:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1bc2:	4cb1      	ldr	r4, [pc, #708]	; (1e88 <main+0x31a>)
    1bc4:	2206      	movs	r2, #6
    1bc6:	210d      	movs	r1, #13
    1bc8:	4620      	mov	r0, r4
    1bca:	f7ff fcf3 	bl	15b4 <config_pin>
	_led_off();
    1bce:	68e3      	ldr	r3, [r4, #12]
    1bd0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1bd4:	60e3      	str	r3, [r4, #12]
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1bd6:	2400      	movs	r4, #0
    1bd8:	9401      	str	r4, [sp, #4]
    1bda:	2301      	movs	r3, #1
    1bdc:	9300      	str	r3, [sp, #0]
    1bde:	2303      	movs	r3, #3
    1be0:	4622      	mov	r2, r4
    1be2:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1be6:	4620      	mov	r0, r4
    1be8:	f001 fd36 	bl	3658 <usart_open_channel>
	gamepad_init();
    1bec:	f7ff faa6 	bl	113c <gamepad_init>
	tvout_init();
    1bf0:	f001 fa2a 	bl	3048 <tvout_init>
	sound_init();
    1bf4:	f000 fe88 	bl	2908 <sound_init>
	gfx_cls();
    1bf8:	f7ff fd68 	bl	16cc <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1bfc:	f001 fc74 	bl	34e8 <get_video_params>
	display_menu();
    1c00:	f7ff ff7e 	bl	1b00 <display_menu>
	int i=0;
    1c04:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1c06:	4ba1      	ldr	r3, [pc, #644]	; (1e8c <main+0x31e>)
    1c08:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1c0c:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1c10:	9304      	str	r3, [sp, #16]
    1c12:	e1d0      	b.n	1fb6 <main+0x448>
			if (i<(MENU_ITEMS-1)) i++;
    1c14:	f1ba 0f02 	cmp.w	sl, #2
    1c18:	f300 81cd 	bgt.w	1fb6 <main+0x448>
    1c1c:	f10a 0a01 	add.w	sl, sl, #1
    1c20:	e1c9      	b.n	1fb6 <main+0x448>
			switch(i){
    1c22:	f1ba 0f03 	cmp.w	sl, #3
    1c26:	f200 81c4 	bhi.w	1fb2 <main+0x444>
    1c2a:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1c2e:	0004      	.short	0x0004
    1c30:	010f00cf 	.word	0x010f00cf
    1c34:	01e8      	.short	0x01e8
	count=games_count();
    1c36:	f7ff fb4b 	bl	12d0 <games_count>
    1c3a:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1c3c:	2000      	movs	r0, #0
    1c3e:	f001 fc29 	bl	3494 <set_video_mode>
	vparams=get_video_params();
    1c42:	f001 fc51 	bl	34e8 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1c46:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1c4a:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1c4e:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1c50:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1c54:	454e      	cmp	r6, r9
    1c56:	bfda      	itte	le
    1c58:	eba9 0806 	suble.w	r8, r9, r6
    1c5c:	f108 0801 	addle.w	r8, r8, #1
    1c60:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1c62:	2100      	movs	r1, #0
    1c64:	4608      	mov	r0, r1
    1c66:	f001 f8f1 	bl	2e4c <set_cursor>
	print(" ********** GAMES **********");
    1c6a:	4889      	ldr	r0, [pc, #548]	; (1e90 <main+0x322>)
    1c6c:	f001 f922 	bl	2eb4 <print>
	while ((r<rows) && games_list[first].size){
    1c70:	f1bb 0f01 	cmp.w	fp, #1
    1c74:	d92d      	bls.n	1cd2 <main+0x164>
    1c76:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1c7a:	4a86      	ldr	r2, [pc, #536]	; (1e94 <main+0x326>)
    1c7c:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1c80:	691b      	ldr	r3, [r3, #16]
    1c82:	b333      	cbz	r3, 1cd2 <main+0x164>
    1c84:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1c88:	1c53      	adds	r3, r2, #1
    1c8a:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1c8e:	2501      	movs	r5, #1
		put_char(' ');
    1c90:	2720      	movs	r7, #32
		new_line();
    1c92:	f001 f829 	bl	2ce8 <new_line>
		clear_line();
    1c96:	f001 f9a7 	bl	2fe8 <clear_line>
		put_char(' ');
    1c9a:	4638      	mov	r0, r7
    1c9c:	f001 f86c 	bl	2d78 <put_char>
		print(games_list[first].name);
    1ca0:	4620      	mov	r0, r4
    1ca2:	f001 f907 	bl	2eb4 <print>
		line=get_cursor()&0xff;
    1ca6:	f001 f8d7 	bl	2e58 <get_cursor>
		set_cursor(90,line);
    1caa:	b2c1      	uxtb	r1, r0
    1cac:	205a      	movs	r0, #90	; 0x5a
    1cae:	f001 f8cd 	bl	2e4c <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1cb2:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1cb6:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1cb8:	bf0c      	ite	eq
    1cba:	4877      	ldreq	r0, [pc, #476]	; (1e98 <main+0x32a>)
			print("(BPCHIP)");
    1cbc:	4877      	ldrne	r0, [pc, #476]	; (1e9c <main+0x32e>)
    1cbe:	f001 f8f9 	bl	2eb4 <print>
		r++;
    1cc2:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1cc4:	42ae      	cmp	r6, r5
    1cc6:	d004      	beq.n	1cd2 <main+0x164>
    1cc8:	341c      	adds	r4, #28
    1cca:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1cce:	2b00      	cmp	r3, #0
    1cd0:	d1df      	bne.n	1c92 <main+0x124>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1cd2:	eba9 0108 	sub.w	r1, r9, r8
    1cd6:	00c9      	lsls	r1, r1, #3
    1cd8:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1cdc:	2000      	movs	r0, #0
    1cde:	f001 f8b5 	bl	2e4c <set_cursor>
		put_char('>');
    1ce2:	203e      	movs	r0, #62	; 0x3e
    1ce4:	f001 f848 	bl	2d78 <put_char>
		btn=btn_wait_any();
    1ce8:	f7ff fa9e 	bl	1228 <btn_wait_any>
    1cec:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1cee:	f7ff fa87 	bl	1200 <btn_wait_up>
		switch(btn){
    1cf2:	2c04      	cmp	r4, #4
    1cf4:	d056      	beq.n	1da4 <main+0x236>
    1cf6:	d946      	bls.n	1d86 <main+0x218>
    1cf8:	2c40      	cmp	r4, #64	; 0x40
    1cfa:	d05a      	beq.n	1db2 <main+0x244>
    1cfc:	2c80      	cmp	r4, #128	; 0x80
    1cfe:	f000 8158 	beq.w	1fb2 <main+0x444>
    1d02:	2c20      	cmp	r4, #32
    1d04:	d1a6      	bne.n	1c54 <main+0xe6>
	run_game(selected-1);
    1d06:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1d0a:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1d0e:	4b61      	ldr	r3, [pc, #388]	; (1e94 <main+0x326>)
    1d10:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1d14:	2b01      	cmp	r3, #1
    1d16:	bf14      	ite	ne
    1d18:	2600      	movne	r6, #0
    1d1a:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1d1e:	4f5d      	ldr	r7, [pc, #372]	; (1e94 <main+0x326>)
    1d20:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1d24:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1d28:	6922      	ldr	r2, [r4, #16]
    1d2a:	495d      	ldr	r1, [pc, #372]	; (1ea0 <main+0x332>)
    1d2c:	4431      	add	r1, r6
    1d2e:	6960      	ldr	r0, [r4, #20]
    1d30:	f7ff fb81 	bl	1436 <move>
	set_keymap(games_list[idx].keymap);
    1d34:	69a0      	ldr	r0, [r4, #24]
    1d36:	f7ff f9f5 	bl	1124 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1d3a:	eba5 0909 	sub.w	r9, r5, r9
    1d3e:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1d42:	f001 fba7 	bl	3494 <set_video_mode>
	set_palette(DEFAULT_PALETTE);
    1d46:	4857      	ldr	r0, [pc, #348]	; (1ea4 <main+0x336>)
    1d48:	f7ff fc68 	bl	161c <set_palette>
	exit_code=chip_vm(addr,debug_level);
    1d4c:	4b56      	ldr	r3, [pc, #344]	; (1ea8 <main+0x33a>)
    1d4e:	7819      	ldrb	r1, [r3, #0]
    1d50:	4630      	mov	r0, r6
    1d52:	f7fe fb4d 	bl	3f0 <chip_vm>
    1d56:	4604      	mov	r4, r0
	print("exit code: ");
    1d58:	4854      	ldr	r0, [pc, #336]	; (1eac <main+0x33e>)
    1d5a:	f001 f8ab 	bl	2eb4 <print>
	switch(exit_code){
    1d5e:	2c01      	cmp	r4, #1
    1d60:	d02a      	beq.n	1db8 <main+0x24a>
    1d62:	b374      	cbz	r4, 1dc2 <main+0x254>
    1d64:	2c03      	cmp	r4, #3
    1d66:	d82c      	bhi.n	1dc2 <main+0x254>
		select_console(SERIAL);
    1d68:	2001      	movs	r0, #1
    1d6a:	f001 f95f 	bl	302c <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1d6e:	4621      	mov	r1, r4
    1d70:	484f      	ldr	r0, [pc, #316]	; (1eb0 <main+0x342>)
    1d72:	f7fe facd 	bl	310 <print_vms>
		select_console(LOCAL);
    1d76:	2000      	movs	r0, #0
    1d78:	f001 f958 	bl	302c <select_console>
		btn_wait_any();
    1d7c:	f7ff fa54 	bl	1228 <btn_wait_any>
		i=1;
    1d80:	2301      	movs	r3, #1
    1d82:	9305      	str	r3, [sp, #20]
    1d84:	e01d      	b.n	1dc2 <main+0x254>
		switch(btn){
    1d86:	2c01      	cmp	r4, #1
    1d88:	d009      	beq.n	1d9e <main+0x230>
    1d8a:	2c02      	cmp	r4, #2
    1d8c:	f47f af62 	bne.w	1c54 <main+0xe6>
			if (selected>1) selected--;
    1d90:	f1b9 0f01 	cmp.w	r9, #1
    1d94:	f77f af5e 	ble.w	1c54 <main+0xe6>
    1d98:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1d9c:	e75a      	b.n	1c54 <main+0xe6>
			selected=1;
    1d9e:	f04f 0901 	mov.w	r9, #1
    1da2:	e757      	b.n	1c54 <main+0xe6>
			if (selected<count){
    1da4:	9b03      	ldr	r3, [sp, #12]
    1da6:	454b      	cmp	r3, r9
    1da8:	f77f af54 	ble.w	1c54 <main+0xe6>
				selected++;
    1dac:	f109 0901 	add.w	r9, r9, #1
    1db0:	e750      	b.n	1c54 <main+0xe6>
			selected=count;
    1db2:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1db6:	e74d      	b.n	1c54 <main+0xe6>
		print("CHIP EXIT OK");
    1db8:	483e      	ldr	r0, [pc, #248]	; (1eb4 <main+0x346>)
    1dba:	f001 f87b 	bl	2eb4 <print>
		i=0;
    1dbe:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1dc2:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1dc6:	f001 fb99 	bl	34fc <game_pause>
    1dca:	e0f2      	b.n	1fb2 <main+0x444>
	gfx_cls();
    1dcc:	f7ff fc7e 	bl	16cc <gfx_cls>
	print(" **** VM debug support ****\n");
    1dd0:	4839      	ldr	r0, [pc, #228]	; (1eb8 <main+0x34a>)
    1dd2:	f001 f86f 	bl	2eb4 <print>
	print(" No debug support\n");
    1dd6:	4839      	ldr	r0, [pc, #228]	; (1ebc <main+0x34e>)
    1dd8:	f001 f86c 	bl	2eb4 <print>
	print(" Print PC and OPCODE\n");
    1ddc:	4838      	ldr	r0, [pc, #224]	; (1ec0 <main+0x352>)
    1dde:	f001 f869 	bl	2eb4 <print>
	print(" Print all VM states.\n");
    1de2:	4838      	ldr	r0, [pc, #224]	; (1ec4 <main+0x356>)
    1de4:	f001 f866 	bl	2eb4 <print>
	print(" Single step\n");
    1de8:	4837      	ldr	r0, [pc, #220]	; (1ec8 <main+0x35a>)
    1dea:	f001 f863 	bl	2eb4 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1dee:	4c2e      	ldr	r4, [pc, #184]	; (1ea8 <main+0x33a>)
    1df0:	2500      	movs	r5, #0
		put_char('*');
    1df2:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1df4:	7821      	ldrb	r1, [r4, #0]
    1df6:	3101      	adds	r1, #1
    1df8:	00c9      	lsls	r1, r1, #3
    1dfa:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1dfe:	4628      	mov	r0, r5
    1e00:	f001 f824 	bl	2e4c <set_cursor>
		put_char('*');
    1e04:	4630      	mov	r0, r6
    1e06:	f000 ffb7 	bl	2d78 <put_char>
		btn=btn_wait_any();
    1e0a:	f7ff fa0d 	bl	1228 <btn_wait_any>
    1e0e:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e10:	7821      	ldrb	r1, [r4, #0]
    1e12:	3101      	adds	r1, #1
    1e14:	00c9      	lsls	r1, r1, #3
    1e16:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1e1a:	4628      	mov	r0, r5
    1e1c:	f001 f816 	bl	2e4c <set_cursor>
		put_char(' ');
    1e20:	2020      	movs	r0, #32
    1e22:	f000 ffa9 	bl	2d78 <put_char>
		switch(btn){
    1e26:	2f04      	cmp	r7, #4
    1e28:	d00a      	beq.n	1e40 <main+0x2d2>
    1e2a:	2f20      	cmp	r7, #32
    1e2c:	f000 80c1 	beq.w	1fb2 <main+0x444>
    1e30:	2f02      	cmp	r7, #2
    1e32:	d1df      	bne.n	1df4 <main+0x286>
			if (debug_level) debug_level--;
    1e34:	7823      	ldrb	r3, [r4, #0]
    1e36:	2b00      	cmp	r3, #0
    1e38:	d0dc      	beq.n	1df4 <main+0x286>
    1e3a:	3b01      	subs	r3, #1
    1e3c:	7023      	strb	r3, [r4, #0]
    1e3e:	e7d9      	b.n	1df4 <main+0x286>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1e40:	7823      	ldrb	r3, [r4, #0]
    1e42:	2b02      	cmp	r3, #2
    1e44:	d8d6      	bhi.n	1df4 <main+0x286>
    1e46:	3301      	adds	r3, #1
    1e48:	7023      	strb	r3, [r4, #0]
    1e4a:	e7d3      	b.n	1df4 <main+0x286>
	set_video_mode(p);
    1e4c:	2000      	movs	r0, #0
    1e4e:	f001 fb21 	bl	3494 <set_video_mode>
	color_bars();
    1e52:	f7ff fdaf 	bl	19b4 <color_bars>
	vertical_bars();
    1e56:	f7ff fdd5 	bl	1a04 <vertical_bars>
	horiz_bars();
    1e5a:	f7ff fdf3 	bl	1a44 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1e5e:	2110      	movs	r1, #16
    1e60:	481a      	ldr	r0, [pc, #104]	; (1ecc <main+0x35e>)
    1e62:	f001 f842 	bl	2eea <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1e66:	210a      	movs	r1, #10
    1e68:	9804      	ldr	r0, [sp, #16]
    1e6a:	f001 f83e 	bl	2eea <print_int>
	init_balls();
    1e6e:	f7ff fe07 	bl	1a80 <init_balls>
	p=0;
    1e72:	2500      	movs	r5, #0
	if (distance(&balls[0],&balls[1])<8){
    1e74:	4e16      	ldr	r6, [pc, #88]	; (1ed0 <main+0x362>)
    1e76:	f1a6 0814 	sub.w	r8, r6, #20
		if (balls[0].dx!=balls[1].dx){
    1e7a:	4644      	mov	r4, r8
    1e7c:	e06a      	b.n	1f54 <main+0x3e6>
    1e7e:	bf00      	nop
    1e80:	40021000 	.word	0x40021000
    1e84:	40022000 	.word	0x40022000
    1e88:	40011000 	.word	0x40011000
    1e8c:	20004ea0 	.word	0x20004ea0
    1e90:	00003eb4 	.word	0x00003eb4
    1e94:	20000004 	.word	0x20000004
    1e98:	00003ed4 	.word	0x00003ed4
    1e9c:	00003edc 	.word	0x00003edc
    1ea0:	20000700 	.word	0x20000700
    1ea4:	00003d4c 	.word	0x00003d4c
    1ea8:	20002704 	.word	0x20002704
    1eac:	00003ee8 	.word	0x00003ee8
    1eb0:	00003f04 	.word	0x00003f04
    1eb4:	00003ef4 	.word	0x00003ef4
    1eb8:	00003f14 	.word	0x00003f14
    1ebc:	00003f34 	.word	0x00003f34
    1ec0:	00003f48 	.word	0x00003f48
    1ec4:	00003f60 	.word	0x00003f60
    1ec8:	00003f78 	.word	0x00003f78
    1ecc:	00004400 	.word	0x00004400
    1ed0:	2000271c 	.word	0x2000271c
			balls[i].dy=-balls[i].dy;
    1ed4:	4249      	negs	r1, r1
    1ed6:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1ed8:	f8c2 c004 	str.w	ip, [r2, #4]
    1edc:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    1ede:	4573      	cmp	r3, lr
    1ee0:	d01e      	beq.n	1f20 <main+0x3b2>
    1ee2:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1ee4:	f8d3 c000 	ldr.w	ip, [r3]
    1ee8:	6899      	ldr	r1, [r3, #8]
    1eea:	eb0c 0701 	add.w	r7, ip, r1
    1eee:	601f      	str	r7, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    1ef0:	f117 0f07 	cmn.w	r7, #7
    1ef4:	db03      	blt.n	1efe <main+0x390>
    1ef6:	f8b0 900c 	ldrh.w	r9, [r0, #12]
    1efa:	454f      	cmp	r7, r9
    1efc:	db03      	blt.n	1f06 <main+0x398>
			balls[i].dx=-balls[i].dx;
    1efe:	4249      	negs	r1, r1
    1f00:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1f02:	f8c2 c000 	str.w	ip, [r2]
		balls[i].y+=balls[i].dy;
    1f06:	f8d2 c004 	ldr.w	ip, [r2, #4]
    1f0a:	68d1      	ldr	r1, [r2, #12]
    1f0c:	eb0c 0701 	add.w	r7, ip, r1
    1f10:	6057      	str	r7, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1f12:	2f0f      	cmp	r7, #15
    1f14:	ddde      	ble.n	1ed4 <main+0x366>
    1f16:	f8b0 900e 	ldrh.w	r9, [r0, #14]
    1f1a:	454f      	cmp	r7, r9
    1f1c:	dbde      	blt.n	1edc <main+0x36e>
    1f1e:	e7d9      	b.n	1ed4 <main+0x366>
	if (distance(&balls[0],&balls[1])<8){
    1f20:	4631      	mov	r1, r6
    1f22:	4640      	mov	r0, r8
    1f24:	f7ff fe14 	bl	1b50 <distance>
    1f28:	2807      	cmp	r0, #7
    1f2a:	d80b      	bhi.n	1f44 <main+0x3d6>
		if (balls[0].dx!=balls[1].dx){
    1f2c:	68a3      	ldr	r3, [r4, #8]
    1f2e:	69e2      	ldr	r2, [r4, #28]
    1f30:	4293      	cmp	r3, r2
			balls[0].dx=balls[1].dx;
    1f32:	bf1c      	itt	ne
    1f34:	60a2      	strne	r2, [r4, #8]
			balls[1].dx=i;
    1f36:	61e3      	strne	r3, [r4, #28]
		if (balls[0].dy!=balls[1].dy){
    1f38:	68e3      	ldr	r3, [r4, #12]
    1f3a:	6a22      	ldr	r2, [r4, #32]
    1f3c:	4293      	cmp	r3, r2
			balls[0].dy=balls[1].dy;
    1f3e:	bf1c      	itt	ne
    1f40:	60e2      	strne	r2, [r4, #12]
			balls[1].dy=i;
    1f42:	6223      	strne	r3, [r4, #32]
		if (btn_query_down(KEY_RIGHT)){
    1f44:	2010      	movs	r0, #16
    1f46:	f7ff f93b 	bl	11c0 <btn_query_down>
    1f4a:	b968      	cbnz	r0, 1f68 <main+0x3fa>
		}else if (btn_query_down(KEY_B)){
    1f4c:	2020      	movs	r0, #32
    1f4e:	f7ff f937 	bl	11c0 <btn_query_down>
    1f52:	bb40      	cbnz	r0, 1fa6 <main+0x438>
		draw_balls();
    1f54:	f7ff fcfa 	bl	194c <draw_balls>
		draw_balls();
    1f58:	f7ff fcf8 	bl	194c <draw_balls>
	vmode_params_t *vparams=get_video_params();
    1f5c:	f001 fac4 	bl	34e8 <get_video_params>
    1f60:	4b50      	ldr	r3, [pc, #320]	; (20a4 <main+0x536>)
    1f62:	f103 0e28 	add.w	lr, r3, #40	; 0x28
    1f66:	e7bc      	b.n	1ee2 <main+0x374>
			p^=1;
    1f68:	f085 0501 	eor.w	r5, r5, #1
			set_video_mode(p);
    1f6c:	4628      	mov	r0, r5
    1f6e:	f001 fa91 	bl	3494 <set_video_mode>
			switch(p){
    1f72:	b15d      	cbz	r5, 1f8c <main+0x41e>
    1f74:	2d01      	cmp	r5, #1
    1f76:	d012      	beq.n	1f9e <main+0x430>
			vertical_bars();
    1f78:	f7ff fd44 	bl	1a04 <vertical_bars>
			horiz_bars();
    1f7c:	f7ff fd62 	bl	1a44 <horiz_bars>
			init_balls();
    1f80:	f7ff fd7e 	bl	1a80 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1f84:	2010      	movs	r0, #16
    1f86:	f7ff f93b 	bl	1200 <btn_wait_up>
    1f8a:	e7e3      	b.n	1f54 <main+0x3e6>
				print("BPCHIP mode\n180x112 16 colors");
    1f8c:	4846      	ldr	r0, [pc, #280]	; (20a8 <main+0x53a>)
    1f8e:	f000 ff91 	bl	2eb4 <print>
				color_bars();
    1f92:	f7ff fd0f 	bl	19b4 <color_bars>
				sprite_bpp=TWO_BPP;
    1f96:	2201      	movs	r2, #1
    1f98:	4b44      	ldr	r3, [pc, #272]	; (20ac <main+0x53e>)
    1f9a:	701a      	strb	r2, [r3, #0]
    1f9c:	e7ec      	b.n	1f78 <main+0x40a>
				print("SCHIP mode\n128x64 mono");
    1f9e:	4844      	ldr	r0, [pc, #272]	; (20b0 <main+0x542>)
    1fa0:	f000 ff88 	bl	2eb4 <print>
    1fa4:	e7e8      	b.n	1f78 <main+0x40a>
			btn_wait_up(KEY_B);
    1fa6:	2020      	movs	r0, #32
    1fa8:	f7ff f92a 	bl	1200 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1fac:	2000      	movs	r0, #0
    1fae:	f001 fa71 	bl	3494 <set_video_mode>
			display_menu();
    1fb2:	f7ff fda5 	bl	1b00 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1fb6:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1fba:	b2e4      	uxtb	r4, r4
    1fbc:	4621      	mov	r1, r4
    1fbe:	2000      	movs	r0, #0
    1fc0:	f000 ff44 	bl	2e4c <set_cursor>
		put_char('>');
    1fc4:	203e      	movs	r0, #62	; 0x3e
    1fc6:	f000 fed7 	bl	2d78 <put_char>
		btn=btn_wait_any();
    1fca:	f7ff f92d 	bl	1228 <btn_wait_any>
    1fce:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1fd0:	f7ff f916 	bl	1200 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1fd4:	4621      	mov	r1, r4
    1fd6:	2000      	movs	r0, #0
    1fd8:	f000 ff38 	bl	2e4c <set_cursor>
		put_char(' ');
    1fdc:	2020      	movs	r0, #32
    1fde:	f000 fecb 	bl	2d78 <put_char>
		switch(btn){
    1fe2:	2d04      	cmp	r5, #4
    1fe4:	f43f ae16 	beq.w	1c14 <main+0xa6>
    1fe8:	2d20      	cmp	r5, #32
    1fea:	f43f ae1a 	beq.w	1c22 <main+0xb4>
    1fee:	2d02      	cmp	r5, #2
    1ff0:	d1e1      	bne.n	1fb6 <main+0x448>
			if (i) i--;
    1ff2:	f1ba 0f00 	cmp.w	sl, #0
    1ff6:	d0de      	beq.n	1fb6 <main+0x448>
    1ff8:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1ffc:	e7db      	b.n	1fb6 <main+0x448>
	gfx_cls();
    1ffe:	f7ff fb65 	bl	16cc <gfx_cls>
	print("press buttons\n");
    2002:	482c      	ldr	r0, [pc, #176]	; (20b4 <main+0x546>)
    2004:	f000 ff56 	bl	2eb4 <print>
		tone(freq,3);
    2008:	2503      	movs	r5, #3
			freq=493;
    200a:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    200e:	f240 266e 	movw	r6, #622	; 0x26e
    2012:	e019      	b.n	2048 <main+0x4da>
		switch(key){
    2014:	2802      	cmp	r0, #2
    2016:	d03f      	beq.n	2098 <main+0x52a>
    2018:	2804      	cmp	r0, #4
    201a:	d00e      	beq.n	203a <main+0x4cc>
    201c:	2801      	cmp	r0, #1
    201e:	d024      	beq.n	206a <main+0x4fc>
		tone(freq,3);
    2020:	4629      	mov	r1, r5
    2022:	9802      	ldr	r0, [sp, #8]
    2024:	f000 fc9c 	bl	2960 <tone>
	while (key!=KEY_B){
    2028:	2c20      	cmp	r4, #32
    202a:	d10d      	bne.n	2048 <main+0x4da>
    202c:	e028      	b.n	2080 <main+0x512>
		switch(key){
    202e:	2810      	cmp	r0, #16
    2030:	d1f6      	bne.n	2020 <main+0x4b2>
			freq=523;
    2032:	f240 230b 	movw	r3, #523	; 0x20b
    2036:	9302      	str	r3, [sp, #8]
    2038:	e002      	b.n	2040 <main+0x4d2>
			freq=466;
    203a:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    203e:	9302      	str	r3, [sp, #8]
		tone(freq,3);
    2040:	4629      	mov	r1, r5
    2042:	9802      	ldr	r0, [sp, #8]
    2044:	f000 fc8c 	bl	2960 <tone>
		key=btn_any_down();
    2048:	f7ff f928 	bl	129c <btn_any_down>
    204c:	4604      	mov	r4, r0
		switch(key){
    204e:	2808      	cmp	r0, #8
    2050:	d026      	beq.n	20a0 <main+0x532>
    2052:	d9df      	bls.n	2014 <main+0x4a6>
    2054:	2820      	cmp	r0, #32
    2056:	d00e      	beq.n	2076 <main+0x508>
    2058:	d9e9      	bls.n	202e <main+0x4c0>
    205a:	2840      	cmp	r0, #64	; 0x40
    205c:	d009      	beq.n	2072 <main+0x504>
    205e:	2880      	cmp	r0, #128	; 0x80
    2060:	d1de      	bne.n	2020 <main+0x4b2>
			freq=659;
    2062:	f240 2393 	movw	r3, #659	; 0x293
    2066:	9302      	str	r3, [sp, #8]
    2068:	e7ea      	b.n	2040 <main+0x4d2>
			freq=554;
    206a:	f240 232a 	movw	r3, #554	; 0x22a
    206e:	9302      	str	r3, [sp, #8]
    2070:	e7e6      	b.n	2040 <main+0x4d2>
			freq=622;
    2072:	9602      	str	r6, [sp, #8]
    2074:	e7e4      	b.n	2040 <main+0x4d2>
		tone(freq,3);
    2076:	2103      	movs	r1, #3
    2078:	f240 204b 	movw	r0, #587	; 0x24b
    207c:	f000 fc70 	bl	2960 <tone>
	btn_wait_up(key);
    2080:	2020      	movs	r0, #32
    2082:	f7ff f8bd 	bl	1200 <btn_wait_up>
	noise(30);
    2086:	201e      	movs	r0, #30
    2088:	f000 fca4 	bl	29d4 <noise>
	while(sound_timer);
    208c:	4a0a      	ldr	r2, [pc, #40]	; (20b8 <main+0x54a>)
    208e:	8813      	ldrh	r3, [r2, #0]
    2090:	b29b      	uxth	r3, r3
    2092:	2b00      	cmp	r3, #0
    2094:	d1fb      	bne.n	208e <main+0x520>
    2096:	e78c      	b.n	1fb2 <main+0x444>
			freq=440;
    2098:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    209c:	9302      	str	r3, [sp, #8]
    209e:	e7cf      	b.n	2040 <main+0x4d2>
			freq=493;
    20a0:	9702      	str	r7, [sp, #8]
    20a2:	e7cd      	b.n	2040 <main+0x4d2>
    20a4:	20002708 	.word	0x20002708
    20a8:	00003f88 	.word	0x00003f88
    20ac:	200001c8 	.word	0x200001c8
    20b0:	00003fa8 	.word	0x00003fa8
    20b4:	00003fc0 	.word	0x00003fc0
    20b8:	20004e98 	.word	0x20004e98

000020bc <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20bc:	283b      	cmp	r0, #59	; 0x3b
    20be:	dc0d      	bgt.n	20dc <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    20c0:	1143      	asrs	r3, r0, #5
    20c2:	009b      	lsls	r3, r3, #2
    20c4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    20c8:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    20cc:	6819      	ldr	r1, [r3, #0]
    20ce:	f000 001f 	and.w	r0, r0, #31
    20d2:	2201      	movs	r2, #1
    20d4:	fa02 f000 	lsl.w	r0, r2, r0
    20d8:	4308      	orrs	r0, r1
    20da:	6018      	str	r0, [r3, #0]
    20dc:	4770      	bx	lr

000020de <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20de:	283b      	cmp	r0, #59	; 0x3b
    20e0:	dc08      	bgt.n	20f4 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    20e2:	1142      	asrs	r2, r0, #5
    20e4:	f000 001f 	and.w	r0, r0, #31
    20e8:	2301      	movs	r3, #1
    20ea:	fa03 f000 	lsl.w	r0, r3, r0
    20ee:	4b02      	ldr	r3, [pc, #8]	; (20f8 <disable_interrupt+0x1a>)
    20f0:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    20f4:	4770      	bx	lr
    20f6:	bf00      	nop
    20f8:	e000e180 	.word	0xe000e180

000020fc <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    20fc:	283b      	cmp	r0, #59	; 0x3b
    20fe:	dc09      	bgt.n	2114 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    2100:	1142      	asrs	r2, r0, #5
    2102:	4b05      	ldr	r3, [pc, #20]	; (2118 <get_pending+0x1c>)
    2104:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    2108:	f000 031f 	and.w	r3, r0, #31
    210c:	2001      	movs	r0, #1
    210e:	4098      	lsls	r0, r3
    2110:	4010      	ands	r0, r2
    2112:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    2114:	2000      	movs	r0, #0
}
    2116:	4770      	bx	lr
    2118:	e000e280 	.word	0xe000e280

0000211c <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    211c:	283b      	cmp	r0, #59	; 0x3b
    211e:	dc0c      	bgt.n	213a <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    2120:	1143      	asrs	r3, r0, #5
    2122:	009b      	lsls	r3, r3, #2
    2124:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2128:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    212c:	681a      	ldr	r2, [r3, #0]
    212e:	f000 031f 	and.w	r3, r0, #31
    2132:	2001      	movs	r0, #1
    2134:	4098      	lsls	r0, r3
    2136:	4010      	ands	r0, r2
    2138:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    213a:	2000      	movs	r0, #0
}
    213c:	4770      	bx	lr

0000213e <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    213e:	283b      	cmp	r0, #59	; 0x3b
    2140:	dc0d      	bgt.n	215e <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    2142:	1143      	asrs	r3, r0, #5
    2144:	009b      	lsls	r3, r3, #2
    2146:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    214a:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    214e:	6819      	ldr	r1, [r3, #0]
    2150:	f000 001f 	and.w	r0, r0, #31
    2154:	2201      	movs	r2, #1
    2156:	fa02 f000 	lsl.w	r0, r2, r0
    215a:	4308      	orrs	r0, r1
    215c:	6018      	str	r0, [r3, #0]
    215e:	4770      	bx	lr

00002160 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2160:	283b      	cmp	r0, #59	; 0x3b
    2162:	dc08      	bgt.n	2176 <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    2164:	1142      	asrs	r2, r0, #5
    2166:	f000 001f 	and.w	r0, r0, #31
    216a:	2301      	movs	r3, #1
    216c:	fa03 f000 	lsl.w	r0, r3, r0
    2170:	4b01      	ldr	r3, [pc, #4]	; (2178 <clear_pending+0x18>)
    2172:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    2176:	4770      	bx	lr
    2178:	e000e280 	.word	0xe000e280

0000217c <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    217c:	283b      	cmp	r0, #59	; 0x3b
    217e:	d90c      	bls.n	219a <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2180:	f100 030f 	add.w	r3, r0, #15
    2184:	2b0e      	cmp	r3, #14
    2186:	d807      	bhi.n	2198 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    2188:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    218c:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2190:	30fc      	adds	r0, #252	; 0xfc
    2192:	0109      	lsls	r1, r1, #4
    2194:	4b04      	ldr	r3, [pc, #16]	; (21a8 <set_int_priority+0x2c>)
    2196:	54c1      	strb	r1, [r0, r3]
    2198:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    219a:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    219e:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    21a2:	0109      	lsls	r1, r1, #4
    21a4:	7001      	strb	r1, [r0, #0]
    21a6:	4770      	bx	lr
    21a8:	e000ed18 	.word	0xe000ed18

000021ac <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    21ac:	f010 0f03 	tst.w	r0, #3
    21b0:	d113      	bne.n	21da <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    21b2:	4b0c      	ldr	r3, [pc, #48]	; (21e4 <leap_year+0x38>)
    21b4:	fba3 2300 	umull	r2, r3, r3, r0
    21b8:	095b      	lsrs	r3, r3, #5
    21ba:	2264      	movs	r2, #100	; 0x64
    21bc:	fb02 0313 	mls	r3, r2, r3, r0
    21c0:	b96b      	cbnz	r3, 21de <leap_year+0x32>
    21c2:	4b08      	ldr	r3, [pc, #32]	; (21e4 <leap_year+0x38>)
    21c4:	fba3 2300 	umull	r2, r3, r3, r0
    21c8:	09db      	lsrs	r3, r3, #7
    21ca:	f44f 72c8 	mov.w	r2, #400	; 0x190
    21ce:	fb02 0013 	mls	r0, r2, r3, r0
    21d2:	fab0 f080 	clz	r0, r0
    21d6:	0940      	lsrs	r0, r0, #5
    21d8:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    21da:	2000      	movs	r0, #0
    21dc:	4770      	bx	lr
		return 1;
    21de:	2001      	movs	r0, #1
}
    21e0:	4770      	bx	lr
    21e2:	bf00      	nop
    21e4:	51eb851f 	.word	0x51eb851f

000021e8 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    21e8:	4b07      	ldr	r3, [pc, #28]	; (2208 <sec_per_month+0x20>)
    21ea:	5c5a      	ldrb	r2, [r3, r1]
    21ec:	4b07      	ldr	r3, [pc, #28]	; (220c <sec_per_month+0x24>)
    21ee:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    21f2:	2902      	cmp	r1, #2
    21f4:	d001      	beq.n	21fa <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    21f6:	4618      	mov	r0, r3
    21f8:	4770      	bx	lr
	if (month==2 && leap){
    21fa:	2800      	cmp	r0, #0
    21fc:	d0fb      	beq.n	21f6 <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    21fe:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    2202:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    2206:	e7f6      	b.n	21f6 <sec_per_month+0xe>
    2208:	00003d8c 	.word	0x00003d8c
    220c:	00015180 	.word	0x00015180

00002210 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    2210:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2214:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    2216:	4b37      	ldr	r3, [pc, #220]	; (22f4 <get_date_time+0xe4>)
    2218:	699a      	ldr	r2, [r3, #24]
    221a:	69dc      	ldr	r4, [r3, #28]
    221c:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    2220:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2224:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    2226:	f7ff ffc1 	bl	21ac <leap_year>
    222a:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    222c:	4d32      	ldr	r5, [pc, #200]	; (22f8 <get_date_time+0xe8>)
    222e:	4f33      	ldr	r7, [pc, #204]	; (22fc <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    2230:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 2310 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2234:	e00e      	b.n	2254 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    2236:	4444      	add	r4, r8
    2238:	e005      	b.n	2246 <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    223a:	42ac      	cmp	r4, r5
    223c:	d90f      	bls.n	225e <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    223e:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    2242:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    2246:	8930      	ldrh	r0, [r6, #8]
    2248:	3001      	adds	r0, #1
    224a:	b280      	uxth	r0, r0
    224c:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    224e:	f7ff ffad 	bl	21ac <leap_year>
    2252:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2254:	f1b9 0f00 	cmp.w	r9, #0
    2258:	d1ef      	bne.n	223a <get_date_time+0x2a>
    225a:	42bc      	cmp	r4, r7
    225c:	d8eb      	bhi.n	2236 <get_date_time+0x26>
	}//while
	dt->month=1;
    225e:	8873      	ldrh	r3, [r6, #2]
    2260:	2201      	movs	r2, #1
    2262:	f362 1389 	bfi	r3, r2, #6, #4
    2266:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    2268:	f362 0345 	bfi	r3, r2, #1, #5
    226c:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    226e:	6833      	ldr	r3, [r6, #0]
    2270:	f36f 3310 	bfc	r3, #12, #5
    2274:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    2276:	f36f 138b 	bfc	r3, #6, #6
    227a:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    227c:	f36f 0305 	bfc	r3, #0, #6
    2280:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2282:	e005      	b.n	2290 <get_date_time+0x80>
		dt->month++;
    2284:	3501      	adds	r5, #1
    2286:	8873      	ldrh	r3, [r6, #2]
    2288:	f365 1389 	bfi	r3, r5, #6, #4
    228c:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    228e:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2290:	8875      	ldrh	r5, [r6, #2]
    2292:	f3c5 1583 	ubfx	r5, r5, #6, #4
    2296:	4629      	mov	r1, r5
    2298:	4648      	mov	r0, r9
    229a:	f7ff ffa5 	bl	21e8 <sec_per_month>
    229e:	4284      	cmp	r4, r0
    22a0:	d8f0      	bhi.n	2284 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    22a2:	4a17      	ldr	r2, [pc, #92]	; (2300 <get_date_time+0xf0>)
    22a4:	fba2 3204 	umull	r3, r2, r2, r4
    22a8:	0c12      	lsrs	r2, r2, #16
    22aa:	1c51      	adds	r1, r2, #1
    22ac:	78b3      	ldrb	r3, [r6, #2]
    22ae:	f361 0345 	bfi	r3, r1, #1, #5
    22b2:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    22b4:	4b13      	ldr	r3, [pc, #76]	; (2304 <get_date_time+0xf4>)
    22b6:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    22ba:	4c13      	ldr	r4, [pc, #76]	; (2308 <get_date_time+0xf8>)
    22bc:	fba4 3402 	umull	r3, r4, r4, r2
    22c0:	0ae4      	lsrs	r4, r4, #11
    22c2:	6833      	ldr	r3, [r6, #0]
    22c4:	f364 3310 	bfi	r3, r4, #12, #5
    22c8:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    22ca:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    22ce:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    22d2:	4a0e      	ldr	r2, [pc, #56]	; (230c <get_date_time+0xfc>)
    22d4:	fba2 1204 	umull	r1, r2, r2, r4
    22d8:	0952      	lsrs	r2, r2, #5
    22da:	f362 138b 	bfi	r3, r2, #6, #6
    22de:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    22e0:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    22e4:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    22e8:	f364 0305 	bfi	r3, r4, #0, #6
    22ec:	7033      	strb	r3, [r6, #0]
    22ee:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    22f2:	bf00      	nop
    22f4:	40002800 	.word	0x40002800
    22f8:	01e284ff 	.word	0x01e284ff
    22fc:	01e1337f 	.word	0x01e1337f
    2300:	c22e4507 	.word	0xc22e4507
    2304:	00015180 	.word	0x00015180
    2308:	91a2b3c5 	.word	0x91a2b3c5
    230c:	88888889 	.word	0x88888889
    2310:	fe1ecc80 	.word	0xfe1ecc80

00002314 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    2314:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2318:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    231a:	8903      	ldrh	r3, [r0, #8]
    231c:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2320:	4293      	cmp	r3, r2
    2322:	d857      	bhi.n	23d4 <set_date_time+0xc0>
    2324:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2328:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    232c:	f7ff ff3e 	bl	21ac <leap_year>
    2330:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    2332:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    2334:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    2338:	f3c6 1683 	ubfx	r6, r6, #6, #4
    233c:	2e01      	cmp	r6, #1
    233e:	d908      	bls.n	2352 <set_date_time+0x3e>
    2340:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    2342:	4629      	mov	r1, r5
    2344:	4638      	mov	r0, r7
    2346:	f7ff ff4f 	bl	21e8 <sec_per_month>
    234a:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    234c:	3501      	adds	r5, #1
    234e:	42b5      	cmp	r5, r6
    2350:	d1f7      	bne.n	2342 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    2352:	f8d8 2000 	ldr.w	r2, [r8]
    2356:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    235a:	f8b8 2000 	ldrh.w	r2, [r8]
    235e:	f3c2 1285 	ubfx	r2, r2, #6, #6
    2362:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2366:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    2368:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    236c:	fb01 2203 	mla	r2, r1, r3, r2
    2370:	f898 3000 	ldrb.w	r3, [r8]
    2374:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2378:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    237a:	f898 3002 	ldrb.w	r3, [r8, #2]
    237e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2382:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2384:	4928      	ldr	r1, [pc, #160]	; (2428 <set_date_time+0x114>)
    2386:	fb01 2303 	mla	r3, r1, r3, r2
    238a:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    238c:	4a27      	ldr	r2, [pc, #156]	; (242c <set_date_time+0x118>)
    238e:	69d3      	ldr	r3, [r2, #28]
    2390:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2394:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2396:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    239a:	6813      	ldr	r3, [r2, #0]
    239c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    23a0:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    23a2:	4b23      	ldr	r3, [pc, #140]	; (2430 <set_date_time+0x11c>)
    23a4:	685a      	ldr	r2, [r3, #4]
    23a6:	f042 0210 	orr.w	r2, r2, #16
    23aa:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    23ac:	0c22      	lsrs	r2, r4, #16
    23ae:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    23b0:	b2a4      	uxth	r4, r4
    23b2:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    23b4:	685a      	ldr	r2, [r3, #4]
    23b6:	f022 0210 	bic.w	r2, r2, #16
    23ba:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    23bc:	461a      	mov	r2, r3
    23be:	6853      	ldr	r3, [r2, #4]
    23c0:	f013 0f20 	tst.w	r3, #32
    23c4:	d0fb      	beq.n	23be <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    23c6:	4a1b      	ldr	r2, [pc, #108]	; (2434 <set_date_time+0x120>)
    23c8:	6813      	ldr	r3, [r2, #0]
    23ca:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23ce:	6013      	str	r3, [r2, #0]
    23d0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    23d4:	f640 023a 	movw	r2, #2106	; 0x83a
    23d8:	4293      	cmp	r3, r2
    23da:	d90c      	bls.n	23f6 <set_date_time+0xe2>
    23dc:	4616      	mov	r6, r2
    23de:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    23e2:	4610      	mov	r0, r2
    23e4:	f7ff fee2 	bl	21ac <leap_year>
    23e8:	4607      	mov	r7, r0
    23ea:	2400      	movs	r4, #0
    23ec:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    23f0:	f8df 9044 	ldr.w	r9, [pc, #68]	; 2438 <set_date_time+0x124>
    23f4:	e00e      	b.n	2414 <set_date_time+0x100>
	leap=leap_year(dt->year);
    23f6:	8906      	ldrh	r6, [r0, #8]
    23f8:	4630      	mov	r0, r6
    23fa:	f7ff fed7 	bl	21ac <leap_year>
    23fe:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    2400:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2404:	429e      	cmp	r6, r3
    2406:	d8f0      	bhi.n	23ea <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    2408:	2400      	movs	r4, #0
    240a:	e793      	b.n	2334 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    240c:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    240e:	3501      	adds	r5, #1
    2410:	42b5      	cmp	r5, r6
    2412:	d28f      	bcs.n	2334 <set_date_time+0x20>
		if (leap_year(i)){
    2414:	4628      	mov	r0, r5
    2416:	f7ff fec9 	bl	21ac <leap_year>
    241a:	2800      	cmp	r0, #0
    241c:	d0f6      	beq.n	240c <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    241e:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    2422:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    2426:	e7f2      	b.n	240e <set_date_time+0xfa>
    2428:	00015180 	.word	0x00015180
    242c:	40021000 	.word	0x40021000
    2430:	40002800 	.word	0x40002800
    2434:	40007000 	.word	0x40007000
    2438:	01e13380 	.word	0x01e13380

0000243c <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    243c:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    243e:	4b35      	ldr	r3, [pc, #212]	; (2514 <rtc_init+0xd8>)
    2440:	685a      	ldr	r2, [r3, #4]
    2442:	f64a 2355 	movw	r3, #43605	; 0xaa55
    2446:	429a      	cmp	r2, r3
    2448:	d05c      	beq.n	2504 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    244a:	4b33      	ldr	r3, [pc, #204]	; (2518 <rtc_init+0xdc>)
    244c:	69da      	ldr	r2, [r3, #28]
    244e:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2452:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2454:	4c31      	ldr	r4, [pc, #196]	; (251c <rtc_init+0xe0>)
    2456:	6822      	ldr	r2, [r4, #0]
    2458:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    245c:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    245e:	6a1a      	ldr	r2, [r3, #32]
    2460:	f042 0201 	orr.w	r2, r2, #1
    2464:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    2466:	461a      	mov	r2, r3
    2468:	6a13      	ldr	r3, [r2, #32]
    246a:	f013 0f02 	tst.w	r3, #2
    246e:	d0fb      	beq.n	2468 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2470:	4a29      	ldr	r2, [pc, #164]	; (2518 <rtc_init+0xdc>)
    2472:	6a13      	ldr	r3, [r2, #32]
    2474:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2478:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    247a:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    247e:	6853      	ldr	r3, [r2, #4]
    2480:	f013 0f08 	tst.w	r3, #8
    2484:	d0fb      	beq.n	247e <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    2486:	4a26      	ldr	r2, [pc, #152]	; (2520 <rtc_init+0xe4>)
    2488:	6853      	ldr	r3, [r2, #4]
    248a:	f013 0f20 	tst.w	r3, #32
    248e:	d0fb      	beq.n	2488 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2490:	4a23      	ldr	r2, [pc, #140]	; (2520 <rtc_init+0xe4>)
    2492:	6853      	ldr	r3, [r2, #4]
    2494:	f043 0310 	orr.w	r3, r3, #16
    2498:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    249a:	6853      	ldr	r3, [r2, #4]
    249c:	f013 0f20 	tst.w	r3, #32
    24a0:	d0fb      	beq.n	249a <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    24a2:	4a1f      	ldr	r2, [pc, #124]	; (2520 <rtc_init+0xe4>)
    24a4:	6813      	ldr	r3, [r2, #0]
    24a6:	4319      	orrs	r1, r3
    24a8:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    24aa:	6853      	ldr	r3, [r2, #4]
    24ac:	f013 0f20 	tst.w	r3, #32
    24b0:	d0fb      	beq.n	24aa <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    24b2:	03c2      	lsls	r2, r0, #15
    24b4:	481b      	ldr	r0, [pc, #108]	; (2524 <rtc_init+0xe8>)
    24b6:	fba0 3202 	umull	r3, r2, r0, r2
    24ba:	0992      	lsrs	r2, r2, #6
    24bc:	3a01      	subs	r2, #1
    24be:	b291      	uxth	r1, r2
    24c0:	4b17      	ldr	r3, [pc, #92]	; (2520 <rtc_init+0xe4>)
    24c2:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    24c4:	4619      	mov	r1, r3
    24c6:	684b      	ldr	r3, [r1, #4]
    24c8:	f013 0f20 	tst.w	r3, #32
    24cc:	d0fb      	beq.n	24c6 <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    24ce:	f3c2 4203 	ubfx	r2, r2, #16, #4
    24d2:	4b13      	ldr	r3, [pc, #76]	; (2520 <rtc_init+0xe4>)
    24d4:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    24d6:	461a      	mov	r2, r3
    24d8:	6853      	ldr	r3, [r2, #4]
    24da:	f013 0f20 	tst.w	r3, #32
    24de:	d0fb      	beq.n	24d8 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    24e0:	f64a 2255 	movw	r2, #43605	; 0xaa55
    24e4:	4b0b      	ldr	r3, [pc, #44]	; (2514 <rtc_init+0xd8>)
    24e6:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    24e8:	4a0d      	ldr	r2, [pc, #52]	; (2520 <rtc_init+0xe4>)
    24ea:	6853      	ldr	r3, [r2, #4]
    24ec:	f023 0310 	bic.w	r3, r3, #16
    24f0:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    24f2:	6853      	ldr	r3, [r2, #4]
    24f4:	f013 0f20 	tst.w	r3, #32
    24f8:	d0fb      	beq.n	24f2 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    24fa:	4a08      	ldr	r2, [pc, #32]	; (251c <rtc_init+0xe0>)
    24fc:	6813      	ldr	r3, [r2, #0]
    24fe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2502:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    2504:	210f      	movs	r1, #15
    2506:	2003      	movs	r0, #3
    2508:	f7ff fe38 	bl	217c <set_int_priority>
	enable_interrupt(IRQ_RTC);
    250c:	2003      	movs	r0, #3
    250e:	f7ff fdd5 	bl	20bc <enable_interrupt>
    2512:	bd10      	pop	{r4, pc}
    2514:	40006c00 	.word	0x40006c00
    2518:	40021000 	.word	0x40021000
    251c:	40007000 	.word	0x40007000
    2520:	40002800 	.word	0x40002800
    2524:	10624dd3 	.word	0x10624dd3

00002528 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2528:	4b06      	ldr	r3, [pc, #24]	; (2544 <reset_backup_domain+0x1c>)
    252a:	69da      	ldr	r2, [r3, #28]
    252c:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2530:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    2532:	6a1a      	ldr	r2, [r3, #32]
    2534:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    2538:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    253a:	6a1a      	ldr	r2, [r3, #32]
    253c:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    2540:	621a      	str	r2, [r3, #32]
    2542:	4770      	bx	lr
    2544:	40021000 	.word	0x40021000

00002548 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2548:	4a27      	ldr	r2, [pc, #156]	; (25e8 <rtc_clock_trim+0xa0>)
    254a:	69d3      	ldr	r3, [r2, #28]
    254c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2550:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    2552:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2556:	6853      	ldr	r3, [r2, #4]
    2558:	f013 0f08 	tst.w	r3, #8
    255c:	d0fb      	beq.n	2556 <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    255e:	4a23      	ldr	r2, [pc, #140]	; (25ec <rtc_clock_trim+0xa4>)
    2560:	6813      	ldr	r3, [r2, #0]
    2562:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2566:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2568:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    256c:	6853      	ldr	r3, [r2, #4]
    256e:	f043 0310 	orr.w	r3, r3, #16
    2572:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2574:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    2578:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    257a:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    257e:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2580:	b9b8      	cbnz	r0, 25b2 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    2582:	2200      	movs	r2, #0
    2584:	4b1a      	ldr	r3, [pc, #104]	; (25f0 <rtc_clock_trim+0xa8>)
    2586:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    2588:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    258c:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2590:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2592:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2594:	4a17      	ldr	r2, [pc, #92]	; (25f4 <rtc_clock_trim+0xac>)
    2596:	6853      	ldr	r3, [r2, #4]
    2598:	f023 0310 	bic.w	r3, r3, #16
    259c:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    259e:	6853      	ldr	r3, [r2, #4]
    25a0:	f013 0f20 	tst.w	r3, #32
    25a4:	d0fb      	beq.n	259e <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    25a6:	4a11      	ldr	r2, [pc, #68]	; (25ec <rtc_clock_trim+0xa4>)
    25a8:	6813      	ldr	r3, [r2, #0]
    25aa:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    25ae:	6013      	str	r3, [r2, #0]
    25b0:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    25b2:	2800      	cmp	r0, #0
    25b4:	dd06      	ble.n	25c4 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    25b6:	4b0e      	ldr	r3, [pc, #56]	; (25f0 <rtc_clock_trim+0xa8>)
    25b8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    25ba:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    25be:	4310      	orrs	r0, r2
    25c0:	62d8      	str	r0, [r3, #44]	; 0x2c
    25c2:	e7e7      	b.n	2594 <rtc_clock_trim+0x4c>
		trim=-trim;
    25c4:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    25c6:	2100      	movs	r1, #0
    25c8:	4b09      	ldr	r3, [pc, #36]	; (25f0 <rtc_clock_trim+0xa8>)
    25ca:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    25cc:	f64f 73ff 	movw	r3, #65535	; 0xffff
    25d0:	287f      	cmp	r0, #127	; 0x7f
    25d2:	bfd4      	ite	le
    25d4:	1a18      	suble	r0, r3, r0
    25d6:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    25da:	f3c0 000e 	ubfx	r0, r0, #0, #15
    25de:	4a05      	ldr	r2, [pc, #20]	; (25f4 <rtc_clock_trim+0xac>)
    25e0:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    25e2:	6091      	str	r1, [r2, #8]
    25e4:	e7d6      	b.n	2594 <rtc_clock_trim+0x4c>
    25e6:	bf00      	nop
    25e8:	40021000 	.word	0x40021000
    25ec:	40007000 	.word	0x40007000
    25f0:	40006c00 	.word	0x40006c00
    25f4:	40002800 	.word	0x40002800

000025f8 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    25f8:	4770      	bx	lr

000025fa <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    25fa:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    25fe:	4607      	mov	r7, r0
    2600:	4688      	mov	r8, r1
    2602:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    2604:	2400      	movs	r4, #0
	i=0;
    2606:	4626      	mov	r6, r4
	while (digit(date[i])){
    2608:	e008      	b.n	261c <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    260a:	3601      	adds	r6, #1
    260c:	3501      	adds	r5, #1
    260e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2612:	f899 3000 	ldrb.w	r3, [r9]
    2616:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    261a:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    261c:	46a9      	mov	r9, r5
    261e:	7828      	ldrb	r0, [r5, #0]
    2620:	f7fe fe9d 	bl	135e <digit>
    2624:	4682      	mov	sl, r0
    2626:	2800      	cmp	r0, #0
    2628:	d1ef      	bne.n	260a <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    262a:	2e03      	cmp	r6, #3
    262c:	dd02      	ble.n	2634 <str_to_date+0x3a>
    262e:	782b      	ldrb	r3, [r5, #0]
    2630:	2b2f      	cmp	r3, #47	; 0x2f
    2632:	d002      	beq.n	263a <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    2634:	4650      	mov	r0, sl
    2636:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    263a:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    263e:	3601      	adds	r6, #1
    2640:	19bd      	adds	r5, r7, r6
	n=0;
    2642:	4604      	mov	r4, r0
	while (digit(date[i])){
    2644:	e008      	b.n	2658 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    2646:	3601      	adds	r6, #1
    2648:	3501      	adds	r5, #1
    264a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    264e:	f899 3000 	ldrb.w	r3, [r9]
    2652:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    2656:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2658:	46a9      	mov	r9, r5
    265a:	7828      	ldrb	r0, [r5, #0]
    265c:	f7fe fe7f 	bl	135e <digit>
    2660:	4682      	mov	sl, r0
    2662:	2800      	cmp	r0, #0
    2664:	d1ef      	bne.n	2646 <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    2666:	2e06      	cmp	r6, #6
    2668:	dde4      	ble.n	2634 <str_to_date+0x3a>
    266a:	782b      	ldrb	r3, [r5, #0]
    266c:	2b2f      	cmp	r3, #47	; 0x2f
    266e:	d1e1      	bne.n	2634 <str_to_date+0x3a>
	dt->month=n;
    2670:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2674:	f364 1389 	bfi	r3, r4, #6, #4
    2678:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    267c:	1c74      	adds	r4, r6, #1
    267e:	443e      	add	r6, r7
	while (digit(date[i])){
    2680:	e008      	b.n	2694 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    2682:	3401      	adds	r4, #1
    2684:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2688:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    268c:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2690:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2694:	7870      	ldrb	r0, [r6, #1]
    2696:	f7fe fe62 	bl	135e <digit>
    269a:	2800      	cmp	r0, #0
    269c:	d1f1      	bne.n	2682 <str_to_date+0x88>
	if (i<10) return 0;
    269e:	2c09      	cmp	r4, #9
    26a0:	dd08      	ble.n	26b4 <str_to_date+0xba>
	dt->day=n;
    26a2:	f898 3002 	ldrb.w	r3, [r8, #2]
    26a6:	f36a 0345 	bfi	r3, sl, #1, #5
    26aa:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    26ae:	f04f 0a01 	mov.w	sl, #1
    26b2:	e7bf      	b.n	2634 <str_to_date+0x3a>
	if (i<10) return 0;
    26b4:	4682      	mov	sl, r0
    26b6:	e7bd      	b.n	2634 <str_to_date+0x3a>

000026b8 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    26b8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    26bc:	4607      	mov	r7, r0
    26be:	4688      	mov	r8, r1
    26c0:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    26c2:	2400      	movs	r4, #0
	i=0;
    26c4:	4626      	mov	r6, r4
	while (digit(time[i])){
    26c6:	e00a      	b.n	26de <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    26c8:	3601      	adds	r6, #1
    26ca:	3501      	adds	r5, #1
    26cc:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26d0:	0064      	lsls	r4, r4, #1
    26d2:	3c30      	subs	r4, #48	; 0x30
    26d4:	f899 3000 	ldrb.w	r3, [r9]
    26d8:	441c      	add	r4, r3
    26da:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    26de:	46a9      	mov	r9, r5
    26e0:	7828      	ldrb	r0, [r5, #0]
    26e2:	f7fe fe3c 	bl	135e <digit>
    26e6:	4603      	mov	r3, r0
    26e8:	2800      	cmp	r0, #0
    26ea:	d1ed      	bne.n	26c8 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    26ec:	2c17      	cmp	r4, #23
    26ee:	d802      	bhi.n	26f6 <str_to_time+0x3e>
    26f0:	782a      	ldrb	r2, [r5, #0]
    26f2:	2a3a      	cmp	r2, #58	; 0x3a
    26f4:	d002      	beq.n	26fc <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    26f6:	4618      	mov	r0, r3
    26f8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    26fc:	f8d8 3000 	ldr.w	r3, [r8]
    2700:	f364 3310 	bfi	r3, r4, #12, #5
    2704:	f8c8 3000 	str.w	r3, [r8]
	i++;
    2708:	3601      	adds	r6, #1
    270a:	19bd      	adds	r5, r7, r6
	n=0;
    270c:	2400      	movs	r4, #0
	while (digit(time[i])){
    270e:	e00a      	b.n	2726 <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    2710:	3601      	adds	r6, #1
    2712:	3501      	adds	r5, #1
    2714:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2718:	0064      	lsls	r4, r4, #1
    271a:	3c30      	subs	r4, #48	; 0x30
    271c:	f899 3000 	ldrb.w	r3, [r9]
    2720:	441c      	add	r4, r3
    2722:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2726:	46a9      	mov	r9, r5
    2728:	7828      	ldrb	r0, [r5, #0]
    272a:	f7fe fe18 	bl	135e <digit>
    272e:	4603      	mov	r3, r0
    2730:	2800      	cmp	r0, #0
    2732:	d1ed      	bne.n	2710 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    2734:	2c3b      	cmp	r4, #59	; 0x3b
    2736:	d8de      	bhi.n	26f6 <str_to_time+0x3e>
    2738:	782a      	ldrb	r2, [r5, #0]
    273a:	2a3a      	cmp	r2, #58	; 0x3a
    273c:	d1db      	bne.n	26f6 <str_to_time+0x3e>
	dt->minute=n;
    273e:	f8b8 3000 	ldrh.w	r3, [r8]
    2742:	f364 138b 	bfi	r3, r4, #6, #6
    2746:	f8a8 3000 	strh.w	r3, [r8]
    274a:	443e      	add	r6, r7
	n=0;
    274c:	2400      	movs	r4, #0
	while (digit(time[i])){
    274e:	e008      	b.n	2762 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2750:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2754:	0064      	lsls	r4, r4, #1
    2756:	3c30      	subs	r4, #48	; 0x30
    2758:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    275c:	441c      	add	r4, r3
    275e:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2762:	7870      	ldrb	r0, [r6, #1]
    2764:	f7fe fdfb 	bl	135e <digit>
    2768:	4603      	mov	r3, r0
    276a:	2800      	cmp	r0, #0
    276c:	d1f0      	bne.n	2750 <str_to_time+0x98>
	if (n>59) return 0;
    276e:	2c3b      	cmp	r4, #59	; 0x3b
    2770:	d8c1      	bhi.n	26f6 <str_to_time+0x3e>
	dt->second=n;
    2772:	f898 3000 	ldrb.w	r3, [r8]
    2776:	f364 0305 	bfi	r3, r4, #0, #6
    277a:	f888 3000 	strb.w	r3, [r8]
	return 1;
    277e:	2301      	movs	r3, #1
    2780:	e7b9      	b.n	26f6 <str_to_time+0x3e>

00002782 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    2782:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2784:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    2786:	4b23      	ldr	r3, [pc, #140]	; (2814 <date_str+0x92>)
    2788:	fba3 4302 	umull	r4, r3, r3, r2
    278c:	099b      	lsrs	r3, r3, #6
    278e:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2792:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2794:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2798:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    279c:	4b1e      	ldr	r3, [pc, #120]	; (2818 <date_str+0x96>)
    279e:	fba3 4302 	umull	r4, r3, r3, r2
    27a2:	095b      	lsrs	r3, r3, #5
    27a4:	f103 0430 	add.w	r4, r3, #48	; 0x30
    27a8:	704c      	strb	r4, [r1, #1]
	n%=100;
    27aa:	2464      	movs	r4, #100	; 0x64
    27ac:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    27b0:	4a1a      	ldr	r2, [pc, #104]	; (281c <date_str+0x9a>)
    27b2:	fba2 5403 	umull	r5, r4, r2, r3
    27b6:	08e4      	lsrs	r4, r4, #3
    27b8:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27bc:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    27be:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    27c2:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27c6:	3330      	adds	r3, #48	; 0x30
    27c8:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    27ca:	262f      	movs	r6, #47	; 0x2f
    27cc:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    27ce:	8843      	ldrh	r3, [r0, #2]
    27d0:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    27d4:	fba2 5403 	umull	r5, r4, r2, r3
    27d8:	08e4      	lsrs	r4, r4, #3
    27da:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27de:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    27e0:	00a5      	lsls	r5, r4, #2
    27e2:	442c      	add	r4, r5
    27e4:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27e8:	3330      	adds	r3, #48	; 0x30
    27ea:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    27ec:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    27ee:	7880      	ldrb	r0, [r0, #2]
    27f0:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    27f4:	fba2 3200 	umull	r3, r2, r2, r0
    27f8:	08d3      	lsrs	r3, r2, #3
    27fa:	f103 0230 	add.w	r2, r3, #48	; 0x30
    27fe:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    2800:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2804:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    2808:	3330      	adds	r3, #48	; 0x30
    280a:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    280c:	2300      	movs	r3, #0
    280e:	728b      	strb	r3, [r1, #10]

}
    2810:	bc70      	pop	{r4, r5, r6}
    2812:	4770      	bx	lr
    2814:	10624dd3 	.word	0x10624dd3
    2818:	51eb851f 	.word	0x51eb851f
    281c:	cccccccd 	.word	0xcccccccd

00002820 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    2820:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    2822:	6802      	ldr	r2, [r0, #0]
    2824:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    2828:	4b18      	ldr	r3, [pc, #96]	; (288c <time_str+0x6c>)
    282a:	fba3 5402 	umull	r5, r4, r3, r2
    282e:	08e4      	lsrs	r4, r4, #3
    2830:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2834:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    2836:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    283a:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    283e:	3230      	adds	r2, #48	; 0x30
    2840:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    2842:	253a      	movs	r5, #58	; 0x3a
    2844:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    2846:	8802      	ldrh	r2, [r0, #0]
    2848:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    284c:	fba3 6402 	umull	r6, r4, r3, r2
    2850:	08e4      	lsrs	r4, r4, #3
    2852:	f104 0630 	add.w	r6, r4, #48	; 0x30
    2856:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    2858:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    285c:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2860:	3230      	adds	r2, #48	; 0x30
    2862:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2864:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    2866:	7802      	ldrb	r2, [r0, #0]
    2868:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    286c:	fba3 0302 	umull	r0, r3, r3, r2
    2870:	08db      	lsrs	r3, r3, #3
    2872:	f103 0030 	add.w	r0, r3, #48	; 0x30
    2876:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2878:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    287c:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2880:	3330      	adds	r3, #48	; 0x30
    2882:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2884:	2300      	movs	r3, #0
    2886:	720b      	strb	r3, [r1, #8]
}
    2888:	bc70      	pop	{r4, r5, r6}
    288a:	4770      	bx	lr
    288c:	cccccccd 	.word	0xcccccccd

00002890 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2890:	b500      	push	{lr}
    2892:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2894:	a801      	add	r0, sp, #4
    2896:	f7ff fcbb 	bl	2210 <get_date_time>
	t.fields.second=dt.second/2;
    289a:	f89d 3004 	ldrb.w	r3, [sp, #4]
    289e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    28a2:	2000      	movs	r0, #0
    28a4:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    28a8:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    28ac:	f3c3 1385 	ubfx	r3, r3, #6, #6
    28b0:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    28b4:	9b01      	ldr	r3, [sp, #4]
    28b6:	f3c3 3304 	ubfx	r3, r3, #12, #5
    28ba:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    28be:	f89d 3006 	ldrb.w	r3, [sp, #6]
    28c2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    28c6:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    28ca:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    28ce:	f3c3 1383 	ubfx	r3, r3, #6, #4
    28d2:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    28d6:	f89d 300c 	ldrb.w	r3, [sp, #12]
    28da:	3344      	adds	r3, #68	; 0x44
    28dc:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    28e0:	b005      	add	sp, #20
    28e2:	f85d fb04 	ldr.w	pc, [sp], #4

000028e6 <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    28e6:	4b07      	ldr	r3, [pc, #28]	; (2904 <RTC_handler+0x1e>)
    28e8:	685b      	ldr	r3, [r3, #4]
    28ea:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    28ee:	bf1c      	itt	ne
    28f0:	4b04      	ldrne	r3, [pc, #16]	; (2904 <RTC_handler+0x1e>)
    28f2:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    28f4:	4b03      	ldr	r3, [pc, #12]	; (2904 <RTC_handler+0x1e>)
    28f6:	685b      	ldr	r3, [r3, #4]
    28f8:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    28fc:	bf1c      	itt	ne
    28fe:	4b01      	ldrne	r3, [pc, #4]	; (2904 <RTC_handler+0x1e>)
    2900:	685b      	ldrne	r3, [r3, #4]
    2902:	4770      	bx	lr
    2904:	40002800 	.word	0x40002800

00002908 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    2908:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    290a:	4b12      	ldr	r3, [pc, #72]	; (2954 <sound_init+0x4c>)
    290c:	685a      	ldr	r2, [r3, #4]
    290e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    2912:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    2914:	685a      	ldr	r2, [r3, #4]
    2916:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    291a:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    291c:	220a      	movs	r2, #10
    291e:	4611      	mov	r1, r2
    2920:	480d      	ldr	r0, [pc, #52]	; (2958 <sound_init+0x50>)
    2922:	f7fe fe47 	bl	15b4 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    2926:	4a0d      	ldr	r2, [pc, #52]	; (295c <sound_init+0x54>)
    2928:	69d3      	ldr	r3, [r2, #28]
    292a:	f043 0301 	orr.w	r3, r3, #1
    292e:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2930:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2934:	2278      	movs	r2, #120	; 0x78
    2936:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    2938:	f44f 7280 	mov.w	r2, #256	; 0x100
    293c:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    293e:	2209      	movs	r2, #9
    2940:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    2942:	2100      	movs	r1, #0
    2944:	201c      	movs	r0, #28
    2946:	f7ff fc19 	bl	217c <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    294a:	201c      	movs	r0, #28
    294c:	f7ff fbb6 	bl	20bc <enable_interrupt>
    2950:	bd08      	pop	{r3, pc}
    2952:	bf00      	nop
    2954:	40010000 	.word	0x40010000
    2958:	40010c00 	.word	0x40010c00
    295c:	40021000 	.word	0x40021000

00002960 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2960:	4b07      	ldr	r3, [pc, #28]	; (2980 <tone+0x20>)
    2962:	fbb3 f0f0 	udiv	r0, r3, r0
    2966:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    296a:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    296c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    296e:	0852      	lsrs	r2, r2, #1
    2970:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    2972:	681a      	ldr	r2, [r3, #0]
    2974:	f042 0201 	orr.w	r2, r2, #1
    2978:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    297a:	4b02      	ldr	r3, [pc, #8]	; (2984 <tone+0x24>)
    297c:	8019      	strh	r1, [r3, #0]
    297e:	4770      	bx	lr
    2980:	006d3d32 	.word	0x006d3d32
    2984:	20004e98 	.word	0x20004e98

00002988 <beep>:
}

void beep(uint16_t duration){
    2988:	b508      	push	{r3, lr}
    tone(1000,duration);
    298a:	4601      	mov	r1, r0
    298c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2990:	f7ff ffe6 	bl	2960 <tone>
    2994:	bd08      	pop	{r3, pc}

00002996 <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    2996:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    299a:	681a      	ldr	r2, [r3, #0]
    299c:	f022 0201 	bic.w	r2, r2, #1
    29a0:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    29a2:	68da      	ldr	r2, [r3, #12]
    29a4:	f022 0201 	bic.w	r2, r2, #1
    29a8:	60da      	str	r2, [r3, #12]
    29aa:	4770      	bx	lr

000029ac <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    29ac:	b510      	push	{r4, lr}
    29ae:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    29b0:	b289      	uxth	r1, r1
    29b2:	4b06      	ldr	r3, [pc, #24]	; (29cc <key_tone+0x20>)
    29b4:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    29b8:	f7ff ffd2 	bl	2960 <tone>
    if (wait_end) while (sound_timer);
    29bc:	b124      	cbz	r4, 29c8 <key_tone+0x1c>
    29be:	4a04      	ldr	r2, [pc, #16]	; (29d0 <key_tone+0x24>)
    29c0:	8813      	ldrh	r3, [r2, #0]
    29c2:	b29b      	uxth	r3, r3
    29c4:	2b00      	cmp	r3, #0
    29c6:	d1fb      	bne.n	29c0 <key_tone+0x14>
    29c8:	bd10      	pop	{r4, pc}
    29ca:	bf00      	nop
    29cc:	00003d9c 	.word	0x00003d9c
    29d0:	20004e98 	.word	0x20004e98

000029d4 <noise>:
}

// produit un bruit 
void noise(int length){
    29d4:	b510      	push	{r4, lr}
    29d6:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    29d8:	4b07      	ldr	r3, [pc, #28]	; (29f8 <noise+0x24>)
    29da:	6818      	ldr	r0, [r3, #0]
    29dc:	f7fd fcf4 	bl	3c8 <srand>
    tone(6000,length);
    29e0:	b2a1      	uxth	r1, r4
    29e2:	f241 7070 	movw	r0, #6000	; 0x1770
    29e6:	f7ff ffbb 	bl	2960 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    29ea:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29ee:	68d3      	ldr	r3, [r2, #12]
    29f0:	f043 0301 	orr.w	r3, r3, #1
    29f4:	60d3      	str	r3, [r2, #12]
    29f6:	bd10      	pop	{r4, pc}
    29f8:	20004e94 	.word	0x20004e94

000029fc <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    29fc:	4668      	mov	r0, sp
    29fe:	f020 0107 	bic.w	r1, r0, #7
    2a02:	468d      	mov	sp, r1
    2a04:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    2a06:	f7fd fce5 	bl	3d4 <rand>
    2a0a:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    2a0e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2a12:	6a13      	ldr	r3, [r2, #32]
    2a14:	bf14      	ite	ne
    2a16:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    2a1a:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    2a1e:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    2a20:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2a24:	6913      	ldr	r3, [r2, #16]
    2a26:	f023 0301 	bic.w	r3, r3, #1
    2a2a:	6113      	str	r3, [r2, #16]
}
    2a2c:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    2a30:	4685      	mov	sp, r0
    2a32:	4770      	bx	lr

00002a34 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    2a34:	6803      	ldr	r3, [r0, #0]
    2a36:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2a3a:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2a3c:	6803      	ldr	r3, [r0, #0]
    2a3e:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2a42:	6001      	str	r1, [r0, #0]
    2a44:	4770      	bx	lr

00002a46 <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2a46:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2a48:	4a2f      	ldr	r2, [pc, #188]	; (2b08 <spi_config_port+0xc2>)
    2a4a:	6993      	ldr	r3, [r2, #24]
    2a4c:	f043 0301 	orr.w	r3, r3, #1
    2a50:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2a52:	4b2e      	ldr	r3, [pc, #184]	; (2b0c <spi_config_port+0xc6>)
    2a54:	4298      	cmp	r0, r3
    2a56:	d01a      	beq.n	2a8e <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2a58:	4a2b      	ldr	r2, [pc, #172]	; (2b08 <spi_config_port+0xc2>)
    2a5a:	6993      	ldr	r3, [r2, #24]
    2a5c:	f043 0308 	orr.w	r3, r3, #8
    2a60:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2a62:	4c2b      	ldr	r4, [pc, #172]	; (2b10 <spi_config_port+0xca>)
    2a64:	2203      	movs	r2, #3
    2a66:	2102      	movs	r1, #2
    2a68:	4620      	mov	r0, r4
    2a6a:	f7fe fda3 	bl	15b4 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2a6e:	220b      	movs	r2, #11
    2a70:	210d      	movs	r1, #13
    2a72:	4620      	mov	r0, r4
    2a74:	f7fe fd9e 	bl	15b4 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2a78:	2204      	movs	r2, #4
    2a7a:	210e      	movs	r1, #14
    2a7c:	4620      	mov	r0, r4
    2a7e:	f7fe fd99 	bl	15b4 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2a82:	220b      	movs	r2, #11
    2a84:	210f      	movs	r1, #15
    2a86:	4620      	mov	r0, r4
    2a88:	f7fe fd94 	bl	15b4 <config_pin>
    2a8c:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    2a8e:	b9c9      	cbnz	r1, 2ac4 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2a90:	6993      	ldr	r3, [r2, #24]
    2a92:	f043 0304 	orr.w	r3, r3, #4
    2a96:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2a98:	4c1e      	ldr	r4, [pc, #120]	; (2b14 <spi_config_port+0xce>)
    2a9a:	2203      	movs	r2, #3
    2a9c:	2104      	movs	r1, #4
    2a9e:	4620      	mov	r0, r4
    2aa0:	f7fe fd88 	bl	15b4 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2aa4:	220b      	movs	r2, #11
    2aa6:	2105      	movs	r1, #5
    2aa8:	4620      	mov	r0, r4
    2aaa:	f7fe fd83 	bl	15b4 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2aae:	2204      	movs	r2, #4
    2ab0:	2106      	movs	r1, #6
    2ab2:	4620      	mov	r0, r4
    2ab4:	f7fe fd7e 	bl	15b4 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2ab8:	220b      	movs	r2, #11
    2aba:	2107      	movs	r1, #7
    2abc:	4620      	mov	r0, r4
    2abe:	f7fe fd79 	bl	15b4 <config_pin>
    2ac2:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2ac4:	4a10      	ldr	r2, [pc, #64]	; (2b08 <spi_config_port+0xc2>)
    2ac6:	6993      	ldr	r3, [r2, #24]
    2ac8:	f043 030d 	orr.w	r3, r3, #13
    2acc:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2ace:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    2ad2:	6853      	ldr	r3, [r2, #4]
    2ad4:	f043 0301 	orr.w	r3, r3, #1
    2ad8:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2ada:	2203      	movs	r2, #3
    2adc:	210f      	movs	r1, #15
    2ade:	480d      	ldr	r0, [pc, #52]	; (2b14 <spi_config_port+0xce>)
    2ae0:	f7fe fd68 	bl	15b4 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2ae4:	4c0a      	ldr	r4, [pc, #40]	; (2b10 <spi_config_port+0xca>)
    2ae6:	220b      	movs	r2, #11
    2ae8:	2103      	movs	r1, #3
    2aea:	4620      	mov	r0, r4
    2aec:	f7fe fd62 	bl	15b4 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2af0:	2204      	movs	r2, #4
    2af2:	4611      	mov	r1, r2
    2af4:	4620      	mov	r0, r4
    2af6:	f7fe fd5d 	bl	15b4 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2afa:	220b      	movs	r2, #11
    2afc:	2105      	movs	r1, #5
    2afe:	4620      	mov	r0, r4
    2b00:	f7fe fd58 	bl	15b4 <config_pin>
    2b04:	bd10      	pop	{r4, pc}
    2b06:	bf00      	nop
    2b08:	40021000 	.word	0x40021000
    2b0c:	40013000 	.word	0x40013000
    2b10:	40010c00 	.word	0x40010c00
    2b14:	40010800 	.word	0x40010800

00002b18 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2b18:	b570      	push	{r4, r5, r6, lr}
    2b1a:	4604      	mov	r4, r0
    2b1c:	460d      	mov	r5, r1
    2b1e:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2b20:	4619      	mov	r1, r3
    2b22:	f7ff ff90 	bl	2a46 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2b26:	4b0c      	ldr	r3, [pc, #48]	; (2b58 <spi_init+0x40>)
    2b28:	429c      	cmp	r4, r3
    2b2a:	d00e      	beq.n	2b4a <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2b2c:	4a0b      	ldr	r2, [pc, #44]	; (2b5c <spi_init+0x44>)
    2b2e:	69d3      	ldr	r3, [r2, #28]
    2b30:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2b34:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    2b36:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2b38:	4629      	mov	r1, r5
    2b3a:	4620      	mov	r0, r4
    2b3c:	f7ff ff7a 	bl	2a34 <spi_baudrate>
	_spi_enable(channel);
    2b40:	6823      	ldr	r3, [r4, #0]
    2b42:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2b46:	6023      	str	r3, [r4, #0]
    2b48:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2b4a:	4a04      	ldr	r2, [pc, #16]	; (2b5c <spi_init+0x44>)
    2b4c:	6993      	ldr	r3, [r2, #24]
    2b4e:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2b52:	6193      	str	r3, [r2, #24]
    2b54:	e7ef      	b.n	2b36 <spi_init+0x1e>
    2b56:	bf00      	nop
    2b58:	40013000 	.word	0x40013000
    2b5c:	40021000 	.word	0x40021000

00002b60 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2b60:	6883      	ldr	r3, [r0, #8]
    2b62:	f013 0f02 	tst.w	r3, #2
    2b66:	d0fb      	beq.n	2b60 <spi_send>
	channel->DR=b;
    2b68:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b6a:	6883      	ldr	r3, [r0, #8]
    2b6c:	f013 0f01 	tst.w	r3, #1
    2b70:	d0fb      	beq.n	2b6a <spi_send+0xa>
	return (uint8_t)channel->DR;
    2b72:	68c0      	ldr	r0, [r0, #12]
}
    2b74:	b2c0      	uxtb	r0, r0
    2b76:	4770      	bx	lr

00002b78 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2b78:	6883      	ldr	r3, [r0, #8]
    2b7a:	f013 0f02 	tst.w	r3, #2
    2b7e:	d0fb      	beq.n	2b78 <spi_receive>
	channel->DR=255;
    2b80:	23ff      	movs	r3, #255	; 0xff
    2b82:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b84:	6883      	ldr	r3, [r0, #8]
    2b86:	f013 0f01 	tst.w	r3, #1
    2b8a:	d0fb      	beq.n	2b84 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2b8c:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2b8e:	b2c0      	uxtb	r0, r0
    2b90:	4770      	bx	lr

00002b92 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2b92:	b14a      	cbz	r2, 2ba8 <spi_send_block+0x16>
    2b94:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2b96:	f811 3b01 	ldrb.w	r3, [r1], #1
    2b9a:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2b9c:	6883      	ldr	r3, [r0, #8]
    2b9e:	f013 0f02 	tst.w	r3, #2
    2ba2:	d0fb      	beq.n	2b9c <spi_send_block+0xa>
	while (count){
    2ba4:	428a      	cmp	r2, r1
    2ba6:	d1f6      	bne.n	2b96 <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2ba8:	6883      	ldr	r3, [r0, #8]
    2baa:	f013 0f80 	tst.w	r3, #128	; 0x80
    2bae:	d1fb      	bne.n	2ba8 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2bb0:	68c3      	ldr	r3, [r0, #12]
    2bb2:	4770      	bx	lr

00002bb4 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2bb4:	b16a      	cbz	r2, 2bd2 <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2bb6:	b410      	push	{r4}
    2bb8:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2bba:	2400      	movs	r4, #0
    2bbc:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2bbe:	6883      	ldr	r3, [r0, #8]
    2bc0:	f013 0f01 	tst.w	r3, #1
    2bc4:	d0fb      	beq.n	2bbe <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2bc6:	68c3      	ldr	r3, [r0, #12]
    2bc8:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2bcc:	428a      	cmp	r2, r1
    2bce:	d1f5      	bne.n	2bbc <spi_receive_block+0x8>
		count--;
	}
}
    2bd0:	bc10      	pop	{r4}
    2bd2:	4770      	bx	lr

00002bd4 <reset_mcu>:
	_reset_mcu();
    2bd4:	4a01      	ldr	r2, [pc, #4]	; (2bdc <reset_mcu+0x8>)
    2bd6:	4b02      	ldr	r3, [pc, #8]	; (2be0 <reset_mcu+0xc>)
    2bd8:	601a      	str	r2, [r3, #0]
    2bda:	bf00      	nop
    2bdc:	05fa0004 	.word	0x05fa0004
    2be0:	e000ed0c 	.word	0xe000ed0c

00002be4 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2be4:	b508      	push	{r3, lr}
    2be6:	460c      	mov	r4, r1
	print(msg);
    2be8:	f000 f964 	bl	2eb4 <print>
	print("\nat address ");
    2bec:	4813      	ldr	r0, [pc, #76]	; (2c3c <print_fault+0x58>)
    2bee:	f000 f961 	bl	2eb4 <print>
	if (adr) {
    2bf2:	b9ec      	cbnz	r4, 2c30 <print_fault+0x4c>
	put_char(CR);
    2bf4:	200d      	movs	r0, #13
    2bf6:	f000 f8bf 	bl	2d78 <put_char>
	print("\nUFSR=");
    2bfa:	4811      	ldr	r0, [pc, #68]	; (2c40 <print_fault+0x5c>)
    2bfc:	f000 f95a 	bl	2eb4 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2c00:	4c10      	ldr	r4, [pc, #64]	; (2c44 <print_fault+0x60>)
    2c02:	6820      	ldr	r0, [r4, #0]
    2c04:	2110      	movs	r1, #16
    2c06:	40c8      	lsrs	r0, r1
    2c08:	f000 f96f 	bl	2eea <print_int>
	print("\nBFSR=");
    2c0c:	480e      	ldr	r0, [pc, #56]	; (2c48 <print_fault+0x64>)
    2c0e:	f000 f951 	bl	2eb4 <print>
	print_int(CFSR->fsr.busFault,16);
    2c12:	6820      	ldr	r0, [r4, #0]
    2c14:	2110      	movs	r1, #16
    2c16:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2c1a:	f000 f966 	bl	2eea <print_int>
	print("\nMMFSR=");
    2c1e:	480b      	ldr	r0, [pc, #44]	; (2c4c <print_fault+0x68>)
    2c20:	f000 f948 	bl	2eb4 <print>
	print_int(CFSR->fsr.mmFault,16);
    2c24:	6820      	ldr	r0, [r4, #0]
    2c26:	2110      	movs	r1, #16
    2c28:	b2c0      	uxtb	r0, r0
    2c2a:	f000 f95e 	bl	2eea <print_int>
    2c2e:	e7fe      	b.n	2c2e <print_fault+0x4a>
		print_int(adr,16);
    2c30:	2110      	movs	r1, #16
    2c32:	4620      	mov	r0, r4
    2c34:	f000 f959 	bl	2eea <print_int>
    2c38:	e7dc      	b.n	2bf4 <print_fault+0x10>
    2c3a:	bf00      	nop
    2c3c:	00004080 	.word	0x00004080
    2c40:	00004090 	.word	0x00004090
    2c44:	e000ed28 	.word	0xe000ed28
    2c48:	00004098 	.word	0x00004098
    2c4c:	000040a0 	.word	0x000040a0

00002c50 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2c50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2c54:	b083      	sub	sp, #12
    2c56:	9001      	str	r0, [sp, #4]
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2c58:	18cb      	adds	r3, r1, r3
    2c5a:	9300      	str	r3, [sp, #0]
    2c5c:	4299      	cmp	r1, r3
    2c5e:	da22      	bge.n	2ca6 <draw_char+0x56>
    2c60:	460e      	mov	r6, r1
    2c62:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2c64:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2c68:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c6a:	f8df a040 	ldr.w	sl, [pc, #64]	; 2cac <draw_char+0x5c>
		byte=*glyph++;
    2c6e:	f81b 8f01 	ldrb.w	r8, [fp, #1]!
		for (x0=x;x0<(x+w);x0++){
    2c72:	9c01      	ldr	r4, [sp, #4]
    2c74:	42bc      	cmp	r4, r7
    2c76:	da12      	bge.n	2c9e <draw_char+0x4e>
    2c78:	2580      	movs	r5, #128	; 0x80
			gfx_blit(x0,y0,c,BIT_SET);
    2c7a:	f04f 0904 	mov.w	r9, #4
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c7e:	ea18 0f05 	tst.w	r8, r5
    2c82:	bf14      	ite	ne
    2c84:	f89a 2001 	ldrbne.w	r2, [sl, #1]
    2c88:	f89a 2000 	ldrbeq.w	r2, [sl]
			gfx_blit(x0,y0,c,BIT_SET);
    2c8c:	464b      	mov	r3, r9
    2c8e:	4631      	mov	r1, r6
    2c90:	4620      	mov	r0, r4
    2c92:	f7fe fccf 	bl	1634 <gfx_blit>
			mask>>=1;
    2c96:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2c98:	3401      	adds	r4, #1
    2c9a:	42bc      	cmp	r4, r7
    2c9c:	d1ef      	bne.n	2c7e <draw_char+0x2e>
	for (y0=y;y0<(y+h);y0++){
    2c9e:	3601      	adds	r6, #1
    2ca0:	9b00      	ldr	r3, [sp, #0]
    2ca2:	429e      	cmp	r6, r3
    2ca4:	d1e3      	bne.n	2c6e <draw_char+0x1e>
		}
	}
}
    2ca6:	b003      	add	sp, #12
    2ca8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2cac:	20000220 	.word	0x20000220

00002cb0 <font_color>:
	text_colors[FG]=color&0xf;
    2cb0:	f000 000f 	and.w	r0, r0, #15
    2cb4:	4b01      	ldr	r3, [pc, #4]	; (2cbc <font_color+0xc>)
    2cb6:	7058      	strb	r0, [r3, #1]
    2cb8:	4770      	bx	lr
    2cba:	bf00      	nop
    2cbc:	20000220 	.word	0x20000220

00002cc0 <bg_color>:
	text_colors[BG]=color&0xf;
    2cc0:	f000 000f 	and.w	r0, r0, #15
    2cc4:	4b01      	ldr	r3, [pc, #4]	; (2ccc <bg_color+0xc>)
    2cc6:	7018      	strb	r0, [r3, #0]
    2cc8:	4770      	bx	lr
    2cca:	bf00      	nop
    2ccc:	20000220 	.word	0x20000220

00002cd0 <select_font>:
	font=font_id;
    2cd0:	4b01      	ldr	r3, [pc, #4]	; (2cd8 <select_font+0x8>)
    2cd2:	7098      	strb	r0, [r3, #2]
    2cd4:	4770      	bx	lr
    2cd6:	bf00      	nop
    2cd8:	20000220 	.word	0x20000220

00002cdc <get_font>:
}
    2cdc:	4b01      	ldr	r3, [pc, #4]	; (2ce4 <get_font+0x8>)
    2cde:	7898      	ldrb	r0, [r3, #2]
    2ce0:	4770      	bx	lr
    2ce2:	bf00      	nop
    2ce4:	20000220 	.word	0x20000220

00002ce8 <new_line>:
void new_line(){
    2ce8:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2cea:	4b21      	ldr	r3, [pc, #132]	; (2d70 <new_line+0x88>)
    2cec:	781b      	ldrb	r3, [r3, #0]
    2cee:	2b00      	cmp	r3, #0
    2cf0:	d138      	bne.n	2d64 <new_line+0x7c>
		xpos=0;
    2cf2:	2200      	movs	r2, #0
    2cf4:	4b1e      	ldr	r3, [pc, #120]	; (2d70 <new_line+0x88>)
    2cf6:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2cf8:	f000 fbf6 	bl	34e8 <get_video_params>
		switch (font){
    2cfc:	4b1d      	ldr	r3, [pc, #116]	; (2d74 <new_line+0x8c>)
    2cfe:	789b      	ldrb	r3, [r3, #2]
    2d00:	2b01      	cmp	r3, #1
    2d02:	d011      	beq.n	2d28 <new_line+0x40>
    2d04:	b113      	cbz	r3, 2d0c <new_line+0x24>
    2d06:	2b02      	cmp	r3, #2
    2d08:	d01d      	beq.n	2d46 <new_line+0x5e>
    2d0a:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2d0c:	4b18      	ldr	r3, [pc, #96]	; (2d70 <new_line+0x88>)
    2d0e:	789b      	ldrb	r3, [r3, #2]
    2d10:	1d99      	adds	r1, r3, #6
    2d12:	89c2      	ldrh	r2, [r0, #14]
    2d14:	3a05      	subs	r2, #5
    2d16:	4291      	cmp	r1, r2
    2d18:	dc02      	bgt.n	2d20 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2d1a:	4a15      	ldr	r2, [pc, #84]	; (2d70 <new_line+0x88>)
    2d1c:	7091      	strb	r1, [r2, #2]
    2d1e:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2d20:	2006      	movs	r0, #6
    2d22:	f7fe fce7 	bl	16f4 <gfx_scroll_up>
    2d26:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2d28:	4b11      	ldr	r3, [pc, #68]	; (2d70 <new_line+0x88>)
    2d2a:	789b      	ldrb	r3, [r3, #2]
    2d2c:	f103 010a 	add.w	r1, r3, #10
    2d30:	89c2      	ldrh	r2, [r0, #14]
    2d32:	3a09      	subs	r2, #9
    2d34:	4291      	cmp	r1, r2
    2d36:	dc02      	bgt.n	2d3e <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2d38:	4a0d      	ldr	r2, [pc, #52]	; (2d70 <new_line+0x88>)
    2d3a:	7091      	strb	r1, [r2, #2]
    2d3c:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2d3e:	200a      	movs	r0, #10
    2d40:	f7fe fcd8 	bl	16f4 <gfx_scroll_up>
    2d44:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2d46:	4b0a      	ldr	r3, [pc, #40]	; (2d70 <new_line+0x88>)
    2d48:	789b      	ldrb	r3, [r3, #2]
    2d4a:	f103 0108 	add.w	r1, r3, #8
    2d4e:	89c2      	ldrh	r2, [r0, #14]
    2d50:	3a07      	subs	r2, #7
    2d52:	4291      	cmp	r1, r2
    2d54:	dc02      	bgt.n	2d5c <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2d56:	4a06      	ldr	r2, [pc, #24]	; (2d70 <new_line+0x88>)
    2d58:	7091      	strb	r1, [r2, #2]
    2d5a:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2d5c:	2008      	movs	r0, #8
    2d5e:	f7fe fcc9 	bl	16f4 <gfx_scroll_up>
    2d62:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    2d64:	210a      	movs	r1, #10
    2d66:	2000      	movs	r0, #0
    2d68:	f000 fd2c 	bl	37c4 <usart_putc>
    2d6c:	bd08      	pop	{r3, pc}
    2d6e:	bf00      	nop
    2d70:	200006b8 	.word	0x200006b8
    2d74:	20000220 	.word	0x20000220

00002d78 <put_char>:

void put_char(uint8_t c){
    2d78:	b530      	push	{r4, r5, lr}
    2d7a:	b083      	sub	sp, #12
	if (console==LOCAL){
    2d7c:	4b2e      	ldr	r3, [pc, #184]	; (2e38 <put_char+0xc0>)
    2d7e:	781b      	ldrb	r3, [r3, #0]
    2d80:	2b00      	cmp	r3, #0
    2d82:	d153      	bne.n	2e2c <put_char+0xb4>
		switch(font){
    2d84:	4b2d      	ldr	r3, [pc, #180]	; (2e3c <put_char+0xc4>)
    2d86:	789b      	ldrb	r3, [r3, #2]
    2d88:	2b01      	cmp	r3, #1
    2d8a:	d036      	beq.n	2dfa <put_char+0x82>
    2d8c:	b1e3      	cbz	r3, 2dc8 <put_char+0x50>
    2d8e:	2b02      	cmp	r3, #2
    2d90:	d150      	bne.n	2e34 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2d92:	f1a0 0320 	sub.w	r3, r0, #32
    2d96:	b2db      	uxtb	r3, r3
    2d98:	2b64      	cmp	r3, #100	; 0x64
    2d9a:	d84b      	bhi.n	2e34 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2d9c:	4c26      	ldr	r4, [pc, #152]	; (2e38 <put_char+0xc0>)
    2d9e:	78a1      	ldrb	r1, [r4, #2]
    2da0:	7865      	ldrb	r5, [r4, #1]
    2da2:	3820      	subs	r0, #32
    2da4:	4b26      	ldr	r3, [pc, #152]	; (2e40 <put_char+0xc8>)
    2da6:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2daa:	9300      	str	r3, [sp, #0]
    2dac:	2308      	movs	r3, #8
    2dae:	2206      	movs	r2, #6
    2db0:	4628      	mov	r0, r5
    2db2:	f7ff ff4d 	bl	2c50 <draw_char>
				xpos+=CHAR_WIDTH;
    2db6:	7863      	ldrb	r3, [r4, #1]
    2db8:	3306      	adds	r3, #6
    2dba:	b2db      	uxtb	r3, r3
    2dbc:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2dbe:	2baf      	cmp	r3, #175	; 0xaf
    2dc0:	d938      	bls.n	2e34 <put_char+0xbc>
					new_line();
    2dc2:	f7ff ff91 	bl	2ce8 <new_line>
    2dc6:	e035      	b.n	2e34 <put_char+0xbc>
			if (c<16){
    2dc8:	280f      	cmp	r0, #15
    2dca:	d833      	bhi.n	2e34 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2dcc:	4c1a      	ldr	r4, [pc, #104]	; (2e38 <put_char+0xc0>)
    2dce:	78a1      	ldrb	r1, [r4, #2]
    2dd0:	7865      	ldrb	r5, [r4, #1]
    2dd2:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2dd6:	4b1b      	ldr	r3, [pc, #108]	; (2e44 <put_char+0xcc>)
    2dd8:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2ddc:	9300      	str	r3, [sp, #0]
    2dde:	2306      	movs	r3, #6
    2de0:	2204      	movs	r2, #4
    2de2:	4628      	mov	r0, r5
    2de4:	f7ff ff34 	bl	2c50 <draw_char>
				xpos+=SHEX_WIDTH;
    2de8:	7863      	ldrb	r3, [r4, #1]
    2dea:	3304      	adds	r3, #4
    2dec:	b2db      	uxtb	r3, r3
    2dee:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2df0:	2bb1      	cmp	r3, #177	; 0xb1
    2df2:	d91f      	bls.n	2e34 <put_char+0xbc>
					new_line();
    2df4:	f7ff ff78 	bl	2ce8 <new_line>
    2df8:	e01c      	b.n	2e34 <put_char+0xbc>
			if (c<16){
    2dfa:	280f      	cmp	r0, #15
    2dfc:	d81a      	bhi.n	2e34 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2dfe:	4c0e      	ldr	r4, [pc, #56]	; (2e38 <put_char+0xc0>)
    2e00:	78a1      	ldrb	r1, [r4, #2]
    2e02:	7865      	ldrb	r5, [r4, #1]
    2e04:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2e08:	4b0f      	ldr	r3, [pc, #60]	; (2e48 <put_char+0xd0>)
    2e0a:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2e0e:	9300      	str	r3, [sp, #0]
    2e10:	230a      	movs	r3, #10
    2e12:	2208      	movs	r2, #8
    2e14:	4628      	mov	r0, r5
    2e16:	f7ff ff1b 	bl	2c50 <draw_char>
				xpos+=LHEX_WIDTH;
    2e1a:	7863      	ldrb	r3, [r4, #1]
    2e1c:	3308      	adds	r3, #8
    2e1e:	b2db      	uxtb	r3, r3
    2e20:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2e22:	2bad      	cmp	r3, #173	; 0xad
    2e24:	d906      	bls.n	2e34 <put_char+0xbc>
					new_line();
    2e26:	f7ff ff5f 	bl	2ce8 <new_line>
    2e2a:	e003      	b.n	2e34 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2e2c:	4601      	mov	r1, r0
    2e2e:	2000      	movs	r0, #0
    2e30:	f000 fcc8 	bl	37c4 <usart_putc>
	}
}
    2e34:	b003      	add	sp, #12
    2e36:	bd30      	pop	{r4, r5, pc}
    2e38:	200006b8 	.word	0x200006b8
    2e3c:	20000220 	.word	0x20000220
    2e40:	00003914 	.word	0x00003914
    2e44:	00003cdc 	.word	0x00003cdc
    2e48:	00003c3c 	.word	0x00003c3c

00002e4c <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2e4c:	4b01      	ldr	r3, [pc, #4]	; (2e54 <set_cursor+0x8>)
    2e4e:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2e50:	7099      	strb	r1, [r3, #2]
    2e52:	4770      	bx	lr
    2e54:	200006b8 	.word	0x200006b8

00002e58 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2e58:	4b03      	ldr	r3, [pc, #12]	; (2e68 <get_cursor+0x10>)
    2e5a:	785a      	ldrb	r2, [r3, #1]
    2e5c:	7898      	ldrb	r0, [r3, #2]
    2e5e:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2e62:	b280      	uxth	r0, r0
    2e64:	4770      	bx	lr
    2e66:	bf00      	nop
    2e68:	200006b8 	.word	0x200006b8

00002e6c <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2e6c:	4b0f      	ldr	r3, [pc, #60]	; (2eac <cursor_left+0x40>)
    2e6e:	789b      	ldrb	r3, [r3, #2]
    2e70:	2b01      	cmp	r3, #1
    2e72:	d00b      	beq.n	2e8c <cursor_left+0x20>
    2e74:	b113      	cbz	r3, 2e7c <cursor_left+0x10>
    2e76:	2b02      	cmp	r3, #2
    2e78:	d010      	beq.n	2e9c <cursor_left+0x30>
    2e7a:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2e7c:	4b0c      	ldr	r3, [pc, #48]	; (2eb0 <cursor_left+0x44>)
    2e7e:	785b      	ldrb	r3, [r3, #1]
    2e80:	2b04      	cmp	r3, #4
    2e82:	d412      	bmi.n	2eaa <cursor_left+0x3e>
    2e84:	3b04      	subs	r3, #4
    2e86:	4a0a      	ldr	r2, [pc, #40]	; (2eb0 <cursor_left+0x44>)
    2e88:	7053      	strb	r3, [r2, #1]
    2e8a:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2e8c:	4b08      	ldr	r3, [pc, #32]	; (2eb0 <cursor_left+0x44>)
    2e8e:	785b      	ldrb	r3, [r3, #1]
    2e90:	2b08      	cmp	r3, #8
    2e92:	d40a      	bmi.n	2eaa <cursor_left+0x3e>
    2e94:	3b08      	subs	r3, #8
    2e96:	4a06      	ldr	r2, [pc, #24]	; (2eb0 <cursor_left+0x44>)
    2e98:	7053      	strb	r3, [r2, #1]
    2e9a:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2e9c:	4b04      	ldr	r3, [pc, #16]	; (2eb0 <cursor_left+0x44>)
    2e9e:	785b      	ldrb	r3, [r3, #1]
    2ea0:	2b06      	cmp	r3, #6
    2ea2:	d402      	bmi.n	2eaa <cursor_left+0x3e>
    2ea4:	3b06      	subs	r3, #6
    2ea6:	4a02      	ldr	r2, [pc, #8]	; (2eb0 <cursor_left+0x44>)
    2ea8:	7053      	strb	r3, [r2, #1]
    2eaa:	4770      	bx	lr
    2eac:	20000220 	.word	0x20000220
    2eb0:	200006b8 	.word	0x200006b8

00002eb4 <print>:
void print(const char* str){
    2eb4:	b510      	push	{r4, lr}
    2eb6:	4604      	mov	r4, r0
    while ((c=*str++)){
    2eb8:	e001      	b.n	2ebe <print+0xa>
            new_line();
    2eba:	f7ff ff15 	bl	2ce8 <new_line>
    while ((c=*str++)){
    2ebe:	f814 0b01 	ldrb.w	r0, [r4], #1
    2ec2:	b158      	cbz	r0, 2edc <print+0x28>
        switch(c){
    2ec4:	280a      	cmp	r0, #10
    2ec6:	d0f8      	beq.n	2eba <print+0x6>
    2ec8:	280d      	cmp	r0, #13
    2eca:	d0f6      	beq.n	2eba <print+0x6>
    2ecc:	2808      	cmp	r0, #8
    2ece:	d002      	beq.n	2ed6 <print+0x22>
            put_char(c);
    2ed0:	f7ff ff52 	bl	2d78 <put_char>
    2ed4:	e7f3      	b.n	2ebe <print+0xa>
            cursor_left();    
    2ed6:	f7ff ffc9 	bl	2e6c <cursor_left>
            break;
    2eda:	e7f0      	b.n	2ebe <print+0xa>
}
    2edc:	bd10      	pop	{r4, pc}

00002ede <println>:
void println(const char *text){
    2ede:	b508      	push	{r3, lr}
	print(text);
    2ee0:	f7ff ffe8 	bl	2eb4 <print>
	new_line();
    2ee4:	f7ff ff00 	bl	2ce8 <new_line>
    2ee8:	bd08      	pop	{r3, pc}

00002eea <print_int>:
void print_int(int i,uint8_t base){
    2eea:	b530      	push	{r4, r5, lr}
    2eec:	b085      	sub	sp, #20
    fmt[15]=0;
    2eee:	2300      	movs	r3, #0
    2ef0:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2ef4:	2320      	movs	r3, #32
    2ef6:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2efa:	1e02      	subs	r2, r0, #0
        i=-i;
    2efc:	bfba      	itte	lt
    2efe:	4252      	neglt	r2, r2
        sign=1;
    2f00:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2f02:	2500      	movge	r5, #0
    while (idx>1 && i){
    2f04:	b1aa      	cbz	r2, 2f32 <print_int+0x48>
    2f06:	f10d 040e 	add.w	r4, sp, #14
    2f0a:	200e      	movs	r0, #14
        d=i%base;
    2f0c:	fb92 f3f1 	sdiv	r3, r2, r1
    2f10:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2f14:	2b09      	cmp	r3, #9
    2f16:	bfc8      	it	gt
    2f18:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2f1a:	3801      	subs	r0, #1
    2f1c:	3330      	adds	r3, #48	; 0x30
    2f1e:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2f22:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2f26:	2801      	cmp	r0, #1
    2f28:	d007      	beq.n	2f3a <print_int+0x50>
    2f2a:	2a00      	cmp	r2, #0
    2f2c:	d1ee      	bne.n	2f0c <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2f2e:	280e      	cmp	r0, #14
    2f30:	d103      	bne.n	2f3a <print_int+0x50>
    2f32:	2330      	movs	r3, #48	; 0x30
    2f34:	f88d 300d 	strb.w	r3, [sp, #13]
    2f38:	200d      	movs	r0, #13
    if (base==10 && sign){
    2f3a:	290a      	cmp	r1, #10
    2f3c:	d006      	beq.n	2f4c <print_int+0x62>
    }else if (base==16){
    2f3e:	2910      	cmp	r1, #16
    2f40:	d00d      	beq.n	2f5e <print_int+0x74>
    print(&fmt[idx]);
    2f42:	4468      	add	r0, sp
    2f44:	f7ff ffb6 	bl	2eb4 <print>
}
    2f48:	b005      	add	sp, #20
    2f4a:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2f4c:	2d00      	cmp	r5, #0
    2f4e:	d0f8      	beq.n	2f42 <print_int+0x58>
        fmt[--idx]='-';
    2f50:	3801      	subs	r0, #1
    2f52:	ab04      	add	r3, sp, #16
    2f54:	4403      	add	r3, r0
    2f56:	222d      	movs	r2, #45	; 0x2d
    2f58:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f5c:	e7f1      	b.n	2f42 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2f5e:	f010 0f01 	tst.w	r0, #1
    2f62:	d005      	beq.n	2f70 <print_int+0x86>
    2f64:	3801      	subs	r0, #1
    2f66:	ab04      	add	r3, sp, #16
    2f68:	4403      	add	r3, r0
    2f6a:	2230      	movs	r2, #48	; 0x30
    2f6c:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2f70:	3801      	subs	r0, #1
    2f72:	ab04      	add	r3, sp, #16
    2f74:	4403      	add	r3, r0
    2f76:	2224      	movs	r2, #36	; 0x24
    2f78:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f7c:	e7e1      	b.n	2f42 <print_int+0x58>

00002f7e <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2f7e:	b508      	push	{r3, lr}
	print("press button");
    2f80:	4801      	ldr	r0, [pc, #4]	; (2f88 <prompt_btn+0xa>)
    2f82:	f7ff ff97 	bl	2eb4 <print>
    2f86:	bd08      	pop	{r3, pc}
    2f88:	000040ec 	.word	0x000040ec

00002f8c <clear_screen>:
}

void clear_screen(){
    2f8c:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2f8e:	4b07      	ldr	r3, [pc, #28]	; (2fac <clear_screen+0x20>)
    2f90:	781b      	ldrb	r3, [r3, #0]
    2f92:	b123      	cbz	r3, 2f9e <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    2f94:	210c      	movs	r1, #12
    2f96:	2000      	movs	r0, #0
    2f98:	f000 fc14 	bl	37c4 <usart_putc>
    2f9c:	bd08      	pop	{r3, pc}
		gfx_cls();
    2f9e:	f7fe fb95 	bl	16cc <gfx_cls>
		xpos=0;
    2fa2:	4b02      	ldr	r3, [pc, #8]	; (2fac <clear_screen+0x20>)
    2fa4:	2200      	movs	r2, #0
    2fa6:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2fa8:	709a      	strb	r2, [r3, #2]
    2faa:	bd08      	pop	{r3, pc}
    2fac:	200006b8 	.word	0x200006b8

00002fb0 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2fb0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x,y;
	uint8_t color=show?15:0;
    2fb2:	2800      	cmp	r0, #0
    2fb4:	bf14      	ite	ne
    2fb6:	260f      	movne	r6, #15
    2fb8:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2fba:	4b0a      	ldr	r3, [pc, #40]	; (2fe4 <show_cursor+0x34>)
    2fbc:	785c      	ldrb	r4, [r3, #1]
    2fbe:	1da3      	adds	r3, r4, #6
    2fc0:	429c      	cmp	r4, r3
    2fc2:	da0d      	bge.n	2fe0 <show_cursor+0x30>
			gfx_blit(x,ypos+CHAR_HEIGHT-1,color,BIT_SET);
    2fc4:	4d07      	ldr	r5, [pc, #28]	; (2fe4 <show_cursor+0x34>)
    2fc6:	2704      	movs	r7, #4
    2fc8:	78a9      	ldrb	r1, [r5, #2]
    2fca:	463b      	mov	r3, r7
    2fcc:	4632      	mov	r2, r6
    2fce:	3107      	adds	r1, #7
    2fd0:	4620      	mov	r0, r4
    2fd2:	f7fe fb2f 	bl	1634 <gfx_blit>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2fd6:	3401      	adds	r4, #1
    2fd8:	786b      	ldrb	r3, [r5, #1]
    2fda:	3306      	adds	r3, #6
    2fdc:	42a3      	cmp	r3, r4
    2fde:	dcf3      	bgt.n	2fc8 <show_cursor+0x18>
    2fe0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    2fe2:	bf00      	nop
    2fe4:	200006b8 	.word	0x200006b8

00002fe8 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2fe8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2fec:	f000 fa7c 	bl	34e8 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ff0:	4b0c      	ldr	r3, [pc, #48]	; (3024 <clear_line+0x3c>)
    2ff2:	789c      	ldrb	r4, [r3, #2]
    2ff4:	f104 0308 	add.w	r3, r4, #8
    2ff8:	429c      	cmp	r4, r3
    2ffa:	da10      	bge.n	301e <clear_line+0x36>
    2ffc:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2ffe:	f8df 8028 	ldr.w	r8, [pc, #40]	; 3028 <clear_line+0x40>
    3002:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    3004:	4e07      	ldr	r6, [pc, #28]	; (3024 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    3006:	7a28      	ldrb	r0, [r5, #8]
    3008:	463a      	mov	r2, r7
    300a:	4601      	mov	r1, r0
    300c:	fb04 8000 	mla	r0, r4, r0, r8
    3010:	f7fe fa27 	bl	1462 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    3014:	3401      	adds	r4, #1
    3016:	78b3      	ldrb	r3, [r6, #2]
    3018:	3308      	adds	r3, #8
    301a:	42a3      	cmp	r3, r4
    301c:	dcf3      	bgt.n	3006 <clear_line+0x1e>
    301e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    3022:	bf00      	nop
    3024:	200006b8 	.word	0x200006b8
    3028:	20002730 	.word	0x20002730

0000302c <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    302c:	4b01      	ldr	r3, [pc, #4]	; (3034 <select_console+0x8>)
    302e:	7018      	strb	r0, [r3, #0]
    3030:	4770      	bx	lr
    3032:	bf00      	nop
    3034:	200006b8 	.word	0x200006b8

00003038 <get_char>:
}

//read a character from serial port
char get_char(){
    3038:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    303a:	2400      	movs	r4, #0
    303c:	4620      	mov	r0, r4
    303e:	f000 fb8f 	bl	3760 <usart_getc>
    3042:	2800      	cmp	r0, #0
    3044:	d0fa      	beq.n	303c <get_char+0x4>
	return c;
}
    3046:	bd10      	pop	{r4, pc}

00003048 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    3048:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    304c:	4c31      	ldr	r4, [pc, #196]	; (3114 <tvout_init+0xcc>)
    304e:	4b32      	ldr	r3, [pc, #200]	; (3118 <tvout_init+0xd0>)
    3050:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    3052:	4a32      	ldr	r2, [pc, #200]	; (311c <tvout_init+0xd4>)
    3054:	4b32      	ldr	r3, [pc, #200]	; (3120 <tvout_init+0xd8>)
    3056:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    3058:	220a      	movs	r2, #10
    305a:	2108      	movs	r1, #8
    305c:	4620      	mov	r0, r4
    305e:	f7fe faa9 	bl	15b4 <config_pin>
    PORTA->ODR=0;
    3062:	2500      	movs	r5, #0
    3064:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    3066:	4e2f      	ldr	r6, [pc, #188]	; (3124 <tvout_init+0xdc>)
    3068:	69b3      	ldr	r3, [r6, #24]
    306a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    306e:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    3070:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    3074:	f04f 0878 	mov.w	r8, #120	; 0x78
    3078:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    307c:	2301      	movs	r3, #1
    307e:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    3080:	2784      	movs	r7, #132	; 0x84
    3082:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    3084:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3088:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    308a:	f44f 73a8 	mov.w	r3, #336	; 0x150
    308e:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    3090:	f240 1365 	movw	r3, #357	; 0x165
    3094:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    3096:	6963      	ldr	r3, [r4, #20]
    3098:	f043 0301 	orr.w	r3, r3, #1
    309c:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    309e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    30a2:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    30a4:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    30a6:	68e3      	ldr	r3, [r4, #12]
    30a8:	f043 0301 	orr.w	r3, r3, #1
    30ac:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    30ae:	4629      	mov	r1, r5
    30b0:	2019      	movs	r0, #25
    30b2:	f7ff f863 	bl	217c <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    30b6:	4629      	mov	r1, r5
    30b8:	201b      	movs	r0, #27
    30ba:	f7ff f85f 	bl	217c <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    30be:	2019      	movs	r0, #25
    30c0:	f7fe fffc 	bl	20bc <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    30c4:	201b      	movs	r0, #27
    30c6:	f7fe fff9 	bl	20bc <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    30ca:	6823      	ldr	r3, [r4, #0]
    30cc:	f043 0301 	orr.w	r3, r3, #1
    30d0:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    30d2:	220a      	movs	r2, #10
    30d4:	4629      	mov	r1, r5
    30d6:	4814      	ldr	r0, [pc, #80]	; (3128 <tvout_init+0xe0>)
    30d8:	f7fe fa6c 	bl	15b4 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    30dc:	69f3      	ldr	r3, [r6, #28]
    30de:	f043 0302 	orr.w	r3, r3, #2
    30e2:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    30e4:	4b11      	ldr	r3, [pc, #68]	; (312c <tvout_init+0xe4>)
    30e6:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    30ea:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    30ec:	2213      	movs	r2, #19
    30ee:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    30f0:	220a      	movs	r2, #10
    30f2:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    30f4:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    30f6:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    30fa:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    30fc:	695a      	ldr	r2, [r3, #20]
    30fe:	f042 0201 	orr.w	r2, r2, #1
    3102:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    3104:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    3106:	681a      	ldr	r2, [r3, #0]
    3108:	f042 0201 	orr.w	r2, r2, #1
    310c:	601a      	str	r2, [r3, #0]
    310e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    3112:	bf00      	nop
    3114:	40010800 	.word	0x40010800
    3118:	88883333 	.word	0x88883333
    311c:	84484444 	.word	0x84484444
    3120:	40010804 	.word	0x40010804
    3124:	40021000 	.word	0x40021000
    3128:	40010c00 	.word	0x40010c00
    312c:	40000400 	.word	0x40000400

00003130 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    3130:	4668      	mov	r0, sp
    3132:	f020 0107 	bic.w	r1, r0, #7
    3136:	468d      	mov	sp, r1
    3138:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    313a:	4a2f      	ldr	r2, [pc, #188]	; (31f8 <TV_OUT_handler+0xc8>)
    313c:	6a13      	ldr	r3, [r2, #32]
    313e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3142:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    3144:	492d      	ldr	r1, [pc, #180]	; (31fc <TV_OUT_handler+0xcc>)
    3146:	f240 2209 	movw	r2, #521	; 0x209
    314a:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    314c:	4293      	cmp	r3, r2
    314e:	d9fc      	bls.n	314a <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    3150:	4a29      	ldr	r2, [pc, #164]	; (31f8 <TV_OUT_handler+0xc8>)
    3152:	6a13      	ldr	r3, [r2, #32]
    3154:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3158:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    315a:	4b29      	ldr	r3, [pc, #164]	; (3200 <TV_OUT_handler+0xd0>)
    315c:	881d      	ldrh	r5, [r3, #0]
    315e:	b2ad      	uxth	r5, r5
    3160:	4b28      	ldr	r3, [pc, #160]	; (3204 <TV_OUT_handler+0xd4>)
    3162:	7818      	ldrb	r0, [r3, #0]
    3164:	785a      	ldrb	r2, [r3, #1]
    3166:	fb95 f5f2 	sdiv	r5, r5, r2
    316a:	4a27      	ldr	r2, [pc, #156]	; (3208 <TV_OUT_handler+0xd8>)
    316c:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    3170:	8859      	ldrh	r1, [r3, #2]
    3172:	4a22      	ldr	r2, [pc, #136]	; (31fc <TV_OUT_handler+0xcc>)
    3174:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3176:	428b      	cmp	r3, r1
    3178:	d3fc      	bcc.n	3174 <TV_OUT_handler+0x44>
    _jitter_cancel();
    317a:	4b24      	ldr	r3, [pc, #144]	; (320c <TV_OUT_handler+0xdc>)
    317c:	461a      	mov	r2, r3
    317e:	6812      	ldr	r2, [r2, #0]
    3180:	f002 0207 	and.w	r2, r2, #7
    3184:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3188:	4497      	add	pc, r2
    318a:	bf00      	nop
    318c:	bf00      	nop
    318e:	bf00      	nop
    3190:	bf00      	nop
    3192:	bf00      	nop
    3194:	bf00      	nop
    3196:	bf00      	nop
    3198:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    319a:	4a17      	ldr	r2, [pc, #92]	; (31f8 <TV_OUT_handler+0xc8>)
    319c:	6a13      	ldr	r3, [r2, #32]
    319e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    31a2:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    31a4:	b1b0      	cbz	r0, 31d4 <TV_OUT_handler+0xa4>
    31a6:	462b      	mov	r3, r5
        _pixel_delay(pixel_delay);
    31a8:	4916      	ldr	r1, [pc, #88]	; (3204 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    31aa:	4819      	ldr	r0, [pc, #100]	; (3210 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    31ac:	790c      	ldrb	r4, [r1, #4]
    31ae:	4622      	mov	r2, r4
    31b0:	3a01      	subs	r2, #1
    31b2:	d1fd      	bne.n	31b0 <TV_OUT_handler+0x80>
        *video_port=(*video_data)>>4;
    31b4:	781a      	ldrb	r2, [r3, #0]
    31b6:	0912      	lsrs	r2, r2, #4
    31b8:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    31ba:	790c      	ldrb	r4, [r1, #4]
    31bc:	4622      	mov	r2, r4
    31be:	3a01      	subs	r2, #1
    31c0:	d1fd      	bne.n	31be <TV_OUT_handler+0x8e>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    31c2:	f813 2b01 	ldrb.w	r2, [r3], #1
    31c6:	f002 020f 	and.w	r2, r2, #15
    31ca:	8002      	strh	r2, [r0, #0]
    for (i=0;i<byte_per_row;i++){
    31cc:	1b5c      	subs	r4, r3, r5
    31ce:	780a      	ldrb	r2, [r1, #0]
    31d0:	4294      	cmp	r4, r2
    31d2:	d3eb      	bcc.n	31ac <TV_OUT_handler+0x7c>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
    }
    PORTA->ODR=0;
    31d4:	2200      	movs	r2, #0
    31d6:	4b0f      	ldr	r3, [pc, #60]	; (3214 <TV_OUT_handler+0xe4>)
    31d8:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    31da:	4a07      	ldr	r2, [pc, #28]	; (31f8 <TV_OUT_handler+0xc8>)
    31dc:	6a13      	ldr	r3, [r2, #32]
    31de:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    31e2:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    31e4:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    31e8:	6913      	ldr	r3, [r2, #16]
    31ea:	f023 0304 	bic.w	r3, r3, #4
    31ee:	6113      	str	r3, [r2, #16]
}
    31f0:	bc31      	pop	{r0, r4, r5}
    31f2:	4685      	mov	sp, r0
    31f4:	4770      	bx	lr
    31f6:	bf00      	nop
    31f8:	40000400 	.word	0x40000400
    31fc:	40012c00 	.word	0x40012c00
    3200:	200006bc 	.word	0x200006bc
    3204:	20000224 	.word	0x20000224
    3208:	20002730 	.word	0x20002730
    320c:	40012c24 	.word	0x40012c24
    3210:	4001080c 	.word	0x4001080c
    3214:	40010800 	.word	0x40010800

00003218 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    3218:	4668      	mov	r0, sp
    321a:	f020 0107 	bic.w	r1, r0, #7
    321e:	468d      	mov	sp, r1
    3220:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    3222:	4a8e      	ldr	r2, [pc, #568]	; (345c <TV_SYNC_handler+0x244>)
    3224:	8853      	ldrh	r3, [r2, #2]
    3226:	3301      	adds	r3, #1
    3228:	b29b      	uxth	r3, r3
    322a:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    322c:	498c      	ldr	r1, [pc, #560]	; (3460 <TV_SYNC_handler+0x248>)
    322e:	680b      	ldr	r3, [r1, #0]
    3230:	3301      	adds	r3, #1
    3232:	600b      	str	r3, [r1, #0]
    switch (task){
    3234:	8893      	ldrh	r3, [r2, #4]
    3236:	b29b      	uxth	r3, r3
    3238:	2b09      	cmp	r3, #9
    323a:	f200 8081 	bhi.w	3340 <TV_SYNC_handler+0x128>
    323e:	e8df f013 	tbh	[pc, r3, lsl #1]
    3242:	000a      	.short	0x000a
    3244:	0048002a 	.word	0x0048002a
    3248:	00880069 	.word	0x00880069
    324c:	00a50090 	.word	0x00a50090
    3250:	00d100b4 	.word	0x00d100b4
    3254:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    3256:	4b81      	ldr	r3, [pc, #516]	; (345c <TV_SYNC_handler+0x244>)
    3258:	881b      	ldrh	r3, [r3, #0]
    325a:	b29b      	uxth	r3, r3
    325c:	b17b      	cbz	r3, 327e <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    325e:	4a7f      	ldr	r2, [pc, #508]	; (345c <TV_SYNC_handler+0x244>)
    3260:	8813      	ldrh	r3, [r2, #0]
    3262:	3301      	adds	r3, #1
    3264:	b29b      	uxth	r3, r3
    3266:	8013      	strh	r3, [r2, #0]
    3268:	8813      	ldrh	r3, [r2, #0]
    326a:	b29b      	uxth	r3, r3
    326c:	2b06      	cmp	r3, #6
    326e:	d167      	bne.n	3340 <TV_SYNC_handler+0x128>
    3270:	2300      	movs	r3, #0
    3272:	8013      	strh	r3, [r2, #0]
    3274:	8893      	ldrh	r3, [r2, #4]
    3276:	3301      	adds	r3, #1
    3278:	b29b      	uxth	r3, r3
    327a:	8093      	strh	r3, [r2, #4]
    327c:	e060      	b.n	3340 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    327e:	4b79      	ldr	r3, [pc, #484]	; (3464 <TV_SYNC_handler+0x24c>)
    3280:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3284:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3286:	22a4      	movs	r2, #164	; 0xa4
    3288:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    328a:	4a74      	ldr	r2, [pc, #464]	; (345c <TV_SYNC_handler+0x244>)
    328c:	8813      	ldrh	r3, [r2, #0]
    328e:	3301      	adds	r3, #1
    3290:	b29b      	uxth	r3, r3
    3292:	8013      	strh	r3, [r2, #0]
    3294:	e054      	b.n	3340 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    3296:	4b71      	ldr	r3, [pc, #452]	; (345c <TV_SYNC_handler+0x244>)
    3298:	881b      	ldrh	r3, [r3, #0]
    329a:	b29b      	uxth	r3, r3
    329c:	b17b      	cbz	r3, 32be <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    329e:	4a6f      	ldr	r2, [pc, #444]	; (345c <TV_SYNC_handler+0x244>)
    32a0:	8813      	ldrh	r3, [r2, #0]
    32a2:	3301      	adds	r3, #1
    32a4:	b29b      	uxth	r3, r3
    32a6:	8013      	strh	r3, [r2, #0]
    32a8:	8813      	ldrh	r3, [r2, #0]
    32aa:	b29b      	uxth	r3, r3
    32ac:	2b06      	cmp	r3, #6
    32ae:	d147      	bne.n	3340 <TV_SYNC_handler+0x128>
    32b0:	2300      	movs	r3, #0
    32b2:	8013      	strh	r3, [r2, #0]
    32b4:	8893      	ldrh	r3, [r2, #4]
    32b6:	3301      	adds	r3, #1
    32b8:	b29b      	uxth	r3, r3
    32ba:	8093      	strh	r3, [r2, #4]
    32bc:	e040      	b.n	3340 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    32be:	f240 7294 	movw	r2, #1940	; 0x794
    32c2:	4b68      	ldr	r3, [pc, #416]	; (3464 <TV_SYNC_handler+0x24c>)
    32c4:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32c6:	4a65      	ldr	r2, [pc, #404]	; (345c <TV_SYNC_handler+0x244>)
    32c8:	8813      	ldrh	r3, [r2, #0]
    32ca:	3301      	adds	r3, #1
    32cc:	b29b      	uxth	r3, r3
    32ce:	8013      	strh	r3, [r2, #0]
    32d0:	e036      	b.n	3340 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    32d2:	4b62      	ldr	r3, [pc, #392]	; (345c <TV_SYNC_handler+0x244>)
    32d4:	881b      	ldrh	r3, [r3, #0]
    32d6:	b29b      	uxth	r3, r3
    32d8:	b153      	cbz	r3, 32f0 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    32da:	4b60      	ldr	r3, [pc, #384]	; (345c <TV_SYNC_handler+0x244>)
    32dc:	881b      	ldrh	r3, [r3, #0]
    32de:	b29b      	uxth	r3, r3
    32e0:	2b06      	cmp	r3, #6
    32e2:	d00e      	beq.n	3302 <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    32e4:	4a5d      	ldr	r2, [pc, #372]	; (345c <TV_SYNC_handler+0x244>)
    32e6:	8813      	ldrh	r3, [r2, #0]
    32e8:	3301      	adds	r3, #1
    32ea:	b29b      	uxth	r3, r3
    32ec:	8013      	strh	r3, [r2, #0]
            break;
    32ee:	e027      	b.n	3340 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    32f0:	22a4      	movs	r2, #164	; 0xa4
    32f2:	4b5c      	ldr	r3, [pc, #368]	; (3464 <TV_SYNC_handler+0x24c>)
    32f4:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32f6:	4a59      	ldr	r2, [pc, #356]	; (345c <TV_SYNC_handler+0x244>)
    32f8:	8813      	ldrh	r3, [r2, #0]
    32fa:	3301      	adds	r3, #1
    32fc:	b29b      	uxth	r3, r3
    32fe:	8013      	strh	r3, [r2, #0]
            break;
    3300:	e01e      	b.n	3340 <TV_SYNC_handler+0x128>
            task++;
    3302:	4a56      	ldr	r2, [pc, #344]	; (345c <TV_SYNC_handler+0x244>)
    3304:	8893      	ldrh	r3, [r2, #4]
    3306:	3301      	adds	r3, #1
    3308:	b29b      	uxth	r3, r3
    330a:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    330c:	88d3      	ldrh	r3, [r2, #6]
    330e:	f013 0f01 	tst.w	r3, #1
    3312:	d015      	beq.n	3340 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    3314:	4b53      	ldr	r3, [pc, #332]	; (3464 <TV_SYNC_handler+0x24c>)
    3316:	f241 12c5 	movw	r2, #4549	; 0x11c5
    331a:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    331c:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3320:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    3322:	4a4e      	ldr	r2, [pc, #312]	; (345c <TV_SYNC_handler+0x244>)
    3324:	88d3      	ldrh	r3, [r2, #6]
    3326:	f023 0302 	bic.w	r3, r3, #2
    332a:	041b      	lsls	r3, r3, #16
    332c:	0c1b      	lsrs	r3, r3, #16
    332e:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    3330:	8853      	ldrh	r3, [r2, #2]
    3332:	f3c3 038d 	ubfx	r3, r3, #2, #14
    3336:	8053      	strh	r3, [r2, #2]
        task++;
    3338:	8893      	ldrh	r3, [r2, #4]
    333a:	3301      	adds	r3, #1
    333c:	b29b      	uxth	r3, r3
    333e:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    3340:	4a48      	ldr	r2, [pc, #288]	; (3464 <TV_SYNC_handler+0x24c>)
    3342:	6913      	ldr	r3, [r2, #16]
    3344:	f023 0301 	bic.w	r3, r3, #1
    3348:	6113      	str	r3, [r2, #16]
}
    334a:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    334e:	4685      	mov	sp, r0
    3350:	4770      	bx	lr
        read_gamepad();
    3352:	f7fd ff11 	bl	1178 <read_gamepad>
        task++;
    3356:	4a41      	ldr	r2, [pc, #260]	; (345c <TV_SYNC_handler+0x244>)
    3358:	8893      	ldrh	r3, [r2, #4]
    335a:	3301      	adds	r3, #1
    335c:	b29b      	uxth	r3, r3
    335e:	8093      	strh	r3, [r2, #4]
        break;    
    3360:	e7ee      	b.n	3340 <TV_SYNC_handler+0x128>
        if (sound_timer){
    3362:	4b41      	ldr	r3, [pc, #260]	; (3468 <TV_SYNC_handler+0x250>)
    3364:	881b      	ldrh	r3, [r3, #0]
    3366:	b29b      	uxth	r3, r3
    3368:	b13b      	cbz	r3, 337a <TV_SYNC_handler+0x162>
            sound_timer--;
    336a:	4a3f      	ldr	r2, [pc, #252]	; (3468 <TV_SYNC_handler+0x250>)
    336c:	8813      	ldrh	r3, [r2, #0]
    336e:	3b01      	subs	r3, #1
    3370:	b29b      	uxth	r3, r3
    3372:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3374:	8813      	ldrh	r3, [r2, #0]
    3376:	b29b      	uxth	r3, r3
    3378:	b12b      	cbz	r3, 3386 <TV_SYNC_handler+0x16e>
        task++;
    337a:	4a38      	ldr	r2, [pc, #224]	; (345c <TV_SYNC_handler+0x244>)
    337c:	8893      	ldrh	r3, [r2, #4]
    337e:	3301      	adds	r3, #1
    3380:	b29b      	uxth	r3, r3
    3382:	8093      	strh	r3, [r2, #4]
        break;    
    3384:	e7dc      	b.n	3340 <TV_SYNC_handler+0x128>
                sound_stop();
    3386:	f7ff fb06 	bl	2996 <sound_stop>
    338a:	e7f6      	b.n	337a <TV_SYNC_handler+0x162>
        if (game_timer){
    338c:	4b37      	ldr	r3, [pc, #220]	; (346c <TV_SYNC_handler+0x254>)
    338e:	881b      	ldrh	r3, [r3, #0]
    3390:	b29b      	uxth	r3, r3
    3392:	b123      	cbz	r3, 339e <TV_SYNC_handler+0x186>
            game_timer--;
    3394:	4a35      	ldr	r2, [pc, #212]	; (346c <TV_SYNC_handler+0x254>)
    3396:	8813      	ldrh	r3, [r2, #0]
    3398:	3b01      	subs	r3, #1
    339a:	b29b      	uxth	r3, r3
    339c:	8013      	strh	r3, [r2, #0]
        task++;
    339e:	4a2f      	ldr	r2, [pc, #188]	; (345c <TV_SYNC_handler+0x244>)
    33a0:	8893      	ldrh	r3, [r2, #4]
    33a2:	3301      	adds	r3, #1
    33a4:	b29b      	uxth	r3, r3
    33a6:	8093      	strh	r3, [r2, #4]
        break;
    33a8:	e7ca      	b.n	3340 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    33aa:	4b2c      	ldr	r3, [pc, #176]	; (345c <TV_SYNC_handler+0x244>)
    33ac:	885b      	ldrh	r3, [r3, #2]
    33ae:	b29b      	uxth	r3, r3
    33b0:	4a2f      	ldr	r2, [pc, #188]	; (3470 <TV_SYNC_handler+0x258>)
    33b2:	88d2      	ldrh	r2, [r2, #6]
    33b4:	429a      	cmp	r2, r3
    33b6:	d1c3      	bne.n	3340 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    33b8:	4b2a      	ldr	r3, [pc, #168]	; (3464 <TV_SYNC_handler+0x24c>)
    33ba:	691a      	ldr	r2, [r3, #16]
    33bc:	f022 0204 	bic.w	r2, r2, #4
    33c0:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    33c2:	68da      	ldr	r2, [r3, #12]
    33c4:	f042 0204 	orr.w	r2, r2, #4
    33c8:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    33ca:	4b24      	ldr	r3, [pc, #144]	; (345c <TV_SYNC_handler+0x244>)
    33cc:	88da      	ldrh	r2, [r3, #6]
    33ce:	b292      	uxth	r2, r2
    33d0:	f042 0204 	orr.w	r2, r2, #4
    33d4:	80da      	strh	r2, [r3, #6]
            task++;
    33d6:	889a      	ldrh	r2, [r3, #4]
    33d8:	3201      	adds	r2, #1
    33da:	b292      	uxth	r2, r2
    33dc:	809a      	strh	r2, [r3, #4]
            slice=0;
    33de:	2200      	movs	r2, #0
    33e0:	801a      	strh	r2, [r3, #0]
    33e2:	e7ad      	b.n	3340 <TV_SYNC_handler+0x128>
        slice++;
    33e4:	4a1d      	ldr	r2, [pc, #116]	; (345c <TV_SYNC_handler+0x244>)
    33e6:	8813      	ldrh	r3, [r2, #0]
    33e8:	3301      	adds	r3, #1
    33ea:	b29b      	uxth	r3, r3
    33ec:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    33ee:	8853      	ldrh	r3, [r2, #2]
    33f0:	b29b      	uxth	r3, r3
    33f2:	4a1f      	ldr	r2, [pc, #124]	; (3470 <TV_SYNC_handler+0x258>)
    33f4:	8912      	ldrh	r2, [r2, #8]
    33f6:	429a      	cmp	r2, r3
    33f8:	d1a2      	bne.n	3340 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    33fa:	4a1a      	ldr	r2, [pc, #104]	; (3464 <TV_SYNC_handler+0x24c>)
    33fc:	68d3      	ldr	r3, [r2, #12]
    33fe:	f023 0304 	bic.w	r3, r3, #4
    3402:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    3404:	4a15      	ldr	r2, [pc, #84]	; (345c <TV_SYNC_handler+0x244>)
    3406:	88d3      	ldrh	r3, [r2, #6]
    3408:	f023 0304 	bic.w	r3, r3, #4
    340c:	041b      	lsls	r3, r3, #16
    340e:	0c1b      	lsrs	r3, r3, #16
    3410:	80d3      	strh	r3, [r2, #6]
            task++;
    3412:	8893      	ldrh	r3, [r2, #4]
    3414:	3301      	adds	r3, #1
    3416:	b29b      	uxth	r3, r3
    3418:	8093      	strh	r3, [r2, #4]
    341a:	e791      	b.n	3340 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    341c:	4b0f      	ldr	r3, [pc, #60]	; (345c <TV_SYNC_handler+0x244>)
    341e:	885b      	ldrh	r3, [r3, #2]
    3420:	b29b      	uxth	r3, r3
    3422:	f240 1207 	movw	r2, #263	; 0x107
    3426:	4293      	cmp	r3, r2
    3428:	d18a      	bne.n	3340 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    342a:	4b0c      	ldr	r3, [pc, #48]	; (345c <TV_SYNC_handler+0x244>)
    342c:	88db      	ldrh	r3, [r3, #6]
    342e:	f013 0f01 	tst.w	r3, #1
    3432:	d003      	beq.n	343c <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    3434:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3438:	4b0a      	ldr	r3, [pc, #40]	; (3464 <TV_SYNC_handler+0x24c>)
    343a:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    343c:	4b07      	ldr	r3, [pc, #28]	; (345c <TV_SYNC_handler+0x244>)
    343e:	88da      	ldrh	r2, [r3, #6]
    3440:	b292      	uxth	r2, r2
    3442:	f082 0201 	eor.w	r2, r2, #1
    3446:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    3448:	88da      	ldrh	r2, [r3, #6]
    344a:	b292      	uxth	r2, r2
    344c:	f042 0202 	orr.w	r2, r2, #2
    3450:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    3452:	2200      	movs	r2, #0
    3454:	805a      	strh	r2, [r3, #2]
            slice=0;
    3456:	801a      	strh	r2, [r3, #0]
            task=0;
    3458:	809a      	strh	r2, [r3, #4]
    345a:	e771      	b.n	3340 <TV_SYNC_handler+0x128>
    345c:	200006bc 	.word	0x200006bc
    3460:	20004e94 	.word	0x20004e94
    3464:	40012c00 	.word	0x40012c00
    3468:	20004e98 	.word	0x20004e98
    346c:	20004e90 	.word	0x20004e90
    3470:	20000224 	.word	0x20000224

00003474 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3474:	4a02      	ldr	r2, [pc, #8]	; (3480 <frame_sync+0xc>)
    3476:	88d3      	ldrh	r3, [r2, #6]
    3478:	f013 0f02 	tst.w	r3, #2
    347c:	d0fb      	beq.n	3476 <frame_sync+0x2>
}
    347e:	4770      	bx	lr
    3480:	200006bc 	.word	0x200006bc

00003484 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3484:	4a02      	ldr	r2, [pc, #8]	; (3490 <wait_sync_end+0xc>)
    3486:	88d3      	ldrh	r3, [r2, #6]
    3488:	f013 0f02 	tst.w	r3, #2
    348c:	d1fb      	bne.n	3486 <wait_sync_end+0x2>
}
    348e:	4770      	bx	lr
    3490:	200006bc 	.word	0x200006bc

00003494 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3494:	b510      	push	{r4, lr}
    3496:	4604      	mov	r4, r0
    frame_sync();
    3498:	f7ff ffec 	bl	3474 <frame_sync>
    video_mode=mode;
    349c:	4b0e      	ldr	r3, [pc, #56]	; (34d8 <set_video_mode+0x44>)
    349e:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    34a0:	b1ac      	cbz	r4, 34ce <set_video_mode+0x3a>
    34a2:	2200      	movs	r2, #0
    34a4:	4b0d      	ldr	r3, [pc, #52]	; (34dc <set_video_mode+0x48>)
    34a6:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    34a8:	4b0d      	ldr	r3, [pc, #52]	; (34e0 <set_video_mode+0x4c>)
    34aa:	480e      	ldr	r0, [pc, #56]	; (34e4 <set_video_mode+0x50>)
    34ac:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    34b0:	8842      	ldrh	r2, [r0, #2]
    34b2:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    34b4:	8882      	ldrh	r2, [r0, #4]
    34b6:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    34b8:	88c2      	ldrh	r2, [r0, #6]
    34ba:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    34bc:	7a02      	ldrb	r2, [r0, #8]
    34be:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    34c0:	7a42      	ldrb	r2, [r0, #9]
    34c2:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    34c4:	7a82      	ldrb	r2, [r0, #10]
    34c6:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    34c8:	f7fe f900 	bl	16cc <gfx_cls>
    34cc:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    34ce:	2202      	movs	r2, #2
    34d0:	4b02      	ldr	r3, [pc, #8]	; (34dc <set_video_mode+0x48>)
    34d2:	701a      	strb	r2, [r3, #0]
    34d4:	e7e8      	b.n	34a8 <set_video_mode+0x14>
    34d6:	bf00      	nop
    34d8:	200006bc 	.word	0x200006bc
    34dc:	200001c8 	.word	0x200001c8
    34e0:	20000224 	.word	0x20000224
    34e4:	00003dd4 	.word	0x00003dd4

000034e8 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    34e8:	4b02      	ldr	r3, [pc, #8]	; (34f4 <get_video_params+0xc>)
    34ea:	7a18      	ldrb	r0, [r3, #8]
}
    34ec:	4b02      	ldr	r3, [pc, #8]	; (34f8 <get_video_params+0x10>)
    34ee:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    34f2:	4770      	bx	lr
    34f4:	200006bc 	.word	0x200006bc
    34f8:	00003dd4 	.word	0x00003dd4

000034fc <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    34fc:	4b03      	ldr	r3, [pc, #12]	; (350c <game_pause+0x10>)
    34fe:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    3500:	461a      	mov	r2, r3
    3502:	8813      	ldrh	r3, [r2, #0]
    3504:	b29b      	uxth	r3, r3
    3506:	2b00      	cmp	r3, #0
    3508:	d1fb      	bne.n	3502 <game_pause+0x6>
}
    350a:	4770      	bx	lr
    350c:	20004e90 	.word	0x20004e90

00003510 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    3510:	4b03      	ldr	r3, [pc, #12]	; (3520 <micro_pause+0x10>)
    3512:	681b      	ldr	r3, [r3, #0]
    3514:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    3516:	4a02      	ldr	r2, [pc, #8]	; (3520 <micro_pause+0x10>)
    3518:	6813      	ldr	r3, [r2, #0]
    351a:	4298      	cmp	r0, r3
    351c:	d8fc      	bhi.n	3518 <micro_pause+0x8>
}
    351e:	4770      	bx	lr
    3520:	20004e94 	.word	0x20004e94

00003524 <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    3524:	2801      	cmp	r0, #1
    3526:	d035      	beq.n	3594 <usart_config_port+0x70>
    3528:	b110      	cbz	r0, 3530 <usart_config_port+0xc>
    352a:	2802      	cmp	r0, #2
    352c:	d04f      	beq.n	35ce <usart_config_port+0xaa>
    352e:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    3530:	4835      	ldr	r0, [pc, #212]	; (3608 <usart_config_port+0xe4>)
    3532:	6983      	ldr	r3, [r0, #24]
    3534:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3538:	f043 0304 	orr.w	r3, r3, #4
    353c:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    353e:	2a01      	cmp	r2, #1
    3540:	d016      	beq.n	3570 <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    3542:	4b32      	ldr	r3, [pc, #200]	; (360c <usart_config_port+0xe8>)
    3544:	4299      	cmp	r1, r3
    3546:	d01c      	beq.n	3582 <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3548:	4a31      	ldr	r2, [pc, #196]	; (3610 <usart_config_port+0xec>)
    354a:	6853      	ldr	r3, [r2, #4]
    354c:	f043 0304 	orr.w	r3, r3, #4
    3550:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3552:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    3556:	6993      	ldr	r3, [r2, #24]
    3558:	f043 0308 	orr.w	r3, r3, #8
    355c:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    355e:	680b      	ldr	r3, [r1, #0]
    3560:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3564:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    3566:	680b      	ldr	r3, [r1, #0]
    3568:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    356c:	600b      	str	r3, [r1, #0]
    356e:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    3570:	684b      	ldr	r3, [r1, #4]
    3572:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    3576:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3578:	684b      	ldr	r3, [r1, #4]
    357a:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    357e:	604b      	str	r3, [r1, #4]
    3580:	e7df      	b.n	3542 <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    3582:	685a      	ldr	r2, [r3, #4]
    3584:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3588:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    358a:	685a      	ldr	r2, [r3, #4]
    358c:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    3590:	605a      	str	r2, [r3, #4]
    3592:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3594:	4b1c      	ldr	r3, [pc, #112]	; (3608 <usart_config_port+0xe4>)
    3596:	69d8      	ldr	r0, [r3, #28]
    3598:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    359c:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    359e:	6998      	ldr	r0, [r3, #24]
    35a0:	f040 0004 	orr.w	r0, r0, #4
    35a4:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    35a6:	2a01      	cmp	r2, #1
    35a8:	d008      	beq.n	35bc <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    35aa:	680b      	ldr	r3, [r1, #0]
    35ac:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    35b0:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    35b2:	680b      	ldr	r3, [r1, #0]
    35b4:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    35b8:	600b      	str	r3, [r1, #0]
    35ba:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    35bc:	680b      	ldr	r3, [r1, #0]
    35be:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    35c2:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    35c4:	680b      	ldr	r3, [r1, #0]
    35c6:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    35ca:	600b      	str	r3, [r1, #0]
    35cc:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    35ce:	4b0e      	ldr	r3, [pc, #56]	; (3608 <usart_config_port+0xe4>)
    35d0:	69d8      	ldr	r0, [r3, #28]
    35d2:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    35d6:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    35d8:	6998      	ldr	r0, [r3, #24]
    35da:	f040 0008 	orr.w	r0, r0, #8
    35de:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    35e0:	2a01      	cmp	r2, #1
    35e2:	d008      	beq.n	35f6 <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    35e4:	684b      	ldr	r3, [r1, #4]
    35e6:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    35ea:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    35ec:	684b      	ldr	r3, [r1, #4]
    35ee:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    35f2:	604b      	str	r3, [r1, #4]
    35f4:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    35f6:	684b      	ldr	r3, [r1, #4]
    35f8:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    35fc:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    35fe:	684b      	ldr	r3, [r1, #4]
    3600:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    3604:	604b      	str	r3, [r1, #4]
    3606:	4770      	bx	lr
    3608:	40021000 	.word	0x40021000
    360c:	40010800 	.word	0x40010800
    3610:	40010000 	.word	0x40010000

00003614 <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    3614:	4602      	mov	r2, r0
    3616:	b138      	cbz	r0, 3628 <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    3618:	4b05      	ldr	r3, [pc, #20]	; (3630 <usart_set_baud+0x1c>)
    361a:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    361e:	4b05      	ldr	r3, [pc, #20]	; (3634 <usart_set_baud+0x20>)
    3620:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    3624:	6099      	str	r1, [r3, #8]
    3626:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    3628:	4b03      	ldr	r3, [pc, #12]	; (3638 <usart_set_baud+0x24>)
    362a:	fbb3 f1f1 	udiv	r1, r3, r1
    362e:	e7f6      	b.n	361e <usart_set_baud+0xa>
    3630:	022231fa 	.word	0x022231fa
    3634:	00003dfc 	.word	0x00003dfc
    3638:	044463f4 	.word	0x044463f4

0000363c <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    363c:	4b05      	ldr	r3, [pc, #20]	; (3654 <usart_comm_dir+0x18>)
    363e:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    3642:	68da      	ldr	r2, [r3, #12]
    3644:	f022 020c 	bic.w	r2, r2, #12
    3648:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    364a:	68da      	ldr	r2, [r3, #12]
    364c:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    3650:	60d9      	str	r1, [r3, #12]
    3652:	4770      	bx	lr
    3654:	00003dfc 	.word	0x00003dfc

00003658 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    3658:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    365c:	4604      	mov	r4, r0
    365e:	460f      	mov	r7, r1
    3660:	4615      	mov	r5, r2
    3662:	4698      	mov	r8, r3
    3664:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    3666:	2801      	cmp	r0, #1
    3668:	d030      	beq.n	36cc <usart_open_channel+0x74>
    366a:	b1d0      	cbz	r0, 36a2 <usart_open_channel+0x4a>
    366c:	2802      	cmp	r0, #2
    366e:	d03a      	beq.n	36e6 <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    3670:	2e01      	cmp	r6, #1
    3672:	d045      	beq.n	3700 <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    3674:	4641      	mov	r1, r8
    3676:	4620      	mov	r0, r4
    3678:	f7ff ffe0 	bl	363c <usart_comm_dir>
	switch (parity){
    367c:	2d01      	cmp	r5, #1
    367e:	d04e      	beq.n	371e <usart_open_channel+0xc6>
    3680:	2d00      	cmp	r5, #0
    3682:	d044      	beq.n	370e <usart_open_channel+0xb6>
    3684:	2d02      	cmp	r5, #2
    3686:	d052      	beq.n	372e <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3688:	4639      	mov	r1, r7
    368a:	4620      	mov	r0, r4
    368c:	f7ff ffc2 	bl	3614 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    3690:	4b2b      	ldr	r3, [pc, #172]	; (3740 <usart_open_channel+0xe8>)
    3692:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3696:	68d3      	ldr	r3, [r2, #12]
    3698:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    369c:	60d3      	str	r3, [r2, #12]
    369e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    36a2:	9b06      	ldr	r3, [sp, #24]
    36a4:	b963      	cbnz	r3, 36c0 <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    36a6:	4632      	mov	r2, r6
    36a8:	4926      	ldr	r1, [pc, #152]	; (3744 <usart_open_channel+0xec>)
    36aa:	2000      	movs	r0, #0
    36ac:	f7ff ff3a 	bl	3524 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    36b0:	2107      	movs	r1, #7
    36b2:	2025      	movs	r0, #37	; 0x25
    36b4:	f7fe fd62 	bl	217c <set_int_priority>
		enable_interrupt(IRQ_USART1);
    36b8:	2025      	movs	r0, #37	; 0x25
    36ba:	f7fe fcff 	bl	20bc <enable_interrupt>
		break;
    36be:	e7d7      	b.n	3670 <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    36c0:	4632      	mov	r2, r6
    36c2:	4921      	ldr	r1, [pc, #132]	; (3748 <usart_open_channel+0xf0>)
    36c4:	2000      	movs	r0, #0
    36c6:	f7ff ff2d 	bl	3524 <usart_config_port>
    36ca:	e7f1      	b.n	36b0 <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    36cc:	4632      	mov	r2, r6
    36ce:	491d      	ldr	r1, [pc, #116]	; (3744 <usart_open_channel+0xec>)
    36d0:	2001      	movs	r0, #1
    36d2:	f7ff ff27 	bl	3524 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    36d6:	2107      	movs	r1, #7
    36d8:	2026      	movs	r0, #38	; 0x26
    36da:	f7fe fd4f 	bl	217c <set_int_priority>
		enable_interrupt(IRQ_USART2);
    36de:	2026      	movs	r0, #38	; 0x26
    36e0:	f7fe fcec 	bl	20bc <enable_interrupt>
		break;
    36e4:	e7c4      	b.n	3670 <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    36e6:	4632      	mov	r2, r6
    36e8:	4917      	ldr	r1, [pc, #92]	; (3748 <usart_open_channel+0xf0>)
    36ea:	2002      	movs	r0, #2
    36ec:	f7ff ff1a 	bl	3524 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    36f0:	2107      	movs	r1, #7
    36f2:	2027      	movs	r0, #39	; 0x27
    36f4:	f7fe fd42 	bl	217c <set_int_priority>
		enable_interrupt(IRQ_USART3);
    36f8:	2027      	movs	r0, #39	; 0x27
    36fa:	f7fe fcdf 	bl	20bc <enable_interrupt>
		break;
    36fe:	e7b7      	b.n	3670 <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3700:	4b0f      	ldr	r3, [pc, #60]	; (3740 <usart_open_channel+0xe8>)
    3702:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    3706:	f44f 7240 	mov.w	r2, #768	; 0x300
    370a:	615a      	str	r2, [r3, #20]
    370c:	e7b2      	b.n	3674 <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    370e:	4b0c      	ldr	r3, [pc, #48]	; (3740 <usart_open_channel+0xe8>)
    3710:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3714:	68d3      	ldr	r3, [r2, #12]
    3716:	f043 0320 	orr.w	r3, r3, #32
    371a:	60d3      	str	r3, [r2, #12]
		break;
    371c:	e7b4      	b.n	3688 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    371e:	4b08      	ldr	r3, [pc, #32]	; (3740 <usart_open_channel+0xe8>)
    3720:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3724:	68d3      	ldr	r3, [r2, #12]
    3726:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    372a:	60d3      	str	r3, [r2, #12]
		break;
    372c:	e7ac      	b.n	3688 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    372e:	4b04      	ldr	r3, [pc, #16]	; (3740 <usart_open_channel+0xe8>)
    3730:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3734:	68d3      	ldr	r3, [r2, #12]
    3736:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    373a:	60d3      	str	r3, [r2, #12]
		break;
    373c:	e7a4      	b.n	3688 <usart_open_channel+0x30>
    373e:	bf00      	nop
    3740:	00003dfc 	.word	0x00003dfc
    3744:	40010800 	.word	0x40010800
    3748:	40010c00 	.word	0x40010c00

0000374c <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return channels[channel]->SR&USART_SR_RXNE;
    374c:	4b03      	ldr	r3, [pc, #12]	; (375c <usart_stat+0x10>)
    374e:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    3752:	6818      	ldr	r0, [r3, #0]
}
    3754:	f000 0020 	and.w	r0, r0, #32
    3758:	4770      	bx	lr
    375a:	bf00      	nop
    375c:	00003dfc 	.word	0x00003dfc

00003760 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    3760:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    3762:	490c      	ldr	r1, [pc, #48]	; (3794 <usart_getc+0x34>)
    3764:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3768:	005b      	lsls	r3, r3, #1
    376a:	18c8      	adds	r0, r1, r3
    376c:	5ccb      	ldrb	r3, [r1, r3]
    376e:	7841      	ldrb	r1, [r0, #1]
    3770:	4299      	cmp	r1, r3
    3772:	d00d      	beq.n	3790 <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    3774:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3776:	4d07      	ldr	r5, [pc, #28]	; (3794 <usart_getc+0x34>)
    3778:	00d4      	lsls	r4, r2, #3
    377a:	4601      	mov	r1, r0
    377c:	4419      	add	r1, r3
    377e:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    3780:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3782:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    3784:	f003 030f 	and.w	r3, r3, #15
    3788:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    378c:	bc30      	pop	{r4, r5}
    378e:	4770      	bx	lr
		return 0;
    3790:	2000      	movs	r0, #0
    3792:	4770      	bx	lr
    3794:	200006c8 	.word	0x200006c8

00003798 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    3798:	b570      	push	{r4, r5, r6, lr}
    379a:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    379c:	4b08      	ldr	r3, [pc, #32]	; (37c0 <usart_getc_dly+0x28>)
    379e:	681c      	ldr	r4, [r3, #0]
    37a0:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    37a2:	461d      	mov	r5, r3
    37a4:	682b      	ldr	r3, [r5, #0]
    37a6:	429c      	cmp	r4, r3
    37a8:	d906      	bls.n	37b8 <usart_getc_dly+0x20>
    37aa:	4630      	mov	r0, r6
    37ac:	f7ff ffd8 	bl	3760 <usart_getc>
    37b0:	4603      	mov	r3, r0
    37b2:	2800      	cmp	r0, #0
    37b4:	d0f6      	beq.n	37a4 <usart_getc_dly+0xc>
    37b6:	e000      	b.n	37ba <usart_getc_dly+0x22>
    37b8:	2300      	movs	r3, #0
	return c;
}
    37ba:	4618      	mov	r0, r3
    37bc:	bd70      	pop	{r4, r5, r6, pc}
    37be:	bf00      	nop
    37c0:	20004e94 	.word	0x20004e94

000037c4 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    37c4:	4b04      	ldr	r3, [pc, #16]	; (37d8 <usart_putc+0x14>)
    37c6:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    37ca:	6813      	ldr	r3, [r2, #0]
    37cc:	f013 0f80 	tst.w	r3, #128	; 0x80
    37d0:	d0fb      	beq.n	37ca <usart_putc+0x6>
	channels[channel]->DR=c;
    37d2:	6051      	str	r1, [r2, #4]
    37d4:	4770      	bx	lr
    37d6:	bf00      	nop
    37d8:	00003dfc 	.word	0x00003dfc

000037dc <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    37dc:	2801      	cmp	r0, #1
    37de:	d009      	beq.n	37f4 <usart_cts+0x18>
    37e0:	b118      	cbz	r0, 37ea <usart_cts+0xe>
    37e2:	2802      	cmp	r0, #2
    37e4:	d00b      	beq.n	37fe <usart_cts+0x22>
    37e6:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    37e8:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    37ea:	4b07      	ldr	r3, [pc, #28]	; (3808 <usart_cts+0x2c>)
    37ec:	6898      	ldr	r0, [r3, #8]
    37ee:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    37f2:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    37f4:	4b04      	ldr	r3, [pc, #16]	; (3808 <usart_cts+0x2c>)
    37f6:	6898      	ldr	r0, [r3, #8]
    37f8:	f000 0001 	and.w	r0, r0, #1
			break;
    37fc:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    37fe:	4b03      	ldr	r3, [pc, #12]	; (380c <usart_cts+0x30>)
    3800:	6898      	ldr	r0, [r3, #8]
    3802:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    3806:	4770      	bx	lr
    3808:	40010800 	.word	0x40010800
    380c:	40010c00 	.word	0x40010c00

00003810 <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    3810:	b538      	push	{r3, r4, r5, lr}
    3812:	4605      	mov	r5, r0
    3814:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    3816:	7809      	ldrb	r1, [r1, #0]
    3818:	b131      	cbz	r1, 3828 <usart_print+0x18>
    381a:	4628      	mov	r0, r5
    381c:	f7ff ffd2 	bl	37c4 <usart_putc>
    3820:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    3824:	2900      	cmp	r1, #0
    3826:	d1f8      	bne.n	381a <usart_print+0xa>
    3828:	bd38      	pop	{r3, r4, r5, pc}

0000382a <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    382a:	4668      	mov	r0, sp
    382c:	f020 0107 	bic.w	r1, r0, #7
    3830:	468d      	mov	sp, r1
    3832:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3834:	4b08      	ldr	r3, [pc, #32]	; (3858 <USART1_handler+0x2e>)
    3836:	681b      	ldr	r3, [r3, #0]
    3838:	f013 0f20 	tst.w	r3, #32
    383c:	d009      	beq.n	3852 <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    383e:	4a07      	ldr	r2, [pc, #28]	; (385c <USART1_handler+0x32>)
    3840:	7853      	ldrb	r3, [r2, #1]
    3842:	4905      	ldr	r1, [pc, #20]	; (3858 <USART1_handler+0x2e>)
    3844:	6848      	ldr	r0, [r1, #4]
    3846:	18d1      	adds	r1, r2, r3
    3848:	7088      	strb	r0, [r1, #2]
    384a:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    384c:	f003 030f 	and.w	r3, r3, #15
    3850:	7053      	strb	r3, [r2, #1]
		}
}
    3852:	bc01      	pop	{r0}
    3854:	4685      	mov	sp, r0
    3856:	4770      	bx	lr
    3858:	40013800 	.word	0x40013800
    385c:	200006c8 	.word	0x200006c8

00003860 <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    3860:	4668      	mov	r0, sp
    3862:	f020 0107 	bic.w	r1, r0, #7
    3866:	468d      	mov	sp, r1
    3868:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    386a:	4b0a      	ldr	r3, [pc, #40]	; (3894 <USART2_handler+0x34>)
    386c:	681b      	ldr	r3, [r3, #0]
    386e:	f013 0f20 	tst.w	r3, #32
    3872:	d00b      	beq.n	388c <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    3874:	4a08      	ldr	r2, [pc, #32]	; (3898 <USART2_handler+0x38>)
    3876:	7cd1      	ldrb	r1, [r2, #19]
    3878:	1c4b      	adds	r3, r1, #1
    387a:	b2db      	uxtb	r3, r3
    387c:	74d3      	strb	r3, [r2, #19]
    387e:	4807      	ldr	r0, [pc, #28]	; (389c <USART2_handler+0x3c>)
    3880:	6840      	ldr	r0, [r0, #4]
    3882:	4411      	add	r1, r2
    3884:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3886:	f003 030f 	and.w	r3, r3, #15
    388a:	74d3      	strb	r3, [r2, #19]
		}
}
    388c:	bc01      	pop	{r0}
    388e:	4685      	mov	sp, r0
    3890:	4770      	bx	lr
    3892:	bf00      	nop
    3894:	40013800 	.word	0x40013800
    3898:	200006c8 	.word	0x200006c8
    389c:	40004400 	.word	0x40004400

000038a0 <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    38a0:	4668      	mov	r0, sp
    38a2:	f020 0107 	bic.w	r1, r0, #7
    38a6:	468d      	mov	sp, r1
    38a8:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    38aa:	4b0b      	ldr	r3, [pc, #44]	; (38d8 <USART3_handler+0x38>)
    38ac:	681b      	ldr	r3, [r3, #0]
    38ae:	f013 0f20 	tst.w	r3, #32
    38b2:	d00d      	beq.n	38d0 <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    38b4:	4b09      	ldr	r3, [pc, #36]	; (38dc <USART3_handler+0x3c>)
    38b6:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    38ba:	1c51      	adds	r1, r2, #1
    38bc:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    38c0:	4907      	ldr	r1, [pc, #28]	; (38e0 <USART3_handler+0x40>)
    38c2:	6849      	ldr	r1, [r1, #4]
    38c4:	441a      	add	r2, r3
    38c6:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    38c8:	7cda      	ldrb	r2, [r3, #19]
    38ca:	f002 020f 	and.w	r2, r2, #15
    38ce:	74da      	strb	r2, [r3, #19]
		}
}
    38d0:	bc01      	pop	{r0}
    38d2:	4685      	mov	sp, r0
    38d4:	4770      	bx	lr
    38d6:	bf00      	nop
    38d8:	40013800 	.word	0x40013800
    38dc:	200006c8 	.word	0x200006c8
    38e0:	40004800 	.word	0x40004800
