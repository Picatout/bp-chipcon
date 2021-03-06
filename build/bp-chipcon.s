
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 09 2c 00 00     .P. 1........,..
      10:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 2c 00 00     .,...,...,...,..
      20:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 02 00 00     .,...,...,......
      30:	09 2c 00 00 09 2c 00 00 0d 02 00 00 11 02 00 00     .,...,..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 1b 29 00 00     ........!....)..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 09 2c 00 00 09 2c 00 00 49 02 00 00     E....,...,..I...
      80:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 2c 00 00     .,...,...,...,..
      90:	09 2c 00 00 09 2c 00 00 09 2c 00 00 4d 02 00 00     .,...,...,..M...
      a0:	09 2c 00 00 51 02 00 00 09 2c 00 00 55 31 00 00     .,..Q....,..U1..
      b0:	31 2a 00 00 59 02 00 00 5d 02 00 00 09 2c 00 00     1*..Y...]....,..
      c0:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 2c 00 00     .,...,...,...,..
      d0:	09 2c 00 00 b7 37 00 00 ed 37 00 00 2d 38 00 00     .,...7...7..-8..
      e0:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 2c 00 00     .,...,...,...,..
      f0:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 2c 00 00     .,...,...,...,..
     100:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 2c 00 00     .,...,...,...,..
     110:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 2c 00 00     .,...,...,...,..
     120:	09 2c 00 00 09 2c 00 00 09 2c 00 00 09 2c 00 00     .,...,...,...,..

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
     186:	f001 fcd8 	bl	1b3a <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e9a 	.word	0x20004e9a
     190:	2000022e 	.word	0x2000022e
     194:	20004e99 	.word	0x20004e99
     198:	2000022e 	.word	0x2000022e
     19c:	20000000 	.word	0x20000000
     1a0:	00009c20 	.word	0x00009c20
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
     1da:	f002 fd1d 	bl	2c18 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fd1a 	bl	2c18 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fd17 	bl	2c18 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fd14 	bl	2c18 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	000040e8 	.word	0x000040e8
     1f8:	000040c4 	.word	0x000040c4
     1fc:	000040dc 	.word	0x000040dc
     200:	000040f8 	.word	0x000040f8

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fd00 	bl	2c08 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fcfe 	bl	2c08 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fcfc 	bl	2c08 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fcfa 	bl	2c08 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fcf8 	bl	2c08 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fcf6 	bl	2c08 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fcf4 	bl	2c08 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fcf2 	bl	2c08 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fcf0 	bl	2c08 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fcee 	bl	2c08 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fcec 	bl	2c08 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fcea 	bl	2c08 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fce8 	bl	2c08 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fce6 	bl	2c08 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fce4 	bl	2c08 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fce2 	bl	2c08 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fce0 	bl	2c08 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fcde 	bl	2c08 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fcdc 	bl	2c08 <reset_mcu>

00000250 <TIM1_UP_handler>:
_default_handler(TIM1_UP_handler) // 25
     250:	f002 fcda 	bl	2c08 <reset_mcu>
_default_handler(TIM1_CC_handler) // 27
     254:	f002 fcd8 	bl	2c08 <reset_mcu>

00000258 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     258:	f002 fcd6 	bl	2c08 <reset_mcu>

0000025c <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     25c:	f002 fcd4 	bl	2c08 <reset_mcu>
_default_handler(USART1_handler) // 37
     260:	f002 fcd2 	bl	2c08 <reset_mcu>
_default_handler(USART2_handler) // 38
     264:	f002 fcd0 	bl	2c08 <reset_mcu>
_default_handler(USART3_handler) // 39
     268:	f002 fcce 	bl	2c08 <reset_mcu>

0000026c <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     26c:	f002 fccc 	bl	2c08 <reset_mcu>

00000270 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     270:	f002 fcca 	bl	2c08 <reset_mcu>

00000274 <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     274:	f002 fcc8 	bl	2c08 <reset_mcu>

00000278 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     278:	f002 fcc6 	bl	2c08 <reset_mcu>

0000027c <bkp_read_register>:
#include "../include/stm32f103c8.h"

// lecture d'un registre BKP->DR[]
// r->{0..9}
uint16_t bkp_read_register(int r){
	return BKP->DR[r%10];
     27c:	4a08      	ldr	r2, [pc, #32]	; (2a0 <bkp_read_register+0x24>)
     27e:	fb82 3200 	smull	r3, r2, r2, r0
     282:	17c3      	asrs	r3, r0, #31
     284:	ebc3 03a2 	rsb	r3, r3, r2, asr #2
     288:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     28c:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
     290:	009b      	lsls	r3, r3, #2
     292:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
     296:	f503 43d8 	add.w	r3, r3, #27648	; 0x6c00
     29a:	6858      	ldr	r0, [r3, #4]
}
     29c:	b280      	uxth	r0, r0
     29e:	4770      	bx	lr
     2a0:	66666667 	.word	0x66666667

000002a4 <bkp_write_register>:

// écriture d'un registre BKP->DR[]
// r->{0..9}
void bkp_write_register(int r, uint16_t value){
     2a4:	b410      	push	{r4}
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
     2a6:	4a18      	ldr	r2, [pc, #96]	; (308 <bkp_write_register+0x64>)
     2a8:	69d3      	ldr	r3, [r2, #28]
     2aa:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
     2ae:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
     2b0:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
     2b4:	6813      	ldr	r3, [r2, #0]
     2b6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     2ba:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
     2bc:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
     2c0:	6853      	ldr	r3, [r2, #4]
     2c2:	f043 0310 	orr.w	r3, r3, #16
     2c6:	6053      	str	r3, [r2, #4]
	BKP->DR[r%10]=value;
     2c8:	4c10      	ldr	r4, [pc, #64]	; (30c <bkp_write_register+0x68>)
     2ca:	fb84 3400 	smull	r3, r4, r4, r0
     2ce:	17c3      	asrs	r3, r0, #31
     2d0:	ebc3 03a4 	rsb	r3, r3, r4, asr #2
     2d4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     2d8:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
     2dc:	009b      	lsls	r3, r3, #2
     2de:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
     2e2:	f503 43d8 	add.w	r3, r3, #27648	; 0x6c00
     2e6:	6059      	str	r1, [r3, #4]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
     2e8:	6853      	ldr	r3, [r2, #4]
     2ea:	f023 0310 	bic.w	r3, r3, #16
     2ee:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
     2f0:	6853      	ldr	r3, [r2, #4]
     2f2:	f013 0f20 	tst.w	r3, #32
     2f6:	d0fb      	beq.n	2f0 <bkp_write_register+0x4c>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
     2f8:	4a05      	ldr	r2, [pc, #20]	; (310 <bkp_write_register+0x6c>)
     2fa:	6813      	ldr	r3, [r2, #0]
     2fc:	f423 7380 	bic.w	r3, r3, #256	; 0x100
     300:	6013      	str	r3, [r2, #0]
}
     302:	bc10      	pop	{r4}
     304:	4770      	bx	lr
     306:	bf00      	nop
     308:	40021000 	.word	0x40021000
     30c:	66666667 	.word	0x66666667
     310:	40007000 	.word	0x40007000

00000314 <print_vms>:
static uint8_t block[32];

uint8_t game_ram[GAME_SPACE];

// print virtual machine states
void print_vms(const char *msg,uint8_t error_code){
     314:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     316:	4605      	mov	r5, r0
     318:	460c      	mov	r4, r1
	uint8_t orig_font;
	orig_font=get_font();
     31a:	f002 fcf9 	bl	2d10 <get_font>
     31e:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     320:	2002      	movs	r0, #2
     322:	f002 fcef 	bl	2d04 <select_font>
	new_line();
     326:	f002 fcf9 	bl	2d1c <new_line>
	print(msg);
     32a:	4628      	mov	r0, r5
     32c:	f002 fddc 	bl	2ee8 <print>
	switch(error_code){
     330:	2c02      	cmp	r4, #2
     332:	d039      	beq.n	3a8 <print_vms+0x94>
     334:	2c03      	cmp	r4, #3
     336:	d102      	bne.n	33e <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     338:	481d      	ldr	r0, [pc, #116]	; (3b0 <print_vms+0x9c>)
     33a:	f002 fdd5 	bl	2ee8 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     33e:	481d      	ldr	r0, [pc, #116]	; (3b4 <print_vms+0xa0>)
     340:	f002 fdd2 	bl	2ee8 <print>
	print_hex(vms.pc-2);
     344:	4d1c      	ldr	r5, [pc, #112]	; (3b8 <print_vms+0xa4>)
     346:	8828      	ldrh	r0, [r5, #0]
     348:	2110      	movs	r1, #16
     34a:	3802      	subs	r0, #2
     34c:	f002 fde7 	bl	2f1e <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     350:	7e28      	ldrb	r0, [r5, #24]
     352:	7e6b      	ldrb	r3, [r5, #25]
     354:	2110      	movs	r1, #16
     356:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     35a:	f002 fde0 	bl	2f1e <print_int>
	new_line();
     35e:	f002 fcdd 	bl	2d1c <new_line>
	print("I:");
     362:	4816      	ldr	r0, [pc, #88]	; (3bc <print_vms+0xa8>)
     364:	f002 fdc0 	bl	2ee8 <print>
	print_hex(vms.ix);
     368:	2110      	movs	r1, #16
     36a:	8868      	ldrh	r0, [r5, #2]
     36c:	f002 fdd7 	bl	2f1e <print_int>
	print(" SP:");
     370:	4813      	ldr	r0, [pc, #76]	; (3c0 <print_vms+0xac>)
     372:	f002 fdb9 	bl	2ee8 <print>
	print_hex(vms.sp);
     376:	2110      	movs	r1, #16
     378:	7928      	ldrb	r0, [r5, #4]
     37a:	f002 fdd0 	bl	2f1e <print_int>
	new_line();
     37e:	f002 fccd 	bl	2d1c <new_line>
	print("var[]:");
     382:	4810      	ldr	r0, [pc, #64]	; (3c4 <print_vms+0xb0>)
     384:	f002 fdb0 	bl	2ee8 <print>
     388:	1dac      	adds	r4, r5, #6
     38a:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     38c:	2610      	movs	r6, #16
     38e:	4631      	mov	r1, r6
     390:	f814 0b01 	ldrb.w	r0, [r4], #1
     394:	f002 fdc3 	bl	2f1e <print_int>
	for (int i=0;i<16;i++){
     398:	42ac      	cmp	r4, r5
     39a:	d1f8      	bne.n	38e <print_vms+0x7a>
	}
	new_line();
     39c:	f002 fcbe 	bl	2d1c <new_line>
	select_font(orig_font);
     3a0:	4638      	mov	r0, r7
     3a2:	f002 fcaf 	bl	2d04 <select_font>
     3a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3a8:	4807      	ldr	r0, [pc, #28]	; (3c8 <print_vms+0xb4>)
     3aa:	f002 fd9d 	bl	2ee8 <print>
		break;
     3ae:	e7c6      	b.n	33e <print_vms+0x2a>
     3b0:	00003d9c 	.word	0x00003d9c
     3b4:	00003dc4 	.word	0x00003dc4
     3b8:	20000230 	.word	0x20000230
     3bc:	00003dc8 	.word	0x00003dc8
     3c0:	00003dcc 	.word	0x00003dcc
     3c4:	00003dd4 	.word	0x00003dd4
     3c8:	00003db0 	.word	0x00003db0

000003cc <srand>:
}

static uint32_t state=1;

void srand(unsigned n){
	state=n;
     3cc:	4b01      	ldr	r3, [pc, #4]	; (3d4 <srand+0x8>)
     3ce:	6018      	str	r0, [r3, #0]
     3d0:	4770      	bx	lr
     3d2:	bf00      	nop
     3d4:	20000000 	.word	0x20000000

000003d8 <rand>:
}

int rand(){
	uint32_t x;
	x=state;
     3d8:	4b05      	ldr	r3, [pc, #20]	; (3f0 <rand+0x18>)
     3da:	6818      	ldr	r0, [r3, #0]
	x^=x<<13;
     3dc:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
	x^=x>>17;
     3e0:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
	x^=x<<5;
     3e4:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
	state=x;
     3e8:	6018      	str	r0, [r3, #0]
	return x&0x7fffffff; 
}
     3ea:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
     3ee:	4770      	bx	lr
     3f0:	20000000 	.word	0x20000000

000003f4 <chip_vm>:


//  SCHIP/BPCHIP  virtual machine
vm_exit_code_t chip_vm(uint16_t program_address, vm_debug_t dbg_level){
     3f4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
     3f8:	b089      	sub	sp, #36	; 0x24
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
	char c,buffer[24];
	int gx,gy;
	vmode_params_t *vparams;

	vms.pc=program_address;
     3fa:	4ba7      	ldr	r3, [pc, #668]	; (698 <chip_vm+0x2a4>)
     3fc:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     3fe:	2200      	movs	r2, #0
     400:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     402:	805a      	strh	r2, [r3, #2]
	vms.s=0;
     404:	82da      	strh	r2, [r3, #22]
 	while (exit_code==CHIP_CONTINUE){
		if (vms.pc>=GAME_SPACE){
     406:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
     40a:	f080 84a6 	bcs.w	d5a <chip_vm+0x966>
     40e:	460d      	mov	r5, r1
				dbg_level=DEBUG_SSTEP;
				goto single_step;
			}
			break;
		}//switch(dbg_level)
		x=rx(vms.b1);
     410:	461c      	mov	r4, r3
				break;	
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash ; SCHIP, BPCHIP
				if (video_mode==VM_BPCHIP){
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
				}else{
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     412:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     414:	4fa1      	ldr	r7, [pc, #644]	; (69c <chip_vm+0x2a8>)
     416:	e169      	b.n	6ec <chip_vm+0x2f8>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     418:	2d00      	cmp	r5, #0
     41a:	f040 816c 	bne.w	6f6 <chip_vm+0x302>
     41e:	2005      	movs	r0, #5
     420:	f003 f838 	bl	3494 <micro_pause>
		_get_opcode(vms.pc);
     424:	8823      	ldrh	r3, [r4, #0]
     426:	4a9e      	ldr	r2, [pc, #632]	; (6a0 <chip_vm+0x2ac>)
     428:	5cd1      	ldrb	r1, [r2, r3]
     42a:	7621      	strb	r1, [r4, #24]
     42c:	441a      	add	r2, r3
     42e:	7852      	ldrb	r2, [r2, #1]
     430:	7662      	strb	r2, [r4, #25]
		vms.pc+=2;
     432:	3302      	adds	r3, #2
     434:	8023      	strh	r3, [r4, #0]
     436:	e03c      	b.n	4b2 <chip_vm+0xbe>
			_debug_print(itoa(vms.pc-2,buffer,16));
     438:	2210      	movs	r2, #16
     43a:	a902      	add	r1, sp, #8
     43c:	3802      	subs	r0, #2
     43e:	f001 f851 	bl	14e4 <itoa>
     442:	4601      	mov	r1, r0
     444:	2000      	movs	r0, #0
     446:	f003 f9a9 	bl	379c <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     44a:	7e20      	ldrb	r0, [r4, #24]
     44c:	7e63      	ldrb	r3, [r4, #25]
     44e:	2210      	movs	r2, #16
     450:	a902      	add	r1, sp, #8
     452:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     456:	f001 f845 	bl	14e4 <itoa>
     45a:	4601      	mov	r1, r0
     45c:	2000      	movs	r0, #0
     45e:	f003 f99d 	bl	379c <usart_print>
			_debug_print("\n");
     462:	4990      	ldr	r1, [pc, #576]	; (6a4 <chip_vm+0x2b0>)
     464:	2000      	movs	r0, #0
     466:	f003 f999 	bl	379c <usart_print>
			break;
     46a:	e022      	b.n	4b2 <chip_vm+0xbe>
			select_console(SERIAL);
     46c:	2001      	movs	r0, #1
     46e:	f002 fdf7 	bl	3060 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     472:	2100      	movs	r1, #0
     474:	488c      	ldr	r0, [pc, #560]	; (6a8 <chip_vm+0x2b4>)
     476:	f7ff ff4d 	bl	314 <print_vms>
			select_console(LOCAL);
     47a:	2000      	movs	r0, #0
     47c:	f002 fdf0 	bl	3060 <select_console>
			break;
     480:	e017      	b.n	4b2 <chip_vm+0xbe>
			if (usart_getc(CHN1)==CTRL_C){
     482:	2000      	movs	r0, #0
     484:	f003 f932 	bl	36ec <usart_getc>
     488:	2803      	cmp	r0, #3
     48a:	d112      	bne.n	4b2 <chip_vm+0xbe>
			select_console(SERIAL);
     48c:	2001      	movs	r0, #1
     48e:	f002 fde7 	bl	3060 <select_console>
			print_vms("vm state\n",CHIP_CONTINUE);
     492:	2100      	movs	r1, #0
     494:	4885      	ldr	r0, [pc, #532]	; (6ac <chip_vm+0x2b8>)
     496:	f7ff ff3d 	bl	314 <print_vms>
			print("<CTRL-Q> to quit, any to step.\n");
     49a:	4885      	ldr	r0, [pc, #532]	; (6b0 <chip_vm+0x2bc>)
     49c:	f002 fd24 	bl	2ee8 <print>
			c=get_char();
     4a0:	f002 fde4 	bl	306c <get_char>
			if (c==CTRL_Q) dbg_level=DEBUG_BOC;
     4a4:	2811      	cmp	r0, #17
     4a6:	bf14      	ite	ne
     4a8:	2503      	movne	r5, #3
     4aa:	2504      	moveq	r5, #4
			select_console(LOCAL);
     4ac:	2000      	movs	r0, #0
     4ae:	f002 fdd7 	bl	3060 <select_console>
		x=rx(vms.b1);
     4b2:	7e22      	ldrb	r2, [r4, #24]
     4b4:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     4b8:	7e63      	ldrb	r3, [r4, #25]
     4ba:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     4be:	0911      	lsrs	r1, r2, #4
     4c0:	290f      	cmp	r1, #15
     4c2:	f200 810e 	bhi.w	6e2 <chip_vm+0x2ee>
     4c6:	e8df f011 	tbh	[pc, r1, lsl #1]
     4ca:	002c      	.short	0x002c
     4cc:	00940088 	.word	0x00940088
     4d0:	00b100a8 	.word	0x00b100a8
     4d4:	010900ba 	.word	0x010900ba
     4d8:	013b012f 	.word	0x013b012f
     4dc:	028501b6 	.word	0x028501b6
     4e0:	02a20292 	.word	0x02a20292
     4e4:	02dd02ad 	.word	0x02dd02ad
     4e8:	02fb      	.short	0x02fb
		x=rx(vms.b1);
     4ea:	7e22      	ldrb	r2, [r4, #24]
     4ec:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     4f0:	7e63      	ldrb	r3, [r4, #25]
     4f2:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     4f6:	0911      	lsrs	r1, r2, #4
     4f8:	290f      	cmp	r1, #15
     4fa:	f200 841f 	bhi.w	d3c <chip_vm+0x948>
     4fe:	e8df f011 	tbh	[pc, r1, lsl #1]
     502:	0010      	.short	0x0010
     504:	0078006c 	.word	0x0078006c
     508:	0095008c 	.word	0x0095008c
     50c:	00ed009e 	.word	0x00ed009e
     510:	011f0113 	.word	0x011f0113
     514:	0269019a 	.word	0x0269019a
     518:	02860276 	.word	0x02860276
     51c:	02c10291 	.word	0x02c10291
     520:	02df      	.short	0x02df
		    if ((vms.b1|vms.b2)==0){
     522:	431a      	orrs	r2, r3
     524:	f000 80dd 	beq.w	6e2 <chip_vm+0x2ee>
     528:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     52c:	2ac0      	cmp	r2, #192	; 0xc0
     52e:	d026      	beq.n	57e <chip_vm+0x18a>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
     530:	2ad0      	cmp	r2, #208	; 0xd0
     532:	d029      	beq.n	588 <chip_vm+0x194>
			}else switch(vms.b2){
     534:	3be0      	subs	r3, #224	; 0xe0
     536:	2b1f      	cmp	r3, #31
     538:	d82b      	bhi.n	592 <chip_vm+0x19e>
     53a:	e8df f013 	tbh	[pc, r3, lsl #1]
     53e:	002d      	.short	0x002d
     540:	002a002a 	.word	0x002a002a
     544:	002a002a 	.word	0x002a002a
     548:	002a002a 	.word	0x002a002a
     54c:	002a002a 	.word	0x002a002a
     550:	002a002a 	.word	0x002a002a
     554:	002a002a 	.word	0x002a002a
     558:	0030002a 	.word	0x0030002a
     55c:	002a002a 	.word	0x002a002a
     560:	002a002a 	.word	0x002a002a
     564:	002a002a 	.word	0x002a002a
     568:	002a002a 	.word	0x002a002a
     56c:	002a002a 	.word	0x002a002a
     570:	00440048 	.word	0x00440048
     574:	003c0038 	.word	0x003c0038
     578:	04020420 	.word	0x04020420
     57c:	0040      	.short	0x0040
				gfx_scroll_down(vms.b2&0xf); 
     57e:	f003 000f 	and.w	r0, r3, #15
     582:	f001 f8c3 	bl	170c <gfx_scroll_down>
     586:	e0ac      	b.n	6e2 <chip_vm+0x2ee>
				gfx_scroll_up(vms.b2&0xf);					
     588:	f003 000f 	and.w	r0, r3, #15
     58c:	f001 f898 	bl	16c0 <gfx_scroll_up>
     590:	e0a7      	b.n	6e2 <chip_vm+0x2ee>
					exit_code=CHIP_BAD_OPCODE;
     592:	f04f 0802 	mov.w	r8, #2
     596:	e3e5      	b.n	d64 <chip_vm+0x970>
					gfx_cls();
     598:	f001 f87e 	bl	1698 <gfx_cls>
					break;
     59c:	e0a1      	b.n	6e2 <chip_vm+0x2ee>
					vms.pc=vms.stack[vms.sp--];
     59e:	7923      	ldrb	r3, [r4, #4]
     5a0:	1e5a      	subs	r2, r3, #1
     5a2:	7122      	strb	r2, [r4, #4]
     5a4:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     5a8:	8b5b      	ldrh	r3, [r3, #26]
     5aa:	8023      	strh	r3, [r4, #0]
					break;
     5ac:	e099      	b.n	6e2 <chip_vm+0x2ee>
					gfx_scroll_right(4);
     5ae:	2004      	movs	r0, #4
     5b0:	f001 f8fe 	bl	17b0 <gfx_scroll_right>
					break;
     5b4:	e095      	b.n	6e2 <chip_vm+0x2ee>
					gfx_scroll_left(4);
     5b6:	2004      	movs	r0, #4
     5b8:	f001 f8cc 	bl	1754 <gfx_scroll_left>
					break;
     5bc:	e091      	b.n	6e2 <chip_vm+0x2ee>
					set_video_mode(VM_SCHIP);
     5be:	2001      	movs	r0, #1
     5c0:	f002 ff2a 	bl	3418 <set_video_mode>
					break; 
     5c4:	e08d      	b.n	6e2 <chip_vm+0x2ee>
					set_video_mode(VM_BPCHIP);
     5c6:	2000      	movs	r0, #0
     5c8:	f002 ff26 	bl	3418 <set_video_mode>
					break;
     5cc:	e089      	b.n	6e2 <chip_vm+0x2ee>
					set_palette((const uint8_t*)&game_ram[vms.ix]);
     5ce:	8863      	ldrh	r3, [r4, #2]
     5d0:	4833      	ldr	r0, [pc, #204]	; (6a0 <chip_vm+0x2ac>)
     5d2:	4418      	add	r0, r3
     5d4:	f001 f808 	bl	15e8 <set_palette>
					break;	
     5d8:	e083      	b.n	6e2 <chip_vm+0x2ee>
			vms.pc=caddr(vms.b1,vms.b2);
     5da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5de:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5e2:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5e4:	4a33      	ldr	r2, [pc, #204]	; (6b4 <chip_vm+0x2c0>)
     5e6:	7812      	ldrb	r2, [r2, #0]
     5e8:	2a00      	cmp	r2, #0
     5ea:	d17a      	bne.n	6e2 <chip_vm+0x2ee>
				vms.pc<<=1;
     5ec:	005b      	lsls	r3, r3, #1
     5ee:	8023      	strh	r3, [r4, #0]
     5f0:	e077      	b.n	6e2 <chip_vm+0x2ee>
			vms.stack[++vms.sp]=vms.pc;
     5f2:	7921      	ldrb	r1, [r4, #4]
     5f4:	3101      	adds	r1, #1
     5f6:	b2c9      	uxtb	r1, r1
     5f8:	7121      	strb	r1, [r4, #4]
     5fa:	eb04 0141 	add.w	r1, r4, r1, lsl #1
     5fe:	8820      	ldrh	r0, [r4, #0]
     600:	8348      	strh	r0, [r1, #26]
			vms.pc=caddr(vms.b1,vms.b2);
     602:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     606:	f3c3 030b 	ubfx	r3, r3, #0, #12
     60a:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     60c:	4a29      	ldr	r2, [pc, #164]	; (6b4 <chip_vm+0x2c0>)
     60e:	7812      	ldrb	r2, [r2, #0]
     610:	2a00      	cmp	r2, #0
     612:	d166      	bne.n	6e2 <chip_vm+0x2ee>
				vms.pc<<=1;
     614:	005b      	lsls	r3, r3, #1
     616:	8023      	strh	r3, [r4, #0]
     618:	e063      	b.n	6e2 <chip_vm+0x2ee>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     61a:	44a0      	add	r8, r4
     61c:	f898 2006 	ldrb.w	r2, [r8, #6]
     620:	429a      	cmp	r2, r3
     622:	d15e      	bne.n	6e2 <chip_vm+0x2ee>
     624:	8823      	ldrh	r3, [r4, #0]
     626:	3302      	adds	r3, #2
     628:	8023      	strh	r3, [r4, #0]
     62a:	e05a      	b.n	6e2 <chip_vm+0x2ee>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     62c:	44a0      	add	r8, r4
     62e:	f898 2006 	ldrb.w	r2, [r8, #6]
     632:	429a      	cmp	r2, r3
     634:	d055      	beq.n	6e2 <chip_vm+0x2ee>
     636:	8823      	ldrh	r3, [r4, #0]
     638:	3302      	adds	r3, #2
     63a:	8023      	strh	r3, [r4, #0]
     63c:	e051      	b.n	6e2 <chip_vm+0x2ee>
			switch(vms.b2&0xf){
     63e:	f003 030f 	and.w	r3, r3, #15
     642:	2b02      	cmp	r3, #2
     644:	d015      	beq.n	672 <chip_vm+0x27e>
     646:	2b03      	cmp	r3, #3
     648:	d036      	beq.n	6b8 <chip_vm+0x2c4>
     64a:	b133      	cbz	r3, 65a <chip_vm+0x266>
     64c:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     650:	f1b8 0f00 	cmp.w	r8, #0
     654:	f040 8386 	bne.w	d64 <chip_vm+0x970>
     658:	e043      	b.n	6e2 <chip_vm+0x2ee>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     65a:	44a0      	add	r8, r4
     65c:	44a1      	add	r9, r4
     65e:	f898 2006 	ldrb.w	r2, [r8, #6]
     662:	f899 3006 	ldrb.w	r3, [r9, #6]
     666:	429a      	cmp	r2, r3
     668:	d13b      	bne.n	6e2 <chip_vm+0x2ee>
     66a:	8823      	ldrh	r3, [r4, #0]
     66c:	3302      	adds	r3, #2
     66e:	8023      	strh	r3, [r4, #0]
     670:	e037      	b.n	6e2 <chip_vm+0x2ee>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     672:	4640      	mov	r0, r8
     674:	45c8      	cmp	r8, r9
     676:	bf28      	it	cs
     678:	4648      	movcs	r0, r9
     67a:	eba9 0208 	sub.w	r2, r9, r8
     67e:	2a00      	cmp	r2, #0
     680:	bfb8      	it	lt
     682:	4252      	neglt	r2, r2
     684:	8863      	ldrh	r3, [r4, #2]
     686:	3006      	adds	r0, #6
     688:	3201      	adds	r2, #1
     68a:	4905      	ldr	r1, [pc, #20]	; (6a0 <chip_vm+0x2ac>)
     68c:	4419      	add	r1, r3
     68e:	4420      	add	r0, r4
     690:	f000 feb7 	bl	1402 <move>
				break;
     694:	e025      	b.n	6e2 <chip_vm+0x2ee>
     696:	bf00      	nop
     698:	20000230 	.word	0x20000230
     69c:	51eb851f 	.word	0x51eb851f
     6a0:	20000700 	.word	0x20000700
     6a4:	00003ef8 	.word	0x00003ef8
     6a8:	00003ddc 	.word	0x00003ddc
     6ac:	00003df0 	.word	0x00003df0
     6b0:	00003dfc 	.word	0x00003dfc
     6b4:	200006c4 	.word	0x200006c4
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     6b8:	8863      	ldrh	r3, [r4, #2]
     6ba:	4641      	mov	r1, r8
     6bc:	45c8      	cmp	r8, r9
     6be:	bf28      	it	cs
     6c0:	4649      	movcs	r1, r9
     6c2:	eba9 0208 	sub.w	r2, r9, r8
     6c6:	2a00      	cmp	r2, #0
     6c8:	bfb8      	it	lt
     6ca:	4252      	neglt	r2, r2
     6cc:	3106      	adds	r1, #6
     6ce:	3201      	adds	r2, #1
     6d0:	4421      	add	r1, r4
     6d2:	48be      	ldr	r0, [pc, #760]	; (9cc <chip_vm+0x5d8>)
     6d4:	4418      	add	r0, r3
     6d6:	f000 fe94 	bl	1402 <move>
				break;
     6da:	e002      	b.n	6e2 <chip_vm+0x2ee>
			vms.var[x]=vms.b2;
     6dc:	44a0      	add	r8, r4
     6de:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     6e2:	8823      	ldrh	r3, [r4, #0]
     6e4:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     6e8:	f080 833a 	bcs.w	d60 <chip_vm+0x96c>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     6ec:	4bb8      	ldr	r3, [pc, #736]	; (9d0 <chip_vm+0x5dc>)
     6ee:	781b      	ldrb	r3, [r3, #0]
     6f0:	2b01      	cmp	r3, #1
     6f2:	f43f ae91 	beq.w	418 <chip_vm+0x24>
		_get_opcode(vms.pc);
     6f6:	8820      	ldrh	r0, [r4, #0]
     6f8:	4bb4      	ldr	r3, [pc, #720]	; (9cc <chip_vm+0x5d8>)
     6fa:	5c1a      	ldrb	r2, [r3, r0]
     6fc:	7622      	strb	r2, [r4, #24]
     6fe:	4403      	add	r3, r0
     700:	785b      	ldrb	r3, [r3, #1]
     702:	7663      	strb	r3, [r4, #25]
		vms.pc+=2;
     704:	3002      	adds	r0, #2
     706:	b280      	uxth	r0, r0
     708:	8020      	strh	r0, [r4, #0]
		switch(dbg_level){
     70a:	1e6b      	subs	r3, r5, #1
     70c:	2b03      	cmp	r3, #3
     70e:	f63f aeec 	bhi.w	4ea <chip_vm+0xf6>
     712:	a201      	add	r2, pc, #4	; (adr r2, 718 <chip_vm+0x324>)
     714:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     718:	00000439 	.word	0x00000439
     71c:	0000046d 	.word	0x0000046d
     720:	0000048d 	.word	0x0000048d
     724:	00000483 	.word	0x00000483
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
     73e:	e7d0      	b.n	6e2 <chip_vm+0x2ee>
			switch(vms.b2&0xf){
     740:	f003 030f 	and.w	r3, r3, #15
     744:	2b0e      	cmp	r3, #14
     746:	f200 82ff 	bhi.w	d48 <chip_vm+0x954>
     74a:	e8df f013 	tbh	[pc, r3, lsl #1]
     74e:	000f      	.short	0x000f
     750:	00200016 	.word	0x00200016
     754:	0034002a 	.word	0x0034002a
     758:	00520043 	.word	0x00520043
     75c:	02fd005c 	.word	0x02fd005c
     760:	02fd02fd 	.word	0x02fd02fd
     764:	02fd02fd 	.word	0x02fd02fd
     768:	006b02fd 	.word	0x006b02fd
				vms.var[x]=vms.var[y];
     76c:	44a1      	add	r9, r4
     76e:	f899 3006 	ldrb.w	r3, [r9, #6]
     772:	44a0      	add	r8, r4
     774:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     778:	e7b3      	b.n	6e2 <chip_vm+0x2ee>
				vms.var[x]|=vms.var[y];
     77a:	44a0      	add	r8, r4
     77c:	44a1      	add	r9, r4
     77e:	f898 3006 	ldrb.w	r3, [r8, #6]
     782:	f899 2006 	ldrb.w	r2, [r9, #6]
     786:	4313      	orrs	r3, r2
     788:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     78c:	e7a9      	b.n	6e2 <chip_vm+0x2ee>
				vms.var[x]&=vms.var[y];
     78e:	44a0      	add	r8, r4
     790:	44a1      	add	r9, r4
     792:	f898 3006 	ldrb.w	r3, [r8, #6]
     796:	f899 2006 	ldrb.w	r2, [r9, #6]
     79a:	4013      	ands	r3, r2
     79c:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7a0:	e79f      	b.n	6e2 <chip_vm+0x2ee>
				vms.var[x]^=vms.var[y];
     7a2:	44a0      	add	r8, r4
     7a4:	44a1      	add	r9, r4
     7a6:	f898 3006 	ldrb.w	r3, [r8, #6]
     7aa:	f899 2006 	ldrb.w	r2, [r9, #6]
     7ae:	4053      	eors	r3, r2
     7b0:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7b4:	e795      	b.n	6e2 <chip_vm+0x2ee>
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
     7d2:	e786      	b.n	6e2 <chip_vm+0x2ee>
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
     7f0:	e777      	b.n	6e2 <chip_vm+0x2ee>
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
     804:	e76d      	b.n	6e2 <chip_vm+0x2ee>
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
     822:	e75e      	b.n	6e2 <chip_vm+0x2ee>
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
     834:	e755      	b.n	6e2 <chip_vm+0x2ee>
			switch (vms.b2&0xf){
     836:	f003 030f 	and.w	r3, r3, #15
     83a:	2b0f      	cmp	r3, #15
     83c:	f200 8287 	bhi.w	d4e <chip_vm+0x95a>
     840:	e8df f003 	tbb	[pc, r3]
     844:	3c1f1508 	.word	0x3c1f1508
     848:	62574c47 	.word	0x62574c47
     84c:	867a736c 	.word	0x867a736c
     850:	bdae9f93 	.word	0xbdae9f93
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     854:	44a0      	add	r8, r4
     856:	44a1      	add	r9, r4
     858:	f898 2006 	ldrb.w	r2, [r8, #6]
     85c:	f899 3006 	ldrb.w	r3, [r9, #6]
     860:	429a      	cmp	r2, r3
     862:	f43f af3e 	beq.w	6e2 <chip_vm+0x2ee>
     866:	8823      	ldrh	r3, [r4, #0]
     868:	3302      	adds	r3, #2
     86a:	8023      	strh	r3, [r4, #0]
     86c:	e739      	b.n	6e2 <chip_vm+0x2ee>
				key_tone(vms.var[x],vms.var[y],false);
     86e:	44a1      	add	r9, r4
     870:	44a0      	add	r8, r4
     872:	2200      	movs	r2, #0
     874:	f899 1006 	ldrb.w	r1, [r9, #6]
     878:	f898 0006 	ldrb.w	r0, [r8, #6]
     87c:	f002 f8b0 	bl	29e0 <key_tone>
				break;
     880:	e72f      	b.n	6e2 <chip_vm+0x2ee>
				select_font(FONT_ASCII);
     882:	2002      	movs	r0, #2
     884:	f002 fa3e 	bl	2d04 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     888:	44a1      	add	r9, r4
     88a:	44a0      	add	r8, r4
     88c:	f899 1006 	ldrb.w	r1, [r9, #6]
     890:	f898 0006 	ldrb.w	r0, [r8, #6]
     894:	f002 faf4 	bl	2e80 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     898:	8860      	ldrh	r0, [r4, #2]
     89a:	f8df 9130 	ldr.w	r9, [pc, #304]	; 9cc <chip_vm+0x5d8>
     89e:	4448      	add	r0, r9
     8a0:	f002 fb22 	bl	2ee8 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8a4:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8a8:	eb09 0008 	add.w	r0, r9, r8
     8ac:	f000 fdb3 	bl	1416 <strlen>
     8b0:	f108 0801 	add.w	r8, r8, #1
     8b4:	4480      	add	r8, r0
     8b6:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     8ba:	e712      	b.n	6e2 <chip_vm+0x2ee>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     8bc:	44a1      	add	r9, r4
     8be:	44a0      	add	r8, r4
     8c0:	2303      	movs	r3, #3
     8c2:	2200      	movs	r2, #0
     8c4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8c8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8cc:	f000 fe98 	bl	1600 <gfx_blit>
				break;
     8d0:	e707      	b.n	6e2 <chip_vm+0x2ee>
				noise((x<<4)+y);
     8d2:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8d6:	f002 f897 	bl	2a08 <noise>
				break;
     8da:	e702      	b.n	6e2 <chip_vm+0x2ee>
				key_tone(vms.var[x],vms.var[y],true);
     8dc:	44a1      	add	r9, r4
     8de:	44a0      	add	r8, r4
     8e0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8e4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8e8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8ec:	f002 f878 	bl	29e0 <key_tone>
				break;
     8f0:	e6f7      	b.n	6e2 <chip_vm+0x2ee>
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
     906:	e6ec      	b.n	6e2 <chip_vm+0x2ee>
				vms.var[x]=vms.stack[vms.sp--];
     908:	7923      	ldrb	r3, [r4, #4]
     90a:	1e5a      	subs	r2, r3, #1
     90c:	7122      	strb	r2, [r4, #4]
     90e:	44a0      	add	r8, r4
     910:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     914:	8b5b      	ldrh	r3, [r3, #26]
     916:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     91a:	e6e2      	b.n	6e2 <chip_vm+0x2ee>
					vparams=get_video_params();
     91c:	f002 fda6 	bl	346c <get_video_params>
					vms.var[x]=vparams->hres;
     920:	44a0      	add	r8, r4
     922:	8983      	ldrh	r3, [r0, #12]
     924:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     928:	e6db      	b.n	6e2 <chip_vm+0x2ee>
					vparams=get_video_params();
     92a:	f002 fd9f 	bl	346c <get_video_params>
					vms.var[x]=vparams->vres;
     92e:	44a0      	add	r8, r4
     930:	89c3      	ldrh	r3, [r0, #14]
     932:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     936:	e6d4      	b.n	6e2 <chip_vm+0x2ee>
			    vms.var[x] |= (1<<(y&0x7));
     938:	44a0      	add	r8, r4
     93a:	f009 0907 	and.w	r9, r9, #7
     93e:	2301      	movs	r3, #1
     940:	fa03 f309 	lsl.w	r3, r3, r9
     944:	f898 2006 	ldrb.w	r2, [r8, #6]
     948:	4313      	orrs	r3, r2
     94a:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     94e:	e6c8      	b.n	6e2 <chip_vm+0x2ee>
			    vms.var[x] &= ~(1<<(y&0x7));
     950:	44a0      	add	r8, r4
     952:	f009 0207 	and.w	r2, r9, #7
     956:	2301      	movs	r3, #1
     958:	fa03 f202 	lsl.w	r2, r3, r2
     95c:	f898 3006 	ldrb.w	r3, [r8, #6]
     960:	ea23 0302 	bic.w	r3, r3, r2
     964:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     968:	e6bb      	b.n	6e2 <chip_vm+0x2ee>
   			    vms.var[x] ^= (1<<(y&0x7));
     96a:	44a0      	add	r8, r4
     96c:	f009 0907 	and.w	r9, r9, #7
     970:	2301      	movs	r3, #1
     972:	fa03 f309 	lsl.w	r3, r3, r9
     976:	f898 2006 	ldrb.w	r2, [r8, #6]
     97a:	4053      	eors	r3, r2
     97c:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     980:	e6af      	b.n	6e2 <chip_vm+0x2ee>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     982:	44a0      	add	r8, r4
     984:	f898 3006 	ldrb.w	r3, [r8, #6]
     988:	f009 0907 	and.w	r9, r9, #7
     98c:	fa43 f309 	asr.w	r3, r3, r9
     990:	f013 0f01 	tst.w	r3, #1
     994:	f43f aea5 	beq.w	6e2 <chip_vm+0x2ee>
     998:	8823      	ldrh	r3, [r4, #0]
     99a:	3302      	adds	r3, #2
     99c:	8023      	strh	r3, [r4, #0]
     99e:	e6a0      	b.n	6e2 <chip_vm+0x2ee>
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     9a0:	44a0      	add	r8, r4
     9a2:	f898 3006 	ldrb.w	r3, [r8, #6]
     9a6:	f009 0907 	and.w	r9, r9, #7
     9aa:	fa43 f309 	asr.w	r3, r3, r9
     9ae:	f013 0f01 	tst.w	r3, #1
     9b2:	f47f ae96 	bne.w	6e2 <chip_vm+0x2ee>
     9b6:	8823      	ldrh	r3, [r4, #0]
     9b8:	3302      	adds	r3, #2
     9ba:	8023      	strh	r3, [r4, #0]
     9bc:	e691      	b.n	6e2 <chip_vm+0x2ee>
			    vms.var[15]=gfx_get_pixel(x,y);
     9be:	4649      	mov	r1, r9
     9c0:	4640      	mov	r0, r8
     9c2:	f000 ff29 	bl	1818 <gfx_get_pixel>
     9c6:	7560      	strb	r0, [r4, #21]
				break;  	
     9c8:	e68b      	b.n	6e2 <chip_vm+0x2ee>
     9ca:	bf00      	nop
     9cc:	20000700 	.word	0x20000700
     9d0:	200006c4 	.word	0x200006c4
			vms.ix=caddr(vms.b1,vms.b2);
     9d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9d8:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9dc:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9de:	4a99      	ldr	r2, [pc, #612]	; (c44 <chip_vm+0x850>)
     9e0:	7812      	ldrb	r2, [r2, #0]
     9e2:	b90a      	cbnz	r2, 9e8 <chip_vm+0x5f4>
				vms.ix<<=1;
     9e4:	005b      	lsls	r3, r3, #1
     9e6:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     9e8:	2300      	movs	r3, #0
     9ea:	7163      	strb	r3, [r4, #5]
			break;
     9ec:	e679      	b.n	6e2 <chip_vm+0x2ee>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     9ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9f2:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9f6:	79a2      	ldrb	r2, [r4, #6]
     9f8:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     9fc:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     9fe:	4a91      	ldr	r2, [pc, #580]	; (c44 <chip_vm+0x850>)
     a00:	7812      	ldrb	r2, [r2, #0]
     a02:	2a00      	cmp	r2, #0
     a04:	f47f ae6d 	bne.w	6e2 <chip_vm+0x2ee>
				vms.pc<<=1;
     a08:	005b      	lsls	r3, r3, #1
     a0a:	8023      	strh	r3, [r4, #0]
     a0c:	e669      	b.n	6e2 <chip_vm+0x2ee>
			vms.var[x]=rand()%vms.b2;
     a0e:	f7ff fce3 	bl	3d8 <rand>
     a12:	44a0      	add	r8, r4
     a14:	7e63      	ldrb	r3, [r4, #25]
     a16:	fb90 f2f3 	sdiv	r2, r0, r3
     a1a:	fb02 0013 	mls	r0, r2, r3, r0
     a1e:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     a22:	e65e      	b.n	6e2 <chip_vm+0x2ee>
			gx=(int)(unsigned)vms.var[x];
     a24:	44a0      	add	r8, r4
     a26:	f898 0006 	ldrb.w	r0, [r8, #6]
			gy=(int)(unsigned)vms.var[y];
     a2a:	44a1      	add	r9, r4
     a2c:	f899 1006 	ldrb.w	r1, [r9, #6]
			if (!n){
     a30:	f013 030f 	ands.w	r3, r3, #15
     a34:	d113      	bne.n	a5e <chip_vm+0x66a>
				if (vms.sprite_mem==RAM_MEM){
     a36:	7963      	ldrb	r3, [r4, #5]
     a38:	b94b      	cbnz	r3, a4e <chip_vm+0x65a>
					vms.var[15]=gfx_sprite(gx,gy,16,16,(const uint8_t*)&game_ram[vms.ix]);
     a3a:	8863      	ldrh	r3, [r4, #2]
     a3c:	4a82      	ldr	r2, [pc, #520]	; (c48 <chip_vm+0x854>)
     a3e:	4413      	add	r3, r2
     a40:	9300      	str	r3, [sp, #0]
     a42:	2310      	movs	r3, #16
     a44:	461a      	mov	r2, r3
     a46:	f000 ff0d 	bl	1864 <gfx_sprite>
     a4a:	7560      	strb	r0, [r4, #21]
     a4c:	e649      	b.n	6e2 <chip_vm+0x2ee>
					vms.var[15]=gfx_sprite(gx,gy,16,16,(const uint8_t*)(uint32_t)vms.ix);
     a4e:	8863      	ldrh	r3, [r4, #2]
     a50:	9300      	str	r3, [sp, #0]
     a52:	2310      	movs	r3, #16
     a54:	461a      	mov	r2, r3
     a56:	f000 ff05 	bl	1864 <gfx_sprite>
     a5a:	7560      	strb	r0, [r4, #21]
     a5c:	e641      	b.n	6e2 <chip_vm+0x2ee>
				if (vms.sprite_mem==RAM_MEM){
     a5e:	7962      	ldrb	r2, [r4, #5]
     a60:	b94a      	cbnz	r2, a76 <chip_vm+0x682>
					vms.var[15]=gfx_sprite(gx,gy,8,n,(const uint8_t*)&game_ram[vms.ix]);
     a62:	8862      	ldrh	r2, [r4, #2]
     a64:	f8df e1e0 	ldr.w	lr, [pc, #480]	; c48 <chip_vm+0x854>
     a68:	4472      	add	r2, lr
     a6a:	9200      	str	r2, [sp, #0]
     a6c:	2208      	movs	r2, #8
     a6e:	f000 fef9 	bl	1864 <gfx_sprite>
     a72:	7560      	strb	r0, [r4, #21]
     a74:	e635      	b.n	6e2 <chip_vm+0x2ee>
					vms.var[15]=gfx_sprite(gx,gy,8,n,(const uint8_t*)(uint32_t)vms.ix);
     a76:	8862      	ldrh	r2, [r4, #2]
     a78:	9200      	str	r2, [sp, #0]
     a7a:	2208      	movs	r2, #8
     a7c:	f000 fef2 	bl	1864 <gfx_sprite>
     a80:	7560      	strb	r0, [r4, #21]
     a82:	e62e      	b.n	6e2 <chip_vm+0x2ee>
				switch(vms.b2){
     a84:	2b9e      	cmp	r3, #158	; 0x9e
     a86:	d003      	beq.n	a90 <chip_vm+0x69c>
     a88:	2ba1      	cmp	r3, #161	; 0xa1
     a8a:	d00d      	beq.n	aa8 <chip_vm+0x6b4>
					return CHIP_BAD_OPCODE;
     a8c:	2002      	movs	r0, #2
     a8e:	e173      	b.n	d78 <chip_vm+0x984>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     a90:	44a0      	add	r8, r4
     a92:	f898 0006 	ldrb.w	r0, [r8, #6]
     a96:	f000 fb79 	bl	118c <btn_query_down>
     a9a:	2800      	cmp	r0, #0
     a9c:	f43f ae21 	beq.w	6e2 <chip_vm+0x2ee>
     aa0:	8823      	ldrh	r3, [r4, #0]
     aa2:	3302      	adds	r3, #2
     aa4:	8023      	strh	r3, [r4, #0]
     aa6:	e61c      	b.n	6e2 <chip_vm+0x2ee>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     aa8:	44a0      	add	r8, r4
     aaa:	f898 0006 	ldrb.w	r0, [r8, #6]
     aae:	f000 fb6d 	bl	118c <btn_query_down>
     ab2:	2800      	cmp	r0, #0
     ab4:	f47f ae15 	bne.w	6e2 <chip_vm+0x2ee>
     ab8:	8823      	ldrh	r3, [r4, #0]
     aba:	3302      	adds	r3, #2
     abc:	8023      	strh	r3, [r4, #0]
     abe:	e610      	b.n	6e2 <chip_vm+0x2ee>
			switch(vms.b2){
     ac0:	3b01      	subs	r3, #1
     ac2:	2b84      	cmp	r3, #132	; 0x84
     ac4:	f200 8146 	bhi.w	d54 <chip_vm+0x960>
     ac8:	e8df f013 	tbh	[pc, r3, lsl #1]
     acc:	01440085 	.word	0x01440085
     ad0:	01440144 	.word	0x01440144
     ad4:	01440144 	.word	0x01440144
     ad8:	0144008b 	.word	0x0144008b
     adc:	00910144 	.word	0x00910144
     ae0:	01440144 	.word	0x01440144
     ae4:	01440144 	.word	0x01440144
     ae8:	01440144 	.word	0x01440144
     aec:	01440144 	.word	0x01440144
     af0:	01440144 	.word	0x01440144
     af4:	01440097 	.word	0x01440097
     af8:	009d0144 	.word	0x009d0144
     afc:	01440144 	.word	0x01440144
     b00:	01440144 	.word	0x01440144
     b04:	00a50144 	.word	0x00a50144
     b08:	01440144 	.word	0x01440144
     b0c:	01440144 	.word	0x01440144
     b10:	01440144 	.word	0x01440144
     b14:	01440144 	.word	0x01440144
     b18:	01440144 	.word	0x01440144
     b1c:	014400ac 	.word	0x014400ac
     b20:	01440144 	.word	0x01440144
     b24:	01440144 	.word	0x01440144
     b28:	00c60144 	.word	0x00c60144
     b2c:	01440144 	.word	0x01440144
     b30:	014400d4 	.word	0x014400d4
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
     b70:	01440144 	.word	0x01440144
     b74:	014400f9 	.word	0x014400f9
     b78:	01440144 	.word	0x01440144
     b7c:	01440144 	.word	0x01440144
     b80:	01440144 	.word	0x01440144
     b84:	01440144 	.word	0x01440144
     b88:	01440144 	.word	0x01440144
     b8c:	01440144 	.word	0x01440144
     b90:	01440144 	.word	0x01440144
     b94:	01440102 	.word	0x01440102
     b98:	01440144 	.word	0x01440144
     b9c:	01440144 	.word	0x01440144
     ba0:	01440144 	.word	0x01440144
     ba4:	01440144 	.word	0x01440144
     ba8:	01440144 	.word	0x01440144
     bac:	01440144 	.word	0x01440144
     bb0:	010b0144 	.word	0x010b0144
     bb4:	0144010e 	.word	0x0144010e
     bb8:	01440144 	.word	0x01440144
     bbc:	01440144 	.word	0x01440144
     bc0:	01440144 	.word	0x01440144
     bc4:	01440144 	.word	0x01440144
     bc8:	01440144 	.word	0x01440144
     bcc:	01440144 	.word	0x01440144
     bd0:	01440144 	.word	0x01440144
     bd4:	0123      	.short	0x0123
				sprite_bpp=(vms.b1&0xf)/2; 
     bd6:	ea4f 0858 	mov.w	r8, r8, lsr #1
     bda:	4b1c      	ldr	r3, [pc, #112]	; (c4c <chip_vm+0x858>)
     bdc:	f883 8000 	strb.w	r8, [r3]
				break;
     be0:	e57f      	b.n	6e2 <chip_vm+0x2ee>
				vms.var[x]=game_timer;
     be2:	4b1b      	ldr	r3, [pc, #108]	; (c50 <chip_vm+0x85c>)
     be4:	881b      	ldrh	r3, [r3, #0]
     be6:	44a0      	add	r8, r4
     be8:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     bec:	e579      	b.n	6e2 <chip_vm+0x2ee>
				vms.var[x]=btn_wait_any();
     bee:	f000 fb01 	bl	11f4 <btn_wait_any>
     bf2:	44a0      	add	r8, r4
     bf4:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     bf8:	e573      	b.n	6e2 <chip_vm+0x2ee>
				game_timer=vms.var[x];
     bfa:	44a0      	add	r8, r4
     bfc:	f898 2006 	ldrb.w	r2, [r8, #6]
     c00:	4b13      	ldr	r3, [pc, #76]	; (c50 <chip_vm+0x85c>)
     c02:	801a      	strh	r2, [r3, #0]
				break;
     c04:	e56d      	b.n	6e2 <chip_vm+0x2ee>
				tone(523,vms.var[x]);
     c06:	44a0      	add	r8, r4
     c08:	f898 1006 	ldrb.w	r1, [r8, #6]
     c0c:	f240 200b 	movw	r0, #523	; 0x20b
     c10:	f001 fec0 	bl	2994 <tone>
				break;
     c14:	e565      	b.n	6e2 <chip_vm+0x2ee>
				vms.ix += vms.var[x];
     c16:	44a0      	add	r8, r4
     c18:	f898 3006 	ldrb.w	r3, [r8, #6]
     c1c:	8862      	ldrh	r2, [r4, #2]
     c1e:	4413      	add	r3, r2
     c20:	8063      	strh	r3, [r4, #2]
				break;
     c22:	e55e      	b.n	6e2 <chip_vm+0x2ee>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     c24:	44a0      	add	r8, r4
     c26:	f898 3006 	ldrb.w	r3, [r8, #6]
     c2a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     c2e:	4a09      	ldr	r2, [pc, #36]	; (c54 <chip_vm+0x860>)
     c30:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c34:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c36:	2301      	movs	r3, #1
     c38:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     c3a:	2000      	movs	r0, #0
     c3c:	f002 f862 	bl	2d04 <select_font>
				break;
     c40:	e54f      	b.n	6e2 <chip_vm+0x2ee>
     c42:	bf00      	nop
     c44:	200006c4 	.word	0x200006c4
     c48:	20000700 	.word	0x20000700
     c4c:	200001c8 	.word	0x200001c8
     c50:	20004e90 	.word	0x20004e90
     c54:	00003c68 	.word	0x00003c68
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c58:	44a0      	add	r8, r4
     c5a:	f898 3006 	ldrb.w	r3, [r8, #6]
     c5e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c62:	4a48      	ldr	r2, [pc, #288]	; (d84 <chip_vm+0x990>)
     c64:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c68:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c6a:	2001      	movs	r0, #1
     c6c:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     c6e:	f002 f849 	bl	2d04 <select_font>
				break;
     c72:	e536      	b.n	6e2 <chip_vm+0x2ee>
				n=vms.var[x];
     c74:	44a0      	add	r8, r4
     c76:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     c7a:	4a43      	ldr	r2, [pc, #268]	; (d88 <chip_vm+0x994>)
     c7c:	fba2 0301 	umull	r0, r3, r2, r1
     c80:	08db      	lsrs	r3, r3, #3
     c82:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     c86:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     c8a:	f884 005e 	strb.w	r0, [r4, #94]	; 0x5e
				block[1]=n%10;
     c8e:	b2db      	uxtb	r3, r3
     c90:	fba2 0203 	umull	r0, r2, r2, r3
     c94:	08d2      	lsrs	r2, r2, #3
     c96:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     c9a:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     c9e:	f884 305d 	strb.w	r3, [r4, #93]	; 0x5d
				block[0]=n/10;
     ca2:	fba7 2301 	umull	r2, r3, r7, r1
     ca6:	095b      	lsrs	r3, r3, #5
     ca8:	f884 305c 	strb.w	r3, [r4, #92]	; 0x5c
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     cac:	8863      	ldrh	r3, [r4, #2]
     cae:	2203      	movs	r2, #3
     cb0:	4936      	ldr	r1, [pc, #216]	; (d8c <chip_vm+0x998>)
     cb2:	4419      	add	r1, r3
     cb4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
     cb8:	f000 fba3 	bl	1402 <move>
				break;
     cbc:	e511      	b.n	6e2 <chip_vm+0x2ee>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     cbe:	8863      	ldrh	r3, [r4, #2]
     cc0:	f108 0201 	add.w	r2, r8, #1
     cc4:	4931      	ldr	r1, [pc, #196]	; (d8c <chip_vm+0x998>)
     cc6:	4419      	add	r1, r3
     cc8:	4630      	mov	r0, r6
     cca:	f000 fb9a 	bl	1402 <move>
				break;
     cce:	e508      	b.n	6e2 <chip_vm+0x2ee>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     cd0:	8863      	ldrh	r3, [r4, #2]
     cd2:	f108 0201 	add.w	r2, r8, #1
     cd6:	4631      	mov	r1, r6
     cd8:	482c      	ldr	r0, [pc, #176]	; (d8c <chip_vm+0x998>)
     cda:	4418      	add	r0, r3
     cdc:	f000 fb91 	bl	1402 <move>
				break;
     ce0:	e4ff      	b.n	6e2 <chip_vm+0x2ee>
				vms.s=(x&0x7)*FLASH_SECTOR_SIZE; // flash sector {0..7}
     ce2:	0352      	lsls	r2, r2, #13
     ce4:	82e2      	strh	r2, [r4, #22]
				break;			
     ce6:	e4fc      	b.n	6e2 <chip_vm+0x2ee>
				if (video_mode==VM_BPCHIP){
     ce8:	4b29      	ldr	r3, [pc, #164]	; (d90 <chip_vm+0x99c>)
     cea:	781b      	ldrb	r3, [r3, #0]
     cec:	b953      	cbnz	r3, d04 <chip_vm+0x910>
					flash_write_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     cee:	8ae3      	ldrh	r3, [r4, #22]
     cf0:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     cf4:	8860      	ldrh	r0, [r4, #2]
     cf6:	f108 0201 	add.w	r2, r8, #1
     cfa:	4631      	mov	r1, r6
     cfc:	4418      	add	r0, r3
     cfe:	f000 f985 	bl	100c <flash_write_block>
     d02:	e4ee      	b.n	6e2 <chip_vm+0x2ee>
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
     d04:	f108 0201 	add.w	r2, r8, #1
     d08:	4631      	mov	r1, r6
     d0a:	4822      	ldr	r0, [pc, #136]	; (d94 <chip_vm+0x9a0>)
     d0c:	f000 f97e 	bl	100c <flash_write_block>
     d10:	e4e7      	b.n	6e2 <chip_vm+0x2ee>
				if (video_mode==VM_BPCHIP){
     d12:	4b1f      	ldr	r3, [pc, #124]	; (d90 <chip_vm+0x99c>)
     d14:	781b      	ldrb	r3, [r3, #0]
     d16:	b953      	cbnz	r3, d2e <chip_vm+0x93a>
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d18:	8ae3      	ldrh	r3, [r4, #22]
     d1a:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d1e:	8860      	ldrh	r0, [r4, #2]
     d20:	f108 0201 	add.w	r2, r8, #1
     d24:	4631      	mov	r1, r6
     d26:	4418      	add	r0, r3
     d28:	f000 f956 	bl	fd8 <flash_read_block>
     d2c:	e4d9      	b.n	6e2 <chip_vm+0x2ee>
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     d2e:	f108 0201 	add.w	r2, r8, #1
     d32:	4631      	mov	r1, r6
     d34:	4817      	ldr	r0, [pc, #92]	; (d94 <chip_vm+0x9a0>)
     d36:	f000 f94f 	bl	fd8 <flash_read_block>
     d3a:	e4d2      	b.n	6e2 <chip_vm+0x2ee>
	    switch (vms.b1>>4){
     d3c:	f04f 0800 	mov.w	r8, #0
     d40:	e486      	b.n	650 <chip_vm+0x25c>
			}else switch(vms.b2){
     d42:	f04f 0800 	mov.w	r8, #0
     d46:	e483      	b.n	650 <chip_vm+0x25c>
				exit_code=CHIP_BAD_OPCODE;
     d48:	f04f 0802 	mov.w	r8, #2
     d4c:	e480      	b.n	650 <chip_vm+0x25c>
				exit_code=CHIP_BAD_OPCODE;
     d4e:	f04f 0802 	mov.w	r8, #2
     d52:	e47d      	b.n	650 <chip_vm+0x25c>
				}
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     d54:	f04f 0802 	mov.w	r8, #2
     d58:	e47a      	b.n	650 <chip_vm+0x25c>
			exit_code=CHIP_BAD_ADDR;
     d5a:	f04f 0803 	mov.w	r8, #3
     d5e:	e001      	b.n	d64 <chip_vm+0x970>
     d60:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     d64:	2002      	movs	r0, #2
     d66:	f001 ffcd 	bl	2d04 <select_font>
	set_keymap(default_kmap);
     d6a:	480b      	ldr	r0, [pc, #44]	; (d98 <chip_vm+0x9a4>)
     d6c:	f000 f9c4 	bl	10f8 <set_keymap>
	set_video_mode(VM_BPCHIP);
     d70:	2000      	movs	r0, #0
     d72:	f002 fb51 	bl	3418 <set_video_mode>
	return exit_code;
     d76:	4640      	mov	r0, r8
}//schipp()
     d78:	b009      	add	sp, #36	; 0x24
     d7a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     d7e:	f04f 0801 	mov.w	r8, #1
     d82:	e7ef      	b.n	d64 <chip_vm+0x970>
     d84:	00003bc8 	.word	0x00003bc8
     d88:	cccccccd 	.word	0xcccccccd
     d8c:	20000700 	.word	0x20000700
     d90:	200006c4 	.word	0x200006c4
     d94:	0001fff0 	.word	0x0001fff0
     d98:	00003cc8 	.word	0x00003cc8

00000d9c <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     d9c:	2200      	movs	r2, #0
     d9e:	4b0f      	ldr	r3, [pc, #60]	; (ddc <flash_enable+0x40>)
     da0:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     da2:	4b0f      	ldr	r3, [pc, #60]	; (de0 <flash_enable+0x44>)
     da4:	681b      	ldr	r3, [r3, #0]
     da6:	f013 0f01 	tst.w	r3, #1
     daa:	d10b      	bne.n	dc4 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     dac:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     db0:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     db4:	6813      	ldr	r3, [r2, #0]
     db6:	f043 0301 	orr.w	r3, r3, #1
     dba:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     dbc:	6813      	ldr	r3, [r2, #0]
     dbe:	f013 0f02 	tst.w	r3, #2
     dc2:	d0fb      	beq.n	dbc <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     dc4:	4b07      	ldr	r3, [pc, #28]	; (de4 <flash_enable+0x48>)
     dc6:	4a08      	ldr	r2, [pc, #32]	; (de8 <flash_enable+0x4c>)
     dc8:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     dca:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     dce:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     dd0:	6918      	ldr	r0, [r3, #16]
     dd2:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     dd6:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     dda:	4770      	bx	lr
     ddc:	200002ac 	.word	0x200002ac
     de0:	40021000 	.word	0x40021000
     de4:	40022000 	.word	0x40022000
     de8:	45670123 	.word	0x45670123

00000dec <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     dec:	4a0b      	ldr	r2, [pc, #44]	; (e1c <flash_write_hword+0x30>)
     dee:	68d3      	ldr	r3, [r2, #12]
     df0:	f013 0f01 	tst.w	r3, #1
     df4:	d1fb      	bne.n	dee <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     df6:	4b09      	ldr	r3, [pc, #36]	; (e1c <flash_write_hword+0x30>)
     df8:	68da      	ldr	r2, [r3, #12]
     dfa:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     dfe:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     e00:	2201      	movs	r2, #1
     e02:	611a      	str	r2, [r3, #16]
	*address=hword;
     e04:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     e06:	68da      	ldr	r2, [r3, #12]
     e08:	f012 0f01 	tst.w	r2, #1
     e0c:	d003      	beq.n	e16 <flash_write_hword+0x2a>
     e0e:	68da      	ldr	r2, [r3, #12]
     e10:	f012 0f20 	tst.w	r2, #32
     e14:	d0f7      	beq.n	e06 <flash_write_hword+0x1a>
	return *address==hword;
}
     e16:	2001      	movs	r0, #1
     e18:	4770      	bx	lr
     e1a:	bf00      	nop
     e1c:	40022000 	.word	0x40022000

00000e20 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e20:	283f      	cmp	r0, #63	; 0x3f
     e22:	d914      	bls.n	e4e <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     e24:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     e26:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     e28:	1c81      	adds	r1, r0, #2
     e2a:	8802      	ldrh	r2, [r0, #0]
     e2c:	f64f 73ff 	movw	r3, #65535	; 0xffff
     e30:	429a      	cmp	r2, r3
     e32:	d110      	bne.n	e56 <flash_erase_row+0x36>
     e34:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     e38:	460b      	mov	r3, r1
     e3a:	f64f 74ff 	movw	r4, #65535	; 0xffff
     e3e:	f833 2b02 	ldrh.w	r2, [r3], #2
     e42:	42a2      	cmp	r2, r4
     e44:	d107      	bne.n	e56 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e46:	429d      	cmp	r5, r3
     e48:	d1f9      	bne.n	e3e <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     e4a:	2001      	movs	r0, #1
     e4c:	e02f      	b.n	eae <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e4e:	2000      	movs	r0, #0
     e50:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     e52:	2000      	movs	r0, #0
     e54:	e02b      	b.n	eae <flash_erase_row+0x8e>
     e56:	4b17      	ldr	r3, [pc, #92]	; (eb4 <flash_erase_row+0x94>)
     e58:	691b      	ldr	r3, [r3, #16]
     e5a:	f013 0f80 	tst.w	r3, #128	; 0x80
     e5e:	d1f8      	bne.n	e52 <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e60:	4b14      	ldr	r3, [pc, #80]	; (eb4 <flash_erase_row+0x94>)
     e62:	68da      	ldr	r2, [r3, #12]
     e64:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     e68:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     e6a:	2202      	movs	r2, #2
     e6c:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     e6e:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     e70:	691a      	ldr	r2, [r3, #16]
     e72:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     e76:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     e78:	68da      	ldr	r2, [r3, #12]
     e7a:	f012 0f01 	tst.w	r2, #1
     e7e:	d003      	beq.n	e88 <flash_erase_row+0x68>
     e80:	68da      	ldr	r2, [r3, #12]
     e82:	f012 0f20 	tst.w	r2, #32
     e86:	d0f7      	beq.n	e78 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     e88:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     e8a:	f64f 72ff 	movw	r2, #65535	; 0xffff
     e8e:	4293      	cmp	r3, r2
     e90:	d107      	bne.n	ea2 <flash_erase_row+0x82>
     e92:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     e96:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     e9a:	4293      	cmp	r3, r2
     e9c:	d101      	bne.n	ea2 <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e9e:	4281      	cmp	r1, r0
     ea0:	d1f9      	bne.n	e96 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     ea2:	f64f 70ff 	movw	r0, #65535	; 0xffff
     ea6:	4283      	cmp	r3, r0
     ea8:	bf14      	ite	ne
     eaa:	2000      	movne	r0, #0
     eac:	2001      	moveq	r0, #1
}
     eae:	bc30      	pop	{r4, r5}
     eb0:	4770      	bx	lr
     eb2:	bf00      	nop
     eb4:	40022000 	.word	0x40022000

00000eb8 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     eb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     eba:	4b1c      	ldr	r3, [pc, #112]	; (f2c <flash_sync+0x74>)
     ebc:	781b      	ldrb	r3, [r3, #0]
     ebe:	f013 0f01 	tst.w	r3, #1
     ec2:	d102      	bne.n	eca <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     ec4:	2301      	movs	r3, #1
}
     ec6:	4618      	mov	r0, r3
     ec8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     eca:	4b18      	ldr	r3, [pc, #96]	; (f2c <flash_sync+0x74>)
     ecc:	7858      	ldrb	r0, [r3, #1]
     ece:	f7ff ffa7 	bl	e20 <flash_erase_row>
     ed2:	4603      	mov	r3, r0
     ed4:	2800      	cmp	r0, #0
     ed6:	d0f6      	beq.n	ec6 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     ed8:	4e14      	ldr	r6, [pc, #80]	; (f2c <flash_sync+0x74>)
     eda:	7875      	ldrb	r5, [r6, #1]
     edc:	02ad      	lsls	r5, r5, #10
     ede:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     ee0:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     ee2:	f64f 77ff 	movw	r7, #65535	; 0xffff
     ee6:	e004      	b.n	ef2 <flash_sync+0x3a>
		dest++;
     ee8:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     eea:	3401      	adds	r4, #1
     eec:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     ef0:	d00a      	beq.n	f08 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     ef2:	f836 1b02 	ldrh.w	r1, [r6], #2
     ef6:	42b9      	cmp	r1, r7
     ef8:	d0f6      	beq.n	ee8 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     efa:	4628      	mov	r0, r5
     efc:	f7ff ff76 	bl	dec <flash_write_hword>
     f00:	2800      	cmp	r0, #0
     f02:	d1f1      	bne.n	ee8 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     f04:	2c00      	cmp	r4, #0
     f06:	dd04      	ble.n	f12 <flash_sync+0x5a>
     f08:	4a08      	ldr	r2, [pc, #32]	; (f2c <flash_sync+0x74>)
     f0a:	7813      	ldrb	r3, [r2, #0]
     f0c:	f023 0304 	bic.w	r3, r3, #4
     f10:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     f12:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f16:	d106      	bne.n	f26 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     f18:	4a04      	ldr	r2, [pc, #16]	; (f2c <flash_sync+0x74>)
     f1a:	7813      	ldrb	r3, [r2, #0]
     f1c:	f023 0301 	bic.w	r3, r3, #1
     f20:	7013      	strb	r3, [r2, #0]
			return 1;
     f22:	2301      	movs	r3, #1
     f24:	e7cf      	b.n	ec6 <flash_sync+0xe>
		return 0;
     f26:	2300      	movs	r3, #0
     f28:	e7cd      	b.n	ec6 <flash_sync+0xe>
     f2a:	bf00      	nop
     f2c:	200002ac 	.word	0x200002ac

00000f30 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     f30:	2200      	movs	r2, #0
     f32:	4b01      	ldr	r3, [pc, #4]	; (f38 <flash_flush+0x8>)
     f34:	701a      	strb	r2, [r3, #0]
     f36:	4770      	bx	lr
     f38:	200002ac 	.word	0x200002ac

00000f3c <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     f3c:	b508      	push	{r3, lr}
	flash_sync();
     f3e:	f7ff ffbb 	bl	eb8 <flash_sync>
	row_buff.flags=0;
     f42:	2200      	movs	r2, #0
     f44:	4b06      	ldr	r3, [pc, #24]	; (f60 <flash_disable+0x24>)
     f46:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     f48:	4a06      	ldr	r2, [pc, #24]	; (f64 <flash_disable+0x28>)
     f4a:	6913      	ldr	r3, [r2, #16]
     f4c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     f50:	6113      	str	r3, [r2, #16]
	RCC->CR&=~RCC_CR_HSION;
     f52:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
     f56:	6813      	ldr	r3, [r2, #0]
     f58:	f023 0301 	bic.w	r3, r3, #1
     f5c:	6013      	str	r3, [r2, #0]
     f5e:	bd08      	pop	{r3, pc}
     f60:	200002ac 	.word	0x200002ac
     f64:	40022000 	.word	0x40022000

00000f68 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     f68:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     f6c:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     f70:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     f74:	d92c      	bls.n	fd0 <flash_write_byte+0x68>
     f76:	460e      	mov	r6, r1
     f78:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     f7a:	4b16      	ldr	r3, [pc, #88]	; (fd4 <flash_write_byte+0x6c>)
     f7c:	785b      	ldrb	r3, [r3, #1]
     f7e:	4598      	cmp	r8, r3
     f80:	d019      	beq.n	fb6 <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     f82:	f7ff ff99 	bl	eb8 <flash_sync>
     f86:	4603      	mov	r3, r0
     f88:	b1f8      	cbz	r0, fca <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     f8a:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     f8e:	f023 0303 	bic.w	r3, r3, #3
     f92:	4a10      	ldr	r2, [pc, #64]	; (fd4 <flash_write_byte+0x6c>)
     f94:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     f98:	f833 4b02 	ldrh.w	r4, [r3], #2
     f9c:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     fa0:	42ab      	cmp	r3, r5
     fa2:	d1f9      	bne.n	f98 <flash_write_byte+0x30>
	row_buff.row=r;
     fa4:	4a0b      	ldr	r2, [pc, #44]	; (fd4 <flash_write_byte+0x6c>)
     fa6:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     faa:	7813      	ldrb	r3, [r2, #0]
     fac:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     fb0:	f043 0302 	orr.w	r3, r3, #2
     fb4:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     fb6:	4a07      	ldr	r2, [pc, #28]	; (fd4 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     fb8:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     fbc:	4413      	add	r3, r2
     fbe:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     fc0:	7813      	ldrb	r3, [r2, #0]
     fc2:	f043 0301 	orr.w	r3, r3, #1
     fc6:	7013      	strb	r3, [r2, #0]
	return 1;
     fc8:	2301      	movs	r3, #1
}
     fca:	4618      	mov	r0, r3
     fcc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     fd0:	2300      	movs	r3, #0
     fd2:	e7fa      	b.n	fca <flash_write_byte+0x62>
     fd4:	200002ac 	.word	0x200002ac

00000fd8 <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     fd8:	2a00      	cmp	r2, #0
     fda:	dd13      	ble.n	1004 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     fdc:	b410      	push	{r4}
     fde:	4603      	mov	r3, r0
     fe0:	3901      	subs	r1, #1
     fe2:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     fe4:	4a08      	ldr	r2, [pc, #32]	; (1008 <flash_read_block+0x30>)
     fe6:	7854      	ldrb	r4, [r2, #1]
     fe8:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     fec:	bf03      	ittte	eq
     fee:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     ff2:	18a4      	addeq	r4, r4, r2
     ff4:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     ff6:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     ff8:	f801 4f01 	strb.w	r4, [r1, #1]!
     ffc:	3301      	adds	r3, #1
     ffe:	4283      	cmp	r3, r0
    1000:	d1f1      	bne.n	fe6 <flash_read_block+0xe>
}
    1002:	bc10      	pop	{r4}
    1004:	4770      	bx	lr
    1006:	bf00      	nop
    1008:	200002ac 	.word	0x200002ac

0000100c <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    100c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<(void*)0x10000) return 0;
    100e:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
    1012:	d202      	bcs.n	101a <flash_write_block+0xe>
    1014:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
    1016:	4618      	mov	r0, r3
    1018:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    101a:	4604      	mov	r4, r0
    101c:	460e      	mov	r6, r1
    101e:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
    1020:	f7ff febc 	bl	d9c <flash_enable>
    1024:	4603      	mov	r3, r0
    1026:	2800      	cmp	r0, #0
    1028:	d0f5      	beq.n	1016 <flash_write_block+0xa>
	for (i=0;i<size;i++){
    102a:	2f00      	cmp	r7, #0
    102c:	dd0c      	ble.n	1048 <flash_write_block+0x3c>
    102e:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
    1030:	1c65      	adds	r5, r4, #1
    1032:	f816 1b01 	ldrb.w	r1, [r6], #1
    1036:	4620      	mov	r0, r4
    1038:	f7ff ff96 	bl	f68 <flash_write_byte>
    103c:	4603      	mov	r3, r0
    103e:	2800      	cmp	r0, #0
    1040:	d0e9      	beq.n	1016 <flash_write_block+0xa>
    1042:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
    1044:	42bd      	cmp	r5, r7
    1046:	d1f3      	bne.n	1030 <flash_write_block+0x24>
	flash_disable();
    1048:	f7ff ff78 	bl	f3c <flash_disable>
	return 1;
    104c:	2301      	movs	r3, #1
    104e:	e7e2      	b.n	1016 <flash_write_block+0xa>

00001050 <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
    1050:	4b0a      	ldr	r3, [pc, #40]	; (107c <btn_mask+0x2c>)
    1052:	781b      	ldrb	r3, [r3, #0]
    1054:	4283      	cmp	r3, r0
    1056:	d00a      	beq.n	106e <btn_mask+0x1e>
    1058:	4a09      	ldr	r2, [pc, #36]	; (1080 <btn_mask+0x30>)
    for (i=0;i<8;i++){
    105a:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
    105c:	f812 1b01 	ldrb.w	r1, [r2], #1
    1060:	4281      	cmp	r1, r0
    1062:	d005      	beq.n	1070 <btn_mask+0x20>
    for (i=0;i<8;i++){
    1064:	3301      	adds	r3, #1
    1066:	2b08      	cmp	r3, #8
    1068:	d1f8      	bne.n	105c <btn_mask+0xc>
    }
    return 255;
    106a:	20ff      	movs	r0, #255	; 0xff
}
    106c:	4770      	bx	lr
    for (i=0;i<8;i++){
    106e:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
    1070:	2001      	movs	r0, #1
    1072:	fa00 f303 	lsl.w	r3, r0, r3
    1076:	b2d8      	uxtb	r0, r3
    1078:	4770      	bx	lr
    107a:	bf00      	nop
    107c:	200006b0 	.word	0x200006b0
    1080:	200006b1 	.word	0x200006b1

00001084 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
    1084:	b430      	push	{r4, r5}
    1086:	4605      	mov	r5, r0
    1088:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
    108a:	2000      	movs	r0, #0
    108c:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<MOSI_PIN);
    108e:	4b19      	ldr	r3, [pc, #100]	; (10f4 <shift_out+0x70>)
        if (byte&mask){
    1090:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
    1092:	68d9      	ldr	r1, [r3, #12]
    1094:	bf14      	ite	ne
    1096:	f441 4180 	orrne.w	r1, r1, #16384	; 0x4000
            GAMEPAD_PORT->ODR&=~(1<<MOSI_PIN);
    109a:	f421 4180 	biceq.w	r1, r1, #16384	; 0x4000
    109e:	60d9      	str	r1, [r3, #12]
        }
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10a0:	68d9      	ldr	r1, [r3, #12]
    10a2:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
    10a6:	60d9      	str	r1, [r3, #12]
        _clk_delay();
    10a8:	bf00      	nop
    10aa:	bf00      	nop
    10ac:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10ae:	68d9      	ldr	r1, [r3, #12]
    10b0:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    10b4:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
    10b6:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&(1<<MISO_PIN)) rx_byte|=128;    
    10b8:	6899      	ldr	r1, [r3, #8]
    10ba:	f411 4f00 	tst.w	r1, #32768	; 0x8000
    10be:	bf1c      	itt	ne
    10c0:	f060 007f 	ornne	r0, r0, #127	; 0x7f
    10c4:	b2c0      	uxtbne	r0, r0
        mask<<=1;
    10c6:	0052      	lsls	r2, r2, #1
    10c8:	b2d2      	uxtb	r2, r2
    while (mask){
    10ca:	3c01      	subs	r4, #1
    10cc:	d1e0      	bne.n	1090 <shift_out+0xc>
    }
    GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
    10ce:	4b09      	ldr	r3, [pc, #36]	; (10f4 <shift_out+0x70>)
    10d0:	68da      	ldr	r2, [r3, #12]
    10d2:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
    10d6:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10d8:	68da      	ldr	r2, [r3, #12]
    10da:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    10de:	60da      	str	r2, [r3, #12]
    _clk_delay();
    10e0:	bf00      	nop
    10e2:	bf00      	nop
    10e4:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10e6:	68da      	ldr	r2, [r3, #12]
    10e8:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    10ec:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    10ee:	bc30      	pop	{r4, r5}
    10f0:	4770      	bx	lr
    10f2:	bf00      	nop
    10f4:	40010c00 	.word	0x40010c00

000010f8 <set_keymap>:
void set_keymap(const uint8_t *kmap){
    10f8:	1e43      	subs	r3, r0, #1
    10fa:	4a04      	ldr	r2, [pc, #16]	; (110c <set_keymap+0x14>)
    10fc:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    10fe:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    1102:	f802 1f01 	strb.w	r1, [r2, #1]!
    1106:	4283      	cmp	r3, r0
    1108:	d1f9      	bne.n	10fe <set_keymap+0x6>
}
    110a:	4770      	bx	lr
    110c:	200006af 	.word	0x200006af

00001110 <gamepad_init>:
void gamepad_init(){
    1110:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,MOSI_PIN,OUTPUT_PP_SLOW);
    1112:	4c09      	ldr	r4, [pc, #36]	; (1138 <gamepad_init+0x28>)
    1114:	2202      	movs	r2, #2
    1116:	210e      	movs	r1, #14
    1118:	4620      	mov	r0, r4
    111a:	f000 fa31 	bl	1580 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    111e:	2202      	movs	r2, #2
    1120:	210d      	movs	r1, #13
    1122:	4620      	mov	r0, r4
    1124:	f000 fa2c 	bl	1580 <config_pin>
    btn_state=0xff;
    1128:	22ff      	movs	r2, #255	; 0xff
    112a:	4b04      	ldr	r3, [pc, #16]	; (113c <gamepad_init+0x2c>)
    112c:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    112e:	4804      	ldr	r0, [pc, #16]	; (1140 <gamepad_init+0x30>)
    1130:	f7ff ffe2 	bl	10f8 <set_keymap>
    1134:	bd10      	pop	{r4, pc}
    1136:	bf00      	nop
    1138:	40010c00 	.word	0x40010c00
    113c:	20002700 	.word	0x20002700
    1140:	00003cc8 	.word	0x00003cc8

00001144 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1144:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    1146:	20fe      	movs	r0, #254	; 0xfe
    1148:	f7ff ff9c 	bl	1084 <shift_out>
    114c:	4b0c      	ldr	r3, [pc, #48]	; (1180 <read_gamepad+0x3c>)
    114e:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1150:	781b      	ldrb	r3, [r3, #0]
    1152:	f013 0f12 	tst.w	r3, #18
    1156:	d111      	bne.n	117c <read_gamepad+0x38>
        while (btn_state!=0xff){
    1158:	4b09      	ldr	r3, [pc, #36]	; (1180 <read_gamepad+0x3c>)
    115a:	781b      	ldrb	r3, [r3, #0]
    115c:	b2db      	uxtb	r3, r3
    115e:	2bff      	cmp	r3, #255	; 0xff
    1160:	d009      	beq.n	1176 <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    1162:	25fe      	movs	r5, #254	; 0xfe
    1164:	4c06      	ldr	r4, [pc, #24]	; (1180 <read_gamepad+0x3c>)
    1166:	4628      	mov	r0, r5
    1168:	f7ff ff8c 	bl	1084 <shift_out>
    116c:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    116e:	7823      	ldrb	r3, [r4, #0]
    1170:	b2db      	uxtb	r3, r3
    1172:	2bff      	cmp	r3, #255	; 0xff
    1174:	d1f7      	bne.n	1166 <read_gamepad+0x22>
        };
        _reset_mcu();
    1176:	4a03      	ldr	r2, [pc, #12]	; (1184 <read_gamepad+0x40>)
    1178:	4b03      	ldr	r3, [pc, #12]	; (1188 <read_gamepad+0x44>)
    117a:	601a      	str	r2, [r3, #0]
    117c:	bd38      	pop	{r3, r4, r5, pc}
    117e:	bf00      	nop
    1180:	20002700 	.word	0x20002700
    1184:	05fa0004 	.word	0x05fa0004
    1188:	e000ed0c 	.word	0xe000ed0c

0000118c <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    118c:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    118e:	f7ff ff5f 	bl	1050 <btn_mask>
    return !(btn_state&mask);
    1192:	4b03      	ldr	r3, [pc, #12]	; (11a0 <btn_query_down+0x14>)
    1194:	781b      	ldrb	r3, [r3, #0]
    1196:	4203      	tst	r3, r0
}
    1198:	bf0c      	ite	eq
    119a:	2001      	moveq	r0, #1
    119c:	2000      	movne	r0, #0
    119e:	bd08      	pop	{r3, pc}
    11a0:	20002700 	.word	0x20002700

000011a4 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    11a4:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11a6:	f7ff ff53 	bl	1050 <btn_mask>
    11aa:	4606      	mov	r6, r0
    int frame_count=0;
    11ac:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    11ae:	4d06      	ldr	r5, [pc, #24]	; (11c8 <btn_wait_down+0x24>)
    11b0:	e000      	b.n	11b4 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11b2:	2400      	movs	r4, #0
        frame_sync();
    11b4:	f002 f920 	bl	33f8 <frame_sync>
        if (!(btn_state&mask)){
    11b8:	782b      	ldrb	r3, [r5, #0]
    11ba:	4233      	tst	r3, r6
    11bc:	d1f9      	bne.n	11b2 <btn_wait_down+0xe>
            frame_count++;
    11be:	3401      	adds	r4, #1
    while (frame_count<3){
    11c0:	2c02      	cmp	r4, #2
    11c2:	ddf7      	ble.n	11b4 <btn_wait_down+0x10>
        }
    }
}
    11c4:	bd70      	pop	{r4, r5, r6, pc}
    11c6:	bf00      	nop
    11c8:	20002700 	.word	0x20002700

000011cc <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    11cc:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11ce:	f7ff ff3f 	bl	1050 <btn_mask>
    11d2:	4606      	mov	r6, r0
    int frame_count=0;
    11d4:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    11d6:	4d06      	ldr	r5, [pc, #24]	; (11f0 <btn_wait_up+0x24>)
    11d8:	e000      	b.n	11dc <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11da:	2400      	movs	r4, #0
        frame_sync();
    11dc:	f002 f90c 	bl	33f8 <frame_sync>
        if ((btn_state&mask)){
    11e0:	782b      	ldrb	r3, [r5, #0]
    11e2:	4233      	tst	r3, r6
    11e4:	d0f9      	beq.n	11da <btn_wait_up+0xe>
            frame_count++;
    11e6:	3401      	adds	r4, #1
    while (frame_count<3){
    11e8:	2c02      	cmp	r4, #2
    11ea:	ddf7      	ble.n	11dc <btn_wait_up+0x10>
        }
    }
}
    11ec:	bd70      	pop	{r4, r5, r6, pc}
    11ee:	bf00      	nop
    11f0:	20002700 	.word	0x20002700

000011f4 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    11f4:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    11f6:	4b15      	ldr	r3, [pc, #84]	; (124c <btn_wait_any+0x58>)
    11f8:	781c      	ldrb	r4, [r3, #0]
    11fa:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    11fc:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    11fe:	461d      	mov	r5, r3
    1200:	e007      	b.n	1212 <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    1202:	782a      	ldrb	r2, [r5, #0]
    1204:	b2d2      	uxtb	r2, r2
    1206:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1208:	bf18      	it	ne
    120a:	3601      	addne	r6, #1
    while (frame_count<3){
    120c:	2e02      	cmp	r6, #2
    120e:	dc0a      	bgt.n	1226 <btn_wait_any+0x32>
    1210:	461c      	mov	r4, r3
        frame_sync();
    1212:	f002 f8f1 	bl	33f8 <frame_sync>
        if (last_state!=btn_state){
    1216:	782b      	ldrb	r3, [r5, #0]
    1218:	b2db      	uxtb	r3, r3
    121a:	42a3      	cmp	r3, r4
    121c:	d0f1      	beq.n	1202 <btn_wait_any+0xe>
            last_state=btn_state;
    121e:	782c      	ldrb	r4, [r5, #0]
    1220:	b2e4      	uxtb	r4, r4
            frame_count=0;
    1222:	2600      	movs	r6, #0
    1224:	e7f5      	b.n	1212 <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    1226:	43e3      	mvns	r3, r4
    mask>>=1;
    1228:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    122c:	b15b      	cbz	r3, 1246 <btn_wait_any+0x52>
    122e:	2200      	movs	r2, #0
    1230:	3201      	adds	r2, #1
    1232:	b2d2      	uxtb	r2, r2
    1234:	085b      	lsrs	r3, r3, #1
    1236:	d1fb      	bne.n	1230 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1238:	4b05      	ldr	r3, [pc, #20]	; (1250 <btn_wait_any+0x5c>)
    123a:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    123c:	4620      	mov	r0, r4
    123e:	f7ff ffc5 	bl	11cc <btn_wait_up>
    return btn;
}
    1242:	4620      	mov	r0, r4
    1244:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    1246:	461a      	mov	r2, r3
    1248:	e7f6      	b.n	1238 <btn_wait_any+0x44>
    124a:	bf00      	nop
    124c:	20002700 	.word	0x20002700
    1250:	200006b0 	.word	0x200006b0

00001254 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1254:	4b01      	ldr	r3, [pc, #4]	; (125c <btn_set_value+0x8>)
    1256:	5419      	strb	r1, [r3, r0]
    1258:	4770      	bx	lr
    125a:	bf00      	nop
    125c:	200006b0 	.word	0x200006b0

00001260 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    1260:	4800      	ldr	r0, [pc, #0]	; (1264 <get_keymap+0x4>)
    1262:	4770      	bx	lr
    1264:	200006b0 	.word	0x200006b0

00001268 <btn_any_down>:

// wait for any button to be down
uint8_t btn_any_down(){
    while (btn_state==0xff);
    1268:	4a0a      	ldr	r2, [pc, #40]	; (1294 <btn_any_down+0x2c>)
    126a:	7813      	ldrb	r3, [r2, #0]
    126c:	b2db      	uxtb	r3, r3
    126e:	2bff      	cmp	r3, #255	; 0xff
    1270:	d0fb      	beq.n	126a <btn_any_down+0x2>
    return buttons[btn_idx(btn_state^0xff)];
    1272:	4b08      	ldr	r3, [pc, #32]	; (1294 <btn_any_down+0x2c>)
    1274:	781a      	ldrb	r2, [r3, #0]
    1276:	43d2      	mvns	r2, r2
    mask>>=1;
    1278:	f3c2 0246 	ubfx	r2, r2, #1, #7
    while(mask){idx++; mask>>=1;}
    127c:	b13a      	cbz	r2, 128e <btn_any_down+0x26>
    127e:	2300      	movs	r3, #0
    1280:	3301      	adds	r3, #1
    1282:	b2db      	uxtb	r3, r3
    1284:	0852      	lsrs	r2, r2, #1
    1286:	d1fb      	bne.n	1280 <btn_any_down+0x18>
    
    1288:	4a03      	ldr	r2, [pc, #12]	; (1298 <btn_any_down+0x30>)
    128a:	5cd0      	ldrb	r0, [r2, r3]
    128c:	4770      	bx	lr
    uint8_t idx=0;
    128e:	4613      	mov	r3, r2
    1290:	e7fa      	b.n	1288 <btn_any_down+0x20>
    1292:	bf00      	nop
    1294:	20002700 	.word	0x20002700
    1298:	200006b0 	.word	0x200006b0

0000129c <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    129c:	4b06      	ldr	r3, [pc, #24]	; (12b8 <games_count+0x1c>)
    129e:	691b      	ldr	r3, [r3, #16]
    12a0:	b13b      	cbz	r3, 12b2 <games_count+0x16>
    12a2:	4b05      	ldr	r3, [pc, #20]	; (12b8 <games_count+0x1c>)
    12a4:	2000      	movs	r0, #0
    for (i=0;;i++){
    12a6:	3001      	adds	r0, #1
    12a8:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    12aa:	691a      	ldr	r2, [r3, #16]
    12ac:	2a00      	cmp	r2, #0
    12ae:	d1fa      	bne.n	12a6 <games_count+0xa>
    12b0:	4770      	bx	lr
    for (i=0;;i++){
    12b2:	2000      	movs	r0, #0
    }
    return i;
}
    12b4:	4770      	bx	lr
    12b6:	bf00      	nop
    12b8:	20000004 	.word	0x20000004

000012bc <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    12bc:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    12be:	7803      	ldrb	r3, [r0, #0]
    12c0:	b1fb      	cbz	r3, 1302 <strcmp+0x46>
    12c2:	780a      	ldrb	r2, [r1, #0]
    12c4:	b17a      	cbz	r2, 12e6 <strcmp+0x2a>
		if (*s1<*s2){
    12c6:	4293      	cmp	r3, r2
    12c8:	d313      	bcc.n	12f2 <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    12ca:	d815      	bhi.n	12f8 <strcmp+0x3c>
    12cc:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    12ce:	4621      	mov	r1, r4
	while (*s1 && *s2){
    12d0:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    12d4:	b1ab      	cbz	r3, 1302 <strcmp+0x46>
    12d6:	f814 2b01 	ldrb.w	r2, [r4], #1
    12da:	b122      	cbz	r2, 12e6 <strcmp+0x2a>
		if (*s1<*s2){
    12dc:	4293      	cmp	r3, r2
    12de:	d30d      	bcc.n	12fc <strcmp+0x40>
		}else if (*s1>*s2){
    12e0:	d9f5      	bls.n	12ce <strcmp+0x12>
			result=1;
    12e2:	2001      	movs	r0, #1
    12e4:	e003      	b.n	12ee <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    12e6:	7808      	ldrb	r0, [r1, #0]
    12e8:	fab0 f080 	clz	r0, r0
    12ec:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    12ee:	bc10      	pop	{r4}
    12f0:	4770      	bx	lr
			result=-1;
    12f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    12f6:	e7fa      	b.n	12ee <strcmp+0x32>
			result=1;
    12f8:	2001      	movs	r0, #1
    12fa:	e7f8      	b.n	12ee <strcmp+0x32>
			result=-1;
    12fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1300:	e7f5      	b.n	12ee <strcmp+0x32>
		if (!*s1 && *s2){
    1302:	7808      	ldrb	r0, [r1, #0]
    1304:	3000      	adds	r0, #0
    1306:	bf18      	it	ne
    1308:	2001      	movne	r0, #1
    130a:	4240      	negs	r0, r0
    130c:	e7ef      	b.n	12ee <strcmp+0x32>

0000130e <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    130e:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    1312:	b2db      	uxtb	r3, r3
    1314:	2b19      	cmp	r3, #25
    1316:	d906      	bls.n	1326 <alpha+0x18>
    1318:	3841      	subs	r0, #65	; 0x41
    131a:	b2c0      	uxtb	r0, r0
    131c:	2819      	cmp	r0, #25
    131e:	bf8c      	ite	hi
    1320:	2000      	movhi	r0, #0
    1322:	2001      	movls	r0, #1
    1324:	4770      	bx	lr
    1326:	2001      	movs	r0, #1
}
    1328:	4770      	bx	lr

0000132a <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    132a:	3830      	subs	r0, #48	; 0x30
    132c:	b2c0      	uxtb	r0, r0
}
    132e:	2809      	cmp	r0, #9
    1330:	bf8c      	ite	hi
    1332:	2000      	movhi	r0, #0
    1334:	2001      	movls	r0, #1
    1336:	4770      	bx	lr

00001338 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1338:	2860      	cmp	r0, #96	; 0x60
    133a:	bf84      	itt	hi
    133c:	3820      	subhi	r0, #32
    133e:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1340:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1344:	b2db      	uxtb	r3, r3
    1346:	2b09      	cmp	r3, #9
    1348:	d906      	bls.n	1358 <hexdigit+0x20>
    134a:	3841      	subs	r0, #65	; 0x41
    134c:	b2c0      	uxtb	r0, r0
    134e:	2805      	cmp	r0, #5
    1350:	bf8c      	ite	hi
    1352:	2000      	movhi	r0, #0
    1354:	2001      	movls	r0, #1
    1356:	4770      	bx	lr
    1358:	2001      	movs	r0, #1
}
    135a:	4770      	bx	lr

0000135c <atoi>:

int atoi(const char *str){
    135c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1360:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1362:	7803      	ldrb	r3, [r0, #0]
    1364:	2b20      	cmp	r3, #32
    1366:	d103      	bne.n	1370 <atoi+0x14>
    1368:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    136c:	2b20      	cmp	r3, #32
    136e:	d0fb      	beq.n	1368 <atoi+0xc>
	if (*str=='-'){
    1370:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    1372:	bf06      	itte	eq
    1374:	3501      	addeq	r5, #1
		sign=-1;
    1376:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    137a:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    137e:	782b      	ldrb	r3, [r5, #0]
    1380:	2b24      	cmp	r3, #36	; 0x24
    1382:	d005      	beq.n	1390 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1384:	2b30      	cmp	r3, #48	; 0x30
    1386:	d00a      	beq.n	139e <atoi+0x42>
	int n=0,sign=1,base=10;
    1388:	270a      	movs	r7, #10
    138a:	3d01      	subs	r5, #1
    138c:	2600      	movs	r6, #0
    138e:	e026      	b.n	13de <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    1390:	7868      	ldrb	r0, [r5, #1]
    1392:	f7ff ffd1 	bl	1338 <hexdigit>
    1396:	b160      	cbz	r0, 13b2 <atoi+0x56>
		str++;
    1398:	3501      	adds	r5, #1
		base=16;
    139a:	2710      	movs	r7, #16
		str++;
    139c:	e7f5      	b.n	138a <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    139e:	786b      	ldrb	r3, [r5, #1]
    13a0:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    13a4:	2b58      	cmp	r3, #88	; 0x58
    13a6:	d001      	beq.n	13ac <atoi+0x50>
	int n=0,sign=1,base=10;
    13a8:	270a      	movs	r7, #10
    13aa:	e7ee      	b.n	138a <atoi+0x2e>
		base=16;
		str+=2;
    13ac:	3502      	adds	r5, #2
		base=16;
    13ae:	2710      	movs	r7, #16
    13b0:	e7eb      	b.n	138a <atoi+0x2e>
	int n=0,sign=1,base=10;
    13b2:	270a      	movs	r7, #10
    13b4:	e7e9      	b.n	138a <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13b6:	4620      	mov	r0, r4
    13b8:	f7ff ffbe 	bl	1338 <hexdigit>
    13bc:	3000      	adds	r0, #0
    13be:	bf18      	it	ne
    13c0:	2001      	movne	r0, #1
    13c2:	b1d0      	cbz	r0, 13fa <atoi+0x9e>
		if (c>='a'){c-=32;}
    13c4:	2c60      	cmp	r4, #96	; 0x60
    13c6:	bf84      	itt	hi
    13c8:	3c20      	subhi	r4, #32
    13ca:	b2e4      	uxtbhi	r4, r4
		c-='0';
    13cc:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    13d0:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    13d2:	2b09      	cmp	r3, #9
    13d4:	bf84      	itt	hi
    13d6:	3c37      	subhi	r4, #55	; 0x37
    13d8:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    13da:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13de:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    13e2:	2c00      	cmp	r4, #0
    13e4:	d0e7      	beq.n	13b6 <atoi+0x5a>
    13e6:	2f0a      	cmp	r7, #10
    13e8:	d1e5      	bne.n	13b6 <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    13ea:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    13ee:	b2c0      	uxtb	r0, r0
    13f0:	2809      	cmp	r0, #9
    13f2:	bf8c      	ite	hi
    13f4:	2000      	movhi	r0, #0
    13f6:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13f8:	e7e3      	b.n	13c2 <atoi+0x66>
		str++;
	}
	return sign*n;
}
    13fa:	fb08 f006 	mul.w	r0, r8, r6
    13fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001402 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    1402:	b13a      	cbz	r2, 1414 <move+0x12>
    1404:	3901      	subs	r1, #1
    1406:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1408:	f810 3b01 	ldrb.w	r3, [r0], #1
    140c:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1410:	4290      	cmp	r0, r2
    1412:	d1f9      	bne.n	1408 <move+0x6>
    1414:	4770      	bx	lr

00001416 <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    1416:	7803      	ldrb	r3, [r0, #0]
    1418:	b13b      	cbz	r3, 142a <strlen+0x14>
    141a:	4603      	mov	r3, r0
    141c:	2000      	movs	r0, #0
    141e:	3001      	adds	r0, #1
    1420:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1424:	2a00      	cmp	r2, #0
    1426:	d1fa      	bne.n	141e <strlen+0x8>
    1428:	4770      	bx	lr
	int ll=0;
    142a:	2000      	movs	r0, #0
	return ll;
}
    142c:	4770      	bx	lr

0000142e <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    142e:	b121      	cbz	r1, 143a <fill+0xc>
    1430:	1841      	adds	r1, r0, r1
    1432:	f800 2b01 	strb.w	r2, [r0], #1
    1436:	4288      	cmp	r0, r1
    1438:	d1fb      	bne.n	1432 <fill+0x4>
    143a:	4770      	bx	lr

0000143c <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    143c:	3861      	subs	r0, #97	; 0x61
    143e:	b2c0      	uxtb	r0, r0
}
    1440:	2819      	cmp	r0, #25
    1442:	bf8c      	ite	hi
    1444:	2000      	movhi	r0, #0
    1446:	2001      	movls	r0, #1
    1448:	4770      	bx	lr

0000144a <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    144a:	3841      	subs	r0, #65	; 0x41
    144c:	b2c0      	uxtb	r0, r0
}
    144e:	2819      	cmp	r0, #25
    1450:	bf8c      	ite	hi
    1452:	2000      	movhi	r0, #0
    1454:	2001      	movls	r0, #1
    1456:	4770      	bx	lr

00001458 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1458:	7803      	ldrb	r3, [r0, #0]
    145a:	b153      	cbz	r3, 1472 <uppercase+0x1a>
	return (c>='a') && (c<='z');
    145c:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1460:	b2d2      	uxtb	r2, r2
    1462:	2a19      	cmp	r2, #25
    1464:	bf9c      	itt	ls
    1466:	3b20      	subls	r3, #32
    1468:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    146a:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    146e:	2b00      	cmp	r3, #0
    1470:	d1f4      	bne.n	145c <uppercase+0x4>
    1472:	4770      	bx	lr

00001474 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1474:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    1476:	1844      	adds	r4, r0, r1
    1478:	5c43      	ldrb	r3, [r0, r1]
    147a:	b153      	cbz	r3, 1492 <scan+0x1e>
    147c:	429a      	cmp	r2, r3
    147e:	d00a      	beq.n	1496 <scan+0x22>
    1480:	4608      	mov	r0, r1
    1482:	3001      	adds	r0, #1
    1484:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    1488:	b10b      	cbz	r3, 148e <scan+0x1a>
    148a:	4293      	cmp	r3, r2
    148c:	d1f9      	bne.n	1482 <scan+0xe>
	return start;
}
    148e:	bc10      	pop	{r4}
    1490:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    1492:	4608      	mov	r0, r1
    1494:	e7fb      	b.n	148e <scan+0x1a>
    1496:	4608      	mov	r0, r1
	return start;
    1498:	e7f9      	b.n	148e <scan+0x1a>

0000149a <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    149a:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    149c:	1844      	adds	r4, r0, r1
    149e:	5c43      	ldrb	r3, [r0, r1]
    14a0:	b153      	cbz	r3, 14b8 <skip+0x1e>
    14a2:	429a      	cmp	r2, r3
    14a4:	d10a      	bne.n	14bc <skip+0x22>
    14a6:	4608      	mov	r0, r1
    14a8:	3001      	adds	r0, #1
    14aa:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14ae:	b10b      	cbz	r3, 14b4 <skip+0x1a>
    14b0:	4293      	cmp	r3, r2
    14b2:	d0f9      	beq.n	14a8 <skip+0xe>
	return start;
}
    14b4:	bc10      	pop	{r4}
    14b6:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    14b8:	4608      	mov	r0, r1
    14ba:	e7fb      	b.n	14b4 <skip+0x1a>
    14bc:	4608      	mov	r0, r1
	return start;
    14be:	e7f9      	b.n	14b4 <skip+0x1a>

000014c0 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    14c0:	b538      	push	{r3, r4, r5, lr}
    14c2:	4604      	mov	r4, r0
    14c4:	460d      	mov	r5, r1
	s1+=strlen(s1);
    14c6:	f7ff ffa6 	bl	1416 <strlen>
    14ca:	4420      	add	r0, r4
	while (*s2){
    14cc:	782b      	ldrb	r3, [r5, #0]
    14ce:	b133      	cbz	r3, 14de <strcat+0x1e>
    14d0:	4629      	mov	r1, r5
		*s1++=*s2++;
    14d2:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    14d6:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    14da:	2b00      	cmp	r3, #0
    14dc:	d1f9      	bne.n	14d2 <strcat+0x12>
	}
	*s1=0;
    14de:	2300      	movs	r3, #0
    14e0:	7003      	strb	r3, [r0, #0]
	return s1;
}
    14e2:	bd38      	pop	{r3, r4, r5, pc}

000014e4 <itoa>:

char *itoa(int n,char *buffer,int base){
    14e4:	b5f0      	push	{r4, r5, r6, r7, lr}
    14e6:	b085      	sub	sp, #20
    14e8:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    14ea:	2a0a      	cmp	r2, #10
    14ec:	d033      	beq.n	1556 <itoa+0x72>
	int i=14,sign=0;
    14ee:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    14f0:	2300      	movs	r3, #0
    14f2:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    14f6:	2320      	movs	r3, #32
    14f8:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    14fc:	b390      	cbz	r0, 1564 <itoa+0x80>
    14fe:	f10d 060d 	add.w	r6, sp, #13
    1502:	250e      	movs	r5, #14
		d=n%base+'0';
    1504:	fb90 f3f2 	sdiv	r3, r0, r2
    1508:	fb02 0313 	mls	r3, r2, r3, r0
    150c:	b2db      	uxtb	r3, r3
    150e:	f103 0130 	add.w	r1, r3, #48	; 0x30
    1512:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1514:	2939      	cmp	r1, #57	; 0x39
    1516:	bf84      	itt	hi
    1518:	3337      	addhi	r3, #55	; 0x37
    151a:	b2d9      	uxtbhi	r1, r3
		n/=base;
    151c:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1520:	3d01      	subs	r5, #1
    1522:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    1526:	2800      	cmp	r0, #0
    1528:	d1ec      	bne.n	1504 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    152a:	2d0e      	cmp	r5, #14
    152c:	d01a      	beq.n	1564 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    152e:	2a0a      	cmp	r2, #10
    1530:	d01d      	beq.n	156e <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    1532:	2a10      	cmp	r2, #16
    1534:	d105      	bne.n	1542 <itoa+0x5e>
    1536:	3d01      	subs	r5, #1
    1538:	ab04      	add	r3, sp, #16
    153a:	442b      	add	r3, r5
    153c:	2224      	movs	r2, #36	; 0x24
    153e:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    1542:	f1c5 0210 	rsb	r2, r5, #16
    1546:	4621      	mov	r1, r4
    1548:	eb0d 0005 	add.w	r0, sp, r5
    154c:	f7ff ff59 	bl	1402 <move>
	return buffer;
    1550:	4620      	mov	r0, r4
    1552:	b005      	add	sp, #20
    1554:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    1556:	2800      	cmp	r0, #0
    1558:	db01      	blt.n	155e <itoa+0x7a>
	int i=14,sign=0;
    155a:	2700      	movs	r7, #0
    155c:	e7c8      	b.n	14f0 <itoa+0xc>
		n=-n;
    155e:	4240      	negs	r0, r0
		sign=1;
    1560:	2701      	movs	r7, #1
    1562:	e7c5      	b.n	14f0 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1564:	2330      	movs	r3, #48	; 0x30
    1566:	f88d 300d 	strb.w	r3, [sp, #13]
    156a:	250d      	movs	r5, #13
    156c:	e7df      	b.n	152e <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    156e:	2f00      	cmp	r7, #0
    1570:	d0e7      	beq.n	1542 <itoa+0x5e>
    1572:	3d01      	subs	r5, #1
    1574:	ab04      	add	r3, sp, #16
    1576:	442b      	add	r3, r5
    1578:	222d      	movs	r2, #45	; 0x2d
    157a:	f803 2c10 	strb.w	r2, [r3, #-16]
    157e:	e7e0      	b.n	1542 <itoa+0x5e>

00001580 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    1580:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    1582:	08cb      	lsrs	r3, r1, #3
    1584:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    1588:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    158a:	f001 011c 	and.w	r1, r1, #28
    158e:	250f      	movs	r5, #15
    1590:	408d      	lsls	r5, r1
    1592:	ea24 0405 	bic.w	r4, r4, r5
    1596:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    159a:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    159e:	fa02 f101 	lsl.w	r1, r2, r1
    15a2:	4321      	orrs	r1, r4
    15a4:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    15a8:	bc30      	pop	{r4, r5}
    15aa:	4770      	bx	lr

000015ac <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    15ac:	6880      	ldr	r0, [r0, #8]
    15ae:	2301      	movs	r3, #1
    15b0:	fa03 f101 	lsl.w	r1, r3, r1
}
    15b4:	4008      	ands	r0, r1
    15b6:	4770      	bx	lr

000015b8 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15b8:	b93a      	cbnz	r2, 15ca <write_pin+0x12>
    15ba:	68c3      	ldr	r3, [r0, #12]
    15bc:	2201      	movs	r2, #1
    15be:	fa02 f101 	lsl.w	r1, r2, r1
    15c2:	ea23 0101 	bic.w	r1, r3, r1
    15c6:	60c1      	str	r1, [r0, #12]
    15c8:	4770      	bx	lr
    15ca:	68c2      	ldr	r2, [r0, #12]
    15cc:	2301      	movs	r3, #1
    15ce:	fa03 f101 	lsl.w	r1, r3, r1
    15d2:	4311      	orrs	r1, r2
    15d4:	60c1      	str	r1, [r0, #12]
    15d6:	4770      	bx	lr

000015d8 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    15d8:	68c2      	ldr	r2, [r0, #12]
    15da:	2301      	movs	r3, #1
    15dc:	fa03 f101 	lsl.w	r1, r3, r1
    15e0:	4051      	eors	r1, r2
    15e2:	60c1      	str	r1, [r0, #12]
    15e4:	4770      	bx	lr
	...

000015e8 <set_palette>:
static uint8_t palette[4]={0,15,3,5};

const uint8_t DEFAULT_PALETTE[4]={0,15,3,5};

void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    15e8:	4b04      	ldr	r3, [pc, #16]	; (15fc <set_palette+0x14>)
    15ea:	7802      	ldrb	r2, [r0, #0]
    15ec:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    15ee:	7842      	ldrb	r2, [r0, #1]
    15f0:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    15f2:	7882      	ldrb	r2, [r0, #2]
    15f4:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    15f6:	78c2      	ldrb	r2, [r0, #3]
    15f8:	70da      	strb	r2, [r3, #3]
    15fa:	4770      	bx	lr
    15fc:	200001c4 	.word	0x200001c4

00001600 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    1600:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1602:	4604      	mov	r4, r0
    1604:	460e      	mov	r6, r1
    1606:	4615      	mov	r5, r2
    1608:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    160a:	f001 ff2f 	bl	346c <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    160e:	2c00      	cmp	r4, #0
    1610:	db38      	blt.n	1684 <gfx_blit+0x84>
    1612:	8983      	ldrh	r3, [r0, #12]
    1614:	429c      	cmp	r4, r3
    1616:	da37      	bge.n	1688 <gfx_blit+0x88>
    1618:	2e00      	cmp	r6, #0
    161a:	db37      	blt.n	168c <gfx_blit+0x8c>
    161c:	89c3      	ldrh	r3, [r0, #14]
    161e:	429e      	cmp	r6, r3
    1620:	da36      	bge.n	1690 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    1622:	7a03      	ldrb	r3, [r0, #8]
    1624:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1628:	1052      	asrs	r2, r2, #1
    162a:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    162e:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    1632:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    1636:	bf06      	itte	eq
    1638:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    163a:	220f      	moveq	r2, #15
    mask=0xf0;
    163c:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    163e:	4b15      	ldr	r3, [pc, #84]	; (1694 <gfx_blit+0x94>)
    1640:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    1642:	2f04      	cmp	r7, #4
    1644:	d805      	bhi.n	1652 <gfx_blit+0x52>
    1646:	e8df f007 	tbb	[pc, r7]
    164a:	1003      	.short	0x1003
    164c:	1412      	.short	0x1412
    164e:	18          	.byte	0x18
    164f:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1650:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    1652:	4910      	ldr	r1, [pc, #64]	; (1694 <gfx_blit+0x94>)
    1654:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    1656:	ea23 0302 	bic.w	r3, r3, r2
    165a:	fab0 f080 	clz	r0, r0
    165e:	0940      	lsrs	r0, r0, #5
    1660:	4283      	cmp	r3, r0
    1662:	bf14      	ite	ne
    1664:	2000      	movne	r0, #0
    1666:	2001      	moveq	r0, #1
    1668:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    166a:	4003      	ands	r3, r0
        break;
    166c:	e7f1      	b.n	1652 <gfx_blit+0x52>
        byte^=color;
    166e:	4043      	eors	r3, r0
        break;
    1670:	e7ef      	b.n	1652 <gfx_blit+0x52>
        byte^=~mask;
    1672:	43d4      	mvns	r4, r2
    1674:	405c      	eors	r4, r3
    1676:	b2e3      	uxtb	r3, r4
        break;
    1678:	e7eb      	b.n	1652 <gfx_blit+0x52>
        byte &=mask;
    167a:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    167e:	ea40 0304 	orr.w	r3, r0, r4
        break;
    1682:	e7e6      	b.n	1652 <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1684:	2000      	movs	r0, #0
    1686:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1688:	2000      	movs	r0, #0
    168a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    168c:	2000      	movs	r0, #0
    168e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1690:	2000      	movs	r0, #0
}
    1692:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1694:	20002730 	.word	0x20002730

00001698 <gfx_cls>:
    }
    video_buffer[idx]=byte;
}
*/

void gfx_cls(){
    1698:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    169a:	f001 fee7 	bl	346c <get_video_params>
    169e:	4b06      	ldr	r3, [pc, #24]	; (16b8 <gfx_cls+0x20>)
    16a0:	4906      	ldr	r1, [pc, #24]	; (16bc <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    16a2:	2200      	movs	r2, #0
    16a4:	f803 2f01 	strb.w	r2, [r3, #1]!
    16a8:	428b      	cmp	r3, r1
    16aa:	d1fb      	bne.n	16a4 <gfx_cls+0xc>
    set_cursor(0,0);
    16ac:	2100      	movs	r1, #0
    16ae:	4608      	mov	r0, r1
    16b0:	f001 fbe6 	bl	2e80 <set_cursor>
    16b4:	bd08      	pop	{r3, pc}
    16b6:	bf00      	nop
    16b8:	2000272f 	.word	0x2000272f
    16bc:	20004e8f 	.word	0x20004e8f

000016c0 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    16c0:	b570      	push	{r4, r5, r6, lr}
    16c2:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    16c4:	f001 fed2 	bl	346c <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    16c8:	7a06      	ldrb	r6, [r0, #8]
    16ca:	4b0f      	ldr	r3, [pc, #60]	; (1708 <gfx_scroll_up+0x48>)
    16cc:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    16d0:	89c2      	ldrh	r2, [r0, #14]
    16d2:	1b12      	subs	r2, r2, r4
    16d4:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    16d8:	b1a6      	cbz	r6, 1704 <gfx_scroll_up+0x44>
    16da:	4a0b      	ldr	r2, [pc, #44]	; (1708 <gfx_scroll_up+0x48>)
    16dc:	199d      	adds	r5, r3, r6
    16de:	f813 1b01 	ldrb.w	r1, [r3], #1
    16e2:	f802 1b01 	strb.w	r1, [r2], #1
    16e6:	42ab      	cmp	r3, r5
    16e8:	d1f9      	bne.n	16de <gfx_scroll_up+0x1e>
    16ea:	4b07      	ldr	r3, [pc, #28]	; (1708 <gfx_scroll_up+0x48>)
    16ec:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    16ee:	7a02      	ldrb	r2, [r0, #8]
    16f0:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    16f4:	b12a      	cbz	r2, 1702 <gfx_scroll_up+0x42>
    16f6:	441a      	add	r2, r3
    16f8:	2100      	movs	r1, #0
    16fa:	f803 1b01 	strb.w	r1, [r3], #1
    16fe:	4293      	cmp	r3, r2
    1700:	d1fb      	bne.n	16fa <gfx_scroll_up+0x3a>
    1702:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1704:	4b00      	ldr	r3, [pc, #0]	; (1708 <gfx_scroll_up+0x48>)
    1706:	e7f2      	b.n	16ee <gfx_scroll_up+0x2e>
    1708:	20002730 	.word	0x20002730

0000170c <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    170c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    170e:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1710:	f001 feac 	bl	346c <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1714:	89c3      	ldrh	r3, [r0, #14]
    1716:	7a04      	ldrb	r4, [r0, #8]
    1718:	1b5f      	subs	r7, r3, r5
    171a:	fb04 f707 	mul.w	r7, r4, r7
    171e:	490c      	ldr	r1, [pc, #48]	; (1750 <gfx_scroll_down+0x44>)
    1720:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    1722:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    1726:	b147      	cbz	r7, 173a <gfx_scroll_down+0x2e>
    1728:	4619      	mov	r1, r3
    172a:	4e09      	ldr	r6, [pc, #36]	; (1750 <gfx_scroll_down+0x44>)
    172c:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1730:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1734:	42b2      	cmp	r2, r6
    1736:	d1f9      	bne.n	172c <gfx_scroll_down+0x20>
    1738:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    173a:	7a02      	ldrb	r2, [r0, #8]
    173c:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    1740:	b12a      	cbz	r2, 174e <gfx_scroll_down+0x42>
    1742:	1a9a      	subs	r2, r3, r2
    1744:	2100      	movs	r1, #0
    1746:	f803 1d01 	strb.w	r1, [r3, #-1]!
    174a:	4293      	cmp	r3, r2
    174c:	d1fb      	bne.n	1746 <gfx_scroll_down+0x3a>
    174e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1750:	20002730 	.word	0x20002730

00001754 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    1754:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1758:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    175a:	f001 fe87 	bl	346c <get_video_params>
    for (y=0;y<vparams->vres;y++){
    175e:	89c3      	ldrh	r3, [r0, #14]
    1760:	b30b      	cbz	r3, 17a6 <gfx_scroll_left+0x52>
    1762:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    1766:	f8df 8044 	ldr.w	r8, [pc, #68]	; 17ac <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    176a:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    176c:	7a03      	ldrb	r3, [r0, #8]
    176e:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    1772:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    1774:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    1776:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    177a:	d009      	beq.n	1790 <gfx_scroll_left+0x3c>
    177c:	1e59      	subs	r1, r3, #1
    177e:	eb02 050e 	add.w	r5, r2, lr
    1782:	f812 4b01 	ldrb.w	r4, [r2], #1
    1786:	f801 4f01 	strb.w	r4, [r1, #1]!
    178a:	4295      	cmp	r5, r2
    178c:	d1f9      	bne.n	1782 <gfx_scroll_left+0x2e>
    178e:	4473      	add	r3, lr
        while (size--) *dest++=0;
    1790:	b126      	cbz	r6, 179c <gfx_scroll_left+0x48>
    1792:	199a      	adds	r2, r3, r6
    1794:	f803 7b01 	strb.w	r7, [r3], #1
    1798:	4293      	cmp	r3, r2
    179a:	d1fb      	bne.n	1794 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    179c:	f10c 0c01 	add.w	ip, ip, #1
    17a0:	89c3      	ldrh	r3, [r0, #14]
    17a2:	4563      	cmp	r3, ip
    17a4:	dce2      	bgt.n	176c <gfx_scroll_left+0x18>
    17a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    17aa:	bf00      	nop
    17ac:	20002730 	.word	0x20002730

000017b0 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    17b0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    17b4:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    17b6:	f001 fe59 	bl	346c <get_video_params>
    for (y=0;y<vparams->vres;y++){
    17ba:	89c3      	ldrh	r3, [r0, #14]
    17bc:	b33b      	cbz	r3, 180e <gfx_scroll_right+0x5e>
    17be:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    17c2:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1814 <gfx_scroll_right+0x64>
        src=dest-n;
    17c6:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    17ca:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    17cc:	7a03      	ldrb	r3, [r0, #8]
    17ce:	fb0e 3303 	mla	r3, lr, r3, r3
    17d2:	4443      	add	r3, r8
        src=dest-n;
    17d4:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    17d8:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    17da:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    17de:	d00a      	beq.n	17f6 <gfx_scroll_right+0x46>
    17e0:	4619      	mov	r1, r3
    17e2:	eba2 0609 	sub.w	r6, r2, r9
    17e6:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    17ea:	f801 4d01 	strb.w	r4, [r1, #-1]!
    17ee:	42b2      	cmp	r2, r6
    17f0:	d1f9      	bne.n	17e6 <gfx_scroll_right+0x36>
    17f2:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    17f6:	b12d      	cbz	r5, 1804 <gfx_scroll_right+0x54>
    17f8:	eb03 020c 	add.w	r2, r3, ip
    17fc:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1800:	429a      	cmp	r2, r3
    1802:	d1fb      	bne.n	17fc <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1804:	f10e 0e01 	add.w	lr, lr, #1
    1808:	89c3      	ldrh	r3, [r0, #14]
    180a:	4573      	cmp	r3, lr
    180c:	dcde      	bgt.n	17cc <gfx_scroll_right+0x1c>
    180e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1812:	bf00      	nop
    1814:	20002730 	.word	0x20002730

00001818 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1818:	b538      	push	{r3, r4, r5, lr}
    181a:	4604      	mov	r4, r0
    181c:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    181e:	f001 fe25 	bl	346c <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1822:	2c00      	cmp	r4, #0
    1824:	db18      	blt.n	1858 <gfx_get_pixel+0x40>
    1826:	8983      	ldrh	r3, [r0, #12]
    1828:	429c      	cmp	r4, r3
    182a:	db01      	blt.n	1830 <gfx_get_pixel+0x18>
    182c:	20ff      	movs	r0, #255	; 0xff
    182e:	bd38      	pop	{r3, r4, r5, pc}
    1830:	2d00      	cmp	r5, #0
    1832:	db13      	blt.n	185c <gfx_get_pixel+0x44>
    1834:	89c3      	ldrh	r3, [r0, #14]
    1836:	429d      	cmp	r5, r3
    1838:	db01      	blt.n	183e <gfx_get_pixel+0x26>
    183a:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    183c:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    183e:	7a03      	ldrb	r3, [r0, #8]
    1840:	1062      	asrs	r2, r4, #1
    1842:	4907      	ldr	r1, [pc, #28]	; (1860 <gfx_get_pixel+0x48>)
    1844:	fb05 1503 	mla	r5, r5, r3, r1
    1848:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    184a:	f014 0f01 	tst.w	r4, #1
    184e:	bf08      	it	eq
    1850:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    1852:	f000 000f 	and.w	r0, r0, #15
    1856:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1858:	20ff      	movs	r0, #255	; 0xff
    185a:	bd38      	pop	{r3, r4, r5, pc}
    185c:	20ff      	movs	r0, #255	; 0xff
    185e:	bd38      	pop	{r3, r4, r5, pc}
    1860:	20002730 	.word	0x20002730

00001864 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    1864:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1868:	b085      	sub	sp, #20
    186a:	9001      	str	r0, [sp, #4]
    186c:	460e      	mov	r6, r1
    186e:	9100      	str	r1, [sp, #0]
    1870:	9203      	str	r2, [sp, #12]
    1872:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    
    shift=bit_shift[sprite_bpp];
    1874:	4a26      	ldr	r2, [pc, #152]	; (1910 <gfx_sprite+0xac>)
    1876:	7911      	ldrb	r1, [r2, #4]
    1878:	4a26      	ldr	r2, [pc, #152]	; (1914 <gfx_sprite+0xb0>)
    187a:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    187e:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    1880:	440a      	add	r2, r1
    1882:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    1884:	4433      	add	r3, r6
    1886:	9302      	str	r3, [sp, #8]
    1888:	429e      	cmp	r6, r3
    int collision=0;
    188a:	bfa8      	it	ge
    188c:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    188e:	da3a      	bge.n	1906 <gfx_sprite+0xa2>
    1890:	f100 0901 	add.w	r9, r0, #1
    1894:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    1896:	f8df 8078 	ldr.w	r8, [pc, #120]	; 1910 <gfx_sprite+0xac>
    189a:	e02b      	b.n	18f4 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    189c:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    18a0:	f898 3004 	ldrb.w	r3, [r8, #4]
    18a4:	4a1b      	ldr	r2, [pc, #108]	; (1914 <gfx_sprite+0xb0>)
    18a6:	4413      	add	r3, r2
    18a8:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    18aa:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    18ae:	3601      	adds	r6, #1
    18b0:	4556      	cmp	r6, sl
    18b2:	d019      	beq.n	18e8 <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    18b4:	f898 3004 	ldrb.w	r3, [r8, #4]
    18b8:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    18ba:	bf99      	ittee	ls
    18bc:	fa45 f30b 	asrls.w	r3, r5, fp
    18c0:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    18c4:	fa45 f20b 	asrhi.w	r2, r5, fp
    18c8:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    18ca:	2302      	movs	r3, #2
    18cc:	9900      	ldr	r1, [sp, #0]
    18ce:	4630      	mov	r0, r6
    18d0:	f7ff fe96 	bl	1600 <gfx_blit>
    18d4:	4307      	orrs	r7, r0
            ppb--;
    18d6:	3c01      	subs	r4, #1
            if (!ppb){
    18d8:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    18dc:	d0de      	beq.n	189c <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    18de:	f1cb 0308 	rsb	r3, fp, #8
    18e2:	409d      	lsls	r5, r3
    18e4:	b2ed      	uxtb	r5, r5
    18e6:	e7e2      	b.n	18ae <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    18e8:	9b00      	ldr	r3, [sp, #0]
    18ea:	3301      	adds	r3, #1
    18ec:	9300      	str	r3, [sp, #0]
    18ee:	9a02      	ldr	r2, [sp, #8]
    18f0:	4293      	cmp	r3, r2
    18f2:	d008      	beq.n	1906 <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    18f4:	9b03      	ldr	r3, [sp, #12]
    18f6:	4619      	mov	r1, r3
    18f8:	9a01      	ldr	r2, [sp, #4]
    18fa:	eb01 0a02 	add.w	sl, r1, r2
    18fe:	4552      	cmp	r2, sl
    1900:	daf2      	bge.n	18e8 <gfx_sprite+0x84>
    1902:	9e01      	ldr	r6, [sp, #4]
    1904:	e7d6      	b.n	18b4 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    return collision;
}
    1906:	4638      	mov	r0, r7
    1908:	b005      	add	sp, #20
    190a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    190e:	bf00      	nop
    1910:	200001c4 	.word	0x200001c4
    1914:	00003cd0 	.word	0x00003cd0

00001918 <draw_balls>:

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

static const uint8_t pal2[4]={0,9,2,10};
static void draw_balls(){
    1918:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    191c:	b082      	sub	sp, #8
	int i;
	frame_sync();
    191e:	f001 fd6b 	bl	33f8 <frame_sync>
    1922:	4c14      	ldr	r4, [pc, #80]	; (1974 <draw_balls+0x5c>)
    1924:	2501      	movs	r5, #1
	for (i=0;i<BALL_COUNT;i++){
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    1926:	4f14      	ldr	r7, [pc, #80]	; (1978 <draw_balls+0x60>)
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1928:	2608      	movs	r6, #8
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    192a:	f8df 8050 	ldr.w	r8, [pc, #80]	; 197c <draw_balls+0x64>
    192e:	e00c      	b.n	194a <draw_balls+0x32>
    1930:	4640      	mov	r0, r8
    1932:	f7ff fe59 	bl	15e8 <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1936:	6923      	ldr	r3, [r4, #16]
    1938:	9300      	str	r3, [sp, #0]
    193a:	4633      	mov	r3, r6
    193c:	4632      	mov	r2, r6
    193e:	6861      	ldr	r1, [r4, #4]
    1940:	6820      	ldr	r0, [r4, #0]
    1942:	f7ff ff8f 	bl	1864 <gfx_sprite>
    1946:	3501      	adds	r5, #1
    1948:	3414      	adds	r4, #20
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    194a:	2d01      	cmp	r5, #1
    194c:	d0f0      	beq.n	1930 <draw_balls+0x18>
    194e:	4638      	mov	r0, r7
    1950:	f7ff fe4a 	bl	15e8 <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1954:	6923      	ldr	r3, [r4, #16]
    1956:	9300      	str	r3, [sp, #0]
    1958:	4633      	mov	r3, r6
    195a:	4632      	mov	r2, r6
    195c:	6861      	ldr	r1, [r4, #4]
    195e:	6820      	ldr	r0, [r4, #0]
    1960:	f7ff ff80 	bl	1864 <gfx_sprite>
	for (i=0;i<BALL_COUNT;i++){
    1964:	2d01      	cmp	r5, #1
    1966:	ddee      	ble.n	1946 <draw_balls+0x2e>
	}
	wait_sync_end();
    1968:	f001 fd4e 	bl	3408 <wait_sync_end>
}
    196c:	b002      	add	sp, #8
    196e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    1972:	bf00      	nop
    1974:	20002708 	.word	0x20002708
    1978:	00003cec 	.word	0x00003cec
    197c:	00003cd8 	.word	0x00003cd8

00001980 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    1980:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    1984:	f001 fd72 	bl	346c <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    1988:	89c3      	ldrh	r3, [r0, #14]
    198a:	089e      	lsrs	r6, r3, #2
    198c:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    1990:	429e      	cmp	r6, r3
    1992:	da1b      	bge.n	19cc <color_bars+0x4c>
    1994:	4680      	mov	r8, r0
static void color_bars(){
    1996:	f04f 0910 	mov.w	r9, #16
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
				c--;
			}
			gfx_blit(x,y,c,BIT_SET);
    199a:	2704      	movs	r7, #4
static void color_bars(){
    199c:	464d      	mov	r5, r9
    199e:	2400      	movs	r4, #0
			if (x%8==0){
    19a0:	f014 0f07 	tst.w	r4, #7
				c--;
    19a4:	bf04      	itt	eq
    19a6:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    19aa:	b2ed      	uxtbeq	r5, r5
			gfx_blit(x,y,c,BIT_SET);
    19ac:	463b      	mov	r3, r7
    19ae:	462a      	mov	r2, r5
    19b0:	4631      	mov	r1, r6
    19b2:	4620      	mov	r0, r4
    19b4:	f7ff fe24 	bl	1600 <gfx_blit>
		for (x=0;x<128;x++){
    19b8:	3401      	adds	r4, #1
    19ba:	2c80      	cmp	r4, #128	; 0x80
    19bc:	d1f0      	bne.n	19a0 <color_bars+0x20>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19be:	3601      	adds	r6, #1
    19c0:	f8b8 300e 	ldrh.w	r3, [r8, #14]
    19c4:	42b3      	cmp	r3, r6
    19c6:	dce9      	bgt.n	199c <color_bars+0x1c>
    19c8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    19cc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

000019d0 <vertical_bars>:
	}
		

}

static void vertical_bars(){
    19d0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    19d4:	f001 fd4a 	bl	346c <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19d8:	89c3      	ldrh	r3, [r0, #14]
    19da:	2b10      	cmp	r3, #16
    19dc:	dd16      	ble.n	1a0c <vertical_bars+0x3c>
    19de:	4605      	mov	r5, r0
    19e0:	2410      	movs	r4, #16
		gfx_blit(0,y,15,BIT_SET);
    19e2:	2704      	movs	r7, #4
    19e4:	260f      	movs	r6, #15
    19e6:	f04f 0800 	mov.w	r8, #0
    19ea:	463b      	mov	r3, r7
    19ec:	4632      	mov	r2, r6
    19ee:	4621      	mov	r1, r4
    19f0:	4640      	mov	r0, r8
    19f2:	f7ff fe05 	bl	1600 <gfx_blit>
		gfx_blit(vparams->hres-1,y,15,BIT_SET);
    19f6:	89a8      	ldrh	r0, [r5, #12]
    19f8:	463b      	mov	r3, r7
    19fa:	4632      	mov	r2, r6
    19fc:	4621      	mov	r1, r4
    19fe:	3801      	subs	r0, #1
    1a00:	f7ff fdfe 	bl	1600 <gfx_blit>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1a04:	3401      	adds	r4, #1
    1a06:	89eb      	ldrh	r3, [r5, #14]
    1a08:	42a3      	cmp	r3, r4
    1a0a:	dcee      	bgt.n	19ea <vertical_bars+0x1a>
    1a0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001a10 <horiz_bars>:
	}
}

static void horiz_bars(){
    1a10:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1a14:	f001 fd2a 	bl	346c <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1a18:	8983      	ldrh	r3, [r0, #12]
    1a1a:	b1ab      	cbz	r3, 1a48 <horiz_bars+0x38>
    1a1c:	4605      	mov	r5, r0
    1a1e:	2400      	movs	r4, #0
		gfx_blit(x,0,15,BIT_SET);
    1a20:	2704      	movs	r7, #4
    1a22:	260f      	movs	r6, #15
    1a24:	46a0      	mov	r8, r4
    1a26:	463b      	mov	r3, r7
    1a28:	4632      	mov	r2, r6
    1a2a:	4641      	mov	r1, r8
    1a2c:	4620      	mov	r0, r4
    1a2e:	f7ff fde7 	bl	1600 <gfx_blit>
		gfx_blit(x,vparams->vres-1,15,BIT_SET);
    1a32:	89e9      	ldrh	r1, [r5, #14]
    1a34:	463b      	mov	r3, r7
    1a36:	4632      	mov	r2, r6
    1a38:	3901      	subs	r1, #1
    1a3a:	4620      	mov	r0, r4
    1a3c:	f7ff fde0 	bl	1600 <gfx_blit>
	for (x=0;x<vparams->hres;x++){
    1a40:	3401      	adds	r4, #1
    1a42:	89ab      	ldrh	r3, [r5, #12]
    1a44:	42a3      	cmp	r3, r4
    1a46:	dcee      	bgt.n	1a26 <horiz_bars+0x16>
    1a48:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001a4c <init_balls>:
static void init_balls(){
    1a4c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a50:	f001 fd0c 	bl	346c <get_video_params>
    1a54:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a56:	4b19      	ldr	r3, [pc, #100]	; (1abc <init_balls+0x70>)
    1a58:	6818      	ldr	r0, [r3, #0]
    1a5a:	f7fe fcb7 	bl	3cc <srand>
    1a5e:	4c18      	ldr	r4, [pc, #96]	; (1ac0 <init_balls+0x74>)
    1a60:	f104 0628 	add.w	r6, r4, #40	; 0x28
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1a64:	4f17      	ldr	r7, [pc, #92]	; (1ac4 <init_balls+0x78>)
    1a66:	f107 0914 	add.w	r9, r7, #20
			sprite_bpp=TWO_BPP;
    1a6a:	f8df 805c 	ldr.w	r8, [pc, #92]	; 1ac8 <init_balls+0x7c>
    1a6e:	e004      	b.n	1a7a <init_balls+0x2e>
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1a70:	f8c4 9010 	str.w	r9, [r4, #16]
    1a74:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1a76:	42b4      	cmp	r4, r6
    1a78:	d01d      	beq.n	1ab6 <init_balls+0x6a>
		balls[i].x=rand()%vparams->hres;
    1a7a:	f7fe fcad 	bl	3d8 <rand>
    1a7e:	89ab      	ldrh	r3, [r5, #12]
    1a80:	fb90 f2f3 	sdiv	r2, r0, r3
    1a84:	fb02 0013 	mls	r0, r2, r3, r0
    1a88:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1a8a:	f7fe fca5 	bl	3d8 <rand>
    1a8e:	89eb      	ldrh	r3, [r5, #14]
    1a90:	3b10      	subs	r3, #16
    1a92:	fb90 f2f3 	sdiv	r2, r0, r3
    1a96:	fb02 0013 	mls	r0, r2, r3, r0
    1a9a:	3010      	adds	r0, #16
    1a9c:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1a9e:	2301      	movs	r3, #1
    1aa0:	60a3      	str	r3, [r4, #8]
		balls[i].dy=1;
    1aa2:	60e3      	str	r3, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1aa4:	782b      	ldrb	r3, [r5, #0]
    1aa6:	2b00      	cmp	r3, #0
    1aa8:	d1e2      	bne.n	1a70 <init_balls+0x24>
			balls[i].ball_sprite=ball8x8_2bpp;//ball8x8;
    1aaa:	1d3b      	adds	r3, r7, #4
    1aac:	6123      	str	r3, [r4, #16]
			sprite_bpp=TWO_BPP;
    1aae:	2301      	movs	r3, #1
    1ab0:	f888 3000 	strb.w	r3, [r8]
    1ab4:	e7de      	b.n	1a74 <init_balls+0x28>
}
    1ab6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1aba:	bf00      	nop
    1abc:	20004e94 	.word	0x20004e94
    1ac0:	20002708 	.word	0x20002708
    1ac4:	00003cec 	.word	0x00003cec
    1ac8:	200001c8 	.word	0x200001c8

00001acc <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    1acc:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1ace:	f7ff fde3 	bl	1698 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1ad2:	4806      	ldr	r0, [pc, #24]	; (1aec <display_menu+0x20>)
    1ad4:	f001 fa1d 	bl	2f12 <println>
    1ad8:	4805      	ldr	r0, [pc, #20]	; (1af0 <display_menu+0x24>)
    1ada:	f001 fa1a 	bl	2f12 <println>
    1ade:	4805      	ldr	r0, [pc, #20]	; (1af4 <display_menu+0x28>)
    1ae0:	f001 fa17 	bl	2f12 <println>
    1ae4:	4804      	ldr	r0, [pc, #16]	; (1af8 <display_menu+0x2c>)
    1ae6:	f001 fa14 	bl	2f12 <println>
    1aea:	bd08      	pop	{r3, pc}
    1aec:	00003e1c 	.word	0x00003e1c
    1af0:	00003e28 	.word	0x00003e28
    1af4:	00003e38 	.word	0x00003e38
    1af8:	00003e44 	.word	0x00003e44

00001afc <isqrt>:
	if (n<2) return n;
    1afc:	2801      	cmp	r0, #1
    1afe:	dd0c      	ble.n	1b1a <isqrt+0x1e>
int isqrt(int n){
    1b00:	b510      	push	{r4, lr}
    1b02:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1b04:	1080      	asrs	r0, r0, #2
    1b06:	f7ff fff9 	bl	1afc <isqrt>
    1b0a:	0040      	lsls	r0, r0, #1
	large = small + 1;
    1b0c:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    1b0e:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    1b12:	4294      	cmp	r4, r2
    1b14:	bfa8      	it	ge
    1b16:	4618      	movge	r0, r3
}
    1b18:	bd10      	pop	{r4, pc}
    1b1a:	4770      	bx	lr

00001b1c <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    1b1c:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    1b1e:	6803      	ldr	r3, [r0, #0]
    1b20:	680a      	ldr	r2, [r1, #0]
    1b22:	6844      	ldr	r4, [r0, #4]
    1b24:	6848      	ldr	r0, [r1, #4]
    1b26:	fb00 f004 	mul.w	r0, r0, r4
    1b2a:	fb02 0003 	mla	r0, r2, r3, r0
    1b2e:	2800      	cmp	r0, #0
    1b30:	bfb8      	it	lt
    1b32:	4240      	neglt	r0, r0
    1b34:	f7ff ffe2 	bl	1afc <isqrt>
}
    1b38:	bd10      	pop	{r4, pc}

00001b3a <main>:
			break;	
		}
	}//while
}

void main(void){
    1b3a:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1b3e:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1b40:	4ac2      	ldr	r2, [pc, #776]	; (1e4c <main+0x312>)
    1b42:	6813      	ldr	r3, [r2, #0]
    1b44:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1b48:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1b4a:	4613      	mov	r3, r2
    1b4c:	681a      	ldr	r2, [r3, #0]
    1b4e:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1b52:	d0fb      	beq.n	1b4c <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1b54:	4bbd      	ldr	r3, [pc, #756]	; (1e4c <main+0x312>)
    1b56:	685a      	ldr	r2, [r3, #4]
    1b58:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1b5c:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1b5e:	681a      	ldr	r2, [r3, #0]
    1b60:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1b64:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1b66:	681a      	ldr	r2, [r3, #0]
    1b68:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1b6c:	d0fb      	beq.n	1b66 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1b6e:	4ab8      	ldr	r2, [pc, #736]	; (1e50 <main+0x316>)
    1b70:	6813      	ldr	r3, [r2, #0]
    1b72:	f043 0312 	orr.w	r3, r3, #18
    1b76:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1b78:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1b7c:	6853      	ldr	r3, [r2, #4]
    1b7e:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1b82:	f043 0302 	orr.w	r3, r3, #2
    1b86:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1b88:	f640 031d 	movw	r3, #2077	; 0x81d
    1b8c:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1b8e:	4cb1      	ldr	r4, [pc, #708]	; (1e54 <main+0x31a>)
    1b90:	2206      	movs	r2, #6
    1b92:	210d      	movs	r1, #13
    1b94:	4620      	mov	r0, r4
    1b96:	f7ff fcf3 	bl	1580 <config_pin>
	_led_off();
    1b9a:	68e3      	ldr	r3, [r4, #12]
    1b9c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1ba0:	60e3      	str	r3, [r4, #12]
	tvout_init();
    1ba2:	f001 fa6b 	bl	307c <tvout_init>
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1ba6:	2400      	movs	r4, #0
    1ba8:	9401      	str	r4, [sp, #4]
    1baa:	2301      	movs	r3, #1
    1bac:	9300      	str	r3, [sp, #0]
    1bae:	2303      	movs	r3, #3
    1bb0:	4622      	mov	r2, r4
    1bb2:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1bb6:	4620      	mov	r0, r4
    1bb8:	f001 fd10 	bl	35dc <usart_open_channel>
	gamepad_init();
    1bbc:	f7ff faa8 	bl	1110 <gamepad_init>
	sound_init();
    1bc0:	f000 febc 	bl	293c <sound_init>
	gfx_cls();
    1bc4:	f7ff fd68 	bl	1698 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1bc8:	f001 fc50 	bl	346c <get_video_params>
	display_menu();
    1bcc:	f7ff ff7e 	bl	1acc <display_menu>
	int i=0;
    1bd0:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1bd2:	4ba1      	ldr	r3, [pc, #644]	; (1e58 <main+0x31e>)
    1bd4:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1bd8:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1bdc:	9304      	str	r3, [sp, #16]
    1bde:	e1d0      	b.n	1f82 <main+0x448>
			if (i<(MENU_ITEMS-1)) i++;
    1be0:	f1ba 0f02 	cmp.w	sl, #2
    1be4:	f300 81cd 	bgt.w	1f82 <main+0x448>
    1be8:	f10a 0a01 	add.w	sl, sl, #1
    1bec:	e1c9      	b.n	1f82 <main+0x448>
			switch(i){
    1bee:	f1ba 0f03 	cmp.w	sl, #3
    1bf2:	f200 81c4 	bhi.w	1f7e <main+0x444>
    1bf6:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1bfa:	0004      	.short	0x0004
    1bfc:	010f00cf 	.word	0x010f00cf
    1c00:	01e8      	.short	0x01e8
	count=games_count();
    1c02:	f7ff fb4b 	bl	129c <games_count>
    1c06:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1c08:	2000      	movs	r0, #0
    1c0a:	f001 fc05 	bl	3418 <set_video_mode>
	vparams=get_video_params();
    1c0e:	f001 fc2d 	bl	346c <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1c12:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1c16:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1c1a:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1c1c:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1c20:	454e      	cmp	r6, r9
    1c22:	bfda      	itte	le
    1c24:	eba9 0806 	suble.w	r8, r9, r6
    1c28:	f108 0801 	addle.w	r8, r8, #1
    1c2c:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1c2e:	2100      	movs	r1, #0
    1c30:	4608      	mov	r0, r1
    1c32:	f001 f925 	bl	2e80 <set_cursor>
	print(" ********** GAMES **********");
    1c36:	4889      	ldr	r0, [pc, #548]	; (1e5c <main+0x322>)
    1c38:	f001 f956 	bl	2ee8 <print>
	while ((r<rows) && games_list[first].size){
    1c3c:	f1bb 0f01 	cmp.w	fp, #1
    1c40:	d92d      	bls.n	1c9e <main+0x164>
    1c42:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1c46:	4a86      	ldr	r2, [pc, #536]	; (1e60 <main+0x326>)
    1c48:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1c4c:	691b      	ldr	r3, [r3, #16]
    1c4e:	b333      	cbz	r3, 1c9e <main+0x164>
    1c50:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1c54:	1c53      	adds	r3, r2, #1
    1c56:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1c5a:	2501      	movs	r5, #1
		put_char(' ');
    1c5c:	2720      	movs	r7, #32
		new_line();
    1c5e:	f001 f85d 	bl	2d1c <new_line>
		clear_line();
    1c62:	f001 f9db 	bl	301c <clear_line>
		put_char(' ');
    1c66:	4638      	mov	r0, r7
    1c68:	f001 f8a0 	bl	2dac <put_char>
		print(games_list[first].name);
    1c6c:	4620      	mov	r0, r4
    1c6e:	f001 f93b 	bl	2ee8 <print>
		line=get_cursor()&0xff;
    1c72:	f001 f90b 	bl	2e8c <get_cursor>
		set_cursor(90,line);
    1c76:	b2c1      	uxtb	r1, r0
    1c78:	205a      	movs	r0, #90	; 0x5a
    1c7a:	f001 f901 	bl	2e80 <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1c7e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1c82:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1c84:	bf0c      	ite	eq
    1c86:	4877      	ldreq	r0, [pc, #476]	; (1e64 <main+0x32a>)
			print("(BPCHIP)");
    1c88:	4877      	ldrne	r0, [pc, #476]	; (1e68 <main+0x32e>)
    1c8a:	f001 f92d 	bl	2ee8 <print>
		r++;
    1c8e:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1c90:	42ae      	cmp	r6, r5
    1c92:	d004      	beq.n	1c9e <main+0x164>
    1c94:	341c      	adds	r4, #28
    1c96:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1c9a:	2b00      	cmp	r3, #0
    1c9c:	d1df      	bne.n	1c5e <main+0x124>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1c9e:	eba9 0108 	sub.w	r1, r9, r8
    1ca2:	00c9      	lsls	r1, r1, #3
    1ca4:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1ca8:	2000      	movs	r0, #0
    1caa:	f001 f8e9 	bl	2e80 <set_cursor>
		put_char('>');
    1cae:	203e      	movs	r0, #62	; 0x3e
    1cb0:	f001 f87c 	bl	2dac <put_char>
		btn=btn_wait_any();
    1cb4:	f7ff fa9e 	bl	11f4 <btn_wait_any>
    1cb8:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1cba:	f7ff fa87 	bl	11cc <btn_wait_up>
		switch(btn){
    1cbe:	2c04      	cmp	r4, #4
    1cc0:	d056      	beq.n	1d70 <main+0x236>
    1cc2:	d946      	bls.n	1d52 <main+0x218>
    1cc4:	2c40      	cmp	r4, #64	; 0x40
    1cc6:	d05a      	beq.n	1d7e <main+0x244>
    1cc8:	2c80      	cmp	r4, #128	; 0x80
    1cca:	f000 8158 	beq.w	1f7e <main+0x444>
    1cce:	2c20      	cmp	r4, #32
    1cd0:	d1a6      	bne.n	1c20 <main+0xe6>
	run_game(selected-1);
    1cd2:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1cd6:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1cda:	4b61      	ldr	r3, [pc, #388]	; (1e60 <main+0x326>)
    1cdc:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1ce0:	2b01      	cmp	r3, #1
    1ce2:	bf14      	ite	ne
    1ce4:	2600      	movne	r6, #0
    1ce6:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1cea:	4f5d      	ldr	r7, [pc, #372]	; (1e60 <main+0x326>)
    1cec:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1cf0:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1cf4:	6922      	ldr	r2, [r4, #16]
    1cf6:	495d      	ldr	r1, [pc, #372]	; (1e6c <main+0x332>)
    1cf8:	4431      	add	r1, r6
    1cfa:	6960      	ldr	r0, [r4, #20]
    1cfc:	f7ff fb81 	bl	1402 <move>
	set_keymap(games_list[idx].keymap);
    1d00:	69a0      	ldr	r0, [r4, #24]
    1d02:	f7ff f9f9 	bl	10f8 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1d06:	eba5 0909 	sub.w	r9, r5, r9
    1d0a:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1d0e:	f001 fb83 	bl	3418 <set_video_mode>
	set_palette(DEFAULT_PALETTE);
    1d12:	4857      	ldr	r0, [pc, #348]	; (1e70 <main+0x336>)
    1d14:	f7ff fc68 	bl	15e8 <set_palette>
	exit_code=chip_vm(addr,debug_level);
    1d18:	4b56      	ldr	r3, [pc, #344]	; (1e74 <main+0x33a>)
    1d1a:	7819      	ldrb	r1, [r3, #0]
    1d1c:	4630      	mov	r0, r6
    1d1e:	f7fe fb69 	bl	3f4 <chip_vm>
    1d22:	4604      	mov	r4, r0
	print("exit code: ");
    1d24:	4854      	ldr	r0, [pc, #336]	; (1e78 <main+0x33e>)
    1d26:	f001 f8df 	bl	2ee8 <print>
	switch(exit_code){
    1d2a:	2c01      	cmp	r4, #1
    1d2c:	d02a      	beq.n	1d84 <main+0x24a>
    1d2e:	b374      	cbz	r4, 1d8e <main+0x254>
    1d30:	2c03      	cmp	r4, #3
    1d32:	d82c      	bhi.n	1d8e <main+0x254>
		select_console(SERIAL);
    1d34:	2001      	movs	r0, #1
    1d36:	f001 f993 	bl	3060 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1d3a:	4621      	mov	r1, r4
    1d3c:	484f      	ldr	r0, [pc, #316]	; (1e7c <main+0x342>)
    1d3e:	f7fe fae9 	bl	314 <print_vms>
		select_console(LOCAL);
    1d42:	2000      	movs	r0, #0
    1d44:	f001 f98c 	bl	3060 <select_console>
		btn_wait_any();
    1d48:	f7ff fa54 	bl	11f4 <btn_wait_any>
		i=1;
    1d4c:	2301      	movs	r3, #1
    1d4e:	9305      	str	r3, [sp, #20]
    1d50:	e01d      	b.n	1d8e <main+0x254>
		switch(btn){
    1d52:	2c01      	cmp	r4, #1
    1d54:	d009      	beq.n	1d6a <main+0x230>
    1d56:	2c02      	cmp	r4, #2
    1d58:	f47f af62 	bne.w	1c20 <main+0xe6>
			if (selected>1) selected--;
    1d5c:	f1b9 0f01 	cmp.w	r9, #1
    1d60:	f77f af5e 	ble.w	1c20 <main+0xe6>
    1d64:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1d68:	e75a      	b.n	1c20 <main+0xe6>
			selected=1;
    1d6a:	f04f 0901 	mov.w	r9, #1
    1d6e:	e757      	b.n	1c20 <main+0xe6>
			if (selected<count){
    1d70:	9b03      	ldr	r3, [sp, #12]
    1d72:	454b      	cmp	r3, r9
    1d74:	f77f af54 	ble.w	1c20 <main+0xe6>
				selected++;
    1d78:	f109 0901 	add.w	r9, r9, #1
    1d7c:	e750      	b.n	1c20 <main+0xe6>
			selected=count;
    1d7e:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1d82:	e74d      	b.n	1c20 <main+0xe6>
		print("CHIP EXIT OK");
    1d84:	483e      	ldr	r0, [pc, #248]	; (1e80 <main+0x346>)
    1d86:	f001 f8af 	bl	2ee8 <print>
		i=0;
    1d8a:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1d8e:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1d92:	f001 fb75 	bl	3480 <game_pause>
    1d96:	e0f2      	b.n	1f7e <main+0x444>
	gfx_cls();
    1d98:	f7ff fc7e 	bl	1698 <gfx_cls>
	print(" **** VM debug support ****\n");
    1d9c:	4839      	ldr	r0, [pc, #228]	; (1e84 <main+0x34a>)
    1d9e:	f001 f8a3 	bl	2ee8 <print>
	print(" No debug support\n");
    1da2:	4839      	ldr	r0, [pc, #228]	; (1e88 <main+0x34e>)
    1da4:	f001 f8a0 	bl	2ee8 <print>
	print(" Print PC and OPCODE\n");
    1da8:	4838      	ldr	r0, [pc, #224]	; (1e8c <main+0x352>)
    1daa:	f001 f89d 	bl	2ee8 <print>
	print(" Print all VM states.\n");
    1dae:	4838      	ldr	r0, [pc, #224]	; (1e90 <main+0x356>)
    1db0:	f001 f89a 	bl	2ee8 <print>
	print(" Single step\n");
    1db4:	4837      	ldr	r0, [pc, #220]	; (1e94 <main+0x35a>)
    1db6:	f001 f897 	bl	2ee8 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1dba:	4c2e      	ldr	r4, [pc, #184]	; (1e74 <main+0x33a>)
    1dbc:	2500      	movs	r5, #0
		put_char('*');
    1dbe:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1dc0:	7821      	ldrb	r1, [r4, #0]
    1dc2:	3101      	adds	r1, #1
    1dc4:	00c9      	lsls	r1, r1, #3
    1dc6:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1dca:	4628      	mov	r0, r5
    1dcc:	f001 f858 	bl	2e80 <set_cursor>
		put_char('*');
    1dd0:	4630      	mov	r0, r6
    1dd2:	f000 ffeb 	bl	2dac <put_char>
		btn=btn_wait_any();
    1dd6:	f7ff fa0d 	bl	11f4 <btn_wait_any>
    1dda:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1ddc:	7821      	ldrb	r1, [r4, #0]
    1dde:	3101      	adds	r1, #1
    1de0:	00c9      	lsls	r1, r1, #3
    1de2:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1de6:	4628      	mov	r0, r5
    1de8:	f001 f84a 	bl	2e80 <set_cursor>
		put_char(' ');
    1dec:	2020      	movs	r0, #32
    1dee:	f000 ffdd 	bl	2dac <put_char>
		switch(btn){
    1df2:	2f04      	cmp	r7, #4
    1df4:	d00a      	beq.n	1e0c <main+0x2d2>
    1df6:	2f20      	cmp	r7, #32
    1df8:	f000 80c1 	beq.w	1f7e <main+0x444>
    1dfc:	2f02      	cmp	r7, #2
    1dfe:	d1df      	bne.n	1dc0 <main+0x286>
			if (debug_level) debug_level--;
    1e00:	7823      	ldrb	r3, [r4, #0]
    1e02:	2b00      	cmp	r3, #0
    1e04:	d0dc      	beq.n	1dc0 <main+0x286>
    1e06:	3b01      	subs	r3, #1
    1e08:	7023      	strb	r3, [r4, #0]
    1e0a:	e7d9      	b.n	1dc0 <main+0x286>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1e0c:	7823      	ldrb	r3, [r4, #0]
    1e0e:	2b02      	cmp	r3, #2
    1e10:	d8d6      	bhi.n	1dc0 <main+0x286>
    1e12:	3301      	adds	r3, #1
    1e14:	7023      	strb	r3, [r4, #0]
    1e16:	e7d3      	b.n	1dc0 <main+0x286>
	set_video_mode(p);
    1e18:	2000      	movs	r0, #0
    1e1a:	f001 fafd 	bl	3418 <set_video_mode>
	color_bars();
    1e1e:	f7ff fdaf 	bl	1980 <color_bars>
	vertical_bars();
    1e22:	f7ff fdd5 	bl	19d0 <vertical_bars>
	horiz_bars();
    1e26:	f7ff fdf3 	bl	1a10 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1e2a:	2110      	movs	r1, #16
    1e2c:	481a      	ldr	r0, [pc, #104]	; (1e98 <main+0x35e>)
    1e2e:	f001 f876 	bl	2f1e <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1e32:	210a      	movs	r1, #10
    1e34:	9804      	ldr	r0, [sp, #16]
    1e36:	f001 f872 	bl	2f1e <print_int>
	init_balls();
    1e3a:	f7ff fe07 	bl	1a4c <init_balls>
	p=0;
    1e3e:	2500      	movs	r5, #0
	if (distance(&balls[0],&balls[1])<8){
    1e40:	4e16      	ldr	r6, [pc, #88]	; (1e9c <main+0x362>)
    1e42:	f1a6 0814 	sub.w	r8, r6, #20
		if (balls[0].dx!=balls[1].dx){
    1e46:	4644      	mov	r4, r8
    1e48:	e06a      	b.n	1f20 <main+0x3e6>
    1e4a:	bf00      	nop
    1e4c:	40021000 	.word	0x40021000
    1e50:	40022000 	.word	0x40022000
    1e54:	40011000 	.word	0x40011000
    1e58:	20004ea0 	.word	0x20004ea0
    1e5c:	00003e50 	.word	0x00003e50
    1e60:	20000004 	.word	0x20000004
    1e64:	00003e70 	.word	0x00003e70
    1e68:	00003e78 	.word	0x00003e78
    1e6c:	20000700 	.word	0x20000700
    1e70:	00003cd8 	.word	0x00003cd8
    1e74:	20002704 	.word	0x20002704
    1e78:	00003e84 	.word	0x00003e84
    1e7c:	00003ea0 	.word	0x00003ea0
    1e80:	00003e90 	.word	0x00003e90
    1e84:	00003eb0 	.word	0x00003eb0
    1e88:	00003ed0 	.word	0x00003ed0
    1e8c:	00003ee4 	.word	0x00003ee4
    1e90:	00003efc 	.word	0x00003efc
    1e94:	00003f14 	.word	0x00003f14
    1e98:	00004400 	.word	0x00004400
    1e9c:	2000271c 	.word	0x2000271c
			balls[i].dy=-balls[i].dy;
    1ea0:	4249      	negs	r1, r1
    1ea2:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1ea4:	f8c2 c004 	str.w	ip, [r2, #4]
    1ea8:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    1eaa:	4573      	cmp	r3, lr
    1eac:	d01e      	beq.n	1eec <main+0x3b2>
    1eae:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1eb0:	f8d3 c000 	ldr.w	ip, [r3]
    1eb4:	6899      	ldr	r1, [r3, #8]
    1eb6:	eb0c 0701 	add.w	r7, ip, r1
    1eba:	601f      	str	r7, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    1ebc:	f117 0f07 	cmn.w	r7, #7
    1ec0:	db03      	blt.n	1eca <main+0x390>
    1ec2:	f8b0 900c 	ldrh.w	r9, [r0, #12]
    1ec6:	454f      	cmp	r7, r9
    1ec8:	db03      	blt.n	1ed2 <main+0x398>
			balls[i].dx=-balls[i].dx;
    1eca:	4249      	negs	r1, r1
    1ecc:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1ece:	f8c2 c000 	str.w	ip, [r2]
		balls[i].y+=balls[i].dy;
    1ed2:	f8d2 c004 	ldr.w	ip, [r2, #4]
    1ed6:	68d1      	ldr	r1, [r2, #12]
    1ed8:	eb0c 0701 	add.w	r7, ip, r1
    1edc:	6057      	str	r7, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1ede:	2f0f      	cmp	r7, #15
    1ee0:	ddde      	ble.n	1ea0 <main+0x366>
    1ee2:	f8b0 900e 	ldrh.w	r9, [r0, #14]
    1ee6:	454f      	cmp	r7, r9
    1ee8:	dbde      	blt.n	1ea8 <main+0x36e>
    1eea:	e7d9      	b.n	1ea0 <main+0x366>
	if (distance(&balls[0],&balls[1])<8){
    1eec:	4631      	mov	r1, r6
    1eee:	4640      	mov	r0, r8
    1ef0:	f7ff fe14 	bl	1b1c <distance>
    1ef4:	2807      	cmp	r0, #7
    1ef6:	d80b      	bhi.n	1f10 <main+0x3d6>
		if (balls[0].dx!=balls[1].dx){
    1ef8:	68a3      	ldr	r3, [r4, #8]
    1efa:	69e2      	ldr	r2, [r4, #28]
    1efc:	4293      	cmp	r3, r2
			balls[0].dx=balls[1].dx;
    1efe:	bf1c      	itt	ne
    1f00:	60a2      	strne	r2, [r4, #8]
			balls[1].dx=i;
    1f02:	61e3      	strne	r3, [r4, #28]
		if (balls[0].dy!=balls[1].dy){
    1f04:	68e3      	ldr	r3, [r4, #12]
    1f06:	6a22      	ldr	r2, [r4, #32]
    1f08:	4293      	cmp	r3, r2
			balls[0].dy=balls[1].dy;
    1f0a:	bf1c      	itt	ne
    1f0c:	60e2      	strne	r2, [r4, #12]
			balls[1].dy=i;
    1f0e:	6223      	strne	r3, [r4, #32]
		if (btn_query_down(KEY_RIGHT)){
    1f10:	2010      	movs	r0, #16
    1f12:	f7ff f93b 	bl	118c <btn_query_down>
    1f16:	b968      	cbnz	r0, 1f34 <main+0x3fa>
		}else if (btn_query_down(KEY_B)){
    1f18:	2020      	movs	r0, #32
    1f1a:	f7ff f937 	bl	118c <btn_query_down>
    1f1e:	bb40      	cbnz	r0, 1f72 <main+0x438>
		draw_balls();
    1f20:	f7ff fcfa 	bl	1918 <draw_balls>
		draw_balls();
    1f24:	f7ff fcf8 	bl	1918 <draw_balls>
	vmode_params_t *vparams=get_video_params();
    1f28:	f001 faa0 	bl	346c <get_video_params>
    1f2c:	4b60      	ldr	r3, [pc, #384]	; (20b0 <main+0x576>)
    1f2e:	f103 0e28 	add.w	lr, r3, #40	; 0x28
    1f32:	e7bc      	b.n	1eae <main+0x374>
			p^=1;
    1f34:	f085 0501 	eor.w	r5, r5, #1
			set_video_mode(p);
    1f38:	4628      	mov	r0, r5
    1f3a:	f001 fa6d 	bl	3418 <set_video_mode>
			switch(p){
    1f3e:	b15d      	cbz	r5, 1f58 <main+0x41e>
    1f40:	2d01      	cmp	r5, #1
    1f42:	d012      	beq.n	1f6a <main+0x430>
			vertical_bars();
    1f44:	f7ff fd44 	bl	19d0 <vertical_bars>
			horiz_bars();
    1f48:	f7ff fd62 	bl	1a10 <horiz_bars>
			init_balls();
    1f4c:	f7ff fd7e 	bl	1a4c <init_balls>
			btn_wait_up(KEY_RIGHT);
    1f50:	2010      	movs	r0, #16
    1f52:	f7ff f93b 	bl	11cc <btn_wait_up>
    1f56:	e7e3      	b.n	1f20 <main+0x3e6>
				print("BPCHIP mode\n180x112 16 colors");
    1f58:	4856      	ldr	r0, [pc, #344]	; (20b4 <main+0x57a>)
    1f5a:	f000 ffc5 	bl	2ee8 <print>
				color_bars();
    1f5e:	f7ff fd0f 	bl	1980 <color_bars>
				sprite_bpp=TWO_BPP;
    1f62:	2201      	movs	r2, #1
    1f64:	4b54      	ldr	r3, [pc, #336]	; (20b8 <main+0x57e>)
    1f66:	701a      	strb	r2, [r3, #0]
    1f68:	e7ec      	b.n	1f44 <main+0x40a>
				print("SCHIP mode\n128x64 mono");
    1f6a:	4854      	ldr	r0, [pc, #336]	; (20bc <main+0x582>)
    1f6c:	f000 ffbc 	bl	2ee8 <print>
    1f70:	e7e8      	b.n	1f44 <main+0x40a>
			btn_wait_up(KEY_B);
    1f72:	2020      	movs	r0, #32
    1f74:	f7ff f92a 	bl	11cc <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1f78:	2000      	movs	r0, #0
    1f7a:	f001 fa4d 	bl	3418 <set_video_mode>
			display_menu();
    1f7e:	f7ff fda5 	bl	1acc <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1f82:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1f86:	b2e4      	uxtb	r4, r4
    1f88:	4621      	mov	r1, r4
    1f8a:	2000      	movs	r0, #0
    1f8c:	f000 ff78 	bl	2e80 <set_cursor>
		put_char('>');
    1f90:	203e      	movs	r0, #62	; 0x3e
    1f92:	f000 ff0b 	bl	2dac <put_char>
		btn=btn_wait_any();
    1f96:	f7ff f92d 	bl	11f4 <btn_wait_any>
    1f9a:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1f9c:	f7ff f916 	bl	11cc <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1fa0:	4621      	mov	r1, r4
    1fa2:	2000      	movs	r0, #0
    1fa4:	f000 ff6c 	bl	2e80 <set_cursor>
		put_char(' ');
    1fa8:	2020      	movs	r0, #32
    1faa:	f000 feff 	bl	2dac <put_char>
		switch(btn){
    1fae:	2d04      	cmp	r5, #4
    1fb0:	f43f ae16 	beq.w	1be0 <main+0xa6>
    1fb4:	2d20      	cmp	r5, #32
    1fb6:	f43f ae1a 	beq.w	1bee <main+0xb4>
    1fba:	2d02      	cmp	r5, #2
    1fbc:	d1e1      	bne.n	1f82 <main+0x448>
			if (i) i--;
    1fbe:	f1ba 0f00 	cmp.w	sl, #0
    1fc2:	d0de      	beq.n	1f82 <main+0x448>
    1fc4:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1fc8:	e7db      	b.n	1f82 <main+0x448>
	gfx_cls();
    1fca:	f7ff fb65 	bl	1698 <gfx_cls>
	print("press buttons for scale tone.\n");
    1fce:	483c      	ldr	r0, [pc, #240]	; (20c0 <main+0x586>)
    1fd0:	f000 ff8a 	bl	2ee8 <print>
		print("button ");
    1fd4:	4d3b      	ldr	r5, [pc, #236]	; (20c4 <main+0x58a>)
			print("LEFT (B4)\n");
    1fd6:	4f3c      	ldr	r7, [pc, #240]	; (20c8 <main+0x58e>)
			print("C (D5#)\n");
    1fd8:	4e3c      	ldr	r6, [pc, #240]	; (20cc <main+0x592>)
    1fda:	e01f      	b.n	201c <main+0x4e2>
		switch(key){
    1fdc:	2c02      	cmp	r4, #2
    1fde:	d013      	beq.n	2008 <main+0x4ce>
    1fe0:	2c04      	cmp	r4, #4
    1fe2:	d032      	beq.n	204a <main+0x510>
    1fe4:	2c01      	cmp	r4, #1
    1fe6:	d03e      	beq.n	2066 <main+0x52c>
		tone(freq,3);
    1fe8:	2103      	movs	r1, #3
    1fea:	9802      	ldr	r0, [sp, #8]
    1fec:	f000 fcd2 	bl	2994 <tone>
	while (key!=KEY_B){
    1ff0:	2c20      	cmp	r4, #32
    1ff2:	d113      	bne.n	201c <main+0x4e2>
    1ff4:	e046      	b.n	2084 <main+0x54a>
		switch(key){
    1ff6:	2c10      	cmp	r4, #16
    1ff8:	d1f6      	bne.n	1fe8 <main+0x4ae>
			print("RIGHT (C5)\n");
    1ffa:	4835      	ldr	r0, [pc, #212]	; (20d0 <main+0x596>)
    1ffc:	f000 ff74 	bl	2ee8 <print>
			freq=523;
    2000:	f240 230b 	movw	r3, #523	; 0x20b
    2004:	9302      	str	r3, [sp, #8]
    2006:	e005      	b.n	2014 <main+0x4da>
			print("UP (A4)\n");
    2008:	4832      	ldr	r0, [pc, #200]	; (20d4 <main+0x59a>)
    200a:	f000 ff6d 	bl	2ee8 <print>
			freq=440;
    200e:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2012:	9302      	str	r3, [sp, #8]
		tone(freq,3);
    2014:	2103      	movs	r1, #3
    2016:	9802      	ldr	r0, [sp, #8]
    2018:	f000 fcbc 	bl	2994 <tone>
		key=btn_any_down();
    201c:	f7ff f924 	bl	1268 <btn_any_down>
    2020:	4604      	mov	r4, r0
		print("button ");
    2022:	4628      	mov	r0, r5
    2024:	f000 ff60 	bl	2ee8 <print>
		switch(key){
    2028:	2c08      	cmp	r4, #8
    202a:	d015      	beq.n	2058 <main+0x51e>
    202c:	d9d6      	bls.n	1fdc <main+0x4a2>
    202e:	2c20      	cmp	r4, #32
    2030:	d020      	beq.n	2074 <main+0x53a>
    2032:	d9e0      	bls.n	1ff6 <main+0x4bc>
    2034:	2c40      	cmp	r4, #64	; 0x40
    2036:	d034      	beq.n	20a2 <main+0x568>
    2038:	2c80      	cmp	r4, #128	; 0x80
    203a:	d1d5      	bne.n	1fe8 <main+0x4ae>
			print("D (E5)\n");
    203c:	4826      	ldr	r0, [pc, #152]	; (20d8 <main+0x59e>)
    203e:	f000 ff53 	bl	2ee8 <print>
			freq=659;
    2042:	f240 2393 	movw	r3, #659	; 0x293
    2046:	9302      	str	r3, [sp, #8]
    2048:	e7e4      	b.n	2014 <main+0x4da>
			print("DOWN (A4#)\n");
    204a:	4824      	ldr	r0, [pc, #144]	; (20dc <main+0x5a2>)
    204c:	f000 ff4c 	bl	2ee8 <print>
			freq=466;
    2050:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2054:	9302      	str	r3, [sp, #8]
    2056:	e7dd      	b.n	2014 <main+0x4da>
			print("LEFT (B4)\n");
    2058:	4638      	mov	r0, r7
    205a:	f000 ff45 	bl	2ee8 <print>
			freq=494;
    205e:	f44f 73f7 	mov.w	r3, #494	; 0x1ee
    2062:	9302      	str	r3, [sp, #8]
    2064:	e7d6      	b.n	2014 <main+0x4da>
			print("A (C5#)\n");
    2066:	481e      	ldr	r0, [pc, #120]	; (20e0 <main+0x5a6>)
    2068:	f000 ff3e 	bl	2ee8 <print>
			freq=554;
    206c:	f240 232a 	movw	r3, #554	; 0x22a
    2070:	9302      	str	r3, [sp, #8]
    2072:	e7cf      	b.n	2014 <main+0x4da>
			print("B (D5)\n");
    2074:	481b      	ldr	r0, [pc, #108]	; (20e4 <main+0x5aa>)
    2076:	f000 ff37 	bl	2ee8 <print>
		tone(freq,3);
    207a:	2103      	movs	r1, #3
    207c:	f240 204b 	movw	r0, #587	; 0x24b
    2080:	f000 fc88 	bl	2994 <tone>
	btn_wait_up(key);
    2084:	2020      	movs	r0, #32
    2086:	f7ff f8a1 	bl	11cc <btn_wait_up>
	print("white noise\n");
    208a:	4817      	ldr	r0, [pc, #92]	; (20e8 <main+0x5ae>)
    208c:	f000 ff2c 	bl	2ee8 <print>
	noise(30);
    2090:	201e      	movs	r0, #30
    2092:	f000 fcb9 	bl	2a08 <noise>
	while(sound_timer);
    2096:	4a15      	ldr	r2, [pc, #84]	; (20ec <main+0x5b2>)
    2098:	8813      	ldrh	r3, [r2, #0]
    209a:	b29b      	uxth	r3, r3
    209c:	2b00      	cmp	r3, #0
    209e:	d1fb      	bne.n	2098 <main+0x55e>
    20a0:	e76d      	b.n	1f7e <main+0x444>
			print("C (D5#)\n");
    20a2:	4630      	mov	r0, r6
    20a4:	f000 ff20 	bl	2ee8 <print>
			freq=622;
    20a8:	f240 236e 	movw	r3, #622	; 0x26e
    20ac:	9302      	str	r3, [sp, #8]
    20ae:	e7b1      	b.n	2014 <main+0x4da>
    20b0:	20002708 	.word	0x20002708
    20b4:	00003f24 	.word	0x00003f24
    20b8:	200001c8 	.word	0x200001c8
    20bc:	00003f44 	.word	0x00003f44
    20c0:	00003f5c 	.word	0x00003f5c
    20c4:	00003f7c 	.word	0x00003f7c
    20c8:	00003f9c 	.word	0x00003f9c
    20cc:	00003fc8 	.word	0x00003fc8
    20d0:	00003fa8 	.word	0x00003fa8
    20d4:	00003f84 	.word	0x00003f84
    20d8:	00003fd4 	.word	0x00003fd4
    20dc:	00003f90 	.word	0x00003f90
    20e0:	00003fb4 	.word	0x00003fb4
    20e4:	00003fc0 	.word	0x00003fc0
    20e8:	00003fdc 	.word	0x00003fdc
    20ec:	20004e98 	.word	0x20004e98

000020f0 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20f0:	283b      	cmp	r0, #59	; 0x3b
    20f2:	dc0d      	bgt.n	2110 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    20f4:	1143      	asrs	r3, r0, #5
    20f6:	009b      	lsls	r3, r3, #2
    20f8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    20fc:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    2100:	6819      	ldr	r1, [r3, #0]
    2102:	f000 001f 	and.w	r0, r0, #31
    2106:	2201      	movs	r2, #1
    2108:	fa02 f000 	lsl.w	r0, r2, r0
    210c:	4308      	orrs	r0, r1
    210e:	6018      	str	r0, [r3, #0]
    2110:	4770      	bx	lr

00002112 <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    2112:	283b      	cmp	r0, #59	; 0x3b
    2114:	dc08      	bgt.n	2128 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    2116:	1142      	asrs	r2, r0, #5
    2118:	f000 001f 	and.w	r0, r0, #31
    211c:	2301      	movs	r3, #1
    211e:	fa03 f000 	lsl.w	r0, r3, r0
    2122:	4b02      	ldr	r3, [pc, #8]	; (212c <disable_interrupt+0x1a>)
    2124:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    2128:	4770      	bx	lr
    212a:	bf00      	nop
    212c:	e000e180 	.word	0xe000e180

00002130 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    2130:	283b      	cmp	r0, #59	; 0x3b
    2132:	dc09      	bgt.n	2148 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    2134:	1142      	asrs	r2, r0, #5
    2136:	4b05      	ldr	r3, [pc, #20]	; (214c <get_pending+0x1c>)
    2138:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    213c:	f000 031f 	and.w	r3, r0, #31
    2140:	2001      	movs	r0, #1
    2142:	4098      	lsls	r0, r3
    2144:	4010      	ands	r0, r2
    2146:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    2148:	2000      	movs	r0, #0
}
    214a:	4770      	bx	lr
    214c:	e000e280 	.word	0xe000e280

00002150 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    2150:	283b      	cmp	r0, #59	; 0x3b
    2152:	dc0c      	bgt.n	216e <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    2154:	1143      	asrs	r3, r0, #5
    2156:	009b      	lsls	r3, r3, #2
    2158:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    215c:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2160:	681a      	ldr	r2, [r3, #0]
    2162:	f000 031f 	and.w	r3, r0, #31
    2166:	2001      	movs	r0, #1
    2168:	4098      	lsls	r0, r3
    216a:	4010      	ands	r0, r2
    216c:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    216e:	2000      	movs	r0, #0
}
    2170:	4770      	bx	lr

00002172 <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    2172:	283b      	cmp	r0, #59	; 0x3b
    2174:	dc0d      	bgt.n	2192 <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    2176:	1143      	asrs	r3, r0, #5
    2178:	009b      	lsls	r3, r3, #2
    217a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    217e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2182:	6819      	ldr	r1, [r3, #0]
    2184:	f000 001f 	and.w	r0, r0, #31
    2188:	2201      	movs	r2, #1
    218a:	fa02 f000 	lsl.w	r0, r2, r0
    218e:	4308      	orrs	r0, r1
    2190:	6018      	str	r0, [r3, #0]
    2192:	4770      	bx	lr

00002194 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2194:	283b      	cmp	r0, #59	; 0x3b
    2196:	dc08      	bgt.n	21aa <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    2198:	1142      	asrs	r2, r0, #5
    219a:	f000 001f 	and.w	r0, r0, #31
    219e:	2301      	movs	r3, #1
    21a0:	fa03 f000 	lsl.w	r0, r3, r0
    21a4:	4b01      	ldr	r3, [pc, #4]	; (21ac <clear_pending+0x18>)
    21a6:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    21aa:	4770      	bx	lr
    21ac:	e000e280 	.word	0xe000e280

000021b0 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    21b0:	283b      	cmp	r0, #59	; 0x3b
    21b2:	d90c      	bls.n	21ce <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    21b4:	f100 030f 	add.w	r3, r0, #15
    21b8:	2b0e      	cmp	r3, #14
    21ba:	d807      	bhi.n	21cc <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    21bc:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    21c0:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    21c4:	30fc      	adds	r0, #252	; 0xfc
    21c6:	0109      	lsls	r1, r1, #4
    21c8:	4b04      	ldr	r3, [pc, #16]	; (21dc <set_int_priority+0x2c>)
    21ca:	54c1      	strb	r1, [r0, r3]
    21cc:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    21ce:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    21d2:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    21d6:	0109      	lsls	r1, r1, #4
    21d8:	7001      	strb	r1, [r0, #0]
    21da:	4770      	bx	lr
    21dc:	e000ed18 	.word	0xe000ed18

000021e0 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    21e0:	f010 0f03 	tst.w	r0, #3
    21e4:	d113      	bne.n	220e <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    21e6:	4b0c      	ldr	r3, [pc, #48]	; (2218 <leap_year+0x38>)
    21e8:	fba3 2300 	umull	r2, r3, r3, r0
    21ec:	095b      	lsrs	r3, r3, #5
    21ee:	2264      	movs	r2, #100	; 0x64
    21f0:	fb02 0313 	mls	r3, r2, r3, r0
    21f4:	b96b      	cbnz	r3, 2212 <leap_year+0x32>
    21f6:	4b08      	ldr	r3, [pc, #32]	; (2218 <leap_year+0x38>)
    21f8:	fba3 2300 	umull	r2, r3, r3, r0
    21fc:	09db      	lsrs	r3, r3, #7
    21fe:	f44f 72c8 	mov.w	r2, #400	; 0x190
    2202:	fb02 0013 	mls	r0, r2, r3, r0
    2206:	fab0 f080 	clz	r0, r0
    220a:	0940      	lsrs	r0, r0, #5
    220c:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    220e:	2000      	movs	r0, #0
    2210:	4770      	bx	lr
		return 1;
    2212:	2001      	movs	r0, #1
}
    2214:	4770      	bx	lr
    2216:	bf00      	nop
    2218:	51eb851f 	.word	0x51eb851f

0000221c <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    221c:	4b07      	ldr	r3, [pc, #28]	; (223c <sec_per_month+0x20>)
    221e:	5c5a      	ldrb	r2, [r3, r1]
    2220:	4b07      	ldr	r3, [pc, #28]	; (2240 <sec_per_month+0x24>)
    2222:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    2226:	2902      	cmp	r1, #2
    2228:	d001      	beq.n	222e <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    222a:	4618      	mov	r0, r3
    222c:	4770      	bx	lr
	if (month==2 && leap){
    222e:	2800      	cmp	r0, #0
    2230:	d0fb      	beq.n	222a <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    2232:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    2236:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    223a:	e7f6      	b.n	222a <sec_per_month+0xe>
    223c:	00003d18 	.word	0x00003d18
    2240:	00015180 	.word	0x00015180

00002244 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    2244:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2248:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    224a:	4b37      	ldr	r3, [pc, #220]	; (2328 <get_date_time+0xe4>)
    224c:	699a      	ldr	r2, [r3, #24]
    224e:	69dc      	ldr	r4, [r3, #28]
    2250:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    2254:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2258:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    225a:	f7ff ffc1 	bl	21e0 <leap_year>
    225e:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2260:	4d32      	ldr	r5, [pc, #200]	; (232c <get_date_time+0xe8>)
    2262:	4f33      	ldr	r7, [pc, #204]	; (2330 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    2264:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 2344 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2268:	e00e      	b.n	2288 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    226a:	4444      	add	r4, r8
    226c:	e005      	b.n	227a <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    226e:	42ac      	cmp	r4, r5
    2270:	d90f      	bls.n	2292 <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    2272:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    2276:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    227a:	8930      	ldrh	r0, [r6, #8]
    227c:	3001      	adds	r0, #1
    227e:	b280      	uxth	r0, r0
    2280:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    2282:	f7ff ffad 	bl	21e0 <leap_year>
    2286:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2288:	f1b9 0f00 	cmp.w	r9, #0
    228c:	d1ef      	bne.n	226e <get_date_time+0x2a>
    228e:	42bc      	cmp	r4, r7
    2290:	d8eb      	bhi.n	226a <get_date_time+0x26>
	}//while
	dt->month=1;
    2292:	8873      	ldrh	r3, [r6, #2]
    2294:	2201      	movs	r2, #1
    2296:	f362 1389 	bfi	r3, r2, #6, #4
    229a:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    229c:	f362 0345 	bfi	r3, r2, #1, #5
    22a0:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    22a2:	6833      	ldr	r3, [r6, #0]
    22a4:	f36f 3310 	bfc	r3, #12, #5
    22a8:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    22aa:	f36f 138b 	bfc	r3, #6, #6
    22ae:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    22b0:	f36f 0305 	bfc	r3, #0, #6
    22b4:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    22b6:	e005      	b.n	22c4 <get_date_time+0x80>
		dt->month++;
    22b8:	3501      	adds	r5, #1
    22ba:	8873      	ldrh	r3, [r6, #2]
    22bc:	f365 1389 	bfi	r3, r5, #6, #4
    22c0:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    22c2:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    22c4:	8875      	ldrh	r5, [r6, #2]
    22c6:	f3c5 1583 	ubfx	r5, r5, #6, #4
    22ca:	4629      	mov	r1, r5
    22cc:	4648      	mov	r0, r9
    22ce:	f7ff ffa5 	bl	221c <sec_per_month>
    22d2:	4284      	cmp	r4, r0
    22d4:	d8f0      	bhi.n	22b8 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    22d6:	4a17      	ldr	r2, [pc, #92]	; (2334 <get_date_time+0xf0>)
    22d8:	fba2 3204 	umull	r3, r2, r2, r4
    22dc:	0c12      	lsrs	r2, r2, #16
    22de:	1c51      	adds	r1, r2, #1
    22e0:	78b3      	ldrb	r3, [r6, #2]
    22e2:	f361 0345 	bfi	r3, r1, #1, #5
    22e6:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    22e8:	4b13      	ldr	r3, [pc, #76]	; (2338 <get_date_time+0xf4>)
    22ea:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    22ee:	4c13      	ldr	r4, [pc, #76]	; (233c <get_date_time+0xf8>)
    22f0:	fba4 3402 	umull	r3, r4, r4, r2
    22f4:	0ae4      	lsrs	r4, r4, #11
    22f6:	6833      	ldr	r3, [r6, #0]
    22f8:	f364 3310 	bfi	r3, r4, #12, #5
    22fc:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    22fe:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2302:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    2306:	4a0e      	ldr	r2, [pc, #56]	; (2340 <get_date_time+0xfc>)
    2308:	fba2 1204 	umull	r1, r2, r2, r4
    230c:	0952      	lsrs	r2, r2, #5
    230e:	f362 138b 	bfi	r3, r2, #6, #6
    2312:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    2314:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2318:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    231c:	f364 0305 	bfi	r3, r4, #0, #6
    2320:	7033      	strb	r3, [r6, #0]
    2322:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    2326:	bf00      	nop
    2328:	40002800 	.word	0x40002800
    232c:	01e284ff 	.word	0x01e284ff
    2330:	01e1337f 	.word	0x01e1337f
    2334:	c22e4507 	.word	0xc22e4507
    2338:	00015180 	.word	0x00015180
    233c:	91a2b3c5 	.word	0x91a2b3c5
    2340:	88888889 	.word	0x88888889
    2344:	fe1ecc80 	.word	0xfe1ecc80

00002348 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    2348:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    234c:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    234e:	8903      	ldrh	r3, [r0, #8]
    2350:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2354:	4293      	cmp	r3, r2
    2356:	d857      	bhi.n	2408 <set_date_time+0xc0>
    2358:	f240 70b2 	movw	r0, #1970	; 0x7b2
    235c:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    2360:	f7ff ff3e 	bl	21e0 <leap_year>
    2364:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    2366:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    2368:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    236c:	f3c6 1683 	ubfx	r6, r6, #6, #4
    2370:	2e01      	cmp	r6, #1
    2372:	d908      	bls.n	2386 <set_date_time+0x3e>
    2374:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    2376:	4629      	mov	r1, r5
    2378:	4638      	mov	r0, r7
    237a:	f7ff ff4f 	bl	221c <sec_per_month>
    237e:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    2380:	3501      	adds	r5, #1
    2382:	42b5      	cmp	r5, r6
    2384:	d1f7      	bne.n	2376 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    2386:	f8d8 2000 	ldr.w	r2, [r8]
    238a:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    238e:	f8b8 2000 	ldrh.w	r2, [r8]
    2392:	f3c2 1285 	ubfx	r2, r2, #6, #6
    2396:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    239a:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    239c:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    23a0:	fb01 2203 	mla	r2, r1, r3, r2
    23a4:	f898 3000 	ldrb.w	r3, [r8]
    23a8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    23ac:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    23ae:	f898 3002 	ldrb.w	r3, [r8, #2]
    23b2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    23b6:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    23b8:	4928      	ldr	r1, [pc, #160]	; (245c <set_date_time+0x114>)
    23ba:	fb01 2303 	mla	r3, r1, r3, r2
    23be:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    23c0:	4a27      	ldr	r2, [pc, #156]	; (2460 <set_date_time+0x118>)
    23c2:	69d3      	ldr	r3, [r2, #28]
    23c4:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    23c8:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    23ca:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    23ce:	6813      	ldr	r3, [r2, #0]
    23d0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    23d4:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    23d6:	4b23      	ldr	r3, [pc, #140]	; (2464 <set_date_time+0x11c>)
    23d8:	685a      	ldr	r2, [r3, #4]
    23da:	f042 0210 	orr.w	r2, r2, #16
    23de:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    23e0:	0c22      	lsrs	r2, r4, #16
    23e2:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    23e4:	b2a4      	uxth	r4, r4
    23e6:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    23e8:	685a      	ldr	r2, [r3, #4]
    23ea:	f022 0210 	bic.w	r2, r2, #16
    23ee:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    23f0:	461a      	mov	r2, r3
    23f2:	6853      	ldr	r3, [r2, #4]
    23f4:	f013 0f20 	tst.w	r3, #32
    23f8:	d0fb      	beq.n	23f2 <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    23fa:	4a1b      	ldr	r2, [pc, #108]	; (2468 <set_date_time+0x120>)
    23fc:	6813      	ldr	r3, [r2, #0]
    23fe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2402:	6013      	str	r3, [r2, #0]
    2404:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    2408:	f640 023a 	movw	r2, #2106	; 0x83a
    240c:	4293      	cmp	r3, r2
    240e:	d90c      	bls.n	242a <set_date_time+0xe2>
    2410:	4616      	mov	r6, r2
    2412:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    2416:	4610      	mov	r0, r2
    2418:	f7ff fee2 	bl	21e0 <leap_year>
    241c:	4607      	mov	r7, r0
    241e:	2400      	movs	r4, #0
    2420:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    2424:	f8df 9044 	ldr.w	r9, [pc, #68]	; 246c <set_date_time+0x124>
    2428:	e00e      	b.n	2448 <set_date_time+0x100>
	leap=leap_year(dt->year);
    242a:	8906      	ldrh	r6, [r0, #8]
    242c:	4630      	mov	r0, r6
    242e:	f7ff fed7 	bl	21e0 <leap_year>
    2432:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    2434:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2438:	429e      	cmp	r6, r3
    243a:	d8f0      	bhi.n	241e <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    243c:	2400      	movs	r4, #0
    243e:	e793      	b.n	2368 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    2440:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    2442:	3501      	adds	r5, #1
    2444:	42b5      	cmp	r5, r6
    2446:	d28f      	bcs.n	2368 <set_date_time+0x20>
		if (leap_year(i)){
    2448:	4628      	mov	r0, r5
    244a:	f7ff fec9 	bl	21e0 <leap_year>
    244e:	2800      	cmp	r0, #0
    2450:	d0f6      	beq.n	2440 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    2452:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    2456:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    245a:	e7f2      	b.n	2442 <set_date_time+0xfa>
    245c:	00015180 	.word	0x00015180
    2460:	40021000 	.word	0x40021000
    2464:	40002800 	.word	0x40002800
    2468:	40007000 	.word	0x40007000
    246c:	01e13380 	.word	0x01e13380

00002470 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    2470:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    2472:	4b35      	ldr	r3, [pc, #212]	; (2548 <rtc_init+0xd8>)
    2474:	685a      	ldr	r2, [r3, #4]
    2476:	f64a 2355 	movw	r3, #43605	; 0xaa55
    247a:	429a      	cmp	r2, r3
    247c:	d05c      	beq.n	2538 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    247e:	4b33      	ldr	r3, [pc, #204]	; (254c <rtc_init+0xdc>)
    2480:	69da      	ldr	r2, [r3, #28]
    2482:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2486:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2488:	4c31      	ldr	r4, [pc, #196]	; (2550 <rtc_init+0xe0>)
    248a:	6822      	ldr	r2, [r4, #0]
    248c:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2490:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    2492:	6a1a      	ldr	r2, [r3, #32]
    2494:	f042 0201 	orr.w	r2, r2, #1
    2498:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    249a:	461a      	mov	r2, r3
    249c:	6a13      	ldr	r3, [r2, #32]
    249e:	f013 0f02 	tst.w	r3, #2
    24a2:	d0fb      	beq.n	249c <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    24a4:	4a29      	ldr	r2, [pc, #164]	; (254c <rtc_init+0xdc>)
    24a6:	6a13      	ldr	r3, [r2, #32]
    24a8:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    24ac:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    24ae:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    24b2:	6853      	ldr	r3, [r2, #4]
    24b4:	f013 0f08 	tst.w	r3, #8
    24b8:	d0fb      	beq.n	24b2 <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    24ba:	4a26      	ldr	r2, [pc, #152]	; (2554 <rtc_init+0xe4>)
    24bc:	6853      	ldr	r3, [r2, #4]
    24be:	f013 0f20 	tst.w	r3, #32
    24c2:	d0fb      	beq.n	24bc <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    24c4:	4a23      	ldr	r2, [pc, #140]	; (2554 <rtc_init+0xe4>)
    24c6:	6853      	ldr	r3, [r2, #4]
    24c8:	f043 0310 	orr.w	r3, r3, #16
    24cc:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    24ce:	6853      	ldr	r3, [r2, #4]
    24d0:	f013 0f20 	tst.w	r3, #32
    24d4:	d0fb      	beq.n	24ce <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    24d6:	4a1f      	ldr	r2, [pc, #124]	; (2554 <rtc_init+0xe4>)
    24d8:	6813      	ldr	r3, [r2, #0]
    24da:	4319      	orrs	r1, r3
    24dc:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    24de:	6853      	ldr	r3, [r2, #4]
    24e0:	f013 0f20 	tst.w	r3, #32
    24e4:	d0fb      	beq.n	24de <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    24e6:	03c2      	lsls	r2, r0, #15
    24e8:	481b      	ldr	r0, [pc, #108]	; (2558 <rtc_init+0xe8>)
    24ea:	fba0 3202 	umull	r3, r2, r0, r2
    24ee:	0992      	lsrs	r2, r2, #6
    24f0:	3a01      	subs	r2, #1
    24f2:	b291      	uxth	r1, r2
    24f4:	4b17      	ldr	r3, [pc, #92]	; (2554 <rtc_init+0xe4>)
    24f6:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    24f8:	4619      	mov	r1, r3
    24fa:	684b      	ldr	r3, [r1, #4]
    24fc:	f013 0f20 	tst.w	r3, #32
    2500:	d0fb      	beq.n	24fa <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    2502:	f3c2 4203 	ubfx	r2, r2, #16, #4
    2506:	4b13      	ldr	r3, [pc, #76]	; (2554 <rtc_init+0xe4>)
    2508:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    250a:	461a      	mov	r2, r3
    250c:	6853      	ldr	r3, [r2, #4]
    250e:	f013 0f20 	tst.w	r3, #32
    2512:	d0fb      	beq.n	250c <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    2514:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2518:	4b0b      	ldr	r3, [pc, #44]	; (2548 <rtc_init+0xd8>)
    251a:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    251c:	4a0d      	ldr	r2, [pc, #52]	; (2554 <rtc_init+0xe4>)
    251e:	6853      	ldr	r3, [r2, #4]
    2520:	f023 0310 	bic.w	r3, r3, #16
    2524:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    2526:	6853      	ldr	r3, [r2, #4]
    2528:	f013 0f20 	tst.w	r3, #32
    252c:	d0fb      	beq.n	2526 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    252e:	4a08      	ldr	r2, [pc, #32]	; (2550 <rtc_init+0xe0>)
    2530:	6813      	ldr	r3, [r2, #0]
    2532:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2536:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    2538:	210f      	movs	r1, #15
    253a:	2003      	movs	r0, #3
    253c:	f7ff fe38 	bl	21b0 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    2540:	2003      	movs	r0, #3
    2542:	f7ff fdd5 	bl	20f0 <enable_interrupt>
    2546:	bd10      	pop	{r4, pc}
    2548:	40006c00 	.word	0x40006c00
    254c:	40021000 	.word	0x40021000
    2550:	40007000 	.word	0x40007000
    2554:	40002800 	.word	0x40002800
    2558:	10624dd3 	.word	0x10624dd3

0000255c <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    255c:	4b06      	ldr	r3, [pc, #24]	; (2578 <reset_backup_domain+0x1c>)
    255e:	69da      	ldr	r2, [r3, #28]
    2560:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2564:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    2566:	6a1a      	ldr	r2, [r3, #32]
    2568:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    256c:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    256e:	6a1a      	ldr	r2, [r3, #32]
    2570:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    2574:	621a      	str	r2, [r3, #32]
    2576:	4770      	bx	lr
    2578:	40021000 	.word	0x40021000

0000257c <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    257c:	4a27      	ldr	r2, [pc, #156]	; (261c <rtc_clock_trim+0xa0>)
    257e:	69d3      	ldr	r3, [r2, #28]
    2580:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2584:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    2586:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    258a:	6853      	ldr	r3, [r2, #4]
    258c:	f013 0f08 	tst.w	r3, #8
    2590:	d0fb      	beq.n	258a <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2592:	4a23      	ldr	r2, [pc, #140]	; (2620 <rtc_clock_trim+0xa4>)
    2594:	6813      	ldr	r3, [r2, #0]
    2596:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    259a:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    259c:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    25a0:	6853      	ldr	r3, [r2, #4]
    25a2:	f043 0310 	orr.w	r3, r3, #16
    25a6:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    25a8:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    25ac:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    25ae:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    25b2:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    25b4:	b9b8      	cbnz	r0, 25e6 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    25b6:	2200      	movs	r2, #0
    25b8:	4b1a      	ldr	r3, [pc, #104]	; (2624 <rtc_clock_trim+0xa8>)
    25ba:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    25bc:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    25c0:	f647 71ff 	movw	r1, #32767	; 0x7fff
    25c4:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    25c6:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    25c8:	4a17      	ldr	r2, [pc, #92]	; (2628 <rtc_clock_trim+0xac>)
    25ca:	6853      	ldr	r3, [r2, #4]
    25cc:	f023 0310 	bic.w	r3, r3, #16
    25d0:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    25d2:	6853      	ldr	r3, [r2, #4]
    25d4:	f013 0f20 	tst.w	r3, #32
    25d8:	d0fb      	beq.n	25d2 <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    25da:	4a11      	ldr	r2, [pc, #68]	; (2620 <rtc_clock_trim+0xa4>)
    25dc:	6813      	ldr	r3, [r2, #0]
    25de:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    25e2:	6013      	str	r3, [r2, #0]
    25e4:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    25e6:	2800      	cmp	r0, #0
    25e8:	dd06      	ble.n	25f8 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    25ea:	4b0e      	ldr	r3, [pc, #56]	; (2624 <rtc_clock_trim+0xa8>)
    25ec:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    25ee:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    25f2:	4310      	orrs	r0, r2
    25f4:	62d8      	str	r0, [r3, #44]	; 0x2c
    25f6:	e7e7      	b.n	25c8 <rtc_clock_trim+0x4c>
		trim=-trim;
    25f8:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    25fa:	2100      	movs	r1, #0
    25fc:	4b09      	ldr	r3, [pc, #36]	; (2624 <rtc_clock_trim+0xa8>)
    25fe:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    2600:	f64f 73ff 	movw	r3, #65535	; 0xffff
    2604:	287f      	cmp	r0, #127	; 0x7f
    2606:	bfd4      	ite	le
    2608:	1a18      	suble	r0, r3, r0
    260a:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    260e:	f3c0 000e 	ubfx	r0, r0, #0, #15
    2612:	4a05      	ldr	r2, [pc, #20]	; (2628 <rtc_clock_trim+0xac>)
    2614:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2616:	6091      	str	r1, [r2, #8]
    2618:	e7d6      	b.n	25c8 <rtc_clock_trim+0x4c>
    261a:	bf00      	nop
    261c:	40021000 	.word	0x40021000
    2620:	40007000 	.word	0x40007000
    2624:	40006c00 	.word	0x40006c00
    2628:	40002800 	.word	0x40002800

0000262c <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    262c:	4770      	bx	lr

0000262e <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    262e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    2632:	4607      	mov	r7, r0
    2634:	4688      	mov	r8, r1
    2636:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    2638:	2400      	movs	r4, #0
	i=0;
    263a:	4626      	mov	r6, r4
	while (digit(date[i])){
    263c:	e008      	b.n	2650 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    263e:	3601      	adds	r6, #1
    2640:	3501      	adds	r5, #1
    2642:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2646:	f899 3000 	ldrb.w	r3, [r9]
    264a:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    264e:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2650:	46a9      	mov	r9, r5
    2652:	7828      	ldrb	r0, [r5, #0]
    2654:	f7fe fe69 	bl	132a <digit>
    2658:	4682      	mov	sl, r0
    265a:	2800      	cmp	r0, #0
    265c:	d1ef      	bne.n	263e <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    265e:	2e03      	cmp	r6, #3
    2660:	dd02      	ble.n	2668 <str_to_date+0x3a>
    2662:	782b      	ldrb	r3, [r5, #0]
    2664:	2b2f      	cmp	r3, #47	; 0x2f
    2666:	d002      	beq.n	266e <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    2668:	4650      	mov	r0, sl
    266a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    266e:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    2672:	3601      	adds	r6, #1
    2674:	19bd      	adds	r5, r7, r6
	n=0;
    2676:	4604      	mov	r4, r0
	while (digit(date[i])){
    2678:	e008      	b.n	268c <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    267a:	3601      	adds	r6, #1
    267c:	3501      	adds	r5, #1
    267e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2682:	f899 3000 	ldrb.w	r3, [r9]
    2686:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    268a:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    268c:	46a9      	mov	r9, r5
    268e:	7828      	ldrb	r0, [r5, #0]
    2690:	f7fe fe4b 	bl	132a <digit>
    2694:	4682      	mov	sl, r0
    2696:	2800      	cmp	r0, #0
    2698:	d1ef      	bne.n	267a <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    269a:	2e06      	cmp	r6, #6
    269c:	dde4      	ble.n	2668 <str_to_date+0x3a>
    269e:	782b      	ldrb	r3, [r5, #0]
    26a0:	2b2f      	cmp	r3, #47	; 0x2f
    26a2:	d1e1      	bne.n	2668 <str_to_date+0x3a>
	dt->month=n;
    26a4:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    26a8:	f364 1389 	bfi	r3, r4, #6, #4
    26ac:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    26b0:	1c74      	adds	r4, r6, #1
    26b2:	443e      	add	r6, r7
	while (digit(date[i])){
    26b4:	e008      	b.n	26c8 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    26b6:	3401      	adds	r4, #1
    26b8:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    26bc:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    26c0:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    26c4:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    26c8:	7870      	ldrb	r0, [r6, #1]
    26ca:	f7fe fe2e 	bl	132a <digit>
    26ce:	2800      	cmp	r0, #0
    26d0:	d1f1      	bne.n	26b6 <str_to_date+0x88>
	if (i<10) return 0;
    26d2:	2c09      	cmp	r4, #9
    26d4:	dd08      	ble.n	26e8 <str_to_date+0xba>
	dt->day=n;
    26d6:	f898 3002 	ldrb.w	r3, [r8, #2]
    26da:	f36a 0345 	bfi	r3, sl, #1, #5
    26de:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    26e2:	f04f 0a01 	mov.w	sl, #1
    26e6:	e7bf      	b.n	2668 <str_to_date+0x3a>
	if (i<10) return 0;
    26e8:	4682      	mov	sl, r0
    26ea:	e7bd      	b.n	2668 <str_to_date+0x3a>

000026ec <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    26ec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    26f0:	4607      	mov	r7, r0
    26f2:	4688      	mov	r8, r1
    26f4:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    26f6:	2400      	movs	r4, #0
	i=0;
    26f8:	4626      	mov	r6, r4
	while (digit(time[i])){
    26fa:	e00a      	b.n	2712 <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    26fc:	3601      	adds	r6, #1
    26fe:	3501      	adds	r5, #1
    2700:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2704:	0064      	lsls	r4, r4, #1
    2706:	3c30      	subs	r4, #48	; 0x30
    2708:	f899 3000 	ldrb.w	r3, [r9]
    270c:	441c      	add	r4, r3
    270e:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2712:	46a9      	mov	r9, r5
    2714:	7828      	ldrb	r0, [r5, #0]
    2716:	f7fe fe08 	bl	132a <digit>
    271a:	4603      	mov	r3, r0
    271c:	2800      	cmp	r0, #0
    271e:	d1ed      	bne.n	26fc <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    2720:	2c17      	cmp	r4, #23
    2722:	d802      	bhi.n	272a <str_to_time+0x3e>
    2724:	782a      	ldrb	r2, [r5, #0]
    2726:	2a3a      	cmp	r2, #58	; 0x3a
    2728:	d002      	beq.n	2730 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    272a:	4618      	mov	r0, r3
    272c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    2730:	f8d8 3000 	ldr.w	r3, [r8]
    2734:	f364 3310 	bfi	r3, r4, #12, #5
    2738:	f8c8 3000 	str.w	r3, [r8]
	i++;
    273c:	3601      	adds	r6, #1
    273e:	19bd      	adds	r5, r7, r6
	n=0;
    2740:	2400      	movs	r4, #0
	while (digit(time[i])){
    2742:	e00a      	b.n	275a <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    2744:	3601      	adds	r6, #1
    2746:	3501      	adds	r5, #1
    2748:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    274c:	0064      	lsls	r4, r4, #1
    274e:	3c30      	subs	r4, #48	; 0x30
    2750:	f899 3000 	ldrb.w	r3, [r9]
    2754:	441c      	add	r4, r3
    2756:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    275a:	46a9      	mov	r9, r5
    275c:	7828      	ldrb	r0, [r5, #0]
    275e:	f7fe fde4 	bl	132a <digit>
    2762:	4603      	mov	r3, r0
    2764:	2800      	cmp	r0, #0
    2766:	d1ed      	bne.n	2744 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    2768:	2c3b      	cmp	r4, #59	; 0x3b
    276a:	d8de      	bhi.n	272a <str_to_time+0x3e>
    276c:	782a      	ldrb	r2, [r5, #0]
    276e:	2a3a      	cmp	r2, #58	; 0x3a
    2770:	d1db      	bne.n	272a <str_to_time+0x3e>
	dt->minute=n;
    2772:	f8b8 3000 	ldrh.w	r3, [r8]
    2776:	f364 138b 	bfi	r3, r4, #6, #6
    277a:	f8a8 3000 	strh.w	r3, [r8]
    277e:	443e      	add	r6, r7
	n=0;
    2780:	2400      	movs	r4, #0
	while (digit(time[i])){
    2782:	e008      	b.n	2796 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2784:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2788:	0064      	lsls	r4, r4, #1
    278a:	3c30      	subs	r4, #48	; 0x30
    278c:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2790:	441c      	add	r4, r3
    2792:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2796:	7870      	ldrb	r0, [r6, #1]
    2798:	f7fe fdc7 	bl	132a <digit>
    279c:	4603      	mov	r3, r0
    279e:	2800      	cmp	r0, #0
    27a0:	d1f0      	bne.n	2784 <str_to_time+0x98>
	if (n>59) return 0;
    27a2:	2c3b      	cmp	r4, #59	; 0x3b
    27a4:	d8c1      	bhi.n	272a <str_to_time+0x3e>
	dt->second=n;
    27a6:	f898 3000 	ldrb.w	r3, [r8]
    27aa:	f364 0305 	bfi	r3, r4, #0, #6
    27ae:	f888 3000 	strb.w	r3, [r8]
	return 1;
    27b2:	2301      	movs	r3, #1
    27b4:	e7b9      	b.n	272a <str_to_time+0x3e>

000027b6 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    27b6:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    27b8:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    27ba:	4b23      	ldr	r3, [pc, #140]	; (2848 <date_str+0x92>)
    27bc:	fba3 4302 	umull	r4, r3, r3, r2
    27c0:	099b      	lsrs	r3, r3, #6
    27c2:	f103 0430 	add.w	r4, r3, #48	; 0x30
    27c6:	700c      	strb	r4, [r1, #0]
	n%=1000;
    27c8:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    27cc:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    27d0:	4b1e      	ldr	r3, [pc, #120]	; (284c <date_str+0x96>)
    27d2:	fba3 4302 	umull	r4, r3, r3, r2
    27d6:	095b      	lsrs	r3, r3, #5
    27d8:	f103 0430 	add.w	r4, r3, #48	; 0x30
    27dc:	704c      	strb	r4, [r1, #1]
	n%=100;
    27de:	2464      	movs	r4, #100	; 0x64
    27e0:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    27e4:	4a1a      	ldr	r2, [pc, #104]	; (2850 <date_str+0x9a>)
    27e6:	fba2 5403 	umull	r5, r4, r2, r3
    27ea:	08e4      	lsrs	r4, r4, #3
    27ec:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27f0:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    27f2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    27f6:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27fa:	3330      	adds	r3, #48	; 0x30
    27fc:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    27fe:	262f      	movs	r6, #47	; 0x2f
    2800:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    2802:	8843      	ldrh	r3, [r0, #2]
    2804:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    2808:	fba2 5403 	umull	r5, r4, r2, r3
    280c:	08e4      	lsrs	r4, r4, #3
    280e:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2812:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    2814:	00a5      	lsls	r5, r4, #2
    2816:	442c      	add	r4, r5
    2818:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    281c:	3330      	adds	r3, #48	; 0x30
    281e:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    2820:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    2822:	7880      	ldrb	r0, [r0, #2]
    2824:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    2828:	fba2 3200 	umull	r3, r2, r2, r0
    282c:	08d3      	lsrs	r3, r2, #3
    282e:	f103 0230 	add.w	r2, r3, #48	; 0x30
    2832:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    2834:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2838:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    283c:	3330      	adds	r3, #48	; 0x30
    283e:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    2840:	2300      	movs	r3, #0
    2842:	728b      	strb	r3, [r1, #10]

}
    2844:	bc70      	pop	{r4, r5, r6}
    2846:	4770      	bx	lr
    2848:	10624dd3 	.word	0x10624dd3
    284c:	51eb851f 	.word	0x51eb851f
    2850:	cccccccd 	.word	0xcccccccd

00002854 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    2854:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    2856:	6802      	ldr	r2, [r0, #0]
    2858:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    285c:	4b18      	ldr	r3, [pc, #96]	; (28c0 <time_str+0x6c>)
    285e:	fba3 5402 	umull	r5, r4, r3, r2
    2862:	08e4      	lsrs	r4, r4, #3
    2864:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2868:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    286a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    286e:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2872:	3230      	adds	r2, #48	; 0x30
    2874:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    2876:	253a      	movs	r5, #58	; 0x3a
    2878:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    287a:	8802      	ldrh	r2, [r0, #0]
    287c:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2880:	fba3 6402 	umull	r6, r4, r3, r2
    2884:	08e4      	lsrs	r4, r4, #3
    2886:	f104 0630 	add.w	r6, r4, #48	; 0x30
    288a:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    288c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2890:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2894:	3230      	adds	r2, #48	; 0x30
    2896:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2898:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    289a:	7802      	ldrb	r2, [r0, #0]
    289c:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    28a0:	fba3 0302 	umull	r0, r3, r3, r2
    28a4:	08db      	lsrs	r3, r3, #3
    28a6:	f103 0030 	add.w	r0, r3, #48	; 0x30
    28aa:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    28ac:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    28b0:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    28b4:	3330      	adds	r3, #48	; 0x30
    28b6:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    28b8:	2300      	movs	r3, #0
    28ba:	720b      	strb	r3, [r1, #8]
}
    28bc:	bc70      	pop	{r4, r5, r6}
    28be:	4770      	bx	lr
    28c0:	cccccccd 	.word	0xcccccccd

000028c4 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    28c4:	b500      	push	{lr}
    28c6:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    28c8:	a801      	add	r0, sp, #4
    28ca:	f7ff fcbb 	bl	2244 <get_date_time>
	t.fields.second=dt.second/2;
    28ce:	f89d 3004 	ldrb.w	r3, [sp, #4]
    28d2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    28d6:	2000      	movs	r0, #0
    28d8:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    28dc:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    28e0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    28e4:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    28e8:	9b01      	ldr	r3, [sp, #4]
    28ea:	f3c3 3304 	ubfx	r3, r3, #12, #5
    28ee:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    28f2:	f89d 3006 	ldrb.w	r3, [sp, #6]
    28f6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    28fa:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    28fe:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    2902:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2906:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    290a:	f89d 300c 	ldrb.w	r3, [sp, #12]
    290e:	3344      	adds	r3, #68	; 0x44
    2910:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    2914:	b005      	add	sp, #20
    2916:	f85d fb04 	ldr.w	pc, [sp], #4

0000291a <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    291a:	4b07      	ldr	r3, [pc, #28]	; (2938 <RTC_handler+0x1e>)
    291c:	685b      	ldr	r3, [r3, #4]
    291e:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    2922:	bf1c      	itt	ne
    2924:	4b04      	ldrne	r3, [pc, #16]	; (2938 <RTC_handler+0x1e>)
    2926:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    2928:	4b03      	ldr	r3, [pc, #12]	; (2938 <RTC_handler+0x1e>)
    292a:	685b      	ldr	r3, [r3, #4]
    292c:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    2930:	bf1c      	itt	ne
    2932:	4b01      	ldrne	r3, [pc, #4]	; (2938 <RTC_handler+0x1e>)
    2934:	685b      	ldrne	r3, [r3, #4]
    2936:	4770      	bx	lr
    2938:	40002800 	.word	0x40002800

0000293c <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    293c:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    293e:	4b12      	ldr	r3, [pc, #72]	; (2988 <sound_init+0x4c>)
    2940:	685a      	ldr	r2, [r3, #4]
    2942:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    2946:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    2948:	685a      	ldr	r2, [r3, #4]
    294a:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    294e:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    2950:	220a      	movs	r2, #10
    2952:	4611      	mov	r1, r2
    2954:	480d      	ldr	r0, [pc, #52]	; (298c <sound_init+0x50>)
    2956:	f7fe fe13 	bl	1580 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    295a:	4a0d      	ldr	r2, [pc, #52]	; (2990 <sound_init+0x54>)
    295c:	69d3      	ldr	r3, [r2, #28]
    295e:	f043 0301 	orr.w	r3, r3, #1
    2962:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2964:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2968:	2278      	movs	r2, #120	; 0x78
    296a:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    296c:	f44f 7280 	mov.w	r2, #256	; 0x100
    2970:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    2972:	2209      	movs	r2, #9
    2974:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    2976:	2100      	movs	r1, #0
    2978:	201c      	movs	r0, #28
    297a:	f7ff fc19 	bl	21b0 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    297e:	201c      	movs	r0, #28
    2980:	f7ff fbb6 	bl	20f0 <enable_interrupt>
    2984:	bd08      	pop	{r3, pc}
    2986:	bf00      	nop
    2988:	40010000 	.word	0x40010000
    298c:	40010c00 	.word	0x40010c00
    2990:	40021000 	.word	0x40021000

00002994 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2994:	4b07      	ldr	r3, [pc, #28]	; (29b4 <tone+0x20>)
    2996:	fbb3 f0f0 	udiv	r0, r3, r0
    299a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    299e:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    29a0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    29a2:	0852      	lsrs	r2, r2, #1
    29a4:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    29a6:	681a      	ldr	r2, [r3, #0]
    29a8:	f042 0201 	orr.w	r2, r2, #1
    29ac:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    29ae:	4b02      	ldr	r3, [pc, #8]	; (29b8 <tone+0x24>)
    29b0:	8019      	strh	r1, [r3, #0]
    29b2:	4770      	bx	lr
    29b4:	006d3d32 	.word	0x006d3d32
    29b8:	20004e98 	.word	0x20004e98

000029bc <beep>:
}

void beep(uint16_t duration){
    29bc:	b508      	push	{r3, lr}
    tone(1000,duration);
    29be:	4601      	mov	r1, r0
    29c0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    29c4:	f7ff ffe6 	bl	2994 <tone>
    29c8:	bd08      	pop	{r3, pc}

000029ca <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    29ca:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    29ce:	681a      	ldr	r2, [r3, #0]
    29d0:	f022 0201 	bic.w	r2, r2, #1
    29d4:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    29d6:	68da      	ldr	r2, [r3, #12]
    29d8:	f022 0201 	bic.w	r2, r2, #1
    29dc:	60da      	str	r2, [r3, #12]
    29de:	4770      	bx	lr

000029e0 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    29e0:	b510      	push	{r4, lr}
    29e2:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    29e4:	b289      	uxth	r1, r1
    29e6:	4b06      	ldr	r3, [pc, #24]	; (2a00 <key_tone+0x20>)
    29e8:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    29ec:	f7ff ffd2 	bl	2994 <tone>
    if (wait_end) while (sound_timer);
    29f0:	b124      	cbz	r4, 29fc <key_tone+0x1c>
    29f2:	4a04      	ldr	r2, [pc, #16]	; (2a04 <key_tone+0x24>)
    29f4:	8813      	ldrh	r3, [r2, #0]
    29f6:	b29b      	uxth	r3, r3
    29f8:	2b00      	cmp	r3, #0
    29fa:	d1fb      	bne.n	29f4 <key_tone+0x14>
    29fc:	bd10      	pop	{r4, pc}
    29fe:	bf00      	nop
    2a00:	00003d28 	.word	0x00003d28
    2a04:	20004e98 	.word	0x20004e98

00002a08 <noise>:
}

// produit un bruit 
void noise(int length){
    2a08:	b510      	push	{r4, lr}
    2a0a:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    2a0c:	4b07      	ldr	r3, [pc, #28]	; (2a2c <noise+0x24>)
    2a0e:	6818      	ldr	r0, [r3, #0]
    2a10:	f7fd fcdc 	bl	3cc <srand>
    tone(6000,length);
    2a14:	b2a1      	uxth	r1, r4
    2a16:	f241 7070 	movw	r0, #6000	; 0x1770
    2a1a:	f7ff ffbb 	bl	2994 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    2a1e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2a22:	68d3      	ldr	r3, [r2, #12]
    2a24:	f043 0301 	orr.w	r3, r3, #1
    2a28:	60d3      	str	r3, [r2, #12]
    2a2a:	bd10      	pop	{r4, pc}
    2a2c:	20004e94 	.word	0x20004e94

00002a30 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    2a30:	4668      	mov	r0, sp
    2a32:	f020 0107 	bic.w	r1, r0, #7
    2a36:	468d      	mov	sp, r1
    2a38:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    2a3a:	f7fd fccd 	bl	3d8 <rand>
    2a3e:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    2a42:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2a46:	6a13      	ldr	r3, [r2, #32]
    2a48:	bf14      	ite	ne
    2a4a:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    2a4e:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    2a52:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    2a54:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2a58:	6913      	ldr	r3, [r2, #16]
    2a5a:	f023 0301 	bic.w	r3, r3, #1
    2a5e:	6113      	str	r3, [r2, #16]
}
    2a60:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    2a64:	4685      	mov	sp, r0
    2a66:	4770      	bx	lr

00002a68 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    2a68:	6803      	ldr	r3, [r0, #0]
    2a6a:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2a6e:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2a70:	6803      	ldr	r3, [r0, #0]
    2a72:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2a76:	6001      	str	r1, [r0, #0]
    2a78:	4770      	bx	lr

00002a7a <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2a7a:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2a7c:	4a2f      	ldr	r2, [pc, #188]	; (2b3c <spi_config_port+0xc2>)
    2a7e:	6993      	ldr	r3, [r2, #24]
    2a80:	f043 0301 	orr.w	r3, r3, #1
    2a84:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2a86:	4b2e      	ldr	r3, [pc, #184]	; (2b40 <spi_config_port+0xc6>)
    2a88:	4298      	cmp	r0, r3
    2a8a:	d01a      	beq.n	2ac2 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2a8c:	4a2b      	ldr	r2, [pc, #172]	; (2b3c <spi_config_port+0xc2>)
    2a8e:	6993      	ldr	r3, [r2, #24]
    2a90:	f043 0308 	orr.w	r3, r3, #8
    2a94:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2a96:	4c2b      	ldr	r4, [pc, #172]	; (2b44 <spi_config_port+0xca>)
    2a98:	2203      	movs	r2, #3
    2a9a:	2102      	movs	r1, #2
    2a9c:	4620      	mov	r0, r4
    2a9e:	f7fe fd6f 	bl	1580 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2aa2:	220b      	movs	r2, #11
    2aa4:	210d      	movs	r1, #13
    2aa6:	4620      	mov	r0, r4
    2aa8:	f7fe fd6a 	bl	1580 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2aac:	2204      	movs	r2, #4
    2aae:	210e      	movs	r1, #14
    2ab0:	4620      	mov	r0, r4
    2ab2:	f7fe fd65 	bl	1580 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2ab6:	220b      	movs	r2, #11
    2ab8:	210f      	movs	r1, #15
    2aba:	4620      	mov	r0, r4
    2abc:	f7fe fd60 	bl	1580 <config_pin>
    2ac0:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    2ac2:	b9c9      	cbnz	r1, 2af8 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2ac4:	6993      	ldr	r3, [r2, #24]
    2ac6:	f043 0304 	orr.w	r3, r3, #4
    2aca:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2acc:	4c1e      	ldr	r4, [pc, #120]	; (2b48 <spi_config_port+0xce>)
    2ace:	2203      	movs	r2, #3
    2ad0:	2104      	movs	r1, #4
    2ad2:	4620      	mov	r0, r4
    2ad4:	f7fe fd54 	bl	1580 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2ad8:	220b      	movs	r2, #11
    2ada:	2105      	movs	r1, #5
    2adc:	4620      	mov	r0, r4
    2ade:	f7fe fd4f 	bl	1580 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2ae2:	2204      	movs	r2, #4
    2ae4:	2106      	movs	r1, #6
    2ae6:	4620      	mov	r0, r4
    2ae8:	f7fe fd4a 	bl	1580 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2aec:	220b      	movs	r2, #11
    2aee:	2107      	movs	r1, #7
    2af0:	4620      	mov	r0, r4
    2af2:	f7fe fd45 	bl	1580 <config_pin>
    2af6:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2af8:	4a10      	ldr	r2, [pc, #64]	; (2b3c <spi_config_port+0xc2>)
    2afa:	6993      	ldr	r3, [r2, #24]
    2afc:	f043 030d 	orr.w	r3, r3, #13
    2b00:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2b02:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    2b06:	6853      	ldr	r3, [r2, #4]
    2b08:	f043 0301 	orr.w	r3, r3, #1
    2b0c:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2b0e:	2203      	movs	r2, #3
    2b10:	210f      	movs	r1, #15
    2b12:	480d      	ldr	r0, [pc, #52]	; (2b48 <spi_config_port+0xce>)
    2b14:	f7fe fd34 	bl	1580 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2b18:	4c0a      	ldr	r4, [pc, #40]	; (2b44 <spi_config_port+0xca>)
    2b1a:	220b      	movs	r2, #11
    2b1c:	2103      	movs	r1, #3
    2b1e:	4620      	mov	r0, r4
    2b20:	f7fe fd2e 	bl	1580 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2b24:	2204      	movs	r2, #4
    2b26:	4611      	mov	r1, r2
    2b28:	4620      	mov	r0, r4
    2b2a:	f7fe fd29 	bl	1580 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2b2e:	220b      	movs	r2, #11
    2b30:	2105      	movs	r1, #5
    2b32:	4620      	mov	r0, r4
    2b34:	f7fe fd24 	bl	1580 <config_pin>
    2b38:	bd10      	pop	{r4, pc}
    2b3a:	bf00      	nop
    2b3c:	40021000 	.word	0x40021000
    2b40:	40013000 	.word	0x40013000
    2b44:	40010c00 	.word	0x40010c00
    2b48:	40010800 	.word	0x40010800

00002b4c <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2b4c:	b570      	push	{r4, r5, r6, lr}
    2b4e:	4604      	mov	r4, r0
    2b50:	460d      	mov	r5, r1
    2b52:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2b54:	4619      	mov	r1, r3
    2b56:	f7ff ff90 	bl	2a7a <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2b5a:	4b0c      	ldr	r3, [pc, #48]	; (2b8c <spi_init+0x40>)
    2b5c:	429c      	cmp	r4, r3
    2b5e:	d00e      	beq.n	2b7e <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2b60:	4a0b      	ldr	r2, [pc, #44]	; (2b90 <spi_init+0x44>)
    2b62:	69d3      	ldr	r3, [r2, #28]
    2b64:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2b68:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    2b6a:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2b6c:	4629      	mov	r1, r5
    2b6e:	4620      	mov	r0, r4
    2b70:	f7ff ff7a 	bl	2a68 <spi_baudrate>
	_spi_enable(channel);
    2b74:	6823      	ldr	r3, [r4, #0]
    2b76:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2b7a:	6023      	str	r3, [r4, #0]
    2b7c:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2b7e:	4a04      	ldr	r2, [pc, #16]	; (2b90 <spi_init+0x44>)
    2b80:	6993      	ldr	r3, [r2, #24]
    2b82:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2b86:	6193      	str	r3, [r2, #24]
    2b88:	e7ef      	b.n	2b6a <spi_init+0x1e>
    2b8a:	bf00      	nop
    2b8c:	40013000 	.word	0x40013000
    2b90:	40021000 	.word	0x40021000

00002b94 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2b94:	6883      	ldr	r3, [r0, #8]
    2b96:	f013 0f02 	tst.w	r3, #2
    2b9a:	d0fb      	beq.n	2b94 <spi_send>
	channel->DR=b;
    2b9c:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b9e:	6883      	ldr	r3, [r0, #8]
    2ba0:	f013 0f01 	tst.w	r3, #1
    2ba4:	d0fb      	beq.n	2b9e <spi_send+0xa>
	return (uint8_t)channel->DR;
    2ba6:	68c0      	ldr	r0, [r0, #12]
}
    2ba8:	b2c0      	uxtb	r0, r0
    2baa:	4770      	bx	lr

00002bac <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2bac:	6883      	ldr	r3, [r0, #8]
    2bae:	f013 0f02 	tst.w	r3, #2
    2bb2:	d0fb      	beq.n	2bac <spi_receive>
	channel->DR=255;
    2bb4:	23ff      	movs	r3, #255	; 0xff
    2bb6:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2bb8:	6883      	ldr	r3, [r0, #8]
    2bba:	f013 0f01 	tst.w	r3, #1
    2bbe:	d0fb      	beq.n	2bb8 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2bc0:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2bc2:	b2c0      	uxtb	r0, r0
    2bc4:	4770      	bx	lr

00002bc6 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2bc6:	b14a      	cbz	r2, 2bdc <spi_send_block+0x16>
    2bc8:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2bca:	f811 3b01 	ldrb.w	r3, [r1], #1
    2bce:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2bd0:	6883      	ldr	r3, [r0, #8]
    2bd2:	f013 0f02 	tst.w	r3, #2
    2bd6:	d0fb      	beq.n	2bd0 <spi_send_block+0xa>
	while (count){
    2bd8:	428a      	cmp	r2, r1
    2bda:	d1f6      	bne.n	2bca <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2bdc:	6883      	ldr	r3, [r0, #8]
    2bde:	f013 0f80 	tst.w	r3, #128	; 0x80
    2be2:	d1fb      	bne.n	2bdc <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2be4:	68c3      	ldr	r3, [r0, #12]
    2be6:	4770      	bx	lr

00002be8 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2be8:	b16a      	cbz	r2, 2c06 <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2bea:	b410      	push	{r4}
    2bec:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2bee:	2400      	movs	r4, #0
    2bf0:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2bf2:	6883      	ldr	r3, [r0, #8]
    2bf4:	f013 0f01 	tst.w	r3, #1
    2bf8:	d0fb      	beq.n	2bf2 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2bfa:	68c3      	ldr	r3, [r0, #12]
    2bfc:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2c00:	428a      	cmp	r2, r1
    2c02:	d1f5      	bne.n	2bf0 <spi_receive_block+0x8>
		count--;
	}
}
    2c04:	bc10      	pop	{r4}
    2c06:	4770      	bx	lr

00002c08 <reset_mcu>:
	_reset_mcu();
    2c08:	4a01      	ldr	r2, [pc, #4]	; (2c10 <reset_mcu+0x8>)
    2c0a:	4b02      	ldr	r3, [pc, #8]	; (2c14 <reset_mcu+0xc>)
    2c0c:	601a      	str	r2, [r3, #0]
    2c0e:	bf00      	nop
    2c10:	05fa0004 	.word	0x05fa0004
    2c14:	e000ed0c 	.word	0xe000ed0c

00002c18 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2c18:	b508      	push	{r3, lr}
    2c1a:	460c      	mov	r4, r1
	print(msg);
    2c1c:	f000 f964 	bl	2ee8 <print>
	print("\nat address ");
    2c20:	4813      	ldr	r0, [pc, #76]	; (2c70 <print_fault+0x58>)
    2c22:	f000 f961 	bl	2ee8 <print>
	if (adr) {
    2c26:	b9ec      	cbnz	r4, 2c64 <print_fault+0x4c>
	put_char(CR);
    2c28:	200d      	movs	r0, #13
    2c2a:	f000 f8bf 	bl	2dac <put_char>
	print("\nUFSR=");
    2c2e:	4811      	ldr	r0, [pc, #68]	; (2c74 <print_fault+0x5c>)
    2c30:	f000 f95a 	bl	2ee8 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2c34:	4c10      	ldr	r4, [pc, #64]	; (2c78 <print_fault+0x60>)
    2c36:	6820      	ldr	r0, [r4, #0]
    2c38:	2110      	movs	r1, #16
    2c3a:	40c8      	lsrs	r0, r1
    2c3c:	f000 f96f 	bl	2f1e <print_int>
	print("\nBFSR=");
    2c40:	480e      	ldr	r0, [pc, #56]	; (2c7c <print_fault+0x64>)
    2c42:	f000 f951 	bl	2ee8 <print>
	print_int(CFSR->fsr.busFault,16);
    2c46:	6820      	ldr	r0, [r4, #0]
    2c48:	2110      	movs	r1, #16
    2c4a:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2c4e:	f000 f966 	bl	2f1e <print_int>
	print("\nMMFSR=");
    2c52:	480b      	ldr	r0, [pc, #44]	; (2c80 <print_fault+0x68>)
    2c54:	f000 f948 	bl	2ee8 <print>
	print_int(CFSR->fsr.mmFault,16);
    2c58:	6820      	ldr	r0, [r4, #0]
    2c5a:	2110      	movs	r1, #16
    2c5c:	b2c0      	uxtb	r0, r0
    2c5e:	f000 f95e 	bl	2f1e <print_int>
    2c62:	e7fe      	b.n	2c62 <print_fault+0x4a>
		print_int(adr,16);
    2c64:	2110      	movs	r1, #16
    2c66:	4620      	mov	r0, r4
    2c68:	f000 f959 	bl	2f1e <print_int>
    2c6c:	e7dc      	b.n	2c28 <print_fault+0x10>
    2c6e:	bf00      	nop
    2c70:	0000409c 	.word	0x0000409c
    2c74:	000040ac 	.word	0x000040ac
    2c78:	e000ed28 	.word	0xe000ed28
    2c7c:	000040b4 	.word	0x000040b4
    2c80:	000040bc 	.word	0x000040bc

00002c84 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2c84:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2c88:	b083      	sub	sp, #12
    2c8a:	9001      	str	r0, [sp, #4]
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2c8c:	18cb      	adds	r3, r1, r3
    2c8e:	9300      	str	r3, [sp, #0]
    2c90:	4299      	cmp	r1, r3
    2c92:	da22      	bge.n	2cda <draw_char+0x56>
    2c94:	460e      	mov	r6, r1
    2c96:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2c98:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2c9c:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c9e:	f8df a040 	ldr.w	sl, [pc, #64]	; 2ce0 <draw_char+0x5c>
		byte=*glyph++;
    2ca2:	f81b 8f01 	ldrb.w	r8, [fp, #1]!
		for (x0=x;x0<(x+w);x0++){
    2ca6:	9c01      	ldr	r4, [sp, #4]
    2ca8:	42bc      	cmp	r4, r7
    2caa:	da12      	bge.n	2cd2 <draw_char+0x4e>
    2cac:	2580      	movs	r5, #128	; 0x80
			gfx_blit(x0,y0,c,BIT_SET);
    2cae:	f04f 0904 	mov.w	r9, #4
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2cb2:	ea18 0f05 	tst.w	r8, r5
    2cb6:	bf14      	ite	ne
    2cb8:	f89a 2001 	ldrbne.w	r2, [sl, #1]
    2cbc:	f89a 2000 	ldrbeq.w	r2, [sl]
			gfx_blit(x0,y0,c,BIT_SET);
    2cc0:	464b      	mov	r3, r9
    2cc2:	4631      	mov	r1, r6
    2cc4:	4620      	mov	r0, r4
    2cc6:	f7fe fc9b 	bl	1600 <gfx_blit>
			mask>>=1;
    2cca:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2ccc:	3401      	adds	r4, #1
    2cce:	42bc      	cmp	r4, r7
    2cd0:	d1ef      	bne.n	2cb2 <draw_char+0x2e>
	for (y0=y;y0<(y+h);y0++){
    2cd2:	3601      	adds	r6, #1
    2cd4:	9b00      	ldr	r3, [sp, #0]
    2cd6:	429e      	cmp	r6, r3
    2cd8:	d1e3      	bne.n	2ca2 <draw_char+0x1e>
		}
	}
}
    2cda:	b003      	add	sp, #12
    2cdc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2ce0:	20000220 	.word	0x20000220

00002ce4 <font_color>:
	text_colors[FG]=color&0xf;
    2ce4:	f000 000f 	and.w	r0, r0, #15
    2ce8:	4b01      	ldr	r3, [pc, #4]	; (2cf0 <font_color+0xc>)
    2cea:	7058      	strb	r0, [r3, #1]
    2cec:	4770      	bx	lr
    2cee:	bf00      	nop
    2cf0:	20000220 	.word	0x20000220

00002cf4 <bg_color>:
	text_colors[BG]=color&0xf;
    2cf4:	f000 000f 	and.w	r0, r0, #15
    2cf8:	4b01      	ldr	r3, [pc, #4]	; (2d00 <bg_color+0xc>)
    2cfa:	7018      	strb	r0, [r3, #0]
    2cfc:	4770      	bx	lr
    2cfe:	bf00      	nop
    2d00:	20000220 	.word	0x20000220

00002d04 <select_font>:
	font=font_id;
    2d04:	4b01      	ldr	r3, [pc, #4]	; (2d0c <select_font+0x8>)
    2d06:	7098      	strb	r0, [r3, #2]
    2d08:	4770      	bx	lr
    2d0a:	bf00      	nop
    2d0c:	20000220 	.word	0x20000220

00002d10 <get_font>:
}
    2d10:	4b01      	ldr	r3, [pc, #4]	; (2d18 <get_font+0x8>)
    2d12:	7898      	ldrb	r0, [r3, #2]
    2d14:	4770      	bx	lr
    2d16:	bf00      	nop
    2d18:	20000220 	.word	0x20000220

00002d1c <new_line>:
void new_line(){
    2d1c:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2d1e:	4b21      	ldr	r3, [pc, #132]	; (2da4 <new_line+0x88>)
    2d20:	781b      	ldrb	r3, [r3, #0]
    2d22:	2b00      	cmp	r3, #0
    2d24:	d138      	bne.n	2d98 <new_line+0x7c>
		xpos=0;
    2d26:	2200      	movs	r2, #0
    2d28:	4b1e      	ldr	r3, [pc, #120]	; (2da4 <new_line+0x88>)
    2d2a:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2d2c:	f000 fb9e 	bl	346c <get_video_params>
		switch (font){
    2d30:	4b1d      	ldr	r3, [pc, #116]	; (2da8 <new_line+0x8c>)
    2d32:	789b      	ldrb	r3, [r3, #2]
    2d34:	2b01      	cmp	r3, #1
    2d36:	d011      	beq.n	2d5c <new_line+0x40>
    2d38:	b113      	cbz	r3, 2d40 <new_line+0x24>
    2d3a:	2b02      	cmp	r3, #2
    2d3c:	d01d      	beq.n	2d7a <new_line+0x5e>
    2d3e:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2d40:	4b18      	ldr	r3, [pc, #96]	; (2da4 <new_line+0x88>)
    2d42:	789b      	ldrb	r3, [r3, #2]
    2d44:	1d99      	adds	r1, r3, #6
    2d46:	89c2      	ldrh	r2, [r0, #14]
    2d48:	3a05      	subs	r2, #5
    2d4a:	4291      	cmp	r1, r2
    2d4c:	dc02      	bgt.n	2d54 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2d4e:	4a15      	ldr	r2, [pc, #84]	; (2da4 <new_line+0x88>)
    2d50:	7091      	strb	r1, [r2, #2]
    2d52:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2d54:	2006      	movs	r0, #6
    2d56:	f7fe fcb3 	bl	16c0 <gfx_scroll_up>
    2d5a:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2d5c:	4b11      	ldr	r3, [pc, #68]	; (2da4 <new_line+0x88>)
    2d5e:	789b      	ldrb	r3, [r3, #2]
    2d60:	f103 010a 	add.w	r1, r3, #10
    2d64:	89c2      	ldrh	r2, [r0, #14]
    2d66:	3a09      	subs	r2, #9
    2d68:	4291      	cmp	r1, r2
    2d6a:	dc02      	bgt.n	2d72 <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2d6c:	4a0d      	ldr	r2, [pc, #52]	; (2da4 <new_line+0x88>)
    2d6e:	7091      	strb	r1, [r2, #2]
    2d70:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2d72:	200a      	movs	r0, #10
    2d74:	f7fe fca4 	bl	16c0 <gfx_scroll_up>
    2d78:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2d7a:	4b0a      	ldr	r3, [pc, #40]	; (2da4 <new_line+0x88>)
    2d7c:	789b      	ldrb	r3, [r3, #2]
    2d7e:	f103 0108 	add.w	r1, r3, #8
    2d82:	89c2      	ldrh	r2, [r0, #14]
    2d84:	3a07      	subs	r2, #7
    2d86:	4291      	cmp	r1, r2
    2d88:	dc02      	bgt.n	2d90 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2d8a:	4a06      	ldr	r2, [pc, #24]	; (2da4 <new_line+0x88>)
    2d8c:	7091      	strb	r1, [r2, #2]
    2d8e:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2d90:	2008      	movs	r0, #8
    2d92:	f7fe fc95 	bl	16c0 <gfx_scroll_up>
    2d96:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    2d98:	210a      	movs	r1, #10
    2d9a:	2000      	movs	r0, #0
    2d9c:	f000 fcd8 	bl	3750 <usart_putc>
    2da0:	bd08      	pop	{r3, pc}
    2da2:	bf00      	nop
    2da4:	200006b8 	.word	0x200006b8
    2da8:	20000220 	.word	0x20000220

00002dac <put_char>:

void put_char(uint8_t c){
    2dac:	b530      	push	{r4, r5, lr}
    2dae:	b083      	sub	sp, #12
	if (console==LOCAL){
    2db0:	4b2e      	ldr	r3, [pc, #184]	; (2e6c <put_char+0xc0>)
    2db2:	781b      	ldrb	r3, [r3, #0]
    2db4:	2b00      	cmp	r3, #0
    2db6:	d153      	bne.n	2e60 <put_char+0xb4>
		switch(font){
    2db8:	4b2d      	ldr	r3, [pc, #180]	; (2e70 <put_char+0xc4>)
    2dba:	789b      	ldrb	r3, [r3, #2]
    2dbc:	2b01      	cmp	r3, #1
    2dbe:	d036      	beq.n	2e2e <put_char+0x82>
    2dc0:	b1e3      	cbz	r3, 2dfc <put_char+0x50>
    2dc2:	2b02      	cmp	r3, #2
    2dc4:	d150      	bne.n	2e68 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2dc6:	f1a0 0320 	sub.w	r3, r0, #32
    2dca:	b2db      	uxtb	r3, r3
    2dcc:	2b64      	cmp	r3, #100	; 0x64
    2dce:	d84b      	bhi.n	2e68 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2dd0:	4c26      	ldr	r4, [pc, #152]	; (2e6c <put_char+0xc0>)
    2dd2:	78a1      	ldrb	r1, [r4, #2]
    2dd4:	7865      	ldrb	r5, [r4, #1]
    2dd6:	3820      	subs	r0, #32
    2dd8:	4b26      	ldr	r3, [pc, #152]	; (2e74 <put_char+0xc8>)
    2dda:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2dde:	9300      	str	r3, [sp, #0]
    2de0:	2308      	movs	r3, #8
    2de2:	2206      	movs	r2, #6
    2de4:	4628      	mov	r0, r5
    2de6:	f7ff ff4d 	bl	2c84 <draw_char>
				xpos+=CHAR_WIDTH;
    2dea:	7863      	ldrb	r3, [r4, #1]
    2dec:	3306      	adds	r3, #6
    2dee:	b2db      	uxtb	r3, r3
    2df0:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2df2:	2baf      	cmp	r3, #175	; 0xaf
    2df4:	d938      	bls.n	2e68 <put_char+0xbc>
					new_line();
    2df6:	f7ff ff91 	bl	2d1c <new_line>
    2dfa:	e035      	b.n	2e68 <put_char+0xbc>
			if (c<16){
    2dfc:	280f      	cmp	r0, #15
    2dfe:	d833      	bhi.n	2e68 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2e00:	4c1a      	ldr	r4, [pc, #104]	; (2e6c <put_char+0xc0>)
    2e02:	78a1      	ldrb	r1, [r4, #2]
    2e04:	7865      	ldrb	r5, [r4, #1]
    2e06:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2e0a:	4b1b      	ldr	r3, [pc, #108]	; (2e78 <put_char+0xcc>)
    2e0c:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2e10:	9300      	str	r3, [sp, #0]
    2e12:	2306      	movs	r3, #6
    2e14:	2204      	movs	r2, #4
    2e16:	4628      	mov	r0, r5
    2e18:	f7ff ff34 	bl	2c84 <draw_char>
				xpos+=SHEX_WIDTH;
    2e1c:	7863      	ldrb	r3, [r4, #1]
    2e1e:	3304      	adds	r3, #4
    2e20:	b2db      	uxtb	r3, r3
    2e22:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2e24:	2bb1      	cmp	r3, #177	; 0xb1
    2e26:	d91f      	bls.n	2e68 <put_char+0xbc>
					new_line();
    2e28:	f7ff ff78 	bl	2d1c <new_line>
    2e2c:	e01c      	b.n	2e68 <put_char+0xbc>
			if (c<16){
    2e2e:	280f      	cmp	r0, #15
    2e30:	d81a      	bhi.n	2e68 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2e32:	4c0e      	ldr	r4, [pc, #56]	; (2e6c <put_char+0xc0>)
    2e34:	78a1      	ldrb	r1, [r4, #2]
    2e36:	7865      	ldrb	r5, [r4, #1]
    2e38:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2e3c:	4b0f      	ldr	r3, [pc, #60]	; (2e7c <put_char+0xd0>)
    2e3e:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2e42:	9300      	str	r3, [sp, #0]
    2e44:	230a      	movs	r3, #10
    2e46:	2208      	movs	r2, #8
    2e48:	4628      	mov	r0, r5
    2e4a:	f7ff ff1b 	bl	2c84 <draw_char>
				xpos+=LHEX_WIDTH;
    2e4e:	7863      	ldrb	r3, [r4, #1]
    2e50:	3308      	adds	r3, #8
    2e52:	b2db      	uxtb	r3, r3
    2e54:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2e56:	2bad      	cmp	r3, #173	; 0xad
    2e58:	d906      	bls.n	2e68 <put_char+0xbc>
					new_line();
    2e5a:	f7ff ff5f 	bl	2d1c <new_line>
    2e5e:	e003      	b.n	2e68 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2e60:	4601      	mov	r1, r0
    2e62:	2000      	movs	r0, #0
    2e64:	f000 fc74 	bl	3750 <usart_putc>
	}
}
    2e68:	b003      	add	sp, #12
    2e6a:	bd30      	pop	{r4, r5, pc}
    2e6c:	200006b8 	.word	0x200006b8
    2e70:	20000220 	.word	0x20000220
    2e74:	000038a0 	.word	0x000038a0
    2e78:	00003c68 	.word	0x00003c68
    2e7c:	00003bc8 	.word	0x00003bc8

00002e80 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2e80:	4b01      	ldr	r3, [pc, #4]	; (2e88 <set_cursor+0x8>)
    2e82:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2e84:	7099      	strb	r1, [r3, #2]
    2e86:	4770      	bx	lr
    2e88:	200006b8 	.word	0x200006b8

00002e8c <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2e8c:	4b03      	ldr	r3, [pc, #12]	; (2e9c <get_cursor+0x10>)
    2e8e:	785a      	ldrb	r2, [r3, #1]
    2e90:	7898      	ldrb	r0, [r3, #2]
    2e92:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2e96:	b280      	uxth	r0, r0
    2e98:	4770      	bx	lr
    2e9a:	bf00      	nop
    2e9c:	200006b8 	.word	0x200006b8

00002ea0 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2ea0:	4b0f      	ldr	r3, [pc, #60]	; (2ee0 <cursor_left+0x40>)
    2ea2:	789b      	ldrb	r3, [r3, #2]
    2ea4:	2b01      	cmp	r3, #1
    2ea6:	d00b      	beq.n	2ec0 <cursor_left+0x20>
    2ea8:	b113      	cbz	r3, 2eb0 <cursor_left+0x10>
    2eaa:	2b02      	cmp	r3, #2
    2eac:	d010      	beq.n	2ed0 <cursor_left+0x30>
    2eae:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2eb0:	4b0c      	ldr	r3, [pc, #48]	; (2ee4 <cursor_left+0x44>)
    2eb2:	785b      	ldrb	r3, [r3, #1]
    2eb4:	2b04      	cmp	r3, #4
    2eb6:	d412      	bmi.n	2ede <cursor_left+0x3e>
    2eb8:	3b04      	subs	r3, #4
    2eba:	4a0a      	ldr	r2, [pc, #40]	; (2ee4 <cursor_left+0x44>)
    2ebc:	7053      	strb	r3, [r2, #1]
    2ebe:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2ec0:	4b08      	ldr	r3, [pc, #32]	; (2ee4 <cursor_left+0x44>)
    2ec2:	785b      	ldrb	r3, [r3, #1]
    2ec4:	2b08      	cmp	r3, #8
    2ec6:	d40a      	bmi.n	2ede <cursor_left+0x3e>
    2ec8:	3b08      	subs	r3, #8
    2eca:	4a06      	ldr	r2, [pc, #24]	; (2ee4 <cursor_left+0x44>)
    2ecc:	7053      	strb	r3, [r2, #1]
    2ece:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2ed0:	4b04      	ldr	r3, [pc, #16]	; (2ee4 <cursor_left+0x44>)
    2ed2:	785b      	ldrb	r3, [r3, #1]
    2ed4:	2b06      	cmp	r3, #6
    2ed6:	d402      	bmi.n	2ede <cursor_left+0x3e>
    2ed8:	3b06      	subs	r3, #6
    2eda:	4a02      	ldr	r2, [pc, #8]	; (2ee4 <cursor_left+0x44>)
    2edc:	7053      	strb	r3, [r2, #1]
    2ede:	4770      	bx	lr
    2ee0:	20000220 	.word	0x20000220
    2ee4:	200006b8 	.word	0x200006b8

00002ee8 <print>:
void print(const char* str){
    2ee8:	b510      	push	{r4, lr}
    2eea:	4604      	mov	r4, r0
    while ((c=*str++)){
    2eec:	e001      	b.n	2ef2 <print+0xa>
            new_line();
    2eee:	f7ff ff15 	bl	2d1c <new_line>
    while ((c=*str++)){
    2ef2:	f814 0b01 	ldrb.w	r0, [r4], #1
    2ef6:	b158      	cbz	r0, 2f10 <print+0x28>
        switch(c){
    2ef8:	280a      	cmp	r0, #10
    2efa:	d0f8      	beq.n	2eee <print+0x6>
    2efc:	280d      	cmp	r0, #13
    2efe:	d0f6      	beq.n	2eee <print+0x6>
    2f00:	2808      	cmp	r0, #8
    2f02:	d002      	beq.n	2f0a <print+0x22>
            put_char(c);
    2f04:	f7ff ff52 	bl	2dac <put_char>
    2f08:	e7f3      	b.n	2ef2 <print+0xa>
            cursor_left();    
    2f0a:	f7ff ffc9 	bl	2ea0 <cursor_left>
            break;
    2f0e:	e7f0      	b.n	2ef2 <print+0xa>
}
    2f10:	bd10      	pop	{r4, pc}

00002f12 <println>:
void println(const char *text){
    2f12:	b508      	push	{r3, lr}
	print(text);
    2f14:	f7ff ffe8 	bl	2ee8 <print>
	new_line();
    2f18:	f7ff ff00 	bl	2d1c <new_line>
    2f1c:	bd08      	pop	{r3, pc}

00002f1e <print_int>:
void print_int(int i,uint8_t base){
    2f1e:	b530      	push	{r4, r5, lr}
    2f20:	b085      	sub	sp, #20
    fmt[15]=0;
    2f22:	2300      	movs	r3, #0
    2f24:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2f28:	2320      	movs	r3, #32
    2f2a:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2f2e:	1e02      	subs	r2, r0, #0
        i=-i;
    2f30:	bfba      	itte	lt
    2f32:	4252      	neglt	r2, r2
        sign=1;
    2f34:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2f36:	2500      	movge	r5, #0
    while (idx>1 && i){
    2f38:	b1aa      	cbz	r2, 2f66 <print_int+0x48>
    2f3a:	f10d 040e 	add.w	r4, sp, #14
    2f3e:	200e      	movs	r0, #14
        d=i%base;
    2f40:	fb92 f3f1 	sdiv	r3, r2, r1
    2f44:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2f48:	2b09      	cmp	r3, #9
    2f4a:	bfc8      	it	gt
    2f4c:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2f4e:	3801      	subs	r0, #1
    2f50:	3330      	adds	r3, #48	; 0x30
    2f52:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2f56:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2f5a:	2801      	cmp	r0, #1
    2f5c:	d007      	beq.n	2f6e <print_int+0x50>
    2f5e:	2a00      	cmp	r2, #0
    2f60:	d1ee      	bne.n	2f40 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2f62:	280e      	cmp	r0, #14
    2f64:	d103      	bne.n	2f6e <print_int+0x50>
    2f66:	2330      	movs	r3, #48	; 0x30
    2f68:	f88d 300d 	strb.w	r3, [sp, #13]
    2f6c:	200d      	movs	r0, #13
    if (base==10 && sign){
    2f6e:	290a      	cmp	r1, #10
    2f70:	d006      	beq.n	2f80 <print_int+0x62>
    }else if (base==16){
    2f72:	2910      	cmp	r1, #16
    2f74:	d00d      	beq.n	2f92 <print_int+0x74>
    print(&fmt[idx]);
    2f76:	4468      	add	r0, sp
    2f78:	f7ff ffb6 	bl	2ee8 <print>
}
    2f7c:	b005      	add	sp, #20
    2f7e:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2f80:	2d00      	cmp	r5, #0
    2f82:	d0f8      	beq.n	2f76 <print_int+0x58>
        fmt[--idx]='-';
    2f84:	3801      	subs	r0, #1
    2f86:	ab04      	add	r3, sp, #16
    2f88:	4403      	add	r3, r0
    2f8a:	222d      	movs	r2, #45	; 0x2d
    2f8c:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f90:	e7f1      	b.n	2f76 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2f92:	f010 0f01 	tst.w	r0, #1
    2f96:	d005      	beq.n	2fa4 <print_int+0x86>
    2f98:	3801      	subs	r0, #1
    2f9a:	ab04      	add	r3, sp, #16
    2f9c:	4403      	add	r3, r0
    2f9e:	2230      	movs	r2, #48	; 0x30
    2fa0:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2fa4:	3801      	subs	r0, #1
    2fa6:	ab04      	add	r3, sp, #16
    2fa8:	4403      	add	r3, r0
    2faa:	2224      	movs	r2, #36	; 0x24
    2fac:	f803 2c10 	strb.w	r2, [r3, #-16]
    2fb0:	e7e1      	b.n	2f76 <print_int+0x58>

00002fb2 <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2fb2:	b508      	push	{r3, lr}
	print("press button");
    2fb4:	4801      	ldr	r0, [pc, #4]	; (2fbc <prompt_btn+0xa>)
    2fb6:	f7ff ff97 	bl	2ee8 <print>
    2fba:	bd08      	pop	{r3, pc}
    2fbc:	00004108 	.word	0x00004108

00002fc0 <clear_screen>:
}

void clear_screen(){
    2fc0:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2fc2:	4b07      	ldr	r3, [pc, #28]	; (2fe0 <clear_screen+0x20>)
    2fc4:	781b      	ldrb	r3, [r3, #0]
    2fc6:	b123      	cbz	r3, 2fd2 <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    2fc8:	210c      	movs	r1, #12
    2fca:	2000      	movs	r0, #0
    2fcc:	f000 fbc0 	bl	3750 <usart_putc>
    2fd0:	bd08      	pop	{r3, pc}
		gfx_cls();
    2fd2:	f7fe fb61 	bl	1698 <gfx_cls>
		xpos=0;
    2fd6:	4b02      	ldr	r3, [pc, #8]	; (2fe0 <clear_screen+0x20>)
    2fd8:	2200      	movs	r2, #0
    2fda:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2fdc:	709a      	strb	r2, [r3, #2]
    2fde:	bd08      	pop	{r3, pc}
    2fe0:	200006b8 	.word	0x200006b8

00002fe4 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2fe4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x,y;
	uint8_t color=show?15:0;
    2fe6:	2800      	cmp	r0, #0
    2fe8:	bf14      	ite	ne
    2fea:	260f      	movne	r6, #15
    2fec:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2fee:	4b0a      	ldr	r3, [pc, #40]	; (3018 <show_cursor+0x34>)
    2ff0:	785c      	ldrb	r4, [r3, #1]
    2ff2:	1da3      	adds	r3, r4, #6
    2ff4:	429c      	cmp	r4, r3
    2ff6:	da0d      	bge.n	3014 <show_cursor+0x30>
			gfx_blit(x,ypos+CHAR_HEIGHT-1,color,BIT_SET);
    2ff8:	4d07      	ldr	r5, [pc, #28]	; (3018 <show_cursor+0x34>)
    2ffa:	2704      	movs	r7, #4
    2ffc:	78a9      	ldrb	r1, [r5, #2]
    2ffe:	463b      	mov	r3, r7
    3000:	4632      	mov	r2, r6
    3002:	3107      	adds	r1, #7
    3004:	4620      	mov	r0, r4
    3006:	f7fe fafb 	bl	1600 <gfx_blit>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    300a:	3401      	adds	r4, #1
    300c:	786b      	ldrb	r3, [r5, #1]
    300e:	3306      	adds	r3, #6
    3010:	42a3      	cmp	r3, r4
    3012:	dcf3      	bgt.n	2ffc <show_cursor+0x18>
    3014:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    3016:	bf00      	nop
    3018:	200006b8 	.word	0x200006b8

0000301c <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    301c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    3020:	f000 fa24 	bl	346c <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    3024:	4b0c      	ldr	r3, [pc, #48]	; (3058 <clear_line+0x3c>)
    3026:	789c      	ldrb	r4, [r3, #2]
    3028:	f104 0308 	add.w	r3, r4, #8
    302c:	429c      	cmp	r4, r3
    302e:	da10      	bge.n	3052 <clear_line+0x36>
    3030:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    3032:	f8df 8028 	ldr.w	r8, [pc, #40]	; 305c <clear_line+0x40>
    3036:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    3038:	4e07      	ldr	r6, [pc, #28]	; (3058 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    303a:	7a28      	ldrb	r0, [r5, #8]
    303c:	463a      	mov	r2, r7
    303e:	4601      	mov	r1, r0
    3040:	fb04 8000 	mla	r0, r4, r0, r8
    3044:	f7fe f9f3 	bl	142e <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    3048:	3401      	adds	r4, #1
    304a:	78b3      	ldrb	r3, [r6, #2]
    304c:	3308      	adds	r3, #8
    304e:	42a3      	cmp	r3, r4
    3050:	dcf3      	bgt.n	303a <clear_line+0x1e>
    3052:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    3056:	bf00      	nop
    3058:	200006b8 	.word	0x200006b8
    305c:	20002730 	.word	0x20002730

00003060 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    3060:	4b01      	ldr	r3, [pc, #4]	; (3068 <select_console+0x8>)
    3062:	7018      	strb	r0, [r3, #0]
    3064:	4770      	bx	lr
    3066:	bf00      	nop
    3068:	200006b8 	.word	0x200006b8

0000306c <get_char>:
}

//read a character from serial port
char get_char(){
    306c:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    306e:	2400      	movs	r4, #0
    3070:	4620      	mov	r0, r4
    3072:	f000 fb3b 	bl	36ec <usart_getc>
    3076:	2800      	cmp	r0, #0
    3078:	d0fa      	beq.n	3070 <get_char+0x4>
	return c;
}
    307a:	bd10      	pop	{r4, pc}

0000307c <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER3 CH3 for chroma reference signal
// sync output PORT A8.
//  video  PORT A0-A3
void tvout_init(){
    307c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x44443333; // video bits 0-3
    3080:	4c2e      	ldr	r4, [pc, #184]	; (313c <tvout_init+0xc0>)
    3082:	4b2f      	ldr	r3, [pc, #188]	; (3140 <tvout_init+0xc4>)
    3084:	6023      	str	r3, [r4, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    3086:	220a      	movs	r2, #10
    3088:	2108      	movs	r1, #8
    308a:	4620      	mov	r0, r4
    308c:	f7fe fa78 	bl	1580 <config_pin>
    PORTA->ODR=0;
    3090:	2500      	movs	r5, #0
    3092:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    3094:	4e2b      	ldr	r6, [pc, #172]	; (3144 <tvout_init+0xc8>)
    3096:	69b3      	ldr	r3, [r6, #24]
    3098:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    309c:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    309e:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    30a2:	f04f 0878 	mov.w	r8, #120	; 0x78
    30a6:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    30aa:	2301      	movs	r3, #1
    30ac:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    30ae:	2784      	movs	r7, #132	; 0x84
    30b0:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    30b2:	f241 13c5 	movw	r3, #4549	; 0x11c5
    30b6:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    30b8:	f44f 73a8 	mov.w	r3, #336	; 0x150
    30bc:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->EGR|=TMR_EGR_UG;
    30be:	6963      	ldr	r3, [r4, #20]
    30c0:	f043 0301 	orr.w	r3, r3, #1
    30c4:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    30c6:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    30ca:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    30cc:	6125      	str	r5, [r4, #16]
    set_int_priority(IRQ_TIM1_CC,0);
    30ce:	4629      	mov	r1, r5
    30d0:	201b      	movs	r0, #27
    30d2:	f7ff f86d 	bl	21b0 <set_int_priority>
    enable_interrupt(IRQ_TIM1_CC);
    30d6:	201b      	movs	r0, #27
    30d8:	f7ff f80a 	bl	20f0 <enable_interrupt>
    TMR1->DIER|=TMR_DIER_CC1IE;
    30dc:	68e3      	ldr	r3, [r4, #12]
    30de:	f043 0302 	orr.w	r3, r3, #2
    30e2:	60e3      	str	r3, [r4, #12]
    TMR1->CR1|=TMR_CR1_CEN; 
    30e4:	6823      	ldr	r3, [r4, #0]
    30e6:	f043 0301 	orr.w	r3, r3, #1
    30ea:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    30ec:	220a      	movs	r2, #10
    30ee:	4629      	mov	r1, r5
    30f0:	4815      	ldr	r0, [pc, #84]	; (3148 <tvout_init+0xcc>)
    30f2:	f7fe fa45 	bl	1580 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    30f6:	69f3      	ldr	r3, [r6, #28]
    30f8:	f043 0302 	orr.w	r3, r3, #2
    30fc:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    30fe:	4b13      	ldr	r3, [pc, #76]	; (314c <tvout_init+0xd0>)
    3100:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    3104:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    3106:	2213      	movs	r2, #19
    3108:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    310a:	220a      	movs	r2, #10
    310c:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    310e:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    3110:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    3114:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    3116:	695a      	ldr	r2, [r3, #20]
    3118:	f042 0201 	orr.w	r2, r2, #1
    311c:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    311e:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN;
    3120:	681a      	ldr	r2, [r3, #0]
    3122:	f042 0201 	orr.w	r2, r2, #1
    3126:	601a      	str	r2, [r3, #0]
    flags|=F_EVEN|F_VSYNC;
    3128:	4a09      	ldr	r2, [pc, #36]	; (3150 <tvout_init+0xd4>)
    312a:	8813      	ldrh	r3, [r2, #0]
    312c:	b29b      	uxth	r3, r3
    312e:	f043 0303 	orr.w	r3, r3, #3
    3132:	8013      	strh	r3, [r2, #0]
    scan_line=0;
    3134:	8055      	strh	r5, [r2, #2]
    task=VSYNC; 
    3136:	8095      	strh	r5, [r2, #4]
    3138:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    313c:	40010800 	.word	0x40010800
    3140:	44443333 	.word	0x44443333
    3144:	40021000 	.word	0x40021000
    3148:	40010c00 	.word	0x40010c00
    314c:	40000400 	.word	0x40000400
    3150:	200006bc 	.word	0x200006bc

00003154 <TIM1_CC_handler>:
                              "bne.n 1b\n\t"\
                              ::"r" (dly):"r2")

#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})

void __attribute__((__interrupt__,optimize("O1"))) TIM1_CC_handler(){
    3154:	4668      	mov	r0, sp
    3156:	f020 0107 	bic.w	r1, r0, #7
    315a:	468d      	mov	sp, r1
    315c:	b531      	push	{r0, r4, r5, lr}
    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    scan_line++;
    315e:	4a85      	ldr	r2, [pc, #532]	; (3374 <TIM1_CC_handler+0x220>)
    3160:	8853      	ldrh	r3, [r2, #2]
    3162:	3301      	adds	r3, #1
    3164:	b21b      	sxth	r3, r3
    3166:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    3168:	4983      	ldr	r1, [pc, #524]	; (3378 <TIM1_CC_handler+0x224>)
    316a:	680b      	ldr	r3, [r1, #0]
    316c:	3301      	adds	r3, #1
    316e:	600b      	str	r3, [r1, #0]
    if (!(flags & F_VSYNC)){
    3170:	8813      	ldrh	r3, [r2, #0]
    3172:	f013 0f02 	tst.w	r3, #2
    3176:	d10f      	bne.n	3198 <TIM1_CC_handler+0x44>
        TMR3->CCER|=CHROMA_CFG;
    3178:	4a80      	ldr	r2, [pc, #512]	; (337c <TIM1_CC_handler+0x228>)
    317a:	6a13      	ldr	r3, [r2, #32]
    317c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3180:	6213      	str	r3, [r2, #32]
        while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    3182:	497f      	ldr	r1, [pc, #508]	; (3380 <TIM1_CC_handler+0x22c>)
    3184:	f240 2209 	movw	r2, #521	; 0x209
    3188:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    318a:	4293      	cmp	r3, r2
    318c:	d9fc      	bls.n	3188 <TIM1_CC_handler+0x34>
        TMR3->CCER&=~CHROMA_CFG;
    318e:	4a7b      	ldr	r2, [pc, #492]	; (337c <TIM1_CC_handler+0x228>)
    3190:	6a13      	ldr	r3, [r2, #32]
    3192:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3196:	6213      	str	r3, [r2, #32]
    }
    switch (task){
    3198:	4b76      	ldr	r3, [pc, #472]	; (3374 <TIM1_CC_handler+0x220>)
    319a:	889b      	ldrh	r3, [r3, #4]
    319c:	b29b      	uxth	r3, r3
    319e:	2b06      	cmp	r3, #6
    31a0:	d849      	bhi.n	3236 <TIM1_CC_handler+0xe2>
    31a2:	e8df f013 	tbh	[pc, r3, lsl #1]
    31a6:	0007      	.short	0x0007
    31a8:	00510041 	.word	0x00510041
    31ac:	00750066 	.word	0x00750066
    31b0:	00fd0089 	.word	0x00fd0089
    case VSYNC:
        switch(scan_line){
    31b4:	4b6f      	ldr	r3, [pc, #444]	; (3374 <TIM1_CC_handler+0x220>)
    31b6:	885b      	ldrh	r3, [r3, #2]
    31b8:	b21b      	sxth	r3, r3
    31ba:	3b01      	subs	r3, #1
    31bc:	2b12      	cmp	r3, #18
    31be:	d83a      	bhi.n	3236 <TIM1_CC_handler+0xe2>
    31c0:	e8df f003 	tbb	[pc, r3]
    31c4:	3939390a 	.word	0x3939390a
    31c8:	39113939 	.word	0x39113939
    31cc:	39393939 	.word	0x39393939
    31d0:	39393916 	.word	0x39393916
    31d4:	1a39      	.short	0x1a39
    31d6:	1f          	.byte	0x1f
    31d7:	00          	.byte	0x00
        case 1:
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
    31d8:	4b69      	ldr	r3, [pc, #420]	; (3380 <TIM1_CC_handler+0x22c>)
    31da:	f640 02e2 	movw	r2, #2274	; 0x8e2
    31de:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    31e0:	22a4      	movs	r2, #164	; 0xa4
    31e2:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    31e4:	e027      	b.n	3236 <TIM1_CC_handler+0xe2>
        case 7:
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
    31e6:	f240 7294 	movw	r2, #1940	; 0x794
    31ea:	4b65      	ldr	r3, [pc, #404]	; (3380 <TIM1_CC_handler+0x22c>)
    31ec:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    31ee:	e022      	b.n	3236 <TIM1_CC_handler+0xe2>
        case 13:
            // set post-sync pulse    
            TMR1->CCR1=SERRATION;
    31f0:	22a4      	movs	r2, #164	; 0xa4
    31f2:	4b63      	ldr	r3, [pc, #396]	; (3380 <TIM1_CC_handler+0x22c>)
    31f4:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    31f6:	e01e      	b.n	3236 <TIM1_CC_handler+0xe2>
        case 18:
            if (!(flags&F_EVEN)){
    31f8:	4b5e      	ldr	r3, [pc, #376]	; (3374 <TIM1_CC_handler+0x220>)
    31fa:	881b      	ldrh	r3, [r3, #0]
    31fc:	f013 0f01 	tst.w	r3, #1
    3200:	d119      	bne.n	3236 <TIM1_CC_handler+0xe2>
sync_end:                
                TMR1->ARR=HPERIOD;
    3202:	4b5f      	ldr	r3, [pc, #380]	; (3380 <TIM1_CC_handler+0x22c>)
    3204:	f241 12c5 	movw	r2, #4549	; 0x11c5
    3208:	62da      	str	r2, [r3, #44]	; 0x2c
                TMR1->CCR1=HPULSE;
    320a:	f44f 72a8 	mov.w	r2, #336	; 0x150
    320e:	635a      	str	r2, [r3, #52]	; 0x34
                flags&=~F_VSYNC;
    3210:	4a58      	ldr	r2, [pc, #352]	; (3374 <TIM1_CC_handler+0x220>)
    3212:	8813      	ldrh	r3, [r2, #0]
    3214:	f023 0302 	bic.w	r3, r3, #2
    3218:	041b      	lsls	r3, r3, #16
    321a:	0c1b      	lsrs	r3, r3, #16
    321c:	8013      	strh	r3, [r2, #0]
                task++;
    321e:	8893      	ldrh	r3, [r2, #4]
    3220:	3301      	adds	r3, #1
    3222:	b29b      	uxth	r3, r3
    3224:	8093      	strh	r3, [r2, #4]
    3226:	e006      	b.n	3236 <TIM1_CC_handler+0xe2>
            goto sync_end;
            break;
        }//switch(scan_line)
        break;
    case READ_PAD:
        read_gamepad();
    3228:	f7fd ff8c 	bl	1144 <read_gamepad>
        task++;
    322c:	4a51      	ldr	r2, [pc, #324]	; (3374 <TIM1_CC_handler+0x220>)
    322e:	8893      	ldrh	r3, [r2, #4]
    3230:	3301      	adds	r3, #1
    3232:	b29b      	uxth	r3, r3
    3234:	8093      	strh	r3, [r2, #4]
                scan_line=0;
            }
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_CC1IF;
    3236:	4a52      	ldr	r2, [pc, #328]	; (3380 <TIM1_CC_handler+0x22c>)
    3238:	6913      	ldr	r3, [r2, #16]
    323a:	f023 0302 	bic.w	r3, r3, #2
    323e:	6113      	str	r3, [r2, #16]
}
    3240:	e8bd 4031 	ldmia.w	sp!, {r0, r4, r5, lr}
    3244:	4685      	mov	sp, r0
    3246:	4770      	bx	lr
        if (sound_timer){
    3248:	4b4e      	ldr	r3, [pc, #312]	; (3384 <TIM1_CC_handler+0x230>)
    324a:	881b      	ldrh	r3, [r3, #0]
    324c:	b29b      	uxth	r3, r3
    324e:	b13b      	cbz	r3, 3260 <TIM1_CC_handler+0x10c>
            sound_timer--;
    3250:	4a4c      	ldr	r2, [pc, #304]	; (3384 <TIM1_CC_handler+0x230>)
    3252:	8813      	ldrh	r3, [r2, #0]
    3254:	3b01      	subs	r3, #1
    3256:	b29b      	uxth	r3, r3
    3258:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    325a:	8813      	ldrh	r3, [r2, #0]
    325c:	b29b      	uxth	r3, r3
    325e:	b12b      	cbz	r3, 326c <TIM1_CC_handler+0x118>
        task++;
    3260:	4a44      	ldr	r2, [pc, #272]	; (3374 <TIM1_CC_handler+0x220>)
    3262:	8893      	ldrh	r3, [r2, #4]
    3264:	3301      	adds	r3, #1
    3266:	b29b      	uxth	r3, r3
    3268:	8093      	strh	r3, [r2, #4]
        break;    
    326a:	e7e4      	b.n	3236 <TIM1_CC_handler+0xe2>
                sound_stop();
    326c:	f7ff fbad 	bl	29ca <sound_stop>
    3270:	e7f6      	b.n	3260 <TIM1_CC_handler+0x10c>
        if (game_timer){
    3272:	4b45      	ldr	r3, [pc, #276]	; (3388 <TIM1_CC_handler+0x234>)
    3274:	881b      	ldrh	r3, [r3, #0]
    3276:	b29b      	uxth	r3, r3
    3278:	b123      	cbz	r3, 3284 <TIM1_CC_handler+0x130>
            game_timer--;
    327a:	4a43      	ldr	r2, [pc, #268]	; (3388 <TIM1_CC_handler+0x234>)
    327c:	8813      	ldrh	r3, [r2, #0]
    327e:	3b01      	subs	r3, #1
    3280:	b29b      	uxth	r3, r3
    3282:	8013      	strh	r3, [r2, #0]
        task++;
    3284:	4a3b      	ldr	r2, [pc, #236]	; (3374 <TIM1_CC_handler+0x220>)
    3286:	8893      	ldrh	r3, [r2, #4]
    3288:	3301      	adds	r3, #1
    328a:	b29b      	uxth	r3, r3
    328c:	8093      	strh	r3, [r2, #4]
        break;
    328e:	e7d2      	b.n	3236 <TIM1_CC_handler+0xe2>
        if (scan_line==video_start){
    3290:	4b38      	ldr	r3, [pc, #224]	; (3374 <TIM1_CC_handler+0x220>)
    3292:	885b      	ldrh	r3, [r3, #2]
    3294:	b21b      	sxth	r3, r3
    3296:	4a3d      	ldr	r2, [pc, #244]	; (338c <TIM1_CC_handler+0x238>)
    3298:	8812      	ldrh	r2, [r2, #0]
    329a:	4293      	cmp	r3, r2
    329c:	d1cb      	bne.n	3236 <TIM1_CC_handler+0xe2>
            flags |= F_VIDEO;
    329e:	4b35      	ldr	r3, [pc, #212]	; (3374 <TIM1_CC_handler+0x220>)
    32a0:	881a      	ldrh	r2, [r3, #0]
    32a2:	b292      	uxth	r2, r2
    32a4:	f042 0204 	orr.w	r2, r2, #4
    32a8:	801a      	strh	r2, [r3, #0]
            task++;
    32aa:	889a      	ldrh	r2, [r3, #4]
    32ac:	3201      	adds	r2, #1
    32ae:	b292      	uxth	r2, r2
    32b0:	809a      	strh	r2, [r3, #4]
            slice=0;
    32b2:	2200      	movs	r2, #0
    32b4:	80da      	strh	r2, [r3, #6]
    32b6:	e7be      	b.n	3236 <TIM1_CC_handler+0xe2>
        video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    32b8:	4b2e      	ldr	r3, [pc, #184]	; (3374 <TIM1_CC_handler+0x220>)
    32ba:	88dd      	ldrh	r5, [r3, #6]
    32bc:	b2ad      	uxth	r5, r5
    32be:	4b33      	ldr	r3, [pc, #204]	; (338c <TIM1_CC_handler+0x238>)
    32c0:	7898      	ldrb	r0, [r3, #2]
    32c2:	78da      	ldrb	r2, [r3, #3]
    32c4:	fb95 f5f2 	sdiv	r5, r5, r2
    32c8:	4a31      	ldr	r2, [pc, #196]	; (3390 <TIM1_CC_handler+0x23c>)
    32ca:	fb00 2505 	mla	r5, r0, r5, r2
        while(TMR1->CNT<left_margin);
    32ce:	8899      	ldrh	r1, [r3, #4]
    32d0:	4a2b      	ldr	r2, [pc, #172]	; (3380 <TIM1_CC_handler+0x22c>)
    32d2:	6a53      	ldr	r3, [r2, #36]	; 0x24
    32d4:	428b      	cmp	r3, r1
    32d6:	d3fc      	bcc.n	32d2 <TIM1_CC_handler+0x17e>
        _jitter_cancel();
    32d8:	4b2e      	ldr	r3, [pc, #184]	; (3394 <TIM1_CC_handler+0x240>)
    32da:	461a      	mov	r2, r3
    32dc:	6812      	ldr	r2, [r2, #0]
    32de:	f002 0207 	and.w	r2, r2, #7
    32e2:	ea4f 0242 	mov.w	r2, r2, lsl #1
    32e6:	4497      	add	pc, r2
    32e8:	bf00      	nop
    32ea:	bf00      	nop
    32ec:	bf00      	nop
    32ee:	bf00      	nop
    32f0:	bf00      	nop
    32f2:	bf00      	nop
    32f4:	bf00      	nop
    32f6:	bf00      	nop
        TMR3->CCER|=CHROMA_CFG;
    32f8:	4a20      	ldr	r2, [pc, #128]	; (337c <TIM1_CC_handler+0x228>)
    32fa:	6a13      	ldr	r3, [r2, #32]
    32fc:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3300:	6213      	str	r3, [r2, #32]
        for (i=0;i<byte_per_row;i++){
    3302:	b1b0      	cbz	r0, 3332 <TIM1_CC_handler+0x1de>
    3304:	462b      	mov	r3, r5
            _pixel_delay(pixel_delay);
    3306:	4921      	ldr	r1, [pc, #132]	; (338c <TIM1_CC_handler+0x238>)
            *video_port=(*video_data)>>4;
    3308:	4823      	ldr	r0, [pc, #140]	; (3398 <TIM1_CC_handler+0x244>)
            _pixel_delay(pixel_delay);
    330a:	798c      	ldrb	r4, [r1, #6]
    330c:	4622      	mov	r2, r4
    330e:	3a01      	subs	r2, #1
    3310:	d1fd      	bne.n	330e <TIM1_CC_handler+0x1ba>
            *video_port=(*video_data)>>4;
    3312:	781a      	ldrb	r2, [r3, #0]
    3314:	0912      	lsrs	r2, r2, #4
    3316:	8002      	strh	r2, [r0, #0]
            _pixel_delay(pixel_delay);
    3318:	798c      	ldrb	r4, [r1, #6]
    331a:	4622      	mov	r2, r4
    331c:	3a01      	subs	r2, #1
    331e:	d1fd      	bne.n	331c <TIM1_CC_handler+0x1c8>
            *video_port=(*video_data++)&0xf;
    3320:	f813 2b01 	ldrb.w	r2, [r3], #1
    3324:	f002 020f 	and.w	r2, r2, #15
    3328:	8002      	strh	r2, [r0, #0]
        for (i=0;i<byte_per_row;i++){
    332a:	1b5c      	subs	r4, r3, r5
    332c:	788a      	ldrb	r2, [r1, #2]
    332e:	4294      	cmp	r4, r2
    3330:	d3eb      	bcc.n	330a <TIM1_CC_handler+0x1b6>
        PORTA->ODR=0;
    3332:	2200      	movs	r2, #0
    3334:	4b19      	ldr	r3, [pc, #100]	; (339c <TIM1_CC_handler+0x248>)
    3336:	60da      	str	r2, [r3, #12]
        if (scan_line==video_end){
    3338:	4b0e      	ldr	r3, [pc, #56]	; (3374 <TIM1_CC_handler+0x220>)
    333a:	885b      	ldrh	r3, [r3, #2]
    333c:	b21b      	sxth	r3, r3
    333e:	4a13      	ldr	r2, [pc, #76]	; (338c <TIM1_CC_handler+0x238>)
    3340:	8912      	ldrh	r2, [r2, #8]
    3342:	4293      	cmp	r3, r2
    3344:	d00a      	beq.n	335c <TIM1_CC_handler+0x208>
        TMR3->CCER&=~(TMR_CCER_CC3E);
    3346:	4a0d      	ldr	r2, [pc, #52]	; (337c <TIM1_CC_handler+0x228>)
    3348:	6a13      	ldr	r3, [r2, #32]
    334a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    334e:	6213      	str	r3, [r2, #32]
        slice++;
    3350:	4a08      	ldr	r2, [pc, #32]	; (3374 <TIM1_CC_handler+0x220>)
    3352:	88d3      	ldrh	r3, [r2, #6]
    3354:	3301      	adds	r3, #1
    3356:	b29b      	uxth	r3, r3
    3358:	80d3      	strh	r3, [r2, #6]
        break;
    335a:	e76c      	b.n	3236 <TIM1_CC_handler+0xe2>
            flags &=~F_VIDEO;
    335c:	4a05      	ldr	r2, [pc, #20]	; (3374 <TIM1_CC_handler+0x220>)
    335e:	8813      	ldrh	r3, [r2, #0]
    3360:	f023 0304 	bic.w	r3, r3, #4
    3364:	041b      	lsls	r3, r3, #16
    3366:	0c1b      	lsrs	r3, r3, #16
    3368:	8013      	strh	r3, [r2, #0]
            task++;
    336a:	8893      	ldrh	r3, [r2, #4]
    336c:	3301      	adds	r3, #1
    336e:	b29b      	uxth	r3, r3
    3370:	8093      	strh	r3, [r2, #4]
    3372:	e7e8      	b.n	3346 <TIM1_CC_handler+0x1f2>
    3374:	200006bc 	.word	0x200006bc
    3378:	20004e94 	.word	0x20004e94
    337c:	40000400 	.word	0x40000400
    3380:	40012c00 	.word	0x40012c00
    3384:	20004e98 	.word	0x20004e98
    3388:	20004e90 	.word	0x20004e90
    338c:	20000224 	.word	0x20000224
    3390:	20002730 	.word	0x20002730
    3394:	40012c24 	.word	0x40012c24
    3398:	4001080c 	.word	0x4001080c
    339c:	40010800 	.word	0x40010800
        if (scan_line==271 && !(flags&F_EVEN)){
    33a0:	4b13      	ldr	r3, [pc, #76]	; (33f0 <TIM1_CC_handler+0x29c>)
    33a2:	885b      	ldrh	r3, [r3, #2]
    33a4:	b21b      	sxth	r3, r3
    33a6:	f240 120f 	movw	r2, #271	; 0x10f
    33aa:	4293      	cmp	r3, r2
    33ac:	d019      	beq.n	33e2 <TIM1_CC_handler+0x28e>
            if (scan_line==272){
    33ae:	4b10      	ldr	r3, [pc, #64]	; (33f0 <TIM1_CC_handler+0x29c>)
    33b0:	885b      	ldrh	r3, [r3, #2]
    33b2:	b21b      	sxth	r3, r3
    33b4:	f5b3 7f88 	cmp.w	r3, #272	; 0x110
    33b8:	f47f af3d 	bne.w	3236 <TIM1_CC_handler+0xe2>
                TMR1->ARR=SYNC_LINE;
    33bc:	f640 02e2 	movw	r2, #2274	; 0x8e2
    33c0:	4b0c      	ldr	r3, [pc, #48]	; (33f4 <TIM1_CC_handler+0x2a0>)
    33c2:	62da      	str	r2, [r3, #44]	; 0x2c
                flags^=F_EVEN;
    33c4:	4b0a      	ldr	r3, [pc, #40]	; (33f0 <TIM1_CC_handler+0x29c>)
    33c6:	881a      	ldrh	r2, [r3, #0]
    33c8:	b292      	uxth	r2, r2
    33ca:	f082 0201 	eor.w	r2, r2, #1
    33ce:	801a      	strh	r2, [r3, #0]
                flags|=F_VSYNC;
    33d0:	881a      	ldrh	r2, [r3, #0]
    33d2:	b292      	uxth	r2, r2
    33d4:	f042 0202 	orr.w	r2, r2, #2
    33d8:	801a      	strh	r2, [r3, #0]
                task=VSYNC;
    33da:	2200      	movs	r2, #0
    33dc:	809a      	strh	r2, [r3, #4]
                scan_line=0;
    33de:	805a      	strh	r2, [r3, #2]
    33e0:	e729      	b.n	3236 <TIM1_CC_handler+0xe2>
        if (scan_line==271 && !(flags&F_EVEN)){
    33e2:	4b03      	ldr	r3, [pc, #12]	; (33f0 <TIM1_CC_handler+0x29c>)
    33e4:	881b      	ldrh	r3, [r3, #0]
    33e6:	f013 0f01 	tst.w	r3, #1
    33ea:	d0eb      	beq.n	33c4 <TIM1_CC_handler+0x270>
    33ec:	e7df      	b.n	33ae <TIM1_CC_handler+0x25a>
    33ee:	bf00      	nop
    33f0:	200006bc 	.word	0x200006bc
    33f4:	40012c00 	.word	0x40012c00

000033f8 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    33f8:	4a02      	ldr	r2, [pc, #8]	; (3404 <frame_sync+0xc>)
    33fa:	8813      	ldrh	r3, [r2, #0]
    33fc:	f013 0f02 	tst.w	r3, #2
    3400:	d0fb      	beq.n	33fa <frame_sync+0x2>
}
    3402:	4770      	bx	lr
    3404:	200006bc 	.word	0x200006bc

00003408 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3408:	4a02      	ldr	r2, [pc, #8]	; (3414 <wait_sync_end+0xc>)
    340a:	8813      	ldrh	r3, [r2, #0]
    340c:	f013 0f02 	tst.w	r3, #2
    3410:	d1fb      	bne.n	340a <wait_sync_end+0x2>
}
    3412:	4770      	bx	lr
    3414:	200006bc 	.word	0x200006bc

00003418 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3418:	b510      	push	{r4, lr}
    341a:	4604      	mov	r4, r0
    frame_sync();
    341c:	f7ff ffec 	bl	33f8 <frame_sync>
    video_mode=mode;
    3420:	4b0e      	ldr	r3, [pc, #56]	; (345c <set_video_mode+0x44>)
    3422:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3424:	b1ac      	cbz	r4, 3452 <set_video_mode+0x3a>
    3426:	2200      	movs	r2, #0
    3428:	4b0d      	ldr	r3, [pc, #52]	; (3460 <set_video_mode+0x48>)
    342a:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    342c:	4b0d      	ldr	r3, [pc, #52]	; (3464 <set_video_mode+0x4c>)
    342e:	480e      	ldr	r0, [pc, #56]	; (3468 <set_video_mode+0x50>)
    3430:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    3434:	8842      	ldrh	r2, [r0, #2]
    3436:	801a      	strh	r2, [r3, #0]
    video_end=video_params[mode].video_end;
    3438:	8882      	ldrh	r2, [r0, #4]
    343a:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    343c:	88c2      	ldrh	r2, [r0, #6]
    343e:	809a      	strh	r2, [r3, #4]
    byte_per_row=video_params[mode].bpr;
    3440:	7a02      	ldrb	r2, [r0, #8]
    3442:	709a      	strb	r2, [r3, #2]
    lines_repeat=video_params[mode].rpt;
    3444:	7a42      	ldrb	r2, [r0, #9]
    3446:	70da      	strb	r2, [r3, #3]
    pixel_delay=video_params[mode].pdly;
    3448:	7a82      	ldrb	r2, [r0, #10]
    344a:	719a      	strb	r2, [r3, #6]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    344c:	f7fe f924 	bl	1698 <gfx_cls>
    3450:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3452:	2202      	movs	r2, #2
    3454:	4b02      	ldr	r3, [pc, #8]	; (3460 <set_video_mode+0x48>)
    3456:	701a      	strb	r2, [r3, #0]
    3458:	e7e8      	b.n	342c <set_video_mode+0x14>
    345a:	bf00      	nop
    345c:	200006bc 	.word	0x200006bc
    3460:	200001c8 	.word	0x200001c8
    3464:	20000224 	.word	0x20000224
    3468:	00003d60 	.word	0x00003d60

0000346c <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    346c:	4b02      	ldr	r3, [pc, #8]	; (3478 <get_video_params+0xc>)
    346e:	7a18      	ldrb	r0, [r3, #8]
}
    3470:	4b02      	ldr	r3, [pc, #8]	; (347c <get_video_params+0x10>)
    3472:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    3476:	4770      	bx	lr
    3478:	200006bc 	.word	0x200006bc
    347c:	00003d60 	.word	0x00003d60

00003480 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    3480:	4b03      	ldr	r3, [pc, #12]	; (3490 <game_pause+0x10>)
    3482:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    3484:	461a      	mov	r2, r3
    3486:	8813      	ldrh	r3, [r2, #0]
    3488:	b29b      	uxth	r3, r3
    348a:	2b00      	cmp	r3, #0
    348c:	d1fb      	bne.n	3486 <game_pause+0x6>
}
    348e:	4770      	bx	lr
    3490:	20004e90 	.word	0x20004e90

00003494 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    3494:	4b03      	ldr	r3, [pc, #12]	; (34a4 <micro_pause+0x10>)
    3496:	681b      	ldr	r3, [r3, #0]
    3498:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    349a:	4a02      	ldr	r2, [pc, #8]	; (34a4 <micro_pause+0x10>)
    349c:	6813      	ldr	r3, [r2, #0]
    349e:	4298      	cmp	r0, r3
    34a0:	d8fc      	bhi.n	349c <micro_pause+0x8>
}
    34a2:	4770      	bx	lr
    34a4:	20004e94 	.word	0x20004e94

000034a8 <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    34a8:	2801      	cmp	r0, #1
    34aa:	d035      	beq.n	3518 <usart_config_port+0x70>
    34ac:	b110      	cbz	r0, 34b4 <usart_config_port+0xc>
    34ae:	2802      	cmp	r0, #2
    34b0:	d04f      	beq.n	3552 <usart_config_port+0xaa>
    34b2:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    34b4:	4835      	ldr	r0, [pc, #212]	; (358c <usart_config_port+0xe4>)
    34b6:	6983      	ldr	r3, [r0, #24]
    34b8:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    34bc:	f043 0304 	orr.w	r3, r3, #4
    34c0:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    34c2:	2a01      	cmp	r2, #1
    34c4:	d016      	beq.n	34f4 <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    34c6:	4b32      	ldr	r3, [pc, #200]	; (3590 <usart_config_port+0xe8>)
    34c8:	4299      	cmp	r1, r3
    34ca:	d01c      	beq.n	3506 <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    34cc:	4a31      	ldr	r2, [pc, #196]	; (3594 <usart_config_port+0xec>)
    34ce:	6853      	ldr	r3, [r2, #4]
    34d0:	f043 0304 	orr.w	r3, r3, #4
    34d4:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    34d6:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    34da:	6993      	ldr	r3, [r2, #24]
    34dc:	f043 0308 	orr.w	r3, r3, #8
    34e0:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    34e2:	680b      	ldr	r3, [r1, #0]
    34e4:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    34e8:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    34ea:	680b      	ldr	r3, [r1, #0]
    34ec:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    34f0:	600b      	str	r3, [r1, #0]
    34f2:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    34f4:	684b      	ldr	r3, [r1, #4]
    34f6:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    34fa:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    34fc:	684b      	ldr	r3, [r1, #4]
    34fe:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    3502:	604b      	str	r3, [r1, #4]
    3504:	e7df      	b.n	34c6 <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    3506:	685a      	ldr	r2, [r3, #4]
    3508:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    350c:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    350e:	685a      	ldr	r2, [r3, #4]
    3510:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    3514:	605a      	str	r2, [r3, #4]
    3516:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3518:	4b1c      	ldr	r3, [pc, #112]	; (358c <usart_config_port+0xe4>)
    351a:	69d8      	ldr	r0, [r3, #28]
    351c:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3520:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    3522:	6998      	ldr	r0, [r3, #24]
    3524:	f040 0004 	orr.w	r0, r0, #4
    3528:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    352a:	2a01      	cmp	r2, #1
    352c:	d008      	beq.n	3540 <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    352e:	680b      	ldr	r3, [r1, #0]
    3530:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3534:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    3536:	680b      	ldr	r3, [r1, #0]
    3538:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    353c:	600b      	str	r3, [r1, #0]
    353e:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3540:	680b      	ldr	r3, [r1, #0]
    3542:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    3546:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    3548:	680b      	ldr	r3, [r1, #0]
    354a:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    354e:	600b      	str	r3, [r1, #0]
    3550:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    3552:	4b0e      	ldr	r3, [pc, #56]	; (358c <usart_config_port+0xe4>)
    3554:	69d8      	ldr	r0, [r3, #28]
    3556:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    355a:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    355c:	6998      	ldr	r0, [r3, #24]
    355e:	f040 0008 	orr.w	r0, r0, #8
    3562:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    3564:	2a01      	cmp	r2, #1
    3566:	d008      	beq.n	357a <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    3568:	684b      	ldr	r3, [r1, #4]
    356a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    356e:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    3570:	684b      	ldr	r3, [r1, #4]
    3572:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3576:	604b      	str	r3, [r1, #4]
    3578:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    357a:	684b      	ldr	r3, [r1, #4]
    357c:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    3580:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    3582:	684b      	ldr	r3, [r1, #4]
    3584:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    3588:	604b      	str	r3, [r1, #4]
    358a:	4770      	bx	lr
    358c:	40021000 	.word	0x40021000
    3590:	40010800 	.word	0x40010800
    3594:	40010000 	.word	0x40010000

00003598 <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    3598:	4602      	mov	r2, r0
    359a:	b138      	cbz	r0, 35ac <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    359c:	4b05      	ldr	r3, [pc, #20]	; (35b4 <usart_set_baud+0x1c>)
    359e:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    35a2:	4b05      	ldr	r3, [pc, #20]	; (35b8 <usart_set_baud+0x20>)
    35a4:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    35a8:	6099      	str	r1, [r3, #8]
    35aa:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    35ac:	4b03      	ldr	r3, [pc, #12]	; (35bc <usart_set_baud+0x24>)
    35ae:	fbb3 f1f1 	udiv	r1, r3, r1
    35b2:	e7f6      	b.n	35a2 <usart_set_baud+0xa>
    35b4:	022231fa 	.word	0x022231fa
    35b8:	00003d88 	.word	0x00003d88
    35bc:	044463f4 	.word	0x044463f4

000035c0 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    35c0:	4b05      	ldr	r3, [pc, #20]	; (35d8 <usart_comm_dir+0x18>)
    35c2:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    35c6:	68da      	ldr	r2, [r3, #12]
    35c8:	f022 020c 	bic.w	r2, r2, #12
    35cc:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    35ce:	68da      	ldr	r2, [r3, #12]
    35d0:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    35d4:	60d9      	str	r1, [r3, #12]
    35d6:	4770      	bx	lr
    35d8:	00003d88 	.word	0x00003d88

000035dc <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    35dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    35e0:	4604      	mov	r4, r0
    35e2:	460f      	mov	r7, r1
    35e4:	4615      	mov	r5, r2
    35e6:	4698      	mov	r8, r3
    35e8:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    35ea:	2801      	cmp	r0, #1
    35ec:	d030      	beq.n	3650 <usart_open_channel+0x74>
    35ee:	b1d0      	cbz	r0, 3626 <usart_open_channel+0x4a>
    35f0:	2802      	cmp	r0, #2
    35f2:	d03a      	beq.n	366a <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    35f4:	2e01      	cmp	r6, #1
    35f6:	d045      	beq.n	3684 <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    35f8:	4641      	mov	r1, r8
    35fa:	4620      	mov	r0, r4
    35fc:	f7ff ffe0 	bl	35c0 <usart_comm_dir>
	switch (parity){
    3600:	2d01      	cmp	r5, #1
    3602:	d04e      	beq.n	36a2 <usart_open_channel+0xc6>
    3604:	2d00      	cmp	r5, #0
    3606:	d044      	beq.n	3692 <usart_open_channel+0xb6>
    3608:	2d02      	cmp	r5, #2
    360a:	d052      	beq.n	36b2 <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    360c:	4639      	mov	r1, r7
    360e:	4620      	mov	r0, r4
    3610:	f7ff ffc2 	bl	3598 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    3614:	4b2b      	ldr	r3, [pc, #172]	; (36c4 <usart_open_channel+0xe8>)
    3616:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    361a:	68d3      	ldr	r3, [r2, #12]
    361c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3620:	60d3      	str	r3, [r2, #12]
    3622:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    3626:	9b06      	ldr	r3, [sp, #24]
    3628:	b963      	cbnz	r3, 3644 <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    362a:	4632      	mov	r2, r6
    362c:	4926      	ldr	r1, [pc, #152]	; (36c8 <usart_open_channel+0xec>)
    362e:	2000      	movs	r0, #0
    3630:	f7ff ff3a 	bl	34a8 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    3634:	2107      	movs	r1, #7
    3636:	2025      	movs	r0, #37	; 0x25
    3638:	f7fe fdba 	bl	21b0 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    363c:	2025      	movs	r0, #37	; 0x25
    363e:	f7fe fd57 	bl	20f0 <enable_interrupt>
		break;
    3642:	e7d7      	b.n	35f4 <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    3644:	4632      	mov	r2, r6
    3646:	4921      	ldr	r1, [pc, #132]	; (36cc <usart_open_channel+0xf0>)
    3648:	2000      	movs	r0, #0
    364a:	f7ff ff2d 	bl	34a8 <usart_config_port>
    364e:	e7f1      	b.n	3634 <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    3650:	4632      	mov	r2, r6
    3652:	491d      	ldr	r1, [pc, #116]	; (36c8 <usart_open_channel+0xec>)
    3654:	2001      	movs	r0, #1
    3656:	f7ff ff27 	bl	34a8 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    365a:	2107      	movs	r1, #7
    365c:	2026      	movs	r0, #38	; 0x26
    365e:	f7fe fda7 	bl	21b0 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    3662:	2026      	movs	r0, #38	; 0x26
    3664:	f7fe fd44 	bl	20f0 <enable_interrupt>
		break;
    3668:	e7c4      	b.n	35f4 <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    366a:	4632      	mov	r2, r6
    366c:	4917      	ldr	r1, [pc, #92]	; (36cc <usart_open_channel+0xf0>)
    366e:	2002      	movs	r0, #2
    3670:	f7ff ff1a 	bl	34a8 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    3674:	2107      	movs	r1, #7
    3676:	2027      	movs	r0, #39	; 0x27
    3678:	f7fe fd9a 	bl	21b0 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    367c:	2027      	movs	r0, #39	; 0x27
    367e:	f7fe fd37 	bl	20f0 <enable_interrupt>
		break;
    3682:	e7b7      	b.n	35f4 <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3684:	4b0f      	ldr	r3, [pc, #60]	; (36c4 <usart_open_channel+0xe8>)
    3686:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    368a:	f44f 7240 	mov.w	r2, #768	; 0x300
    368e:	615a      	str	r2, [r3, #20]
    3690:	e7b2      	b.n	35f8 <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    3692:	4b0c      	ldr	r3, [pc, #48]	; (36c4 <usart_open_channel+0xe8>)
    3694:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3698:	68d3      	ldr	r3, [r2, #12]
    369a:	f043 0320 	orr.w	r3, r3, #32
    369e:	60d3      	str	r3, [r2, #12]
		break;
    36a0:	e7b4      	b.n	360c <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    36a2:	4b08      	ldr	r3, [pc, #32]	; (36c4 <usart_open_channel+0xe8>)
    36a4:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    36a8:	68d3      	ldr	r3, [r2, #12]
    36aa:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    36ae:	60d3      	str	r3, [r2, #12]
		break;
    36b0:	e7ac      	b.n	360c <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    36b2:	4b04      	ldr	r3, [pc, #16]	; (36c4 <usart_open_channel+0xe8>)
    36b4:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    36b8:	68d3      	ldr	r3, [r2, #12]
    36ba:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    36be:	60d3      	str	r3, [r2, #12]
		break;
    36c0:	e7a4      	b.n	360c <usart_open_channel+0x30>
    36c2:	bf00      	nop
    36c4:	00003d88 	.word	0x00003d88
    36c8:	40010800 	.word	0x40010800
    36cc:	40010c00 	.word	0x40010c00

000036d0 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return usart_queue[channel].head!=usart_queue[channel].tail;
    36d0:	4a05      	ldr	r2, [pc, #20]	; (36e8 <usart_stat+0x18>)
    36d2:	00c3      	lsls	r3, r0, #3
    36d4:	1819      	adds	r1, r3, r0
    36d6:	eb02 0341 	add.w	r3, r2, r1, lsl #1
    36da:	f812 0011 	ldrb.w	r0, [r2, r1, lsl #1]
    36de:	785b      	ldrb	r3, [r3, #1]
}
    36e0:	1ac0      	subs	r0, r0, r3
    36e2:	bf18      	it	ne
    36e4:	2001      	movne	r0, #1
    36e6:	4770      	bx	lr
    36e8:	200006c8 	.word	0x200006c8

000036ec <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    36ec:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    36ee:	490c      	ldr	r1, [pc, #48]	; (3720 <usart_getc+0x34>)
    36f0:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    36f4:	005b      	lsls	r3, r3, #1
    36f6:	18c8      	adds	r0, r1, r3
    36f8:	5ccb      	ldrb	r3, [r1, r3]
    36fa:	7841      	ldrb	r1, [r0, #1]
    36fc:	4299      	cmp	r1, r3
    36fe:	d00d      	beq.n	371c <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    3700:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3702:	4d07      	ldr	r5, [pc, #28]	; (3720 <usart_getc+0x34>)
    3704:	00d4      	lsls	r4, r2, #3
    3706:	4601      	mov	r1, r0
    3708:	4419      	add	r1, r3
    370a:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    370c:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    370e:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    3710:	f003 030f 	and.w	r3, r3, #15
    3714:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    3718:	bc30      	pop	{r4, r5}
    371a:	4770      	bx	lr
		return 0;
    371c:	2000      	movs	r0, #0
    371e:	4770      	bx	lr
    3720:	200006c8 	.word	0x200006c8

00003724 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    3724:	b570      	push	{r4, r5, r6, lr}
    3726:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    3728:	4b08      	ldr	r3, [pc, #32]	; (374c <usart_getc_dly+0x28>)
    372a:	681c      	ldr	r4, [r3, #0]
    372c:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    372e:	461d      	mov	r5, r3
    3730:	682b      	ldr	r3, [r5, #0]
    3732:	429c      	cmp	r4, r3
    3734:	d906      	bls.n	3744 <usart_getc_dly+0x20>
    3736:	4630      	mov	r0, r6
    3738:	f7ff ffd8 	bl	36ec <usart_getc>
    373c:	4603      	mov	r3, r0
    373e:	2800      	cmp	r0, #0
    3740:	d0f6      	beq.n	3730 <usart_getc_dly+0xc>
    3742:	e000      	b.n	3746 <usart_getc_dly+0x22>
    3744:	2300      	movs	r3, #0
	return c;
}
    3746:	4618      	mov	r0, r3
    3748:	bd70      	pop	{r4, r5, r6, pc}
    374a:	bf00      	nop
    374c:	20004e94 	.word	0x20004e94

00003750 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    3750:	4b04      	ldr	r3, [pc, #16]	; (3764 <usart_putc+0x14>)
    3752:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    3756:	6813      	ldr	r3, [r2, #0]
    3758:	f013 0f80 	tst.w	r3, #128	; 0x80
    375c:	d0fb      	beq.n	3756 <usart_putc+0x6>
	channels[channel]->DR=c;
    375e:	6051      	str	r1, [r2, #4]
    3760:	4770      	bx	lr
    3762:	bf00      	nop
    3764:	00003d88 	.word	0x00003d88

00003768 <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    3768:	2801      	cmp	r0, #1
    376a:	d009      	beq.n	3780 <usart_cts+0x18>
    376c:	b118      	cbz	r0, 3776 <usart_cts+0xe>
    376e:	2802      	cmp	r0, #2
    3770:	d00b      	beq.n	378a <usart_cts+0x22>
    3772:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3774:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    3776:	4b07      	ldr	r3, [pc, #28]	; (3794 <usart_cts+0x2c>)
    3778:	6898      	ldr	r0, [r3, #8]
    377a:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    377e:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    3780:	4b04      	ldr	r3, [pc, #16]	; (3794 <usart_cts+0x2c>)
    3782:	6898      	ldr	r0, [r3, #8]
    3784:	f000 0001 	and.w	r0, r0, #1
			break;
    3788:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    378a:	4b03      	ldr	r3, [pc, #12]	; (3798 <usart_cts+0x30>)
    378c:	6898      	ldr	r0, [r3, #8]
    378e:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    3792:	4770      	bx	lr
    3794:	40010800 	.word	0x40010800
    3798:	40010c00 	.word	0x40010c00

0000379c <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    379c:	b538      	push	{r3, r4, r5, lr}
    379e:	4605      	mov	r5, r0
    37a0:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    37a2:	7809      	ldrb	r1, [r1, #0]
    37a4:	b131      	cbz	r1, 37b4 <usart_print+0x18>
    37a6:	4628      	mov	r0, r5
    37a8:	f7ff ffd2 	bl	3750 <usart_putc>
    37ac:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    37b0:	2900      	cmp	r1, #0
    37b2:	d1f8      	bne.n	37a6 <usart_print+0xa>
    37b4:	bd38      	pop	{r3, r4, r5, pc}

000037b6 <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    37b6:	4668      	mov	r0, sp
    37b8:	f020 0107 	bic.w	r1, r0, #7
    37bc:	468d      	mov	sp, r1
    37be:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    37c0:	4b08      	ldr	r3, [pc, #32]	; (37e4 <USART1_handler+0x2e>)
    37c2:	681b      	ldr	r3, [r3, #0]
    37c4:	f013 0f20 	tst.w	r3, #32
    37c8:	d009      	beq.n	37de <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    37ca:	4a07      	ldr	r2, [pc, #28]	; (37e8 <USART1_handler+0x32>)
    37cc:	7853      	ldrb	r3, [r2, #1]
    37ce:	4905      	ldr	r1, [pc, #20]	; (37e4 <USART1_handler+0x2e>)
    37d0:	6848      	ldr	r0, [r1, #4]
    37d2:	18d1      	adds	r1, r2, r3
    37d4:	7088      	strb	r0, [r1, #2]
    37d6:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    37d8:	f003 030f 	and.w	r3, r3, #15
    37dc:	7053      	strb	r3, [r2, #1]
		}
}
    37de:	bc01      	pop	{r0}
    37e0:	4685      	mov	sp, r0
    37e2:	4770      	bx	lr
    37e4:	40013800 	.word	0x40013800
    37e8:	200006c8 	.word	0x200006c8

000037ec <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    37ec:	4668      	mov	r0, sp
    37ee:	f020 0107 	bic.w	r1, r0, #7
    37f2:	468d      	mov	sp, r1
    37f4:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    37f6:	4b0a      	ldr	r3, [pc, #40]	; (3820 <USART2_handler+0x34>)
    37f8:	681b      	ldr	r3, [r3, #0]
    37fa:	f013 0f20 	tst.w	r3, #32
    37fe:	d00b      	beq.n	3818 <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    3800:	4a08      	ldr	r2, [pc, #32]	; (3824 <USART2_handler+0x38>)
    3802:	7cd1      	ldrb	r1, [r2, #19]
    3804:	1c4b      	adds	r3, r1, #1
    3806:	b2db      	uxtb	r3, r3
    3808:	74d3      	strb	r3, [r2, #19]
    380a:	4807      	ldr	r0, [pc, #28]	; (3828 <USART2_handler+0x3c>)
    380c:	6840      	ldr	r0, [r0, #4]
    380e:	4411      	add	r1, r2
    3810:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3812:	f003 030f 	and.w	r3, r3, #15
    3816:	74d3      	strb	r3, [r2, #19]
		}
}
    3818:	bc01      	pop	{r0}
    381a:	4685      	mov	sp, r0
    381c:	4770      	bx	lr
    381e:	bf00      	nop
    3820:	40013800 	.word	0x40013800
    3824:	200006c8 	.word	0x200006c8
    3828:	40004400 	.word	0x40004400

0000382c <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    382c:	4668      	mov	r0, sp
    382e:	f020 0107 	bic.w	r1, r0, #7
    3832:	468d      	mov	sp, r1
    3834:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3836:	4b0b      	ldr	r3, [pc, #44]	; (3864 <USART3_handler+0x38>)
    3838:	681b      	ldr	r3, [r3, #0]
    383a:	f013 0f20 	tst.w	r3, #32
    383e:	d00d      	beq.n	385c <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    3840:	4b09      	ldr	r3, [pc, #36]	; (3868 <USART3_handler+0x3c>)
    3842:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    3846:	1c51      	adds	r1, r2, #1
    3848:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    384c:	4907      	ldr	r1, [pc, #28]	; (386c <USART3_handler+0x40>)
    384e:	6849      	ldr	r1, [r1, #4]
    3850:	441a      	add	r2, r3
    3852:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3854:	7cda      	ldrb	r2, [r3, #19]
    3856:	f002 020f 	and.w	r2, r2, #15
    385a:	74da      	strb	r2, [r3, #19]
		}
}
    385c:	bc01      	pop	{r0}
    385e:	4685      	mov	sp, r0
    3860:	4770      	bx	lr
    3862:	bf00      	nop
    3864:	40013800 	.word	0x40013800
    3868:	200006c8 	.word	0x200006c8
    386c:	40004800 	.word	0x40004800
