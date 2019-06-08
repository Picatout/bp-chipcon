
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
      a0:	c5 2b 00 00 01 32 00 00 c5 2b 00 00 19 31 00 00     .+...2...+...1..
      b0:	ed 29 00 00 51 02 00 00 55 02 00 00 c5 2b 00 00     .)..Q...U....+..
      c0:	c5 2b 00 00 c5 2b 00 00 c5 2b 00 00 c5 2b 00 00     .+...+...+...+..
      d0:	c5 2b 00 00 13 38 00 00 49 38 00 00 89 38 00 00     .+...8..I8...8..
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
     186:	f001 fd2f 	bl	1be8 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e7e 	.word	0x20004e7e
     190:	20000212 	.word	0x20000212
     194:	20004e7d 	.word	0x20004e7d
     198:	20000212 	.word	0x20000212
     19c:	20000000 	.word	0x20000000
     1a0:	000099a4 	.word	0x000099a4
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
     1f4:	000040bc 	.word	0x000040bc
     1f8:	00004098 	.word	0x00004098
     1fc:	000040b0 	.word	0x000040b0
     200:	000040cc 	.word	0x000040cc

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

00000278 <basic>:
#include "graphics.h"
#include "gamepad.h"
#include "text.h"
#include "basic.h"

void basic(){
     278:	b508      	push	{r3, lr}
    gfx_cls();
     27a:	f001 fa45 	bl	1708 <gfx_cls>
    print("not done yet\n");
     27e:	4804      	ldr	r0, [pc, #16]	; (290 <basic+0x18>)
     280:	f002 fe0e 	bl	2ea0 <print>
    prompt_btn();
     284:	f002 fe71 	bl	2f6a <prompt_btn>
    btn_wait_any();
     288:	f000 ffdc 	bl	1244 <btn_wait_any>
     28c:	bd08      	pop	{r3, pc}
     28e:	bf00      	nop
     290:	00003de8 	.word	0x00003de8

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
     332:	f002 fcc9 	bl	2cc8 <get_font>
     336:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     338:	2002      	movs	r0, #2
     33a:	f002 fcbf 	bl	2cbc <select_font>
	new_line();
     33e:	f002 fcc9 	bl	2cd4 <new_line>
	print(msg);
     342:	4628      	mov	r0, r5
     344:	f002 fdac 	bl	2ea0 <print>
	switch(error_code){
     348:	2c02      	cmp	r4, #2
     34a:	d039      	beq.n	3c0 <print_vms+0x94>
     34c:	2c03      	cmp	r4, #3
     34e:	d102      	bne.n	356 <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     350:	481d      	ldr	r0, [pc, #116]	; (3c8 <print_vms+0x9c>)
     352:	f002 fda5 	bl	2ea0 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     356:	481d      	ldr	r0, [pc, #116]	; (3cc <print_vms+0xa0>)
     358:	f002 fda2 	bl	2ea0 <print>
	print_hex(vms.pc-2);
     35c:	4d1c      	ldr	r5, [pc, #112]	; (3d0 <print_vms+0xa4>)
     35e:	8828      	ldrh	r0, [r5, #0]
     360:	2110      	movs	r1, #16
     362:	3802      	subs	r0, #2
     364:	f002 fdb7 	bl	2ed6 <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     368:	7e28      	ldrb	r0, [r5, #24]
     36a:	7e6b      	ldrb	r3, [r5, #25]
     36c:	2110      	movs	r1, #16
     36e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     372:	f002 fdb0 	bl	2ed6 <print_int>
	new_line();
     376:	f002 fcad 	bl	2cd4 <new_line>
	print("I:");
     37a:	4816      	ldr	r0, [pc, #88]	; (3d4 <print_vms+0xa8>)
     37c:	f002 fd90 	bl	2ea0 <print>
	print_hex(vms.ix);
     380:	2110      	movs	r1, #16
     382:	8868      	ldrh	r0, [r5, #2]
     384:	f002 fda7 	bl	2ed6 <print_int>
	print(" SP:");
     388:	4813      	ldr	r0, [pc, #76]	; (3d8 <print_vms+0xac>)
     38a:	f002 fd89 	bl	2ea0 <print>
	print_hex(vms.sp);
     38e:	2110      	movs	r1, #16
     390:	7928      	ldrb	r0, [r5, #4]
     392:	f002 fda0 	bl	2ed6 <print_int>
	new_line();
     396:	f002 fc9d 	bl	2cd4 <new_line>
	print("var[]:");
     39a:	4810      	ldr	r0, [pc, #64]	; (3dc <print_vms+0xb0>)
     39c:	f002 fd80 	bl	2ea0 <print>
     3a0:	1dac      	adds	r4, r5, #6
     3a2:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     3a4:	2610      	movs	r6, #16
     3a6:	4631      	mov	r1, r6
     3a8:	f814 0b01 	ldrb.w	r0, [r4], #1
     3ac:	f002 fd93 	bl	2ed6 <print_int>
	for (int i=0;i<16;i++){
     3b0:	42ac      	cmp	r4, r5
     3b2:	d1f8      	bne.n	3a6 <print_vms+0x7a>
	}
	new_line();
     3b4:	f002 fc8e 	bl	2cd4 <new_line>
	select_font(orig_font);
     3b8:	4638      	mov	r0, r7
     3ba:	f002 fc7f 	bl	2cbc <select_font>
     3be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3c0:	4807      	ldr	r0, [pc, #28]	; (3e0 <print_vms+0xb4>)
     3c2:	f002 fd6d 	bl	2ea0 <print>
		break;
     3c6:	e7c6      	b.n	356 <print_vms+0x2a>
     3c8:	00003df8 	.word	0x00003df8
     3cc:	00003e20 	.word	0x00003e20
     3d0:	20000214 	.word	0x20000214
     3d4:	00003e24 	.word	0x00003e24
     3d8:	00003e28 	.word	0x00003e28
     3dc:	00003e30 	.word	0x00003e30
     3e0:	00003e0c 	.word	0x00003e0c

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
     412:	4b9e      	ldr	r3, [pc, #632]	; (68c <chip_vm+0x280>)
     414:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     416:	2200      	movs	r2, #0
     418:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     41a:	805a      	strh	r2, [r3, #2]
	vms.s=0;
     41c:	82da      	strh	r2, [r3, #22]
 	while (exit_code==CHIP_CONTINUE){
		if (vms.pc>=GAME_SPACE){
     41e:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
     422:	f080 84b7 	bcs.w	d94 <chip_vm+0x988>
     426:	460d      	mov	r5, r1
			print("vt100 keyboard to continue\n");
			get_char();
			select_console(LOCAL);
			break;
		}//switch(dbg_level)
		x=rx(vms.b1);
     428:	461c      	mov	r4, r3
				break;	
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash ; SCHIP, BPCHIP
				if (video_mode==VM_BPCHIP){
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
				}else{
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     42a:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     42c:	4f98      	ldr	r7, [pc, #608]	; (690 <chip_vm+0x284>)
     42e:	e143      	b.n	6b8 <chip_vm+0x2ac>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     430:	2d00      	cmp	r5, #0
     432:	f040 8146 	bne.w	6c2 <chip_vm+0x2b6>
     436:	2005      	movs	r0, #5
     438:	f003 f85e 	bl	34f8 <micro_pause>
		_get_opcode(vms.pc);
     43c:	8823      	ldrh	r3, [r4, #0]
     43e:	4a95      	ldr	r2, [pc, #596]	; (694 <chip_vm+0x288>)
     440:	5cd1      	ldrb	r1, [r2, r3]
     442:	7621      	strb	r1, [r4, #24]
     444:	441a      	add	r2, r3
     446:	7852      	ldrb	r2, [r2, #1]
     448:	7662      	strb	r2, [r4, #25]
		vms.pc+=2;
     44a:	3302      	adds	r3, #2
     44c:	8023      	strh	r3, [r4, #0]
     44e:	e018      	b.n	482 <chip_vm+0x76>
			_debug_print(itoa(vms.pc-2,buffer,16));
     450:	2210      	movs	r2, #16
     452:	a902      	add	r1, sp, #8
     454:	3802      	subs	r0, #2
     456:	f001 f853 	bl	1500 <itoa>
     45a:	4601      	mov	r1, r0
     45c:	2000      	movs	r0, #0
     45e:	f003 f9cb 	bl	37f8 <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     462:	7e20      	ldrb	r0, [r4, #24]
     464:	7e63      	ldrb	r3, [r4, #25]
     466:	2210      	movs	r2, #16
     468:	a902      	add	r1, sp, #8
     46a:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     46e:	f001 f847 	bl	1500 <itoa>
     472:	4601      	mov	r1, r0
     474:	2000      	movs	r0, #0
     476:	f003 f9bf 	bl	37f8 <usart_print>
			_debug_print("\n");
     47a:	4987      	ldr	r1, [pc, #540]	; (698 <chip_vm+0x28c>)
     47c:	2000      	movs	r0, #0
     47e:	f003 f9bb 	bl	37f8 <usart_print>
		x=rx(vms.b1);
     482:	7e22      	ldrb	r2, [r4, #24]
     484:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     488:	7e63      	ldrb	r3, [r4, #25]
     48a:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     48e:	0911      	lsrs	r1, r2, #4
     490:	290f      	cmp	r1, #15
     492:	f200 810c 	bhi.w	6ae <chip_vm+0x2a2>
     496:	e8df f011 	tbh	[pc, r1, lsl #1]
     49a:	002b      	.short	0x002b
     49c:	00940088 	.word	0x00940088
     4a0:	00b100a8 	.word	0x00b100a8
     4a4:	010700ba 	.word	0x010700ba
     4a8:	01610155 	.word	0x01610155
     4ac:	02aa01dc 	.word	0x02aa01dc
     4b0:	02c702b7 	.word	0x02c702b7
     4b4:	031402d2 	.word	0x031402d2
     4b8:	0332      	.short	0x0332
			select_console(SERIAL);
     4ba:	2001      	movs	r0, #1
     4bc:	f002 fdaa 	bl	3014 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4c0:	2100      	movs	r1, #0
     4c2:	4876      	ldr	r0, [pc, #472]	; (69c <chip_vm+0x290>)
     4c4:	f7ff ff32 	bl	32c <print_vms>
			select_console(LOCAL);
     4c8:	2000      	movs	r0, #0
     4ca:	f002 fda3 	bl	3014 <select_console>
			break;
     4ce:	e7d8      	b.n	482 <chip_vm+0x76>
			select_console(SERIAL);
     4d0:	2001      	movs	r0, #1
     4d2:	f002 fd9f 	bl	3014 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4d6:	2100      	movs	r1, #0
     4d8:	4870      	ldr	r0, [pc, #448]	; (69c <chip_vm+0x290>)
     4da:	f7ff ff27 	bl	32c <print_vms>
			print("vt100 keyboard to continue\n");
     4de:	4870      	ldr	r0, [pc, #448]	; (6a0 <chip_vm+0x294>)
     4e0:	f002 fcde 	bl	2ea0 <print>
			get_char();
     4e4:	f002 fd9c 	bl	3020 <get_char>
			select_console(LOCAL);
     4e8:	2000      	movs	r0, #0
     4ea:	f002 fd93 	bl	3014 <select_console>
			break;
     4ee:	e7c8      	b.n	482 <chip_vm+0x76>
		    if ((vms.b1|vms.b2)==0){
     4f0:	431a      	orrs	r2, r3
     4f2:	f000 80dc 	beq.w	6ae <chip_vm+0x2a2>
     4f6:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     4fa:	2ac0      	cmp	r2, #192	; 0xc0
     4fc:	d026      	beq.n	54c <chip_vm+0x140>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
     4fe:	2ad0      	cmp	r2, #208	; 0xd0
     500:	d029      	beq.n	556 <chip_vm+0x14a>
			}else switch(vms.b2){
     502:	3be0      	subs	r3, #224	; 0xe0
     504:	2b1f      	cmp	r3, #31
     506:	d82b      	bhi.n	560 <chip_vm+0x154>
     508:	e8df f013 	tbh	[pc, r3, lsl #1]
     50c:	002a002e 	.word	0x002a002e
     510:	002a002a 	.word	0x002a002a
     514:	002a002a 	.word	0x002a002a
     518:	002a002a 	.word	0x002a002a
     51c:	002a002a 	.word	0x002a002a
     520:	002a002a 	.word	0x002a002a
     524:	002a002a 	.word	0x002a002a
     528:	002a0031 	.word	0x002a0031
     52c:	002a002a 	.word	0x002a002a
     530:	002a002a 	.word	0x002a002a
     534:	002a002a 	.word	0x002a002a
     538:	002a002a 	.word	0x002a002a
     53c:	0049002a 	.word	0x0049002a
     540:	00390045 	.word	0x00390045
     544:	0456003d 	.word	0x0456003d
     548:	00410438 	.word	0x00410438
				gfx_scroll_down(vms.b2&0xf); 
     54c:	f003 000f 	and.w	r0, r3, #15
     550:	f001 f914 	bl	177c <gfx_scroll_down>
     554:	e0ab      	b.n	6ae <chip_vm+0x2a2>
				gfx_scroll_up(vms.b2&0xf);					
     556:	f003 000f 	and.w	r0, r3, #15
     55a:	f001 f8e9 	bl	1730 <gfx_scroll_up>
     55e:	e0a6      	b.n	6ae <chip_vm+0x2a2>
					exit_code=CHIP_BAD_OPCODE;
     560:	f04f 0802 	mov.w	r8, #2
     564:	f000 bc1b 	b.w	d9e <chip_vm+0x992>
					gfx_cls();
     568:	f001 f8ce 	bl	1708 <gfx_cls>
					break;
     56c:	e09f      	b.n	6ae <chip_vm+0x2a2>
					vms.pc=vms.stack[vms.sp--];
     56e:	7923      	ldrb	r3, [r4, #4]
     570:	1e5a      	subs	r2, r3, #1
     572:	7122      	strb	r2, [r4, #4]
     574:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     578:	8b5b      	ldrh	r3, [r3, #26]
     57a:	8023      	strh	r3, [r4, #0]
					break;
     57c:	e097      	b.n	6ae <chip_vm+0x2a2>
					gfx_scroll_right(4);
     57e:	2004      	movs	r0, #4
     580:	f001 f94e 	bl	1820 <gfx_scroll_right>
					break;
     584:	e093      	b.n	6ae <chip_vm+0x2a2>
					gfx_scroll_left(4);
     586:	2004      	movs	r0, #4
     588:	f001 f91c 	bl	17c4 <gfx_scroll_left>
					break;
     58c:	e08f      	b.n	6ae <chip_vm+0x2a2>
					set_video_mode(VM_SCHIP);
     58e:	2001      	movs	r0, #1
     590:	f002 ff74 	bl	347c <set_video_mode>
					break; 
     594:	e08b      	b.n	6ae <chip_vm+0x2a2>
					set_video_mode(VM_BPCHIP);
     596:	2000      	movs	r0, #0
     598:	f002 ff70 	bl	347c <set_video_mode>
					break;
     59c:	e087      	b.n	6ae <chip_vm+0x2a2>
					set_palette((const uint8_t*)&game_ram[vms.ix]);
     59e:	8863      	ldrh	r3, [r4, #2]
     5a0:	483c      	ldr	r0, [pc, #240]	; (694 <chip_vm+0x288>)
     5a2:	4418      	add	r0, r3
     5a4:	f001 f82e 	bl	1604 <set_palette>
					break;	
     5a8:	e081      	b.n	6ae <chip_vm+0x2a2>
			vms.pc=caddr(vms.b1,vms.b2);
     5aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5ae:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5b2:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5b4:	4a3b      	ldr	r2, [pc, #236]	; (6a4 <chip_vm+0x298>)
     5b6:	7812      	ldrb	r2, [r2, #0]
     5b8:	2a00      	cmp	r2, #0
     5ba:	d178      	bne.n	6ae <chip_vm+0x2a2>
				vms.pc<<=1;
     5bc:	005b      	lsls	r3, r3, #1
     5be:	8023      	strh	r3, [r4, #0]
     5c0:	e075      	b.n	6ae <chip_vm+0x2a2>
			vms.stack[++vms.sp]=vms.pc;
     5c2:	7921      	ldrb	r1, [r4, #4]
     5c4:	3101      	adds	r1, #1
     5c6:	b2c9      	uxtb	r1, r1
     5c8:	7121      	strb	r1, [r4, #4]
     5ca:	eb04 0141 	add.w	r1, r4, r1, lsl #1
     5ce:	8820      	ldrh	r0, [r4, #0]
     5d0:	8348      	strh	r0, [r1, #26]
			vms.pc=caddr(vms.b1,vms.b2);
     5d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5d6:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5da:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5dc:	4a31      	ldr	r2, [pc, #196]	; (6a4 <chip_vm+0x298>)
     5de:	7812      	ldrb	r2, [r2, #0]
     5e0:	2a00      	cmp	r2, #0
     5e2:	d164      	bne.n	6ae <chip_vm+0x2a2>
				vms.pc<<=1;
     5e4:	005b      	lsls	r3, r3, #1
     5e6:	8023      	strh	r3, [r4, #0]
     5e8:	e061      	b.n	6ae <chip_vm+0x2a2>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     5ea:	44a0      	add	r8, r4
     5ec:	f898 2006 	ldrb.w	r2, [r8, #6]
     5f0:	429a      	cmp	r2, r3
     5f2:	d15c      	bne.n	6ae <chip_vm+0x2a2>
     5f4:	8823      	ldrh	r3, [r4, #0]
     5f6:	3302      	adds	r3, #2
     5f8:	8023      	strh	r3, [r4, #0]
     5fa:	e058      	b.n	6ae <chip_vm+0x2a2>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     5fc:	44a0      	add	r8, r4
     5fe:	f898 2006 	ldrb.w	r2, [r8, #6]
     602:	429a      	cmp	r2, r3
     604:	d053      	beq.n	6ae <chip_vm+0x2a2>
     606:	8823      	ldrh	r3, [r4, #0]
     608:	3302      	adds	r3, #2
     60a:	8023      	strh	r3, [r4, #0]
     60c:	e04f      	b.n	6ae <chip_vm+0x2a2>
			switch(vms.b2&0xf){
     60e:	f003 030f 	and.w	r3, r3, #15
     612:	2b02      	cmp	r3, #2
     614:	d015      	beq.n	642 <chip_vm+0x236>
     616:	2b03      	cmp	r3, #3
     618:	d025      	beq.n	666 <chip_vm+0x25a>
     61a:	b133      	cbz	r3, 62a <chip_vm+0x21e>
     61c:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     620:	f1b8 0f00 	cmp.w	r8, #0
     624:	f040 83bb 	bne.w	d9e <chip_vm+0x992>
     628:	e041      	b.n	6ae <chip_vm+0x2a2>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     62a:	44a0      	add	r8, r4
     62c:	44a1      	add	r9, r4
     62e:	f898 2006 	ldrb.w	r2, [r8, #6]
     632:	f899 3006 	ldrb.w	r3, [r9, #6]
     636:	429a      	cmp	r2, r3
     638:	d139      	bne.n	6ae <chip_vm+0x2a2>
     63a:	8823      	ldrh	r3, [r4, #0]
     63c:	3302      	adds	r3, #2
     63e:	8023      	strh	r3, [r4, #0]
     640:	e035      	b.n	6ae <chip_vm+0x2a2>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     642:	4640      	mov	r0, r8
     644:	45c8      	cmp	r8, r9
     646:	bf28      	it	cs
     648:	4648      	movcs	r0, r9
     64a:	eba9 0208 	sub.w	r2, r9, r8
     64e:	2a00      	cmp	r2, #0
     650:	bfb8      	it	lt
     652:	4252      	neglt	r2, r2
     654:	8863      	ldrh	r3, [r4, #2]
     656:	3006      	adds	r0, #6
     658:	3201      	adds	r2, #1
     65a:	490e      	ldr	r1, [pc, #56]	; (694 <chip_vm+0x288>)
     65c:	4419      	add	r1, r3
     65e:	4420      	add	r0, r4
     660:	f000 fedd 	bl	141e <move>
				break;
     664:	e023      	b.n	6ae <chip_vm+0x2a2>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     666:	8863      	ldrh	r3, [r4, #2]
     668:	4641      	mov	r1, r8
     66a:	45c8      	cmp	r8, r9
     66c:	bf28      	it	cs
     66e:	4649      	movcs	r1, r9
     670:	eba9 0208 	sub.w	r2, r9, r8
     674:	2a00      	cmp	r2, #0
     676:	bfb8      	it	lt
     678:	4252      	neglt	r2, r2
     67a:	3106      	adds	r1, #6
     67c:	3201      	adds	r2, #1
     67e:	4421      	add	r1, r4
     680:	4804      	ldr	r0, [pc, #16]	; (694 <chip_vm+0x288>)
     682:	4418      	add	r0, r3
     684:	f000 fecb 	bl	141e <move>
				break;
     688:	e011      	b.n	6ae <chip_vm+0x2a2>
     68a:	bf00      	nop
     68c:	20000214 	.word	0x20000214
     690:	51eb851f 	.word	0x51eb851f
     694:	200006e4 	.word	0x200006e4
     698:	00003f4c 	.word	0x00003f4c
     69c:	00003e38 	.word	0x00003e38
     6a0:	00003e4c 	.word	0x00003e4c
     6a4:	200006a8 	.word	0x200006a8
			vms.var[x]=vms.b2;
     6a8:	44a0      	add	r8, r4
     6aa:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     6ae:	8823      	ldrh	r3, [r4, #0]
     6b0:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     6b4:	f080 8371 	bcs.w	d9a <chip_vm+0x98e>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     6b8:	4bc0      	ldr	r3, [pc, #768]	; (9bc <chip_vm+0x5b0>)
     6ba:	781b      	ldrb	r3, [r3, #0]
     6bc:	2b01      	cmp	r3, #1
     6be:	f43f aeb7 	beq.w	430 <chip_vm+0x24>
		_get_opcode(vms.pc);
     6c2:	8820      	ldrh	r0, [r4, #0]
     6c4:	4bbe      	ldr	r3, [pc, #760]	; (9c0 <chip_vm+0x5b4>)
     6c6:	5c1a      	ldrb	r2, [r3, r0]
     6c8:	7622      	strb	r2, [r4, #24]
     6ca:	4403      	add	r3, r0
     6cc:	785b      	ldrb	r3, [r3, #1]
     6ce:	7663      	strb	r3, [r4, #25]
		vms.pc+=2;
     6d0:	3002      	adds	r0, #2
     6d2:	b280      	uxth	r0, r0
     6d4:	8020      	strh	r0, [r4, #0]
		switch(dbg_level){
     6d6:	2d02      	cmp	r5, #2
     6d8:	f43f aeef 	beq.w	4ba <chip_vm+0xae>
     6dc:	2d03      	cmp	r5, #3
     6de:	f43f aef7 	beq.w	4d0 <chip_vm+0xc4>
     6e2:	2d01      	cmp	r5, #1
     6e4:	f43f aeb4 	beq.w	450 <chip_vm+0x44>
		x=rx(vms.b1);
     6e8:	7e22      	ldrb	r2, [r4, #24]
     6ea:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     6ee:	7e63      	ldrb	r3, [r4, #25]
     6f0:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     6f4:	0911      	lsrs	r1, r2, #4
     6f6:	290f      	cmp	r1, #15
     6f8:	f200 833d 	bhi.w	d76 <chip_vm+0x96a>
     6fc:	a001      	add	r0, pc, #4	; (adr r0, 704 <chip_vm+0x2f8>)
     6fe:	f850 f021 	ldr.w	pc, [r0, r1, lsl #2]
     702:	bf00      	nop
     704:	000004f1 	.word	0x000004f1
     708:	000005ab 	.word	0x000005ab
     70c:	000005c3 	.word	0x000005c3
     710:	000005eb 	.word	0x000005eb
     714:	000005fd 	.word	0x000005fd
     718:	0000060f 	.word	0x0000060f
     71c:	000006a9 	.word	0x000006a9
     720:	00000745 	.word	0x00000745
     724:	0000075d 	.word	0x0000075d
     728:	00000853 	.word	0x00000853
     72c:	000009ef 	.word	0x000009ef
     730:	00000a09 	.word	0x00000a09
     734:	00000a29 	.word	0x00000a29
     738:	00000a3f 	.word	0x00000a3f
     73c:	00000ac3 	.word	0x00000ac3
     740:	00000aff 	.word	0x00000aff
		    n=(vms.var[x]+vms.b2)>255;
     744:	44a0      	add	r8, r4
     746:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     74a:	4403      	add	r3, r0
     74c:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     750:	2bff      	cmp	r3, #255	; 0xff
     752:	bfd4      	ite	le
     754:	2300      	movle	r3, #0
     756:	2301      	movgt	r3, #1
     758:	7563      	strb	r3, [r4, #21]
			break;
     75a:	e7a8      	b.n	6ae <chip_vm+0x2a2>
			switch(vms.b2&0xf){
     75c:	f003 030f 	and.w	r3, r3, #15
     760:	2b0e      	cmp	r3, #14
     762:	f200 830e 	bhi.w	d82 <chip_vm+0x976>
     766:	e8df f013 	tbh	[pc, r3, lsl #1]
     76a:	000f      	.short	0x000f
     76c:	00200016 	.word	0x00200016
     770:	0034002a 	.word	0x0034002a
     774:	00520043 	.word	0x00520043
     778:	030c005c 	.word	0x030c005c
     77c:	030c030c 	.word	0x030c030c
     780:	030c030c 	.word	0x030c030c
     784:	006b030c 	.word	0x006b030c
				vms.var[x]=vms.var[y];
     788:	44a1      	add	r9, r4
     78a:	f899 3006 	ldrb.w	r3, [r9, #6]
     78e:	44a0      	add	r8, r4
     790:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     794:	e78b      	b.n	6ae <chip_vm+0x2a2>
				vms.var[x]|=vms.var[y];
     796:	44a0      	add	r8, r4
     798:	44a1      	add	r9, r4
     79a:	f898 3006 	ldrb.w	r3, [r8, #6]
     79e:	f899 2006 	ldrb.w	r2, [r9, #6]
     7a2:	4313      	orrs	r3, r2
     7a4:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7a8:	e781      	b.n	6ae <chip_vm+0x2a2>
				vms.var[x]&=vms.var[y];
     7aa:	44a0      	add	r8, r4
     7ac:	44a1      	add	r9, r4
     7ae:	f898 3006 	ldrb.w	r3, [r8, #6]
     7b2:	f899 2006 	ldrb.w	r2, [r9, #6]
     7b6:	4013      	ands	r3, r2
     7b8:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7bc:	e777      	b.n	6ae <chip_vm+0x2a2>
				vms.var[x]^=vms.var[y];
     7be:	44a0      	add	r8, r4
     7c0:	44a1      	add	r9, r4
     7c2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7c6:	f899 2006 	ldrb.w	r2, [r9, #6]
     7ca:	4053      	eors	r3, r2
     7cc:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7d0:	e76d      	b.n	6ae <chip_vm+0x2a2>
				n=(vms.var[x]+vms.var[y])>255;
     7d2:	44a0      	add	r8, r4
     7d4:	f898 3006 	ldrb.w	r3, [r8, #6]
     7d8:	44a1      	add	r9, r4
     7da:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     7de:	4413      	add	r3, r2
     7e0:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     7e4:	2bff      	cmp	r3, #255	; 0xff
     7e6:	bfd4      	ite	le
     7e8:	2300      	movle	r3, #0
     7ea:	2301      	movgt	r3, #1
     7ec:	7563      	strb	r3, [r4, #21]
				break;
     7ee:	e75e      	b.n	6ae <chip_vm+0x2a2>
				n=vms.var[x]>=vms.var[y];
     7f0:	44a0      	add	r8, r4
     7f2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7f6:	44a1      	add	r9, r4
     7f8:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     7fc:	1a99      	subs	r1, r3, r2
     7fe:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     802:	4293      	cmp	r3, r2
     804:	bf34      	ite	cc
     806:	2300      	movcc	r3, #0
     808:	2301      	movcs	r3, #1
     80a:	7563      	strb	r3, [r4, #21]
				break;
     80c:	e74f      	b.n	6ae <chip_vm+0x2a2>
				n=(vms.var[x]&1u);
     80e:	44a0      	add	r8, r4
     810:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     814:	085a      	lsrs	r2, r3, #1
     816:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     81a:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     81e:	7563      	strb	r3, [r4, #21]
				break;
     820:	e745      	b.n	6ae <chip_vm+0x2a2>
				n=vms.var[y]>=vms.var[x];
     822:	44a1      	add	r9, r4
     824:	f899 3006 	ldrb.w	r3, [r9, #6]
     828:	44a0      	add	r8, r4
     82a:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     82e:	1a99      	subs	r1, r3, r2
     830:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     834:	4293      	cmp	r3, r2
     836:	bf34      	ite	cc
     838:	2300      	movcc	r3, #0
     83a:	2301      	movcs	r3, #1
     83c:	7563      	strb	r3, [r4, #21]
				break;
     83e:	e736      	b.n	6ae <chip_vm+0x2a2>
				n=(vms.var[x]&128)>>7;
     840:	44a0      	add	r8, r4
     842:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     846:	005a      	lsls	r2, r3, #1
     848:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     84c:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     84e:	7563      	strb	r3, [r4, #21]
				break;
     850:	e72d      	b.n	6ae <chip_vm+0x2a2>
			switch (vms.b2&0xf){
     852:	f003 030f 	and.w	r3, r3, #15
     856:	2b0f      	cmp	r3, #15
     858:	f200 8296 	bhi.w	d88 <chip_vm+0x97c>
     85c:	e8df f003 	tbb	[pc, r3]
     860:	3c1f1508 	.word	0x3c1f1508
     864:	62574c47 	.word	0x62574c47
     868:	867a736c 	.word	0x867a736c
     86c:	c1b29f93 	.word	0xc1b29f93
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     870:	44a0      	add	r8, r4
     872:	44a1      	add	r9, r4
     874:	f898 2006 	ldrb.w	r2, [r8, #6]
     878:	f899 3006 	ldrb.w	r3, [r9, #6]
     87c:	429a      	cmp	r2, r3
     87e:	f43f af16 	beq.w	6ae <chip_vm+0x2a2>
     882:	8823      	ldrh	r3, [r4, #0]
     884:	3302      	adds	r3, #2
     886:	8023      	strh	r3, [r4, #0]
     888:	e711      	b.n	6ae <chip_vm+0x2a2>
				key_tone(vms.var[x],vms.var[y],false);
     88a:	44a1      	add	r9, r4
     88c:	44a0      	add	r8, r4
     88e:	2200      	movs	r2, #0
     890:	f899 1006 	ldrb.w	r1, [r9, #6]
     894:	f898 0006 	ldrb.w	r0, [r8, #6]
     898:	f002 f880 	bl	299c <key_tone>
				break;
     89c:	e707      	b.n	6ae <chip_vm+0x2a2>
				select_font(FONT_ASCII);
     89e:	2002      	movs	r0, #2
     8a0:	f002 fa0c 	bl	2cbc <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     8a4:	44a1      	add	r9, r4
     8a6:	44a0      	add	r8, r4
     8a8:	f899 1006 	ldrb.w	r1, [r9, #6]
     8ac:	f898 0006 	ldrb.w	r0, [r8, #6]
     8b0:	f002 fac2 	bl	2e38 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     8b4:	8860      	ldrh	r0, [r4, #2]
     8b6:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9c0 <chip_vm+0x5b4>
     8ba:	4448      	add	r0, r9
     8bc:	f002 faf0 	bl	2ea0 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8c0:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8c4:	eb09 0008 	add.w	r0, r9, r8
     8c8:	f000 fdb3 	bl	1432 <strlen>
     8cc:	f108 0801 	add.w	r8, r8, #1
     8d0:	4480      	add	r8, r0
     8d2:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     8d6:	e6ea      	b.n	6ae <chip_vm+0x2a2>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     8d8:	44a1      	add	r9, r4
     8da:	44a0      	add	r8, r4
     8dc:	2303      	movs	r3, #3
     8de:	2200      	movs	r2, #0
     8e0:	f899 1006 	ldrb.w	r1, [r9, #6]
     8e4:	f898 0006 	ldrb.w	r0, [r8, #6]
     8e8:	f000 fe98 	bl	161c <gfx_blit>
				break;
     8ec:	e6df      	b.n	6ae <chip_vm+0x2a2>
				noise((x<<4)+y);
     8ee:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8f2:	f002 f867 	bl	29c4 <noise>
				break;
     8f6:	e6da      	b.n	6ae <chip_vm+0x2a2>
				key_tone(vms.var[x],vms.var[y],true);
     8f8:	44a1      	add	r9, r4
     8fa:	44a0      	add	r8, r4
     8fc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     900:	f899 1006 	ldrb.w	r1, [r9, #6]
     904:	f898 0006 	ldrb.w	r0, [r8, #6]
     908:	f002 f848 	bl	299c <key_tone>
				break;
     90c:	e6cf      	b.n	6ae <chip_vm+0x2a2>
				vms.stack[++vms.sp]=vms.var[x];
     90e:	7923      	ldrb	r3, [r4, #4]
     910:	3301      	adds	r3, #1
     912:	b2db      	uxtb	r3, r3
     914:	7123      	strb	r3, [r4, #4]
     916:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     91a:	44a0      	add	r8, r4
     91c:	f898 2006 	ldrb.w	r2, [r8, #6]
     920:	835a      	strh	r2, [r3, #26]
				break;
     922:	e6c4      	b.n	6ae <chip_vm+0x2a2>
				vms.var[x]=vms.stack[vms.sp--];
     924:	7923      	ldrb	r3, [r4, #4]
     926:	1e5a      	subs	r2, r3, #1
     928:	7122      	strb	r2, [r4, #4]
     92a:	44a0      	add	r8, r4
     92c:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     930:	8b5b      	ldrh	r3, [r3, #26]
     932:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     936:	e6ba      	b.n	6ae <chip_vm+0x2a2>
				{ 	vmode_params_t *vparams=get_video_params();
     938:	f002 fdca 	bl	34d0 <get_video_params>
					vms.var[x]=vparams->hres;
     93c:	44a0      	add	r8, r4
     93e:	8983      	ldrh	r3, [r0, #12]
     940:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     944:	e6b3      	b.n	6ae <chip_vm+0x2a2>
					vmode_params_t *vparams=get_video_params();
     946:	f002 fdc3 	bl	34d0 <get_video_params>
					vms.var[x]=vparams->vres;
     94a:	44a0      	add	r8, r4
     94c:	89c3      	ldrh	r3, [r0, #14]
     94e:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     952:	e6ac      	b.n	6ae <chip_vm+0x2a2>
			    vms.var[x] |= (1<<(y&0x7));
     954:	44a0      	add	r8, r4
     956:	f009 0907 	and.w	r9, r9, #7
     95a:	2301      	movs	r3, #1
     95c:	fa03 f309 	lsl.w	r3, r3, r9
     960:	f898 2006 	ldrb.w	r2, [r8, #6]
     964:	4313      	orrs	r3, r2
     966:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     96a:	e6a0      	b.n	6ae <chip_vm+0x2a2>
			    vms.var[x] &= ~(1<<(y&0x7));
     96c:	44a0      	add	r8, r4
     96e:	f009 0207 	and.w	r2, r9, #7
     972:	2301      	movs	r3, #1
     974:	fa03 f202 	lsl.w	r2, r3, r2
     978:	f898 3006 	ldrb.w	r3, [r8, #6]
     97c:	ea23 0302 	bic.w	r3, r3, r2
     980:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     984:	e693      	b.n	6ae <chip_vm+0x2a2>
   			    vms.var[x] ^= (1<<(y&0x7));
     986:	44a0      	add	r8, r4
     988:	f009 0907 	and.w	r9, r9, #7
     98c:	2301      	movs	r3, #1
     98e:	fa03 f309 	lsl.w	r3, r3, r9
     992:	f898 2006 	ldrb.w	r2, [r8, #6]
     996:	4053      	eors	r3, r2
     998:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     99c:	e687      	b.n	6ae <chip_vm+0x2a2>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     99e:	44a0      	add	r8, r4
     9a0:	f898 3006 	ldrb.w	r3, [r8, #6]
     9a4:	f009 0907 	and.w	r9, r9, #7
     9a8:	fa43 f309 	asr.w	r3, r3, r9
     9ac:	f013 0f01 	tst.w	r3, #1
     9b0:	f43f ae7d 	beq.w	6ae <chip_vm+0x2a2>
     9b4:	8823      	ldrh	r3, [r4, #0]
     9b6:	3302      	adds	r3, #2
     9b8:	8023      	strh	r3, [r4, #0]
     9ba:	e678      	b.n	6ae <chip_vm+0x2a2>
     9bc:	200006a8 	.word	0x200006a8
     9c0:	200006e4 	.word	0x200006e4
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     9c4:	44a0      	add	r8, r4
     9c6:	f898 3006 	ldrb.w	r3, [r8, #6]
     9ca:	f009 0907 	and.w	r9, r9, #7
     9ce:	fa43 f309 	asr.w	r3, r3, r9
     9d2:	f013 0f01 	tst.w	r3, #1
     9d6:	f47f ae6a 	bne.w	6ae <chip_vm+0x2a2>
     9da:	8823      	ldrh	r3, [r4, #0]
     9dc:	3302      	adds	r3, #2
     9de:	8023      	strh	r3, [r4, #0]
     9e0:	e665      	b.n	6ae <chip_vm+0x2a2>
			    vms.var[15]=gfx_get_pixel(x,y);
     9e2:	4649      	mov	r1, r9
     9e4:	4640      	mov	r0, r8
     9e6:	f000 ff4f 	bl	1888 <gfx_get_pixel>
     9ea:	7560      	strb	r0, [r4, #21]
				break;  	
     9ec:	e65f      	b.n	6ae <chip_vm+0x2a2>
			vms.ix=caddr(vms.b1,vms.b2);
     9ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9f2:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9f6:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9f8:	4a9a      	ldr	r2, [pc, #616]	; (c64 <chip_vm+0x858>)
     9fa:	7812      	ldrb	r2, [r2, #0]
     9fc:	b90a      	cbnz	r2, a02 <chip_vm+0x5f6>
				vms.ix<<=1;
     9fe:	005b      	lsls	r3, r3, #1
     a00:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     a02:	2300      	movs	r3, #0
     a04:	7163      	strb	r3, [r4, #5]
			break;
     a06:	e652      	b.n	6ae <chip_vm+0x2a2>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     a08:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     a0c:	f3c3 030b 	ubfx	r3, r3, #0, #12
     a10:	79a2      	ldrb	r2, [r4, #6]
     a12:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     a16:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     a18:	4a92      	ldr	r2, [pc, #584]	; (c64 <chip_vm+0x858>)
     a1a:	7812      	ldrb	r2, [r2, #0]
     a1c:	2a00      	cmp	r2, #0
     a1e:	f47f ae46 	bne.w	6ae <chip_vm+0x2a2>
				vms.pc<<=1;
     a22:	005b      	lsls	r3, r3, #1
     a24:	8023      	strh	r3, [r4, #0]
     a26:	e642      	b.n	6ae <chip_vm+0x2a2>
			vms.var[x]=rand()%vms.b2;
     a28:	f7ff fce2 	bl	3f0 <rand>
     a2c:	44a0      	add	r8, r4
     a2e:	7e63      	ldrb	r3, [r4, #25]
     a30:	fb90 f2f3 	sdiv	r2, r0, r3
     a34:	fb02 0013 	mls	r0, r2, r3, r0
     a38:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     a3c:	e637      	b.n	6ae <chip_vm+0x2a2>
			if (!n){
     a3e:	f013 030f 	ands.w	r3, r3, #15
     a42:	d11f      	bne.n	a84 <chip_vm+0x678>
				if (vms.sprite_mem==RAM_MEM){
     a44:	7963      	ldrb	r3, [r4, #5]
     a46:	b97b      	cbnz	r3, a68 <chip_vm+0x65c>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     a48:	44a1      	add	r9, r4
     a4a:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a4e:	44a0      	add	r8, r4
     a50:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a54:	8863      	ldrh	r3, [r4, #2]
     a56:	4a84      	ldr	r2, [pc, #528]	; (c68 <chip_vm+0x85c>)
     a58:	4413      	add	r3, r2
     a5a:	9300      	str	r3, [sp, #0]
     a5c:	2310      	movs	r3, #16
     a5e:	461a      	mov	r2, r3
     a60:	f000 ff38 	bl	18d4 <gfx_sprite>
     a64:	7560      	strb	r0, [r4, #21]
     a66:	e622      	b.n	6ae <chip_vm+0x2a2>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     a68:	44a1      	add	r9, r4
     a6a:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a6e:	44a0      	add	r8, r4
     a70:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a74:	8863      	ldrh	r3, [r4, #2]
     a76:	9300      	str	r3, [sp, #0]
     a78:	2310      	movs	r3, #16
     a7a:	461a      	mov	r2, r3
     a7c:	f000 ff2a 	bl	18d4 <gfx_sprite>
     a80:	7560      	strb	r0, [r4, #21]
     a82:	e614      	b.n	6ae <chip_vm+0x2a2>
				if (vms.sprite_mem==RAM_MEM){
     a84:	7962      	ldrb	r2, [r4, #5]
     a86:	b97a      	cbnz	r2, aa8 <chip_vm+0x69c>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     a88:	44a1      	add	r9, r4
     a8a:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a8e:	44a0      	add	r8, r4
     a90:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a94:	8862      	ldrh	r2, [r4, #2]
     a96:	f8df e1d0 	ldr.w	lr, [pc, #464]	; c68 <chip_vm+0x85c>
     a9a:	4472      	add	r2, lr
     a9c:	9200      	str	r2, [sp, #0]
     a9e:	2208      	movs	r2, #8
     aa0:	f000 ff18 	bl	18d4 <gfx_sprite>
     aa4:	7560      	strb	r0, [r4, #21]
     aa6:	e602      	b.n	6ae <chip_vm+0x2a2>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     aa8:	44a1      	add	r9, r4
     aaa:	f999 1006 	ldrsb.w	r1, [r9, #6]
     aae:	44a0      	add	r8, r4
     ab0:	f998 0006 	ldrsb.w	r0, [r8, #6]
     ab4:	8862      	ldrh	r2, [r4, #2]
     ab6:	9200      	str	r2, [sp, #0]
     ab8:	2208      	movs	r2, #8
     aba:	f000 ff0b 	bl	18d4 <gfx_sprite>
     abe:	7560      	strb	r0, [r4, #21]
     ac0:	e5f5      	b.n	6ae <chip_vm+0x2a2>
				switch(vms.b2){
     ac2:	2b9e      	cmp	r3, #158	; 0x9e
     ac4:	d003      	beq.n	ace <chip_vm+0x6c2>
     ac6:	2ba1      	cmp	r3, #161	; 0xa1
     ac8:	d00d      	beq.n	ae6 <chip_vm+0x6da>
					return CHIP_BAD_OPCODE;
     aca:	2002      	movs	r0, #2
     acc:	e171      	b.n	db2 <chip_vm+0x9a6>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     ace:	44a0      	add	r8, r4
     ad0:	f898 0006 	ldrb.w	r0, [r8, #6]
     ad4:	f000 fb82 	bl	11dc <btn_query_down>
     ad8:	2800      	cmp	r0, #0
     ada:	f43f ade8 	beq.w	6ae <chip_vm+0x2a2>
     ade:	8823      	ldrh	r3, [r4, #0]
     ae0:	3302      	adds	r3, #2
     ae2:	8023      	strh	r3, [r4, #0]
     ae4:	e5e3      	b.n	6ae <chip_vm+0x2a2>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     ae6:	44a0      	add	r8, r4
     ae8:	f898 0006 	ldrb.w	r0, [r8, #6]
     aec:	f000 fb76 	bl	11dc <btn_query_down>
     af0:	2800      	cmp	r0, #0
     af2:	f47f addc 	bne.w	6ae <chip_vm+0x2a2>
     af6:	8823      	ldrh	r3, [r4, #0]
     af8:	3302      	adds	r3, #2
     afa:	8023      	strh	r3, [r4, #0]
     afc:	e5d7      	b.n	6ae <chip_vm+0x2a2>
			switch(vms.b2){
     afe:	3b01      	subs	r3, #1
     b00:	2b84      	cmp	r3, #132	; 0x84
     b02:	f200 8144 	bhi.w	d8e <chip_vm+0x982>
     b06:	e8df f013 	tbh	[pc, r3, lsl #1]
     b0a:	0085      	.short	0x0085
     b0c:	01420142 	.word	0x01420142
     b10:	01420142 	.word	0x01420142
     b14:	008b0142 	.word	0x008b0142
     b18:	01420142 	.word	0x01420142
     b1c:	01420091 	.word	0x01420091
     b20:	01420142 	.word	0x01420142
     b24:	01420142 	.word	0x01420142
     b28:	01420142 	.word	0x01420142
     b2c:	01420142 	.word	0x01420142
     b30:	00970142 	.word	0x00970142
     b34:	01420142 	.word	0x01420142
     b38:	0142009d 	.word	0x0142009d
     b3c:	01420142 	.word	0x01420142
     b40:	01420142 	.word	0x01420142
     b44:	014200a5 	.word	0x014200a5
     b48:	01420142 	.word	0x01420142
     b4c:	01420142 	.word	0x01420142
     b50:	01420142 	.word	0x01420142
     b54:	01420142 	.word	0x01420142
     b58:	00b50142 	.word	0x00b50142
     b5c:	01420142 	.word	0x01420142
     b60:	01420142 	.word	0x01420142
     b64:	01420142 	.word	0x01420142
     b68:	014200c4 	.word	0x014200c4
     b6c:	00d20142 	.word	0x00d20142
     b70:	01420142 	.word	0x01420142
     b74:	01420142 	.word	0x01420142
     b78:	01420142 	.word	0x01420142
     b7c:	01420142 	.word	0x01420142
     b80:	01420142 	.word	0x01420142
     b84:	01420142 	.word	0x01420142
     b88:	01420142 	.word	0x01420142
     b8c:	01420142 	.word	0x01420142
     b90:	01420142 	.word	0x01420142
     b94:	01420142 	.word	0x01420142
     b98:	01420142 	.word	0x01420142
     b9c:	01420142 	.word	0x01420142
     ba0:	01420142 	.word	0x01420142
     ba4:	01420142 	.word	0x01420142
     ba8:	01420142 	.word	0x01420142
     bac:	01420142 	.word	0x01420142
     bb0:	00f70142 	.word	0x00f70142
     bb4:	01420142 	.word	0x01420142
     bb8:	01420142 	.word	0x01420142
     bbc:	01420142 	.word	0x01420142
     bc0:	01420142 	.word	0x01420142
     bc4:	01420142 	.word	0x01420142
     bc8:	01420142 	.word	0x01420142
     bcc:	01420142 	.word	0x01420142
     bd0:	01000142 	.word	0x01000142
     bd4:	01420142 	.word	0x01420142
     bd8:	01420142 	.word	0x01420142
     bdc:	01420142 	.word	0x01420142
     be0:	01420142 	.word	0x01420142
     be4:	01420142 	.word	0x01420142
     be8:	01420142 	.word	0x01420142
     bec:	01420142 	.word	0x01420142
     bf0:	010c0109 	.word	0x010c0109
     bf4:	01420142 	.word	0x01420142
     bf8:	01420142 	.word	0x01420142
     bfc:	01420142 	.word	0x01420142
     c00:	01420142 	.word	0x01420142
     c04:	01420142 	.word	0x01420142
     c08:	01420142 	.word	0x01420142
     c0c:	01420142 	.word	0x01420142
     c10:	01210142 	.word	0x01210142
				sprite_bpp=(vms.b1&0xf)/2; 
     c14:	ea4f 0858 	mov.w	r8, r8, lsr #1
     c18:	4b14      	ldr	r3, [pc, #80]	; (c6c <chip_vm+0x860>)
     c1a:	f883 8000 	strb.w	r8, [r3]
				break;
     c1e:	e546      	b.n	6ae <chip_vm+0x2a2>
				vms.var[x]=game_timer;
     c20:	4b13      	ldr	r3, [pc, #76]	; (c70 <chip_vm+0x864>)
     c22:	881b      	ldrh	r3, [r3, #0]
     c24:	44a0      	add	r8, r4
     c26:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     c2a:	e540      	b.n	6ae <chip_vm+0x2a2>
				vms.var[x]=btn_wait_any();
     c2c:	f000 fb0a 	bl	1244 <btn_wait_any>
     c30:	44a0      	add	r8, r4
     c32:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     c36:	e53a      	b.n	6ae <chip_vm+0x2a2>
				game_timer=vms.var[x];
     c38:	44a0      	add	r8, r4
     c3a:	f898 2006 	ldrb.w	r2, [r8, #6]
     c3e:	4b0c      	ldr	r3, [pc, #48]	; (c70 <chip_vm+0x864>)
     c40:	801a      	strh	r2, [r3, #0]
				break;
     c42:	e534      	b.n	6ae <chip_vm+0x2a2>
				tone(523,vms.var[x]);
     c44:	44a0      	add	r8, r4
     c46:	f898 1006 	ldrb.w	r1, [r8, #6]
     c4a:	f240 200b 	movw	r0, #523	; 0x20b
     c4e:	f001 fe7f 	bl	2950 <tone>
				break;
     c52:	e52c      	b.n	6ae <chip_vm+0x2a2>
				vms.ix += vms.var[x];
     c54:	44a0      	add	r8, r4
     c56:	f898 3006 	ldrb.w	r3, [r8, #6]
     c5a:	8862      	ldrh	r2, [r4, #2]
     c5c:	4413      	add	r3, r2
     c5e:	8063      	strh	r3, [r4, #2]
				break;
     c60:	e525      	b.n	6ae <chip_vm+0x2a2>
     c62:	bf00      	nop
     c64:	200006a8 	.word	0x200006a8
     c68:	200006e4 	.word	0x200006e4
     c6c:	200001ac 	.word	0x200001ac
     c70:	20004e74 	.word	0x20004e74
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     c74:	44a0      	add	r8, r4
     c76:	f898 3006 	ldrb.w	r3, [r8, #6]
     c7a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     c7e:	4a50      	ldr	r2, [pc, #320]	; (dc0 <chip_vm+0x9b4>)
     c80:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c84:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c86:	2301      	movs	r3, #1
     c88:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     c8a:	2000      	movs	r0, #0
     c8c:	f002 f816 	bl	2cbc <select_font>
				break;
     c90:	e50d      	b.n	6ae <chip_vm+0x2a2>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c92:	44a0      	add	r8, r4
     c94:	f898 3006 	ldrb.w	r3, [r8, #6]
     c98:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c9c:	4a49      	ldr	r2, [pc, #292]	; (dc4 <chip_vm+0x9b8>)
     c9e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     ca2:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     ca4:	2001      	movs	r0, #1
     ca6:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     ca8:	f002 f808 	bl	2cbc <select_font>
				break;
     cac:	e4ff      	b.n	6ae <chip_vm+0x2a2>
				n=vms.var[x];
     cae:	44a0      	add	r8, r4
     cb0:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     cb4:	4a44      	ldr	r2, [pc, #272]	; (dc8 <chip_vm+0x9bc>)
     cb6:	fba2 0301 	umull	r0, r3, r2, r1
     cba:	08db      	lsrs	r3, r3, #3
     cbc:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     cc0:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     cc4:	f884 005e 	strb.w	r0, [r4, #94]	; 0x5e
				block[1]=n%10;
     cc8:	b2db      	uxtb	r3, r3
     cca:	fba2 0203 	umull	r0, r2, r2, r3
     cce:	08d2      	lsrs	r2, r2, #3
     cd0:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     cd4:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     cd8:	f884 305d 	strb.w	r3, [r4, #93]	; 0x5d
				block[0]=n/10;
     cdc:	fba7 2301 	umull	r2, r3, r7, r1
     ce0:	095b      	lsrs	r3, r3, #5
     ce2:	f884 305c 	strb.w	r3, [r4, #92]	; 0x5c
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     ce6:	8863      	ldrh	r3, [r4, #2]
     ce8:	2203      	movs	r2, #3
     cea:	4938      	ldr	r1, [pc, #224]	; (dcc <chip_vm+0x9c0>)
     cec:	4419      	add	r1, r3
     cee:	f104 005c 	add.w	r0, r4, #92	; 0x5c
     cf2:	f000 fb94 	bl	141e <move>
				break;
     cf6:	e4da      	b.n	6ae <chip_vm+0x2a2>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     cf8:	8863      	ldrh	r3, [r4, #2]
     cfa:	f108 0201 	add.w	r2, r8, #1
     cfe:	4933      	ldr	r1, [pc, #204]	; (dcc <chip_vm+0x9c0>)
     d00:	4419      	add	r1, r3
     d02:	4630      	mov	r0, r6
     d04:	f000 fb8b 	bl	141e <move>
				break;
     d08:	e4d1      	b.n	6ae <chip_vm+0x2a2>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     d0a:	8863      	ldrh	r3, [r4, #2]
     d0c:	f108 0201 	add.w	r2, r8, #1
     d10:	4631      	mov	r1, r6
     d12:	482e      	ldr	r0, [pc, #184]	; (dcc <chip_vm+0x9c0>)
     d14:	4418      	add	r0, r3
     d16:	f000 fb82 	bl	141e <move>
				break;
     d1a:	e4c8      	b.n	6ae <chip_vm+0x2a2>
				vms.s=(x&0x7)*FLASH_SECTOR_SIZE; // flash sector {0..7}
     d1c:	0352      	lsls	r2, r2, #13
     d1e:	82e2      	strh	r2, [r4, #22]
				break;			
     d20:	e4c5      	b.n	6ae <chip_vm+0x2a2>
				if (video_mode==VM_BPCHIP){
     d22:	4b2b      	ldr	r3, [pc, #172]	; (dd0 <chip_vm+0x9c4>)
     d24:	781b      	ldrb	r3, [r3, #0]
     d26:	b953      	cbnz	r3, d3e <chip_vm+0x932>
					flash_write_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d28:	8ae3      	ldrh	r3, [r4, #22]
     d2a:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d2e:	8860      	ldrh	r0, [r4, #2]
     d30:	f108 0201 	add.w	r2, r8, #1
     d34:	4631      	mov	r1, r6
     d36:	4418      	add	r0, r3
     d38:	f000 f988 	bl	104c <flash_write_block>
     d3c:	e4b7      	b.n	6ae <chip_vm+0x2a2>
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
     d3e:	f108 0201 	add.w	r2, r8, #1
     d42:	4631      	mov	r1, r6
     d44:	4823      	ldr	r0, [pc, #140]	; (dd4 <chip_vm+0x9c8>)
     d46:	f000 f981 	bl	104c <flash_write_block>
     d4a:	e4b0      	b.n	6ae <chip_vm+0x2a2>
				if (video_mode==VM_BPCHIP){
     d4c:	4b20      	ldr	r3, [pc, #128]	; (dd0 <chip_vm+0x9c4>)
     d4e:	781b      	ldrb	r3, [r3, #0]
     d50:	b953      	cbnz	r3, d68 <chip_vm+0x95c>
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d52:	8ae3      	ldrh	r3, [r4, #22]
     d54:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d58:	8860      	ldrh	r0, [r4, #2]
     d5a:	f108 0201 	add.w	r2, r8, #1
     d5e:	4631      	mov	r1, r6
     d60:	4418      	add	r0, r3
     d62:	f000 f959 	bl	1018 <flash_read_block>
     d66:	e4a2      	b.n	6ae <chip_vm+0x2a2>
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     d68:	f108 0201 	add.w	r2, r8, #1
     d6c:	4631      	mov	r1, r6
     d6e:	4819      	ldr	r0, [pc, #100]	; (dd4 <chip_vm+0x9c8>)
     d70:	f000 f952 	bl	1018 <flash_read_block>
     d74:	e49b      	b.n	6ae <chip_vm+0x2a2>
	    switch (vms.b1>>4){
     d76:	f04f 0800 	mov.w	r8, #0
     d7a:	e451      	b.n	620 <chip_vm+0x214>
			}else switch(vms.b2){
     d7c:	f04f 0800 	mov.w	r8, #0
     d80:	e44e      	b.n	620 <chip_vm+0x214>
				exit_code=CHIP_BAD_OPCODE;
     d82:	f04f 0802 	mov.w	r8, #2
     d86:	e44b      	b.n	620 <chip_vm+0x214>
				exit_code=CHIP_BAD_OPCODE;
     d88:	f04f 0802 	mov.w	r8, #2
     d8c:	e448      	b.n	620 <chip_vm+0x214>
				}
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     d8e:	f04f 0802 	mov.w	r8, #2
     d92:	e445      	b.n	620 <chip_vm+0x214>
			exit_code=CHIP_BAD_ADDR;
     d94:	f04f 0803 	mov.w	r8, #3
     d98:	e001      	b.n	d9e <chip_vm+0x992>
     d9a:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     d9e:	2002      	movs	r0, #2
     da0:	f001 ff8c 	bl	2cbc <select_font>
	set_keymap(default_kmap);
     da4:	480c      	ldr	r0, [pc, #48]	; (dd8 <chip_vm+0x9cc>)
     da6:	f000 f9cb 	bl	1140 <set_keymap>
	set_video_mode(VM_BPCHIP);
     daa:	2000      	movs	r0, #0
     dac:	f002 fb66 	bl	347c <set_video_mode>
	return exit_code;
     db0:	4640      	mov	r0, r8
}//schipp()
     db2:	b009      	add	sp, #36	; 0x24
     db4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     db8:	f04f 0801 	mov.w	r8, #1
     dbc:	e7ef      	b.n	d9e <chip_vm+0x992>
     dbe:	bf00      	nop
     dc0:	00003cc4 	.word	0x00003cc4
     dc4:	00003c24 	.word	0x00003c24
     dc8:	cccccccd 	.word	0xcccccccd
     dcc:	200006e4 	.word	0x200006e4
     dd0:	200006a8 	.word	0x200006a8
     dd4:	0001fff0 	.word	0x0001fff0
     dd8:	00003d24 	.word	0x00003d24

00000ddc <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     ddc:	2200      	movs	r2, #0
     dde:	4b0f      	ldr	r3, [pc, #60]	; (e1c <flash_enable+0x40>)
     de0:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     de2:	4b0f      	ldr	r3, [pc, #60]	; (e20 <flash_enable+0x44>)
     de4:	681b      	ldr	r3, [r3, #0]
     de6:	f013 0f01 	tst.w	r3, #1
     dea:	d10b      	bne.n	e04 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     dec:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     df0:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     df4:	6813      	ldr	r3, [r2, #0]
     df6:	f043 0301 	orr.w	r3, r3, #1
     dfa:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     dfc:	6813      	ldr	r3, [r2, #0]
     dfe:	f013 0f02 	tst.w	r3, #2
     e02:	d0fb      	beq.n	dfc <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     e04:	4b07      	ldr	r3, [pc, #28]	; (e24 <flash_enable+0x48>)
     e06:	4a08      	ldr	r2, [pc, #32]	; (e28 <flash_enable+0x4c>)
     e08:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     e0a:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     e0e:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     e10:	6918      	ldr	r0, [r3, #16]
     e12:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     e16:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     e1a:	4770      	bx	lr
     e1c:	20000290 	.word	0x20000290
     e20:	40021000 	.word	0x40021000
     e24:	40022000 	.word	0x40022000
     e28:	45670123 	.word	0x45670123

00000e2c <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     e2c:	4a0b      	ldr	r2, [pc, #44]	; (e5c <flash_write_hword+0x30>)
     e2e:	68d3      	ldr	r3, [r2, #12]
     e30:	f013 0f01 	tst.w	r3, #1
     e34:	d1fb      	bne.n	e2e <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e36:	4b09      	ldr	r3, [pc, #36]	; (e5c <flash_write_hword+0x30>)
     e38:	68da      	ldr	r2, [r3, #12]
     e3a:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     e3e:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     e40:	2201      	movs	r2, #1
     e42:	611a      	str	r2, [r3, #16]
	*address=hword;
     e44:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     e46:	68da      	ldr	r2, [r3, #12]
     e48:	f012 0f01 	tst.w	r2, #1
     e4c:	d003      	beq.n	e56 <flash_write_hword+0x2a>
     e4e:	68da      	ldr	r2, [r3, #12]
     e50:	f012 0f20 	tst.w	r2, #32
     e54:	d0f7      	beq.n	e46 <flash_write_hword+0x1a>
	return *address==hword;
}
     e56:	2001      	movs	r0, #1
     e58:	4770      	bx	lr
     e5a:	bf00      	nop
     e5c:	40022000 	.word	0x40022000

00000e60 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e60:	283f      	cmp	r0, #63	; 0x3f
     e62:	d914      	bls.n	e8e <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     e64:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     e66:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     e68:	1c81      	adds	r1, r0, #2
     e6a:	8802      	ldrh	r2, [r0, #0]
     e6c:	f64f 73ff 	movw	r3, #65535	; 0xffff
     e70:	429a      	cmp	r2, r3
     e72:	d110      	bne.n	e96 <flash_erase_row+0x36>
     e74:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     e78:	460b      	mov	r3, r1
     e7a:	f64f 74ff 	movw	r4, #65535	; 0xffff
     e7e:	f833 2b02 	ldrh.w	r2, [r3], #2
     e82:	42a2      	cmp	r2, r4
     e84:	d107      	bne.n	e96 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e86:	429d      	cmp	r5, r3
     e88:	d1f9      	bne.n	e7e <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     e8a:	2001      	movs	r0, #1
     e8c:	e02f      	b.n	eee <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e8e:	2000      	movs	r0, #0
     e90:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     e92:	2000      	movs	r0, #0
     e94:	e02b      	b.n	eee <flash_erase_row+0x8e>
     e96:	4b17      	ldr	r3, [pc, #92]	; (ef4 <flash_erase_row+0x94>)
     e98:	691b      	ldr	r3, [r3, #16]
     e9a:	f013 0f80 	tst.w	r3, #128	; 0x80
     e9e:	d1f8      	bne.n	e92 <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     ea0:	4b14      	ldr	r3, [pc, #80]	; (ef4 <flash_erase_row+0x94>)
     ea2:	68da      	ldr	r2, [r3, #12]
     ea4:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     ea8:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     eaa:	2202      	movs	r2, #2
     eac:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     eae:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     eb0:	691a      	ldr	r2, [r3, #16]
     eb2:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     eb6:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     eb8:	68da      	ldr	r2, [r3, #12]
     eba:	f012 0f01 	tst.w	r2, #1
     ebe:	d003      	beq.n	ec8 <flash_erase_row+0x68>
     ec0:	68da      	ldr	r2, [r3, #12]
     ec2:	f012 0f20 	tst.w	r2, #32
     ec6:	d0f7      	beq.n	eb8 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     ec8:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     eca:	f64f 72ff 	movw	r2, #65535	; 0xffff
     ece:	4293      	cmp	r3, r2
     ed0:	d107      	bne.n	ee2 <flash_erase_row+0x82>
     ed2:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     ed6:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     eda:	4293      	cmp	r3, r2
     edc:	d101      	bne.n	ee2 <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     ede:	4281      	cmp	r1, r0
     ee0:	d1f9      	bne.n	ed6 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     ee2:	f64f 70ff 	movw	r0, #65535	; 0xffff
     ee6:	4283      	cmp	r3, r0
     ee8:	bf14      	ite	ne
     eea:	2000      	movne	r0, #0
     eec:	2001      	moveq	r0, #1
}
     eee:	bc30      	pop	{r4, r5}
     ef0:	4770      	bx	lr
     ef2:	bf00      	nop
     ef4:	40022000 	.word	0x40022000

00000ef8 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     ef8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     efa:	4b1c      	ldr	r3, [pc, #112]	; (f6c <flash_sync+0x74>)
     efc:	781b      	ldrb	r3, [r3, #0]
     efe:	f013 0f01 	tst.w	r3, #1
     f02:	d102      	bne.n	f0a <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     f04:	2301      	movs	r3, #1
}
     f06:	4618      	mov	r0, r3
     f08:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     f0a:	4b18      	ldr	r3, [pc, #96]	; (f6c <flash_sync+0x74>)
     f0c:	7858      	ldrb	r0, [r3, #1]
     f0e:	f7ff ffa7 	bl	e60 <flash_erase_row>
     f12:	4603      	mov	r3, r0
     f14:	2800      	cmp	r0, #0
     f16:	d0f6      	beq.n	f06 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     f18:	4e14      	ldr	r6, [pc, #80]	; (f6c <flash_sync+0x74>)
     f1a:	7875      	ldrb	r5, [r6, #1]
     f1c:	02ad      	lsls	r5, r5, #10
     f1e:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f20:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     f22:	f64f 77ff 	movw	r7, #65535	; 0xffff
     f26:	e004      	b.n	f32 <flash_sync+0x3a>
		dest++;
     f28:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f2a:	3401      	adds	r4, #1
     f2c:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f30:	d00a      	beq.n	f48 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     f32:	f836 1b02 	ldrh.w	r1, [r6], #2
     f36:	42b9      	cmp	r1, r7
     f38:	d0f6      	beq.n	f28 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     f3a:	4628      	mov	r0, r5
     f3c:	f7ff ff76 	bl	e2c <flash_write_hword>
     f40:	2800      	cmp	r0, #0
     f42:	d1f1      	bne.n	f28 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     f44:	2c00      	cmp	r4, #0
     f46:	dd04      	ble.n	f52 <flash_sync+0x5a>
     f48:	4a08      	ldr	r2, [pc, #32]	; (f6c <flash_sync+0x74>)
     f4a:	7813      	ldrb	r3, [r2, #0]
     f4c:	f023 0304 	bic.w	r3, r3, #4
     f50:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     f52:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f56:	d106      	bne.n	f66 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     f58:	4a04      	ldr	r2, [pc, #16]	; (f6c <flash_sync+0x74>)
     f5a:	7813      	ldrb	r3, [r2, #0]
     f5c:	f023 0301 	bic.w	r3, r3, #1
     f60:	7013      	strb	r3, [r2, #0]
			return 1;
     f62:	2301      	movs	r3, #1
     f64:	e7cf      	b.n	f06 <flash_sync+0xe>
		return 0;
     f66:	2300      	movs	r3, #0
     f68:	e7cd      	b.n	f06 <flash_sync+0xe>
     f6a:	bf00      	nop
     f6c:	20000290 	.word	0x20000290

00000f70 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     f70:	2200      	movs	r2, #0
     f72:	4b01      	ldr	r3, [pc, #4]	; (f78 <flash_flush+0x8>)
     f74:	701a      	strb	r2, [r3, #0]
     f76:	4770      	bx	lr
     f78:	20000290 	.word	0x20000290

00000f7c <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     f7c:	b508      	push	{r3, lr}
	flash_sync();
     f7e:	f7ff ffbb 	bl	ef8 <flash_sync>
	row_buff.flags=0;
     f82:	2200      	movs	r2, #0
     f84:	4b06      	ldr	r3, [pc, #24]	; (fa0 <flash_disable+0x24>)
     f86:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     f88:	4a06      	ldr	r2, [pc, #24]	; (fa4 <flash_disable+0x28>)
     f8a:	6913      	ldr	r3, [r2, #16]
     f8c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     f90:	6113      	str	r3, [r2, #16]
	RCC->CR&=~RCC_CR_HSION;
     f92:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
     f96:	6813      	ldr	r3, [r2, #0]
     f98:	f023 0301 	bic.w	r3, r3, #1
     f9c:	6013      	str	r3, [r2, #0]
     f9e:	bd08      	pop	{r3, pc}
     fa0:	20000290 	.word	0x20000290
     fa4:	40022000 	.word	0x40022000

00000fa8 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     fa8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     fac:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     fb0:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     fb4:	d92c      	bls.n	1010 <flash_write_byte+0x68>
     fb6:	460e      	mov	r6, r1
     fb8:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     fba:	4b16      	ldr	r3, [pc, #88]	; (1014 <flash_write_byte+0x6c>)
     fbc:	785b      	ldrb	r3, [r3, #1]
     fbe:	4598      	cmp	r8, r3
     fc0:	d019      	beq.n	ff6 <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     fc2:	f7ff ff99 	bl	ef8 <flash_sync>
     fc6:	4603      	mov	r3, r0
     fc8:	b1f8      	cbz	r0, 100a <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     fca:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     fce:	f023 0303 	bic.w	r3, r3, #3
     fd2:	4a10      	ldr	r2, [pc, #64]	; (1014 <flash_write_byte+0x6c>)
     fd4:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     fd8:	f833 4b02 	ldrh.w	r4, [r3], #2
     fdc:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     fe0:	42ab      	cmp	r3, r5
     fe2:	d1f9      	bne.n	fd8 <flash_write_byte+0x30>
	row_buff.row=r;
     fe4:	4a0b      	ldr	r2, [pc, #44]	; (1014 <flash_write_byte+0x6c>)
     fe6:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     fea:	7813      	ldrb	r3, [r2, #0]
     fec:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     ff0:	f043 0302 	orr.w	r3, r3, #2
     ff4:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     ff6:	4a07      	ldr	r2, [pc, #28]	; (1014 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     ff8:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     ffc:	4413      	add	r3, r2
     ffe:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
    1000:	7813      	ldrb	r3, [r2, #0]
    1002:	f043 0301 	orr.w	r3, r3, #1
    1006:	7013      	strb	r3, [r2, #0]
	return 1;
    1008:	2301      	movs	r3, #1
}
    100a:	4618      	mov	r0, r3
    100c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
    1010:	2300      	movs	r3, #0
    1012:	e7fa      	b.n	100a <flash_write_byte+0x62>
    1014:	20000290 	.word	0x20000290

00001018 <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    1018:	2a00      	cmp	r2, #0
    101a:	dd13      	ble.n	1044 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
    101c:	b410      	push	{r4}
    101e:	4603      	mov	r3, r0
    1020:	3901      	subs	r1, #1
    1022:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
    1024:	4a08      	ldr	r2, [pc, #32]	; (1048 <flash_read_block+0x30>)
    1026:	7854      	ldrb	r4, [r2, #1]
    1028:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
    102c:	bf03      	ittte	eq
    102e:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
    1032:	18a4      	addeq	r4, r4, r2
    1034:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
    1036:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    1038:	f801 4f01 	strb.w	r4, [r1, #1]!
    103c:	3301      	adds	r3, #1
    103e:	4283      	cmp	r3, r0
    1040:	d1f1      	bne.n	1026 <flash_read_block+0xe>
}
    1042:	bc10      	pop	{r4}
    1044:	4770      	bx	lr
    1046:	bf00      	nop
    1048:	20000290 	.word	0x20000290

0000104c <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    104c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<(void*)0x10000) return 0;
    104e:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
    1052:	d202      	bcs.n	105a <flash_write_block+0xe>
    1054:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
    1056:	4618      	mov	r0, r3
    1058:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    105a:	4604      	mov	r4, r0
    105c:	460e      	mov	r6, r1
    105e:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
    1060:	f7ff febc 	bl	ddc <flash_enable>
    1064:	4603      	mov	r3, r0
    1066:	2800      	cmp	r0, #0
    1068:	d0f5      	beq.n	1056 <flash_write_block+0xa>
	for (i=0;i<size;i++){
    106a:	2f00      	cmp	r7, #0
    106c:	dd0c      	ble.n	1088 <flash_write_block+0x3c>
    106e:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
    1070:	1c65      	adds	r5, r4, #1
    1072:	f816 1b01 	ldrb.w	r1, [r6], #1
    1076:	4620      	mov	r0, r4
    1078:	f7ff ff96 	bl	fa8 <flash_write_byte>
    107c:	4603      	mov	r3, r0
    107e:	2800      	cmp	r0, #0
    1080:	d0e9      	beq.n	1056 <flash_write_block+0xa>
    1082:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
    1084:	42bd      	cmp	r5, r7
    1086:	d1f3      	bne.n	1070 <flash_write_block+0x24>
	flash_disable();
    1088:	f7ff ff78 	bl	f7c <flash_disable>
	return 1;
    108c:	2301      	movs	r3, #1
    108e:	e7e2      	b.n	1056 <flash_write_block+0xa>

00001090 <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
    1090:	4b0a      	ldr	r3, [pc, #40]	; (10bc <btn_mask+0x2c>)
    1092:	781b      	ldrb	r3, [r3, #0]
    1094:	4283      	cmp	r3, r0
    1096:	d00a      	beq.n	10ae <btn_mask+0x1e>
    1098:	4a09      	ldr	r2, [pc, #36]	; (10c0 <btn_mask+0x30>)
    for (i=0;i<8;i++){
    109a:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
    109c:	f812 1b01 	ldrb.w	r1, [r2], #1
    10a0:	4281      	cmp	r1, r0
    10a2:	d005      	beq.n	10b0 <btn_mask+0x20>
    for (i=0;i<8;i++){
    10a4:	3301      	adds	r3, #1
    10a6:	2b08      	cmp	r3, #8
    10a8:	d1f8      	bne.n	109c <btn_mask+0xc>
    }
    return 255;
    10aa:	20ff      	movs	r0, #255	; 0xff
}
    10ac:	4770      	bx	lr
    for (i=0;i<8;i++){
    10ae:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
    10b0:	2001      	movs	r0, #1
    10b2:	fa00 f303 	lsl.w	r3, r0, r3
    10b6:	b2d8      	uxtb	r0, r3
    10b8:	4770      	bx	lr
    10ba:	bf00      	nop
    10bc:	20000694 	.word	0x20000694
    10c0:	20000695 	.word	0x20000695

000010c4 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
    10c4:	b430      	push	{r4, r5}
    10c6:	4605      	mov	r5, r0
    10c8:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
    10ca:	2000      	movs	r0, #0
    10cc:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    10ce:	4b1b      	ldr	r3, [pc, #108]	; (113c <shift_out+0x78>)
    10d0:	e003      	b.n	10da <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
    10d2:	0052      	lsls	r2, r2, #1
    10d4:	b2d2      	uxtb	r2, r2
    while (mask){
    10d6:	3c01      	subs	r4, #1
    10d8:	d01d      	beq.n	1116 <shift_out+0x52>
        if (byte&mask){
    10da:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    10dc:	68d9      	ldr	r1, [r3, #12]
    10de:	bf14      	ite	ne
    10e0:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    10e4:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
    10e8:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10ea:	68d9      	ldr	r1, [r3, #12]
    10ec:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
    10f0:	60d9      	str	r1, [r3, #12]
        _clk_delay();
    10f2:	bf00      	nop
    10f4:	bf00      	nop
    10f6:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10f8:	68d9      	ldr	r1, [r3, #12]
    10fa:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    10fe:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
    1100:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
    1102:	6899      	ldr	r1, [r3, #8]
    1104:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
    1108:	6099      	str	r1, [r3, #8]
    110a:	2900      	cmp	r1, #0
    110c:	d0e1      	beq.n	10d2 <shift_out+0xe>
    110e:	f060 007f 	orn	r0, r0, #127	; 0x7f
    1112:	b2c0      	uxtb	r0, r0
    1114:	e7dd      	b.n	10d2 <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    1116:	4b09      	ldr	r3, [pc, #36]	; (113c <shift_out+0x78>)
    1118:	68da      	ldr	r2, [r3, #12]
    111a:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    111e:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    1120:	68da      	ldr	r2, [r3, #12]
    1122:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    1126:	60da      	str	r2, [r3, #12]
    _clk_delay();
    1128:	bf00      	nop
    112a:	bf00      	nop
    112c:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    112e:	68da      	ldr	r2, [r3, #12]
    1130:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    1134:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    1136:	bc30      	pop	{r4, r5}
    1138:	4770      	bx	lr
    113a:	bf00      	nop
    113c:	40010c00 	.word	0x40010c00

00001140 <set_keymap>:
void set_keymap(const uint8_t *kmap){
    1140:	1e43      	subs	r3, r0, #1
    1142:	4a04      	ldr	r2, [pc, #16]	; (1154 <set_keymap+0x14>)
    1144:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    1146:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    114a:	f802 1f01 	strb.w	r1, [r2, #1]!
    114e:	4283      	cmp	r3, r0
    1150:	d1f9      	bne.n	1146 <set_keymap+0x6>
}
    1152:	4770      	bx	lr
    1154:	20000693 	.word	0x20000693

00001158 <gamepad_init>:
void gamepad_init(){
    1158:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    115a:	4c0b      	ldr	r4, [pc, #44]	; (1188 <gamepad_init+0x30>)
    115c:	2202      	movs	r2, #2
    115e:	210f      	movs	r1, #15
    1160:	4620      	mov	r0, r4
    1162:	f000 fa1b 	bl	159c <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    1166:	2202      	movs	r2, #2
    1168:	210d      	movs	r1, #13
    116a:	4620      	mov	r0, r4
    116c:	f000 fa16 	bl	159c <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    1170:	2208      	movs	r2, #8
    1172:	210e      	movs	r1, #14
    1174:	4620      	mov	r0, r4
    1176:	f000 fa11 	bl	159c <config_pin>
    btn_state=0xff;
    117a:	22ff      	movs	r2, #255	; 0xff
    117c:	4b03      	ldr	r3, [pc, #12]	; (118c <gamepad_init+0x34>)
    117e:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1180:	4803      	ldr	r0, [pc, #12]	; (1190 <gamepad_init+0x38>)
    1182:	f7ff ffdd 	bl	1140 <set_keymap>
    1186:	bd10      	pop	{r4, pc}
    1188:	40010c00 	.word	0x40010c00
    118c:	200026e4 	.word	0x200026e4
    1190:	00003d24 	.word	0x00003d24

00001194 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1194:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    1196:	20fe      	movs	r0, #254	; 0xfe
    1198:	f7ff ff94 	bl	10c4 <shift_out>
    119c:	4b0c      	ldr	r3, [pc, #48]	; (11d0 <read_gamepad+0x3c>)
    119e:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    11a0:	781b      	ldrb	r3, [r3, #0]
    11a2:	f013 0f12 	tst.w	r3, #18
    11a6:	d111      	bne.n	11cc <read_gamepad+0x38>
        while (btn_state!=0xff){
    11a8:	4b09      	ldr	r3, [pc, #36]	; (11d0 <read_gamepad+0x3c>)
    11aa:	781b      	ldrb	r3, [r3, #0]
    11ac:	b2db      	uxtb	r3, r3
    11ae:	2bff      	cmp	r3, #255	; 0xff
    11b0:	d009      	beq.n	11c6 <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    11b2:	25fe      	movs	r5, #254	; 0xfe
    11b4:	4c06      	ldr	r4, [pc, #24]	; (11d0 <read_gamepad+0x3c>)
    11b6:	4628      	mov	r0, r5
    11b8:	f7ff ff84 	bl	10c4 <shift_out>
    11bc:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    11be:	7823      	ldrb	r3, [r4, #0]
    11c0:	b2db      	uxtb	r3, r3
    11c2:	2bff      	cmp	r3, #255	; 0xff
    11c4:	d1f7      	bne.n	11b6 <read_gamepad+0x22>
        };
        _reset_mcu();
    11c6:	4a03      	ldr	r2, [pc, #12]	; (11d4 <read_gamepad+0x40>)
    11c8:	4b03      	ldr	r3, [pc, #12]	; (11d8 <read_gamepad+0x44>)
    11ca:	601a      	str	r2, [r3, #0]
    11cc:	bd38      	pop	{r3, r4, r5, pc}
    11ce:	bf00      	nop
    11d0:	200026e4 	.word	0x200026e4
    11d4:	05fa0004 	.word	0x05fa0004
    11d8:	e000ed0c 	.word	0xe000ed0c

000011dc <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    11dc:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    11de:	f7ff ff57 	bl	1090 <btn_mask>
    return !(btn_state&mask);
    11e2:	4b03      	ldr	r3, [pc, #12]	; (11f0 <btn_query_down+0x14>)
    11e4:	781b      	ldrb	r3, [r3, #0]
    11e6:	4203      	tst	r3, r0
}
    11e8:	bf0c      	ite	eq
    11ea:	2001      	moveq	r0, #1
    11ec:	2000      	movne	r0, #0
    11ee:	bd08      	pop	{r3, pc}
    11f0:	200026e4 	.word	0x200026e4

000011f4 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    11f4:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11f6:	f7ff ff4b 	bl	1090 <btn_mask>
    11fa:	4606      	mov	r6, r0
    int frame_count=0;
    11fc:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    11fe:	4d06      	ldr	r5, [pc, #24]	; (1218 <btn_wait_down+0x24>)
    1200:	e000      	b.n	1204 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    1202:	2400      	movs	r4, #0
        frame_sync();
    1204:	f002 f92a 	bl	345c <frame_sync>
        if (!(btn_state&mask)){
    1208:	782b      	ldrb	r3, [r5, #0]
    120a:	4233      	tst	r3, r6
    120c:	d1f9      	bne.n	1202 <btn_wait_down+0xe>
            frame_count++;
    120e:	3401      	adds	r4, #1
    while (frame_count<3){
    1210:	2c02      	cmp	r4, #2
    1212:	ddf7      	ble.n	1204 <btn_wait_down+0x10>
        }
    }
}
    1214:	bd70      	pop	{r4, r5, r6, pc}
    1216:	bf00      	nop
    1218:	200026e4 	.word	0x200026e4

0000121c <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    121c:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    121e:	f7ff ff37 	bl	1090 <btn_mask>
    1222:	4606      	mov	r6, r0
    int frame_count=0;
    1224:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    1226:	4d06      	ldr	r5, [pc, #24]	; (1240 <btn_wait_up+0x24>)
    1228:	e000      	b.n	122c <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    122a:	2400      	movs	r4, #0
        frame_sync();
    122c:	f002 f916 	bl	345c <frame_sync>
        if ((btn_state&mask)){
    1230:	782b      	ldrb	r3, [r5, #0]
    1232:	4233      	tst	r3, r6
    1234:	d0f9      	beq.n	122a <btn_wait_up+0xe>
            frame_count++;
    1236:	3401      	adds	r4, #1
    while (frame_count<3){
    1238:	2c02      	cmp	r4, #2
    123a:	ddf7      	ble.n	122c <btn_wait_up+0x10>
        }
    }
}
    123c:	bd70      	pop	{r4, r5, r6, pc}
    123e:	bf00      	nop
    1240:	200026e4 	.word	0x200026e4

00001244 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1244:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    1246:	4b15      	ldr	r3, [pc, #84]	; (129c <btn_wait_any+0x58>)
    1248:	781c      	ldrb	r4, [r3, #0]
    124a:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    124c:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    124e:	461d      	mov	r5, r3
    1250:	e007      	b.n	1262 <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    1252:	782a      	ldrb	r2, [r5, #0]
    1254:	b2d2      	uxtb	r2, r2
    1256:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1258:	bf18      	it	ne
    125a:	3601      	addne	r6, #1
    while (frame_count<3){
    125c:	2e02      	cmp	r6, #2
    125e:	dc0a      	bgt.n	1276 <btn_wait_any+0x32>
    1260:	461c      	mov	r4, r3
        frame_sync();
    1262:	f002 f8fb 	bl	345c <frame_sync>
        if (last_state!=btn_state){
    1266:	782b      	ldrb	r3, [r5, #0]
    1268:	b2db      	uxtb	r3, r3
    126a:	42a3      	cmp	r3, r4
    126c:	d0f1      	beq.n	1252 <btn_wait_any+0xe>
            last_state=btn_state;
    126e:	782c      	ldrb	r4, [r5, #0]
    1270:	b2e4      	uxtb	r4, r4
            frame_count=0;
    1272:	2600      	movs	r6, #0
    1274:	e7f5      	b.n	1262 <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    1276:	43e3      	mvns	r3, r4
    mask>>=1;
    1278:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    127c:	b15b      	cbz	r3, 1296 <btn_wait_any+0x52>
    127e:	2200      	movs	r2, #0
    1280:	3201      	adds	r2, #1
    1282:	b2d2      	uxtb	r2, r2
    1284:	085b      	lsrs	r3, r3, #1
    1286:	d1fb      	bne.n	1280 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1288:	4b05      	ldr	r3, [pc, #20]	; (12a0 <btn_wait_any+0x5c>)
    128a:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    128c:	4620      	mov	r0, r4
    128e:	f7ff ffc5 	bl	121c <btn_wait_up>
    return btn;
}
    1292:	4620      	mov	r0, r4
    1294:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    1296:	461a      	mov	r2, r3
    1298:	e7f6      	b.n	1288 <btn_wait_any+0x44>
    129a:	bf00      	nop
    129c:	200026e4 	.word	0x200026e4
    12a0:	20000694 	.word	0x20000694

000012a4 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    12a4:	4b01      	ldr	r3, [pc, #4]	; (12ac <btn_set_value+0x8>)
    12a6:	5419      	strb	r1, [r3, r0]
    12a8:	4770      	bx	lr
    12aa:	bf00      	nop
    12ac:	20000694 	.word	0x20000694

000012b0 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    12b0:	4800      	ldr	r0, [pc, #0]	; (12b4 <get_keymap+0x4>)
    12b2:	4770      	bx	lr
    12b4:	20000694 	.word	0x20000694

000012b8 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    12b8:	4b06      	ldr	r3, [pc, #24]	; (12d4 <games_count+0x1c>)
    12ba:	691b      	ldr	r3, [r3, #16]
    12bc:	b13b      	cbz	r3, 12ce <games_count+0x16>
    12be:	4b05      	ldr	r3, [pc, #20]	; (12d4 <games_count+0x1c>)
    12c0:	2000      	movs	r0, #0
    for (i=0;;i++){
    12c2:	3001      	adds	r0, #1
    12c4:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    12c6:	691a      	ldr	r2, [r3, #16]
    12c8:	2a00      	cmp	r2, #0
    12ca:	d1fa      	bne.n	12c2 <games_count+0xa>
    12cc:	4770      	bx	lr
    for (i=0;;i++){
    12ce:	2000      	movs	r0, #0
    }
    return i;
}
    12d0:	4770      	bx	lr
    12d2:	bf00      	nop
    12d4:	20000004 	.word	0x20000004

000012d8 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    12d8:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    12da:	7803      	ldrb	r3, [r0, #0]
    12dc:	b1fb      	cbz	r3, 131e <strcmp+0x46>
    12de:	780a      	ldrb	r2, [r1, #0]
    12e0:	b17a      	cbz	r2, 1302 <strcmp+0x2a>
		if (*s1<*s2){
    12e2:	4293      	cmp	r3, r2
    12e4:	d313      	bcc.n	130e <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    12e6:	d815      	bhi.n	1314 <strcmp+0x3c>
    12e8:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    12ea:	4621      	mov	r1, r4
	while (*s1 && *s2){
    12ec:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    12f0:	b1ab      	cbz	r3, 131e <strcmp+0x46>
    12f2:	f814 2b01 	ldrb.w	r2, [r4], #1
    12f6:	b122      	cbz	r2, 1302 <strcmp+0x2a>
		if (*s1<*s2){
    12f8:	4293      	cmp	r3, r2
    12fa:	d30d      	bcc.n	1318 <strcmp+0x40>
		}else if (*s1>*s2){
    12fc:	d9f5      	bls.n	12ea <strcmp+0x12>
			result=1;
    12fe:	2001      	movs	r0, #1
    1300:	e003      	b.n	130a <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    1302:	7808      	ldrb	r0, [r1, #0]
    1304:	fab0 f080 	clz	r0, r0
    1308:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    130a:	bc10      	pop	{r4}
    130c:	4770      	bx	lr
			result=-1;
    130e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1312:	e7fa      	b.n	130a <strcmp+0x32>
			result=1;
    1314:	2001      	movs	r0, #1
    1316:	e7f8      	b.n	130a <strcmp+0x32>
			result=-1;
    1318:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    131c:	e7f5      	b.n	130a <strcmp+0x32>
		if (!*s1 && *s2){
    131e:	7808      	ldrb	r0, [r1, #0]
    1320:	3000      	adds	r0, #0
    1322:	bf18      	it	ne
    1324:	2001      	movne	r0, #1
    1326:	4240      	negs	r0, r0
    1328:	e7ef      	b.n	130a <strcmp+0x32>

0000132a <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    132a:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    132e:	b2db      	uxtb	r3, r3
    1330:	2b19      	cmp	r3, #25
    1332:	d906      	bls.n	1342 <alpha+0x18>
    1334:	3841      	subs	r0, #65	; 0x41
    1336:	b2c0      	uxtb	r0, r0
    1338:	2819      	cmp	r0, #25
    133a:	bf8c      	ite	hi
    133c:	2000      	movhi	r0, #0
    133e:	2001      	movls	r0, #1
    1340:	4770      	bx	lr
    1342:	2001      	movs	r0, #1
}
    1344:	4770      	bx	lr

00001346 <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    1346:	3830      	subs	r0, #48	; 0x30
    1348:	b2c0      	uxtb	r0, r0
}
    134a:	2809      	cmp	r0, #9
    134c:	bf8c      	ite	hi
    134e:	2000      	movhi	r0, #0
    1350:	2001      	movls	r0, #1
    1352:	4770      	bx	lr

00001354 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1354:	2860      	cmp	r0, #96	; 0x60
    1356:	bf84      	itt	hi
    1358:	3820      	subhi	r0, #32
    135a:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    135c:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1360:	b2db      	uxtb	r3, r3
    1362:	2b09      	cmp	r3, #9
    1364:	d906      	bls.n	1374 <hexdigit+0x20>
    1366:	3841      	subs	r0, #65	; 0x41
    1368:	b2c0      	uxtb	r0, r0
    136a:	2805      	cmp	r0, #5
    136c:	bf8c      	ite	hi
    136e:	2000      	movhi	r0, #0
    1370:	2001      	movls	r0, #1
    1372:	4770      	bx	lr
    1374:	2001      	movs	r0, #1
}
    1376:	4770      	bx	lr

00001378 <atoi>:

int atoi(const char *str){
    1378:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    137c:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    137e:	7803      	ldrb	r3, [r0, #0]
    1380:	2b20      	cmp	r3, #32
    1382:	d103      	bne.n	138c <atoi+0x14>
    1384:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1388:	2b20      	cmp	r3, #32
    138a:	d0fb      	beq.n	1384 <atoi+0xc>
	if (*str=='-'){
    138c:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    138e:	bf06      	itte	eq
    1390:	3501      	addeq	r5, #1
		sign=-1;
    1392:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    1396:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    139a:	782b      	ldrb	r3, [r5, #0]
    139c:	2b24      	cmp	r3, #36	; 0x24
    139e:	d005      	beq.n	13ac <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    13a0:	2b30      	cmp	r3, #48	; 0x30
    13a2:	d00a      	beq.n	13ba <atoi+0x42>
	int n=0,sign=1,base=10;
    13a4:	270a      	movs	r7, #10
    13a6:	3d01      	subs	r5, #1
    13a8:	2600      	movs	r6, #0
    13aa:	e026      	b.n	13fa <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    13ac:	7868      	ldrb	r0, [r5, #1]
    13ae:	f7ff ffd1 	bl	1354 <hexdigit>
    13b2:	b160      	cbz	r0, 13ce <atoi+0x56>
		str++;
    13b4:	3501      	adds	r5, #1
		base=16;
    13b6:	2710      	movs	r7, #16
		str++;
    13b8:	e7f5      	b.n	13a6 <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    13ba:	786b      	ldrb	r3, [r5, #1]
    13bc:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    13c0:	2b58      	cmp	r3, #88	; 0x58
    13c2:	d001      	beq.n	13c8 <atoi+0x50>
	int n=0,sign=1,base=10;
    13c4:	270a      	movs	r7, #10
    13c6:	e7ee      	b.n	13a6 <atoi+0x2e>
		base=16;
		str+=2;
    13c8:	3502      	adds	r5, #2
		base=16;
    13ca:	2710      	movs	r7, #16
    13cc:	e7eb      	b.n	13a6 <atoi+0x2e>
	int n=0,sign=1,base=10;
    13ce:	270a      	movs	r7, #10
    13d0:	e7e9      	b.n	13a6 <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13d2:	4620      	mov	r0, r4
    13d4:	f7ff ffbe 	bl	1354 <hexdigit>
    13d8:	3000      	adds	r0, #0
    13da:	bf18      	it	ne
    13dc:	2001      	movne	r0, #1
    13de:	b1d0      	cbz	r0, 1416 <atoi+0x9e>
		if (c>='a'){c-=32;}
    13e0:	2c60      	cmp	r4, #96	; 0x60
    13e2:	bf84      	itt	hi
    13e4:	3c20      	subhi	r4, #32
    13e6:	b2e4      	uxtbhi	r4, r4
		c-='0';
    13e8:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    13ec:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    13ee:	2b09      	cmp	r3, #9
    13f0:	bf84      	itt	hi
    13f2:	3c37      	subhi	r4, #55	; 0x37
    13f4:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    13f6:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13fa:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    13fe:	2c00      	cmp	r4, #0
    1400:	d0e7      	beq.n	13d2 <atoi+0x5a>
    1402:	2f0a      	cmp	r7, #10
    1404:	d1e5      	bne.n	13d2 <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    1406:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    140a:	b2c0      	uxtb	r0, r0
    140c:	2809      	cmp	r0, #9
    140e:	bf8c      	ite	hi
    1410:	2000      	movhi	r0, #0
    1412:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1414:	e7e3      	b.n	13de <atoi+0x66>
		str++;
	}
	return sign*n;
}
    1416:	fb08 f006 	mul.w	r0, r8, r6
    141a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0000141e <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    141e:	b13a      	cbz	r2, 1430 <move+0x12>
    1420:	3901      	subs	r1, #1
    1422:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1424:	f810 3b01 	ldrb.w	r3, [r0], #1
    1428:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    142c:	4290      	cmp	r0, r2
    142e:	d1f9      	bne.n	1424 <move+0x6>
    1430:	4770      	bx	lr

00001432 <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    1432:	7803      	ldrb	r3, [r0, #0]
    1434:	b13b      	cbz	r3, 1446 <strlen+0x14>
    1436:	4603      	mov	r3, r0
    1438:	2000      	movs	r0, #0
    143a:	3001      	adds	r0, #1
    143c:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1440:	2a00      	cmp	r2, #0
    1442:	d1fa      	bne.n	143a <strlen+0x8>
    1444:	4770      	bx	lr
	int ll=0;
    1446:	2000      	movs	r0, #0
	return ll;
}
    1448:	4770      	bx	lr

0000144a <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    144a:	b121      	cbz	r1, 1456 <fill+0xc>
    144c:	1841      	adds	r1, r0, r1
    144e:	f800 2b01 	strb.w	r2, [r0], #1
    1452:	4288      	cmp	r0, r1
    1454:	d1fb      	bne.n	144e <fill+0x4>
    1456:	4770      	bx	lr

00001458 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1458:	3861      	subs	r0, #97	; 0x61
    145a:	b2c0      	uxtb	r0, r0
}
    145c:	2819      	cmp	r0, #25
    145e:	bf8c      	ite	hi
    1460:	2000      	movhi	r0, #0
    1462:	2001      	movls	r0, #1
    1464:	4770      	bx	lr

00001466 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    1466:	3841      	subs	r0, #65	; 0x41
    1468:	b2c0      	uxtb	r0, r0
}
    146a:	2819      	cmp	r0, #25
    146c:	bf8c      	ite	hi
    146e:	2000      	movhi	r0, #0
    1470:	2001      	movls	r0, #1
    1472:	4770      	bx	lr

00001474 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1474:	7803      	ldrb	r3, [r0, #0]
    1476:	b153      	cbz	r3, 148e <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1478:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    147c:	b2d2      	uxtb	r2, r2
    147e:	2a19      	cmp	r2, #25
    1480:	bf9c      	itt	ls
    1482:	3b20      	subls	r3, #32
    1484:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    1486:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    148a:	2b00      	cmp	r3, #0
    148c:	d1f4      	bne.n	1478 <uppercase+0x4>
    148e:	4770      	bx	lr

00001490 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1490:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    1492:	1844      	adds	r4, r0, r1
    1494:	5c43      	ldrb	r3, [r0, r1]
    1496:	b153      	cbz	r3, 14ae <scan+0x1e>
    1498:	429a      	cmp	r2, r3
    149a:	d00a      	beq.n	14b2 <scan+0x22>
    149c:	4608      	mov	r0, r1
    149e:	3001      	adds	r0, #1
    14a0:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14a4:	b10b      	cbz	r3, 14aa <scan+0x1a>
    14a6:	4293      	cmp	r3, r2
    14a8:	d1f9      	bne.n	149e <scan+0xe>
	return start;
}
    14aa:	bc10      	pop	{r4}
    14ac:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    14ae:	4608      	mov	r0, r1
    14b0:	e7fb      	b.n	14aa <scan+0x1a>
    14b2:	4608      	mov	r0, r1
	return start;
    14b4:	e7f9      	b.n	14aa <scan+0x1a>

000014b6 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    14b6:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    14b8:	1844      	adds	r4, r0, r1
    14ba:	5c43      	ldrb	r3, [r0, r1]
    14bc:	b153      	cbz	r3, 14d4 <skip+0x1e>
    14be:	429a      	cmp	r2, r3
    14c0:	d10a      	bne.n	14d8 <skip+0x22>
    14c2:	4608      	mov	r0, r1
    14c4:	3001      	adds	r0, #1
    14c6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14ca:	b10b      	cbz	r3, 14d0 <skip+0x1a>
    14cc:	4293      	cmp	r3, r2
    14ce:	d0f9      	beq.n	14c4 <skip+0xe>
	return start;
}
    14d0:	bc10      	pop	{r4}
    14d2:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    14d4:	4608      	mov	r0, r1
    14d6:	e7fb      	b.n	14d0 <skip+0x1a>
    14d8:	4608      	mov	r0, r1
	return start;
    14da:	e7f9      	b.n	14d0 <skip+0x1a>

000014dc <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    14dc:	b538      	push	{r3, r4, r5, lr}
    14de:	4604      	mov	r4, r0
    14e0:	460d      	mov	r5, r1
	s1+=strlen(s1);
    14e2:	f7ff ffa6 	bl	1432 <strlen>
    14e6:	4420      	add	r0, r4
	while (*s2){
    14e8:	782b      	ldrb	r3, [r5, #0]
    14ea:	b133      	cbz	r3, 14fa <strcat+0x1e>
    14ec:	4629      	mov	r1, r5
		*s1++=*s2++;
    14ee:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    14f2:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    14f6:	2b00      	cmp	r3, #0
    14f8:	d1f9      	bne.n	14ee <strcat+0x12>
	}
	*s1=0;
    14fa:	2300      	movs	r3, #0
    14fc:	7003      	strb	r3, [r0, #0]
	return s1;
}
    14fe:	bd38      	pop	{r3, r4, r5, pc}

00001500 <itoa>:

char *itoa(int n,char *buffer,int base){
    1500:	b5f0      	push	{r4, r5, r6, r7, lr}
    1502:	b085      	sub	sp, #20
    1504:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    1506:	2a0a      	cmp	r2, #10
    1508:	d033      	beq.n	1572 <itoa+0x72>
	int i=14,sign=0;
    150a:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    150c:	2300      	movs	r3, #0
    150e:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    1512:	2320      	movs	r3, #32
    1514:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    1518:	b390      	cbz	r0, 1580 <itoa+0x80>
    151a:	f10d 060d 	add.w	r6, sp, #13
    151e:	250e      	movs	r5, #14
		d=n%base+'0';
    1520:	fb90 f3f2 	sdiv	r3, r0, r2
    1524:	fb02 0313 	mls	r3, r2, r3, r0
    1528:	b2db      	uxtb	r3, r3
    152a:	f103 0130 	add.w	r1, r3, #48	; 0x30
    152e:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1530:	2939      	cmp	r1, #57	; 0x39
    1532:	bf84      	itt	hi
    1534:	3337      	addhi	r3, #55	; 0x37
    1536:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1538:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    153c:	3d01      	subs	r5, #1
    153e:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    1542:	2800      	cmp	r0, #0
    1544:	d1ec      	bne.n	1520 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    1546:	2d0e      	cmp	r5, #14
    1548:	d01a      	beq.n	1580 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    154a:	2a0a      	cmp	r2, #10
    154c:	d01d      	beq.n	158a <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    154e:	2a10      	cmp	r2, #16
    1550:	d105      	bne.n	155e <itoa+0x5e>
    1552:	3d01      	subs	r5, #1
    1554:	ab04      	add	r3, sp, #16
    1556:	442b      	add	r3, r5
    1558:	2224      	movs	r2, #36	; 0x24
    155a:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    155e:	f1c5 0210 	rsb	r2, r5, #16
    1562:	4621      	mov	r1, r4
    1564:	eb0d 0005 	add.w	r0, sp, r5
    1568:	f7ff ff59 	bl	141e <move>
	return buffer;
    156c:	4620      	mov	r0, r4
    156e:	b005      	add	sp, #20
    1570:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    1572:	2800      	cmp	r0, #0
    1574:	db01      	blt.n	157a <itoa+0x7a>
	int i=14,sign=0;
    1576:	2700      	movs	r7, #0
    1578:	e7c8      	b.n	150c <itoa+0xc>
		n=-n;
    157a:	4240      	negs	r0, r0
		sign=1;
    157c:	2701      	movs	r7, #1
    157e:	e7c5      	b.n	150c <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1580:	2330      	movs	r3, #48	; 0x30
    1582:	f88d 300d 	strb.w	r3, [sp, #13]
    1586:	250d      	movs	r5, #13
    1588:	e7df      	b.n	154a <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    158a:	2f00      	cmp	r7, #0
    158c:	d0e7      	beq.n	155e <itoa+0x5e>
    158e:	3d01      	subs	r5, #1
    1590:	ab04      	add	r3, sp, #16
    1592:	442b      	add	r3, r5
    1594:	222d      	movs	r2, #45	; 0x2d
    1596:	f803 2c10 	strb.w	r2, [r3, #-16]
    159a:	e7e0      	b.n	155e <itoa+0x5e>

0000159c <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    159c:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    159e:	08cb      	lsrs	r3, r1, #3
    15a0:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    15a4:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    15a6:	f001 011c 	and.w	r1, r1, #28
    15aa:	250f      	movs	r5, #15
    15ac:	408d      	lsls	r5, r1
    15ae:	ea24 0405 	bic.w	r4, r4, r5
    15b2:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    15b6:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    15ba:	fa02 f101 	lsl.w	r1, r2, r1
    15be:	4321      	orrs	r1, r4
    15c0:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    15c4:	bc30      	pop	{r4, r5}
    15c6:	4770      	bx	lr

000015c8 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    15c8:	6880      	ldr	r0, [r0, #8]
    15ca:	2301      	movs	r3, #1
    15cc:	fa03 f101 	lsl.w	r1, r3, r1
}
    15d0:	4008      	ands	r0, r1
    15d2:	4770      	bx	lr

000015d4 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15d4:	b93a      	cbnz	r2, 15e6 <write_pin+0x12>
    15d6:	68c3      	ldr	r3, [r0, #12]
    15d8:	2201      	movs	r2, #1
    15da:	fa02 f101 	lsl.w	r1, r2, r1
    15de:	ea23 0101 	bic.w	r1, r3, r1
    15e2:	60c1      	str	r1, [r0, #12]
    15e4:	4770      	bx	lr
    15e6:	68c2      	ldr	r2, [r0, #12]
    15e8:	2301      	movs	r3, #1
    15ea:	fa03 f101 	lsl.w	r1, r3, r1
    15ee:	4311      	orrs	r1, r2
    15f0:	60c1      	str	r1, [r0, #12]
    15f2:	4770      	bx	lr

000015f4 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    15f4:	68c2      	ldr	r2, [r0, #12]
    15f6:	2301      	movs	r3, #1
    15f8:	fa03 f101 	lsl.w	r1, r3, r1
    15fc:	4051      	eors	r1, r2
    15fe:	60c1      	str	r1, [r0, #12]
    1600:	4770      	bx	lr
	...

00001604 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    1604:	4b04      	ldr	r3, [pc, #16]	; (1618 <set_palette+0x14>)
    1606:	7802      	ldrb	r2, [r0, #0]
    1608:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    160a:	7842      	ldrb	r2, [r0, #1]
    160c:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    160e:	7882      	ldrb	r2, [r0, #2]
    1610:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    1612:	78c2      	ldrb	r2, [r0, #3]
    1614:	70da      	strb	r2, [r3, #3]
    1616:	4770      	bx	lr
    1618:	200001a8 	.word	0x200001a8

0000161c <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    161c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    161e:	4604      	mov	r4, r0
    1620:	460e      	mov	r6, r1
    1622:	4615      	mov	r5, r2
    1624:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    1626:	f001 ff53 	bl	34d0 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    162a:	2c00      	cmp	r4, #0
    162c:	db38      	blt.n	16a0 <gfx_blit+0x84>
    162e:	8983      	ldrh	r3, [r0, #12]
    1630:	429c      	cmp	r4, r3
    1632:	da37      	bge.n	16a4 <gfx_blit+0x88>
    1634:	2e00      	cmp	r6, #0
    1636:	db37      	blt.n	16a8 <gfx_blit+0x8c>
    1638:	89c3      	ldrh	r3, [r0, #14]
    163a:	429e      	cmp	r6, r3
    163c:	da36      	bge.n	16ac <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    163e:	7a03      	ldrb	r3, [r0, #8]
    1640:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1644:	1052      	asrs	r2, r2, #1
    1646:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    164a:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    164e:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    1652:	bf06      	itte	eq
    1654:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    1656:	220f      	moveq	r2, #15
    mask=0xf0;
    1658:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    165a:	4b15      	ldr	r3, [pc, #84]	; (16b0 <gfx_blit+0x94>)
    165c:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    165e:	2f04      	cmp	r7, #4
    1660:	d805      	bhi.n	166e <gfx_blit+0x52>
    1662:	e8df f007 	tbb	[pc, r7]
    1666:	1003      	.short	0x1003
    1668:	1412      	.short	0x1412
    166a:	18          	.byte	0x18
    166b:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    166c:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    166e:	4910      	ldr	r1, [pc, #64]	; (16b0 <gfx_blit+0x94>)
    1670:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    1672:	ea23 0302 	bic.w	r3, r3, r2
    1676:	fab0 f080 	clz	r0, r0
    167a:	0940      	lsrs	r0, r0, #5
    167c:	4283      	cmp	r3, r0
    167e:	bf14      	ite	ne
    1680:	2000      	movne	r0, #0
    1682:	2001      	moveq	r0, #1
    1684:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    1686:	4003      	ands	r3, r0
        break;
    1688:	e7f1      	b.n	166e <gfx_blit+0x52>
        byte^=color;
    168a:	4043      	eors	r3, r0
        break;
    168c:	e7ef      	b.n	166e <gfx_blit+0x52>
        byte^=~mask;
    168e:	43d4      	mvns	r4, r2
    1690:	405c      	eors	r4, r3
    1692:	b2e3      	uxtb	r3, r4
        break;
    1694:	e7eb      	b.n	166e <gfx_blit+0x52>
        byte &=mask;
    1696:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    169a:	ea40 0304 	orr.w	r3, r0, r4
        break;
    169e:	e7e6      	b.n	166e <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    16a0:	2000      	movs	r0, #0
    16a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16a4:	2000      	movs	r0, #0
    16a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16a8:	2000      	movs	r0, #0
    16aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16ac:	2000      	movs	r0, #0
}
    16ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16b0:	20002714 	.word	0x20002714

000016b4 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    16b4:	b570      	push	{r4, r5, r6, lr}
    16b6:	4604      	mov	r4, r0
    16b8:	460e      	mov	r6, r1
    16ba:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    16bc:	f001 ff08 	bl	34d0 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    16c0:	2c00      	cmp	r4, #0
    16c2:	db1d      	blt.n	1700 <gfx_plot+0x4c>
    16c4:	8983      	ldrh	r3, [r0, #12]
    16c6:	429c      	cmp	r4, r3
    16c8:	da1a      	bge.n	1700 <gfx_plot+0x4c>
    16ca:	2e00      	cmp	r6, #0
    16cc:	db18      	blt.n	1700 <gfx_plot+0x4c>
    16ce:	89c3      	ldrh	r3, [r0, #14]
    16d0:	429e      	cmp	r6, r3
    16d2:	da15      	bge.n	1700 <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    16d4:	7a03      	ldrb	r3, [r0, #8]
    16d6:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    16da:	1052      	asrs	r2, r2, #1
    16dc:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    16e0:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    16e4:	4b07      	ldr	r3, [pc, #28]	; (1704 <gfx_plot+0x50>)
    16e6:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    16e8:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    16ec:	bf19      	ittee	ne
    16ee:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    16f2:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    16f4:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    16f8:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    16fc:	4b01      	ldr	r3, [pc, #4]	; (1704 <gfx_plot+0x50>)
    16fe:	559d      	strb	r5, [r3, r6]
    1700:	bd70      	pop	{r4, r5, r6, pc}
    1702:	bf00      	nop
    1704:	20002714 	.word	0x20002714

00001708 <gfx_cls>:
}

void gfx_cls(){
    1708:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    170a:	f001 fee1 	bl	34d0 <get_video_params>
    170e:	4b06      	ldr	r3, [pc, #24]	; (1728 <gfx_cls+0x20>)
    1710:	4906      	ldr	r1, [pc, #24]	; (172c <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    1712:	2200      	movs	r2, #0
    1714:	f803 2f01 	strb.w	r2, [r3, #1]!
    1718:	428b      	cmp	r3, r1
    171a:	d1fb      	bne.n	1714 <gfx_cls+0xc>
    set_cursor(0,0);
    171c:	2100      	movs	r1, #0
    171e:	4608      	mov	r0, r1
    1720:	f001 fb8a 	bl	2e38 <set_cursor>
    1724:	bd08      	pop	{r3, pc}
    1726:	bf00      	nop
    1728:	20002713 	.word	0x20002713
    172c:	20004e73 	.word	0x20004e73

00001730 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    1730:	b570      	push	{r4, r5, r6, lr}
    1732:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1734:	f001 fecc 	bl	34d0 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    1738:	7a06      	ldrb	r6, [r0, #8]
    173a:	4b0f      	ldr	r3, [pc, #60]	; (1778 <gfx_scroll_up+0x48>)
    173c:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    1740:	89c2      	ldrh	r2, [r0, #14]
    1742:	1b12      	subs	r2, r2, r4
    1744:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    1748:	b1a6      	cbz	r6, 1774 <gfx_scroll_up+0x44>
    174a:	4a0b      	ldr	r2, [pc, #44]	; (1778 <gfx_scroll_up+0x48>)
    174c:	199d      	adds	r5, r3, r6
    174e:	f813 1b01 	ldrb.w	r1, [r3], #1
    1752:	f802 1b01 	strb.w	r1, [r2], #1
    1756:	42ab      	cmp	r3, r5
    1758:	d1f9      	bne.n	174e <gfx_scroll_up+0x1e>
    175a:	4b07      	ldr	r3, [pc, #28]	; (1778 <gfx_scroll_up+0x48>)
    175c:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    175e:	7a02      	ldrb	r2, [r0, #8]
    1760:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1764:	b12a      	cbz	r2, 1772 <gfx_scroll_up+0x42>
    1766:	441a      	add	r2, r3
    1768:	2100      	movs	r1, #0
    176a:	f803 1b01 	strb.w	r1, [r3], #1
    176e:	4293      	cmp	r3, r2
    1770:	d1fb      	bne.n	176a <gfx_scroll_up+0x3a>
    1772:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1774:	4b00      	ldr	r3, [pc, #0]	; (1778 <gfx_scroll_up+0x48>)
    1776:	e7f2      	b.n	175e <gfx_scroll_up+0x2e>
    1778:	20002714 	.word	0x20002714

0000177c <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    177c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    177e:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1780:	f001 fea6 	bl	34d0 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1784:	89c3      	ldrh	r3, [r0, #14]
    1786:	7a04      	ldrb	r4, [r0, #8]
    1788:	1b5f      	subs	r7, r3, r5
    178a:	fb04 f707 	mul.w	r7, r4, r7
    178e:	490c      	ldr	r1, [pc, #48]	; (17c0 <gfx_scroll_down+0x44>)
    1790:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    1792:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    1796:	b147      	cbz	r7, 17aa <gfx_scroll_down+0x2e>
    1798:	4619      	mov	r1, r3
    179a:	4e09      	ldr	r6, [pc, #36]	; (17c0 <gfx_scroll_down+0x44>)
    179c:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    17a0:	f801 4d01 	strb.w	r4, [r1, #-1]!
    17a4:	42b2      	cmp	r2, r6
    17a6:	d1f9      	bne.n	179c <gfx_scroll_down+0x20>
    17a8:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    17aa:	7a02      	ldrb	r2, [r0, #8]
    17ac:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    17b0:	b12a      	cbz	r2, 17be <gfx_scroll_down+0x42>
    17b2:	1a9a      	subs	r2, r3, r2
    17b4:	2100      	movs	r1, #0
    17b6:	f803 1d01 	strb.w	r1, [r3, #-1]!
    17ba:	4293      	cmp	r3, r2
    17bc:	d1fb      	bne.n	17b6 <gfx_scroll_down+0x3a>
    17be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    17c0:	20002714 	.word	0x20002714

000017c4 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    17c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    17c8:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    17ca:	f001 fe81 	bl	34d0 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    17ce:	89c3      	ldrh	r3, [r0, #14]
    17d0:	b30b      	cbz	r3, 1816 <gfx_scroll_left+0x52>
    17d2:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    17d6:	f8df 8044 	ldr.w	r8, [pc, #68]	; 181c <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    17da:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    17dc:	7a03      	ldrb	r3, [r0, #8]
    17de:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    17e2:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    17e4:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    17e6:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    17ea:	d009      	beq.n	1800 <gfx_scroll_left+0x3c>
    17ec:	1e59      	subs	r1, r3, #1
    17ee:	eb02 050e 	add.w	r5, r2, lr
    17f2:	f812 4b01 	ldrb.w	r4, [r2], #1
    17f6:	f801 4f01 	strb.w	r4, [r1, #1]!
    17fa:	4295      	cmp	r5, r2
    17fc:	d1f9      	bne.n	17f2 <gfx_scroll_left+0x2e>
    17fe:	4473      	add	r3, lr
        while (size--) *dest++=0;
    1800:	b126      	cbz	r6, 180c <gfx_scroll_left+0x48>
    1802:	199a      	adds	r2, r3, r6
    1804:	f803 7b01 	strb.w	r7, [r3], #1
    1808:	4293      	cmp	r3, r2
    180a:	d1fb      	bne.n	1804 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    180c:	f10c 0c01 	add.w	ip, ip, #1
    1810:	89c3      	ldrh	r3, [r0, #14]
    1812:	4563      	cmp	r3, ip
    1814:	dce2      	bgt.n	17dc <gfx_scroll_left+0x18>
    1816:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    181a:	bf00      	nop
    181c:	20002714 	.word	0x20002714

00001820 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    1820:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1824:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    1826:	f001 fe53 	bl	34d0 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    182a:	89c3      	ldrh	r3, [r0, #14]
    182c:	b33b      	cbz	r3, 187e <gfx_scroll_right+0x5e>
    182e:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1832:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1884 <gfx_scroll_right+0x64>
        src=dest-n;
    1836:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    183a:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    183c:	7a03      	ldrb	r3, [r0, #8]
    183e:	fb0e 3303 	mla	r3, lr, r3, r3
    1842:	4443      	add	r3, r8
        src=dest-n;
    1844:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    1848:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    184a:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    184e:	d00a      	beq.n	1866 <gfx_scroll_right+0x46>
    1850:	4619      	mov	r1, r3
    1852:	eba2 0609 	sub.w	r6, r2, r9
    1856:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    185a:	f801 4d01 	strb.w	r4, [r1, #-1]!
    185e:	42b2      	cmp	r2, r6
    1860:	d1f9      	bne.n	1856 <gfx_scroll_right+0x36>
    1862:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    1866:	b12d      	cbz	r5, 1874 <gfx_scroll_right+0x54>
    1868:	eb03 020c 	add.w	r2, r3, ip
    186c:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1870:	429a      	cmp	r2, r3
    1872:	d1fb      	bne.n	186c <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1874:	f10e 0e01 	add.w	lr, lr, #1
    1878:	89c3      	ldrh	r3, [r0, #14]
    187a:	4573      	cmp	r3, lr
    187c:	dcde      	bgt.n	183c <gfx_scroll_right+0x1c>
    187e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1882:	bf00      	nop
    1884:	20002714 	.word	0x20002714

00001888 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1888:	b538      	push	{r3, r4, r5, lr}
    188a:	4604      	mov	r4, r0
    188c:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    188e:	f001 fe1f 	bl	34d0 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1892:	2c00      	cmp	r4, #0
    1894:	db18      	blt.n	18c8 <gfx_get_pixel+0x40>
    1896:	8983      	ldrh	r3, [r0, #12]
    1898:	429c      	cmp	r4, r3
    189a:	db01      	blt.n	18a0 <gfx_get_pixel+0x18>
    189c:	20ff      	movs	r0, #255	; 0xff
    189e:	bd38      	pop	{r3, r4, r5, pc}
    18a0:	2d00      	cmp	r5, #0
    18a2:	db13      	blt.n	18cc <gfx_get_pixel+0x44>
    18a4:	89c3      	ldrh	r3, [r0, #14]
    18a6:	429d      	cmp	r5, r3
    18a8:	db01      	blt.n	18ae <gfx_get_pixel+0x26>
    18aa:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    18ac:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    18ae:	7a03      	ldrb	r3, [r0, #8]
    18b0:	1062      	asrs	r2, r4, #1
    18b2:	4907      	ldr	r1, [pc, #28]	; (18d0 <gfx_get_pixel+0x48>)
    18b4:	fb05 1503 	mla	r5, r5, r3, r1
    18b8:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    18ba:	f014 0f01 	tst.w	r4, #1
    18be:	bf08      	it	eq
    18c0:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    18c2:	f000 000f 	and.w	r0, r0, #15
    18c6:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    18c8:	20ff      	movs	r0, #255	; 0xff
    18ca:	bd38      	pop	{r3, r4, r5, pc}
    18cc:	20ff      	movs	r0, #255	; 0xff
    18ce:	bd38      	pop	{r3, r4, r5, pc}
    18d0:	20002714 	.word	0x20002714

000018d4 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    18d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    18d8:	b085      	sub	sp, #20
    18da:	9001      	str	r0, [sp, #4]
    18dc:	460e      	mov	r6, r1
    18de:	9100      	str	r1, [sp, #0]
    18e0:	9203      	str	r2, [sp, #12]
    18e2:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    
    shift=bit_shift[sprite_bpp];
    18e4:	4a26      	ldr	r2, [pc, #152]	; (1980 <gfx_sprite+0xac>)
    18e6:	7911      	ldrb	r1, [r2, #4]
    18e8:	4a26      	ldr	r2, [pc, #152]	; (1984 <gfx_sprite+0xb0>)
    18ea:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    18ee:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    18f0:	440a      	add	r2, r1
    18f2:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    18f4:	4433      	add	r3, r6
    18f6:	9302      	str	r3, [sp, #8]
    18f8:	429e      	cmp	r6, r3
    int collision=0;
    18fa:	bfa8      	it	ge
    18fc:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    18fe:	da3a      	bge.n	1976 <gfx_sprite+0xa2>
    1900:	f100 0901 	add.w	r9, r0, #1
    1904:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    1906:	f8df 8078 	ldr.w	r8, [pc, #120]	; 1980 <gfx_sprite+0xac>
    190a:	e02b      	b.n	1964 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    190c:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    1910:	f898 3004 	ldrb.w	r3, [r8, #4]
    1914:	4a1b      	ldr	r2, [pc, #108]	; (1984 <gfx_sprite+0xb0>)
    1916:	4413      	add	r3, r2
    1918:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    191a:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    191e:	3601      	adds	r6, #1
    1920:	4556      	cmp	r6, sl
    1922:	d019      	beq.n	1958 <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    1924:	f898 3004 	ldrb.w	r3, [r8, #4]
    1928:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    192a:	bf99      	ittee	ls
    192c:	fa45 f30b 	asrls.w	r3, r5, fp
    1930:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    1934:	fa45 f20b 	asrhi.w	r2, r5, fp
    1938:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    193a:	2302      	movs	r3, #2
    193c:	9900      	ldr	r1, [sp, #0]
    193e:	4630      	mov	r0, r6
    1940:	f7ff fe6c 	bl	161c <gfx_blit>
    1944:	4307      	orrs	r7, r0
            ppb--;
    1946:	3c01      	subs	r4, #1
            if (!ppb){
    1948:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    194c:	d0de      	beq.n	190c <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    194e:	f1cb 0308 	rsb	r3, fp, #8
    1952:	409d      	lsls	r5, r3
    1954:	b2ed      	uxtb	r5, r5
    1956:	e7e2      	b.n	191e <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    1958:	9b00      	ldr	r3, [sp, #0]
    195a:	3301      	adds	r3, #1
    195c:	9300      	str	r3, [sp, #0]
    195e:	9a02      	ldr	r2, [sp, #8]
    1960:	4293      	cmp	r3, r2
    1962:	d008      	beq.n	1976 <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    1964:	9b03      	ldr	r3, [sp, #12]
    1966:	4619      	mov	r1, r3
    1968:	9a01      	ldr	r2, [sp, #4]
    196a:	eb01 0a02 	add.w	sl, r1, r2
    196e:	4552      	cmp	r2, sl
    1970:	daf2      	bge.n	1958 <gfx_sprite+0x84>
    1972:	9e01      	ldr	r6, [sp, #4]
    1974:	e7d6      	b.n	1924 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    return collision;
}
    1976:	4638      	mov	r0, r7
    1978:	b005      	add	sp, #20
    197a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    197e:	bf00      	nop
    1980:	200001a8 	.word	0x200001a8
    1984:	00003d2c 	.word	0x00003d2c

00001988 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    1988:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    198c:	f001 fda0 	bl	34d0 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    1990:	89c3      	ldrh	r3, [r0, #14]
    1992:	089e      	lsrs	r6, r3, #2
    1994:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    1998:	429e      	cmp	r6, r3
    199a:	da18      	bge.n	19ce <color_bars+0x46>
    199c:	4607      	mov	r7, r0
static void color_bars(){
    199e:	f04f 0810 	mov.w	r8, #16
    19a2:	4645      	mov	r5, r8
    19a4:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    19a6:	f014 0f07 	tst.w	r4, #7
				c--;
    19aa:	bf04      	itt	eq
    19ac:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    19b0:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    19b2:	462a      	mov	r2, r5
    19b4:	4631      	mov	r1, r6
    19b6:	4620      	mov	r0, r4
    19b8:	f7ff fe7c 	bl	16b4 <gfx_plot>
		for (x=0;x<128;x++){
    19bc:	3401      	adds	r4, #1
    19be:	2c80      	cmp	r4, #128	; 0x80
    19c0:	d1f1      	bne.n	19a6 <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19c2:	3601      	adds	r6, #1
    19c4:	89fb      	ldrh	r3, [r7, #14]
    19c6:	42b3      	cmp	r3, r6
    19c8:	dceb      	bgt.n	19a2 <color_bars+0x1a>
    19ca:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    19ce:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000019d2 <vertical_bars>:
	}
		

}

static void vertical_bars(){
    19d2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    19d4:	f001 fd7c 	bl	34d0 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19d8:	89c3      	ldrh	r3, [r0, #14]
    19da:	2b10      	cmp	r3, #16
    19dc:	dd12      	ble.n	1a04 <vertical_bars+0x32>
    19de:	4605      	mov	r5, r0
    19e0:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    19e2:	260f      	movs	r6, #15
    19e4:	2700      	movs	r7, #0
    19e6:	4632      	mov	r2, r6
    19e8:	4621      	mov	r1, r4
    19ea:	4638      	mov	r0, r7
    19ec:	f7ff fe62 	bl	16b4 <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    19f0:	89a8      	ldrh	r0, [r5, #12]
    19f2:	4632      	mov	r2, r6
    19f4:	4621      	mov	r1, r4
    19f6:	3801      	subs	r0, #1
    19f8:	f7ff fe5c 	bl	16b4 <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19fc:	3401      	adds	r4, #1
    19fe:	89eb      	ldrh	r3, [r5, #14]
    1a00:	42a3      	cmp	r3, r4
    1a02:	dcf0      	bgt.n	19e6 <vertical_bars+0x14>
    1a04:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001a06 <horiz_bars>:
	}
}

static void horiz_bars(){
    1a06:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1a08:	f001 fd62 	bl	34d0 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1a0c:	8983      	ldrh	r3, [r0, #12]
    1a0e:	b193      	cbz	r3, 1a36 <horiz_bars+0x30>
    1a10:	4605      	mov	r5, r0
    1a12:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    1a14:	260f      	movs	r6, #15
    1a16:	4627      	mov	r7, r4
    1a18:	4632      	mov	r2, r6
    1a1a:	4639      	mov	r1, r7
    1a1c:	4620      	mov	r0, r4
    1a1e:	f7ff fe49 	bl	16b4 <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    1a22:	89e9      	ldrh	r1, [r5, #14]
    1a24:	4632      	mov	r2, r6
    1a26:	3901      	subs	r1, #1
    1a28:	4620      	mov	r0, r4
    1a2a:	f7ff fe43 	bl	16b4 <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    1a2e:	3401      	adds	r4, #1
    1a30:	89ab      	ldrh	r3, [r5, #12]
    1a32:	42a3      	cmp	r3, r4
    1a34:	dcf0      	bgt.n	1a18 <horiz_bars+0x12>
    1a36:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001a38 <display_menu>:
	" Video test",
	" Sound test",
	" BASIC",
};

static void display_menu(){
    1a38:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1a3a:	f7ff fe65 	bl	1708 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1a3e:	4808      	ldr	r0, [pc, #32]	; (1a60 <display_menu+0x28>)
    1a40:	f001 fa43 	bl	2eca <println>
    1a44:	4807      	ldr	r0, [pc, #28]	; (1a64 <display_menu+0x2c>)
    1a46:	f001 fa40 	bl	2eca <println>
    1a4a:	4807      	ldr	r0, [pc, #28]	; (1a68 <display_menu+0x30>)
    1a4c:	f001 fa3d 	bl	2eca <println>
    1a50:	4806      	ldr	r0, [pc, #24]	; (1a6c <display_menu+0x34>)
    1a52:	f001 fa3a 	bl	2eca <println>
    1a56:	4806      	ldr	r0, [pc, #24]	; (1a70 <display_menu+0x38>)
    1a58:	f001 fa37 	bl	2eca <println>
    1a5c:	bd08      	pop	{r3, pc}
    1a5e:	bf00      	nop
    1a60:	00003e68 	.word	0x00003e68
    1a64:	00003e74 	.word	0x00003e74
    1a68:	00003e84 	.word	0x00003e84
    1a6c:	00003e90 	.word	0x00003e90
    1a70:	00003e9c 	.word	0x00003e9c

00001a74 <draw_balls>:
void draw_balls(){
    1a74:	b510      	push	{r4, lr}
    1a76:	b082      	sub	sp, #8
	frame_sync();
    1a78:	f001 fcf0 	bl	345c <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1a7c:	4c0a      	ldr	r4, [pc, #40]	; (1aa8 <draw_balls+0x34>)
    1a7e:	6923      	ldr	r3, [r4, #16]
    1a80:	9300      	str	r3, [sp, #0]
    1a82:	2308      	movs	r3, #8
    1a84:	461a      	mov	r2, r3
    1a86:	6861      	ldr	r1, [r4, #4]
    1a88:	6820      	ldr	r0, [r4, #0]
    1a8a:	f7ff ff23 	bl	18d4 <gfx_sprite>
    1a8e:	69a1      	ldr	r1, [r4, #24]
    1a90:	6960      	ldr	r0, [r4, #20]
    1a92:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1a94:	9300      	str	r3, [sp, #0]
    1a96:	2308      	movs	r3, #8
    1a98:	461a      	mov	r2, r3
    1a9a:	f7ff ff1b 	bl	18d4 <gfx_sprite>
	wait_sync_end();
    1a9e:	f001 fce5 	bl	346c <wait_sync_end>
}
    1aa2:	b002      	add	sp, #8
    1aa4:	bd10      	pop	{r4, pc}
    1aa6:	bf00      	nop
    1aa8:	200026ec 	.word	0x200026ec

00001aac <isqrt>:
	if (n<2) return n;
    1aac:	2801      	cmp	r0, #1
    1aae:	dd0c      	ble.n	1aca <isqrt+0x1e>
int isqrt(int n){
    1ab0:	b510      	push	{r4, lr}
    1ab2:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1ab4:	1080      	asrs	r0, r0, #2
    1ab6:	f7ff fff9 	bl	1aac <isqrt>
    1aba:	0040      	lsls	r0, r0, #1
	large = small + 1;
    1abc:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    1abe:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    1ac2:	4294      	cmp	r4, r2
    1ac4:	bfa8      	it	ge
    1ac6:	4618      	movge	r0, r3
}
    1ac8:	bd10      	pop	{r4, pc}
    1aca:	4770      	bx	lr

00001acc <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    1acc:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    1ace:	6803      	ldr	r3, [r0, #0]
    1ad0:	680a      	ldr	r2, [r1, #0]
    1ad2:	6844      	ldr	r4, [r0, #4]
    1ad4:	6848      	ldr	r0, [r1, #4]
    1ad6:	fb00 f004 	mul.w	r0, r0, r4
    1ada:	fb02 0003 	mla	r0, r2, r3, r0
    1ade:	2800      	cmp	r0, #0
    1ae0:	bfb8      	it	lt
    1ae2:	4240      	neglt	r0, r0
    1ae4:	f7ff ffe2 	bl	1aac <isqrt>
}
    1ae8:	bd10      	pop	{r4, pc}

00001aea <move_balls>:
void move_balls(){
    1aea:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    1aec:	f001 fcf0 	bl	34d0 <get_video_params>
    1af0:	4b1c      	ldr	r3, [pc, #112]	; (1b64 <move_balls+0x7a>)
    1af2:	f103 0628 	add.w	r6, r3, #40	; 0x28
    1af6:	e005      	b.n	1b04 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    1af8:	4249      	negs	r1, r1
    1afa:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1afc:	6055      	str	r5, [r2, #4]
    1afe:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    1b00:	42b3      	cmp	r3, r6
    1b02:	d017      	beq.n	1b34 <move_balls+0x4a>
    1b04:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1b06:	681d      	ldr	r5, [r3, #0]
    1b08:	6899      	ldr	r1, [r3, #8]
    1b0a:	186c      	adds	r4, r5, r1
    1b0c:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    1b0e:	f114 0f07 	cmn.w	r4, #7
    1b12:	db02      	blt.n	1b1a <move_balls+0x30>
    1b14:	8987      	ldrh	r7, [r0, #12]
    1b16:	42bc      	cmp	r4, r7
    1b18:	db02      	blt.n	1b20 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    1b1a:	4249      	negs	r1, r1
    1b1c:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1b1e:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1b20:	6855      	ldr	r5, [r2, #4]
    1b22:	68d1      	ldr	r1, [r2, #12]
    1b24:	186c      	adds	r4, r5, r1
    1b26:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1b28:	2c0f      	cmp	r4, #15
    1b2a:	dde5      	ble.n	1af8 <move_balls+0xe>
    1b2c:	89c7      	ldrh	r7, [r0, #14]
    1b2e:	42bc      	cmp	r4, r7
    1b30:	dbe5      	blt.n	1afe <move_balls+0x14>
    1b32:	e7e1      	b.n	1af8 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1b34:	480c      	ldr	r0, [pc, #48]	; (1b68 <move_balls+0x7e>)
    1b36:	4601      	mov	r1, r0
    1b38:	3814      	subs	r0, #20
    1b3a:	f7ff ffc7 	bl	1acc <distance>
    1b3e:	2807      	cmp	r0, #7
    1b40:	d80f      	bhi.n	1b62 <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1b42:	4b08      	ldr	r3, [pc, #32]	; (1b64 <move_balls+0x7a>)
    1b44:	689a      	ldr	r2, [r3, #8]
    1b46:	69db      	ldr	r3, [r3, #28]
    1b48:	429a      	cmp	r2, r3
    1b4a:	d002      	beq.n	1b52 <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1b4c:	4905      	ldr	r1, [pc, #20]	; (1b64 <move_balls+0x7a>)
    1b4e:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1b50:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1b52:	4b04      	ldr	r3, [pc, #16]	; (1b64 <move_balls+0x7a>)
    1b54:	68da      	ldr	r2, [r3, #12]
    1b56:	6a1b      	ldr	r3, [r3, #32]
    1b58:	429a      	cmp	r2, r3
    1b5a:	d002      	beq.n	1b62 <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1b5c:	4901      	ldr	r1, [pc, #4]	; (1b64 <move_balls+0x7a>)
    1b5e:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1b60:	620a      	str	r2, [r1, #32]
    1b62:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1b64:	200026ec 	.word	0x200026ec
    1b68:	20002700 	.word	0x20002700

00001b6c <init_balls>:
void init_balls(){
    1b6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1b70:	f001 fcae 	bl	34d0 <get_video_params>
    1b74:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1b76:	4b18      	ldr	r3, [pc, #96]	; (1bd8 <init_balls+0x6c>)
    1b78:	6818      	ldr	r0, [r3, #0]
    1b7a:	f7fe fc33 	bl	3e4 <srand>
    1b7e:	4c17      	ldr	r4, [pc, #92]	; (1bdc <init_balls+0x70>)
    1b80:	f104 0628 	add.w	r6, r4, #40	; 0x28
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1b84:	4f16      	ldr	r7, [pc, #88]	; (1be0 <init_balls+0x74>)
    1b86:	f107 0910 	add.w	r9, r7, #16
			sprite_bpp=TWO_BPP;
    1b8a:	f8df 8058 	ldr.w	r8, [pc, #88]	; 1be4 <init_balls+0x78>
    1b8e:	e004      	b.n	1b9a <init_balls+0x2e>
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1b90:	f8c4 9010 	str.w	r9, [r4, #16]
    1b94:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1b96:	42b4      	cmp	r4, r6
    1b98:	d01c      	beq.n	1bd4 <init_balls+0x68>
		balls[i].x=rand()%vparams->hres;
    1b9a:	f7fe fc29 	bl	3f0 <rand>
    1b9e:	89ab      	ldrh	r3, [r5, #12]
    1ba0:	fb90 f2f3 	sdiv	r2, r0, r3
    1ba4:	fb02 0013 	mls	r0, r2, r3, r0
    1ba8:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1baa:	f7fe fc21 	bl	3f0 <rand>
    1bae:	89eb      	ldrh	r3, [r5, #14]
    1bb0:	3b10      	subs	r3, #16
    1bb2:	fb90 f2f3 	sdiv	r2, r0, r3
    1bb6:	fb02 0013 	mls	r0, r2, r3, r0
    1bba:	3010      	adds	r0, #16
    1bbc:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1bbe:	2301      	movs	r3, #1
    1bc0:	60a3      	str	r3, [r4, #8]
		balls[i].dy=1;
    1bc2:	60e3      	str	r3, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1bc4:	782b      	ldrb	r3, [r5, #0]
    1bc6:	2b00      	cmp	r3, #0
    1bc8:	d1e2      	bne.n	1b90 <init_balls+0x24>
			balls[i].ball_sprite=ball8x8_2bpp;//ball8x8;
    1bca:	6127      	str	r7, [r4, #16]
			sprite_bpp=TWO_BPP;
    1bcc:	2301      	movs	r3, #1
    1bce:	f888 3000 	strb.w	r3, [r8]
    1bd2:	e7df      	b.n	1b94 <init_balls+0x28>
}
    1bd4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1bd8:	20004e78 	.word	0x20004e78
    1bdc:	200026ec 	.word	0x200026ec
    1be0:	00003d3c 	.word	0x00003d3c
    1be4:	200001ac 	.word	0x200001ac

00001be8 <main>:
			break;	
		}
	}//while
}

void main(void){
    1be8:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1bec:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1bee:	4ac0      	ldr	r2, [pc, #768]	; (1ef0 <main+0x308>)
    1bf0:	6813      	ldr	r3, [r2, #0]
    1bf2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1bf6:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1bf8:	4613      	mov	r3, r2
    1bfa:	681a      	ldr	r2, [r3, #0]
    1bfc:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1c00:	d0fb      	beq.n	1bfa <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1c02:	4bbb      	ldr	r3, [pc, #748]	; (1ef0 <main+0x308>)
    1c04:	685a      	ldr	r2, [r3, #4]
    1c06:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1c0a:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1c0c:	681a      	ldr	r2, [r3, #0]
    1c0e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1c12:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1c14:	681a      	ldr	r2, [r3, #0]
    1c16:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1c1a:	d0fb      	beq.n	1c14 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1c1c:	4ab5      	ldr	r2, [pc, #724]	; (1ef4 <main+0x30c>)
    1c1e:	6813      	ldr	r3, [r2, #0]
    1c20:	f043 0312 	orr.w	r3, r3, #18
    1c24:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1c26:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1c2a:	6853      	ldr	r3, [r2, #4]
    1c2c:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1c30:	f043 0302 	orr.w	r3, r3, #2
    1c34:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1c36:	f640 031d 	movw	r3, #2077	; 0x81d
    1c3a:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1c3c:	4cae      	ldr	r4, [pc, #696]	; (1ef8 <main+0x310>)
    1c3e:	2206      	movs	r2, #6
    1c40:	210d      	movs	r1, #13
    1c42:	4620      	mov	r0, r4
    1c44:	f7ff fcaa 	bl	159c <config_pin>
	_led_off();
    1c48:	68e3      	ldr	r3, [r4, #12]
    1c4a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1c4e:	60e3      	str	r3, [r4, #12]
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1c50:	2400      	movs	r4, #0
    1c52:	9401      	str	r4, [sp, #4]
    1c54:	2301      	movs	r3, #1
    1c56:	9300      	str	r3, [sp, #0]
    1c58:	2303      	movs	r3, #3
    1c5a:	4622      	mov	r2, r4
    1c5c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1c60:	4620      	mov	r0, r4
    1c62:	f001 fced 	bl	3640 <usart_open_channel>
	gamepad_init();
    1c66:	f7ff fa77 	bl	1158 <gamepad_init>
	tvout_init();
    1c6a:	f001 f9e1 	bl	3030 <tvout_init>
	sound_init();
    1c6e:	f000 fe43 	bl	28f8 <sound_init>
	gfx_cls();
    1c72:	f7ff fd49 	bl	1708 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1c76:	f001 fc2b 	bl	34d0 <get_video_params>
	display_menu();
    1c7a:	f7ff fedd 	bl	1a38 <display_menu>
	int i=0;
    1c7e:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1c80:	4b9e      	ldr	r3, [pc, #632]	; (1efc <main+0x314>)
    1c82:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1c86:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1c8a:	9304      	str	r3, [sp, #16]
    1c8c:	e186      	b.n	1f9c <main+0x3b4>
			if (i<(MENU_ITEMS-1)) i++;
    1c8e:	f1ba 0f03 	cmp.w	sl, #3
    1c92:	f300 8183 	bgt.w	1f9c <main+0x3b4>
    1c96:	f10a 0a01 	add.w	sl, sl, #1
    1c9a:	e17f      	b.n	1f9c <main+0x3b4>
			switch(i){
    1c9c:	f1ba 0f04 	cmp.w	sl, #4
    1ca0:	f200 817a 	bhi.w	1f98 <main+0x3b0>
    1ca4:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1ca8:	00cd0005 	.word	0x00cd0005
    1cac:	01aa010c 	.word	0x01aa010c
    1cb0:	01e6      	.short	0x01e6
	count=games_count();
    1cb2:	f7ff fb01 	bl	12b8 <games_count>
    1cb6:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1cb8:	2000      	movs	r0, #0
    1cba:	f001 fbdf 	bl	347c <set_video_mode>
	vparams=get_video_params();
    1cbe:	f001 fc07 	bl	34d0 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1cc2:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1cc6:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1cca:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1ccc:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1cd0:	454e      	cmp	r6, r9
    1cd2:	bfda      	itte	le
    1cd4:	eba9 0806 	suble.w	r8, r9, r6
    1cd8:	f108 0801 	addle.w	r8, r8, #1
    1cdc:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1cde:	2100      	movs	r1, #0
    1ce0:	4608      	mov	r0, r1
    1ce2:	f001 f8a9 	bl	2e38 <set_cursor>
	print(" ********** GAMES **********");
    1ce6:	4886      	ldr	r0, [pc, #536]	; (1f00 <main+0x318>)
    1ce8:	f001 f8da 	bl	2ea0 <print>
	while ((r<rows) && games_list[first].size){
    1cec:	f1bb 0f01 	cmp.w	fp, #1
    1cf0:	d92d      	bls.n	1d4e <main+0x166>
    1cf2:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1cf6:	4a83      	ldr	r2, [pc, #524]	; (1f04 <main+0x31c>)
    1cf8:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1cfc:	691b      	ldr	r3, [r3, #16]
    1cfe:	b333      	cbz	r3, 1d4e <main+0x166>
    1d00:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1d04:	1c53      	adds	r3, r2, #1
    1d06:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1d0a:	2501      	movs	r5, #1
		put_char(' ');
    1d0c:	2720      	movs	r7, #32
		new_line();
    1d0e:	f000 ffe1 	bl	2cd4 <new_line>
		clear_line();
    1d12:	f001 f95d 	bl	2fd0 <clear_line>
		put_char(' ');
    1d16:	4638      	mov	r0, r7
    1d18:	f001 f824 	bl	2d64 <put_char>
		print(games_list[first].name);
    1d1c:	4620      	mov	r0, r4
    1d1e:	f001 f8bf 	bl	2ea0 <print>
		line=get_cursor()&0xff;
    1d22:	f001 f88f 	bl	2e44 <get_cursor>
		set_cursor(90,line);
    1d26:	b2c1      	uxtb	r1, r0
    1d28:	205a      	movs	r0, #90	; 0x5a
    1d2a:	f001 f885 	bl	2e38 <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1d2e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1d32:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1d34:	bf0c      	ite	eq
    1d36:	4874      	ldreq	r0, [pc, #464]	; (1f08 <main+0x320>)
			print("(BPCHIP)");
    1d38:	4874      	ldrne	r0, [pc, #464]	; (1f0c <main+0x324>)
    1d3a:	f001 f8b1 	bl	2ea0 <print>
		r++;
    1d3e:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1d40:	42ae      	cmp	r6, r5
    1d42:	d004      	beq.n	1d4e <main+0x166>
    1d44:	341c      	adds	r4, #28
    1d46:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1d4a:	2b00      	cmp	r3, #0
    1d4c:	d1df      	bne.n	1d0e <main+0x126>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1d4e:	eba9 0108 	sub.w	r1, r9, r8
    1d52:	00c9      	lsls	r1, r1, #3
    1d54:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d58:	2000      	movs	r0, #0
    1d5a:	f001 f86d 	bl	2e38 <set_cursor>
		put_char('>');
    1d5e:	203e      	movs	r0, #62	; 0x3e
    1d60:	f001 f800 	bl	2d64 <put_char>
		btn=btn_wait_any();
    1d64:	f7ff fa6e 	bl	1244 <btn_wait_any>
    1d68:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1d6a:	f7ff fa57 	bl	121c <btn_wait_up>
		switch(btn){
    1d6e:	2c04      	cmp	r4, #4
    1d70:	d053      	beq.n	1e1a <main+0x232>
    1d72:	d943      	bls.n	1dfc <main+0x214>
    1d74:	2c40      	cmp	r4, #64	; 0x40
    1d76:	d057      	beq.n	1e28 <main+0x240>
    1d78:	2c80      	cmp	r4, #128	; 0x80
    1d7a:	f000 810d 	beq.w	1f98 <main+0x3b0>
    1d7e:	2c20      	cmp	r4, #32
    1d80:	d1a6      	bne.n	1cd0 <main+0xe8>
	run_game(selected-1);
    1d82:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1d86:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1d8a:	4b5e      	ldr	r3, [pc, #376]	; (1f04 <main+0x31c>)
    1d8c:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1d90:	2b01      	cmp	r3, #1
    1d92:	bf14      	ite	ne
    1d94:	2600      	movne	r6, #0
    1d96:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1d9a:	4f5a      	ldr	r7, [pc, #360]	; (1f04 <main+0x31c>)
    1d9c:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1da0:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1da4:	6922      	ldr	r2, [r4, #16]
    1da6:	495a      	ldr	r1, [pc, #360]	; (1f10 <main+0x328>)
    1da8:	4431      	add	r1, r6
    1daa:	6960      	ldr	r0, [r4, #20]
    1dac:	f7ff fb37 	bl	141e <move>
	set_keymap(games_list[idx].keymap);
    1db0:	69a0      	ldr	r0, [r4, #24]
    1db2:	f7ff f9c5 	bl	1140 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1db6:	eba5 0909 	sub.w	r9, r5, r9
    1dba:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1dbe:	f001 fb5d 	bl	347c <set_video_mode>
	exit_code=chip_vm(addr,debug_level);
    1dc2:	4b54      	ldr	r3, [pc, #336]	; (1f14 <main+0x32c>)
    1dc4:	7819      	ldrb	r1, [r3, #0]
    1dc6:	4630      	mov	r0, r6
    1dc8:	f7fe fb20 	bl	40c <chip_vm>
    1dcc:	4604      	mov	r4, r0
	print("exit code: ");
    1dce:	4852      	ldr	r0, [pc, #328]	; (1f18 <main+0x330>)
    1dd0:	f001 f866 	bl	2ea0 <print>
	switch(exit_code){
    1dd4:	2c01      	cmp	r4, #1
    1dd6:	d02a      	beq.n	1e2e <main+0x246>
    1dd8:	b374      	cbz	r4, 1e38 <main+0x250>
    1dda:	2c03      	cmp	r4, #3
    1ddc:	d82c      	bhi.n	1e38 <main+0x250>
		select_console(SERIAL);
    1dde:	2001      	movs	r0, #1
    1de0:	f001 f918 	bl	3014 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1de4:	4621      	mov	r1, r4
    1de6:	484d      	ldr	r0, [pc, #308]	; (1f1c <main+0x334>)
    1de8:	f7fe faa0 	bl	32c <print_vms>
		select_console(LOCAL);
    1dec:	2000      	movs	r0, #0
    1dee:	f001 f911 	bl	3014 <select_console>
		btn_wait_any();
    1df2:	f7ff fa27 	bl	1244 <btn_wait_any>
		i=1;
    1df6:	2301      	movs	r3, #1
    1df8:	9305      	str	r3, [sp, #20]
    1dfa:	e01d      	b.n	1e38 <main+0x250>
		switch(btn){
    1dfc:	2c01      	cmp	r4, #1
    1dfe:	d009      	beq.n	1e14 <main+0x22c>
    1e00:	2c02      	cmp	r4, #2
    1e02:	f47f af65 	bne.w	1cd0 <main+0xe8>
			if (selected>1) selected--;
    1e06:	f1b9 0f01 	cmp.w	r9, #1
    1e0a:	f77f af61 	ble.w	1cd0 <main+0xe8>
    1e0e:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1e12:	e75d      	b.n	1cd0 <main+0xe8>
			selected=1;
    1e14:	f04f 0901 	mov.w	r9, #1
    1e18:	e75a      	b.n	1cd0 <main+0xe8>
			if (selected<count){
    1e1a:	9b03      	ldr	r3, [sp, #12]
    1e1c:	454b      	cmp	r3, r9
    1e1e:	f77f af57 	ble.w	1cd0 <main+0xe8>
				selected++;
    1e22:	f109 0901 	add.w	r9, r9, #1
    1e26:	e753      	b.n	1cd0 <main+0xe8>
			selected=count;
    1e28:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1e2c:	e750      	b.n	1cd0 <main+0xe8>
		print("CHIP EXIT OK");
    1e2e:	483c      	ldr	r0, [pc, #240]	; (1f20 <main+0x338>)
    1e30:	f001 f836 	bl	2ea0 <print>
		i=0;
    1e34:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1e38:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1e3c:	f001 fb52 	bl	34e4 <game_pause>
    1e40:	e0aa      	b.n	1f98 <main+0x3b0>
	gfx_cls();
    1e42:	f7ff fc61 	bl	1708 <gfx_cls>
	print(" **** VM debug support ****\n");
    1e46:	4837      	ldr	r0, [pc, #220]	; (1f24 <main+0x33c>)
    1e48:	f001 f82a 	bl	2ea0 <print>
	print(" No debug support\n");
    1e4c:	4836      	ldr	r0, [pc, #216]	; (1f28 <main+0x340>)
    1e4e:	f001 f827 	bl	2ea0 <print>
	print(" Print PC and OPCODE\n");
    1e52:	4836      	ldr	r0, [pc, #216]	; (1f2c <main+0x344>)
    1e54:	f001 f824 	bl	2ea0 <print>
	print(" Print all VM states.\n");
    1e58:	4835      	ldr	r0, [pc, #212]	; (1f30 <main+0x348>)
    1e5a:	f001 f821 	bl	2ea0 <print>
	print(" Single step\n");
    1e5e:	4835      	ldr	r0, [pc, #212]	; (1f34 <main+0x34c>)
    1e60:	f001 f81e 	bl	2ea0 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e64:	4c2b      	ldr	r4, [pc, #172]	; (1f14 <main+0x32c>)
    1e66:	2500      	movs	r5, #0
		put_char('*');
    1e68:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e6a:	7821      	ldrb	r1, [r4, #0]
    1e6c:	3101      	adds	r1, #1
    1e6e:	00c9      	lsls	r1, r1, #3
    1e70:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1e74:	4628      	mov	r0, r5
    1e76:	f000 ffdf 	bl	2e38 <set_cursor>
		put_char('*');
    1e7a:	4630      	mov	r0, r6
    1e7c:	f000 ff72 	bl	2d64 <put_char>
		btn=btn_wait_any();
    1e80:	f7ff f9e0 	bl	1244 <btn_wait_any>
    1e84:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e86:	7821      	ldrb	r1, [r4, #0]
    1e88:	3101      	adds	r1, #1
    1e8a:	00c9      	lsls	r1, r1, #3
    1e8c:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1e90:	4628      	mov	r0, r5
    1e92:	f000 ffd1 	bl	2e38 <set_cursor>
		put_char(' ');
    1e96:	2020      	movs	r0, #32
    1e98:	f000 ff64 	bl	2d64 <put_char>
		switch(btn){
    1e9c:	2f04      	cmp	r7, #4
    1e9e:	d009      	beq.n	1eb4 <main+0x2cc>
    1ea0:	2f20      	cmp	r7, #32
    1ea2:	d079      	beq.n	1f98 <main+0x3b0>
    1ea4:	2f02      	cmp	r7, #2
    1ea6:	d1e0      	bne.n	1e6a <main+0x282>
			if (debug_level) debug_level--;
    1ea8:	7823      	ldrb	r3, [r4, #0]
    1eaa:	2b00      	cmp	r3, #0
    1eac:	d0dd      	beq.n	1e6a <main+0x282>
    1eae:	3b01      	subs	r3, #1
    1eb0:	7023      	strb	r3, [r4, #0]
    1eb2:	e7da      	b.n	1e6a <main+0x282>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1eb4:	7823      	ldrb	r3, [r4, #0]
    1eb6:	2b02      	cmp	r3, #2
    1eb8:	d8d7      	bhi.n	1e6a <main+0x282>
    1eba:	3301      	adds	r3, #1
    1ebc:	7023      	strb	r3, [r4, #0]
    1ebe:	e7d4      	b.n	1e6a <main+0x282>
	set_video_mode(p);
    1ec0:	2000      	movs	r0, #0
    1ec2:	f001 fadb 	bl	347c <set_video_mode>
	color_bars();
    1ec6:	f7ff fd5f 	bl	1988 <color_bars>
	vertical_bars();
    1eca:	f7ff fd82 	bl	19d2 <vertical_bars>
	horiz_bars();
    1ece:	f7ff fd9a 	bl	1a06 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1ed2:	2110      	movs	r1, #16
    1ed4:	4818      	ldr	r0, [pc, #96]	; (1f38 <main+0x350>)
    1ed6:	f000 fffe 	bl	2ed6 <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1eda:	210a      	movs	r1, #10
    1edc:	9804      	ldr	r0, [sp, #16]
    1ede:	f000 fffa 	bl	2ed6 <print_int>
	init_balls();
    1ee2:	f7ff fe43 	bl	1b6c <init_balls>
	p=0;
    1ee6:	2400      	movs	r4, #0
				print("BPCHIP mode\n180x112 16 colors");
    1ee8:	4f14      	ldr	r7, [pc, #80]	; (1f3c <main+0x354>)
				sprite_bpp=TWO_BPP;
    1eea:	4e15      	ldr	r6, [pc, #84]	; (1f40 <main+0x358>)
				print("SCHIP mode\n128x64 mono");
    1eec:	4d15      	ldr	r5, [pc, #84]	; (1f44 <main+0x35c>)
    1eee:	e03d      	b.n	1f6c <main+0x384>
    1ef0:	40021000 	.word	0x40021000
    1ef4:	40022000 	.word	0x40022000
    1ef8:	40011000 	.word	0x40011000
    1efc:	20004e80 	.word	0x20004e80
    1f00:	00003ea4 	.word	0x00003ea4
    1f04:	20000004 	.word	0x20000004
    1f08:	00003ec4 	.word	0x00003ec4
    1f0c:	00003ecc 	.word	0x00003ecc
    1f10:	200006e4 	.word	0x200006e4
    1f14:	200026e8 	.word	0x200026e8
    1f18:	00003ed8 	.word	0x00003ed8
    1f1c:	00003ef4 	.word	0x00003ef4
    1f20:	00003ee4 	.word	0x00003ee4
    1f24:	00003f04 	.word	0x00003f04
    1f28:	00003f24 	.word	0x00003f24
    1f2c:	00003f38 	.word	0x00003f38
    1f30:	00003f50 	.word	0x00003f50
    1f34:	00003f68 	.word	0x00003f68
    1f38:	00004400 	.word	0x00004400
    1f3c:	00003f78 	.word	0x00003f78
    1f40:	200001ac 	.word	0x200001ac
    1f44:	00003f98 	.word	0x00003f98
			p^=1;
    1f48:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1f4c:	4620      	mov	r0, r4
    1f4e:	f001 fa95 	bl	347c <set_video_mode>
			switch(p){
    1f52:	2c00      	cmp	r4, #0
    1f54:	d046      	beq.n	1fe4 <main+0x3fc>
    1f56:	2c01      	cmp	r4, #1
    1f58:	d04c      	beq.n	1ff4 <main+0x40c>
			vertical_bars();
    1f5a:	f7ff fd3a 	bl	19d2 <vertical_bars>
			horiz_bars();
    1f5e:	f7ff fd52 	bl	1a06 <horiz_bars>
			init_balls();
    1f62:	f7ff fe03 	bl	1b6c <init_balls>
			btn_wait_up(KEY_RIGHT);
    1f66:	2010      	movs	r0, #16
    1f68:	f7ff f958 	bl	121c <btn_wait_up>
		draw_balls();
    1f6c:	f7ff fd82 	bl	1a74 <draw_balls>
		draw_balls();
    1f70:	f7ff fd80 	bl	1a74 <draw_balls>
		move_balls();
    1f74:	f7ff fdb9 	bl	1aea <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1f78:	2010      	movs	r0, #16
    1f7a:	f7ff f92f 	bl	11dc <btn_query_down>
    1f7e:	2800      	cmp	r0, #0
    1f80:	d1e2      	bne.n	1f48 <main+0x360>
		}else if (btn_query_down(KEY_B)){
    1f82:	2020      	movs	r0, #32
    1f84:	f7ff f92a 	bl	11dc <btn_query_down>
    1f88:	2800      	cmp	r0, #0
    1f8a:	d0ef      	beq.n	1f6c <main+0x384>
			btn_wait_up(KEY_B);
    1f8c:	2020      	movs	r0, #32
    1f8e:	f7ff f945 	bl	121c <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1f92:	2000      	movs	r0, #0
    1f94:	f001 fa72 	bl	347c <set_video_mode>
			display_menu();
    1f98:	f7ff fd4e 	bl	1a38 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1f9c:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1fa0:	b2e4      	uxtb	r4, r4
    1fa2:	4621      	mov	r1, r4
    1fa4:	2000      	movs	r0, #0
    1fa6:	f000 ff47 	bl	2e38 <set_cursor>
		put_char('>');
    1faa:	203e      	movs	r0, #62	; 0x3e
    1fac:	f000 feda 	bl	2d64 <put_char>
		btn=btn_wait_any();
    1fb0:	f7ff f948 	bl	1244 <btn_wait_any>
    1fb4:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1fb6:	f7ff f931 	bl	121c <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1fba:	4621      	mov	r1, r4
    1fbc:	2000      	movs	r0, #0
    1fbe:	f000 ff3b 	bl	2e38 <set_cursor>
		put_char(' ');
    1fc2:	2020      	movs	r0, #32
    1fc4:	f000 fece 	bl	2d64 <put_char>
		switch(btn){
    1fc8:	2d04      	cmp	r5, #4
    1fca:	f43f ae60 	beq.w	1c8e <main+0xa6>
    1fce:	2d20      	cmp	r5, #32
    1fd0:	f43f ae64 	beq.w	1c9c <main+0xb4>
    1fd4:	2d02      	cmp	r5, #2
    1fd6:	d1e1      	bne.n	1f9c <main+0x3b4>
			if (i) i--;
    1fd8:	f1ba 0f00 	cmp.w	sl, #0
    1fdc:	d0de      	beq.n	1f9c <main+0x3b4>
    1fde:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1fe2:	e7db      	b.n	1f9c <main+0x3b4>
				print("BPCHIP mode\n180x112 16 colors");
    1fe4:	4638      	mov	r0, r7
    1fe6:	f000 ff5b 	bl	2ea0 <print>
				color_bars();
    1fea:	f7ff fccd 	bl	1988 <color_bars>
				sprite_bpp=TWO_BPP;
    1fee:	2301      	movs	r3, #1
    1ff0:	7033      	strb	r3, [r6, #0]
    1ff2:	e7b2      	b.n	1f5a <main+0x372>
				print("SCHIP mode\n128x64 mono");
    1ff4:	4628      	mov	r0, r5
    1ff6:	f000 ff53 	bl	2ea0 <print>
    1ffa:	e7ae      	b.n	1f5a <main+0x372>
	gfx_cls();
    1ffc:	f7ff fb84 	bl	1708 <gfx_cls>
	print("press buttons\n");
    2000:	4828      	ldr	r0, [pc, #160]	; (20a4 <main+0x4bc>)
    2002:	f000 ff4d 	bl	2ea0 <print>
		tone(freq,30);
    2006:	251e      	movs	r5, #30
			freq=493;
    2008:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    200c:	f240 266e 	movw	r6, #622	; 0x26e
    2010:	e019      	b.n	2046 <main+0x45e>
		switch(key){
    2012:	2802      	cmp	r0, #2
    2014:	d03f      	beq.n	2096 <main+0x4ae>
    2016:	2804      	cmp	r0, #4
    2018:	d00e      	beq.n	2038 <main+0x450>
    201a:	2801      	cmp	r0, #1
    201c:	d024      	beq.n	2068 <main+0x480>
		tone(freq,30);
    201e:	4629      	mov	r1, r5
    2020:	9802      	ldr	r0, [sp, #8]
    2022:	f000 fc95 	bl	2950 <tone>
	while (key!=KEY_B){
    2026:	2c20      	cmp	r4, #32
    2028:	d10d      	bne.n	2046 <main+0x45e>
    202a:	e02b      	b.n	2084 <main+0x49c>
		switch(key){
    202c:	2810      	cmp	r0, #16
    202e:	d1f6      	bne.n	201e <main+0x436>
			freq=523;
    2030:	f240 230b 	movw	r3, #523	; 0x20b
    2034:	9302      	str	r3, [sp, #8]
    2036:	e002      	b.n	203e <main+0x456>
			freq=466;
    2038:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    203c:	9302      	str	r3, [sp, #8]
		tone(freq,30);
    203e:	4629      	mov	r1, r5
    2040:	9802      	ldr	r0, [sp, #8]
    2042:	f000 fc85 	bl	2950 <tone>
		key=btn_wait_any();
    2046:	f7ff f8fd 	bl	1244 <btn_wait_any>
    204a:	4604      	mov	r4, r0
		switch(key){
    204c:	2808      	cmp	r0, #8
    204e:	d026      	beq.n	209e <main+0x4b6>
    2050:	d9df      	bls.n	2012 <main+0x42a>
    2052:	2820      	cmp	r0, #32
    2054:	d011      	beq.n	207a <main+0x492>
    2056:	d9e9      	bls.n	202c <main+0x444>
    2058:	2840      	cmp	r0, #64	; 0x40
    205a:	d009      	beq.n	2070 <main+0x488>
    205c:	2880      	cmp	r0, #128	; 0x80
    205e:	d1de      	bne.n	201e <main+0x436>
			freq=659;
    2060:	f240 2393 	movw	r3, #659	; 0x293
    2064:	9302      	str	r3, [sp, #8]
    2066:	e7ea      	b.n	203e <main+0x456>
			freq=554;
    2068:	f240 232a 	movw	r3, #554	; 0x22a
    206c:	9302      	str	r3, [sp, #8]
    206e:	e7e6      	b.n	203e <main+0x456>
			freq=622;
    2070:	9602      	str	r6, [sp, #8]
    2072:	e7e4      	b.n	203e <main+0x456>
				basic();
    2074:	f7fe f900 	bl	278 <basic>
    2078:	e78e      	b.n	1f98 <main+0x3b0>
		tone(freq,30);
    207a:	211e      	movs	r1, #30
    207c:	f240 204b 	movw	r0, #587	; 0x24b
    2080:	f000 fc66 	bl	2950 <tone>
	noise(30);
    2084:	201e      	movs	r0, #30
    2086:	f000 fc9d 	bl	29c4 <noise>
	while(sound_timer);
    208a:	4a07      	ldr	r2, [pc, #28]	; (20a8 <main+0x4c0>)
    208c:	8813      	ldrh	r3, [r2, #0]
    208e:	b29b      	uxth	r3, r3
    2090:	2b00      	cmp	r3, #0
    2092:	d1fb      	bne.n	208c <main+0x4a4>
    2094:	e780      	b.n	1f98 <main+0x3b0>
			freq=440;
    2096:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    209a:	9302      	str	r3, [sp, #8]
    209c:	e7cf      	b.n	203e <main+0x456>
			freq=493;
    209e:	9702      	str	r7, [sp, #8]
    20a0:	e7cd      	b.n	203e <main+0x456>
    20a2:	bf00      	nop
    20a4:	00003fb0 	.word	0x00003fb0
    20a8:	20004e7c 	.word	0x20004e7c

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
    21f8:	00003d64 	.word	0x00003d64
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
    2610:	f7fe fe99 	bl	1346 <digit>
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
    264c:	f7fe fe7b 	bl	1346 <digit>
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
    2686:	f7fe fe5e 	bl	1346 <digit>
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
    26d2:	f7fe fe38 	bl	1346 <digit>
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
    271a:	f7fe fe14 	bl	1346 <digit>
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
    2754:	f7fe fdf7 	bl	1346 <digit>
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
    2912:	f7fe fe43 	bl	159c <config_pin>
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
    2974:	20004e7c 	.word	0x20004e7c

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
    29bc:	00003d74 	.word	0x00003d74
    29c0:	20004e7c 	.word	0x20004e7c

000029c4 <noise>:
}

// produit un bruit 
void noise(int length){
    29c4:	b510      	push	{r4, lr}
    29c6:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    29c8:	4b07      	ldr	r3, [pc, #28]	; (29e8 <noise+0x24>)
    29ca:	6818      	ldr	r0, [r3, #0]
    29cc:	f7fd fd0a 	bl	3e4 <srand>
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
    29e8:	20004e78 	.word	0x20004e78

000029ec <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    29ec:	4668      	mov	r0, sp
    29ee:	f020 0107 	bic.w	r1, r0, #7
    29f2:	468d      	mov	sp, r1
    29f4:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    29f6:	f7fd fcfb 	bl	3f0 <rand>
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
    2a5a:	f7fe fd9f 	bl	159c <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2a5e:	220b      	movs	r2, #11
    2a60:	210d      	movs	r1, #13
    2a62:	4620      	mov	r0, r4
    2a64:	f7fe fd9a 	bl	159c <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2a68:	2204      	movs	r2, #4
    2a6a:	210e      	movs	r1, #14
    2a6c:	4620      	mov	r0, r4
    2a6e:	f7fe fd95 	bl	159c <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2a72:	220b      	movs	r2, #11
    2a74:	210f      	movs	r1, #15
    2a76:	4620      	mov	r0, r4
    2a78:	f7fe fd90 	bl	159c <config_pin>
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
    2a90:	f7fe fd84 	bl	159c <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2a94:	220b      	movs	r2, #11
    2a96:	2105      	movs	r1, #5
    2a98:	4620      	mov	r0, r4
    2a9a:	f7fe fd7f 	bl	159c <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2a9e:	2204      	movs	r2, #4
    2aa0:	2106      	movs	r1, #6
    2aa2:	4620      	mov	r0, r4
    2aa4:	f7fe fd7a 	bl	159c <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2aa8:	220b      	movs	r2, #11
    2aaa:	2107      	movs	r1, #7
    2aac:	4620      	mov	r0, r4
    2aae:	f7fe fd75 	bl	159c <config_pin>
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
    2ad0:	f7fe fd64 	bl	159c <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2ad4:	4c0a      	ldr	r4, [pc, #40]	; (2b00 <spi_config_port+0xca>)
    2ad6:	220b      	movs	r2, #11
    2ad8:	2103      	movs	r1, #3
    2ada:	4620      	mov	r0, r4
    2adc:	f7fe fd5e 	bl	159c <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2ae0:	2204      	movs	r2, #4
    2ae2:	4611      	mov	r1, r2
    2ae4:	4620      	mov	r0, r4
    2ae6:	f7fe fd59 	bl	159c <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2aea:	220b      	movs	r2, #11
    2aec:	2105      	movs	r1, #5
    2aee:	4620      	mov	r0, r4
    2af0:	f7fe fd54 	bl	159c <config_pin>
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
    2bd8:	f000 f962 	bl	2ea0 <print>
	print("\nat address ");
    2bdc:	4813      	ldr	r0, [pc, #76]	; (2c2c <print_fault+0x58>)
    2bde:	f000 f95f 	bl	2ea0 <print>
	if (adr) {
    2be2:	b9ec      	cbnz	r4, 2c20 <print_fault+0x4c>
	put_char(CR);
    2be4:	200d      	movs	r0, #13
    2be6:	f000 f8bd 	bl	2d64 <put_char>
	print("\nUFSR=");
    2bea:	4811      	ldr	r0, [pc, #68]	; (2c30 <print_fault+0x5c>)
    2bec:	f000 f958 	bl	2ea0 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2bf0:	4c10      	ldr	r4, [pc, #64]	; (2c34 <print_fault+0x60>)
    2bf2:	6820      	ldr	r0, [r4, #0]
    2bf4:	2110      	movs	r1, #16
    2bf6:	40c8      	lsrs	r0, r1
    2bf8:	f000 f96d 	bl	2ed6 <print_int>
	print("\nBFSR=");
    2bfc:	480e      	ldr	r0, [pc, #56]	; (2c38 <print_fault+0x64>)
    2bfe:	f000 f94f 	bl	2ea0 <print>
	print_int(CFSR->fsr.busFault,16);
    2c02:	6820      	ldr	r0, [r4, #0]
    2c04:	2110      	movs	r1, #16
    2c06:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2c0a:	f000 f964 	bl	2ed6 <print_int>
	print("\nMMFSR=");
    2c0e:	480b      	ldr	r0, [pc, #44]	; (2c3c <print_fault+0x68>)
    2c10:	f000 f946 	bl	2ea0 <print>
	print_int(CFSR->fsr.mmFault,16);
    2c14:	6820      	ldr	r0, [r4, #0]
    2c16:	2110      	movs	r1, #16
    2c18:	b2c0      	uxtb	r0, r0
    2c1a:	f000 f95c 	bl	2ed6 <print_int>
    2c1e:	e7fe      	b.n	2c1e <print_fault+0x4a>
		print_int(adr,16);
    2c20:	2110      	movs	r1, #16
    2c22:	4620      	mov	r0, r4
    2c24:	f000 f957 	bl	2ed6 <print_int>
    2c28:	e7dc      	b.n	2be4 <print_fault+0x10>
    2c2a:	bf00      	nop
    2c2c:	00004070 	.word	0x00004070
    2c30:	00004080 	.word	0x00004080
    2c34:	e000ed28 	.word	0xe000ed28
    2c38:	00004088 	.word	0x00004088
    2c3c:	00004090 	.word	0x00004090

00002c40 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2c40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2c44:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2c46:	18cb      	adds	r3, r1, r3
    2c48:	9301      	str	r3, [sp, #4]
    2c4a:	4299      	cmp	r1, r3
    2c4c:	da20      	bge.n	2c90 <draw_char+0x50>
    2c4e:	4683      	mov	fp, r0
    2c50:	460e      	mov	r6, r1
    2c52:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2c54:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2c58:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c5a:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2c98 <draw_char+0x58>
		byte=*glyph++;
    2c5e:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2c62:	45bb      	cmp	fp, r7
    2c64:	da10      	bge.n	2c88 <draw_char+0x48>
    2c66:	465c      	mov	r4, fp
    2c68:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c6a:	ea18 0f05 	tst.w	r8, r5
    2c6e:	bf14      	ite	ne
    2c70:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2c74:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2c78:	4631      	mov	r1, r6
    2c7a:	4620      	mov	r0, r4
    2c7c:	f7fe fd1a 	bl	16b4 <gfx_plot>
			mask>>=1;
    2c80:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2c82:	3401      	adds	r4, #1
    2c84:	42bc      	cmp	r4, r7
    2c86:	d1f0      	bne.n	2c6a <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2c88:	3601      	adds	r6, #1
    2c8a:	9b01      	ldr	r3, [sp, #4]
    2c8c:	429e      	cmp	r6, r3
    2c8e:	d1e6      	bne.n	2c5e <draw_char+0x1e>
		}
	}
}
    2c90:	b003      	add	sp, #12
    2c92:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2c96:	bf00      	nop
    2c98:	20000204 	.word	0x20000204

00002c9c <font_color>:
	text_colors[FG]=color&0xf;
    2c9c:	f000 000f 	and.w	r0, r0, #15
    2ca0:	4b01      	ldr	r3, [pc, #4]	; (2ca8 <font_color+0xc>)
    2ca2:	7058      	strb	r0, [r3, #1]
    2ca4:	4770      	bx	lr
    2ca6:	bf00      	nop
    2ca8:	20000204 	.word	0x20000204

00002cac <bg_color>:
	text_colors[BG]=color&0xf;
    2cac:	f000 000f 	and.w	r0, r0, #15
    2cb0:	4b01      	ldr	r3, [pc, #4]	; (2cb8 <bg_color+0xc>)
    2cb2:	7018      	strb	r0, [r3, #0]
    2cb4:	4770      	bx	lr
    2cb6:	bf00      	nop
    2cb8:	20000204 	.word	0x20000204

00002cbc <select_font>:
	font=font_id;
    2cbc:	4b01      	ldr	r3, [pc, #4]	; (2cc4 <select_font+0x8>)
    2cbe:	7098      	strb	r0, [r3, #2]
    2cc0:	4770      	bx	lr
    2cc2:	bf00      	nop
    2cc4:	20000204 	.word	0x20000204

00002cc8 <get_font>:
}
    2cc8:	4b01      	ldr	r3, [pc, #4]	; (2cd0 <get_font+0x8>)
    2cca:	7898      	ldrb	r0, [r3, #2]
    2ccc:	4770      	bx	lr
    2cce:	bf00      	nop
    2cd0:	20000204 	.word	0x20000204

00002cd4 <new_line>:
void new_line(){
    2cd4:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2cd6:	4b21      	ldr	r3, [pc, #132]	; (2d5c <new_line+0x88>)
    2cd8:	781b      	ldrb	r3, [r3, #0]
    2cda:	2b00      	cmp	r3, #0
    2cdc:	d138      	bne.n	2d50 <new_line+0x7c>
		xpos=0;
    2cde:	2200      	movs	r2, #0
    2ce0:	4b1e      	ldr	r3, [pc, #120]	; (2d5c <new_line+0x88>)
    2ce2:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2ce4:	f000 fbf4 	bl	34d0 <get_video_params>
		switch (font){
    2ce8:	4b1d      	ldr	r3, [pc, #116]	; (2d60 <new_line+0x8c>)
    2cea:	789b      	ldrb	r3, [r3, #2]
    2cec:	2b01      	cmp	r3, #1
    2cee:	d011      	beq.n	2d14 <new_line+0x40>
    2cf0:	b113      	cbz	r3, 2cf8 <new_line+0x24>
    2cf2:	2b02      	cmp	r3, #2
    2cf4:	d01d      	beq.n	2d32 <new_line+0x5e>
    2cf6:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2cf8:	4b18      	ldr	r3, [pc, #96]	; (2d5c <new_line+0x88>)
    2cfa:	789b      	ldrb	r3, [r3, #2]
    2cfc:	1d99      	adds	r1, r3, #6
    2cfe:	89c2      	ldrh	r2, [r0, #14]
    2d00:	3a05      	subs	r2, #5
    2d02:	4291      	cmp	r1, r2
    2d04:	dc02      	bgt.n	2d0c <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2d06:	4a15      	ldr	r2, [pc, #84]	; (2d5c <new_line+0x88>)
    2d08:	7091      	strb	r1, [r2, #2]
    2d0a:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2d0c:	2006      	movs	r0, #6
    2d0e:	f7fe fd0f 	bl	1730 <gfx_scroll_up>
    2d12:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2d14:	4b11      	ldr	r3, [pc, #68]	; (2d5c <new_line+0x88>)
    2d16:	789b      	ldrb	r3, [r3, #2]
    2d18:	f103 010a 	add.w	r1, r3, #10
    2d1c:	89c2      	ldrh	r2, [r0, #14]
    2d1e:	3a09      	subs	r2, #9
    2d20:	4291      	cmp	r1, r2
    2d22:	dc02      	bgt.n	2d2a <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2d24:	4a0d      	ldr	r2, [pc, #52]	; (2d5c <new_line+0x88>)
    2d26:	7091      	strb	r1, [r2, #2]
    2d28:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2d2a:	200a      	movs	r0, #10
    2d2c:	f7fe fd00 	bl	1730 <gfx_scroll_up>
    2d30:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2d32:	4b0a      	ldr	r3, [pc, #40]	; (2d5c <new_line+0x88>)
    2d34:	789b      	ldrb	r3, [r3, #2]
    2d36:	f103 0108 	add.w	r1, r3, #8
    2d3a:	89c2      	ldrh	r2, [r0, #14]
    2d3c:	3a07      	subs	r2, #7
    2d3e:	4291      	cmp	r1, r2
    2d40:	dc02      	bgt.n	2d48 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2d42:	4a06      	ldr	r2, [pc, #24]	; (2d5c <new_line+0x88>)
    2d44:	7091      	strb	r1, [r2, #2]
    2d46:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2d48:	2008      	movs	r0, #8
    2d4a:	f7fe fcf1 	bl	1730 <gfx_scroll_up>
    2d4e:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    2d50:	210a      	movs	r1, #10
    2d52:	2000      	movs	r0, #0
    2d54:	f000 fd2a 	bl	37ac <usart_putc>
    2d58:	bd08      	pop	{r3, pc}
    2d5a:	bf00      	nop
    2d5c:	2000069c 	.word	0x2000069c
    2d60:	20000204 	.word	0x20000204

00002d64 <put_char>:

void put_char(uint8_t c){
    2d64:	b530      	push	{r4, r5, lr}
    2d66:	b083      	sub	sp, #12
	if (console==LOCAL){
    2d68:	4b2e      	ldr	r3, [pc, #184]	; (2e24 <put_char+0xc0>)
    2d6a:	781b      	ldrb	r3, [r3, #0]
    2d6c:	2b00      	cmp	r3, #0
    2d6e:	d153      	bne.n	2e18 <put_char+0xb4>
		switch(font){
    2d70:	4b2d      	ldr	r3, [pc, #180]	; (2e28 <put_char+0xc4>)
    2d72:	789b      	ldrb	r3, [r3, #2]
    2d74:	2b01      	cmp	r3, #1
    2d76:	d036      	beq.n	2de6 <put_char+0x82>
    2d78:	b1e3      	cbz	r3, 2db4 <put_char+0x50>
    2d7a:	2b02      	cmp	r3, #2
    2d7c:	d150      	bne.n	2e20 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2d7e:	f1a0 0320 	sub.w	r3, r0, #32
    2d82:	b2db      	uxtb	r3, r3
    2d84:	2b64      	cmp	r3, #100	; 0x64
    2d86:	d84b      	bhi.n	2e20 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2d88:	4c26      	ldr	r4, [pc, #152]	; (2e24 <put_char+0xc0>)
    2d8a:	78a1      	ldrb	r1, [r4, #2]
    2d8c:	7865      	ldrb	r5, [r4, #1]
    2d8e:	3820      	subs	r0, #32
    2d90:	4b26      	ldr	r3, [pc, #152]	; (2e2c <put_char+0xc8>)
    2d92:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2d96:	9300      	str	r3, [sp, #0]
    2d98:	2308      	movs	r3, #8
    2d9a:	2206      	movs	r2, #6
    2d9c:	4628      	mov	r0, r5
    2d9e:	f7ff ff4f 	bl	2c40 <draw_char>
				xpos+=CHAR_WIDTH;
    2da2:	7863      	ldrb	r3, [r4, #1]
    2da4:	3306      	adds	r3, #6
    2da6:	b2db      	uxtb	r3, r3
    2da8:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2daa:	2baf      	cmp	r3, #175	; 0xaf
    2dac:	d938      	bls.n	2e20 <put_char+0xbc>
					new_line();
    2dae:	f7ff ff91 	bl	2cd4 <new_line>
    2db2:	e035      	b.n	2e20 <put_char+0xbc>
			if (c<16){
    2db4:	280f      	cmp	r0, #15
    2db6:	d833      	bhi.n	2e20 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2db8:	4c1a      	ldr	r4, [pc, #104]	; (2e24 <put_char+0xc0>)
    2dba:	78a1      	ldrb	r1, [r4, #2]
    2dbc:	7865      	ldrb	r5, [r4, #1]
    2dbe:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2dc2:	4b1b      	ldr	r3, [pc, #108]	; (2e30 <put_char+0xcc>)
    2dc4:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dc8:	9300      	str	r3, [sp, #0]
    2dca:	2306      	movs	r3, #6
    2dcc:	2204      	movs	r2, #4
    2dce:	4628      	mov	r0, r5
    2dd0:	f7ff ff36 	bl	2c40 <draw_char>
				xpos+=SHEX_WIDTH;
    2dd4:	7863      	ldrb	r3, [r4, #1]
    2dd6:	3304      	adds	r3, #4
    2dd8:	b2db      	uxtb	r3, r3
    2dda:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2ddc:	2bb1      	cmp	r3, #177	; 0xb1
    2dde:	d91f      	bls.n	2e20 <put_char+0xbc>
					new_line();
    2de0:	f7ff ff78 	bl	2cd4 <new_line>
    2de4:	e01c      	b.n	2e20 <put_char+0xbc>
			if (c<16){
    2de6:	280f      	cmp	r0, #15
    2de8:	d81a      	bhi.n	2e20 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2dea:	4c0e      	ldr	r4, [pc, #56]	; (2e24 <put_char+0xc0>)
    2dec:	78a1      	ldrb	r1, [r4, #2]
    2dee:	7865      	ldrb	r5, [r4, #1]
    2df0:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2df4:	4b0f      	ldr	r3, [pc, #60]	; (2e34 <put_char+0xd0>)
    2df6:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dfa:	9300      	str	r3, [sp, #0]
    2dfc:	230a      	movs	r3, #10
    2dfe:	2208      	movs	r2, #8
    2e00:	4628      	mov	r0, r5
    2e02:	f7ff ff1d 	bl	2c40 <draw_char>
				xpos+=LHEX_WIDTH;
    2e06:	7863      	ldrb	r3, [r4, #1]
    2e08:	3308      	adds	r3, #8
    2e0a:	b2db      	uxtb	r3, r3
    2e0c:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2e0e:	2bad      	cmp	r3, #173	; 0xad
    2e10:	d906      	bls.n	2e20 <put_char+0xbc>
					new_line();
    2e12:	f7ff ff5f 	bl	2cd4 <new_line>
    2e16:	e003      	b.n	2e20 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2e18:	4601      	mov	r1, r0
    2e1a:	2000      	movs	r0, #0
    2e1c:	f000 fcc6 	bl	37ac <usart_putc>
	}
}
    2e20:	b003      	add	sp, #12
    2e22:	bd30      	pop	{r4, r5, pc}
    2e24:	2000069c 	.word	0x2000069c
    2e28:	20000204 	.word	0x20000204
    2e2c:	000038fc 	.word	0x000038fc
    2e30:	00003cc4 	.word	0x00003cc4
    2e34:	00003c24 	.word	0x00003c24

00002e38 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2e38:	4b01      	ldr	r3, [pc, #4]	; (2e40 <set_cursor+0x8>)
    2e3a:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2e3c:	7099      	strb	r1, [r3, #2]
    2e3e:	4770      	bx	lr
    2e40:	2000069c 	.word	0x2000069c

00002e44 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2e44:	4b03      	ldr	r3, [pc, #12]	; (2e54 <get_cursor+0x10>)
    2e46:	785a      	ldrb	r2, [r3, #1]
    2e48:	7898      	ldrb	r0, [r3, #2]
    2e4a:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2e4e:	b280      	uxth	r0, r0
    2e50:	4770      	bx	lr
    2e52:	bf00      	nop
    2e54:	2000069c 	.word	0x2000069c

00002e58 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2e58:	4b0f      	ldr	r3, [pc, #60]	; (2e98 <cursor_left+0x40>)
    2e5a:	789b      	ldrb	r3, [r3, #2]
    2e5c:	2b01      	cmp	r3, #1
    2e5e:	d00b      	beq.n	2e78 <cursor_left+0x20>
    2e60:	b113      	cbz	r3, 2e68 <cursor_left+0x10>
    2e62:	2b02      	cmp	r3, #2
    2e64:	d010      	beq.n	2e88 <cursor_left+0x30>
    2e66:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2e68:	4b0c      	ldr	r3, [pc, #48]	; (2e9c <cursor_left+0x44>)
    2e6a:	785b      	ldrb	r3, [r3, #1]
    2e6c:	2b04      	cmp	r3, #4
    2e6e:	d412      	bmi.n	2e96 <cursor_left+0x3e>
    2e70:	3b04      	subs	r3, #4
    2e72:	4a0a      	ldr	r2, [pc, #40]	; (2e9c <cursor_left+0x44>)
    2e74:	7053      	strb	r3, [r2, #1]
    2e76:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2e78:	4b08      	ldr	r3, [pc, #32]	; (2e9c <cursor_left+0x44>)
    2e7a:	785b      	ldrb	r3, [r3, #1]
    2e7c:	2b08      	cmp	r3, #8
    2e7e:	d40a      	bmi.n	2e96 <cursor_left+0x3e>
    2e80:	3b08      	subs	r3, #8
    2e82:	4a06      	ldr	r2, [pc, #24]	; (2e9c <cursor_left+0x44>)
    2e84:	7053      	strb	r3, [r2, #1]
    2e86:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2e88:	4b04      	ldr	r3, [pc, #16]	; (2e9c <cursor_left+0x44>)
    2e8a:	785b      	ldrb	r3, [r3, #1]
    2e8c:	2b06      	cmp	r3, #6
    2e8e:	d402      	bmi.n	2e96 <cursor_left+0x3e>
    2e90:	3b06      	subs	r3, #6
    2e92:	4a02      	ldr	r2, [pc, #8]	; (2e9c <cursor_left+0x44>)
    2e94:	7053      	strb	r3, [r2, #1]
    2e96:	4770      	bx	lr
    2e98:	20000204 	.word	0x20000204
    2e9c:	2000069c 	.word	0x2000069c

00002ea0 <print>:
void print(const char* str){
    2ea0:	b510      	push	{r4, lr}
    2ea2:	4604      	mov	r4, r0
    while ((c=*str++)){
    2ea4:	e001      	b.n	2eaa <print+0xa>
            new_line();
    2ea6:	f7ff ff15 	bl	2cd4 <new_line>
    while ((c=*str++)){
    2eaa:	f814 0b01 	ldrb.w	r0, [r4], #1
    2eae:	b158      	cbz	r0, 2ec8 <print+0x28>
        switch(c){
    2eb0:	280a      	cmp	r0, #10
    2eb2:	d0f8      	beq.n	2ea6 <print+0x6>
    2eb4:	280d      	cmp	r0, #13
    2eb6:	d0f6      	beq.n	2ea6 <print+0x6>
    2eb8:	2808      	cmp	r0, #8
    2eba:	d002      	beq.n	2ec2 <print+0x22>
            put_char(c);
    2ebc:	f7ff ff52 	bl	2d64 <put_char>
    2ec0:	e7f3      	b.n	2eaa <print+0xa>
            cursor_left();    
    2ec2:	f7ff ffc9 	bl	2e58 <cursor_left>
            break;
    2ec6:	e7f0      	b.n	2eaa <print+0xa>
}
    2ec8:	bd10      	pop	{r4, pc}

00002eca <println>:
void println(const char *text){
    2eca:	b508      	push	{r3, lr}
	print(text);
    2ecc:	f7ff ffe8 	bl	2ea0 <print>
	new_line();
    2ed0:	f7ff ff00 	bl	2cd4 <new_line>
    2ed4:	bd08      	pop	{r3, pc}

00002ed6 <print_int>:
void print_int(int i,uint8_t base){
    2ed6:	b530      	push	{r4, r5, lr}
    2ed8:	b085      	sub	sp, #20
    fmt[15]=0;
    2eda:	2300      	movs	r3, #0
    2edc:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2ee0:	2320      	movs	r3, #32
    2ee2:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2ee6:	1e02      	subs	r2, r0, #0
        i=-i;
    2ee8:	bfba      	itte	lt
    2eea:	4252      	neglt	r2, r2
        sign=1;
    2eec:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2eee:	2500      	movge	r5, #0
    while (idx>1 && i){
    2ef0:	b1aa      	cbz	r2, 2f1e <print_int+0x48>
    2ef2:	f10d 040e 	add.w	r4, sp, #14
    2ef6:	200e      	movs	r0, #14
        d=i%base;
    2ef8:	fb92 f3f1 	sdiv	r3, r2, r1
    2efc:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2f00:	2b09      	cmp	r3, #9
    2f02:	bfc8      	it	gt
    2f04:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2f06:	3801      	subs	r0, #1
    2f08:	3330      	adds	r3, #48	; 0x30
    2f0a:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2f0e:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2f12:	2801      	cmp	r0, #1
    2f14:	d007      	beq.n	2f26 <print_int+0x50>
    2f16:	2a00      	cmp	r2, #0
    2f18:	d1ee      	bne.n	2ef8 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2f1a:	280e      	cmp	r0, #14
    2f1c:	d103      	bne.n	2f26 <print_int+0x50>
    2f1e:	2330      	movs	r3, #48	; 0x30
    2f20:	f88d 300d 	strb.w	r3, [sp, #13]
    2f24:	200d      	movs	r0, #13
    if (base==10 && sign){
    2f26:	290a      	cmp	r1, #10
    2f28:	d006      	beq.n	2f38 <print_int+0x62>
    }else if (base==16){
    2f2a:	2910      	cmp	r1, #16
    2f2c:	d00d      	beq.n	2f4a <print_int+0x74>
    print(&fmt[idx]);
    2f2e:	4468      	add	r0, sp
    2f30:	f7ff ffb6 	bl	2ea0 <print>
}
    2f34:	b005      	add	sp, #20
    2f36:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2f38:	2d00      	cmp	r5, #0
    2f3a:	d0f8      	beq.n	2f2e <print_int+0x58>
        fmt[--idx]='-';
    2f3c:	3801      	subs	r0, #1
    2f3e:	ab04      	add	r3, sp, #16
    2f40:	4403      	add	r3, r0
    2f42:	222d      	movs	r2, #45	; 0x2d
    2f44:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f48:	e7f1      	b.n	2f2e <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2f4a:	f010 0f01 	tst.w	r0, #1
    2f4e:	d005      	beq.n	2f5c <print_int+0x86>
    2f50:	3801      	subs	r0, #1
    2f52:	ab04      	add	r3, sp, #16
    2f54:	4403      	add	r3, r0
    2f56:	2230      	movs	r2, #48	; 0x30
    2f58:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2f5c:	3801      	subs	r0, #1
    2f5e:	ab04      	add	r3, sp, #16
    2f60:	4403      	add	r3, r0
    2f62:	2224      	movs	r2, #36	; 0x24
    2f64:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f68:	e7e1      	b.n	2f2e <print_int+0x58>

00002f6a <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2f6a:	b508      	push	{r3, lr}
	print("press button");
    2f6c:	4801      	ldr	r0, [pc, #4]	; (2f74 <prompt_btn+0xa>)
    2f6e:	f7ff ff97 	bl	2ea0 <print>
    2f72:	bd08      	pop	{r3, pc}
    2f74:	000040dc 	.word	0x000040dc

00002f78 <clear_screen>:
}

void clear_screen(){
    2f78:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2f7a:	4b07      	ldr	r3, [pc, #28]	; (2f98 <clear_screen+0x20>)
    2f7c:	781b      	ldrb	r3, [r3, #0]
    2f7e:	b123      	cbz	r3, 2f8a <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    2f80:	210c      	movs	r1, #12
    2f82:	2000      	movs	r0, #0
    2f84:	f000 fc12 	bl	37ac <usart_putc>
    2f88:	bd08      	pop	{r3, pc}
		gfx_cls();
    2f8a:	f7fe fbbd 	bl	1708 <gfx_cls>
		xpos=0;
    2f8e:	4b02      	ldr	r3, [pc, #8]	; (2f98 <clear_screen+0x20>)
    2f90:	2200      	movs	r2, #0
    2f92:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2f94:	709a      	strb	r2, [r3, #2]
    2f96:	bd08      	pop	{r3, pc}
    2f98:	2000069c 	.word	0x2000069c

00002f9c <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2f9c:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2f9e:	2800      	cmp	r0, #0
    2fa0:	bf14      	ite	ne
    2fa2:	260f      	movne	r6, #15
    2fa4:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2fa6:	4b09      	ldr	r3, [pc, #36]	; (2fcc <show_cursor+0x30>)
    2fa8:	785c      	ldrb	r4, [r3, #1]
    2faa:	1da3      	adds	r3, r4, #6
    2fac:	429c      	cmp	r4, r3
    2fae:	da0b      	bge.n	2fc8 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2fb0:	4d06      	ldr	r5, [pc, #24]	; (2fcc <show_cursor+0x30>)
    2fb2:	78a9      	ldrb	r1, [r5, #2]
    2fb4:	4632      	mov	r2, r6
    2fb6:	3107      	adds	r1, #7
    2fb8:	4620      	mov	r0, r4
    2fba:	f7fe fb7b 	bl	16b4 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2fbe:	3401      	adds	r4, #1
    2fc0:	786b      	ldrb	r3, [r5, #1]
    2fc2:	3306      	adds	r3, #6
    2fc4:	42a3      	cmp	r3, r4
    2fc6:	dcf4      	bgt.n	2fb2 <show_cursor+0x16>
    2fc8:	bd70      	pop	{r4, r5, r6, pc}
    2fca:	bf00      	nop
    2fcc:	2000069c 	.word	0x2000069c

00002fd0 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2fd0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2fd4:	f000 fa7c 	bl	34d0 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fd8:	4b0c      	ldr	r3, [pc, #48]	; (300c <clear_line+0x3c>)
    2fda:	789c      	ldrb	r4, [r3, #2]
    2fdc:	f104 0308 	add.w	r3, r4, #8
    2fe0:	429c      	cmp	r4, r3
    2fe2:	da10      	bge.n	3006 <clear_line+0x36>
    2fe4:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fe6:	f8df 8028 	ldr.w	r8, [pc, #40]	; 3010 <clear_line+0x40>
    2fea:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fec:	4e07      	ldr	r6, [pc, #28]	; (300c <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fee:	7a28      	ldrb	r0, [r5, #8]
    2ff0:	463a      	mov	r2, r7
    2ff2:	4601      	mov	r1, r0
    2ff4:	fb04 8000 	mla	r0, r4, r0, r8
    2ff8:	f7fe fa27 	bl	144a <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ffc:	3401      	adds	r4, #1
    2ffe:	78b3      	ldrb	r3, [r6, #2]
    3000:	3308      	adds	r3, #8
    3002:	42a3      	cmp	r3, r4
    3004:	dcf3      	bgt.n	2fee <clear_line+0x1e>
    3006:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    300a:	bf00      	nop
    300c:	2000069c 	.word	0x2000069c
    3010:	20002714 	.word	0x20002714

00003014 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    3014:	4b01      	ldr	r3, [pc, #4]	; (301c <select_console+0x8>)
    3016:	7018      	strb	r0, [r3, #0]
    3018:	4770      	bx	lr
    301a:	bf00      	nop
    301c:	2000069c 	.word	0x2000069c

00003020 <get_char>:
}

//read a character from serial port
char get_char(){
    3020:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    3022:	2400      	movs	r4, #0
    3024:	4620      	mov	r0, r4
    3026:	f000 fb8f 	bl	3748 <usart_getc>
    302a:	2800      	cmp	r0, #0
    302c:	d0fa      	beq.n	3024 <get_char+0x4>
	return c;
}
    302e:	bd10      	pop	{r4, pc}

00003030 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    3030:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    3034:	4c31      	ldr	r4, [pc, #196]	; (30fc <tvout_init+0xcc>)
    3036:	4b32      	ldr	r3, [pc, #200]	; (3100 <tvout_init+0xd0>)
    3038:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    303a:	4a32      	ldr	r2, [pc, #200]	; (3104 <tvout_init+0xd4>)
    303c:	4b32      	ldr	r3, [pc, #200]	; (3108 <tvout_init+0xd8>)
    303e:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    3040:	220a      	movs	r2, #10
    3042:	2108      	movs	r1, #8
    3044:	4620      	mov	r0, r4
    3046:	f7fe faa9 	bl	159c <config_pin>
    PORTA->ODR=0;
    304a:	2500      	movs	r5, #0
    304c:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    304e:	4e2f      	ldr	r6, [pc, #188]	; (310c <tvout_init+0xdc>)
    3050:	69b3      	ldr	r3, [r6, #24]
    3052:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3056:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    3058:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    305c:	f04f 0878 	mov.w	r8, #120	; 0x78
    3060:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    3064:	2301      	movs	r3, #1
    3066:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    3068:	2784      	movs	r7, #132	; 0x84
    306a:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    306c:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3070:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    3072:	f44f 73a8 	mov.w	r3, #336	; 0x150
    3076:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    3078:	f240 1365 	movw	r3, #357	; 0x165
    307c:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    307e:	6963      	ldr	r3, [r4, #20]
    3080:	f043 0301 	orr.w	r3, r3, #1
    3084:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    3086:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    308a:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    308c:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    308e:	68e3      	ldr	r3, [r4, #12]
    3090:	f043 0301 	orr.w	r3, r3, #1
    3094:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    3096:	4629      	mov	r1, r5
    3098:	2019      	movs	r0, #25
    309a:	f7ff f867 	bl	216c <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    309e:	4629      	mov	r1, r5
    30a0:	201b      	movs	r0, #27
    30a2:	f7ff f863 	bl	216c <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    30a6:	2019      	movs	r0, #25
    30a8:	f7ff f800 	bl	20ac <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    30ac:	201b      	movs	r0, #27
    30ae:	f7fe fffd 	bl	20ac <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    30b2:	6823      	ldr	r3, [r4, #0]
    30b4:	f043 0301 	orr.w	r3, r3, #1
    30b8:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    30ba:	220a      	movs	r2, #10
    30bc:	4629      	mov	r1, r5
    30be:	4814      	ldr	r0, [pc, #80]	; (3110 <tvout_init+0xe0>)
    30c0:	f7fe fa6c 	bl	159c <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    30c4:	69f3      	ldr	r3, [r6, #28]
    30c6:	f043 0302 	orr.w	r3, r3, #2
    30ca:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    30cc:	4b11      	ldr	r3, [pc, #68]	; (3114 <tvout_init+0xe4>)
    30ce:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    30d2:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    30d4:	2213      	movs	r2, #19
    30d6:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    30d8:	220a      	movs	r2, #10
    30da:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    30dc:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    30de:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    30e2:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    30e4:	695a      	ldr	r2, [r3, #20]
    30e6:	f042 0201 	orr.w	r2, r2, #1
    30ea:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    30ec:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    30ee:	681a      	ldr	r2, [r3, #0]
    30f0:	f042 0201 	orr.w	r2, r2, #1
    30f4:	601a      	str	r2, [r3, #0]
    30f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    30fa:	bf00      	nop
    30fc:	40010800 	.word	0x40010800
    3100:	88883333 	.word	0x88883333
    3104:	84484444 	.word	0x84484444
    3108:	40010804 	.word	0x40010804
    310c:	40021000 	.word	0x40021000
    3110:	40010c00 	.word	0x40010c00
    3114:	40000400 	.word	0x40000400

00003118 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    3118:	4668      	mov	r0, sp
    311a:	f020 0107 	bic.w	r1, r0, #7
    311e:	468d      	mov	sp, r1
    3120:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    3122:	4a2f      	ldr	r2, [pc, #188]	; (31e0 <TV_OUT_handler+0xc8>)
    3124:	6a13      	ldr	r3, [r2, #32]
    3126:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    312a:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    312c:	492d      	ldr	r1, [pc, #180]	; (31e4 <TV_OUT_handler+0xcc>)
    312e:	f240 2209 	movw	r2, #521	; 0x209
    3132:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3134:	4293      	cmp	r3, r2
    3136:	d9fc      	bls.n	3132 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    3138:	4a29      	ldr	r2, [pc, #164]	; (31e0 <TV_OUT_handler+0xc8>)
    313a:	6a13      	ldr	r3, [r2, #32]
    313c:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3140:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    3142:	4b29      	ldr	r3, [pc, #164]	; (31e8 <TV_OUT_handler+0xd0>)
    3144:	881d      	ldrh	r5, [r3, #0]
    3146:	b2ad      	uxth	r5, r5
    3148:	4b28      	ldr	r3, [pc, #160]	; (31ec <TV_OUT_handler+0xd4>)
    314a:	7818      	ldrb	r0, [r3, #0]
    314c:	785a      	ldrb	r2, [r3, #1]
    314e:	fb95 f5f2 	sdiv	r5, r5, r2
    3152:	4a27      	ldr	r2, [pc, #156]	; (31f0 <TV_OUT_handler+0xd8>)
    3154:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    3158:	8859      	ldrh	r1, [r3, #2]
    315a:	4a22      	ldr	r2, [pc, #136]	; (31e4 <TV_OUT_handler+0xcc>)
    315c:	6a53      	ldr	r3, [r2, #36]	; 0x24
    315e:	428b      	cmp	r3, r1
    3160:	d3fc      	bcc.n	315c <TV_OUT_handler+0x44>
    _jitter_cancel();
    3162:	4b24      	ldr	r3, [pc, #144]	; (31f4 <TV_OUT_handler+0xdc>)
    3164:	461a      	mov	r2, r3
    3166:	6812      	ldr	r2, [r2, #0]
    3168:	f002 0207 	and.w	r2, r2, #7
    316c:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3170:	4497      	add	pc, r2
    3172:	bf00      	nop
    3174:	bf00      	nop
    3176:	bf00      	nop
    3178:	bf00      	nop
    317a:	bf00      	nop
    317c:	bf00      	nop
    317e:	bf00      	nop
    3180:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    3182:	4a17      	ldr	r2, [pc, #92]	; (31e0 <TV_OUT_handler+0xc8>)
    3184:	6a13      	ldr	r3, [r2, #32]
    3186:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    318a:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    318c:	b1b0      	cbz	r0, 31bc <TV_OUT_handler+0xa4>
    318e:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3190:	4819      	ldr	r0, [pc, #100]	; (31f8 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    3192:	4916      	ldr	r1, [pc, #88]	; (31ec <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    3194:	781a      	ldrb	r2, [r3, #0]
    3196:	0912      	lsrs	r2, r2, #4
    3198:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    319a:	790c      	ldrb	r4, [r1, #4]
    319c:	4622      	mov	r2, r4
    319e:	3a01      	subs	r2, #1
    31a0:	d1fd      	bne.n	319e <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    31a2:	f813 2b01 	ldrb.w	r2, [r3], #1
    31a6:	f002 020f 	and.w	r2, r2, #15
    31aa:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    31ac:	790c      	ldrb	r4, [r1, #4]
    31ae:	4622      	mov	r2, r4
    31b0:	3a01      	subs	r2, #1
    31b2:	d1fd      	bne.n	31b0 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    31b4:	1b5c      	subs	r4, r3, r5
    31b6:	780a      	ldrb	r2, [r1, #0]
    31b8:	4294      	cmp	r4, r2
    31ba:	d3eb      	bcc.n	3194 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    31bc:	2200      	movs	r2, #0
    31be:	4b0f      	ldr	r3, [pc, #60]	; (31fc <TV_OUT_handler+0xe4>)
    31c0:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    31c2:	4a07      	ldr	r2, [pc, #28]	; (31e0 <TV_OUT_handler+0xc8>)
    31c4:	6a13      	ldr	r3, [r2, #32]
    31c6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    31ca:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    31cc:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    31d0:	6913      	ldr	r3, [r2, #16]
    31d2:	f023 0304 	bic.w	r3, r3, #4
    31d6:	6113      	str	r3, [r2, #16]
}
    31d8:	bc31      	pop	{r0, r4, r5}
    31da:	4685      	mov	sp, r0
    31dc:	4770      	bx	lr
    31de:	bf00      	nop
    31e0:	40000400 	.word	0x40000400
    31e4:	40012c00 	.word	0x40012c00
    31e8:	200006a0 	.word	0x200006a0
    31ec:	20000208 	.word	0x20000208
    31f0:	20002714 	.word	0x20002714
    31f4:	40012c24 	.word	0x40012c24
    31f8:	4001080c 	.word	0x4001080c
    31fc:	40010800 	.word	0x40010800

00003200 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    3200:	4668      	mov	r0, sp
    3202:	f020 0107 	bic.w	r1, r0, #7
    3206:	468d      	mov	sp, r1
    3208:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    320a:	4a8e      	ldr	r2, [pc, #568]	; (3444 <TV_SYNC_handler+0x244>)
    320c:	8853      	ldrh	r3, [r2, #2]
    320e:	3301      	adds	r3, #1
    3210:	b29b      	uxth	r3, r3
    3212:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    3214:	498c      	ldr	r1, [pc, #560]	; (3448 <TV_SYNC_handler+0x248>)
    3216:	680b      	ldr	r3, [r1, #0]
    3218:	3301      	adds	r3, #1
    321a:	600b      	str	r3, [r1, #0]
    switch (task){
    321c:	8893      	ldrh	r3, [r2, #4]
    321e:	b29b      	uxth	r3, r3
    3220:	2b09      	cmp	r3, #9
    3222:	f200 8081 	bhi.w	3328 <TV_SYNC_handler+0x128>
    3226:	e8df f013 	tbh	[pc, r3, lsl #1]
    322a:	000a      	.short	0x000a
    322c:	0048002a 	.word	0x0048002a
    3230:	00880069 	.word	0x00880069
    3234:	00a50090 	.word	0x00a50090
    3238:	00d100b4 	.word	0x00d100b4
    323c:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    323e:	4b81      	ldr	r3, [pc, #516]	; (3444 <TV_SYNC_handler+0x244>)
    3240:	881b      	ldrh	r3, [r3, #0]
    3242:	b29b      	uxth	r3, r3
    3244:	b17b      	cbz	r3, 3266 <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    3246:	4a7f      	ldr	r2, [pc, #508]	; (3444 <TV_SYNC_handler+0x244>)
    3248:	8813      	ldrh	r3, [r2, #0]
    324a:	3301      	adds	r3, #1
    324c:	b29b      	uxth	r3, r3
    324e:	8013      	strh	r3, [r2, #0]
    3250:	8813      	ldrh	r3, [r2, #0]
    3252:	b29b      	uxth	r3, r3
    3254:	2b06      	cmp	r3, #6
    3256:	d167      	bne.n	3328 <TV_SYNC_handler+0x128>
    3258:	2300      	movs	r3, #0
    325a:	8013      	strh	r3, [r2, #0]
    325c:	8893      	ldrh	r3, [r2, #4]
    325e:	3301      	adds	r3, #1
    3260:	b29b      	uxth	r3, r3
    3262:	8093      	strh	r3, [r2, #4]
    3264:	e060      	b.n	3328 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    3266:	4b79      	ldr	r3, [pc, #484]	; (344c <TV_SYNC_handler+0x24c>)
    3268:	f640 02e2 	movw	r2, #2274	; 0x8e2
    326c:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    326e:	22a4      	movs	r2, #164	; 0xa4
    3270:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3272:	4a74      	ldr	r2, [pc, #464]	; (3444 <TV_SYNC_handler+0x244>)
    3274:	8813      	ldrh	r3, [r2, #0]
    3276:	3301      	adds	r3, #1
    3278:	b29b      	uxth	r3, r3
    327a:	8013      	strh	r3, [r2, #0]
    327c:	e054      	b.n	3328 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    327e:	4b71      	ldr	r3, [pc, #452]	; (3444 <TV_SYNC_handler+0x244>)
    3280:	881b      	ldrh	r3, [r3, #0]
    3282:	b29b      	uxth	r3, r3
    3284:	b17b      	cbz	r3, 32a6 <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    3286:	4a6f      	ldr	r2, [pc, #444]	; (3444 <TV_SYNC_handler+0x244>)
    3288:	8813      	ldrh	r3, [r2, #0]
    328a:	3301      	adds	r3, #1
    328c:	b29b      	uxth	r3, r3
    328e:	8013      	strh	r3, [r2, #0]
    3290:	8813      	ldrh	r3, [r2, #0]
    3292:	b29b      	uxth	r3, r3
    3294:	2b06      	cmp	r3, #6
    3296:	d147      	bne.n	3328 <TV_SYNC_handler+0x128>
    3298:	2300      	movs	r3, #0
    329a:	8013      	strh	r3, [r2, #0]
    329c:	8893      	ldrh	r3, [r2, #4]
    329e:	3301      	adds	r3, #1
    32a0:	b29b      	uxth	r3, r3
    32a2:	8093      	strh	r3, [r2, #4]
    32a4:	e040      	b.n	3328 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    32a6:	f240 7294 	movw	r2, #1940	; 0x794
    32aa:	4b68      	ldr	r3, [pc, #416]	; (344c <TV_SYNC_handler+0x24c>)
    32ac:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32ae:	4a65      	ldr	r2, [pc, #404]	; (3444 <TV_SYNC_handler+0x244>)
    32b0:	8813      	ldrh	r3, [r2, #0]
    32b2:	3301      	adds	r3, #1
    32b4:	b29b      	uxth	r3, r3
    32b6:	8013      	strh	r3, [r2, #0]
    32b8:	e036      	b.n	3328 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    32ba:	4b62      	ldr	r3, [pc, #392]	; (3444 <TV_SYNC_handler+0x244>)
    32bc:	881b      	ldrh	r3, [r3, #0]
    32be:	b29b      	uxth	r3, r3
    32c0:	b153      	cbz	r3, 32d8 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    32c2:	4b60      	ldr	r3, [pc, #384]	; (3444 <TV_SYNC_handler+0x244>)
    32c4:	881b      	ldrh	r3, [r3, #0]
    32c6:	b29b      	uxth	r3, r3
    32c8:	2b06      	cmp	r3, #6
    32ca:	d00e      	beq.n	32ea <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    32cc:	4a5d      	ldr	r2, [pc, #372]	; (3444 <TV_SYNC_handler+0x244>)
    32ce:	8813      	ldrh	r3, [r2, #0]
    32d0:	3301      	adds	r3, #1
    32d2:	b29b      	uxth	r3, r3
    32d4:	8013      	strh	r3, [r2, #0]
            break;
    32d6:	e027      	b.n	3328 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    32d8:	22a4      	movs	r2, #164	; 0xa4
    32da:	4b5c      	ldr	r3, [pc, #368]	; (344c <TV_SYNC_handler+0x24c>)
    32dc:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32de:	4a59      	ldr	r2, [pc, #356]	; (3444 <TV_SYNC_handler+0x244>)
    32e0:	8813      	ldrh	r3, [r2, #0]
    32e2:	3301      	adds	r3, #1
    32e4:	b29b      	uxth	r3, r3
    32e6:	8013      	strh	r3, [r2, #0]
            break;
    32e8:	e01e      	b.n	3328 <TV_SYNC_handler+0x128>
            task++;
    32ea:	4a56      	ldr	r2, [pc, #344]	; (3444 <TV_SYNC_handler+0x244>)
    32ec:	8893      	ldrh	r3, [r2, #4]
    32ee:	3301      	adds	r3, #1
    32f0:	b29b      	uxth	r3, r3
    32f2:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    32f4:	88d3      	ldrh	r3, [r2, #6]
    32f6:	f013 0f01 	tst.w	r3, #1
    32fa:	d015      	beq.n	3328 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    32fc:	4b53      	ldr	r3, [pc, #332]	; (344c <TV_SYNC_handler+0x24c>)
    32fe:	f241 12c5 	movw	r2, #4549	; 0x11c5
    3302:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    3304:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3308:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    330a:	4a4e      	ldr	r2, [pc, #312]	; (3444 <TV_SYNC_handler+0x244>)
    330c:	88d3      	ldrh	r3, [r2, #6]
    330e:	f023 0302 	bic.w	r3, r3, #2
    3312:	041b      	lsls	r3, r3, #16
    3314:	0c1b      	lsrs	r3, r3, #16
    3316:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    3318:	8853      	ldrh	r3, [r2, #2]
    331a:	f3c3 038d 	ubfx	r3, r3, #2, #14
    331e:	8053      	strh	r3, [r2, #2]
        task++;
    3320:	8893      	ldrh	r3, [r2, #4]
    3322:	3301      	adds	r3, #1
    3324:	b29b      	uxth	r3, r3
    3326:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    3328:	4a48      	ldr	r2, [pc, #288]	; (344c <TV_SYNC_handler+0x24c>)
    332a:	6913      	ldr	r3, [r2, #16]
    332c:	f023 0301 	bic.w	r3, r3, #1
    3330:	6113      	str	r3, [r2, #16]
}
    3332:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    3336:	4685      	mov	sp, r0
    3338:	4770      	bx	lr
        read_gamepad();
    333a:	f7fd ff2b 	bl	1194 <read_gamepad>
        task++;
    333e:	4a41      	ldr	r2, [pc, #260]	; (3444 <TV_SYNC_handler+0x244>)
    3340:	8893      	ldrh	r3, [r2, #4]
    3342:	3301      	adds	r3, #1
    3344:	b29b      	uxth	r3, r3
    3346:	8093      	strh	r3, [r2, #4]
        break;    
    3348:	e7ee      	b.n	3328 <TV_SYNC_handler+0x128>
        if (sound_timer){
    334a:	4b41      	ldr	r3, [pc, #260]	; (3450 <TV_SYNC_handler+0x250>)
    334c:	881b      	ldrh	r3, [r3, #0]
    334e:	b29b      	uxth	r3, r3
    3350:	b13b      	cbz	r3, 3362 <TV_SYNC_handler+0x162>
            sound_timer--;
    3352:	4a3f      	ldr	r2, [pc, #252]	; (3450 <TV_SYNC_handler+0x250>)
    3354:	8813      	ldrh	r3, [r2, #0]
    3356:	3b01      	subs	r3, #1
    3358:	b29b      	uxth	r3, r3
    335a:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    335c:	8813      	ldrh	r3, [r2, #0]
    335e:	b29b      	uxth	r3, r3
    3360:	b12b      	cbz	r3, 336e <TV_SYNC_handler+0x16e>
        task++;
    3362:	4a38      	ldr	r2, [pc, #224]	; (3444 <TV_SYNC_handler+0x244>)
    3364:	8893      	ldrh	r3, [r2, #4]
    3366:	3301      	adds	r3, #1
    3368:	b29b      	uxth	r3, r3
    336a:	8093      	strh	r3, [r2, #4]
        break;    
    336c:	e7dc      	b.n	3328 <TV_SYNC_handler+0x128>
                sound_stop();
    336e:	f7ff fb0a 	bl	2986 <sound_stop>
    3372:	e7f6      	b.n	3362 <TV_SYNC_handler+0x162>
        if (game_timer){
    3374:	4b37      	ldr	r3, [pc, #220]	; (3454 <TV_SYNC_handler+0x254>)
    3376:	881b      	ldrh	r3, [r3, #0]
    3378:	b29b      	uxth	r3, r3
    337a:	b123      	cbz	r3, 3386 <TV_SYNC_handler+0x186>
            game_timer--;
    337c:	4a35      	ldr	r2, [pc, #212]	; (3454 <TV_SYNC_handler+0x254>)
    337e:	8813      	ldrh	r3, [r2, #0]
    3380:	3b01      	subs	r3, #1
    3382:	b29b      	uxth	r3, r3
    3384:	8013      	strh	r3, [r2, #0]
        task++;
    3386:	4a2f      	ldr	r2, [pc, #188]	; (3444 <TV_SYNC_handler+0x244>)
    3388:	8893      	ldrh	r3, [r2, #4]
    338a:	3301      	adds	r3, #1
    338c:	b29b      	uxth	r3, r3
    338e:	8093      	strh	r3, [r2, #4]
        break;
    3390:	e7ca      	b.n	3328 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    3392:	4b2c      	ldr	r3, [pc, #176]	; (3444 <TV_SYNC_handler+0x244>)
    3394:	885b      	ldrh	r3, [r3, #2]
    3396:	b29b      	uxth	r3, r3
    3398:	4a2f      	ldr	r2, [pc, #188]	; (3458 <TV_SYNC_handler+0x258>)
    339a:	88d2      	ldrh	r2, [r2, #6]
    339c:	429a      	cmp	r2, r3
    339e:	d1c3      	bne.n	3328 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    33a0:	4b2a      	ldr	r3, [pc, #168]	; (344c <TV_SYNC_handler+0x24c>)
    33a2:	691a      	ldr	r2, [r3, #16]
    33a4:	f022 0204 	bic.w	r2, r2, #4
    33a8:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    33aa:	68da      	ldr	r2, [r3, #12]
    33ac:	f042 0204 	orr.w	r2, r2, #4
    33b0:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    33b2:	4b24      	ldr	r3, [pc, #144]	; (3444 <TV_SYNC_handler+0x244>)
    33b4:	88da      	ldrh	r2, [r3, #6]
    33b6:	b292      	uxth	r2, r2
    33b8:	f042 0204 	orr.w	r2, r2, #4
    33bc:	80da      	strh	r2, [r3, #6]
            task++;
    33be:	889a      	ldrh	r2, [r3, #4]
    33c0:	3201      	adds	r2, #1
    33c2:	b292      	uxth	r2, r2
    33c4:	809a      	strh	r2, [r3, #4]
            slice=0;
    33c6:	2200      	movs	r2, #0
    33c8:	801a      	strh	r2, [r3, #0]
    33ca:	e7ad      	b.n	3328 <TV_SYNC_handler+0x128>
        slice++;
    33cc:	4a1d      	ldr	r2, [pc, #116]	; (3444 <TV_SYNC_handler+0x244>)
    33ce:	8813      	ldrh	r3, [r2, #0]
    33d0:	3301      	adds	r3, #1
    33d2:	b29b      	uxth	r3, r3
    33d4:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    33d6:	8853      	ldrh	r3, [r2, #2]
    33d8:	b29b      	uxth	r3, r3
    33da:	4a1f      	ldr	r2, [pc, #124]	; (3458 <TV_SYNC_handler+0x258>)
    33dc:	8912      	ldrh	r2, [r2, #8]
    33de:	429a      	cmp	r2, r3
    33e0:	d1a2      	bne.n	3328 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    33e2:	4a1a      	ldr	r2, [pc, #104]	; (344c <TV_SYNC_handler+0x24c>)
    33e4:	68d3      	ldr	r3, [r2, #12]
    33e6:	f023 0304 	bic.w	r3, r3, #4
    33ea:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    33ec:	4a15      	ldr	r2, [pc, #84]	; (3444 <TV_SYNC_handler+0x244>)
    33ee:	88d3      	ldrh	r3, [r2, #6]
    33f0:	f023 0304 	bic.w	r3, r3, #4
    33f4:	041b      	lsls	r3, r3, #16
    33f6:	0c1b      	lsrs	r3, r3, #16
    33f8:	80d3      	strh	r3, [r2, #6]
            task++;
    33fa:	8893      	ldrh	r3, [r2, #4]
    33fc:	3301      	adds	r3, #1
    33fe:	b29b      	uxth	r3, r3
    3400:	8093      	strh	r3, [r2, #4]
    3402:	e791      	b.n	3328 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    3404:	4b0f      	ldr	r3, [pc, #60]	; (3444 <TV_SYNC_handler+0x244>)
    3406:	885b      	ldrh	r3, [r3, #2]
    3408:	b29b      	uxth	r3, r3
    340a:	f240 1207 	movw	r2, #263	; 0x107
    340e:	4293      	cmp	r3, r2
    3410:	d18a      	bne.n	3328 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    3412:	4b0c      	ldr	r3, [pc, #48]	; (3444 <TV_SYNC_handler+0x244>)
    3414:	88db      	ldrh	r3, [r3, #6]
    3416:	f013 0f01 	tst.w	r3, #1
    341a:	d003      	beq.n	3424 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    341c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3420:	4b0a      	ldr	r3, [pc, #40]	; (344c <TV_SYNC_handler+0x24c>)
    3422:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    3424:	4b07      	ldr	r3, [pc, #28]	; (3444 <TV_SYNC_handler+0x244>)
    3426:	88da      	ldrh	r2, [r3, #6]
    3428:	b292      	uxth	r2, r2
    342a:	f082 0201 	eor.w	r2, r2, #1
    342e:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    3430:	88da      	ldrh	r2, [r3, #6]
    3432:	b292      	uxth	r2, r2
    3434:	f042 0202 	orr.w	r2, r2, #2
    3438:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    343a:	2200      	movs	r2, #0
    343c:	805a      	strh	r2, [r3, #2]
            slice=0;
    343e:	801a      	strh	r2, [r3, #0]
            task=0;
    3440:	809a      	strh	r2, [r3, #4]
    3442:	e771      	b.n	3328 <TV_SYNC_handler+0x128>
    3444:	200006a0 	.word	0x200006a0
    3448:	20004e78 	.word	0x20004e78
    344c:	40012c00 	.word	0x40012c00
    3450:	20004e7c 	.word	0x20004e7c
    3454:	20004e74 	.word	0x20004e74
    3458:	20000208 	.word	0x20000208

0000345c <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    345c:	4a02      	ldr	r2, [pc, #8]	; (3468 <frame_sync+0xc>)
    345e:	88d3      	ldrh	r3, [r2, #6]
    3460:	f013 0f02 	tst.w	r3, #2
    3464:	d0fb      	beq.n	345e <frame_sync+0x2>
}
    3466:	4770      	bx	lr
    3468:	200006a0 	.word	0x200006a0

0000346c <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    346c:	4a02      	ldr	r2, [pc, #8]	; (3478 <wait_sync_end+0xc>)
    346e:	88d3      	ldrh	r3, [r2, #6]
    3470:	f013 0f02 	tst.w	r3, #2
    3474:	d1fb      	bne.n	346e <wait_sync_end+0x2>
}
    3476:	4770      	bx	lr
    3478:	200006a0 	.word	0x200006a0

0000347c <set_video_mode>:

void set_video_mode(vmode_t mode){
    347c:	b510      	push	{r4, lr}
    347e:	4604      	mov	r4, r0
    frame_sync();
    3480:	f7ff ffec 	bl	345c <frame_sync>
    video_mode=mode;
    3484:	4b0e      	ldr	r3, [pc, #56]	; (34c0 <set_video_mode+0x44>)
    3486:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3488:	b1ac      	cbz	r4, 34b6 <set_video_mode+0x3a>
    348a:	2200      	movs	r2, #0
    348c:	4b0d      	ldr	r3, [pc, #52]	; (34c4 <set_video_mode+0x48>)
    348e:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3490:	4b0d      	ldr	r3, [pc, #52]	; (34c8 <set_video_mode+0x4c>)
    3492:	480e      	ldr	r0, [pc, #56]	; (34cc <set_video_mode+0x50>)
    3494:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    3498:	8842      	ldrh	r2, [r0, #2]
    349a:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    349c:	8882      	ldrh	r2, [r0, #4]
    349e:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    34a0:	88c2      	ldrh	r2, [r0, #6]
    34a2:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    34a4:	7a02      	ldrb	r2, [r0, #8]
    34a6:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    34a8:	7a42      	ldrb	r2, [r0, #9]
    34aa:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    34ac:	7a82      	ldrb	r2, [r0, #10]
    34ae:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    34b0:	f7fe f92a 	bl	1708 <gfx_cls>
    34b4:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    34b6:	2202      	movs	r2, #2
    34b8:	4b02      	ldr	r3, [pc, #8]	; (34c4 <set_video_mode+0x48>)
    34ba:	701a      	strb	r2, [r3, #0]
    34bc:	e7e8      	b.n	3490 <set_video_mode+0x14>
    34be:	bf00      	nop
    34c0:	200006a0 	.word	0x200006a0
    34c4:	200001ac 	.word	0x200001ac
    34c8:	20000208 	.word	0x20000208
    34cc:	00003dac 	.word	0x00003dac

000034d0 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    34d0:	4b02      	ldr	r3, [pc, #8]	; (34dc <get_video_params+0xc>)
    34d2:	7a18      	ldrb	r0, [r3, #8]
}
    34d4:	4b02      	ldr	r3, [pc, #8]	; (34e0 <get_video_params+0x10>)
    34d6:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    34da:	4770      	bx	lr
    34dc:	200006a0 	.word	0x200006a0
    34e0:	00003dac 	.word	0x00003dac

000034e4 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    34e4:	4b03      	ldr	r3, [pc, #12]	; (34f4 <game_pause+0x10>)
    34e6:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    34e8:	461a      	mov	r2, r3
    34ea:	8813      	ldrh	r3, [r2, #0]
    34ec:	b29b      	uxth	r3, r3
    34ee:	2b00      	cmp	r3, #0
    34f0:	d1fb      	bne.n	34ea <game_pause+0x6>
}
    34f2:	4770      	bx	lr
    34f4:	20004e74 	.word	0x20004e74

000034f8 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    34f8:	4b03      	ldr	r3, [pc, #12]	; (3508 <micro_pause+0x10>)
    34fa:	681b      	ldr	r3, [r3, #0]
    34fc:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    34fe:	4a02      	ldr	r2, [pc, #8]	; (3508 <micro_pause+0x10>)
    3500:	6813      	ldr	r3, [r2, #0]
    3502:	4298      	cmp	r0, r3
    3504:	d8fc      	bhi.n	3500 <micro_pause+0x8>
}
    3506:	4770      	bx	lr
    3508:	20004e78 	.word	0x20004e78

0000350c <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    350c:	2801      	cmp	r0, #1
    350e:	d035      	beq.n	357c <usart_config_port+0x70>
    3510:	b110      	cbz	r0, 3518 <usart_config_port+0xc>
    3512:	2802      	cmp	r0, #2
    3514:	d04f      	beq.n	35b6 <usart_config_port+0xaa>
    3516:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    3518:	4835      	ldr	r0, [pc, #212]	; (35f0 <usart_config_port+0xe4>)
    351a:	6983      	ldr	r3, [r0, #24]
    351c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3520:	f043 0304 	orr.w	r3, r3, #4
    3524:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    3526:	2a01      	cmp	r2, #1
    3528:	d016      	beq.n	3558 <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    352a:	4b32      	ldr	r3, [pc, #200]	; (35f4 <usart_config_port+0xe8>)
    352c:	4299      	cmp	r1, r3
    352e:	d01c      	beq.n	356a <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3530:	4a31      	ldr	r2, [pc, #196]	; (35f8 <usart_config_port+0xec>)
    3532:	6853      	ldr	r3, [r2, #4]
    3534:	f043 0304 	orr.w	r3, r3, #4
    3538:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    353a:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    353e:	6993      	ldr	r3, [r2, #24]
    3540:	f043 0308 	orr.w	r3, r3, #8
    3544:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    3546:	680b      	ldr	r3, [r1, #0]
    3548:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    354c:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    354e:	680b      	ldr	r3, [r1, #0]
    3550:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    3554:	600b      	str	r3, [r1, #0]
    3556:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    3558:	684b      	ldr	r3, [r1, #4]
    355a:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    355e:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3560:	684b      	ldr	r3, [r1, #4]
    3562:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    3566:	604b      	str	r3, [r1, #4]
    3568:	e7df      	b.n	352a <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    356a:	685a      	ldr	r2, [r3, #4]
    356c:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3570:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    3572:	685a      	ldr	r2, [r3, #4]
    3574:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    3578:	605a      	str	r2, [r3, #4]
    357a:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    357c:	4b1c      	ldr	r3, [pc, #112]	; (35f0 <usart_config_port+0xe4>)
    357e:	69d8      	ldr	r0, [r3, #28]
    3580:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3584:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    3586:	6998      	ldr	r0, [r3, #24]
    3588:	f040 0004 	orr.w	r0, r0, #4
    358c:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    358e:	2a01      	cmp	r2, #1
    3590:	d008      	beq.n	35a4 <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    3592:	680b      	ldr	r3, [r1, #0]
    3594:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3598:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    359a:	680b      	ldr	r3, [r1, #0]
    359c:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    35a0:	600b      	str	r3, [r1, #0]
    35a2:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    35a4:	680b      	ldr	r3, [r1, #0]
    35a6:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    35aa:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    35ac:	680b      	ldr	r3, [r1, #0]
    35ae:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    35b2:	600b      	str	r3, [r1, #0]
    35b4:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    35b6:	4b0e      	ldr	r3, [pc, #56]	; (35f0 <usart_config_port+0xe4>)
    35b8:	69d8      	ldr	r0, [r3, #28]
    35ba:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    35be:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    35c0:	6998      	ldr	r0, [r3, #24]
    35c2:	f040 0008 	orr.w	r0, r0, #8
    35c6:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    35c8:	2a01      	cmp	r2, #1
    35ca:	d008      	beq.n	35de <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    35cc:	684b      	ldr	r3, [r1, #4]
    35ce:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    35d2:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    35d4:	684b      	ldr	r3, [r1, #4]
    35d6:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    35da:	604b      	str	r3, [r1, #4]
    35dc:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    35de:	684b      	ldr	r3, [r1, #4]
    35e0:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    35e4:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    35e6:	684b      	ldr	r3, [r1, #4]
    35e8:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    35ec:	604b      	str	r3, [r1, #4]
    35ee:	4770      	bx	lr
    35f0:	40021000 	.word	0x40021000
    35f4:	40010800 	.word	0x40010800
    35f8:	40010000 	.word	0x40010000

000035fc <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    35fc:	4602      	mov	r2, r0
    35fe:	b138      	cbz	r0, 3610 <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    3600:	4b05      	ldr	r3, [pc, #20]	; (3618 <usart_set_baud+0x1c>)
    3602:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    3606:	4b05      	ldr	r3, [pc, #20]	; (361c <usart_set_baud+0x20>)
    3608:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    360c:	6099      	str	r1, [r3, #8]
    360e:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    3610:	4b03      	ldr	r3, [pc, #12]	; (3620 <usart_set_baud+0x24>)
    3612:	fbb3 f1f1 	udiv	r1, r3, r1
    3616:	e7f6      	b.n	3606 <usart_set_baud+0xa>
    3618:	022231fa 	.word	0x022231fa
    361c:	00003dd4 	.word	0x00003dd4
    3620:	044463f4 	.word	0x044463f4

00003624 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    3624:	4b05      	ldr	r3, [pc, #20]	; (363c <usart_comm_dir+0x18>)
    3626:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    362a:	68da      	ldr	r2, [r3, #12]
    362c:	f022 020c 	bic.w	r2, r2, #12
    3630:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    3632:	68da      	ldr	r2, [r3, #12]
    3634:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    3638:	60d9      	str	r1, [r3, #12]
    363a:	4770      	bx	lr
    363c:	00003dd4 	.word	0x00003dd4

00003640 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    3640:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    3644:	4604      	mov	r4, r0
    3646:	460f      	mov	r7, r1
    3648:	4615      	mov	r5, r2
    364a:	4698      	mov	r8, r3
    364c:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    364e:	2801      	cmp	r0, #1
    3650:	d030      	beq.n	36b4 <usart_open_channel+0x74>
    3652:	b1d0      	cbz	r0, 368a <usart_open_channel+0x4a>
    3654:	2802      	cmp	r0, #2
    3656:	d03a      	beq.n	36ce <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    3658:	2e01      	cmp	r6, #1
    365a:	d045      	beq.n	36e8 <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    365c:	4641      	mov	r1, r8
    365e:	4620      	mov	r0, r4
    3660:	f7ff ffe0 	bl	3624 <usart_comm_dir>
	switch (parity){
    3664:	2d01      	cmp	r5, #1
    3666:	d04e      	beq.n	3706 <usart_open_channel+0xc6>
    3668:	2d00      	cmp	r5, #0
    366a:	d044      	beq.n	36f6 <usart_open_channel+0xb6>
    366c:	2d02      	cmp	r5, #2
    366e:	d052      	beq.n	3716 <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3670:	4639      	mov	r1, r7
    3672:	4620      	mov	r0, r4
    3674:	f7ff ffc2 	bl	35fc <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    3678:	4b2b      	ldr	r3, [pc, #172]	; (3728 <usart_open_channel+0xe8>)
    367a:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    367e:	68d3      	ldr	r3, [r2, #12]
    3680:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3684:	60d3      	str	r3, [r2, #12]
    3686:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    368a:	9b06      	ldr	r3, [sp, #24]
    368c:	b963      	cbnz	r3, 36a8 <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    368e:	4632      	mov	r2, r6
    3690:	4926      	ldr	r1, [pc, #152]	; (372c <usart_open_channel+0xec>)
    3692:	2000      	movs	r0, #0
    3694:	f7ff ff3a 	bl	350c <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    3698:	2107      	movs	r1, #7
    369a:	2025      	movs	r0, #37	; 0x25
    369c:	f7fe fd66 	bl	216c <set_int_priority>
		enable_interrupt(IRQ_USART1);
    36a0:	2025      	movs	r0, #37	; 0x25
    36a2:	f7fe fd03 	bl	20ac <enable_interrupt>
		break;
    36a6:	e7d7      	b.n	3658 <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    36a8:	4632      	mov	r2, r6
    36aa:	4921      	ldr	r1, [pc, #132]	; (3730 <usart_open_channel+0xf0>)
    36ac:	2000      	movs	r0, #0
    36ae:	f7ff ff2d 	bl	350c <usart_config_port>
    36b2:	e7f1      	b.n	3698 <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    36b4:	4632      	mov	r2, r6
    36b6:	491d      	ldr	r1, [pc, #116]	; (372c <usart_open_channel+0xec>)
    36b8:	2001      	movs	r0, #1
    36ba:	f7ff ff27 	bl	350c <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    36be:	2107      	movs	r1, #7
    36c0:	2026      	movs	r0, #38	; 0x26
    36c2:	f7fe fd53 	bl	216c <set_int_priority>
		enable_interrupt(IRQ_USART2);
    36c6:	2026      	movs	r0, #38	; 0x26
    36c8:	f7fe fcf0 	bl	20ac <enable_interrupt>
		break;
    36cc:	e7c4      	b.n	3658 <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    36ce:	4632      	mov	r2, r6
    36d0:	4917      	ldr	r1, [pc, #92]	; (3730 <usart_open_channel+0xf0>)
    36d2:	2002      	movs	r0, #2
    36d4:	f7ff ff1a 	bl	350c <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    36d8:	2107      	movs	r1, #7
    36da:	2027      	movs	r0, #39	; 0x27
    36dc:	f7fe fd46 	bl	216c <set_int_priority>
		enable_interrupt(IRQ_USART3);
    36e0:	2027      	movs	r0, #39	; 0x27
    36e2:	f7fe fce3 	bl	20ac <enable_interrupt>
		break;
    36e6:	e7b7      	b.n	3658 <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    36e8:	4b0f      	ldr	r3, [pc, #60]	; (3728 <usart_open_channel+0xe8>)
    36ea:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    36ee:	f44f 7240 	mov.w	r2, #768	; 0x300
    36f2:	615a      	str	r2, [r3, #20]
    36f4:	e7b2      	b.n	365c <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    36f6:	4b0c      	ldr	r3, [pc, #48]	; (3728 <usart_open_channel+0xe8>)
    36f8:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    36fc:	68d3      	ldr	r3, [r2, #12]
    36fe:	f043 0320 	orr.w	r3, r3, #32
    3702:	60d3      	str	r3, [r2, #12]
		break;
    3704:	e7b4      	b.n	3670 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    3706:	4b08      	ldr	r3, [pc, #32]	; (3728 <usart_open_channel+0xe8>)
    3708:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    370c:	68d3      	ldr	r3, [r2, #12]
    370e:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    3712:	60d3      	str	r3, [r2, #12]
		break;
    3714:	e7ac      	b.n	3670 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    3716:	4b04      	ldr	r3, [pc, #16]	; (3728 <usart_open_channel+0xe8>)
    3718:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    371c:	68d3      	ldr	r3, [r2, #12]
    371e:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    3722:	60d3      	str	r3, [r2, #12]
		break;
    3724:	e7a4      	b.n	3670 <usart_open_channel+0x30>
    3726:	bf00      	nop
    3728:	00003dd4 	.word	0x00003dd4
    372c:	40010800 	.word	0x40010800
    3730:	40010c00 	.word	0x40010c00

00003734 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return channels[channel]->SR&USART_SR_RXNE;
    3734:	4b03      	ldr	r3, [pc, #12]	; (3744 <usart_stat+0x10>)
    3736:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    373a:	6818      	ldr	r0, [r3, #0]
}
    373c:	f000 0020 	and.w	r0, r0, #32
    3740:	4770      	bx	lr
    3742:	bf00      	nop
    3744:	00003dd4 	.word	0x00003dd4

00003748 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    3748:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    374a:	490c      	ldr	r1, [pc, #48]	; (377c <usart_getc+0x34>)
    374c:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3750:	005b      	lsls	r3, r3, #1
    3752:	18c8      	adds	r0, r1, r3
    3754:	5ccb      	ldrb	r3, [r1, r3]
    3756:	7841      	ldrb	r1, [r0, #1]
    3758:	4299      	cmp	r1, r3
    375a:	d00d      	beq.n	3778 <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    375c:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    375e:	4d07      	ldr	r5, [pc, #28]	; (377c <usart_getc+0x34>)
    3760:	00d4      	lsls	r4, r2, #3
    3762:	4601      	mov	r1, r0
    3764:	4419      	add	r1, r3
    3766:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    3768:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    376a:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    376c:	f003 030f 	and.w	r3, r3, #15
    3770:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    3774:	bc30      	pop	{r4, r5}
    3776:	4770      	bx	lr
		return 0;
    3778:	2000      	movs	r0, #0
    377a:	4770      	bx	lr
    377c:	200006ac 	.word	0x200006ac

00003780 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    3780:	b570      	push	{r4, r5, r6, lr}
    3782:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    3784:	4b08      	ldr	r3, [pc, #32]	; (37a8 <usart_getc_dly+0x28>)
    3786:	681c      	ldr	r4, [r3, #0]
    3788:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    378a:	461d      	mov	r5, r3
    378c:	682b      	ldr	r3, [r5, #0]
    378e:	429c      	cmp	r4, r3
    3790:	d906      	bls.n	37a0 <usart_getc_dly+0x20>
    3792:	4630      	mov	r0, r6
    3794:	f7ff ffd8 	bl	3748 <usart_getc>
    3798:	4603      	mov	r3, r0
    379a:	2800      	cmp	r0, #0
    379c:	d0f6      	beq.n	378c <usart_getc_dly+0xc>
    379e:	e000      	b.n	37a2 <usart_getc_dly+0x22>
    37a0:	2300      	movs	r3, #0
	return c;
}
    37a2:	4618      	mov	r0, r3
    37a4:	bd70      	pop	{r4, r5, r6, pc}
    37a6:	bf00      	nop
    37a8:	20004e78 	.word	0x20004e78

000037ac <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    37ac:	4b04      	ldr	r3, [pc, #16]	; (37c0 <usart_putc+0x14>)
    37ae:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    37b2:	6813      	ldr	r3, [r2, #0]
    37b4:	f013 0f80 	tst.w	r3, #128	; 0x80
    37b8:	d0fb      	beq.n	37b2 <usart_putc+0x6>
	channels[channel]->DR=c;
    37ba:	6051      	str	r1, [r2, #4]
    37bc:	4770      	bx	lr
    37be:	bf00      	nop
    37c0:	00003dd4 	.word	0x00003dd4

000037c4 <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    37c4:	2801      	cmp	r0, #1
    37c6:	d009      	beq.n	37dc <usart_cts+0x18>
    37c8:	b118      	cbz	r0, 37d2 <usart_cts+0xe>
    37ca:	2802      	cmp	r0, #2
    37cc:	d00b      	beq.n	37e6 <usart_cts+0x22>
    37ce:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    37d0:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    37d2:	4b07      	ldr	r3, [pc, #28]	; (37f0 <usart_cts+0x2c>)
    37d4:	6898      	ldr	r0, [r3, #8]
    37d6:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    37da:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    37dc:	4b04      	ldr	r3, [pc, #16]	; (37f0 <usart_cts+0x2c>)
    37de:	6898      	ldr	r0, [r3, #8]
    37e0:	f000 0001 	and.w	r0, r0, #1
			break;
    37e4:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    37e6:	4b03      	ldr	r3, [pc, #12]	; (37f4 <usart_cts+0x30>)
    37e8:	6898      	ldr	r0, [r3, #8]
    37ea:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    37ee:	4770      	bx	lr
    37f0:	40010800 	.word	0x40010800
    37f4:	40010c00 	.word	0x40010c00

000037f8 <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    37f8:	b538      	push	{r3, r4, r5, lr}
    37fa:	4605      	mov	r5, r0
    37fc:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    37fe:	7809      	ldrb	r1, [r1, #0]
    3800:	b131      	cbz	r1, 3810 <usart_print+0x18>
    3802:	4628      	mov	r0, r5
    3804:	f7ff ffd2 	bl	37ac <usart_putc>
    3808:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    380c:	2900      	cmp	r1, #0
    380e:	d1f8      	bne.n	3802 <usart_print+0xa>
    3810:	bd38      	pop	{r3, r4, r5, pc}

00003812 <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    3812:	4668      	mov	r0, sp
    3814:	f020 0107 	bic.w	r1, r0, #7
    3818:	468d      	mov	sp, r1
    381a:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    381c:	4b08      	ldr	r3, [pc, #32]	; (3840 <USART1_handler+0x2e>)
    381e:	681b      	ldr	r3, [r3, #0]
    3820:	f013 0f20 	tst.w	r3, #32
    3824:	d009      	beq.n	383a <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    3826:	4a07      	ldr	r2, [pc, #28]	; (3844 <USART1_handler+0x32>)
    3828:	7853      	ldrb	r3, [r2, #1]
    382a:	4905      	ldr	r1, [pc, #20]	; (3840 <USART1_handler+0x2e>)
    382c:	6848      	ldr	r0, [r1, #4]
    382e:	18d1      	adds	r1, r2, r3
    3830:	7088      	strb	r0, [r1, #2]
    3832:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    3834:	f003 030f 	and.w	r3, r3, #15
    3838:	7053      	strb	r3, [r2, #1]
		}
}
    383a:	bc01      	pop	{r0}
    383c:	4685      	mov	sp, r0
    383e:	4770      	bx	lr
    3840:	40013800 	.word	0x40013800
    3844:	200006ac 	.word	0x200006ac

00003848 <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    3848:	4668      	mov	r0, sp
    384a:	f020 0107 	bic.w	r1, r0, #7
    384e:	468d      	mov	sp, r1
    3850:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3852:	4b0a      	ldr	r3, [pc, #40]	; (387c <USART2_handler+0x34>)
    3854:	681b      	ldr	r3, [r3, #0]
    3856:	f013 0f20 	tst.w	r3, #32
    385a:	d00b      	beq.n	3874 <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    385c:	4a08      	ldr	r2, [pc, #32]	; (3880 <USART2_handler+0x38>)
    385e:	7cd1      	ldrb	r1, [r2, #19]
    3860:	1c4b      	adds	r3, r1, #1
    3862:	b2db      	uxtb	r3, r3
    3864:	74d3      	strb	r3, [r2, #19]
    3866:	4807      	ldr	r0, [pc, #28]	; (3884 <USART2_handler+0x3c>)
    3868:	6840      	ldr	r0, [r0, #4]
    386a:	4411      	add	r1, r2
    386c:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    386e:	f003 030f 	and.w	r3, r3, #15
    3872:	74d3      	strb	r3, [r2, #19]
		}
}
    3874:	bc01      	pop	{r0}
    3876:	4685      	mov	sp, r0
    3878:	4770      	bx	lr
    387a:	bf00      	nop
    387c:	40013800 	.word	0x40013800
    3880:	200006ac 	.word	0x200006ac
    3884:	40004400 	.word	0x40004400

00003888 <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    3888:	4668      	mov	r0, sp
    388a:	f020 0107 	bic.w	r1, r0, #7
    388e:	468d      	mov	sp, r1
    3890:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3892:	4b0b      	ldr	r3, [pc, #44]	; (38c0 <USART3_handler+0x38>)
    3894:	681b      	ldr	r3, [r3, #0]
    3896:	f013 0f20 	tst.w	r3, #32
    389a:	d00d      	beq.n	38b8 <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    389c:	4b09      	ldr	r3, [pc, #36]	; (38c4 <USART3_handler+0x3c>)
    389e:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    38a2:	1c51      	adds	r1, r2, #1
    38a4:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    38a8:	4907      	ldr	r1, [pc, #28]	; (38c8 <USART3_handler+0x40>)
    38aa:	6849      	ldr	r1, [r1, #4]
    38ac:	441a      	add	r2, r3
    38ae:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    38b0:	7cda      	ldrb	r2, [r3, #19]
    38b2:	f002 020f 	and.w	r2, r2, #15
    38b6:	74da      	strb	r2, [r3, #19]
		}
}
    38b8:	bc01      	pop	{r0}
    38ba:	4685      	mov	sp, r0
    38bc:	4770      	bx	lr
    38be:	bf00      	nop
    38c0:	40013800 	.word	0x40013800
    38c4:	200006ac 	.word	0x200006ac
    38c8:	40004800 	.word	0x40004800
