
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 e9 29 00 00     .P. 1........)..
      10:	e9 29 00 00 e9 29 00 00 e9 29 00 00 e9 29 00 00     .)...)...)...)..
      20:	e9 29 00 00 e9 29 00 00 e9 29 00 00 09 02 00 00     .)...)...)......
      30:	e9 29 00 00 e9 29 00 00 0d 02 00 00 11 02 00 00     .)...)..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 53 26 00 00     ........!...S&..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 e9 29 00 00 e9 29 00 00 49 02 00 00     E....)...)..I...
      80:	e9 29 00 00 e9 29 00 00 e9 29 00 00 e9 29 00 00     .)...)...)...)..
      90:	e9 29 00 00 e9 29 00 00 e9 29 00 00 4d 02 00 00     .)...)...)..M...
      a0:	e9 29 00 00 2d 30 00 00 e9 29 00 00 45 2f 00 00     .)..-0...)..E/..
      b0:	f5 27 00 00 51 02 00 00 55 02 00 00 e9 29 00 00     .'..Q...U....)..
      c0:	e9 29 00 00 e9 29 00 00 e9 29 00 00 e9 29 00 00     .)...)...)...)..
      d0:	e9 29 00 00 59 02 00 00 5d 02 00 00 61 02 00 00     .)..Y...]...a...
      e0:	e9 29 00 00 e9 29 00 00 e9 29 00 00 e9 29 00 00     .)...)...)...)..
      f0:	e9 29 00 00 e9 29 00 00 e9 29 00 00 e9 29 00 00     .)...)...)...)..
     100:	e9 29 00 00 e9 29 00 00 e9 29 00 00 e9 29 00 00     .)...)...)...)..
     110:	e9 29 00 00 e9 29 00 00 e9 29 00 00 e9 29 00 00     .)...)...)...)..
     120:	e9 29 00 00 e9 29 00 00 e9 29 00 00 e9 29 00 00     .)...)...)...)..

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
     186:	f001 fc27 	bl	19d8 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004d3a 	.word	0x20004d3a
     190:	200000fa 	.word	0x200000fa
     194:	20004d39 	.word	0x20004d39
     198:	200000fa 	.word	0x200000fa
     19c:	20000000 	.word	0x20000000
     1a0:	00005cf9 	.word	0x00005cf9
     1a4:	200000fd 	.word	0x200000fd
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
     1da:	f002 fc0d 	bl	29f8 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fc0a 	bl	29f8 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fc07 	bl	29f8 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fc04 	bl	29f8 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003ca8 	.word	0x00003ca8
     1f8:	00003c84 	.word	0x00003c84
     1fc:	00003c9c 	.word	0x00003c9c
     200:	00003cb8 	.word	0x00003cb8

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fbf0 	bl	29e8 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fbee 	bl	29e8 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fbec 	bl	29e8 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fbea 	bl	29e8 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fbe8 	bl	29e8 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fbe6 	bl	29e8 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fbe4 	bl	29e8 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fbe2 	bl	29e8 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fbe0 	bl	29e8 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fbde 	bl	29e8 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fbdc 	bl	29e8 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fbda 	bl	29e8 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fbd8 	bl	29e8 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fbd6 	bl	29e8 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fbd4 	bl	29e8 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fbd2 	bl	29e8 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fbd0 	bl	29e8 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fbce 	bl	29e8 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fbcc 	bl	29e8 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fbca 	bl	29e8 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fbc8 	bl	29e8 <reset_mcu>

00000258 <USART1_handler>:
_default_handler(USART1_handler) // 37
     258:	f002 fbc6 	bl	29e8 <reset_mcu>

0000025c <USART2_handler>:
_default_handler(USART2_handler) // 38
     25c:	f002 fbc4 	bl	29e8 <reset_mcu>

00000260 <USART3_handler>:
_default_handler(USART3_handler) // 39
     260:	f002 fbc2 	bl	29e8 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fbc0 	bl	29e8 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fbbe 	bl	29e8 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fbbc 	bl	29e8 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fbba 	bl	29e8 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fbb8 	bl	29e8 <reset_mcu>

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
     314:	f002 fbea 	bl	2aec <new_line>
	select_font(FONT_ASCII);
     318:	2002      	movs	r0, #2
     31a:	f002 fbe1 	bl	2ae0 <select_font>
	print(msg);
     31e:	4620      	mov	r0, r4
     320:	f002 fcba 	bl	2c98 <print>
	print("PC:");
     324:	481a      	ldr	r0, [pc, #104]	; (390 <print_vms+0x80>)
     326:	f002 fcb7 	bl	2c98 <print>
	print_hex(vms.pc-2);
     32a:	4d1a      	ldr	r5, [pc, #104]	; (394 <print_vms+0x84>)
     32c:	8828      	ldrh	r0, [r5, #0]
     32e:	2110      	movs	r1, #16
     330:	3802      	subs	r0, #2
     332:	f002 fccc 	bl	2cce <print_int>
	print_hex(vms.b2);
     336:	2110      	movs	r1, #16
     338:	7de8      	ldrb	r0, [r5, #23]
     33a:	f002 fcc8 	bl	2cce <print_int>
	print_hex(vms.b1);
     33e:	2110      	movs	r1, #16
     340:	7da8      	ldrb	r0, [r5, #22]
     342:	f002 fcc4 	bl	2cce <print_int>
	new_line();
     346:	f002 fbd1 	bl	2aec <new_line>
	print("I:");
     34a:	4813      	ldr	r0, [pc, #76]	; (398 <print_vms+0x88>)
     34c:	f002 fca4 	bl	2c98 <print>
	print_hex(vms.ix);
     350:	2110      	movs	r1, #16
     352:	8868      	ldrh	r0, [r5, #2]
     354:	f002 fcbb 	bl	2cce <print_int>
	print(" SP:");
     358:	4810      	ldr	r0, [pc, #64]	; (39c <print_vms+0x8c>)
     35a:	f002 fc9d 	bl	2c98 <print>
	print_hex(vms.sp);
     35e:	2110      	movs	r1, #16
     360:	7928      	ldrb	r0, [r5, #4]
     362:	f002 fcb4 	bl	2cce <print_int>
	new_line();
     366:	f002 fbc1 	bl	2aec <new_line>
	print("var[]:");
     36a:	480d      	ldr	r0, [pc, #52]	; (3a0 <print_vms+0x90>)
     36c:	f002 fc94 	bl	2c98 <print>
     370:	1dac      	adds	r4, r5, #6
     372:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     374:	2610      	movs	r6, #16
     376:	4631      	mov	r1, r6
     378:	f814 0b01 	ldrb.w	r0, [r4], #1
     37c:	f002 fca7 	bl	2cce <print_int>
	for (int i=0;i<16;i++){
     380:	42ac      	cmp	r4, r5
     382:	d1f8      	bne.n	376 <print_vms+0x66>
	}
	new_line();
     384:	f002 fbb2 	bl	2aec <new_line>
	prompt_btn();
     388:	f002 fd3c 	bl	2e04 <prompt_btn>
     38c:	bd70      	pop	{r4, r5, r6, pc}
     38e:	bf00      	nop
     390:	00003ac4 	.word	0x00003ac4
     394:	200000fc 	.word	0x200000fc
     398:	00003ac8 	.word	0x00003ac8
     39c:	00003acc 	.word	0x00003acc
     3a0:	00003ad4 	.word	0x00003ad4

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
     3d4:	4bb7      	ldr	r3, [pc, #732]	; (6b4 <chip_vm+0x2e8>)
     3d6:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     3d8:	2200      	movs	r2, #0
     3da:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     3dc:	805a      	strh	r2, [r3, #2]
 	while (1){
		if (video_mode==VM_SCHIP) micro_pause(SLOW_DOWN);
		_get_opcode(vms.pc);
     3de:	461c      	mov	r4, r3
				//flash_write_block(PERSIST_STORE,vms.var,x+1);
				move((const uint8_t*)vms.var,block,x+1);
				break;
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash
				//flash_read_block((const uint8_t*)PERSIST_STORE,vms.var,x+1);
				move((const uint8_t*)block,vms.var,x+1);
     3e0:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     3e2:	f8df a2e4 	ldr.w	sl, [pc, #740]	; 6c8 <chip_vm+0x2fc>
     3e6:	e0db      	b.n	5a0 <chip_vm+0x1d4>
		if (video_mode==VM_SCHIP) micro_pause(SLOW_DOWN);
     3e8:	2005      	movs	r0, #5
     3ea:	f002 ff9b 	bl	3324 <micro_pause>
     3ee:	e0dc      	b.n	5aa <chip_vm+0x1de>
			debug_print(itoa(vms.pc,buffer,16));
     3f0:	2210      	movs	r2, #16
     3f2:	a902      	add	r1, sp, #8
     3f4:	f000 ff7a 	bl	12ec <itoa>
     3f8:	4faf      	ldr	r7, [pc, #700]	; (6b8 <chip_vm+0x2ec>)
     3fa:	4601      	mov	r1, r0
     3fc:	4638      	mov	r0, r7
     3fe:	f003 f8e7 	bl	35d0 <usart_print>
			debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     402:	7da0      	ldrb	r0, [r4, #22]
     404:	7de3      	ldrb	r3, [r4, #23]
     406:	2210      	movs	r2, #16
     408:	a902      	add	r1, sp, #8
     40a:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     40e:	f000 ff6d 	bl	12ec <itoa>
     412:	4601      	mov	r1, r0
     414:	4638      	mov	r0, r7
     416:	f003 f8db 	bl	35d0 <usart_print>
			debug_print("\n");
     41a:	49a8      	ldr	r1, [pc, #672]	; (6bc <chip_vm+0x2f0>)
     41c:	4638      	mov	r0, r7
     41e:	f003 f8d7 	bl	35d0 <usart_print>
     422:	e0cc      	b.n	5be <chip_vm+0x1f2>
		    if ((vms.b1|vms.b2)==0){
     424:	ea5e 0203 	orrs.w	r2, lr, r3
     428:	f000 80ba 	beq.w	5a0 <chip_vm+0x1d4>
     42c:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     430:	2ac0      	cmp	r2, #192	; 0xc0
     432:	d026      	beq.n	482 <chip_vm+0xb6>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; XO-CHIP, BP-CHIP
     434:	2ad0      	cmp	r2, #208	; 0xd0
     436:	d029      	beq.n	48c <chip_vm+0xc0>
			}else switch(vms.b2){
     438:	3be0      	subs	r3, #224	; 0xe0
     43a:	2b1f      	cmp	r3, #31
     43c:	d82b      	bhi.n	496 <chip_vm+0xca>
     43e:	e8df f013 	tbh	[pc, r3, lsl #1]
     442:	002c      	.short	0x002c
     444:	002a002a 	.word	0x002a002a
     448:	002a002a 	.word	0x002a002a
     44c:	002a002a 	.word	0x002a002a
     450:	002a002a 	.word	0x002a002a
     454:	002a002a 	.word	0x002a002a
     458:	002a002a 	.word	0x002a002a
     45c:	002f002a 	.word	0x002f002a
     460:	002a002a 	.word	0x002a002a
     464:	002a002a 	.word	0x002a002a
     468:	002a002a 	.word	0x002a002a
     46c:	002a002a 	.word	0x002a002a
     470:	002a002a 	.word	0x002a002a
     474:	0043002a 	.word	0x0043002a
     478:	003b0037 	.word	0x003b0037
     47c:	00af03b4 	.word	0x00af03b4
     480:	003f      	.short	0x003f
				gfx_scroll_down(vms.b2&0xf); 
     482:	f003 000f 	and.w	r0, r3, #15
     486:	f001 f877 	bl	1578 <gfx_scroll_down>
     48a:	e089      	b.n	5a0 <chip_vm+0x1d4>
				gfx_scroll_up(vms.b2&0xf);					
     48c:	f003 000f 	and.w	r0, r3, #15
     490:	f001 f84c 	bl	152c <gfx_scroll_up>
     494:	e084      	b.n	5a0 <chip_vm+0x1d4>
					return CHIP_BAD_OPCODE;
     496:	2002      	movs	r0, #2
     498:	e28b      	b.n	9b2 <chip_vm+0x5e6>
					gfx_cls();
     49a:	f001 f82b 	bl	14f4 <gfx_cls>
					break;
     49e:	e07f      	b.n	5a0 <chip_vm+0x1d4>
					vms.pc=vms.stack[vms.sp--];
     4a0:	7923      	ldrb	r3, [r4, #4]
     4a2:	1e5a      	subs	r2, r3, #1
     4a4:	7122      	strb	r2, [r4, #4]
     4a6:	330c      	adds	r3, #12
     4a8:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     4ac:	8023      	strh	r3, [r4, #0]
					break;
     4ae:	e077      	b.n	5a0 <chip_vm+0x1d4>
					gfx_scroll_right(4);
     4b0:	2004      	movs	r0, #4
     4b2:	f001 f8b3 	bl	161c <gfx_scroll_right>
					break;
     4b6:	e073      	b.n	5a0 <chip_vm+0x1d4>
					gfx_scroll_left(4);
     4b8:	2004      	movs	r0, #4
     4ba:	f001 f881 	bl	15c0 <gfx_scroll_left>
					break;
     4be:	e06f      	b.n	5a0 <chip_vm+0x1d4>
					set_video_mode(VM_SCHIP);
     4c0:	2001      	movs	r0, #1
     4c2:	f002 fef1 	bl	32a8 <set_video_mode>
					break; 
     4c6:	e06b      	b.n	5a0 <chip_vm+0x1d4>
					set_video_mode(VM_BPCHIP);
     4c8:	2000      	movs	r0, #0
     4ca:	f002 feed 	bl	32a8 <set_video_mode>
					break;
     4ce:	e067      	b.n	5a0 <chip_vm+0x1d4>
			vms.pc=caddr(vms.b1,vms.b2);
     4d0:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
     4d4:	f3c3 030b 	ubfx	r3, r3, #0, #12
     4d8:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     4da:	4a79      	ldr	r2, [pc, #484]	; (6c0 <chip_vm+0x2f4>)
     4dc:	7812      	ldrb	r2, [r2, #0]
     4de:	2a00      	cmp	r2, #0
     4e0:	d15e      	bne.n	5a0 <chip_vm+0x1d4>
				vms.pc<<=1;
     4e2:	005b      	lsls	r3, r3, #1
     4e4:	8023      	strh	r3, [r4, #0]
     4e6:	e05b      	b.n	5a0 <chip_vm+0x1d4>
			vms.stack[++vms.sp]=vms.pc;
     4e8:	7921      	ldrb	r1, [r4, #4]
     4ea:	3101      	adds	r1, #1
     4ec:	b2c9      	uxtb	r1, r1
     4ee:	7121      	strb	r1, [r4, #4]
     4f0:	310c      	adds	r1, #12
     4f2:	f824 2011 	strh.w	r2, [r4, r1, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     4f6:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
     4fa:	f3c3 030b 	ubfx	r3, r3, #0, #12
     4fe:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     500:	4a6f      	ldr	r2, [pc, #444]	; (6c0 <chip_vm+0x2f4>)
     502:	7812      	ldrb	r2, [r2, #0]
     504:	2a00      	cmp	r2, #0
     506:	d14b      	bne.n	5a0 <chip_vm+0x1d4>
				vms.pc<<=1;
     508:	005b      	lsls	r3, r3, #1
     50a:	8023      	strh	r3, [r4, #0]
     50c:	e048      	b.n	5a0 <chip_vm+0x1d4>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     50e:	44a0      	add	r8, r4
     510:	f898 2006 	ldrb.w	r2, [r8, #6]
     514:	429a      	cmp	r2, r3
     516:	d143      	bne.n	5a0 <chip_vm+0x1d4>
     518:	3004      	adds	r0, #4
     51a:	8020      	strh	r0, [r4, #0]
     51c:	e040      	b.n	5a0 <chip_vm+0x1d4>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     51e:	44a0      	add	r8, r4
     520:	f898 2006 	ldrb.w	r2, [r8, #6]
     524:	429a      	cmp	r2, r3
     526:	d03b      	beq.n	5a0 <chip_vm+0x1d4>
     528:	3004      	adds	r0, #4
     52a:	8020      	strh	r0, [r4, #0]
     52c:	e038      	b.n	5a0 <chip_vm+0x1d4>
			switch(vms.b2&0xf){
     52e:	f003 030f 	and.w	r3, r3, #15
     532:	2b02      	cmp	r3, #2
     534:	d00d      	beq.n	552 <chip_vm+0x186>
     536:	2b03      	cmp	r3, #3
     538:	d01d      	beq.n	576 <chip_vm+0x1aa>
     53a:	bb8b      	cbnz	r3, 5a0 <chip_vm+0x1d4>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     53c:	44a0      	add	r8, r4
     53e:	44a1      	add	r9, r4
     540:	f898 2006 	ldrb.w	r2, [r8, #6]
     544:	f899 3006 	ldrb.w	r3, [r9, #6]
     548:	429a      	cmp	r2, r3
     54a:	d129      	bne.n	5a0 <chip_vm+0x1d4>
     54c:	3004      	adds	r0, #4
     54e:	8020      	strh	r0, [r4, #0]
     550:	e026      	b.n	5a0 <chip_vm+0x1d4>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     552:	4640      	mov	r0, r8
     554:	45c8      	cmp	r8, r9
     556:	bf28      	it	cs
     558:	4648      	movcs	r0, r9
     55a:	eba9 0208 	sub.w	r2, r9, r8
     55e:	2a00      	cmp	r2, #0
     560:	bfb8      	it	lt
     562:	4252      	neglt	r2, r2
     564:	8863      	ldrh	r3, [r4, #2]
     566:	3006      	adds	r0, #6
     568:	3201      	adds	r2, #1
     56a:	4956      	ldr	r1, [pc, #344]	; (6c4 <chip_vm+0x2f8>)
     56c:	4419      	add	r1, r3
     56e:	4420      	add	r0, r4
     570:	f000 fe4b 	bl	120a <move>
				break;
     574:	e014      	b.n	5a0 <chip_vm+0x1d4>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     576:	8863      	ldrh	r3, [r4, #2]
     578:	4641      	mov	r1, r8
     57a:	45c8      	cmp	r8, r9
     57c:	bf28      	it	cs
     57e:	4649      	movcs	r1, r9
     580:	eba9 0208 	sub.w	r2, r9, r8
     584:	2a00      	cmp	r2, #0
     586:	bfb8      	it	lt
     588:	4252      	neglt	r2, r2
     58a:	3106      	adds	r1, #6
     58c:	3201      	adds	r2, #1
     58e:	4421      	add	r1, r4
     590:	484c      	ldr	r0, [pc, #304]	; (6c4 <chip_vm+0x2f8>)
     592:	4418      	add	r0, r3
     594:	f000 fe39 	bl	120a <move>
				break;
     598:	e002      	b.n	5a0 <chip_vm+0x1d4>
			vms.var[x]=vms.b2;
     59a:	44a0      	add	r8, r4
     59c:	f888 3006 	strb.w	r3, [r8, #6]
		if (video_mode==VM_SCHIP) micro_pause(SLOW_DOWN);
     5a0:	4b47      	ldr	r3, [pc, #284]	; (6c0 <chip_vm+0x2f4>)
     5a2:	781b      	ldrb	r3, [r3, #0]
     5a4:	2b01      	cmp	r3, #1
     5a6:	f43f af1f 	beq.w	3e8 <chip_vm+0x1c>
		_get_opcode(vms.pc);
     5aa:	8820      	ldrh	r0, [r4, #0]
     5ac:	4b45      	ldr	r3, [pc, #276]	; (6c4 <chip_vm+0x2f8>)
     5ae:	5c1a      	ldrb	r2, [r3, r0]
     5b0:	75a2      	strb	r2, [r4, #22]
     5b2:	4403      	add	r3, r0
     5b4:	785b      	ldrb	r3, [r3, #1]
     5b6:	75e3      	strb	r3, [r4, #23]
		if (debug){
     5b8:	2d00      	cmp	r5, #0
     5ba:	f47f af19 	bne.w	3f0 <chip_vm+0x24>
		vms.pc+=2;
     5be:	8820      	ldrh	r0, [r4, #0]
     5c0:	1c82      	adds	r2, r0, #2
     5c2:	b292      	uxth	r2, r2
     5c4:	8022      	strh	r2, [r4, #0]
		x=rx(vms.b1);
     5c6:	f894 e016 	ldrb.w	lr, [r4, #22]
     5ca:	f00e 080f 	and.w	r8, lr, #15
		y=ry(vms.b2);
     5ce:	7de3      	ldrb	r3, [r4, #23]
     5d0:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     5d4:	ea4f 111e 	mov.w	r1, lr, lsr #4
     5d8:	290f      	cmp	r1, #15
     5da:	d8e1      	bhi.n	5a0 <chip_vm+0x1d4>
     5dc:	a701      	add	r7, pc, #4	; (adr r7, 5e4 <chip_vm+0x218>)
     5de:	f857 f021 	ldr.w	pc, [r7, r1, lsl #2]
     5e2:	bf00      	nop
     5e4:	00000425 	.word	0x00000425
     5e8:	000004d1 	.word	0x000004d1
     5ec:	000004e9 	.word	0x000004e9
     5f0:	0000050f 	.word	0x0000050f
     5f4:	0000051f 	.word	0x0000051f
     5f8:	0000052f 	.word	0x0000052f
     5fc:	0000059b 	.word	0x0000059b
     600:	00000625 	.word	0x00000625
     604:	0000063d 	.word	0x0000063d
     608:	0000074d 	.word	0x0000074d
     60c:	000008db 	.word	0x000008db
     610:	000008f5 	.word	0x000008f5
     614:	00000915 	.word	0x00000915
     618:	00000925 	.word	0x00000925
     61c:	000009a9 	.word	0x000009a9
     620:	000009e9 	.word	0x000009e9
		    n=(vms.var[x]+vms.b2)>255;
     624:	44a0      	add	r8, r4
     626:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     62a:	4403      	add	r3, r0
     62c:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     630:	2bff      	cmp	r3, #255	; 0xff
     632:	bfd4      	ite	le
     634:	2300      	movle	r3, #0
     636:	2301      	movgt	r3, #1
     638:	7563      	strb	r3, [r4, #21]
			break;
     63a:	e7b1      	b.n	5a0 <chip_vm+0x1d4>
			switch(vms.b2&0xf){
     63c:	f003 030f 	and.w	r3, r3, #15
     640:	2b0e      	cmp	r3, #14
     642:	f200 82b4 	bhi.w	bae <chip_vm+0x7e2>
     646:	e8df f013 	tbh	[pc, r3, lsl #1]
     64a:	000f      	.short	0x000f
     64c:	00200016 	.word	0x00200016
     650:	0041002a 	.word	0x0041002a
     654:	005f0050 	.word	0x005f0050
     658:	02b20069 	.word	0x02b20069
     65c:	02b202b2 	.word	0x02b202b2
     660:	02b202b2 	.word	0x02b202b2
     664:	007802b2 	.word	0x007802b2
				vms.var[x]=vms.var[y];
     668:	44a1      	add	r9, r4
     66a:	f899 3006 	ldrb.w	r3, [r9, #6]
     66e:	44a0      	add	r8, r4
     670:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     674:	e794      	b.n	5a0 <chip_vm+0x1d4>
				vms.var[x]|=vms.var[y];
     676:	44a0      	add	r8, r4
     678:	44a1      	add	r9, r4
     67a:	f898 3006 	ldrb.w	r3, [r8, #6]
     67e:	f899 2006 	ldrb.w	r2, [r9, #6]
     682:	4313      	orrs	r3, r2
     684:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     688:	e78a      	b.n	5a0 <chip_vm+0x1d4>
				vms.var[x]&=vms.var[y];
     68a:	44a0      	add	r8, r4
     68c:	44a1      	add	r9, r4
     68e:	f898 3006 	ldrb.w	r3, [r8, #6]
     692:	f899 2006 	ldrb.w	r2, [r9, #6]
     696:	4013      	ands	r3, r2
     698:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     69c:	e780      	b.n	5a0 <chip_vm+0x1d4>
				vms.var[x]^=vms.var[y];
     69e:	44a0      	add	r8, r4
     6a0:	44a1      	add	r9, r4
     6a2:	f898 3006 	ldrb.w	r3, [r8, #6]
     6a6:	f899 2006 	ldrb.w	r2, [r9, #6]
     6aa:	4053      	eors	r3, r2
     6ac:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     6b0:	e776      	b.n	5a0 <chip_vm+0x1d4>
     6b2:	bf00      	nop
     6b4:	200000fc 	.word	0x200000fc
     6b8:	40013800 	.word	0x40013800
     6bc:	00003b30 	.word	0x00003b30
     6c0:	200005a0 	.word	0x200005a0
     6c4:	200005a4 	.word	0x200005a4
     6c8:	51eb851f 	.word	0x51eb851f
				n=(vms.var[x]+vms.var[y])>255;
     6cc:	44a0      	add	r8, r4
     6ce:	f898 3006 	ldrb.w	r3, [r8, #6]
     6d2:	44a1      	add	r9, r4
     6d4:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     6d8:	4413      	add	r3, r2
     6da:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     6de:	2bff      	cmp	r3, #255	; 0xff
     6e0:	bfd4      	ite	le
     6e2:	2300      	movle	r3, #0
     6e4:	2301      	movgt	r3, #1
     6e6:	7563      	strb	r3, [r4, #21]
				break;
     6e8:	e75a      	b.n	5a0 <chip_vm+0x1d4>
				n=vms.var[x]>=vms.var[y];
     6ea:	44a0      	add	r8, r4
     6ec:	f898 3006 	ldrb.w	r3, [r8, #6]
     6f0:	44a1      	add	r9, r4
     6f2:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     6f6:	1a99      	subs	r1, r3, r2
     6f8:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     6fc:	4293      	cmp	r3, r2
     6fe:	bf34      	ite	cc
     700:	2300      	movcc	r3, #0
     702:	2301      	movcs	r3, #1
     704:	7563      	strb	r3, [r4, #21]
				break;
     706:	e74b      	b.n	5a0 <chip_vm+0x1d4>
				n=(vms.var[x]&1u);
     708:	44a0      	add	r8, r4
     70a:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     70e:	085a      	lsrs	r2, r3, #1
     710:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     714:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     718:	7563      	strb	r3, [r4, #21]
				break;
     71a:	e741      	b.n	5a0 <chip_vm+0x1d4>
				n=vms.var[y]>=vms.var[x];
     71c:	44a1      	add	r9, r4
     71e:	f899 3006 	ldrb.w	r3, [r9, #6]
     722:	44a0      	add	r8, r4
     724:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     728:	1a99      	subs	r1, r3, r2
     72a:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     72e:	4293      	cmp	r3, r2
     730:	bf34      	ite	cc
     732:	2300      	movcc	r3, #0
     734:	2301      	movcs	r3, #1
     736:	7563      	strb	r3, [r4, #21]
				break;
     738:	e732      	b.n	5a0 <chip_vm+0x1d4>
				n=(vms.var[x]&128)>>7;
     73a:	44a0      	add	r8, r4
     73c:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     740:	005a      	lsls	r2, r3, #1
     742:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     746:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     748:	7563      	strb	r3, [r4, #21]
				break;
     74a:	e729      	b.n	5a0 <chip_vm+0x1d4>
			switch (vms.b2&0xf){
     74c:	f003 030f 	and.w	r3, r3, #15
     750:	2b0f      	cmp	r3, #15
     752:	f200 822e 	bhi.w	bb2 <chip_vm+0x7e6>
     756:	e8df f003 	tbb	[pc, r3]
     75a:	1408      	.short	0x1408
     75c:	4b463b1e 	.word	0x4b463b1e
     760:	726b6156 	.word	0x726b6156
     764:	9e928579 	.word	0x9e928579
     768:	baac      	.short	0xbaac
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     76a:	44a0      	add	r8, r4
     76c:	44a1      	add	r9, r4
     76e:	f898 2006 	ldrb.w	r2, [r8, #6]
     772:	f899 3006 	ldrb.w	r3, [r9, #6]
     776:	429a      	cmp	r2, r3
     778:	f43f af12 	beq.w	5a0 <chip_vm+0x1d4>
     77c:	3004      	adds	r0, #4
     77e:	8020      	strh	r0, [r4, #0]
     780:	e70e      	b.n	5a0 <chip_vm+0x1d4>
				key_tone(vms.var[x],vms.var[y],false);
     782:	44a1      	add	r9, r4
     784:	44a0      	add	r8, r4
     786:	2200      	movs	r2, #0
     788:	f899 1006 	ldrb.w	r1, [r9, #6]
     78c:	f898 0006 	ldrb.w	r0, [r8, #6]
     790:	f002 f805 	bl	279e <key_tone>
				break;
     794:	e704      	b.n	5a0 <chip_vm+0x1d4>
				select_font(FONT_ASCII);
     796:	2002      	movs	r0, #2
     798:	f002 f9a2 	bl	2ae0 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     79c:	44a1      	add	r9, r4
     79e:	44a0      	add	r8, r4
     7a0:	f899 1006 	ldrb.w	r1, [r9, #6]
     7a4:	f898 0006 	ldrb.w	r0, [r8, #6]
     7a8:	f002 fa42 	bl	2c30 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     7ac:	8860      	ldrh	r0, [r4, #2]
     7ae:	f8df 9318 	ldr.w	r9, [pc, #792]	; ac8 <chip_vm+0x6fc>
     7b2:	4448      	add	r0, r9
     7b4:	f002 fa70 	bl	2c98 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     7b8:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     7bc:	eb09 0008 	add.w	r0, r9, r8
     7c0:	f000 fd2d 	bl	121e <strlen>
     7c4:	f108 0801 	add.w	r8, r8, #1
     7c8:	4480      	add	r8, r0
     7ca:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     7ce:	e6e7      	b.n	5a0 <chip_vm+0x1d4>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     7d0:	44a1      	add	r9, r4
     7d2:	44a0      	add	r8, r4
     7d4:	2303      	movs	r3, #3
     7d6:	2200      	movs	r2, #0
     7d8:	f899 1006 	ldrb.w	r1, [r9, #6]
     7dc:	f898 0006 	ldrb.w	r0, [r8, #6]
     7e0:	f000 fe12 	bl	1408 <gfx_blit>
				break;
     7e4:	e6dc      	b.n	5a0 <chip_vm+0x1d4>
				noise((x<<4)+y);
     7e6:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     7ea:	f001 ffeb 	bl	27c4 <noise>
				break;
     7ee:	e6d7      	b.n	5a0 <chip_vm+0x1d4>
				key_tone(vms.var[x],vms.var[y],true);
     7f0:	44a1      	add	r9, r4
     7f2:	44a0      	add	r8, r4
     7f4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     7f8:	f899 1006 	ldrb.w	r1, [r9, #6]
     7fc:	f898 0006 	ldrb.w	r0, [r8, #6]
     800:	f001 ffcd 	bl	279e <key_tone>
				break;
     804:	e6cc      	b.n	5a0 <chip_vm+0x1d4>
				vms.stack[++vms.sp]=vms.var[x];
     806:	7923      	ldrb	r3, [r4, #4]
     808:	3301      	adds	r3, #1
     80a:	b2db      	uxtb	r3, r3
     80c:	7123      	strb	r3, [r4, #4]
     80e:	330c      	adds	r3, #12
     810:	44a0      	add	r8, r4
     812:	f898 2006 	ldrb.w	r2, [r8, #6]
     816:	f824 2013 	strh.w	r2, [r4, r3, lsl #1]
				break;
     81a:	e6c1      	b.n	5a0 <chip_vm+0x1d4>
				vms.var[x]=vms.stack[vms.sp--];
     81c:	7923      	ldrb	r3, [r4, #4]
     81e:	1e5a      	subs	r2, r3, #1
     820:	7122      	strb	r2, [r4, #4]
     822:	44a0      	add	r8, r4
     824:	330c      	adds	r3, #12
     826:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     82a:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     82e:	e6b7      	b.n	5a0 <chip_vm+0x1d4>
				{ 	vmode_params_t *vparams=get_video_params();
     830:	f002 fd64 	bl	32fc <get_video_params>
					vms.var[x]=vparams->hres;
     834:	44a0      	add	r8, r4
     836:	8983      	ldrh	r3, [r0, #12]
     838:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     83c:	e6b0      	b.n	5a0 <chip_vm+0x1d4>
					vmode_params_t *vparams=get_video_params();
     83e:	f002 fd5d 	bl	32fc <get_video_params>
					vms.var[x]=vparams->vres;
     842:	44a0      	add	r8, r4
     844:	89c3      	ldrh	r3, [r0, #14]
     846:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     84a:	e6a9      	b.n	5a0 <chip_vm+0x1d4>
			    vms.var[x] |= (1<<(y&0x7));
     84c:	44a0      	add	r8, r4
     84e:	f009 0907 	and.w	r9, r9, #7
     852:	2301      	movs	r3, #1
     854:	fa03 f309 	lsl.w	r3, r3, r9
     858:	f898 2006 	ldrb.w	r2, [r8, #6]
     85c:	4313      	orrs	r3, r2
     85e:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     862:	e69d      	b.n	5a0 <chip_vm+0x1d4>
			    vms.var[x] &= ~(1<<(y&0x7));
     864:	44a0      	add	r8, r4
     866:	f009 0207 	and.w	r2, r9, #7
     86a:	2301      	movs	r3, #1
     86c:	fa03 f202 	lsl.w	r2, r3, r2
     870:	f898 3006 	ldrb.w	r3, [r8, #6]
     874:	ea23 0302 	bic.w	r3, r3, r2
     878:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     87c:	e690      	b.n	5a0 <chip_vm+0x1d4>
   			    vms.var[x] ^= (1<<(y&0x7));
     87e:	44a0      	add	r8, r4
     880:	f009 0907 	and.w	r9, r9, #7
     884:	2301      	movs	r3, #1
     886:	fa03 f309 	lsl.w	r3, r3, r9
     88a:	f898 2006 	ldrb.w	r2, [r8, #6]
     88e:	4053      	eors	r3, r2
     890:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     894:	e684      	b.n	5a0 <chip_vm+0x1d4>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     896:	44a0      	add	r8, r4
     898:	f898 3006 	ldrb.w	r3, [r8, #6]
     89c:	f009 0907 	and.w	r9, r9, #7
     8a0:	fa43 f309 	asr.w	r3, r3, r9
     8a4:	f013 0f01 	tst.w	r3, #1
     8a8:	f43f ae7a 	beq.w	5a0 <chip_vm+0x1d4>
     8ac:	3004      	adds	r0, #4
     8ae:	8020      	strh	r0, [r4, #0]
     8b0:	e676      	b.n	5a0 <chip_vm+0x1d4>
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     8b2:	44a0      	add	r8, r4
     8b4:	f898 3006 	ldrb.w	r3, [r8, #6]
     8b8:	f009 0907 	and.w	r9, r9, #7
     8bc:	fa43 f309 	asr.w	r3, r3, r9
     8c0:	f013 0f01 	tst.w	r3, #1
     8c4:	f47f ae6c 	bne.w	5a0 <chip_vm+0x1d4>
     8c8:	3004      	adds	r0, #4
     8ca:	8020      	strh	r0, [r4, #0]
     8cc:	e668      	b.n	5a0 <chip_vm+0x1d4>
			    vms.var[15]=gfx_get_pixel(x,y);
     8ce:	4649      	mov	r1, r9
     8d0:	4640      	mov	r0, r8
     8d2:	f000 fed7 	bl	1684 <gfx_get_pixel>
     8d6:	7560      	strb	r0, [r4, #21]
				break;  	
     8d8:	e662      	b.n	5a0 <chip_vm+0x1d4>
			vms.ix=caddr(vms.b1,vms.b2);
     8da:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
     8de:	f3c3 030b 	ubfx	r3, r3, #0, #12
     8e2:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     8e4:	4a77      	ldr	r2, [pc, #476]	; (ac4 <chip_vm+0x6f8>)
     8e6:	7812      	ldrb	r2, [r2, #0]
     8e8:	b90a      	cbnz	r2, 8ee <chip_vm+0x522>
				vms.ix<<=1;
     8ea:	005b      	lsls	r3, r3, #1
     8ec:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     8ee:	2300      	movs	r3, #0
     8f0:	7163      	strb	r3, [r4, #5]
			break;
     8f2:	e655      	b.n	5a0 <chip_vm+0x1d4>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     8f4:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
     8f8:	f3c3 030b 	ubfx	r3, r3, #0, #12
     8fc:	79a2      	ldrb	r2, [r4, #6]
     8fe:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     902:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     904:	4a6f      	ldr	r2, [pc, #444]	; (ac4 <chip_vm+0x6f8>)
     906:	7812      	ldrb	r2, [r2, #0]
     908:	2a00      	cmp	r2, #0
     90a:	f47f ae49 	bne.w	5a0 <chip_vm+0x1d4>
				vms.pc<<=1;
     90e:	005b      	lsls	r3, r3, #1
     910:	8023      	strh	r3, [r4, #0]
     912:	e645      	b.n	5a0 <chip_vm+0x1d4>
			vms.var[x]=rand()&vms.b2;
     914:	f7ff fd4c 	bl	3b0 <rand>
     918:	44a0      	add	r8, r4
     91a:	7de3      	ldrb	r3, [r4, #23]
     91c:	4018      	ands	r0, r3
     91e:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     922:	e63d      	b.n	5a0 <chip_vm+0x1d4>
			if (!n){
     924:	f013 030f 	ands.w	r3, r3, #15
     928:	d11f      	bne.n	96a <chip_vm+0x59e>
				if (vms.sprite_mem==RAM_MEM){
     92a:	7963      	ldrb	r3, [r4, #5]
     92c:	b97b      	cbnz	r3, 94e <chip_vm+0x582>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     92e:	44a1      	add	r9, r4
     930:	f999 1006 	ldrsb.w	r1, [r9, #6]
     934:	44a0      	add	r8, r4
     936:	f998 0006 	ldrsb.w	r0, [r8, #6]
     93a:	8863      	ldrh	r3, [r4, #2]
     93c:	4a62      	ldr	r2, [pc, #392]	; (ac8 <chip_vm+0x6fc>)
     93e:	4413      	add	r3, r2
     940:	9300      	str	r3, [sp, #0]
     942:	2310      	movs	r3, #16
     944:	461a      	mov	r2, r3
     946:	f000 fec3 	bl	16d0 <gfx_sprite>
     94a:	7560      	strb	r0, [r4, #21]
     94c:	e628      	b.n	5a0 <chip_vm+0x1d4>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     94e:	44a1      	add	r9, r4
     950:	f999 1006 	ldrsb.w	r1, [r9, #6]
     954:	44a0      	add	r8, r4
     956:	f998 0006 	ldrsb.w	r0, [r8, #6]
     95a:	8863      	ldrh	r3, [r4, #2]
     95c:	9300      	str	r3, [sp, #0]
     95e:	2310      	movs	r3, #16
     960:	461a      	mov	r2, r3
     962:	f000 feb5 	bl	16d0 <gfx_sprite>
     966:	7560      	strb	r0, [r4, #21]
     968:	e61a      	b.n	5a0 <chip_vm+0x1d4>
				if (vms.sprite_mem==RAM_MEM){
     96a:	7962      	ldrb	r2, [r4, #5]
     96c:	b97a      	cbnz	r2, 98e <chip_vm+0x5c2>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     96e:	44a1      	add	r9, r4
     970:	f999 1006 	ldrsb.w	r1, [r9, #6]
     974:	44a0      	add	r8, r4
     976:	f998 0006 	ldrsb.w	r0, [r8, #6]
     97a:	8862      	ldrh	r2, [r4, #2]
     97c:	f8df e148 	ldr.w	lr, [pc, #328]	; ac8 <chip_vm+0x6fc>
     980:	4472      	add	r2, lr
     982:	9200      	str	r2, [sp, #0]
     984:	2208      	movs	r2, #8
     986:	f000 fea3 	bl	16d0 <gfx_sprite>
     98a:	7560      	strb	r0, [r4, #21]
     98c:	e608      	b.n	5a0 <chip_vm+0x1d4>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     98e:	44a1      	add	r9, r4
     990:	f999 1006 	ldrsb.w	r1, [r9, #6]
     994:	44a0      	add	r8, r4
     996:	f998 0006 	ldrsb.w	r0, [r8, #6]
     99a:	8862      	ldrh	r2, [r4, #2]
     99c:	9200      	str	r2, [sp, #0]
     99e:	2208      	movs	r2, #8
     9a0:	f000 fe96 	bl	16d0 <gfx_sprite>
     9a4:	7560      	strb	r0, [r4, #21]
     9a6:	e5fb      	b.n	5a0 <chip_vm+0x1d4>
				switch(vms.b2){
     9a8:	2b9e      	cmp	r3, #158	; 0x9e
     9aa:	d005      	beq.n	9b8 <chip_vm+0x5ec>
     9ac:	2ba1      	cmp	r3, #161	; 0xa1
     9ae:	d00f      	beq.n	9d0 <chip_vm+0x604>
					return CHIP_BAD_OPCODE;
     9b0:	2002      	movs	r0, #2
				
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
}//schipp()
     9b2:	b008      	add	sp, #32
     9b4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     9b8:	44a0      	add	r8, r4
     9ba:	f898 0006 	ldrb.w	r0, [r8, #6]
     9be:	f000 fb03 	bl	fc8 <btn_query_down>
     9c2:	2800      	cmp	r0, #0
     9c4:	f43f adec 	beq.w	5a0 <chip_vm+0x1d4>
     9c8:	8823      	ldrh	r3, [r4, #0]
     9ca:	3302      	adds	r3, #2
     9cc:	8023      	strh	r3, [r4, #0]
     9ce:	e5e7      	b.n	5a0 <chip_vm+0x1d4>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     9d0:	44a0      	add	r8, r4
     9d2:	f898 0006 	ldrb.w	r0, [r8, #6]
     9d6:	f000 faf7 	bl	fc8 <btn_query_down>
     9da:	2800      	cmp	r0, #0
     9dc:	f47f ade0 	bne.w	5a0 <chip_vm+0x1d4>
     9e0:	8823      	ldrh	r3, [r4, #0]
     9e2:	3302      	adds	r3, #2
     9e4:	8023      	strh	r3, [r4, #0]
     9e6:	e5db      	b.n	5a0 <chip_vm+0x1d4>
			switch(vms.b2){
     9e8:	3b01      	subs	r3, #1
     9ea:	2b84      	cmp	r3, #132	; 0x84
     9ec:	f200 80e3 	bhi.w	bb6 <chip_vm+0x7ea>
     9f0:	e8df f003 	tbb	[pc, r3]
     9f4:	e1e14843 	.word	0xe1e14843
     9f8:	e14ee1e1 	.word	0xe14ee1e1
     9fc:	e1e154e1 	.word	0xe1e154e1
     a00:	e1e1e1e1 	.word	0xe1e1e1e1
     a04:	e1e1e1e1 	.word	0xe1e1e1e1
     a08:	60e1e15a 	.word	0x60e1e15a
     a0c:	e1e1e1e1 	.word	0xe1e1e1e1
     a10:	e1e170e1 	.word	0xe1e170e1
     a14:	e1e1e1e1 	.word	0xe1e1e1e1
     a18:	e1e1e1e1 	.word	0xe1e1e1e1
     a1c:	e1e1e177 	.word	0xe1e1e177
     a20:	86e1e1e1 	.word	0x86e1e1e1
     a24:	e194e1e1 	.word	0xe194e1e1
     a28:	e1e1e1e1 	.word	0xe1e1e1e1
     a2c:	e1e1e1e1 	.word	0xe1e1e1e1
     a30:	e1e1e1e1 	.word	0xe1e1e1e1
     a34:	e1e1e1e1 	.word	0xe1e1e1e1
     a38:	e1e1e1e1 	.word	0xe1e1e1e1
     a3c:	e1e1e1e1 	.word	0xe1e1e1e1
     a40:	e1e1e1e1 	.word	0xe1e1e1e1
     a44:	e1e1e1e1 	.word	0xe1e1e1e1
     a48:	e1e1e1b9 	.word	0xe1e1e1b9
     a4c:	e1e1e1e1 	.word	0xe1e1e1e1
     a50:	e1e1e1e1 	.word	0xe1e1e1e1
     a54:	e1e1e1e1 	.word	0xe1e1e1e1
     a58:	e1e1e1c2 	.word	0xe1e1e1c2
     a5c:	e1e1e1e1 	.word	0xe1e1e1e1
     a60:	e1e1e1e1 	.word	0xe1e1e1e1
     a64:	e1e1e1e1 	.word	0xe1e1e1e1
     a68:	e1e1e1cb 	.word	0xe1e1e1cb
     a6c:	e1e1e1e1 	.word	0xe1e1e1e1
     a70:	e1e1e1e1 	.word	0xe1e1e1e1
     a74:	e1e1e1e1 	.word	0xe1e1e1e1
     a78:	d3          	.byte	0xd3
     a79:	00          	.byte	0x00
				sprite_bpp=vms.b1&0x3;
     a7a:	f00e 0303 	and.w	r3, lr, #3
     a7e:	4a13      	ldr	r2, [pc, #76]	; (acc <chip_vm+0x700>)
     a80:	7013      	strb	r3, [r2, #0]
				break;
     a82:	e58d      	b.n	5a0 <chip_vm+0x1d4>
				load_sound_buffer(&game_ram[vms.ix]);
     a84:	8863      	ldrh	r3, [r4, #2]
     a86:	4810      	ldr	r0, [pc, #64]	; (ac8 <chip_vm+0x6fc>)
     a88:	4418      	add	r0, r3
     a8a:	f001 fe42 	bl	2712 <load_sound_buffer>
				break;	
     a8e:	e587      	b.n	5a0 <chip_vm+0x1d4>
				vms.var[x]=game_timer;
     a90:	4b0f      	ldr	r3, [pc, #60]	; (ad0 <chip_vm+0x704>)
     a92:	881b      	ldrh	r3, [r3, #0]
     a94:	44a0      	add	r8, r4
     a96:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     a9a:	e581      	b.n	5a0 <chip_vm+0x1d4>
				vms.var[x]=btn_wait_any();
     a9c:	f000 fac8 	bl	1030 <btn_wait_any>
     aa0:	44a0      	add	r8, r4
     aa2:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     aa6:	e57b      	b.n	5a0 <chip_vm+0x1d4>
				game_timer=vms.var[x];
     aa8:	44a0      	add	r8, r4
     aaa:	f898 2006 	ldrb.w	r2, [r8, #6]
     aae:	4b08      	ldr	r3, [pc, #32]	; (ad0 <chip_vm+0x704>)
     ab0:	801a      	strh	r2, [r3, #0]
				break;
     ab2:	e575      	b.n	5a0 <chip_vm+0x1d4>
				tone(523,vms.var[x]);
     ab4:	44a0      	add	r8, r4
     ab6:	f898 1006 	ldrb.w	r1, [r8, #6]
     aba:	f240 200b 	movw	r0, #523	; 0x20b
     abe:	f001 fdf3 	bl	26a8 <tone>
				break;
     ac2:	e56d      	b.n	5a0 <chip_vm+0x1d4>
     ac4:	200005a0 	.word	0x200005a0
     ac8:	200005a4 	.word	0x200005a4
     acc:	20000094 	.word	0x20000094
     ad0:	20004d30 	.word	0x20004d30
				vms.ix += vms.var[x];
     ad4:	44a0      	add	r8, r4
     ad6:	f898 3006 	ldrb.w	r3, [r8, #6]
     ada:	8862      	ldrh	r2, [r4, #2]
     adc:	4413      	add	r3, r2
     ade:	8063      	strh	r3, [r4, #2]
				break;
     ae0:	e55e      	b.n	5a0 <chip_vm+0x1d4>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     ae2:	44a0      	add	r8, r4
     ae4:	f898 3006 	ldrb.w	r3, [r8, #6]
     ae8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     aec:	4a33      	ldr	r2, [pc, #204]	; (bbc <chip_vm+0x7f0>)
     aee:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     af2:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     af4:	2301      	movs	r3, #1
     af6:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     af8:	2000      	movs	r0, #0
     afa:	f001 fff1 	bl	2ae0 <select_font>
				break;
     afe:	e54f      	b.n	5a0 <chip_vm+0x1d4>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     b00:	44a0      	add	r8, r4
     b02:	f898 3006 	ldrb.w	r3, [r8, #6]
     b06:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     b0a:	4a2d      	ldr	r2, [pc, #180]	; (bc0 <chip_vm+0x7f4>)
     b0c:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     b10:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     b12:	2001      	movs	r0, #1
     b14:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     b16:	f001 ffe3 	bl	2ae0 <select_font>
				break;
     b1a:	e541      	b.n	5a0 <chip_vm+0x1d4>
				n=vms.var[x];
     b1c:	44a0      	add	r8, r4
     b1e:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     b22:	4a28      	ldr	r2, [pc, #160]	; (bc4 <chip_vm+0x7f8>)
     b24:	fba2 0301 	umull	r0, r3, r2, r1
     b28:	08db      	lsrs	r3, r3, #3
     b2a:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     b2e:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     b32:	f884 005a 	strb.w	r0, [r4, #90]	; 0x5a
				block[1]=n%10;
     b36:	b2db      	uxtb	r3, r3
     b38:	fba2 0203 	umull	r0, r2, r2, r3
     b3c:	08d2      	lsrs	r2, r2, #3
     b3e:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     b42:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     b46:	f884 3059 	strb.w	r3, [r4, #89]	; 0x59
				block[0]=n/10;
     b4a:	fbaa 2301 	umull	r2, r3, sl, r1
     b4e:	095b      	lsrs	r3, r3, #5
     b50:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     b54:	8863      	ldrh	r3, [r4, #2]
     b56:	2203      	movs	r2, #3
     b58:	491b      	ldr	r1, [pc, #108]	; (bc8 <chip_vm+0x7fc>)
     b5a:	4419      	add	r1, r3
     b5c:	f104 0058 	add.w	r0, r4, #88	; 0x58
     b60:	f000 fb53 	bl	120a <move>
				break;
     b64:	e51c      	b.n	5a0 <chip_vm+0x1d4>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     b66:	8863      	ldrh	r3, [r4, #2]
     b68:	f108 0201 	add.w	r2, r8, #1
     b6c:	4916      	ldr	r1, [pc, #88]	; (bc8 <chip_vm+0x7fc>)
     b6e:	4419      	add	r1, r3
     b70:	4630      	mov	r0, r6
     b72:	f000 fb4a 	bl	120a <move>
				break;
     b76:	e513      	b.n	5a0 <chip_vm+0x1d4>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     b78:	8863      	ldrh	r3, [r4, #2]
     b7a:	f108 0201 	add.w	r2, r8, #1
     b7e:	4631      	mov	r1, r6
     b80:	4811      	ldr	r0, [pc, #68]	; (bc8 <chip_vm+0x7fc>)
     b82:	4418      	add	r0, r3
     b84:	f000 fb41 	bl	120a <move>
				break;
     b88:	e50a      	b.n	5a0 <chip_vm+0x1d4>
				move((const uint8_t*)vms.var,block,x+1);
     b8a:	f108 0201 	add.w	r2, r8, #1
     b8e:	f104 0158 	add.w	r1, r4, #88	; 0x58
     b92:	4630      	mov	r0, r6
     b94:	f000 fb39 	bl	120a <move>
				break;
     b98:	e502      	b.n	5a0 <chip_vm+0x1d4>
				move((const uint8_t*)block,vms.var,x+1);
     b9a:	f108 0201 	add.w	r2, r8, #1
     b9e:	4631      	mov	r1, r6
     ba0:	f104 0058 	add.w	r0, r4, #88	; 0x58
     ba4:	f000 fb31 	bl	120a <move>
				break;
     ba8:	e4fa      	b.n	5a0 <chip_vm+0x1d4>
					return CHIP_EXIT_OK;
     baa:	2001      	movs	r0, #1
     bac:	e701      	b.n	9b2 <chip_vm+0x5e6>
				return CHIP_BAD_OPCODE;
     bae:	2002      	movs	r0, #2
     bb0:	e6ff      	b.n	9b2 <chip_vm+0x5e6>
				return CHIP_BAD_OPCODE;
     bb2:	2002      	movs	r0, #2
     bb4:	e6fd      	b.n	9b2 <chip_vm+0x5e6>
				return CHIP_BAD_OPCODE;
     bb6:	2002      	movs	r0, #2
     bb8:	e6fb      	b.n	9b2 <chip_vm+0x5e6>
     bba:	bf00      	nop
     bbc:	000039bc 	.word	0x000039bc
     bc0:	0000391c 	.word	0x0000391c
     bc4:	cccccccd 	.word	0xcccccccd
     bc8:	200005a4 	.word	0x200005a4

00000bcc <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     bcc:	2200      	movs	r2, #0
     bce:	4b0f      	ldr	r3, [pc, #60]	; (c0c <flash_enable+0x40>)
     bd0:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     bd2:	4b0f      	ldr	r3, [pc, #60]	; (c10 <flash_enable+0x44>)
     bd4:	681b      	ldr	r3, [r3, #0]
     bd6:	f013 0f01 	tst.w	r3, #1
     bda:	d10b      	bne.n	bf4 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     bdc:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     be0:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     be4:	6813      	ldr	r3, [r2, #0]
     be6:	f043 0301 	orr.w	r3, r3, #1
     bea:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     bec:	6813      	ldr	r3, [r2, #0]
     bee:	f013 0f02 	tst.w	r3, #2
     bf2:	d0fb      	beq.n	bec <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     bf4:	4b07      	ldr	r3, [pc, #28]	; (c14 <flash_enable+0x48>)
     bf6:	4a08      	ldr	r2, [pc, #32]	; (c18 <flash_enable+0x4c>)
     bf8:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     bfa:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     bfe:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     c00:	6918      	ldr	r0, [r3, #16]
     c02:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     c06:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     c0a:	4770      	bx	lr
     c0c:	20000174 	.word	0x20000174
     c10:	40021000 	.word	0x40021000
     c14:	40022000 	.word	0x40022000
     c18:	45670123 	.word	0x45670123

00000c1c <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     c1c:	4a0b      	ldr	r2, [pc, #44]	; (c4c <flash_write_hword+0x30>)
     c1e:	68d3      	ldr	r3, [r2, #12]
     c20:	f013 0f01 	tst.w	r3, #1
     c24:	d1fb      	bne.n	c1e <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     c26:	4b09      	ldr	r3, [pc, #36]	; (c4c <flash_write_hword+0x30>)
     c28:	68da      	ldr	r2, [r3, #12]
     c2a:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     c2e:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     c30:	2201      	movs	r2, #1
     c32:	611a      	str	r2, [r3, #16]
	*address=hword;
     c34:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     c36:	68da      	ldr	r2, [r3, #12]
     c38:	f012 0f01 	tst.w	r2, #1
     c3c:	d003      	beq.n	c46 <flash_write_hword+0x2a>
     c3e:	68da      	ldr	r2, [r3, #12]
     c40:	f012 0f20 	tst.w	r2, #32
     c44:	d0f7      	beq.n	c36 <flash_write_hword+0x1a>
	return *address==hword;
}
     c46:	2001      	movs	r0, #1
     c48:	4770      	bx	lr
     c4a:	bf00      	nop
     c4c:	40022000 	.word	0x40022000

00000c50 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     c50:	283f      	cmp	r0, #63	; 0x3f
     c52:	d914      	bls.n	c7e <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     c54:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     c56:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     c58:	1c81      	adds	r1, r0, #2
     c5a:	8802      	ldrh	r2, [r0, #0]
     c5c:	f64f 73ff 	movw	r3, #65535	; 0xffff
     c60:	429a      	cmp	r2, r3
     c62:	d110      	bne.n	c86 <flash_erase_row+0x36>
     c64:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     c68:	460b      	mov	r3, r1
     c6a:	f64f 74ff 	movw	r4, #65535	; 0xffff
     c6e:	f833 2b02 	ldrh.w	r2, [r3], #2
     c72:	42a2      	cmp	r2, r4
     c74:	d107      	bne.n	c86 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     c76:	429d      	cmp	r5, r3
     c78:	d1f9      	bne.n	c6e <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     c7a:	2001      	movs	r0, #1
     c7c:	e02f      	b.n	cde <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     c7e:	2000      	movs	r0, #0
     c80:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     c82:	2000      	movs	r0, #0
     c84:	e02b      	b.n	cde <flash_erase_row+0x8e>
     c86:	4b17      	ldr	r3, [pc, #92]	; (ce4 <flash_erase_row+0x94>)
     c88:	691b      	ldr	r3, [r3, #16]
     c8a:	f013 0f80 	tst.w	r3, #128	; 0x80
     c8e:	d1f8      	bne.n	c82 <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     c90:	4b14      	ldr	r3, [pc, #80]	; (ce4 <flash_erase_row+0x94>)
     c92:	68da      	ldr	r2, [r3, #12]
     c94:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     c98:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     c9a:	2202      	movs	r2, #2
     c9c:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     c9e:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     ca0:	691a      	ldr	r2, [r3, #16]
     ca2:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     ca6:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     ca8:	68da      	ldr	r2, [r3, #12]
     caa:	f012 0f01 	tst.w	r2, #1
     cae:	d003      	beq.n	cb8 <flash_erase_row+0x68>
     cb0:	68da      	ldr	r2, [r3, #12]
     cb2:	f012 0f20 	tst.w	r2, #32
     cb6:	d0f7      	beq.n	ca8 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     cb8:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     cba:	f64f 72ff 	movw	r2, #65535	; 0xffff
     cbe:	4293      	cmp	r3, r2
     cc0:	d107      	bne.n	cd2 <flash_erase_row+0x82>
     cc2:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     cc6:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     cca:	4293      	cmp	r3, r2
     ccc:	d101      	bne.n	cd2 <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     cce:	4281      	cmp	r1, r0
     cd0:	d1f9      	bne.n	cc6 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     cd2:	f64f 70ff 	movw	r0, #65535	; 0xffff
     cd6:	4283      	cmp	r3, r0
     cd8:	bf14      	ite	ne
     cda:	2000      	movne	r0, #0
     cdc:	2001      	moveq	r0, #1
}
     cde:	bc30      	pop	{r4, r5}
     ce0:	4770      	bx	lr
     ce2:	bf00      	nop
     ce4:	40022000 	.word	0x40022000

00000ce8 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     ce8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     cea:	4b1c      	ldr	r3, [pc, #112]	; (d5c <flash_sync+0x74>)
     cec:	781b      	ldrb	r3, [r3, #0]
     cee:	f013 0f01 	tst.w	r3, #1
     cf2:	d102      	bne.n	cfa <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     cf4:	2301      	movs	r3, #1
}
     cf6:	4618      	mov	r0, r3
     cf8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     cfa:	4b18      	ldr	r3, [pc, #96]	; (d5c <flash_sync+0x74>)
     cfc:	7858      	ldrb	r0, [r3, #1]
     cfe:	f7ff ffa7 	bl	c50 <flash_erase_row>
     d02:	4603      	mov	r3, r0
     d04:	2800      	cmp	r0, #0
     d06:	d0f6      	beq.n	cf6 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     d08:	4e14      	ldr	r6, [pc, #80]	; (d5c <flash_sync+0x74>)
     d0a:	7875      	ldrb	r5, [r6, #1]
     d0c:	02ad      	lsls	r5, r5, #10
     d0e:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d10:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     d12:	f64f 77ff 	movw	r7, #65535	; 0xffff
     d16:	e004      	b.n	d22 <flash_sync+0x3a>
		dest++;
     d18:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d1a:	3401      	adds	r4, #1
     d1c:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     d20:	d00a      	beq.n	d38 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     d22:	f836 1b02 	ldrh.w	r1, [r6], #2
     d26:	42b9      	cmp	r1, r7
     d28:	d0f6      	beq.n	d18 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     d2a:	4628      	mov	r0, r5
     d2c:	f7ff ff76 	bl	c1c <flash_write_hword>
     d30:	2800      	cmp	r0, #0
     d32:	d1f1      	bne.n	d18 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     d34:	2c00      	cmp	r4, #0
     d36:	dd04      	ble.n	d42 <flash_sync+0x5a>
     d38:	4a08      	ldr	r2, [pc, #32]	; (d5c <flash_sync+0x74>)
     d3a:	7813      	ldrb	r3, [r2, #0]
     d3c:	f023 0304 	bic.w	r3, r3, #4
     d40:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     d42:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     d46:	d106      	bne.n	d56 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     d48:	4a04      	ldr	r2, [pc, #16]	; (d5c <flash_sync+0x74>)
     d4a:	7813      	ldrb	r3, [r2, #0]
     d4c:	f023 0301 	bic.w	r3, r3, #1
     d50:	7013      	strb	r3, [r2, #0]
			return 1;
     d52:	2301      	movs	r3, #1
     d54:	e7cf      	b.n	cf6 <flash_sync+0xe>
		return 0;
     d56:	2300      	movs	r3, #0
     d58:	e7cd      	b.n	cf6 <flash_sync+0xe>
     d5a:	bf00      	nop
     d5c:	20000174 	.word	0x20000174

00000d60 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     d60:	2200      	movs	r2, #0
     d62:	4b01      	ldr	r3, [pc, #4]	; (d68 <flash_flush+0x8>)
     d64:	701a      	strb	r2, [r3, #0]
     d66:	4770      	bx	lr
     d68:	20000174 	.word	0x20000174

00000d6c <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     d6c:	b508      	push	{r3, lr}
	flash_sync();
     d6e:	f7ff ffbb 	bl	ce8 <flash_sync>
	row_buff.flags=0;
     d72:	2200      	movs	r2, #0
     d74:	4b03      	ldr	r3, [pc, #12]	; (d84 <flash_disable+0x18>)
     d76:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     d78:	4a03      	ldr	r2, [pc, #12]	; (d88 <flash_disable+0x1c>)
     d7a:	6913      	ldr	r3, [r2, #16]
     d7c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     d80:	6113      	str	r3, [r2, #16]
     d82:	bd08      	pop	{r3, pc}
     d84:	20000174 	.word	0x20000174
     d88:	40022000 	.word	0x40022000

00000d8c <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     d8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     d90:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     d94:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     d98:	d92c      	bls.n	df4 <flash_write_byte+0x68>
     d9a:	460e      	mov	r6, r1
     d9c:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     d9e:	4b16      	ldr	r3, [pc, #88]	; (df8 <flash_write_byte+0x6c>)
     da0:	785b      	ldrb	r3, [r3, #1]
     da2:	4598      	cmp	r8, r3
     da4:	d019      	beq.n	dda <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     da6:	f7ff ff9f 	bl	ce8 <flash_sync>
     daa:	4603      	mov	r3, r0
     dac:	b1f8      	cbz	r0, dee <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     dae:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     db2:	f023 0303 	bic.w	r3, r3, #3
     db6:	4a10      	ldr	r2, [pc, #64]	; (df8 <flash_write_byte+0x6c>)
     db8:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     dbc:	f833 4b02 	ldrh.w	r4, [r3], #2
     dc0:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     dc4:	42ab      	cmp	r3, r5
     dc6:	d1f9      	bne.n	dbc <flash_write_byte+0x30>
	row_buff.row=r;
     dc8:	4a0b      	ldr	r2, [pc, #44]	; (df8 <flash_write_byte+0x6c>)
     dca:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     dce:	7813      	ldrb	r3, [r2, #0]
     dd0:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     dd4:	f043 0302 	orr.w	r3, r3, #2
     dd8:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     dda:	4a07      	ldr	r2, [pc, #28]	; (df8 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     ddc:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     de0:	4413      	add	r3, r2
     de2:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     de4:	7813      	ldrb	r3, [r2, #0]
     de6:	f043 0301 	orr.w	r3, r3, #1
     dea:	7013      	strb	r3, [r2, #0]
	return 1;
     dec:	2301      	movs	r3, #1
}
     dee:	4618      	mov	r0, r3
     df0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     df4:	2300      	movs	r3, #0
     df6:	e7fa      	b.n	dee <flash_write_byte+0x62>
     df8:	20000174 	.word	0x20000174

00000dfc <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     dfc:	2a00      	cmp	r2, #0
     dfe:	dd13      	ble.n	e28 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     e00:	b410      	push	{r4}
     e02:	4603      	mov	r3, r0
     e04:	3901      	subs	r1, #1
     e06:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     e08:	4a08      	ldr	r2, [pc, #32]	; (e2c <flash_read_block+0x30>)
     e0a:	7854      	ldrb	r4, [r2, #1]
     e0c:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     e10:	bf03      	ittte	eq
     e12:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     e16:	18a4      	addeq	r4, r4, r2
     e18:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     e1a:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     e1c:	f801 4f01 	strb.w	r4, [r1, #1]!
     e20:	3301      	adds	r3, #1
     e22:	4283      	cmp	r3, r0
     e24:	d1f1      	bne.n	e0a <flash_read_block+0xe>
}
     e26:	bc10      	pop	{r4}
     e28:	4770      	bx	lr
     e2a:	bf00      	nop
     e2c:	20000174 	.word	0x20000174

00000e30 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
     e30:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<ffa) return 0;
     e32:	4b11      	ldr	r3, [pc, #68]	; (e78 <flash_write_block+0x48>)
     e34:	681b      	ldr	r3, [r3, #0]
     e36:	4298      	cmp	r0, r3
     e38:	d202      	bcs.n	e40 <flash_write_block+0x10>
     e3a:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
     e3c:	4618      	mov	r0, r3
     e3e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     e40:	4604      	mov	r4, r0
     e42:	460e      	mov	r6, r1
     e44:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
     e46:	f7ff fec1 	bl	bcc <flash_enable>
     e4a:	4603      	mov	r3, r0
     e4c:	2800      	cmp	r0, #0
     e4e:	d0f5      	beq.n	e3c <flash_write_block+0xc>
	for (i=0;i<size;i++){
     e50:	2f00      	cmp	r7, #0
     e52:	dd0c      	ble.n	e6e <flash_write_block+0x3e>
     e54:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
     e56:	1c65      	adds	r5, r4, #1
     e58:	f816 1b01 	ldrb.w	r1, [r6], #1
     e5c:	4620      	mov	r0, r4
     e5e:	f7ff ff95 	bl	d8c <flash_write_byte>
     e62:	4603      	mov	r3, r0
     e64:	2800      	cmp	r0, #0
     e66:	d0e9      	beq.n	e3c <flash_write_block+0xc>
     e68:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
     e6a:	42bd      	cmp	r5, r7
     e6c:	d1f3      	bne.n	e56 <flash_write_block+0x26>
	flash_disable();
     e6e:	f7ff ff7d 	bl	d6c <flash_disable>
	return 1;
     e72:	2301      	movs	r3, #1
     e74:	e7e2      	b.n	e3c <flash_write_block+0xc>
     e76:	bf00      	nop
     e78:	00004000 	.word	0x00004000

00000e7c <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
     e7c:	4b0a      	ldr	r3, [pc, #40]	; (ea8 <btn_mask+0x2c>)
     e7e:	781b      	ldrb	r3, [r3, #0]
     e80:	4283      	cmp	r3, r0
     e82:	d00a      	beq.n	e9a <btn_mask+0x1e>
     e84:	4a09      	ldr	r2, [pc, #36]	; (eac <btn_mask+0x30>)
    for (i=0;i<8;i++){
     e86:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
     e88:	f812 1b01 	ldrb.w	r1, [r2], #1
     e8c:	4281      	cmp	r1, r0
     e8e:	d005      	beq.n	e9c <btn_mask+0x20>
    for (i=0;i<8;i++){
     e90:	3301      	adds	r3, #1
     e92:	2b08      	cmp	r3, #8
     e94:	d1f8      	bne.n	e88 <btn_mask+0xc>
    }
    return 255;
     e96:	20ff      	movs	r0, #255	; 0xff
}
     e98:	4770      	bx	lr
    for (i=0;i<8;i++){
     e9a:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
     e9c:	2001      	movs	r0, #1
     e9e:	fa00 f303 	lsl.w	r3, r0, r3
     ea2:	b2d8      	uxtb	r0, r3
     ea4:	4770      	bx	lr
     ea6:	bf00      	nop
     ea8:	20000578 	.word	0x20000578
     eac:	20000579 	.word	0x20000579

00000eb0 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
     eb0:	b430      	push	{r4, r5}
     eb2:	4605      	mov	r5, r0
     eb4:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
     eb6:	2000      	movs	r0, #0
     eb8:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     eba:	4b1b      	ldr	r3, [pc, #108]	; (f28 <shift_out+0x78>)
     ebc:	e003      	b.n	ec6 <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
     ebe:	0052      	lsls	r2, r2, #1
     ec0:	b2d2      	uxtb	r2, r2
    while (mask){
     ec2:	3c01      	subs	r4, #1
     ec4:	d01d      	beq.n	f02 <shift_out+0x52>
        if (byte&mask){
     ec6:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     ec8:	68d9      	ldr	r1, [r3, #12]
     eca:	bf14      	ite	ne
     ecc:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     ed0:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
     ed4:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     ed6:	68d9      	ldr	r1, [r3, #12]
     ed8:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
     edc:	60d9      	str	r1, [r3, #12]
        _clk_delay();
     ede:	bf00      	nop
     ee0:	bf00      	nop
     ee2:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     ee4:	68d9      	ldr	r1, [r3, #12]
     ee6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
     eea:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
     eec:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
     eee:	6899      	ldr	r1, [r3, #8]
     ef0:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
     ef4:	6099      	str	r1, [r3, #8]
     ef6:	2900      	cmp	r1, #0
     ef8:	d0e1      	beq.n	ebe <shift_out+0xe>
     efa:	f060 007f 	orn	r0, r0, #127	; 0x7f
     efe:	b2c0      	uxtb	r0, r0
     f00:	e7dd      	b.n	ebe <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     f02:	4b09      	ldr	r3, [pc, #36]	; (f28 <shift_out+0x78>)
     f04:	68da      	ldr	r2, [r3, #12]
     f06:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
     f0a:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     f0c:	68da      	ldr	r2, [r3, #12]
     f0e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
     f12:	60da      	str	r2, [r3, #12]
    _clk_delay();
     f14:	bf00      	nop
     f16:	bf00      	nop
     f18:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     f1a:	68da      	ldr	r2, [r3, #12]
     f1c:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
     f20:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
     f22:	bc30      	pop	{r4, r5}
     f24:	4770      	bx	lr
     f26:	bf00      	nop
     f28:	40010c00 	.word	0x40010c00

00000f2c <set_keymap>:
void set_keymap(const uint8_t *kmap){
     f2c:	1e43      	subs	r3, r0, #1
     f2e:	4a04      	ldr	r2, [pc, #16]	; (f40 <set_keymap+0x14>)
     f30:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
     f32:	f813 1f01 	ldrb.w	r1, [r3, #1]!
     f36:	f802 1f01 	strb.w	r1, [r2, #1]!
     f3a:	4283      	cmp	r3, r0
     f3c:	d1f9      	bne.n	f32 <set_keymap+0x6>
}
     f3e:	4770      	bx	lr
     f40:	20000577 	.word	0x20000577

00000f44 <gamepad_init>:
void gamepad_init(){
     f44:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
     f46:	4c0b      	ldr	r4, [pc, #44]	; (f74 <gamepad_init+0x30>)
     f48:	2202      	movs	r2, #2
     f4a:	210f      	movs	r1, #15
     f4c:	4620      	mov	r0, r4
     f4e:	f000 fa1b 	bl	1388 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
     f52:	2202      	movs	r2, #2
     f54:	210d      	movs	r1, #13
     f56:	4620      	mov	r0, r4
     f58:	f000 fa16 	bl	1388 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
     f5c:	2208      	movs	r2, #8
     f5e:	210e      	movs	r1, #14
     f60:	4620      	mov	r0, r4
     f62:	f000 fa11 	bl	1388 <config_pin>
    btn_state=0xff;
     f66:	22ff      	movs	r2, #255	; 0xff
     f68:	4b03      	ldr	r3, [pc, #12]	; (f78 <gamepad_init+0x34>)
     f6a:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
     f6c:	4803      	ldr	r0, [pc, #12]	; (f7c <gamepad_init+0x38>)
     f6e:	f7ff ffdd 	bl	f2c <set_keymap>
     f72:	bd10      	pop	{r4, pc}
     f74:	40010c00 	.word	0x40010c00
     f78:	200025a4 	.word	0x200025a4
     f7c:	00003a1c 	.word	0x00003a1c

00000f80 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
     f80:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
     f82:	20fe      	movs	r0, #254	; 0xfe
     f84:	f7ff ff94 	bl	eb0 <shift_out>
     f88:	4b0c      	ldr	r3, [pc, #48]	; (fbc <read_gamepad+0x3c>)
     f8a:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
     f8c:	781b      	ldrb	r3, [r3, #0]
     f8e:	f013 0f12 	tst.w	r3, #18
     f92:	d111      	bne.n	fb8 <read_gamepad+0x38>
        while (btn_state!=0xff){
     f94:	4b09      	ldr	r3, [pc, #36]	; (fbc <read_gamepad+0x3c>)
     f96:	781b      	ldrb	r3, [r3, #0]
     f98:	b2db      	uxtb	r3, r3
     f9a:	2bff      	cmp	r3, #255	; 0xff
     f9c:	d009      	beq.n	fb2 <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
     f9e:	25fe      	movs	r5, #254	; 0xfe
     fa0:	4c06      	ldr	r4, [pc, #24]	; (fbc <read_gamepad+0x3c>)
     fa2:	4628      	mov	r0, r5
     fa4:	f7ff ff84 	bl	eb0 <shift_out>
     fa8:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
     faa:	7823      	ldrb	r3, [r4, #0]
     fac:	b2db      	uxtb	r3, r3
     fae:	2bff      	cmp	r3, #255	; 0xff
     fb0:	d1f7      	bne.n	fa2 <read_gamepad+0x22>
        };
        _reset_mcu();
     fb2:	4a03      	ldr	r2, [pc, #12]	; (fc0 <read_gamepad+0x40>)
     fb4:	4b03      	ldr	r3, [pc, #12]	; (fc4 <read_gamepad+0x44>)
     fb6:	601a      	str	r2, [r3, #0]
     fb8:	bd38      	pop	{r3, r4, r5, pc}
     fba:	bf00      	nop
     fbc:	200025a4 	.word	0x200025a4
     fc0:	05fa0004 	.word	0x05fa0004
     fc4:	e000ed0c 	.word	0xe000ed0c

00000fc8 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
     fc8:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
     fca:	f7ff ff57 	bl	e7c <btn_mask>
    return !(btn_state&mask);
     fce:	4b03      	ldr	r3, [pc, #12]	; (fdc <btn_query_down+0x14>)
     fd0:	781b      	ldrb	r3, [r3, #0]
     fd2:	4203      	tst	r3, r0
}
     fd4:	bf0c      	ite	eq
     fd6:	2001      	moveq	r0, #1
     fd8:	2000      	movne	r0, #0
     fda:	bd08      	pop	{r3, pc}
     fdc:	200025a4 	.word	0x200025a4

00000fe0 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
     fe0:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
     fe2:	f7ff ff4b 	bl	e7c <btn_mask>
     fe6:	4606      	mov	r6, r0
    int frame_count=0;
     fe8:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
     fea:	4d06      	ldr	r5, [pc, #24]	; (1004 <btn_wait_down+0x24>)
     fec:	e000      	b.n	ff0 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
     fee:	2400      	movs	r4, #0
        frame_sync();
     ff0:	f002 f94a 	bl	3288 <frame_sync>
        if (!(btn_state&mask)){
     ff4:	782b      	ldrb	r3, [r5, #0]
     ff6:	4233      	tst	r3, r6
     ff8:	d1f9      	bne.n	fee <btn_wait_down+0xe>
            frame_count++;
     ffa:	3401      	adds	r4, #1
    while (frame_count<3){
     ffc:	2c02      	cmp	r4, #2
     ffe:	ddf7      	ble.n	ff0 <btn_wait_down+0x10>
        }
    }
}
    1000:	bd70      	pop	{r4, r5, r6, pc}
    1002:	bf00      	nop
    1004:	200025a4 	.word	0x200025a4

00001008 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1008:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    100a:	f7ff ff37 	bl	e7c <btn_mask>
    100e:	4606      	mov	r6, r0
    int frame_count=0;
    1010:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    1012:	4d06      	ldr	r5, [pc, #24]	; (102c <btn_wait_up+0x24>)
    1014:	e000      	b.n	1018 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    1016:	2400      	movs	r4, #0
        frame_sync();
    1018:	f002 f936 	bl	3288 <frame_sync>
        if ((btn_state&mask)){
    101c:	782b      	ldrb	r3, [r5, #0]
    101e:	4233      	tst	r3, r6
    1020:	d0f9      	beq.n	1016 <btn_wait_up+0xe>
            frame_count++;
    1022:	3401      	adds	r4, #1
    while (frame_count<3){
    1024:	2c02      	cmp	r4, #2
    1026:	ddf7      	ble.n	1018 <btn_wait_up+0x10>
        }
    }
}
    1028:	bd70      	pop	{r4, r5, r6, pc}
    102a:	bf00      	nop
    102c:	200025a4 	.word	0x200025a4

00001030 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1030:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    1032:	4b15      	ldr	r3, [pc, #84]	; (1088 <btn_wait_any+0x58>)
    1034:	781c      	ldrb	r4, [r3, #0]
    1036:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1038:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    103a:	461d      	mov	r5, r3
    103c:	e007      	b.n	104e <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    103e:	782a      	ldrb	r2, [r5, #0]
    1040:	b2d2      	uxtb	r2, r2
    1042:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1044:	bf18      	it	ne
    1046:	3601      	addne	r6, #1
    while (frame_count<3){
    1048:	2e02      	cmp	r6, #2
    104a:	dc0a      	bgt.n	1062 <btn_wait_any+0x32>
    104c:	461c      	mov	r4, r3
        frame_sync();
    104e:	f002 f91b 	bl	3288 <frame_sync>
        if (last_state!=btn_state){
    1052:	782b      	ldrb	r3, [r5, #0]
    1054:	b2db      	uxtb	r3, r3
    1056:	42a3      	cmp	r3, r4
    1058:	d0f1      	beq.n	103e <btn_wait_any+0xe>
            last_state=btn_state;
    105a:	782c      	ldrb	r4, [r5, #0]
    105c:	b2e4      	uxtb	r4, r4
            frame_count=0;
    105e:	2600      	movs	r6, #0
    1060:	e7f5      	b.n	104e <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    1062:	43e3      	mvns	r3, r4
    mask>>=1;
    1064:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1068:	b15b      	cbz	r3, 1082 <btn_wait_any+0x52>
    106a:	2200      	movs	r2, #0
    106c:	3201      	adds	r2, #1
    106e:	b2d2      	uxtb	r2, r2
    1070:	085b      	lsrs	r3, r3, #1
    1072:	d1fb      	bne.n	106c <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1074:	4b05      	ldr	r3, [pc, #20]	; (108c <btn_wait_any+0x5c>)
    1076:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1078:	4620      	mov	r0, r4
    107a:	f7ff ffc5 	bl	1008 <btn_wait_up>
    return btn;
}
    107e:	4620      	mov	r0, r4
    1080:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    1082:	461a      	mov	r2, r3
    1084:	e7f6      	b.n	1074 <btn_wait_any+0x44>
    1086:	bf00      	nop
    1088:	200025a4 	.word	0x200025a4
    108c:	20000578 	.word	0x20000578

00001090 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1090:	4b01      	ldr	r3, [pc, #4]	; (1098 <btn_set_value+0x8>)
    1092:	5419      	strb	r1, [r3, r0]
    1094:	4770      	bx	lr
    1096:	bf00      	nop
    1098:	20000578 	.word	0x20000578

0000109c <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    109c:	4800      	ldr	r0, [pc, #0]	; (10a0 <get_keymap+0x4>)
    109e:	4770      	bx	lr
    10a0:	20000578 	.word	0x20000578

000010a4 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    10a4:	4b06      	ldr	r3, [pc, #24]	; (10c0 <games_count+0x1c>)
    10a6:	691b      	ldr	r3, [r3, #16]
    10a8:	b13b      	cbz	r3, 10ba <games_count+0x16>
    10aa:	4b05      	ldr	r3, [pc, #20]	; (10c0 <games_count+0x1c>)
    10ac:	2000      	movs	r0, #0
    for (i=0;;i++){
    10ae:	3001      	adds	r0, #1
    10b0:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    10b2:	691a      	ldr	r2, [r3, #16]
    10b4:	2a00      	cmp	r2, #0
    10b6:	d1fa      	bne.n	10ae <games_count+0xa>
    10b8:	4770      	bx	lr
    for (i=0;;i++){
    10ba:	2000      	movs	r0, #0
    }
    return i;
}
    10bc:	4770      	bx	lr
    10be:	bf00      	nop
    10c0:	20000004 	.word	0x20000004

000010c4 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    10c4:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    10c6:	7803      	ldrb	r3, [r0, #0]
    10c8:	b1fb      	cbz	r3, 110a <strcmp+0x46>
    10ca:	780a      	ldrb	r2, [r1, #0]
    10cc:	b17a      	cbz	r2, 10ee <strcmp+0x2a>
		if (*s1<*s2){
    10ce:	4293      	cmp	r3, r2
    10d0:	d313      	bcc.n	10fa <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    10d2:	d815      	bhi.n	1100 <strcmp+0x3c>
    10d4:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    10d6:	4621      	mov	r1, r4
	while (*s1 && *s2){
    10d8:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    10dc:	b1ab      	cbz	r3, 110a <strcmp+0x46>
    10de:	f814 2b01 	ldrb.w	r2, [r4], #1
    10e2:	b122      	cbz	r2, 10ee <strcmp+0x2a>
		if (*s1<*s2){
    10e4:	4293      	cmp	r3, r2
    10e6:	d30d      	bcc.n	1104 <strcmp+0x40>
		}else if (*s1>*s2){
    10e8:	d9f5      	bls.n	10d6 <strcmp+0x12>
			result=1;
    10ea:	2001      	movs	r0, #1
    10ec:	e003      	b.n	10f6 <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    10ee:	7808      	ldrb	r0, [r1, #0]
    10f0:	fab0 f080 	clz	r0, r0
    10f4:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    10f6:	bc10      	pop	{r4}
    10f8:	4770      	bx	lr
			result=-1;
    10fa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    10fe:	e7fa      	b.n	10f6 <strcmp+0x32>
			result=1;
    1100:	2001      	movs	r0, #1
    1102:	e7f8      	b.n	10f6 <strcmp+0x32>
			result=-1;
    1104:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1108:	e7f5      	b.n	10f6 <strcmp+0x32>
		if (!*s1 && *s2){
    110a:	7808      	ldrb	r0, [r1, #0]
    110c:	3000      	adds	r0, #0
    110e:	bf18      	it	ne
    1110:	2001      	movne	r0, #1
    1112:	4240      	negs	r0, r0
    1114:	e7ef      	b.n	10f6 <strcmp+0x32>

00001116 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1116:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    111a:	b2db      	uxtb	r3, r3
    111c:	2b19      	cmp	r3, #25
    111e:	d906      	bls.n	112e <alpha+0x18>
    1120:	3841      	subs	r0, #65	; 0x41
    1122:	b2c0      	uxtb	r0, r0
    1124:	2819      	cmp	r0, #25
    1126:	bf8c      	ite	hi
    1128:	2000      	movhi	r0, #0
    112a:	2001      	movls	r0, #1
    112c:	4770      	bx	lr
    112e:	2001      	movs	r0, #1
}
    1130:	4770      	bx	lr

00001132 <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    1132:	3830      	subs	r0, #48	; 0x30
    1134:	b2c0      	uxtb	r0, r0
}
    1136:	2809      	cmp	r0, #9
    1138:	bf8c      	ite	hi
    113a:	2000      	movhi	r0, #0
    113c:	2001      	movls	r0, #1
    113e:	4770      	bx	lr

00001140 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1140:	2860      	cmp	r0, #96	; 0x60
    1142:	bf84      	itt	hi
    1144:	3820      	subhi	r0, #32
    1146:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1148:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    114c:	b2db      	uxtb	r3, r3
    114e:	2b09      	cmp	r3, #9
    1150:	d906      	bls.n	1160 <hexdigit+0x20>
    1152:	3841      	subs	r0, #65	; 0x41
    1154:	b2c0      	uxtb	r0, r0
    1156:	2805      	cmp	r0, #5
    1158:	bf8c      	ite	hi
    115a:	2000      	movhi	r0, #0
    115c:	2001      	movls	r0, #1
    115e:	4770      	bx	lr
    1160:	2001      	movs	r0, #1
}
    1162:	4770      	bx	lr

00001164 <atoi>:

int atoi(const char *str){
    1164:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1168:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    116a:	7803      	ldrb	r3, [r0, #0]
    116c:	2b20      	cmp	r3, #32
    116e:	d103      	bne.n	1178 <atoi+0x14>
    1170:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1174:	2b20      	cmp	r3, #32
    1176:	d0fb      	beq.n	1170 <atoi+0xc>
	if (*str=='-'){
    1178:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    117a:	bf06      	itte	eq
    117c:	3501      	addeq	r5, #1
		sign=-1;
    117e:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    1182:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    1186:	782b      	ldrb	r3, [r5, #0]
    1188:	2b24      	cmp	r3, #36	; 0x24
    118a:	d005      	beq.n	1198 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    118c:	2b30      	cmp	r3, #48	; 0x30
    118e:	d00a      	beq.n	11a6 <atoi+0x42>
	int n=0,sign=1,base=10;
    1190:	270a      	movs	r7, #10
    1192:	3d01      	subs	r5, #1
    1194:	2600      	movs	r6, #0
    1196:	e026      	b.n	11e6 <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    1198:	7868      	ldrb	r0, [r5, #1]
    119a:	f7ff ffd1 	bl	1140 <hexdigit>
    119e:	b160      	cbz	r0, 11ba <atoi+0x56>
		str++;
    11a0:	3501      	adds	r5, #1
		base=16;
    11a2:	2710      	movs	r7, #16
		str++;
    11a4:	e7f5      	b.n	1192 <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    11a6:	786b      	ldrb	r3, [r5, #1]
    11a8:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    11ac:	2b58      	cmp	r3, #88	; 0x58
    11ae:	d001      	beq.n	11b4 <atoi+0x50>
	int n=0,sign=1,base=10;
    11b0:	270a      	movs	r7, #10
    11b2:	e7ee      	b.n	1192 <atoi+0x2e>
		base=16;
		str+=2;
    11b4:	3502      	adds	r5, #2
		base=16;
    11b6:	2710      	movs	r7, #16
    11b8:	e7eb      	b.n	1192 <atoi+0x2e>
	int n=0,sign=1,base=10;
    11ba:	270a      	movs	r7, #10
    11bc:	e7e9      	b.n	1192 <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    11be:	4620      	mov	r0, r4
    11c0:	f7ff ffbe 	bl	1140 <hexdigit>
    11c4:	3000      	adds	r0, #0
    11c6:	bf18      	it	ne
    11c8:	2001      	movne	r0, #1
    11ca:	b1d0      	cbz	r0, 1202 <atoi+0x9e>
		if (c>='a'){c-=32;}
    11cc:	2c60      	cmp	r4, #96	; 0x60
    11ce:	bf84      	itt	hi
    11d0:	3c20      	subhi	r4, #32
    11d2:	b2e4      	uxtbhi	r4, r4
		c-='0';
    11d4:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    11d8:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    11da:	2b09      	cmp	r3, #9
    11dc:	bf84      	itt	hi
    11de:	3c37      	subhi	r4, #55	; 0x37
    11e0:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    11e2:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    11e6:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    11ea:	2c00      	cmp	r4, #0
    11ec:	d0e7      	beq.n	11be <atoi+0x5a>
    11ee:	2f0a      	cmp	r7, #10
    11f0:	d1e5      	bne.n	11be <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    11f2:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    11f6:	b2c0      	uxtb	r0, r0
    11f8:	2809      	cmp	r0, #9
    11fa:	bf8c      	ite	hi
    11fc:	2000      	movhi	r0, #0
    11fe:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1200:	e7e3      	b.n	11ca <atoi+0x66>
		str++;
	}
	return sign*n;
}
    1202:	fb08 f006 	mul.w	r0, r8, r6
    1206:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0000120a <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    120a:	b13a      	cbz	r2, 121c <move+0x12>
    120c:	3901      	subs	r1, #1
    120e:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1210:	f810 3b01 	ldrb.w	r3, [r0], #1
    1214:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1218:	4290      	cmp	r0, r2
    121a:	d1f9      	bne.n	1210 <move+0x6>
    121c:	4770      	bx	lr

0000121e <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    121e:	7803      	ldrb	r3, [r0, #0]
    1220:	b13b      	cbz	r3, 1232 <strlen+0x14>
    1222:	4603      	mov	r3, r0
    1224:	2000      	movs	r0, #0
    1226:	3001      	adds	r0, #1
    1228:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    122c:	2a00      	cmp	r2, #0
    122e:	d1fa      	bne.n	1226 <strlen+0x8>
    1230:	4770      	bx	lr
	int ll=0;
    1232:	2000      	movs	r0, #0
	return ll;
}
    1234:	4770      	bx	lr

00001236 <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1236:	b121      	cbz	r1, 1242 <fill+0xc>
    1238:	1841      	adds	r1, r0, r1
    123a:	f800 2b01 	strb.w	r2, [r0], #1
    123e:	4288      	cmp	r0, r1
    1240:	d1fb      	bne.n	123a <fill+0x4>
    1242:	4770      	bx	lr

00001244 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1244:	3861      	subs	r0, #97	; 0x61
    1246:	b2c0      	uxtb	r0, r0
}
    1248:	2819      	cmp	r0, #25
    124a:	bf8c      	ite	hi
    124c:	2000      	movhi	r0, #0
    124e:	2001      	movls	r0, #1
    1250:	4770      	bx	lr

00001252 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    1252:	3841      	subs	r0, #65	; 0x41
    1254:	b2c0      	uxtb	r0, r0
}
    1256:	2819      	cmp	r0, #25
    1258:	bf8c      	ite	hi
    125a:	2000      	movhi	r0, #0
    125c:	2001      	movls	r0, #1
    125e:	4770      	bx	lr

00001260 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1260:	7803      	ldrb	r3, [r0, #0]
    1262:	b153      	cbz	r3, 127a <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1264:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1268:	b2d2      	uxtb	r2, r2
    126a:	2a19      	cmp	r2, #25
    126c:	bf9c      	itt	ls
    126e:	3b20      	subls	r3, #32
    1270:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    1272:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    1276:	2b00      	cmp	r3, #0
    1278:	d1f4      	bne.n	1264 <uppercase+0x4>
    127a:	4770      	bx	lr

0000127c <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    127c:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    127e:	1844      	adds	r4, r0, r1
    1280:	5c43      	ldrb	r3, [r0, r1]
    1282:	b153      	cbz	r3, 129a <scan+0x1e>
    1284:	429a      	cmp	r2, r3
    1286:	d00a      	beq.n	129e <scan+0x22>
    1288:	4608      	mov	r0, r1
    128a:	3001      	adds	r0, #1
    128c:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    1290:	b10b      	cbz	r3, 1296 <scan+0x1a>
    1292:	4293      	cmp	r3, r2
    1294:	d1f9      	bne.n	128a <scan+0xe>
	return start;
}
    1296:	bc10      	pop	{r4}
    1298:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    129a:	4608      	mov	r0, r1
    129c:	e7fb      	b.n	1296 <scan+0x1a>
    129e:	4608      	mov	r0, r1
	return start;
    12a0:	e7f9      	b.n	1296 <scan+0x1a>

000012a2 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    12a2:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    12a4:	1844      	adds	r4, r0, r1
    12a6:	5c43      	ldrb	r3, [r0, r1]
    12a8:	b153      	cbz	r3, 12c0 <skip+0x1e>
    12aa:	429a      	cmp	r2, r3
    12ac:	d10a      	bne.n	12c4 <skip+0x22>
    12ae:	4608      	mov	r0, r1
    12b0:	3001      	adds	r0, #1
    12b2:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    12b6:	b10b      	cbz	r3, 12bc <skip+0x1a>
    12b8:	4293      	cmp	r3, r2
    12ba:	d0f9      	beq.n	12b0 <skip+0xe>
	return start;
}
    12bc:	bc10      	pop	{r4}
    12be:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    12c0:	4608      	mov	r0, r1
    12c2:	e7fb      	b.n	12bc <skip+0x1a>
    12c4:	4608      	mov	r0, r1
	return start;
    12c6:	e7f9      	b.n	12bc <skip+0x1a>

000012c8 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    12c8:	b538      	push	{r3, r4, r5, lr}
    12ca:	4604      	mov	r4, r0
    12cc:	460d      	mov	r5, r1
	s1+=strlen(s1);
    12ce:	f7ff ffa6 	bl	121e <strlen>
    12d2:	4420      	add	r0, r4
	while (*s2){
    12d4:	782b      	ldrb	r3, [r5, #0]
    12d6:	b133      	cbz	r3, 12e6 <strcat+0x1e>
    12d8:	4629      	mov	r1, r5
		*s1++=*s2++;
    12da:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    12de:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    12e2:	2b00      	cmp	r3, #0
    12e4:	d1f9      	bne.n	12da <strcat+0x12>
	}
	*s1=0;
    12e6:	2300      	movs	r3, #0
    12e8:	7003      	strb	r3, [r0, #0]
	return s1;
}
    12ea:	bd38      	pop	{r3, r4, r5, pc}

000012ec <itoa>:

char *itoa(int n,char *buffer,int base){
    12ec:	b5f0      	push	{r4, r5, r6, r7, lr}
    12ee:	b085      	sub	sp, #20
    12f0:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    12f2:	2a0a      	cmp	r2, #10
    12f4:	d033      	beq.n	135e <itoa+0x72>
	int i=14,sign=0;
    12f6:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    12f8:	2300      	movs	r3, #0
    12fa:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    12fe:	2320      	movs	r3, #32
    1300:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    1304:	b390      	cbz	r0, 136c <itoa+0x80>
    1306:	f10d 060d 	add.w	r6, sp, #13
    130a:	250e      	movs	r5, #14
		d=n%base+'0';
    130c:	fb90 f3f2 	sdiv	r3, r0, r2
    1310:	fb02 0313 	mls	r3, r2, r3, r0
    1314:	b2db      	uxtb	r3, r3
    1316:	f103 0130 	add.w	r1, r3, #48	; 0x30
    131a:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    131c:	2939      	cmp	r1, #57	; 0x39
    131e:	bf84      	itt	hi
    1320:	3337      	addhi	r3, #55	; 0x37
    1322:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1324:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1328:	3d01      	subs	r5, #1
    132a:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    132e:	2800      	cmp	r0, #0
    1330:	d1ec      	bne.n	130c <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    1332:	2d0e      	cmp	r5, #14
    1334:	d01a      	beq.n	136c <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    1336:	2a0a      	cmp	r2, #10
    1338:	d01d      	beq.n	1376 <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    133a:	2a10      	cmp	r2, #16
    133c:	d105      	bne.n	134a <itoa+0x5e>
    133e:	3d01      	subs	r5, #1
    1340:	ab04      	add	r3, sp, #16
    1342:	442b      	add	r3, r5
    1344:	2224      	movs	r2, #36	; 0x24
    1346:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    134a:	f1c5 0210 	rsb	r2, r5, #16
    134e:	4621      	mov	r1, r4
    1350:	eb0d 0005 	add.w	r0, sp, r5
    1354:	f7ff ff59 	bl	120a <move>
	return buffer;
    1358:	4620      	mov	r0, r4
    135a:	b005      	add	sp, #20
    135c:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    135e:	2800      	cmp	r0, #0
    1360:	db01      	blt.n	1366 <itoa+0x7a>
	int i=14,sign=0;
    1362:	2700      	movs	r7, #0
    1364:	e7c8      	b.n	12f8 <itoa+0xc>
		n=-n;
    1366:	4240      	negs	r0, r0
		sign=1;
    1368:	2701      	movs	r7, #1
    136a:	e7c5      	b.n	12f8 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    136c:	2330      	movs	r3, #48	; 0x30
    136e:	f88d 300d 	strb.w	r3, [sp, #13]
    1372:	250d      	movs	r5, #13
    1374:	e7df      	b.n	1336 <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    1376:	2f00      	cmp	r7, #0
    1378:	d0e7      	beq.n	134a <itoa+0x5e>
    137a:	3d01      	subs	r5, #1
    137c:	ab04      	add	r3, sp, #16
    137e:	442b      	add	r3, r5
    1380:	222d      	movs	r2, #45	; 0x2d
    1382:	f803 2c10 	strb.w	r2, [r3, #-16]
    1386:	e7e0      	b.n	134a <itoa+0x5e>

00001388 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    1388:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    138a:	08cb      	lsrs	r3, r1, #3
    138c:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    1390:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    1392:	f001 011c 	and.w	r1, r1, #28
    1396:	250f      	movs	r5, #15
    1398:	408d      	lsls	r5, r1
    139a:	ea24 0405 	bic.w	r4, r4, r5
    139e:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    13a2:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    13a6:	fa02 f101 	lsl.w	r1, r2, r1
    13aa:	4321      	orrs	r1, r4
    13ac:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    13b0:	bc30      	pop	{r4, r5}
    13b2:	4770      	bx	lr

000013b4 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    13b4:	6880      	ldr	r0, [r0, #8]
    13b6:	2301      	movs	r3, #1
    13b8:	fa03 f101 	lsl.w	r1, r3, r1
}
    13bc:	4008      	ands	r0, r1
    13be:	4770      	bx	lr

000013c0 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    13c0:	b93a      	cbnz	r2, 13d2 <write_pin+0x12>
    13c2:	68c3      	ldr	r3, [r0, #12]
    13c4:	2201      	movs	r2, #1
    13c6:	fa02 f101 	lsl.w	r1, r2, r1
    13ca:	ea23 0101 	bic.w	r1, r3, r1
    13ce:	60c1      	str	r1, [r0, #12]
    13d0:	4770      	bx	lr
    13d2:	68c2      	ldr	r2, [r0, #12]
    13d4:	2301      	movs	r3, #1
    13d6:	fa03 f101 	lsl.w	r1, r3, r1
    13da:	4311      	orrs	r1, r2
    13dc:	60c1      	str	r1, [r0, #12]
    13de:	4770      	bx	lr

000013e0 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    13e0:	68c2      	ldr	r2, [r0, #12]
    13e2:	2301      	movs	r3, #1
    13e4:	fa03 f101 	lsl.w	r1, r3, r1
    13e8:	4051      	eors	r1, r2
    13ea:	60c1      	str	r1, [r0, #12]
    13ec:	4770      	bx	lr
	...

000013f0 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    13f0:	4b04      	ldr	r3, [pc, #16]	; (1404 <set_palette+0x14>)
    13f2:	7802      	ldrb	r2, [r0, #0]
    13f4:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    13f6:	7842      	ldrb	r2, [r0, #1]
    13f8:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    13fa:	7882      	ldrb	r2, [r0, #2]
    13fc:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    13fe:	78c2      	ldrb	r2, [r0, #3]
    1400:	70da      	strb	r2, [r3, #3]
    1402:	4770      	bx	lr
    1404:	20000090 	.word	0x20000090

00001408 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    1408:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    140a:	4604      	mov	r4, r0
    140c:	460e      	mov	r6, r1
    140e:	4615      	mov	r5, r2
    1410:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    1412:	f001 ff73 	bl	32fc <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1416:	2c00      	cmp	r4, #0
    1418:	db38      	blt.n	148c <gfx_blit+0x84>
    141a:	8983      	ldrh	r3, [r0, #12]
    141c:	429c      	cmp	r4, r3
    141e:	da37      	bge.n	1490 <gfx_blit+0x88>
    1420:	2e00      	cmp	r6, #0
    1422:	db37      	blt.n	1494 <gfx_blit+0x8c>
    1424:	89c3      	ldrh	r3, [r0, #14]
    1426:	429e      	cmp	r6, r3
    1428:	da36      	bge.n	1498 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    142a:	7a03      	ldrb	r3, [r0, #8]
    142c:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1430:	1052      	asrs	r2, r2, #1
    1432:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    1436:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    143a:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    143e:	bf06      	itte	eq
    1440:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    1442:	220f      	moveq	r2, #15
    mask=0xf0;
    1444:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    1446:	4b15      	ldr	r3, [pc, #84]	; (149c <gfx_blit+0x94>)
    1448:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    144a:	2f04      	cmp	r7, #4
    144c:	d805      	bhi.n	145a <gfx_blit+0x52>
    144e:	e8df f007 	tbb	[pc, r7]
    1452:	1003      	.short	0x1003
    1454:	1412      	.short	0x1412
    1456:	18          	.byte	0x18
    1457:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1458:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    145a:	4910      	ldr	r1, [pc, #64]	; (149c <gfx_blit+0x94>)
    145c:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    145e:	ea23 0302 	bic.w	r3, r3, r2
    1462:	fab0 f080 	clz	r0, r0
    1466:	0940      	lsrs	r0, r0, #5
    1468:	4283      	cmp	r3, r0
    146a:	bf14      	ite	ne
    146c:	2000      	movne	r0, #0
    146e:	2001      	moveq	r0, #1
    1470:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    1472:	4003      	ands	r3, r0
        break;
    1474:	e7f1      	b.n	145a <gfx_blit+0x52>
        byte^=color;
    1476:	4043      	eors	r3, r0
        break;
    1478:	e7ef      	b.n	145a <gfx_blit+0x52>
        byte^=~mask;
    147a:	43d4      	mvns	r4, r2
    147c:	405c      	eors	r4, r3
    147e:	b2e3      	uxtb	r3, r4
        break;
    1480:	e7eb      	b.n	145a <gfx_blit+0x52>
        byte &=mask;
    1482:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    1486:	ea40 0304 	orr.w	r3, r0, r4
        break;
    148a:	e7e6      	b.n	145a <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    148c:	2000      	movs	r0, #0
    148e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1490:	2000      	movs	r0, #0
    1492:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1494:	2000      	movs	r0, #0
    1496:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1498:	2000      	movs	r0, #0
}
    149a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    149c:	200025d0 	.word	0x200025d0

000014a0 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    14a0:	b570      	push	{r4, r5, r6, lr}
    14a2:	4604      	mov	r4, r0
    14a4:	460e      	mov	r6, r1
    14a6:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    14a8:	f001 ff28 	bl	32fc <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    14ac:	2c00      	cmp	r4, #0
    14ae:	db1d      	blt.n	14ec <gfx_plot+0x4c>
    14b0:	8983      	ldrh	r3, [r0, #12]
    14b2:	429c      	cmp	r4, r3
    14b4:	da1a      	bge.n	14ec <gfx_plot+0x4c>
    14b6:	2e00      	cmp	r6, #0
    14b8:	db18      	blt.n	14ec <gfx_plot+0x4c>
    14ba:	89c3      	ldrh	r3, [r0, #14]
    14bc:	429e      	cmp	r6, r3
    14be:	da15      	bge.n	14ec <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    14c0:	7a03      	ldrb	r3, [r0, #8]
    14c2:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    14c6:	1052      	asrs	r2, r2, #1
    14c8:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    14cc:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    14d0:	4b07      	ldr	r3, [pc, #28]	; (14f0 <gfx_plot+0x50>)
    14d2:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    14d4:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    14d8:	bf19      	ittee	ne
    14da:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    14de:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    14e0:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    14e4:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    14e8:	4b01      	ldr	r3, [pc, #4]	; (14f0 <gfx_plot+0x50>)
    14ea:	559d      	strb	r5, [r3, r6]
    14ec:	bd70      	pop	{r4, r5, r6, pc}
    14ee:	bf00      	nop
    14f0:	200025d0 	.word	0x200025d0

000014f4 <gfx_cls>:
}

void gfx_cls(){
    14f4:	b538      	push	{r3, r4, r5, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    14f6:	f001 ff01 	bl	32fc <get_video_params>
	for (x=0;x<vparams->vres*vparams->bpr;x++) video_buffer[x]=0;
    14fa:	89c2      	ldrh	r2, [r0, #14]
    14fc:	7a03      	ldrb	r3, [r0, #8]
    14fe:	fb03 f302 	mul.w	r3, r3, r2
    1502:	2b00      	cmp	r3, #0
    1504:	dd0b      	ble.n	151e <gfx_cls+0x2a>
    1506:	4908      	ldr	r1, [pc, #32]	; (1528 <gfx_cls+0x34>)
    1508:	2200      	movs	r2, #0
    150a:	4615      	mov	r5, r2
    150c:	f801 5f01 	strb.w	r5, [r1, #1]!
    1510:	3201      	adds	r2, #1
    1512:	89c4      	ldrh	r4, [r0, #14]
    1514:	7a03      	ldrb	r3, [r0, #8]
    1516:	fb03 f304 	mul.w	r3, r3, r4
    151a:	4293      	cmp	r3, r2
    151c:	dcf6      	bgt.n	150c <gfx_cls+0x18>
    set_cursor(0,0);
    151e:	2100      	movs	r1, #0
    1520:	4608      	mov	r0, r1
    1522:	f001 fb85 	bl	2c30 <set_cursor>
    1526:	bd38      	pop	{r3, r4, r5, pc}
    1528:	200025cf 	.word	0x200025cf

0000152c <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    152c:	b570      	push	{r4, r5, r6, lr}
    152e:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1530:	f001 fee4 	bl	32fc <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    1534:	7a06      	ldrb	r6, [r0, #8]
    1536:	4b0f      	ldr	r3, [pc, #60]	; (1574 <gfx_scroll_up+0x48>)
    1538:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    153c:	89c2      	ldrh	r2, [r0, #14]
    153e:	1b12      	subs	r2, r2, r4
    1540:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    1544:	b1a6      	cbz	r6, 1570 <gfx_scroll_up+0x44>
    1546:	4a0b      	ldr	r2, [pc, #44]	; (1574 <gfx_scroll_up+0x48>)
    1548:	199d      	adds	r5, r3, r6
    154a:	f813 1b01 	ldrb.w	r1, [r3], #1
    154e:	f802 1b01 	strb.w	r1, [r2], #1
    1552:	42ab      	cmp	r3, r5
    1554:	d1f9      	bne.n	154a <gfx_scroll_up+0x1e>
    1556:	4b07      	ldr	r3, [pc, #28]	; (1574 <gfx_scroll_up+0x48>)
    1558:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    155a:	7a02      	ldrb	r2, [r0, #8]
    155c:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1560:	b12a      	cbz	r2, 156e <gfx_scroll_up+0x42>
    1562:	441a      	add	r2, r3
    1564:	2100      	movs	r1, #0
    1566:	f803 1b01 	strb.w	r1, [r3], #1
    156a:	4293      	cmp	r3, r2
    156c:	d1fb      	bne.n	1566 <gfx_scroll_up+0x3a>
    156e:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1570:	4b00      	ldr	r3, [pc, #0]	; (1574 <gfx_scroll_up+0x48>)
    1572:	e7f2      	b.n	155a <gfx_scroll_up+0x2e>
    1574:	200025d0 	.word	0x200025d0

00001578 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1578:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    157a:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    157c:	f001 febe 	bl	32fc <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1580:	89c3      	ldrh	r3, [r0, #14]
    1582:	7a04      	ldrb	r4, [r0, #8]
    1584:	1b5f      	subs	r7, r3, r5
    1586:	fb04 f707 	mul.w	r7, r4, r7
    158a:	490c      	ldr	r1, [pc, #48]	; (15bc <gfx_scroll_down+0x44>)
    158c:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    158e:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    1592:	b147      	cbz	r7, 15a6 <gfx_scroll_down+0x2e>
    1594:	4619      	mov	r1, r3
    1596:	4e09      	ldr	r6, [pc, #36]	; (15bc <gfx_scroll_down+0x44>)
    1598:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    159c:	f801 4d01 	strb.w	r4, [r1, #-1]!
    15a0:	42b2      	cmp	r2, r6
    15a2:	d1f9      	bne.n	1598 <gfx_scroll_down+0x20>
    15a4:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    15a6:	7a02      	ldrb	r2, [r0, #8]
    15a8:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    15ac:	b12a      	cbz	r2, 15ba <gfx_scroll_down+0x42>
    15ae:	1a9a      	subs	r2, r3, r2
    15b0:	2100      	movs	r1, #0
    15b2:	f803 1d01 	strb.w	r1, [r3, #-1]!
    15b6:	4293      	cmp	r3, r2
    15b8:	d1fb      	bne.n	15b2 <gfx_scroll_down+0x3a>
    15ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    15bc:	200025d0 	.word	0x200025d0

000015c0 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    15c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    15c4:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    15c6:	f001 fe99 	bl	32fc <get_video_params>
    for (y=0;y<vparams->vres;y++){
    15ca:	89c3      	ldrh	r3, [r0, #14]
    15cc:	b30b      	cbz	r3, 1612 <gfx_scroll_left+0x52>
    15ce:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    15d2:	f8df 8044 	ldr.w	r8, [pc, #68]	; 1618 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    15d6:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    15d8:	7a03      	ldrb	r3, [r0, #8]
    15da:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    15de:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    15e0:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    15e2:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    15e6:	d009      	beq.n	15fc <gfx_scroll_left+0x3c>
    15e8:	1e59      	subs	r1, r3, #1
    15ea:	eb02 050e 	add.w	r5, r2, lr
    15ee:	f812 4b01 	ldrb.w	r4, [r2], #1
    15f2:	f801 4f01 	strb.w	r4, [r1, #1]!
    15f6:	4295      	cmp	r5, r2
    15f8:	d1f9      	bne.n	15ee <gfx_scroll_left+0x2e>
    15fa:	4473      	add	r3, lr
        while (size--) *dest++=0;
    15fc:	b126      	cbz	r6, 1608 <gfx_scroll_left+0x48>
    15fe:	199a      	adds	r2, r3, r6
    1600:	f803 7b01 	strb.w	r7, [r3], #1
    1604:	4293      	cmp	r3, r2
    1606:	d1fb      	bne.n	1600 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    1608:	f10c 0c01 	add.w	ip, ip, #1
    160c:	89c3      	ldrh	r3, [r0, #14]
    160e:	4563      	cmp	r3, ip
    1610:	dce2      	bgt.n	15d8 <gfx_scroll_left+0x18>
    1612:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    1616:	bf00      	nop
    1618:	200025d0 	.word	0x200025d0

0000161c <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    161c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1620:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    1622:	f001 fe6b 	bl	32fc <get_video_params>
    for (y=0;y<vparams->vres;y++){
    1626:	89c3      	ldrh	r3, [r0, #14]
    1628:	b33b      	cbz	r3, 167a <gfx_scroll_right+0x5e>
    162a:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    162e:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1680 <gfx_scroll_right+0x64>
        src=dest-n;
    1632:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    1636:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1638:	7a03      	ldrb	r3, [r0, #8]
    163a:	fb0e 3303 	mla	r3, lr, r3, r3
    163e:	4443      	add	r3, r8
        src=dest-n;
    1640:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    1644:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    1646:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    164a:	d00a      	beq.n	1662 <gfx_scroll_right+0x46>
    164c:	4619      	mov	r1, r3
    164e:	eba2 0609 	sub.w	r6, r2, r9
    1652:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1656:	f801 4d01 	strb.w	r4, [r1, #-1]!
    165a:	42b2      	cmp	r2, r6
    165c:	d1f9      	bne.n	1652 <gfx_scroll_right+0x36>
    165e:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    1662:	b12d      	cbz	r5, 1670 <gfx_scroll_right+0x54>
    1664:	eb03 020c 	add.w	r2, r3, ip
    1668:	f803 7d01 	strb.w	r7, [r3, #-1]!
    166c:	429a      	cmp	r2, r3
    166e:	d1fb      	bne.n	1668 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1670:	f10e 0e01 	add.w	lr, lr, #1
    1674:	89c3      	ldrh	r3, [r0, #14]
    1676:	4573      	cmp	r3, lr
    1678:	dcde      	bgt.n	1638 <gfx_scroll_right+0x1c>
    167a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    167e:	bf00      	nop
    1680:	200025d0 	.word	0x200025d0

00001684 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1684:	b538      	push	{r3, r4, r5, lr}
    1686:	4604      	mov	r4, r0
    1688:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    168a:	f001 fe37 	bl	32fc <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    168e:	2c00      	cmp	r4, #0
    1690:	db18      	blt.n	16c4 <gfx_get_pixel+0x40>
    1692:	8983      	ldrh	r3, [r0, #12]
    1694:	429c      	cmp	r4, r3
    1696:	db01      	blt.n	169c <gfx_get_pixel+0x18>
    1698:	20ff      	movs	r0, #255	; 0xff
    169a:	bd38      	pop	{r3, r4, r5, pc}
    169c:	2d00      	cmp	r5, #0
    169e:	db13      	blt.n	16c8 <gfx_get_pixel+0x44>
    16a0:	89c3      	ldrh	r3, [r0, #14]
    16a2:	429d      	cmp	r5, r3
    16a4:	db01      	blt.n	16aa <gfx_get_pixel+0x26>
    16a6:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    16a8:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    16aa:	7a03      	ldrb	r3, [r0, #8]
    16ac:	1062      	asrs	r2, r4, #1
    16ae:	4907      	ldr	r1, [pc, #28]	; (16cc <gfx_get_pixel+0x48>)
    16b0:	fb05 1503 	mla	r5, r5, r3, r1
    16b4:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    16b6:	f014 0f01 	tst.w	r4, #1
    16ba:	bf08      	it	eq
    16bc:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    16be:	f000 000f 	and.w	r0, r0, #15
    16c2:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    16c4:	20ff      	movs	r0, #255	; 0xff
    16c6:	bd38      	pop	{r3, r4, r5, pc}
    16c8:	20ff      	movs	r0, #255	; 0xff
    16ca:	bd38      	pop	{r3, r4, r5, pc}
    16cc:	200025d0 	.word	0x200025d0

000016d0 <gfx_sprite>:

static const uint8_t bit_mask[5]={0,128,0xc0,0,0xf0};
static const uint8_t bit_shift[5]={0,7,6,0,4};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    16d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    16d4:	b085      	sub	sp, #20
    16d6:	9002      	str	r0, [sp, #8]
    16d8:	460e      	mov	r6, r1
    16da:	9100      	str	r1, [sp, #0]
    16dc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    16de:	492b      	ldr	r1, [pc, #172]	; (178c <gfx_sprite+0xbc>)
    16e0:	7908      	ldrb	r0, [r1, #4]
    16e2:	492b      	ldr	r1, [pc, #172]	; (1790 <gfx_sprite+0xc0>)
    16e4:	f811 9000 	ldrb.w	r9, [r1, r0]
    bmp_byte=*sprite++;
    16e8:	f104 0b01 	add.w	fp, r4, #1
    16ec:	7825      	ldrb	r5, [r4, #0]
    mask=bit_mask[sprite_bpp];
    16ee:	4401      	add	r1, r0
    16f0:	7a0c      	ldrb	r4, [r1, #8]
    16f2:	9401      	str	r4, [sp, #4]
    ppb=8/sprite_bpp;
    16f4:	2408      	movs	r4, #8
    16f6:	fb94 f4f0 	sdiv	r4, r4, r0
    for (y0=y;y0<(y+height);y0++){
    16fa:	4433      	add	r3, r6
    16fc:	9303      	str	r3, [sp, #12]
    16fe:	429e      	cmp	r6, r3
    int collision=0;
    1700:	bfa8      	it	ge
    1702:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){
    1704:	da3d      	bge.n	1782 <gfx_sprite+0xb2>
    1706:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
    1708:	9b02      	ldr	r3, [sp, #8]
    170a:	eb02 0a03 	add.w	sl, r2, r3
            if (sprite_bpp<4){
    170e:	f8df 807c 	ldr.w	r8, [pc, #124]	; 178c <gfx_sprite+0xbc>
    1712:	e031      	b.n	1778 <gfx_sprite+0xa8>
                color=palette[(bmp_byte&mask)>>shift];
            }else{
                color=(bmp_byte&mask)>>shift;
    1714:	9b01      	ldr	r3, [sp, #4]
    1716:	ea03 0205 	and.w	r2, r3, r5
    171a:	fa42 f209 	asr.w	r2, r2, r9
    171e:	b2d2      	uxtb	r2, r2
    1720:	e015      	b.n	174e <gfx_sprite+0x7e>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    1722:	f89b 5000 	ldrb.w	r5, [fp]
                ppb=8/sprite_bpp;
    1726:	f898 4004 	ldrb.w	r4, [r8, #4]
    172a:	2308      	movs	r3, #8
    172c:	fb93 f4f4 	sdiv	r4, r3, r4
                bmp_byte=*sprite++;
    1730:	f10b 0b01 	add.w	fp, fp, #1
        for(x0=x;x0<(x+width);x0++){
    1734:	3601      	adds	r6, #1
    1736:	4556      	cmp	r6, sl
    1738:	d018      	beq.n	176c <gfx_sprite+0x9c>
            if (sprite_bpp<4){
    173a:	f898 3004 	ldrb.w	r3, [r8, #4]
    173e:	2b03      	cmp	r3, #3
    1740:	d8e8      	bhi.n	1714 <gfx_sprite+0x44>
                color=palette[(bmp_byte&mask)>>shift];
    1742:	9b01      	ldr	r3, [sp, #4]
    1744:	402b      	ands	r3, r5
    1746:	fa43 f309 	asr.w	r3, r3, r9
    174a:	f818 2003 	ldrb.w	r2, [r8, r3]
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    174e:	2302      	movs	r3, #2
    1750:	9900      	ldr	r1, [sp, #0]
    1752:	4630      	mov	r0, r6
    1754:	f7ff fe58 	bl	1408 <gfx_blit>
    1758:	4307      	orrs	r7, r0
            ppb--;
    175a:	3c01      	subs	r4, #1
            if (!ppb){
    175c:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1760:	d0df      	beq.n	1722 <gfx_sprite+0x52>
            bmp_byte<<=(8-shift);
    1762:	f1c9 0308 	rsb	r3, r9, #8
    1766:	409d      	lsls	r5, r3
    1768:	b2ed      	uxtb	r5, r5
    176a:	e7e3      	b.n	1734 <gfx_sprite+0x64>
    for (y0=y;y0<(y+height);y0++){
    176c:	9b00      	ldr	r3, [sp, #0]
    176e:	3301      	adds	r3, #1
    1770:	9300      	str	r3, [sp, #0]
    1772:	9a03      	ldr	r2, [sp, #12]
    1774:	4293      	cmp	r3, r2
    1776:	d004      	beq.n	1782 <gfx_sprite+0xb2>
        for(x0=x;x0<(x+width);x0++){
    1778:	9b02      	ldr	r3, [sp, #8]
    177a:	4553      	cmp	r3, sl
    177c:	daf6      	bge.n	176c <gfx_sprite+0x9c>
    177e:	9e02      	ldr	r6, [sp, #8]
    1780:	e7db      	b.n	173a <gfx_sprite+0x6a>
            }
        }
    }
    return collision;
}
    1782:	4638      	mov	r0, r7
    1784:	b005      	add	sp, #20
    1786:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    178a:	bf00      	nop
    178c:	20000090 	.word	0x20000090
    1790:	00003a24 	.word	0x00003a24

00001794 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    1794:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    1798:	f001 fdb0 	bl	32fc <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    179c:	89c3      	ldrh	r3, [r0, #14]
    179e:	089e      	lsrs	r6, r3, #2
    17a0:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    17a4:	429e      	cmp	r6, r3
    17a6:	da18      	bge.n	17da <color_bars+0x46>
    17a8:	4607      	mov	r7, r0
static void color_bars(){
    17aa:	f04f 0810 	mov.w	r8, #16
    17ae:	4645      	mov	r5, r8
    17b0:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    17b2:	f014 0f07 	tst.w	r4, #7
				c--;
    17b6:	bf04      	itt	eq
    17b8:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    17bc:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    17be:	462a      	mov	r2, r5
    17c0:	4631      	mov	r1, r6
    17c2:	4620      	mov	r0, r4
    17c4:	f7ff fe6c 	bl	14a0 <gfx_plot>
		for (x=0;x<128;x++){
    17c8:	3401      	adds	r4, #1
    17ca:	2c80      	cmp	r4, #128	; 0x80
    17cc:	d1f1      	bne.n	17b2 <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    17ce:	3601      	adds	r6, #1
    17d0:	89fb      	ldrh	r3, [r7, #14]
    17d2:	42b3      	cmp	r3, r6
    17d4:	dceb      	bgt.n	17ae <color_bars+0x1a>
    17d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    17da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000017de <vertical_bars>:
	}
		

}

static void vertical_bars(){
    17de:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    17e0:	f001 fd8c 	bl	32fc <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    17e4:	89c3      	ldrh	r3, [r0, #14]
    17e6:	2b10      	cmp	r3, #16
    17e8:	dd12      	ble.n	1810 <vertical_bars+0x32>
    17ea:	4605      	mov	r5, r0
    17ec:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    17ee:	260f      	movs	r6, #15
    17f0:	2700      	movs	r7, #0
    17f2:	4632      	mov	r2, r6
    17f4:	4621      	mov	r1, r4
    17f6:	4638      	mov	r0, r7
    17f8:	f7ff fe52 	bl	14a0 <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    17fc:	89a8      	ldrh	r0, [r5, #12]
    17fe:	4632      	mov	r2, r6
    1800:	4621      	mov	r1, r4
    1802:	3801      	subs	r0, #1
    1804:	f7ff fe4c 	bl	14a0 <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    1808:	3401      	adds	r4, #1
    180a:	89eb      	ldrh	r3, [r5, #14]
    180c:	42a3      	cmp	r3, r4
    180e:	dcf0      	bgt.n	17f2 <vertical_bars+0x14>
    1810:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001812 <horiz_bars>:
	}
}

static void horiz_bars(){
    1812:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1814:	f001 fd72 	bl	32fc <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1818:	8983      	ldrh	r3, [r0, #12]
    181a:	b193      	cbz	r3, 1842 <horiz_bars+0x30>
    181c:	4605      	mov	r5, r0
    181e:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    1820:	260f      	movs	r6, #15
    1822:	4627      	mov	r7, r4
    1824:	4632      	mov	r2, r6
    1826:	4639      	mov	r1, r7
    1828:	4620      	mov	r0, r4
    182a:	f7ff fe39 	bl	14a0 <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    182e:	89e9      	ldrh	r1, [r5, #14]
    1830:	4632      	mov	r2, r6
    1832:	3901      	subs	r1, #1
    1834:	4620      	mov	r0, r4
    1836:	f7ff fe33 	bl	14a0 <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    183a:	3401      	adds	r4, #1
    183c:	89ab      	ldrh	r3, [r5, #12]
    183e:	42a3      	cmp	r3, r4
    1840:	dcf0      	bgt.n	1824 <horiz_bars+0x12>
    1842:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001844 <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    1844:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1846:	f7ff fe55 	bl	14f4 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    184a:	4806      	ldr	r0, [pc, #24]	; (1864 <display_menu+0x20>)
    184c:	f001 fa39 	bl	2cc2 <println>
    1850:	4805      	ldr	r0, [pc, #20]	; (1868 <display_menu+0x24>)
    1852:	f001 fa36 	bl	2cc2 <println>
    1856:	4805      	ldr	r0, [pc, #20]	; (186c <display_menu+0x28>)
    1858:	f001 fa33 	bl	2cc2 <println>
    185c:	4804      	ldr	r0, [pc, #16]	; (1870 <display_menu+0x2c>)
    185e:	f001 fa30 	bl	2cc2 <println>
    1862:	bd08      	pop	{r3, pc}
    1864:	00003adc 	.word	0x00003adc
    1868:	00003ae8 	.word	0x00003ae8
    186c:	00003af8 	.word	0x00003af8
    1870:	00003b04 	.word	0x00003b04

00001874 <draw_balls>:
void draw_balls(){
    1874:	b510      	push	{r4, lr}
    1876:	b082      	sub	sp, #8
	frame_sync();
    1878:	f001 fd06 	bl	3288 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    187c:	4c0a      	ldr	r4, [pc, #40]	; (18a8 <draw_balls+0x34>)
    187e:	6923      	ldr	r3, [r4, #16]
    1880:	9300      	str	r3, [sp, #0]
    1882:	2308      	movs	r3, #8
    1884:	461a      	mov	r2, r3
    1886:	6861      	ldr	r1, [r4, #4]
    1888:	6820      	ldr	r0, [r4, #0]
    188a:	f7ff ff21 	bl	16d0 <gfx_sprite>
    188e:	69a1      	ldr	r1, [r4, #24]
    1890:	6960      	ldr	r0, [r4, #20]
    1892:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1894:	9300      	str	r3, [sp, #0]
    1896:	2308      	movs	r3, #8
    1898:	461a      	mov	r2, r3
    189a:	f7ff ff19 	bl	16d0 <gfx_sprite>
	wait_sync_end();
    189e:	f001 fcfb 	bl	3298 <wait_sync_end>
}
    18a2:	b002      	add	sp, #8
    18a4:	bd10      	pop	{r4, pc}
    18a6:	bf00      	nop
    18a8:	200025a8 	.word	0x200025a8

000018ac <isqrt>:
	if (n<2) return n;
    18ac:	2801      	cmp	r0, #1
    18ae:	dd0c      	ble.n	18ca <isqrt+0x1e>
int isqrt(int n){
    18b0:	b510      	push	{r4, lr}
    18b2:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    18b4:	1080      	asrs	r0, r0, #2
    18b6:	f7ff fff9 	bl	18ac <isqrt>
    18ba:	0040      	lsls	r0, r0, #1
	large = small + 1;
    18bc:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    18be:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    18c2:	4294      	cmp	r4, r2
    18c4:	bfa8      	it	ge
    18c6:	4618      	movge	r0, r3
}
    18c8:	bd10      	pop	{r4, pc}
    18ca:	4770      	bx	lr

000018cc <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    18cc:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    18ce:	6803      	ldr	r3, [r0, #0]
    18d0:	680a      	ldr	r2, [r1, #0]
    18d2:	6844      	ldr	r4, [r0, #4]
    18d4:	6848      	ldr	r0, [r1, #4]
    18d6:	fb00 f004 	mul.w	r0, r0, r4
    18da:	fb02 0003 	mla	r0, r2, r3, r0
    18de:	2800      	cmp	r0, #0
    18e0:	bfb8      	it	lt
    18e2:	4240      	neglt	r0, r0
    18e4:	f7ff ffe2 	bl	18ac <isqrt>
}
    18e8:	bd10      	pop	{r4, pc}

000018ea <move_balls>:
void move_balls(){
    18ea:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    18ec:	f001 fd06 	bl	32fc <get_video_params>
    18f0:	4b1c      	ldr	r3, [pc, #112]	; (1964 <move_balls+0x7a>)
    18f2:	f103 0628 	add.w	r6, r3, #40	; 0x28
    18f6:	e005      	b.n	1904 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    18f8:	4249      	negs	r1, r1
    18fa:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    18fc:	6055      	str	r5, [r2, #4]
    18fe:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    1900:	42b3      	cmp	r3, r6
    1902:	d017      	beq.n	1934 <move_balls+0x4a>
    1904:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1906:	681d      	ldr	r5, [r3, #0]
    1908:	6899      	ldr	r1, [r3, #8]
    190a:	186c      	adds	r4, r5, r1
    190c:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    190e:	f114 0f07 	cmn.w	r4, #7
    1912:	db02      	blt.n	191a <move_balls+0x30>
    1914:	8987      	ldrh	r7, [r0, #12]
    1916:	42bc      	cmp	r4, r7
    1918:	db02      	blt.n	1920 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    191a:	4249      	negs	r1, r1
    191c:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    191e:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1920:	6855      	ldr	r5, [r2, #4]
    1922:	68d1      	ldr	r1, [r2, #12]
    1924:	186c      	adds	r4, r5, r1
    1926:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1928:	2c0f      	cmp	r4, #15
    192a:	dde5      	ble.n	18f8 <move_balls+0xe>
    192c:	89c7      	ldrh	r7, [r0, #14]
    192e:	42bc      	cmp	r4, r7
    1930:	dbe5      	blt.n	18fe <move_balls+0x14>
    1932:	e7e1      	b.n	18f8 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1934:	480c      	ldr	r0, [pc, #48]	; (1968 <move_balls+0x7e>)
    1936:	4601      	mov	r1, r0
    1938:	3814      	subs	r0, #20
    193a:	f7ff ffc7 	bl	18cc <distance>
    193e:	2807      	cmp	r0, #7
    1940:	d80f      	bhi.n	1962 <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1942:	4b08      	ldr	r3, [pc, #32]	; (1964 <move_balls+0x7a>)
    1944:	689a      	ldr	r2, [r3, #8]
    1946:	69db      	ldr	r3, [r3, #28]
    1948:	429a      	cmp	r2, r3
    194a:	d002      	beq.n	1952 <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    194c:	4905      	ldr	r1, [pc, #20]	; (1964 <move_balls+0x7a>)
    194e:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1950:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1952:	4b04      	ldr	r3, [pc, #16]	; (1964 <move_balls+0x7a>)
    1954:	68da      	ldr	r2, [r3, #12]
    1956:	6a1b      	ldr	r3, [r3, #32]
    1958:	429a      	cmp	r2, r3
    195a:	d002      	beq.n	1962 <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    195c:	4901      	ldr	r1, [pc, #4]	; (1964 <move_balls+0x7a>)
    195e:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1960:	620a      	str	r2, [r1, #32]
    1962:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1964:	200025a8 	.word	0x200025a8
    1968:	200025bc 	.word	0x200025bc

0000196c <init_balls>:
void init_balls(){
    196c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1970:	f001 fcc4 	bl	32fc <get_video_params>
    1974:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1976:	4b15      	ldr	r3, [pc, #84]	; (19cc <init_balls+0x60>)
    1978:	6818      	ldr	r0, [r3, #0]
    197a:	f7fe fd13 	bl	3a4 <srand>
    197e:	4c14      	ldr	r4, [pc, #80]	; (19d0 <init_balls+0x64>)
    1980:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    1984:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    1986:	4f13      	ldr	r7, [pc, #76]	; (19d4 <init_balls+0x68>)
    1988:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    198c:	f7fe fd10 	bl	3b0 <rand>
    1990:	89ab      	ldrh	r3, [r5, #12]
    1992:	fb90 f2f3 	sdiv	r2, r0, r3
    1996:	fb02 0013 	mls	r0, r2, r3, r0
    199a:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    199c:	f7fe fd08 	bl	3b0 <rand>
    19a0:	89eb      	ldrh	r3, [r5, #14]
    19a2:	3b10      	subs	r3, #16
    19a4:	fb90 f2f3 	sdiv	r2, r0, r3
    19a8:	fb02 0013 	mls	r0, r2, r3, r0
    19ac:	3010      	adds	r0, #16
    19ae:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    19b0:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    19b2:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    19b4:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    19b6:	2b00      	cmp	r3, #0
    19b8:	bf14      	ite	ne
    19ba:	4643      	movne	r3, r8
    19bc:	463b      	moveq	r3, r7
    19be:	6123      	str	r3, [r4, #16]
    19c0:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    19c2:	454c      	cmp	r4, r9
    19c4:	d1e2      	bne.n	198c <init_balls+0x20>
}
    19c6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    19ca:	bf00      	nop
    19cc:	20004d34 	.word	0x20004d34
    19d0:	200025a8 	.word	0x200025a8
    19d4:	00003a3c 	.word	0x00003a3c

000019d8 <main>:
		}
	}//while
}

//const uint8_t sample[16]={0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
void main(void){
    19d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    19dc:	b08b      	sub	sp, #44	; 0x2c
	RCC->CR|=RCC_CR_HSEON;
    19de:	4aaf      	ldr	r2, [pc, #700]	; (1c9c <main+0x2c4>)
    19e0:	6813      	ldr	r3, [r2, #0]
    19e2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    19e6:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    19e8:	4613      	mov	r3, r2
    19ea:	681a      	ldr	r2, [r3, #0]
    19ec:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    19f0:	d0fb      	beq.n	19ea <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    19f2:	4baa      	ldr	r3, [pc, #680]	; (1c9c <main+0x2c4>)
    19f4:	685a      	ldr	r2, [r3, #4]
    19f6:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    19fa:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    19fc:	681a      	ldr	r2, [r3, #0]
    19fe:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1a02:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1a04:	681a      	ldr	r2, [r3, #0]
    1a06:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1a0a:	d0fb      	beq.n	1a04 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1a0c:	4aa4      	ldr	r2, [pc, #656]	; (1ca0 <main+0x2c8>)
    1a0e:	6813      	ldr	r3, [r2, #0]
    1a10:	f043 0312 	orr.w	r3, r3, #18
    1a14:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1a16:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1a1a:	6853      	ldr	r3, [r2, #4]
    1a1c:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1a20:	f043 0302 	orr.w	r3, r3, #2
    1a24:	6053      	str	r3, [r2, #4]
	set_sysclock();
//	config_systicks();
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1a26:	f640 031d 	movw	r3, #2077	; 0x81d
    1a2a:	6193      	str	r3, [r2, #24]
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1a2c:	4c9d      	ldr	r4, [pc, #628]	; (1ca4 <main+0x2cc>)
    1a2e:	2206      	movs	r2, #6
    1a30:	210d      	movs	r1, #13
    1a32:	4620      	mov	r0, r4
    1a34:	f7ff fca8 	bl	1388 <config_pin>
	_led_off();
    1a38:	68e3      	ldr	r3, [r4, #12]
    1a3a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1a3e:	60e3      	str	r3, [r4, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_TX,ALT_PORT,FLOW_SOFT);
    1a40:	2200      	movs	r2, #0
    1a42:	9201      	str	r2, [sp, #4]
    1a44:	2301      	movs	r3, #1
    1a46:	9300      	str	r3, [sp, #0]
    1a48:	2302      	movs	r3, #2
    1a4a:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1a4e:	4896      	ldr	r0, [pc, #600]	; (1ca8 <main+0x2d0>)
    1a50:	f001 fd0b 	bl	346a <usart_open_channel>
	gamepad_init();
    1a54:	f7ff fa76 	bl	f44 <gamepad_init>
	tvout_init();
    1a58:	f001 fa00 	bl	2e5c <tvout_init>
	sound_init();
    1a5c:	f000 fe0a 	bl	2674 <sound_init>
    1a60:	f10d 0417 	add.w	r4, sp, #23
    1a64:	f10d 0527 	add.w	r5, sp, #39	; 0x27
	uint8_t sample[16];
	int i;
	for (i=0;i<16;i++)sample[i]=rand()&255;
    1a68:	f7fe fca2 	bl	3b0 <rand>
    1a6c:	f804 0f01 	strb.w	r0, [r4, #1]!
    1a70:	42a5      	cmp	r5, r4
    1a72:	d1f9      	bne.n	1a68 <main+0x90>
	load_sound_buffer((const uint8_t*)sample);
    1a74:	a806      	add	r0, sp, #24
    1a76:	f000 fe4c 	bl	2712 <load_sound_buffer>
	gfx_cls();
    1a7a:	f7ff fd3b 	bl	14f4 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1a7e:	f001 fc3d 	bl	32fc <get_video_params>
	display_menu();
    1a82:	f7ff fedf 	bl	1844 <display_menu>
	int i=0;
    1a86:	2500      	movs	r5, #0
		set_cursor(0,i*CHAR_HEIGHT);
    1a88:	46ab      	mov	fp, r5
	print_int(0x20005000-(int)(&_TPA_START),10);
    1a8a:	4b88      	ldr	r3, [pc, #544]	; (1cac <main+0x2d4>)
    1a8c:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1a90:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1a94:	9305      	str	r3, [sp, #20]
    1a96:	e149      	b.n	1d2c <main+0x354>
			if (i<(MENU_ITEMS-1)) i++;
    1a98:	2d02      	cmp	r5, #2
    1a9a:	f300 8147 	bgt.w	1d2c <main+0x354>
    1a9e:	3501      	adds	r5, #1
    1aa0:	e144      	b.n	1d2c <main+0x354>
			switch(i){
    1aa2:	2d03      	cmp	r5, #3
    1aa4:	f200 8140 	bhi.w	1d28 <main+0x350>
    1aa8:	e8df f015 	tbh	[pc, r5, lsl #1]
    1aac:	00970004 	.word	0x00970004
    1ab0:	016b00e1 	.word	0x016b00e1
	count=games_count();
    1ab4:	f7ff faf6 	bl	10a4 <games_count>
    1ab8:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1aba:	4658      	mov	r0, fp
    1abc:	f001 fbf4 	bl	32a8 <set_video_mode>
	vparams=get_video_params();
    1ac0:	f001 fc1c 	bl	32fc <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1ac4:	f8b0 a00e 	ldrh.w	sl, [r0, #14]
    1ac8:	ea4f 0ada 	mov.w	sl, sl, lsr #3
    1acc:	f8cd a010 	str.w	sl, [sp, #16]
	int i=0,first=0,count,rows,selected=1;
    1ad0:	462f      	mov	r7, r5
    1ad2:	f04f 0801 	mov.w	r8, #1
	while ((r<rows) && games_list[first].size){
    1ad6:	f8df 91dc 	ldr.w	r9, [pc, #476]	; 1cb4 <main+0x2dc>
	set_cursor(0,0);
    1ada:	4659      	mov	r1, fp
    1adc:	4658      	mov	r0, fp
    1ade:	f001 f8a7 	bl	2c30 <set_cursor>
	print("**** GAMES ****");
    1ae2:	4873      	ldr	r0, [pc, #460]	; (1cb0 <main+0x2d8>)
    1ae4:	f001 f8d8 	bl	2c98 <print>
	while ((r<rows) && games_list[first].size){
    1ae8:	f1ba 0f01 	cmp.w	sl, #1
    1aec:	d918      	bls.n	1b20 <main+0x148>
    1aee:	ebc7 03c7 	rsb	r3, r7, r7, lsl #3
    1af2:	eb09 0383 	add.w	r3, r9, r3, lsl #2
    1af6:	691b      	ldr	r3, [r3, #16]
    1af8:	b193      	cbz	r3, 1b20 <main+0x148>
    1afa:	ebc7 04c7 	rsb	r4, r7, r7, lsl #3
    1afe:	eb09 0484 	add.w	r4, r9, r4, lsl #2
    1b02:	3401      	adds	r4, #1
		put_char(' ');
    1b04:	2620      	movs	r6, #32
		new_line();
    1b06:	f000 fff1 	bl	2aec <new_line>
		put_char(' ');
    1b0a:	4630      	mov	r0, r6
    1b0c:	f001 f82c 	bl	2b68 <put_char>
		print(games_list[first].name);
    1b10:	4620      	mov	r0, r4
    1b12:	f001 f8c1 	bl	2c98 <print>
    1b16:	341c      	adds	r4, #28
	while ((r<rows) && games_list[first].size){
    1b18:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1b1c:	2b00      	cmp	r3, #0
    1b1e:	d1f2      	bne.n	1b06 <main+0x12e>
		set_cursor(0,selected*CHAR_HEIGHT);
    1b20:	ea4f 01c8 	mov.w	r1, r8, lsl #3
    1b24:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1b28:	4658      	mov	r0, fp
    1b2a:	f001 f881 	bl	2c30 <set_cursor>
		put_char('>');
    1b2e:	203e      	movs	r0, #62	; 0x3e
    1b30:	f001 f81a 	bl	2b68 <put_char>
		btn=btn_wait_any();
    1b34:	f7ff fa7c 	bl	1030 <btn_wait_any>
    1b38:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1b3a:	f7ff fa65 	bl	1008 <btn_wait_up>
		switch(btn){
    1b3e:	2c04      	cmp	r4, #4
    1b40:	d010      	beq.n	1b64 <main+0x18c>
    1b42:	d905      	bls.n	1b50 <main+0x178>
    1b44:	2c20      	cmp	r4, #32
    1b46:	d01b      	beq.n	1b80 <main+0x1a8>
    1b48:	2c40      	cmp	r4, #64	; 0x40
    1b4a:	f000 80ed 	beq.w	1d28 <main+0x350>
    1b4e:	e7c4      	b.n	1ada <main+0x102>
    1b50:	2c02      	cmp	r4, #2
    1b52:	d1c2      	bne.n	1ada <main+0x102>
			if (first) first--;
    1b54:	b107      	cbz	r7, 1b58 <main+0x180>
    1b56:	3f01      	subs	r7, #1
			if (selected>1) selected--;
    1b58:	f1b8 0f01 	cmp.w	r8, #1
    1b5c:	ddbd      	ble.n	1ada <main+0x102>
    1b5e:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
    1b62:	e7ba      	b.n	1ada <main+0x102>
			if ((first+selected-1)<(count-1)){
    1b64:	eb07 0308 	add.w	r3, r7, r8
    1b68:	3b01      	subs	r3, #1
    1b6a:	9a03      	ldr	r2, [sp, #12]
    1b6c:	3a01      	subs	r2, #1
    1b6e:	4293      	cmp	r3, r2
    1b70:	dab3      	bge.n	1ada <main+0x102>
				selected++;
    1b72:	f108 0801 	add.w	r8, r8, #1
				if (selected>=rows) first++;
    1b76:	9b04      	ldr	r3, [sp, #16]
    1b78:	4543      	cmp	r3, r8
    1b7a:	dcae      	bgt.n	1ada <main+0x102>
    1b7c:	3701      	adds	r7, #1
    1b7e:	e7ac      	b.n	1ada <main+0x102>
	run_game(first+selected-1);
    1b80:	eb07 0408 	add.w	r4, r7, r8
    1b84:	3c01      	subs	r4, #1
	if (games_list[idx].vmode==VM_SCHIP){
    1b86:	ebc4 02c4 	rsb	r2, r4, r4, lsl #3
    1b8a:	4b4a      	ldr	r3, [pc, #296]	; (1cb4 <main+0x2dc>)
    1b8c:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1b90:	2b01      	cmp	r3, #1
    1b92:	bf14      	ite	ne
    1b94:	f04f 0800 	movne.w	r8, #0
    1b98:	f44f 7800 	moveq.w	r8, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1b9c:	f8df 9114 	ldr.w	r9, [pc, #276]	; 1cb4 <main+0x2dc>
    1ba0:	00e7      	lsls	r7, r4, #3
    1ba2:	eb09 0682 	add.w	r6, r9, r2, lsl #2
    1ba6:	6932      	ldr	r2, [r6, #16]
    1ba8:	4943      	ldr	r1, [pc, #268]	; (1cb8 <main+0x2e0>)
    1baa:	4441      	add	r1, r8
    1bac:	6970      	ldr	r0, [r6, #20]
    1bae:	f7ff fb2c 	bl	120a <move>
	set_keymap(games_list[idx].keymap);
    1bb2:	69b0      	ldr	r0, [r6, #24]
    1bb4:	f7ff f9ba 	bl	f2c <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1bb8:	1b3c      	subs	r4, r7, r4
    1bba:	f819 0024 	ldrb.w	r0, [r9, r4, lsl #2]
    1bbe:	f001 fb73 	bl	32a8 <set_video_mode>
	chip_vm(addr,debug_print);
    1bc2:	4b3e      	ldr	r3, [pc, #248]	; (1cbc <main+0x2e4>)
    1bc4:	6819      	ldr	r1, [r3, #0]
    1bc6:	4640      	mov	r0, r8
    1bc8:	f7fe fc00 	bl	3cc <chip_vm>
	set_video_mode(VM_BPCHIP);
    1bcc:	4658      	mov	r0, fp
    1bce:	f001 fb6b 	bl	32a8 <set_video_mode>
	set_keymap(default_kmap);
    1bd2:	483b      	ldr	r0, [pc, #236]	; (1cc0 <main+0x2e8>)
    1bd4:	f7ff f9aa 	bl	f2c <set_keymap>
    1bd8:	e0a6      	b.n	1d28 <main+0x350>
	gfx_cls();
    1bda:	f7ff fc8b 	bl	14f4 <gfx_cls>
	print("VM debug support\n");
    1bde:	4839      	ldr	r0, [pc, #228]	; (1cc4 <main+0x2ec>)
    1be0:	f001 f85a 	bl	2c98 <print>
	print(" enable debug print\n");
    1be4:	4838      	ldr	r0, [pc, #224]	; (1cc8 <main+0x2f0>)
    1be6:	f001 f857 	bl	2c98 <print>
	print(" disable debug print");
    1bea:	4838      	ldr	r0, [pc, #224]	; (1ccc <main+0x2f4>)
    1bec:	f001 f854 	bl	2c98 <print>
	if (debug_print){
    1bf0:	4b32      	ldr	r3, [pc, #200]	; (1cbc <main+0x2e4>)
    1bf2:	681b      	ldr	r3, [r3, #0]
    1bf4:	b313      	cbz	r3, 1c3c <main+0x264>
		set_cursor(0,CHAR_HEIGHT);
    1bf6:	2108      	movs	r1, #8
    1bf8:	4658      	mov	r0, fp
    1bfa:	f001 f819 	bl	2c30 <set_cursor>
		put_char('*');
    1bfe:	202a      	movs	r0, #42	; 0x2a
    1c00:	f000 ffb2 	bl	2b68 <put_char>
			set_cursor(0,CHAR_HEIGHT);
    1c04:	2608      	movs	r6, #8
			debug_print=0;
    1c06:	4c2d      	ldr	r4, [pc, #180]	; (1cbc <main+0x2e4>)
		btn=btn_wait_any();
    1c08:	f7ff fa12 	bl	1030 <btn_wait_any>
		switch(btn){
    1c0c:	2804      	cmp	r0, #4
    1c0e:	d01d      	beq.n	1c4c <main+0x274>
    1c10:	2820      	cmp	r0, #32
    1c12:	f000 8089 	beq.w	1d28 <main+0x350>
    1c16:	2802      	cmp	r0, #2
    1c18:	d1f6      	bne.n	1c08 <main+0x230>
			set_cursor(0,2*CHAR_HEIGHT);
    1c1a:	2110      	movs	r1, #16
    1c1c:	4658      	mov	r0, fp
    1c1e:	f001 f807 	bl	2c30 <set_cursor>
			put_char(' ');
    1c22:	2020      	movs	r0, #32
    1c24:	f000 ffa0 	bl	2b68 <put_char>
			set_cursor(0,CHAR_HEIGHT);
    1c28:	4631      	mov	r1, r6
    1c2a:	4658      	mov	r0, fp
    1c2c:	f001 f800 	bl	2c30 <set_cursor>
			put_char('*');
    1c30:	202a      	movs	r0, #42	; 0x2a
    1c32:	f000 ff99 	bl	2b68 <put_char>
			debug_print=1;
    1c36:	2301      	movs	r3, #1
    1c38:	6023      	str	r3, [r4, #0]
    1c3a:	e7e5      	b.n	1c08 <main+0x230>
		set_cursor(0,2*CHAR_HEIGHT);
    1c3c:	2110      	movs	r1, #16
    1c3e:	4658      	mov	r0, fp
    1c40:	f000 fff6 	bl	2c30 <set_cursor>
		put_char('*');
    1c44:	202a      	movs	r0, #42	; 0x2a
    1c46:	f000 ff8f 	bl	2b68 <put_char>
    1c4a:	e7db      	b.n	1c04 <main+0x22c>
			set_cursor(0,CHAR_HEIGHT);
    1c4c:	4631      	mov	r1, r6
    1c4e:	4658      	mov	r0, fp
    1c50:	f000 ffee 	bl	2c30 <set_cursor>
			put_char(' ');
    1c54:	2020      	movs	r0, #32
    1c56:	f000 ff87 	bl	2b68 <put_char>
			set_cursor(0,2*CHAR_HEIGHT);
    1c5a:	2110      	movs	r1, #16
    1c5c:	4658      	mov	r0, fp
    1c5e:	f000 ffe7 	bl	2c30 <set_cursor>
			put_char('*');
    1c62:	202a      	movs	r0, #42	; 0x2a
    1c64:	f000 ff80 	bl	2b68 <put_char>
			debug_print=0;
    1c68:	f8c4 b000 	str.w	fp, [r4]
    1c6c:	e7cc      	b.n	1c08 <main+0x230>
	set_video_mode(p);
    1c6e:	4658      	mov	r0, fp
    1c70:	f001 fb1a 	bl	32a8 <set_video_mode>
	color_bars();
    1c74:	f7ff fd8e 	bl	1794 <color_bars>
	vertical_bars();
    1c78:	f7ff fdb1 	bl	17de <vertical_bars>
	horiz_bars();
    1c7c:	f7ff fdc9 	bl	1812 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1c80:	2110      	movs	r1, #16
    1c82:	4813      	ldr	r0, [pc, #76]	; (1cd0 <main+0x2f8>)
    1c84:	f001 f823 	bl	2cce <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1c88:	210a      	movs	r1, #10
    1c8a:	9805      	ldr	r0, [sp, #20]
    1c8c:	f001 f81f 	bl	2cce <print_int>
	init_balls();
    1c90:	f7ff fe6c 	bl	196c <init_balls>
	p=0;
    1c94:	465c      	mov	r4, fp
		if (btn_query_down(KEY_RIGHT)){
    1c96:	2610      	movs	r6, #16
				print("SCHIP mode\n128x64 mono");
    1c98:	4f0e      	ldr	r7, [pc, #56]	; (1cd4 <main+0x2fc>)
    1c9a:	e02f      	b.n	1cfc <main+0x324>
    1c9c:	40021000 	.word	0x40021000
    1ca0:	40022000 	.word	0x40022000
    1ca4:	40011000 	.word	0x40011000
    1ca8:	40013800 	.word	0x40013800
    1cac:	20004d40 	.word	0x20004d40
    1cb0:	00003b10 	.word	0x00003b10
    1cb4:	20000004 	.word	0x20000004
    1cb8:	200005a4 	.word	0x200005a4
    1cbc:	20000580 	.word	0x20000580
    1cc0:	00003a1c 	.word	0x00003a1c
    1cc4:	00003b20 	.word	0x00003b20
    1cc8:	00003b34 	.word	0x00003b34
    1ccc:	00003b4c 	.word	0x00003b4c
    1cd0:	00004000 	.word	0x00004000
    1cd4:	00003b84 	.word	0x00003b84
			p^=1;
    1cd8:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1cdc:	4620      	mov	r0, r4
    1cde:	f001 fae3 	bl	32a8 <set_video_mode>
			switch(p){
    1ce2:	2c00      	cmp	r4, #0
    1ce4:	d043      	beq.n	1d6e <main+0x396>
    1ce6:	2c01      	cmp	r4, #1
    1ce8:	d047      	beq.n	1d7a <main+0x3a2>
			vertical_bars();
    1cea:	f7ff fd78 	bl	17de <vertical_bars>
			horiz_bars();
    1cee:	f7ff fd90 	bl	1812 <horiz_bars>
			init_balls();
    1cf2:	f7ff fe3b 	bl	196c <init_balls>
			btn_wait_up(KEY_RIGHT);
    1cf6:	4630      	mov	r0, r6
    1cf8:	f7ff f986 	bl	1008 <btn_wait_up>
		draw_balls();
    1cfc:	f7ff fdba 	bl	1874 <draw_balls>
		draw_balls();
    1d00:	f7ff fdb8 	bl	1874 <draw_balls>
		move_balls();
    1d04:	f7ff fdf1 	bl	18ea <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1d08:	4630      	mov	r0, r6
    1d0a:	f7ff f95d 	bl	fc8 <btn_query_down>
    1d0e:	2800      	cmp	r0, #0
    1d10:	d1e2      	bne.n	1cd8 <main+0x300>
		}else if (btn_query_down(KEY_B)){
    1d12:	2020      	movs	r0, #32
    1d14:	f7ff f958 	bl	fc8 <btn_query_down>
    1d18:	2800      	cmp	r0, #0
    1d1a:	d0ef      	beq.n	1cfc <main+0x324>
			btn_wait_up(KEY_B);
    1d1c:	2020      	movs	r0, #32
    1d1e:	f7ff f973 	bl	1008 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1d22:	4658      	mov	r0, fp
    1d24:	f001 fac0 	bl	32a8 <set_video_mode>
			display_menu();
    1d28:	f7ff fd8c 	bl	1844 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1d2c:	00ec      	lsls	r4, r5, #3
    1d2e:	b2e4      	uxtb	r4, r4
    1d30:	4621      	mov	r1, r4
    1d32:	4658      	mov	r0, fp
    1d34:	f000 ff7c 	bl	2c30 <set_cursor>
		put_char('>');
    1d38:	203e      	movs	r0, #62	; 0x3e
    1d3a:	f000 ff15 	bl	2b68 <put_char>
		btn=btn_wait_any();
    1d3e:	f7ff f977 	bl	1030 <btn_wait_any>
    1d42:	4606      	mov	r6, r0
		btn_wait_up(btn);
    1d44:	f7ff f960 	bl	1008 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1d48:	4621      	mov	r1, r4
    1d4a:	4658      	mov	r0, fp
    1d4c:	f000 ff70 	bl	2c30 <set_cursor>
		put_char(' ');
    1d50:	2020      	movs	r0, #32
    1d52:	f000 ff09 	bl	2b68 <put_char>
		switch(btn){
    1d56:	2e04      	cmp	r6, #4
    1d58:	f43f ae9e 	beq.w	1a98 <main+0xc0>
    1d5c:	2e20      	cmp	r6, #32
    1d5e:	f43f aea0 	beq.w	1aa2 <main+0xca>
    1d62:	2e02      	cmp	r6, #2
    1d64:	d1e2      	bne.n	1d2c <main+0x354>
			if (i) i--;
    1d66:	2d00      	cmp	r5, #0
    1d68:	d0e0      	beq.n	1d2c <main+0x354>
    1d6a:	3d01      	subs	r5, #1
    1d6c:	e7de      	b.n	1d2c <main+0x354>
				print("BPCHIP mode\n180x112 16 colors");
    1d6e:	482c      	ldr	r0, [pc, #176]	; (1e20 <main+0x448>)
    1d70:	f000 ff92 	bl	2c98 <print>
				color_bars();
    1d74:	f7ff fd0e 	bl	1794 <color_bars>
    1d78:	e7b7      	b.n	1cea <main+0x312>
				print("SCHIP mode\n128x64 mono");
    1d7a:	4638      	mov	r0, r7
    1d7c:	f000 ff8c 	bl	2c98 <print>
    1d80:	e7b3      	b.n	1cea <main+0x312>
	gfx_cls();
    1d82:	f7ff fbb7 	bl	14f4 <gfx_cls>
	print("press buttons\n");
    1d86:	4827      	ldr	r0, [pc, #156]	; (1e24 <main+0x44c>)
    1d88:	f000 ff86 	bl	2c98 <print>
		tone(freq,3);
    1d8c:	2603      	movs	r6, #3
			freq=493;
    1d8e:	f240 18ed 	movw	r8, #493	; 0x1ed
			freq=622;
    1d92:	f240 276e 	movw	r7, #622	; 0x26e
    1d96:	e019      	b.n	1dcc <main+0x3f4>
		switch(key){
    1d98:	2802      	cmp	r0, #2
    1d9a:	d03a      	beq.n	1e12 <main+0x43a>
    1d9c:	2804      	cmp	r0, #4
    1d9e:	d00e      	beq.n	1dbe <main+0x3e6>
    1da0:	2801      	cmp	r0, #1
    1da2:	d024      	beq.n	1dee <main+0x416>
		tone(freq,3);
    1da4:	4631      	mov	r1, r6
    1da6:	9802      	ldr	r0, [sp, #8]
    1da8:	f000 fc7e 	bl	26a8 <tone>
	while (key!=KEY_B){
    1dac:	2c20      	cmp	r4, #32
    1dae:	d10d      	bne.n	1dcc <main+0x3f4>
    1db0:	e028      	b.n	1e04 <main+0x42c>
		switch(key){
    1db2:	2810      	cmp	r0, #16
    1db4:	d1f6      	bne.n	1da4 <main+0x3cc>
			freq=523;
    1db6:	f240 230b 	movw	r3, #523	; 0x20b
    1dba:	9302      	str	r3, [sp, #8]
    1dbc:	e002      	b.n	1dc4 <main+0x3ec>
			freq=466;
    1dbe:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    1dc2:	9302      	str	r3, [sp, #8]
		tone(freq,3);
    1dc4:	4631      	mov	r1, r6
    1dc6:	9802      	ldr	r0, [sp, #8]
    1dc8:	f000 fc6e 	bl	26a8 <tone>
		key=btn_wait_any();
    1dcc:	f7ff f930 	bl	1030 <btn_wait_any>
    1dd0:	4604      	mov	r4, r0
		switch(key){
    1dd2:	2808      	cmp	r0, #8
    1dd4:	d021      	beq.n	1e1a <main+0x442>
    1dd6:	d9df      	bls.n	1d98 <main+0x3c0>
    1dd8:	2820      	cmp	r0, #32
    1dda:	d00e      	beq.n	1dfa <main+0x422>
    1ddc:	d9e9      	bls.n	1db2 <main+0x3da>
    1dde:	2840      	cmp	r0, #64	; 0x40
    1de0:	d009      	beq.n	1df6 <main+0x41e>
    1de2:	2880      	cmp	r0, #128	; 0x80
    1de4:	d1de      	bne.n	1da4 <main+0x3cc>
			freq=659;
    1de6:	f240 2393 	movw	r3, #659	; 0x293
    1dea:	9302      	str	r3, [sp, #8]
    1dec:	e7ea      	b.n	1dc4 <main+0x3ec>
			freq=554;
    1dee:	f240 232a 	movw	r3, #554	; 0x22a
    1df2:	9302      	str	r3, [sp, #8]
    1df4:	e7e6      	b.n	1dc4 <main+0x3ec>
			freq=622;
    1df6:	9702      	str	r7, [sp, #8]
    1df8:	e7e4      	b.n	1dc4 <main+0x3ec>
		tone(freq,3);
    1dfa:	2103      	movs	r1, #3
    1dfc:	f240 204b 	movw	r0, #587	; 0x24b
    1e00:	f000 fc52 	bl	26a8 <tone>
	btn_wait_up(key);
    1e04:	2020      	movs	r0, #32
    1e06:	f7ff f8ff 	bl	1008 <btn_wait_up>
	sound_sampler(60);
    1e0a:	203c      	movs	r0, #60	; 0x3c
    1e0c:	f000 fc8e 	bl	272c <sound_sampler>
    1e10:	e78a      	b.n	1d28 <main+0x350>
			freq=440;
    1e12:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    1e16:	9302      	str	r3, [sp, #8]
    1e18:	e7d4      	b.n	1dc4 <main+0x3ec>
			freq=493;
    1e1a:	f8cd 8008 	str.w	r8, [sp, #8]
    1e1e:	e7d1      	b.n	1dc4 <main+0x3ec>
    1e20:	00003b64 	.word	0x00003b64
    1e24:	00003b9c 	.word	0x00003b9c

00001e28 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1e28:	283b      	cmp	r0, #59	; 0x3b
    1e2a:	dc0d      	bgt.n	1e48 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1e2c:	1143      	asrs	r3, r0, #5
    1e2e:	009b      	lsls	r3, r3, #2
    1e30:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1e34:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1e38:	6819      	ldr	r1, [r3, #0]
    1e3a:	f000 001f 	and.w	r0, r0, #31
    1e3e:	2201      	movs	r2, #1
    1e40:	fa02 f000 	lsl.w	r0, r2, r0
    1e44:	4308      	orrs	r0, r1
    1e46:	6018      	str	r0, [r3, #0]
    1e48:	4770      	bx	lr

00001e4a <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1e4a:	283b      	cmp	r0, #59	; 0x3b
    1e4c:	dc08      	bgt.n	1e60 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1e4e:	1142      	asrs	r2, r0, #5
    1e50:	f000 001f 	and.w	r0, r0, #31
    1e54:	2301      	movs	r3, #1
    1e56:	fa03 f000 	lsl.w	r0, r3, r0
    1e5a:	4b02      	ldr	r3, [pc, #8]	; (1e64 <disable_interrupt+0x1a>)
    1e5c:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1e60:	4770      	bx	lr
    1e62:	bf00      	nop
    1e64:	e000e180 	.word	0xe000e180

00001e68 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1e68:	283b      	cmp	r0, #59	; 0x3b
    1e6a:	dc09      	bgt.n	1e80 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1e6c:	1142      	asrs	r2, r0, #5
    1e6e:	4b05      	ldr	r3, [pc, #20]	; (1e84 <get_pending+0x1c>)
    1e70:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1e74:	f000 031f 	and.w	r3, r0, #31
    1e78:	2001      	movs	r0, #1
    1e7a:	4098      	lsls	r0, r3
    1e7c:	4010      	ands	r0, r2
    1e7e:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1e80:	2000      	movs	r0, #0
}
    1e82:	4770      	bx	lr
    1e84:	e000e280 	.word	0xe000e280

00001e88 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1e88:	283b      	cmp	r0, #59	; 0x3b
    1e8a:	dc0c      	bgt.n	1ea6 <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1e8c:	1143      	asrs	r3, r0, #5
    1e8e:	009b      	lsls	r3, r3, #2
    1e90:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1e94:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1e98:	681a      	ldr	r2, [r3, #0]
    1e9a:	f000 031f 	and.w	r3, r0, #31
    1e9e:	2001      	movs	r0, #1
    1ea0:	4098      	lsls	r0, r3
    1ea2:	4010      	ands	r0, r2
    1ea4:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1ea6:	2000      	movs	r0, #0
}
    1ea8:	4770      	bx	lr

00001eaa <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1eaa:	283b      	cmp	r0, #59	; 0x3b
    1eac:	dc0d      	bgt.n	1eca <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1eae:	1143      	asrs	r3, r0, #5
    1eb0:	009b      	lsls	r3, r3, #2
    1eb2:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1eb6:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1eba:	6819      	ldr	r1, [r3, #0]
    1ebc:	f000 001f 	and.w	r0, r0, #31
    1ec0:	2201      	movs	r2, #1
    1ec2:	fa02 f000 	lsl.w	r0, r2, r0
    1ec6:	4308      	orrs	r0, r1
    1ec8:	6018      	str	r0, [r3, #0]
    1eca:	4770      	bx	lr

00001ecc <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    1ecc:	283b      	cmp	r0, #59	; 0x3b
    1ece:	dc08      	bgt.n	1ee2 <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    1ed0:	1142      	asrs	r2, r0, #5
    1ed2:	f000 001f 	and.w	r0, r0, #31
    1ed6:	2301      	movs	r3, #1
    1ed8:	fa03 f000 	lsl.w	r0, r3, r0
    1edc:	4b01      	ldr	r3, [pc, #4]	; (1ee4 <clear_pending+0x18>)
    1ede:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1ee2:	4770      	bx	lr
    1ee4:	e000e280 	.word	0xe000e280

00001ee8 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    1ee8:	283b      	cmp	r0, #59	; 0x3b
    1eea:	d90c      	bls.n	1f06 <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    1eec:	f100 030f 	add.w	r3, r0, #15
    1ef0:	2b0e      	cmp	r3, #14
    1ef2:	d807      	bhi.n	1f04 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    1ef4:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    1ef8:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    1efc:	30fc      	adds	r0, #252	; 0xfc
    1efe:	0109      	lsls	r1, r1, #4
    1f00:	4b04      	ldr	r3, [pc, #16]	; (1f14 <set_int_priority+0x2c>)
    1f02:	54c1      	strb	r1, [r0, r3]
    1f04:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    1f06:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    1f0a:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    1f0e:	0109      	lsls	r1, r1, #4
    1f10:	7001      	strb	r1, [r0, #0]
    1f12:	4770      	bx	lr
    1f14:	e000ed18 	.word	0xe000ed18

00001f18 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    1f18:	f010 0f03 	tst.w	r0, #3
    1f1c:	d113      	bne.n	1f46 <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    1f1e:	4b0c      	ldr	r3, [pc, #48]	; (1f50 <leap_year+0x38>)
    1f20:	fba3 2300 	umull	r2, r3, r3, r0
    1f24:	095b      	lsrs	r3, r3, #5
    1f26:	2264      	movs	r2, #100	; 0x64
    1f28:	fb02 0313 	mls	r3, r2, r3, r0
    1f2c:	b96b      	cbnz	r3, 1f4a <leap_year+0x32>
    1f2e:	4b08      	ldr	r3, [pc, #32]	; (1f50 <leap_year+0x38>)
    1f30:	fba3 2300 	umull	r2, r3, r3, r0
    1f34:	09db      	lsrs	r3, r3, #7
    1f36:	f44f 72c8 	mov.w	r2, #400	; 0x190
    1f3a:	fb02 0013 	mls	r0, r2, r3, r0
    1f3e:	fab0 f080 	clz	r0, r0
    1f42:	0940      	lsrs	r0, r0, #5
    1f44:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    1f46:	2000      	movs	r0, #0
    1f48:	4770      	bx	lr
		return 1;
    1f4a:	2001      	movs	r0, #1
}
    1f4c:	4770      	bx	lr
    1f4e:	bf00      	nop
    1f50:	51eb851f 	.word	0x51eb851f

00001f54 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    1f54:	4b07      	ldr	r3, [pc, #28]	; (1f74 <sec_per_month+0x20>)
    1f56:	5c5a      	ldrb	r2, [r3, r1]
    1f58:	4b07      	ldr	r3, [pc, #28]	; (1f78 <sec_per_month+0x24>)
    1f5a:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    1f5e:	2902      	cmp	r1, #2
    1f60:	d001      	beq.n	1f66 <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    1f62:	4618      	mov	r0, r3
    1f64:	4770      	bx	lr
	if (month==2 && leap){
    1f66:	2800      	cmp	r0, #0
    1f68:	d0fb      	beq.n	1f62 <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    1f6a:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1f6e:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    1f72:	e7f6      	b.n	1f62 <sec_per_month+0xe>
    1f74:	00003a6c 	.word	0x00003a6c
    1f78:	00015180 	.word	0x00015180

00001f7c <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    1f7c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1f80:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    1f82:	4b37      	ldr	r3, [pc, #220]	; (2060 <get_date_time+0xe4>)
    1f84:	699a      	ldr	r2, [r3, #24]
    1f86:	69dc      	ldr	r4, [r3, #28]
    1f88:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    1f8c:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1f90:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    1f92:	f7ff ffc1 	bl	1f18 <leap_year>
    1f96:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1f98:	4d32      	ldr	r5, [pc, #200]	; (2064 <get_date_time+0xe8>)
    1f9a:	4f33      	ldr	r7, [pc, #204]	; (2068 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    1f9c:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 207c <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1fa0:	e00e      	b.n	1fc0 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    1fa2:	4444      	add	r4, r8
    1fa4:	e005      	b.n	1fb2 <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1fa6:	42ac      	cmp	r4, r5
    1fa8:	d90f      	bls.n	1fca <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    1faa:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    1fae:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    1fb2:	8930      	ldrh	r0, [r6, #8]
    1fb4:	3001      	adds	r0, #1
    1fb6:	b280      	uxth	r0, r0
    1fb8:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    1fba:	f7ff ffad 	bl	1f18 <leap_year>
    1fbe:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1fc0:	f1b9 0f00 	cmp.w	r9, #0
    1fc4:	d1ef      	bne.n	1fa6 <get_date_time+0x2a>
    1fc6:	42bc      	cmp	r4, r7
    1fc8:	d8eb      	bhi.n	1fa2 <get_date_time+0x26>
	}//while
	dt->month=1;
    1fca:	8873      	ldrh	r3, [r6, #2]
    1fcc:	2201      	movs	r2, #1
    1fce:	f362 1389 	bfi	r3, r2, #6, #4
    1fd2:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    1fd4:	f362 0345 	bfi	r3, r2, #1, #5
    1fd8:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    1fda:	6833      	ldr	r3, [r6, #0]
    1fdc:	f36f 3310 	bfc	r3, #12, #5
    1fe0:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    1fe2:	f36f 138b 	bfc	r3, #6, #6
    1fe6:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    1fe8:	f36f 0305 	bfc	r3, #0, #6
    1fec:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1fee:	e005      	b.n	1ffc <get_date_time+0x80>
		dt->month++;
    1ff0:	3501      	adds	r5, #1
    1ff2:	8873      	ldrh	r3, [r6, #2]
    1ff4:	f365 1389 	bfi	r3, r5, #6, #4
    1ff8:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    1ffa:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1ffc:	8875      	ldrh	r5, [r6, #2]
    1ffe:	f3c5 1583 	ubfx	r5, r5, #6, #4
    2002:	4629      	mov	r1, r5
    2004:	4648      	mov	r0, r9
    2006:	f7ff ffa5 	bl	1f54 <sec_per_month>
    200a:	4284      	cmp	r4, r0
    200c:	d8f0      	bhi.n	1ff0 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    200e:	4a17      	ldr	r2, [pc, #92]	; (206c <get_date_time+0xf0>)
    2010:	fba2 3204 	umull	r3, r2, r2, r4
    2014:	0c12      	lsrs	r2, r2, #16
    2016:	1c51      	adds	r1, r2, #1
    2018:	78b3      	ldrb	r3, [r6, #2]
    201a:	f361 0345 	bfi	r3, r1, #1, #5
    201e:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    2020:	4b13      	ldr	r3, [pc, #76]	; (2070 <get_date_time+0xf4>)
    2022:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    2026:	4c13      	ldr	r4, [pc, #76]	; (2074 <get_date_time+0xf8>)
    2028:	fba4 3402 	umull	r3, r4, r4, r2
    202c:	0ae4      	lsrs	r4, r4, #11
    202e:	6833      	ldr	r3, [r6, #0]
    2030:	f364 3310 	bfi	r3, r4, #12, #5
    2034:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    2036:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    203a:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    203e:	4a0e      	ldr	r2, [pc, #56]	; (2078 <get_date_time+0xfc>)
    2040:	fba2 1204 	umull	r1, r2, r2, r4
    2044:	0952      	lsrs	r2, r2, #5
    2046:	f362 138b 	bfi	r3, r2, #6, #6
    204a:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    204c:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2050:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    2054:	f364 0305 	bfi	r3, r4, #0, #6
    2058:	7033      	strb	r3, [r6, #0]
    205a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    205e:	bf00      	nop
    2060:	40002800 	.word	0x40002800
    2064:	01e284ff 	.word	0x01e284ff
    2068:	01e1337f 	.word	0x01e1337f
    206c:	c22e4507 	.word	0xc22e4507
    2070:	00015180 	.word	0x00015180
    2074:	91a2b3c5 	.word	0x91a2b3c5
    2078:	88888889 	.word	0x88888889
    207c:	fe1ecc80 	.word	0xfe1ecc80

00002080 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    2080:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2084:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    2086:	8903      	ldrh	r3, [r0, #8]
    2088:	f240 72b1 	movw	r2, #1969	; 0x7b1
    208c:	4293      	cmp	r3, r2
    208e:	d857      	bhi.n	2140 <set_date_time+0xc0>
    2090:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2094:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    2098:	f7ff ff3e 	bl	1f18 <leap_year>
    209c:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    209e:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    20a0:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    20a4:	f3c6 1683 	ubfx	r6, r6, #6, #4
    20a8:	2e01      	cmp	r6, #1
    20aa:	d908      	bls.n	20be <set_date_time+0x3e>
    20ac:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    20ae:	4629      	mov	r1, r5
    20b0:	4638      	mov	r0, r7
    20b2:	f7ff ff4f 	bl	1f54 <sec_per_month>
    20b6:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    20b8:	3501      	adds	r5, #1
    20ba:	42b5      	cmp	r5, r6
    20bc:	d1f7      	bne.n	20ae <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    20be:	f8d8 2000 	ldr.w	r2, [r8]
    20c2:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    20c6:	f8b8 2000 	ldrh.w	r2, [r8]
    20ca:	f3c2 1285 	ubfx	r2, r2, #6, #6
    20ce:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    20d2:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    20d4:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    20d8:	fb01 2203 	mla	r2, r1, r3, r2
    20dc:	f898 3000 	ldrb.w	r3, [r8]
    20e0:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    20e4:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    20e6:	f898 3002 	ldrb.w	r3, [r8, #2]
    20ea:	f3c3 0344 	ubfx	r3, r3, #1, #5
    20ee:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    20f0:	4928      	ldr	r1, [pc, #160]	; (2194 <set_date_time+0x114>)
    20f2:	fb01 2303 	mla	r3, r1, r3, r2
    20f6:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    20f8:	4a27      	ldr	r2, [pc, #156]	; (2198 <set_date_time+0x118>)
    20fa:	69d3      	ldr	r3, [r2, #28]
    20fc:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2100:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2102:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    2106:	6813      	ldr	r3, [r2, #0]
    2108:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    210c:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    210e:	4b23      	ldr	r3, [pc, #140]	; (219c <set_date_time+0x11c>)
    2110:	685a      	ldr	r2, [r3, #4]
    2112:	f042 0210 	orr.w	r2, r2, #16
    2116:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    2118:	0c22      	lsrs	r2, r4, #16
    211a:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    211c:	b2a4      	uxth	r4, r4
    211e:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2120:	685a      	ldr	r2, [r3, #4]
    2122:	f022 0210 	bic.w	r2, r2, #16
    2126:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    2128:	461a      	mov	r2, r3
    212a:	6853      	ldr	r3, [r2, #4]
    212c:	f013 0f20 	tst.w	r3, #32
    2130:	d0fb      	beq.n	212a <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2132:	4a1b      	ldr	r2, [pc, #108]	; (21a0 <set_date_time+0x120>)
    2134:	6813      	ldr	r3, [r2, #0]
    2136:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    213a:	6013      	str	r3, [r2, #0]
    213c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    2140:	f640 023a 	movw	r2, #2106	; 0x83a
    2144:	4293      	cmp	r3, r2
    2146:	d90c      	bls.n	2162 <set_date_time+0xe2>
    2148:	4616      	mov	r6, r2
    214a:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    214e:	4610      	mov	r0, r2
    2150:	f7ff fee2 	bl	1f18 <leap_year>
    2154:	4607      	mov	r7, r0
    2156:	2400      	movs	r4, #0
    2158:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    215c:	f8df 9044 	ldr.w	r9, [pc, #68]	; 21a4 <set_date_time+0x124>
    2160:	e00e      	b.n	2180 <set_date_time+0x100>
	leap=leap_year(dt->year);
    2162:	8906      	ldrh	r6, [r0, #8]
    2164:	4630      	mov	r0, r6
    2166:	f7ff fed7 	bl	1f18 <leap_year>
    216a:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    216c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2170:	429e      	cmp	r6, r3
    2172:	d8f0      	bhi.n	2156 <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    2174:	2400      	movs	r4, #0
    2176:	e793      	b.n	20a0 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    2178:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    217a:	3501      	adds	r5, #1
    217c:	42b5      	cmp	r5, r6
    217e:	d28f      	bcs.n	20a0 <set_date_time+0x20>
		if (leap_year(i)){
    2180:	4628      	mov	r0, r5
    2182:	f7ff fec9 	bl	1f18 <leap_year>
    2186:	2800      	cmp	r0, #0
    2188:	d0f6      	beq.n	2178 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    218a:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    218e:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    2192:	e7f2      	b.n	217a <set_date_time+0xfa>
    2194:	00015180 	.word	0x00015180
    2198:	40021000 	.word	0x40021000
    219c:	40002800 	.word	0x40002800
    21a0:	40007000 	.word	0x40007000
    21a4:	01e13380 	.word	0x01e13380

000021a8 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    21a8:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    21aa:	4b35      	ldr	r3, [pc, #212]	; (2280 <rtc_init+0xd8>)
    21ac:	685a      	ldr	r2, [r3, #4]
    21ae:	f64a 2355 	movw	r3, #43605	; 0xaa55
    21b2:	429a      	cmp	r2, r3
    21b4:	d05c      	beq.n	2270 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    21b6:	4b33      	ldr	r3, [pc, #204]	; (2284 <rtc_init+0xdc>)
    21b8:	69da      	ldr	r2, [r3, #28]
    21ba:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    21be:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    21c0:	4c31      	ldr	r4, [pc, #196]	; (2288 <rtc_init+0xe0>)
    21c2:	6822      	ldr	r2, [r4, #0]
    21c4:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    21c8:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    21ca:	6a1a      	ldr	r2, [r3, #32]
    21cc:	f042 0201 	orr.w	r2, r2, #1
    21d0:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    21d2:	461a      	mov	r2, r3
    21d4:	6a13      	ldr	r3, [r2, #32]
    21d6:	f013 0f02 	tst.w	r3, #2
    21da:	d0fb      	beq.n	21d4 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    21dc:	4a29      	ldr	r2, [pc, #164]	; (2284 <rtc_init+0xdc>)
    21de:	6a13      	ldr	r3, [r2, #32]
    21e0:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    21e4:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    21e6:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    21ea:	6853      	ldr	r3, [r2, #4]
    21ec:	f013 0f08 	tst.w	r3, #8
    21f0:	d0fb      	beq.n	21ea <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    21f2:	4a26      	ldr	r2, [pc, #152]	; (228c <rtc_init+0xe4>)
    21f4:	6853      	ldr	r3, [r2, #4]
    21f6:	f013 0f20 	tst.w	r3, #32
    21fa:	d0fb      	beq.n	21f4 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    21fc:	4a23      	ldr	r2, [pc, #140]	; (228c <rtc_init+0xe4>)
    21fe:	6853      	ldr	r3, [r2, #4]
    2200:	f043 0310 	orr.w	r3, r3, #16
    2204:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    2206:	6853      	ldr	r3, [r2, #4]
    2208:	f013 0f20 	tst.w	r3, #32
    220c:	d0fb      	beq.n	2206 <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    220e:	4a1f      	ldr	r2, [pc, #124]	; (228c <rtc_init+0xe4>)
    2210:	6813      	ldr	r3, [r2, #0]
    2212:	4319      	orrs	r1, r3
    2214:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    2216:	6853      	ldr	r3, [r2, #4]
    2218:	f013 0f20 	tst.w	r3, #32
    221c:	d0fb      	beq.n	2216 <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    221e:	03c2      	lsls	r2, r0, #15
    2220:	481b      	ldr	r0, [pc, #108]	; (2290 <rtc_init+0xe8>)
    2222:	fba0 3202 	umull	r3, r2, r0, r2
    2226:	0992      	lsrs	r2, r2, #6
    2228:	3a01      	subs	r2, #1
    222a:	b291      	uxth	r1, r2
    222c:	4b17      	ldr	r3, [pc, #92]	; (228c <rtc_init+0xe4>)
    222e:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    2230:	4619      	mov	r1, r3
    2232:	684b      	ldr	r3, [r1, #4]
    2234:	f013 0f20 	tst.w	r3, #32
    2238:	d0fb      	beq.n	2232 <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    223a:	f3c2 4203 	ubfx	r2, r2, #16, #4
    223e:	4b13      	ldr	r3, [pc, #76]	; (228c <rtc_init+0xe4>)
    2240:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    2242:	461a      	mov	r2, r3
    2244:	6853      	ldr	r3, [r2, #4]
    2246:	f013 0f20 	tst.w	r3, #32
    224a:	d0fb      	beq.n	2244 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    224c:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2250:	4b0b      	ldr	r3, [pc, #44]	; (2280 <rtc_init+0xd8>)
    2252:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    2254:	4a0d      	ldr	r2, [pc, #52]	; (228c <rtc_init+0xe4>)
    2256:	6853      	ldr	r3, [r2, #4]
    2258:	f023 0310 	bic.w	r3, r3, #16
    225c:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    225e:	6853      	ldr	r3, [r2, #4]
    2260:	f013 0f20 	tst.w	r3, #32
    2264:	d0fb      	beq.n	225e <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    2266:	4a08      	ldr	r2, [pc, #32]	; (2288 <rtc_init+0xe0>)
    2268:	6813      	ldr	r3, [r2, #0]
    226a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    226e:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    2270:	210f      	movs	r1, #15
    2272:	2003      	movs	r0, #3
    2274:	f7ff fe38 	bl	1ee8 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    2278:	2003      	movs	r0, #3
    227a:	f7ff fdd5 	bl	1e28 <enable_interrupt>
    227e:	bd10      	pop	{r4, pc}
    2280:	40006c00 	.word	0x40006c00
    2284:	40021000 	.word	0x40021000
    2288:	40007000 	.word	0x40007000
    228c:	40002800 	.word	0x40002800
    2290:	10624dd3 	.word	0x10624dd3

00002294 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2294:	4b06      	ldr	r3, [pc, #24]	; (22b0 <reset_backup_domain+0x1c>)
    2296:	69da      	ldr	r2, [r3, #28]
    2298:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    229c:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    229e:	6a1a      	ldr	r2, [r3, #32]
    22a0:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    22a4:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    22a6:	6a1a      	ldr	r2, [r3, #32]
    22a8:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    22ac:	621a      	str	r2, [r3, #32]
    22ae:	4770      	bx	lr
    22b0:	40021000 	.word	0x40021000

000022b4 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    22b4:	4a27      	ldr	r2, [pc, #156]	; (2354 <rtc_clock_trim+0xa0>)
    22b6:	69d3      	ldr	r3, [r2, #28]
    22b8:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    22bc:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    22be:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    22c2:	6853      	ldr	r3, [r2, #4]
    22c4:	f013 0f08 	tst.w	r3, #8
    22c8:	d0fb      	beq.n	22c2 <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    22ca:	4a23      	ldr	r2, [pc, #140]	; (2358 <rtc_clock_trim+0xa4>)
    22cc:	6813      	ldr	r3, [r2, #0]
    22ce:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    22d2:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    22d4:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    22d8:	6853      	ldr	r3, [r2, #4]
    22da:	f043 0310 	orr.w	r3, r3, #16
    22de:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    22e0:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    22e4:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    22e6:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    22ea:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    22ec:	b9b8      	cbnz	r0, 231e <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    22ee:	2200      	movs	r2, #0
    22f0:	4b1a      	ldr	r3, [pc, #104]	; (235c <rtc_clock_trim+0xa8>)
    22f2:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    22f4:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    22f8:	f647 71ff 	movw	r1, #32767	; 0x7fff
    22fc:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    22fe:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2300:	4a17      	ldr	r2, [pc, #92]	; (2360 <rtc_clock_trim+0xac>)
    2302:	6853      	ldr	r3, [r2, #4]
    2304:	f023 0310 	bic.w	r3, r3, #16
    2308:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    230a:	6853      	ldr	r3, [r2, #4]
    230c:	f013 0f20 	tst.w	r3, #32
    2310:	d0fb      	beq.n	230a <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2312:	4a11      	ldr	r2, [pc, #68]	; (2358 <rtc_clock_trim+0xa4>)
    2314:	6813      	ldr	r3, [r2, #0]
    2316:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    231a:	6013      	str	r3, [r2, #0]
    231c:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    231e:	2800      	cmp	r0, #0
    2320:	dd06      	ble.n	2330 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    2322:	4b0e      	ldr	r3, [pc, #56]	; (235c <rtc_clock_trim+0xa8>)
    2324:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    2326:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    232a:	4310      	orrs	r0, r2
    232c:	62d8      	str	r0, [r3, #44]	; 0x2c
    232e:	e7e7      	b.n	2300 <rtc_clock_trim+0x4c>
		trim=-trim;
    2330:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    2332:	2100      	movs	r1, #0
    2334:	4b09      	ldr	r3, [pc, #36]	; (235c <rtc_clock_trim+0xa8>)
    2336:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    2338:	f64f 73ff 	movw	r3, #65535	; 0xffff
    233c:	287f      	cmp	r0, #127	; 0x7f
    233e:	bfd4      	ite	le
    2340:	1a18      	suble	r0, r3, r0
    2342:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    2346:	f3c0 000e 	ubfx	r0, r0, #0, #15
    234a:	4a05      	ldr	r2, [pc, #20]	; (2360 <rtc_clock_trim+0xac>)
    234c:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    234e:	6091      	str	r1, [r2, #8]
    2350:	e7d6      	b.n	2300 <rtc_clock_trim+0x4c>
    2352:	bf00      	nop
    2354:	40021000 	.word	0x40021000
    2358:	40007000 	.word	0x40007000
    235c:	40006c00 	.word	0x40006c00
    2360:	40002800 	.word	0x40002800

00002364 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    2364:	4770      	bx	lr

00002366 <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    2366:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    236a:	4607      	mov	r7, r0
    236c:	4688      	mov	r8, r1
    236e:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    2370:	2400      	movs	r4, #0
	i=0;
    2372:	4626      	mov	r6, r4
	while (digit(date[i])){
    2374:	e008      	b.n	2388 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    2376:	3601      	adds	r6, #1
    2378:	3501      	adds	r5, #1
    237a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    237e:	f899 3000 	ldrb.w	r3, [r9]
    2382:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    2386:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2388:	46a9      	mov	r9, r5
    238a:	7828      	ldrb	r0, [r5, #0]
    238c:	f7fe fed1 	bl	1132 <digit>
    2390:	4682      	mov	sl, r0
    2392:	2800      	cmp	r0, #0
    2394:	d1ef      	bne.n	2376 <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    2396:	2e03      	cmp	r6, #3
    2398:	dd02      	ble.n	23a0 <str_to_date+0x3a>
    239a:	782b      	ldrb	r3, [r5, #0]
    239c:	2b2f      	cmp	r3, #47	; 0x2f
    239e:	d002      	beq.n	23a6 <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    23a0:	4650      	mov	r0, sl
    23a2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    23a6:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    23aa:	3601      	adds	r6, #1
    23ac:	19bd      	adds	r5, r7, r6
	n=0;
    23ae:	4604      	mov	r4, r0
	while (digit(date[i])){
    23b0:	e008      	b.n	23c4 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    23b2:	3601      	adds	r6, #1
    23b4:	3501      	adds	r5, #1
    23b6:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    23ba:	f899 3000 	ldrb.w	r3, [r9]
    23be:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    23c2:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    23c4:	46a9      	mov	r9, r5
    23c6:	7828      	ldrb	r0, [r5, #0]
    23c8:	f7fe feb3 	bl	1132 <digit>
    23cc:	4682      	mov	sl, r0
    23ce:	2800      	cmp	r0, #0
    23d0:	d1ef      	bne.n	23b2 <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    23d2:	2e06      	cmp	r6, #6
    23d4:	dde4      	ble.n	23a0 <str_to_date+0x3a>
    23d6:	782b      	ldrb	r3, [r5, #0]
    23d8:	2b2f      	cmp	r3, #47	; 0x2f
    23da:	d1e1      	bne.n	23a0 <str_to_date+0x3a>
	dt->month=n;
    23dc:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    23e0:	f364 1389 	bfi	r3, r4, #6, #4
    23e4:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    23e8:	1c74      	adds	r4, r6, #1
    23ea:	443e      	add	r6, r7
	while (digit(date[i])){
    23ec:	e008      	b.n	2400 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    23ee:	3401      	adds	r4, #1
    23f0:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    23f4:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    23f8:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    23fc:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2400:	7870      	ldrb	r0, [r6, #1]
    2402:	f7fe fe96 	bl	1132 <digit>
    2406:	2800      	cmp	r0, #0
    2408:	d1f1      	bne.n	23ee <str_to_date+0x88>
	if (i<10) return 0;
    240a:	2c09      	cmp	r4, #9
    240c:	dd08      	ble.n	2420 <str_to_date+0xba>
	dt->day=n;
    240e:	f898 3002 	ldrb.w	r3, [r8, #2]
    2412:	f36a 0345 	bfi	r3, sl, #1, #5
    2416:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    241a:	f04f 0a01 	mov.w	sl, #1
    241e:	e7bf      	b.n	23a0 <str_to_date+0x3a>
	if (i<10) return 0;
    2420:	4682      	mov	sl, r0
    2422:	e7bd      	b.n	23a0 <str_to_date+0x3a>

00002424 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    2424:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2428:	4607      	mov	r7, r0
    242a:	4688      	mov	r8, r1
    242c:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    242e:	2400      	movs	r4, #0
	i=0;
    2430:	4626      	mov	r6, r4
	while (digit(time[i])){
    2432:	e00a      	b.n	244a <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    2434:	3601      	adds	r6, #1
    2436:	3501      	adds	r5, #1
    2438:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    243c:	0064      	lsls	r4, r4, #1
    243e:	3c30      	subs	r4, #48	; 0x30
    2440:	f899 3000 	ldrb.w	r3, [r9]
    2444:	441c      	add	r4, r3
    2446:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    244a:	46a9      	mov	r9, r5
    244c:	7828      	ldrb	r0, [r5, #0]
    244e:	f7fe fe70 	bl	1132 <digit>
    2452:	4603      	mov	r3, r0
    2454:	2800      	cmp	r0, #0
    2456:	d1ed      	bne.n	2434 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    2458:	2c17      	cmp	r4, #23
    245a:	d802      	bhi.n	2462 <str_to_time+0x3e>
    245c:	782a      	ldrb	r2, [r5, #0]
    245e:	2a3a      	cmp	r2, #58	; 0x3a
    2460:	d002      	beq.n	2468 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    2462:	4618      	mov	r0, r3
    2464:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    2468:	f8d8 3000 	ldr.w	r3, [r8]
    246c:	f364 3310 	bfi	r3, r4, #12, #5
    2470:	f8c8 3000 	str.w	r3, [r8]
	i++;
    2474:	3601      	adds	r6, #1
    2476:	19bd      	adds	r5, r7, r6
	n=0;
    2478:	2400      	movs	r4, #0
	while (digit(time[i])){
    247a:	e00a      	b.n	2492 <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    247c:	3601      	adds	r6, #1
    247e:	3501      	adds	r5, #1
    2480:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2484:	0064      	lsls	r4, r4, #1
    2486:	3c30      	subs	r4, #48	; 0x30
    2488:	f899 3000 	ldrb.w	r3, [r9]
    248c:	441c      	add	r4, r3
    248e:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2492:	46a9      	mov	r9, r5
    2494:	7828      	ldrb	r0, [r5, #0]
    2496:	f7fe fe4c 	bl	1132 <digit>
    249a:	4603      	mov	r3, r0
    249c:	2800      	cmp	r0, #0
    249e:	d1ed      	bne.n	247c <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    24a0:	2c3b      	cmp	r4, #59	; 0x3b
    24a2:	d8de      	bhi.n	2462 <str_to_time+0x3e>
    24a4:	782a      	ldrb	r2, [r5, #0]
    24a6:	2a3a      	cmp	r2, #58	; 0x3a
    24a8:	d1db      	bne.n	2462 <str_to_time+0x3e>
	dt->minute=n;
    24aa:	f8b8 3000 	ldrh.w	r3, [r8]
    24ae:	f364 138b 	bfi	r3, r4, #6, #6
    24b2:	f8a8 3000 	strh.w	r3, [r8]
    24b6:	443e      	add	r6, r7
	n=0;
    24b8:	2400      	movs	r4, #0
	while (digit(time[i])){
    24ba:	e008      	b.n	24ce <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    24bc:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    24c0:	0064      	lsls	r4, r4, #1
    24c2:	3c30      	subs	r4, #48	; 0x30
    24c4:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    24c8:	441c      	add	r4, r3
    24ca:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    24ce:	7870      	ldrb	r0, [r6, #1]
    24d0:	f7fe fe2f 	bl	1132 <digit>
    24d4:	4603      	mov	r3, r0
    24d6:	2800      	cmp	r0, #0
    24d8:	d1f0      	bne.n	24bc <str_to_time+0x98>
	if (n>59) return 0;
    24da:	2c3b      	cmp	r4, #59	; 0x3b
    24dc:	d8c1      	bhi.n	2462 <str_to_time+0x3e>
	dt->second=n;
    24de:	f898 3000 	ldrb.w	r3, [r8]
    24e2:	f364 0305 	bfi	r3, r4, #0, #6
    24e6:	f888 3000 	strb.w	r3, [r8]
	return 1;
    24ea:	2301      	movs	r3, #1
    24ec:	e7b9      	b.n	2462 <str_to_time+0x3e>

000024ee <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    24ee:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    24f0:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    24f2:	4b23      	ldr	r3, [pc, #140]	; (2580 <date_str+0x92>)
    24f4:	fba3 4302 	umull	r4, r3, r3, r2
    24f8:	099b      	lsrs	r3, r3, #6
    24fa:	f103 0430 	add.w	r4, r3, #48	; 0x30
    24fe:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2500:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2504:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2508:	4b1e      	ldr	r3, [pc, #120]	; (2584 <date_str+0x96>)
    250a:	fba3 4302 	umull	r4, r3, r3, r2
    250e:	095b      	lsrs	r3, r3, #5
    2510:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2514:	704c      	strb	r4, [r1, #1]
	n%=100;
    2516:	2464      	movs	r4, #100	; 0x64
    2518:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    251c:	4a1a      	ldr	r2, [pc, #104]	; (2588 <date_str+0x9a>)
    251e:	fba2 5403 	umull	r5, r4, r2, r3
    2522:	08e4      	lsrs	r4, r4, #3
    2524:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2528:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    252a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    252e:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    2532:	3330      	adds	r3, #48	; 0x30
    2534:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    2536:	262f      	movs	r6, #47	; 0x2f
    2538:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    253a:	8843      	ldrh	r3, [r0, #2]
    253c:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    2540:	fba2 5403 	umull	r5, r4, r2, r3
    2544:	08e4      	lsrs	r4, r4, #3
    2546:	f104 0530 	add.w	r5, r4, #48	; 0x30
    254a:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    254c:	00a5      	lsls	r5, r4, #2
    254e:	442c      	add	r4, r5
    2550:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    2554:	3330      	adds	r3, #48	; 0x30
    2556:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    2558:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    255a:	7880      	ldrb	r0, [r0, #2]
    255c:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    2560:	fba2 3200 	umull	r3, r2, r2, r0
    2564:	08d3      	lsrs	r3, r2, #3
    2566:	f103 0230 	add.w	r2, r3, #48	; 0x30
    256a:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    256c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2570:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    2574:	3330      	adds	r3, #48	; 0x30
    2576:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    2578:	2300      	movs	r3, #0
    257a:	728b      	strb	r3, [r1, #10]

}
    257c:	bc70      	pop	{r4, r5, r6}
    257e:	4770      	bx	lr
    2580:	10624dd3 	.word	0x10624dd3
    2584:	51eb851f 	.word	0x51eb851f
    2588:	cccccccd 	.word	0xcccccccd

0000258c <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    258c:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    258e:	6802      	ldr	r2, [r0, #0]
    2590:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    2594:	4b18      	ldr	r3, [pc, #96]	; (25f8 <time_str+0x6c>)
    2596:	fba3 5402 	umull	r5, r4, r3, r2
    259a:	08e4      	lsrs	r4, r4, #3
    259c:	f104 0530 	add.w	r5, r4, #48	; 0x30
    25a0:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    25a2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25a6:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    25aa:	3230      	adds	r2, #48	; 0x30
    25ac:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    25ae:	253a      	movs	r5, #58	; 0x3a
    25b0:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    25b2:	8802      	ldrh	r2, [r0, #0]
    25b4:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    25b8:	fba3 6402 	umull	r6, r4, r3, r2
    25bc:	08e4      	lsrs	r4, r4, #3
    25be:	f104 0630 	add.w	r6, r4, #48	; 0x30
    25c2:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    25c4:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25c8:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    25cc:	3230      	adds	r2, #48	; 0x30
    25ce:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    25d0:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    25d2:	7802      	ldrb	r2, [r0, #0]
    25d4:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    25d8:	fba3 0302 	umull	r0, r3, r3, r2
    25dc:	08db      	lsrs	r3, r3, #3
    25de:	f103 0030 	add.w	r0, r3, #48	; 0x30
    25e2:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    25e4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    25e8:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    25ec:	3330      	adds	r3, #48	; 0x30
    25ee:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    25f0:	2300      	movs	r3, #0
    25f2:	720b      	strb	r3, [r1, #8]
}
    25f4:	bc70      	pop	{r4, r5, r6}
    25f6:	4770      	bx	lr
    25f8:	cccccccd 	.word	0xcccccccd

000025fc <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    25fc:	b500      	push	{lr}
    25fe:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2600:	a801      	add	r0, sp, #4
    2602:	f7ff fcbb 	bl	1f7c <get_date_time>
	t.fields.second=dt.second/2;
    2606:	f89d 3004 	ldrb.w	r3, [sp, #4]
    260a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    260e:	2000      	movs	r0, #0
    2610:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2614:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2618:	f3c3 1385 	ubfx	r3, r3, #6, #6
    261c:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2620:	9b01      	ldr	r3, [sp, #4]
    2622:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2626:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    262a:	f89d 3006 	ldrb.w	r3, [sp, #6]
    262e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2632:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    2636:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    263a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    263e:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    2642:	f89d 300c 	ldrb.w	r3, [sp, #12]
    2646:	3344      	adds	r3, #68	; 0x44
    2648:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    264c:	b005      	add	sp, #20
    264e:	f85d fb04 	ldr.w	pc, [sp], #4

00002652 <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    2652:	4b07      	ldr	r3, [pc, #28]	; (2670 <RTC_handler+0x1e>)
    2654:	685b      	ldr	r3, [r3, #4]
    2656:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    265a:	bf1c      	itt	ne
    265c:	4b04      	ldrne	r3, [pc, #16]	; (2670 <RTC_handler+0x1e>)
    265e:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    2660:	4b03      	ldr	r3, [pc, #12]	; (2670 <RTC_handler+0x1e>)
    2662:	685b      	ldr	r3, [r3, #4]
    2664:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    2668:	bf1c      	itt	ne
    266a:	4b01      	ldrne	r3, [pc, #4]	; (2670 <RTC_handler+0x1e>)
    266c:	685b      	ldrne	r3, [r3, #4]
    266e:	4770      	bx	lr
    2670:	40002800 	.word	0x40002800

00002674 <sound_init>:

#define SOUND_BUFFER_SIZE 16
static uint8_t sound_buffer[SOUND_BUFFER_SIZE];
static uint8_t bit_pos;

void sound_init(){
    2674:	b508      	push	{r3, lr}
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    2676:	4a0b      	ldr	r2, [pc, #44]	; (26a4 <sound_init+0x30>)
    2678:	69d3      	ldr	r3, [r2, #28]
    267a:	f043 0301 	orr.w	r3, r3, #1
    267e:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2680:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2684:	2278      	movs	r2, #120	; 0x78
    2686:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    2688:	f44f 7280 	mov.w	r2, #256	; 0x100
    268c:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    268e:	2209      	movs	r2, #9
    2690:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    2692:	2100      	movs	r1, #0
    2694:	201c      	movs	r0, #28
    2696:	f7ff fc27 	bl	1ee8 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    269a:	201c      	movs	r0, #28
    269c:	f7ff fbc4 	bl	1e28 <enable_interrupt>
    26a0:	bd08      	pop	{r3, pc}
    26a2:	bf00      	nop
    26a4:	40021000 	.word	0x40021000

000026a8 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    26a8:	b538      	push	{r3, r4, r5, lr}
    26aa:	4605      	mov	r5, r0
    26ac:	460c      	mov	r4, r1
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    26ae:	4b11      	ldr	r3, [pc, #68]	; (26f4 <tone+0x4c>)
    26b0:	685a      	ldr	r2, [r3, #4]
    26b2:	f402 7240 	and.w	r2, r2, #768	; 0x300
    26b6:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    26b8:	685a      	ldr	r2, [r3, #4]
    26ba:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    26be:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    26c0:	220a      	movs	r2, #10
    26c2:	4611      	mov	r1, r2
    26c4:	480c      	ldr	r0, [pc, #48]	; (26f8 <tone+0x50>)
    26c6:	f7fe fe5f 	bl	1388 <config_pin>
    TMR2->ARR=FCLK/10/freq;
    26ca:	480c      	ldr	r0, [pc, #48]	; (26fc <tone+0x54>)
    26cc:	fbb0 f0f5 	udiv	r0, r0, r5
    26d0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    26d4:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    26d6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    26d8:	0852      	lsrs	r2, r2, #1
    26da:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->DIER&=~TMR_DIER_CC3IE;
    26dc:	68da      	ldr	r2, [r3, #12]
    26de:	f022 0208 	bic.w	r2, r2, #8
    26e2:	60da      	str	r2, [r3, #12]
    TMR2->CR1|=TMR_CR1_CEN;
    26e4:	681a      	ldr	r2, [r3, #0]
    26e6:	f042 0201 	orr.w	r2, r2, #1
    26ea:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    26ec:	4b04      	ldr	r3, [pc, #16]	; (2700 <tone+0x58>)
    26ee:	801c      	strh	r4, [r3, #0]
    26f0:	bd38      	pop	{r3, r4, r5, pc}
    26f2:	bf00      	nop
    26f4:	40010000 	.word	0x40010000
    26f8:	40010c00 	.word	0x40010c00
    26fc:	006d3d32 	.word	0x006d3d32
    2700:	20004d38 	.word	0x20004d38

00002704 <beep>:
}

void beep(uint16_t duration){
    2704:	b508      	push	{r3, lr}
    tone(1000,duration);
    2706:	4601      	mov	r1, r0
    2708:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    270c:	f7ff ffcc 	bl	26a8 <tone>
    2710:	bd08      	pop	{r3, pc}

00002712 <load_sound_buffer>:
}

void load_sound_buffer(const uint8_t* buffer){
    2712:	3801      	subs	r0, #1
    2714:	4904      	ldr	r1, [pc, #16]	; (2728 <load_sound_buffer+0x16>)
    2716:	1e4b      	subs	r3, r1, #1
    2718:	310f      	adds	r1, #15
    int i;
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
        sound_buffer[i]=*buffer++;
    271a:	f810 2f01 	ldrb.w	r2, [r0, #1]!
    271e:	f803 2f01 	strb.w	r2, [r3, #1]!
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
    2722:	428b      	cmp	r3, r1
    2724:	d1f9      	bne.n	271a <load_sound_buffer+0x8>
    }
}
    2726:	4770      	bx	lr
    2728:	20000584 	.word	0x20000584

0000272c <sound_sampler>:

// configure son pour sortie buffer
void sound_sampler(uint16_t duration){
    272c:	b510      	push	{r4, lr}
    272e:	4604      	mov	r4, r0
    bit_pos=0;
    2730:	2200      	movs	r2, #0
    2732:	4b11      	ldr	r3, [pc, #68]	; (2778 <sound_sampler+0x4c>)
    2734:	741a      	strb	r2, [r3, #16]
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    2736:	4a11      	ldr	r2, [pc, #68]	; (277c <sound_sampler+0x50>)
    2738:	6853      	ldr	r3, [r2, #4]
    273a:	f403 7340 	and.w	r3, r3, #768	; 0x300
    273e:	6053      	str	r3, [r2, #4]
    PORTB->ODR&=~BIT10;
    2740:	480f      	ldr	r0, [pc, #60]	; (2780 <sound_sampler+0x54>)
    2742:	68c3      	ldr	r3, [r0, #12]
    2744:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    2748:	60c3      	str	r3, [r0, #12]
    config_pin(PORTB,10,OUTPUT_PP_SLOW);
    274a:	2202      	movs	r2, #2
    274c:	210a      	movs	r1, #10
    274e:	f7fe fe1b 	bl	1388 <config_pin>
    TMR2->DIER|=TMR_DIER_UIE;
    2752:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2756:	68da      	ldr	r2, [r3, #12]
    2758:	f042 0201 	orr.w	r2, r2, #1
    275c:	60da      	str	r2, [r3, #12]
    TMR2->ARR=FCLK/10/4000;
    275e:	f240 62fd 	movw	r2, #1789	; 0x6fd
    2762:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR2->CCR2=TMR2->ARR;
    2764:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2766:	639a      	str	r2, [r3, #56]	; 0x38
    TMR2->CR1|=TMR_CR1_CEN;
    2768:	681a      	ldr	r2, [r3, #0]
    276a:	f042 0201 	orr.w	r2, r2, #1
    276e:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2770:	4b04      	ldr	r3, [pc, #16]	; (2784 <sound_sampler+0x58>)
    2772:	801c      	strh	r4, [r3, #0]
    2774:	bd10      	pop	{r4, pc}
    2776:	bf00      	nop
    2778:	20000584 	.word	0x20000584
    277c:	40010000 	.word	0x40010000
    2780:	40010c00 	.word	0x40010c00
    2784:	20004d38 	.word	0x20004d38

00002788 <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    2788:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    278c:	681a      	ldr	r2, [r3, #0]
    278e:	f022 0201 	bic.w	r2, r2, #1
    2792:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    2794:	68da      	ldr	r2, [r3, #12]
    2796:	f022 0201 	bic.w	r2, r2, #1
    279a:	60da      	str	r2, [r3, #12]
    279c:	4770      	bx	lr

0000279e <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    279e:	b510      	push	{r4, lr}
    27a0:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    27a2:	b289      	uxth	r1, r1
    27a4:	4b05      	ldr	r3, [pc, #20]	; (27bc <key_tone+0x1e>)
    27a6:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    27aa:	f7ff ff7d 	bl	26a8 <tone>
    if (wait_end) while (sound_timer);
    27ae:	b124      	cbz	r4, 27ba <key_tone+0x1c>
    27b0:	4a03      	ldr	r2, [pc, #12]	; (27c0 <key_tone+0x22>)
    27b2:	8813      	ldrh	r3, [r2, #0]
    27b4:	b29b      	uxth	r3, r3
    27b6:	2b00      	cmp	r3, #0
    27b8:	d1fb      	bne.n	27b2 <key_tone+0x14>
    27ba:	bd10      	pop	{r4, pc}
    27bc:	00003a7c 	.word	0x00003a7c
    27c0:	20004d38 	.word	0x20004d38

000027c4 <noise>:
}

// produit un bruit 
void noise(int length){
    27c4:	b570      	push	{r4, r5, r6, lr}
    27c6:	4606      	mov	r6, r0
    int i;
    srand(ntsc_ticks);
    27c8:	4b08      	ldr	r3, [pc, #32]	; (27ec <noise+0x28>)
    27ca:	6818      	ldr	r0, [r3, #0]
    27cc:	f7fd fdea 	bl	3a4 <srand>
    27d0:	4d07      	ldr	r5, [pc, #28]	; (27f0 <noise+0x2c>)
    27d2:	1e6c      	subs	r4, r5, #1
    27d4:	350f      	adds	r5, #15
    for (i=0;i<16;i++) sound_buffer[i]=rand()&0xff;
    27d6:	f7fd fdeb 	bl	3b0 <rand>
    27da:	f804 0f01 	strb.w	r0, [r4, #1]!
    27de:	42ac      	cmp	r4, r5
    27e0:	d1f9      	bne.n	27d6 <noise+0x12>
    sound_sampler(length);
    27e2:	b2b0      	uxth	r0, r6
    27e4:	f7ff ffa2 	bl	272c <sound_sampler>
    27e8:	bd70      	pop	{r4, r5, r6, pc}
    27ea:	bf00      	nop
    27ec:	20004d34 	.word	0x20004d34
    27f0:	20000584 	.word	0x20000584

000027f4 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    27f4:	4668      	mov	r0, sp
    27f6:	f020 0107 	bic.w	r1, r0, #7
    27fa:	468d      	mov	sp, r1
    27fc:	b401      	push	{r0}
    uint8_t byte,mask;
    byte=bit_pos/8;
    27fe:	4810      	ldr	r0, [pc, #64]	; (2840 <sound_handler+0x4c>)
    2800:	7c03      	ldrb	r3, [r0, #16]
    mask=1<<(7-bit_pos%8);
    2802:	43da      	mvns	r2, r3
    2804:	f002 0107 	and.w	r1, r2, #7
    2808:	2201      	movs	r2, #1
    280a:	408a      	lsls	r2, r1
    if (sound_buffer[byte]&mask){
    280c:	08d9      	lsrs	r1, r3, #3
    280e:	5c41      	ldrb	r1, [r0, r1]
    2810:	420a      	tst	r2, r1
        PORTB->ODR|=BIT10;
    2812:	490c      	ldr	r1, [pc, #48]	; (2844 <sound_handler+0x50>)
    2814:	68ca      	ldr	r2, [r1, #12]
    2816:	bf14      	ite	ne
    2818:	f442 6280 	orrne.w	r2, r2, #1024	; 0x400
    }else{
        PORTB->ODR&=~BIT10;
    281c:	f422 6280 	biceq.w	r2, r2, #1024	; 0x400
    2820:	60ca      	str	r2, [r1, #12]
    }
    bit_pos++;
    2822:	3301      	adds	r3, #1
    bit_pos%=SOUND_BUFFER_SIZE;
    2824:	f003 030f 	and.w	r3, r3, #15
    2828:	4a05      	ldr	r2, [pc, #20]	; (2840 <sound_handler+0x4c>)
    282a:	7413      	strb	r3, [r2, #16]
    TMR2->SR&=~TMR_SR_UIF;
    282c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2830:	6913      	ldr	r3, [r2, #16]
    2832:	f023 0301 	bic.w	r3, r3, #1
    2836:	6113      	str	r3, [r2, #16]
}
    2838:	bc01      	pop	{r0}
    283a:	4685      	mov	sp, r0
    283c:	4770      	bx	lr
    283e:	bf00      	nop
    2840:	20000584 	.word	0x20000584
    2844:	40010c00 	.word	0x40010c00

00002848 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    2848:	6803      	ldr	r3, [r0, #0]
    284a:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    284e:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2850:	6803      	ldr	r3, [r0, #0]
    2852:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2856:	6001      	str	r1, [r0, #0]
    2858:	4770      	bx	lr

0000285a <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    285a:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    285c:	4a2f      	ldr	r2, [pc, #188]	; (291c <spi_config_port+0xc2>)
    285e:	6993      	ldr	r3, [r2, #24]
    2860:	f043 0301 	orr.w	r3, r3, #1
    2864:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2866:	4b2e      	ldr	r3, [pc, #184]	; (2920 <spi_config_port+0xc6>)
    2868:	4298      	cmp	r0, r3
    286a:	d01a      	beq.n	28a2 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    286c:	4a2b      	ldr	r2, [pc, #172]	; (291c <spi_config_port+0xc2>)
    286e:	6993      	ldr	r3, [r2, #24]
    2870:	f043 0308 	orr.w	r3, r3, #8
    2874:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2876:	4c2b      	ldr	r4, [pc, #172]	; (2924 <spi_config_port+0xca>)
    2878:	2203      	movs	r2, #3
    287a:	2102      	movs	r1, #2
    287c:	4620      	mov	r0, r4
    287e:	f7fe fd83 	bl	1388 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2882:	220b      	movs	r2, #11
    2884:	210d      	movs	r1, #13
    2886:	4620      	mov	r0, r4
    2888:	f7fe fd7e 	bl	1388 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    288c:	2204      	movs	r2, #4
    288e:	210e      	movs	r1, #14
    2890:	4620      	mov	r0, r4
    2892:	f7fe fd79 	bl	1388 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2896:	220b      	movs	r2, #11
    2898:	210f      	movs	r1, #15
    289a:	4620      	mov	r0, r4
    289c:	f7fe fd74 	bl	1388 <config_pin>
    28a0:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    28a2:	b9c9      	cbnz	r1, 28d8 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    28a4:	6993      	ldr	r3, [r2, #24]
    28a6:	f043 0304 	orr.w	r3, r3, #4
    28aa:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    28ac:	4c1e      	ldr	r4, [pc, #120]	; (2928 <spi_config_port+0xce>)
    28ae:	2203      	movs	r2, #3
    28b0:	2104      	movs	r1, #4
    28b2:	4620      	mov	r0, r4
    28b4:	f7fe fd68 	bl	1388 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    28b8:	220b      	movs	r2, #11
    28ba:	2105      	movs	r1, #5
    28bc:	4620      	mov	r0, r4
    28be:	f7fe fd63 	bl	1388 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    28c2:	2204      	movs	r2, #4
    28c4:	2106      	movs	r1, #6
    28c6:	4620      	mov	r0, r4
    28c8:	f7fe fd5e 	bl	1388 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    28cc:	220b      	movs	r2, #11
    28ce:	2107      	movs	r1, #7
    28d0:	4620      	mov	r0, r4
    28d2:	f7fe fd59 	bl	1388 <config_pin>
    28d6:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    28d8:	4a10      	ldr	r2, [pc, #64]	; (291c <spi_config_port+0xc2>)
    28da:	6993      	ldr	r3, [r2, #24]
    28dc:	f043 030d 	orr.w	r3, r3, #13
    28e0:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    28e2:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    28e6:	6853      	ldr	r3, [r2, #4]
    28e8:	f043 0301 	orr.w	r3, r3, #1
    28ec:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    28ee:	2203      	movs	r2, #3
    28f0:	210f      	movs	r1, #15
    28f2:	480d      	ldr	r0, [pc, #52]	; (2928 <spi_config_port+0xce>)
    28f4:	f7fe fd48 	bl	1388 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    28f8:	4c0a      	ldr	r4, [pc, #40]	; (2924 <spi_config_port+0xca>)
    28fa:	220b      	movs	r2, #11
    28fc:	2103      	movs	r1, #3
    28fe:	4620      	mov	r0, r4
    2900:	f7fe fd42 	bl	1388 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2904:	2204      	movs	r2, #4
    2906:	4611      	mov	r1, r2
    2908:	4620      	mov	r0, r4
    290a:	f7fe fd3d 	bl	1388 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    290e:	220b      	movs	r2, #11
    2910:	2105      	movs	r1, #5
    2912:	4620      	mov	r0, r4
    2914:	f7fe fd38 	bl	1388 <config_pin>
    2918:	bd10      	pop	{r4, pc}
    291a:	bf00      	nop
    291c:	40021000 	.word	0x40021000
    2920:	40013000 	.word	0x40013000
    2924:	40010c00 	.word	0x40010c00
    2928:	40010800 	.word	0x40010800

0000292c <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    292c:	b570      	push	{r4, r5, r6, lr}
    292e:	4604      	mov	r4, r0
    2930:	460d      	mov	r5, r1
    2932:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2934:	4619      	mov	r1, r3
    2936:	f7ff ff90 	bl	285a <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    293a:	4b0c      	ldr	r3, [pc, #48]	; (296c <spi_init+0x40>)
    293c:	429c      	cmp	r4, r3
    293e:	d00e      	beq.n	295e <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2940:	4a0b      	ldr	r2, [pc, #44]	; (2970 <spi_init+0x44>)
    2942:	69d3      	ldr	r3, [r2, #28]
    2944:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2948:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    294a:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    294c:	4629      	mov	r1, r5
    294e:	4620      	mov	r0, r4
    2950:	f7ff ff7a 	bl	2848 <spi_baudrate>
	_spi_enable(channel);
    2954:	6823      	ldr	r3, [r4, #0]
    2956:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    295a:	6023      	str	r3, [r4, #0]
    295c:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    295e:	4a04      	ldr	r2, [pc, #16]	; (2970 <spi_init+0x44>)
    2960:	6993      	ldr	r3, [r2, #24]
    2962:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2966:	6193      	str	r3, [r2, #24]
    2968:	e7ef      	b.n	294a <spi_init+0x1e>
    296a:	bf00      	nop
    296c:	40013000 	.word	0x40013000
    2970:	40021000 	.word	0x40021000

00002974 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2974:	6883      	ldr	r3, [r0, #8]
    2976:	f013 0f02 	tst.w	r3, #2
    297a:	d0fb      	beq.n	2974 <spi_send>
	channel->DR=b;
    297c:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    297e:	6883      	ldr	r3, [r0, #8]
    2980:	f013 0f01 	tst.w	r3, #1
    2984:	d0fb      	beq.n	297e <spi_send+0xa>
	return (uint8_t)channel->DR;
    2986:	68c0      	ldr	r0, [r0, #12]
}
    2988:	b2c0      	uxtb	r0, r0
    298a:	4770      	bx	lr

0000298c <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    298c:	6883      	ldr	r3, [r0, #8]
    298e:	f013 0f02 	tst.w	r3, #2
    2992:	d0fb      	beq.n	298c <spi_receive>
	channel->DR=255;
    2994:	23ff      	movs	r3, #255	; 0xff
    2996:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2998:	6883      	ldr	r3, [r0, #8]
    299a:	f013 0f01 	tst.w	r3, #1
    299e:	d0fb      	beq.n	2998 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    29a0:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    29a2:	b2c0      	uxtb	r0, r0
    29a4:	4770      	bx	lr

000029a6 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    29a6:	b14a      	cbz	r2, 29bc <spi_send_block+0x16>
    29a8:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    29aa:	f811 3b01 	ldrb.w	r3, [r1], #1
    29ae:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    29b0:	6883      	ldr	r3, [r0, #8]
    29b2:	f013 0f02 	tst.w	r3, #2
    29b6:	d0fb      	beq.n	29b0 <spi_send_block+0xa>
	while (count){
    29b8:	428a      	cmp	r2, r1
    29ba:	d1f6      	bne.n	29aa <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    29bc:	6883      	ldr	r3, [r0, #8]
    29be:	f013 0f80 	tst.w	r3, #128	; 0x80
    29c2:	d1fb      	bne.n	29bc <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    29c4:	68c3      	ldr	r3, [r0, #12]
    29c6:	4770      	bx	lr

000029c8 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    29c8:	b16a      	cbz	r2, 29e6 <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    29ca:	b410      	push	{r4}
    29cc:	188a      	adds	r2, r1, r2
		channel->DR=0;
    29ce:	2400      	movs	r4, #0
    29d0:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    29d2:	6883      	ldr	r3, [r0, #8]
    29d4:	f013 0f01 	tst.w	r3, #1
    29d8:	d0fb      	beq.n	29d2 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    29da:	68c3      	ldr	r3, [r0, #12]
    29dc:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    29e0:	428a      	cmp	r2, r1
    29e2:	d1f5      	bne.n	29d0 <spi_receive_block+0x8>
		count--;
	}
}
    29e4:	bc10      	pop	{r4}
    29e6:	4770      	bx	lr

000029e8 <reset_mcu>:
	_reset_mcu();
    29e8:	4a01      	ldr	r2, [pc, #4]	; (29f0 <reset_mcu+0x8>)
    29ea:	4b02      	ldr	r3, [pc, #8]	; (29f4 <reset_mcu+0xc>)
    29ec:	601a      	str	r2, [r3, #0]
    29ee:	bf00      	nop
    29f0:	05fa0004 	.word	0x05fa0004
    29f4:	e000ed0c 	.word	0xe000ed0c

000029f8 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    29f8:	b508      	push	{r3, lr}
    29fa:	460c      	mov	r4, r1
	print(msg);
    29fc:	f000 f94c 	bl	2c98 <print>
	print("\nat address ");
    2a00:	4813      	ldr	r0, [pc, #76]	; (2a50 <print_fault+0x58>)
    2a02:	f000 f949 	bl	2c98 <print>
	if (adr) {
    2a06:	b9ec      	cbnz	r4, 2a44 <print_fault+0x4c>
	put_char(CR);
    2a08:	200d      	movs	r0, #13
    2a0a:	f000 f8ad 	bl	2b68 <put_char>
	print("\nUFSR=");
    2a0e:	4811      	ldr	r0, [pc, #68]	; (2a54 <print_fault+0x5c>)
    2a10:	f000 f942 	bl	2c98 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2a14:	4c10      	ldr	r4, [pc, #64]	; (2a58 <print_fault+0x60>)
    2a16:	6820      	ldr	r0, [r4, #0]
    2a18:	2110      	movs	r1, #16
    2a1a:	40c8      	lsrs	r0, r1
    2a1c:	f000 f957 	bl	2cce <print_int>
	print("\nBFSR=");
    2a20:	480e      	ldr	r0, [pc, #56]	; (2a5c <print_fault+0x64>)
    2a22:	f000 f939 	bl	2c98 <print>
	print_int(CFSR->fsr.busFault,16);
    2a26:	6820      	ldr	r0, [r4, #0]
    2a28:	2110      	movs	r1, #16
    2a2a:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2a2e:	f000 f94e 	bl	2cce <print_int>
	print("\nMMFSR=");
    2a32:	480b      	ldr	r0, [pc, #44]	; (2a60 <print_fault+0x68>)
    2a34:	f000 f930 	bl	2c98 <print>
	print_int(CFSR->fsr.mmFault,16);
    2a38:	6820      	ldr	r0, [r4, #0]
    2a3a:	2110      	movs	r1, #16
    2a3c:	b2c0      	uxtb	r0, r0
    2a3e:	f000 f946 	bl	2cce <print_int>
    2a42:	e7fe      	b.n	2a42 <print_fault+0x4a>
		print_int(adr,16);
    2a44:	2110      	movs	r1, #16
    2a46:	4620      	mov	r0, r4
    2a48:	f000 f941 	bl	2cce <print_int>
    2a4c:	e7dc      	b.n	2a08 <print_fault+0x10>
    2a4e:	bf00      	nop
    2a50:	00003c5c 	.word	0x00003c5c
    2a54:	00003c6c 	.word	0x00003c6c
    2a58:	e000ed28 	.word	0xe000ed28
    2a5c:	00003c74 	.word	0x00003c74
    2a60:	00003c7c 	.word	0x00003c7c

00002a64 <draw_char>:
		break;	
	}//swtich

}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2a64:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2a68:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2a6a:	18cb      	adds	r3, r1, r3
    2a6c:	9301      	str	r3, [sp, #4]
    2a6e:	4299      	cmp	r1, r3
    2a70:	da20      	bge.n	2ab4 <draw_char+0x50>
    2a72:	4683      	mov	fp, r0
    2a74:	460e      	mov	r6, r1
    2a76:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2a78:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2a7c:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2a7e:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2abc <draw_char+0x58>
		byte=*glyph++;
    2a82:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2a86:	45bb      	cmp	fp, r7
    2a88:	da10      	bge.n	2aac <draw_char+0x48>
    2a8a:	465c      	mov	r4, fp
    2a8c:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2a8e:	ea18 0f05 	tst.w	r8, r5
    2a92:	bf14      	ite	ne
    2a94:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2a98:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2a9c:	4631      	mov	r1, r6
    2a9e:	4620      	mov	r0, r4
    2aa0:	f7fe fcfe 	bl	14a0 <gfx_plot>
			mask>>=1;
    2aa4:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2aa6:	3401      	adds	r4, #1
    2aa8:	42bc      	cmp	r4, r7
    2aaa:	d1f0      	bne.n	2a8e <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2aac:	3601      	adds	r6, #1
    2aae:	9b01      	ldr	r3, [sp, #4]
    2ab0:	429e      	cmp	r6, r3
    2ab2:	d1e6      	bne.n	2a82 <draw_char+0x1e>
		}
	}
}
    2ab4:	b003      	add	sp, #12
    2ab6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2aba:	bf00      	nop
    2abc:	200000ec 	.word	0x200000ec

00002ac0 <font_color>:
	text_colors[FG]=color&0xf;
    2ac0:	f000 000f 	and.w	r0, r0, #15
    2ac4:	4b01      	ldr	r3, [pc, #4]	; (2acc <font_color+0xc>)
    2ac6:	7058      	strb	r0, [r3, #1]
    2ac8:	4770      	bx	lr
    2aca:	bf00      	nop
    2acc:	200000ec 	.word	0x200000ec

00002ad0 <bg_color>:
	text_colors[BG]=color&0xf;
    2ad0:	f000 000f 	and.w	r0, r0, #15
    2ad4:	4b01      	ldr	r3, [pc, #4]	; (2adc <bg_color+0xc>)
    2ad6:	7018      	strb	r0, [r3, #0]
    2ad8:	4770      	bx	lr
    2ada:	bf00      	nop
    2adc:	200000ec 	.word	0x200000ec

00002ae0 <select_font>:
	font=font_id;
    2ae0:	4b01      	ldr	r3, [pc, #4]	; (2ae8 <select_font+0x8>)
    2ae2:	7098      	strb	r0, [r3, #2]
    2ae4:	4770      	bx	lr
    2ae6:	bf00      	nop
    2ae8:	200000ec 	.word	0x200000ec

00002aec <new_line>:
void new_line(){
    2aec:	b508      	push	{r3, lr}
	xpos=0;
    2aee:	2200      	movs	r2, #0
    2af0:	4b1b      	ldr	r3, [pc, #108]	; (2b60 <new_line+0x74>)
    2af2:	701a      	strb	r2, [r3, #0]
	vmode_params_t *vparams=get_video_params();	
    2af4:	f000 fc02 	bl	32fc <get_video_params>
	switch (font){
    2af8:	4b1a      	ldr	r3, [pc, #104]	; (2b64 <new_line+0x78>)
    2afa:	789b      	ldrb	r3, [r3, #2]
    2afc:	2b01      	cmp	r3, #1
    2afe:	d011      	beq.n	2b24 <new_line+0x38>
    2b00:	b113      	cbz	r3, 2b08 <new_line+0x1c>
    2b02:	2b02      	cmp	r3, #2
    2b04:	d01d      	beq.n	2b42 <new_line+0x56>
    2b06:	bd08      	pop	{r3, pc}
		if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2b08:	4b15      	ldr	r3, [pc, #84]	; (2b60 <new_line+0x74>)
    2b0a:	785b      	ldrb	r3, [r3, #1]
    2b0c:	1d99      	adds	r1, r3, #6
    2b0e:	89c2      	ldrh	r2, [r0, #14]
    2b10:	3a05      	subs	r2, #5
    2b12:	4291      	cmp	r1, r2
    2b14:	dc02      	bgt.n	2b1c <new_line+0x30>
			ypos+=SHEX_HEIGHT;
    2b16:	4a12      	ldr	r2, [pc, #72]	; (2b60 <new_line+0x74>)
    2b18:	7051      	strb	r1, [r2, #1]
    2b1a:	bd08      	pop	{r3, pc}
			gfx_scroll_up(SHEX_HEIGHT);
    2b1c:	2006      	movs	r0, #6
    2b1e:	f7fe fd05 	bl	152c <gfx_scroll_up>
    2b22:	bd08      	pop	{r3, pc}
		if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2b24:	4b0e      	ldr	r3, [pc, #56]	; (2b60 <new_line+0x74>)
    2b26:	785b      	ldrb	r3, [r3, #1]
    2b28:	f103 010a 	add.w	r1, r3, #10
    2b2c:	89c2      	ldrh	r2, [r0, #14]
    2b2e:	3a09      	subs	r2, #9
    2b30:	4291      	cmp	r1, r2
    2b32:	dc02      	bgt.n	2b3a <new_line+0x4e>
			ypos+=LHEX_HEIGHT;
    2b34:	4a0a      	ldr	r2, [pc, #40]	; (2b60 <new_line+0x74>)
    2b36:	7051      	strb	r1, [r2, #1]
    2b38:	bd08      	pop	{r3, pc}
			gfx_scroll_up(LHEX_HEIGHT);
    2b3a:	200a      	movs	r0, #10
    2b3c:	f7fe fcf6 	bl	152c <gfx_scroll_up>
    2b40:	bd08      	pop	{r3, pc}
		if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2b42:	4b07      	ldr	r3, [pc, #28]	; (2b60 <new_line+0x74>)
    2b44:	785a      	ldrb	r2, [r3, #1]
    2b46:	f102 0108 	add.w	r1, r2, #8
    2b4a:	89c3      	ldrh	r3, [r0, #14]
    2b4c:	3b07      	subs	r3, #7
    2b4e:	4299      	cmp	r1, r3
    2b50:	dc02      	bgt.n	2b58 <new_line+0x6c>
			ypos+=CHAR_HEIGHT;
    2b52:	4b03      	ldr	r3, [pc, #12]	; (2b60 <new_line+0x74>)
    2b54:	7059      	strb	r1, [r3, #1]
    2b56:	bd08      	pop	{r3, pc}
			gfx_scroll_up(CHAR_HEIGHT);
    2b58:	2008      	movs	r0, #8
    2b5a:	f7fe fce7 	bl	152c <gfx_scroll_up>
    2b5e:	bd08      	pop	{r3, pc}
    2b60:	20000595 	.word	0x20000595
    2b64:	200000ec 	.word	0x200000ec

00002b68 <put_char>:

void put_char(uint8_t c){
    2b68:	b530      	push	{r4, r5, lr}
    2b6a:	b083      	sub	sp, #12
	switch(font){
    2b6c:	4b2b      	ldr	r3, [pc, #172]	; (2c1c <put_char+0xb4>)
    2b6e:	789b      	ldrb	r3, [r3, #2]
    2b70:	2b01      	cmp	r3, #1
    2b72:	d01d      	beq.n	2bb0 <put_char+0x48>
    2b74:	b11b      	cbz	r3, 2b7e <put_char+0x16>
    2b76:	2b02      	cmp	r3, #2
    2b78:	d033      	beq.n	2be2 <put_char+0x7a>
				new_line();
			}
		}
		break;		
	}
}
    2b7a:	b003      	add	sp, #12
    2b7c:	bd30      	pop	{r4, r5, pc}
		if (c<16){
    2b7e:	280f      	cmp	r0, #15
    2b80:	d8fb      	bhi.n	2b7a <put_char+0x12>
			draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2b82:	4c27      	ldr	r4, [pc, #156]	; (2c20 <put_char+0xb8>)
    2b84:	7861      	ldrb	r1, [r4, #1]
    2b86:	7825      	ldrb	r5, [r4, #0]
    2b88:	eb00 0340 	add.w	r3, r0, r0, lsl #1
    2b8c:	4a25      	ldr	r2, [pc, #148]	; (2c24 <put_char+0xbc>)
    2b8e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    2b92:	9300      	str	r3, [sp, #0]
    2b94:	2306      	movs	r3, #6
    2b96:	2204      	movs	r2, #4
    2b98:	4628      	mov	r0, r5
    2b9a:	f7ff ff63 	bl	2a64 <draw_char>
			xpos+=SHEX_WIDTH;
    2b9e:	7823      	ldrb	r3, [r4, #0]
    2ba0:	3304      	adds	r3, #4
    2ba2:	b2db      	uxtb	r3, r3
    2ba4:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-SHEX_WIDTH+1)){
    2ba6:	2bb1      	cmp	r3, #177	; 0xb1
    2ba8:	d9e7      	bls.n	2b7a <put_char+0x12>
				new_line();
    2baa:	f7ff ff9f 	bl	2aec <new_line>
    2bae:	e7e4      	b.n	2b7a <put_char+0x12>
		if (c<16){
    2bb0:	280f      	cmp	r0, #15
    2bb2:	d8e2      	bhi.n	2b7a <put_char+0x12>
			draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2bb4:	4c1a      	ldr	r4, [pc, #104]	; (2c20 <put_char+0xb8>)
    2bb6:	7861      	ldrb	r1, [r4, #1]
    2bb8:	7825      	ldrb	r5, [r4, #0]
    2bba:	eb00 0380 	add.w	r3, r0, r0, lsl #2
    2bbe:	4a1a      	ldr	r2, [pc, #104]	; (2c28 <put_char+0xc0>)
    2bc0:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    2bc4:	9300      	str	r3, [sp, #0]
    2bc6:	230a      	movs	r3, #10
    2bc8:	2208      	movs	r2, #8
    2bca:	4628      	mov	r0, r5
    2bcc:	f7ff ff4a 	bl	2a64 <draw_char>
			xpos+=LHEX_WIDTH;
    2bd0:	7823      	ldrb	r3, [r4, #0]
    2bd2:	3308      	adds	r3, #8
    2bd4:	b2db      	uxtb	r3, r3
    2bd6:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-LHEX_WIDTH+1)){
    2bd8:	2bad      	cmp	r3, #173	; 0xad
    2bda:	d9ce      	bls.n	2b7a <put_char+0x12>
				new_line();
    2bdc:	f7ff ff86 	bl	2aec <new_line>
    2be0:	e7cb      	b.n	2b7a <put_char+0x12>
		if ((c>31) && (c<(FONT_SIZE+32))){
    2be2:	f1a0 0320 	sub.w	r3, r0, #32
    2be6:	b2db      	uxtb	r3, r3
    2be8:	2b64      	cmp	r3, #100	; 0x64
    2bea:	d8c6      	bhi.n	2b7a <put_char+0x12>
			draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2bec:	4c0c      	ldr	r4, [pc, #48]	; (2c20 <put_char+0xb8>)
    2bee:	7861      	ldrb	r1, [r4, #1]
    2bf0:	7825      	ldrb	r5, [r4, #0]
    2bf2:	f1a0 0320 	sub.w	r3, r0, #32
    2bf6:	4a0d      	ldr	r2, [pc, #52]	; (2c2c <put_char+0xc4>)
    2bf8:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
    2bfc:	9300      	str	r3, [sp, #0]
    2bfe:	2308      	movs	r3, #8
    2c00:	2206      	movs	r2, #6
    2c02:	4628      	mov	r0, r5
    2c04:	f7ff ff2e 	bl	2a64 <draw_char>
			xpos+=CHAR_WIDTH;
    2c08:	7823      	ldrb	r3, [r4, #0]
    2c0a:	3306      	adds	r3, #6
    2c0c:	b2db      	uxtb	r3, r3
    2c0e:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-CHAR_WIDTH+1)){
    2c10:	2baf      	cmp	r3, #175	; 0xaf
    2c12:	d9b2      	bls.n	2b7a <put_char+0x12>
				new_line();
    2c14:	f7ff ff6a 	bl	2aec <new_line>
}
    2c18:	e7af      	b.n	2b7a <put_char+0x12>
    2c1a:	bf00      	nop
    2c1c:	200000ec 	.word	0x200000ec
    2c20:	20000595 	.word	0x20000595
    2c24:	000039bc 	.word	0x000039bc
    2c28:	0000391c 	.word	0x0000391c
    2c2c:	000035f4 	.word	0x000035f4

00002c30 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2c30:	4b01      	ldr	r3, [pc, #4]	; (2c38 <set_cursor+0x8>)
    2c32:	7018      	strb	r0, [r3, #0]
	ypos=y;
    2c34:	7059      	strb	r1, [r3, #1]
    2c36:	4770      	bx	lr
    2c38:	20000595 	.word	0x20000595

00002c3c <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2c3c:	4b03      	ldr	r3, [pc, #12]	; (2c4c <get_cursor+0x10>)
    2c3e:	781a      	ldrb	r2, [r3, #0]
    2c40:	7858      	ldrb	r0, [r3, #1]
    2c42:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2c46:	b280      	uxth	r0, r0
    2c48:	4770      	bx	lr
    2c4a:	bf00      	nop
    2c4c:	20000595 	.word	0x20000595

00002c50 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2c50:	4b0f      	ldr	r3, [pc, #60]	; (2c90 <cursor_left+0x40>)
    2c52:	789b      	ldrb	r3, [r3, #2]
    2c54:	2b01      	cmp	r3, #1
    2c56:	d00b      	beq.n	2c70 <cursor_left+0x20>
    2c58:	b113      	cbz	r3, 2c60 <cursor_left+0x10>
    2c5a:	2b02      	cmp	r3, #2
    2c5c:	d010      	beq.n	2c80 <cursor_left+0x30>
    2c5e:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2c60:	4b0c      	ldr	r3, [pc, #48]	; (2c94 <cursor_left+0x44>)
    2c62:	781b      	ldrb	r3, [r3, #0]
    2c64:	2b04      	cmp	r3, #4
    2c66:	d412      	bmi.n	2c8e <cursor_left+0x3e>
    2c68:	3b04      	subs	r3, #4
    2c6a:	4a0a      	ldr	r2, [pc, #40]	; (2c94 <cursor_left+0x44>)
    2c6c:	7013      	strb	r3, [r2, #0]
    2c6e:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2c70:	4b08      	ldr	r3, [pc, #32]	; (2c94 <cursor_left+0x44>)
    2c72:	781b      	ldrb	r3, [r3, #0]
    2c74:	2b08      	cmp	r3, #8
    2c76:	d40a      	bmi.n	2c8e <cursor_left+0x3e>
    2c78:	3b08      	subs	r3, #8
    2c7a:	4a06      	ldr	r2, [pc, #24]	; (2c94 <cursor_left+0x44>)
    2c7c:	7013      	strb	r3, [r2, #0]
    2c7e:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2c80:	4b04      	ldr	r3, [pc, #16]	; (2c94 <cursor_left+0x44>)
    2c82:	781b      	ldrb	r3, [r3, #0]
    2c84:	2b06      	cmp	r3, #6
    2c86:	d402      	bmi.n	2c8e <cursor_left+0x3e>
    2c88:	3b06      	subs	r3, #6
    2c8a:	4a02      	ldr	r2, [pc, #8]	; (2c94 <cursor_left+0x44>)
    2c8c:	7013      	strb	r3, [r2, #0]
    2c8e:	4770      	bx	lr
    2c90:	200000ec 	.word	0x200000ec
    2c94:	20000595 	.word	0x20000595

00002c98 <print>:
void print(const char* str){
    2c98:	b510      	push	{r4, lr}
    2c9a:	4604      	mov	r4, r0
    while ((c=*str++)){
    2c9c:	e001      	b.n	2ca2 <print+0xa>
            new_line();
    2c9e:	f7ff ff25 	bl	2aec <new_line>
    while ((c=*str++)){
    2ca2:	f814 0b01 	ldrb.w	r0, [r4], #1
    2ca6:	b158      	cbz	r0, 2cc0 <print+0x28>
        switch(c){
    2ca8:	280a      	cmp	r0, #10
    2caa:	d0f8      	beq.n	2c9e <print+0x6>
    2cac:	280d      	cmp	r0, #13
    2cae:	d0f6      	beq.n	2c9e <print+0x6>
    2cb0:	2808      	cmp	r0, #8
    2cb2:	d002      	beq.n	2cba <print+0x22>
            put_char(c);
    2cb4:	f7ff ff58 	bl	2b68 <put_char>
    2cb8:	e7f3      	b.n	2ca2 <print+0xa>
            cursor_left();    
    2cba:	f7ff ffc9 	bl	2c50 <cursor_left>
            break;
    2cbe:	e7f0      	b.n	2ca2 <print+0xa>
}
    2cc0:	bd10      	pop	{r4, pc}

00002cc2 <println>:
void println(const char *text){
    2cc2:	b508      	push	{r3, lr}
	print(text);
    2cc4:	f7ff ffe8 	bl	2c98 <print>
	new_line();
    2cc8:	f7ff ff10 	bl	2aec <new_line>
    2ccc:	bd08      	pop	{r3, pc}

00002cce <print_int>:
void print_int(int i,uint8_t base){
    2cce:	b530      	push	{r4, r5, lr}
    2cd0:	b085      	sub	sp, #20
    fmt[15]=0;
    2cd2:	2300      	movs	r3, #0
    2cd4:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2cd8:	2320      	movs	r3, #32
    2cda:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2cde:	1e02      	subs	r2, r0, #0
        i=-i;
    2ce0:	bfba      	itte	lt
    2ce2:	4252      	neglt	r2, r2
        sign=1;
    2ce4:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2ce6:	2500      	movge	r5, #0
    while (idx>1 && i){
    2ce8:	b1aa      	cbz	r2, 2d16 <print_int+0x48>
    2cea:	f10d 040e 	add.w	r4, sp, #14
    2cee:	200e      	movs	r0, #14
        d=i%base;
    2cf0:	fb92 f3f1 	sdiv	r3, r2, r1
    2cf4:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2cf8:	2b09      	cmp	r3, #9
    2cfa:	bfc8      	it	gt
    2cfc:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2cfe:	3801      	subs	r0, #1
    2d00:	3330      	adds	r3, #48	; 0x30
    2d02:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2d06:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2d0a:	2801      	cmp	r0, #1
    2d0c:	d007      	beq.n	2d1e <print_int+0x50>
    2d0e:	2a00      	cmp	r2, #0
    2d10:	d1ee      	bne.n	2cf0 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2d12:	280e      	cmp	r0, #14
    2d14:	d103      	bne.n	2d1e <print_int+0x50>
    2d16:	2330      	movs	r3, #48	; 0x30
    2d18:	f88d 300d 	strb.w	r3, [sp, #13]
    2d1c:	200d      	movs	r0, #13
    if (base==10 && sign){
    2d1e:	290a      	cmp	r1, #10
    2d20:	d006      	beq.n	2d30 <print_int+0x62>
    }else if (base==16){
    2d22:	2910      	cmp	r1, #16
    2d24:	d00d      	beq.n	2d42 <print_int+0x74>
    print(&fmt[idx]);
    2d26:	4468      	add	r0, sp
    2d28:	f7ff ffb6 	bl	2c98 <print>
}
    2d2c:	b005      	add	sp, #20
    2d2e:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2d30:	2d00      	cmp	r5, #0
    2d32:	d0f8      	beq.n	2d26 <print_int+0x58>
        fmt[--idx]='-';
    2d34:	3801      	subs	r0, #1
    2d36:	ab04      	add	r3, sp, #16
    2d38:	4403      	add	r3, r0
    2d3a:	222d      	movs	r2, #45	; 0x2d
    2d3c:	f803 2c10 	strb.w	r2, [r3, #-16]
    2d40:	e7f1      	b.n	2d26 <print_int+0x58>
        fmt[--idx]='$';
    2d42:	3801      	subs	r0, #1
    2d44:	ab04      	add	r3, sp, #16
    2d46:	4403      	add	r3, r0
    2d48:	2224      	movs	r2, #36	; 0x24
    2d4a:	f803 2c10 	strb.w	r2, [r3, #-16]
    2d4e:	e7ea      	b.n	2d26 <print_int+0x58>

00002d50 <text_scroller>:
		break;	
	}
}

void text_scroller(const uint8_t *text, uint8_t speed){
    2d50:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2d54:	4604      	mov	r4, r0
    2d56:	4688      	mov	r8, r1
	uint8_t c,j;

	gfx_cls();
    2d58:	f7fe fbcc 	bl	14f4 <gfx_cls>
	font=font_id;
    2d5c:	2202      	movs	r2, #2
    2d5e:	4b27      	ldr	r3, [pc, #156]	; (2dfc <text_scroller+0xac>)
    2d60:	709a      	strb	r2, [r3, #2]
	select_font(FONT_ASCII);
	c=*text++;
    2d62:	1c65      	adds	r5, r4, #1
    2d64:	7824      	ldrb	r4, [r4, #0]
	while (c){
    2d66:	b374      	cbz	r4, 2dc6 <text_scroller+0x76>
	xpos=x;
    2d68:	4f25      	ldr	r7, [pc, #148]	; (2e00 <text_scroller+0xb0>)
    2d6a:	f04f 0900 	mov.w	r9, #0
	ypos=y;
    2d6e:	2620      	movs	r6, #32
	xpos=x;
    2d70:	f887 9000 	strb.w	r9, [r7]
	ypos=y;
    2d74:	707e      	strb	r6, [r7, #1]
		set_cursor(0,4*CHAR_HEIGHT);
		while (c && c!='\n'){
    2d76:	b16c      	cbz	r4, 2d94 <text_scroller+0x44>
    2d78:	2c0a      	cmp	r4, #10
    2d7a:	d00b      	beq.n	2d94 <text_scroller+0x44>
			put_char(c);
    2d7c:	4620      	mov	r0, r4
    2d7e:	f7ff fef3 	bl	2b68 <put_char>
			c=*text++;
    2d82:	f815 4b01 	ldrb.w	r4, [r5], #1
			if (btn_query_down(KEY_B)) {goto break_out;}
    2d86:	4630      	mov	r0, r6
    2d88:	f7fe f91e 	bl	fc8 <btn_query_down>
    2d8c:	bb70      	cbnz	r0, 2dec <text_scroller+0x9c>
		while (c && c!='\n'){
    2d8e:	b10c      	cbz	r4, 2d94 <text_scroller+0x44>
    2d90:	2c0a      	cmp	r4, #10
    2d92:	d1f3      	bne.n	2d7c <text_scroller+0x2c>
		for (j=0;j<CHAR_HEIGHT;j++){
			game_pause(speed);
			gfx_scroll_up(1);
			if (btn_query_down(KEY_B)) {goto break_out;}
		}
		c=*text++;
    2d94:	f04f 0b08 	mov.w	fp, #8
			game_pause(speed);
    2d98:	fa1f fa88 	uxth.w	sl, r8
			gfx_scroll_up(1);
    2d9c:	2401      	movs	r4, #1
			game_pause(speed);
    2d9e:	4650      	mov	r0, sl
    2da0:	f000 fab6 	bl	3310 <game_pause>
			gfx_scroll_up(1);
    2da4:	4620      	mov	r0, r4
    2da6:	f7fe fbc1 	bl	152c <gfx_scroll_up>
			if (btn_query_down(KEY_B)) {goto break_out;}
    2daa:	4630      	mov	r0, r6
    2dac:	f7fe f90c 	bl	fc8 <btn_query_down>
    2db0:	b9e0      	cbnz	r0, 2dec <text_scroller+0x9c>
    2db2:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
		for (j=0;j<CHAR_HEIGHT;j++){
    2db6:	f013 0bff 	ands.w	fp, r3, #255	; 0xff
    2dba:	d1f0      	bne.n	2d9e <text_scroller+0x4e>
		c=*text++;
    2dbc:	1c6b      	adds	r3, r5, #1
    2dbe:	782c      	ldrb	r4, [r5, #0]
	while (c){
    2dc0:	b10c      	cbz	r4, 2dc6 <text_scroller+0x76>
		c=*text++;
    2dc2:	461d      	mov	r5, r3
    2dc4:	e7d4      	b.n	2d70 <text_scroller+0x20>
    2dc6:	2420      	movs	r4, #32
	}//while
	for (c=0;c<4*CHAR_HEIGHT;c++){
		game_pause(speed);
    2dc8:	fa1f f888 	uxth.w	r8, r8
		gfx_scroll_up(1);
    2dcc:	2601      	movs	r6, #1
		if (btn_query_down(KEY_B)) { break;}
    2dce:	4625      	mov	r5, r4
		game_pause(speed);
    2dd0:	4640      	mov	r0, r8
    2dd2:	f000 fa9d 	bl	3310 <game_pause>
		gfx_scroll_up(1);
    2dd6:	4630      	mov	r0, r6
    2dd8:	f7fe fba8 	bl	152c <gfx_scroll_up>
		if (btn_query_down(KEY_B)) { break;}
    2ddc:	4628      	mov	r0, r5
    2dde:	f7fe f8f3 	bl	fc8 <btn_query_down>
    2de2:	b918      	cbnz	r0, 2dec <text_scroller+0x9c>
    2de4:	1e63      	subs	r3, r4, #1
	for (c=0;c<4*CHAR_HEIGHT;c++){
    2de6:	f013 04ff 	ands.w	r4, r3, #255	; 0xff
    2dea:	d1f1      	bne.n	2dd0 <text_scroller+0x80>
	}//for
break_out:	
	gfx_cls();
    2dec:	f7fe fb82 	bl	14f4 <gfx_cls>
	btn_wait_up(KEY_B); 
    2df0:	2020      	movs	r0, #32
    2df2:	f7fe f909 	bl	1008 <btn_wait_up>
    2df6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2dfa:	bf00      	nop
    2dfc:	200000ec 	.word	0x200000ec
    2e00:	20000595 	.word	0x20000595

00002e04 <prompt_btn>:
}

void prompt_btn(){
    2e04:	b508      	push	{r3, lr}
	print("press button");
    2e06:	4802      	ldr	r0, [pc, #8]	; (2e10 <prompt_btn+0xc>)
    2e08:	f7ff ff46 	bl	2c98 <print>
    2e0c:	bd08      	pop	{r3, pc}
    2e0e:	bf00      	nop
    2e10:	00003cc8 	.word	0x00003cc8

00002e14 <clear_screen>:
}

void clear_screen(){
    2e14:	b508      	push	{r3, lr}
	gfx_cls();
    2e16:	f7fe fb6d 	bl	14f4 <gfx_cls>
	xpos=0;
    2e1a:	4b02      	ldr	r3, [pc, #8]	; (2e24 <clear_screen+0x10>)
    2e1c:	2200      	movs	r2, #0
    2e1e:	701a      	strb	r2, [r3, #0]
	ypos=0;
    2e20:	705a      	strb	r2, [r3, #1]
    2e22:	bd08      	pop	{r3, pc}
    2e24:	20000595 	.word	0x20000595

00002e28 <show_cursor>:
}

// affiche un curseur texte
void show_cursor(int show){
    2e28:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2e2a:	2800      	cmp	r0, #0
    2e2c:	bf14      	ite	ne
    2e2e:	260f      	movne	r6, #15
    2e30:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e32:	4b09      	ldr	r3, [pc, #36]	; (2e58 <show_cursor+0x30>)
    2e34:	781c      	ldrb	r4, [r3, #0]
    2e36:	1da3      	adds	r3, r4, #6
    2e38:	429c      	cmp	r4, r3
    2e3a:	da0b      	bge.n	2e54 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2e3c:	4d06      	ldr	r5, [pc, #24]	; (2e58 <show_cursor+0x30>)
    2e3e:	7869      	ldrb	r1, [r5, #1]
    2e40:	4632      	mov	r2, r6
    2e42:	3107      	adds	r1, #7
    2e44:	4620      	mov	r0, r4
    2e46:	f7fe fb2b 	bl	14a0 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e4a:	3401      	adds	r4, #1
    2e4c:	782b      	ldrb	r3, [r5, #0]
    2e4e:	3306      	adds	r3, #6
    2e50:	42a3      	cmp	r3, r4
    2e52:	dcf4      	bgt.n	2e3e <show_cursor+0x16>
    2e54:	bd70      	pop	{r4, r5, r6, pc}
    2e56:	bf00      	nop
    2e58:	20000595 	.word	0x20000595

00002e5c <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2e5c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2e60:	4c31      	ldr	r4, [pc, #196]	; (2f28 <tvout_init+0xcc>)
    2e62:	4b32      	ldr	r3, [pc, #200]	; (2f2c <tvout_init+0xd0>)
    2e64:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2e66:	4a32      	ldr	r2, [pc, #200]	; (2f30 <tvout_init+0xd4>)
    2e68:	4b32      	ldr	r3, [pc, #200]	; (2f34 <tvout_init+0xd8>)
    2e6a:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2e6c:	220a      	movs	r2, #10
    2e6e:	2108      	movs	r1, #8
    2e70:	4620      	mov	r0, r4
    2e72:	f7fe fa89 	bl	1388 <config_pin>
    PORTA->ODR=0;
    2e76:	2500      	movs	r5, #0
    2e78:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2e7a:	4e2f      	ldr	r6, [pc, #188]	; (2f38 <tvout_init+0xdc>)
    2e7c:	69b3      	ldr	r3, [r6, #24]
    2e7e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2e82:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2e84:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2e88:	f04f 0878 	mov.w	r8, #120	; 0x78
    2e8c:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2e90:	2301      	movs	r3, #1
    2e92:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2e94:	2784      	movs	r7, #132	; 0x84
    2e96:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2e98:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2e9c:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2e9e:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2ea2:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    2ea4:	f240 1365 	movw	r3, #357	; 0x165
    2ea8:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2eaa:	6963      	ldr	r3, [r4, #20]
    2eac:	f043 0301 	orr.w	r3, r3, #1
    2eb0:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2eb2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2eb6:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2eb8:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2eba:	68e3      	ldr	r3, [r4, #12]
    2ebc:	f043 0301 	orr.w	r3, r3, #1
    2ec0:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2ec2:	4629      	mov	r1, r5
    2ec4:	2019      	movs	r0, #25
    2ec6:	f7ff f80f 	bl	1ee8 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2eca:	4629      	mov	r1, r5
    2ecc:	201b      	movs	r0, #27
    2ece:	f7ff f80b 	bl	1ee8 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2ed2:	2019      	movs	r0, #25
    2ed4:	f7fe ffa8 	bl	1e28 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2ed8:	201b      	movs	r0, #27
    2eda:	f7fe ffa5 	bl	1e28 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2ede:	6823      	ldr	r3, [r4, #0]
    2ee0:	f043 0301 	orr.w	r3, r3, #1
    2ee4:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2ee6:	220a      	movs	r2, #10
    2ee8:	4629      	mov	r1, r5
    2eea:	4814      	ldr	r0, [pc, #80]	; (2f3c <tvout_init+0xe0>)
    2eec:	f7fe fa4c 	bl	1388 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2ef0:	69f3      	ldr	r3, [r6, #28]
    2ef2:	f043 0302 	orr.w	r3, r3, #2
    2ef6:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2ef8:	4b11      	ldr	r3, [pc, #68]	; (2f40 <tvout_init+0xe4>)
    2efa:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2efe:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2f00:	2213      	movs	r2, #19
    2f02:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2f04:	220a      	movs	r2, #10
    2f06:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2f08:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2f0a:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2f0e:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2f10:	695a      	ldr	r2, [r3, #20]
    2f12:	f042 0201 	orr.w	r2, r2, #1
    2f16:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2f18:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2f1a:	681a      	ldr	r2, [r3, #0]
    2f1c:	f042 0201 	orr.w	r2, r2, #1
    2f20:	601a      	str	r2, [r3, #0]
    2f22:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2f26:	bf00      	nop
    2f28:	40010800 	.word	0x40010800
    2f2c:	88883333 	.word	0x88883333
    2f30:	84484444 	.word	0x84484444
    2f34:	40010804 	.word	0x40010804
    2f38:	40021000 	.word	0x40021000
    2f3c:	40010c00 	.word	0x40010c00
    2f40:	40000400 	.word	0x40000400

00002f44 <TV_OUT_handler>:
                              "mov r2,%0\n"\
                              "1: subs r2,#1\n\t"\
                              "bne.n 1b\n\t"\
                              ::"r" (dly):"r2")

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2f44:	4668      	mov	r0, sp
    2f46:	f020 0107 	bic.w	r1, r0, #7
    2f4a:	468d      	mov	sp, r1
    2f4c:	b431      	push	{r0, r4, r5}
    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    2f4e:	4a2f      	ldr	r2, [pc, #188]	; (300c <TV_OUT_handler+0xc8>)
    2f50:	6a13      	ldr	r3, [r2, #32]
    2f52:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2f56:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    2f58:	492d      	ldr	r1, [pc, #180]	; (3010 <TV_OUT_handler+0xcc>)
    2f5a:	f240 2209 	movw	r2, #521	; 0x209
    2f5e:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    2f60:	4293      	cmp	r3, r2
    2f62:	d9fc      	bls.n	2f5e <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    2f64:	4a29      	ldr	r2, [pc, #164]	; (300c <TV_OUT_handler+0xc8>)
    2f66:	6a13      	ldr	r3, [r2, #32]
    2f68:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2f6c:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    2f6e:	4b29      	ldr	r3, [pc, #164]	; (3014 <TV_OUT_handler+0xd0>)
    2f70:	881d      	ldrh	r5, [r3, #0]
    2f72:	b2ad      	uxth	r5, r5
    2f74:	4b28      	ldr	r3, [pc, #160]	; (3018 <TV_OUT_handler+0xd4>)
    2f76:	7818      	ldrb	r0, [r3, #0]
    2f78:	785a      	ldrb	r2, [r3, #1]
    2f7a:	fb95 f5f2 	sdiv	r5, r5, r2
    2f7e:	4a27      	ldr	r2, [pc, #156]	; (301c <TV_OUT_handler+0xd8>)
    2f80:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    2f84:	8859      	ldrh	r1, [r3, #2]
    2f86:	4a22      	ldr	r2, [pc, #136]	; (3010 <TV_OUT_handler+0xcc>)
    2f88:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2f8a:	428b      	cmp	r3, r1
    2f8c:	d3fc      	bcc.n	2f88 <TV_OUT_handler+0x44>
    _jitter_cancel();
    2f8e:	4b24      	ldr	r3, [pc, #144]	; (3020 <TV_OUT_handler+0xdc>)
    2f90:	461a      	mov	r2, r3
    2f92:	6812      	ldr	r2, [r2, #0]
    2f94:	f002 0207 	and.w	r2, r2, #7
    2f98:	ea4f 0242 	mov.w	r2, r2, lsl #1
    2f9c:	4497      	add	pc, r2
    2f9e:	bf00      	nop
    2fa0:	bf00      	nop
    2fa2:	bf00      	nop
    2fa4:	bf00      	nop
    2fa6:	bf00      	nop
    2fa8:	bf00      	nop
    2faa:	bf00      	nop
    2fac:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    2fae:	4a17      	ldr	r2, [pc, #92]	; (300c <TV_OUT_handler+0xc8>)
    2fb0:	6a13      	ldr	r3, [r2, #32]
    2fb2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2fb6:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    2fb8:	b1b0      	cbz	r0, 2fe8 <TV_OUT_handler+0xa4>
    2fba:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    2fbc:	4819      	ldr	r0, [pc, #100]	; (3024 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    2fbe:	4916      	ldr	r1, [pc, #88]	; (3018 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    2fc0:	781a      	ldrb	r2, [r3, #0]
    2fc2:	0912      	lsrs	r2, r2, #4
    2fc4:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    2fc6:	790c      	ldrb	r4, [r1, #4]
    2fc8:	4622      	mov	r2, r4
    2fca:	3a01      	subs	r2, #1
    2fcc:	d1fd      	bne.n	2fca <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    2fce:	f813 2b01 	ldrb.w	r2, [r3], #1
    2fd2:	f002 020f 	and.w	r2, r2, #15
    2fd6:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    2fd8:	790c      	ldrb	r4, [r1, #4]
    2fda:	4622      	mov	r2, r4
    2fdc:	3a01      	subs	r2, #1
    2fde:	d1fd      	bne.n	2fdc <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    2fe0:	1b5c      	subs	r4, r3, r5
    2fe2:	780a      	ldrb	r2, [r1, #0]
    2fe4:	4294      	cmp	r4, r2
    2fe6:	d3eb      	bcc.n	2fc0 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    2fe8:	2200      	movs	r2, #0
    2fea:	4b0f      	ldr	r3, [pc, #60]	; (3028 <TV_OUT_handler+0xe4>)
    2fec:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    2fee:	4a07      	ldr	r2, [pc, #28]	; (300c <TV_OUT_handler+0xc8>)
    2ff0:	6a13      	ldr	r3, [r2, #32]
    2ff2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2ff6:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    2ff8:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    2ffc:	6913      	ldr	r3, [r2, #16]
    2ffe:	f023 0304 	bic.w	r3, r3, #4
    3002:	6113      	str	r3, [r2, #16]
}
    3004:	bc31      	pop	{r0, r4, r5}
    3006:	4685      	mov	sp, r0
    3008:	4770      	bx	lr
    300a:	bf00      	nop
    300c:	40000400 	.word	0x40000400
    3010:	40012c00 	.word	0x40012c00
    3014:	20000598 	.word	0x20000598
    3018:	200000f0 	.word	0x200000f0
    301c:	200025d0 	.word	0x200025d0
    3020:	40012c24 	.word	0x40012c24
    3024:	4001080c 	.word	0x4001080c
    3028:	40010800 	.word	0x40010800

0000302c <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    302c:	4668      	mov	r0, sp
    302e:	f020 0107 	bic.w	r1, r0, #7
    3032:	468d      	mov	sp, r1
    3034:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    3036:	4a8e      	ldr	r2, [pc, #568]	; (3270 <TV_SYNC_handler+0x244>)
    3038:	8853      	ldrh	r3, [r2, #2]
    303a:	3301      	adds	r3, #1
    303c:	b29b      	uxth	r3, r3
    303e:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    3040:	498c      	ldr	r1, [pc, #560]	; (3274 <TV_SYNC_handler+0x248>)
    3042:	680b      	ldr	r3, [r1, #0]
    3044:	3301      	adds	r3, #1
    3046:	600b      	str	r3, [r1, #0]
    switch (task){
    3048:	8893      	ldrh	r3, [r2, #4]
    304a:	b29b      	uxth	r3, r3
    304c:	2b09      	cmp	r3, #9
    304e:	f200 8081 	bhi.w	3154 <TV_SYNC_handler+0x128>
    3052:	e8df f013 	tbh	[pc, r3, lsl #1]
    3056:	000a      	.short	0x000a
    3058:	0048002a 	.word	0x0048002a
    305c:	00880069 	.word	0x00880069
    3060:	00a50090 	.word	0x00a50090
    3064:	00d100b4 	.word	0x00d100b4
    3068:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    306a:	4b81      	ldr	r3, [pc, #516]	; (3270 <TV_SYNC_handler+0x244>)
    306c:	881b      	ldrh	r3, [r3, #0]
    306e:	b29b      	uxth	r3, r3
    3070:	b17b      	cbz	r3, 3092 <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    3072:	4a7f      	ldr	r2, [pc, #508]	; (3270 <TV_SYNC_handler+0x244>)
    3074:	8813      	ldrh	r3, [r2, #0]
    3076:	3301      	adds	r3, #1
    3078:	b29b      	uxth	r3, r3
    307a:	8013      	strh	r3, [r2, #0]
    307c:	8813      	ldrh	r3, [r2, #0]
    307e:	b29b      	uxth	r3, r3
    3080:	2b06      	cmp	r3, #6
    3082:	d167      	bne.n	3154 <TV_SYNC_handler+0x128>
    3084:	2300      	movs	r3, #0
    3086:	8013      	strh	r3, [r2, #0]
    3088:	8893      	ldrh	r3, [r2, #4]
    308a:	3301      	adds	r3, #1
    308c:	b29b      	uxth	r3, r3
    308e:	8093      	strh	r3, [r2, #4]
    3090:	e060      	b.n	3154 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    3092:	4b79      	ldr	r3, [pc, #484]	; (3278 <TV_SYNC_handler+0x24c>)
    3094:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3098:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    309a:	22a4      	movs	r2, #164	; 0xa4
    309c:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    309e:	4a74      	ldr	r2, [pc, #464]	; (3270 <TV_SYNC_handler+0x244>)
    30a0:	8813      	ldrh	r3, [r2, #0]
    30a2:	3301      	adds	r3, #1
    30a4:	b29b      	uxth	r3, r3
    30a6:	8013      	strh	r3, [r2, #0]
    30a8:	e054      	b.n	3154 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    30aa:	4b71      	ldr	r3, [pc, #452]	; (3270 <TV_SYNC_handler+0x244>)
    30ac:	881b      	ldrh	r3, [r3, #0]
    30ae:	b29b      	uxth	r3, r3
    30b0:	b17b      	cbz	r3, 30d2 <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    30b2:	4a6f      	ldr	r2, [pc, #444]	; (3270 <TV_SYNC_handler+0x244>)
    30b4:	8813      	ldrh	r3, [r2, #0]
    30b6:	3301      	adds	r3, #1
    30b8:	b29b      	uxth	r3, r3
    30ba:	8013      	strh	r3, [r2, #0]
    30bc:	8813      	ldrh	r3, [r2, #0]
    30be:	b29b      	uxth	r3, r3
    30c0:	2b06      	cmp	r3, #6
    30c2:	d147      	bne.n	3154 <TV_SYNC_handler+0x128>
    30c4:	2300      	movs	r3, #0
    30c6:	8013      	strh	r3, [r2, #0]
    30c8:	8893      	ldrh	r3, [r2, #4]
    30ca:	3301      	adds	r3, #1
    30cc:	b29b      	uxth	r3, r3
    30ce:	8093      	strh	r3, [r2, #4]
    30d0:	e040      	b.n	3154 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    30d2:	f240 7294 	movw	r2, #1940	; 0x794
    30d6:	4b68      	ldr	r3, [pc, #416]	; (3278 <TV_SYNC_handler+0x24c>)
    30d8:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    30da:	4a65      	ldr	r2, [pc, #404]	; (3270 <TV_SYNC_handler+0x244>)
    30dc:	8813      	ldrh	r3, [r2, #0]
    30de:	3301      	adds	r3, #1
    30e0:	b29b      	uxth	r3, r3
    30e2:	8013      	strh	r3, [r2, #0]
    30e4:	e036      	b.n	3154 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    30e6:	4b62      	ldr	r3, [pc, #392]	; (3270 <TV_SYNC_handler+0x244>)
    30e8:	881b      	ldrh	r3, [r3, #0]
    30ea:	b29b      	uxth	r3, r3
    30ec:	b153      	cbz	r3, 3104 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    30ee:	4b60      	ldr	r3, [pc, #384]	; (3270 <TV_SYNC_handler+0x244>)
    30f0:	881b      	ldrh	r3, [r3, #0]
    30f2:	b29b      	uxth	r3, r3
    30f4:	2b06      	cmp	r3, #6
    30f6:	d00e      	beq.n	3116 <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    30f8:	4a5d      	ldr	r2, [pc, #372]	; (3270 <TV_SYNC_handler+0x244>)
    30fa:	8813      	ldrh	r3, [r2, #0]
    30fc:	3301      	adds	r3, #1
    30fe:	b29b      	uxth	r3, r3
    3100:	8013      	strh	r3, [r2, #0]
            break;
    3102:	e027      	b.n	3154 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    3104:	22a4      	movs	r2, #164	; 0xa4
    3106:	4b5c      	ldr	r3, [pc, #368]	; (3278 <TV_SYNC_handler+0x24c>)
    3108:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    310a:	4a59      	ldr	r2, [pc, #356]	; (3270 <TV_SYNC_handler+0x244>)
    310c:	8813      	ldrh	r3, [r2, #0]
    310e:	3301      	adds	r3, #1
    3110:	b29b      	uxth	r3, r3
    3112:	8013      	strh	r3, [r2, #0]
            break;
    3114:	e01e      	b.n	3154 <TV_SYNC_handler+0x128>
            task++;
    3116:	4a56      	ldr	r2, [pc, #344]	; (3270 <TV_SYNC_handler+0x244>)
    3118:	8893      	ldrh	r3, [r2, #4]
    311a:	3301      	adds	r3, #1
    311c:	b29b      	uxth	r3, r3
    311e:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    3120:	88d3      	ldrh	r3, [r2, #6]
    3122:	f013 0f01 	tst.w	r3, #1
    3126:	d015      	beq.n	3154 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    3128:	4b53      	ldr	r3, [pc, #332]	; (3278 <TV_SYNC_handler+0x24c>)
    312a:	f241 12c5 	movw	r2, #4549	; 0x11c5
    312e:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    3130:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3134:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    3136:	4a4e      	ldr	r2, [pc, #312]	; (3270 <TV_SYNC_handler+0x244>)
    3138:	88d3      	ldrh	r3, [r2, #6]
    313a:	f023 0302 	bic.w	r3, r3, #2
    313e:	041b      	lsls	r3, r3, #16
    3140:	0c1b      	lsrs	r3, r3, #16
    3142:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    3144:	8853      	ldrh	r3, [r2, #2]
    3146:	f3c3 038d 	ubfx	r3, r3, #2, #14
    314a:	8053      	strh	r3, [r2, #2]
        task++;
    314c:	8893      	ldrh	r3, [r2, #4]
    314e:	3301      	adds	r3, #1
    3150:	b29b      	uxth	r3, r3
    3152:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    3154:	4a48      	ldr	r2, [pc, #288]	; (3278 <TV_SYNC_handler+0x24c>)
    3156:	6913      	ldr	r3, [r2, #16]
    3158:	f023 0301 	bic.w	r3, r3, #1
    315c:	6113      	str	r3, [r2, #16]
}
    315e:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    3162:	4685      	mov	sp, r0
    3164:	4770      	bx	lr
        read_gamepad();
    3166:	f7fd ff0b 	bl	f80 <read_gamepad>
        task++;
    316a:	4a41      	ldr	r2, [pc, #260]	; (3270 <TV_SYNC_handler+0x244>)
    316c:	8893      	ldrh	r3, [r2, #4]
    316e:	3301      	adds	r3, #1
    3170:	b29b      	uxth	r3, r3
    3172:	8093      	strh	r3, [r2, #4]
        break;    
    3174:	e7ee      	b.n	3154 <TV_SYNC_handler+0x128>
        if (sound_timer){
    3176:	4b41      	ldr	r3, [pc, #260]	; (327c <TV_SYNC_handler+0x250>)
    3178:	881b      	ldrh	r3, [r3, #0]
    317a:	b29b      	uxth	r3, r3
    317c:	b13b      	cbz	r3, 318e <TV_SYNC_handler+0x162>
            sound_timer--;
    317e:	4a3f      	ldr	r2, [pc, #252]	; (327c <TV_SYNC_handler+0x250>)
    3180:	8813      	ldrh	r3, [r2, #0]
    3182:	3b01      	subs	r3, #1
    3184:	b29b      	uxth	r3, r3
    3186:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3188:	8813      	ldrh	r3, [r2, #0]
    318a:	b29b      	uxth	r3, r3
    318c:	b12b      	cbz	r3, 319a <TV_SYNC_handler+0x16e>
        task++;
    318e:	4a38      	ldr	r2, [pc, #224]	; (3270 <TV_SYNC_handler+0x244>)
    3190:	8893      	ldrh	r3, [r2, #4]
    3192:	3301      	adds	r3, #1
    3194:	b29b      	uxth	r3, r3
    3196:	8093      	strh	r3, [r2, #4]
        break;    
    3198:	e7dc      	b.n	3154 <TV_SYNC_handler+0x128>
                sound_stop();
    319a:	f7ff faf5 	bl	2788 <sound_stop>
    319e:	e7f6      	b.n	318e <TV_SYNC_handler+0x162>
        if (game_timer){
    31a0:	4b37      	ldr	r3, [pc, #220]	; (3280 <TV_SYNC_handler+0x254>)
    31a2:	881b      	ldrh	r3, [r3, #0]
    31a4:	b29b      	uxth	r3, r3
    31a6:	b123      	cbz	r3, 31b2 <TV_SYNC_handler+0x186>
            game_timer--;
    31a8:	4a35      	ldr	r2, [pc, #212]	; (3280 <TV_SYNC_handler+0x254>)
    31aa:	8813      	ldrh	r3, [r2, #0]
    31ac:	3b01      	subs	r3, #1
    31ae:	b29b      	uxth	r3, r3
    31b0:	8013      	strh	r3, [r2, #0]
        task++;
    31b2:	4a2f      	ldr	r2, [pc, #188]	; (3270 <TV_SYNC_handler+0x244>)
    31b4:	8893      	ldrh	r3, [r2, #4]
    31b6:	3301      	adds	r3, #1
    31b8:	b29b      	uxth	r3, r3
    31ba:	8093      	strh	r3, [r2, #4]
        break;
    31bc:	e7ca      	b.n	3154 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    31be:	4b2c      	ldr	r3, [pc, #176]	; (3270 <TV_SYNC_handler+0x244>)
    31c0:	885b      	ldrh	r3, [r3, #2]
    31c2:	b29b      	uxth	r3, r3
    31c4:	4a2f      	ldr	r2, [pc, #188]	; (3284 <TV_SYNC_handler+0x258>)
    31c6:	88d2      	ldrh	r2, [r2, #6]
    31c8:	429a      	cmp	r2, r3
    31ca:	d1c3      	bne.n	3154 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    31cc:	4b2a      	ldr	r3, [pc, #168]	; (3278 <TV_SYNC_handler+0x24c>)
    31ce:	691a      	ldr	r2, [r3, #16]
    31d0:	f022 0204 	bic.w	r2, r2, #4
    31d4:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    31d6:	68da      	ldr	r2, [r3, #12]
    31d8:	f042 0204 	orr.w	r2, r2, #4
    31dc:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    31de:	4b24      	ldr	r3, [pc, #144]	; (3270 <TV_SYNC_handler+0x244>)
    31e0:	88da      	ldrh	r2, [r3, #6]
    31e2:	b292      	uxth	r2, r2
    31e4:	f042 0204 	orr.w	r2, r2, #4
    31e8:	80da      	strh	r2, [r3, #6]
            task++;
    31ea:	889a      	ldrh	r2, [r3, #4]
    31ec:	3201      	adds	r2, #1
    31ee:	b292      	uxth	r2, r2
    31f0:	809a      	strh	r2, [r3, #4]
            slice=0;
    31f2:	2200      	movs	r2, #0
    31f4:	801a      	strh	r2, [r3, #0]
    31f6:	e7ad      	b.n	3154 <TV_SYNC_handler+0x128>
        slice++;
    31f8:	4a1d      	ldr	r2, [pc, #116]	; (3270 <TV_SYNC_handler+0x244>)
    31fa:	8813      	ldrh	r3, [r2, #0]
    31fc:	3301      	adds	r3, #1
    31fe:	b29b      	uxth	r3, r3
    3200:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    3202:	8853      	ldrh	r3, [r2, #2]
    3204:	b29b      	uxth	r3, r3
    3206:	4a1f      	ldr	r2, [pc, #124]	; (3284 <TV_SYNC_handler+0x258>)
    3208:	8912      	ldrh	r2, [r2, #8]
    320a:	429a      	cmp	r2, r3
    320c:	d1a2      	bne.n	3154 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    320e:	4a1a      	ldr	r2, [pc, #104]	; (3278 <TV_SYNC_handler+0x24c>)
    3210:	68d3      	ldr	r3, [r2, #12]
    3212:	f023 0304 	bic.w	r3, r3, #4
    3216:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    3218:	4a15      	ldr	r2, [pc, #84]	; (3270 <TV_SYNC_handler+0x244>)
    321a:	88d3      	ldrh	r3, [r2, #6]
    321c:	f023 0304 	bic.w	r3, r3, #4
    3220:	041b      	lsls	r3, r3, #16
    3222:	0c1b      	lsrs	r3, r3, #16
    3224:	80d3      	strh	r3, [r2, #6]
            task++;
    3226:	8893      	ldrh	r3, [r2, #4]
    3228:	3301      	adds	r3, #1
    322a:	b29b      	uxth	r3, r3
    322c:	8093      	strh	r3, [r2, #4]
    322e:	e791      	b.n	3154 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    3230:	4b0f      	ldr	r3, [pc, #60]	; (3270 <TV_SYNC_handler+0x244>)
    3232:	885b      	ldrh	r3, [r3, #2]
    3234:	b29b      	uxth	r3, r3
    3236:	f240 1207 	movw	r2, #263	; 0x107
    323a:	4293      	cmp	r3, r2
    323c:	d18a      	bne.n	3154 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    323e:	4b0c      	ldr	r3, [pc, #48]	; (3270 <TV_SYNC_handler+0x244>)
    3240:	88db      	ldrh	r3, [r3, #6]
    3242:	f013 0f01 	tst.w	r3, #1
    3246:	d003      	beq.n	3250 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    3248:	f640 02e2 	movw	r2, #2274	; 0x8e2
    324c:	4b0a      	ldr	r3, [pc, #40]	; (3278 <TV_SYNC_handler+0x24c>)
    324e:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    3250:	4b07      	ldr	r3, [pc, #28]	; (3270 <TV_SYNC_handler+0x244>)
    3252:	88da      	ldrh	r2, [r3, #6]
    3254:	b292      	uxth	r2, r2
    3256:	f082 0201 	eor.w	r2, r2, #1
    325a:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    325c:	88da      	ldrh	r2, [r3, #6]
    325e:	b292      	uxth	r2, r2
    3260:	f042 0202 	orr.w	r2, r2, #2
    3264:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    3266:	2200      	movs	r2, #0
    3268:	805a      	strh	r2, [r3, #2]
            slice=0;
    326a:	801a      	strh	r2, [r3, #0]
            task=0;
    326c:	809a      	strh	r2, [r3, #4]
    326e:	e771      	b.n	3154 <TV_SYNC_handler+0x128>
    3270:	20000598 	.word	0x20000598
    3274:	20004d34 	.word	0x20004d34
    3278:	40012c00 	.word	0x40012c00
    327c:	20004d38 	.word	0x20004d38
    3280:	20004d30 	.word	0x20004d30
    3284:	200000f0 	.word	0x200000f0

00003288 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3288:	4a02      	ldr	r2, [pc, #8]	; (3294 <frame_sync+0xc>)
    328a:	88d3      	ldrh	r3, [r2, #6]
    328c:	f013 0f02 	tst.w	r3, #2
    3290:	d0fb      	beq.n	328a <frame_sync+0x2>
}
    3292:	4770      	bx	lr
    3294:	20000598 	.word	0x20000598

00003298 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3298:	4a02      	ldr	r2, [pc, #8]	; (32a4 <wait_sync_end+0xc>)
    329a:	88d3      	ldrh	r3, [r2, #6]
    329c:	f013 0f02 	tst.w	r3, #2
    32a0:	d1fb      	bne.n	329a <wait_sync_end+0x2>
}
    32a2:	4770      	bx	lr
    32a4:	20000598 	.word	0x20000598

000032a8 <set_video_mode>:

void set_video_mode(vmode_t mode){
    32a8:	b510      	push	{r4, lr}
    32aa:	4604      	mov	r4, r0
    frame_sync();
    32ac:	f7ff ffec 	bl	3288 <frame_sync>
    video_mode=mode;
    32b0:	4b0e      	ldr	r3, [pc, #56]	; (32ec <set_video_mode+0x44>)
    32b2:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=4;else sprite_bpp=1;
    32b4:	b1ac      	cbz	r4, 32e2 <set_video_mode+0x3a>
    32b6:	2201      	movs	r2, #1
    32b8:	4b0d      	ldr	r3, [pc, #52]	; (32f0 <set_video_mode+0x48>)
    32ba:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    32bc:	4b0d      	ldr	r3, [pc, #52]	; (32f4 <set_video_mode+0x4c>)
    32be:	480e      	ldr	r0, [pc, #56]	; (32f8 <set_video_mode+0x50>)
    32c0:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    32c4:	8842      	ldrh	r2, [r0, #2]
    32c6:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    32c8:	8882      	ldrh	r2, [r0, #4]
    32ca:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    32cc:	88c2      	ldrh	r2, [r0, #6]
    32ce:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    32d0:	7a02      	ldrb	r2, [r0, #8]
    32d2:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    32d4:	7a42      	ldrb	r2, [r0, #9]
    32d6:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    32d8:	7a82      	ldrb	r2, [r0, #10]
    32da:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    32dc:	f7fe f90a 	bl	14f4 <gfx_cls>
    32e0:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=4;else sprite_bpp=1;
    32e2:	2204      	movs	r2, #4
    32e4:	4b02      	ldr	r3, [pc, #8]	; (32f0 <set_video_mode+0x48>)
    32e6:	701a      	strb	r2, [r3, #0]
    32e8:	e7e8      	b.n	32bc <set_video_mode+0x14>
    32ea:	bf00      	nop
    32ec:	20000598 	.word	0x20000598
    32f0:	20000094 	.word	0x20000094
    32f4:	200000f0 	.word	0x200000f0
    32f8:	00003aa4 	.word	0x00003aa4

000032fc <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    32fc:	4b02      	ldr	r3, [pc, #8]	; (3308 <get_video_params+0xc>)
    32fe:	7a18      	ldrb	r0, [r3, #8]
}
    3300:	4b02      	ldr	r3, [pc, #8]	; (330c <get_video_params+0x10>)
    3302:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    3306:	4770      	bx	lr
    3308:	20000598 	.word	0x20000598
    330c:	00003aa4 	.word	0x00003aa4

00003310 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    3310:	4b03      	ldr	r3, [pc, #12]	; (3320 <game_pause+0x10>)
    3312:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    3314:	461a      	mov	r2, r3
    3316:	8813      	ldrh	r3, [r2, #0]
    3318:	b29b      	uxth	r3, r3
    331a:	2b00      	cmp	r3, #0
    331c:	d1fb      	bne.n	3316 <game_pause+0x6>
}
    331e:	4770      	bx	lr
    3320:	20004d30 	.word	0x20004d30

00003324 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    3324:	4b03      	ldr	r3, [pc, #12]	; (3334 <micro_pause+0x10>)
    3326:	681b      	ldr	r3, [r3, #0]
    3328:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    332a:	4a02      	ldr	r2, [pc, #8]	; (3334 <micro_pause+0x10>)
    332c:	6813      	ldr	r3, [r2, #0]
    332e:	4298      	cmp	r0, r3
    3330:	d8fc      	bhi.n	332c <micro_pause+0x8>
}
    3332:	4770      	bx	lr
    3334:	20004d34 	.word	0x20004d34

00003338 <usart_config_port>:
#define _usart_select(n)  USART##n_
#define _usart_sfr_sel(n,s) USART##n_##s 

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    3338:	4b3b      	ldr	r3, [pc, #236]	; (3428 <usart_config_port+0xf0>)
    333a:	4298      	cmp	r0, r3
    333c:	d057      	beq.n	33ee <usart_config_port+0xb6>
    333e:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3342:	4298      	cmp	r0, r3
    3344:	d004      	beq.n	3350 <usart_config_port+0x18>
    3346:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    334a:	4298      	cmp	r0, r3
    334c:	d032      	beq.n	33b4 <usart_config_port+0x7c>
    334e:	4770      	bx	lr
	case (uint32_t)USART1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    3350:	4836      	ldr	r0, [pc, #216]	; (342c <usart_config_port+0xf4>)
    3352:	6983      	ldr	r3, [r0, #24]
    3354:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3358:	f043 0304 	orr.w	r3, r3, #4
    335c:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    335e:	2a01      	cmp	r2, #1
    3360:	d016      	beq.n	3390 <usart_config_port+0x58>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    3362:	4b33      	ldr	r3, [pc, #204]	; (3430 <usart_config_port+0xf8>)
    3364:	4299      	cmp	r1, r3
    3366:	d01c      	beq.n	33a2 <usart_config_port+0x6a>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3368:	4a32      	ldr	r2, [pc, #200]	; (3434 <usart_config_port+0xfc>)
    336a:	6853      	ldr	r3, [r2, #4]
    336c:	f043 0304 	orr.w	r3, r3, #4
    3370:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3372:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    3376:	6993      	ldr	r3, [r2, #24]
    3378:	f043 0308 	orr.w	r3, r3, #8
    337c:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    337e:	680b      	ldr	r3, [r1, #0]
    3380:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3384:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    3386:	680b      	ldr	r3, [r1, #0]
    3388:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    338c:	600b      	str	r3, [r1, #0]
    338e:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    3390:	684b      	ldr	r3, [r1, #4]
    3392:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    3396:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3398:	684b      	ldr	r3, [r1, #4]
    339a:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    339e:	604b      	str	r3, [r1, #4]
    33a0:	e7df      	b.n	3362 <usart_config_port+0x2a>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    33a2:	685a      	ldr	r2, [r3, #4]
    33a4:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    33a8:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    33aa:	685a      	ldr	r2, [r3, #4]
    33ac:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    33b0:	605a      	str	r2, [r3, #4]
    33b2:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    33b4:	4b1d      	ldr	r3, [pc, #116]	; (342c <usart_config_port+0xf4>)
    33b6:	69d8      	ldr	r0, [r3, #28]
    33b8:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    33bc:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    33be:	6998      	ldr	r0, [r3, #24]
    33c0:	f040 0004 	orr.w	r0, r0, #4
    33c4:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    33c6:	2a01      	cmp	r2, #1
    33c8:	d008      	beq.n	33dc <usart_config_port+0xa4>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    33ca:	680b      	ldr	r3, [r1, #0]
    33cc:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    33d0:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    33d2:	680b      	ldr	r3, [r1, #0]
    33d4:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    33d8:	600b      	str	r3, [r1, #0]
    33da:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    33dc:	680b      	ldr	r3, [r1, #0]
    33de:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    33e2:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    33e4:	680b      	ldr	r3, [r1, #0]
    33e6:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    33ea:	600b      	str	r3, [r1, #0]
    33ec:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    33ee:	4b0f      	ldr	r3, [pc, #60]	; (342c <usart_config_port+0xf4>)
    33f0:	69d8      	ldr	r0, [r3, #28]
    33f2:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    33f6:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    33f8:	6998      	ldr	r0, [r3, #24]
    33fa:	f040 0008 	orr.w	r0, r0, #8
    33fe:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    3400:	2a01      	cmp	r2, #1
    3402:	d008      	beq.n	3416 <usart_config_port+0xde>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    3404:	684b      	ldr	r3, [r1, #4]
    3406:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    340a:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    340c:	684b      	ldr	r3, [r1, #4]
    340e:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3412:	604b      	str	r3, [r1, #4]
		}
		break;
	}
}
    3414:	e79b      	b.n	334e <usart_config_port+0x16>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    3416:	684b      	ldr	r3, [r1, #4]
    3418:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    341c:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    341e:	684b      	ldr	r3, [r1, #4]
    3420:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    3424:	604b      	str	r3, [r1, #4]
    3426:	4770      	bx	lr
    3428:	40004800 	.word	0x40004800
    342c:	40021000 	.word	0x40021000
    3430:	40010800 	.word	0x40010800
    3434:	40010000 	.word	0x40010000

00003438 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    3438:	4b04      	ldr	r3, [pc, #16]	; (344c <usart_set_baud+0x14>)
    343a:	4298      	cmp	r0, r3
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
    343c:	bf0c      	ite	eq
    343e:	4b04      	ldreq	r3, [pc, #16]	; (3450 <usart_set_baud+0x18>)
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    3440:	4b04      	ldrne	r3, [pc, #16]	; (3454 <usart_set_baud+0x1c>)
    3442:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channel->BRR=rate;
    3446:	6081      	str	r1, [r0, #8]
    3448:	4770      	bx	lr
    344a:	bf00      	nop
    344c:	40013800 	.word	0x40013800
    3450:	044463f4 	.word	0x044463f4
    3454:	022231fa 	.word	0x022231fa

00003458 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
	channel->CR1&=USART_CR1_DIR_MASK;
    3458:	68c3      	ldr	r3, [r0, #12]
    345a:	f023 030c 	bic.w	r3, r3, #12
    345e:	60c3      	str	r3, [r0, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    3460:	68c3      	ldr	r3, [r0, #12]
    3462:	ea43 0181 	orr.w	r1, r3, r1, lsl #2
    3466:	60c1      	str	r1, [r0, #12]
    3468:	4770      	bx	lr

0000346a <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    346a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    346e:	4604      	mov	r4, r0
    3470:	460f      	mov	r7, r1
    3472:	4615      	mov	r5, r2
    3474:	4698      	mov	r8, r3
    3476:	9e07      	ldr	r6, [sp, #28]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    3478:	4b2e      	ldr	r3, [pc, #184]	; (3534 <usart_open_channel+0xca>)
    347a:	4298      	cmp	r0, r3
    347c:	d03e      	beq.n	34fc <usart_open_channel+0x92>
    347e:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3482:	4298      	cmp	r0, r3
    3484:	d01b      	beq.n	34be <usart_open_channel+0x54>
    3486:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    348a:	4298      	cmp	r0, r3
    348c:	d02a      	beq.n	34e4 <usart_open_channel+0x7a>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    348e:	2e01      	cmp	r6, #1
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3490:	bf04      	itt	eq
    3492:	f44f 7340 	moveq.w	r3, #768	; 0x300
    3496:	6163      	streq	r3, [r4, #20]
	}
	usart_comm_dir(channel,dir);
    3498:	4641      	mov	r1, r8
    349a:	4620      	mov	r0, r4
    349c:	f7ff ffdc 	bl	3458 <usart_comm_dir>
	switch (parity){
    34a0:	2d01      	cmp	r5, #1
    34a2:	d03c      	beq.n	351e <usart_open_channel+0xb4>
    34a4:	b3b5      	cbz	r5, 3514 <usart_open_channel+0xaa>
    34a6:	2d02      	cmp	r5, #2
    34a8:	d03e      	beq.n	3528 <usart_open_channel+0xbe>
		break;
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    34aa:	4639      	mov	r1, r7
    34ac:	4620      	mov	r0, r4
    34ae:	f7ff ffc3 	bl	3438 <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    34b2:	68e3      	ldr	r3, [r4, #12]
    34b4:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    34b8:	60e3      	str	r3, [r4, #12]
    34ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    34be:	9b06      	ldr	r3, [sp, #24]
    34c0:	b95b      	cbnz	r3, 34da <usart_open_channel+0x70>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    34c2:	4632      	mov	r2, r6
    34c4:	491c      	ldr	r1, [pc, #112]	; (3538 <usart_open_channel+0xce>)
    34c6:	f7ff ff37 	bl	3338 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    34ca:	2107      	movs	r1, #7
    34cc:	2025      	movs	r0, #37	; 0x25
    34ce:	f7fe fd0b 	bl	1ee8 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    34d2:	2025      	movs	r0, #37	; 0x25
    34d4:	f7fe fca8 	bl	1e28 <enable_interrupt>
		break;
    34d8:	e7d9      	b.n	348e <usart_open_channel+0x24>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    34da:	4632      	mov	r2, r6
    34dc:	4917      	ldr	r1, [pc, #92]	; (353c <usart_open_channel+0xd2>)
    34de:	f7ff ff2b 	bl	3338 <usart_config_port>
    34e2:	e7f2      	b.n	34ca <usart_open_channel+0x60>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    34e4:	4632      	mov	r2, r6
    34e6:	4914      	ldr	r1, [pc, #80]	; (3538 <usart_open_channel+0xce>)
    34e8:	f7ff ff26 	bl	3338 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    34ec:	2107      	movs	r1, #7
    34ee:	2026      	movs	r0, #38	; 0x26
    34f0:	f7fe fcfa 	bl	1ee8 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    34f4:	2026      	movs	r0, #38	; 0x26
    34f6:	f7fe fc97 	bl	1e28 <enable_interrupt>
		break;
    34fa:	e7c8      	b.n	348e <usart_open_channel+0x24>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    34fc:	4632      	mov	r2, r6
    34fe:	490f      	ldr	r1, [pc, #60]	; (353c <usart_open_channel+0xd2>)
    3500:	f7ff ff1a 	bl	3338 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    3504:	2107      	movs	r1, #7
    3506:	2027      	movs	r0, #39	; 0x27
    3508:	f7fe fcee 	bl	1ee8 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    350c:	2027      	movs	r0, #39	; 0x27
    350e:	f7fe fc8b 	bl	1e28 <enable_interrupt>
		break;
    3512:	e7bc      	b.n	348e <usart_open_channel+0x24>
		channel->CR1|=USART_CR1_RXNEIE;
    3514:	68e3      	ldr	r3, [r4, #12]
    3516:	f043 0320 	orr.w	r3, r3, #32
    351a:	60e3      	str	r3, [r4, #12]
		break;
    351c:	e7c5      	b.n	34aa <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    351e:	68e3      	ldr	r3, [r4, #12]
    3520:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    3524:	60e3      	str	r3, [r4, #12]
		break;
    3526:	e7c0      	b.n	34aa <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    3528:	68e3      	ldr	r3, [r4, #12]
    352a:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    352e:	60e3      	str	r3, [r4, #12]
		break;
    3530:	e7bb      	b.n	34aa <usart_open_channel+0x40>
    3532:	bf00      	nop
    3534:	40004800 	.word	0x40004800
    3538:	40010800 	.word	0x40010800
    353c:	40010c00 	.word	0x40010c00

00003540 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
	return channel->SR&USART_SR_RXNE;
    3540:	6800      	ldr	r0, [r0, #0]
}
    3542:	f000 0020 	and.w	r0, r0, #32
    3546:	4770      	bx	lr

00003548 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
	if (channel->SR&USART_SR_RXNE){
    3548:	6803      	ldr	r3, [r0, #0]
    354a:	f013 0320 	ands.w	r3, r3, #32
		return channel->DR;
    354e:	bf18      	it	ne
    3550:	6843      	ldrne	r3, [r0, #4]
	}else{
		return 0;
	}
		
}
    3552:	b2d8      	uxtb	r0, r3
    3554:	4770      	bx	lr

00003556 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
	unsigned t0=ntsc_ticks+dly;
    3556:	4b09      	ldr	r3, [pc, #36]	; (357c <usart_getc_dly+0x26>)
    3558:	681b      	ldr	r3, [r3, #0]
    355a:	4419      	add	r1, r3
	
	while ((ntsc_ticks<t0) && !(channel->SR&USART_SR_RXNE));
    355c:	4a07      	ldr	r2, [pc, #28]	; (357c <usart_getc_dly+0x26>)
    355e:	6813      	ldr	r3, [r2, #0]
    3560:	4299      	cmp	r1, r3
    3562:	d903      	bls.n	356c <usart_getc_dly+0x16>
    3564:	6803      	ldr	r3, [r0, #0]
    3566:	f013 0f20 	tst.w	r3, #32
    356a:	d0f8      	beq.n	355e <usart_getc_dly+0x8>
	if (ntsc_ticks<t0) return channel->DR; else return 0;
    356c:	4b03      	ldr	r3, [pc, #12]	; (357c <usart_getc_dly+0x26>)
    356e:	681b      	ldr	r3, [r3, #0]
    3570:	4299      	cmp	r1, r3
    3572:	bf8c      	ite	hi
    3574:	6840      	ldrhi	r0, [r0, #4]
    3576:	2000      	movls	r0, #0
}
    3578:	b2c0      	uxtb	r0, r0
    357a:	4770      	bx	lr
    357c:	20004d34 	.word	0x20004d34

00003580 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    3580:	6803      	ldr	r3, [r0, #0]
    3582:	f013 0f80 	tst.w	r3, #128	; 0x80
    3586:	d0fb      	beq.n	3580 <usart_putc>
	channel->DR=c;
    3588:	6041      	str	r1, [r0, #4]
    358a:	4770      	bx	lr

0000358c <usart_cts>:
}


int usart_cts(usart_t* channel){
	int cts;
	switch ((uint32_t)channel){
    358c:	4b0d      	ldr	r3, [pc, #52]	; (35c4 <usart_cts+0x38>)
    358e:	4298      	cmp	r0, r3
    3590:	d013      	beq.n	35ba <usart_cts+0x2e>
    3592:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3596:	4298      	cmp	r0, r3
    3598:	d005      	beq.n	35a6 <usart_cts+0x1a>
    359a:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    359e:	4298      	cmp	r0, r3
    35a0:	d006      	beq.n	35b0 <usart_cts+0x24>
    35a2:	2000      	movs	r0, #0
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    35a4:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    35a6:	4b08      	ldr	r3, [pc, #32]	; (35c8 <usart_cts+0x3c>)
    35a8:	6898      	ldr	r0, [r3, #8]
    35aa:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    35ae:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    35b0:	4b05      	ldr	r3, [pc, #20]	; (35c8 <usart_cts+0x3c>)
    35b2:	6898      	ldr	r0, [r3, #8]
    35b4:	f000 0001 	and.w	r0, r0, #1
			break;
    35b8:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    35ba:	4b04      	ldr	r3, [pc, #16]	; (35cc <usart_cts+0x40>)
    35bc:	6898      	ldr	r0, [r3, #8]
    35be:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    35c2:	4770      	bx	lr
    35c4:	40004800 	.word	0x40004800
    35c8:	40010800 	.word	0x40010800
    35cc:	40010c00 	.word	0x40010c00

000035d0 <usart_print>:

void usart_print(usart_t* channel, const char *str){
    35d0:	b538      	push	{r3, r4, r5, lr}
    35d2:	4605      	mov	r5, r0
    35d4:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    35d6:	7809      	ldrb	r1, [r1, #0]
    35d8:	b131      	cbz	r1, 35e8 <usart_print+0x18>
    35da:	4628      	mov	r0, r5
    35dc:	f7ff ffd0 	bl	3580 <usart_putc>
    35e0:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    35e4:	2900      	cmp	r1, #0
    35e6:	d1f8      	bne.n	35da <usart_print+0xa>
    35e8:	bd38      	pop	{r3, r4, r5, pc}
    35ea:	bf00      	nop
