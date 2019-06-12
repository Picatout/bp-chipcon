
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 3d 25 00 00     .P. 1.......=%..
      10:	3d 25 00 00 3d 25 00 00 3d 25 00 00 3d 25 00 00     =%..=%..=%..=%..
      20:	3d 25 00 00 3d 25 00 00 3d 25 00 00 09 02 00 00     =%..=%..=%......
      30:	3d 25 00 00 3d 25 00 00 0d 02 00 00 11 02 00 00     =%..=%..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 4f 22 00 00     ........!...O"..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 3d 25 00 00 3d 25 00 00 49 02 00 00     E...=%..=%..I...
      80:	3d 25 00 00 3d 25 00 00 3d 25 00 00 3d 25 00 00     =%..=%..=%..=%..
      90:	3d 25 00 00 3d 25 00 00 3d 25 00 00 4d 02 00 00     =%..=%..=%..M...
      a0:	3d 25 00 00 91 2b 00 00 3d 25 00 00 a9 2a 00 00     =%...+..=%...*..
      b0:	65 23 00 00 51 02 00 00 55 02 00 00 3d 25 00 00     e#..Q...U...=%..
      c0:	3d 25 00 00 3d 25 00 00 3d 25 00 00 3d 25 00 00     =%..=%..=%..=%..
      d0:	3d 25 00 00 2f 31 00 00 65 31 00 00 a5 31 00 00     =%../1..e1...1..
      e0:	3d 25 00 00 3d 25 00 00 3d 25 00 00 3d 25 00 00     =%..=%..=%..=%..
      f0:	3d 25 00 00 3d 25 00 00 3d 25 00 00 3d 25 00 00     =%..=%..=%..=%..
     100:	3d 25 00 00 3d 25 00 00 3d 25 00 00 3d 25 00 00     =%..=%..=%..=%..
     110:	3d 25 00 00 3d 25 00 00 3d 25 00 00 3d 25 00 00     =%..=%..=%..=%..
     120:	3d 25 00 00 3d 25 00 00 3d 25 00 00 3d 25 00 00     =%..=%..=%..=%..

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
     186:	f001 fbf8 	bl	197a <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e9a 	.word	0x20004e9a
     190:	2000022e 	.word	0x2000022e
     194:	20004e99 	.word	0x20004e99
     198:	2000022e 	.word	0x2000022e
     19c:	20000000 	.word	0x20000000
     1a0:	000093dc 	.word	0x000093dc
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
     1da:	f002 f9b7 	bl	254c <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 f9b4 	bl	254c <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 f9b1 	bl	254c <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 f9ae 	bl	254c <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003864 	.word	0x00003864
     1f8:	00003840 	.word	0x00003840
     1fc:	00003858 	.word	0x00003858
     200:	00003874 	.word	0x00003874

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 f99a 	bl	253c <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 f998 	bl	253c <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 f996 	bl	253c <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 f994 	bl	253c <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 f992 	bl	253c <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 f990 	bl	253c <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 f98e 	bl	253c <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 f98c 	bl	253c <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 f98a 	bl	253c <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 f988 	bl	253c <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 f986 	bl	253c <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 f984 	bl	253c <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 f982 	bl	253c <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 f980 	bl	253c <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 f97e 	bl	253c <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 f97c 	bl	253c <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 f97a 	bl	253c <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 f978 	bl	253c <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 f976 	bl	253c <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 f974 	bl	253c <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 f972 	bl	253c <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 f970 	bl	253c <reset_mcu>
_default_handler(USART2_handler) // 38
     25c:	f002 f96e 	bl	253c <reset_mcu>
_default_handler(USART3_handler) // 39
     260:	f002 f96c 	bl	253c <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 f96a 	bl	253c <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 f968 	bl	253c <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 f966 	bl	253c <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 f964 	bl	253c <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 f962 	bl	253c <reset_mcu>

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
     316:	f002 f995 	bl	2644 <get_font>
     31a:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     31c:	2002      	movs	r0, #2
     31e:	f002 f98b 	bl	2638 <select_font>
	new_line();
     322:	f002 f995 	bl	2650 <new_line>
	print(msg);
     326:	4628      	mov	r0, r5
     328:	f002 fa78 	bl	281c <print>
	switch(error_code){
     32c:	2c02      	cmp	r4, #2
     32e:	d039      	beq.n	3a4 <print_vms+0x94>
     330:	2c03      	cmp	r4, #3
     332:	d102      	bne.n	33a <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     334:	481d      	ldr	r0, [pc, #116]	; (3ac <print_vms+0x9c>)
     336:	f002 fa71 	bl	281c <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     33a:	481d      	ldr	r0, [pc, #116]	; (3b0 <print_vms+0xa0>)
     33c:	f002 fa6e 	bl	281c <print>
	print_hex(vms.pc-2);
     340:	4d1c      	ldr	r5, [pc, #112]	; (3b4 <print_vms+0xa4>)
     342:	8828      	ldrh	r0, [r5, #0]
     344:	2110      	movs	r1, #16
     346:	3802      	subs	r0, #2
     348:	f002 fa83 	bl	2852 <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     34c:	7e28      	ldrb	r0, [r5, #24]
     34e:	7e6b      	ldrb	r3, [r5, #25]
     350:	2110      	movs	r1, #16
     352:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     356:	f002 fa7c 	bl	2852 <print_int>
	new_line();
     35a:	f002 f979 	bl	2650 <new_line>
	print("I:");
     35e:	4816      	ldr	r0, [pc, #88]	; (3b8 <print_vms+0xa8>)
     360:	f002 fa5c 	bl	281c <print>
	print_hex(vms.ix);
     364:	2110      	movs	r1, #16
     366:	8868      	ldrh	r0, [r5, #2]
     368:	f002 fa73 	bl	2852 <print_int>
	print(" SP:");
     36c:	4813      	ldr	r0, [pc, #76]	; (3bc <print_vms+0xac>)
     36e:	f002 fa55 	bl	281c <print>
	print_hex(vms.sp);
     372:	2110      	movs	r1, #16
     374:	7928      	ldrb	r0, [r5, #4]
     376:	f002 fa6c 	bl	2852 <print_int>
	new_line();
     37a:	f002 f969 	bl	2650 <new_line>
	print("var[]:");
     37e:	4810      	ldr	r0, [pc, #64]	; (3c0 <print_vms+0xb0>)
     380:	f002 fa4c 	bl	281c <print>
     384:	1dac      	adds	r4, r5, #6
     386:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     388:	2610      	movs	r6, #16
     38a:	4631      	mov	r1, r6
     38c:	f814 0b01 	ldrb.w	r0, [r4], #1
     390:	f002 fa5f 	bl	2852 <print_int>
	for (int i=0;i<16;i++){
     394:	42ac      	cmp	r4, r5
     396:	d1f8      	bne.n	38a <print_vms+0x7a>
	}
	new_line();
     398:	f002 f95a 	bl	2650 <new_line>
	select_font(orig_font);
     39c:	4638      	mov	r0, r7
     39e:	f002 f94b 	bl	2638 <select_font>
     3a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3a4:	4807      	ldr	r0, [pc, #28]	; (3c4 <print_vms+0xb4>)
     3a6:	f002 fa39 	bl	281c <print>
		break;
     3aa:	e7c6      	b.n	33a <print_vms+0x2a>
     3ac:	000036f8 	.word	0x000036f8
     3b0:	00003720 	.word	0x00003720
     3b4:	20000230 	.word	0x20000230
     3b8:	00003724 	.word	0x00003724
     3bc:	00003728 	.word	0x00003728
     3c0:	00003730 	.word	0x00003730
     3c4:	0000370c 	.word	0x0000370c

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
     41c:	f002 fcfa 	bl	2e14 <micro_pause>
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
     442:	f002 fe67 	bl	3114 <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     446:	7e20      	ldrb	r0, [r4, #24]
     448:	7e63      	ldrb	r3, [r4, #25]
     44a:	2210      	movs	r2, #16
     44c:	a902      	add	r1, sp, #8
     44e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     452:	f001 f859 	bl	1508 <itoa>
     456:	4601      	mov	r1, r0
     458:	2000      	movs	r0, #0
     45a:	f002 fe5b 	bl	3114 <usart_print>
			_debug_print("\n");
     45e:	4987      	ldr	r1, [pc, #540]	; (67c <chip_vm+0x28c>)
     460:	2000      	movs	r0, #0
     462:	f002 fe57 	bl	3114 <usart_print>
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
     4a0:	f002 fa78 	bl	2994 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4a4:	2100      	movs	r1, #0
     4a6:	4876      	ldr	r0, [pc, #472]	; (680 <chip_vm+0x290>)
     4a8:	f7ff ff32 	bl	310 <print_vms>
			select_console(LOCAL);
     4ac:	2000      	movs	r0, #0
     4ae:	f002 fa71 	bl	2994 <select_console>
			break;
     4b2:	e7d8      	b.n	466 <chip_vm+0x76>
			select_console(SERIAL);
     4b4:	2001      	movs	r0, #1
     4b6:	f002 fa6d 	bl	2994 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4ba:	2100      	movs	r1, #0
     4bc:	4870      	ldr	r0, [pc, #448]	; (680 <chip_vm+0x290>)
     4be:	f7ff ff27 	bl	310 <print_vms>
			print("vt100 keyboard to continue\n");
     4c2:	4870      	ldr	r0, [pc, #448]	; (684 <chip_vm+0x294>)
     4c4:	f002 f9aa 	bl	281c <print>
			get_char();
     4c8:	f002 fa6a 	bl	29a0 <get_char>
			select_console(LOCAL);
     4cc:	2000      	movs	r0, #0
     4ce:	f002 fa61 	bl	2994 <select_console>
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
     574:	f002 fc10 	bl	2d98 <set_video_mode>
					break; 
     578:	e08b      	b.n	692 <chip_vm+0x2a2>
					set_video_mode(VM_BPCHIP);
     57a:	2000      	movs	r0, #0
     57c:	f002 fc0c 	bl	2d98 <set_video_mode>
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
     67c:	00003708 	.word	0x00003708
     680:	00003738 	.word	0x00003738
     684:	0000374c 	.word	0x0000374c
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
     87c:	f001 fd4a 	bl	2314 <key_tone>
				break;
     880:	e707      	b.n	692 <chip_vm+0x2a2>
				select_font(FONT_ASCII);
     882:	2002      	movs	r0, #2
     884:	f001 fed8 	bl	2638 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     888:	44a1      	add	r9, r4
     88a:	44a0      	add	r8, r4
     88c:	f899 1006 	ldrb.w	r1, [r9, #6]
     890:	f898 0006 	ldrb.w	r0, [r8, #6]
     894:	f001 ff8e 	bl	27b4 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     898:	8860      	ldrh	r0, [r4, #2]
     89a:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9a4 <chip_vm+0x5b4>
     89e:	4448      	add	r0, r9
     8a0:	f001 ffbc 	bl	281c <print>
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
     8d6:	f001 fd31 	bl	233c <noise>
				break;
     8da:	e6da      	b.n	692 <chip_vm+0x2a2>
				key_tone(vms.var[x],vms.var[y],true);
     8dc:	44a1      	add	r9, r4
     8de:	44a0      	add	r8, r4
     8e0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8e4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8e8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8ec:	f001 fd12 	bl	2314 <key_tone>
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
     91c:	f002 fa66 	bl	2dec <get_video_params>
					vms.var[x]=vparams->hres;
     920:	44a0      	add	r8, r4
     922:	8983      	ldrh	r3, [r0, #12]
     924:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     928:	e6b3      	b.n	692 <chip_vm+0x2a2>
					vmode_params_t *vparams=get_video_params();
     92a:	f002 fa5f 	bl	2dec <get_video_params>
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
     c32:	f001 fb49 	bl	22c8 <tone>
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
     c70:	f001 fce2 	bl	2638 <select_font>
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
     c8c:	f001 fcd4 	bl	2638 <select_font>
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
     d84:	f001 fc58 	bl	2638 <select_font>
	set_keymap(default_kmap);
     d88:	480c      	ldr	r0, [pc, #48]	; (dbc <chip_vm+0x9cc>)
     d8a:	f000 f9c7 	bl	111c <set_keymap>
	set_video_mode(VM_BPCHIP);
     d8e:	2000      	movs	r0, #0
     d90:	f002 f802 	bl	2d98 <set_video_mode>
	return exit_code;
     d94:	4640      	mov	r0, r8
}//schipp()
     d96:	b009      	add	sp, #36	; 0x24
     d98:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     d9c:	f04f 0801 	mov.w	r8, #1
     da0:	e7ef      	b.n	d82 <chip_vm+0x992>
     da2:	bf00      	nop
     da4:	000035e0 	.word	0x000035e0
     da8:	00003540 	.word	0x00003540
     dac:	cccccccd 	.word	0xcccccccd
     db0:	20000700 	.word	0x20000700
     db4:	200006c4 	.word	0x200006c4
     db8:	0001fff0 	.word	0x0001fff0
     dbc:	00003640 	.word	0x00003640

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
    1164:	00003640 	.word	0x00003640

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
    11d8:	f001 fdce 	bl	2d78 <frame_sync>
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
    1200:	f001 fdba 	bl	2d78 <frame_sync>
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
    1236:	f001 fd9f 	bl	2d78 <frame_sync>
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
    162e:	f001 fbdd 	bl	2dec <get_video_params>
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
    16be:	f001 fb95 	bl	2dec <get_video_params>
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
    16d4:	f001 f86e 	bl	27b4 <set_cursor>
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
    16e8:	f001 fb80 	bl	2dec <get_video_params>
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
    1734:	f001 fb5a 	bl	2dec <get_video_params>
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
    177e:	f001 fb35 	bl	2dec <get_video_params>
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
    17da:	f001 fb07 	bl	2dec <get_video_params>
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
    1842:	f001 fad3 	bl	2dec <get_video_params>
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
    1938:	00003648 	.word	0x00003648

0000193c <isqrt>:
}

//REF: https://en.wikipedia.org/wiki/Integer_square_root
int isqrt(int n){
	int small, large;
	if (n<2) return n;
    193c:	2801      	cmp	r0, #1
    193e:	dd0c      	ble.n	195a <isqrt+0x1e>
int isqrt(int n){
    1940:	b510      	push	{r4, lr}
    1942:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1944:	1080      	asrs	r0, r0, #2
    1946:	f7ff fff9 	bl	193c <isqrt>
    194a:	0040      	lsls	r0, r0, #1
	large = small + 1;
    194c:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    194e:	fb03 f203 	mul.w	r2, r3, r3
		return small;
	else
		return large;	
    1952:	4294      	cmp	r4, r2
    1954:	bfa8      	it	ge
    1956:	4618      	movge	r0, r3
}
    1958:	bd10      	pop	{r4, pc}
    195a:	4770      	bx	lr

0000195c <distance>:

unsigned distance(ball_t *ball1, ball_t *ball2){
    195c:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    195e:	6803      	ldr	r3, [r0, #0]
    1960:	680a      	ldr	r2, [r1, #0]
    1962:	6844      	ldr	r4, [r0, #4]
    1964:	6848      	ldr	r0, [r1, #4]
    1966:	fb00 f004 	mul.w	r0, r0, r4
    196a:	fb02 0003 	mla	r0, r2, r3, r0
    196e:	2800      	cmp	r0, #0
    1970:	bfb8      	it	lt
    1972:	4240      	neglt	r0, r0
    1974:	f7ff ffe2 	bl	193c <isqrt>
}
    1978:	bd10      	pop	{r4, pc}

0000197a <main>:
			break;	
		}
	}//while
}

void main(void){
    197a:	b500      	push	{lr}
    197c:	b083      	sub	sp, #12
	RCC->CR|=RCC_CR_HSEON;
    197e:	4a26      	ldr	r2, [pc, #152]	; (1a18 <main+0x9e>)
    1980:	6813      	ldr	r3, [r2, #0]
    1982:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1986:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1988:	4613      	mov	r3, r2
    198a:	681a      	ldr	r2, [r3, #0]
    198c:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1990:	d0fb      	beq.n	198a <main+0x10>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1992:	4b21      	ldr	r3, [pc, #132]	; (1a18 <main+0x9e>)
    1994:	685a      	ldr	r2, [r3, #4]
    1996:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    199a:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    199c:	681a      	ldr	r2, [r3, #0]
    199e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    19a2:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    19a4:	681a      	ldr	r2, [r3, #0]
    19a6:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    19aa:	d0fb      	beq.n	19a4 <main+0x2a>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    19ac:	4a1b      	ldr	r2, [pc, #108]	; (1a1c <main+0xa2>)
    19ae:	6813      	ldr	r3, [r2, #0]
    19b0:	f043 0312 	orr.w	r3, r3, #18
    19b4:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    19b6:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    19ba:	6853      	ldr	r3, [r2, #4]
    19bc:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    19c0:	f043 0302 	orr.w	r3, r3, #2
    19c4:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    19c6:	f640 031d 	movw	r3, #2077	; 0x81d
    19ca:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    19cc:	4c14      	ldr	r4, [pc, #80]	; (1a20 <main+0xa6>)
    19ce:	2206      	movs	r2, #6
    19d0:	210d      	movs	r1, #13
    19d2:	4620      	mov	r0, r4
    19d4:	f7ff fde6 	bl	15a4 <config_pin>
	_led_off();
    19d8:	68e3      	ldr	r3, [r4, #12]
    19da:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    19de:	60e3      	str	r3, [r4, #12]
	tvout_init();
    19e0:	f000 ffe6 	bl	29b0 <tvout_init>
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    19e4:	2000      	movs	r0, #0
    19e6:	9001      	str	r0, [sp, #4]
    19e8:	2301      	movs	r3, #1
    19ea:	9300      	str	r3, [sp, #0]
    19ec:	2303      	movs	r3, #3
    19ee:	4602      	mov	r2, r0
    19f0:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    19f4:	f001 fab2 	bl	2f5c <usart_open_channel>
	gamepad_init();
    19f8:	f7ff fb9c 	bl	1134 <gamepad_init>
	sound_init();
    19fc:	f000 fc38 	bl	2270 <sound_init>
	gfx_cls();
    1a00:	f7ff fe5c 	bl	16bc <gfx_cls>
	// test uart
	while (1){
		usart_putc(CHN1,usart_getc(CHN1));
    1a04:	2400      	movs	r4, #0
    1a06:	4620      	mov	r0, r4
    1a08:	f001 fb2c 	bl	3064 <usart_getc>
    1a0c:	4601      	mov	r1, r0
    1a0e:	4620      	mov	r0, r4
    1a10:	f001 fb5a 	bl	30c8 <usart_putc>
    1a14:	e7f7      	b.n	1a06 <main+0x8c>
    1a16:	bf00      	nop
    1a18:	40021000 	.word	0x40021000
    1a1c:	40022000 	.word	0x40022000
    1a20:	40011000 	.word	0x40011000

00001a24 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1a24:	283b      	cmp	r0, #59	; 0x3b
    1a26:	dc0d      	bgt.n	1a44 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1a28:	1143      	asrs	r3, r0, #5
    1a2a:	009b      	lsls	r3, r3, #2
    1a2c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1a30:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1a34:	6819      	ldr	r1, [r3, #0]
    1a36:	f000 001f 	and.w	r0, r0, #31
    1a3a:	2201      	movs	r2, #1
    1a3c:	fa02 f000 	lsl.w	r0, r2, r0
    1a40:	4308      	orrs	r0, r1
    1a42:	6018      	str	r0, [r3, #0]
    1a44:	4770      	bx	lr

00001a46 <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1a46:	283b      	cmp	r0, #59	; 0x3b
    1a48:	dc08      	bgt.n	1a5c <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1a4a:	1142      	asrs	r2, r0, #5
    1a4c:	f000 001f 	and.w	r0, r0, #31
    1a50:	2301      	movs	r3, #1
    1a52:	fa03 f000 	lsl.w	r0, r3, r0
    1a56:	4b02      	ldr	r3, [pc, #8]	; (1a60 <disable_interrupt+0x1a>)
    1a58:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1a5c:	4770      	bx	lr
    1a5e:	bf00      	nop
    1a60:	e000e180 	.word	0xe000e180

00001a64 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1a64:	283b      	cmp	r0, #59	; 0x3b
    1a66:	dc09      	bgt.n	1a7c <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1a68:	1142      	asrs	r2, r0, #5
    1a6a:	4b05      	ldr	r3, [pc, #20]	; (1a80 <get_pending+0x1c>)
    1a6c:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1a70:	f000 031f 	and.w	r3, r0, #31
    1a74:	2001      	movs	r0, #1
    1a76:	4098      	lsls	r0, r3
    1a78:	4010      	ands	r0, r2
    1a7a:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1a7c:	2000      	movs	r0, #0
}
    1a7e:	4770      	bx	lr
    1a80:	e000e280 	.word	0xe000e280

00001a84 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1a84:	283b      	cmp	r0, #59	; 0x3b
    1a86:	dc0c      	bgt.n	1aa2 <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1a88:	1143      	asrs	r3, r0, #5
    1a8a:	009b      	lsls	r3, r3, #2
    1a8c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1a90:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1a94:	681a      	ldr	r2, [r3, #0]
    1a96:	f000 031f 	and.w	r3, r0, #31
    1a9a:	2001      	movs	r0, #1
    1a9c:	4098      	lsls	r0, r3
    1a9e:	4010      	ands	r0, r2
    1aa0:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1aa2:	2000      	movs	r0, #0
}
    1aa4:	4770      	bx	lr

00001aa6 <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1aa6:	283b      	cmp	r0, #59	; 0x3b
    1aa8:	dc0d      	bgt.n	1ac6 <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1aaa:	1143      	asrs	r3, r0, #5
    1aac:	009b      	lsls	r3, r3, #2
    1aae:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1ab2:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1ab6:	6819      	ldr	r1, [r3, #0]
    1ab8:	f000 001f 	and.w	r0, r0, #31
    1abc:	2201      	movs	r2, #1
    1abe:	fa02 f000 	lsl.w	r0, r2, r0
    1ac2:	4308      	orrs	r0, r1
    1ac4:	6018      	str	r0, [r3, #0]
    1ac6:	4770      	bx	lr

00001ac8 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    1ac8:	283b      	cmp	r0, #59	; 0x3b
    1aca:	dc08      	bgt.n	1ade <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    1acc:	1142      	asrs	r2, r0, #5
    1ace:	f000 001f 	and.w	r0, r0, #31
    1ad2:	2301      	movs	r3, #1
    1ad4:	fa03 f000 	lsl.w	r0, r3, r0
    1ad8:	4b01      	ldr	r3, [pc, #4]	; (1ae0 <clear_pending+0x18>)
    1ada:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1ade:	4770      	bx	lr
    1ae0:	e000e280 	.word	0xe000e280

00001ae4 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    1ae4:	283b      	cmp	r0, #59	; 0x3b
    1ae6:	d90c      	bls.n	1b02 <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    1ae8:	f100 030f 	add.w	r3, r0, #15
    1aec:	2b0e      	cmp	r3, #14
    1aee:	d807      	bhi.n	1b00 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    1af0:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    1af4:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    1af8:	30fc      	adds	r0, #252	; 0xfc
    1afa:	0109      	lsls	r1, r1, #4
    1afc:	4b04      	ldr	r3, [pc, #16]	; (1b10 <set_int_priority+0x2c>)
    1afe:	54c1      	strb	r1, [r0, r3]
    1b00:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    1b02:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    1b06:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    1b0a:	0109      	lsls	r1, r1, #4
    1b0c:	7001      	strb	r1, [r0, #0]
    1b0e:	4770      	bx	lr
    1b10:	e000ed18 	.word	0xe000ed18

00001b14 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    1b14:	f010 0f03 	tst.w	r0, #3
    1b18:	d113      	bne.n	1b42 <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    1b1a:	4b0c      	ldr	r3, [pc, #48]	; (1b4c <leap_year+0x38>)
    1b1c:	fba3 2300 	umull	r2, r3, r3, r0
    1b20:	095b      	lsrs	r3, r3, #5
    1b22:	2264      	movs	r2, #100	; 0x64
    1b24:	fb02 0313 	mls	r3, r2, r3, r0
    1b28:	b96b      	cbnz	r3, 1b46 <leap_year+0x32>
    1b2a:	4b08      	ldr	r3, [pc, #32]	; (1b4c <leap_year+0x38>)
    1b2c:	fba3 2300 	umull	r2, r3, r3, r0
    1b30:	09db      	lsrs	r3, r3, #7
    1b32:	f44f 72c8 	mov.w	r2, #400	; 0x190
    1b36:	fb02 0013 	mls	r0, r2, r3, r0
    1b3a:	fab0 f080 	clz	r0, r0
    1b3e:	0940      	lsrs	r0, r0, #5
    1b40:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    1b42:	2000      	movs	r0, #0
    1b44:	4770      	bx	lr
		return 1;
    1b46:	2001      	movs	r0, #1
}
    1b48:	4770      	bx	lr
    1b4a:	bf00      	nop
    1b4c:	51eb851f 	.word	0x51eb851f

00001b50 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    1b50:	4b07      	ldr	r3, [pc, #28]	; (1b70 <sec_per_month+0x20>)
    1b52:	5c5a      	ldrb	r2, [r3, r1]
    1b54:	4b07      	ldr	r3, [pc, #28]	; (1b74 <sec_per_month+0x24>)
    1b56:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    1b5a:	2902      	cmp	r1, #2
    1b5c:	d001      	beq.n	1b62 <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    1b5e:	4618      	mov	r0, r3
    1b60:	4770      	bx	lr
	if (month==2 && leap){
    1b62:	2800      	cmp	r0, #0
    1b64:	d0fb      	beq.n	1b5e <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    1b66:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1b6a:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    1b6e:	e7f6      	b.n	1b5e <sec_per_month+0xe>
    1b70:	00003674 	.word	0x00003674
    1b74:	00015180 	.word	0x00015180

00001b78 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    1b78:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1b7c:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    1b7e:	4b37      	ldr	r3, [pc, #220]	; (1c5c <get_date_time+0xe4>)
    1b80:	699a      	ldr	r2, [r3, #24]
    1b82:	69dc      	ldr	r4, [r3, #28]
    1b84:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    1b88:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1b8c:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    1b8e:	f7ff ffc1 	bl	1b14 <leap_year>
    1b92:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1b94:	4d32      	ldr	r5, [pc, #200]	; (1c60 <get_date_time+0xe8>)
    1b96:	4f33      	ldr	r7, [pc, #204]	; (1c64 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    1b98:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 1c78 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1b9c:	e00e      	b.n	1bbc <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    1b9e:	4444      	add	r4, r8
    1ba0:	e005      	b.n	1bae <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1ba2:	42ac      	cmp	r4, r5
    1ba4:	d90f      	bls.n	1bc6 <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    1ba6:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    1baa:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    1bae:	8930      	ldrh	r0, [r6, #8]
    1bb0:	3001      	adds	r0, #1
    1bb2:	b280      	uxth	r0, r0
    1bb4:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    1bb6:	f7ff ffad 	bl	1b14 <leap_year>
    1bba:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1bbc:	f1b9 0f00 	cmp.w	r9, #0
    1bc0:	d1ef      	bne.n	1ba2 <get_date_time+0x2a>
    1bc2:	42bc      	cmp	r4, r7
    1bc4:	d8eb      	bhi.n	1b9e <get_date_time+0x26>
	}//while
	dt->month=1;
    1bc6:	8873      	ldrh	r3, [r6, #2]
    1bc8:	2201      	movs	r2, #1
    1bca:	f362 1389 	bfi	r3, r2, #6, #4
    1bce:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    1bd0:	f362 0345 	bfi	r3, r2, #1, #5
    1bd4:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    1bd6:	6833      	ldr	r3, [r6, #0]
    1bd8:	f36f 3310 	bfc	r3, #12, #5
    1bdc:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    1bde:	f36f 138b 	bfc	r3, #6, #6
    1be2:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    1be4:	f36f 0305 	bfc	r3, #0, #6
    1be8:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1bea:	e005      	b.n	1bf8 <get_date_time+0x80>
		dt->month++;
    1bec:	3501      	adds	r5, #1
    1bee:	8873      	ldrh	r3, [r6, #2]
    1bf0:	f365 1389 	bfi	r3, r5, #6, #4
    1bf4:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    1bf6:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1bf8:	8875      	ldrh	r5, [r6, #2]
    1bfa:	f3c5 1583 	ubfx	r5, r5, #6, #4
    1bfe:	4629      	mov	r1, r5
    1c00:	4648      	mov	r0, r9
    1c02:	f7ff ffa5 	bl	1b50 <sec_per_month>
    1c06:	4284      	cmp	r4, r0
    1c08:	d8f0      	bhi.n	1bec <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    1c0a:	4a17      	ldr	r2, [pc, #92]	; (1c68 <get_date_time+0xf0>)
    1c0c:	fba2 3204 	umull	r3, r2, r2, r4
    1c10:	0c12      	lsrs	r2, r2, #16
    1c12:	1c51      	adds	r1, r2, #1
    1c14:	78b3      	ldrb	r3, [r6, #2]
    1c16:	f361 0345 	bfi	r3, r1, #1, #5
    1c1a:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    1c1c:	4b13      	ldr	r3, [pc, #76]	; (1c6c <get_date_time+0xf4>)
    1c1e:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    1c22:	4c13      	ldr	r4, [pc, #76]	; (1c70 <get_date_time+0xf8>)
    1c24:	fba4 3402 	umull	r3, r4, r4, r2
    1c28:	0ae4      	lsrs	r4, r4, #11
    1c2a:	6833      	ldr	r3, [r6, #0]
    1c2c:	f364 3310 	bfi	r3, r4, #12, #5
    1c30:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    1c32:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1c36:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    1c3a:	4a0e      	ldr	r2, [pc, #56]	; (1c74 <get_date_time+0xfc>)
    1c3c:	fba2 1204 	umull	r1, r2, r2, r4
    1c40:	0952      	lsrs	r2, r2, #5
    1c42:	f362 138b 	bfi	r3, r2, #6, #6
    1c46:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    1c48:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    1c4c:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    1c50:	f364 0305 	bfi	r3, r4, #0, #6
    1c54:	7033      	strb	r3, [r6, #0]
    1c56:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1c5a:	bf00      	nop
    1c5c:	40002800 	.word	0x40002800
    1c60:	01e284ff 	.word	0x01e284ff
    1c64:	01e1337f 	.word	0x01e1337f
    1c68:	c22e4507 	.word	0xc22e4507
    1c6c:	00015180 	.word	0x00015180
    1c70:	91a2b3c5 	.word	0x91a2b3c5
    1c74:	88888889 	.word	0x88888889
    1c78:	fe1ecc80 	.word	0xfe1ecc80

00001c7c <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    1c7c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1c80:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    1c82:	8903      	ldrh	r3, [r0, #8]
    1c84:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1c88:	4293      	cmp	r3, r2
    1c8a:	d857      	bhi.n	1d3c <set_date_time+0xc0>
    1c8c:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1c90:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    1c94:	f7ff ff3e 	bl	1b14 <leap_year>
    1c98:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    1c9a:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    1c9c:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    1ca0:	f3c6 1683 	ubfx	r6, r6, #6, #4
    1ca4:	2e01      	cmp	r6, #1
    1ca6:	d908      	bls.n	1cba <set_date_time+0x3e>
    1ca8:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    1caa:	4629      	mov	r1, r5
    1cac:	4638      	mov	r0, r7
    1cae:	f7ff ff4f 	bl	1b50 <sec_per_month>
    1cb2:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    1cb4:	3501      	adds	r5, #1
    1cb6:	42b5      	cmp	r5, r6
    1cb8:	d1f7      	bne.n	1caa <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    1cba:	f8d8 2000 	ldr.w	r2, [r8]
    1cbe:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    1cc2:	f8b8 2000 	ldrh.w	r2, [r8]
    1cc6:	f3c2 1285 	ubfx	r2, r2, #6, #6
    1cca:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    1cce:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    1cd0:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1cd4:	fb01 2203 	mla	r2, r1, r3, r2
    1cd8:	f898 3000 	ldrb.w	r3, [r8]
    1cdc:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1ce0:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    1ce2:	f898 3002 	ldrb.w	r3, [r8, #2]
    1ce6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1cea:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    1cec:	4928      	ldr	r1, [pc, #160]	; (1d90 <set_date_time+0x114>)
    1cee:	fb01 2303 	mla	r3, r1, r3, r2
    1cf2:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1cf4:	4a27      	ldr	r2, [pc, #156]	; (1d94 <set_date_time+0x118>)
    1cf6:	69d3      	ldr	r3, [r2, #28]
    1cf8:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1cfc:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1cfe:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    1d02:	6813      	ldr	r3, [r2, #0]
    1d04:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1d08:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    1d0a:	4b23      	ldr	r3, [pc, #140]	; (1d98 <set_date_time+0x11c>)
    1d0c:	685a      	ldr	r2, [r3, #4]
    1d0e:	f042 0210 	orr.w	r2, r2, #16
    1d12:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    1d14:	0c22      	lsrs	r2, r4, #16
    1d16:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    1d18:	b2a4      	uxth	r4, r4
    1d1a:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    1d1c:	685a      	ldr	r2, [r3, #4]
    1d1e:	f022 0210 	bic.w	r2, r2, #16
    1d22:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    1d24:	461a      	mov	r2, r3
    1d26:	6853      	ldr	r3, [r2, #4]
    1d28:	f013 0f20 	tst.w	r3, #32
    1d2c:	d0fb      	beq.n	1d26 <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    1d2e:	4a1b      	ldr	r2, [pc, #108]	; (1d9c <set_date_time+0x120>)
    1d30:	6813      	ldr	r3, [r2, #0]
    1d32:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1d36:	6013      	str	r3, [r2, #0]
    1d38:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    1d3c:	f640 023a 	movw	r2, #2106	; 0x83a
    1d40:	4293      	cmp	r3, r2
    1d42:	d90c      	bls.n	1d5e <set_date_time+0xe2>
    1d44:	4616      	mov	r6, r2
    1d46:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    1d4a:	4610      	mov	r0, r2
    1d4c:	f7ff fee2 	bl	1b14 <leap_year>
    1d50:	4607      	mov	r7, r0
    1d52:	2400      	movs	r4, #0
    1d54:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    1d58:	f8df 9044 	ldr.w	r9, [pc, #68]	; 1da0 <set_date_time+0x124>
    1d5c:	e00e      	b.n	1d7c <set_date_time+0x100>
	leap=leap_year(dt->year);
    1d5e:	8906      	ldrh	r6, [r0, #8]
    1d60:	4630      	mov	r0, r6
    1d62:	f7ff fed7 	bl	1b14 <leap_year>
    1d66:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    1d68:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1d6c:	429e      	cmp	r6, r3
    1d6e:	d8f0      	bhi.n	1d52 <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    1d70:	2400      	movs	r4, #0
    1d72:	e793      	b.n	1c9c <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    1d74:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    1d76:	3501      	adds	r5, #1
    1d78:	42b5      	cmp	r5, r6
    1d7a:	d28f      	bcs.n	1c9c <set_date_time+0x20>
		if (leap_year(i)){
    1d7c:	4628      	mov	r0, r5
    1d7e:	f7ff fec9 	bl	1b14 <leap_year>
    1d82:	2800      	cmp	r0, #0
    1d84:	d0f6      	beq.n	1d74 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    1d86:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    1d8a:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    1d8e:	e7f2      	b.n	1d76 <set_date_time+0xfa>
    1d90:	00015180 	.word	0x00015180
    1d94:	40021000 	.word	0x40021000
    1d98:	40002800 	.word	0x40002800
    1d9c:	40007000 	.word	0x40007000
    1da0:	01e13380 	.word	0x01e13380

00001da4 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    1da4:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    1da6:	4b35      	ldr	r3, [pc, #212]	; (1e7c <rtc_init+0xd8>)
    1da8:	685a      	ldr	r2, [r3, #4]
    1daa:	f64a 2355 	movw	r3, #43605	; 0xaa55
    1dae:	429a      	cmp	r2, r3
    1db0:	d05c      	beq.n	1e6c <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1db2:	4b33      	ldr	r3, [pc, #204]	; (1e80 <rtc_init+0xdc>)
    1db4:	69da      	ldr	r2, [r3, #28]
    1db6:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    1dba:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    1dbc:	4c31      	ldr	r4, [pc, #196]	; (1e84 <rtc_init+0xe0>)
    1dbe:	6822      	ldr	r2, [r4, #0]
    1dc0:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    1dc4:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    1dc6:	6a1a      	ldr	r2, [r3, #32]
    1dc8:	f042 0201 	orr.w	r2, r2, #1
    1dcc:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    1dce:	461a      	mov	r2, r3
    1dd0:	6a13      	ldr	r3, [r2, #32]
    1dd2:	f013 0f02 	tst.w	r3, #2
    1dd6:	d0fb      	beq.n	1dd0 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    1dd8:	4a29      	ldr	r2, [pc, #164]	; (1e80 <rtc_init+0xdc>)
    1dda:	6a13      	ldr	r3, [r2, #32]
    1ddc:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1de0:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    1de2:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    1de6:	6853      	ldr	r3, [r2, #4]
    1de8:	f013 0f08 	tst.w	r3, #8
    1dec:	d0fb      	beq.n	1de6 <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    1dee:	4a26      	ldr	r2, [pc, #152]	; (1e88 <rtc_init+0xe4>)
    1df0:	6853      	ldr	r3, [r2, #4]
    1df2:	f013 0f20 	tst.w	r3, #32
    1df6:	d0fb      	beq.n	1df0 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    1df8:	4a23      	ldr	r2, [pc, #140]	; (1e88 <rtc_init+0xe4>)
    1dfa:	6853      	ldr	r3, [r2, #4]
    1dfc:	f043 0310 	orr.w	r3, r3, #16
    1e00:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    1e02:	6853      	ldr	r3, [r2, #4]
    1e04:	f013 0f20 	tst.w	r3, #32
    1e08:	d0fb      	beq.n	1e02 <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    1e0a:	4a1f      	ldr	r2, [pc, #124]	; (1e88 <rtc_init+0xe4>)
    1e0c:	6813      	ldr	r3, [r2, #0]
    1e0e:	4319      	orrs	r1, r3
    1e10:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    1e12:	6853      	ldr	r3, [r2, #4]
    1e14:	f013 0f20 	tst.w	r3, #32
    1e18:	d0fb      	beq.n	1e12 <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    1e1a:	03c2      	lsls	r2, r0, #15
    1e1c:	481b      	ldr	r0, [pc, #108]	; (1e8c <rtc_init+0xe8>)
    1e1e:	fba0 3202 	umull	r3, r2, r0, r2
    1e22:	0992      	lsrs	r2, r2, #6
    1e24:	3a01      	subs	r2, #1
    1e26:	b291      	uxth	r1, r2
    1e28:	4b17      	ldr	r3, [pc, #92]	; (1e88 <rtc_init+0xe4>)
    1e2a:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    1e2c:	4619      	mov	r1, r3
    1e2e:	684b      	ldr	r3, [r1, #4]
    1e30:	f013 0f20 	tst.w	r3, #32
    1e34:	d0fb      	beq.n	1e2e <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    1e36:	f3c2 4203 	ubfx	r2, r2, #16, #4
    1e3a:	4b13      	ldr	r3, [pc, #76]	; (1e88 <rtc_init+0xe4>)
    1e3c:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    1e3e:	461a      	mov	r2, r3
    1e40:	6853      	ldr	r3, [r2, #4]
    1e42:	f013 0f20 	tst.w	r3, #32
    1e46:	d0fb      	beq.n	1e40 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    1e48:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1e4c:	4b0b      	ldr	r3, [pc, #44]	; (1e7c <rtc_init+0xd8>)
    1e4e:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    1e50:	4a0d      	ldr	r2, [pc, #52]	; (1e88 <rtc_init+0xe4>)
    1e52:	6853      	ldr	r3, [r2, #4]
    1e54:	f023 0310 	bic.w	r3, r3, #16
    1e58:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    1e5a:	6853      	ldr	r3, [r2, #4]
    1e5c:	f013 0f20 	tst.w	r3, #32
    1e60:	d0fb      	beq.n	1e5a <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    1e62:	4a08      	ldr	r2, [pc, #32]	; (1e84 <rtc_init+0xe0>)
    1e64:	6813      	ldr	r3, [r2, #0]
    1e66:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1e6a:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    1e6c:	210f      	movs	r1, #15
    1e6e:	2003      	movs	r0, #3
    1e70:	f7ff fe38 	bl	1ae4 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    1e74:	2003      	movs	r0, #3
    1e76:	f7ff fdd5 	bl	1a24 <enable_interrupt>
    1e7a:	bd10      	pop	{r4, pc}
    1e7c:	40006c00 	.word	0x40006c00
    1e80:	40021000 	.word	0x40021000
    1e84:	40007000 	.word	0x40007000
    1e88:	40002800 	.word	0x40002800
    1e8c:	10624dd3 	.word	0x10624dd3

00001e90 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1e90:	4b06      	ldr	r3, [pc, #24]	; (1eac <reset_backup_domain+0x1c>)
    1e92:	69da      	ldr	r2, [r3, #28]
    1e94:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    1e98:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    1e9a:	6a1a      	ldr	r2, [r3, #32]
    1e9c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    1ea0:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    1ea2:	6a1a      	ldr	r2, [r3, #32]
    1ea4:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    1ea8:	621a      	str	r2, [r3, #32]
    1eaa:	4770      	bx	lr
    1eac:	40021000 	.word	0x40021000

00001eb0 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1eb0:	4a27      	ldr	r2, [pc, #156]	; (1f50 <rtc_clock_trim+0xa0>)
    1eb2:	69d3      	ldr	r3, [r2, #28]
    1eb4:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1eb8:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    1eba:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    1ebe:	6853      	ldr	r3, [r2, #4]
    1ec0:	f013 0f08 	tst.w	r3, #8
    1ec4:	d0fb      	beq.n	1ebe <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1ec6:	4a23      	ldr	r2, [pc, #140]	; (1f54 <rtc_clock_trim+0xa4>)
    1ec8:	6813      	ldr	r3, [r2, #0]
    1eca:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1ece:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    1ed0:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    1ed4:	6853      	ldr	r3, [r2, #4]
    1ed6:	f043 0310 	orr.w	r3, r3, #16
    1eda:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    1edc:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    1ee0:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    1ee2:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1ee6:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    1ee8:	b9b8      	cbnz	r0, 1f1a <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    1eea:	2200      	movs	r2, #0
    1eec:	4b1a      	ldr	r3, [pc, #104]	; (1f58 <rtc_clock_trim+0xa8>)
    1eee:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    1ef0:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    1ef4:	f647 71ff 	movw	r1, #32767	; 0x7fff
    1ef8:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    1efa:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    1efc:	4a17      	ldr	r2, [pc, #92]	; (1f5c <rtc_clock_trim+0xac>)
    1efe:	6853      	ldr	r3, [r2, #4]
    1f00:	f023 0310 	bic.w	r3, r3, #16
    1f04:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    1f06:	6853      	ldr	r3, [r2, #4]
    1f08:	f013 0f20 	tst.w	r3, #32
    1f0c:	d0fb      	beq.n	1f06 <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    1f0e:	4a11      	ldr	r2, [pc, #68]	; (1f54 <rtc_clock_trim+0xa4>)
    1f10:	6813      	ldr	r3, [r2, #0]
    1f12:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1f16:	6013      	str	r3, [r2, #0]
    1f18:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    1f1a:	2800      	cmp	r0, #0
    1f1c:	dd06      	ble.n	1f2c <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    1f1e:	4b0e      	ldr	r3, [pc, #56]	; (1f58 <rtc_clock_trim+0xa8>)
    1f20:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    1f22:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    1f26:	4310      	orrs	r0, r2
    1f28:	62d8      	str	r0, [r3, #44]	; 0x2c
    1f2a:	e7e7      	b.n	1efc <rtc_clock_trim+0x4c>
		trim=-trim;
    1f2c:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    1f2e:	2100      	movs	r1, #0
    1f30:	4b09      	ldr	r3, [pc, #36]	; (1f58 <rtc_clock_trim+0xa8>)
    1f32:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    1f34:	f64f 73ff 	movw	r3, #65535	; 0xffff
    1f38:	287f      	cmp	r0, #127	; 0x7f
    1f3a:	bfd4      	ite	le
    1f3c:	1a18      	suble	r0, r3, r0
    1f3e:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    1f42:	f3c0 000e 	ubfx	r0, r0, #0, #15
    1f46:	4a05      	ldr	r2, [pc, #20]	; (1f5c <rtc_clock_trim+0xac>)
    1f48:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    1f4a:	6091      	str	r1, [r2, #8]
    1f4c:	e7d6      	b.n	1efc <rtc_clock_trim+0x4c>
    1f4e:	bf00      	nop
    1f50:	40021000 	.word	0x40021000
    1f54:	40007000 	.word	0x40007000
    1f58:	40006c00 	.word	0x40006c00
    1f5c:	40002800 	.word	0x40002800

00001f60 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    1f60:	4770      	bx	lr

00001f62 <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    1f62:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    1f66:	4607      	mov	r7, r0
    1f68:	4688      	mov	r8, r1
    1f6a:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    1f6c:	2400      	movs	r4, #0
	i=0;
    1f6e:	4626      	mov	r6, r4
	while (digit(date[i])){
    1f70:	e008      	b.n	1f84 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    1f72:	3601      	adds	r6, #1
    1f74:	3501      	adds	r5, #1
    1f76:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    1f7a:	f899 3000 	ldrb.w	r3, [r9]
    1f7e:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    1f82:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    1f84:	46a9      	mov	r9, r5
    1f86:	7828      	ldrb	r0, [r5, #0]
    1f88:	f7ff f9e1 	bl	134e <digit>
    1f8c:	4682      	mov	sl, r0
    1f8e:	2800      	cmp	r0, #0
    1f90:	d1ef      	bne.n	1f72 <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    1f92:	2e03      	cmp	r6, #3
    1f94:	dd02      	ble.n	1f9c <str_to_date+0x3a>
    1f96:	782b      	ldrb	r3, [r5, #0]
    1f98:	2b2f      	cmp	r3, #47	; 0x2f
    1f9a:	d002      	beq.n	1fa2 <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    1f9c:	4650      	mov	r0, sl
    1f9e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    1fa2:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    1fa6:	3601      	adds	r6, #1
    1fa8:	19bd      	adds	r5, r7, r6
	n=0;
    1faa:	4604      	mov	r4, r0
	while (digit(date[i])){
    1fac:	e008      	b.n	1fc0 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    1fae:	3601      	adds	r6, #1
    1fb0:	3501      	adds	r5, #1
    1fb2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    1fb6:	f899 3000 	ldrb.w	r3, [r9]
    1fba:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    1fbe:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    1fc0:	46a9      	mov	r9, r5
    1fc2:	7828      	ldrb	r0, [r5, #0]
    1fc4:	f7ff f9c3 	bl	134e <digit>
    1fc8:	4682      	mov	sl, r0
    1fca:	2800      	cmp	r0, #0
    1fcc:	d1ef      	bne.n	1fae <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    1fce:	2e06      	cmp	r6, #6
    1fd0:	dde4      	ble.n	1f9c <str_to_date+0x3a>
    1fd2:	782b      	ldrb	r3, [r5, #0]
    1fd4:	2b2f      	cmp	r3, #47	; 0x2f
    1fd6:	d1e1      	bne.n	1f9c <str_to_date+0x3a>
	dt->month=n;
    1fd8:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    1fdc:	f364 1389 	bfi	r3, r4, #6, #4
    1fe0:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    1fe4:	1c74      	adds	r4, r6, #1
    1fe6:	443e      	add	r6, r7
	while (digit(date[i])){
    1fe8:	e008      	b.n	1ffc <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    1fea:	3401      	adds	r4, #1
    1fec:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    1ff0:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    1ff4:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    1ff8:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    1ffc:	7870      	ldrb	r0, [r6, #1]
    1ffe:	f7ff f9a6 	bl	134e <digit>
    2002:	2800      	cmp	r0, #0
    2004:	d1f1      	bne.n	1fea <str_to_date+0x88>
	if (i<10) return 0;
    2006:	2c09      	cmp	r4, #9
    2008:	dd08      	ble.n	201c <str_to_date+0xba>
	dt->day=n;
    200a:	f898 3002 	ldrb.w	r3, [r8, #2]
    200e:	f36a 0345 	bfi	r3, sl, #1, #5
    2012:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    2016:	f04f 0a01 	mov.w	sl, #1
    201a:	e7bf      	b.n	1f9c <str_to_date+0x3a>
	if (i<10) return 0;
    201c:	4682      	mov	sl, r0
    201e:	e7bd      	b.n	1f9c <str_to_date+0x3a>

00002020 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    2020:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2024:	4607      	mov	r7, r0
    2026:	4688      	mov	r8, r1
    2028:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    202a:	2400      	movs	r4, #0
	i=0;
    202c:	4626      	mov	r6, r4
	while (digit(time[i])){
    202e:	e00a      	b.n	2046 <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    2030:	3601      	adds	r6, #1
    2032:	3501      	adds	r5, #1
    2034:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2038:	0064      	lsls	r4, r4, #1
    203a:	3c30      	subs	r4, #48	; 0x30
    203c:	f899 3000 	ldrb.w	r3, [r9]
    2040:	441c      	add	r4, r3
    2042:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2046:	46a9      	mov	r9, r5
    2048:	7828      	ldrb	r0, [r5, #0]
    204a:	f7ff f980 	bl	134e <digit>
    204e:	4603      	mov	r3, r0
    2050:	2800      	cmp	r0, #0
    2052:	d1ed      	bne.n	2030 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    2054:	2c17      	cmp	r4, #23
    2056:	d802      	bhi.n	205e <str_to_time+0x3e>
    2058:	782a      	ldrb	r2, [r5, #0]
    205a:	2a3a      	cmp	r2, #58	; 0x3a
    205c:	d002      	beq.n	2064 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    205e:	4618      	mov	r0, r3
    2060:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    2064:	f8d8 3000 	ldr.w	r3, [r8]
    2068:	f364 3310 	bfi	r3, r4, #12, #5
    206c:	f8c8 3000 	str.w	r3, [r8]
	i++;
    2070:	3601      	adds	r6, #1
    2072:	19bd      	adds	r5, r7, r6
	n=0;
    2074:	2400      	movs	r4, #0
	while (digit(time[i])){
    2076:	e00a      	b.n	208e <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    2078:	3601      	adds	r6, #1
    207a:	3501      	adds	r5, #1
    207c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2080:	0064      	lsls	r4, r4, #1
    2082:	3c30      	subs	r4, #48	; 0x30
    2084:	f899 3000 	ldrb.w	r3, [r9]
    2088:	441c      	add	r4, r3
    208a:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    208e:	46a9      	mov	r9, r5
    2090:	7828      	ldrb	r0, [r5, #0]
    2092:	f7ff f95c 	bl	134e <digit>
    2096:	4603      	mov	r3, r0
    2098:	2800      	cmp	r0, #0
    209a:	d1ed      	bne.n	2078 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    209c:	2c3b      	cmp	r4, #59	; 0x3b
    209e:	d8de      	bhi.n	205e <str_to_time+0x3e>
    20a0:	782a      	ldrb	r2, [r5, #0]
    20a2:	2a3a      	cmp	r2, #58	; 0x3a
    20a4:	d1db      	bne.n	205e <str_to_time+0x3e>
	dt->minute=n;
    20a6:	f8b8 3000 	ldrh.w	r3, [r8]
    20aa:	f364 138b 	bfi	r3, r4, #6, #6
    20ae:	f8a8 3000 	strh.w	r3, [r8]
    20b2:	443e      	add	r6, r7
	n=0;
    20b4:	2400      	movs	r4, #0
	while (digit(time[i])){
    20b6:	e008      	b.n	20ca <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    20b8:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    20bc:	0064      	lsls	r4, r4, #1
    20be:	3c30      	subs	r4, #48	; 0x30
    20c0:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    20c4:	441c      	add	r4, r3
    20c6:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    20ca:	7870      	ldrb	r0, [r6, #1]
    20cc:	f7ff f93f 	bl	134e <digit>
    20d0:	4603      	mov	r3, r0
    20d2:	2800      	cmp	r0, #0
    20d4:	d1f0      	bne.n	20b8 <str_to_time+0x98>
	if (n>59) return 0;
    20d6:	2c3b      	cmp	r4, #59	; 0x3b
    20d8:	d8c1      	bhi.n	205e <str_to_time+0x3e>
	dt->second=n;
    20da:	f898 3000 	ldrb.w	r3, [r8]
    20de:	f364 0305 	bfi	r3, r4, #0, #6
    20e2:	f888 3000 	strb.w	r3, [r8]
	return 1;
    20e6:	2301      	movs	r3, #1
    20e8:	e7b9      	b.n	205e <str_to_time+0x3e>

000020ea <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    20ea:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    20ec:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    20ee:	4b23      	ldr	r3, [pc, #140]	; (217c <date_str+0x92>)
    20f0:	fba3 4302 	umull	r4, r3, r3, r2
    20f4:	099b      	lsrs	r3, r3, #6
    20f6:	f103 0430 	add.w	r4, r3, #48	; 0x30
    20fa:	700c      	strb	r4, [r1, #0]
	n%=1000;
    20fc:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2100:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2104:	4b1e      	ldr	r3, [pc, #120]	; (2180 <date_str+0x96>)
    2106:	fba3 4302 	umull	r4, r3, r3, r2
    210a:	095b      	lsrs	r3, r3, #5
    210c:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2110:	704c      	strb	r4, [r1, #1]
	n%=100;
    2112:	2464      	movs	r4, #100	; 0x64
    2114:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2118:	4a1a      	ldr	r2, [pc, #104]	; (2184 <date_str+0x9a>)
    211a:	fba2 5403 	umull	r5, r4, r2, r3
    211e:	08e4      	lsrs	r4, r4, #3
    2120:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2124:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    2126:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    212a:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    212e:	3330      	adds	r3, #48	; 0x30
    2130:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    2132:	262f      	movs	r6, #47	; 0x2f
    2134:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    2136:	8843      	ldrh	r3, [r0, #2]
    2138:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    213c:	fba2 5403 	umull	r5, r4, r2, r3
    2140:	08e4      	lsrs	r4, r4, #3
    2142:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2146:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    2148:	00a5      	lsls	r5, r4, #2
    214a:	442c      	add	r4, r5
    214c:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    2150:	3330      	adds	r3, #48	; 0x30
    2152:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    2154:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    2156:	7880      	ldrb	r0, [r0, #2]
    2158:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    215c:	fba2 3200 	umull	r3, r2, r2, r0
    2160:	08d3      	lsrs	r3, r2, #3
    2162:	f103 0230 	add.w	r2, r3, #48	; 0x30
    2166:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    2168:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    216c:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    2170:	3330      	adds	r3, #48	; 0x30
    2172:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    2174:	2300      	movs	r3, #0
    2176:	728b      	strb	r3, [r1, #10]

}
    2178:	bc70      	pop	{r4, r5, r6}
    217a:	4770      	bx	lr
    217c:	10624dd3 	.word	0x10624dd3
    2180:	51eb851f 	.word	0x51eb851f
    2184:	cccccccd 	.word	0xcccccccd

00002188 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    2188:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    218a:	6802      	ldr	r2, [r0, #0]
    218c:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    2190:	4b18      	ldr	r3, [pc, #96]	; (21f4 <time_str+0x6c>)
    2192:	fba3 5402 	umull	r5, r4, r3, r2
    2196:	08e4      	lsrs	r4, r4, #3
    2198:	f104 0530 	add.w	r5, r4, #48	; 0x30
    219c:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    219e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    21a2:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    21a6:	3230      	adds	r2, #48	; 0x30
    21a8:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    21aa:	253a      	movs	r5, #58	; 0x3a
    21ac:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    21ae:	8802      	ldrh	r2, [r0, #0]
    21b0:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    21b4:	fba3 6402 	umull	r6, r4, r3, r2
    21b8:	08e4      	lsrs	r4, r4, #3
    21ba:	f104 0630 	add.w	r6, r4, #48	; 0x30
    21be:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    21c0:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    21c4:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    21c8:	3230      	adds	r2, #48	; 0x30
    21ca:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    21cc:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    21ce:	7802      	ldrb	r2, [r0, #0]
    21d0:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    21d4:	fba3 0302 	umull	r0, r3, r3, r2
    21d8:	08db      	lsrs	r3, r3, #3
    21da:	f103 0030 	add.w	r0, r3, #48	; 0x30
    21de:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    21e0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    21e4:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    21e8:	3330      	adds	r3, #48	; 0x30
    21ea:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    21ec:	2300      	movs	r3, #0
    21ee:	720b      	strb	r3, [r1, #8]
}
    21f0:	bc70      	pop	{r4, r5, r6}
    21f2:	4770      	bx	lr
    21f4:	cccccccd 	.word	0xcccccccd

000021f8 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    21f8:	b500      	push	{lr}
    21fa:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    21fc:	a801      	add	r0, sp, #4
    21fe:	f7ff fcbb 	bl	1b78 <get_date_time>
	t.fields.second=dt.second/2;
    2202:	f89d 3004 	ldrb.w	r3, [sp, #4]
    2206:	f3c3 0344 	ubfx	r3, r3, #1, #5
    220a:	2000      	movs	r0, #0
    220c:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2210:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2214:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2218:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    221c:	9b01      	ldr	r3, [sp, #4]
    221e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2222:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    2226:	f89d 3006 	ldrb.w	r3, [sp, #6]
    222a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    222e:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    2232:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    2236:	f3c3 1383 	ubfx	r3, r3, #6, #4
    223a:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    223e:	f89d 300c 	ldrb.w	r3, [sp, #12]
    2242:	3344      	adds	r3, #68	; 0x44
    2244:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    2248:	b005      	add	sp, #20
    224a:	f85d fb04 	ldr.w	pc, [sp], #4

0000224e <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    224e:	4b07      	ldr	r3, [pc, #28]	; (226c <RTC_handler+0x1e>)
    2250:	685b      	ldr	r3, [r3, #4]
    2252:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    2256:	bf1c      	itt	ne
    2258:	4b04      	ldrne	r3, [pc, #16]	; (226c <RTC_handler+0x1e>)
    225a:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    225c:	4b03      	ldr	r3, [pc, #12]	; (226c <RTC_handler+0x1e>)
    225e:	685b      	ldr	r3, [r3, #4]
    2260:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    2264:	bf1c      	itt	ne
    2266:	4b01      	ldrne	r3, [pc, #4]	; (226c <RTC_handler+0x1e>)
    2268:	685b      	ldrne	r3, [r3, #4]
    226a:	4770      	bx	lr
    226c:	40002800 	.word	0x40002800

00002270 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    2270:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    2272:	4b12      	ldr	r3, [pc, #72]	; (22bc <sound_init+0x4c>)
    2274:	685a      	ldr	r2, [r3, #4]
    2276:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    227a:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    227c:	685a      	ldr	r2, [r3, #4]
    227e:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    2282:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    2284:	220a      	movs	r2, #10
    2286:	4611      	mov	r1, r2
    2288:	480d      	ldr	r0, [pc, #52]	; (22c0 <sound_init+0x50>)
    228a:	f7ff f98b 	bl	15a4 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    228e:	4a0d      	ldr	r2, [pc, #52]	; (22c4 <sound_init+0x54>)
    2290:	69d3      	ldr	r3, [r2, #28]
    2292:	f043 0301 	orr.w	r3, r3, #1
    2296:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2298:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    229c:	2278      	movs	r2, #120	; 0x78
    229e:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    22a0:	f44f 7280 	mov.w	r2, #256	; 0x100
    22a4:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    22a6:	2209      	movs	r2, #9
    22a8:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    22aa:	2100      	movs	r1, #0
    22ac:	201c      	movs	r0, #28
    22ae:	f7ff fc19 	bl	1ae4 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    22b2:	201c      	movs	r0, #28
    22b4:	f7ff fbb6 	bl	1a24 <enable_interrupt>
    22b8:	bd08      	pop	{r3, pc}
    22ba:	bf00      	nop
    22bc:	40010000 	.word	0x40010000
    22c0:	40010c00 	.word	0x40010c00
    22c4:	40021000 	.word	0x40021000

000022c8 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    22c8:	4b07      	ldr	r3, [pc, #28]	; (22e8 <tone+0x20>)
    22ca:	fbb3 f0f0 	udiv	r0, r3, r0
    22ce:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    22d2:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    22d4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    22d6:	0852      	lsrs	r2, r2, #1
    22d8:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    22da:	681a      	ldr	r2, [r3, #0]
    22dc:	f042 0201 	orr.w	r2, r2, #1
    22e0:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    22e2:	4b02      	ldr	r3, [pc, #8]	; (22ec <tone+0x24>)
    22e4:	8019      	strh	r1, [r3, #0]
    22e6:	4770      	bx	lr
    22e8:	006d3d32 	.word	0x006d3d32
    22ec:	20004e98 	.word	0x20004e98

000022f0 <beep>:
}

void beep(uint16_t duration){
    22f0:	b508      	push	{r3, lr}
    tone(1000,duration);
    22f2:	4601      	mov	r1, r0
    22f4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    22f8:	f7ff ffe6 	bl	22c8 <tone>
    22fc:	bd08      	pop	{r3, pc}

000022fe <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    22fe:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2302:	681a      	ldr	r2, [r3, #0]
    2304:	f022 0201 	bic.w	r2, r2, #1
    2308:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    230a:	68da      	ldr	r2, [r3, #12]
    230c:	f022 0201 	bic.w	r2, r2, #1
    2310:	60da      	str	r2, [r3, #12]
    2312:	4770      	bx	lr

00002314 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    2314:	b510      	push	{r4, lr}
    2316:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    2318:	b289      	uxth	r1, r1
    231a:	4b06      	ldr	r3, [pc, #24]	; (2334 <key_tone+0x20>)
    231c:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    2320:	f7ff ffd2 	bl	22c8 <tone>
    if (wait_end) while (sound_timer);
    2324:	b124      	cbz	r4, 2330 <key_tone+0x1c>
    2326:	4a04      	ldr	r2, [pc, #16]	; (2338 <key_tone+0x24>)
    2328:	8813      	ldrh	r3, [r2, #0]
    232a:	b29b      	uxth	r3, r3
    232c:	2b00      	cmp	r3, #0
    232e:	d1fb      	bne.n	2328 <key_tone+0x14>
    2330:	bd10      	pop	{r4, pc}
    2332:	bf00      	nop
    2334:	00003684 	.word	0x00003684
    2338:	20004e98 	.word	0x20004e98

0000233c <noise>:
}

// produit un bruit 
void noise(int length){
    233c:	b510      	push	{r4, lr}
    233e:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    2340:	4b07      	ldr	r3, [pc, #28]	; (2360 <noise+0x24>)
    2342:	6818      	ldr	r0, [r3, #0]
    2344:	f7fe f840 	bl	3c8 <srand>
    tone(6000,length);
    2348:	b2a1      	uxth	r1, r4
    234a:	f241 7070 	movw	r0, #6000	; 0x1770
    234e:	f7ff ffbb 	bl	22c8 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    2352:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2356:	68d3      	ldr	r3, [r2, #12]
    2358:	f043 0301 	orr.w	r3, r3, #1
    235c:	60d3      	str	r3, [r2, #12]
    235e:	bd10      	pop	{r4, pc}
    2360:	20004e94 	.word	0x20004e94

00002364 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    2364:	4668      	mov	r0, sp
    2366:	f020 0107 	bic.w	r1, r0, #7
    236a:	468d      	mov	sp, r1
    236c:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    236e:	f7fe f831 	bl	3d4 <rand>
    2372:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    2376:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    237a:	6a13      	ldr	r3, [r2, #32]
    237c:	bf14      	ite	ne
    237e:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    2382:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    2386:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    2388:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    238c:	6913      	ldr	r3, [r2, #16]
    238e:	f023 0301 	bic.w	r3, r3, #1
    2392:	6113      	str	r3, [r2, #16]
}
    2394:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    2398:	4685      	mov	sp, r0
    239a:	4770      	bx	lr

0000239c <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    239c:	6803      	ldr	r3, [r0, #0]
    239e:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    23a2:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    23a4:	6803      	ldr	r3, [r0, #0]
    23a6:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    23aa:	6001      	str	r1, [r0, #0]
    23ac:	4770      	bx	lr

000023ae <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    23ae:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    23b0:	4a2f      	ldr	r2, [pc, #188]	; (2470 <spi_config_port+0xc2>)
    23b2:	6993      	ldr	r3, [r2, #24]
    23b4:	f043 0301 	orr.w	r3, r3, #1
    23b8:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    23ba:	4b2e      	ldr	r3, [pc, #184]	; (2474 <spi_config_port+0xc6>)
    23bc:	4298      	cmp	r0, r3
    23be:	d01a      	beq.n	23f6 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    23c0:	4a2b      	ldr	r2, [pc, #172]	; (2470 <spi_config_port+0xc2>)
    23c2:	6993      	ldr	r3, [r2, #24]
    23c4:	f043 0308 	orr.w	r3, r3, #8
    23c8:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    23ca:	4c2b      	ldr	r4, [pc, #172]	; (2478 <spi_config_port+0xca>)
    23cc:	2203      	movs	r2, #3
    23ce:	2102      	movs	r1, #2
    23d0:	4620      	mov	r0, r4
    23d2:	f7ff f8e7 	bl	15a4 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    23d6:	220b      	movs	r2, #11
    23d8:	210d      	movs	r1, #13
    23da:	4620      	mov	r0, r4
    23dc:	f7ff f8e2 	bl	15a4 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    23e0:	2204      	movs	r2, #4
    23e2:	210e      	movs	r1, #14
    23e4:	4620      	mov	r0, r4
    23e6:	f7ff f8dd 	bl	15a4 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    23ea:	220b      	movs	r2, #11
    23ec:	210f      	movs	r1, #15
    23ee:	4620      	mov	r0, r4
    23f0:	f7ff f8d8 	bl	15a4 <config_pin>
    23f4:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    23f6:	b9c9      	cbnz	r1, 242c <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    23f8:	6993      	ldr	r3, [r2, #24]
    23fa:	f043 0304 	orr.w	r3, r3, #4
    23fe:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2400:	4c1e      	ldr	r4, [pc, #120]	; (247c <spi_config_port+0xce>)
    2402:	2203      	movs	r2, #3
    2404:	2104      	movs	r1, #4
    2406:	4620      	mov	r0, r4
    2408:	f7ff f8cc 	bl	15a4 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    240c:	220b      	movs	r2, #11
    240e:	2105      	movs	r1, #5
    2410:	4620      	mov	r0, r4
    2412:	f7ff f8c7 	bl	15a4 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2416:	2204      	movs	r2, #4
    2418:	2106      	movs	r1, #6
    241a:	4620      	mov	r0, r4
    241c:	f7ff f8c2 	bl	15a4 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2420:	220b      	movs	r2, #11
    2422:	2107      	movs	r1, #7
    2424:	4620      	mov	r0, r4
    2426:	f7ff f8bd 	bl	15a4 <config_pin>
    242a:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    242c:	4a10      	ldr	r2, [pc, #64]	; (2470 <spi_config_port+0xc2>)
    242e:	6993      	ldr	r3, [r2, #24]
    2430:	f043 030d 	orr.w	r3, r3, #13
    2434:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2436:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    243a:	6853      	ldr	r3, [r2, #4]
    243c:	f043 0301 	orr.w	r3, r3, #1
    2440:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2442:	2203      	movs	r2, #3
    2444:	210f      	movs	r1, #15
    2446:	480d      	ldr	r0, [pc, #52]	; (247c <spi_config_port+0xce>)
    2448:	f7ff f8ac 	bl	15a4 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    244c:	4c0a      	ldr	r4, [pc, #40]	; (2478 <spi_config_port+0xca>)
    244e:	220b      	movs	r2, #11
    2450:	2103      	movs	r1, #3
    2452:	4620      	mov	r0, r4
    2454:	f7ff f8a6 	bl	15a4 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2458:	2204      	movs	r2, #4
    245a:	4611      	mov	r1, r2
    245c:	4620      	mov	r0, r4
    245e:	f7ff f8a1 	bl	15a4 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2462:	220b      	movs	r2, #11
    2464:	2105      	movs	r1, #5
    2466:	4620      	mov	r0, r4
    2468:	f7ff f89c 	bl	15a4 <config_pin>
    246c:	bd10      	pop	{r4, pc}
    246e:	bf00      	nop
    2470:	40021000 	.word	0x40021000
    2474:	40013000 	.word	0x40013000
    2478:	40010c00 	.word	0x40010c00
    247c:	40010800 	.word	0x40010800

00002480 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2480:	b570      	push	{r4, r5, r6, lr}
    2482:	4604      	mov	r4, r0
    2484:	460d      	mov	r5, r1
    2486:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2488:	4619      	mov	r1, r3
    248a:	f7ff ff90 	bl	23ae <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    248e:	4b0c      	ldr	r3, [pc, #48]	; (24c0 <spi_init+0x40>)
    2490:	429c      	cmp	r4, r3
    2492:	d00e      	beq.n	24b2 <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2494:	4a0b      	ldr	r2, [pc, #44]	; (24c4 <spi_init+0x44>)
    2496:	69d3      	ldr	r3, [r2, #28]
    2498:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    249c:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    249e:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    24a0:	4629      	mov	r1, r5
    24a2:	4620      	mov	r0, r4
    24a4:	f7ff ff7a 	bl	239c <spi_baudrate>
	_spi_enable(channel);
    24a8:	6823      	ldr	r3, [r4, #0]
    24aa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    24ae:	6023      	str	r3, [r4, #0]
    24b0:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    24b2:	4a04      	ldr	r2, [pc, #16]	; (24c4 <spi_init+0x44>)
    24b4:	6993      	ldr	r3, [r2, #24]
    24b6:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    24ba:	6193      	str	r3, [r2, #24]
    24bc:	e7ef      	b.n	249e <spi_init+0x1e>
    24be:	bf00      	nop
    24c0:	40013000 	.word	0x40013000
    24c4:	40021000 	.word	0x40021000

000024c8 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    24c8:	6883      	ldr	r3, [r0, #8]
    24ca:	f013 0f02 	tst.w	r3, #2
    24ce:	d0fb      	beq.n	24c8 <spi_send>
	channel->DR=b;
    24d0:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    24d2:	6883      	ldr	r3, [r0, #8]
    24d4:	f013 0f01 	tst.w	r3, #1
    24d8:	d0fb      	beq.n	24d2 <spi_send+0xa>
	return (uint8_t)channel->DR;
    24da:	68c0      	ldr	r0, [r0, #12]
}
    24dc:	b2c0      	uxtb	r0, r0
    24de:	4770      	bx	lr

000024e0 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    24e0:	6883      	ldr	r3, [r0, #8]
    24e2:	f013 0f02 	tst.w	r3, #2
    24e6:	d0fb      	beq.n	24e0 <spi_receive>
	channel->DR=255;
    24e8:	23ff      	movs	r3, #255	; 0xff
    24ea:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    24ec:	6883      	ldr	r3, [r0, #8]
    24ee:	f013 0f01 	tst.w	r3, #1
    24f2:	d0fb      	beq.n	24ec <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    24f4:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    24f6:	b2c0      	uxtb	r0, r0
    24f8:	4770      	bx	lr

000024fa <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    24fa:	b14a      	cbz	r2, 2510 <spi_send_block+0x16>
    24fc:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    24fe:	f811 3b01 	ldrb.w	r3, [r1], #1
    2502:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2504:	6883      	ldr	r3, [r0, #8]
    2506:	f013 0f02 	tst.w	r3, #2
    250a:	d0fb      	beq.n	2504 <spi_send_block+0xa>
	while (count){
    250c:	428a      	cmp	r2, r1
    250e:	d1f6      	bne.n	24fe <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2510:	6883      	ldr	r3, [r0, #8]
    2512:	f013 0f80 	tst.w	r3, #128	; 0x80
    2516:	d1fb      	bne.n	2510 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2518:	68c3      	ldr	r3, [r0, #12]
    251a:	4770      	bx	lr

0000251c <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    251c:	b16a      	cbz	r2, 253a <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    251e:	b410      	push	{r4}
    2520:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2522:	2400      	movs	r4, #0
    2524:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2526:	6883      	ldr	r3, [r0, #8]
    2528:	f013 0f01 	tst.w	r3, #1
    252c:	d0fb      	beq.n	2526 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    252e:	68c3      	ldr	r3, [r0, #12]
    2530:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2534:	428a      	cmp	r2, r1
    2536:	d1f5      	bne.n	2524 <spi_receive_block+0x8>
		count--;
	}
}
    2538:	bc10      	pop	{r4}
    253a:	4770      	bx	lr

0000253c <reset_mcu>:
	_reset_mcu();
    253c:	4a01      	ldr	r2, [pc, #4]	; (2544 <reset_mcu+0x8>)
    253e:	4b02      	ldr	r3, [pc, #8]	; (2548 <reset_mcu+0xc>)
    2540:	601a      	str	r2, [r3, #0]
    2542:	bf00      	nop
    2544:	05fa0004 	.word	0x05fa0004
    2548:	e000ed0c 	.word	0xe000ed0c

0000254c <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    254c:	b508      	push	{r3, lr}
    254e:	460c      	mov	r4, r1
	print(msg);
    2550:	f000 f964 	bl	281c <print>
	print("\nat address ");
    2554:	4813      	ldr	r0, [pc, #76]	; (25a4 <print_fault+0x58>)
    2556:	f000 f961 	bl	281c <print>
	if (adr) {
    255a:	b9ec      	cbnz	r4, 2598 <print_fault+0x4c>
	put_char(CR);
    255c:	200d      	movs	r0, #13
    255e:	f000 f8bf 	bl	26e0 <put_char>
	print("\nUFSR=");
    2562:	4811      	ldr	r0, [pc, #68]	; (25a8 <print_fault+0x5c>)
    2564:	f000 f95a 	bl	281c <print>
	print_int(CFSR->fsr.usageFalt,16);
    2568:	4c10      	ldr	r4, [pc, #64]	; (25ac <print_fault+0x60>)
    256a:	6820      	ldr	r0, [r4, #0]
    256c:	2110      	movs	r1, #16
    256e:	40c8      	lsrs	r0, r1
    2570:	f000 f96f 	bl	2852 <print_int>
	print("\nBFSR=");
    2574:	480e      	ldr	r0, [pc, #56]	; (25b0 <print_fault+0x64>)
    2576:	f000 f951 	bl	281c <print>
	print_int(CFSR->fsr.busFault,16);
    257a:	6820      	ldr	r0, [r4, #0]
    257c:	2110      	movs	r1, #16
    257e:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2582:	f000 f966 	bl	2852 <print_int>
	print("\nMMFSR=");
    2586:	480b      	ldr	r0, [pc, #44]	; (25b4 <print_fault+0x68>)
    2588:	f000 f948 	bl	281c <print>
	print_int(CFSR->fsr.mmFault,16);
    258c:	6820      	ldr	r0, [r4, #0]
    258e:	2110      	movs	r1, #16
    2590:	b2c0      	uxtb	r0, r0
    2592:	f000 f95e 	bl	2852 <print_int>
    2596:	e7fe      	b.n	2596 <print_fault+0x4a>
		print_int(adr,16);
    2598:	2110      	movs	r1, #16
    259a:	4620      	mov	r0, r4
    259c:	f000 f959 	bl	2852 <print_int>
    25a0:	e7dc      	b.n	255c <print_fault+0x10>
    25a2:	bf00      	nop
    25a4:	00003818 	.word	0x00003818
    25a8:	00003828 	.word	0x00003828
    25ac:	e000ed28 	.word	0xe000ed28
    25b0:	00003830 	.word	0x00003830
    25b4:	00003838 	.word	0x00003838

000025b8 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    25b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    25bc:	b083      	sub	sp, #12
    25be:	9001      	str	r0, [sp, #4]
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    25c0:	18cb      	adds	r3, r1, r3
    25c2:	9300      	str	r3, [sp, #0]
    25c4:	4299      	cmp	r1, r3
    25c6:	da22      	bge.n	260e <draw_char+0x56>
    25c8:	460e      	mov	r6, r1
    25ca:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    25cc:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    25d0:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    25d2:	f8df a040 	ldr.w	sl, [pc, #64]	; 2614 <draw_char+0x5c>
		byte=*glyph++;
    25d6:	f81b 8f01 	ldrb.w	r8, [fp, #1]!
		for (x0=x;x0<(x+w);x0++){
    25da:	9c01      	ldr	r4, [sp, #4]
    25dc:	42bc      	cmp	r4, r7
    25de:	da12      	bge.n	2606 <draw_char+0x4e>
    25e0:	2580      	movs	r5, #128	; 0x80
			gfx_blit(x0,y0,c,BIT_SET);
    25e2:	f04f 0904 	mov.w	r9, #4
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    25e6:	ea18 0f05 	tst.w	r8, r5
    25ea:	bf14      	ite	ne
    25ec:	f89a 2001 	ldrbne.w	r2, [sl, #1]
    25f0:	f89a 2000 	ldrbeq.w	r2, [sl]
			gfx_blit(x0,y0,c,BIT_SET);
    25f4:	464b      	mov	r3, r9
    25f6:	4631      	mov	r1, r6
    25f8:	4620      	mov	r0, r4
    25fa:	f7ff f813 	bl	1624 <gfx_blit>
			mask>>=1;
    25fe:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2600:	3401      	adds	r4, #1
    2602:	42bc      	cmp	r4, r7
    2604:	d1ef      	bne.n	25e6 <draw_char+0x2e>
	for (y0=y;y0<(y+h);y0++){
    2606:	3601      	adds	r6, #1
    2608:	9b00      	ldr	r3, [sp, #0]
    260a:	429e      	cmp	r6, r3
    260c:	d1e3      	bne.n	25d6 <draw_char+0x1e>
		}
	}
}
    260e:	b003      	add	sp, #12
    2610:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2614:	20000220 	.word	0x20000220

00002618 <font_color>:
	text_colors[FG]=color&0xf;
    2618:	f000 000f 	and.w	r0, r0, #15
    261c:	4b01      	ldr	r3, [pc, #4]	; (2624 <font_color+0xc>)
    261e:	7058      	strb	r0, [r3, #1]
    2620:	4770      	bx	lr
    2622:	bf00      	nop
    2624:	20000220 	.word	0x20000220

00002628 <bg_color>:
	text_colors[BG]=color&0xf;
    2628:	f000 000f 	and.w	r0, r0, #15
    262c:	4b01      	ldr	r3, [pc, #4]	; (2634 <bg_color+0xc>)
    262e:	7018      	strb	r0, [r3, #0]
    2630:	4770      	bx	lr
    2632:	bf00      	nop
    2634:	20000220 	.word	0x20000220

00002638 <select_font>:
	font=font_id;
    2638:	4b01      	ldr	r3, [pc, #4]	; (2640 <select_font+0x8>)
    263a:	7098      	strb	r0, [r3, #2]
    263c:	4770      	bx	lr
    263e:	bf00      	nop
    2640:	20000220 	.word	0x20000220

00002644 <get_font>:
}
    2644:	4b01      	ldr	r3, [pc, #4]	; (264c <get_font+0x8>)
    2646:	7898      	ldrb	r0, [r3, #2]
    2648:	4770      	bx	lr
    264a:	bf00      	nop
    264c:	20000220 	.word	0x20000220

00002650 <new_line>:
void new_line(){
    2650:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2652:	4b21      	ldr	r3, [pc, #132]	; (26d8 <new_line+0x88>)
    2654:	781b      	ldrb	r3, [r3, #0]
    2656:	2b00      	cmp	r3, #0
    2658:	d138      	bne.n	26cc <new_line+0x7c>
		xpos=0;
    265a:	2200      	movs	r2, #0
    265c:	4b1e      	ldr	r3, [pc, #120]	; (26d8 <new_line+0x88>)
    265e:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2660:	f000 fbc4 	bl	2dec <get_video_params>
		switch (font){
    2664:	4b1d      	ldr	r3, [pc, #116]	; (26dc <new_line+0x8c>)
    2666:	789b      	ldrb	r3, [r3, #2]
    2668:	2b01      	cmp	r3, #1
    266a:	d011      	beq.n	2690 <new_line+0x40>
    266c:	b113      	cbz	r3, 2674 <new_line+0x24>
    266e:	2b02      	cmp	r3, #2
    2670:	d01d      	beq.n	26ae <new_line+0x5e>
    2672:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2674:	4b18      	ldr	r3, [pc, #96]	; (26d8 <new_line+0x88>)
    2676:	789b      	ldrb	r3, [r3, #2]
    2678:	1d99      	adds	r1, r3, #6
    267a:	89c2      	ldrh	r2, [r0, #14]
    267c:	3a05      	subs	r2, #5
    267e:	4291      	cmp	r1, r2
    2680:	dc02      	bgt.n	2688 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2682:	4a15      	ldr	r2, [pc, #84]	; (26d8 <new_line+0x88>)
    2684:	7091      	strb	r1, [r2, #2]
    2686:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2688:	2006      	movs	r0, #6
    268a:	f7ff f82b 	bl	16e4 <gfx_scroll_up>
    268e:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2690:	4b11      	ldr	r3, [pc, #68]	; (26d8 <new_line+0x88>)
    2692:	789b      	ldrb	r3, [r3, #2]
    2694:	f103 010a 	add.w	r1, r3, #10
    2698:	89c2      	ldrh	r2, [r0, #14]
    269a:	3a09      	subs	r2, #9
    269c:	4291      	cmp	r1, r2
    269e:	dc02      	bgt.n	26a6 <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    26a0:	4a0d      	ldr	r2, [pc, #52]	; (26d8 <new_line+0x88>)
    26a2:	7091      	strb	r1, [r2, #2]
    26a4:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    26a6:	200a      	movs	r0, #10
    26a8:	f7ff f81c 	bl	16e4 <gfx_scroll_up>
    26ac:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    26ae:	4b0a      	ldr	r3, [pc, #40]	; (26d8 <new_line+0x88>)
    26b0:	789b      	ldrb	r3, [r3, #2]
    26b2:	f103 0108 	add.w	r1, r3, #8
    26b6:	89c2      	ldrh	r2, [r0, #14]
    26b8:	3a07      	subs	r2, #7
    26ba:	4291      	cmp	r1, r2
    26bc:	dc02      	bgt.n	26c4 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    26be:	4a06      	ldr	r2, [pc, #24]	; (26d8 <new_line+0x88>)
    26c0:	7091      	strb	r1, [r2, #2]
    26c2:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    26c4:	2008      	movs	r0, #8
    26c6:	f7ff f80d 	bl	16e4 <gfx_scroll_up>
    26ca:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    26cc:	210a      	movs	r1, #10
    26ce:	2000      	movs	r0, #0
    26d0:	f000 fcfa 	bl	30c8 <usart_putc>
    26d4:	bd08      	pop	{r3, pc}
    26d6:	bf00      	nop
    26d8:	200006b8 	.word	0x200006b8
    26dc:	20000220 	.word	0x20000220

000026e0 <put_char>:

void put_char(uint8_t c){
    26e0:	b530      	push	{r4, r5, lr}
    26e2:	b083      	sub	sp, #12
	if (console==LOCAL){
    26e4:	4b2e      	ldr	r3, [pc, #184]	; (27a0 <put_char+0xc0>)
    26e6:	781b      	ldrb	r3, [r3, #0]
    26e8:	2b00      	cmp	r3, #0
    26ea:	d153      	bne.n	2794 <put_char+0xb4>
		switch(font){
    26ec:	4b2d      	ldr	r3, [pc, #180]	; (27a4 <put_char+0xc4>)
    26ee:	789b      	ldrb	r3, [r3, #2]
    26f0:	2b01      	cmp	r3, #1
    26f2:	d036      	beq.n	2762 <put_char+0x82>
    26f4:	b1e3      	cbz	r3, 2730 <put_char+0x50>
    26f6:	2b02      	cmp	r3, #2
    26f8:	d150      	bne.n	279c <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    26fa:	f1a0 0320 	sub.w	r3, r0, #32
    26fe:	b2db      	uxtb	r3, r3
    2700:	2b64      	cmp	r3, #100	; 0x64
    2702:	d84b      	bhi.n	279c <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2704:	4c26      	ldr	r4, [pc, #152]	; (27a0 <put_char+0xc0>)
    2706:	78a1      	ldrb	r1, [r4, #2]
    2708:	7865      	ldrb	r5, [r4, #1]
    270a:	3820      	subs	r0, #32
    270c:	4b26      	ldr	r3, [pc, #152]	; (27a8 <put_char+0xc8>)
    270e:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2712:	9300      	str	r3, [sp, #0]
    2714:	2308      	movs	r3, #8
    2716:	2206      	movs	r2, #6
    2718:	4628      	mov	r0, r5
    271a:	f7ff ff4d 	bl	25b8 <draw_char>
				xpos+=CHAR_WIDTH;
    271e:	7863      	ldrb	r3, [r4, #1]
    2720:	3306      	adds	r3, #6
    2722:	b2db      	uxtb	r3, r3
    2724:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2726:	2baf      	cmp	r3, #175	; 0xaf
    2728:	d938      	bls.n	279c <put_char+0xbc>
					new_line();
    272a:	f7ff ff91 	bl	2650 <new_line>
    272e:	e035      	b.n	279c <put_char+0xbc>
			if (c<16){
    2730:	280f      	cmp	r0, #15
    2732:	d833      	bhi.n	279c <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2734:	4c1a      	ldr	r4, [pc, #104]	; (27a0 <put_char+0xc0>)
    2736:	78a1      	ldrb	r1, [r4, #2]
    2738:	7865      	ldrb	r5, [r4, #1]
    273a:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    273e:	4b1b      	ldr	r3, [pc, #108]	; (27ac <put_char+0xcc>)
    2740:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2744:	9300      	str	r3, [sp, #0]
    2746:	2306      	movs	r3, #6
    2748:	2204      	movs	r2, #4
    274a:	4628      	mov	r0, r5
    274c:	f7ff ff34 	bl	25b8 <draw_char>
				xpos+=SHEX_WIDTH;
    2750:	7863      	ldrb	r3, [r4, #1]
    2752:	3304      	adds	r3, #4
    2754:	b2db      	uxtb	r3, r3
    2756:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2758:	2bb1      	cmp	r3, #177	; 0xb1
    275a:	d91f      	bls.n	279c <put_char+0xbc>
					new_line();
    275c:	f7ff ff78 	bl	2650 <new_line>
    2760:	e01c      	b.n	279c <put_char+0xbc>
			if (c<16){
    2762:	280f      	cmp	r0, #15
    2764:	d81a      	bhi.n	279c <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2766:	4c0e      	ldr	r4, [pc, #56]	; (27a0 <put_char+0xc0>)
    2768:	78a1      	ldrb	r1, [r4, #2]
    276a:	7865      	ldrb	r5, [r4, #1]
    276c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2770:	4b0f      	ldr	r3, [pc, #60]	; (27b0 <put_char+0xd0>)
    2772:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2776:	9300      	str	r3, [sp, #0]
    2778:	230a      	movs	r3, #10
    277a:	2208      	movs	r2, #8
    277c:	4628      	mov	r0, r5
    277e:	f7ff ff1b 	bl	25b8 <draw_char>
				xpos+=LHEX_WIDTH;
    2782:	7863      	ldrb	r3, [r4, #1]
    2784:	3308      	adds	r3, #8
    2786:	b2db      	uxtb	r3, r3
    2788:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    278a:	2bad      	cmp	r3, #173	; 0xad
    278c:	d906      	bls.n	279c <put_char+0xbc>
					new_line();
    278e:	f7ff ff5f 	bl	2650 <new_line>
    2792:	e003      	b.n	279c <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2794:	4601      	mov	r1, r0
    2796:	2000      	movs	r0, #0
    2798:	f000 fc96 	bl	30c8 <usart_putc>
	}
}
    279c:	b003      	add	sp, #12
    279e:	bd30      	pop	{r4, r5, pc}
    27a0:	200006b8 	.word	0x200006b8
    27a4:	20000220 	.word	0x20000220
    27a8:	00003218 	.word	0x00003218
    27ac:	000035e0 	.word	0x000035e0
    27b0:	00003540 	.word	0x00003540

000027b4 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    27b4:	4b01      	ldr	r3, [pc, #4]	; (27bc <set_cursor+0x8>)
    27b6:	7058      	strb	r0, [r3, #1]
	ypos=y;
    27b8:	7099      	strb	r1, [r3, #2]
    27ba:	4770      	bx	lr
    27bc:	200006b8 	.word	0x200006b8

000027c0 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    27c0:	4b03      	ldr	r3, [pc, #12]	; (27d0 <get_cursor+0x10>)
    27c2:	785a      	ldrb	r2, [r3, #1]
    27c4:	7898      	ldrb	r0, [r3, #2]
    27c6:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    27ca:	b280      	uxth	r0, r0
    27cc:	4770      	bx	lr
    27ce:	bf00      	nop
    27d0:	200006b8 	.word	0x200006b8

000027d4 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    27d4:	4b0f      	ldr	r3, [pc, #60]	; (2814 <cursor_left+0x40>)
    27d6:	789b      	ldrb	r3, [r3, #2]
    27d8:	2b01      	cmp	r3, #1
    27da:	d00b      	beq.n	27f4 <cursor_left+0x20>
    27dc:	b113      	cbz	r3, 27e4 <cursor_left+0x10>
    27de:	2b02      	cmp	r3, #2
    27e0:	d010      	beq.n	2804 <cursor_left+0x30>
    27e2:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    27e4:	4b0c      	ldr	r3, [pc, #48]	; (2818 <cursor_left+0x44>)
    27e6:	785b      	ldrb	r3, [r3, #1]
    27e8:	2b04      	cmp	r3, #4
    27ea:	d412      	bmi.n	2812 <cursor_left+0x3e>
    27ec:	3b04      	subs	r3, #4
    27ee:	4a0a      	ldr	r2, [pc, #40]	; (2818 <cursor_left+0x44>)
    27f0:	7053      	strb	r3, [r2, #1]
    27f2:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    27f4:	4b08      	ldr	r3, [pc, #32]	; (2818 <cursor_left+0x44>)
    27f6:	785b      	ldrb	r3, [r3, #1]
    27f8:	2b08      	cmp	r3, #8
    27fa:	d40a      	bmi.n	2812 <cursor_left+0x3e>
    27fc:	3b08      	subs	r3, #8
    27fe:	4a06      	ldr	r2, [pc, #24]	; (2818 <cursor_left+0x44>)
    2800:	7053      	strb	r3, [r2, #1]
    2802:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2804:	4b04      	ldr	r3, [pc, #16]	; (2818 <cursor_left+0x44>)
    2806:	785b      	ldrb	r3, [r3, #1]
    2808:	2b06      	cmp	r3, #6
    280a:	d402      	bmi.n	2812 <cursor_left+0x3e>
    280c:	3b06      	subs	r3, #6
    280e:	4a02      	ldr	r2, [pc, #8]	; (2818 <cursor_left+0x44>)
    2810:	7053      	strb	r3, [r2, #1]
    2812:	4770      	bx	lr
    2814:	20000220 	.word	0x20000220
    2818:	200006b8 	.word	0x200006b8

0000281c <print>:
void print(const char* str){
    281c:	b510      	push	{r4, lr}
    281e:	4604      	mov	r4, r0
    while ((c=*str++)){
    2820:	e001      	b.n	2826 <print+0xa>
            new_line();
    2822:	f7ff ff15 	bl	2650 <new_line>
    while ((c=*str++)){
    2826:	f814 0b01 	ldrb.w	r0, [r4], #1
    282a:	b158      	cbz	r0, 2844 <print+0x28>
        switch(c){
    282c:	280a      	cmp	r0, #10
    282e:	d0f8      	beq.n	2822 <print+0x6>
    2830:	280d      	cmp	r0, #13
    2832:	d0f6      	beq.n	2822 <print+0x6>
    2834:	2808      	cmp	r0, #8
    2836:	d002      	beq.n	283e <print+0x22>
            put_char(c);
    2838:	f7ff ff52 	bl	26e0 <put_char>
    283c:	e7f3      	b.n	2826 <print+0xa>
            cursor_left();    
    283e:	f7ff ffc9 	bl	27d4 <cursor_left>
            break;
    2842:	e7f0      	b.n	2826 <print+0xa>
}
    2844:	bd10      	pop	{r4, pc}

00002846 <println>:
void println(const char *text){
    2846:	b508      	push	{r3, lr}
	print(text);
    2848:	f7ff ffe8 	bl	281c <print>
	new_line();
    284c:	f7ff ff00 	bl	2650 <new_line>
    2850:	bd08      	pop	{r3, pc}

00002852 <print_int>:
void print_int(int i,uint8_t base){
    2852:	b530      	push	{r4, r5, lr}
    2854:	b085      	sub	sp, #20
    fmt[15]=0;
    2856:	2300      	movs	r3, #0
    2858:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    285c:	2320      	movs	r3, #32
    285e:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2862:	1e02      	subs	r2, r0, #0
        i=-i;
    2864:	bfba      	itte	lt
    2866:	4252      	neglt	r2, r2
        sign=1;
    2868:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    286a:	2500      	movge	r5, #0
    while (idx>1 && i){
    286c:	b1aa      	cbz	r2, 289a <print_int+0x48>
    286e:	f10d 040e 	add.w	r4, sp, #14
    2872:	200e      	movs	r0, #14
        d=i%base;
    2874:	fb92 f3f1 	sdiv	r3, r2, r1
    2878:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    287c:	2b09      	cmp	r3, #9
    287e:	bfc8      	it	gt
    2880:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2882:	3801      	subs	r0, #1
    2884:	3330      	adds	r3, #48	; 0x30
    2886:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    288a:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    288e:	2801      	cmp	r0, #1
    2890:	d007      	beq.n	28a2 <print_int+0x50>
    2892:	2a00      	cmp	r2, #0
    2894:	d1ee      	bne.n	2874 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2896:	280e      	cmp	r0, #14
    2898:	d103      	bne.n	28a2 <print_int+0x50>
    289a:	2330      	movs	r3, #48	; 0x30
    289c:	f88d 300d 	strb.w	r3, [sp, #13]
    28a0:	200d      	movs	r0, #13
    if (base==10 && sign){
    28a2:	290a      	cmp	r1, #10
    28a4:	d006      	beq.n	28b4 <print_int+0x62>
    }else if (base==16){
    28a6:	2910      	cmp	r1, #16
    28a8:	d00d      	beq.n	28c6 <print_int+0x74>
    print(&fmt[idx]);
    28aa:	4468      	add	r0, sp
    28ac:	f7ff ffb6 	bl	281c <print>
}
    28b0:	b005      	add	sp, #20
    28b2:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    28b4:	2d00      	cmp	r5, #0
    28b6:	d0f8      	beq.n	28aa <print_int+0x58>
        fmt[--idx]='-';
    28b8:	3801      	subs	r0, #1
    28ba:	ab04      	add	r3, sp, #16
    28bc:	4403      	add	r3, r0
    28be:	222d      	movs	r2, #45	; 0x2d
    28c0:	f803 2c10 	strb.w	r2, [r3, #-16]
    28c4:	e7f1      	b.n	28aa <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    28c6:	f010 0f01 	tst.w	r0, #1
    28ca:	d005      	beq.n	28d8 <print_int+0x86>
    28cc:	3801      	subs	r0, #1
    28ce:	ab04      	add	r3, sp, #16
    28d0:	4403      	add	r3, r0
    28d2:	2230      	movs	r2, #48	; 0x30
    28d4:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    28d8:	3801      	subs	r0, #1
    28da:	ab04      	add	r3, sp, #16
    28dc:	4403      	add	r3, r0
    28de:	2224      	movs	r2, #36	; 0x24
    28e0:	f803 2c10 	strb.w	r2, [r3, #-16]
    28e4:	e7e1      	b.n	28aa <print_int+0x58>

000028e6 <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    28e6:	b508      	push	{r3, lr}
	print("press button");
    28e8:	4801      	ldr	r0, [pc, #4]	; (28f0 <prompt_btn+0xa>)
    28ea:	f7ff ff97 	bl	281c <print>
    28ee:	bd08      	pop	{r3, pc}
    28f0:	00003884 	.word	0x00003884

000028f4 <clear_screen>:
}

void clear_screen(){
    28f4:	b508      	push	{r3, lr}
	if (console==LOCAL){
    28f6:	4b07      	ldr	r3, [pc, #28]	; (2914 <clear_screen+0x20>)
    28f8:	781b      	ldrb	r3, [r3, #0]
    28fa:	b123      	cbz	r3, 2906 <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    28fc:	210c      	movs	r1, #12
    28fe:	2000      	movs	r0, #0
    2900:	f000 fbe2 	bl	30c8 <usart_putc>
    2904:	bd08      	pop	{r3, pc}
		gfx_cls();
    2906:	f7fe fed9 	bl	16bc <gfx_cls>
		xpos=0;
    290a:	4b02      	ldr	r3, [pc, #8]	; (2914 <clear_screen+0x20>)
    290c:	2200      	movs	r2, #0
    290e:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2910:	709a      	strb	r2, [r3, #2]
    2912:	bd08      	pop	{r3, pc}
    2914:	200006b8 	.word	0x200006b8

00002918 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2918:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x,y;
	uint8_t color=show?15:0;
    291a:	2800      	cmp	r0, #0
    291c:	bf14      	ite	ne
    291e:	260f      	movne	r6, #15
    2920:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2922:	4b0a      	ldr	r3, [pc, #40]	; (294c <show_cursor+0x34>)
    2924:	785c      	ldrb	r4, [r3, #1]
    2926:	1da3      	adds	r3, r4, #6
    2928:	429c      	cmp	r4, r3
    292a:	da0d      	bge.n	2948 <show_cursor+0x30>
			gfx_blit(x,ypos+CHAR_HEIGHT-1,color,BIT_SET);
    292c:	4d07      	ldr	r5, [pc, #28]	; (294c <show_cursor+0x34>)
    292e:	2704      	movs	r7, #4
    2930:	78a9      	ldrb	r1, [r5, #2]
    2932:	463b      	mov	r3, r7
    2934:	4632      	mov	r2, r6
    2936:	3107      	adds	r1, #7
    2938:	4620      	mov	r0, r4
    293a:	f7fe fe73 	bl	1624 <gfx_blit>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    293e:	3401      	adds	r4, #1
    2940:	786b      	ldrb	r3, [r5, #1]
    2942:	3306      	adds	r3, #6
    2944:	42a3      	cmp	r3, r4
    2946:	dcf3      	bgt.n	2930 <show_cursor+0x18>
    2948:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    294a:	bf00      	nop
    294c:	200006b8 	.word	0x200006b8

00002950 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2950:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2954:	f000 fa4a 	bl	2dec <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2958:	4b0c      	ldr	r3, [pc, #48]	; (298c <clear_line+0x3c>)
    295a:	789c      	ldrb	r4, [r3, #2]
    295c:	f104 0308 	add.w	r3, r4, #8
    2960:	429c      	cmp	r4, r3
    2962:	da10      	bge.n	2986 <clear_line+0x36>
    2964:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2966:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2990 <clear_line+0x40>
    296a:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    296c:	4e07      	ldr	r6, [pc, #28]	; (298c <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    296e:	7a28      	ldrb	r0, [r5, #8]
    2970:	463a      	mov	r2, r7
    2972:	4601      	mov	r1, r0
    2974:	fb04 8000 	mla	r0, r4, r0, r8
    2978:	f7fe fd6b 	bl	1452 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    297c:	3401      	adds	r4, #1
    297e:	78b3      	ldrb	r3, [r6, #2]
    2980:	3308      	adds	r3, #8
    2982:	42a3      	cmp	r3, r4
    2984:	dcf3      	bgt.n	296e <clear_line+0x1e>
    2986:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    298a:	bf00      	nop
    298c:	200006b8 	.word	0x200006b8
    2990:	20002730 	.word	0x20002730

00002994 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    2994:	4b01      	ldr	r3, [pc, #4]	; (299c <select_console+0x8>)
    2996:	7018      	strb	r0, [r3, #0]
    2998:	4770      	bx	lr
    299a:	bf00      	nop
    299c:	200006b8 	.word	0x200006b8

000029a0 <get_char>:
}

//read a character from serial port
char get_char(){
    29a0:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    29a2:	2400      	movs	r4, #0
    29a4:	4620      	mov	r0, r4
    29a6:	f000 fb5d 	bl	3064 <usart_getc>
    29aa:	2800      	cmp	r0, #0
    29ac:	d0fa      	beq.n	29a4 <get_char+0x4>
	return c;
}
    29ae:	bd10      	pop	{r4, pc}

000029b0 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    29b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    29b4:	4c34      	ldr	r4, [pc, #208]	; (2a88 <tvout_init+0xd8>)
    29b6:	4b35      	ldr	r3, [pc, #212]	; (2a8c <tvout_init+0xdc>)
    29b8:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    29ba:	4a35      	ldr	r2, [pc, #212]	; (2a90 <tvout_init+0xe0>)
    29bc:	4b35      	ldr	r3, [pc, #212]	; (2a94 <tvout_init+0xe4>)
    29be:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    29c0:	220a      	movs	r2, #10
    29c2:	2108      	movs	r1, #8
    29c4:	4620      	mov	r0, r4
    29c6:	f7fe fded 	bl	15a4 <config_pin>
    PORTA->ODR=0;
    29ca:	2500      	movs	r5, #0
    29cc:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    29ce:	4e32      	ldr	r6, [pc, #200]	; (2a98 <tvout_init+0xe8>)
    29d0:	69b3      	ldr	r3, [r6, #24]
    29d2:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    29d6:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    29d8:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    29dc:	f04f 0878 	mov.w	r8, #120	; 0x78
    29e0:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    29e4:	2301      	movs	r3, #1
    29e6:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    29e8:	2784      	movs	r7, #132	; 0x84
    29ea:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    29ec:	f241 13c5 	movw	r3, #4549	; 0x11c5
    29f0:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    29f2:	f44f 73a8 	mov.w	r3, #336	; 0x150
    29f6:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    29f8:	f240 1365 	movw	r3, #357	; 0x165
    29fc:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    29fe:	6963      	ldr	r3, [r4, #20]
    2a00:	f043 0301 	orr.w	r3, r3, #1
    2a04:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2a06:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2a0a:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2a0c:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2a0e:	68e3      	ldr	r3, [r4, #12]
    2a10:	f043 0301 	orr.w	r3, r3, #1
    2a14:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2a16:	4629      	mov	r1, r5
    2a18:	2019      	movs	r0, #25
    2a1a:	f7ff f863 	bl	1ae4 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2a1e:	4629      	mov	r1, r5
    2a20:	201b      	movs	r0, #27
    2a22:	f7ff f85f 	bl	1ae4 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2a26:	2019      	movs	r0, #25
    2a28:	f7fe fffc 	bl	1a24 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2a2c:	201b      	movs	r0, #27
    2a2e:	f7fe fff9 	bl	1a24 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2a32:	6823      	ldr	r3, [r4, #0]
    2a34:	f043 0301 	orr.w	r3, r3, #1
    2a38:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2a3a:	220a      	movs	r2, #10
    2a3c:	4629      	mov	r1, r5
    2a3e:	4817      	ldr	r0, [pc, #92]	; (2a9c <tvout_init+0xec>)
    2a40:	f7fe fdb0 	bl	15a4 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2a44:	69f3      	ldr	r3, [r6, #28]
    2a46:	f043 0302 	orr.w	r3, r3, #2
    2a4a:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2a4c:	4b14      	ldr	r3, [pc, #80]	; (2aa0 <tvout_init+0xf0>)
    2a4e:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2a52:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2a54:	2213      	movs	r2, #19
    2a56:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2a58:	220a      	movs	r2, #10
    2a5a:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2a5c:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2a5e:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2a62:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2a64:	695a      	ldr	r2, [r3, #20]
    2a66:	f042 0201 	orr.w	r2, r2, #1
    2a6a:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2a6c:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN;
    2a6e:	681a      	ldr	r2, [r3, #0]
    2a70:	f042 0201 	orr.w	r2, r2, #1
    2a74:	601a      	str	r2, [r3, #0]
    flags|=F_EVEN;
    2a76:	4a0b      	ldr	r2, [pc, #44]	; (2aa4 <tvout_init+0xf4>)
    2a78:	8813      	ldrh	r3, [r2, #0]
    2a7a:	b29b      	uxth	r3, r3
    2a7c:	f043 0301 	orr.w	r3, r3, #1
    2a80:	8013      	strh	r3, [r2, #0]
    scan_line=0; 
    2a82:	8055      	strh	r5, [r2, #2]
    2a84:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2a88:	40010800 	.word	0x40010800
    2a8c:	88883333 	.word	0x88883333
    2a90:	84484444 	.word	0x84484444
    2a94:	40010804 	.word	0x40010804
    2a98:	40021000 	.word	0x40021000
    2a9c:	40010c00 	.word	0x40010c00
    2aa0:	40000400 	.word	0x40000400
    2aa4:	200006bc 	.word	0x200006bc

00002aa8 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2aa8:	4668      	mov	r0, sp
    2aaa:	f020 0107 	bic.w	r1, r0, #7
    2aae:	468d      	mov	sp, r1
    2ab0:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    2ab2:	4a2f      	ldr	r2, [pc, #188]	; (2b70 <TV_OUT_handler+0xc8>)
    2ab4:	6a13      	ldr	r3, [r2, #32]
    2ab6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2aba:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    2abc:	492d      	ldr	r1, [pc, #180]	; (2b74 <TV_OUT_handler+0xcc>)
    2abe:	f240 2209 	movw	r2, #521	; 0x209
    2ac2:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    2ac4:	4293      	cmp	r3, r2
    2ac6:	d9fc      	bls.n	2ac2 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    2ac8:	4a29      	ldr	r2, [pc, #164]	; (2b70 <TV_OUT_handler+0xc8>)
    2aca:	6a13      	ldr	r3, [r2, #32]
    2acc:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2ad0:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    2ad2:	4b29      	ldr	r3, [pc, #164]	; (2b78 <TV_OUT_handler+0xd0>)
    2ad4:	889d      	ldrh	r5, [r3, #4]
    2ad6:	b2ad      	uxth	r5, r5
    2ad8:	4b28      	ldr	r3, [pc, #160]	; (2b7c <TV_OUT_handler+0xd4>)
    2ada:	7818      	ldrb	r0, [r3, #0]
    2adc:	785a      	ldrb	r2, [r3, #1]
    2ade:	fb95 f5f2 	sdiv	r5, r5, r2
    2ae2:	4a27      	ldr	r2, [pc, #156]	; (2b80 <TV_OUT_handler+0xd8>)
    2ae4:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    2ae8:	8859      	ldrh	r1, [r3, #2]
    2aea:	4a22      	ldr	r2, [pc, #136]	; (2b74 <TV_OUT_handler+0xcc>)
    2aec:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2aee:	428b      	cmp	r3, r1
    2af0:	d3fc      	bcc.n	2aec <TV_OUT_handler+0x44>
    _jitter_cancel();
    2af2:	4b24      	ldr	r3, [pc, #144]	; (2b84 <TV_OUT_handler+0xdc>)
    2af4:	461a      	mov	r2, r3
    2af6:	6812      	ldr	r2, [r2, #0]
    2af8:	f002 0207 	and.w	r2, r2, #7
    2afc:	ea4f 0242 	mov.w	r2, r2, lsl #1
    2b00:	4497      	add	pc, r2
    2b02:	bf00      	nop
    2b04:	bf00      	nop
    2b06:	bf00      	nop
    2b08:	bf00      	nop
    2b0a:	bf00      	nop
    2b0c:	bf00      	nop
    2b0e:	bf00      	nop
    2b10:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    2b12:	4a17      	ldr	r2, [pc, #92]	; (2b70 <TV_OUT_handler+0xc8>)
    2b14:	6a13      	ldr	r3, [r2, #32]
    2b16:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2b1a:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    2b1c:	b1b0      	cbz	r0, 2b4c <TV_OUT_handler+0xa4>
    2b1e:	462b      	mov	r3, r5
        _pixel_delay(pixel_delay);
    2b20:	4916      	ldr	r1, [pc, #88]	; (2b7c <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    2b22:	4819      	ldr	r0, [pc, #100]	; (2b88 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    2b24:	790c      	ldrb	r4, [r1, #4]
    2b26:	4622      	mov	r2, r4
    2b28:	3a01      	subs	r2, #1
    2b2a:	d1fd      	bne.n	2b28 <TV_OUT_handler+0x80>
        *video_port=(*video_data)>>4;
    2b2c:	781a      	ldrb	r2, [r3, #0]
    2b2e:	0912      	lsrs	r2, r2, #4
    2b30:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    2b32:	790c      	ldrb	r4, [r1, #4]
    2b34:	4622      	mov	r2, r4
    2b36:	3a01      	subs	r2, #1
    2b38:	d1fd      	bne.n	2b36 <TV_OUT_handler+0x8e>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    2b3a:	f813 2b01 	ldrb.w	r2, [r3], #1
    2b3e:	f002 020f 	and.w	r2, r2, #15
    2b42:	8002      	strh	r2, [r0, #0]
    for (i=0;i<byte_per_row;i++){
    2b44:	1b5c      	subs	r4, r3, r5
    2b46:	780a      	ldrb	r2, [r1, #0]
    2b48:	4294      	cmp	r4, r2
    2b4a:	d3eb      	bcc.n	2b24 <TV_OUT_handler+0x7c>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
    }
    PORTA->ODR=0;
    2b4c:	2200      	movs	r2, #0
    2b4e:	4b0f      	ldr	r3, [pc, #60]	; (2b8c <TV_OUT_handler+0xe4>)
    2b50:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    2b52:	4a07      	ldr	r2, [pc, #28]	; (2b70 <TV_OUT_handler+0xc8>)
    2b54:	6a13      	ldr	r3, [r2, #32]
    2b56:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2b5a:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    2b5c:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    2b60:	6913      	ldr	r3, [r2, #16]
    2b62:	f023 0304 	bic.w	r3, r3, #4
    2b66:	6113      	str	r3, [r2, #16]
}
    2b68:	bc31      	pop	{r0, r4, r5}
    2b6a:	4685      	mov	sp, r0
    2b6c:	4770      	bx	lr
    2b6e:	bf00      	nop
    2b70:	40000400 	.word	0x40000400
    2b74:	40012c00 	.word	0x40012c00
    2b78:	200006bc 	.word	0x200006bc
    2b7c:	20000224 	.word	0x20000224
    2b80:	20002730 	.word	0x20002730
    2b84:	40012c24 	.word	0x40012c24
    2b88:	4001080c 	.word	0x4001080c
    2b8c:	40010800 	.word	0x40010800

00002b90 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    2b90:	4668      	mov	r0, sp
    2b92:	f020 0107 	bic.w	r1, r0, #7
    2b96:	468d      	mov	sp, r1
    2b98:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    2b9a:	4a71      	ldr	r2, [pc, #452]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2b9c:	8853      	ldrh	r3, [r2, #2]
    2b9e:	3301      	adds	r3, #1
    2ba0:	b21b      	sxth	r3, r3
    2ba2:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    2ba4:	496f      	ldr	r1, [pc, #444]	; (2d64 <TV_SYNC_handler+0x1d4>)
    2ba6:	680b      	ldr	r3, [r1, #0]
    2ba8:	3301      	adds	r3, #1
    2baa:	600b      	str	r3, [r1, #0]
    switch (task){
    2bac:	88d3      	ldrh	r3, [r2, #6]
    2bae:	b29b      	uxth	r3, r3
    2bb0:	2b06      	cmp	r3, #6
    2bb2:	d849      	bhi.n	2c48 <TV_SYNC_handler+0xb8>
    2bb4:	e8df f013 	tbh	[pc, r3, lsl #1]
    2bb8:	00410007 	.word	0x00410007
    2bbc:	00660051 	.word	0x00660051
    2bc0:	00920075 	.word	0x00920075
    2bc4:	00ae      	.short	0x00ae
    case VSYNC:
        switch(scan_line){
    2bc6:	4b66      	ldr	r3, [pc, #408]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2bc8:	885b      	ldrh	r3, [r3, #2]
    2bca:	b21b      	sxth	r3, r3
    2bcc:	3b01      	subs	r3, #1
    2bce:	2b12      	cmp	r3, #18
    2bd0:	d83a      	bhi.n	2c48 <TV_SYNC_handler+0xb8>
    2bd2:	e8df f003 	tbb	[pc, r3]
    2bd6:	390a      	.short	0x390a
    2bd8:	39393939 	.word	0x39393939
    2bdc:	39393911 	.word	0x39393911
    2be0:	39163939 	.word	0x39163939
    2be4:	1a393939 	.word	0x1a393939
    2be8:	1f          	.byte	0x1f
    2be9:	00          	.byte	0x00
        case 1:
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
    2bea:	4b5f      	ldr	r3, [pc, #380]	; (2d68 <TV_SYNC_handler+0x1d8>)
    2bec:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2bf0:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    2bf2:	22a4      	movs	r2, #164	; 0xa4
    2bf4:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    2bf6:	e027      	b.n	2c48 <TV_SYNC_handler+0xb8>
        case 7:
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
    2bf8:	f240 7294 	movw	r2, #1940	; 0x794
    2bfc:	4b5a      	ldr	r3, [pc, #360]	; (2d68 <TV_SYNC_handler+0x1d8>)
    2bfe:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    2c00:	e022      	b.n	2c48 <TV_SYNC_handler+0xb8>
        case 13:
            // set post-sync pulse    
            TMR1->CCR1=SERRATION;
    2c02:	22a4      	movs	r2, #164	; 0xa4
    2c04:	4b58      	ldr	r3, [pc, #352]	; (2d68 <TV_SYNC_handler+0x1d8>)
    2c06:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    2c08:	e01e      	b.n	2c48 <TV_SYNC_handler+0xb8>
        case 18:
            if (!(flags&F_EVEN)){
    2c0a:	4b55      	ldr	r3, [pc, #340]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2c0c:	881b      	ldrh	r3, [r3, #0]
    2c0e:	f013 0f01 	tst.w	r3, #1
    2c12:	d119      	bne.n	2c48 <TV_SYNC_handler+0xb8>
sync_end:                
                TMR1->ARR=HPERIOD;
    2c14:	4b54      	ldr	r3, [pc, #336]	; (2d68 <TV_SYNC_handler+0x1d8>)
    2c16:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2c1a:	62da      	str	r2, [r3, #44]	; 0x2c
                TMR1->CCR1=HPULSE;
    2c1c:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2c20:	635a      	str	r2, [r3, #52]	; 0x34
                flags&=~F_VSYNC;
    2c22:	4a4f      	ldr	r2, [pc, #316]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2c24:	8813      	ldrh	r3, [r2, #0]
    2c26:	f023 0302 	bic.w	r3, r3, #2
    2c2a:	041b      	lsls	r3, r3, #16
    2c2c:	0c1b      	lsrs	r3, r3, #16
    2c2e:	8013      	strh	r3, [r2, #0]
                task++;
    2c30:	88d3      	ldrh	r3, [r2, #6]
    2c32:	3301      	adds	r3, #1
    2c34:	b29b      	uxth	r3, r3
    2c36:	80d3      	strh	r3, [r2, #6]
    2c38:	e006      	b.n	2c48 <TV_SYNC_handler+0xb8>
            goto sync_end;
            break;
        }//switch(scan_line)
        break;
    case READ_PAD:
        read_gamepad();
    2c3a:	f7fe fa95 	bl	1168 <read_gamepad>
        task++;
    2c3e:	4a48      	ldr	r2, [pc, #288]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2c40:	88d3      	ldrh	r3, [r2, #6]
    2c42:	3301      	adds	r3, #1
    2c44:	b29b      	uxth	r3, r3
    2c46:	80d3      	strh	r3, [r2, #6]
                scan_line=0;
            }
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    2c48:	4a47      	ldr	r2, [pc, #284]	; (2d68 <TV_SYNC_handler+0x1d8>)
    2c4a:	6913      	ldr	r3, [r2, #16]
    2c4c:	f023 0301 	bic.w	r3, r3, #1
    2c50:	6113      	str	r3, [r2, #16]
}
    2c52:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    2c56:	4685      	mov	sp, r0
    2c58:	4770      	bx	lr
        if (sound_timer){
    2c5a:	4b44      	ldr	r3, [pc, #272]	; (2d6c <TV_SYNC_handler+0x1dc>)
    2c5c:	881b      	ldrh	r3, [r3, #0]
    2c5e:	b29b      	uxth	r3, r3
    2c60:	b13b      	cbz	r3, 2c72 <TV_SYNC_handler+0xe2>
            sound_timer--;
    2c62:	4a42      	ldr	r2, [pc, #264]	; (2d6c <TV_SYNC_handler+0x1dc>)
    2c64:	8813      	ldrh	r3, [r2, #0]
    2c66:	3b01      	subs	r3, #1
    2c68:	b29b      	uxth	r3, r3
    2c6a:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    2c6c:	8813      	ldrh	r3, [r2, #0]
    2c6e:	b29b      	uxth	r3, r3
    2c70:	b12b      	cbz	r3, 2c7e <TV_SYNC_handler+0xee>
        task++;
    2c72:	4a3b      	ldr	r2, [pc, #236]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2c74:	88d3      	ldrh	r3, [r2, #6]
    2c76:	3301      	adds	r3, #1
    2c78:	b29b      	uxth	r3, r3
    2c7a:	80d3      	strh	r3, [r2, #6]
        break;    
    2c7c:	e7e4      	b.n	2c48 <TV_SYNC_handler+0xb8>
                sound_stop();
    2c7e:	f7ff fb3e 	bl	22fe <sound_stop>
    2c82:	e7f6      	b.n	2c72 <TV_SYNC_handler+0xe2>
        if (game_timer){
    2c84:	4b3a      	ldr	r3, [pc, #232]	; (2d70 <TV_SYNC_handler+0x1e0>)
    2c86:	881b      	ldrh	r3, [r3, #0]
    2c88:	b29b      	uxth	r3, r3
    2c8a:	b123      	cbz	r3, 2c96 <TV_SYNC_handler+0x106>
            game_timer--;
    2c8c:	4a38      	ldr	r2, [pc, #224]	; (2d70 <TV_SYNC_handler+0x1e0>)
    2c8e:	8813      	ldrh	r3, [r2, #0]
    2c90:	3b01      	subs	r3, #1
    2c92:	b29b      	uxth	r3, r3
    2c94:	8013      	strh	r3, [r2, #0]
        task++;
    2c96:	4a32      	ldr	r2, [pc, #200]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2c98:	88d3      	ldrh	r3, [r2, #6]
    2c9a:	3301      	adds	r3, #1
    2c9c:	b29b      	uxth	r3, r3
    2c9e:	80d3      	strh	r3, [r2, #6]
        break;
    2ca0:	e7d2      	b.n	2c48 <TV_SYNC_handler+0xb8>
        if (scan_line==video_start){
    2ca2:	4b2f      	ldr	r3, [pc, #188]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2ca4:	885b      	ldrh	r3, [r3, #2]
    2ca6:	b21b      	sxth	r3, r3
    2ca8:	4a32      	ldr	r2, [pc, #200]	; (2d74 <TV_SYNC_handler+0x1e4>)
    2caa:	88d2      	ldrh	r2, [r2, #6]
    2cac:	4293      	cmp	r3, r2
    2cae:	d1cb      	bne.n	2c48 <TV_SYNC_handler+0xb8>
            TMR1->SR&=~TMR_SR_CC2IF;
    2cb0:	4b2d      	ldr	r3, [pc, #180]	; (2d68 <TV_SYNC_handler+0x1d8>)
    2cb2:	691a      	ldr	r2, [r3, #16]
    2cb4:	f022 0204 	bic.w	r2, r2, #4
    2cb8:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    2cba:	68da      	ldr	r2, [r3, #12]
    2cbc:	f042 0204 	orr.w	r2, r2, #4
    2cc0:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    2cc2:	4b27      	ldr	r3, [pc, #156]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2cc4:	881a      	ldrh	r2, [r3, #0]
    2cc6:	b292      	uxth	r2, r2
    2cc8:	f042 0204 	orr.w	r2, r2, #4
    2ccc:	801a      	strh	r2, [r3, #0]
            task++;
    2cce:	88da      	ldrh	r2, [r3, #6]
    2cd0:	3201      	adds	r2, #1
    2cd2:	b292      	uxth	r2, r2
    2cd4:	80da      	strh	r2, [r3, #6]
            slice=0;
    2cd6:	2200      	movs	r2, #0
    2cd8:	809a      	strh	r2, [r3, #4]
    2cda:	e7b5      	b.n	2c48 <TV_SYNC_handler+0xb8>
        slice++;
    2cdc:	4a20      	ldr	r2, [pc, #128]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2cde:	8893      	ldrh	r3, [r2, #4]
    2ce0:	3301      	adds	r3, #1
    2ce2:	b29b      	uxth	r3, r3
    2ce4:	8093      	strh	r3, [r2, #4]
        if (scan_line==video_end){
    2ce6:	8853      	ldrh	r3, [r2, #2]
    2ce8:	b21b      	sxth	r3, r3
    2cea:	4a22      	ldr	r2, [pc, #136]	; (2d74 <TV_SYNC_handler+0x1e4>)
    2cec:	8912      	ldrh	r2, [r2, #8]
    2cee:	4293      	cmp	r3, r2
    2cf0:	d1aa      	bne.n	2c48 <TV_SYNC_handler+0xb8>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    2cf2:	4a1d      	ldr	r2, [pc, #116]	; (2d68 <TV_SYNC_handler+0x1d8>)
    2cf4:	68d3      	ldr	r3, [r2, #12]
    2cf6:	f023 0304 	bic.w	r3, r3, #4
    2cfa:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    2cfc:	4a18      	ldr	r2, [pc, #96]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2cfe:	8813      	ldrh	r3, [r2, #0]
    2d00:	f023 0304 	bic.w	r3, r3, #4
    2d04:	041b      	lsls	r3, r3, #16
    2d06:	0c1b      	lsrs	r3, r3, #16
    2d08:	8013      	strh	r3, [r2, #0]
            task++;
    2d0a:	88d3      	ldrh	r3, [r2, #6]
    2d0c:	3301      	adds	r3, #1
    2d0e:	b29b      	uxth	r3, r3
    2d10:	80d3      	strh	r3, [r2, #6]
    2d12:	e799      	b.n	2c48 <TV_SYNC_handler+0xb8>
        if (scan_line==271 && !(flags&F_EVEN)){
    2d14:	4b12      	ldr	r3, [pc, #72]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2d16:	885b      	ldrh	r3, [r3, #2]
    2d18:	b21b      	sxth	r3, r3
    2d1a:	f240 120f 	movw	r2, #271	; 0x10f
    2d1e:	4293      	cmp	r3, r2
    2d20:	d018      	beq.n	2d54 <TV_SYNC_handler+0x1c4>
            if (scan_line==272){
    2d22:	4b0f      	ldr	r3, [pc, #60]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2d24:	885b      	ldrh	r3, [r3, #2]
    2d26:	b21b      	sxth	r3, r3
    2d28:	f5b3 7f88 	cmp.w	r3, #272	; 0x110
    2d2c:	d18c      	bne.n	2c48 <TV_SYNC_handler+0xb8>
                TMR1->ARR=SYNC_LINE;
    2d2e:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2d32:	4b0d      	ldr	r3, [pc, #52]	; (2d68 <TV_SYNC_handler+0x1d8>)
    2d34:	62da      	str	r2, [r3, #44]	; 0x2c
                flags^=F_EVEN;
    2d36:	4b0a      	ldr	r3, [pc, #40]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2d38:	881a      	ldrh	r2, [r3, #0]
    2d3a:	b292      	uxth	r2, r2
    2d3c:	f082 0201 	eor.w	r2, r2, #1
    2d40:	801a      	strh	r2, [r3, #0]
                flags|=F_VSYNC;
    2d42:	881a      	ldrh	r2, [r3, #0]
    2d44:	b292      	uxth	r2, r2
    2d46:	f042 0202 	orr.w	r2, r2, #2
    2d4a:	801a      	strh	r2, [r3, #0]
                task=VSYNC;
    2d4c:	2200      	movs	r2, #0
    2d4e:	80da      	strh	r2, [r3, #6]
                scan_line=0;
    2d50:	805a      	strh	r2, [r3, #2]
    2d52:	e779      	b.n	2c48 <TV_SYNC_handler+0xb8>
        if (scan_line==271 && !(flags&F_EVEN)){
    2d54:	4b02      	ldr	r3, [pc, #8]	; (2d60 <TV_SYNC_handler+0x1d0>)
    2d56:	881b      	ldrh	r3, [r3, #0]
    2d58:	f013 0f01 	tst.w	r3, #1
    2d5c:	d0eb      	beq.n	2d36 <TV_SYNC_handler+0x1a6>
    2d5e:	e7e0      	b.n	2d22 <TV_SYNC_handler+0x192>
    2d60:	200006bc 	.word	0x200006bc
    2d64:	20004e94 	.word	0x20004e94
    2d68:	40012c00 	.word	0x40012c00
    2d6c:	20004e98 	.word	0x20004e98
    2d70:	20004e90 	.word	0x20004e90
    2d74:	20000224 	.word	0x20000224

00002d78 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    2d78:	4a02      	ldr	r2, [pc, #8]	; (2d84 <frame_sync+0xc>)
    2d7a:	8813      	ldrh	r3, [r2, #0]
    2d7c:	f013 0f02 	tst.w	r3, #2
    2d80:	d0fb      	beq.n	2d7a <frame_sync+0x2>
}
    2d82:	4770      	bx	lr
    2d84:	200006bc 	.word	0x200006bc

00002d88 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    2d88:	4a02      	ldr	r2, [pc, #8]	; (2d94 <wait_sync_end+0xc>)
    2d8a:	8813      	ldrh	r3, [r2, #0]
    2d8c:	f013 0f02 	tst.w	r3, #2
    2d90:	d1fb      	bne.n	2d8a <wait_sync_end+0x2>
}
    2d92:	4770      	bx	lr
    2d94:	200006bc 	.word	0x200006bc

00002d98 <set_video_mode>:

void set_video_mode(vmode_t mode){
    2d98:	b510      	push	{r4, lr}
    2d9a:	4604      	mov	r4, r0
    frame_sync();
    2d9c:	f7ff ffec 	bl	2d78 <frame_sync>
    video_mode=mode;
    2da0:	4b0e      	ldr	r3, [pc, #56]	; (2ddc <set_video_mode+0x44>)
    2da2:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    2da4:	b1ac      	cbz	r4, 2dd2 <set_video_mode+0x3a>
    2da6:	2200      	movs	r2, #0
    2da8:	4b0d      	ldr	r3, [pc, #52]	; (2de0 <set_video_mode+0x48>)
    2daa:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    2dac:	4b0d      	ldr	r3, [pc, #52]	; (2de4 <set_video_mode+0x4c>)
    2dae:	480e      	ldr	r0, [pc, #56]	; (2de8 <set_video_mode+0x50>)
    2db0:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    2db4:	8842      	ldrh	r2, [r0, #2]
    2db6:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    2db8:	8882      	ldrh	r2, [r0, #4]
    2dba:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    2dbc:	88c2      	ldrh	r2, [r0, #6]
    2dbe:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    2dc0:	7a02      	ldrb	r2, [r0, #8]
    2dc2:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    2dc4:	7a42      	ldrb	r2, [r0, #9]
    2dc6:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    2dc8:	7a82      	ldrb	r2, [r0, #10]
    2dca:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    2dcc:	f7fe fc76 	bl	16bc <gfx_cls>
    2dd0:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    2dd2:	2202      	movs	r2, #2
    2dd4:	4b02      	ldr	r3, [pc, #8]	; (2de0 <set_video_mode+0x48>)
    2dd6:	701a      	strb	r2, [r3, #0]
    2dd8:	e7e8      	b.n	2dac <set_video_mode+0x14>
    2dda:	bf00      	nop
    2ddc:	200006bc 	.word	0x200006bc
    2de0:	200001c8 	.word	0x200001c8
    2de4:	20000224 	.word	0x20000224
    2de8:	000036bc 	.word	0x000036bc

00002dec <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    2dec:	4b02      	ldr	r3, [pc, #8]	; (2df8 <get_video_params+0xc>)
    2dee:	7a18      	ldrb	r0, [r3, #8]
}
    2df0:	4b02      	ldr	r3, [pc, #8]	; (2dfc <get_video_params+0x10>)
    2df2:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    2df6:	4770      	bx	lr
    2df8:	200006bc 	.word	0x200006bc
    2dfc:	000036bc 	.word	0x000036bc

00002e00 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    2e00:	4b03      	ldr	r3, [pc, #12]	; (2e10 <game_pause+0x10>)
    2e02:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    2e04:	461a      	mov	r2, r3
    2e06:	8813      	ldrh	r3, [r2, #0]
    2e08:	b29b      	uxth	r3, r3
    2e0a:	2b00      	cmp	r3, #0
    2e0c:	d1fb      	bne.n	2e06 <game_pause+0x6>
}
    2e0e:	4770      	bx	lr
    2e10:	20004e90 	.word	0x20004e90

00002e14 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    2e14:	4b03      	ldr	r3, [pc, #12]	; (2e24 <micro_pause+0x10>)
    2e16:	681b      	ldr	r3, [r3, #0]
    2e18:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    2e1a:	4a02      	ldr	r2, [pc, #8]	; (2e24 <micro_pause+0x10>)
    2e1c:	6813      	ldr	r3, [r2, #0]
    2e1e:	4298      	cmp	r0, r3
    2e20:	d8fc      	bhi.n	2e1c <micro_pause+0x8>
}
    2e22:	4770      	bx	lr
    2e24:	20004e94 	.word	0x20004e94

00002e28 <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    2e28:	2801      	cmp	r0, #1
    2e2a:	d035      	beq.n	2e98 <usart_config_port+0x70>
    2e2c:	b110      	cbz	r0, 2e34 <usart_config_port+0xc>
    2e2e:	2802      	cmp	r0, #2
    2e30:	d04f      	beq.n	2ed2 <usart_config_port+0xaa>
    2e32:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    2e34:	4835      	ldr	r0, [pc, #212]	; (2f0c <usart_config_port+0xe4>)
    2e36:	6983      	ldr	r3, [r0, #24]
    2e38:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2e3c:	f043 0304 	orr.w	r3, r3, #4
    2e40:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    2e42:	2a01      	cmp	r2, #1
    2e44:	d016      	beq.n	2e74 <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    2e46:	4b32      	ldr	r3, [pc, #200]	; (2f10 <usart_config_port+0xe8>)
    2e48:	4299      	cmp	r1, r3
    2e4a:	d01c      	beq.n	2e86 <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    2e4c:	4a31      	ldr	r2, [pc, #196]	; (2f14 <usart_config_port+0xec>)
    2e4e:	6853      	ldr	r3, [r2, #4]
    2e50:	f043 0304 	orr.w	r3, r3, #4
    2e54:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2e56:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    2e5a:	6993      	ldr	r3, [r2, #24]
    2e5c:	f043 0308 	orr.w	r3, r3, #8
    2e60:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    2e62:	680b      	ldr	r3, [r1, #0]
    2e64:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    2e68:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    2e6a:	680b      	ldr	r3, [r1, #0]
    2e6c:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    2e70:	600b      	str	r3, [r1, #0]
    2e72:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    2e74:	684b      	ldr	r3, [r1, #4]
    2e76:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    2e7a:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    2e7c:	684b      	ldr	r3, [r1, #4]
    2e7e:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    2e82:	604b      	str	r3, [r1, #4]
    2e84:	e7df      	b.n	2e46 <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    2e86:	685a      	ldr	r2, [r3, #4]
    2e88:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    2e8c:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    2e8e:	685a      	ldr	r2, [r3, #4]
    2e90:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    2e94:	605a      	str	r2, [r3, #4]
    2e96:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    2e98:	4b1c      	ldr	r3, [pc, #112]	; (2f0c <usart_config_port+0xe4>)
    2e9a:	69d8      	ldr	r0, [r3, #28]
    2e9c:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    2ea0:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2ea2:	6998      	ldr	r0, [r3, #24]
    2ea4:	f040 0004 	orr.w	r0, r0, #4
    2ea8:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    2eaa:	2a01      	cmp	r2, #1
    2eac:	d008      	beq.n	2ec0 <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    2eae:	680b      	ldr	r3, [r1, #0]
    2eb0:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    2eb4:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    2eb6:	680b      	ldr	r3, [r1, #0]
    2eb8:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    2ebc:	600b      	str	r3, [r1, #0]
    2ebe:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    2ec0:	680b      	ldr	r3, [r1, #0]
    2ec2:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    2ec6:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    2ec8:	680b      	ldr	r3, [r1, #0]
    2eca:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    2ece:	600b      	str	r3, [r1, #0]
    2ed0:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    2ed2:	4b0e      	ldr	r3, [pc, #56]	; (2f0c <usart_config_port+0xe4>)
    2ed4:	69d8      	ldr	r0, [r3, #28]
    2ed6:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    2eda:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2edc:	6998      	ldr	r0, [r3, #24]
    2ede:	f040 0008 	orr.w	r0, r0, #8
    2ee2:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    2ee4:	2a01      	cmp	r2, #1
    2ee6:	d008      	beq.n	2efa <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    2ee8:	684b      	ldr	r3, [r1, #4]
    2eea:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    2eee:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    2ef0:	684b      	ldr	r3, [r1, #4]
    2ef2:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    2ef6:	604b      	str	r3, [r1, #4]
    2ef8:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    2efa:	684b      	ldr	r3, [r1, #4]
    2efc:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    2f00:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    2f02:	684b      	ldr	r3, [r1, #4]
    2f04:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    2f08:	604b      	str	r3, [r1, #4]
    2f0a:	4770      	bx	lr
    2f0c:	40021000 	.word	0x40021000
    2f10:	40010800 	.word	0x40010800
    2f14:	40010000 	.word	0x40010000

00002f18 <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    2f18:	4602      	mov	r2, r0
    2f1a:	b138      	cbz	r0, 2f2c <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    2f1c:	4b05      	ldr	r3, [pc, #20]	; (2f34 <usart_set_baud+0x1c>)
    2f1e:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    2f22:	4b05      	ldr	r3, [pc, #20]	; (2f38 <usart_set_baud+0x20>)
    2f24:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    2f28:	6099      	str	r1, [r3, #8]
    2f2a:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    2f2c:	4b03      	ldr	r3, [pc, #12]	; (2f3c <usart_set_baud+0x24>)
    2f2e:	fbb3 f1f1 	udiv	r1, r3, r1
    2f32:	e7f6      	b.n	2f22 <usart_set_baud+0xa>
    2f34:	022231fa 	.word	0x022231fa
    2f38:	000036e4 	.word	0x000036e4
    2f3c:	044463f4 	.word	0x044463f4

00002f40 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    2f40:	4b05      	ldr	r3, [pc, #20]	; (2f58 <usart_comm_dir+0x18>)
    2f42:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    2f46:	68da      	ldr	r2, [r3, #12]
    2f48:	f022 020c 	bic.w	r2, r2, #12
    2f4c:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    2f4e:	68da      	ldr	r2, [r3, #12]
    2f50:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    2f54:	60d9      	str	r1, [r3, #12]
    2f56:	4770      	bx	lr
    2f58:	000036e4 	.word	0x000036e4

00002f5c <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    2f5c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    2f60:	4604      	mov	r4, r0
    2f62:	460f      	mov	r7, r1
    2f64:	4615      	mov	r5, r2
    2f66:	4698      	mov	r8, r3
    2f68:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    2f6a:	2801      	cmp	r0, #1
    2f6c:	d030      	beq.n	2fd0 <usart_open_channel+0x74>
    2f6e:	b1d0      	cbz	r0, 2fa6 <usart_open_channel+0x4a>
    2f70:	2802      	cmp	r0, #2
    2f72:	d03a      	beq.n	2fea <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    2f74:	2e01      	cmp	r6, #1
    2f76:	d045      	beq.n	3004 <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    2f78:	4641      	mov	r1, r8
    2f7a:	4620      	mov	r0, r4
    2f7c:	f7ff ffe0 	bl	2f40 <usart_comm_dir>
	switch (parity){
    2f80:	2d01      	cmp	r5, #1
    2f82:	d04e      	beq.n	3022 <usart_open_channel+0xc6>
    2f84:	2d00      	cmp	r5, #0
    2f86:	d044      	beq.n	3012 <usart_open_channel+0xb6>
    2f88:	2d02      	cmp	r5, #2
    2f8a:	d052      	beq.n	3032 <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    2f8c:	4639      	mov	r1, r7
    2f8e:	4620      	mov	r0, r4
    2f90:	f7ff ffc2 	bl	2f18 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    2f94:	4b2b      	ldr	r3, [pc, #172]	; (3044 <usart_open_channel+0xe8>)
    2f96:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    2f9a:	68d3      	ldr	r3, [r2, #12]
    2f9c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    2fa0:	60d3      	str	r3, [r2, #12]
    2fa2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    2fa6:	9b06      	ldr	r3, [sp, #24]
    2fa8:	b963      	cbnz	r3, 2fc4 <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    2faa:	4632      	mov	r2, r6
    2fac:	4926      	ldr	r1, [pc, #152]	; (3048 <usart_open_channel+0xec>)
    2fae:	2000      	movs	r0, #0
    2fb0:	f7ff ff3a 	bl	2e28 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    2fb4:	2107      	movs	r1, #7
    2fb6:	2025      	movs	r0, #37	; 0x25
    2fb8:	f7fe fd94 	bl	1ae4 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    2fbc:	2025      	movs	r0, #37	; 0x25
    2fbe:	f7fe fd31 	bl	1a24 <enable_interrupt>
		break;
    2fc2:	e7d7      	b.n	2f74 <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    2fc4:	4632      	mov	r2, r6
    2fc6:	4921      	ldr	r1, [pc, #132]	; (304c <usart_open_channel+0xf0>)
    2fc8:	2000      	movs	r0, #0
    2fca:	f7ff ff2d 	bl	2e28 <usart_config_port>
    2fce:	e7f1      	b.n	2fb4 <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    2fd0:	4632      	mov	r2, r6
    2fd2:	491d      	ldr	r1, [pc, #116]	; (3048 <usart_open_channel+0xec>)
    2fd4:	2001      	movs	r0, #1
    2fd6:	f7ff ff27 	bl	2e28 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    2fda:	2107      	movs	r1, #7
    2fdc:	2026      	movs	r0, #38	; 0x26
    2fde:	f7fe fd81 	bl	1ae4 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    2fe2:	2026      	movs	r0, #38	; 0x26
    2fe4:	f7fe fd1e 	bl	1a24 <enable_interrupt>
		break;
    2fe8:	e7c4      	b.n	2f74 <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    2fea:	4632      	mov	r2, r6
    2fec:	4917      	ldr	r1, [pc, #92]	; (304c <usart_open_channel+0xf0>)
    2fee:	2002      	movs	r0, #2
    2ff0:	f7ff ff1a 	bl	2e28 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    2ff4:	2107      	movs	r1, #7
    2ff6:	2027      	movs	r0, #39	; 0x27
    2ff8:	f7fe fd74 	bl	1ae4 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    2ffc:	2027      	movs	r0, #39	; 0x27
    2ffe:	f7fe fd11 	bl	1a24 <enable_interrupt>
		break;
    3002:	e7b7      	b.n	2f74 <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3004:	4b0f      	ldr	r3, [pc, #60]	; (3044 <usart_open_channel+0xe8>)
    3006:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    300a:	f44f 7240 	mov.w	r2, #768	; 0x300
    300e:	615a      	str	r2, [r3, #20]
    3010:	e7b2      	b.n	2f78 <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    3012:	4b0c      	ldr	r3, [pc, #48]	; (3044 <usart_open_channel+0xe8>)
    3014:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3018:	68d3      	ldr	r3, [r2, #12]
    301a:	f043 0320 	orr.w	r3, r3, #32
    301e:	60d3      	str	r3, [r2, #12]
		break;
    3020:	e7b4      	b.n	2f8c <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    3022:	4b08      	ldr	r3, [pc, #32]	; (3044 <usart_open_channel+0xe8>)
    3024:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3028:	68d3      	ldr	r3, [r2, #12]
    302a:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    302e:	60d3      	str	r3, [r2, #12]
		break;
    3030:	e7ac      	b.n	2f8c <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    3032:	4b04      	ldr	r3, [pc, #16]	; (3044 <usart_open_channel+0xe8>)
    3034:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3038:	68d3      	ldr	r3, [r2, #12]
    303a:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    303e:	60d3      	str	r3, [r2, #12]
		break;
    3040:	e7a4      	b.n	2f8c <usart_open_channel+0x30>
    3042:	bf00      	nop
    3044:	000036e4 	.word	0x000036e4
    3048:	40010800 	.word	0x40010800
    304c:	40010c00 	.word	0x40010c00

00003050 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return channels[channel]->SR&USART_SR_RXNE;
    3050:	4b03      	ldr	r3, [pc, #12]	; (3060 <usart_stat+0x10>)
    3052:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    3056:	6818      	ldr	r0, [r3, #0]
}
    3058:	f000 0020 	and.w	r0, r0, #32
    305c:	4770      	bx	lr
    305e:	bf00      	nop
    3060:	000036e4 	.word	0x000036e4

00003064 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    3064:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    3066:	490c      	ldr	r1, [pc, #48]	; (3098 <usart_getc+0x34>)
    3068:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    306c:	005b      	lsls	r3, r3, #1
    306e:	18c8      	adds	r0, r1, r3
    3070:	5ccb      	ldrb	r3, [r1, r3]
    3072:	7841      	ldrb	r1, [r0, #1]
    3074:	4299      	cmp	r1, r3
    3076:	d00d      	beq.n	3094 <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    3078:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    307a:	4d07      	ldr	r5, [pc, #28]	; (3098 <usart_getc+0x34>)
    307c:	00d4      	lsls	r4, r2, #3
    307e:	4601      	mov	r1, r0
    3080:	4419      	add	r1, r3
    3082:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    3084:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3086:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    3088:	f003 030f 	and.w	r3, r3, #15
    308c:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    3090:	bc30      	pop	{r4, r5}
    3092:	4770      	bx	lr
		return 0;
    3094:	2000      	movs	r0, #0
    3096:	4770      	bx	lr
    3098:	200006c8 	.word	0x200006c8

0000309c <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    309c:	b570      	push	{r4, r5, r6, lr}
    309e:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    30a0:	4b08      	ldr	r3, [pc, #32]	; (30c4 <usart_getc_dly+0x28>)
    30a2:	681c      	ldr	r4, [r3, #0]
    30a4:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    30a6:	461d      	mov	r5, r3
    30a8:	682b      	ldr	r3, [r5, #0]
    30aa:	429c      	cmp	r4, r3
    30ac:	d906      	bls.n	30bc <usart_getc_dly+0x20>
    30ae:	4630      	mov	r0, r6
    30b0:	f7ff ffd8 	bl	3064 <usart_getc>
    30b4:	4603      	mov	r3, r0
    30b6:	2800      	cmp	r0, #0
    30b8:	d0f6      	beq.n	30a8 <usart_getc_dly+0xc>
    30ba:	e000      	b.n	30be <usart_getc_dly+0x22>
    30bc:	2300      	movs	r3, #0
	return c;
}
    30be:	4618      	mov	r0, r3
    30c0:	bd70      	pop	{r4, r5, r6, pc}
    30c2:	bf00      	nop
    30c4:	20004e94 	.word	0x20004e94

000030c8 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    30c8:	4b04      	ldr	r3, [pc, #16]	; (30dc <usart_putc+0x14>)
    30ca:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    30ce:	6813      	ldr	r3, [r2, #0]
    30d0:	f013 0f80 	tst.w	r3, #128	; 0x80
    30d4:	d0fb      	beq.n	30ce <usart_putc+0x6>
	channels[channel]->DR=c;
    30d6:	6051      	str	r1, [r2, #4]
    30d8:	4770      	bx	lr
    30da:	bf00      	nop
    30dc:	000036e4 	.word	0x000036e4

000030e0 <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    30e0:	2801      	cmp	r0, #1
    30e2:	d009      	beq.n	30f8 <usart_cts+0x18>
    30e4:	b118      	cbz	r0, 30ee <usart_cts+0xe>
    30e6:	2802      	cmp	r0, #2
    30e8:	d00b      	beq.n	3102 <usart_cts+0x22>
    30ea:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    30ec:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    30ee:	4b07      	ldr	r3, [pc, #28]	; (310c <usart_cts+0x2c>)
    30f0:	6898      	ldr	r0, [r3, #8]
    30f2:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    30f6:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    30f8:	4b04      	ldr	r3, [pc, #16]	; (310c <usart_cts+0x2c>)
    30fa:	6898      	ldr	r0, [r3, #8]
    30fc:	f000 0001 	and.w	r0, r0, #1
			break;
    3100:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    3102:	4b03      	ldr	r3, [pc, #12]	; (3110 <usart_cts+0x30>)
    3104:	6898      	ldr	r0, [r3, #8]
    3106:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    310a:	4770      	bx	lr
    310c:	40010800 	.word	0x40010800
    3110:	40010c00 	.word	0x40010c00

00003114 <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    3114:	b538      	push	{r3, r4, r5, lr}
    3116:	4605      	mov	r5, r0
    3118:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    311a:	7809      	ldrb	r1, [r1, #0]
    311c:	b131      	cbz	r1, 312c <usart_print+0x18>
    311e:	4628      	mov	r0, r5
    3120:	f7ff ffd2 	bl	30c8 <usart_putc>
    3124:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    3128:	2900      	cmp	r1, #0
    312a:	d1f8      	bne.n	311e <usart_print+0xa>
    312c:	bd38      	pop	{r3, r4, r5, pc}

0000312e <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    312e:	4668      	mov	r0, sp
    3130:	f020 0107 	bic.w	r1, r0, #7
    3134:	468d      	mov	sp, r1
    3136:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3138:	4b08      	ldr	r3, [pc, #32]	; (315c <USART1_handler+0x2e>)
    313a:	681b      	ldr	r3, [r3, #0]
    313c:	f013 0f20 	tst.w	r3, #32
    3140:	d009      	beq.n	3156 <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    3142:	4a07      	ldr	r2, [pc, #28]	; (3160 <USART1_handler+0x32>)
    3144:	7853      	ldrb	r3, [r2, #1]
    3146:	4905      	ldr	r1, [pc, #20]	; (315c <USART1_handler+0x2e>)
    3148:	6848      	ldr	r0, [r1, #4]
    314a:	18d1      	adds	r1, r2, r3
    314c:	7088      	strb	r0, [r1, #2]
    314e:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    3150:	f003 030f 	and.w	r3, r3, #15
    3154:	7053      	strb	r3, [r2, #1]
		}
}
    3156:	bc01      	pop	{r0}
    3158:	4685      	mov	sp, r0
    315a:	4770      	bx	lr
    315c:	40013800 	.word	0x40013800
    3160:	200006c8 	.word	0x200006c8

00003164 <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    3164:	4668      	mov	r0, sp
    3166:	f020 0107 	bic.w	r1, r0, #7
    316a:	468d      	mov	sp, r1
    316c:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    316e:	4b0a      	ldr	r3, [pc, #40]	; (3198 <USART2_handler+0x34>)
    3170:	681b      	ldr	r3, [r3, #0]
    3172:	f013 0f20 	tst.w	r3, #32
    3176:	d00b      	beq.n	3190 <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    3178:	4a08      	ldr	r2, [pc, #32]	; (319c <USART2_handler+0x38>)
    317a:	7cd1      	ldrb	r1, [r2, #19]
    317c:	1c4b      	adds	r3, r1, #1
    317e:	b2db      	uxtb	r3, r3
    3180:	74d3      	strb	r3, [r2, #19]
    3182:	4807      	ldr	r0, [pc, #28]	; (31a0 <USART2_handler+0x3c>)
    3184:	6840      	ldr	r0, [r0, #4]
    3186:	4411      	add	r1, r2
    3188:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    318a:	f003 030f 	and.w	r3, r3, #15
    318e:	74d3      	strb	r3, [r2, #19]
		}
}
    3190:	bc01      	pop	{r0}
    3192:	4685      	mov	sp, r0
    3194:	4770      	bx	lr
    3196:	bf00      	nop
    3198:	40013800 	.word	0x40013800
    319c:	200006c8 	.word	0x200006c8
    31a0:	40004400 	.word	0x40004400

000031a4 <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    31a4:	4668      	mov	r0, sp
    31a6:	f020 0107 	bic.w	r1, r0, #7
    31aa:	468d      	mov	sp, r1
    31ac:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    31ae:	4b0b      	ldr	r3, [pc, #44]	; (31dc <USART3_handler+0x38>)
    31b0:	681b      	ldr	r3, [r3, #0]
    31b2:	f013 0f20 	tst.w	r3, #32
    31b6:	d00d      	beq.n	31d4 <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    31b8:	4b09      	ldr	r3, [pc, #36]	; (31e0 <USART3_handler+0x3c>)
    31ba:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    31be:	1c51      	adds	r1, r2, #1
    31c0:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    31c4:	4907      	ldr	r1, [pc, #28]	; (31e4 <USART3_handler+0x40>)
    31c6:	6849      	ldr	r1, [r1, #4]
    31c8:	441a      	add	r2, r3
    31ca:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    31cc:	7cda      	ldrb	r2, [r3, #19]
    31ce:	f002 020f 	and.w	r2, r2, #15
    31d2:	74da      	strb	r2, [r3, #19]
		}
}
    31d4:	bc01      	pop	{r0}
    31d6:	4685      	mov	sp, r0
    31d8:	4770      	bx	lr
    31da:	bf00      	nop
    31dc:	40013800 	.word	0x40013800
    31e0:	200006c8 	.word	0x200006c8
    31e4:	40004800 	.word	0x40004800
