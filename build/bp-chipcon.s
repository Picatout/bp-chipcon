
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 01 2b 00 00     .P. 1........+..
      10:	01 2b 00 00 01 2b 00 00 01 2b 00 00 01 2b 00 00     .+...+...+...+..
      20:	01 2b 00 00 01 2b 00 00 01 2b 00 00 09 02 00 00     .+...+...+......
      30:	01 2b 00 00 01 2b 00 00 0d 02 00 00 11 02 00 00     .+...+..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 6b 27 00 00     ........!...k'..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 01 2b 00 00 01 2b 00 00 49 02 00 00     E....+...+..I...
      80:	01 2b 00 00 01 2b 00 00 01 2b 00 00 01 2b 00 00     .+...+...+...+..
      90:	01 2b 00 00 01 2b 00 00 01 2b 00 00 4d 02 00 00     .+...+...+..M...
      a0:	01 2b 00 00 89 31 00 00 01 2b 00 00 a1 30 00 00     .+...1...+...0..
      b0:	0d 29 00 00 51 02 00 00 55 02 00 00 01 2b 00 00     .)..Q...U....+..
      c0:	01 2b 00 00 01 2b 00 00 01 2b 00 00 01 2b 00 00     .+...+...+...+..
      d0:	01 2b 00 00 59 02 00 00 5d 02 00 00 61 02 00 00     .+..Y...]...a...
      e0:	01 2b 00 00 01 2b 00 00 01 2b 00 00 01 2b 00 00     .+...+...+...+..
      f0:	01 2b 00 00 01 2b 00 00 01 2b 00 00 01 2b 00 00     .+...+...+...+..
     100:	01 2b 00 00 01 2b 00 00 01 2b 00 00 01 2b 00 00     .+...+...+...+..
     110:	01 2b 00 00 01 2b 00 00 01 2b 00 00 01 2b 00 00     .+...+...+...+..
     120:	01 2b 00 00 01 2b 00 00 01 2b 00 00 01 2b 00 00     .+...+...+...+..

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
     186:	f001 fc93 	bl	1ab0 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e6e 	.word	0x20004e6e
     190:	2000022e 	.word	0x2000022e
     194:	20004e6d 	.word	0x20004e6d
     198:	2000022e 	.word	0x2000022e
     19c:	20000000 	.word	0x20000000
     1a0:	000098bc 	.word	0x000098bc
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
     1da:	f002 fc99 	bl	2b10 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fc96 	bl	2b10 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fc93 	bl	2b10 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fc90 	bl	2b10 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003eb8 	.word	0x00003eb8
     1f8:	00003e94 	.word	0x00003e94
     1fc:	00003eac 	.word	0x00003eac
     200:	00003ec8 	.word	0x00003ec8

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fc7c 	bl	2b00 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fc7a 	bl	2b00 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fc78 	bl	2b00 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fc76 	bl	2b00 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fc74 	bl	2b00 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fc72 	bl	2b00 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fc70 	bl	2b00 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fc6e 	bl	2b00 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fc6c 	bl	2b00 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fc6a 	bl	2b00 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fc68 	bl	2b00 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fc66 	bl	2b00 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fc64 	bl	2b00 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fc62 	bl	2b00 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fc60 	bl	2b00 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fc5e 	bl	2b00 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fc5c 	bl	2b00 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fc5a 	bl	2b00 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fc58 	bl	2b00 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fc56 	bl	2b00 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fc54 	bl	2b00 <reset_mcu>

00000258 <USART1_handler>:
_default_handler(USART1_handler) // 37
     258:	f002 fc52 	bl	2b00 <reset_mcu>

0000025c <USART2_handler>:
_default_handler(USART2_handler) // 38
     25c:	f002 fc50 	bl	2b00 <reset_mcu>

00000260 <USART3_handler>:
_default_handler(USART3_handler) // 39
     260:	f002 fc4e 	bl	2b00 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fc4c 	bl	2b00 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fc4a 	bl	2b00 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fc48 	bl	2b00 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fc46 	bl	2b00 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fc44 	bl	2b00 <reset_mcu>

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
     314:	f002 fc76 	bl	2c04 <new_line>
	select_font(FONT_ASCII);
     318:	2002      	movs	r0, #2
     31a:	f002 fc6d 	bl	2bf8 <select_font>
	print(msg);
     31e:	4620      	mov	r0, r4
     320:	f002 fd46 	bl	2db0 <print>
	print("PC:");
     324:	481a      	ldr	r0, [pc, #104]	; (390 <print_vms+0x80>)
     326:	f002 fd43 	bl	2db0 <print>
	print_hex(vms.pc-2);
     32a:	4d1a      	ldr	r5, [pc, #104]	; (394 <print_vms+0x84>)
     32c:	8828      	ldrh	r0, [r5, #0]
     32e:	2110      	movs	r1, #16
     330:	3802      	subs	r0, #2
     332:	f002 fd58 	bl	2de6 <print_int>
	print_hex(vms.b2);
     336:	2110      	movs	r1, #16
     338:	7de8      	ldrb	r0, [r5, #23]
     33a:	f002 fd54 	bl	2de6 <print_int>
	print_hex(vms.b1);
     33e:	2110      	movs	r1, #16
     340:	7da8      	ldrb	r0, [r5, #22]
     342:	f002 fd50 	bl	2de6 <print_int>
	new_line();
     346:	f002 fc5d 	bl	2c04 <new_line>
	print("I:");
     34a:	4813      	ldr	r0, [pc, #76]	; (398 <print_vms+0x88>)
     34c:	f002 fd30 	bl	2db0 <print>
	print_hex(vms.ix);
     350:	2110      	movs	r1, #16
     352:	8868      	ldrh	r0, [r5, #2]
     354:	f002 fd47 	bl	2de6 <print_int>
	print(" SP:");
     358:	4810      	ldr	r0, [pc, #64]	; (39c <print_vms+0x8c>)
     35a:	f002 fd29 	bl	2db0 <print>
	print_hex(vms.sp);
     35e:	2110      	movs	r1, #16
     360:	7928      	ldrb	r0, [r5, #4]
     362:	f002 fd40 	bl	2de6 <print_int>
	new_line();
     366:	f002 fc4d 	bl	2c04 <new_line>
	print("var[]:");
     36a:	480d      	ldr	r0, [pc, #52]	; (3a0 <print_vms+0x90>)
     36c:	f002 fd20 	bl	2db0 <print>
     370:	1dac      	adds	r4, r5, #6
     372:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     374:	2610      	movs	r6, #16
     376:	4631      	mov	r1, r6
     378:	f814 0b01 	ldrb.w	r0, [r4], #1
     37c:	f002 fd33 	bl	2de6 <print_int>
	for (int i=0;i<16;i++){
     380:	42ac      	cmp	r4, r5
     382:	d1f8      	bne.n	376 <print_vms+0x66>
	}
	new_line();
     384:	f002 fc3e 	bl	2c04 <new_line>
	prompt_btn();
     388:	f002 fdc8 	bl	2f1c <prompt_btn>
     38c:	bd70      	pop	{r4, r5, r6, pc}
     38e:	bf00      	nop
     390:	00003c70 	.word	0x00003c70
     394:	20000230 	.word	0x20000230
     398:	00003c74 	.word	0x00003c74
     39c:	00003c78 	.word	0x00003c78
     3a0:	00003c80 	.word	0x00003c80

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
	uint8_t x,y,n,loop=CHIP_CONTINUE;
	uint16_t code;
	char buffer[24];
	vms.pc=program_address;
     3d4:	4ba6      	ldr	r3, [pc, #664]	; (670 <chip_vm+0x2a4>)
     3d6:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     3d8:	2200      	movs	r2, #0
     3da:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     3dc:	805a      	strh	r2, [r3, #2]
 	while (loop==CHIP_CONTINUE){
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
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
     3e2:	f8df a2a4 	ldr.w	sl, [pc, #676]	; 688 <chip_vm+0x2bc>
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     3e6:	4ba3      	ldr	r3, [pc, #652]	; (674 <chip_vm+0x2a8>)
     3e8:	781b      	ldrb	r3, [r3, #0]
     3ea:	2b01      	cmp	r3, #1
     3ec:	d02a      	beq.n	444 <chip_vm+0x78>
		_get_opcode(vms.pc);
     3ee:	8820      	ldrh	r0, [r4, #0]
     3f0:	4ba1      	ldr	r3, [pc, #644]	; (678 <chip_vm+0x2ac>)
     3f2:	5c1a      	ldrb	r2, [r3, r0]
     3f4:	75a2      	strb	r2, [r4, #22]
     3f6:	4403      	add	r3, r0
     3f8:	785b      	ldrb	r3, [r3, #1]
     3fa:	75e3      	strb	r3, [r4, #23]
		if (debug){
     3fc:	bb55      	cbnz	r5, 454 <chip_vm+0x88>
		vms.pc+=2;
     3fe:	f8b4 c000 	ldrh.w	ip, [r4]
     402:	f10c 0102 	add.w	r1, ip, #2
     406:	b289      	uxth	r1, r1
     408:	8021      	strh	r1, [r4, #0]
		x=rx(vms.b1);
     40a:	7da2      	ldrb	r2, [r4, #22]
     40c:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     410:	7de3      	ldrb	r3, [r4, #23]
     412:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     416:	ea4f 1e12 	mov.w	lr, r2, lsr #4
     41a:	f1be 0f0f 	cmp.w	lr, #15
     41e:	d8e2      	bhi.n	3e6 <chip_vm+0x1a>
     420:	e8df f01e 	tbh	[pc, lr, lsl #1]
     424:	0092003d 	.word	0x0092003d
     428:	00b3009f 	.word	0x00b3009f
     42c:	00c900be 	.word	0x00c900be
     430:	01190115 	.word	0x01190115
     434:	01af0134 	.word	0x01af0134
     438:	0289027c 	.word	0x0289027c
     43c:	02a10299 	.word	0x02a10299
     440:	030202e3 	.word	0x030202e3
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     444:	b305      	cbz	r5, 488 <chip_vm+0xbc>
		_get_opcode(vms.pc);
     446:	8820      	ldrh	r0, [r4, #0]
     448:	4b8b      	ldr	r3, [pc, #556]	; (678 <chip_vm+0x2ac>)
     44a:	5c1a      	ldrb	r2, [r3, r0]
     44c:	75a2      	strb	r2, [r4, #22]
     44e:	4403      	add	r3, r0
     450:	785b      	ldrb	r3, [r3, #1]
     452:	75e3      	strb	r3, [r4, #23]
			debug_print(itoa(vms.pc,buffer,16));
     454:	2210      	movs	r2, #16
     456:	a902      	add	r1, sp, #8
     458:	f000 ffbe 	bl	13d8 <itoa>
     45c:	4f87      	ldr	r7, [pc, #540]	; (67c <chip_vm+0x2b0>)
     45e:	4601      	mov	r1, r0
     460:	4638      	mov	r0, r7
     462:	f003 f963 	bl	372c <usart_print>
			debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     466:	7da0      	ldrb	r0, [r4, #22]
     468:	7de3      	ldrb	r3, [r4, #23]
     46a:	2210      	movs	r2, #16
     46c:	a902      	add	r1, sp, #8
     46e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     472:	f000 ffb1 	bl	13d8 <itoa>
     476:	4601      	mov	r1, r0
     478:	4638      	mov	r0, r7
     47a:	f003 f957 	bl	372c <usart_print>
			debug_print("\n");
     47e:	4980      	ldr	r1, [pc, #512]	; (680 <chip_vm+0x2b4>)
     480:	4638      	mov	r0, r7
     482:	f003 f953 	bl	372c <usart_print>
     486:	e7ba      	b.n	3fe <chip_vm+0x32>
		if ((video_mode==VM_SCHIP) && !debug)  micro_pause(SLOW_DOWN);
     488:	2005      	movs	r0, #5
     48a:	f002 fff9 	bl	3480 <micro_pause>
		_get_opcode(vms.pc);
     48e:	8822      	ldrh	r2, [r4, #0]
     490:	4b79      	ldr	r3, [pc, #484]	; (678 <chip_vm+0x2ac>)
     492:	5c99      	ldrb	r1, [r3, r2]
     494:	75a1      	strb	r1, [r4, #22]
     496:	4413      	add	r3, r2
     498:	785b      	ldrb	r3, [r3, #1]
     49a:	75e3      	strb	r3, [r4, #23]
     49c:	e7af      	b.n	3fe <chip_vm+0x32>
		    if ((vms.b1|vms.b2)==0){
     49e:	431a      	orrs	r2, r3
     4a0:	d0a1      	beq.n	3e6 <chip_vm+0x1a>
     4a2:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     4a6:	2ac0      	cmp	r2, #192	; 0xc0
     4a8:	d026      	beq.n	4f8 <chip_vm+0x12c>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; XO-CHIP, BP-CHIP
     4aa:	2ad0      	cmp	r2, #208	; 0xd0
     4ac:	d029      	beq.n	502 <chip_vm+0x136>
			}else switch(vms.b2){
     4ae:	3be0      	subs	r3, #224	; 0xe0
     4b0:	2b1f      	cmp	r3, #31
     4b2:	d82b      	bhi.n	50c <chip_vm+0x140>
     4b4:	e8df f013 	tbh	[pc, r3, lsl #1]
     4b8:	002a002d 	.word	0x002a002d
     4bc:	002a002a 	.word	0x002a002a
     4c0:	002a002a 	.word	0x002a002a
     4c4:	002a002a 	.word	0x002a002a
     4c8:	002a002a 	.word	0x002a002a
     4cc:	002a002a 	.word	0x002a002a
     4d0:	002a002a 	.word	0x002a002a
     4d4:	002a0030 	.word	0x002a0030
     4d8:	002a002a 	.word	0x002a002a
     4dc:	002a002a 	.word	0x002a002a
     4e0:	002a002a 	.word	0x002a002a
     4e4:	002a002a 	.word	0x002a002a
     4e8:	002a002a 	.word	0x002a002a
     4ec:	00380044 	.word	0x00380044
     4f0:	03f5003c 	.word	0x03f5003c
     4f4:	004003e9 	.word	0x004003e9
				gfx_scroll_down(vms.b2&0xf); 
     4f8:	f003 000f 	and.w	r0, r3, #15
     4fc:	f001 f8aa 	bl	1654 <gfx_scroll_down>
     500:	e771      	b.n	3e6 <chip_vm+0x1a>
				gfx_scroll_up(vms.b2&0xf);					
     502:	f003 000f 	and.w	r0, r3, #15
     506:	f001 f87f 	bl	1608 <gfx_scroll_up>
     50a:	e76c      	b.n	3e6 <chip_vm+0x1a>
					loop=CHIP_BAD_OPCODE;
     50c:	f04f 0802 	mov.w	r8, #2
     510:	e05e      	b.n	5d0 <chip_vm+0x204>
					gfx_cls();
     512:	f001 f865 	bl	15e0 <gfx_cls>
					break;
     516:	e766      	b.n	3e6 <chip_vm+0x1a>
					vms.pc=vms.stack[vms.sp--];
     518:	7923      	ldrb	r3, [r4, #4]
     51a:	1e5a      	subs	r2, r3, #1
     51c:	7122      	strb	r2, [r4, #4]
     51e:	330c      	adds	r3, #12
     520:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     524:	8023      	strh	r3, [r4, #0]
					break;
     526:	e75e      	b.n	3e6 <chip_vm+0x1a>
					gfx_scroll_right(4);
     528:	2004      	movs	r0, #4
     52a:	f001 f8e5 	bl	16f8 <gfx_scroll_right>
					break;
     52e:	e75a      	b.n	3e6 <chip_vm+0x1a>
					gfx_scroll_left(4);
     530:	2004      	movs	r0, #4
     532:	f001 f8b3 	bl	169c <gfx_scroll_left>
					break;
     536:	e756      	b.n	3e6 <chip_vm+0x1a>
					set_video_mode(VM_SCHIP);
     538:	2001      	movs	r0, #1
     53a:	f002 ff63 	bl	3404 <set_video_mode>
					break; 
     53e:	e752      	b.n	3e6 <chip_vm+0x1a>
					set_video_mode(VM_BPCHIP);
     540:	2000      	movs	r0, #0
     542:	f002 ff5f 	bl	3404 <set_video_mode>
					break;
     546:	e74e      	b.n	3e6 <chip_vm+0x1a>
			vms.pc=caddr(vms.b1,vms.b2);
     548:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     54c:	f3c3 030b 	ubfx	r3, r3, #0, #12
     550:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     552:	4a48      	ldr	r2, [pc, #288]	; (674 <chip_vm+0x2a8>)
     554:	7812      	ldrb	r2, [r2, #0]
     556:	2a00      	cmp	r2, #0
     558:	f47f af45 	bne.w	3e6 <chip_vm+0x1a>
				vms.pc<<=1;
     55c:	005b      	lsls	r3, r3, #1
     55e:	8023      	strh	r3, [r4, #0]
     560:	e741      	b.n	3e6 <chip_vm+0x1a>
			vms.stack[++vms.sp]=vms.pc;
     562:	7920      	ldrb	r0, [r4, #4]
     564:	3001      	adds	r0, #1
     566:	b2c0      	uxtb	r0, r0
     568:	7120      	strb	r0, [r4, #4]
     56a:	300c      	adds	r0, #12
     56c:	f824 1010 	strh.w	r1, [r4, r0, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     570:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     574:	f3c3 030b 	ubfx	r3, r3, #0, #12
     578:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     57a:	4a3e      	ldr	r2, [pc, #248]	; (674 <chip_vm+0x2a8>)
     57c:	7812      	ldrb	r2, [r2, #0]
     57e:	2a00      	cmp	r2, #0
     580:	f47f af31 	bne.w	3e6 <chip_vm+0x1a>
				vms.pc<<=1;
     584:	005b      	lsls	r3, r3, #1
     586:	8023      	strh	r3, [r4, #0]
     588:	e72d      	b.n	3e6 <chip_vm+0x1a>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     58a:	44a0      	add	r8, r4
     58c:	f898 2006 	ldrb.w	r2, [r8, #6]
     590:	429a      	cmp	r2, r3
     592:	f47f af28 	bne.w	3e6 <chip_vm+0x1a>
     596:	f10c 0c04 	add.w	ip, ip, #4
     59a:	f8a4 c000 	strh.w	ip, [r4]
     59e:	e722      	b.n	3e6 <chip_vm+0x1a>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     5a0:	44a0      	add	r8, r4
     5a2:	f898 2006 	ldrb.w	r2, [r8, #6]
     5a6:	429a      	cmp	r2, r3
     5a8:	f43f af1d 	beq.w	3e6 <chip_vm+0x1a>
     5ac:	f10c 0c04 	add.w	ip, ip, #4
     5b0:	f8a4 c000 	strh.w	ip, [r4]
     5b4:	e717      	b.n	3e6 <chip_vm+0x1a>
			switch(vms.b2&0xf){
     5b6:	f003 030f 	and.w	r3, r3, #15
     5ba:	2b02      	cmp	r3, #2
     5bc:	d023      	beq.n	606 <chip_vm+0x23a>
     5be:	2b03      	cmp	r3, #3
     5c0:	d033      	beq.n	62a <chip_vm+0x25e>
     5c2:	b193      	cbz	r3, 5ea <chip_vm+0x21e>
     5c4:	f04f 0800 	mov.w	r8, #0
 	while (loop==CHIP_CONTINUE){
     5c8:	f1b8 0f00 	cmp.w	r8, #0
     5cc:	f43f af0b 	beq.w	3e6 <chip_vm+0x1a>
				loop=CHIP_BAD_OPCODE;
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     5d0:	2002      	movs	r0, #2
     5d2:	f002 fb11 	bl	2bf8 <select_font>
	set_keymap(default_kmap);
     5d6:	482b      	ldr	r0, [pc, #172]	; (684 <chip_vm+0x2b8>)
     5d8:	f000 fd1e 	bl	1018 <set_keymap>
	set_video_mode(VM_BPCHIP);
     5dc:	2000      	movs	r0, #0
     5de:	f002 ff11 	bl	3404 <set_video_mode>
	return loop;
}//schipp()
     5e2:	4640      	mov	r0, r8
     5e4:	b008      	add	sp, #32
     5e6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     5ea:	44a0      	add	r8, r4
     5ec:	44a1      	add	r9, r4
     5ee:	f898 2006 	ldrb.w	r2, [r8, #6]
     5f2:	f899 3006 	ldrb.w	r3, [r9, #6]
     5f6:	429a      	cmp	r2, r3
     5f8:	f47f aef5 	bne.w	3e6 <chip_vm+0x1a>
     5fc:	f10c 0c04 	add.w	ip, ip, #4
     600:	f8a4 c000 	strh.w	ip, [r4]
     604:	e6ef      	b.n	3e6 <chip_vm+0x1a>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     606:	4640      	mov	r0, r8
     608:	45c8      	cmp	r8, r9
     60a:	bf28      	it	cs
     60c:	4648      	movcs	r0, r9
     60e:	eba9 0208 	sub.w	r2, r9, r8
     612:	2a00      	cmp	r2, #0
     614:	bfb8      	it	lt
     616:	4252      	neglt	r2, r2
     618:	8863      	ldrh	r3, [r4, #2]
     61a:	3006      	adds	r0, #6
     61c:	3201      	adds	r2, #1
     61e:	4916      	ldr	r1, [pc, #88]	; (678 <chip_vm+0x2ac>)
     620:	4419      	add	r1, r3
     622:	4420      	add	r0, r4
     624:	f000 fe67 	bl	12f6 <move>
				break;
     628:	e6dd      	b.n	3e6 <chip_vm+0x1a>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     62a:	8863      	ldrh	r3, [r4, #2]
     62c:	4641      	mov	r1, r8
     62e:	45c8      	cmp	r8, r9
     630:	bf28      	it	cs
     632:	4649      	movcs	r1, r9
     634:	eba9 0208 	sub.w	r2, r9, r8
     638:	2a00      	cmp	r2, #0
     63a:	bfb8      	it	lt
     63c:	4252      	neglt	r2, r2
     63e:	3106      	adds	r1, #6
     640:	3201      	adds	r2, #1
     642:	4421      	add	r1, r4
     644:	480c      	ldr	r0, [pc, #48]	; (678 <chip_vm+0x2ac>)
     646:	4418      	add	r0, r3
     648:	f000 fe55 	bl	12f6 <move>
				break;
     64c:	e6cb      	b.n	3e6 <chip_vm+0x1a>
			vms.var[x]=vms.b2;
     64e:	44a0      	add	r8, r4
     650:	f888 3006 	strb.w	r3, [r8, #6]
			break;
     654:	e6c7      	b.n	3e6 <chip_vm+0x1a>
		    n=(vms.var[x]+vms.b2)>255;
     656:	44a0      	add	r8, r4
     658:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     65c:	4403      	add	r3, r0
     65e:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     662:	2bff      	cmp	r3, #255	; 0xff
     664:	bfd4      	ite	le
     666:	2300      	movle	r3, #0
     668:	2301      	movgt	r3, #1
     66a:	7563      	strb	r3, [r4, #21]
			break;
     66c:	e6bb      	b.n	3e6 <chip_vm+0x1a>
     66e:	bf00      	nop
     670:	20000230 	.word	0x20000230
     674:	200006d4 	.word	0x200006d4
     678:	200006d8 	.word	0x200006d8
     67c:	40013800 	.word	0x40013800
     680:	00003c88 	.word	0x00003c88
     684:	00003ba8 	.word	0x00003ba8
     688:	51eb851f 	.word	0x51eb851f
			switch(vms.b2&0xf){
     68c:	f003 030f 	and.w	r3, r3, #15
     690:	2b0e      	cmp	r3, #14
     692:	f200 82fd 	bhi.w	c90 <chip_vm+0x8c4>
     696:	e8df f013 	tbh	[pc, r3, lsl #1]
     69a:	000f      	.short	0x000f
     69c:	00200016 	.word	0x00200016
     6a0:	0034002a 	.word	0x0034002a
     6a4:	00520043 	.word	0x00520043
     6a8:	02fb005c 	.word	0x02fb005c
     6ac:	02fb02fb 	.word	0x02fb02fb
     6b0:	02fb02fb 	.word	0x02fb02fb
     6b4:	006b02fb 	.word	0x006b02fb
				vms.var[x]=vms.var[y];
     6b8:	44a1      	add	r9, r4
     6ba:	f899 3006 	ldrb.w	r3, [r9, #6]
     6be:	44a0      	add	r8, r4
     6c0:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     6c4:	e68f      	b.n	3e6 <chip_vm+0x1a>
				vms.var[x]|=vms.var[y];
     6c6:	44a0      	add	r8, r4
     6c8:	44a1      	add	r9, r4
     6ca:	f898 3006 	ldrb.w	r3, [r8, #6]
     6ce:	f899 2006 	ldrb.w	r2, [r9, #6]
     6d2:	4313      	orrs	r3, r2
     6d4:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     6d8:	e685      	b.n	3e6 <chip_vm+0x1a>
				vms.var[x]&=vms.var[y];
     6da:	44a0      	add	r8, r4
     6dc:	44a1      	add	r9, r4
     6de:	f898 3006 	ldrb.w	r3, [r8, #6]
     6e2:	f899 2006 	ldrb.w	r2, [r9, #6]
     6e6:	4013      	ands	r3, r2
     6e8:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     6ec:	e67b      	b.n	3e6 <chip_vm+0x1a>
				vms.var[x]^=vms.var[y];
     6ee:	44a0      	add	r8, r4
     6f0:	44a1      	add	r9, r4
     6f2:	f898 3006 	ldrb.w	r3, [r8, #6]
     6f6:	f899 2006 	ldrb.w	r2, [r9, #6]
     6fa:	4053      	eors	r3, r2
     6fc:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     700:	e671      	b.n	3e6 <chip_vm+0x1a>
				n=(vms.var[x]+vms.var[y])>255;
     702:	44a0      	add	r8, r4
     704:	f898 3006 	ldrb.w	r3, [r8, #6]
     708:	44a1      	add	r9, r4
     70a:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     70e:	4413      	add	r3, r2
     710:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     714:	2bff      	cmp	r3, #255	; 0xff
     716:	bfd4      	ite	le
     718:	2300      	movle	r3, #0
     71a:	2301      	movgt	r3, #1
     71c:	7563      	strb	r3, [r4, #21]
				break;
     71e:	e662      	b.n	3e6 <chip_vm+0x1a>
				n=vms.var[x]>=vms.var[y];
     720:	44a0      	add	r8, r4
     722:	f898 3006 	ldrb.w	r3, [r8, #6]
     726:	44a1      	add	r9, r4
     728:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     72c:	1a99      	subs	r1, r3, r2
     72e:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     732:	4293      	cmp	r3, r2
     734:	bf34      	ite	cc
     736:	2300      	movcc	r3, #0
     738:	2301      	movcs	r3, #1
     73a:	7563      	strb	r3, [r4, #21]
				break;
     73c:	e653      	b.n	3e6 <chip_vm+0x1a>
				n=(vms.var[x]&1u);
     73e:	44a0      	add	r8, r4
     740:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     744:	085a      	lsrs	r2, r3, #1
     746:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     74a:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     74e:	7563      	strb	r3, [r4, #21]
				break;
     750:	e649      	b.n	3e6 <chip_vm+0x1a>
				n=vms.var[y]>=vms.var[x];
     752:	44a1      	add	r9, r4
     754:	f899 3006 	ldrb.w	r3, [r9, #6]
     758:	44a0      	add	r8, r4
     75a:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     75e:	1a99      	subs	r1, r3, r2
     760:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     764:	4293      	cmp	r3, r2
     766:	bf34      	ite	cc
     768:	2300      	movcc	r3, #0
     76a:	2301      	movcs	r3, #1
     76c:	7563      	strb	r3, [r4, #21]
				break;
     76e:	e63a      	b.n	3e6 <chip_vm+0x1a>
				n=(vms.var[x]&128)>>7;
     770:	44a0      	add	r8, r4
     772:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     776:	005a      	lsls	r2, r3, #1
     778:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     77c:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     77e:	7563      	strb	r3, [r4, #21]
				break;
     780:	e631      	b.n	3e6 <chip_vm+0x1a>
			switch (vms.b2&0xf){
     782:	f003 030f 	and.w	r3, r3, #15
     786:	2b0f      	cmp	r3, #15
     788:	f200 8285 	bhi.w	c96 <chip_vm+0x8ca>
     78c:	e8df f003 	tbb	[pc, r3]
     790:	3d201608 	.word	0x3d201608
     794:	63584d48 	.word	0x63584d48
     798:	877b746d 	.word	0x877b746d
     79c:	c0b0a094 	.word	0xc0b0a094
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     7a0:	44a0      	add	r8, r4
     7a2:	44a1      	add	r9, r4
     7a4:	f898 2006 	ldrb.w	r2, [r8, #6]
     7a8:	f899 3006 	ldrb.w	r3, [r9, #6]
     7ac:	429a      	cmp	r2, r3
     7ae:	f43f ae1a 	beq.w	3e6 <chip_vm+0x1a>
     7b2:	f10c 0c04 	add.w	ip, ip, #4
     7b6:	f8a4 c000 	strh.w	ip, [r4]
     7ba:	e614      	b.n	3e6 <chip_vm+0x1a>
				key_tone(vms.var[x],vms.var[y],false);
     7bc:	44a1      	add	r9, r4
     7be:	44a0      	add	r8, r4
     7c0:	2200      	movs	r2, #0
     7c2:	f899 1006 	ldrb.w	r1, [r9, #6]
     7c6:	f898 0006 	ldrb.w	r0, [r8, #6]
     7ca:	f002 f874 	bl	28b6 <key_tone>
				break;
     7ce:	e60a      	b.n	3e6 <chip_vm+0x1a>
				select_font(FONT_ASCII);
     7d0:	2002      	movs	r0, #2
     7d2:	f002 fa11 	bl	2bf8 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     7d6:	44a1      	add	r9, r4
     7d8:	44a0      	add	r8, r4
     7da:	f899 1006 	ldrb.w	r1, [r9, #6]
     7de:	f898 0006 	ldrb.w	r0, [r8, #6]
     7e2:	f002 fab1 	bl	2d48 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     7e6:	8860      	ldrh	r0, [r4, #2]
     7e8:	f8df 939c 	ldr.w	r9, [pc, #924]	; b88 <chip_vm+0x7bc>
     7ec:	4448      	add	r0, r9
     7ee:	f002 fadf 	bl	2db0 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     7f2:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     7f6:	eb09 0008 	add.w	r0, r9, r8
     7fa:	f000 fd86 	bl	130a <strlen>
     7fe:	f108 0801 	add.w	r8, r8, #1
     802:	4480      	add	r8, r0
     804:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     808:	e5ed      	b.n	3e6 <chip_vm+0x1a>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     80a:	44a1      	add	r9, r4
     80c:	44a0      	add	r8, r4
     80e:	2303      	movs	r3, #3
     810:	2200      	movs	r2, #0
     812:	f899 1006 	ldrb.w	r1, [r9, #6]
     816:	f898 0006 	ldrb.w	r0, [r8, #6]
     81a:	f000 fe6b 	bl	14f4 <gfx_blit>
				break;
     81e:	e5e2      	b.n	3e6 <chip_vm+0x1a>
				noise((x<<4)+y);
     820:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     824:	f002 f85a 	bl	28dc <noise>
				break;
     828:	e5dd      	b.n	3e6 <chip_vm+0x1a>
				key_tone(vms.var[x],vms.var[y],true);
     82a:	44a1      	add	r9, r4
     82c:	44a0      	add	r8, r4
     82e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     832:	f899 1006 	ldrb.w	r1, [r9, #6]
     836:	f898 0006 	ldrb.w	r0, [r8, #6]
     83a:	f002 f83c 	bl	28b6 <key_tone>
				break;
     83e:	e5d2      	b.n	3e6 <chip_vm+0x1a>
				vms.stack[++vms.sp]=vms.var[x];
     840:	7923      	ldrb	r3, [r4, #4]
     842:	3301      	adds	r3, #1
     844:	b2db      	uxtb	r3, r3
     846:	7123      	strb	r3, [r4, #4]
     848:	330c      	adds	r3, #12
     84a:	44a0      	add	r8, r4
     84c:	f898 2006 	ldrb.w	r2, [r8, #6]
     850:	f824 2013 	strh.w	r2, [r4, r3, lsl #1]
				break;
     854:	e5c7      	b.n	3e6 <chip_vm+0x1a>
				vms.var[x]=vms.stack[vms.sp--];
     856:	7923      	ldrb	r3, [r4, #4]
     858:	1e5a      	subs	r2, r3, #1
     85a:	7122      	strb	r2, [r4, #4]
     85c:	44a0      	add	r8, r4
     85e:	330c      	adds	r3, #12
     860:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     864:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     868:	e5bd      	b.n	3e6 <chip_vm+0x1a>
				{ 	vmode_params_t *vparams=get_video_params();
     86a:	f002 fdf5 	bl	3458 <get_video_params>
					vms.var[x]=vparams->hres;
     86e:	44a0      	add	r8, r4
     870:	8983      	ldrh	r3, [r0, #12]
     872:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     876:	e5b6      	b.n	3e6 <chip_vm+0x1a>
					vmode_params_t *vparams=get_video_params();
     878:	f002 fdee 	bl	3458 <get_video_params>
					vms.var[x]=vparams->vres;
     87c:	44a0      	add	r8, r4
     87e:	89c3      	ldrh	r3, [r0, #14]
     880:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     884:	e5af      	b.n	3e6 <chip_vm+0x1a>
			    vms.var[x] |= (1<<(y&0x7));
     886:	44a0      	add	r8, r4
     888:	f009 0907 	and.w	r9, r9, #7
     88c:	2301      	movs	r3, #1
     88e:	fa03 f309 	lsl.w	r3, r3, r9
     892:	f898 2006 	ldrb.w	r2, [r8, #6]
     896:	4313      	orrs	r3, r2
     898:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     89c:	e5a3      	b.n	3e6 <chip_vm+0x1a>
			    vms.var[x] &= ~(1<<(y&0x7));
     89e:	44a0      	add	r8, r4
     8a0:	f009 0207 	and.w	r2, r9, #7
     8a4:	2301      	movs	r3, #1
     8a6:	fa03 f202 	lsl.w	r2, r3, r2
     8aa:	f898 3006 	ldrb.w	r3, [r8, #6]
     8ae:	ea23 0302 	bic.w	r3, r3, r2
     8b2:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     8b6:	e596      	b.n	3e6 <chip_vm+0x1a>
   			    vms.var[x] ^= (1<<(y&0x7));
     8b8:	44a0      	add	r8, r4
     8ba:	f009 0907 	and.w	r9, r9, #7
     8be:	2301      	movs	r3, #1
     8c0:	fa03 f309 	lsl.w	r3, r3, r9
     8c4:	f898 2006 	ldrb.w	r2, [r8, #6]
     8c8:	4053      	eors	r3, r2
     8ca:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     8ce:	e58a      	b.n	3e6 <chip_vm+0x1a>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     8d0:	44a0      	add	r8, r4
     8d2:	f898 3006 	ldrb.w	r3, [r8, #6]
     8d6:	f009 0907 	and.w	r9, r9, #7
     8da:	fa43 f309 	asr.w	r3, r3, r9
     8de:	f013 0f01 	tst.w	r3, #1
     8e2:	f43f ad80 	beq.w	3e6 <chip_vm+0x1a>
     8e6:	f10c 0c04 	add.w	ip, ip, #4
     8ea:	f8a4 c000 	strh.w	ip, [r4]
     8ee:	e57a      	b.n	3e6 <chip_vm+0x1a>
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     8f0:	44a0      	add	r8, r4
     8f2:	f898 3006 	ldrb.w	r3, [r8, #6]
     8f6:	f009 0907 	and.w	r9, r9, #7
     8fa:	fa43 f309 	asr.w	r3, r3, r9
     8fe:	f013 0f01 	tst.w	r3, #1
     902:	f47f ad70 	bne.w	3e6 <chip_vm+0x1a>
     906:	f10c 0c04 	add.w	ip, ip, #4
     90a:	f8a4 c000 	strh.w	ip, [r4]
     90e:	e56a      	b.n	3e6 <chip_vm+0x1a>
			    vms.var[15]=gfx_get_pixel(x,y);
     910:	4649      	mov	r1, r9
     912:	4640      	mov	r0, r8
     914:	f000 ff24 	bl	1760 <gfx_get_pixel>
     918:	7560      	strb	r0, [r4, #21]
				break;  	
     91a:	e564      	b.n	3e6 <chip_vm+0x1a>
			vms.ix=caddr(vms.b1,vms.b2);
     91c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     920:	f3c3 030b 	ubfx	r3, r3, #0, #12
     924:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     926:	4a97      	ldr	r2, [pc, #604]	; (b84 <chip_vm+0x7b8>)
     928:	7812      	ldrb	r2, [r2, #0]
     92a:	b90a      	cbnz	r2, 930 <chip_vm+0x564>
				vms.ix<<=1;
     92c:	005b      	lsls	r3, r3, #1
     92e:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     930:	2300      	movs	r3, #0
     932:	7163      	strb	r3, [r4, #5]
			break;
     934:	e557      	b.n	3e6 <chip_vm+0x1a>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     936:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     93a:	f3c3 030b 	ubfx	r3, r3, #0, #12
     93e:	79a2      	ldrb	r2, [r4, #6]
     940:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     944:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     946:	4a8f      	ldr	r2, [pc, #572]	; (b84 <chip_vm+0x7b8>)
     948:	7812      	ldrb	r2, [r2, #0]
     94a:	2a00      	cmp	r2, #0
     94c:	f47f ad4b 	bne.w	3e6 <chip_vm+0x1a>
				vms.pc<<=1;
     950:	005b      	lsls	r3, r3, #1
     952:	8023      	strh	r3, [r4, #0]
     954:	e547      	b.n	3e6 <chip_vm+0x1a>
			vms.var[x]=rand()&vms.b2;
     956:	f7ff fd2b 	bl	3b0 <rand>
     95a:	44a0      	add	r8, r4
     95c:	7de3      	ldrb	r3, [r4, #23]
     95e:	4018      	ands	r0, r3
     960:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     964:	e53f      	b.n	3e6 <chip_vm+0x1a>
			if (!n){
     966:	f013 030f 	ands.w	r3, r3, #15
     96a:	d11f      	bne.n	9ac <chip_vm+0x5e0>
				if (vms.sprite_mem==RAM_MEM){
     96c:	7963      	ldrb	r3, [r4, #5]
     96e:	b97b      	cbnz	r3, 990 <chip_vm+0x5c4>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     970:	44a1      	add	r9, r4
     972:	f999 1006 	ldrsb.w	r1, [r9, #6]
     976:	44a0      	add	r8, r4
     978:	f998 0006 	ldrsb.w	r0, [r8, #6]
     97c:	8863      	ldrh	r3, [r4, #2]
     97e:	4a82      	ldr	r2, [pc, #520]	; (b88 <chip_vm+0x7bc>)
     980:	4413      	add	r3, r2
     982:	9300      	str	r3, [sp, #0]
     984:	2310      	movs	r3, #16
     986:	461a      	mov	r2, r3
     988:	f000 ff10 	bl	17ac <gfx_sprite>
     98c:	7560      	strb	r0, [r4, #21]
     98e:	e52a      	b.n	3e6 <chip_vm+0x1a>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     990:	44a1      	add	r9, r4
     992:	f999 1006 	ldrsb.w	r1, [r9, #6]
     996:	44a0      	add	r8, r4
     998:	f998 0006 	ldrsb.w	r0, [r8, #6]
     99c:	8863      	ldrh	r3, [r4, #2]
     99e:	9300      	str	r3, [sp, #0]
     9a0:	2310      	movs	r3, #16
     9a2:	461a      	mov	r2, r3
     9a4:	f000 ff02 	bl	17ac <gfx_sprite>
     9a8:	7560      	strb	r0, [r4, #21]
     9aa:	e51c      	b.n	3e6 <chip_vm+0x1a>
				if (vms.sprite_mem==RAM_MEM){
     9ac:	7962      	ldrb	r2, [r4, #5]
     9ae:	b97a      	cbnz	r2, 9d0 <chip_vm+0x604>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     9b0:	44a1      	add	r9, r4
     9b2:	f999 1006 	ldrsb.w	r1, [r9, #6]
     9b6:	44a0      	add	r8, r4
     9b8:	f998 0006 	ldrsb.w	r0, [r8, #6]
     9bc:	8862      	ldrh	r2, [r4, #2]
     9be:	f8df e1c8 	ldr.w	lr, [pc, #456]	; b88 <chip_vm+0x7bc>
     9c2:	4472      	add	r2, lr
     9c4:	9200      	str	r2, [sp, #0]
     9c6:	2208      	movs	r2, #8
     9c8:	f000 fef0 	bl	17ac <gfx_sprite>
     9cc:	7560      	strb	r0, [r4, #21]
     9ce:	e50a      	b.n	3e6 <chip_vm+0x1a>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     9d0:	44a1      	add	r9, r4
     9d2:	f999 1006 	ldrsb.w	r1, [r9, #6]
     9d6:	44a0      	add	r8, r4
     9d8:	f998 0006 	ldrsb.w	r0, [r8, #6]
     9dc:	8862      	ldrh	r2, [r4, #2]
     9de:	9200      	str	r2, [sp, #0]
     9e0:	2208      	movs	r2, #8
     9e2:	f000 fee3 	bl	17ac <gfx_sprite>
     9e6:	7560      	strb	r0, [r4, #21]
     9e8:	e4fd      	b.n	3e6 <chip_vm+0x1a>
				switch(vms.b2){
     9ea:	2b9e      	cmp	r3, #158	; 0x9e
     9ec:	d004      	beq.n	9f8 <chip_vm+0x62c>
     9ee:	2ba1      	cmp	r3, #161	; 0xa1
     9f0:	d00e      	beq.n	a10 <chip_vm+0x644>
					return CHIP_BAD_OPCODE;
     9f2:	f04f 0802 	mov.w	r8, #2
     9f6:	e5f4      	b.n	5e2 <chip_vm+0x216>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     9f8:	44a0      	add	r8, r4
     9fa:	f898 0006 	ldrb.w	r0, [r8, #6]
     9fe:	f000 fb59 	bl	10b4 <btn_query_down>
     a02:	2800      	cmp	r0, #0
     a04:	f43f acef 	beq.w	3e6 <chip_vm+0x1a>
     a08:	8823      	ldrh	r3, [r4, #0]
     a0a:	3302      	adds	r3, #2
     a0c:	8023      	strh	r3, [r4, #0]
     a0e:	e4ea      	b.n	3e6 <chip_vm+0x1a>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     a10:	44a0      	add	r8, r4
     a12:	f898 0006 	ldrb.w	r0, [r8, #6]
     a16:	f000 fb4d 	bl	10b4 <btn_query_down>
     a1a:	2800      	cmp	r0, #0
     a1c:	f47f ace3 	bne.w	3e6 <chip_vm+0x1a>
     a20:	8823      	ldrh	r3, [r4, #0]
     a22:	3302      	adds	r3, #2
     a24:	8023      	strh	r3, [r4, #0]
     a26:	e4de      	b.n	3e6 <chip_vm+0x1a>
			switch(vms.b2){
     a28:	3b01      	subs	r3, #1
     a2a:	2b84      	cmp	r3, #132	; 0x84
     a2c:	f200 8136 	bhi.w	c9c <chip_vm+0x8d0>
     a30:	e8df f013 	tbh	[pc, r3, lsl #1]
     a34:	008f0085 	.word	0x008f0085
     a38:	01340134 	.word	0x01340134
     a3c:	01340134 	.word	0x01340134
     a40:	01340095 	.word	0x01340095
     a44:	009b0134 	.word	0x009b0134
     a48:	01340134 	.word	0x01340134
     a4c:	01340134 	.word	0x01340134
     a50:	01340134 	.word	0x01340134
     a54:	01340134 	.word	0x01340134
     a58:	01340134 	.word	0x01340134
     a5c:	013400a1 	.word	0x013400a1
     a60:	00b20134 	.word	0x00b20134
     a64:	01340134 	.word	0x01340134
     a68:	01340134 	.word	0x01340134
     a6c:	00ba0134 	.word	0x00ba0134
     a70:	01340134 	.word	0x01340134
     a74:	01340134 	.word	0x01340134
     a78:	01340134 	.word	0x01340134
     a7c:	01340134 	.word	0x01340134
     a80:	01340134 	.word	0x01340134
     a84:	013400c1 	.word	0x013400c1
     a88:	01340134 	.word	0x01340134
     a8c:	01340134 	.word	0x01340134
     a90:	00d00134 	.word	0x00d00134
     a94:	01340134 	.word	0x01340134
     a98:	013400df 	.word	0x013400df
     a9c:	01340134 	.word	0x01340134
     aa0:	01340134 	.word	0x01340134
     aa4:	01340134 	.word	0x01340134
     aa8:	01340134 	.word	0x01340134
     aac:	01340134 	.word	0x01340134
     ab0:	01340134 	.word	0x01340134
     ab4:	01340134 	.word	0x01340134
     ab8:	01340134 	.word	0x01340134
     abc:	01340134 	.word	0x01340134
     ac0:	01340134 	.word	0x01340134
     ac4:	01340134 	.word	0x01340134
     ac8:	01340134 	.word	0x01340134
     acc:	01340134 	.word	0x01340134
     ad0:	01340134 	.word	0x01340134
     ad4:	01340134 	.word	0x01340134
     ad8:	01340134 	.word	0x01340134
     adc:	01340105 	.word	0x01340105
     ae0:	01340134 	.word	0x01340134
     ae4:	01340134 	.word	0x01340134
     ae8:	01340134 	.word	0x01340134
     aec:	01340134 	.word	0x01340134
     af0:	01340134 	.word	0x01340134
     af4:	01340134 	.word	0x01340134
     af8:	01340134 	.word	0x01340134
     afc:	0134010f 	.word	0x0134010f
     b00:	01340134 	.word	0x01340134
     b04:	01340134 	.word	0x01340134
     b08:	01340134 	.word	0x01340134
     b0c:	01340134 	.word	0x01340134
     b10:	01340134 	.word	0x01340134
     b14:	01340134 	.word	0x01340134
     b18:	01340134 	.word	0x01340134
     b1c:	01340119 	.word	0x01340119
     b20:	01340134 	.word	0x01340134
     b24:	01340134 	.word	0x01340134
     b28:	01340134 	.word	0x01340134
     b2c:	01340134 	.word	0x01340134
     b30:	01340134 	.word	0x01340134
     b34:	01340134 	.word	0x01340134
     b38:	01340134 	.word	0x01340134
     b3c:	0122      	.short	0x0122
				sprite_bpp=vms.b1%3;
     b3e:	4b13      	ldr	r3, [pc, #76]	; (b8c <chip_vm+0x7c0>)
     b40:	fba3 1302 	umull	r1, r3, r3, r2
     b44:	085b      	lsrs	r3, r3, #1
     b46:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     b4a:	1ad2      	subs	r2, r2, r3
     b4c:	4b10      	ldr	r3, [pc, #64]	; (b90 <chip_vm+0x7c4>)
     b4e:	701a      	strb	r2, [r3, #0]
				break;
     b50:	e449      	b.n	3e6 <chip_vm+0x1a>
				load_sound_buffer(&game_ram[vms.ix]);
     b52:	8863      	ldrh	r3, [r4, #2]
     b54:	480c      	ldr	r0, [pc, #48]	; (b88 <chip_vm+0x7bc>)
     b56:	4418      	add	r0, r3
     b58:	f001 fe67 	bl	282a <load_sound_buffer>
				break;	
     b5c:	e443      	b.n	3e6 <chip_vm+0x1a>
				vms.var[x]=game_timer;
     b5e:	4b0d      	ldr	r3, [pc, #52]	; (b94 <chip_vm+0x7c8>)
     b60:	881b      	ldrh	r3, [r3, #0]
     b62:	44a0      	add	r8, r4
     b64:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     b68:	e43d      	b.n	3e6 <chip_vm+0x1a>
				vms.var[x]=btn_wait_any();
     b6a:	f000 fad7 	bl	111c <btn_wait_any>
     b6e:	44a0      	add	r8, r4
     b70:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     b74:	e437      	b.n	3e6 <chip_vm+0x1a>
				game_timer=vms.var[x];
     b76:	44a0      	add	r8, r4
     b78:	f898 2006 	ldrb.w	r2, [r8, #6]
     b7c:	4b05      	ldr	r3, [pc, #20]	; (b94 <chip_vm+0x7c8>)
     b7e:	801a      	strh	r2, [r3, #0]
				break;
     b80:	e431      	b.n	3e6 <chip_vm+0x1a>
     b82:	bf00      	nop
     b84:	200006d4 	.word	0x200006d4
     b88:	200006d8 	.word	0x200006d8
     b8c:	aaaaaaab 	.word	0xaaaaaaab
     b90:	200001c8 	.word	0x200001c8
     b94:	20004e64 	.word	0x20004e64
				tone(523,vms.var[x]);
     b98:	44a0      	add	r8, r4
     b9a:	f898 1006 	ldrb.w	r1, [r8, #6]
     b9e:	f240 200b 	movw	r0, #523	; 0x20b
     ba2:	f001 fe0d 	bl	27c0 <tone>
				break;
     ba6:	e41e      	b.n	3e6 <chip_vm+0x1a>
				vms.ix += vms.var[x];
     ba8:	44a0      	add	r8, r4
     baa:	f898 3006 	ldrb.w	r3, [r8, #6]
     bae:	8862      	ldrh	r2, [r4, #2]
     bb0:	4413      	add	r3, r2
     bb2:	8063      	strh	r3, [r4, #2]
				break;
     bb4:	e417      	b.n	3e6 <chip_vm+0x1a>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     bb6:	44a0      	add	r8, r4
     bb8:	f898 3006 	ldrb.w	r3, [r8, #6]
     bbc:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     bc0:	4a39      	ldr	r2, [pc, #228]	; (ca8 <chip_vm+0x8dc>)
     bc2:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     bc6:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     bc8:	2301      	movs	r3, #1
     bca:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     bcc:	2000      	movs	r0, #0
     bce:	f002 f813 	bl	2bf8 <select_font>
				break;
     bd2:	e408      	b.n	3e6 <chip_vm+0x1a>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     bd4:	44a0      	add	r8, r4
     bd6:	f898 3006 	ldrb.w	r3, [r8, #6]
     bda:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     bde:	4a33      	ldr	r2, [pc, #204]	; (cac <chip_vm+0x8e0>)
     be0:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     be4:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     be6:	2001      	movs	r0, #1
     be8:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     bea:	f002 f805 	bl	2bf8 <select_font>
				break;
     bee:	f7ff bbfa 	b.w	3e6 <chip_vm+0x1a>
				n=vms.var[x];
     bf2:	44a0      	add	r8, r4
     bf4:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     bf8:	4a2d      	ldr	r2, [pc, #180]	; (cb0 <chip_vm+0x8e4>)
     bfa:	fba2 0301 	umull	r0, r3, r2, r1
     bfe:	08db      	lsrs	r3, r3, #3
     c00:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     c04:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     c08:	f884 005a 	strb.w	r0, [r4, #90]	; 0x5a
				block[1]=n%10;
     c0c:	b2db      	uxtb	r3, r3
     c0e:	fba2 0203 	umull	r0, r2, r2, r3
     c12:	08d2      	lsrs	r2, r2, #3
     c14:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     c18:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     c1c:	f884 3059 	strb.w	r3, [r4, #89]	; 0x59
				block[0]=n/10;
     c20:	fbaa 2301 	umull	r2, r3, sl, r1
     c24:	095b      	lsrs	r3, r3, #5
     c26:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     c2a:	8863      	ldrh	r3, [r4, #2]
     c2c:	2203      	movs	r2, #3
     c2e:	4921      	ldr	r1, [pc, #132]	; (cb4 <chip_vm+0x8e8>)
     c30:	4419      	add	r1, r3
     c32:	f104 0058 	add.w	r0, r4, #88	; 0x58
     c36:	f000 fb5e 	bl	12f6 <move>
				break;
     c3a:	f7ff bbd4 	b.w	3e6 <chip_vm+0x1a>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     c3e:	8863      	ldrh	r3, [r4, #2]
     c40:	f108 0201 	add.w	r2, r8, #1
     c44:	491b      	ldr	r1, [pc, #108]	; (cb4 <chip_vm+0x8e8>)
     c46:	4419      	add	r1, r3
     c48:	4630      	mov	r0, r6
     c4a:	f000 fb54 	bl	12f6 <move>
				break;
     c4e:	f7ff bbca 	b.w	3e6 <chip_vm+0x1a>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     c52:	8863      	ldrh	r3, [r4, #2]
     c54:	f108 0201 	add.w	r2, r8, #1
     c58:	4631      	mov	r1, r6
     c5a:	4816      	ldr	r0, [pc, #88]	; (cb4 <chip_vm+0x8e8>)
     c5c:	4418      	add	r0, r3
     c5e:	f000 fb4a 	bl	12f6 <move>
				break;
     c62:	f7ff bbc0 	b.w	3e6 <chip_vm+0x1a>
				move((const uint8_t*)vms.var,block,x+1);
     c66:	f108 0201 	add.w	r2, r8, #1
     c6a:	f104 0158 	add.w	r1, r4, #88	; 0x58
     c6e:	4630      	mov	r0, r6
     c70:	f000 fb41 	bl	12f6 <move>
				break;
     c74:	f7ff bbb7 	b.w	3e6 <chip_vm+0x1a>
				move((const uint8_t*)block,vms.var,x+1);
     c78:	f108 0201 	add.w	r2, r8, #1
     c7c:	4631      	mov	r1, r6
     c7e:	f104 0058 	add.w	r0, r4, #88	; 0x58
     c82:	f000 fb38 	bl	12f6 <move>
				break;
     c86:	f7ff bbae 	b.w	3e6 <chip_vm+0x1a>
			}else switch(vms.b2){
     c8a:	f04f 0800 	mov.w	r8, #0
     c8e:	e49b      	b.n	5c8 <chip_vm+0x1fc>
				loop=CHIP_BAD_OPCODE;
     c90:	f04f 0802 	mov.w	r8, #2
     c94:	e498      	b.n	5c8 <chip_vm+0x1fc>
				loop=CHIP_BAD_OPCODE;
     c96:	f04f 0802 	mov.w	r8, #2
     c9a:	e495      	b.n	5c8 <chip_vm+0x1fc>
				loop=CHIP_BAD_OPCODE;
     c9c:	f04f 0802 	mov.w	r8, #2
     ca0:	e492      	b.n	5c8 <chip_vm+0x1fc>
					loop=CHIP_EXIT_OK;
     ca2:	f04f 0801 	mov.w	r8, #1
     ca6:	e493      	b.n	5d0 <chip_vm+0x204>
     ca8:	00003b48 	.word	0x00003b48
     cac:	00003aa8 	.word	0x00003aa8
     cb0:	cccccccd 	.word	0xcccccccd
     cb4:	200006d8 	.word	0x200006d8

00000cb8 <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     cb8:	2200      	movs	r2, #0
     cba:	4b0f      	ldr	r3, [pc, #60]	; (cf8 <flash_enable+0x40>)
     cbc:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     cbe:	4b0f      	ldr	r3, [pc, #60]	; (cfc <flash_enable+0x44>)
     cc0:	681b      	ldr	r3, [r3, #0]
     cc2:	f013 0f01 	tst.w	r3, #1
     cc6:	d10b      	bne.n	ce0 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     cc8:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     ccc:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     cd0:	6813      	ldr	r3, [r2, #0]
     cd2:	f043 0301 	orr.w	r3, r3, #1
     cd6:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     cd8:	6813      	ldr	r3, [r2, #0]
     cda:	f013 0f02 	tst.w	r3, #2
     cde:	d0fb      	beq.n	cd8 <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     ce0:	4b07      	ldr	r3, [pc, #28]	; (d00 <flash_enable+0x48>)
     ce2:	4a08      	ldr	r2, [pc, #32]	; (d04 <flash_enable+0x4c>)
     ce4:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     ce6:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     cea:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     cec:	6918      	ldr	r0, [r3, #16]
     cee:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     cf2:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     cf6:	4770      	bx	lr
     cf8:	200002a8 	.word	0x200002a8
     cfc:	40021000 	.word	0x40021000
     d00:	40022000 	.word	0x40022000
     d04:	45670123 	.word	0x45670123

00000d08 <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     d08:	4a0b      	ldr	r2, [pc, #44]	; (d38 <flash_write_hword+0x30>)
     d0a:	68d3      	ldr	r3, [r2, #12]
     d0c:	f013 0f01 	tst.w	r3, #1
     d10:	d1fb      	bne.n	d0a <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     d12:	4b09      	ldr	r3, [pc, #36]	; (d38 <flash_write_hword+0x30>)
     d14:	68da      	ldr	r2, [r3, #12]
     d16:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     d1a:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     d1c:	2201      	movs	r2, #1
     d1e:	611a      	str	r2, [r3, #16]
	*address=hword;
     d20:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     d22:	68da      	ldr	r2, [r3, #12]
     d24:	f012 0f01 	tst.w	r2, #1
     d28:	d003      	beq.n	d32 <flash_write_hword+0x2a>
     d2a:	68da      	ldr	r2, [r3, #12]
     d2c:	f012 0f20 	tst.w	r2, #32
     d30:	d0f7      	beq.n	d22 <flash_write_hword+0x1a>
	return *address==hword;
}
     d32:	2001      	movs	r0, #1
     d34:	4770      	bx	lr
     d36:	bf00      	nop
     d38:	40022000 	.word	0x40022000

00000d3c <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     d3c:	283f      	cmp	r0, #63	; 0x3f
     d3e:	d914      	bls.n	d6a <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     d40:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     d42:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     d44:	1c81      	adds	r1, r0, #2
     d46:	8802      	ldrh	r2, [r0, #0]
     d48:	f64f 73ff 	movw	r3, #65535	; 0xffff
     d4c:	429a      	cmp	r2, r3
     d4e:	d110      	bne.n	d72 <flash_erase_row+0x36>
     d50:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     d54:	460b      	mov	r3, r1
     d56:	f64f 74ff 	movw	r4, #65535	; 0xffff
     d5a:	f833 2b02 	ldrh.w	r2, [r3], #2
     d5e:	42a2      	cmp	r2, r4
     d60:	d107      	bne.n	d72 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d62:	429d      	cmp	r5, r3
     d64:	d1f9      	bne.n	d5a <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     d66:	2001      	movs	r0, #1
     d68:	e02f      	b.n	dca <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     d6a:	2000      	movs	r0, #0
     d6c:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     d6e:	2000      	movs	r0, #0
     d70:	e02b      	b.n	dca <flash_erase_row+0x8e>
     d72:	4b17      	ldr	r3, [pc, #92]	; (dd0 <flash_erase_row+0x94>)
     d74:	691b      	ldr	r3, [r3, #16]
     d76:	f013 0f80 	tst.w	r3, #128	; 0x80
     d7a:	d1f8      	bne.n	d6e <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     d7c:	4b14      	ldr	r3, [pc, #80]	; (dd0 <flash_erase_row+0x94>)
     d7e:	68da      	ldr	r2, [r3, #12]
     d80:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     d84:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     d86:	2202      	movs	r2, #2
     d88:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     d8a:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     d8c:	691a      	ldr	r2, [r3, #16]
     d8e:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     d92:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     d94:	68da      	ldr	r2, [r3, #12]
     d96:	f012 0f01 	tst.w	r2, #1
     d9a:	d003      	beq.n	da4 <flash_erase_row+0x68>
     d9c:	68da      	ldr	r2, [r3, #12]
     d9e:	f012 0f20 	tst.w	r2, #32
     da2:	d0f7      	beq.n	d94 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     da4:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     da6:	f64f 72ff 	movw	r2, #65535	; 0xffff
     daa:	4293      	cmp	r3, r2
     dac:	d107      	bne.n	dbe <flash_erase_row+0x82>
     dae:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     db2:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     db6:	4293      	cmp	r3, r2
     db8:	d101      	bne.n	dbe <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     dba:	4281      	cmp	r1, r0
     dbc:	d1f9      	bne.n	db2 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     dbe:	f64f 70ff 	movw	r0, #65535	; 0xffff
     dc2:	4283      	cmp	r3, r0
     dc4:	bf14      	ite	ne
     dc6:	2000      	movne	r0, #0
     dc8:	2001      	moveq	r0, #1
}
     dca:	bc30      	pop	{r4, r5}
     dcc:	4770      	bx	lr
     dce:	bf00      	nop
     dd0:	40022000 	.word	0x40022000

00000dd4 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     dd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     dd6:	4b1c      	ldr	r3, [pc, #112]	; (e48 <flash_sync+0x74>)
     dd8:	781b      	ldrb	r3, [r3, #0]
     dda:	f013 0f01 	tst.w	r3, #1
     dde:	d102      	bne.n	de6 <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     de0:	2301      	movs	r3, #1
}
     de2:	4618      	mov	r0, r3
     de4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     de6:	4b18      	ldr	r3, [pc, #96]	; (e48 <flash_sync+0x74>)
     de8:	7858      	ldrb	r0, [r3, #1]
     dea:	f7ff ffa7 	bl	d3c <flash_erase_row>
     dee:	4603      	mov	r3, r0
     df0:	2800      	cmp	r0, #0
     df2:	d0f6      	beq.n	de2 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     df4:	4e14      	ldr	r6, [pc, #80]	; (e48 <flash_sync+0x74>)
     df6:	7875      	ldrb	r5, [r6, #1]
     df8:	02ad      	lsls	r5, r5, #10
     dfa:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     dfc:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     dfe:	f64f 77ff 	movw	r7, #65535	; 0xffff
     e02:	e004      	b.n	e0e <flash_sync+0x3a>
		dest++;
     e04:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e06:	3401      	adds	r4, #1
     e08:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     e0c:	d00a      	beq.n	e24 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     e0e:	f836 1b02 	ldrh.w	r1, [r6], #2
     e12:	42b9      	cmp	r1, r7
     e14:	d0f6      	beq.n	e04 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     e16:	4628      	mov	r0, r5
     e18:	f7ff ff76 	bl	d08 <flash_write_hword>
     e1c:	2800      	cmp	r0, #0
     e1e:	d1f1      	bne.n	e04 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     e20:	2c00      	cmp	r4, #0
     e22:	dd04      	ble.n	e2e <flash_sync+0x5a>
     e24:	4a08      	ldr	r2, [pc, #32]	; (e48 <flash_sync+0x74>)
     e26:	7813      	ldrb	r3, [r2, #0]
     e28:	f023 0304 	bic.w	r3, r3, #4
     e2c:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     e2e:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     e32:	d106      	bne.n	e42 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     e34:	4a04      	ldr	r2, [pc, #16]	; (e48 <flash_sync+0x74>)
     e36:	7813      	ldrb	r3, [r2, #0]
     e38:	f023 0301 	bic.w	r3, r3, #1
     e3c:	7013      	strb	r3, [r2, #0]
			return 1;
     e3e:	2301      	movs	r3, #1
     e40:	e7cf      	b.n	de2 <flash_sync+0xe>
		return 0;
     e42:	2300      	movs	r3, #0
     e44:	e7cd      	b.n	de2 <flash_sync+0xe>
     e46:	bf00      	nop
     e48:	200002a8 	.word	0x200002a8

00000e4c <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     e4c:	2200      	movs	r2, #0
     e4e:	4b01      	ldr	r3, [pc, #4]	; (e54 <flash_flush+0x8>)
     e50:	701a      	strb	r2, [r3, #0]
     e52:	4770      	bx	lr
     e54:	200002a8 	.word	0x200002a8

00000e58 <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     e58:	b508      	push	{r3, lr}
	flash_sync();
     e5a:	f7ff ffbb 	bl	dd4 <flash_sync>
	row_buff.flags=0;
     e5e:	2200      	movs	r2, #0
     e60:	4b03      	ldr	r3, [pc, #12]	; (e70 <flash_disable+0x18>)
     e62:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     e64:	4a03      	ldr	r2, [pc, #12]	; (e74 <flash_disable+0x1c>)
     e66:	6913      	ldr	r3, [r2, #16]
     e68:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     e6c:	6113      	str	r3, [r2, #16]
     e6e:	bd08      	pop	{r3, pc}
     e70:	200002a8 	.word	0x200002a8
     e74:	40022000 	.word	0x40022000

00000e78 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     e78:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     e7c:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     e80:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     e84:	d92c      	bls.n	ee0 <flash_write_byte+0x68>
     e86:	460e      	mov	r6, r1
     e88:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     e8a:	4b16      	ldr	r3, [pc, #88]	; (ee4 <flash_write_byte+0x6c>)
     e8c:	785b      	ldrb	r3, [r3, #1]
     e8e:	4598      	cmp	r8, r3
     e90:	d019      	beq.n	ec6 <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     e92:	f7ff ff9f 	bl	dd4 <flash_sync>
     e96:	4603      	mov	r3, r0
     e98:	b1f8      	cbz	r0, eda <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     e9a:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     e9e:	f023 0303 	bic.w	r3, r3, #3
     ea2:	4a10      	ldr	r2, [pc, #64]	; (ee4 <flash_write_byte+0x6c>)
     ea4:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     ea8:	f833 4b02 	ldrh.w	r4, [r3], #2
     eac:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     eb0:	42ab      	cmp	r3, r5
     eb2:	d1f9      	bne.n	ea8 <flash_write_byte+0x30>
	row_buff.row=r;
     eb4:	4a0b      	ldr	r2, [pc, #44]	; (ee4 <flash_write_byte+0x6c>)
     eb6:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     eba:	7813      	ldrb	r3, [r2, #0]
     ebc:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     ec0:	f043 0302 	orr.w	r3, r3, #2
     ec4:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     ec6:	4a07      	ldr	r2, [pc, #28]	; (ee4 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     ec8:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     ecc:	4413      	add	r3, r2
     ece:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     ed0:	7813      	ldrb	r3, [r2, #0]
     ed2:	f043 0301 	orr.w	r3, r3, #1
     ed6:	7013      	strb	r3, [r2, #0]
	return 1;
     ed8:	2301      	movs	r3, #1
}
     eda:	4618      	mov	r0, r3
     edc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     ee0:	2300      	movs	r3, #0
     ee2:	e7fa      	b.n	eda <flash_write_byte+0x62>
     ee4:	200002a8 	.word	0x200002a8

00000ee8 <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     ee8:	2a00      	cmp	r2, #0
     eea:	dd13      	ble.n	f14 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     eec:	b410      	push	{r4}
     eee:	4603      	mov	r3, r0
     ef0:	3901      	subs	r1, #1
     ef2:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     ef4:	4a08      	ldr	r2, [pc, #32]	; (f18 <flash_read_block+0x30>)
     ef6:	7854      	ldrb	r4, [r2, #1]
     ef8:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     efc:	bf03      	ittte	eq
     efe:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     f02:	18a4      	addeq	r4, r4, r2
     f04:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     f06:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     f08:	f801 4f01 	strb.w	r4, [r1, #1]!
     f0c:	3301      	adds	r3, #1
     f0e:	4283      	cmp	r3, r0
     f10:	d1f1      	bne.n	ef6 <flash_read_block+0xe>
}
     f12:	bc10      	pop	{r4}
     f14:	4770      	bx	lr
     f16:	bf00      	nop
     f18:	200002a8 	.word	0x200002a8

00000f1c <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
     f1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<ffa) return 0;
     f1e:	4b11      	ldr	r3, [pc, #68]	; (f64 <flash_write_block+0x48>)
     f20:	681b      	ldr	r3, [r3, #0]
     f22:	4298      	cmp	r0, r3
     f24:	d202      	bcs.n	f2c <flash_write_block+0x10>
     f26:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
     f28:	4618      	mov	r0, r3
     f2a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     f2c:	4604      	mov	r4, r0
     f2e:	460e      	mov	r6, r1
     f30:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
     f32:	f7ff fec1 	bl	cb8 <flash_enable>
     f36:	4603      	mov	r3, r0
     f38:	2800      	cmp	r0, #0
     f3a:	d0f5      	beq.n	f28 <flash_write_block+0xc>
	for (i=0;i<size;i++){
     f3c:	2f00      	cmp	r7, #0
     f3e:	dd0c      	ble.n	f5a <flash_write_block+0x3e>
     f40:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
     f42:	1c65      	adds	r5, r4, #1
     f44:	f816 1b01 	ldrb.w	r1, [r6], #1
     f48:	4620      	mov	r0, r4
     f4a:	f7ff ff95 	bl	e78 <flash_write_byte>
     f4e:	4603      	mov	r3, r0
     f50:	2800      	cmp	r0, #0
     f52:	d0e9      	beq.n	f28 <flash_write_block+0xc>
     f54:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
     f56:	42bd      	cmp	r5, r7
     f58:	d1f3      	bne.n	f42 <flash_write_block+0x26>
	flash_disable();
     f5a:	f7ff ff7d 	bl	e58 <flash_disable>
	return 1;
     f5e:	2301      	movs	r3, #1
     f60:	e7e2      	b.n	f28 <flash_write_block+0xc>
     f62:	bf00      	nop
     f64:	00004000 	.word	0x00004000

00000f68 <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
     f68:	4b0a      	ldr	r3, [pc, #40]	; (f94 <btn_mask+0x2c>)
     f6a:	781b      	ldrb	r3, [r3, #0]
     f6c:	4283      	cmp	r3, r0
     f6e:	d00a      	beq.n	f86 <btn_mask+0x1e>
     f70:	4a09      	ldr	r2, [pc, #36]	; (f98 <btn_mask+0x30>)
    for (i=0;i<8;i++){
     f72:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
     f74:	f812 1b01 	ldrb.w	r1, [r2], #1
     f78:	4281      	cmp	r1, r0
     f7a:	d005      	beq.n	f88 <btn_mask+0x20>
    for (i=0;i<8;i++){
     f7c:	3301      	adds	r3, #1
     f7e:	2b08      	cmp	r3, #8
     f80:	d1f8      	bne.n	f74 <btn_mask+0xc>
    }
    return 255;
     f82:	20ff      	movs	r0, #255	; 0xff
}
     f84:	4770      	bx	lr
    for (i=0;i<8;i++){
     f86:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
     f88:	2001      	movs	r0, #1
     f8a:	fa00 f303 	lsl.w	r3, r0, r3
     f8e:	b2d8      	uxtb	r0, r3
     f90:	4770      	bx	lr
     f92:	bf00      	nop
     f94:	200006ac 	.word	0x200006ac
     f98:	200006ad 	.word	0x200006ad

00000f9c <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
     f9c:	b430      	push	{r4, r5}
     f9e:	4605      	mov	r5, r0
     fa0:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
     fa2:	2000      	movs	r0, #0
     fa4:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     fa6:	4b1b      	ldr	r3, [pc, #108]	; (1014 <shift_out+0x78>)
     fa8:	e003      	b.n	fb2 <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
     faa:	0052      	lsls	r2, r2, #1
     fac:	b2d2      	uxtb	r2, r2
    while (mask){
     fae:	3c01      	subs	r4, #1
     fb0:	d01d      	beq.n	fee <shift_out+0x52>
        if (byte&mask){
     fb2:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     fb4:	68d9      	ldr	r1, [r3, #12]
     fb6:	bf14      	ite	ne
     fb8:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     fbc:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
     fc0:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     fc2:	68d9      	ldr	r1, [r3, #12]
     fc4:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
     fc8:	60d9      	str	r1, [r3, #12]
        _clk_delay();
     fca:	bf00      	nop
     fcc:	bf00      	nop
     fce:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     fd0:	68d9      	ldr	r1, [r3, #12]
     fd2:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
     fd6:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
     fd8:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
     fda:	6899      	ldr	r1, [r3, #8]
     fdc:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
     fe0:	6099      	str	r1, [r3, #8]
     fe2:	2900      	cmp	r1, #0
     fe4:	d0e1      	beq.n	faa <shift_out+0xe>
     fe6:	f060 007f 	orn	r0, r0, #127	; 0x7f
     fea:	b2c0      	uxtb	r0, r0
     fec:	e7dd      	b.n	faa <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     fee:	4b09      	ldr	r3, [pc, #36]	; (1014 <shift_out+0x78>)
     ff0:	68da      	ldr	r2, [r3, #12]
     ff2:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
     ff6:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     ff8:	68da      	ldr	r2, [r3, #12]
     ffa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
     ffe:	60da      	str	r2, [r3, #12]
    _clk_delay();
    1000:	bf00      	nop
    1002:	bf00      	nop
    1004:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    1006:	68da      	ldr	r2, [r3, #12]
    1008:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    100c:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    100e:	bc30      	pop	{r4, r5}
    1010:	4770      	bx	lr
    1012:	bf00      	nop
    1014:	40010c00 	.word	0x40010c00

00001018 <set_keymap>:
void set_keymap(const uint8_t *kmap){
    1018:	1e43      	subs	r3, r0, #1
    101a:	4a04      	ldr	r2, [pc, #16]	; (102c <set_keymap+0x14>)
    101c:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    101e:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    1022:	f802 1f01 	strb.w	r1, [r2, #1]!
    1026:	4283      	cmp	r3, r0
    1028:	d1f9      	bne.n	101e <set_keymap+0x6>
}
    102a:	4770      	bx	lr
    102c:	200006ab 	.word	0x200006ab

00001030 <gamepad_init>:
void gamepad_init(){
    1030:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    1032:	4c0b      	ldr	r4, [pc, #44]	; (1060 <gamepad_init+0x30>)
    1034:	2202      	movs	r2, #2
    1036:	210f      	movs	r1, #15
    1038:	4620      	mov	r0, r4
    103a:	f000 fa1b 	bl	1474 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    103e:	2202      	movs	r2, #2
    1040:	210d      	movs	r1, #13
    1042:	4620      	mov	r0, r4
    1044:	f000 fa16 	bl	1474 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    1048:	2208      	movs	r2, #8
    104a:	210e      	movs	r1, #14
    104c:	4620      	mov	r0, r4
    104e:	f000 fa11 	bl	1474 <config_pin>
    btn_state=0xff;
    1052:	22ff      	movs	r2, #255	; 0xff
    1054:	4b03      	ldr	r3, [pc, #12]	; (1064 <gamepad_init+0x34>)
    1056:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1058:	4803      	ldr	r0, [pc, #12]	; (1068 <gamepad_init+0x38>)
    105a:	f7ff ffdd 	bl	1018 <set_keymap>
    105e:	bd10      	pop	{r4, pc}
    1060:	40010c00 	.word	0x40010c00
    1064:	200026d8 	.word	0x200026d8
    1068:	00003ba8 	.word	0x00003ba8

0000106c <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    106c:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    106e:	20fe      	movs	r0, #254	; 0xfe
    1070:	f7ff ff94 	bl	f9c <shift_out>
    1074:	4b0c      	ldr	r3, [pc, #48]	; (10a8 <read_gamepad+0x3c>)
    1076:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1078:	781b      	ldrb	r3, [r3, #0]
    107a:	f013 0f12 	tst.w	r3, #18
    107e:	d111      	bne.n	10a4 <read_gamepad+0x38>
        while (btn_state!=0xff){
    1080:	4b09      	ldr	r3, [pc, #36]	; (10a8 <read_gamepad+0x3c>)
    1082:	781b      	ldrb	r3, [r3, #0]
    1084:	b2db      	uxtb	r3, r3
    1086:	2bff      	cmp	r3, #255	; 0xff
    1088:	d009      	beq.n	109e <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    108a:	25fe      	movs	r5, #254	; 0xfe
    108c:	4c06      	ldr	r4, [pc, #24]	; (10a8 <read_gamepad+0x3c>)
    108e:	4628      	mov	r0, r5
    1090:	f7ff ff84 	bl	f9c <shift_out>
    1094:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    1096:	7823      	ldrb	r3, [r4, #0]
    1098:	b2db      	uxtb	r3, r3
    109a:	2bff      	cmp	r3, #255	; 0xff
    109c:	d1f7      	bne.n	108e <read_gamepad+0x22>
        };
        _reset_mcu();
    109e:	4a03      	ldr	r2, [pc, #12]	; (10ac <read_gamepad+0x40>)
    10a0:	4b03      	ldr	r3, [pc, #12]	; (10b0 <read_gamepad+0x44>)
    10a2:	601a      	str	r2, [r3, #0]
    10a4:	bd38      	pop	{r3, r4, r5, pc}
    10a6:	bf00      	nop
    10a8:	200026d8 	.word	0x200026d8
    10ac:	05fa0004 	.word	0x05fa0004
    10b0:	e000ed0c 	.word	0xe000ed0c

000010b4 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    10b4:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    10b6:	f7ff ff57 	bl	f68 <btn_mask>
    return !(btn_state&mask);
    10ba:	4b03      	ldr	r3, [pc, #12]	; (10c8 <btn_query_down+0x14>)
    10bc:	781b      	ldrb	r3, [r3, #0]
    10be:	4203      	tst	r3, r0
}
    10c0:	bf0c      	ite	eq
    10c2:	2001      	moveq	r0, #1
    10c4:	2000      	movne	r0, #0
    10c6:	bd08      	pop	{r3, pc}
    10c8:	200026d8 	.word	0x200026d8

000010cc <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    10cc:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    10ce:	f7ff ff4b 	bl	f68 <btn_mask>
    10d2:	4606      	mov	r6, r0
    int frame_count=0;
    10d4:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    10d6:	4d06      	ldr	r5, [pc, #24]	; (10f0 <btn_wait_down+0x24>)
    10d8:	e000      	b.n	10dc <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    10da:	2400      	movs	r4, #0
        frame_sync();
    10dc:	f002 f982 	bl	33e4 <frame_sync>
        if (!(btn_state&mask)){
    10e0:	782b      	ldrb	r3, [r5, #0]
    10e2:	4233      	tst	r3, r6
    10e4:	d1f9      	bne.n	10da <btn_wait_down+0xe>
            frame_count++;
    10e6:	3401      	adds	r4, #1
    while (frame_count<3){
    10e8:	2c02      	cmp	r4, #2
    10ea:	ddf7      	ble.n	10dc <btn_wait_down+0x10>
        }
    }
}
    10ec:	bd70      	pop	{r4, r5, r6, pc}
    10ee:	bf00      	nop
    10f0:	200026d8 	.word	0x200026d8

000010f4 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    10f4:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    10f6:	f7ff ff37 	bl	f68 <btn_mask>
    10fa:	4606      	mov	r6, r0
    int frame_count=0;
    10fc:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    10fe:	4d06      	ldr	r5, [pc, #24]	; (1118 <btn_wait_up+0x24>)
    1100:	e000      	b.n	1104 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    1102:	2400      	movs	r4, #0
        frame_sync();
    1104:	f002 f96e 	bl	33e4 <frame_sync>
        if ((btn_state&mask)){
    1108:	782b      	ldrb	r3, [r5, #0]
    110a:	4233      	tst	r3, r6
    110c:	d0f9      	beq.n	1102 <btn_wait_up+0xe>
            frame_count++;
    110e:	3401      	adds	r4, #1
    while (frame_count<3){
    1110:	2c02      	cmp	r4, #2
    1112:	ddf7      	ble.n	1104 <btn_wait_up+0x10>
        }
    }
}
    1114:	bd70      	pop	{r4, r5, r6, pc}
    1116:	bf00      	nop
    1118:	200026d8 	.word	0x200026d8

0000111c <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    111c:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    111e:	4b15      	ldr	r3, [pc, #84]	; (1174 <btn_wait_any+0x58>)
    1120:	781c      	ldrb	r4, [r3, #0]
    1122:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1124:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    1126:	461d      	mov	r5, r3
    1128:	e007      	b.n	113a <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    112a:	782a      	ldrb	r2, [r5, #0]
    112c:	b2d2      	uxtb	r2, r2
    112e:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1130:	bf18      	it	ne
    1132:	3601      	addne	r6, #1
    while (frame_count<3){
    1134:	2e02      	cmp	r6, #2
    1136:	dc0a      	bgt.n	114e <btn_wait_any+0x32>
    1138:	461c      	mov	r4, r3
        frame_sync();
    113a:	f002 f953 	bl	33e4 <frame_sync>
        if (last_state!=btn_state){
    113e:	782b      	ldrb	r3, [r5, #0]
    1140:	b2db      	uxtb	r3, r3
    1142:	42a3      	cmp	r3, r4
    1144:	d0f1      	beq.n	112a <btn_wait_any+0xe>
            last_state=btn_state;
    1146:	782c      	ldrb	r4, [r5, #0]
    1148:	b2e4      	uxtb	r4, r4
            frame_count=0;
    114a:	2600      	movs	r6, #0
    114c:	e7f5      	b.n	113a <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    114e:	43e3      	mvns	r3, r4
    mask>>=1;
    1150:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1154:	b15b      	cbz	r3, 116e <btn_wait_any+0x52>
    1156:	2200      	movs	r2, #0
    1158:	3201      	adds	r2, #1
    115a:	b2d2      	uxtb	r2, r2
    115c:	085b      	lsrs	r3, r3, #1
    115e:	d1fb      	bne.n	1158 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1160:	4b05      	ldr	r3, [pc, #20]	; (1178 <btn_wait_any+0x5c>)
    1162:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1164:	4620      	mov	r0, r4
    1166:	f7ff ffc5 	bl	10f4 <btn_wait_up>
    return btn;
}
    116a:	4620      	mov	r0, r4
    116c:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    116e:	461a      	mov	r2, r3
    1170:	e7f6      	b.n	1160 <btn_wait_any+0x44>
    1172:	bf00      	nop
    1174:	200026d8 	.word	0x200026d8
    1178:	200006ac 	.word	0x200006ac

0000117c <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    117c:	4b01      	ldr	r3, [pc, #4]	; (1184 <btn_set_value+0x8>)
    117e:	5419      	strb	r1, [r3, r0]
    1180:	4770      	bx	lr
    1182:	bf00      	nop
    1184:	200006ac 	.word	0x200006ac

00001188 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    1188:	4800      	ldr	r0, [pc, #0]	; (118c <get_keymap+0x4>)
    118a:	4770      	bx	lr
    118c:	200006ac 	.word	0x200006ac

00001190 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    1190:	4b06      	ldr	r3, [pc, #24]	; (11ac <games_count+0x1c>)
    1192:	691b      	ldr	r3, [r3, #16]
    1194:	b13b      	cbz	r3, 11a6 <games_count+0x16>
    1196:	4b05      	ldr	r3, [pc, #20]	; (11ac <games_count+0x1c>)
    1198:	2000      	movs	r0, #0
    for (i=0;;i++){
    119a:	3001      	adds	r0, #1
    119c:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    119e:	691a      	ldr	r2, [r3, #16]
    11a0:	2a00      	cmp	r2, #0
    11a2:	d1fa      	bne.n	119a <games_count+0xa>
    11a4:	4770      	bx	lr
    for (i=0;;i++){
    11a6:	2000      	movs	r0, #0
    }
    return i;
}
    11a8:	4770      	bx	lr
    11aa:	bf00      	nop
    11ac:	20000004 	.word	0x20000004

000011b0 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    11b0:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    11b2:	7803      	ldrb	r3, [r0, #0]
    11b4:	b1fb      	cbz	r3, 11f6 <strcmp+0x46>
    11b6:	780a      	ldrb	r2, [r1, #0]
    11b8:	b17a      	cbz	r2, 11da <strcmp+0x2a>
		if (*s1<*s2){
    11ba:	4293      	cmp	r3, r2
    11bc:	d313      	bcc.n	11e6 <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    11be:	d815      	bhi.n	11ec <strcmp+0x3c>
    11c0:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    11c2:	4621      	mov	r1, r4
	while (*s1 && *s2){
    11c4:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    11c8:	b1ab      	cbz	r3, 11f6 <strcmp+0x46>
    11ca:	f814 2b01 	ldrb.w	r2, [r4], #1
    11ce:	b122      	cbz	r2, 11da <strcmp+0x2a>
		if (*s1<*s2){
    11d0:	4293      	cmp	r3, r2
    11d2:	d30d      	bcc.n	11f0 <strcmp+0x40>
		}else if (*s1>*s2){
    11d4:	d9f5      	bls.n	11c2 <strcmp+0x12>
			result=1;
    11d6:	2001      	movs	r0, #1
    11d8:	e003      	b.n	11e2 <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    11da:	7808      	ldrb	r0, [r1, #0]
    11dc:	fab0 f080 	clz	r0, r0
    11e0:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    11e2:	bc10      	pop	{r4}
    11e4:	4770      	bx	lr
			result=-1;
    11e6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    11ea:	e7fa      	b.n	11e2 <strcmp+0x32>
			result=1;
    11ec:	2001      	movs	r0, #1
    11ee:	e7f8      	b.n	11e2 <strcmp+0x32>
			result=-1;
    11f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    11f4:	e7f5      	b.n	11e2 <strcmp+0x32>
		if (!*s1 && *s2){
    11f6:	7808      	ldrb	r0, [r1, #0]
    11f8:	3000      	adds	r0, #0
    11fa:	bf18      	it	ne
    11fc:	2001      	movne	r0, #1
    11fe:	4240      	negs	r0, r0
    1200:	e7ef      	b.n	11e2 <strcmp+0x32>

00001202 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1202:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    1206:	b2db      	uxtb	r3, r3
    1208:	2b19      	cmp	r3, #25
    120a:	d906      	bls.n	121a <alpha+0x18>
    120c:	3841      	subs	r0, #65	; 0x41
    120e:	b2c0      	uxtb	r0, r0
    1210:	2819      	cmp	r0, #25
    1212:	bf8c      	ite	hi
    1214:	2000      	movhi	r0, #0
    1216:	2001      	movls	r0, #1
    1218:	4770      	bx	lr
    121a:	2001      	movs	r0, #1
}
    121c:	4770      	bx	lr

0000121e <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    121e:	3830      	subs	r0, #48	; 0x30
    1220:	b2c0      	uxtb	r0, r0
}
    1222:	2809      	cmp	r0, #9
    1224:	bf8c      	ite	hi
    1226:	2000      	movhi	r0, #0
    1228:	2001      	movls	r0, #1
    122a:	4770      	bx	lr

0000122c <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    122c:	2860      	cmp	r0, #96	; 0x60
    122e:	bf84      	itt	hi
    1230:	3820      	subhi	r0, #32
    1232:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1234:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1238:	b2db      	uxtb	r3, r3
    123a:	2b09      	cmp	r3, #9
    123c:	d906      	bls.n	124c <hexdigit+0x20>
    123e:	3841      	subs	r0, #65	; 0x41
    1240:	b2c0      	uxtb	r0, r0
    1242:	2805      	cmp	r0, #5
    1244:	bf8c      	ite	hi
    1246:	2000      	movhi	r0, #0
    1248:	2001      	movls	r0, #1
    124a:	4770      	bx	lr
    124c:	2001      	movs	r0, #1
}
    124e:	4770      	bx	lr

00001250 <atoi>:

int atoi(const char *str){
    1250:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1254:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1256:	7803      	ldrb	r3, [r0, #0]
    1258:	2b20      	cmp	r3, #32
    125a:	d103      	bne.n	1264 <atoi+0x14>
    125c:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1260:	2b20      	cmp	r3, #32
    1262:	d0fb      	beq.n	125c <atoi+0xc>
	if (*str=='-'){
    1264:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    1266:	bf06      	itte	eq
    1268:	3501      	addeq	r5, #1
		sign=-1;
    126a:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    126e:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    1272:	782b      	ldrb	r3, [r5, #0]
    1274:	2b24      	cmp	r3, #36	; 0x24
    1276:	d005      	beq.n	1284 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1278:	2b30      	cmp	r3, #48	; 0x30
    127a:	d00a      	beq.n	1292 <atoi+0x42>
	int n=0,sign=1,base=10;
    127c:	270a      	movs	r7, #10
    127e:	3d01      	subs	r5, #1
    1280:	2600      	movs	r6, #0
    1282:	e026      	b.n	12d2 <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    1284:	7868      	ldrb	r0, [r5, #1]
    1286:	f7ff ffd1 	bl	122c <hexdigit>
    128a:	b160      	cbz	r0, 12a6 <atoi+0x56>
		str++;
    128c:	3501      	adds	r5, #1
		base=16;
    128e:	2710      	movs	r7, #16
		str++;
    1290:	e7f5      	b.n	127e <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1292:	786b      	ldrb	r3, [r5, #1]
    1294:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    1298:	2b58      	cmp	r3, #88	; 0x58
    129a:	d001      	beq.n	12a0 <atoi+0x50>
	int n=0,sign=1,base=10;
    129c:	270a      	movs	r7, #10
    129e:	e7ee      	b.n	127e <atoi+0x2e>
		base=16;
		str+=2;
    12a0:	3502      	adds	r5, #2
		base=16;
    12a2:	2710      	movs	r7, #16
    12a4:	e7eb      	b.n	127e <atoi+0x2e>
	int n=0,sign=1,base=10;
    12a6:	270a      	movs	r7, #10
    12a8:	e7e9      	b.n	127e <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12aa:	4620      	mov	r0, r4
    12ac:	f7ff ffbe 	bl	122c <hexdigit>
    12b0:	3000      	adds	r0, #0
    12b2:	bf18      	it	ne
    12b4:	2001      	movne	r0, #1
    12b6:	b1d0      	cbz	r0, 12ee <atoi+0x9e>
		if (c>='a'){c-=32;}
    12b8:	2c60      	cmp	r4, #96	; 0x60
    12ba:	bf84      	itt	hi
    12bc:	3c20      	subhi	r4, #32
    12be:	b2e4      	uxtbhi	r4, r4
		c-='0';
    12c0:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    12c4:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    12c6:	2b09      	cmp	r3, #9
    12c8:	bf84      	itt	hi
    12ca:	3c37      	subhi	r4, #55	; 0x37
    12cc:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    12ce:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12d2:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    12d6:	2c00      	cmp	r4, #0
    12d8:	d0e7      	beq.n	12aa <atoi+0x5a>
    12da:	2f0a      	cmp	r7, #10
    12dc:	d1e5      	bne.n	12aa <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    12de:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    12e2:	b2c0      	uxtb	r0, r0
    12e4:	2809      	cmp	r0, #9
    12e6:	bf8c      	ite	hi
    12e8:	2000      	movhi	r0, #0
    12ea:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12ec:	e7e3      	b.n	12b6 <atoi+0x66>
		str++;
	}
	return sign*n;
}
    12ee:	fb08 f006 	mul.w	r0, r8, r6
    12f2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000012f6 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    12f6:	b13a      	cbz	r2, 1308 <move+0x12>
    12f8:	3901      	subs	r1, #1
    12fa:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    12fc:	f810 3b01 	ldrb.w	r3, [r0], #1
    1300:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1304:	4290      	cmp	r0, r2
    1306:	d1f9      	bne.n	12fc <move+0x6>
    1308:	4770      	bx	lr

0000130a <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    130a:	7803      	ldrb	r3, [r0, #0]
    130c:	b13b      	cbz	r3, 131e <strlen+0x14>
    130e:	4603      	mov	r3, r0
    1310:	2000      	movs	r0, #0
    1312:	3001      	adds	r0, #1
    1314:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1318:	2a00      	cmp	r2, #0
    131a:	d1fa      	bne.n	1312 <strlen+0x8>
    131c:	4770      	bx	lr
	int ll=0;
    131e:	2000      	movs	r0, #0
	return ll;
}
    1320:	4770      	bx	lr

00001322 <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1322:	b121      	cbz	r1, 132e <fill+0xc>
    1324:	1841      	adds	r1, r0, r1
    1326:	f800 2b01 	strb.w	r2, [r0], #1
    132a:	4288      	cmp	r0, r1
    132c:	d1fb      	bne.n	1326 <fill+0x4>
    132e:	4770      	bx	lr

00001330 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1330:	3861      	subs	r0, #97	; 0x61
    1332:	b2c0      	uxtb	r0, r0
}
    1334:	2819      	cmp	r0, #25
    1336:	bf8c      	ite	hi
    1338:	2000      	movhi	r0, #0
    133a:	2001      	movls	r0, #1
    133c:	4770      	bx	lr

0000133e <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    133e:	3841      	subs	r0, #65	; 0x41
    1340:	b2c0      	uxtb	r0, r0
}
    1342:	2819      	cmp	r0, #25
    1344:	bf8c      	ite	hi
    1346:	2000      	movhi	r0, #0
    1348:	2001      	movls	r0, #1
    134a:	4770      	bx	lr

0000134c <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    134c:	7803      	ldrb	r3, [r0, #0]
    134e:	b153      	cbz	r3, 1366 <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1350:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1354:	b2d2      	uxtb	r2, r2
    1356:	2a19      	cmp	r2, #25
    1358:	bf9c      	itt	ls
    135a:	3b20      	subls	r3, #32
    135c:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    135e:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    1362:	2b00      	cmp	r3, #0
    1364:	d1f4      	bne.n	1350 <uppercase+0x4>
    1366:	4770      	bx	lr

00001368 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1368:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    136a:	1844      	adds	r4, r0, r1
    136c:	5c43      	ldrb	r3, [r0, r1]
    136e:	b153      	cbz	r3, 1386 <scan+0x1e>
    1370:	429a      	cmp	r2, r3
    1372:	d00a      	beq.n	138a <scan+0x22>
    1374:	4608      	mov	r0, r1
    1376:	3001      	adds	r0, #1
    1378:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    137c:	b10b      	cbz	r3, 1382 <scan+0x1a>
    137e:	4293      	cmp	r3, r2
    1380:	d1f9      	bne.n	1376 <scan+0xe>
	return start;
}
    1382:	bc10      	pop	{r4}
    1384:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    1386:	4608      	mov	r0, r1
    1388:	e7fb      	b.n	1382 <scan+0x1a>
    138a:	4608      	mov	r0, r1
	return start;
    138c:	e7f9      	b.n	1382 <scan+0x1a>

0000138e <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    138e:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    1390:	1844      	adds	r4, r0, r1
    1392:	5c43      	ldrb	r3, [r0, r1]
    1394:	b153      	cbz	r3, 13ac <skip+0x1e>
    1396:	429a      	cmp	r2, r3
    1398:	d10a      	bne.n	13b0 <skip+0x22>
    139a:	4608      	mov	r0, r1
    139c:	3001      	adds	r0, #1
    139e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    13a2:	b10b      	cbz	r3, 13a8 <skip+0x1a>
    13a4:	4293      	cmp	r3, r2
    13a6:	d0f9      	beq.n	139c <skip+0xe>
	return start;
}
    13a8:	bc10      	pop	{r4}
    13aa:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    13ac:	4608      	mov	r0, r1
    13ae:	e7fb      	b.n	13a8 <skip+0x1a>
    13b0:	4608      	mov	r0, r1
	return start;
    13b2:	e7f9      	b.n	13a8 <skip+0x1a>

000013b4 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    13b4:	b538      	push	{r3, r4, r5, lr}
    13b6:	4604      	mov	r4, r0
    13b8:	460d      	mov	r5, r1
	s1+=strlen(s1);
    13ba:	f7ff ffa6 	bl	130a <strlen>
    13be:	4420      	add	r0, r4
	while (*s2){
    13c0:	782b      	ldrb	r3, [r5, #0]
    13c2:	b133      	cbz	r3, 13d2 <strcat+0x1e>
    13c4:	4629      	mov	r1, r5
		*s1++=*s2++;
    13c6:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    13ca:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    13ce:	2b00      	cmp	r3, #0
    13d0:	d1f9      	bne.n	13c6 <strcat+0x12>
	}
	*s1=0;
    13d2:	2300      	movs	r3, #0
    13d4:	7003      	strb	r3, [r0, #0]
	return s1;
}
    13d6:	bd38      	pop	{r3, r4, r5, pc}

000013d8 <itoa>:

char *itoa(int n,char *buffer,int base){
    13d8:	b5f0      	push	{r4, r5, r6, r7, lr}
    13da:	b085      	sub	sp, #20
    13dc:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    13de:	2a0a      	cmp	r2, #10
    13e0:	d033      	beq.n	144a <itoa+0x72>
	int i=14,sign=0;
    13e2:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    13e4:	2300      	movs	r3, #0
    13e6:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    13ea:	2320      	movs	r3, #32
    13ec:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    13f0:	b390      	cbz	r0, 1458 <itoa+0x80>
    13f2:	f10d 060d 	add.w	r6, sp, #13
    13f6:	250e      	movs	r5, #14
		d=n%base+'0';
    13f8:	fb90 f3f2 	sdiv	r3, r0, r2
    13fc:	fb02 0313 	mls	r3, r2, r3, r0
    1400:	b2db      	uxtb	r3, r3
    1402:	f103 0130 	add.w	r1, r3, #48	; 0x30
    1406:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1408:	2939      	cmp	r1, #57	; 0x39
    140a:	bf84      	itt	hi
    140c:	3337      	addhi	r3, #55	; 0x37
    140e:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1410:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1414:	3d01      	subs	r5, #1
    1416:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    141a:	2800      	cmp	r0, #0
    141c:	d1ec      	bne.n	13f8 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    141e:	2d0e      	cmp	r5, #14
    1420:	d01a      	beq.n	1458 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    1422:	2a0a      	cmp	r2, #10
    1424:	d01d      	beq.n	1462 <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    1426:	2a10      	cmp	r2, #16
    1428:	d105      	bne.n	1436 <itoa+0x5e>
    142a:	3d01      	subs	r5, #1
    142c:	ab04      	add	r3, sp, #16
    142e:	442b      	add	r3, r5
    1430:	2224      	movs	r2, #36	; 0x24
    1432:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    1436:	f1c5 0210 	rsb	r2, r5, #16
    143a:	4621      	mov	r1, r4
    143c:	eb0d 0005 	add.w	r0, sp, r5
    1440:	f7ff ff59 	bl	12f6 <move>
	return buffer;
    1444:	4620      	mov	r0, r4
    1446:	b005      	add	sp, #20
    1448:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    144a:	2800      	cmp	r0, #0
    144c:	db01      	blt.n	1452 <itoa+0x7a>
	int i=14,sign=0;
    144e:	2700      	movs	r7, #0
    1450:	e7c8      	b.n	13e4 <itoa+0xc>
		n=-n;
    1452:	4240      	negs	r0, r0
		sign=1;
    1454:	2701      	movs	r7, #1
    1456:	e7c5      	b.n	13e4 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1458:	2330      	movs	r3, #48	; 0x30
    145a:	f88d 300d 	strb.w	r3, [sp, #13]
    145e:	250d      	movs	r5, #13
    1460:	e7df      	b.n	1422 <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    1462:	2f00      	cmp	r7, #0
    1464:	d0e7      	beq.n	1436 <itoa+0x5e>
    1466:	3d01      	subs	r5, #1
    1468:	ab04      	add	r3, sp, #16
    146a:	442b      	add	r3, r5
    146c:	222d      	movs	r2, #45	; 0x2d
    146e:	f803 2c10 	strb.w	r2, [r3, #-16]
    1472:	e7e0      	b.n	1436 <itoa+0x5e>

00001474 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    1474:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    1476:	08cb      	lsrs	r3, r1, #3
    1478:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    147c:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    147e:	f001 011c 	and.w	r1, r1, #28
    1482:	250f      	movs	r5, #15
    1484:	408d      	lsls	r5, r1
    1486:	ea24 0405 	bic.w	r4, r4, r5
    148a:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    148e:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    1492:	fa02 f101 	lsl.w	r1, r2, r1
    1496:	4321      	orrs	r1, r4
    1498:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    149c:	bc30      	pop	{r4, r5}
    149e:	4770      	bx	lr

000014a0 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    14a0:	6880      	ldr	r0, [r0, #8]
    14a2:	2301      	movs	r3, #1
    14a4:	fa03 f101 	lsl.w	r1, r3, r1
}
    14a8:	4008      	ands	r0, r1
    14aa:	4770      	bx	lr

000014ac <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    14ac:	b93a      	cbnz	r2, 14be <write_pin+0x12>
    14ae:	68c3      	ldr	r3, [r0, #12]
    14b0:	2201      	movs	r2, #1
    14b2:	fa02 f101 	lsl.w	r1, r2, r1
    14b6:	ea23 0101 	bic.w	r1, r3, r1
    14ba:	60c1      	str	r1, [r0, #12]
    14bc:	4770      	bx	lr
    14be:	68c2      	ldr	r2, [r0, #12]
    14c0:	2301      	movs	r3, #1
    14c2:	fa03 f101 	lsl.w	r1, r3, r1
    14c6:	4311      	orrs	r1, r2
    14c8:	60c1      	str	r1, [r0, #12]
    14ca:	4770      	bx	lr

000014cc <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    14cc:	68c2      	ldr	r2, [r0, #12]
    14ce:	2301      	movs	r3, #1
    14d0:	fa03 f101 	lsl.w	r1, r3, r1
    14d4:	4051      	eors	r1, r2
    14d6:	60c1      	str	r1, [r0, #12]
    14d8:	4770      	bx	lr
	...

000014dc <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    14dc:	4b04      	ldr	r3, [pc, #16]	; (14f0 <set_palette+0x14>)
    14de:	7802      	ldrb	r2, [r0, #0]
    14e0:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    14e2:	7842      	ldrb	r2, [r0, #1]
    14e4:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    14e6:	7882      	ldrb	r2, [r0, #2]
    14e8:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    14ea:	78c2      	ldrb	r2, [r0, #3]
    14ec:	70da      	strb	r2, [r3, #3]
    14ee:	4770      	bx	lr
    14f0:	200001c4 	.word	0x200001c4

000014f4 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    14f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    14f6:	4604      	mov	r4, r0
    14f8:	460e      	mov	r6, r1
    14fa:	4615      	mov	r5, r2
    14fc:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    14fe:	f001 ffab 	bl	3458 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1502:	2c00      	cmp	r4, #0
    1504:	db38      	blt.n	1578 <gfx_blit+0x84>
    1506:	8983      	ldrh	r3, [r0, #12]
    1508:	429c      	cmp	r4, r3
    150a:	da37      	bge.n	157c <gfx_blit+0x88>
    150c:	2e00      	cmp	r6, #0
    150e:	db37      	blt.n	1580 <gfx_blit+0x8c>
    1510:	89c3      	ldrh	r3, [r0, #14]
    1512:	429e      	cmp	r6, r3
    1514:	da36      	bge.n	1584 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    1516:	7a03      	ldrb	r3, [r0, #8]
    1518:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    151c:	1052      	asrs	r2, r2, #1
    151e:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    1522:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    1526:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    152a:	bf06      	itte	eq
    152c:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    152e:	220f      	moveq	r2, #15
    mask=0xf0;
    1530:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    1532:	4b15      	ldr	r3, [pc, #84]	; (1588 <gfx_blit+0x94>)
    1534:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    1536:	2f04      	cmp	r7, #4
    1538:	d805      	bhi.n	1546 <gfx_blit+0x52>
    153a:	e8df f007 	tbb	[pc, r7]
    153e:	1003      	.short	0x1003
    1540:	1412      	.short	0x1412
    1542:	18          	.byte	0x18
    1543:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1544:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    1546:	4910      	ldr	r1, [pc, #64]	; (1588 <gfx_blit+0x94>)
    1548:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    154a:	ea23 0302 	bic.w	r3, r3, r2
    154e:	fab0 f080 	clz	r0, r0
    1552:	0940      	lsrs	r0, r0, #5
    1554:	4283      	cmp	r3, r0
    1556:	bf14      	ite	ne
    1558:	2000      	movne	r0, #0
    155a:	2001      	moveq	r0, #1
    155c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    155e:	4003      	ands	r3, r0
        break;
    1560:	e7f1      	b.n	1546 <gfx_blit+0x52>
        byte^=color;
    1562:	4043      	eors	r3, r0
        break;
    1564:	e7ef      	b.n	1546 <gfx_blit+0x52>
        byte^=~mask;
    1566:	43d4      	mvns	r4, r2
    1568:	405c      	eors	r4, r3
    156a:	b2e3      	uxtb	r3, r4
        break;
    156c:	e7eb      	b.n	1546 <gfx_blit+0x52>
        byte &=mask;
    156e:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    1572:	ea40 0304 	orr.w	r3, r0, r4
        break;
    1576:	e7e6      	b.n	1546 <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1578:	2000      	movs	r0, #0
    157a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    157c:	2000      	movs	r0, #0
    157e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1580:	2000      	movs	r0, #0
    1582:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1584:	2000      	movs	r0, #0
}
    1586:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1588:	20002704 	.word	0x20002704

0000158c <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    158c:	b570      	push	{r4, r5, r6, lr}
    158e:	4604      	mov	r4, r0
    1590:	460e      	mov	r6, r1
    1592:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1594:	f001 ff60 	bl	3458 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    1598:	2c00      	cmp	r4, #0
    159a:	db1d      	blt.n	15d8 <gfx_plot+0x4c>
    159c:	8983      	ldrh	r3, [r0, #12]
    159e:	429c      	cmp	r4, r3
    15a0:	da1a      	bge.n	15d8 <gfx_plot+0x4c>
    15a2:	2e00      	cmp	r6, #0
    15a4:	db18      	blt.n	15d8 <gfx_plot+0x4c>
    15a6:	89c3      	ldrh	r3, [r0, #14]
    15a8:	429e      	cmp	r6, r3
    15aa:	da15      	bge.n	15d8 <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    15ac:	7a03      	ldrb	r3, [r0, #8]
    15ae:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    15b2:	1052      	asrs	r2, r2, #1
    15b4:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    15b8:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    15bc:	4b07      	ldr	r3, [pc, #28]	; (15dc <gfx_plot+0x50>)
    15be:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    15c0:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    15c4:	bf19      	ittee	ne
    15c6:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    15ca:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    15cc:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    15d0:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    15d4:	4b01      	ldr	r3, [pc, #4]	; (15dc <gfx_plot+0x50>)
    15d6:	559d      	strb	r5, [r3, r6]
    15d8:	bd70      	pop	{r4, r5, r6, pc}
    15da:	bf00      	nop
    15dc:	20002704 	.word	0x20002704

000015e0 <gfx_cls>:
}

void gfx_cls(){
    15e0:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    15e2:	f001 ff39 	bl	3458 <get_video_params>
    15e6:	4b06      	ldr	r3, [pc, #24]	; (1600 <gfx_cls+0x20>)
    15e8:	4906      	ldr	r1, [pc, #24]	; (1604 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    15ea:	2200      	movs	r2, #0
    15ec:	f803 2f01 	strb.w	r2, [r3, #1]!
    15f0:	428b      	cmp	r3, r1
    15f2:	d1fb      	bne.n	15ec <gfx_cls+0xc>
    set_cursor(0,0);
    15f4:	2100      	movs	r1, #0
    15f6:	4608      	mov	r0, r1
    15f8:	f001 fba6 	bl	2d48 <set_cursor>
    15fc:	bd08      	pop	{r3, pc}
    15fe:	bf00      	nop
    1600:	20002703 	.word	0x20002703
    1604:	20004e63 	.word	0x20004e63

00001608 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    1608:	b570      	push	{r4, r5, r6, lr}
    160a:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    160c:	f001 ff24 	bl	3458 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    1610:	7a06      	ldrb	r6, [r0, #8]
    1612:	4b0f      	ldr	r3, [pc, #60]	; (1650 <gfx_scroll_up+0x48>)
    1614:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    1618:	89c2      	ldrh	r2, [r0, #14]
    161a:	1b12      	subs	r2, r2, r4
    161c:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    1620:	b1a6      	cbz	r6, 164c <gfx_scroll_up+0x44>
    1622:	4a0b      	ldr	r2, [pc, #44]	; (1650 <gfx_scroll_up+0x48>)
    1624:	199d      	adds	r5, r3, r6
    1626:	f813 1b01 	ldrb.w	r1, [r3], #1
    162a:	f802 1b01 	strb.w	r1, [r2], #1
    162e:	42ab      	cmp	r3, r5
    1630:	d1f9      	bne.n	1626 <gfx_scroll_up+0x1e>
    1632:	4b07      	ldr	r3, [pc, #28]	; (1650 <gfx_scroll_up+0x48>)
    1634:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    1636:	7a02      	ldrb	r2, [r0, #8]
    1638:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    163c:	b12a      	cbz	r2, 164a <gfx_scroll_up+0x42>
    163e:	441a      	add	r2, r3
    1640:	2100      	movs	r1, #0
    1642:	f803 1b01 	strb.w	r1, [r3], #1
    1646:	4293      	cmp	r3, r2
    1648:	d1fb      	bne.n	1642 <gfx_scroll_up+0x3a>
    164a:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    164c:	4b00      	ldr	r3, [pc, #0]	; (1650 <gfx_scroll_up+0x48>)
    164e:	e7f2      	b.n	1636 <gfx_scroll_up+0x2e>
    1650:	20002704 	.word	0x20002704

00001654 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1654:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1656:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1658:	f001 fefe 	bl	3458 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    165c:	89c3      	ldrh	r3, [r0, #14]
    165e:	7a04      	ldrb	r4, [r0, #8]
    1660:	1b5f      	subs	r7, r3, r5
    1662:	fb04 f707 	mul.w	r7, r4, r7
    1666:	490c      	ldr	r1, [pc, #48]	; (1698 <gfx_scroll_down+0x44>)
    1668:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    166a:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    166e:	b147      	cbz	r7, 1682 <gfx_scroll_down+0x2e>
    1670:	4619      	mov	r1, r3
    1672:	4e09      	ldr	r6, [pc, #36]	; (1698 <gfx_scroll_down+0x44>)
    1674:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1678:	f801 4d01 	strb.w	r4, [r1, #-1]!
    167c:	42b2      	cmp	r2, r6
    167e:	d1f9      	bne.n	1674 <gfx_scroll_down+0x20>
    1680:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    1682:	7a02      	ldrb	r2, [r0, #8]
    1684:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    1688:	b12a      	cbz	r2, 1696 <gfx_scroll_down+0x42>
    168a:	1a9a      	subs	r2, r3, r2
    168c:	2100      	movs	r1, #0
    168e:	f803 1d01 	strb.w	r1, [r3, #-1]!
    1692:	4293      	cmp	r3, r2
    1694:	d1fb      	bne.n	168e <gfx_scroll_down+0x3a>
    1696:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1698:	20002704 	.word	0x20002704

0000169c <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    169c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    16a0:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    16a2:	f001 fed9 	bl	3458 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    16a6:	89c3      	ldrh	r3, [r0, #14]
    16a8:	b30b      	cbz	r3, 16ee <gfx_scroll_left+0x52>
    16aa:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    16ae:	f8df 8044 	ldr.w	r8, [pc, #68]	; 16f4 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    16b2:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    16b4:	7a03      	ldrb	r3, [r0, #8]
    16b6:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    16ba:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    16bc:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    16be:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    16c2:	d009      	beq.n	16d8 <gfx_scroll_left+0x3c>
    16c4:	1e59      	subs	r1, r3, #1
    16c6:	eb02 050e 	add.w	r5, r2, lr
    16ca:	f812 4b01 	ldrb.w	r4, [r2], #1
    16ce:	f801 4f01 	strb.w	r4, [r1, #1]!
    16d2:	4295      	cmp	r5, r2
    16d4:	d1f9      	bne.n	16ca <gfx_scroll_left+0x2e>
    16d6:	4473      	add	r3, lr
        while (size--) *dest++=0;
    16d8:	b126      	cbz	r6, 16e4 <gfx_scroll_left+0x48>
    16da:	199a      	adds	r2, r3, r6
    16dc:	f803 7b01 	strb.w	r7, [r3], #1
    16e0:	4293      	cmp	r3, r2
    16e2:	d1fb      	bne.n	16dc <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    16e4:	f10c 0c01 	add.w	ip, ip, #1
    16e8:	89c3      	ldrh	r3, [r0, #14]
    16ea:	4563      	cmp	r3, ip
    16ec:	dce2      	bgt.n	16b4 <gfx_scroll_left+0x18>
    16ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    16f2:	bf00      	nop
    16f4:	20002704 	.word	0x20002704

000016f8 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    16f8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    16fc:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    16fe:	f001 feab 	bl	3458 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    1702:	89c3      	ldrh	r3, [r0, #14]
    1704:	b33b      	cbz	r3, 1756 <gfx_scroll_right+0x5e>
    1706:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    170a:	f8df 8050 	ldr.w	r8, [pc, #80]	; 175c <gfx_scroll_right+0x64>
        src=dest-n;
    170e:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    1712:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1714:	7a03      	ldrb	r3, [r0, #8]
    1716:	fb0e 3303 	mla	r3, lr, r3, r3
    171a:	4443      	add	r3, r8
        src=dest-n;
    171c:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    1720:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    1722:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    1726:	d00a      	beq.n	173e <gfx_scroll_right+0x46>
    1728:	4619      	mov	r1, r3
    172a:	eba2 0609 	sub.w	r6, r2, r9
    172e:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1732:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1736:	42b2      	cmp	r2, r6
    1738:	d1f9      	bne.n	172e <gfx_scroll_right+0x36>
    173a:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    173e:	b12d      	cbz	r5, 174c <gfx_scroll_right+0x54>
    1740:	eb03 020c 	add.w	r2, r3, ip
    1744:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1748:	429a      	cmp	r2, r3
    174a:	d1fb      	bne.n	1744 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    174c:	f10e 0e01 	add.w	lr, lr, #1
    1750:	89c3      	ldrh	r3, [r0, #14]
    1752:	4573      	cmp	r3, lr
    1754:	dcde      	bgt.n	1714 <gfx_scroll_right+0x1c>
    1756:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    175a:	bf00      	nop
    175c:	20002704 	.word	0x20002704

00001760 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1760:	b538      	push	{r3, r4, r5, lr}
    1762:	4604      	mov	r4, r0
    1764:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1766:	f001 fe77 	bl	3458 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    176a:	2c00      	cmp	r4, #0
    176c:	db18      	blt.n	17a0 <gfx_get_pixel+0x40>
    176e:	8983      	ldrh	r3, [r0, #12]
    1770:	429c      	cmp	r4, r3
    1772:	db01      	blt.n	1778 <gfx_get_pixel+0x18>
    1774:	20ff      	movs	r0, #255	; 0xff
    1776:	bd38      	pop	{r3, r4, r5, pc}
    1778:	2d00      	cmp	r5, #0
    177a:	db13      	blt.n	17a4 <gfx_get_pixel+0x44>
    177c:	89c3      	ldrh	r3, [r0, #14]
    177e:	429d      	cmp	r5, r3
    1780:	db01      	blt.n	1786 <gfx_get_pixel+0x26>
    1782:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    1784:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    1786:	7a03      	ldrb	r3, [r0, #8]
    1788:	1062      	asrs	r2, r4, #1
    178a:	4907      	ldr	r1, [pc, #28]	; (17a8 <gfx_get_pixel+0x48>)
    178c:	fb05 1503 	mla	r5, r5, r3, r1
    1790:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    1792:	f014 0f01 	tst.w	r4, #1
    1796:	bf08      	it	eq
    1798:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    179a:	f000 000f 	and.w	r0, r0, #15
    179e:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    17a0:	20ff      	movs	r0, #255	; 0xff
    17a2:	bd38      	pop	{r3, r4, r5, pc}
    17a4:	20ff      	movs	r0, #255	; 0xff
    17a6:	bd38      	pop	{r3, r4, r5, pc}
    17a8:	20002704 	.word	0x20002704

000017ac <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int /* __attribute__((optimize("-O1")))*/ gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    17ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    17b0:	b085      	sub	sp, #20
    17b2:	9001      	str	r0, [sp, #4]
    17b4:	460e      	mov	r6, r1
    17b6:	9100      	str	r1, [sp, #0]
    17b8:	9203      	str	r2, [sp, #12]
    17ba:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    17bc:	4a28      	ldr	r2, [pc, #160]	; (1860 <gfx_sprite+0xb4>)
    17be:	7911      	ldrb	r1, [r2, #4]
    17c0:	4a28      	ldr	r2, [pc, #160]	; (1864 <gfx_sprite+0xb8>)
    17c2:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    17c6:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    17c8:	440a      	add	r2, r1
    17ca:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    17cc:	4433      	add	r3, r6
    17ce:	9302      	str	r3, [sp, #8]
    17d0:	429e      	cmp	r6, r3
    int collision=0;
    17d2:	bfa8      	it	ge
    17d4:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    17d6:	da3a      	bge.n	184e <gfx_sprite+0xa2>
    17d8:	f100 0901 	add.w	r9, r0, #1
    17dc:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    17de:	f8df 8080 	ldr.w	r8, [pc, #128]	; 1860 <gfx_sprite+0xb4>
    17e2:	e02b      	b.n	183c <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    17e4:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    17e8:	f898 3004 	ldrb.w	r3, [r8, #4]
    17ec:	4a1d      	ldr	r2, [pc, #116]	; (1864 <gfx_sprite+0xb8>)
    17ee:	4413      	add	r3, r2
    17f0:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    17f2:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    17f6:	3601      	adds	r6, #1
    17f8:	4556      	cmp	r6, sl
    17fa:	d019      	beq.n	1830 <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    17fc:	f898 3004 	ldrb.w	r3, [r8, #4]
    1800:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    1802:	bf99      	ittee	ls
    1804:	fa45 f30b 	asrls.w	r3, r5, fp
    1808:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    180c:	fa45 f20b 	asrhi.w	r2, r5, fp
    1810:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    1812:	2302      	movs	r3, #2
    1814:	9900      	ldr	r1, [sp, #0]
    1816:	4630      	mov	r0, r6
    1818:	f7ff fe6c 	bl	14f4 <gfx_blit>
    181c:	4307      	orrs	r7, r0
            ppb--;
    181e:	3c01      	subs	r4, #1
            if (!ppb){
    1820:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1824:	d0de      	beq.n	17e4 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    1826:	f1cb 0308 	rsb	r3, fp, #8
    182a:	409d      	lsls	r5, r3
    182c:	b2ed      	uxtb	r5, r5
    182e:	e7e2      	b.n	17f6 <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    1830:	9b00      	ldr	r3, [sp, #0]
    1832:	3301      	adds	r3, #1
    1834:	9300      	str	r3, [sp, #0]
    1836:	9a02      	ldr	r2, [sp, #8]
    1838:	4293      	cmp	r3, r2
    183a:	d008      	beq.n	184e <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    183c:	9b03      	ldr	r3, [sp, #12]
    183e:	4619      	mov	r1, r3
    1840:	9a01      	ldr	r2, [sp, #4]
    1842:	eb01 0a02 	add.w	sl, r1, r2
    1846:	4552      	cmp	r2, sl
    1848:	daf2      	bge.n	1830 <gfx_sprite+0x84>
    184a:	9e01      	ldr	r6, [sp, #4]
    184c:	e7d6      	b.n	17fc <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    usart_putc(USART1,'\n');
    184e:	210a      	movs	r1, #10
    1850:	4805      	ldr	r0, [pc, #20]	; (1868 <gfx_sprite+0xbc>)
    1852:	f001 ff43 	bl	36dc <usart_putc>
    return collision;
}
    1856:	4638      	mov	r0, r7
    1858:	b005      	add	sp, #20
    185a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    185e:	bf00      	nop
    1860:	200001c4 	.word	0x200001c4
    1864:	00003bb0 	.word	0x00003bb0
    1868:	40013800 	.word	0x40013800

0000186c <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    186c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    1870:	f001 fdf2 	bl	3458 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    1874:	89c3      	ldrh	r3, [r0, #14]
    1876:	089e      	lsrs	r6, r3, #2
    1878:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    187c:	429e      	cmp	r6, r3
    187e:	da18      	bge.n	18b2 <color_bars+0x46>
    1880:	4607      	mov	r7, r0
static void color_bars(){
    1882:	f04f 0810 	mov.w	r8, #16
    1886:	4645      	mov	r5, r8
    1888:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    188a:	f014 0f07 	tst.w	r4, #7
				c--;
    188e:	bf04      	itt	eq
    1890:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    1894:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    1896:	462a      	mov	r2, r5
    1898:	4631      	mov	r1, r6
    189a:	4620      	mov	r0, r4
    189c:	f7ff fe76 	bl	158c <gfx_plot>
		for (x=0;x<128;x++){
    18a0:	3401      	adds	r4, #1
    18a2:	2c80      	cmp	r4, #128	; 0x80
    18a4:	d1f1      	bne.n	188a <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    18a6:	3601      	adds	r6, #1
    18a8:	89fb      	ldrh	r3, [r7, #14]
    18aa:	42b3      	cmp	r3, r6
    18ac:	dceb      	bgt.n	1886 <color_bars+0x1a>
    18ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    18b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000018b6 <vertical_bars>:
	}
		

}

static void vertical_bars(){
    18b6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    18b8:	f001 fdce 	bl	3458 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    18bc:	89c3      	ldrh	r3, [r0, #14]
    18be:	2b10      	cmp	r3, #16
    18c0:	dd12      	ble.n	18e8 <vertical_bars+0x32>
    18c2:	4605      	mov	r5, r0
    18c4:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    18c6:	260f      	movs	r6, #15
    18c8:	2700      	movs	r7, #0
    18ca:	4632      	mov	r2, r6
    18cc:	4621      	mov	r1, r4
    18ce:	4638      	mov	r0, r7
    18d0:	f7ff fe5c 	bl	158c <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    18d4:	89a8      	ldrh	r0, [r5, #12]
    18d6:	4632      	mov	r2, r6
    18d8:	4621      	mov	r1, r4
    18da:	3801      	subs	r0, #1
    18dc:	f7ff fe56 	bl	158c <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    18e0:	3401      	adds	r4, #1
    18e2:	89eb      	ldrh	r3, [r5, #14]
    18e4:	42a3      	cmp	r3, r4
    18e6:	dcf0      	bgt.n	18ca <vertical_bars+0x14>
    18e8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000018ea <horiz_bars>:
	}
}

static void horiz_bars(){
    18ea:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    18ec:	f001 fdb4 	bl	3458 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    18f0:	8983      	ldrh	r3, [r0, #12]
    18f2:	b193      	cbz	r3, 191a <horiz_bars+0x30>
    18f4:	4605      	mov	r5, r0
    18f6:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    18f8:	260f      	movs	r6, #15
    18fa:	4627      	mov	r7, r4
    18fc:	4632      	mov	r2, r6
    18fe:	4639      	mov	r1, r7
    1900:	4620      	mov	r0, r4
    1902:	f7ff fe43 	bl	158c <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    1906:	89e9      	ldrh	r1, [r5, #14]
    1908:	4632      	mov	r2, r6
    190a:	3901      	subs	r1, #1
    190c:	4620      	mov	r0, r4
    190e:	f7ff fe3d 	bl	158c <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    1912:	3401      	adds	r4, #1
    1914:	89ab      	ldrh	r3, [r5, #12]
    1916:	42a3      	cmp	r3, r4
    1918:	dcf0      	bgt.n	18fc <horiz_bars+0x12>
    191a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000191c <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    191c:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    191e:	f7ff fe5f 	bl	15e0 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1922:	4806      	ldr	r0, [pc, #24]	; (193c <display_menu+0x20>)
    1924:	f001 fa59 	bl	2dda <println>
    1928:	4805      	ldr	r0, [pc, #20]	; (1940 <display_menu+0x24>)
    192a:	f001 fa56 	bl	2dda <println>
    192e:	4805      	ldr	r0, [pc, #20]	; (1944 <display_menu+0x28>)
    1930:	f001 fa53 	bl	2dda <println>
    1934:	4804      	ldr	r0, [pc, #16]	; (1948 <display_menu+0x2c>)
    1936:	f001 fa50 	bl	2dda <println>
    193a:	bd08      	pop	{r3, pc}
    193c:	00003c8c 	.word	0x00003c8c
    1940:	00003c98 	.word	0x00003c98
    1944:	00003ca8 	.word	0x00003ca8
    1948:	00003cb4 	.word	0x00003cb4

0000194c <draw_balls>:
void draw_balls(){
    194c:	b510      	push	{r4, lr}
    194e:	b082      	sub	sp, #8
	frame_sync();
    1950:	f001 fd48 	bl	33e4 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1954:	4c0a      	ldr	r4, [pc, #40]	; (1980 <draw_balls+0x34>)
    1956:	6923      	ldr	r3, [r4, #16]
    1958:	9300      	str	r3, [sp, #0]
    195a:	2308      	movs	r3, #8
    195c:	461a      	mov	r2, r3
    195e:	6861      	ldr	r1, [r4, #4]
    1960:	6820      	ldr	r0, [r4, #0]
    1962:	f7ff ff23 	bl	17ac <gfx_sprite>
    1966:	69a1      	ldr	r1, [r4, #24]
    1968:	6960      	ldr	r0, [r4, #20]
    196a:	6a63      	ldr	r3, [r4, #36]	; 0x24
    196c:	9300      	str	r3, [sp, #0]
    196e:	2308      	movs	r3, #8
    1970:	461a      	mov	r2, r3
    1972:	f7ff ff1b 	bl	17ac <gfx_sprite>
	wait_sync_end();
    1976:	f001 fd3d 	bl	33f4 <wait_sync_end>
}
    197a:	b002      	add	sp, #8
    197c:	bd10      	pop	{r4, pc}
    197e:	bf00      	nop
    1980:	200026dc 	.word	0x200026dc

00001984 <isqrt>:
	if (n<2) return n;
    1984:	2801      	cmp	r0, #1
    1986:	dd0c      	ble.n	19a2 <isqrt+0x1e>
int isqrt(int n){
    1988:	b510      	push	{r4, lr}
    198a:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    198c:	1080      	asrs	r0, r0, #2
    198e:	f7ff fff9 	bl	1984 <isqrt>
    1992:	0040      	lsls	r0, r0, #1
	large = small + 1;
    1994:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    1996:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    199a:	4294      	cmp	r4, r2
    199c:	bfa8      	it	ge
    199e:	4618      	movge	r0, r3
}
    19a0:	bd10      	pop	{r4, pc}
    19a2:	4770      	bx	lr

000019a4 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    19a4:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    19a6:	6803      	ldr	r3, [r0, #0]
    19a8:	680a      	ldr	r2, [r1, #0]
    19aa:	6844      	ldr	r4, [r0, #4]
    19ac:	6848      	ldr	r0, [r1, #4]
    19ae:	fb00 f004 	mul.w	r0, r0, r4
    19b2:	fb02 0003 	mla	r0, r2, r3, r0
    19b6:	2800      	cmp	r0, #0
    19b8:	bfb8      	it	lt
    19ba:	4240      	neglt	r0, r0
    19bc:	f7ff ffe2 	bl	1984 <isqrt>
}
    19c0:	bd10      	pop	{r4, pc}

000019c2 <move_balls>:
void move_balls(){
    19c2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    19c4:	f001 fd48 	bl	3458 <get_video_params>
    19c8:	4b1c      	ldr	r3, [pc, #112]	; (1a3c <move_balls+0x7a>)
    19ca:	f103 0628 	add.w	r6, r3, #40	; 0x28
    19ce:	e005      	b.n	19dc <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    19d0:	4249      	negs	r1, r1
    19d2:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    19d4:	6055      	str	r5, [r2, #4]
    19d6:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    19d8:	42b3      	cmp	r3, r6
    19da:	d017      	beq.n	1a0c <move_balls+0x4a>
    19dc:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    19de:	681d      	ldr	r5, [r3, #0]
    19e0:	6899      	ldr	r1, [r3, #8]
    19e2:	186c      	adds	r4, r5, r1
    19e4:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    19e6:	f114 0f07 	cmn.w	r4, #7
    19ea:	db02      	blt.n	19f2 <move_balls+0x30>
    19ec:	8987      	ldrh	r7, [r0, #12]
    19ee:	42bc      	cmp	r4, r7
    19f0:	db02      	blt.n	19f8 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    19f2:	4249      	negs	r1, r1
    19f4:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    19f6:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    19f8:	6855      	ldr	r5, [r2, #4]
    19fa:	68d1      	ldr	r1, [r2, #12]
    19fc:	186c      	adds	r4, r5, r1
    19fe:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1a00:	2c0f      	cmp	r4, #15
    1a02:	dde5      	ble.n	19d0 <move_balls+0xe>
    1a04:	89c7      	ldrh	r7, [r0, #14]
    1a06:	42bc      	cmp	r4, r7
    1a08:	dbe5      	blt.n	19d6 <move_balls+0x14>
    1a0a:	e7e1      	b.n	19d0 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1a0c:	480c      	ldr	r0, [pc, #48]	; (1a40 <move_balls+0x7e>)
    1a0e:	4601      	mov	r1, r0
    1a10:	3814      	subs	r0, #20
    1a12:	f7ff ffc7 	bl	19a4 <distance>
    1a16:	2807      	cmp	r0, #7
    1a18:	d80f      	bhi.n	1a3a <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1a1a:	4b08      	ldr	r3, [pc, #32]	; (1a3c <move_balls+0x7a>)
    1a1c:	689a      	ldr	r2, [r3, #8]
    1a1e:	69db      	ldr	r3, [r3, #28]
    1a20:	429a      	cmp	r2, r3
    1a22:	d002      	beq.n	1a2a <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1a24:	4905      	ldr	r1, [pc, #20]	; (1a3c <move_balls+0x7a>)
    1a26:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1a28:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1a2a:	4b04      	ldr	r3, [pc, #16]	; (1a3c <move_balls+0x7a>)
    1a2c:	68da      	ldr	r2, [r3, #12]
    1a2e:	6a1b      	ldr	r3, [r3, #32]
    1a30:	429a      	cmp	r2, r3
    1a32:	d002      	beq.n	1a3a <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1a34:	4901      	ldr	r1, [pc, #4]	; (1a3c <move_balls+0x7a>)
    1a36:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1a38:	620a      	str	r2, [r1, #32]
    1a3a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1a3c:	200026dc 	.word	0x200026dc
    1a40:	200026f0 	.word	0x200026f0

00001a44 <init_balls>:
void init_balls(){
    1a44:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a48:	f001 fd06 	bl	3458 <get_video_params>
    1a4c:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a4e:	4b15      	ldr	r3, [pc, #84]	; (1aa4 <init_balls+0x60>)
    1a50:	6818      	ldr	r0, [r3, #0]
    1a52:	f7fe fca7 	bl	3a4 <srand>
    1a56:	4c14      	ldr	r4, [pc, #80]	; (1aa8 <init_balls+0x64>)
    1a58:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    1a5c:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    1a5e:	4f13      	ldr	r7, [pc, #76]	; (1aac <init_balls+0x68>)
    1a60:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    1a64:	f7fe fca4 	bl	3b0 <rand>
    1a68:	89ab      	ldrh	r3, [r5, #12]
    1a6a:	fb90 f2f3 	sdiv	r2, r0, r3
    1a6e:	fb02 0013 	mls	r0, r2, r3, r0
    1a72:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1a74:	f7fe fc9c 	bl	3b0 <rand>
    1a78:	89eb      	ldrh	r3, [r5, #14]
    1a7a:	3b10      	subs	r3, #16
    1a7c:	fb90 f2f3 	sdiv	r2, r0, r3
    1a80:	fb02 0013 	mls	r0, r2, r3, r0
    1a84:	3010      	adds	r0, #16
    1a86:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1a88:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    1a8a:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1a8c:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    1a8e:	2b00      	cmp	r3, #0
    1a90:	bf14      	ite	ne
    1a92:	4643      	movne	r3, r8
    1a94:	463b      	moveq	r3, r7
    1a96:	6123      	str	r3, [r4, #16]
    1a98:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1a9a:	454c      	cmp	r4, r9
    1a9c:	d1e2      	bne.n	1a64 <init_balls+0x20>
}
    1a9e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1aa2:	bf00      	nop
    1aa4:	20004e68 	.word	0x20004e68
    1aa8:	200026dc 	.word	0x200026dc
    1aac:	00003bc0 	.word	0x00003bc0

00001ab0 <main>:
		}
	}//while
}

//const uint8_t sample[16]={0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
void main(void){
    1ab0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1ab4:	b08b      	sub	sp, #44	; 0x2c
	RCC->CR|=RCC_CR_HSEON;
    1ab6:	4abb      	ldr	r2, [pc, #748]	; (1da4 <main+0x2f4>)
    1ab8:	6813      	ldr	r3, [r2, #0]
    1aba:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1abe:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1ac0:	4613      	mov	r3, r2
    1ac2:	681a      	ldr	r2, [r3, #0]
    1ac4:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1ac8:	d0fb      	beq.n	1ac2 <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1aca:	4bb6      	ldr	r3, [pc, #728]	; (1da4 <main+0x2f4>)
    1acc:	685a      	ldr	r2, [r3, #4]
    1ace:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1ad2:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1ad4:	681a      	ldr	r2, [r3, #0]
    1ad6:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1ada:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1adc:	681a      	ldr	r2, [r3, #0]
    1ade:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1ae2:	d0fb      	beq.n	1adc <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1ae4:	4ab0      	ldr	r2, [pc, #704]	; (1da8 <main+0x2f8>)
    1ae6:	6813      	ldr	r3, [r2, #0]
    1ae8:	f043 0312 	orr.w	r3, r3, #18
    1aec:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1aee:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1af2:	6853      	ldr	r3, [r2, #4]
    1af4:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1af8:	f043 0302 	orr.w	r3, r3, #2
    1afc:	6053      	str	r3, [r2, #4]
	set_sysclock();
//	config_systicks();
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1afe:	f640 031d 	movw	r3, #2077	; 0x81d
    1b02:	6193      	str	r3, [r2, #24]
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1b04:	4ca9      	ldr	r4, [pc, #676]	; (1dac <main+0x2fc>)
    1b06:	2206      	movs	r2, #6
    1b08:	210d      	movs	r1, #13
    1b0a:	4620      	mov	r0, r4
    1b0c:	f7ff fcb2 	bl	1474 <config_pin>
	_led_off();
    1b10:	68e3      	ldr	r3, [r4, #12]
    1b12:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1b16:	60e3      	str	r3, [r4, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_TX,ALT_PORT,FLOW_SOFT);
    1b18:	2200      	movs	r2, #0
    1b1a:	9201      	str	r2, [sp, #4]
    1b1c:	2301      	movs	r3, #1
    1b1e:	9300      	str	r3, [sp, #0]
    1b20:	2302      	movs	r3, #2
    1b22:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1b26:	48a2      	ldr	r0, [pc, #648]	; (1db0 <main+0x300>)
    1b28:	f001 fd4d 	bl	35c6 <usart_open_channel>
	gamepad_init();
    1b2c:	f7ff fa80 	bl	1030 <gamepad_init>
	tvout_init();
    1b30:	f001 fa42 	bl	2fb8 <tvout_init>
	sound_init();
    1b34:	f000 fe2a 	bl	278c <sound_init>
    1b38:	f10d 0417 	add.w	r4, sp, #23
    1b3c:	f10d 0527 	add.w	r5, sp, #39	; 0x27
	uint8_t sample[16];
	int i;
	for (i=0;i<16;i++)sample[i]=rand()&255;
    1b40:	f7fe fc36 	bl	3b0 <rand>
    1b44:	f804 0f01 	strb.w	r0, [r4, #1]!
    1b48:	42a5      	cmp	r5, r4
    1b4a:	d1f9      	bne.n	1b40 <main+0x90>
	load_sound_buffer((const uint8_t*)sample);
    1b4c:	a806      	add	r0, sp, #24
    1b4e:	f000 fe6c 	bl	282a <load_sound_buffer>
	gfx_cls();
    1b52:	f7ff fd45 	bl	15e0 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1b56:	f001 fc7f 	bl	3458 <get_video_params>
	display_menu();
    1b5a:	f7ff fedf 	bl	191c <display_menu>
	int i=0;
    1b5e:	2700      	movs	r7, #0
	print_int(0x20005000-(int)(&_TPA_START),10);
    1b60:	4b94      	ldr	r3, [pc, #592]	; (1db4 <main+0x304>)
    1b62:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1b66:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1b6a:	9305      	str	r3, [sp, #20]
    1b6c:	e16a      	b.n	1e44 <main+0x394>
			if (i<(MENU_ITEMS-1)) i++;
    1b6e:	2f02      	cmp	r7, #2
    1b70:	f300 8168 	bgt.w	1e44 <main+0x394>
    1b74:	3701      	adds	r7, #1
    1b76:	e165      	b.n	1e44 <main+0x394>
			switch(i){
    1b78:	2f03      	cmp	r7, #3
    1b7a:	f200 8161 	bhi.w	1e40 <main+0x390>
    1b7e:	e8df f017 	tbh	[pc, r7, lsl #1]
    1b82:	0004      	.short	0x0004
    1b84:	00f900af 	.word	0x00f900af
    1b88:	018c      	.short	0x018c
	count=games_count();
    1b8a:	f7ff fb01 	bl	1190 <games_count>
    1b8e:	9004      	str	r0, [sp, #16]
	set_video_mode(VM_BPCHIP);
    1b90:	2000      	movs	r0, #0
    1b92:	f001 fc37 	bl	3404 <set_video_mode>
	vparams=get_video_params();
    1b96:	f001 fc5f 	bl	3458 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1b9a:	89c3      	ldrh	r3, [r0, #14]
    1b9c:	08db      	lsrs	r3, r3, #3
    1b9e:	9303      	str	r3, [sp, #12]
    1ba0:	461e      	mov	r6, r3
	int i=0,first=0,count,rows,selected=1;
    1ba2:	f04f 0a01 	mov.w	sl, #1
	while ((r<rows) && games_list[first].size){
    1ba6:	f8df b214 	ldr.w	fp, [pc, #532]	; 1dbc <main+0x30c>
		if (selected<rows) first=0;else first=selected-rows+1;
    1baa:	4556      	cmp	r6, sl
    1bac:	bfda      	itte	le
    1bae:	ebaa 0906 	suble.w	r9, sl, r6
    1bb2:	f109 0901 	addle.w	r9, r9, #1
    1bb6:	46b9      	movgt	r9, r7
	set_cursor(0,0);
    1bb8:	2100      	movs	r1, #0
    1bba:	4608      	mov	r0, r1
    1bbc:	f001 f8c4 	bl	2d48 <set_cursor>
	print(" ********** GAMES **********");
    1bc0:	487d      	ldr	r0, [pc, #500]	; (1db8 <main+0x308>)
    1bc2:	f001 f8f5 	bl	2db0 <print>
	while ((r<rows) && games_list[first].size){
    1bc6:	9b03      	ldr	r3, [sp, #12]
    1bc8:	2b01      	cmp	r3, #1
    1bca:	d91f      	bls.n	1c0c <main+0x15c>
    1bcc:	ebc9 03c9 	rsb	r3, r9, r9, lsl #3
    1bd0:	eb0b 0383 	add.w	r3, fp, r3, lsl #2
    1bd4:	691b      	ldr	r3, [r3, #16]
    1bd6:	b1cb      	cbz	r3, 1c0c <main+0x15c>
    1bd8:	ebc9 04c9 	rsb	r4, r9, r9, lsl #3
    1bdc:	eb0b 0484 	add.w	r4, fp, r4, lsl #2
    1be0:	3401      	adds	r4, #1
    1be2:	2501      	movs	r5, #1
		put_char(' ');
    1be4:	f04f 0820 	mov.w	r8, #32
		new_line();
    1be8:	f001 f80c 	bl	2c04 <new_line>
		clear_line();
    1bec:	f001 f9c2 	bl	2f74 <clear_line>
		put_char(' ');
    1bf0:	4640      	mov	r0, r8
    1bf2:	f001 f845 	bl	2c80 <put_char>
		print(games_list[first].name);
    1bf6:	4620      	mov	r0, r4
    1bf8:	f001 f8da 	bl	2db0 <print>
		r++;
    1bfc:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1bfe:	42ae      	cmp	r6, r5
    1c00:	d004      	beq.n	1c0c <main+0x15c>
    1c02:	341c      	adds	r4, #28
    1c04:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1c08:	2b00      	cmp	r3, #0
    1c0a:	d1ed      	bne.n	1be8 <main+0x138>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1c0c:	ebaa 0109 	sub.w	r1, sl, r9
    1c10:	00c9      	lsls	r1, r1, #3
    1c12:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1c16:	2000      	movs	r0, #0
    1c18:	f001 f896 	bl	2d48 <set_cursor>
		put_char('>');
    1c1c:	203e      	movs	r0, #62	; 0x3e
    1c1e:	f001 f82f 	bl	2c80 <put_char>
		btn=btn_wait_any();
    1c22:	f7ff fa7b 	bl	111c <btn_wait_any>
    1c26:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1c28:	f7ff fa64 	bl	10f4 <btn_wait_up>
		switch(btn){
    1c2c:	2c04      	cmp	r4, #4
    1c2e:	d00e      	beq.n	1c4e <main+0x19e>
    1c30:	d905      	bls.n	1c3e <main+0x18e>
    1c32:	2c20      	cmp	r4, #32
    1c34:	d011      	beq.n	1c5a <main+0x1aa>
    1c36:	2c40      	cmp	r4, #64	; 0x40
    1c38:	f000 8102 	beq.w	1e40 <main+0x390>
    1c3c:	e7b5      	b.n	1baa <main+0xfa>
    1c3e:	2c02      	cmp	r4, #2
    1c40:	d1b3      	bne.n	1baa <main+0xfa>
			if (selected>1) selected--;
    1c42:	f1ba 0f01 	cmp.w	sl, #1
    1c46:	ddb0      	ble.n	1baa <main+0xfa>
    1c48:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1c4c:	e7ad      	b.n	1baa <main+0xfa>
			if (selected<count){
    1c4e:	9b04      	ldr	r3, [sp, #16]
    1c50:	4553      	cmp	r3, sl
    1c52:	ddaa      	ble.n	1baa <main+0xfa>
				selected++;
    1c54:	f10a 0a01 	add.w	sl, sl, #1
    1c58:	e7a7      	b.n	1baa <main+0xfa>
	run_game(selected-1);
    1c5a:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1c5e:	ebca 02ca 	rsb	r2, sl, sl, lsl #3
    1c62:	4b56      	ldr	r3, [pc, #344]	; (1dbc <main+0x30c>)
    1c64:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1c68:	2b01      	cmp	r3, #1
    1c6a:	bf14      	ite	ne
    1c6c:	2600      	movne	r6, #0
    1c6e:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1c72:	f8df 8148 	ldr.w	r8, [pc, #328]	; 1dbc <main+0x30c>
    1c76:	ea4f 05ca 	mov.w	r5, sl, lsl #3
    1c7a:	eb08 0482 	add.w	r4, r8, r2, lsl #2
    1c7e:	6922      	ldr	r2, [r4, #16]
    1c80:	494f      	ldr	r1, [pc, #316]	; (1dc0 <main+0x310>)
    1c82:	4431      	add	r1, r6
    1c84:	6960      	ldr	r0, [r4, #20]
    1c86:	f7ff fb36 	bl	12f6 <move>
	set_keymap(games_list[idx].keymap);
    1c8a:	69a0      	ldr	r0, [r4, #24]
    1c8c:	f7ff f9c4 	bl	1018 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1c90:	eba5 0a0a 	sub.w	sl, r5, sl
    1c94:	f818 002a 	ldrb.w	r0, [r8, sl, lsl #2]
    1c98:	f001 fbb4 	bl	3404 <set_video_mode>
	exit_code=chip_vm(addr,debug_print);
    1c9c:	4b49      	ldr	r3, [pc, #292]	; (1dc4 <main+0x314>)
    1c9e:	6819      	ldr	r1, [r3, #0]
    1ca0:	4630      	mov	r0, r6
    1ca2:	f7fe fb93 	bl	3cc <chip_vm>
    1ca6:	4604      	mov	r4, r0
	print("exit code: ");
    1ca8:	4847      	ldr	r0, [pc, #284]	; (1dc8 <main+0x318>)
    1caa:	f001 f881 	bl	2db0 <print>
	switch(exit_code){
    1cae:	2c03      	cmp	r4, #3
    1cb0:	d806      	bhi.n	1cc0 <main+0x210>
    1cb2:	e8df f004 	tbb	[pc, r4]
    1cb6:	0902      	.short	0x0902
    1cb8:	110d      	.short	0x110d
		print("CHIP CONTINUE");
    1cba:	4844      	ldr	r0, [pc, #272]	; (1dcc <main+0x31c>)
    1cbc:	f001 f878 	bl	2db0 <print>
	game_pause(120);
    1cc0:	2078      	movs	r0, #120	; 0x78
    1cc2:	f001 fbd3 	bl	346c <game_pause>
    1cc6:	e0bb      	b.n	1e40 <main+0x390>
		print("CHIP EXIT OK");
    1cc8:	4841      	ldr	r0, [pc, #260]	; (1dd0 <main+0x320>)
    1cca:	f001 f871 	bl	2db0 <print>
    1cce:	e7f7      	b.n	1cc0 <main+0x210>
		print("CHIP BAD OPCODE");
    1cd0:	4840      	ldr	r0, [pc, #256]	; (1dd4 <main+0x324>)
    1cd2:	f001 f86d 	bl	2db0 <print>
    1cd6:	e7f3      	b.n	1cc0 <main+0x210>
		print("CHIP BREAK");
    1cd8:	483f      	ldr	r0, [pc, #252]	; (1dd8 <main+0x328>)
    1cda:	f001 f869 	bl	2db0 <print>
    1cde:	e7ef      	b.n	1cc0 <main+0x210>
	gfx_cls();
    1ce0:	f7ff fc7e 	bl	15e0 <gfx_cls>
	print(" *** VM debug support ***\n");
    1ce4:	483d      	ldr	r0, [pc, #244]	; (1ddc <main+0x32c>)
    1ce6:	f001 f863 	bl	2db0 <print>
	print(" enable debug print\n");
    1cea:	483d      	ldr	r0, [pc, #244]	; (1de0 <main+0x330>)
    1cec:	f001 f860 	bl	2db0 <print>
	print(" disable debug print");
    1cf0:	483c      	ldr	r0, [pc, #240]	; (1de4 <main+0x334>)
    1cf2:	f001 f85d 	bl	2db0 <print>
	if (debug_print){
    1cf6:	4b33      	ldr	r3, [pc, #204]	; (1dc4 <main+0x314>)
    1cf8:	681b      	ldr	r3, [r3, #0]
    1cfa:	b313      	cbz	r3, 1d42 <main+0x292>
		set_cursor(0,CHAR_HEIGHT);
    1cfc:	2108      	movs	r1, #8
    1cfe:	2000      	movs	r0, #0
    1d00:	f001 f822 	bl	2d48 <set_cursor>
		put_char('*');
    1d04:	202a      	movs	r0, #42	; 0x2a
    1d06:	f000 ffbb 	bl	2c80 <put_char>
			set_cursor(0,CHAR_HEIGHT);
    1d0a:	2508      	movs	r5, #8
			debug_print=0;
    1d0c:	4c2d      	ldr	r4, [pc, #180]	; (1dc4 <main+0x314>)
		btn=btn_wait_any();
    1d0e:	f7ff fa05 	bl	111c <btn_wait_any>
		switch(btn){
    1d12:	2804      	cmp	r0, #4
    1d14:	d01d      	beq.n	1d52 <main+0x2a2>
    1d16:	2820      	cmp	r0, #32
    1d18:	f000 8092 	beq.w	1e40 <main+0x390>
    1d1c:	2802      	cmp	r0, #2
    1d1e:	d1f6      	bne.n	1d0e <main+0x25e>
			set_cursor(0,2*CHAR_HEIGHT);
    1d20:	2110      	movs	r1, #16
    1d22:	2000      	movs	r0, #0
    1d24:	f001 f810 	bl	2d48 <set_cursor>
			put_char(' ');
    1d28:	2020      	movs	r0, #32
    1d2a:	f000 ffa9 	bl	2c80 <put_char>
			set_cursor(0,CHAR_HEIGHT);
    1d2e:	4629      	mov	r1, r5
    1d30:	2000      	movs	r0, #0
    1d32:	f001 f809 	bl	2d48 <set_cursor>
			put_char('*');
    1d36:	202a      	movs	r0, #42	; 0x2a
    1d38:	f000 ffa2 	bl	2c80 <put_char>
			debug_print=1;
    1d3c:	2301      	movs	r3, #1
    1d3e:	6023      	str	r3, [r4, #0]
    1d40:	e7e5      	b.n	1d0e <main+0x25e>
		set_cursor(0,2*CHAR_HEIGHT);
    1d42:	2110      	movs	r1, #16
    1d44:	2000      	movs	r0, #0
    1d46:	f000 ffff 	bl	2d48 <set_cursor>
		put_char('*');
    1d4a:	202a      	movs	r0, #42	; 0x2a
    1d4c:	f000 ff98 	bl	2c80 <put_char>
    1d50:	e7db      	b.n	1d0a <main+0x25a>
			set_cursor(0,CHAR_HEIGHT);
    1d52:	4629      	mov	r1, r5
    1d54:	2000      	movs	r0, #0
    1d56:	f000 fff7 	bl	2d48 <set_cursor>
			put_char(' ');
    1d5a:	2020      	movs	r0, #32
    1d5c:	f000 ff90 	bl	2c80 <put_char>
			set_cursor(0,2*CHAR_HEIGHT);
    1d60:	2110      	movs	r1, #16
    1d62:	2000      	movs	r0, #0
    1d64:	f000 fff0 	bl	2d48 <set_cursor>
			put_char('*');
    1d68:	202a      	movs	r0, #42	; 0x2a
    1d6a:	f000 ff89 	bl	2c80 <put_char>
			debug_print=0;
    1d6e:	2300      	movs	r3, #0
    1d70:	6023      	str	r3, [r4, #0]
    1d72:	e7cc      	b.n	1d0e <main+0x25e>
	set_video_mode(p);
    1d74:	2000      	movs	r0, #0
    1d76:	f001 fb45 	bl	3404 <set_video_mode>
	color_bars();
    1d7a:	f7ff fd77 	bl	186c <color_bars>
	vertical_bars();
    1d7e:	f7ff fd9a 	bl	18b6 <vertical_bars>
	horiz_bars();
    1d82:	f7ff fdb2 	bl	18ea <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1d86:	2110      	movs	r1, #16
    1d88:	4817      	ldr	r0, [pc, #92]	; (1de8 <main+0x338>)
    1d8a:	f001 f82c 	bl	2de6 <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1d8e:	210a      	movs	r1, #10
    1d90:	9805      	ldr	r0, [sp, #20]
    1d92:	f001 f828 	bl	2de6 <print_int>
	init_balls();
    1d96:	f7ff fe55 	bl	1a44 <init_balls>
	p=0;
    1d9a:	2400      	movs	r4, #0
		if (btn_query_down(KEY_RIGHT)){
    1d9c:	2510      	movs	r5, #16
				print("SCHIP mode\n128x64 mono");
    1d9e:	4e13      	ldr	r6, [pc, #76]	; (1dec <main+0x33c>)
    1da0:	e038      	b.n	1e14 <main+0x364>
    1da2:	bf00      	nop
    1da4:	40021000 	.word	0x40021000
    1da8:	40022000 	.word	0x40022000
    1dac:	40011000 	.word	0x40011000
    1db0:	40013800 	.word	0x40013800
    1db4:	20004e70 	.word	0x20004e70
    1db8:	00003cc0 	.word	0x00003cc0
    1dbc:	20000004 	.word	0x20000004
    1dc0:	200006d8 	.word	0x200006d8
    1dc4:	200006b4 	.word	0x200006b4
    1dc8:	00003ce0 	.word	0x00003ce0
    1dcc:	00003cec 	.word	0x00003cec
    1dd0:	00003cfc 	.word	0x00003cfc
    1dd4:	00003d0c 	.word	0x00003d0c
    1dd8:	00003d1c 	.word	0x00003d1c
    1ddc:	00003d28 	.word	0x00003d28
    1de0:	00003d44 	.word	0x00003d44
    1de4:	00003d5c 	.word	0x00003d5c
    1de8:	00004000 	.word	0x00004000
    1dec:	00003d94 	.word	0x00003d94
			p^=1;
    1df0:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1df4:	4620      	mov	r0, r4
    1df6:	f001 fb05 	bl	3404 <set_video_mode>
			switch(p){
    1dfa:	2c00      	cmp	r4, #0
    1dfc:	d043      	beq.n	1e86 <main+0x3d6>
    1dfe:	2c01      	cmp	r4, #1
    1e00:	d047      	beq.n	1e92 <main+0x3e2>
			vertical_bars();
    1e02:	f7ff fd58 	bl	18b6 <vertical_bars>
			horiz_bars();
    1e06:	f7ff fd70 	bl	18ea <horiz_bars>
			init_balls();
    1e0a:	f7ff fe1b 	bl	1a44 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1e0e:	4628      	mov	r0, r5
    1e10:	f7ff f970 	bl	10f4 <btn_wait_up>
		draw_balls();
    1e14:	f7ff fd9a 	bl	194c <draw_balls>
		draw_balls();
    1e18:	f7ff fd98 	bl	194c <draw_balls>
		move_balls();
    1e1c:	f7ff fdd1 	bl	19c2 <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1e20:	4628      	mov	r0, r5
    1e22:	f7ff f947 	bl	10b4 <btn_query_down>
    1e26:	2800      	cmp	r0, #0
    1e28:	d1e2      	bne.n	1df0 <main+0x340>
		}else if (btn_query_down(KEY_B)){
    1e2a:	2020      	movs	r0, #32
    1e2c:	f7ff f942 	bl	10b4 <btn_query_down>
    1e30:	2800      	cmp	r0, #0
    1e32:	d0ef      	beq.n	1e14 <main+0x364>
			btn_wait_up(KEY_B);
    1e34:	2020      	movs	r0, #32
    1e36:	f7ff f95d 	bl	10f4 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1e3a:	2000      	movs	r0, #0
    1e3c:	f001 fae2 	bl	3404 <set_video_mode>
			display_menu();
    1e40:	f7ff fd6c 	bl	191c <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1e44:	00fc      	lsls	r4, r7, #3
    1e46:	b2e4      	uxtb	r4, r4
    1e48:	4621      	mov	r1, r4
    1e4a:	2000      	movs	r0, #0
    1e4c:	f000 ff7c 	bl	2d48 <set_cursor>
		put_char('>');
    1e50:	203e      	movs	r0, #62	; 0x3e
    1e52:	f000 ff15 	bl	2c80 <put_char>
		btn=btn_wait_any();
    1e56:	f7ff f961 	bl	111c <btn_wait_any>
    1e5a:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1e5c:	f7ff f94a 	bl	10f4 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1e60:	4621      	mov	r1, r4
    1e62:	2000      	movs	r0, #0
    1e64:	f000 ff70 	bl	2d48 <set_cursor>
		put_char(' ');
    1e68:	2020      	movs	r0, #32
    1e6a:	f000 ff09 	bl	2c80 <put_char>
		switch(btn){
    1e6e:	2d04      	cmp	r5, #4
    1e70:	f43f ae7d 	beq.w	1b6e <main+0xbe>
    1e74:	2d20      	cmp	r5, #32
    1e76:	f43f ae7f 	beq.w	1b78 <main+0xc8>
    1e7a:	2d02      	cmp	r5, #2
    1e7c:	d1e2      	bne.n	1e44 <main+0x394>
			if (i) i--;
    1e7e:	2f00      	cmp	r7, #0
    1e80:	d0e0      	beq.n	1e44 <main+0x394>
    1e82:	3f01      	subs	r7, #1
    1e84:	e7de      	b.n	1e44 <main+0x394>
				print("BPCHIP mode\n180x112 16 colors");
    1e86:	482c      	ldr	r0, [pc, #176]	; (1f38 <main+0x488>)
    1e88:	f000 ff92 	bl	2db0 <print>
				color_bars();
    1e8c:	f7ff fcee 	bl	186c <color_bars>
    1e90:	e7b7      	b.n	1e02 <main+0x352>
				print("SCHIP mode\n128x64 mono");
    1e92:	4630      	mov	r0, r6
    1e94:	f000 ff8c 	bl	2db0 <print>
    1e98:	e7b3      	b.n	1e02 <main+0x352>
	gfx_cls();
    1e9a:	f7ff fba1 	bl	15e0 <gfx_cls>
	print("press buttons\n");
    1e9e:	4827      	ldr	r0, [pc, #156]	; (1f3c <main+0x48c>)
    1ea0:	f000 ff86 	bl	2db0 <print>
		tone(freq,3);
    1ea4:	2503      	movs	r5, #3
			freq=493;
    1ea6:	f240 18ed 	movw	r8, #493	; 0x1ed
			freq=622;
    1eaa:	f240 266e 	movw	r6, #622	; 0x26e
    1eae:	e019      	b.n	1ee4 <main+0x434>
		switch(key){
    1eb0:	2802      	cmp	r0, #2
    1eb2:	d02e      	beq.n	1f12 <main+0x462>
    1eb4:	2804      	cmp	r0, #4
    1eb6:	d00e      	beq.n	1ed6 <main+0x426>
    1eb8:	2801      	cmp	r0, #1
    1eba:	d024      	beq.n	1f06 <main+0x456>
		tone(freq,3);
    1ebc:	4629      	mov	r1, r5
    1ebe:	9802      	ldr	r0, [sp, #8]
    1ec0:	f000 fc7e 	bl	27c0 <tone>
	while (key!=KEY_B){
    1ec4:	2c20      	cmp	r4, #32
    1ec6:	d10d      	bne.n	1ee4 <main+0x434>
    1ec8:	e02f      	b.n	1f2a <main+0x47a>
		switch(key){
    1eca:	2810      	cmp	r0, #16
    1ecc:	d1f6      	bne.n	1ebc <main+0x40c>
			freq=523;
    1ece:	f240 230b 	movw	r3, #523	; 0x20b
    1ed2:	9302      	str	r3, [sp, #8]
    1ed4:	e002      	b.n	1edc <main+0x42c>
			freq=466;
    1ed6:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    1eda:	9302      	str	r3, [sp, #8]
		tone(freq,3);
    1edc:	4629      	mov	r1, r5
    1ede:	9802      	ldr	r0, [sp, #8]
    1ee0:	f000 fc6e 	bl	27c0 <tone>
		key=btn_wait_any();
    1ee4:	f7ff f91a 	bl	111c <btn_wait_any>
    1ee8:	4604      	mov	r4, r0
		switch(key){
    1eea:	2808      	cmp	r0, #8
    1eec:	d015      	beq.n	1f1a <main+0x46a>
    1eee:	d9df      	bls.n	1eb0 <main+0x400>
    1ef0:	2820      	cmp	r0, #32
    1ef2:	d015      	beq.n	1f20 <main+0x470>
    1ef4:	d9e9      	bls.n	1eca <main+0x41a>
    1ef6:	2840      	cmp	r0, #64	; 0x40
    1ef8:	d009      	beq.n	1f0e <main+0x45e>
    1efa:	2880      	cmp	r0, #128	; 0x80
    1efc:	d1de      	bne.n	1ebc <main+0x40c>
			freq=659;
    1efe:	f240 2393 	movw	r3, #659	; 0x293
    1f02:	9302      	str	r3, [sp, #8]
    1f04:	e7ea      	b.n	1edc <main+0x42c>
			freq=554;
    1f06:	f240 232a 	movw	r3, #554	; 0x22a
    1f0a:	9302      	str	r3, [sp, #8]
    1f0c:	e7e6      	b.n	1edc <main+0x42c>
			freq=622;
    1f0e:	9602      	str	r6, [sp, #8]
    1f10:	e7e4      	b.n	1edc <main+0x42c>
			freq=440;
    1f12:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    1f16:	9302      	str	r3, [sp, #8]
    1f18:	e7e0      	b.n	1edc <main+0x42c>
			freq=493;
    1f1a:	f8cd 8008 	str.w	r8, [sp, #8]
    1f1e:	e7dd      	b.n	1edc <main+0x42c>
		tone(freq,3);
    1f20:	2103      	movs	r1, #3
    1f22:	f240 204b 	movw	r0, #587	; 0x24b
    1f26:	f000 fc4b 	bl	27c0 <tone>
	btn_wait_up(key);
    1f2a:	2020      	movs	r0, #32
    1f2c:	f7ff f8e2 	bl	10f4 <btn_wait_up>
	sound_sampler(60);
    1f30:	203c      	movs	r0, #60	; 0x3c
    1f32:	f000 fc87 	bl	2844 <sound_sampler>
    1f36:	e783      	b.n	1e40 <main+0x390>
    1f38:	00003d74 	.word	0x00003d74
    1f3c:	00003dac 	.word	0x00003dac

00001f40 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f40:	283b      	cmp	r0, #59	; 0x3b
    1f42:	dc0d      	bgt.n	1f60 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1f44:	1143      	asrs	r3, r0, #5
    1f46:	009b      	lsls	r3, r3, #2
    1f48:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1f4c:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1f50:	6819      	ldr	r1, [r3, #0]
    1f52:	f000 001f 	and.w	r0, r0, #31
    1f56:	2201      	movs	r2, #1
    1f58:	fa02 f000 	lsl.w	r0, r2, r0
    1f5c:	4308      	orrs	r0, r1
    1f5e:	6018      	str	r0, [r3, #0]
    1f60:	4770      	bx	lr

00001f62 <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f62:	283b      	cmp	r0, #59	; 0x3b
    1f64:	dc08      	bgt.n	1f78 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1f66:	1142      	asrs	r2, r0, #5
    1f68:	f000 001f 	and.w	r0, r0, #31
    1f6c:	2301      	movs	r3, #1
    1f6e:	fa03 f000 	lsl.w	r0, r3, r0
    1f72:	4b02      	ldr	r3, [pc, #8]	; (1f7c <disable_interrupt+0x1a>)
    1f74:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1f78:	4770      	bx	lr
    1f7a:	bf00      	nop
    1f7c:	e000e180 	.word	0xe000e180

00001f80 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1f80:	283b      	cmp	r0, #59	; 0x3b
    1f82:	dc09      	bgt.n	1f98 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1f84:	1142      	asrs	r2, r0, #5
    1f86:	4b05      	ldr	r3, [pc, #20]	; (1f9c <get_pending+0x1c>)
    1f88:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1f8c:	f000 031f 	and.w	r3, r0, #31
    1f90:	2001      	movs	r0, #1
    1f92:	4098      	lsls	r0, r3
    1f94:	4010      	ands	r0, r2
    1f96:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1f98:	2000      	movs	r0, #0
}
    1f9a:	4770      	bx	lr
    1f9c:	e000e280 	.word	0xe000e280

00001fa0 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1fa0:	283b      	cmp	r0, #59	; 0x3b
    1fa2:	dc0c      	bgt.n	1fbe <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1fa4:	1143      	asrs	r3, r0, #5
    1fa6:	009b      	lsls	r3, r3, #2
    1fa8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1fac:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1fb0:	681a      	ldr	r2, [r3, #0]
    1fb2:	f000 031f 	and.w	r3, r0, #31
    1fb6:	2001      	movs	r0, #1
    1fb8:	4098      	lsls	r0, r3
    1fba:	4010      	ands	r0, r2
    1fbc:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1fbe:	2000      	movs	r0, #0
}
    1fc0:	4770      	bx	lr

00001fc2 <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1fc2:	283b      	cmp	r0, #59	; 0x3b
    1fc4:	dc0d      	bgt.n	1fe2 <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1fc6:	1143      	asrs	r3, r0, #5
    1fc8:	009b      	lsls	r3, r3, #2
    1fca:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1fce:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1fd2:	6819      	ldr	r1, [r3, #0]
    1fd4:	f000 001f 	and.w	r0, r0, #31
    1fd8:	2201      	movs	r2, #1
    1fda:	fa02 f000 	lsl.w	r0, r2, r0
    1fde:	4308      	orrs	r0, r1
    1fe0:	6018      	str	r0, [r3, #0]
    1fe2:	4770      	bx	lr

00001fe4 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    1fe4:	283b      	cmp	r0, #59	; 0x3b
    1fe6:	dc08      	bgt.n	1ffa <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    1fe8:	1142      	asrs	r2, r0, #5
    1fea:	f000 001f 	and.w	r0, r0, #31
    1fee:	2301      	movs	r3, #1
    1ff0:	fa03 f000 	lsl.w	r0, r3, r0
    1ff4:	4b01      	ldr	r3, [pc, #4]	; (1ffc <clear_pending+0x18>)
    1ff6:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1ffa:	4770      	bx	lr
    1ffc:	e000e280 	.word	0xe000e280

00002000 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    2000:	283b      	cmp	r0, #59	; 0x3b
    2002:	d90c      	bls.n	201e <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2004:	f100 030f 	add.w	r3, r0, #15
    2008:	2b0e      	cmp	r3, #14
    200a:	d807      	bhi.n	201c <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    200c:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    2010:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2014:	30fc      	adds	r0, #252	; 0xfc
    2016:	0109      	lsls	r1, r1, #4
    2018:	4b04      	ldr	r3, [pc, #16]	; (202c <set_int_priority+0x2c>)
    201a:	54c1      	strb	r1, [r0, r3]
    201c:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    201e:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    2022:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    2026:	0109      	lsls	r1, r1, #4
    2028:	7001      	strb	r1, [r0, #0]
    202a:	4770      	bx	lr
    202c:	e000ed18 	.word	0xe000ed18

00002030 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    2030:	f010 0f03 	tst.w	r0, #3
    2034:	d113      	bne.n	205e <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    2036:	4b0c      	ldr	r3, [pc, #48]	; (2068 <leap_year+0x38>)
    2038:	fba3 2300 	umull	r2, r3, r3, r0
    203c:	095b      	lsrs	r3, r3, #5
    203e:	2264      	movs	r2, #100	; 0x64
    2040:	fb02 0313 	mls	r3, r2, r3, r0
    2044:	b96b      	cbnz	r3, 2062 <leap_year+0x32>
    2046:	4b08      	ldr	r3, [pc, #32]	; (2068 <leap_year+0x38>)
    2048:	fba3 2300 	umull	r2, r3, r3, r0
    204c:	09db      	lsrs	r3, r3, #7
    204e:	f44f 72c8 	mov.w	r2, #400	; 0x190
    2052:	fb02 0013 	mls	r0, r2, r3, r0
    2056:	fab0 f080 	clz	r0, r0
    205a:	0940      	lsrs	r0, r0, #5
    205c:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    205e:	2000      	movs	r0, #0
    2060:	4770      	bx	lr
		return 1;
    2062:	2001      	movs	r0, #1
}
    2064:	4770      	bx	lr
    2066:	bf00      	nop
    2068:	51eb851f 	.word	0x51eb851f

0000206c <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    206c:	4b07      	ldr	r3, [pc, #28]	; (208c <sec_per_month+0x20>)
    206e:	5c5a      	ldrb	r2, [r3, r1]
    2070:	4b07      	ldr	r3, [pc, #28]	; (2090 <sec_per_month+0x24>)
    2072:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    2076:	2902      	cmp	r1, #2
    2078:	d001      	beq.n	207e <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    207a:	4618      	mov	r0, r3
    207c:	4770      	bx	lr
	if (month==2 && leap){
    207e:	2800      	cmp	r0, #0
    2080:	d0fb      	beq.n	207a <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    2082:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    2086:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    208a:	e7f6      	b.n	207a <sec_per_month+0xe>
    208c:	00003c00 	.word	0x00003c00
    2090:	00015180 	.word	0x00015180

00002094 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    2094:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2098:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    209a:	4b37      	ldr	r3, [pc, #220]	; (2178 <get_date_time+0xe4>)
    209c:	699a      	ldr	r2, [r3, #24]
    209e:	69dc      	ldr	r4, [r3, #28]
    20a0:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    20a4:	f240 70b2 	movw	r0, #1970	; 0x7b2
    20a8:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    20aa:	f7ff ffc1 	bl	2030 <leap_year>
    20ae:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20b0:	4d32      	ldr	r5, [pc, #200]	; (217c <get_date_time+0xe8>)
    20b2:	4f33      	ldr	r7, [pc, #204]	; (2180 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    20b4:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 2194 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20b8:	e00e      	b.n	20d8 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    20ba:	4444      	add	r4, r8
    20bc:	e005      	b.n	20ca <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20be:	42ac      	cmp	r4, r5
    20c0:	d90f      	bls.n	20e2 <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    20c2:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    20c6:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    20ca:	8930      	ldrh	r0, [r6, #8]
    20cc:	3001      	adds	r0, #1
    20ce:	b280      	uxth	r0, r0
    20d0:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    20d2:	f7ff ffad 	bl	2030 <leap_year>
    20d6:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20d8:	f1b9 0f00 	cmp.w	r9, #0
    20dc:	d1ef      	bne.n	20be <get_date_time+0x2a>
    20de:	42bc      	cmp	r4, r7
    20e0:	d8eb      	bhi.n	20ba <get_date_time+0x26>
	}//while
	dt->month=1;
    20e2:	8873      	ldrh	r3, [r6, #2]
    20e4:	2201      	movs	r2, #1
    20e6:	f362 1389 	bfi	r3, r2, #6, #4
    20ea:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    20ec:	f362 0345 	bfi	r3, r2, #1, #5
    20f0:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    20f2:	6833      	ldr	r3, [r6, #0]
    20f4:	f36f 3310 	bfc	r3, #12, #5
    20f8:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    20fa:	f36f 138b 	bfc	r3, #6, #6
    20fe:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    2100:	f36f 0305 	bfc	r3, #0, #6
    2104:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2106:	e005      	b.n	2114 <get_date_time+0x80>
		dt->month++;
    2108:	3501      	adds	r5, #1
    210a:	8873      	ldrh	r3, [r6, #2]
    210c:	f365 1389 	bfi	r3, r5, #6, #4
    2110:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    2112:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2114:	8875      	ldrh	r5, [r6, #2]
    2116:	f3c5 1583 	ubfx	r5, r5, #6, #4
    211a:	4629      	mov	r1, r5
    211c:	4648      	mov	r0, r9
    211e:	f7ff ffa5 	bl	206c <sec_per_month>
    2122:	4284      	cmp	r4, r0
    2124:	d8f0      	bhi.n	2108 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    2126:	4a17      	ldr	r2, [pc, #92]	; (2184 <get_date_time+0xf0>)
    2128:	fba2 3204 	umull	r3, r2, r2, r4
    212c:	0c12      	lsrs	r2, r2, #16
    212e:	1c51      	adds	r1, r2, #1
    2130:	78b3      	ldrb	r3, [r6, #2]
    2132:	f361 0345 	bfi	r3, r1, #1, #5
    2136:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    2138:	4b13      	ldr	r3, [pc, #76]	; (2188 <get_date_time+0xf4>)
    213a:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    213e:	4c13      	ldr	r4, [pc, #76]	; (218c <get_date_time+0xf8>)
    2140:	fba4 3402 	umull	r3, r4, r4, r2
    2144:	0ae4      	lsrs	r4, r4, #11
    2146:	6833      	ldr	r3, [r6, #0]
    2148:	f364 3310 	bfi	r3, r4, #12, #5
    214c:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    214e:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2152:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    2156:	4a0e      	ldr	r2, [pc, #56]	; (2190 <get_date_time+0xfc>)
    2158:	fba2 1204 	umull	r1, r2, r2, r4
    215c:	0952      	lsrs	r2, r2, #5
    215e:	f362 138b 	bfi	r3, r2, #6, #6
    2162:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    2164:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2168:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    216c:	f364 0305 	bfi	r3, r4, #0, #6
    2170:	7033      	strb	r3, [r6, #0]
    2172:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    2176:	bf00      	nop
    2178:	40002800 	.word	0x40002800
    217c:	01e284ff 	.word	0x01e284ff
    2180:	01e1337f 	.word	0x01e1337f
    2184:	c22e4507 	.word	0xc22e4507
    2188:	00015180 	.word	0x00015180
    218c:	91a2b3c5 	.word	0x91a2b3c5
    2190:	88888889 	.word	0x88888889
    2194:	fe1ecc80 	.word	0xfe1ecc80

00002198 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    2198:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    219c:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    219e:	8903      	ldrh	r3, [r0, #8]
    21a0:	f240 72b1 	movw	r2, #1969	; 0x7b1
    21a4:	4293      	cmp	r3, r2
    21a6:	d857      	bhi.n	2258 <set_date_time+0xc0>
    21a8:	f240 70b2 	movw	r0, #1970	; 0x7b2
    21ac:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    21b0:	f7ff ff3e 	bl	2030 <leap_year>
    21b4:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    21b6:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    21b8:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    21bc:	f3c6 1683 	ubfx	r6, r6, #6, #4
    21c0:	2e01      	cmp	r6, #1
    21c2:	d908      	bls.n	21d6 <set_date_time+0x3e>
    21c4:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    21c6:	4629      	mov	r1, r5
    21c8:	4638      	mov	r0, r7
    21ca:	f7ff ff4f 	bl	206c <sec_per_month>
    21ce:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    21d0:	3501      	adds	r5, #1
    21d2:	42b5      	cmp	r5, r6
    21d4:	d1f7      	bne.n	21c6 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    21d6:	f8d8 2000 	ldr.w	r2, [r8]
    21da:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    21de:	f8b8 2000 	ldrh.w	r2, [r8]
    21e2:	f3c2 1285 	ubfx	r2, r2, #6, #6
    21e6:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    21ea:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    21ec:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    21f0:	fb01 2203 	mla	r2, r1, r3, r2
    21f4:	f898 3000 	ldrb.w	r3, [r8]
    21f8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    21fc:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    21fe:	f898 3002 	ldrb.w	r3, [r8, #2]
    2202:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2206:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2208:	4928      	ldr	r1, [pc, #160]	; (22ac <set_date_time+0x114>)
    220a:	fb01 2303 	mla	r3, r1, r3, r2
    220e:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2210:	4a27      	ldr	r2, [pc, #156]	; (22b0 <set_date_time+0x118>)
    2212:	69d3      	ldr	r3, [r2, #28]
    2214:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2218:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    221a:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    221e:	6813      	ldr	r3, [r2, #0]
    2220:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2224:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2226:	4b23      	ldr	r3, [pc, #140]	; (22b4 <set_date_time+0x11c>)
    2228:	685a      	ldr	r2, [r3, #4]
    222a:	f042 0210 	orr.w	r2, r2, #16
    222e:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    2230:	0c22      	lsrs	r2, r4, #16
    2232:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    2234:	b2a4      	uxth	r4, r4
    2236:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2238:	685a      	ldr	r2, [r3, #4]
    223a:	f022 0210 	bic.w	r2, r2, #16
    223e:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    2240:	461a      	mov	r2, r3
    2242:	6853      	ldr	r3, [r2, #4]
    2244:	f013 0f20 	tst.w	r3, #32
    2248:	d0fb      	beq.n	2242 <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    224a:	4a1b      	ldr	r2, [pc, #108]	; (22b8 <set_date_time+0x120>)
    224c:	6813      	ldr	r3, [r2, #0]
    224e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2252:	6013      	str	r3, [r2, #0]
    2254:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    2258:	f640 023a 	movw	r2, #2106	; 0x83a
    225c:	4293      	cmp	r3, r2
    225e:	d90c      	bls.n	227a <set_date_time+0xe2>
    2260:	4616      	mov	r6, r2
    2262:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    2266:	4610      	mov	r0, r2
    2268:	f7ff fee2 	bl	2030 <leap_year>
    226c:	4607      	mov	r7, r0
    226e:	2400      	movs	r4, #0
    2270:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    2274:	f8df 9044 	ldr.w	r9, [pc, #68]	; 22bc <set_date_time+0x124>
    2278:	e00e      	b.n	2298 <set_date_time+0x100>
	leap=leap_year(dt->year);
    227a:	8906      	ldrh	r6, [r0, #8]
    227c:	4630      	mov	r0, r6
    227e:	f7ff fed7 	bl	2030 <leap_year>
    2282:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    2284:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2288:	429e      	cmp	r6, r3
    228a:	d8f0      	bhi.n	226e <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    228c:	2400      	movs	r4, #0
    228e:	e793      	b.n	21b8 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    2290:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    2292:	3501      	adds	r5, #1
    2294:	42b5      	cmp	r5, r6
    2296:	d28f      	bcs.n	21b8 <set_date_time+0x20>
		if (leap_year(i)){
    2298:	4628      	mov	r0, r5
    229a:	f7ff fec9 	bl	2030 <leap_year>
    229e:	2800      	cmp	r0, #0
    22a0:	d0f6      	beq.n	2290 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    22a2:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    22a6:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    22aa:	e7f2      	b.n	2292 <set_date_time+0xfa>
    22ac:	00015180 	.word	0x00015180
    22b0:	40021000 	.word	0x40021000
    22b4:	40002800 	.word	0x40002800
    22b8:	40007000 	.word	0x40007000
    22bc:	01e13380 	.word	0x01e13380

000022c0 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    22c0:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    22c2:	4b35      	ldr	r3, [pc, #212]	; (2398 <rtc_init+0xd8>)
    22c4:	685a      	ldr	r2, [r3, #4]
    22c6:	f64a 2355 	movw	r3, #43605	; 0xaa55
    22ca:	429a      	cmp	r2, r3
    22cc:	d05c      	beq.n	2388 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    22ce:	4b33      	ldr	r3, [pc, #204]	; (239c <rtc_init+0xdc>)
    22d0:	69da      	ldr	r2, [r3, #28]
    22d2:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    22d6:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    22d8:	4c31      	ldr	r4, [pc, #196]	; (23a0 <rtc_init+0xe0>)
    22da:	6822      	ldr	r2, [r4, #0]
    22dc:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    22e0:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    22e2:	6a1a      	ldr	r2, [r3, #32]
    22e4:	f042 0201 	orr.w	r2, r2, #1
    22e8:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    22ea:	461a      	mov	r2, r3
    22ec:	6a13      	ldr	r3, [r2, #32]
    22ee:	f013 0f02 	tst.w	r3, #2
    22f2:	d0fb      	beq.n	22ec <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    22f4:	4a29      	ldr	r2, [pc, #164]	; (239c <rtc_init+0xdc>)
    22f6:	6a13      	ldr	r3, [r2, #32]
    22f8:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    22fc:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    22fe:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2302:	6853      	ldr	r3, [r2, #4]
    2304:	f013 0f08 	tst.w	r3, #8
    2308:	d0fb      	beq.n	2302 <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    230a:	4a26      	ldr	r2, [pc, #152]	; (23a4 <rtc_init+0xe4>)
    230c:	6853      	ldr	r3, [r2, #4]
    230e:	f013 0f20 	tst.w	r3, #32
    2312:	d0fb      	beq.n	230c <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2314:	4a23      	ldr	r2, [pc, #140]	; (23a4 <rtc_init+0xe4>)
    2316:	6853      	ldr	r3, [r2, #4]
    2318:	f043 0310 	orr.w	r3, r3, #16
    231c:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    231e:	6853      	ldr	r3, [r2, #4]
    2320:	f013 0f20 	tst.w	r3, #32
    2324:	d0fb      	beq.n	231e <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    2326:	4a1f      	ldr	r2, [pc, #124]	; (23a4 <rtc_init+0xe4>)
    2328:	6813      	ldr	r3, [r2, #0]
    232a:	4319      	orrs	r1, r3
    232c:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    232e:	6853      	ldr	r3, [r2, #4]
    2330:	f013 0f20 	tst.w	r3, #32
    2334:	d0fb      	beq.n	232e <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    2336:	03c2      	lsls	r2, r0, #15
    2338:	481b      	ldr	r0, [pc, #108]	; (23a8 <rtc_init+0xe8>)
    233a:	fba0 3202 	umull	r3, r2, r0, r2
    233e:	0992      	lsrs	r2, r2, #6
    2340:	3a01      	subs	r2, #1
    2342:	b291      	uxth	r1, r2
    2344:	4b17      	ldr	r3, [pc, #92]	; (23a4 <rtc_init+0xe4>)
    2346:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    2348:	4619      	mov	r1, r3
    234a:	684b      	ldr	r3, [r1, #4]
    234c:	f013 0f20 	tst.w	r3, #32
    2350:	d0fb      	beq.n	234a <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    2352:	f3c2 4203 	ubfx	r2, r2, #16, #4
    2356:	4b13      	ldr	r3, [pc, #76]	; (23a4 <rtc_init+0xe4>)
    2358:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    235a:	461a      	mov	r2, r3
    235c:	6853      	ldr	r3, [r2, #4]
    235e:	f013 0f20 	tst.w	r3, #32
    2362:	d0fb      	beq.n	235c <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    2364:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2368:	4b0b      	ldr	r3, [pc, #44]	; (2398 <rtc_init+0xd8>)
    236a:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    236c:	4a0d      	ldr	r2, [pc, #52]	; (23a4 <rtc_init+0xe4>)
    236e:	6853      	ldr	r3, [r2, #4]
    2370:	f023 0310 	bic.w	r3, r3, #16
    2374:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    2376:	6853      	ldr	r3, [r2, #4]
    2378:	f013 0f20 	tst.w	r3, #32
    237c:	d0fb      	beq.n	2376 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    237e:	4a08      	ldr	r2, [pc, #32]	; (23a0 <rtc_init+0xe0>)
    2380:	6813      	ldr	r3, [r2, #0]
    2382:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2386:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    2388:	210f      	movs	r1, #15
    238a:	2003      	movs	r0, #3
    238c:	f7ff fe38 	bl	2000 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    2390:	2003      	movs	r0, #3
    2392:	f7ff fdd5 	bl	1f40 <enable_interrupt>
    2396:	bd10      	pop	{r4, pc}
    2398:	40006c00 	.word	0x40006c00
    239c:	40021000 	.word	0x40021000
    23a0:	40007000 	.word	0x40007000
    23a4:	40002800 	.word	0x40002800
    23a8:	10624dd3 	.word	0x10624dd3

000023ac <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    23ac:	4b06      	ldr	r3, [pc, #24]	; (23c8 <reset_backup_domain+0x1c>)
    23ae:	69da      	ldr	r2, [r3, #28]
    23b0:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    23b4:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    23b6:	6a1a      	ldr	r2, [r3, #32]
    23b8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    23bc:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    23be:	6a1a      	ldr	r2, [r3, #32]
    23c0:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    23c4:	621a      	str	r2, [r3, #32]
    23c6:	4770      	bx	lr
    23c8:	40021000 	.word	0x40021000

000023cc <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    23cc:	4a27      	ldr	r2, [pc, #156]	; (246c <rtc_clock_trim+0xa0>)
    23ce:	69d3      	ldr	r3, [r2, #28]
    23d0:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    23d4:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    23d6:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    23da:	6853      	ldr	r3, [r2, #4]
    23dc:	f013 0f08 	tst.w	r3, #8
    23e0:	d0fb      	beq.n	23da <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    23e2:	4a23      	ldr	r2, [pc, #140]	; (2470 <rtc_clock_trim+0xa4>)
    23e4:	6813      	ldr	r3, [r2, #0]
    23e6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    23ea:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    23ec:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    23f0:	6853      	ldr	r3, [r2, #4]
    23f2:	f043 0310 	orr.w	r3, r3, #16
    23f6:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    23f8:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    23fc:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    23fe:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2402:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2404:	b9b8      	cbnz	r0, 2436 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    2406:	2200      	movs	r2, #0
    2408:	4b1a      	ldr	r3, [pc, #104]	; (2474 <rtc_clock_trim+0xa8>)
    240a:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    240c:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    2410:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2414:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2416:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2418:	4a17      	ldr	r2, [pc, #92]	; (2478 <rtc_clock_trim+0xac>)
    241a:	6853      	ldr	r3, [r2, #4]
    241c:	f023 0310 	bic.w	r3, r3, #16
    2420:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    2422:	6853      	ldr	r3, [r2, #4]
    2424:	f013 0f20 	tst.w	r3, #32
    2428:	d0fb      	beq.n	2422 <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    242a:	4a11      	ldr	r2, [pc, #68]	; (2470 <rtc_clock_trim+0xa4>)
    242c:	6813      	ldr	r3, [r2, #0]
    242e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2432:	6013      	str	r3, [r2, #0]
    2434:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    2436:	2800      	cmp	r0, #0
    2438:	dd06      	ble.n	2448 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    243a:	4b0e      	ldr	r3, [pc, #56]	; (2474 <rtc_clock_trim+0xa8>)
    243c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    243e:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    2442:	4310      	orrs	r0, r2
    2444:	62d8      	str	r0, [r3, #44]	; 0x2c
    2446:	e7e7      	b.n	2418 <rtc_clock_trim+0x4c>
		trim=-trim;
    2448:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    244a:	2100      	movs	r1, #0
    244c:	4b09      	ldr	r3, [pc, #36]	; (2474 <rtc_clock_trim+0xa8>)
    244e:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    2450:	f64f 73ff 	movw	r3, #65535	; 0xffff
    2454:	287f      	cmp	r0, #127	; 0x7f
    2456:	bfd4      	ite	le
    2458:	1a18      	suble	r0, r3, r0
    245a:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    245e:	f3c0 000e 	ubfx	r0, r0, #0, #15
    2462:	4a05      	ldr	r2, [pc, #20]	; (2478 <rtc_clock_trim+0xac>)
    2464:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2466:	6091      	str	r1, [r2, #8]
    2468:	e7d6      	b.n	2418 <rtc_clock_trim+0x4c>
    246a:	bf00      	nop
    246c:	40021000 	.word	0x40021000
    2470:	40007000 	.word	0x40007000
    2474:	40006c00 	.word	0x40006c00
    2478:	40002800 	.word	0x40002800

0000247c <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    247c:	4770      	bx	lr

0000247e <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    247e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    2482:	4607      	mov	r7, r0
    2484:	4688      	mov	r8, r1
    2486:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    2488:	2400      	movs	r4, #0
	i=0;
    248a:	4626      	mov	r6, r4
	while (digit(date[i])){
    248c:	e008      	b.n	24a0 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    248e:	3601      	adds	r6, #1
    2490:	3501      	adds	r5, #1
    2492:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2496:	f899 3000 	ldrb.w	r3, [r9]
    249a:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    249e:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    24a0:	46a9      	mov	r9, r5
    24a2:	7828      	ldrb	r0, [r5, #0]
    24a4:	f7fe febb 	bl	121e <digit>
    24a8:	4682      	mov	sl, r0
    24aa:	2800      	cmp	r0, #0
    24ac:	d1ef      	bne.n	248e <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    24ae:	2e03      	cmp	r6, #3
    24b0:	dd02      	ble.n	24b8 <str_to_date+0x3a>
    24b2:	782b      	ldrb	r3, [r5, #0]
    24b4:	2b2f      	cmp	r3, #47	; 0x2f
    24b6:	d002      	beq.n	24be <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    24b8:	4650      	mov	r0, sl
    24ba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    24be:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    24c2:	3601      	adds	r6, #1
    24c4:	19bd      	adds	r5, r7, r6
	n=0;
    24c6:	4604      	mov	r4, r0
	while (digit(date[i])){
    24c8:	e008      	b.n	24dc <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    24ca:	3601      	adds	r6, #1
    24cc:	3501      	adds	r5, #1
    24ce:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    24d2:	f899 3000 	ldrb.w	r3, [r9]
    24d6:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    24da:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    24dc:	46a9      	mov	r9, r5
    24de:	7828      	ldrb	r0, [r5, #0]
    24e0:	f7fe fe9d 	bl	121e <digit>
    24e4:	4682      	mov	sl, r0
    24e6:	2800      	cmp	r0, #0
    24e8:	d1ef      	bne.n	24ca <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    24ea:	2e06      	cmp	r6, #6
    24ec:	dde4      	ble.n	24b8 <str_to_date+0x3a>
    24ee:	782b      	ldrb	r3, [r5, #0]
    24f0:	2b2f      	cmp	r3, #47	; 0x2f
    24f2:	d1e1      	bne.n	24b8 <str_to_date+0x3a>
	dt->month=n;
    24f4:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    24f8:	f364 1389 	bfi	r3, r4, #6, #4
    24fc:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2500:	1c74      	adds	r4, r6, #1
    2502:	443e      	add	r6, r7
	while (digit(date[i])){
    2504:	e008      	b.n	2518 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    2506:	3401      	adds	r4, #1
    2508:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    250c:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2510:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2514:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2518:	7870      	ldrb	r0, [r6, #1]
    251a:	f7fe fe80 	bl	121e <digit>
    251e:	2800      	cmp	r0, #0
    2520:	d1f1      	bne.n	2506 <str_to_date+0x88>
	if (i<10) return 0;
    2522:	2c09      	cmp	r4, #9
    2524:	dd08      	ble.n	2538 <str_to_date+0xba>
	dt->day=n;
    2526:	f898 3002 	ldrb.w	r3, [r8, #2]
    252a:	f36a 0345 	bfi	r3, sl, #1, #5
    252e:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    2532:	f04f 0a01 	mov.w	sl, #1
    2536:	e7bf      	b.n	24b8 <str_to_date+0x3a>
	if (i<10) return 0;
    2538:	4682      	mov	sl, r0
    253a:	e7bd      	b.n	24b8 <str_to_date+0x3a>

0000253c <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    253c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2540:	4607      	mov	r7, r0
    2542:	4688      	mov	r8, r1
    2544:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    2546:	2400      	movs	r4, #0
	i=0;
    2548:	4626      	mov	r6, r4
	while (digit(time[i])){
    254a:	e00a      	b.n	2562 <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    254c:	3601      	adds	r6, #1
    254e:	3501      	adds	r5, #1
    2550:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2554:	0064      	lsls	r4, r4, #1
    2556:	3c30      	subs	r4, #48	; 0x30
    2558:	f899 3000 	ldrb.w	r3, [r9]
    255c:	441c      	add	r4, r3
    255e:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2562:	46a9      	mov	r9, r5
    2564:	7828      	ldrb	r0, [r5, #0]
    2566:	f7fe fe5a 	bl	121e <digit>
    256a:	4603      	mov	r3, r0
    256c:	2800      	cmp	r0, #0
    256e:	d1ed      	bne.n	254c <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    2570:	2c17      	cmp	r4, #23
    2572:	d802      	bhi.n	257a <str_to_time+0x3e>
    2574:	782a      	ldrb	r2, [r5, #0]
    2576:	2a3a      	cmp	r2, #58	; 0x3a
    2578:	d002      	beq.n	2580 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    257a:	4618      	mov	r0, r3
    257c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    2580:	f8d8 3000 	ldr.w	r3, [r8]
    2584:	f364 3310 	bfi	r3, r4, #12, #5
    2588:	f8c8 3000 	str.w	r3, [r8]
	i++;
    258c:	3601      	adds	r6, #1
    258e:	19bd      	adds	r5, r7, r6
	n=0;
    2590:	2400      	movs	r4, #0
	while (digit(time[i])){
    2592:	e00a      	b.n	25aa <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    2594:	3601      	adds	r6, #1
    2596:	3501      	adds	r5, #1
    2598:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    259c:	0064      	lsls	r4, r4, #1
    259e:	3c30      	subs	r4, #48	; 0x30
    25a0:	f899 3000 	ldrb.w	r3, [r9]
    25a4:	441c      	add	r4, r3
    25a6:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    25aa:	46a9      	mov	r9, r5
    25ac:	7828      	ldrb	r0, [r5, #0]
    25ae:	f7fe fe36 	bl	121e <digit>
    25b2:	4603      	mov	r3, r0
    25b4:	2800      	cmp	r0, #0
    25b6:	d1ed      	bne.n	2594 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    25b8:	2c3b      	cmp	r4, #59	; 0x3b
    25ba:	d8de      	bhi.n	257a <str_to_time+0x3e>
    25bc:	782a      	ldrb	r2, [r5, #0]
    25be:	2a3a      	cmp	r2, #58	; 0x3a
    25c0:	d1db      	bne.n	257a <str_to_time+0x3e>
	dt->minute=n;
    25c2:	f8b8 3000 	ldrh.w	r3, [r8]
    25c6:	f364 138b 	bfi	r3, r4, #6, #6
    25ca:	f8a8 3000 	strh.w	r3, [r8]
    25ce:	443e      	add	r6, r7
	n=0;
    25d0:	2400      	movs	r4, #0
	while (digit(time[i])){
    25d2:	e008      	b.n	25e6 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    25d4:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25d8:	0064      	lsls	r4, r4, #1
    25da:	3c30      	subs	r4, #48	; 0x30
    25dc:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    25e0:	441c      	add	r4, r3
    25e2:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    25e6:	7870      	ldrb	r0, [r6, #1]
    25e8:	f7fe fe19 	bl	121e <digit>
    25ec:	4603      	mov	r3, r0
    25ee:	2800      	cmp	r0, #0
    25f0:	d1f0      	bne.n	25d4 <str_to_time+0x98>
	if (n>59) return 0;
    25f2:	2c3b      	cmp	r4, #59	; 0x3b
    25f4:	d8c1      	bhi.n	257a <str_to_time+0x3e>
	dt->second=n;
    25f6:	f898 3000 	ldrb.w	r3, [r8]
    25fa:	f364 0305 	bfi	r3, r4, #0, #6
    25fe:	f888 3000 	strb.w	r3, [r8]
	return 1;
    2602:	2301      	movs	r3, #1
    2604:	e7b9      	b.n	257a <str_to_time+0x3e>

00002606 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    2606:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2608:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    260a:	4b23      	ldr	r3, [pc, #140]	; (2698 <date_str+0x92>)
    260c:	fba3 4302 	umull	r4, r3, r3, r2
    2610:	099b      	lsrs	r3, r3, #6
    2612:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2616:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2618:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    261c:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2620:	4b1e      	ldr	r3, [pc, #120]	; (269c <date_str+0x96>)
    2622:	fba3 4302 	umull	r4, r3, r3, r2
    2626:	095b      	lsrs	r3, r3, #5
    2628:	f103 0430 	add.w	r4, r3, #48	; 0x30
    262c:	704c      	strb	r4, [r1, #1]
	n%=100;
    262e:	2464      	movs	r4, #100	; 0x64
    2630:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2634:	4a1a      	ldr	r2, [pc, #104]	; (26a0 <date_str+0x9a>)
    2636:	fba2 5403 	umull	r5, r4, r2, r3
    263a:	08e4      	lsrs	r4, r4, #3
    263c:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2640:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    2642:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2646:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    264a:	3330      	adds	r3, #48	; 0x30
    264c:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    264e:	262f      	movs	r6, #47	; 0x2f
    2650:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    2652:	8843      	ldrh	r3, [r0, #2]
    2654:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    2658:	fba2 5403 	umull	r5, r4, r2, r3
    265c:	08e4      	lsrs	r4, r4, #3
    265e:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2662:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    2664:	00a5      	lsls	r5, r4, #2
    2666:	442c      	add	r4, r5
    2668:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    266c:	3330      	adds	r3, #48	; 0x30
    266e:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    2670:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    2672:	7880      	ldrb	r0, [r0, #2]
    2674:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    2678:	fba2 3200 	umull	r3, r2, r2, r0
    267c:	08d3      	lsrs	r3, r2, #3
    267e:	f103 0230 	add.w	r2, r3, #48	; 0x30
    2682:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    2684:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2688:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    268c:	3330      	adds	r3, #48	; 0x30
    268e:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    2690:	2300      	movs	r3, #0
    2692:	728b      	strb	r3, [r1, #10]

}
    2694:	bc70      	pop	{r4, r5, r6}
    2696:	4770      	bx	lr
    2698:	10624dd3 	.word	0x10624dd3
    269c:	51eb851f 	.word	0x51eb851f
    26a0:	cccccccd 	.word	0xcccccccd

000026a4 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    26a4:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    26a6:	6802      	ldr	r2, [r0, #0]
    26a8:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    26ac:	4b18      	ldr	r3, [pc, #96]	; (2710 <time_str+0x6c>)
    26ae:	fba3 5402 	umull	r5, r4, r3, r2
    26b2:	08e4      	lsrs	r4, r4, #3
    26b4:	f104 0530 	add.w	r5, r4, #48	; 0x30
    26b8:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    26ba:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26be:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    26c2:	3230      	adds	r2, #48	; 0x30
    26c4:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    26c6:	253a      	movs	r5, #58	; 0x3a
    26c8:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    26ca:	8802      	ldrh	r2, [r0, #0]
    26cc:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    26d0:	fba3 6402 	umull	r6, r4, r3, r2
    26d4:	08e4      	lsrs	r4, r4, #3
    26d6:	f104 0630 	add.w	r6, r4, #48	; 0x30
    26da:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    26dc:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26e0:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    26e4:	3230      	adds	r2, #48	; 0x30
    26e6:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    26e8:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    26ea:	7802      	ldrb	r2, [r0, #0]
    26ec:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    26f0:	fba3 0302 	umull	r0, r3, r3, r2
    26f4:	08db      	lsrs	r3, r3, #3
    26f6:	f103 0030 	add.w	r0, r3, #48	; 0x30
    26fa:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    26fc:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2700:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2704:	3330      	adds	r3, #48	; 0x30
    2706:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2708:	2300      	movs	r3, #0
    270a:	720b      	strb	r3, [r1, #8]
}
    270c:	bc70      	pop	{r4, r5, r6}
    270e:	4770      	bx	lr
    2710:	cccccccd 	.word	0xcccccccd

00002714 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2714:	b500      	push	{lr}
    2716:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2718:	a801      	add	r0, sp, #4
    271a:	f7ff fcbb 	bl	2094 <get_date_time>
	t.fields.second=dt.second/2;
    271e:	f89d 3004 	ldrb.w	r3, [sp, #4]
    2722:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2726:	2000      	movs	r0, #0
    2728:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    272c:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2730:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2734:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2738:	9b01      	ldr	r3, [sp, #4]
    273a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    273e:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    2742:	f89d 3006 	ldrb.w	r3, [sp, #6]
    2746:	f3c3 0344 	ubfx	r3, r3, #1, #5
    274a:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    274e:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    2752:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2756:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    275a:	f89d 300c 	ldrb.w	r3, [sp, #12]
    275e:	3344      	adds	r3, #68	; 0x44
    2760:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    2764:	b005      	add	sp, #20
    2766:	f85d fb04 	ldr.w	pc, [sp], #4

0000276a <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    276a:	4b07      	ldr	r3, [pc, #28]	; (2788 <RTC_handler+0x1e>)
    276c:	685b      	ldr	r3, [r3, #4]
    276e:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    2772:	bf1c      	itt	ne
    2774:	4b04      	ldrne	r3, [pc, #16]	; (2788 <RTC_handler+0x1e>)
    2776:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    2778:	4b03      	ldr	r3, [pc, #12]	; (2788 <RTC_handler+0x1e>)
    277a:	685b      	ldr	r3, [r3, #4]
    277c:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    2780:	bf1c      	itt	ne
    2782:	4b01      	ldrne	r3, [pc, #4]	; (2788 <RTC_handler+0x1e>)
    2784:	685b      	ldrne	r3, [r3, #4]
    2786:	4770      	bx	lr
    2788:	40002800 	.word	0x40002800

0000278c <sound_init>:

#define SOUND_BUFFER_SIZE 16
static uint8_t sound_buffer[SOUND_BUFFER_SIZE];
static uint8_t bit_pos;

void sound_init(){
    278c:	b508      	push	{r3, lr}
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    278e:	4a0b      	ldr	r2, [pc, #44]	; (27bc <sound_init+0x30>)
    2790:	69d3      	ldr	r3, [r2, #28]
    2792:	f043 0301 	orr.w	r3, r3, #1
    2796:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2798:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    279c:	2278      	movs	r2, #120	; 0x78
    279e:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    27a0:	f44f 7280 	mov.w	r2, #256	; 0x100
    27a4:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    27a6:	2209      	movs	r2, #9
    27a8:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    27aa:	2100      	movs	r1, #0
    27ac:	201c      	movs	r0, #28
    27ae:	f7ff fc27 	bl	2000 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    27b2:	201c      	movs	r0, #28
    27b4:	f7ff fbc4 	bl	1f40 <enable_interrupt>
    27b8:	bd08      	pop	{r3, pc}
    27ba:	bf00      	nop
    27bc:	40021000 	.word	0x40021000

000027c0 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    27c0:	b538      	push	{r3, r4, r5, lr}
    27c2:	4605      	mov	r5, r0
    27c4:	460c      	mov	r4, r1
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    27c6:	4b11      	ldr	r3, [pc, #68]	; (280c <tone+0x4c>)
    27c8:	685a      	ldr	r2, [r3, #4]
    27ca:	f402 7240 	and.w	r2, r2, #768	; 0x300
    27ce:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    27d0:	685a      	ldr	r2, [r3, #4]
    27d2:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    27d6:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    27d8:	220a      	movs	r2, #10
    27da:	4611      	mov	r1, r2
    27dc:	480c      	ldr	r0, [pc, #48]	; (2810 <tone+0x50>)
    27de:	f7fe fe49 	bl	1474 <config_pin>
    TMR2->ARR=FCLK/10/freq;
    27e2:	480c      	ldr	r0, [pc, #48]	; (2814 <tone+0x54>)
    27e4:	fbb0 f0f5 	udiv	r0, r0, r5
    27e8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    27ec:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    27ee:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    27f0:	0852      	lsrs	r2, r2, #1
    27f2:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->DIER&=~TMR_DIER_CC3IE;
    27f4:	68da      	ldr	r2, [r3, #12]
    27f6:	f022 0208 	bic.w	r2, r2, #8
    27fa:	60da      	str	r2, [r3, #12]
    TMR2->CR1|=TMR_CR1_CEN;
    27fc:	681a      	ldr	r2, [r3, #0]
    27fe:	f042 0201 	orr.w	r2, r2, #1
    2802:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2804:	4b04      	ldr	r3, [pc, #16]	; (2818 <tone+0x58>)
    2806:	801c      	strh	r4, [r3, #0]
    2808:	bd38      	pop	{r3, r4, r5, pc}
    280a:	bf00      	nop
    280c:	40010000 	.word	0x40010000
    2810:	40010c00 	.word	0x40010c00
    2814:	006d3d32 	.word	0x006d3d32
    2818:	20004e6c 	.word	0x20004e6c

0000281c <beep>:
}

void beep(uint16_t duration){
    281c:	b508      	push	{r3, lr}
    tone(1000,duration);
    281e:	4601      	mov	r1, r0
    2820:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2824:	f7ff ffcc 	bl	27c0 <tone>
    2828:	bd08      	pop	{r3, pc}

0000282a <load_sound_buffer>:
}

void load_sound_buffer(const uint8_t* buffer){
    282a:	3801      	subs	r0, #1
    282c:	4904      	ldr	r1, [pc, #16]	; (2840 <load_sound_buffer+0x16>)
    282e:	1e4b      	subs	r3, r1, #1
    2830:	310f      	adds	r1, #15
    int i;
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
        sound_buffer[i]=*buffer++;
    2832:	f810 2f01 	ldrb.w	r2, [r0, #1]!
    2836:	f803 2f01 	strb.w	r2, [r3, #1]!
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
    283a:	428b      	cmp	r3, r1
    283c:	d1f9      	bne.n	2832 <load_sound_buffer+0x8>
    }
}
    283e:	4770      	bx	lr
    2840:	200006b8 	.word	0x200006b8

00002844 <sound_sampler>:

// configure son pour sortie buffer
void sound_sampler(uint16_t duration){
    2844:	b510      	push	{r4, lr}
    2846:	4604      	mov	r4, r0
    bit_pos=0;
    2848:	2200      	movs	r2, #0
    284a:	4b11      	ldr	r3, [pc, #68]	; (2890 <sound_sampler+0x4c>)
    284c:	741a      	strb	r2, [r3, #16]
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    284e:	4a11      	ldr	r2, [pc, #68]	; (2894 <sound_sampler+0x50>)
    2850:	6853      	ldr	r3, [r2, #4]
    2852:	f403 7340 	and.w	r3, r3, #768	; 0x300
    2856:	6053      	str	r3, [r2, #4]
    PORTB->ODR&=~BIT10;
    2858:	480f      	ldr	r0, [pc, #60]	; (2898 <sound_sampler+0x54>)
    285a:	68c3      	ldr	r3, [r0, #12]
    285c:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    2860:	60c3      	str	r3, [r0, #12]
    config_pin(PORTB,10,OUTPUT_PP_SLOW);
    2862:	2202      	movs	r2, #2
    2864:	210a      	movs	r1, #10
    2866:	f7fe fe05 	bl	1474 <config_pin>
    TMR2->DIER|=TMR_DIER_UIE;
    286a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    286e:	68da      	ldr	r2, [r3, #12]
    2870:	f042 0201 	orr.w	r2, r2, #1
    2874:	60da      	str	r2, [r3, #12]
    TMR2->ARR=FCLK/10/4000;
    2876:	f240 62fd 	movw	r2, #1789	; 0x6fd
    287a:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR2->CCR2=TMR2->ARR;
    287c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    287e:	639a      	str	r2, [r3, #56]	; 0x38
    TMR2->CR1|=TMR_CR1_CEN;
    2880:	681a      	ldr	r2, [r3, #0]
    2882:	f042 0201 	orr.w	r2, r2, #1
    2886:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2888:	4b04      	ldr	r3, [pc, #16]	; (289c <sound_sampler+0x58>)
    288a:	801c      	strh	r4, [r3, #0]
    288c:	bd10      	pop	{r4, pc}
    288e:	bf00      	nop
    2890:	200006b8 	.word	0x200006b8
    2894:	40010000 	.word	0x40010000
    2898:	40010c00 	.word	0x40010c00
    289c:	20004e6c 	.word	0x20004e6c

000028a0 <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    28a0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    28a4:	681a      	ldr	r2, [r3, #0]
    28a6:	f022 0201 	bic.w	r2, r2, #1
    28aa:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    28ac:	68da      	ldr	r2, [r3, #12]
    28ae:	f022 0201 	bic.w	r2, r2, #1
    28b2:	60da      	str	r2, [r3, #12]
    28b4:	4770      	bx	lr

000028b6 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    28b6:	b510      	push	{r4, lr}
    28b8:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    28ba:	b289      	uxth	r1, r1
    28bc:	4b05      	ldr	r3, [pc, #20]	; (28d4 <key_tone+0x1e>)
    28be:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    28c2:	f7ff ff7d 	bl	27c0 <tone>
    if (wait_end) while (sound_timer);
    28c6:	b124      	cbz	r4, 28d2 <key_tone+0x1c>
    28c8:	4a03      	ldr	r2, [pc, #12]	; (28d8 <key_tone+0x22>)
    28ca:	8813      	ldrh	r3, [r2, #0]
    28cc:	b29b      	uxth	r3, r3
    28ce:	2b00      	cmp	r3, #0
    28d0:	d1fb      	bne.n	28ca <key_tone+0x14>
    28d2:	bd10      	pop	{r4, pc}
    28d4:	00003c10 	.word	0x00003c10
    28d8:	20004e6c 	.word	0x20004e6c

000028dc <noise>:
}

// produit un bruit 
void noise(int length){
    28dc:	b570      	push	{r4, r5, r6, lr}
    28de:	4606      	mov	r6, r0
    int i;
    srand(ntsc_ticks);
    28e0:	4b08      	ldr	r3, [pc, #32]	; (2904 <noise+0x28>)
    28e2:	6818      	ldr	r0, [r3, #0]
    28e4:	f7fd fd5e 	bl	3a4 <srand>
    28e8:	4d07      	ldr	r5, [pc, #28]	; (2908 <noise+0x2c>)
    28ea:	1e6c      	subs	r4, r5, #1
    28ec:	350f      	adds	r5, #15
    for (i=0;i<16;i++) sound_buffer[i]=rand()&0xff;
    28ee:	f7fd fd5f 	bl	3b0 <rand>
    28f2:	f804 0f01 	strb.w	r0, [r4, #1]!
    28f6:	42ac      	cmp	r4, r5
    28f8:	d1f9      	bne.n	28ee <noise+0x12>
    sound_sampler(length);
    28fa:	b2b0      	uxth	r0, r6
    28fc:	f7ff ffa2 	bl	2844 <sound_sampler>
    2900:	bd70      	pop	{r4, r5, r6, pc}
    2902:	bf00      	nop
    2904:	20004e68 	.word	0x20004e68
    2908:	200006b8 	.word	0x200006b8

0000290c <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    290c:	4668      	mov	r0, sp
    290e:	f020 0107 	bic.w	r1, r0, #7
    2912:	468d      	mov	sp, r1
    2914:	b401      	push	{r0}
    uint8_t byte,mask;
    byte=bit_pos/8;
    2916:	4810      	ldr	r0, [pc, #64]	; (2958 <sound_handler+0x4c>)
    2918:	7c03      	ldrb	r3, [r0, #16]
    mask=1<<(7-bit_pos%8);
    291a:	43da      	mvns	r2, r3
    291c:	f002 0107 	and.w	r1, r2, #7
    2920:	2201      	movs	r2, #1
    2922:	408a      	lsls	r2, r1
    if (sound_buffer[byte]&mask){
    2924:	08d9      	lsrs	r1, r3, #3
    2926:	5c41      	ldrb	r1, [r0, r1]
    2928:	420a      	tst	r2, r1
        PORTB->ODR|=BIT10;
    292a:	490c      	ldr	r1, [pc, #48]	; (295c <sound_handler+0x50>)
    292c:	68ca      	ldr	r2, [r1, #12]
    292e:	bf14      	ite	ne
    2930:	f442 6280 	orrne.w	r2, r2, #1024	; 0x400
    }else{
        PORTB->ODR&=~BIT10;
    2934:	f422 6280 	biceq.w	r2, r2, #1024	; 0x400
    2938:	60ca      	str	r2, [r1, #12]
    }
    bit_pos++;
    293a:	3301      	adds	r3, #1
    bit_pos%=SOUND_BUFFER_SIZE;
    293c:	f003 030f 	and.w	r3, r3, #15
    2940:	4a05      	ldr	r2, [pc, #20]	; (2958 <sound_handler+0x4c>)
    2942:	7413      	strb	r3, [r2, #16]
    TMR2->SR&=~TMR_SR_UIF;
    2944:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2948:	6913      	ldr	r3, [r2, #16]
    294a:	f023 0301 	bic.w	r3, r3, #1
    294e:	6113      	str	r3, [r2, #16]
}
    2950:	bc01      	pop	{r0}
    2952:	4685      	mov	sp, r0
    2954:	4770      	bx	lr
    2956:	bf00      	nop
    2958:	200006b8 	.word	0x200006b8
    295c:	40010c00 	.word	0x40010c00

00002960 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    2960:	6803      	ldr	r3, [r0, #0]
    2962:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2966:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2968:	6803      	ldr	r3, [r0, #0]
    296a:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    296e:	6001      	str	r1, [r0, #0]
    2970:	4770      	bx	lr

00002972 <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2972:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2974:	4a2f      	ldr	r2, [pc, #188]	; (2a34 <spi_config_port+0xc2>)
    2976:	6993      	ldr	r3, [r2, #24]
    2978:	f043 0301 	orr.w	r3, r3, #1
    297c:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    297e:	4b2e      	ldr	r3, [pc, #184]	; (2a38 <spi_config_port+0xc6>)
    2980:	4298      	cmp	r0, r3
    2982:	d01a      	beq.n	29ba <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2984:	4a2b      	ldr	r2, [pc, #172]	; (2a34 <spi_config_port+0xc2>)
    2986:	6993      	ldr	r3, [r2, #24]
    2988:	f043 0308 	orr.w	r3, r3, #8
    298c:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    298e:	4c2b      	ldr	r4, [pc, #172]	; (2a3c <spi_config_port+0xca>)
    2990:	2203      	movs	r2, #3
    2992:	2102      	movs	r1, #2
    2994:	4620      	mov	r0, r4
    2996:	f7fe fd6d 	bl	1474 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    299a:	220b      	movs	r2, #11
    299c:	210d      	movs	r1, #13
    299e:	4620      	mov	r0, r4
    29a0:	f7fe fd68 	bl	1474 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    29a4:	2204      	movs	r2, #4
    29a6:	210e      	movs	r1, #14
    29a8:	4620      	mov	r0, r4
    29aa:	f7fe fd63 	bl	1474 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    29ae:	220b      	movs	r2, #11
    29b0:	210f      	movs	r1, #15
    29b2:	4620      	mov	r0, r4
    29b4:	f7fe fd5e 	bl	1474 <config_pin>
    29b8:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    29ba:	b9c9      	cbnz	r1, 29f0 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    29bc:	6993      	ldr	r3, [r2, #24]
    29be:	f043 0304 	orr.w	r3, r3, #4
    29c2:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    29c4:	4c1e      	ldr	r4, [pc, #120]	; (2a40 <spi_config_port+0xce>)
    29c6:	2203      	movs	r2, #3
    29c8:	2104      	movs	r1, #4
    29ca:	4620      	mov	r0, r4
    29cc:	f7fe fd52 	bl	1474 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    29d0:	220b      	movs	r2, #11
    29d2:	2105      	movs	r1, #5
    29d4:	4620      	mov	r0, r4
    29d6:	f7fe fd4d 	bl	1474 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    29da:	2204      	movs	r2, #4
    29dc:	2106      	movs	r1, #6
    29de:	4620      	mov	r0, r4
    29e0:	f7fe fd48 	bl	1474 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    29e4:	220b      	movs	r2, #11
    29e6:	2107      	movs	r1, #7
    29e8:	4620      	mov	r0, r4
    29ea:	f7fe fd43 	bl	1474 <config_pin>
    29ee:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    29f0:	4a10      	ldr	r2, [pc, #64]	; (2a34 <spi_config_port+0xc2>)
    29f2:	6993      	ldr	r3, [r2, #24]
    29f4:	f043 030d 	orr.w	r3, r3, #13
    29f8:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    29fa:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    29fe:	6853      	ldr	r3, [r2, #4]
    2a00:	f043 0301 	orr.w	r3, r3, #1
    2a04:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2a06:	2203      	movs	r2, #3
    2a08:	210f      	movs	r1, #15
    2a0a:	480d      	ldr	r0, [pc, #52]	; (2a40 <spi_config_port+0xce>)
    2a0c:	f7fe fd32 	bl	1474 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2a10:	4c0a      	ldr	r4, [pc, #40]	; (2a3c <spi_config_port+0xca>)
    2a12:	220b      	movs	r2, #11
    2a14:	2103      	movs	r1, #3
    2a16:	4620      	mov	r0, r4
    2a18:	f7fe fd2c 	bl	1474 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2a1c:	2204      	movs	r2, #4
    2a1e:	4611      	mov	r1, r2
    2a20:	4620      	mov	r0, r4
    2a22:	f7fe fd27 	bl	1474 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2a26:	220b      	movs	r2, #11
    2a28:	2105      	movs	r1, #5
    2a2a:	4620      	mov	r0, r4
    2a2c:	f7fe fd22 	bl	1474 <config_pin>
    2a30:	bd10      	pop	{r4, pc}
    2a32:	bf00      	nop
    2a34:	40021000 	.word	0x40021000
    2a38:	40013000 	.word	0x40013000
    2a3c:	40010c00 	.word	0x40010c00
    2a40:	40010800 	.word	0x40010800

00002a44 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2a44:	b570      	push	{r4, r5, r6, lr}
    2a46:	4604      	mov	r4, r0
    2a48:	460d      	mov	r5, r1
    2a4a:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2a4c:	4619      	mov	r1, r3
    2a4e:	f7ff ff90 	bl	2972 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2a52:	4b0c      	ldr	r3, [pc, #48]	; (2a84 <spi_init+0x40>)
    2a54:	429c      	cmp	r4, r3
    2a56:	d00e      	beq.n	2a76 <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2a58:	4a0b      	ldr	r2, [pc, #44]	; (2a88 <spi_init+0x44>)
    2a5a:	69d3      	ldr	r3, [r2, #28]
    2a5c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2a60:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    2a62:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2a64:	4629      	mov	r1, r5
    2a66:	4620      	mov	r0, r4
    2a68:	f7ff ff7a 	bl	2960 <spi_baudrate>
	_spi_enable(channel);
    2a6c:	6823      	ldr	r3, [r4, #0]
    2a6e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2a72:	6023      	str	r3, [r4, #0]
    2a74:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2a76:	4a04      	ldr	r2, [pc, #16]	; (2a88 <spi_init+0x44>)
    2a78:	6993      	ldr	r3, [r2, #24]
    2a7a:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2a7e:	6193      	str	r3, [r2, #24]
    2a80:	e7ef      	b.n	2a62 <spi_init+0x1e>
    2a82:	bf00      	nop
    2a84:	40013000 	.word	0x40013000
    2a88:	40021000 	.word	0x40021000

00002a8c <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2a8c:	6883      	ldr	r3, [r0, #8]
    2a8e:	f013 0f02 	tst.w	r3, #2
    2a92:	d0fb      	beq.n	2a8c <spi_send>
	channel->DR=b;
    2a94:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a96:	6883      	ldr	r3, [r0, #8]
    2a98:	f013 0f01 	tst.w	r3, #1
    2a9c:	d0fb      	beq.n	2a96 <spi_send+0xa>
	return (uint8_t)channel->DR;
    2a9e:	68c0      	ldr	r0, [r0, #12]
}
    2aa0:	b2c0      	uxtb	r0, r0
    2aa2:	4770      	bx	lr

00002aa4 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2aa4:	6883      	ldr	r3, [r0, #8]
    2aa6:	f013 0f02 	tst.w	r3, #2
    2aaa:	d0fb      	beq.n	2aa4 <spi_receive>
	channel->DR=255;
    2aac:	23ff      	movs	r3, #255	; 0xff
    2aae:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2ab0:	6883      	ldr	r3, [r0, #8]
    2ab2:	f013 0f01 	tst.w	r3, #1
    2ab6:	d0fb      	beq.n	2ab0 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2ab8:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2aba:	b2c0      	uxtb	r0, r0
    2abc:	4770      	bx	lr

00002abe <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2abe:	b14a      	cbz	r2, 2ad4 <spi_send_block+0x16>
    2ac0:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2ac2:	f811 3b01 	ldrb.w	r3, [r1], #1
    2ac6:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2ac8:	6883      	ldr	r3, [r0, #8]
    2aca:	f013 0f02 	tst.w	r3, #2
    2ace:	d0fb      	beq.n	2ac8 <spi_send_block+0xa>
	while (count){
    2ad0:	428a      	cmp	r2, r1
    2ad2:	d1f6      	bne.n	2ac2 <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2ad4:	6883      	ldr	r3, [r0, #8]
    2ad6:	f013 0f80 	tst.w	r3, #128	; 0x80
    2ada:	d1fb      	bne.n	2ad4 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2adc:	68c3      	ldr	r3, [r0, #12]
    2ade:	4770      	bx	lr

00002ae0 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2ae0:	b16a      	cbz	r2, 2afe <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2ae2:	b410      	push	{r4}
    2ae4:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2ae6:	2400      	movs	r4, #0
    2ae8:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2aea:	6883      	ldr	r3, [r0, #8]
    2aec:	f013 0f01 	tst.w	r3, #1
    2af0:	d0fb      	beq.n	2aea <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2af2:	68c3      	ldr	r3, [r0, #12]
    2af4:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2af8:	428a      	cmp	r2, r1
    2afa:	d1f5      	bne.n	2ae8 <spi_receive_block+0x8>
		count--;
	}
}
    2afc:	bc10      	pop	{r4}
    2afe:	4770      	bx	lr

00002b00 <reset_mcu>:
	_reset_mcu();
    2b00:	4a01      	ldr	r2, [pc, #4]	; (2b08 <reset_mcu+0x8>)
    2b02:	4b02      	ldr	r3, [pc, #8]	; (2b0c <reset_mcu+0xc>)
    2b04:	601a      	str	r2, [r3, #0]
    2b06:	bf00      	nop
    2b08:	05fa0004 	.word	0x05fa0004
    2b0c:	e000ed0c 	.word	0xe000ed0c

00002b10 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2b10:	b508      	push	{r3, lr}
    2b12:	460c      	mov	r4, r1
	print(msg);
    2b14:	f000 f94c 	bl	2db0 <print>
	print("\nat address ");
    2b18:	4813      	ldr	r0, [pc, #76]	; (2b68 <print_fault+0x58>)
    2b1a:	f000 f949 	bl	2db0 <print>
	if (adr) {
    2b1e:	b9ec      	cbnz	r4, 2b5c <print_fault+0x4c>
	put_char(CR);
    2b20:	200d      	movs	r0, #13
    2b22:	f000 f8ad 	bl	2c80 <put_char>
	print("\nUFSR=");
    2b26:	4811      	ldr	r0, [pc, #68]	; (2b6c <print_fault+0x5c>)
    2b28:	f000 f942 	bl	2db0 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2b2c:	4c10      	ldr	r4, [pc, #64]	; (2b70 <print_fault+0x60>)
    2b2e:	6820      	ldr	r0, [r4, #0]
    2b30:	2110      	movs	r1, #16
    2b32:	40c8      	lsrs	r0, r1
    2b34:	f000 f957 	bl	2de6 <print_int>
	print("\nBFSR=");
    2b38:	480e      	ldr	r0, [pc, #56]	; (2b74 <print_fault+0x64>)
    2b3a:	f000 f939 	bl	2db0 <print>
	print_int(CFSR->fsr.busFault,16);
    2b3e:	6820      	ldr	r0, [r4, #0]
    2b40:	2110      	movs	r1, #16
    2b42:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2b46:	f000 f94e 	bl	2de6 <print_int>
	print("\nMMFSR=");
    2b4a:	480b      	ldr	r0, [pc, #44]	; (2b78 <print_fault+0x68>)
    2b4c:	f000 f930 	bl	2db0 <print>
	print_int(CFSR->fsr.mmFault,16);
    2b50:	6820      	ldr	r0, [r4, #0]
    2b52:	2110      	movs	r1, #16
    2b54:	b2c0      	uxtb	r0, r0
    2b56:	f000 f946 	bl	2de6 <print_int>
    2b5a:	e7fe      	b.n	2b5a <print_fault+0x4a>
		print_int(adr,16);
    2b5c:	2110      	movs	r1, #16
    2b5e:	4620      	mov	r0, r4
    2b60:	f000 f941 	bl	2de6 <print_int>
    2b64:	e7dc      	b.n	2b20 <print_fault+0x10>
    2b66:	bf00      	nop
    2b68:	00003e6c 	.word	0x00003e6c
    2b6c:	00003e7c 	.word	0x00003e7c
    2b70:	e000ed28 	.word	0xe000ed28
    2b74:	00003e84 	.word	0x00003e84
    2b78:	00003e8c 	.word	0x00003e8c

00002b7c <draw_char>:
		break;	
	}//swtich

}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2b7c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2b80:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2b82:	18cb      	adds	r3, r1, r3
    2b84:	9301      	str	r3, [sp, #4]
    2b86:	4299      	cmp	r1, r3
    2b88:	da20      	bge.n	2bcc <draw_char+0x50>
    2b8a:	4683      	mov	fp, r0
    2b8c:	460e      	mov	r6, r1
    2b8e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2b90:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2b94:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b96:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2bd4 <draw_char+0x58>
		byte=*glyph++;
    2b9a:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2b9e:	45bb      	cmp	fp, r7
    2ba0:	da10      	bge.n	2bc4 <draw_char+0x48>
    2ba2:	465c      	mov	r4, fp
    2ba4:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2ba6:	ea18 0f05 	tst.w	r8, r5
    2baa:	bf14      	ite	ne
    2bac:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2bb0:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2bb4:	4631      	mov	r1, r6
    2bb6:	4620      	mov	r0, r4
    2bb8:	f7fe fce8 	bl	158c <gfx_plot>
			mask>>=1;
    2bbc:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2bbe:	3401      	adds	r4, #1
    2bc0:	42bc      	cmp	r4, r7
    2bc2:	d1f0      	bne.n	2ba6 <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2bc4:	3601      	adds	r6, #1
    2bc6:	9b01      	ldr	r3, [sp, #4]
    2bc8:	429e      	cmp	r6, r3
    2bca:	d1e6      	bne.n	2b9a <draw_char+0x1e>
		}
	}
}
    2bcc:	b003      	add	sp, #12
    2bce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2bd2:	bf00      	nop
    2bd4:	20000220 	.word	0x20000220

00002bd8 <font_color>:
	text_colors[FG]=color&0xf;
    2bd8:	f000 000f 	and.w	r0, r0, #15
    2bdc:	4b01      	ldr	r3, [pc, #4]	; (2be4 <font_color+0xc>)
    2bde:	7058      	strb	r0, [r3, #1]
    2be0:	4770      	bx	lr
    2be2:	bf00      	nop
    2be4:	20000220 	.word	0x20000220

00002be8 <bg_color>:
	text_colors[BG]=color&0xf;
    2be8:	f000 000f 	and.w	r0, r0, #15
    2bec:	4b01      	ldr	r3, [pc, #4]	; (2bf4 <bg_color+0xc>)
    2bee:	7018      	strb	r0, [r3, #0]
    2bf0:	4770      	bx	lr
    2bf2:	bf00      	nop
    2bf4:	20000220 	.word	0x20000220

00002bf8 <select_font>:
	font=font_id;
    2bf8:	4b01      	ldr	r3, [pc, #4]	; (2c00 <select_font+0x8>)
    2bfa:	7098      	strb	r0, [r3, #2]
    2bfc:	4770      	bx	lr
    2bfe:	bf00      	nop
    2c00:	20000220 	.word	0x20000220

00002c04 <new_line>:
void new_line(){
    2c04:	b508      	push	{r3, lr}
	xpos=0;
    2c06:	2200      	movs	r2, #0
    2c08:	4b1b      	ldr	r3, [pc, #108]	; (2c78 <new_line+0x74>)
    2c0a:	701a      	strb	r2, [r3, #0]
	vmode_params_t *vparams=get_video_params();	
    2c0c:	f000 fc24 	bl	3458 <get_video_params>
	switch (font){
    2c10:	4b1a      	ldr	r3, [pc, #104]	; (2c7c <new_line+0x78>)
    2c12:	789b      	ldrb	r3, [r3, #2]
    2c14:	2b01      	cmp	r3, #1
    2c16:	d011      	beq.n	2c3c <new_line+0x38>
    2c18:	b113      	cbz	r3, 2c20 <new_line+0x1c>
    2c1a:	2b02      	cmp	r3, #2
    2c1c:	d01d      	beq.n	2c5a <new_line+0x56>
    2c1e:	bd08      	pop	{r3, pc}
		if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2c20:	4b15      	ldr	r3, [pc, #84]	; (2c78 <new_line+0x74>)
    2c22:	785b      	ldrb	r3, [r3, #1]
    2c24:	1d99      	adds	r1, r3, #6
    2c26:	89c2      	ldrh	r2, [r0, #14]
    2c28:	3a05      	subs	r2, #5
    2c2a:	4291      	cmp	r1, r2
    2c2c:	dc02      	bgt.n	2c34 <new_line+0x30>
			ypos+=SHEX_HEIGHT;
    2c2e:	4a12      	ldr	r2, [pc, #72]	; (2c78 <new_line+0x74>)
    2c30:	7051      	strb	r1, [r2, #1]
    2c32:	bd08      	pop	{r3, pc}
			gfx_scroll_up(SHEX_HEIGHT);
    2c34:	2006      	movs	r0, #6
    2c36:	f7fe fce7 	bl	1608 <gfx_scroll_up>
    2c3a:	bd08      	pop	{r3, pc}
		if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2c3c:	4b0e      	ldr	r3, [pc, #56]	; (2c78 <new_line+0x74>)
    2c3e:	785b      	ldrb	r3, [r3, #1]
    2c40:	f103 010a 	add.w	r1, r3, #10
    2c44:	89c2      	ldrh	r2, [r0, #14]
    2c46:	3a09      	subs	r2, #9
    2c48:	4291      	cmp	r1, r2
    2c4a:	dc02      	bgt.n	2c52 <new_line+0x4e>
			ypos+=LHEX_HEIGHT;
    2c4c:	4a0a      	ldr	r2, [pc, #40]	; (2c78 <new_line+0x74>)
    2c4e:	7051      	strb	r1, [r2, #1]
    2c50:	bd08      	pop	{r3, pc}
			gfx_scroll_up(LHEX_HEIGHT);
    2c52:	200a      	movs	r0, #10
    2c54:	f7fe fcd8 	bl	1608 <gfx_scroll_up>
    2c58:	bd08      	pop	{r3, pc}
		if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2c5a:	4b07      	ldr	r3, [pc, #28]	; (2c78 <new_line+0x74>)
    2c5c:	785a      	ldrb	r2, [r3, #1]
    2c5e:	f102 0108 	add.w	r1, r2, #8
    2c62:	89c3      	ldrh	r3, [r0, #14]
    2c64:	3b07      	subs	r3, #7
    2c66:	4299      	cmp	r1, r3
    2c68:	dc02      	bgt.n	2c70 <new_line+0x6c>
			ypos+=CHAR_HEIGHT;
    2c6a:	4b03      	ldr	r3, [pc, #12]	; (2c78 <new_line+0x74>)
    2c6c:	7059      	strb	r1, [r3, #1]
    2c6e:	bd08      	pop	{r3, pc}
			gfx_scroll_up(CHAR_HEIGHT);
    2c70:	2008      	movs	r0, #8
    2c72:	f7fe fcc9 	bl	1608 <gfx_scroll_up>
    2c76:	bd08      	pop	{r3, pc}
    2c78:	200006c9 	.word	0x200006c9
    2c7c:	20000220 	.word	0x20000220

00002c80 <put_char>:

void put_char(uint8_t c){
    2c80:	b530      	push	{r4, r5, lr}
    2c82:	b083      	sub	sp, #12
	switch(font){
    2c84:	4b2b      	ldr	r3, [pc, #172]	; (2d34 <put_char+0xb4>)
    2c86:	789b      	ldrb	r3, [r3, #2]
    2c88:	2b01      	cmp	r3, #1
    2c8a:	d01d      	beq.n	2cc8 <put_char+0x48>
    2c8c:	b11b      	cbz	r3, 2c96 <put_char+0x16>
    2c8e:	2b02      	cmp	r3, #2
    2c90:	d033      	beq.n	2cfa <put_char+0x7a>
				new_line();
			}
		}
		break;		
	}
}
    2c92:	b003      	add	sp, #12
    2c94:	bd30      	pop	{r4, r5, pc}
		if (c<16){
    2c96:	280f      	cmp	r0, #15
    2c98:	d8fb      	bhi.n	2c92 <put_char+0x12>
			draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2c9a:	4c27      	ldr	r4, [pc, #156]	; (2d38 <put_char+0xb8>)
    2c9c:	7861      	ldrb	r1, [r4, #1]
    2c9e:	7825      	ldrb	r5, [r4, #0]
    2ca0:	eb00 0340 	add.w	r3, r0, r0, lsl #1
    2ca4:	4a25      	ldr	r2, [pc, #148]	; (2d3c <put_char+0xbc>)
    2ca6:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    2caa:	9300      	str	r3, [sp, #0]
    2cac:	2306      	movs	r3, #6
    2cae:	2204      	movs	r2, #4
    2cb0:	4628      	mov	r0, r5
    2cb2:	f7ff ff63 	bl	2b7c <draw_char>
			xpos+=SHEX_WIDTH;
    2cb6:	7823      	ldrb	r3, [r4, #0]
    2cb8:	3304      	adds	r3, #4
    2cba:	b2db      	uxtb	r3, r3
    2cbc:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-SHEX_WIDTH+1)){
    2cbe:	2bb1      	cmp	r3, #177	; 0xb1
    2cc0:	d9e7      	bls.n	2c92 <put_char+0x12>
				new_line();
    2cc2:	f7ff ff9f 	bl	2c04 <new_line>
    2cc6:	e7e4      	b.n	2c92 <put_char+0x12>
		if (c<16){
    2cc8:	280f      	cmp	r0, #15
    2cca:	d8e2      	bhi.n	2c92 <put_char+0x12>
			draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2ccc:	4c1a      	ldr	r4, [pc, #104]	; (2d38 <put_char+0xb8>)
    2cce:	7861      	ldrb	r1, [r4, #1]
    2cd0:	7825      	ldrb	r5, [r4, #0]
    2cd2:	eb00 0380 	add.w	r3, r0, r0, lsl #2
    2cd6:	4a1a      	ldr	r2, [pc, #104]	; (2d40 <put_char+0xc0>)
    2cd8:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    2cdc:	9300      	str	r3, [sp, #0]
    2cde:	230a      	movs	r3, #10
    2ce0:	2208      	movs	r2, #8
    2ce2:	4628      	mov	r0, r5
    2ce4:	f7ff ff4a 	bl	2b7c <draw_char>
			xpos+=LHEX_WIDTH;
    2ce8:	7823      	ldrb	r3, [r4, #0]
    2cea:	3308      	adds	r3, #8
    2cec:	b2db      	uxtb	r3, r3
    2cee:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-LHEX_WIDTH+1)){
    2cf0:	2bad      	cmp	r3, #173	; 0xad
    2cf2:	d9ce      	bls.n	2c92 <put_char+0x12>
				new_line();
    2cf4:	f7ff ff86 	bl	2c04 <new_line>
    2cf8:	e7cb      	b.n	2c92 <put_char+0x12>
		if ((c>31) && (c<(FONT_SIZE+32))){
    2cfa:	f1a0 0320 	sub.w	r3, r0, #32
    2cfe:	b2db      	uxtb	r3, r3
    2d00:	2b64      	cmp	r3, #100	; 0x64
    2d02:	d8c6      	bhi.n	2c92 <put_char+0x12>
			draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2d04:	4c0c      	ldr	r4, [pc, #48]	; (2d38 <put_char+0xb8>)
    2d06:	7861      	ldrb	r1, [r4, #1]
    2d08:	7825      	ldrb	r5, [r4, #0]
    2d0a:	f1a0 0320 	sub.w	r3, r0, #32
    2d0e:	4a0d      	ldr	r2, [pc, #52]	; (2d44 <put_char+0xc4>)
    2d10:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
    2d14:	9300      	str	r3, [sp, #0]
    2d16:	2308      	movs	r3, #8
    2d18:	2206      	movs	r2, #6
    2d1a:	4628      	mov	r0, r5
    2d1c:	f7ff ff2e 	bl	2b7c <draw_char>
			xpos+=CHAR_WIDTH;
    2d20:	7823      	ldrb	r3, [r4, #0]
    2d22:	3306      	adds	r3, #6
    2d24:	b2db      	uxtb	r3, r3
    2d26:	7023      	strb	r3, [r4, #0]
			if (xpos>(HRES-CHAR_WIDTH+1)){
    2d28:	2baf      	cmp	r3, #175	; 0xaf
    2d2a:	d9b2      	bls.n	2c92 <put_char+0x12>
				new_line();
    2d2c:	f7ff ff6a 	bl	2c04 <new_line>
}
    2d30:	e7af      	b.n	2c92 <put_char+0x12>
    2d32:	bf00      	nop
    2d34:	20000220 	.word	0x20000220
    2d38:	200006c9 	.word	0x200006c9
    2d3c:	00003b48 	.word	0x00003b48
    2d40:	00003aa8 	.word	0x00003aa8
    2d44:	00003780 	.word	0x00003780

00002d48 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2d48:	4b01      	ldr	r3, [pc, #4]	; (2d50 <set_cursor+0x8>)
    2d4a:	7018      	strb	r0, [r3, #0]
	ypos=y;
    2d4c:	7059      	strb	r1, [r3, #1]
    2d4e:	4770      	bx	lr
    2d50:	200006c9 	.word	0x200006c9

00002d54 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2d54:	4b03      	ldr	r3, [pc, #12]	; (2d64 <get_cursor+0x10>)
    2d56:	781a      	ldrb	r2, [r3, #0]
    2d58:	7858      	ldrb	r0, [r3, #1]
    2d5a:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2d5e:	b280      	uxth	r0, r0
    2d60:	4770      	bx	lr
    2d62:	bf00      	nop
    2d64:	200006c9 	.word	0x200006c9

00002d68 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2d68:	4b0f      	ldr	r3, [pc, #60]	; (2da8 <cursor_left+0x40>)
    2d6a:	789b      	ldrb	r3, [r3, #2]
    2d6c:	2b01      	cmp	r3, #1
    2d6e:	d00b      	beq.n	2d88 <cursor_left+0x20>
    2d70:	b113      	cbz	r3, 2d78 <cursor_left+0x10>
    2d72:	2b02      	cmp	r3, #2
    2d74:	d010      	beq.n	2d98 <cursor_left+0x30>
    2d76:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2d78:	4b0c      	ldr	r3, [pc, #48]	; (2dac <cursor_left+0x44>)
    2d7a:	781b      	ldrb	r3, [r3, #0]
    2d7c:	2b04      	cmp	r3, #4
    2d7e:	d412      	bmi.n	2da6 <cursor_left+0x3e>
    2d80:	3b04      	subs	r3, #4
    2d82:	4a0a      	ldr	r2, [pc, #40]	; (2dac <cursor_left+0x44>)
    2d84:	7013      	strb	r3, [r2, #0]
    2d86:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2d88:	4b08      	ldr	r3, [pc, #32]	; (2dac <cursor_left+0x44>)
    2d8a:	781b      	ldrb	r3, [r3, #0]
    2d8c:	2b08      	cmp	r3, #8
    2d8e:	d40a      	bmi.n	2da6 <cursor_left+0x3e>
    2d90:	3b08      	subs	r3, #8
    2d92:	4a06      	ldr	r2, [pc, #24]	; (2dac <cursor_left+0x44>)
    2d94:	7013      	strb	r3, [r2, #0]
    2d96:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2d98:	4b04      	ldr	r3, [pc, #16]	; (2dac <cursor_left+0x44>)
    2d9a:	781b      	ldrb	r3, [r3, #0]
    2d9c:	2b06      	cmp	r3, #6
    2d9e:	d402      	bmi.n	2da6 <cursor_left+0x3e>
    2da0:	3b06      	subs	r3, #6
    2da2:	4a02      	ldr	r2, [pc, #8]	; (2dac <cursor_left+0x44>)
    2da4:	7013      	strb	r3, [r2, #0]
    2da6:	4770      	bx	lr
    2da8:	20000220 	.word	0x20000220
    2dac:	200006c9 	.word	0x200006c9

00002db0 <print>:
void print(const char* str){
    2db0:	b510      	push	{r4, lr}
    2db2:	4604      	mov	r4, r0
    while ((c=*str++)){
    2db4:	e001      	b.n	2dba <print+0xa>
            new_line();
    2db6:	f7ff ff25 	bl	2c04 <new_line>
    while ((c=*str++)){
    2dba:	f814 0b01 	ldrb.w	r0, [r4], #1
    2dbe:	b158      	cbz	r0, 2dd8 <print+0x28>
        switch(c){
    2dc0:	280a      	cmp	r0, #10
    2dc2:	d0f8      	beq.n	2db6 <print+0x6>
    2dc4:	280d      	cmp	r0, #13
    2dc6:	d0f6      	beq.n	2db6 <print+0x6>
    2dc8:	2808      	cmp	r0, #8
    2dca:	d002      	beq.n	2dd2 <print+0x22>
            put_char(c);
    2dcc:	f7ff ff58 	bl	2c80 <put_char>
    2dd0:	e7f3      	b.n	2dba <print+0xa>
            cursor_left();    
    2dd2:	f7ff ffc9 	bl	2d68 <cursor_left>
            break;
    2dd6:	e7f0      	b.n	2dba <print+0xa>
}
    2dd8:	bd10      	pop	{r4, pc}

00002dda <println>:
void println(const char *text){
    2dda:	b508      	push	{r3, lr}
	print(text);
    2ddc:	f7ff ffe8 	bl	2db0 <print>
	new_line();
    2de0:	f7ff ff10 	bl	2c04 <new_line>
    2de4:	bd08      	pop	{r3, pc}

00002de6 <print_int>:
void print_int(int i,uint8_t base){
    2de6:	b530      	push	{r4, r5, lr}
    2de8:	b085      	sub	sp, #20
    fmt[15]=0;
    2dea:	2300      	movs	r3, #0
    2dec:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2df0:	2320      	movs	r3, #32
    2df2:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2df6:	1e02      	subs	r2, r0, #0
        i=-i;
    2df8:	bfba      	itte	lt
    2dfa:	4252      	neglt	r2, r2
        sign=1;
    2dfc:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2dfe:	2500      	movge	r5, #0
    while (idx>1 && i){
    2e00:	b1aa      	cbz	r2, 2e2e <print_int+0x48>
    2e02:	f10d 040e 	add.w	r4, sp, #14
    2e06:	200e      	movs	r0, #14
        d=i%base;
    2e08:	fb92 f3f1 	sdiv	r3, r2, r1
    2e0c:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2e10:	2b09      	cmp	r3, #9
    2e12:	bfc8      	it	gt
    2e14:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2e16:	3801      	subs	r0, #1
    2e18:	3330      	adds	r3, #48	; 0x30
    2e1a:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2e1e:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2e22:	2801      	cmp	r0, #1
    2e24:	d007      	beq.n	2e36 <print_int+0x50>
    2e26:	2a00      	cmp	r2, #0
    2e28:	d1ee      	bne.n	2e08 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2e2a:	280e      	cmp	r0, #14
    2e2c:	d103      	bne.n	2e36 <print_int+0x50>
    2e2e:	2330      	movs	r3, #48	; 0x30
    2e30:	f88d 300d 	strb.w	r3, [sp, #13]
    2e34:	200d      	movs	r0, #13
    if (base==10 && sign){
    2e36:	290a      	cmp	r1, #10
    2e38:	d006      	beq.n	2e48 <print_int+0x62>
    }else if (base==16){
    2e3a:	2910      	cmp	r1, #16
    2e3c:	d00d      	beq.n	2e5a <print_int+0x74>
    print(&fmt[idx]);
    2e3e:	4468      	add	r0, sp
    2e40:	f7ff ffb6 	bl	2db0 <print>
}
    2e44:	b005      	add	sp, #20
    2e46:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2e48:	2d00      	cmp	r5, #0
    2e4a:	d0f8      	beq.n	2e3e <print_int+0x58>
        fmt[--idx]='-';
    2e4c:	3801      	subs	r0, #1
    2e4e:	ab04      	add	r3, sp, #16
    2e50:	4403      	add	r3, r0
    2e52:	222d      	movs	r2, #45	; 0x2d
    2e54:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e58:	e7f1      	b.n	2e3e <print_int+0x58>
        fmt[--idx]='$';
    2e5a:	3801      	subs	r0, #1
    2e5c:	ab04      	add	r3, sp, #16
    2e5e:	4403      	add	r3, r0
    2e60:	2224      	movs	r2, #36	; 0x24
    2e62:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e66:	e7ea      	b.n	2e3e <print_int+0x58>

00002e68 <text_scroller>:
		break;	
	}
}

void text_scroller(const uint8_t *text, uint8_t speed){
    2e68:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2e6c:	4604      	mov	r4, r0
    2e6e:	4688      	mov	r8, r1
	uint8_t c,j;

	gfx_cls();
    2e70:	f7fe fbb6 	bl	15e0 <gfx_cls>
	font=font_id;
    2e74:	2202      	movs	r2, #2
    2e76:	4b27      	ldr	r3, [pc, #156]	; (2f14 <text_scroller+0xac>)
    2e78:	709a      	strb	r2, [r3, #2]
	select_font(FONT_ASCII);
	c=*text++;
    2e7a:	1c65      	adds	r5, r4, #1
    2e7c:	7824      	ldrb	r4, [r4, #0]
	while (c){
    2e7e:	b374      	cbz	r4, 2ede <text_scroller+0x76>
	xpos=x;
    2e80:	4f25      	ldr	r7, [pc, #148]	; (2f18 <text_scroller+0xb0>)
    2e82:	f04f 0900 	mov.w	r9, #0
	ypos=y;
    2e86:	2620      	movs	r6, #32
	xpos=x;
    2e88:	f887 9000 	strb.w	r9, [r7]
	ypos=y;
    2e8c:	707e      	strb	r6, [r7, #1]
		set_cursor(0,4*CHAR_HEIGHT);
		while (c && c!='\n'){
    2e8e:	b16c      	cbz	r4, 2eac <text_scroller+0x44>
    2e90:	2c0a      	cmp	r4, #10
    2e92:	d00b      	beq.n	2eac <text_scroller+0x44>
			put_char(c);
    2e94:	4620      	mov	r0, r4
    2e96:	f7ff fef3 	bl	2c80 <put_char>
			c=*text++;
    2e9a:	f815 4b01 	ldrb.w	r4, [r5], #1
			if (btn_query_down(KEY_B)) {goto break_out;}
    2e9e:	4630      	mov	r0, r6
    2ea0:	f7fe f908 	bl	10b4 <btn_query_down>
    2ea4:	bb70      	cbnz	r0, 2f04 <text_scroller+0x9c>
		while (c && c!='\n'){
    2ea6:	b10c      	cbz	r4, 2eac <text_scroller+0x44>
    2ea8:	2c0a      	cmp	r4, #10
    2eaa:	d1f3      	bne.n	2e94 <text_scroller+0x2c>
		for (j=0;j<CHAR_HEIGHT;j++){
			game_pause(speed);
			gfx_scroll_up(1);
			if (btn_query_down(KEY_B)) {goto break_out;}
		}
		c=*text++;
    2eac:	f04f 0b08 	mov.w	fp, #8
			game_pause(speed);
    2eb0:	fa1f fa88 	uxth.w	sl, r8
			gfx_scroll_up(1);
    2eb4:	2401      	movs	r4, #1
			game_pause(speed);
    2eb6:	4650      	mov	r0, sl
    2eb8:	f000 fad8 	bl	346c <game_pause>
			gfx_scroll_up(1);
    2ebc:	4620      	mov	r0, r4
    2ebe:	f7fe fba3 	bl	1608 <gfx_scroll_up>
			if (btn_query_down(KEY_B)) {goto break_out;}
    2ec2:	4630      	mov	r0, r6
    2ec4:	f7fe f8f6 	bl	10b4 <btn_query_down>
    2ec8:	b9e0      	cbnz	r0, 2f04 <text_scroller+0x9c>
    2eca:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
		for (j=0;j<CHAR_HEIGHT;j++){
    2ece:	f013 0bff 	ands.w	fp, r3, #255	; 0xff
    2ed2:	d1f0      	bne.n	2eb6 <text_scroller+0x4e>
		c=*text++;
    2ed4:	1c6b      	adds	r3, r5, #1
    2ed6:	782c      	ldrb	r4, [r5, #0]
	while (c){
    2ed8:	b10c      	cbz	r4, 2ede <text_scroller+0x76>
		c=*text++;
    2eda:	461d      	mov	r5, r3
    2edc:	e7d4      	b.n	2e88 <text_scroller+0x20>
    2ede:	2420      	movs	r4, #32
	}//while
	for (c=0;c<4*CHAR_HEIGHT;c++){
		game_pause(speed);
    2ee0:	fa1f f888 	uxth.w	r8, r8
		gfx_scroll_up(1);
    2ee4:	2601      	movs	r6, #1
		if (btn_query_down(KEY_B)) { break;}
    2ee6:	4625      	mov	r5, r4
		game_pause(speed);
    2ee8:	4640      	mov	r0, r8
    2eea:	f000 fabf 	bl	346c <game_pause>
		gfx_scroll_up(1);
    2eee:	4630      	mov	r0, r6
    2ef0:	f7fe fb8a 	bl	1608 <gfx_scroll_up>
		if (btn_query_down(KEY_B)) { break;}
    2ef4:	4628      	mov	r0, r5
    2ef6:	f7fe f8dd 	bl	10b4 <btn_query_down>
    2efa:	b918      	cbnz	r0, 2f04 <text_scroller+0x9c>
    2efc:	1e63      	subs	r3, r4, #1
	for (c=0;c<4*CHAR_HEIGHT;c++){
    2efe:	f013 04ff 	ands.w	r4, r3, #255	; 0xff
    2f02:	d1f1      	bne.n	2ee8 <text_scroller+0x80>
	}//for
break_out:	
	gfx_cls();
    2f04:	f7fe fb6c 	bl	15e0 <gfx_cls>
	btn_wait_up(KEY_B); 
    2f08:	2020      	movs	r0, #32
    2f0a:	f7fe f8f3 	bl	10f4 <btn_wait_up>
    2f0e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2f12:	bf00      	nop
    2f14:	20000220 	.word	0x20000220
    2f18:	200006c9 	.word	0x200006c9

00002f1c <prompt_btn>:
}

void prompt_btn(){
    2f1c:	b508      	push	{r3, lr}
	print("press button");
    2f1e:	4802      	ldr	r0, [pc, #8]	; (2f28 <prompt_btn+0xc>)
    2f20:	f7ff ff46 	bl	2db0 <print>
    2f24:	bd08      	pop	{r3, pc}
    2f26:	bf00      	nop
    2f28:	00003ed8 	.word	0x00003ed8

00002f2c <clear_screen>:
}

void clear_screen(){
    2f2c:	b508      	push	{r3, lr}
	gfx_cls();
    2f2e:	f7fe fb57 	bl	15e0 <gfx_cls>
	xpos=0;
    2f32:	4b02      	ldr	r3, [pc, #8]	; (2f3c <clear_screen+0x10>)
    2f34:	2200      	movs	r2, #0
    2f36:	701a      	strb	r2, [r3, #0]
	ypos=0;
    2f38:	705a      	strb	r2, [r3, #1]
    2f3a:	bd08      	pop	{r3, pc}
    2f3c:	200006c9 	.word	0x200006c9

00002f40 <show_cursor>:
}

// affiche un curseur texte
void show_cursor(int show){
    2f40:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2f42:	2800      	cmp	r0, #0
    2f44:	bf14      	ite	ne
    2f46:	260f      	movne	r6, #15
    2f48:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2f4a:	4b09      	ldr	r3, [pc, #36]	; (2f70 <show_cursor+0x30>)
    2f4c:	781c      	ldrb	r4, [r3, #0]
    2f4e:	1da3      	adds	r3, r4, #6
    2f50:	429c      	cmp	r4, r3
    2f52:	da0b      	bge.n	2f6c <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2f54:	4d06      	ldr	r5, [pc, #24]	; (2f70 <show_cursor+0x30>)
    2f56:	7869      	ldrb	r1, [r5, #1]
    2f58:	4632      	mov	r2, r6
    2f5a:	3107      	adds	r1, #7
    2f5c:	4620      	mov	r0, r4
    2f5e:	f7fe fb15 	bl	158c <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2f62:	3401      	adds	r4, #1
    2f64:	782b      	ldrb	r3, [r5, #0]
    2f66:	3306      	adds	r3, #6
    2f68:	42a3      	cmp	r3, r4
    2f6a:	dcf4      	bgt.n	2f56 <show_cursor+0x16>
    2f6c:	bd70      	pop	{r4, r5, r6, pc}
    2f6e:	bf00      	nop
    2f70:	200006c9 	.word	0x200006c9

00002f74 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2f74:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2f78:	f000 fa6e 	bl	3458 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2f7c:	4b0c      	ldr	r3, [pc, #48]	; (2fb0 <clear_line+0x3c>)
    2f7e:	785c      	ldrb	r4, [r3, #1]
    2f80:	f104 0308 	add.w	r3, r4, #8
    2f84:	429c      	cmp	r4, r3
    2f86:	da10      	bge.n	2faa <clear_line+0x36>
    2f88:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2f8a:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2fb4 <clear_line+0x40>
    2f8e:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2f90:	4e07      	ldr	r6, [pc, #28]	; (2fb0 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2f92:	7a28      	ldrb	r0, [r5, #8]
    2f94:	463a      	mov	r2, r7
    2f96:	4601      	mov	r1, r0
    2f98:	fb04 8000 	mla	r0, r4, r0, r8
    2f9c:	f7fe f9c1 	bl	1322 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fa0:	3401      	adds	r4, #1
    2fa2:	7873      	ldrb	r3, [r6, #1]
    2fa4:	3308      	adds	r3, #8
    2fa6:	42a3      	cmp	r3, r4
    2fa8:	dcf3      	bgt.n	2f92 <clear_line+0x1e>
    2faa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2fae:	bf00      	nop
    2fb0:	200006c9 	.word	0x200006c9
    2fb4:	20002704 	.word	0x20002704

00002fb8 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2fb8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2fbc:	4c31      	ldr	r4, [pc, #196]	; (3084 <tvout_init+0xcc>)
    2fbe:	4b32      	ldr	r3, [pc, #200]	; (3088 <tvout_init+0xd0>)
    2fc0:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2fc2:	4a32      	ldr	r2, [pc, #200]	; (308c <tvout_init+0xd4>)
    2fc4:	4b32      	ldr	r3, [pc, #200]	; (3090 <tvout_init+0xd8>)
    2fc6:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2fc8:	220a      	movs	r2, #10
    2fca:	2108      	movs	r1, #8
    2fcc:	4620      	mov	r0, r4
    2fce:	f7fe fa51 	bl	1474 <config_pin>
    PORTA->ODR=0;
    2fd2:	2500      	movs	r5, #0
    2fd4:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2fd6:	4e2f      	ldr	r6, [pc, #188]	; (3094 <tvout_init+0xdc>)
    2fd8:	69b3      	ldr	r3, [r6, #24]
    2fda:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2fde:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2fe0:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2fe4:	f04f 0878 	mov.w	r8, #120	; 0x78
    2fe8:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2fec:	2301      	movs	r3, #1
    2fee:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2ff0:	2784      	movs	r7, #132	; 0x84
    2ff2:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2ff4:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2ff8:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2ffa:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2ffe:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    3000:	f240 1365 	movw	r3, #357	; 0x165
    3004:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    3006:	6963      	ldr	r3, [r4, #20]
    3008:	f043 0301 	orr.w	r3, r3, #1
    300c:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    300e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    3012:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    3014:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    3016:	68e3      	ldr	r3, [r4, #12]
    3018:	f043 0301 	orr.w	r3, r3, #1
    301c:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    301e:	4629      	mov	r1, r5
    3020:	2019      	movs	r0, #25
    3022:	f7fe ffed 	bl	2000 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    3026:	4629      	mov	r1, r5
    3028:	201b      	movs	r0, #27
    302a:	f7fe ffe9 	bl	2000 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    302e:	2019      	movs	r0, #25
    3030:	f7fe ff86 	bl	1f40 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    3034:	201b      	movs	r0, #27
    3036:	f7fe ff83 	bl	1f40 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    303a:	6823      	ldr	r3, [r4, #0]
    303c:	f043 0301 	orr.w	r3, r3, #1
    3040:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    3042:	220a      	movs	r2, #10
    3044:	4629      	mov	r1, r5
    3046:	4814      	ldr	r0, [pc, #80]	; (3098 <tvout_init+0xe0>)
    3048:	f7fe fa14 	bl	1474 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    304c:	69f3      	ldr	r3, [r6, #28]
    304e:	f043 0302 	orr.w	r3, r3, #2
    3052:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    3054:	4b11      	ldr	r3, [pc, #68]	; (309c <tvout_init+0xe4>)
    3056:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    305a:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    305c:	2213      	movs	r2, #19
    305e:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    3060:	220a      	movs	r2, #10
    3062:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    3064:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    3066:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    306a:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    306c:	695a      	ldr	r2, [r3, #20]
    306e:	f042 0201 	orr.w	r2, r2, #1
    3072:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    3074:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    3076:	681a      	ldr	r2, [r3, #0]
    3078:	f042 0201 	orr.w	r2, r2, #1
    307c:	601a      	str	r2, [r3, #0]
    307e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    3082:	bf00      	nop
    3084:	40010800 	.word	0x40010800
    3088:	88883333 	.word	0x88883333
    308c:	84484444 	.word	0x84484444
    3090:	40010804 	.word	0x40010804
    3094:	40021000 	.word	0x40021000
    3098:	40010c00 	.word	0x40010c00
    309c:	40000400 	.word	0x40000400

000030a0 <TV_OUT_handler>:
                              "mov r2,%0\n"\
                              "1: subs r2,#1\n\t"\
                              "bne.n 1b\n\t"\
                              ::"r" (dly):"r2")

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    30a0:	4668      	mov	r0, sp
    30a2:	f020 0107 	bic.w	r1, r0, #7
    30a6:	468d      	mov	sp, r1
    30a8:	b431      	push	{r0, r4, r5}
    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    30aa:	4a2f      	ldr	r2, [pc, #188]	; (3168 <TV_OUT_handler+0xc8>)
    30ac:	6a13      	ldr	r3, [r2, #32]
    30ae:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    30b2:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    30b4:	492d      	ldr	r1, [pc, #180]	; (316c <TV_OUT_handler+0xcc>)
    30b6:	f240 2209 	movw	r2, #521	; 0x209
    30ba:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    30bc:	4293      	cmp	r3, r2
    30be:	d9fc      	bls.n	30ba <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    30c0:	4a29      	ldr	r2, [pc, #164]	; (3168 <TV_OUT_handler+0xc8>)
    30c2:	6a13      	ldr	r3, [r2, #32]
    30c4:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    30c8:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    30ca:	4b29      	ldr	r3, [pc, #164]	; (3170 <TV_OUT_handler+0xd0>)
    30cc:	881d      	ldrh	r5, [r3, #0]
    30ce:	b2ad      	uxth	r5, r5
    30d0:	4b28      	ldr	r3, [pc, #160]	; (3174 <TV_OUT_handler+0xd4>)
    30d2:	7818      	ldrb	r0, [r3, #0]
    30d4:	785a      	ldrb	r2, [r3, #1]
    30d6:	fb95 f5f2 	sdiv	r5, r5, r2
    30da:	4a27      	ldr	r2, [pc, #156]	; (3178 <TV_OUT_handler+0xd8>)
    30dc:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    30e0:	8859      	ldrh	r1, [r3, #2]
    30e2:	4a22      	ldr	r2, [pc, #136]	; (316c <TV_OUT_handler+0xcc>)
    30e4:	6a53      	ldr	r3, [r2, #36]	; 0x24
    30e6:	428b      	cmp	r3, r1
    30e8:	d3fc      	bcc.n	30e4 <TV_OUT_handler+0x44>
    _jitter_cancel();
    30ea:	4b24      	ldr	r3, [pc, #144]	; (317c <TV_OUT_handler+0xdc>)
    30ec:	461a      	mov	r2, r3
    30ee:	6812      	ldr	r2, [r2, #0]
    30f0:	f002 0207 	and.w	r2, r2, #7
    30f4:	ea4f 0242 	mov.w	r2, r2, lsl #1
    30f8:	4497      	add	pc, r2
    30fa:	bf00      	nop
    30fc:	bf00      	nop
    30fe:	bf00      	nop
    3100:	bf00      	nop
    3102:	bf00      	nop
    3104:	bf00      	nop
    3106:	bf00      	nop
    3108:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    310a:	4a17      	ldr	r2, [pc, #92]	; (3168 <TV_OUT_handler+0xc8>)
    310c:	6a13      	ldr	r3, [r2, #32]
    310e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3112:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    3114:	b1b0      	cbz	r0, 3144 <TV_OUT_handler+0xa4>
    3116:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3118:	4819      	ldr	r0, [pc, #100]	; (3180 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    311a:	4916      	ldr	r1, [pc, #88]	; (3174 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    311c:	781a      	ldrb	r2, [r3, #0]
    311e:	0912      	lsrs	r2, r2, #4
    3120:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    3122:	790c      	ldrb	r4, [r1, #4]
    3124:	4622      	mov	r2, r4
    3126:	3a01      	subs	r2, #1
    3128:	d1fd      	bne.n	3126 <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    312a:	f813 2b01 	ldrb.w	r2, [r3], #1
    312e:	f002 020f 	and.w	r2, r2, #15
    3132:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    3134:	790c      	ldrb	r4, [r1, #4]
    3136:	4622      	mov	r2, r4
    3138:	3a01      	subs	r2, #1
    313a:	d1fd      	bne.n	3138 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    313c:	1b5c      	subs	r4, r3, r5
    313e:	780a      	ldrb	r2, [r1, #0]
    3140:	4294      	cmp	r4, r2
    3142:	d3eb      	bcc.n	311c <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    3144:	2200      	movs	r2, #0
    3146:	4b0f      	ldr	r3, [pc, #60]	; (3184 <TV_OUT_handler+0xe4>)
    3148:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    314a:	4a07      	ldr	r2, [pc, #28]	; (3168 <TV_OUT_handler+0xc8>)
    314c:	6a13      	ldr	r3, [r2, #32]
    314e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3152:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    3154:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    3158:	6913      	ldr	r3, [r2, #16]
    315a:	f023 0304 	bic.w	r3, r3, #4
    315e:	6113      	str	r3, [r2, #16]
}
    3160:	bc31      	pop	{r0, r4, r5}
    3162:	4685      	mov	sp, r0
    3164:	4770      	bx	lr
    3166:	bf00      	nop
    3168:	40000400 	.word	0x40000400
    316c:	40012c00 	.word	0x40012c00
    3170:	200006cc 	.word	0x200006cc
    3174:	20000224 	.word	0x20000224
    3178:	20002704 	.word	0x20002704
    317c:	40012c24 	.word	0x40012c24
    3180:	4001080c 	.word	0x4001080c
    3184:	40010800 	.word	0x40010800

00003188 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    3188:	4668      	mov	r0, sp
    318a:	f020 0107 	bic.w	r1, r0, #7
    318e:	468d      	mov	sp, r1
    3190:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    3192:	4a8e      	ldr	r2, [pc, #568]	; (33cc <TV_SYNC_handler+0x244>)
    3194:	8853      	ldrh	r3, [r2, #2]
    3196:	3301      	adds	r3, #1
    3198:	b29b      	uxth	r3, r3
    319a:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    319c:	498c      	ldr	r1, [pc, #560]	; (33d0 <TV_SYNC_handler+0x248>)
    319e:	680b      	ldr	r3, [r1, #0]
    31a0:	3301      	adds	r3, #1
    31a2:	600b      	str	r3, [r1, #0]
    switch (task){
    31a4:	8893      	ldrh	r3, [r2, #4]
    31a6:	b29b      	uxth	r3, r3
    31a8:	2b09      	cmp	r3, #9
    31aa:	f200 8081 	bhi.w	32b0 <TV_SYNC_handler+0x128>
    31ae:	e8df f013 	tbh	[pc, r3, lsl #1]
    31b2:	000a      	.short	0x000a
    31b4:	0048002a 	.word	0x0048002a
    31b8:	00880069 	.word	0x00880069
    31bc:	00a50090 	.word	0x00a50090
    31c0:	00d100b4 	.word	0x00d100b4
    31c4:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    31c6:	4b81      	ldr	r3, [pc, #516]	; (33cc <TV_SYNC_handler+0x244>)
    31c8:	881b      	ldrh	r3, [r3, #0]
    31ca:	b29b      	uxth	r3, r3
    31cc:	b17b      	cbz	r3, 31ee <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    31ce:	4a7f      	ldr	r2, [pc, #508]	; (33cc <TV_SYNC_handler+0x244>)
    31d0:	8813      	ldrh	r3, [r2, #0]
    31d2:	3301      	adds	r3, #1
    31d4:	b29b      	uxth	r3, r3
    31d6:	8013      	strh	r3, [r2, #0]
    31d8:	8813      	ldrh	r3, [r2, #0]
    31da:	b29b      	uxth	r3, r3
    31dc:	2b06      	cmp	r3, #6
    31de:	d167      	bne.n	32b0 <TV_SYNC_handler+0x128>
    31e0:	2300      	movs	r3, #0
    31e2:	8013      	strh	r3, [r2, #0]
    31e4:	8893      	ldrh	r3, [r2, #4]
    31e6:	3301      	adds	r3, #1
    31e8:	b29b      	uxth	r3, r3
    31ea:	8093      	strh	r3, [r2, #4]
    31ec:	e060      	b.n	32b0 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    31ee:	4b79      	ldr	r3, [pc, #484]	; (33d4 <TV_SYNC_handler+0x24c>)
    31f0:	f640 02e2 	movw	r2, #2274	; 0x8e2
    31f4:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    31f6:	22a4      	movs	r2, #164	; 0xa4
    31f8:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    31fa:	4a74      	ldr	r2, [pc, #464]	; (33cc <TV_SYNC_handler+0x244>)
    31fc:	8813      	ldrh	r3, [r2, #0]
    31fe:	3301      	adds	r3, #1
    3200:	b29b      	uxth	r3, r3
    3202:	8013      	strh	r3, [r2, #0]
    3204:	e054      	b.n	32b0 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    3206:	4b71      	ldr	r3, [pc, #452]	; (33cc <TV_SYNC_handler+0x244>)
    3208:	881b      	ldrh	r3, [r3, #0]
    320a:	b29b      	uxth	r3, r3
    320c:	b17b      	cbz	r3, 322e <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    320e:	4a6f      	ldr	r2, [pc, #444]	; (33cc <TV_SYNC_handler+0x244>)
    3210:	8813      	ldrh	r3, [r2, #0]
    3212:	3301      	adds	r3, #1
    3214:	b29b      	uxth	r3, r3
    3216:	8013      	strh	r3, [r2, #0]
    3218:	8813      	ldrh	r3, [r2, #0]
    321a:	b29b      	uxth	r3, r3
    321c:	2b06      	cmp	r3, #6
    321e:	d147      	bne.n	32b0 <TV_SYNC_handler+0x128>
    3220:	2300      	movs	r3, #0
    3222:	8013      	strh	r3, [r2, #0]
    3224:	8893      	ldrh	r3, [r2, #4]
    3226:	3301      	adds	r3, #1
    3228:	b29b      	uxth	r3, r3
    322a:	8093      	strh	r3, [r2, #4]
    322c:	e040      	b.n	32b0 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    322e:	f240 7294 	movw	r2, #1940	; 0x794
    3232:	4b68      	ldr	r3, [pc, #416]	; (33d4 <TV_SYNC_handler+0x24c>)
    3234:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3236:	4a65      	ldr	r2, [pc, #404]	; (33cc <TV_SYNC_handler+0x244>)
    3238:	8813      	ldrh	r3, [r2, #0]
    323a:	3301      	adds	r3, #1
    323c:	b29b      	uxth	r3, r3
    323e:	8013      	strh	r3, [r2, #0]
    3240:	e036      	b.n	32b0 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    3242:	4b62      	ldr	r3, [pc, #392]	; (33cc <TV_SYNC_handler+0x244>)
    3244:	881b      	ldrh	r3, [r3, #0]
    3246:	b29b      	uxth	r3, r3
    3248:	b153      	cbz	r3, 3260 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    324a:	4b60      	ldr	r3, [pc, #384]	; (33cc <TV_SYNC_handler+0x244>)
    324c:	881b      	ldrh	r3, [r3, #0]
    324e:	b29b      	uxth	r3, r3
    3250:	2b06      	cmp	r3, #6
    3252:	d00e      	beq.n	3272 <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    3254:	4a5d      	ldr	r2, [pc, #372]	; (33cc <TV_SYNC_handler+0x244>)
    3256:	8813      	ldrh	r3, [r2, #0]
    3258:	3301      	adds	r3, #1
    325a:	b29b      	uxth	r3, r3
    325c:	8013      	strh	r3, [r2, #0]
            break;
    325e:	e027      	b.n	32b0 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    3260:	22a4      	movs	r2, #164	; 0xa4
    3262:	4b5c      	ldr	r3, [pc, #368]	; (33d4 <TV_SYNC_handler+0x24c>)
    3264:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3266:	4a59      	ldr	r2, [pc, #356]	; (33cc <TV_SYNC_handler+0x244>)
    3268:	8813      	ldrh	r3, [r2, #0]
    326a:	3301      	adds	r3, #1
    326c:	b29b      	uxth	r3, r3
    326e:	8013      	strh	r3, [r2, #0]
            break;
    3270:	e01e      	b.n	32b0 <TV_SYNC_handler+0x128>
            task++;
    3272:	4a56      	ldr	r2, [pc, #344]	; (33cc <TV_SYNC_handler+0x244>)
    3274:	8893      	ldrh	r3, [r2, #4]
    3276:	3301      	adds	r3, #1
    3278:	b29b      	uxth	r3, r3
    327a:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    327c:	88d3      	ldrh	r3, [r2, #6]
    327e:	f013 0f01 	tst.w	r3, #1
    3282:	d015      	beq.n	32b0 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    3284:	4b53      	ldr	r3, [pc, #332]	; (33d4 <TV_SYNC_handler+0x24c>)
    3286:	f241 12c5 	movw	r2, #4549	; 0x11c5
    328a:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    328c:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3290:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    3292:	4a4e      	ldr	r2, [pc, #312]	; (33cc <TV_SYNC_handler+0x244>)
    3294:	88d3      	ldrh	r3, [r2, #6]
    3296:	f023 0302 	bic.w	r3, r3, #2
    329a:	041b      	lsls	r3, r3, #16
    329c:	0c1b      	lsrs	r3, r3, #16
    329e:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    32a0:	8853      	ldrh	r3, [r2, #2]
    32a2:	f3c3 038d 	ubfx	r3, r3, #2, #14
    32a6:	8053      	strh	r3, [r2, #2]
        task++;
    32a8:	8893      	ldrh	r3, [r2, #4]
    32aa:	3301      	adds	r3, #1
    32ac:	b29b      	uxth	r3, r3
    32ae:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    32b0:	4a48      	ldr	r2, [pc, #288]	; (33d4 <TV_SYNC_handler+0x24c>)
    32b2:	6913      	ldr	r3, [r2, #16]
    32b4:	f023 0301 	bic.w	r3, r3, #1
    32b8:	6113      	str	r3, [r2, #16]
}
    32ba:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    32be:	4685      	mov	sp, r0
    32c0:	4770      	bx	lr
        read_gamepad();
    32c2:	f7fd fed3 	bl	106c <read_gamepad>
        task++;
    32c6:	4a41      	ldr	r2, [pc, #260]	; (33cc <TV_SYNC_handler+0x244>)
    32c8:	8893      	ldrh	r3, [r2, #4]
    32ca:	3301      	adds	r3, #1
    32cc:	b29b      	uxth	r3, r3
    32ce:	8093      	strh	r3, [r2, #4]
        break;    
    32d0:	e7ee      	b.n	32b0 <TV_SYNC_handler+0x128>
        if (sound_timer){
    32d2:	4b41      	ldr	r3, [pc, #260]	; (33d8 <TV_SYNC_handler+0x250>)
    32d4:	881b      	ldrh	r3, [r3, #0]
    32d6:	b29b      	uxth	r3, r3
    32d8:	b13b      	cbz	r3, 32ea <TV_SYNC_handler+0x162>
            sound_timer--;
    32da:	4a3f      	ldr	r2, [pc, #252]	; (33d8 <TV_SYNC_handler+0x250>)
    32dc:	8813      	ldrh	r3, [r2, #0]
    32de:	3b01      	subs	r3, #1
    32e0:	b29b      	uxth	r3, r3
    32e2:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    32e4:	8813      	ldrh	r3, [r2, #0]
    32e6:	b29b      	uxth	r3, r3
    32e8:	b12b      	cbz	r3, 32f6 <TV_SYNC_handler+0x16e>
        task++;
    32ea:	4a38      	ldr	r2, [pc, #224]	; (33cc <TV_SYNC_handler+0x244>)
    32ec:	8893      	ldrh	r3, [r2, #4]
    32ee:	3301      	adds	r3, #1
    32f0:	b29b      	uxth	r3, r3
    32f2:	8093      	strh	r3, [r2, #4]
        break;    
    32f4:	e7dc      	b.n	32b0 <TV_SYNC_handler+0x128>
                sound_stop();
    32f6:	f7ff fad3 	bl	28a0 <sound_stop>
    32fa:	e7f6      	b.n	32ea <TV_SYNC_handler+0x162>
        if (game_timer){
    32fc:	4b37      	ldr	r3, [pc, #220]	; (33dc <TV_SYNC_handler+0x254>)
    32fe:	881b      	ldrh	r3, [r3, #0]
    3300:	b29b      	uxth	r3, r3
    3302:	b123      	cbz	r3, 330e <TV_SYNC_handler+0x186>
            game_timer--;
    3304:	4a35      	ldr	r2, [pc, #212]	; (33dc <TV_SYNC_handler+0x254>)
    3306:	8813      	ldrh	r3, [r2, #0]
    3308:	3b01      	subs	r3, #1
    330a:	b29b      	uxth	r3, r3
    330c:	8013      	strh	r3, [r2, #0]
        task++;
    330e:	4a2f      	ldr	r2, [pc, #188]	; (33cc <TV_SYNC_handler+0x244>)
    3310:	8893      	ldrh	r3, [r2, #4]
    3312:	3301      	adds	r3, #1
    3314:	b29b      	uxth	r3, r3
    3316:	8093      	strh	r3, [r2, #4]
        break;
    3318:	e7ca      	b.n	32b0 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    331a:	4b2c      	ldr	r3, [pc, #176]	; (33cc <TV_SYNC_handler+0x244>)
    331c:	885b      	ldrh	r3, [r3, #2]
    331e:	b29b      	uxth	r3, r3
    3320:	4a2f      	ldr	r2, [pc, #188]	; (33e0 <TV_SYNC_handler+0x258>)
    3322:	88d2      	ldrh	r2, [r2, #6]
    3324:	429a      	cmp	r2, r3
    3326:	d1c3      	bne.n	32b0 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    3328:	4b2a      	ldr	r3, [pc, #168]	; (33d4 <TV_SYNC_handler+0x24c>)
    332a:	691a      	ldr	r2, [r3, #16]
    332c:	f022 0204 	bic.w	r2, r2, #4
    3330:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    3332:	68da      	ldr	r2, [r3, #12]
    3334:	f042 0204 	orr.w	r2, r2, #4
    3338:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    333a:	4b24      	ldr	r3, [pc, #144]	; (33cc <TV_SYNC_handler+0x244>)
    333c:	88da      	ldrh	r2, [r3, #6]
    333e:	b292      	uxth	r2, r2
    3340:	f042 0204 	orr.w	r2, r2, #4
    3344:	80da      	strh	r2, [r3, #6]
            task++;
    3346:	889a      	ldrh	r2, [r3, #4]
    3348:	3201      	adds	r2, #1
    334a:	b292      	uxth	r2, r2
    334c:	809a      	strh	r2, [r3, #4]
            slice=0;
    334e:	2200      	movs	r2, #0
    3350:	801a      	strh	r2, [r3, #0]
    3352:	e7ad      	b.n	32b0 <TV_SYNC_handler+0x128>
        slice++;
    3354:	4a1d      	ldr	r2, [pc, #116]	; (33cc <TV_SYNC_handler+0x244>)
    3356:	8813      	ldrh	r3, [r2, #0]
    3358:	3301      	adds	r3, #1
    335a:	b29b      	uxth	r3, r3
    335c:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    335e:	8853      	ldrh	r3, [r2, #2]
    3360:	b29b      	uxth	r3, r3
    3362:	4a1f      	ldr	r2, [pc, #124]	; (33e0 <TV_SYNC_handler+0x258>)
    3364:	8912      	ldrh	r2, [r2, #8]
    3366:	429a      	cmp	r2, r3
    3368:	d1a2      	bne.n	32b0 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    336a:	4a1a      	ldr	r2, [pc, #104]	; (33d4 <TV_SYNC_handler+0x24c>)
    336c:	68d3      	ldr	r3, [r2, #12]
    336e:	f023 0304 	bic.w	r3, r3, #4
    3372:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    3374:	4a15      	ldr	r2, [pc, #84]	; (33cc <TV_SYNC_handler+0x244>)
    3376:	88d3      	ldrh	r3, [r2, #6]
    3378:	f023 0304 	bic.w	r3, r3, #4
    337c:	041b      	lsls	r3, r3, #16
    337e:	0c1b      	lsrs	r3, r3, #16
    3380:	80d3      	strh	r3, [r2, #6]
            task++;
    3382:	8893      	ldrh	r3, [r2, #4]
    3384:	3301      	adds	r3, #1
    3386:	b29b      	uxth	r3, r3
    3388:	8093      	strh	r3, [r2, #4]
    338a:	e791      	b.n	32b0 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    338c:	4b0f      	ldr	r3, [pc, #60]	; (33cc <TV_SYNC_handler+0x244>)
    338e:	885b      	ldrh	r3, [r3, #2]
    3390:	b29b      	uxth	r3, r3
    3392:	f240 1207 	movw	r2, #263	; 0x107
    3396:	4293      	cmp	r3, r2
    3398:	d18a      	bne.n	32b0 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    339a:	4b0c      	ldr	r3, [pc, #48]	; (33cc <TV_SYNC_handler+0x244>)
    339c:	88db      	ldrh	r3, [r3, #6]
    339e:	f013 0f01 	tst.w	r3, #1
    33a2:	d003      	beq.n	33ac <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    33a4:	f640 02e2 	movw	r2, #2274	; 0x8e2
    33a8:	4b0a      	ldr	r3, [pc, #40]	; (33d4 <TV_SYNC_handler+0x24c>)
    33aa:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    33ac:	4b07      	ldr	r3, [pc, #28]	; (33cc <TV_SYNC_handler+0x244>)
    33ae:	88da      	ldrh	r2, [r3, #6]
    33b0:	b292      	uxth	r2, r2
    33b2:	f082 0201 	eor.w	r2, r2, #1
    33b6:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    33b8:	88da      	ldrh	r2, [r3, #6]
    33ba:	b292      	uxth	r2, r2
    33bc:	f042 0202 	orr.w	r2, r2, #2
    33c0:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    33c2:	2200      	movs	r2, #0
    33c4:	805a      	strh	r2, [r3, #2]
            slice=0;
    33c6:	801a      	strh	r2, [r3, #0]
            task=0;
    33c8:	809a      	strh	r2, [r3, #4]
    33ca:	e771      	b.n	32b0 <TV_SYNC_handler+0x128>
    33cc:	200006cc 	.word	0x200006cc
    33d0:	20004e68 	.word	0x20004e68
    33d4:	40012c00 	.word	0x40012c00
    33d8:	20004e6c 	.word	0x20004e6c
    33dc:	20004e64 	.word	0x20004e64
    33e0:	20000224 	.word	0x20000224

000033e4 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    33e4:	4a02      	ldr	r2, [pc, #8]	; (33f0 <frame_sync+0xc>)
    33e6:	88d3      	ldrh	r3, [r2, #6]
    33e8:	f013 0f02 	tst.w	r3, #2
    33ec:	d0fb      	beq.n	33e6 <frame_sync+0x2>
}
    33ee:	4770      	bx	lr
    33f0:	200006cc 	.word	0x200006cc

000033f4 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    33f4:	4a02      	ldr	r2, [pc, #8]	; (3400 <wait_sync_end+0xc>)
    33f6:	88d3      	ldrh	r3, [r2, #6]
    33f8:	f013 0f02 	tst.w	r3, #2
    33fc:	d1fb      	bne.n	33f6 <wait_sync_end+0x2>
}
    33fe:	4770      	bx	lr
    3400:	200006cc 	.word	0x200006cc

00003404 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3404:	b510      	push	{r4, lr}
    3406:	4604      	mov	r4, r0
    frame_sync();
    3408:	f7ff ffec 	bl	33e4 <frame_sync>
    video_mode=mode;
    340c:	4b0e      	ldr	r3, [pc, #56]	; (3448 <set_video_mode+0x44>)
    340e:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3410:	b1ac      	cbz	r4, 343e <set_video_mode+0x3a>
    3412:	2200      	movs	r2, #0
    3414:	4b0d      	ldr	r3, [pc, #52]	; (344c <set_video_mode+0x48>)
    3416:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3418:	4b0d      	ldr	r3, [pc, #52]	; (3450 <set_video_mode+0x4c>)
    341a:	480e      	ldr	r0, [pc, #56]	; (3454 <set_video_mode+0x50>)
    341c:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    3420:	8842      	ldrh	r2, [r0, #2]
    3422:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3424:	8882      	ldrh	r2, [r0, #4]
    3426:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    3428:	88c2      	ldrh	r2, [r0, #6]
    342a:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    342c:	7a02      	ldrb	r2, [r0, #8]
    342e:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    3430:	7a42      	ldrb	r2, [r0, #9]
    3432:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    3434:	7a82      	ldrb	r2, [r0, #10]
    3436:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    3438:	f7fe f8d2 	bl	15e0 <gfx_cls>
    343c:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    343e:	2202      	movs	r2, #2
    3440:	4b02      	ldr	r3, [pc, #8]	; (344c <set_video_mode+0x48>)
    3442:	701a      	strb	r2, [r3, #0]
    3444:	e7e8      	b.n	3418 <set_video_mode+0x14>
    3446:	bf00      	nop
    3448:	200006cc 	.word	0x200006cc
    344c:	200001c8 	.word	0x200001c8
    3450:	20000224 	.word	0x20000224
    3454:	00003c40 	.word	0x00003c40

00003458 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    3458:	4b02      	ldr	r3, [pc, #8]	; (3464 <get_video_params+0xc>)
    345a:	7a18      	ldrb	r0, [r3, #8]
}
    345c:	4b02      	ldr	r3, [pc, #8]	; (3468 <get_video_params+0x10>)
    345e:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    3462:	4770      	bx	lr
    3464:	200006cc 	.word	0x200006cc
    3468:	00003c40 	.word	0x00003c40

0000346c <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    346c:	4b03      	ldr	r3, [pc, #12]	; (347c <game_pause+0x10>)
    346e:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    3470:	461a      	mov	r2, r3
    3472:	8813      	ldrh	r3, [r2, #0]
    3474:	b29b      	uxth	r3, r3
    3476:	2b00      	cmp	r3, #0
    3478:	d1fb      	bne.n	3472 <game_pause+0x6>
}
    347a:	4770      	bx	lr
    347c:	20004e64 	.word	0x20004e64

00003480 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    3480:	4b03      	ldr	r3, [pc, #12]	; (3490 <micro_pause+0x10>)
    3482:	681b      	ldr	r3, [r3, #0]
    3484:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    3486:	4a02      	ldr	r2, [pc, #8]	; (3490 <micro_pause+0x10>)
    3488:	6813      	ldr	r3, [r2, #0]
    348a:	4298      	cmp	r0, r3
    348c:	d8fc      	bhi.n	3488 <micro_pause+0x8>
}
    348e:	4770      	bx	lr
    3490:	20004e68 	.word	0x20004e68

00003494 <usart_config_port>:
#define _usart_select(n)  USART##n_
#define _usart_sfr_sel(n,s) USART##n_##s 

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    3494:	4b3b      	ldr	r3, [pc, #236]	; (3584 <usart_config_port+0xf0>)
    3496:	4298      	cmp	r0, r3
    3498:	d057      	beq.n	354a <usart_config_port+0xb6>
    349a:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    349e:	4298      	cmp	r0, r3
    34a0:	d004      	beq.n	34ac <usart_config_port+0x18>
    34a2:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    34a6:	4298      	cmp	r0, r3
    34a8:	d032      	beq.n	3510 <usart_config_port+0x7c>
    34aa:	4770      	bx	lr
	case (uint32_t)USART1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    34ac:	4836      	ldr	r0, [pc, #216]	; (3588 <usart_config_port+0xf4>)
    34ae:	6983      	ldr	r3, [r0, #24]
    34b0:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    34b4:	f043 0304 	orr.w	r3, r3, #4
    34b8:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    34ba:	2a01      	cmp	r2, #1
    34bc:	d016      	beq.n	34ec <usart_config_port+0x58>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    34be:	4b33      	ldr	r3, [pc, #204]	; (358c <usart_config_port+0xf8>)
    34c0:	4299      	cmp	r1, r3
    34c2:	d01c      	beq.n	34fe <usart_config_port+0x6a>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    34c4:	4a32      	ldr	r2, [pc, #200]	; (3590 <usart_config_port+0xfc>)
    34c6:	6853      	ldr	r3, [r2, #4]
    34c8:	f043 0304 	orr.w	r3, r3, #4
    34cc:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    34ce:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    34d2:	6993      	ldr	r3, [r2, #24]
    34d4:	f043 0308 	orr.w	r3, r3, #8
    34d8:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    34da:	680b      	ldr	r3, [r1, #0]
    34dc:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    34e0:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    34e2:	680b      	ldr	r3, [r1, #0]
    34e4:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    34e8:	600b      	str	r3, [r1, #0]
    34ea:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    34ec:	684b      	ldr	r3, [r1, #4]
    34ee:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    34f2:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    34f4:	684b      	ldr	r3, [r1, #4]
    34f6:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    34fa:	604b      	str	r3, [r1, #4]
    34fc:	e7df      	b.n	34be <usart_config_port+0x2a>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    34fe:	685a      	ldr	r2, [r3, #4]
    3500:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3504:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    3506:	685a      	ldr	r2, [r3, #4]
    3508:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    350c:	605a      	str	r2, [r3, #4]
    350e:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3510:	4b1d      	ldr	r3, [pc, #116]	; (3588 <usart_config_port+0xf4>)
    3512:	69d8      	ldr	r0, [r3, #28]
    3514:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3518:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    351a:	6998      	ldr	r0, [r3, #24]
    351c:	f040 0004 	orr.w	r0, r0, #4
    3520:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    3522:	2a01      	cmp	r2, #1
    3524:	d008      	beq.n	3538 <usart_config_port+0xa4>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    3526:	680b      	ldr	r3, [r1, #0]
    3528:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    352c:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    352e:	680b      	ldr	r3, [r1, #0]
    3530:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3534:	600b      	str	r3, [r1, #0]
    3536:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3538:	680b      	ldr	r3, [r1, #0]
    353a:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    353e:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    3540:	680b      	ldr	r3, [r1, #0]
    3542:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    3546:	600b      	str	r3, [r1, #0]
    3548:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    354a:	4b0f      	ldr	r3, [pc, #60]	; (3588 <usart_config_port+0xf4>)
    354c:	69d8      	ldr	r0, [r3, #28]
    354e:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    3552:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3554:	6998      	ldr	r0, [r3, #24]
    3556:	f040 0008 	orr.w	r0, r0, #8
    355a:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    355c:	2a01      	cmp	r2, #1
    355e:	d008      	beq.n	3572 <usart_config_port+0xde>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    3560:	684b      	ldr	r3, [r1, #4]
    3562:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3566:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    3568:	684b      	ldr	r3, [r1, #4]
    356a:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    356e:	604b      	str	r3, [r1, #4]
		}
		break;
	}
}
    3570:	e79b      	b.n	34aa <usart_config_port+0x16>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    3572:	684b      	ldr	r3, [r1, #4]
    3574:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    3578:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    357a:	684b      	ldr	r3, [r1, #4]
    357c:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    3580:	604b      	str	r3, [r1, #4]
    3582:	4770      	bx	lr
    3584:	40004800 	.word	0x40004800
    3588:	40021000 	.word	0x40021000
    358c:	40010800 	.word	0x40010800
    3590:	40010000 	.word	0x40010000

00003594 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    3594:	4b04      	ldr	r3, [pc, #16]	; (35a8 <usart_set_baud+0x14>)
    3596:	4298      	cmp	r0, r3
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
    3598:	bf0c      	ite	eq
    359a:	4b04      	ldreq	r3, [pc, #16]	; (35ac <usart_set_baud+0x18>)
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    359c:	4b04      	ldrne	r3, [pc, #16]	; (35b0 <usart_set_baud+0x1c>)
    359e:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channel->BRR=rate;
    35a2:	6081      	str	r1, [r0, #8]
    35a4:	4770      	bx	lr
    35a6:	bf00      	nop
    35a8:	40013800 	.word	0x40013800
    35ac:	044463f4 	.word	0x044463f4
    35b0:	022231fa 	.word	0x022231fa

000035b4 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
	channel->CR1&=USART_CR1_DIR_MASK;
    35b4:	68c3      	ldr	r3, [r0, #12]
    35b6:	f023 030c 	bic.w	r3, r3, #12
    35ba:	60c3      	str	r3, [r0, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    35bc:	68c3      	ldr	r3, [r0, #12]
    35be:	ea43 0181 	orr.w	r1, r3, r1, lsl #2
    35c2:	60c1      	str	r1, [r0, #12]
    35c4:	4770      	bx	lr

000035c6 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    35c6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    35ca:	4604      	mov	r4, r0
    35cc:	460f      	mov	r7, r1
    35ce:	4615      	mov	r5, r2
    35d0:	4698      	mov	r8, r3
    35d2:	9e07      	ldr	r6, [sp, #28]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    35d4:	4b2e      	ldr	r3, [pc, #184]	; (3690 <usart_open_channel+0xca>)
    35d6:	4298      	cmp	r0, r3
    35d8:	d03e      	beq.n	3658 <usart_open_channel+0x92>
    35da:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    35de:	4298      	cmp	r0, r3
    35e0:	d01b      	beq.n	361a <usart_open_channel+0x54>
    35e2:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    35e6:	4298      	cmp	r0, r3
    35e8:	d02a      	beq.n	3640 <usart_open_channel+0x7a>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    35ea:	2e01      	cmp	r6, #1
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    35ec:	bf04      	itt	eq
    35ee:	f44f 7340 	moveq.w	r3, #768	; 0x300
    35f2:	6163      	streq	r3, [r4, #20]
	}
	usart_comm_dir(channel,dir);
    35f4:	4641      	mov	r1, r8
    35f6:	4620      	mov	r0, r4
    35f8:	f7ff ffdc 	bl	35b4 <usart_comm_dir>
	switch (parity){
    35fc:	2d01      	cmp	r5, #1
    35fe:	d03c      	beq.n	367a <usart_open_channel+0xb4>
    3600:	b3b5      	cbz	r5, 3670 <usart_open_channel+0xaa>
    3602:	2d02      	cmp	r5, #2
    3604:	d03e      	beq.n	3684 <usart_open_channel+0xbe>
		break;
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3606:	4639      	mov	r1, r7
    3608:	4620      	mov	r0, r4
    360a:	f7ff ffc3 	bl	3594 <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    360e:	68e3      	ldr	r3, [r4, #12]
    3610:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3614:	60e3      	str	r3, [r4, #12]
    3616:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    361a:	9b06      	ldr	r3, [sp, #24]
    361c:	b95b      	cbnz	r3, 3636 <usart_open_channel+0x70>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    361e:	4632      	mov	r2, r6
    3620:	491c      	ldr	r1, [pc, #112]	; (3694 <usart_open_channel+0xce>)
    3622:	f7ff ff37 	bl	3494 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    3626:	2107      	movs	r1, #7
    3628:	2025      	movs	r0, #37	; 0x25
    362a:	f7fe fce9 	bl	2000 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    362e:	2025      	movs	r0, #37	; 0x25
    3630:	f7fe fc86 	bl	1f40 <enable_interrupt>
		break;
    3634:	e7d9      	b.n	35ea <usart_open_channel+0x24>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    3636:	4632      	mov	r2, r6
    3638:	4917      	ldr	r1, [pc, #92]	; (3698 <usart_open_channel+0xd2>)
    363a:	f7ff ff2b 	bl	3494 <usart_config_port>
    363e:	e7f2      	b.n	3626 <usart_open_channel+0x60>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    3640:	4632      	mov	r2, r6
    3642:	4914      	ldr	r1, [pc, #80]	; (3694 <usart_open_channel+0xce>)
    3644:	f7ff ff26 	bl	3494 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    3648:	2107      	movs	r1, #7
    364a:	2026      	movs	r0, #38	; 0x26
    364c:	f7fe fcd8 	bl	2000 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    3650:	2026      	movs	r0, #38	; 0x26
    3652:	f7fe fc75 	bl	1f40 <enable_interrupt>
		break;
    3656:	e7c8      	b.n	35ea <usart_open_channel+0x24>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    3658:	4632      	mov	r2, r6
    365a:	490f      	ldr	r1, [pc, #60]	; (3698 <usart_open_channel+0xd2>)
    365c:	f7ff ff1a 	bl	3494 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    3660:	2107      	movs	r1, #7
    3662:	2027      	movs	r0, #39	; 0x27
    3664:	f7fe fccc 	bl	2000 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    3668:	2027      	movs	r0, #39	; 0x27
    366a:	f7fe fc69 	bl	1f40 <enable_interrupt>
		break;
    366e:	e7bc      	b.n	35ea <usart_open_channel+0x24>
		channel->CR1|=USART_CR1_RXNEIE;
    3670:	68e3      	ldr	r3, [r4, #12]
    3672:	f043 0320 	orr.w	r3, r3, #32
    3676:	60e3      	str	r3, [r4, #12]
		break;
    3678:	e7c5      	b.n	3606 <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    367a:	68e3      	ldr	r3, [r4, #12]
    367c:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    3680:	60e3      	str	r3, [r4, #12]
		break;
    3682:	e7c0      	b.n	3606 <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    3684:	68e3      	ldr	r3, [r4, #12]
    3686:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    368a:	60e3      	str	r3, [r4, #12]
		break;
    368c:	e7bb      	b.n	3606 <usart_open_channel+0x40>
    368e:	bf00      	nop
    3690:	40004800 	.word	0x40004800
    3694:	40010800 	.word	0x40010800
    3698:	40010c00 	.word	0x40010c00

0000369c <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
	return channel->SR&USART_SR_RXNE;
    369c:	6800      	ldr	r0, [r0, #0]
}
    369e:	f000 0020 	and.w	r0, r0, #32
    36a2:	4770      	bx	lr

000036a4 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
	if (channel->SR&USART_SR_RXNE){
    36a4:	6803      	ldr	r3, [r0, #0]
    36a6:	f013 0320 	ands.w	r3, r3, #32
		return channel->DR;
    36aa:	bf18      	it	ne
    36ac:	6843      	ldrne	r3, [r0, #4]
	}else{
		return 0;
	}
		
}
    36ae:	b2d8      	uxtb	r0, r3
    36b0:	4770      	bx	lr

000036b2 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
	unsigned t0=ntsc_ticks+dly;
    36b2:	4b09      	ldr	r3, [pc, #36]	; (36d8 <usart_getc_dly+0x26>)
    36b4:	681b      	ldr	r3, [r3, #0]
    36b6:	4419      	add	r1, r3
	
	while ((ntsc_ticks<t0) && !(channel->SR&USART_SR_RXNE));
    36b8:	4a07      	ldr	r2, [pc, #28]	; (36d8 <usart_getc_dly+0x26>)
    36ba:	6813      	ldr	r3, [r2, #0]
    36bc:	4299      	cmp	r1, r3
    36be:	d903      	bls.n	36c8 <usart_getc_dly+0x16>
    36c0:	6803      	ldr	r3, [r0, #0]
    36c2:	f013 0f20 	tst.w	r3, #32
    36c6:	d0f8      	beq.n	36ba <usart_getc_dly+0x8>
	if (ntsc_ticks<t0) return channel->DR; else return 0;
    36c8:	4b03      	ldr	r3, [pc, #12]	; (36d8 <usart_getc_dly+0x26>)
    36ca:	681b      	ldr	r3, [r3, #0]
    36cc:	4299      	cmp	r1, r3
    36ce:	bf8c      	ite	hi
    36d0:	6840      	ldrhi	r0, [r0, #4]
    36d2:	2000      	movls	r0, #0
}
    36d4:	b2c0      	uxtb	r0, r0
    36d6:	4770      	bx	lr
    36d8:	20004e68 	.word	0x20004e68

000036dc <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    36dc:	6803      	ldr	r3, [r0, #0]
    36de:	f013 0f80 	tst.w	r3, #128	; 0x80
    36e2:	d0fb      	beq.n	36dc <usart_putc>
	channel->DR=c;
    36e4:	6041      	str	r1, [r0, #4]
    36e6:	4770      	bx	lr

000036e8 <usart_cts>:
}


int usart_cts(usart_t* channel){
	int cts;
	switch ((uint32_t)channel){
    36e8:	4b0d      	ldr	r3, [pc, #52]	; (3720 <usart_cts+0x38>)
    36ea:	4298      	cmp	r0, r3
    36ec:	d013      	beq.n	3716 <usart_cts+0x2e>
    36ee:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    36f2:	4298      	cmp	r0, r3
    36f4:	d005      	beq.n	3702 <usart_cts+0x1a>
    36f6:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    36fa:	4298      	cmp	r0, r3
    36fc:	d006      	beq.n	370c <usart_cts+0x24>
    36fe:	2000      	movs	r0, #0
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3700:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    3702:	4b08      	ldr	r3, [pc, #32]	; (3724 <usart_cts+0x3c>)
    3704:	6898      	ldr	r0, [r3, #8]
    3706:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    370a:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    370c:	4b05      	ldr	r3, [pc, #20]	; (3724 <usart_cts+0x3c>)
    370e:	6898      	ldr	r0, [r3, #8]
    3710:	f000 0001 	and.w	r0, r0, #1
			break;
    3714:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    3716:	4b04      	ldr	r3, [pc, #16]	; (3728 <usart_cts+0x40>)
    3718:	6898      	ldr	r0, [r3, #8]
    371a:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    371e:	4770      	bx	lr
    3720:	40004800 	.word	0x40004800
    3724:	40010800 	.word	0x40010800
    3728:	40010c00 	.word	0x40010c00

0000372c <usart_print>:

void usart_print(usart_t* channel, const char *str){
    372c:	b538      	push	{r3, r4, r5, lr}
    372e:	4605      	mov	r5, r0
    3730:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    3732:	7809      	ldrb	r1, [r1, #0]
    3734:	b131      	cbz	r1, 3744 <usart_print+0x18>
    3736:	4628      	mov	r0, r5
    3738:	f7ff ffd0 	bl	36dc <usart_putc>
    373c:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    3740:	2900      	cmp	r1, #0
    3742:	d1f8      	bne.n	3736 <usart_print+0xa>
    3744:	bd38      	pop	{r3, r4, r5, pc}
    3746:	bf00      	nop
