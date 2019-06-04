
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 99 2a 00 00     .P. 1........*..
      10:	99 2a 00 00 99 2a 00 00 99 2a 00 00 99 2a 00 00     .*...*...*...*..
      20:	99 2a 00 00 99 2a 00 00 99 2a 00 00 09 02 00 00     .*...*...*......
      30:	99 2a 00 00 99 2a 00 00 0d 02 00 00 11 02 00 00     .*...*..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 ab 27 00 00     ........!....'..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 99 2a 00 00 99 2a 00 00 49 02 00 00     E....*...*..I...
      80:	99 2a 00 00 99 2a 00 00 99 2a 00 00 99 2a 00 00     .*...*...*...*..
      90:	99 2a 00 00 99 2a 00 00 99 2a 00 00 4d 02 00 00     .*...*...*..M...
      a0:	99 2a 00 00 e5 30 00 00 99 2a 00 00 fd 2f 00 00     .*...0...*.../..
      b0:	c1 28 00 00 51 02 00 00 55 02 00 00 99 2a 00 00     .(..Q...U....*..
      c0:	99 2a 00 00 99 2a 00 00 99 2a 00 00 99 2a 00 00     .*...*...*...*..
      d0:	99 2a 00 00 cf 36 00 00 5d 02 00 00 61 02 00 00     .*...6..]...a...
      e0:	99 2a 00 00 99 2a 00 00 99 2a 00 00 99 2a 00 00     .*...*...*...*..
      f0:	99 2a 00 00 99 2a 00 00 99 2a 00 00 99 2a 00 00     .*...*...*...*..
     100:	99 2a 00 00 99 2a 00 00 99 2a 00 00 99 2a 00 00     .*...*...*...*..
     110:	99 2a 00 00 99 2a 00 00 99 2a 00 00 99 2a 00 00     .*...*...*...*..
     120:	99 2a 00 00 99 2a 00 00 99 2a 00 00 99 2a 00 00     .*...*...*...*..

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
     186:	f001 fc9b 	bl	1ac0 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e3a 	.word	0x20004e3a
     190:	200001f6 	.word	0x200001f6
     194:	20004e39 	.word	0x20004e39
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
     1da:	f002 fc65 	bl	2aa8 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fc62 	bl	2aa8 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fc5f 	bl	2aa8 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fc5c 	bl	2aa8 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003ed4 	.word	0x00003ed4
     1f8:	00003eb0 	.word	0x00003eb0
     1fc:	00003ec8 	.word	0x00003ec8
     200:	00003ee4 	.word	0x00003ee4

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fc48 	bl	2a98 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fc46 	bl	2a98 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fc44 	bl	2a98 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fc42 	bl	2a98 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fc40 	bl	2a98 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fc3e 	bl	2a98 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fc3c 	bl	2a98 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fc3a 	bl	2a98 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fc38 	bl	2a98 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fc36 	bl	2a98 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fc34 	bl	2a98 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fc32 	bl	2a98 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fc30 	bl	2a98 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fc2e 	bl	2a98 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fc2c 	bl	2a98 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fc2a 	bl	2a98 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fc28 	bl	2a98 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fc26 	bl	2a98 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fc24 	bl	2a98 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fc22 	bl	2a98 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fc20 	bl	2a98 <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 fc1e 	bl	2a98 <reset_mcu>

0000025c <USART2_handler>:
_default_handler(USART2_handler) // 38
     25c:	f002 fc1c 	bl	2a98 <reset_mcu>

00000260 <USART3_handler>:
_default_handler(USART3_handler) // 39
     260:	f002 fc1a 	bl	2a98 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fc18 	bl	2a98 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fc16 	bl	2a98 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fc14 	bl	2a98 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fc12 	bl	2a98 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fc10 	bl	2a98 <reset_mcu>

00000278 <basic>:
#include "graphics.h"
#include "gamepad.h"
#include "text.h"
#include "basic.h"

void basic(){
     278:	b508      	push	{r3, lr}
    gfx_cls();
     27a:	f001 f9b3 	bl	15e4 <gfx_cls>
    print("not done yet\n");
     27e:	4804      	ldr	r0, [pc, #16]	; (290 <basic+0x18>)
     280:	f002 fd7c 	bl	2d7c <print>
    prompt_btn();
     284:	f002 fddf 	bl	2e46 <prompt_btn>
    btn_wait_any();
     288:	f000 ff4a 	bl	1120 <btn_wait_any>
     28c:	bd08      	pop	{r3, pc}
     28e:	bf00      	nop
     290:	00003c1c 	.word	0x00003c1c

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
     332:	f002 fc33 	bl	2b9c <get_font>
     336:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     338:	2002      	movs	r0, #2
     33a:	f002 fc29 	bl	2b90 <select_font>
	new_line();
     33e:	f002 fc33 	bl	2ba8 <new_line>
	print(msg);
     342:	4628      	mov	r0, r5
     344:	f002 fd1a 	bl	2d7c <print>
	switch(error_code){
     348:	2c02      	cmp	r4, #2
     34a:	d03a      	beq.n	3c2 <print_vms+0x96>
     34c:	2c03      	cmp	r4, #3
     34e:	d102      	bne.n	356 <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     350:	481e      	ldr	r0, [pc, #120]	; (3cc <print_vms+0xa0>)
     352:	f002 fd13 	bl	2d7c <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     356:	481e      	ldr	r0, [pc, #120]	; (3d0 <print_vms+0xa4>)
     358:	f002 fd10 	bl	2d7c <print>
	print_hex(vms.pc-2);
     35c:	4d1d      	ldr	r5, [pc, #116]	; (3d4 <print_vms+0xa8>)
     35e:	8828      	ldrh	r0, [r5, #0]
     360:	2110      	movs	r1, #16
     362:	3802      	subs	r0, #2
     364:	f002 fd25 	bl	2db2 <print_int>
	print_hex(vms.b2);
     368:	2110      	movs	r1, #16
     36a:	7de8      	ldrb	r0, [r5, #23]
     36c:	f002 fd21 	bl	2db2 <print_int>
	print_hex(vms.b1);
     370:	2110      	movs	r1, #16
     372:	7da8      	ldrb	r0, [r5, #22]
     374:	f002 fd1d 	bl	2db2 <print_int>
	new_line();
     378:	f002 fc16 	bl	2ba8 <new_line>
	print("I:");
     37c:	4816      	ldr	r0, [pc, #88]	; (3d8 <print_vms+0xac>)
     37e:	f002 fcfd 	bl	2d7c <print>
	print_hex(vms.ix);
     382:	2110      	movs	r1, #16
     384:	8868      	ldrh	r0, [r5, #2]
     386:	f002 fd14 	bl	2db2 <print_int>
	print(" SP:");
     38a:	4814      	ldr	r0, [pc, #80]	; (3dc <print_vms+0xb0>)
     38c:	f002 fcf6 	bl	2d7c <print>
	print_hex(vms.sp);
     390:	2110      	movs	r1, #16
     392:	7928      	ldrb	r0, [r5, #4]
     394:	f002 fd0d 	bl	2db2 <print_int>
	new_line();
     398:	f002 fc06 	bl	2ba8 <new_line>
	print("var[]:");
     39c:	4810      	ldr	r0, [pc, #64]	; (3e0 <print_vms+0xb4>)
     39e:	f002 fced 	bl	2d7c <print>
     3a2:	1dac      	adds	r4, r5, #6
     3a4:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     3a6:	2610      	movs	r6, #16
     3a8:	4631      	mov	r1, r6
     3aa:	f814 0b01 	ldrb.w	r0, [r4], #1
     3ae:	f002 fd00 	bl	2db2 <print_int>
	for (int i=0;i<16;i++){
     3b2:	42ac      	cmp	r4, r5
     3b4:	d1f8      	bne.n	3a8 <print_vms+0x7c>
	}
	new_line();
     3b6:	f002 fbf7 	bl	2ba8 <new_line>
	select_font(orig_font);
     3ba:	4638      	mov	r0, r7
     3bc:	f002 fbe8 	bl	2b90 <select_font>
     3c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3c2:	4808      	ldr	r0, [pc, #32]	; (3e4 <print_vms+0xb8>)
     3c4:	f002 fcda 	bl	2d7c <print>
		break;
     3c8:	e7c5      	b.n	356 <print_vms+0x2a>
     3ca:	bf00      	nop
     3cc:	00003c2c 	.word	0x00003c2c
     3d0:	00003c54 	.word	0x00003c54
     3d4:	200001f8 	.word	0x200001f8
     3d8:	00003c58 	.word	0x00003c58
     3dc:	00003c5c 	.word	0x00003c5c
     3e0:	00003c64 	.word	0x00003c64
     3e4:	00003c40 	.word	0x00003c40

000003e8 <srand>:
}

static uint32_t state=1;

void srand(unsigned n){
	state=n;
     3e8:	4b01      	ldr	r3, [pc, #4]	; (3f0 <srand+0x8>)
     3ea:	6018      	str	r0, [r3, #0]
     3ec:	4770      	bx	lr
     3ee:	bf00      	nop
     3f0:	20000000 	.word	0x20000000

000003f4 <rand>:
}

int rand(){
	uint32_t x;
	x=state;
     3f4:	4b05      	ldr	r3, [pc, #20]	; (40c <rand+0x18>)
     3f6:	6818      	ldr	r0, [r3, #0]
	x^=x<<13;
     3f8:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
	x^=x>>17;
     3fc:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
	x^=x<<5;
     400:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
	state=x;
     404:	6018      	str	r0, [r3, #0]
	return x&0x7fffffff; 
}
     406:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
     40a:	4770      	bx	lr
     40c:	20000000 	.word	0x20000000

00000410 <chip_vm>:


//  SCHIP/BPCHIP  virtual machine
vm_exit_code_t chip_vm(uint16_t program_address, vm_debug_t dbg_level){
     410:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
     414:	b088      	sub	sp, #32
#define SLOW_DOWN 5
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
	char buffer[24];

	vms.pc=program_address;
     416:	4b9a      	ldr	r3, [pc, #616]	; (680 <chip_vm+0x270>)
     418:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     41a:	2200      	movs	r2, #0
     41c:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     41e:	805a      	strh	r2, [r3, #2]
 	while (exit_code==CHIP_CONTINUE){
		if (vms.pc>=GAME_SPACE){
     420:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
     424:	f080 8423 	bcs.w	c6e <chip_vm+0x85e>
     428:	460d      	mov	r5, r1
			prompt_btn();
			select_console(LOCAL);
			btn_wait_any();
			break;
		}//switch(dbg_level)
		x=rx(vms.b1);
     42a:	461c      	mov	r4, r3
				block[0]=n/10;
				//store_block(vms.ix,3,block);
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
				break;
			case 0x55: // FX55  LD [I], VX  save registers V0..VX in ram pointed by I
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     42c:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     42e:	f8df a268 	ldr.w	sl, [pc, #616]	; 698 <chip_vm+0x288>
     432:	e13b      	b.n	6ac <chip_vm+0x29c>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     434:	2d00      	cmp	r5, #0
     436:	f040 813e 	bne.w	6b6 <chip_vm+0x2a6>
     43a:	2005      	movs	r0, #5
     43c:	f002 ffce 	bl	33dc <micro_pause>
		_get_opcode(vms.pc);
     440:	8823      	ldrh	r3, [r4, #0]
     442:	4a90      	ldr	r2, [pc, #576]	; (684 <chip_vm+0x274>)
     444:	5cd1      	ldrb	r1, [r2, r3]
     446:	75a1      	strb	r1, [r4, #22]
     448:	441a      	add	r2, r3
     44a:	7852      	ldrb	r2, [r2, #1]
     44c:	75e2      	strb	r2, [r4, #23]
		vms.pc+=2;
     44e:	3302      	adds	r3, #2
     450:	8023      	strh	r3, [r4, #0]
     452:	e018      	b.n	486 <chip_vm+0x76>
			_debug_print(itoa(vms.pc,buffer,16));
     454:	2210      	movs	r2, #16
     456:	a902      	add	r1, sp, #8
     458:	f000 ffc0 	bl	13dc <itoa>
     45c:	4f8a      	ldr	r7, [pc, #552]	; (688 <chip_vm+0x278>)
     45e:	4601      	mov	r1, r0
     460:	4638      	mov	r0, r7
     462:	f003 f927 	bl	36b4 <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     466:	7da0      	ldrb	r0, [r4, #22]
     468:	7de3      	ldrb	r3, [r4, #23]
     46a:	2210      	movs	r2, #16
     46c:	a902      	add	r1, sp, #8
     46e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     472:	f000 ffb3 	bl	13dc <itoa>
     476:	4601      	mov	r1, r0
     478:	4638      	mov	r0, r7
     47a:	f003 f91b 	bl	36b4 <usart_print>
			_debug_print("\n");
     47e:	4983      	ldr	r1, [pc, #524]	; (68c <chip_vm+0x27c>)
     480:	4638      	mov	r0, r7
     482:	f003 f917 	bl	36b4 <usart_print>
		x=rx(vms.b1);
     486:	7da2      	ldrb	r2, [r4, #22]
     488:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     48c:	7de3      	ldrb	r3, [r4, #23]
     48e:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     492:	0911      	lsrs	r1, r2, #4
     494:	290f      	cmp	r1, #15
     496:	f200 8104 	bhi.w	6a2 <chip_vm+0x292>
     49a:	e8df f011 	tbh	[pc, r1, lsl #1]
     49e:	002a      	.short	0x002a
     4a0:	008c0080 	.word	0x008c0080
     4a4:	00a900a0 	.word	0x00a900a0
     4a8:	00ff00b2 	.word	0x00ff00b2
     4ac:	0159014d 	.word	0x0159014d
     4b0:	02a201d4 	.word	0x02a201d4
     4b4:	02bf02af 	.word	0x02bf02af
     4b8:	030902c7 	.word	0x030902c7
     4bc:	0327      	.short	0x0327
			select_console(SERIAL);
     4be:	2001      	movs	r0, #1
     4c0:	f002 fd18 	bl	2ef4 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4c4:	2100      	movs	r1, #0
     4c6:	4872      	ldr	r0, [pc, #456]	; (690 <chip_vm+0x280>)
     4c8:	f7ff ff30 	bl	32c <print_vms>
			select_console(LOCAL);
     4cc:	2000      	movs	r0, #0
     4ce:	f002 fd11 	bl	2ef4 <select_console>
			break;
     4d2:	e7d8      	b.n	486 <chip_vm+0x76>
			select_console(SERIAL);
     4d4:	2001      	movs	r0, #1
     4d6:	f002 fd0d 	bl	2ef4 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4da:	2100      	movs	r1, #0
     4dc:	486c      	ldr	r0, [pc, #432]	; (690 <chip_vm+0x280>)
     4de:	f7ff ff25 	bl	32c <print_vms>
			prompt_btn();
     4e2:	f002 fcb0 	bl	2e46 <prompt_btn>
			select_console(LOCAL);
     4e6:	2000      	movs	r0, #0
     4e8:	f002 fd04 	bl	2ef4 <select_console>
			btn_wait_any();
     4ec:	f000 fe18 	bl	1120 <btn_wait_any>
			break;
     4f0:	e7c9      	b.n	486 <chip_vm+0x76>
		    if ((vms.b1|vms.b2)==0){
     4f2:	431a      	orrs	r2, r3
     4f4:	f000 80d5 	beq.w	6a2 <chip_vm+0x292>
     4f8:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     4fc:	2ac0      	cmp	r2, #192	; 0xc0
     4fe:	d026      	beq.n	54e <chip_vm+0x13e>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
     500:	2ad0      	cmp	r2, #208	; 0xd0
     502:	d029      	beq.n	558 <chip_vm+0x148>
			}else switch(vms.b2){
     504:	3be0      	subs	r3, #224	; 0xe0
     506:	2b1f      	cmp	r3, #31
     508:	d82b      	bhi.n	562 <chip_vm+0x152>
     50a:	e8df f013 	tbh	[pc, r3, lsl #1]
     50e:	002d      	.short	0x002d
     510:	002a002a 	.word	0x002a002a
     514:	002a002a 	.word	0x002a002a
     518:	002a002a 	.word	0x002a002a
     51c:	002a002a 	.word	0x002a002a
     520:	002a002a 	.word	0x002a002a
     524:	002a002a 	.word	0x002a002a
     528:	0030002a 	.word	0x0030002a
     52c:	002a002a 	.word	0x002a002a
     530:	002a002a 	.word	0x002a002a
     534:	002a002a 	.word	0x002a002a
     538:	002a002a 	.word	0x002a002a
     53c:	002a002a 	.word	0x002a002a
     540:	0044002a 	.word	0x0044002a
     544:	003c0038 	.word	0x003c0038
     548:	03a703c2 	.word	0x03a703c2
     54c:	0040      	.short	0x0040
				gfx_scroll_down(vms.b2&0xf); 
     54e:	f003 000f 	and.w	r0, r3, #15
     552:	f001 f881 	bl	1658 <gfx_scroll_down>
     556:	e0a4      	b.n	6a2 <chip_vm+0x292>
				gfx_scroll_up(vms.b2&0xf);					
     558:	f003 000f 	and.w	r0, r3, #15
     55c:	f001 f856 	bl	160c <gfx_scroll_up>
     560:	e09f      	b.n	6a2 <chip_vm+0x292>
					exit_code=CHIP_BAD_OPCODE;
     562:	f04f 0802 	mov.w	r8, #2
     566:	e387      	b.n	c78 <chip_vm+0x868>
					gfx_cls();
     568:	f001 f83c 	bl	15e4 <gfx_cls>
					break;
     56c:	e099      	b.n	6a2 <chip_vm+0x292>
					vms.pc=vms.stack[vms.sp--];
     56e:	7923      	ldrb	r3, [r4, #4]
     570:	1e5a      	subs	r2, r3, #1
     572:	7122      	strb	r2, [r4, #4]
     574:	330c      	adds	r3, #12
     576:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     57a:	8023      	strh	r3, [r4, #0]
					break;
     57c:	e091      	b.n	6a2 <chip_vm+0x292>
					gfx_scroll_right(4);
     57e:	2004      	movs	r0, #4
     580:	f001 f8bc 	bl	16fc <gfx_scroll_right>
					break;
     584:	e08d      	b.n	6a2 <chip_vm+0x292>
					gfx_scroll_left(4);
     586:	2004      	movs	r0, #4
     588:	f001 f88a 	bl	16a0 <gfx_scroll_left>
					break;
     58c:	e089      	b.n	6a2 <chip_vm+0x292>
					set_video_mode(VM_SCHIP);
     58e:	2001      	movs	r0, #1
     590:	f002 fee6 	bl	3360 <set_video_mode>
					break; 
     594:	e085      	b.n	6a2 <chip_vm+0x292>
					set_video_mode(VM_BPCHIP);
     596:	2000      	movs	r0, #0
     598:	f002 fee2 	bl	3360 <set_video_mode>
					break;
     59c:	e081      	b.n	6a2 <chip_vm+0x292>
			vms.pc=caddr(vms.b1,vms.b2);
     59e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5a2:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5a6:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5a8:	4a3a      	ldr	r2, [pc, #232]	; (694 <chip_vm+0x284>)
     5aa:	7812      	ldrb	r2, [r2, #0]
     5ac:	2a00      	cmp	r2, #0
     5ae:	d178      	bne.n	6a2 <chip_vm+0x292>
				vms.pc<<=1;
     5b0:	005b      	lsls	r3, r3, #1
     5b2:	8023      	strh	r3, [r4, #0]
     5b4:	e075      	b.n	6a2 <chip_vm+0x292>
			vms.stack[++vms.sp]=vms.pc;
     5b6:	7921      	ldrb	r1, [r4, #4]
     5b8:	3101      	adds	r1, #1
     5ba:	b2c9      	uxtb	r1, r1
     5bc:	7121      	strb	r1, [r4, #4]
     5be:	310c      	adds	r1, #12
     5c0:	8820      	ldrh	r0, [r4, #0]
     5c2:	f824 0011 	strh.w	r0, [r4, r1, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     5c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5ca:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5ce:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5d0:	4a30      	ldr	r2, [pc, #192]	; (694 <chip_vm+0x284>)
     5d2:	7812      	ldrb	r2, [r2, #0]
     5d4:	2a00      	cmp	r2, #0
     5d6:	d164      	bne.n	6a2 <chip_vm+0x292>
				vms.pc<<=1;
     5d8:	005b      	lsls	r3, r3, #1
     5da:	8023      	strh	r3, [r4, #0]
     5dc:	e061      	b.n	6a2 <chip_vm+0x292>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     5de:	44a0      	add	r8, r4
     5e0:	f898 2006 	ldrb.w	r2, [r8, #6]
     5e4:	429a      	cmp	r2, r3
     5e6:	d15c      	bne.n	6a2 <chip_vm+0x292>
     5e8:	8823      	ldrh	r3, [r4, #0]
     5ea:	3302      	adds	r3, #2
     5ec:	8023      	strh	r3, [r4, #0]
     5ee:	e058      	b.n	6a2 <chip_vm+0x292>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     5f0:	44a0      	add	r8, r4
     5f2:	f898 2006 	ldrb.w	r2, [r8, #6]
     5f6:	429a      	cmp	r2, r3
     5f8:	d053      	beq.n	6a2 <chip_vm+0x292>
     5fa:	8823      	ldrh	r3, [r4, #0]
     5fc:	3302      	adds	r3, #2
     5fe:	8023      	strh	r3, [r4, #0]
     600:	e04f      	b.n	6a2 <chip_vm+0x292>
			switch(vms.b2&0xf){
     602:	f003 030f 	and.w	r3, r3, #15
     606:	2b02      	cmp	r3, #2
     608:	d015      	beq.n	636 <chip_vm+0x226>
     60a:	2b03      	cmp	r3, #3
     60c:	d025      	beq.n	65a <chip_vm+0x24a>
     60e:	b133      	cbz	r3, 61e <chip_vm+0x20e>
     610:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     614:	f1b8 0f00 	cmp.w	r8, #0
     618:	f040 832e 	bne.w	c78 <chip_vm+0x868>
     61c:	e041      	b.n	6a2 <chip_vm+0x292>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     61e:	44a0      	add	r8, r4
     620:	44a1      	add	r9, r4
     622:	f898 2006 	ldrb.w	r2, [r8, #6]
     626:	f899 3006 	ldrb.w	r3, [r9, #6]
     62a:	429a      	cmp	r2, r3
     62c:	d139      	bne.n	6a2 <chip_vm+0x292>
     62e:	8823      	ldrh	r3, [r4, #0]
     630:	3302      	adds	r3, #2
     632:	8023      	strh	r3, [r4, #0]
     634:	e035      	b.n	6a2 <chip_vm+0x292>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     636:	4640      	mov	r0, r8
     638:	45c8      	cmp	r8, r9
     63a:	bf28      	it	cs
     63c:	4648      	movcs	r0, r9
     63e:	eba9 0208 	sub.w	r2, r9, r8
     642:	2a00      	cmp	r2, #0
     644:	bfb8      	it	lt
     646:	4252      	neglt	r2, r2
     648:	8863      	ldrh	r3, [r4, #2]
     64a:	3006      	adds	r0, #6
     64c:	3201      	adds	r2, #1
     64e:	490d      	ldr	r1, [pc, #52]	; (684 <chip_vm+0x274>)
     650:	4419      	add	r1, r3
     652:	4420      	add	r0, r4
     654:	f000 fe51 	bl	12fa <move>
				break;
     658:	e023      	b.n	6a2 <chip_vm+0x292>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     65a:	8863      	ldrh	r3, [r4, #2]
     65c:	4641      	mov	r1, r8
     65e:	45c8      	cmp	r8, r9
     660:	bf28      	it	cs
     662:	4649      	movcs	r1, r9
     664:	eba9 0208 	sub.w	r2, r9, r8
     668:	2a00      	cmp	r2, #0
     66a:	bfb8      	it	lt
     66c:	4252      	neglt	r2, r2
     66e:	3106      	adds	r1, #6
     670:	3201      	adds	r2, #1
     672:	4421      	add	r1, r4
     674:	4803      	ldr	r0, [pc, #12]	; (684 <chip_vm+0x274>)
     676:	4418      	add	r0, r3
     678:	f000 fe3f 	bl	12fa <move>
				break;
     67c:	e011      	b.n	6a2 <chip_vm+0x292>
     67e:	bf00      	nop
     680:	200001f8 	.word	0x200001f8
     684:	200006a0 	.word	0x200006a0
     688:	40013800 	.word	0x40013800
     68c:	00003d64 	.word	0x00003d64
     690:	00003c6c 	.word	0x00003c6c
     694:	20000688 	.word	0x20000688
     698:	51eb851f 	.word	0x51eb851f
			vms.var[x]=vms.b2;
     69c:	44a0      	add	r8, r4
     69e:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     6a2:	8823      	ldrh	r3, [r4, #0]
     6a4:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     6a8:	f080 82e4 	bcs.w	c74 <chip_vm+0x864>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     6ac:	4bc0      	ldr	r3, [pc, #768]	; (9b0 <chip_vm+0x5a0>)
     6ae:	781b      	ldrb	r3, [r3, #0]
     6b0:	2b01      	cmp	r3, #1
     6b2:	f43f aebf 	beq.w	434 <chip_vm+0x24>
		_get_opcode(vms.pc);
     6b6:	8820      	ldrh	r0, [r4, #0]
     6b8:	4bbe      	ldr	r3, [pc, #760]	; (9b4 <chip_vm+0x5a4>)
     6ba:	5c1a      	ldrb	r2, [r3, r0]
     6bc:	75a2      	strb	r2, [r4, #22]
     6be:	4403      	add	r3, r0
     6c0:	785b      	ldrb	r3, [r3, #1]
     6c2:	75e3      	strb	r3, [r4, #23]
		vms.pc+=2;
     6c4:	3002      	adds	r0, #2
     6c6:	b280      	uxth	r0, r0
     6c8:	8020      	strh	r0, [r4, #0]
		switch(dbg_level){
     6ca:	2d02      	cmp	r5, #2
     6cc:	f43f aef7 	beq.w	4be <chip_vm+0xae>
     6d0:	2d03      	cmp	r5, #3
     6d2:	f43f aeff 	beq.w	4d4 <chip_vm+0xc4>
     6d6:	2d01      	cmp	r5, #1
     6d8:	f43f aebc 	beq.w	454 <chip_vm+0x44>
		x=rx(vms.b1);
     6dc:	7da2      	ldrb	r2, [r4, #22]
     6de:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     6e2:	7de3      	ldrb	r3, [r4, #23]
     6e4:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     6e8:	0911      	lsrs	r1, r2, #4
     6ea:	290f      	cmp	r1, #15
     6ec:	f200 82b3 	bhi.w	c56 <chip_vm+0x846>
     6f0:	a001      	add	r0, pc, #4	; (adr r0, 6f8 <chip_vm+0x2e8>)
     6f2:	f850 f021 	ldr.w	pc, [r0, r1, lsl #2]
     6f6:	bf00      	nop
     6f8:	000004f3 	.word	0x000004f3
     6fc:	0000059f 	.word	0x0000059f
     700:	000005b7 	.word	0x000005b7
     704:	000005df 	.word	0x000005df
     708:	000005f1 	.word	0x000005f1
     70c:	00000603 	.word	0x00000603
     710:	0000069d 	.word	0x0000069d
     714:	00000739 	.word	0x00000739
     718:	00000751 	.word	0x00000751
     71c:	00000847 	.word	0x00000847
     720:	000009e3 	.word	0x000009e3
     724:	000009fd 	.word	0x000009fd
     728:	00000a1d 	.word	0x00000a1d
     72c:	00000a2d 	.word	0x00000a2d
     730:	00000ab1 	.word	0x00000ab1
     734:	00000aed 	.word	0x00000aed
		    n=(vms.var[x]+vms.b2)>255;
     738:	44a0      	add	r8, r4
     73a:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     73e:	4403      	add	r3, r0
     740:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     744:	2bff      	cmp	r3, #255	; 0xff
     746:	bfd4      	ite	le
     748:	2300      	movle	r3, #0
     74a:	2301      	movgt	r3, #1
     74c:	7563      	strb	r3, [r4, #21]
			break;
     74e:	e7a8      	b.n	6a2 <chip_vm+0x292>
			switch(vms.b2&0xf){
     750:	f003 030f 	and.w	r3, r3, #15
     754:	2b0e      	cmp	r3, #14
     756:	f200 8284 	bhi.w	c62 <chip_vm+0x852>
     75a:	e8df f013 	tbh	[pc, r3, lsl #1]
     75e:	000f      	.short	0x000f
     760:	00200016 	.word	0x00200016
     764:	0034002a 	.word	0x0034002a
     768:	00520043 	.word	0x00520043
     76c:	0282005c 	.word	0x0282005c
     770:	02820282 	.word	0x02820282
     774:	02820282 	.word	0x02820282
     778:	006b0282 	.word	0x006b0282
				vms.var[x]=vms.var[y];
     77c:	44a1      	add	r9, r4
     77e:	f899 3006 	ldrb.w	r3, [r9, #6]
     782:	44a0      	add	r8, r4
     784:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     788:	e78b      	b.n	6a2 <chip_vm+0x292>
				vms.var[x]|=vms.var[y];
     78a:	44a0      	add	r8, r4
     78c:	44a1      	add	r9, r4
     78e:	f898 3006 	ldrb.w	r3, [r8, #6]
     792:	f899 2006 	ldrb.w	r2, [r9, #6]
     796:	4313      	orrs	r3, r2
     798:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     79c:	e781      	b.n	6a2 <chip_vm+0x292>
				vms.var[x]&=vms.var[y];
     79e:	44a0      	add	r8, r4
     7a0:	44a1      	add	r9, r4
     7a2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7a6:	f899 2006 	ldrb.w	r2, [r9, #6]
     7aa:	4013      	ands	r3, r2
     7ac:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7b0:	e777      	b.n	6a2 <chip_vm+0x292>
				vms.var[x]^=vms.var[y];
     7b2:	44a0      	add	r8, r4
     7b4:	44a1      	add	r9, r4
     7b6:	f898 3006 	ldrb.w	r3, [r8, #6]
     7ba:	f899 2006 	ldrb.w	r2, [r9, #6]
     7be:	4053      	eors	r3, r2
     7c0:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7c4:	e76d      	b.n	6a2 <chip_vm+0x292>
				n=(vms.var[x]+vms.var[y])>255;
     7c6:	44a0      	add	r8, r4
     7c8:	f898 3006 	ldrb.w	r3, [r8, #6]
     7cc:	44a1      	add	r9, r4
     7ce:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     7d2:	4413      	add	r3, r2
     7d4:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     7d8:	2bff      	cmp	r3, #255	; 0xff
     7da:	bfd4      	ite	le
     7dc:	2300      	movle	r3, #0
     7de:	2301      	movgt	r3, #1
     7e0:	7563      	strb	r3, [r4, #21]
				break;
     7e2:	e75e      	b.n	6a2 <chip_vm+0x292>
				n=vms.var[x]>=vms.var[y];
     7e4:	44a0      	add	r8, r4
     7e6:	f898 3006 	ldrb.w	r3, [r8, #6]
     7ea:	44a1      	add	r9, r4
     7ec:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     7f0:	1a99      	subs	r1, r3, r2
     7f2:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     7f6:	4293      	cmp	r3, r2
     7f8:	bf34      	ite	cc
     7fa:	2300      	movcc	r3, #0
     7fc:	2301      	movcs	r3, #1
     7fe:	7563      	strb	r3, [r4, #21]
				break;
     800:	e74f      	b.n	6a2 <chip_vm+0x292>
				n=(vms.var[x]&1u);
     802:	44a0      	add	r8, r4
     804:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     808:	085a      	lsrs	r2, r3, #1
     80a:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     80e:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     812:	7563      	strb	r3, [r4, #21]
				break;
     814:	e745      	b.n	6a2 <chip_vm+0x292>
				n=vms.var[y]>=vms.var[x];
     816:	44a1      	add	r9, r4
     818:	f899 3006 	ldrb.w	r3, [r9, #6]
     81c:	44a0      	add	r8, r4
     81e:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     822:	1a99      	subs	r1, r3, r2
     824:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     828:	4293      	cmp	r3, r2
     82a:	bf34      	ite	cc
     82c:	2300      	movcc	r3, #0
     82e:	2301      	movcs	r3, #1
     830:	7563      	strb	r3, [r4, #21]
				break;
     832:	e736      	b.n	6a2 <chip_vm+0x292>
				n=(vms.var[x]&128)>>7;
     834:	44a0      	add	r8, r4
     836:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     83a:	005a      	lsls	r2, r3, #1
     83c:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     840:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     842:	7563      	strb	r3, [r4, #21]
				break;
     844:	e72d      	b.n	6a2 <chip_vm+0x292>
			switch (vms.b2&0xf){
     846:	f003 030f 	and.w	r3, r3, #15
     84a:	2b0f      	cmp	r3, #15
     84c:	f200 820c 	bhi.w	c68 <chip_vm+0x858>
     850:	e8df f003 	tbb	[pc, r3]
     854:	3c1f1508 	.word	0x3c1f1508
     858:	62574c47 	.word	0x62574c47
     85c:	867a736c 	.word	0x867a736c
     860:	c1b29f93 	.word	0xc1b29f93
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     864:	44a0      	add	r8, r4
     866:	44a1      	add	r9, r4
     868:	f898 2006 	ldrb.w	r2, [r8, #6]
     86c:	f899 3006 	ldrb.w	r3, [r9, #6]
     870:	429a      	cmp	r2, r3
     872:	f43f af16 	beq.w	6a2 <chip_vm+0x292>
     876:	8823      	ldrh	r3, [r4, #0]
     878:	3302      	adds	r3, #2
     87a:	8023      	strh	r3, [r4, #0]
     87c:	e711      	b.n	6a2 <chip_vm+0x292>
				key_tone(vms.var[x],vms.var[y],false);
     87e:	44a1      	add	r9, r4
     880:	44a0      	add	r8, r4
     882:	2200      	movs	r2, #0
     884:	f899 1006 	ldrb.w	r1, [r9, #6]
     888:	f898 0006 	ldrb.w	r0, [r8, #6]
     88c:	f001 fff0 	bl	2870 <key_tone>
				break;
     890:	e707      	b.n	6a2 <chip_vm+0x292>
				select_font(FONT_ASCII);
     892:	2002      	movs	r0, #2
     894:	f002 f97c 	bl	2b90 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     898:	44a1      	add	r9, r4
     89a:	44a0      	add	r8, r4
     89c:	f899 1006 	ldrb.w	r1, [r9, #6]
     8a0:	f898 0006 	ldrb.w	r0, [r8, #6]
     8a4:	f002 fa36 	bl	2d14 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     8a8:	8860      	ldrh	r0, [r4, #2]
     8aa:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9b4 <chip_vm+0x5a4>
     8ae:	4448      	add	r0, r9
     8b0:	f002 fa64 	bl	2d7c <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8b4:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8b8:	eb09 0008 	add.w	r0, r9, r8
     8bc:	f000 fd27 	bl	130e <strlen>
     8c0:	f108 0801 	add.w	r8, r8, #1
     8c4:	4480      	add	r8, r0
     8c6:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     8ca:	e6ea      	b.n	6a2 <chip_vm+0x292>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     8cc:	44a1      	add	r9, r4
     8ce:	44a0      	add	r8, r4
     8d0:	2303      	movs	r3, #3
     8d2:	2200      	movs	r2, #0
     8d4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8d8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8dc:	f000 fe0c 	bl	14f8 <gfx_blit>
				break;
     8e0:	e6df      	b.n	6a2 <chip_vm+0x292>
				noise((x<<4)+y);
     8e2:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8e6:	f001 ffd7 	bl	2898 <noise>
				break;
     8ea:	e6da      	b.n	6a2 <chip_vm+0x292>
				key_tone(vms.var[x],vms.var[y],true);
     8ec:	44a1      	add	r9, r4
     8ee:	44a0      	add	r8, r4
     8f0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8f4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8f8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8fc:	f001 ffb8 	bl	2870 <key_tone>
				break;
     900:	e6cf      	b.n	6a2 <chip_vm+0x292>
				vms.stack[++vms.sp]=vms.var[x];
     902:	7923      	ldrb	r3, [r4, #4]
     904:	3301      	adds	r3, #1
     906:	b2db      	uxtb	r3, r3
     908:	7123      	strb	r3, [r4, #4]
     90a:	330c      	adds	r3, #12
     90c:	44a0      	add	r8, r4
     90e:	f898 2006 	ldrb.w	r2, [r8, #6]
     912:	f824 2013 	strh.w	r2, [r4, r3, lsl #1]
				break;
     916:	e6c4      	b.n	6a2 <chip_vm+0x292>
				vms.var[x]=vms.stack[vms.sp--];
     918:	7923      	ldrb	r3, [r4, #4]
     91a:	1e5a      	subs	r2, r3, #1
     91c:	7122      	strb	r2, [r4, #4]
     91e:	44a0      	add	r8, r4
     920:	330c      	adds	r3, #12
     922:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     926:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     92a:	e6ba      	b.n	6a2 <chip_vm+0x292>
				{ 	vmode_params_t *vparams=get_video_params();
     92c:	f002 fd42 	bl	33b4 <get_video_params>
					vms.var[x]=vparams->hres;
     930:	44a0      	add	r8, r4
     932:	8983      	ldrh	r3, [r0, #12]
     934:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     938:	e6b3      	b.n	6a2 <chip_vm+0x292>
					vmode_params_t *vparams=get_video_params();
     93a:	f002 fd3b 	bl	33b4 <get_video_params>
					vms.var[x]=vparams->vres;
     93e:	44a0      	add	r8, r4
     940:	89c3      	ldrh	r3, [r0, #14]
     942:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     946:	e6ac      	b.n	6a2 <chip_vm+0x292>
			    vms.var[x] |= (1<<(y&0x7));
     948:	44a0      	add	r8, r4
     94a:	f009 0907 	and.w	r9, r9, #7
     94e:	2301      	movs	r3, #1
     950:	fa03 f309 	lsl.w	r3, r3, r9
     954:	f898 2006 	ldrb.w	r2, [r8, #6]
     958:	4313      	orrs	r3, r2
     95a:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     95e:	e6a0      	b.n	6a2 <chip_vm+0x292>
			    vms.var[x] &= ~(1<<(y&0x7));
     960:	44a0      	add	r8, r4
     962:	f009 0207 	and.w	r2, r9, #7
     966:	2301      	movs	r3, #1
     968:	fa03 f202 	lsl.w	r2, r3, r2
     96c:	f898 3006 	ldrb.w	r3, [r8, #6]
     970:	ea23 0302 	bic.w	r3, r3, r2
     974:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     978:	e693      	b.n	6a2 <chip_vm+0x292>
   			    vms.var[x] ^= (1<<(y&0x7));
     97a:	44a0      	add	r8, r4
     97c:	f009 0907 	and.w	r9, r9, #7
     980:	2301      	movs	r3, #1
     982:	fa03 f309 	lsl.w	r3, r3, r9
     986:	f898 2006 	ldrb.w	r2, [r8, #6]
     98a:	4053      	eors	r3, r2
     98c:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     990:	e687      	b.n	6a2 <chip_vm+0x292>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     992:	44a0      	add	r8, r4
     994:	f898 3006 	ldrb.w	r3, [r8, #6]
     998:	f009 0907 	and.w	r9, r9, #7
     99c:	fa43 f309 	asr.w	r3, r3, r9
     9a0:	f013 0f01 	tst.w	r3, #1
     9a4:	f43f ae7d 	beq.w	6a2 <chip_vm+0x292>
     9a8:	8823      	ldrh	r3, [r4, #0]
     9aa:	3302      	adds	r3, #2
     9ac:	8023      	strh	r3, [r4, #0]
     9ae:	e678      	b.n	6a2 <chip_vm+0x292>
     9b0:	20000688 	.word	0x20000688
     9b4:	200006a0 	.word	0x200006a0
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     9b8:	44a0      	add	r8, r4
     9ba:	f898 3006 	ldrb.w	r3, [r8, #6]
     9be:	f009 0907 	and.w	r9, r9, #7
     9c2:	fa43 f309 	asr.w	r3, r3, r9
     9c6:	f013 0f01 	tst.w	r3, #1
     9ca:	f47f ae6a 	bne.w	6a2 <chip_vm+0x292>
     9ce:	8823      	ldrh	r3, [r4, #0]
     9d0:	3302      	adds	r3, #2
     9d2:	8023      	strh	r3, [r4, #0]
     9d4:	e665      	b.n	6a2 <chip_vm+0x292>
			    vms.var[15]=gfx_get_pixel(x,y);
     9d6:	4649      	mov	r1, r9
     9d8:	4640      	mov	r0, r8
     9da:	f000 fec3 	bl	1764 <gfx_get_pixel>
     9de:	7560      	strb	r0, [r4, #21]
				break;  	
     9e0:	e65f      	b.n	6a2 <chip_vm+0x292>
			vms.ix=caddr(vms.b1,vms.b2);
     9e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9e6:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9ea:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9ec:	4aaa      	ldr	r2, [pc, #680]	; (c98 <chip_vm+0x888>)
     9ee:	7812      	ldrb	r2, [r2, #0]
     9f0:	b90a      	cbnz	r2, 9f6 <chip_vm+0x5e6>
				vms.ix<<=1;
     9f2:	005b      	lsls	r3, r3, #1
     9f4:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     9f6:	2300      	movs	r3, #0
     9f8:	7163      	strb	r3, [r4, #5]
			break;
     9fa:	e652      	b.n	6a2 <chip_vm+0x292>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     9fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     a00:	f3c3 030b 	ubfx	r3, r3, #0, #12
     a04:	79a2      	ldrb	r2, [r4, #6]
     a06:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     a0a:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     a0c:	4aa2      	ldr	r2, [pc, #648]	; (c98 <chip_vm+0x888>)
     a0e:	7812      	ldrb	r2, [r2, #0]
     a10:	2a00      	cmp	r2, #0
     a12:	f47f ae46 	bne.w	6a2 <chip_vm+0x292>
				vms.pc<<=1;
     a16:	005b      	lsls	r3, r3, #1
     a18:	8023      	strh	r3, [r4, #0]
     a1a:	e642      	b.n	6a2 <chip_vm+0x292>
			vms.var[x]=rand()&vms.b2;
     a1c:	f7ff fcea 	bl	3f4 <rand>
     a20:	44a0      	add	r8, r4
     a22:	7de3      	ldrb	r3, [r4, #23]
     a24:	4018      	ands	r0, r3
     a26:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     a2a:	e63a      	b.n	6a2 <chip_vm+0x292>
			if (!n){
     a2c:	f013 030f 	ands.w	r3, r3, #15
     a30:	d11f      	bne.n	a72 <chip_vm+0x662>
				if (vms.sprite_mem==RAM_MEM){
     a32:	7963      	ldrb	r3, [r4, #5]
     a34:	b97b      	cbnz	r3, a56 <chip_vm+0x646>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     a36:	44a1      	add	r9, r4
     a38:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a3c:	44a0      	add	r8, r4
     a3e:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a42:	8863      	ldrh	r3, [r4, #2]
     a44:	4a95      	ldr	r2, [pc, #596]	; (c9c <chip_vm+0x88c>)
     a46:	4413      	add	r3, r2
     a48:	9300      	str	r3, [sp, #0]
     a4a:	2310      	movs	r3, #16
     a4c:	461a      	mov	r2, r3
     a4e:	f000 feaf 	bl	17b0 <gfx_sprite>
     a52:	7560      	strb	r0, [r4, #21]
     a54:	e625      	b.n	6a2 <chip_vm+0x292>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     a56:	44a1      	add	r9, r4
     a58:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a5c:	44a0      	add	r8, r4
     a5e:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a62:	8863      	ldrh	r3, [r4, #2]
     a64:	9300      	str	r3, [sp, #0]
     a66:	2310      	movs	r3, #16
     a68:	461a      	mov	r2, r3
     a6a:	f000 fea1 	bl	17b0 <gfx_sprite>
     a6e:	7560      	strb	r0, [r4, #21]
     a70:	e617      	b.n	6a2 <chip_vm+0x292>
				if (vms.sprite_mem==RAM_MEM){
     a72:	7962      	ldrb	r2, [r4, #5]
     a74:	b97a      	cbnz	r2, a96 <chip_vm+0x686>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     a76:	44a1      	add	r9, r4
     a78:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a7c:	44a0      	add	r8, r4
     a7e:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a82:	8862      	ldrh	r2, [r4, #2]
     a84:	f8df e214 	ldr.w	lr, [pc, #532]	; c9c <chip_vm+0x88c>
     a88:	4472      	add	r2, lr
     a8a:	9200      	str	r2, [sp, #0]
     a8c:	2208      	movs	r2, #8
     a8e:	f000 fe8f 	bl	17b0 <gfx_sprite>
     a92:	7560      	strb	r0, [r4, #21]
     a94:	e605      	b.n	6a2 <chip_vm+0x292>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     a96:	44a1      	add	r9, r4
     a98:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a9c:	44a0      	add	r8, r4
     a9e:	f998 0006 	ldrsb.w	r0, [r8, #6]
     aa2:	8862      	ldrh	r2, [r4, #2]
     aa4:	9200      	str	r2, [sp, #0]
     aa6:	2208      	movs	r2, #8
     aa8:	f000 fe82 	bl	17b0 <gfx_sprite>
     aac:	7560      	strb	r0, [r4, #21]
     aae:	e5f8      	b.n	6a2 <chip_vm+0x292>
				switch(vms.b2){
     ab0:	2b9e      	cmp	r3, #158	; 0x9e
     ab2:	d003      	beq.n	abc <chip_vm+0x6ac>
     ab4:	2ba1      	cmp	r3, #161	; 0xa1
     ab6:	d00d      	beq.n	ad4 <chip_vm+0x6c4>
					return CHIP_BAD_OPCODE;
     ab8:	2002      	movs	r0, #2
     aba:	e0e7      	b.n	c8c <chip_vm+0x87c>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     abc:	44a0      	add	r8, r4
     abe:	f898 0006 	ldrb.w	r0, [r8, #6]
     ac2:	f000 faf9 	bl	10b8 <btn_query_down>
     ac6:	2800      	cmp	r0, #0
     ac8:	f43f adeb 	beq.w	6a2 <chip_vm+0x292>
     acc:	8823      	ldrh	r3, [r4, #0]
     ace:	3302      	adds	r3, #2
     ad0:	8023      	strh	r3, [r4, #0]
     ad2:	e5e6      	b.n	6a2 <chip_vm+0x292>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     ad4:	44a0      	add	r8, r4
     ad6:	f898 0006 	ldrb.w	r0, [r8, #6]
     ada:	f000 faed 	bl	10b8 <btn_query_down>
     ade:	2800      	cmp	r0, #0
     ae0:	f47f addf 	bne.w	6a2 <chip_vm+0x292>
     ae4:	8823      	ldrh	r3, [r4, #0]
     ae6:	3302      	adds	r3, #2
     ae8:	8023      	strh	r3, [r4, #0]
     aea:	e5da      	b.n	6a2 <chip_vm+0x292>
			switch(vms.b2){
     aec:	2b29      	cmp	r3, #41	; 0x29
     aee:	d078      	beq.n	be2 <chip_vm+0x7d2>
     af0:	d815      	bhi.n	b1e <chip_vm+0x70e>
     af2:	2b0a      	cmp	r3, #10
     af4:	d05a      	beq.n	bac <chip_vm+0x79c>
     af6:	d908      	bls.n	b0a <chip_vm+0x6fa>
     af8:	2b18      	cmp	r3, #24
     afa:	d063      	beq.n	bc4 <chip_vm+0x7b4>
     afc:	2b1e      	cmp	r3, #30
     afe:	d069      	beq.n	bd4 <chip_vm+0x7c4>
     b00:	2b15      	cmp	r3, #21
     b02:	d059      	beq.n	bb8 <chip_vm+0x7a8>
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash
				flash_read_block((const uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
				//move((const uint8_t*)block,vms.var,x+1);
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     b04:	f04f 0802 	mov.w	r8, #2
     b08:	e584      	b.n	614 <chip_vm+0x204>
			switch(vms.b2){
     b0a:	2b01      	cmp	r3, #1
     b0c:	d044      	beq.n	b98 <chip_vm+0x788>
     b0e:	2b07      	cmp	r3, #7
     b10:	d1f8      	bne.n	b04 <chip_vm+0x6f4>
				vms.var[x]=game_timer;
     b12:	4b63      	ldr	r3, [pc, #396]	; (ca0 <chip_vm+0x890>)
     b14:	881b      	ldrh	r3, [r3, #0]
     b16:	44a0      	add	r8, r4
     b18:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     b1c:	e5c1      	b.n	6a2 <chip_vm+0x292>
			switch(vms.b2){
     b1e:	2b55      	cmp	r3, #85	; 0x55
     b20:	d07c      	beq.n	c1c <chip_vm+0x80c>
     b22:	d910      	bls.n	b46 <chip_vm+0x736>
     b24:	2b75      	cmp	r3, #117	; 0x75
     b26:	f000 8082 	beq.w	c2e <chip_vm+0x81e>
     b2a:	2b85      	cmp	r3, #133	; 0x85
     b2c:	f000 8089 	beq.w	c42 <chip_vm+0x832>
     b30:	2b65      	cmp	r3, #101	; 0x65
     b32:	d1e7      	bne.n	b04 <chip_vm+0x6f4>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     b34:	8863      	ldrh	r3, [r4, #2]
     b36:	f108 0201 	add.w	r2, r8, #1
     b3a:	4631      	mov	r1, r6
     b3c:	4857      	ldr	r0, [pc, #348]	; (c9c <chip_vm+0x88c>)
     b3e:	4418      	add	r0, r3
     b40:	f000 fbdb 	bl	12fa <move>
				break;
     b44:	e5ad      	b.n	6a2 <chip_vm+0x292>
			switch(vms.b2){
     b46:	2b30      	cmp	r3, #48	; 0x30
     b48:	d05a      	beq.n	c00 <chip_vm+0x7f0>
     b4a:	2b33      	cmp	r3, #51	; 0x33
     b4c:	d1da      	bne.n	b04 <chip_vm+0x6f4>
				n=vms.var[x];
     b4e:	44a0      	add	r8, r4
     b50:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     b54:	4a53      	ldr	r2, [pc, #332]	; (ca4 <chip_vm+0x894>)
     b56:	fba2 0301 	umull	r0, r3, r2, r1
     b5a:	08db      	lsrs	r3, r3, #3
     b5c:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     b60:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     b64:	f884 005a 	strb.w	r0, [r4, #90]	; 0x5a
				block[1]=n%10;
     b68:	b2db      	uxtb	r3, r3
     b6a:	fba2 0203 	umull	r0, r2, r2, r3
     b6e:	08d2      	lsrs	r2, r2, #3
     b70:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     b74:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     b78:	f884 3059 	strb.w	r3, [r4, #89]	; 0x59
				block[0]=n/10;
     b7c:	fbaa 2301 	umull	r2, r3, sl, r1
     b80:	095b      	lsrs	r3, r3, #5
     b82:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     b86:	8863      	ldrh	r3, [r4, #2]
     b88:	2203      	movs	r2, #3
     b8a:	4944      	ldr	r1, [pc, #272]	; (c9c <chip_vm+0x88c>)
     b8c:	4419      	add	r1, r3
     b8e:	f104 0058 	add.w	r0, r4, #88	; 0x58
     b92:	f000 fbb2 	bl	12fa <move>
				break;
     b96:	e584      	b.n	6a2 <chip_vm+0x292>
				sprite_bpp=vms.b1%3;
     b98:	4b43      	ldr	r3, [pc, #268]	; (ca8 <chip_vm+0x898>)
     b9a:	fba3 1302 	umull	r1, r3, r3, r2
     b9e:	085b      	lsrs	r3, r3, #1
     ba0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     ba4:	1ad2      	subs	r2, r2, r3
     ba6:	4b41      	ldr	r3, [pc, #260]	; (cac <chip_vm+0x89c>)
     ba8:	701a      	strb	r2, [r3, #0]
				break;
     baa:	e57a      	b.n	6a2 <chip_vm+0x292>
				vms.var[x]=btn_wait_any();
     bac:	f000 fab8 	bl	1120 <btn_wait_any>
     bb0:	44a0      	add	r8, r4
     bb2:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     bb6:	e574      	b.n	6a2 <chip_vm+0x292>
				game_timer=vms.var[x];
     bb8:	44a0      	add	r8, r4
     bba:	f898 2006 	ldrb.w	r2, [r8, #6]
     bbe:	4b38      	ldr	r3, [pc, #224]	; (ca0 <chip_vm+0x890>)
     bc0:	801a      	strh	r2, [r3, #0]
				break;
     bc2:	e56e      	b.n	6a2 <chip_vm+0x292>
				tone(523,vms.var[x]);
     bc4:	44a0      	add	r8, r4
     bc6:	f898 1006 	ldrb.w	r1, [r8, #6]
     bca:	f240 200b 	movw	r0, #523	; 0x20b
     bce:	f001 fe29 	bl	2824 <tone>
				break;
     bd2:	e566      	b.n	6a2 <chip_vm+0x292>
				vms.ix += vms.var[x];
     bd4:	44a0      	add	r8, r4
     bd6:	f898 3006 	ldrb.w	r3, [r8, #6]
     bda:	8862      	ldrh	r2, [r4, #2]
     bdc:	4413      	add	r3, r2
     bde:	8063      	strh	r3, [r4, #2]
				break;
     be0:	e55f      	b.n	6a2 <chip_vm+0x292>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     be2:	44a0      	add	r8, r4
     be4:	f898 3006 	ldrb.w	r3, [r8, #6]
     be8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     bec:	4a30      	ldr	r2, [pc, #192]	; (cb0 <chip_vm+0x8a0>)
     bee:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     bf2:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     bf4:	2301      	movs	r3, #1
     bf6:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     bf8:	2000      	movs	r0, #0
     bfa:	f001 ffc9 	bl	2b90 <select_font>
				break;
     bfe:	e550      	b.n	6a2 <chip_vm+0x292>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c00:	44a0      	add	r8, r4
     c02:	f898 3006 	ldrb.w	r3, [r8, #6]
     c06:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c0a:	4a2a      	ldr	r2, [pc, #168]	; (cb4 <chip_vm+0x8a4>)
     c0c:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c10:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c12:	2001      	movs	r0, #1
     c14:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     c16:	f001 ffbb 	bl	2b90 <select_font>
				break;
     c1a:	e542      	b.n	6a2 <chip_vm+0x292>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     c1c:	8863      	ldrh	r3, [r4, #2]
     c1e:	f108 0201 	add.w	r2, r8, #1
     c22:	491e      	ldr	r1, [pc, #120]	; (c9c <chip_vm+0x88c>)
     c24:	4419      	add	r1, r3
     c26:	4630      	mov	r0, r6
     c28:	f000 fb67 	bl	12fa <move>
				break;
     c2c:	e539      	b.n	6a2 <chip_vm+0x292>
				flash_write_block((uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
     c2e:	8860      	ldrh	r0, [r4, #2]
     c30:	f500 4000 	add.w	r0, r0, #32768	; 0x8000
     c34:	f108 0201 	add.w	r2, r8, #1
     c38:	4631      	mov	r1, r6
     c3a:	0040      	lsls	r0, r0, #1
     c3c:	f000 f970 	bl	f20 <flash_write_block>
				break;
     c40:	e52f      	b.n	6a2 <chip_vm+0x292>
				flash_read_block((const uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
     c42:	8860      	ldrh	r0, [r4, #2]
     c44:	f500 4000 	add.w	r0, r0, #32768	; 0x8000
     c48:	f108 0201 	add.w	r2, r8, #1
     c4c:	4631      	mov	r1, r6
     c4e:	0040      	lsls	r0, r0, #1
     c50:	f000 f94c 	bl	eec <flash_read_block>
				break;
     c54:	e525      	b.n	6a2 <chip_vm+0x292>
	    switch (vms.b1>>4){
     c56:	f04f 0800 	mov.w	r8, #0
     c5a:	e4db      	b.n	614 <chip_vm+0x204>
			}else switch(vms.b2){
     c5c:	f04f 0800 	mov.w	r8, #0
     c60:	e4d8      	b.n	614 <chip_vm+0x204>
				exit_code=CHIP_BAD_OPCODE;
     c62:	f04f 0802 	mov.w	r8, #2
     c66:	e4d5      	b.n	614 <chip_vm+0x204>
				exit_code=CHIP_BAD_OPCODE;
     c68:	f04f 0802 	mov.w	r8, #2
     c6c:	e4d2      	b.n	614 <chip_vm+0x204>
			exit_code=CHIP_BAD_ADDR;
     c6e:	f04f 0803 	mov.w	r8, #3
     c72:	e001      	b.n	c78 <chip_vm+0x868>
     c74:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     c78:	2002      	movs	r0, #2
     c7a:	f001 ff89 	bl	2b90 <select_font>
	set_keymap(default_kmap);
     c7e:	480e      	ldr	r0, [pc, #56]	; (cb8 <chip_vm+0x8a8>)
     c80:	f000 f9cc 	bl	101c <set_keymap>
	set_video_mode(VM_BPCHIP);
     c84:	2000      	movs	r0, #0
     c86:	f002 fb6b 	bl	3360 <set_video_mode>
	return exit_code;
     c8a:	4640      	mov	r0, r8
}//schipp()
     c8c:	b008      	add	sp, #32
     c8e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					exit_code=CHIP_EXIT_OK;
     c92:	f04f 0801 	mov.w	r8, #1
     c96:	e7ef      	b.n	c78 <chip_vm+0x868>
     c98:	20000688 	.word	0x20000688
     c9c:	200006a0 	.word	0x200006a0
     ca0:	20004e30 	.word	0x20004e30
     ca4:	cccccccd 	.word	0xcccccccd
     ca8:	aaaaaaab 	.word	0xaaaaaaab
     cac:	20000190 	.word	0x20000190
     cb0:	00003afc 	.word	0x00003afc
     cb4:	00003a5c 	.word	0x00003a5c
     cb8:	00003b5c 	.word	0x00003b5c

00000cbc <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     cbc:	2200      	movs	r2, #0
     cbe:	4b0f      	ldr	r3, [pc, #60]	; (cfc <flash_enable+0x40>)
     cc0:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     cc2:	4b0f      	ldr	r3, [pc, #60]	; (d00 <flash_enable+0x44>)
     cc4:	681b      	ldr	r3, [r3, #0]
     cc6:	f013 0f01 	tst.w	r3, #1
     cca:	d10b      	bne.n	ce4 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     ccc:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     cd0:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     cd4:	6813      	ldr	r3, [r2, #0]
     cd6:	f043 0301 	orr.w	r3, r3, #1
     cda:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     cdc:	6813      	ldr	r3, [r2, #0]
     cde:	f013 0f02 	tst.w	r3, #2
     ce2:	d0fb      	beq.n	cdc <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     ce4:	4b07      	ldr	r3, [pc, #28]	; (d04 <flash_enable+0x48>)
     ce6:	4a08      	ldr	r2, [pc, #32]	; (d08 <flash_enable+0x4c>)
     ce8:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     cea:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     cee:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     cf0:	6918      	ldr	r0, [r3, #16]
     cf2:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     cf6:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     cfa:	4770      	bx	lr
     cfc:	20000270 	.word	0x20000270
     d00:	40021000 	.word	0x40021000
     d04:	40022000 	.word	0x40022000
     d08:	45670123 	.word	0x45670123

00000d0c <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     d0c:	4a0b      	ldr	r2, [pc, #44]	; (d3c <flash_write_hword+0x30>)
     d0e:	68d3      	ldr	r3, [r2, #12]
     d10:	f013 0f01 	tst.w	r3, #1
     d14:	d1fb      	bne.n	d0e <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     d16:	4b09      	ldr	r3, [pc, #36]	; (d3c <flash_write_hword+0x30>)
     d18:	68da      	ldr	r2, [r3, #12]
     d1a:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     d1e:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     d20:	2201      	movs	r2, #1
     d22:	611a      	str	r2, [r3, #16]
	*address=hword;
     d24:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     d26:	68da      	ldr	r2, [r3, #12]
     d28:	f012 0f01 	tst.w	r2, #1
     d2c:	d003      	beq.n	d36 <flash_write_hword+0x2a>
     d2e:	68da      	ldr	r2, [r3, #12]
     d30:	f012 0f20 	tst.w	r2, #32
     d34:	d0f7      	beq.n	d26 <flash_write_hword+0x1a>
	return *address==hword;
}
     d36:	2001      	movs	r0, #1
     d38:	4770      	bx	lr
     d3a:	bf00      	nop
     d3c:	40022000 	.word	0x40022000

00000d40 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     d40:	283f      	cmp	r0, #63	; 0x3f
     d42:	d914      	bls.n	d6e <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     d44:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     d46:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     d48:	1c81      	adds	r1, r0, #2
     d4a:	8802      	ldrh	r2, [r0, #0]
     d4c:	f64f 73ff 	movw	r3, #65535	; 0xffff
     d50:	429a      	cmp	r2, r3
     d52:	d110      	bne.n	d76 <flash_erase_row+0x36>
     d54:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     d58:	460b      	mov	r3, r1
     d5a:	f64f 74ff 	movw	r4, #65535	; 0xffff
     d5e:	f833 2b02 	ldrh.w	r2, [r3], #2
     d62:	42a2      	cmp	r2, r4
     d64:	d107      	bne.n	d76 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d66:	429d      	cmp	r5, r3
     d68:	d1f9      	bne.n	d5e <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     d6a:	2001      	movs	r0, #1
     d6c:	e02f      	b.n	dce <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     d6e:	2000      	movs	r0, #0
     d70:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     d72:	2000      	movs	r0, #0
     d74:	e02b      	b.n	dce <flash_erase_row+0x8e>
     d76:	4b17      	ldr	r3, [pc, #92]	; (dd4 <flash_erase_row+0x94>)
     d78:	691b      	ldr	r3, [r3, #16]
     d7a:	f013 0f80 	tst.w	r3, #128	; 0x80
     d7e:	d1f8      	bne.n	d72 <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     d80:	4b14      	ldr	r3, [pc, #80]	; (dd4 <flash_erase_row+0x94>)
     d82:	68da      	ldr	r2, [r3, #12]
     d84:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     d88:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     d8a:	2202      	movs	r2, #2
     d8c:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     d8e:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     d90:	691a      	ldr	r2, [r3, #16]
     d92:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     d96:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     d98:	68da      	ldr	r2, [r3, #12]
     d9a:	f012 0f01 	tst.w	r2, #1
     d9e:	d003      	beq.n	da8 <flash_erase_row+0x68>
     da0:	68da      	ldr	r2, [r3, #12]
     da2:	f012 0f20 	tst.w	r2, #32
     da6:	d0f7      	beq.n	d98 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     da8:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     daa:	f64f 72ff 	movw	r2, #65535	; 0xffff
     dae:	4293      	cmp	r3, r2
     db0:	d107      	bne.n	dc2 <flash_erase_row+0x82>
     db2:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     db6:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     dba:	4293      	cmp	r3, r2
     dbc:	d101      	bne.n	dc2 <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     dbe:	4281      	cmp	r1, r0
     dc0:	d1f9      	bne.n	db6 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     dc2:	f64f 70ff 	movw	r0, #65535	; 0xffff
     dc6:	4283      	cmp	r3, r0
     dc8:	bf14      	ite	ne
     dca:	2000      	movne	r0, #0
     dcc:	2001      	moveq	r0, #1
}
     dce:	bc30      	pop	{r4, r5}
     dd0:	4770      	bx	lr
     dd2:	bf00      	nop
     dd4:	40022000 	.word	0x40022000

00000dd8 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     dd8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     dda:	4b1c      	ldr	r3, [pc, #112]	; (e4c <flash_sync+0x74>)
     ddc:	781b      	ldrb	r3, [r3, #0]
     dde:	f013 0f01 	tst.w	r3, #1
     de2:	d102      	bne.n	dea <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     de4:	2301      	movs	r3, #1
}
     de6:	4618      	mov	r0, r3
     de8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     dea:	4b18      	ldr	r3, [pc, #96]	; (e4c <flash_sync+0x74>)
     dec:	7858      	ldrb	r0, [r3, #1]
     dee:	f7ff ffa7 	bl	d40 <flash_erase_row>
     df2:	4603      	mov	r3, r0
     df4:	2800      	cmp	r0, #0
     df6:	d0f6      	beq.n	de6 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     df8:	4e14      	ldr	r6, [pc, #80]	; (e4c <flash_sync+0x74>)
     dfa:	7875      	ldrb	r5, [r6, #1]
     dfc:	02ad      	lsls	r5, r5, #10
     dfe:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e00:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     e02:	f64f 77ff 	movw	r7, #65535	; 0xffff
     e06:	e004      	b.n	e12 <flash_sync+0x3a>
		dest++;
     e08:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e0a:	3401      	adds	r4, #1
     e0c:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     e10:	d00a      	beq.n	e28 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     e12:	f836 1b02 	ldrh.w	r1, [r6], #2
     e16:	42b9      	cmp	r1, r7
     e18:	d0f6      	beq.n	e08 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     e1a:	4628      	mov	r0, r5
     e1c:	f7ff ff76 	bl	d0c <flash_write_hword>
     e20:	2800      	cmp	r0, #0
     e22:	d1f1      	bne.n	e08 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     e24:	2c00      	cmp	r4, #0
     e26:	dd04      	ble.n	e32 <flash_sync+0x5a>
     e28:	4a08      	ldr	r2, [pc, #32]	; (e4c <flash_sync+0x74>)
     e2a:	7813      	ldrb	r3, [r2, #0]
     e2c:	f023 0304 	bic.w	r3, r3, #4
     e30:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     e32:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     e36:	d106      	bne.n	e46 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     e38:	4a04      	ldr	r2, [pc, #16]	; (e4c <flash_sync+0x74>)
     e3a:	7813      	ldrb	r3, [r2, #0]
     e3c:	f023 0301 	bic.w	r3, r3, #1
     e40:	7013      	strb	r3, [r2, #0]
			return 1;
     e42:	2301      	movs	r3, #1
     e44:	e7cf      	b.n	de6 <flash_sync+0xe>
		return 0;
     e46:	2300      	movs	r3, #0
     e48:	e7cd      	b.n	de6 <flash_sync+0xe>
     e4a:	bf00      	nop
     e4c:	20000270 	.word	0x20000270

00000e50 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     e50:	2200      	movs	r2, #0
     e52:	4b01      	ldr	r3, [pc, #4]	; (e58 <flash_flush+0x8>)
     e54:	701a      	strb	r2, [r3, #0]
     e56:	4770      	bx	lr
     e58:	20000270 	.word	0x20000270

00000e5c <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     e5c:	b508      	push	{r3, lr}
	flash_sync();
     e5e:	f7ff ffbb 	bl	dd8 <flash_sync>
	row_buff.flags=0;
     e62:	2200      	movs	r2, #0
     e64:	4b03      	ldr	r3, [pc, #12]	; (e74 <flash_disable+0x18>)
     e66:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     e68:	4a03      	ldr	r2, [pc, #12]	; (e78 <flash_disable+0x1c>)
     e6a:	6913      	ldr	r3, [r2, #16]
     e6c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     e70:	6113      	str	r3, [r2, #16]
     e72:	bd08      	pop	{r3, pc}
     e74:	20000270 	.word	0x20000270
     e78:	40022000 	.word	0x40022000

00000e7c <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     e7c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     e80:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     e84:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     e88:	d92c      	bls.n	ee4 <flash_write_byte+0x68>
     e8a:	460e      	mov	r6, r1
     e8c:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     e8e:	4b16      	ldr	r3, [pc, #88]	; (ee8 <flash_write_byte+0x6c>)
     e90:	785b      	ldrb	r3, [r3, #1]
     e92:	4598      	cmp	r8, r3
     e94:	d019      	beq.n	eca <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     e96:	f7ff ff9f 	bl	dd8 <flash_sync>
     e9a:	4603      	mov	r3, r0
     e9c:	b1f8      	cbz	r0, ede <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     e9e:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     ea2:	f023 0303 	bic.w	r3, r3, #3
     ea6:	4a10      	ldr	r2, [pc, #64]	; (ee8 <flash_write_byte+0x6c>)
     ea8:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     eac:	f833 4b02 	ldrh.w	r4, [r3], #2
     eb0:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     eb4:	42ab      	cmp	r3, r5
     eb6:	d1f9      	bne.n	eac <flash_write_byte+0x30>
	row_buff.row=r;
     eb8:	4a0b      	ldr	r2, [pc, #44]	; (ee8 <flash_write_byte+0x6c>)
     eba:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     ebe:	7813      	ldrb	r3, [r2, #0]
     ec0:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     ec4:	f043 0302 	orr.w	r3, r3, #2
     ec8:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     eca:	4a07      	ldr	r2, [pc, #28]	; (ee8 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     ecc:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     ed0:	4413      	add	r3, r2
     ed2:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     ed4:	7813      	ldrb	r3, [r2, #0]
     ed6:	f043 0301 	orr.w	r3, r3, #1
     eda:	7013      	strb	r3, [r2, #0]
	return 1;
     edc:	2301      	movs	r3, #1
}
     ede:	4618      	mov	r0, r3
     ee0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     ee4:	2300      	movs	r3, #0
     ee6:	e7fa      	b.n	ede <flash_write_byte+0x62>
     ee8:	20000270 	.word	0x20000270

00000eec <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     eec:	2a00      	cmp	r2, #0
     eee:	dd13      	ble.n	f18 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     ef0:	b410      	push	{r4}
     ef2:	4603      	mov	r3, r0
     ef4:	3901      	subs	r1, #1
     ef6:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     ef8:	4a08      	ldr	r2, [pc, #32]	; (f1c <flash_read_block+0x30>)
     efa:	7854      	ldrb	r4, [r2, #1]
     efc:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     f00:	bf03      	ittte	eq
     f02:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     f06:	18a4      	addeq	r4, r4, r2
     f08:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     f0a:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     f0c:	f801 4f01 	strb.w	r4, [r1, #1]!
     f10:	3301      	adds	r3, #1
     f12:	4283      	cmp	r3, r0
     f14:	d1f1      	bne.n	efa <flash_read_block+0xe>
}
     f16:	bc10      	pop	{r4}
     f18:	4770      	bx	lr
     f1a:	bf00      	nop
     f1c:	20000270 	.word	0x20000270

00000f20 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
     f20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<ffa) return 0;
     f22:	4b11      	ldr	r3, [pc, #68]	; (f68 <flash_write_block+0x48>)
     f24:	681b      	ldr	r3, [r3, #0]
     f26:	4298      	cmp	r0, r3
     f28:	d202      	bcs.n	f30 <flash_write_block+0x10>
     f2a:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
     f2c:	4618      	mov	r0, r3
     f2e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     f30:	4604      	mov	r4, r0
     f32:	460e      	mov	r6, r1
     f34:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
     f36:	f7ff fec1 	bl	cbc <flash_enable>
     f3a:	4603      	mov	r3, r0
     f3c:	2800      	cmp	r0, #0
     f3e:	d0f5      	beq.n	f2c <flash_write_block+0xc>
	for (i=0;i<size;i++){
     f40:	2f00      	cmp	r7, #0
     f42:	dd0c      	ble.n	f5e <flash_write_block+0x3e>
     f44:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
     f46:	1c65      	adds	r5, r4, #1
     f48:	f816 1b01 	ldrb.w	r1, [r6], #1
     f4c:	4620      	mov	r0, r4
     f4e:	f7ff ff95 	bl	e7c <flash_write_byte>
     f52:	4603      	mov	r3, r0
     f54:	2800      	cmp	r0, #0
     f56:	d0e9      	beq.n	f2c <flash_write_block+0xc>
     f58:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
     f5a:	42bd      	cmp	r5, r7
     f5c:	d1f3      	bne.n	f46 <flash_write_block+0x26>
	flash_disable();
     f5e:	f7ff ff7d 	bl	e5c <flash_disable>
	return 1;
     f62:	2301      	movs	r3, #1
     f64:	e7e2      	b.n	f2c <flash_write_block+0xc>
     f66:	bf00      	nop
     f68:	00004000 	.word	0x00004000

00000f6c <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
     f6c:	4b0a      	ldr	r3, [pc, #40]	; (f98 <btn_mask+0x2c>)
     f6e:	781b      	ldrb	r3, [r3, #0]
     f70:	4283      	cmp	r3, r0
     f72:	d00a      	beq.n	f8a <btn_mask+0x1e>
     f74:	4a09      	ldr	r2, [pc, #36]	; (f9c <btn_mask+0x30>)
    for (i=0;i<8;i++){
     f76:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
     f78:	f812 1b01 	ldrb.w	r1, [r2], #1
     f7c:	4281      	cmp	r1, r0
     f7e:	d005      	beq.n	f8c <btn_mask+0x20>
    for (i=0;i<8;i++){
     f80:	3301      	adds	r3, #1
     f82:	2b08      	cmp	r3, #8
     f84:	d1f8      	bne.n	f78 <btn_mask+0xc>
    }
    return 255;
     f86:	20ff      	movs	r0, #255	; 0xff
}
     f88:	4770      	bx	lr
    for (i=0;i<8;i++){
     f8a:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
     f8c:	2001      	movs	r0, #1
     f8e:	fa00 f303 	lsl.w	r3, r0, r3
     f92:	b2d8      	uxtb	r0, r3
     f94:	4770      	bx	lr
     f96:	bf00      	nop
     f98:	20000674 	.word	0x20000674
     f9c:	20000675 	.word	0x20000675

00000fa0 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
     fa0:	b430      	push	{r4, r5}
     fa2:	4605      	mov	r5, r0
     fa4:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
     fa6:	2000      	movs	r0, #0
     fa8:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     faa:	4b1b      	ldr	r3, [pc, #108]	; (1018 <shift_out+0x78>)
     fac:	e003      	b.n	fb6 <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
     fae:	0052      	lsls	r2, r2, #1
     fb0:	b2d2      	uxtb	r2, r2
    while (mask){
     fb2:	3c01      	subs	r4, #1
     fb4:	d01d      	beq.n	ff2 <shift_out+0x52>
        if (byte&mask){
     fb6:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     fb8:	68d9      	ldr	r1, [r3, #12]
     fba:	bf14      	ite	ne
     fbc:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     fc0:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
     fc4:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     fc6:	68d9      	ldr	r1, [r3, #12]
     fc8:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
     fcc:	60d9      	str	r1, [r3, #12]
        _clk_delay();
     fce:	bf00      	nop
     fd0:	bf00      	nop
     fd2:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     fd4:	68d9      	ldr	r1, [r3, #12]
     fd6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
     fda:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
     fdc:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
     fde:	6899      	ldr	r1, [r3, #8]
     fe0:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
     fe4:	6099      	str	r1, [r3, #8]
     fe6:	2900      	cmp	r1, #0
     fe8:	d0e1      	beq.n	fae <shift_out+0xe>
     fea:	f060 007f 	orn	r0, r0, #127	; 0x7f
     fee:	b2c0      	uxtb	r0, r0
     ff0:	e7dd      	b.n	fae <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     ff2:	4b09      	ldr	r3, [pc, #36]	; (1018 <shift_out+0x78>)
     ff4:	68da      	ldr	r2, [r3, #12]
     ff6:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
     ffa:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     ffc:	68da      	ldr	r2, [r3, #12]
     ffe:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    1002:	60da      	str	r2, [r3, #12]
    _clk_delay();
    1004:	bf00      	nop
    1006:	bf00      	nop
    1008:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    100a:	68da      	ldr	r2, [r3, #12]
    100c:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    1010:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    1012:	bc30      	pop	{r4, r5}
    1014:	4770      	bx	lr
    1016:	bf00      	nop
    1018:	40010c00 	.word	0x40010c00

0000101c <set_keymap>:
void set_keymap(const uint8_t *kmap){
    101c:	1e43      	subs	r3, r0, #1
    101e:	4a04      	ldr	r2, [pc, #16]	; (1030 <set_keymap+0x14>)
    1020:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    1022:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    1026:	f802 1f01 	strb.w	r1, [r2, #1]!
    102a:	4283      	cmp	r3, r0
    102c:	d1f9      	bne.n	1022 <set_keymap+0x6>
}
    102e:	4770      	bx	lr
    1030:	20000673 	.word	0x20000673

00001034 <gamepad_init>:
void gamepad_init(){
    1034:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    1036:	4c0b      	ldr	r4, [pc, #44]	; (1064 <gamepad_init+0x30>)
    1038:	2202      	movs	r2, #2
    103a:	210f      	movs	r1, #15
    103c:	4620      	mov	r0, r4
    103e:	f000 fa1b 	bl	1478 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    1042:	2202      	movs	r2, #2
    1044:	210d      	movs	r1, #13
    1046:	4620      	mov	r0, r4
    1048:	f000 fa16 	bl	1478 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    104c:	2208      	movs	r2, #8
    104e:	210e      	movs	r1, #14
    1050:	4620      	mov	r0, r4
    1052:	f000 fa11 	bl	1478 <config_pin>
    btn_state=0xff;
    1056:	22ff      	movs	r2, #255	; 0xff
    1058:	4b03      	ldr	r3, [pc, #12]	; (1068 <gamepad_init+0x34>)
    105a:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    105c:	4803      	ldr	r0, [pc, #12]	; (106c <gamepad_init+0x38>)
    105e:	f7ff ffdd 	bl	101c <set_keymap>
    1062:	bd10      	pop	{r4, pc}
    1064:	40010c00 	.word	0x40010c00
    1068:	200026a0 	.word	0x200026a0
    106c:	00003b5c 	.word	0x00003b5c

00001070 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1070:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    1072:	20fe      	movs	r0, #254	; 0xfe
    1074:	f7ff ff94 	bl	fa0 <shift_out>
    1078:	4b0c      	ldr	r3, [pc, #48]	; (10ac <read_gamepad+0x3c>)
    107a:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    107c:	781b      	ldrb	r3, [r3, #0]
    107e:	f013 0f12 	tst.w	r3, #18
    1082:	d111      	bne.n	10a8 <read_gamepad+0x38>
        while (btn_state!=0xff){
    1084:	4b09      	ldr	r3, [pc, #36]	; (10ac <read_gamepad+0x3c>)
    1086:	781b      	ldrb	r3, [r3, #0]
    1088:	b2db      	uxtb	r3, r3
    108a:	2bff      	cmp	r3, #255	; 0xff
    108c:	d009      	beq.n	10a2 <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    108e:	25fe      	movs	r5, #254	; 0xfe
    1090:	4c06      	ldr	r4, [pc, #24]	; (10ac <read_gamepad+0x3c>)
    1092:	4628      	mov	r0, r5
    1094:	f7ff ff84 	bl	fa0 <shift_out>
    1098:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    109a:	7823      	ldrb	r3, [r4, #0]
    109c:	b2db      	uxtb	r3, r3
    109e:	2bff      	cmp	r3, #255	; 0xff
    10a0:	d1f7      	bne.n	1092 <read_gamepad+0x22>
        };
        _reset_mcu();
    10a2:	4a03      	ldr	r2, [pc, #12]	; (10b0 <read_gamepad+0x40>)
    10a4:	4b03      	ldr	r3, [pc, #12]	; (10b4 <read_gamepad+0x44>)
    10a6:	601a      	str	r2, [r3, #0]
    10a8:	bd38      	pop	{r3, r4, r5, pc}
    10aa:	bf00      	nop
    10ac:	200026a0 	.word	0x200026a0
    10b0:	05fa0004 	.word	0x05fa0004
    10b4:	e000ed0c 	.word	0xe000ed0c

000010b8 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    10b8:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    10ba:	f7ff ff57 	bl	f6c <btn_mask>
    return !(btn_state&mask);
    10be:	4b03      	ldr	r3, [pc, #12]	; (10cc <btn_query_down+0x14>)
    10c0:	781b      	ldrb	r3, [r3, #0]
    10c2:	4203      	tst	r3, r0
}
    10c4:	bf0c      	ite	eq
    10c6:	2001      	moveq	r0, #1
    10c8:	2000      	movne	r0, #0
    10ca:	bd08      	pop	{r3, pc}
    10cc:	200026a0 	.word	0x200026a0

000010d0 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    10d0:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    10d2:	f7ff ff4b 	bl	f6c <btn_mask>
    10d6:	4606      	mov	r6, r0
    int frame_count=0;
    10d8:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    10da:	4d06      	ldr	r5, [pc, #24]	; (10f4 <btn_wait_down+0x24>)
    10dc:	e000      	b.n	10e0 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    10de:	2400      	movs	r4, #0
        frame_sync();
    10e0:	f002 f92e 	bl	3340 <frame_sync>
        if (!(btn_state&mask)){
    10e4:	782b      	ldrb	r3, [r5, #0]
    10e6:	4233      	tst	r3, r6
    10e8:	d1f9      	bne.n	10de <btn_wait_down+0xe>
            frame_count++;
    10ea:	3401      	adds	r4, #1
    while (frame_count<3){
    10ec:	2c02      	cmp	r4, #2
    10ee:	ddf7      	ble.n	10e0 <btn_wait_down+0x10>
        }
    }
}
    10f0:	bd70      	pop	{r4, r5, r6, pc}
    10f2:	bf00      	nop
    10f4:	200026a0 	.word	0x200026a0

000010f8 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    10f8:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    10fa:	f7ff ff37 	bl	f6c <btn_mask>
    10fe:	4606      	mov	r6, r0
    int frame_count=0;
    1100:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    1102:	4d06      	ldr	r5, [pc, #24]	; (111c <btn_wait_up+0x24>)
    1104:	e000      	b.n	1108 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    1106:	2400      	movs	r4, #0
        frame_sync();
    1108:	f002 f91a 	bl	3340 <frame_sync>
        if ((btn_state&mask)){
    110c:	782b      	ldrb	r3, [r5, #0]
    110e:	4233      	tst	r3, r6
    1110:	d0f9      	beq.n	1106 <btn_wait_up+0xe>
            frame_count++;
    1112:	3401      	adds	r4, #1
    while (frame_count<3){
    1114:	2c02      	cmp	r4, #2
    1116:	ddf7      	ble.n	1108 <btn_wait_up+0x10>
        }
    }
}
    1118:	bd70      	pop	{r4, r5, r6, pc}
    111a:	bf00      	nop
    111c:	200026a0 	.word	0x200026a0

00001120 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1120:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    1122:	4b15      	ldr	r3, [pc, #84]	; (1178 <btn_wait_any+0x58>)
    1124:	781c      	ldrb	r4, [r3, #0]
    1126:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1128:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    112a:	461d      	mov	r5, r3
    112c:	e007      	b.n	113e <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    112e:	782a      	ldrb	r2, [r5, #0]
    1130:	b2d2      	uxtb	r2, r2
    1132:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1134:	bf18      	it	ne
    1136:	3601      	addne	r6, #1
    while (frame_count<3){
    1138:	2e02      	cmp	r6, #2
    113a:	dc0a      	bgt.n	1152 <btn_wait_any+0x32>
    113c:	461c      	mov	r4, r3
        frame_sync();
    113e:	f002 f8ff 	bl	3340 <frame_sync>
        if (last_state!=btn_state){
    1142:	782b      	ldrb	r3, [r5, #0]
    1144:	b2db      	uxtb	r3, r3
    1146:	42a3      	cmp	r3, r4
    1148:	d0f1      	beq.n	112e <btn_wait_any+0xe>
            last_state=btn_state;
    114a:	782c      	ldrb	r4, [r5, #0]
    114c:	b2e4      	uxtb	r4, r4
            frame_count=0;
    114e:	2600      	movs	r6, #0
    1150:	e7f5      	b.n	113e <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    1152:	43e3      	mvns	r3, r4
    mask>>=1;
    1154:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1158:	b15b      	cbz	r3, 1172 <btn_wait_any+0x52>
    115a:	2200      	movs	r2, #0
    115c:	3201      	adds	r2, #1
    115e:	b2d2      	uxtb	r2, r2
    1160:	085b      	lsrs	r3, r3, #1
    1162:	d1fb      	bne.n	115c <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1164:	4b05      	ldr	r3, [pc, #20]	; (117c <btn_wait_any+0x5c>)
    1166:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1168:	4620      	mov	r0, r4
    116a:	f7ff ffc5 	bl	10f8 <btn_wait_up>
    return btn;
}
    116e:	4620      	mov	r0, r4
    1170:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    1172:	461a      	mov	r2, r3
    1174:	e7f6      	b.n	1164 <btn_wait_any+0x44>
    1176:	bf00      	nop
    1178:	200026a0 	.word	0x200026a0
    117c:	20000674 	.word	0x20000674

00001180 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1180:	4b01      	ldr	r3, [pc, #4]	; (1188 <btn_set_value+0x8>)
    1182:	5419      	strb	r1, [r3, r0]
    1184:	4770      	bx	lr
    1186:	bf00      	nop
    1188:	20000674 	.word	0x20000674

0000118c <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    118c:	4800      	ldr	r0, [pc, #0]	; (1190 <get_keymap+0x4>)
    118e:	4770      	bx	lr
    1190:	20000674 	.word	0x20000674

00001194 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    1194:	4b06      	ldr	r3, [pc, #24]	; (11b0 <games_count+0x1c>)
    1196:	691b      	ldr	r3, [r3, #16]
    1198:	b13b      	cbz	r3, 11aa <games_count+0x16>
    119a:	4b05      	ldr	r3, [pc, #20]	; (11b0 <games_count+0x1c>)
    119c:	2000      	movs	r0, #0
    for (i=0;;i++){
    119e:	3001      	adds	r0, #1
    11a0:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    11a2:	691a      	ldr	r2, [r3, #16]
    11a4:	2a00      	cmp	r2, #0
    11a6:	d1fa      	bne.n	119e <games_count+0xa>
    11a8:	4770      	bx	lr
    for (i=0;;i++){
    11aa:	2000      	movs	r0, #0
    }
    return i;
}
    11ac:	4770      	bx	lr
    11ae:	bf00      	nop
    11b0:	20000004 	.word	0x20000004

000011b4 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    11b4:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    11b6:	7803      	ldrb	r3, [r0, #0]
    11b8:	b1fb      	cbz	r3, 11fa <strcmp+0x46>
    11ba:	780a      	ldrb	r2, [r1, #0]
    11bc:	b17a      	cbz	r2, 11de <strcmp+0x2a>
		if (*s1<*s2){
    11be:	4293      	cmp	r3, r2
    11c0:	d313      	bcc.n	11ea <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    11c2:	d815      	bhi.n	11f0 <strcmp+0x3c>
    11c4:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    11c6:	4621      	mov	r1, r4
	while (*s1 && *s2){
    11c8:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    11cc:	b1ab      	cbz	r3, 11fa <strcmp+0x46>
    11ce:	f814 2b01 	ldrb.w	r2, [r4], #1
    11d2:	b122      	cbz	r2, 11de <strcmp+0x2a>
		if (*s1<*s2){
    11d4:	4293      	cmp	r3, r2
    11d6:	d30d      	bcc.n	11f4 <strcmp+0x40>
		}else if (*s1>*s2){
    11d8:	d9f5      	bls.n	11c6 <strcmp+0x12>
			result=1;
    11da:	2001      	movs	r0, #1
    11dc:	e003      	b.n	11e6 <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    11de:	7808      	ldrb	r0, [r1, #0]
    11e0:	fab0 f080 	clz	r0, r0
    11e4:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    11e6:	bc10      	pop	{r4}
    11e8:	4770      	bx	lr
			result=-1;
    11ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    11ee:	e7fa      	b.n	11e6 <strcmp+0x32>
			result=1;
    11f0:	2001      	movs	r0, #1
    11f2:	e7f8      	b.n	11e6 <strcmp+0x32>
			result=-1;
    11f4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    11f8:	e7f5      	b.n	11e6 <strcmp+0x32>
		if (!*s1 && *s2){
    11fa:	7808      	ldrb	r0, [r1, #0]
    11fc:	3000      	adds	r0, #0
    11fe:	bf18      	it	ne
    1200:	2001      	movne	r0, #1
    1202:	4240      	negs	r0, r0
    1204:	e7ef      	b.n	11e6 <strcmp+0x32>

00001206 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1206:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    120a:	b2db      	uxtb	r3, r3
    120c:	2b19      	cmp	r3, #25
    120e:	d906      	bls.n	121e <alpha+0x18>
    1210:	3841      	subs	r0, #65	; 0x41
    1212:	b2c0      	uxtb	r0, r0
    1214:	2819      	cmp	r0, #25
    1216:	bf8c      	ite	hi
    1218:	2000      	movhi	r0, #0
    121a:	2001      	movls	r0, #1
    121c:	4770      	bx	lr
    121e:	2001      	movs	r0, #1
}
    1220:	4770      	bx	lr

00001222 <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    1222:	3830      	subs	r0, #48	; 0x30
    1224:	b2c0      	uxtb	r0, r0
}
    1226:	2809      	cmp	r0, #9
    1228:	bf8c      	ite	hi
    122a:	2000      	movhi	r0, #0
    122c:	2001      	movls	r0, #1
    122e:	4770      	bx	lr

00001230 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1230:	2860      	cmp	r0, #96	; 0x60
    1232:	bf84      	itt	hi
    1234:	3820      	subhi	r0, #32
    1236:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1238:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    123c:	b2db      	uxtb	r3, r3
    123e:	2b09      	cmp	r3, #9
    1240:	d906      	bls.n	1250 <hexdigit+0x20>
    1242:	3841      	subs	r0, #65	; 0x41
    1244:	b2c0      	uxtb	r0, r0
    1246:	2805      	cmp	r0, #5
    1248:	bf8c      	ite	hi
    124a:	2000      	movhi	r0, #0
    124c:	2001      	movls	r0, #1
    124e:	4770      	bx	lr
    1250:	2001      	movs	r0, #1
}
    1252:	4770      	bx	lr

00001254 <atoi>:

int atoi(const char *str){
    1254:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1258:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    125a:	7803      	ldrb	r3, [r0, #0]
    125c:	2b20      	cmp	r3, #32
    125e:	d103      	bne.n	1268 <atoi+0x14>
    1260:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1264:	2b20      	cmp	r3, #32
    1266:	d0fb      	beq.n	1260 <atoi+0xc>
	if (*str=='-'){
    1268:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    126a:	bf06      	itte	eq
    126c:	3501      	addeq	r5, #1
		sign=-1;
    126e:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    1272:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    1276:	782b      	ldrb	r3, [r5, #0]
    1278:	2b24      	cmp	r3, #36	; 0x24
    127a:	d005      	beq.n	1288 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    127c:	2b30      	cmp	r3, #48	; 0x30
    127e:	d00a      	beq.n	1296 <atoi+0x42>
	int n=0,sign=1,base=10;
    1280:	270a      	movs	r7, #10
    1282:	3d01      	subs	r5, #1
    1284:	2600      	movs	r6, #0
    1286:	e026      	b.n	12d6 <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    1288:	7868      	ldrb	r0, [r5, #1]
    128a:	f7ff ffd1 	bl	1230 <hexdigit>
    128e:	b160      	cbz	r0, 12aa <atoi+0x56>
		str++;
    1290:	3501      	adds	r5, #1
		base=16;
    1292:	2710      	movs	r7, #16
		str++;
    1294:	e7f5      	b.n	1282 <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1296:	786b      	ldrb	r3, [r5, #1]
    1298:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    129c:	2b58      	cmp	r3, #88	; 0x58
    129e:	d001      	beq.n	12a4 <atoi+0x50>
	int n=0,sign=1,base=10;
    12a0:	270a      	movs	r7, #10
    12a2:	e7ee      	b.n	1282 <atoi+0x2e>
		base=16;
		str+=2;
    12a4:	3502      	adds	r5, #2
		base=16;
    12a6:	2710      	movs	r7, #16
    12a8:	e7eb      	b.n	1282 <atoi+0x2e>
	int n=0,sign=1,base=10;
    12aa:	270a      	movs	r7, #10
    12ac:	e7e9      	b.n	1282 <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12ae:	4620      	mov	r0, r4
    12b0:	f7ff ffbe 	bl	1230 <hexdigit>
    12b4:	3000      	adds	r0, #0
    12b6:	bf18      	it	ne
    12b8:	2001      	movne	r0, #1
    12ba:	b1d0      	cbz	r0, 12f2 <atoi+0x9e>
		if (c>='a'){c-=32;}
    12bc:	2c60      	cmp	r4, #96	; 0x60
    12be:	bf84      	itt	hi
    12c0:	3c20      	subhi	r4, #32
    12c2:	b2e4      	uxtbhi	r4, r4
		c-='0';
    12c4:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    12c8:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    12ca:	2b09      	cmp	r3, #9
    12cc:	bf84      	itt	hi
    12ce:	3c37      	subhi	r4, #55	; 0x37
    12d0:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    12d2:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12d6:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    12da:	2c00      	cmp	r4, #0
    12dc:	d0e7      	beq.n	12ae <atoi+0x5a>
    12de:	2f0a      	cmp	r7, #10
    12e0:	d1e5      	bne.n	12ae <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    12e2:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    12e6:	b2c0      	uxtb	r0, r0
    12e8:	2809      	cmp	r0, #9
    12ea:	bf8c      	ite	hi
    12ec:	2000      	movhi	r0, #0
    12ee:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12f0:	e7e3      	b.n	12ba <atoi+0x66>
		str++;
	}
	return sign*n;
}
    12f2:	fb08 f006 	mul.w	r0, r8, r6
    12f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000012fa <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    12fa:	b13a      	cbz	r2, 130c <move+0x12>
    12fc:	3901      	subs	r1, #1
    12fe:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1300:	f810 3b01 	ldrb.w	r3, [r0], #1
    1304:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1308:	4290      	cmp	r0, r2
    130a:	d1f9      	bne.n	1300 <move+0x6>
    130c:	4770      	bx	lr

0000130e <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    130e:	7803      	ldrb	r3, [r0, #0]
    1310:	b13b      	cbz	r3, 1322 <strlen+0x14>
    1312:	4603      	mov	r3, r0
    1314:	2000      	movs	r0, #0
    1316:	3001      	adds	r0, #1
    1318:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    131c:	2a00      	cmp	r2, #0
    131e:	d1fa      	bne.n	1316 <strlen+0x8>
    1320:	4770      	bx	lr
	int ll=0;
    1322:	2000      	movs	r0, #0
	return ll;
}
    1324:	4770      	bx	lr

00001326 <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1326:	b121      	cbz	r1, 1332 <fill+0xc>
    1328:	1841      	adds	r1, r0, r1
    132a:	f800 2b01 	strb.w	r2, [r0], #1
    132e:	4288      	cmp	r0, r1
    1330:	d1fb      	bne.n	132a <fill+0x4>
    1332:	4770      	bx	lr

00001334 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1334:	3861      	subs	r0, #97	; 0x61
    1336:	b2c0      	uxtb	r0, r0
}
    1338:	2819      	cmp	r0, #25
    133a:	bf8c      	ite	hi
    133c:	2000      	movhi	r0, #0
    133e:	2001      	movls	r0, #1
    1340:	4770      	bx	lr

00001342 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    1342:	3841      	subs	r0, #65	; 0x41
    1344:	b2c0      	uxtb	r0, r0
}
    1346:	2819      	cmp	r0, #25
    1348:	bf8c      	ite	hi
    134a:	2000      	movhi	r0, #0
    134c:	2001      	movls	r0, #1
    134e:	4770      	bx	lr

00001350 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1350:	7803      	ldrb	r3, [r0, #0]
    1352:	b153      	cbz	r3, 136a <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1354:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1358:	b2d2      	uxtb	r2, r2
    135a:	2a19      	cmp	r2, #25
    135c:	bf9c      	itt	ls
    135e:	3b20      	subls	r3, #32
    1360:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    1362:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    1366:	2b00      	cmp	r3, #0
    1368:	d1f4      	bne.n	1354 <uppercase+0x4>
    136a:	4770      	bx	lr

0000136c <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    136c:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    136e:	1844      	adds	r4, r0, r1
    1370:	5c43      	ldrb	r3, [r0, r1]
    1372:	b153      	cbz	r3, 138a <scan+0x1e>
    1374:	429a      	cmp	r2, r3
    1376:	d00a      	beq.n	138e <scan+0x22>
    1378:	4608      	mov	r0, r1
    137a:	3001      	adds	r0, #1
    137c:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    1380:	b10b      	cbz	r3, 1386 <scan+0x1a>
    1382:	4293      	cmp	r3, r2
    1384:	d1f9      	bne.n	137a <scan+0xe>
	return start;
}
    1386:	bc10      	pop	{r4}
    1388:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    138a:	4608      	mov	r0, r1
    138c:	e7fb      	b.n	1386 <scan+0x1a>
    138e:	4608      	mov	r0, r1
	return start;
    1390:	e7f9      	b.n	1386 <scan+0x1a>

00001392 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    1392:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    1394:	1844      	adds	r4, r0, r1
    1396:	5c43      	ldrb	r3, [r0, r1]
    1398:	b153      	cbz	r3, 13b0 <skip+0x1e>
    139a:	429a      	cmp	r2, r3
    139c:	d10a      	bne.n	13b4 <skip+0x22>
    139e:	4608      	mov	r0, r1
    13a0:	3001      	adds	r0, #1
    13a2:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    13a6:	b10b      	cbz	r3, 13ac <skip+0x1a>
    13a8:	4293      	cmp	r3, r2
    13aa:	d0f9      	beq.n	13a0 <skip+0xe>
	return start;
}
    13ac:	bc10      	pop	{r4}
    13ae:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    13b0:	4608      	mov	r0, r1
    13b2:	e7fb      	b.n	13ac <skip+0x1a>
    13b4:	4608      	mov	r0, r1
	return start;
    13b6:	e7f9      	b.n	13ac <skip+0x1a>

000013b8 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    13b8:	b538      	push	{r3, r4, r5, lr}
    13ba:	4604      	mov	r4, r0
    13bc:	460d      	mov	r5, r1
	s1+=strlen(s1);
    13be:	f7ff ffa6 	bl	130e <strlen>
    13c2:	4420      	add	r0, r4
	while (*s2){
    13c4:	782b      	ldrb	r3, [r5, #0]
    13c6:	b133      	cbz	r3, 13d6 <strcat+0x1e>
    13c8:	4629      	mov	r1, r5
		*s1++=*s2++;
    13ca:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    13ce:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    13d2:	2b00      	cmp	r3, #0
    13d4:	d1f9      	bne.n	13ca <strcat+0x12>
	}
	*s1=0;
    13d6:	2300      	movs	r3, #0
    13d8:	7003      	strb	r3, [r0, #0]
	return s1;
}
    13da:	bd38      	pop	{r3, r4, r5, pc}

000013dc <itoa>:

char *itoa(int n,char *buffer,int base){
    13dc:	b5f0      	push	{r4, r5, r6, r7, lr}
    13de:	b085      	sub	sp, #20
    13e0:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    13e2:	2a0a      	cmp	r2, #10
    13e4:	d033      	beq.n	144e <itoa+0x72>
	int i=14,sign=0;
    13e6:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    13e8:	2300      	movs	r3, #0
    13ea:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    13ee:	2320      	movs	r3, #32
    13f0:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    13f4:	b390      	cbz	r0, 145c <itoa+0x80>
    13f6:	f10d 060d 	add.w	r6, sp, #13
    13fa:	250e      	movs	r5, #14
		d=n%base+'0';
    13fc:	fb90 f3f2 	sdiv	r3, r0, r2
    1400:	fb02 0313 	mls	r3, r2, r3, r0
    1404:	b2db      	uxtb	r3, r3
    1406:	f103 0130 	add.w	r1, r3, #48	; 0x30
    140a:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    140c:	2939      	cmp	r1, #57	; 0x39
    140e:	bf84      	itt	hi
    1410:	3337      	addhi	r3, #55	; 0x37
    1412:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1414:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1418:	3d01      	subs	r5, #1
    141a:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    141e:	2800      	cmp	r0, #0
    1420:	d1ec      	bne.n	13fc <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    1422:	2d0e      	cmp	r5, #14
    1424:	d01a      	beq.n	145c <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    1426:	2a0a      	cmp	r2, #10
    1428:	d01d      	beq.n	1466 <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    142a:	2a10      	cmp	r2, #16
    142c:	d105      	bne.n	143a <itoa+0x5e>
    142e:	3d01      	subs	r5, #1
    1430:	ab04      	add	r3, sp, #16
    1432:	442b      	add	r3, r5
    1434:	2224      	movs	r2, #36	; 0x24
    1436:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    143a:	f1c5 0210 	rsb	r2, r5, #16
    143e:	4621      	mov	r1, r4
    1440:	eb0d 0005 	add.w	r0, sp, r5
    1444:	f7ff ff59 	bl	12fa <move>
	return buffer;
    1448:	4620      	mov	r0, r4
    144a:	b005      	add	sp, #20
    144c:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    144e:	2800      	cmp	r0, #0
    1450:	db01      	blt.n	1456 <itoa+0x7a>
	int i=14,sign=0;
    1452:	2700      	movs	r7, #0
    1454:	e7c8      	b.n	13e8 <itoa+0xc>
		n=-n;
    1456:	4240      	negs	r0, r0
		sign=1;
    1458:	2701      	movs	r7, #1
    145a:	e7c5      	b.n	13e8 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    145c:	2330      	movs	r3, #48	; 0x30
    145e:	f88d 300d 	strb.w	r3, [sp, #13]
    1462:	250d      	movs	r5, #13
    1464:	e7df      	b.n	1426 <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    1466:	2f00      	cmp	r7, #0
    1468:	d0e7      	beq.n	143a <itoa+0x5e>
    146a:	3d01      	subs	r5, #1
    146c:	ab04      	add	r3, sp, #16
    146e:	442b      	add	r3, r5
    1470:	222d      	movs	r2, #45	; 0x2d
    1472:	f803 2c10 	strb.w	r2, [r3, #-16]
    1476:	e7e0      	b.n	143a <itoa+0x5e>

00001478 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    1478:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    147a:	08cb      	lsrs	r3, r1, #3
    147c:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    1480:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    1482:	f001 011c 	and.w	r1, r1, #28
    1486:	250f      	movs	r5, #15
    1488:	408d      	lsls	r5, r1
    148a:	ea24 0405 	bic.w	r4, r4, r5
    148e:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    1492:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    1496:	fa02 f101 	lsl.w	r1, r2, r1
    149a:	4321      	orrs	r1, r4
    149c:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    14a0:	bc30      	pop	{r4, r5}
    14a2:	4770      	bx	lr

000014a4 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    14a4:	6880      	ldr	r0, [r0, #8]
    14a6:	2301      	movs	r3, #1
    14a8:	fa03 f101 	lsl.w	r1, r3, r1
}
    14ac:	4008      	ands	r0, r1
    14ae:	4770      	bx	lr

000014b0 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    14b0:	b93a      	cbnz	r2, 14c2 <write_pin+0x12>
    14b2:	68c3      	ldr	r3, [r0, #12]
    14b4:	2201      	movs	r2, #1
    14b6:	fa02 f101 	lsl.w	r1, r2, r1
    14ba:	ea23 0101 	bic.w	r1, r3, r1
    14be:	60c1      	str	r1, [r0, #12]
    14c0:	4770      	bx	lr
    14c2:	68c2      	ldr	r2, [r0, #12]
    14c4:	2301      	movs	r3, #1
    14c6:	fa03 f101 	lsl.w	r1, r3, r1
    14ca:	4311      	orrs	r1, r2
    14cc:	60c1      	str	r1, [r0, #12]
    14ce:	4770      	bx	lr

000014d0 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    14d0:	68c2      	ldr	r2, [r0, #12]
    14d2:	2301      	movs	r3, #1
    14d4:	fa03 f101 	lsl.w	r1, r3, r1
    14d8:	4051      	eors	r1, r2
    14da:	60c1      	str	r1, [r0, #12]
    14dc:	4770      	bx	lr
	...

000014e0 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    14e0:	4b04      	ldr	r3, [pc, #16]	; (14f4 <set_palette+0x14>)
    14e2:	7802      	ldrb	r2, [r0, #0]
    14e4:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    14e6:	7842      	ldrb	r2, [r0, #1]
    14e8:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    14ea:	7882      	ldrb	r2, [r0, #2]
    14ec:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    14ee:	78c2      	ldrb	r2, [r0, #3]
    14f0:	70da      	strb	r2, [r3, #3]
    14f2:	4770      	bx	lr
    14f4:	2000018c 	.word	0x2000018c

000014f8 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    14f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    14fa:	4604      	mov	r4, r0
    14fc:	460e      	mov	r6, r1
    14fe:	4615      	mov	r5, r2
    1500:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    1502:	f001 ff57 	bl	33b4 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1506:	2c00      	cmp	r4, #0
    1508:	db38      	blt.n	157c <gfx_blit+0x84>
    150a:	8983      	ldrh	r3, [r0, #12]
    150c:	429c      	cmp	r4, r3
    150e:	da37      	bge.n	1580 <gfx_blit+0x88>
    1510:	2e00      	cmp	r6, #0
    1512:	db37      	blt.n	1584 <gfx_blit+0x8c>
    1514:	89c3      	ldrh	r3, [r0, #14]
    1516:	429e      	cmp	r6, r3
    1518:	da36      	bge.n	1588 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    151a:	7a03      	ldrb	r3, [r0, #8]
    151c:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1520:	1052      	asrs	r2, r2, #1
    1522:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    1526:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    152a:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    152e:	bf06      	itte	eq
    1530:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    1532:	220f      	moveq	r2, #15
    mask=0xf0;
    1534:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    1536:	4b15      	ldr	r3, [pc, #84]	; (158c <gfx_blit+0x94>)
    1538:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    153a:	2f04      	cmp	r7, #4
    153c:	d805      	bhi.n	154a <gfx_blit+0x52>
    153e:	e8df f007 	tbb	[pc, r7]
    1542:	1003      	.short	0x1003
    1544:	1412      	.short	0x1412
    1546:	18          	.byte	0x18
    1547:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1548:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    154a:	4910      	ldr	r1, [pc, #64]	; (158c <gfx_blit+0x94>)
    154c:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    154e:	ea23 0302 	bic.w	r3, r3, r2
    1552:	fab0 f080 	clz	r0, r0
    1556:	0940      	lsrs	r0, r0, #5
    1558:	4283      	cmp	r3, r0
    155a:	bf14      	ite	ne
    155c:	2000      	movne	r0, #0
    155e:	2001      	moveq	r0, #1
    1560:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    1562:	4003      	ands	r3, r0
        break;
    1564:	e7f1      	b.n	154a <gfx_blit+0x52>
        byte^=color;
    1566:	4043      	eors	r3, r0
        break;
    1568:	e7ef      	b.n	154a <gfx_blit+0x52>
        byte^=~mask;
    156a:	43d4      	mvns	r4, r2
    156c:	405c      	eors	r4, r3
    156e:	b2e3      	uxtb	r3, r4
        break;
    1570:	e7eb      	b.n	154a <gfx_blit+0x52>
        byte &=mask;
    1572:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    1576:	ea40 0304 	orr.w	r3, r0, r4
        break;
    157a:	e7e6      	b.n	154a <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    157c:	2000      	movs	r0, #0
    157e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1580:	2000      	movs	r0, #0
    1582:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1584:	2000      	movs	r0, #0
    1586:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1588:	2000      	movs	r0, #0
}
    158a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    158c:	200026d0 	.word	0x200026d0

00001590 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    1590:	b570      	push	{r4, r5, r6, lr}
    1592:	4604      	mov	r4, r0
    1594:	460e      	mov	r6, r1
    1596:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1598:	f001 ff0c 	bl	33b4 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    159c:	2c00      	cmp	r4, #0
    159e:	db1d      	blt.n	15dc <gfx_plot+0x4c>
    15a0:	8983      	ldrh	r3, [r0, #12]
    15a2:	429c      	cmp	r4, r3
    15a4:	da1a      	bge.n	15dc <gfx_plot+0x4c>
    15a6:	2e00      	cmp	r6, #0
    15a8:	db18      	blt.n	15dc <gfx_plot+0x4c>
    15aa:	89c3      	ldrh	r3, [r0, #14]
    15ac:	429e      	cmp	r6, r3
    15ae:	da15      	bge.n	15dc <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    15b0:	7a03      	ldrb	r3, [r0, #8]
    15b2:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    15b6:	1052      	asrs	r2, r2, #1
    15b8:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    15bc:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    15c0:	4b07      	ldr	r3, [pc, #28]	; (15e0 <gfx_plot+0x50>)
    15c2:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    15c4:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    15c8:	bf19      	ittee	ne
    15ca:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    15ce:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    15d0:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    15d4:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    15d8:	4b01      	ldr	r3, [pc, #4]	; (15e0 <gfx_plot+0x50>)
    15da:	559d      	strb	r5, [r3, r6]
    15dc:	bd70      	pop	{r4, r5, r6, pc}
    15de:	bf00      	nop
    15e0:	200026d0 	.word	0x200026d0

000015e4 <gfx_cls>:
}

void gfx_cls(){
    15e4:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    15e6:	f001 fee5 	bl	33b4 <get_video_params>
    15ea:	4b06      	ldr	r3, [pc, #24]	; (1604 <gfx_cls+0x20>)
    15ec:	4906      	ldr	r1, [pc, #24]	; (1608 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    15ee:	2200      	movs	r2, #0
    15f0:	f803 2f01 	strb.w	r2, [r3, #1]!
    15f4:	428b      	cmp	r3, r1
    15f6:	d1fb      	bne.n	15f0 <gfx_cls+0xc>
    set_cursor(0,0);
    15f8:	2100      	movs	r1, #0
    15fa:	4608      	mov	r0, r1
    15fc:	f001 fb8a 	bl	2d14 <set_cursor>
    1600:	bd08      	pop	{r3, pc}
    1602:	bf00      	nop
    1604:	200026cf 	.word	0x200026cf
    1608:	20004e2f 	.word	0x20004e2f

0000160c <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    160c:	b570      	push	{r4, r5, r6, lr}
    160e:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1610:	f001 fed0 	bl	33b4 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    1614:	7a06      	ldrb	r6, [r0, #8]
    1616:	4b0f      	ldr	r3, [pc, #60]	; (1654 <gfx_scroll_up+0x48>)
    1618:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    161c:	89c2      	ldrh	r2, [r0, #14]
    161e:	1b12      	subs	r2, r2, r4
    1620:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    1624:	b1a6      	cbz	r6, 1650 <gfx_scroll_up+0x44>
    1626:	4a0b      	ldr	r2, [pc, #44]	; (1654 <gfx_scroll_up+0x48>)
    1628:	199d      	adds	r5, r3, r6
    162a:	f813 1b01 	ldrb.w	r1, [r3], #1
    162e:	f802 1b01 	strb.w	r1, [r2], #1
    1632:	42ab      	cmp	r3, r5
    1634:	d1f9      	bne.n	162a <gfx_scroll_up+0x1e>
    1636:	4b07      	ldr	r3, [pc, #28]	; (1654 <gfx_scroll_up+0x48>)
    1638:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    163a:	7a02      	ldrb	r2, [r0, #8]
    163c:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1640:	b12a      	cbz	r2, 164e <gfx_scroll_up+0x42>
    1642:	441a      	add	r2, r3
    1644:	2100      	movs	r1, #0
    1646:	f803 1b01 	strb.w	r1, [r3], #1
    164a:	4293      	cmp	r3, r2
    164c:	d1fb      	bne.n	1646 <gfx_scroll_up+0x3a>
    164e:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1650:	4b00      	ldr	r3, [pc, #0]	; (1654 <gfx_scroll_up+0x48>)
    1652:	e7f2      	b.n	163a <gfx_scroll_up+0x2e>
    1654:	200026d0 	.word	0x200026d0

00001658 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1658:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    165a:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    165c:	f001 feaa 	bl	33b4 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1660:	89c3      	ldrh	r3, [r0, #14]
    1662:	7a04      	ldrb	r4, [r0, #8]
    1664:	1b5f      	subs	r7, r3, r5
    1666:	fb04 f707 	mul.w	r7, r4, r7
    166a:	490c      	ldr	r1, [pc, #48]	; (169c <gfx_scroll_down+0x44>)
    166c:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    166e:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    1672:	b147      	cbz	r7, 1686 <gfx_scroll_down+0x2e>
    1674:	4619      	mov	r1, r3
    1676:	4e09      	ldr	r6, [pc, #36]	; (169c <gfx_scroll_down+0x44>)
    1678:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    167c:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1680:	42b2      	cmp	r2, r6
    1682:	d1f9      	bne.n	1678 <gfx_scroll_down+0x20>
    1684:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    1686:	7a02      	ldrb	r2, [r0, #8]
    1688:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    168c:	b12a      	cbz	r2, 169a <gfx_scroll_down+0x42>
    168e:	1a9a      	subs	r2, r3, r2
    1690:	2100      	movs	r1, #0
    1692:	f803 1d01 	strb.w	r1, [r3, #-1]!
    1696:	4293      	cmp	r3, r2
    1698:	d1fb      	bne.n	1692 <gfx_scroll_down+0x3a>
    169a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    169c:	200026d0 	.word	0x200026d0

000016a0 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    16a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    16a4:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    16a6:	f001 fe85 	bl	33b4 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    16aa:	89c3      	ldrh	r3, [r0, #14]
    16ac:	b30b      	cbz	r3, 16f2 <gfx_scroll_left+0x52>
    16ae:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    16b2:	f8df 8044 	ldr.w	r8, [pc, #68]	; 16f8 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    16b6:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    16b8:	7a03      	ldrb	r3, [r0, #8]
    16ba:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    16be:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    16c0:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    16c2:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    16c6:	d009      	beq.n	16dc <gfx_scroll_left+0x3c>
    16c8:	1e59      	subs	r1, r3, #1
    16ca:	eb02 050e 	add.w	r5, r2, lr
    16ce:	f812 4b01 	ldrb.w	r4, [r2], #1
    16d2:	f801 4f01 	strb.w	r4, [r1, #1]!
    16d6:	4295      	cmp	r5, r2
    16d8:	d1f9      	bne.n	16ce <gfx_scroll_left+0x2e>
    16da:	4473      	add	r3, lr
        while (size--) *dest++=0;
    16dc:	b126      	cbz	r6, 16e8 <gfx_scroll_left+0x48>
    16de:	199a      	adds	r2, r3, r6
    16e0:	f803 7b01 	strb.w	r7, [r3], #1
    16e4:	4293      	cmp	r3, r2
    16e6:	d1fb      	bne.n	16e0 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    16e8:	f10c 0c01 	add.w	ip, ip, #1
    16ec:	89c3      	ldrh	r3, [r0, #14]
    16ee:	4563      	cmp	r3, ip
    16f0:	dce2      	bgt.n	16b8 <gfx_scroll_left+0x18>
    16f2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    16f6:	bf00      	nop
    16f8:	200026d0 	.word	0x200026d0

000016fc <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    16fc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1700:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    1702:	f001 fe57 	bl	33b4 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    1706:	89c3      	ldrh	r3, [r0, #14]
    1708:	b33b      	cbz	r3, 175a <gfx_scroll_right+0x5e>
    170a:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    170e:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1760 <gfx_scroll_right+0x64>
        src=dest-n;
    1712:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    1716:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1718:	7a03      	ldrb	r3, [r0, #8]
    171a:	fb0e 3303 	mla	r3, lr, r3, r3
    171e:	4443      	add	r3, r8
        src=dest-n;
    1720:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    1724:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    1726:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    172a:	d00a      	beq.n	1742 <gfx_scroll_right+0x46>
    172c:	4619      	mov	r1, r3
    172e:	eba2 0609 	sub.w	r6, r2, r9
    1732:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1736:	f801 4d01 	strb.w	r4, [r1, #-1]!
    173a:	42b2      	cmp	r2, r6
    173c:	d1f9      	bne.n	1732 <gfx_scroll_right+0x36>
    173e:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    1742:	b12d      	cbz	r5, 1750 <gfx_scroll_right+0x54>
    1744:	eb03 020c 	add.w	r2, r3, ip
    1748:	f803 7d01 	strb.w	r7, [r3, #-1]!
    174c:	429a      	cmp	r2, r3
    174e:	d1fb      	bne.n	1748 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1750:	f10e 0e01 	add.w	lr, lr, #1
    1754:	89c3      	ldrh	r3, [r0, #14]
    1756:	4573      	cmp	r3, lr
    1758:	dcde      	bgt.n	1718 <gfx_scroll_right+0x1c>
    175a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    175e:	bf00      	nop
    1760:	200026d0 	.word	0x200026d0

00001764 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1764:	b538      	push	{r3, r4, r5, lr}
    1766:	4604      	mov	r4, r0
    1768:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    176a:	f001 fe23 	bl	33b4 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    176e:	2c00      	cmp	r4, #0
    1770:	db18      	blt.n	17a4 <gfx_get_pixel+0x40>
    1772:	8983      	ldrh	r3, [r0, #12]
    1774:	429c      	cmp	r4, r3
    1776:	db01      	blt.n	177c <gfx_get_pixel+0x18>
    1778:	20ff      	movs	r0, #255	; 0xff
    177a:	bd38      	pop	{r3, r4, r5, pc}
    177c:	2d00      	cmp	r5, #0
    177e:	db13      	blt.n	17a8 <gfx_get_pixel+0x44>
    1780:	89c3      	ldrh	r3, [r0, #14]
    1782:	429d      	cmp	r5, r3
    1784:	db01      	blt.n	178a <gfx_get_pixel+0x26>
    1786:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    1788:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    178a:	7a03      	ldrb	r3, [r0, #8]
    178c:	1062      	asrs	r2, r4, #1
    178e:	4907      	ldr	r1, [pc, #28]	; (17ac <gfx_get_pixel+0x48>)
    1790:	fb05 1503 	mla	r5, r5, r3, r1
    1794:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    1796:	f014 0f01 	tst.w	r4, #1
    179a:	bf08      	it	eq
    179c:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    179e:	f000 000f 	and.w	r0, r0, #15
    17a2:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    17a4:	20ff      	movs	r0, #255	; 0xff
    17a6:	bd38      	pop	{r3, r4, r5, pc}
    17a8:	20ff      	movs	r0, #255	; 0xff
    17aa:	bd38      	pop	{r3, r4, r5, pc}
    17ac:	200026d0 	.word	0x200026d0

000017b0 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int /* __attribute__((optimize("-O1")))*/ gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    17b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    17b4:	b085      	sub	sp, #20
    17b6:	9001      	str	r0, [sp, #4]
    17b8:	460e      	mov	r6, r1
    17ba:	9100      	str	r1, [sp, #0]
    17bc:	9203      	str	r2, [sp, #12]
    17be:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    17c0:	4a28      	ldr	r2, [pc, #160]	; (1864 <gfx_sprite+0xb4>)
    17c2:	7911      	ldrb	r1, [r2, #4]
    17c4:	4a28      	ldr	r2, [pc, #160]	; (1868 <gfx_sprite+0xb8>)
    17c6:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    17ca:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    17cc:	440a      	add	r2, r1
    17ce:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    17d0:	4433      	add	r3, r6
    17d2:	9302      	str	r3, [sp, #8]
    17d4:	429e      	cmp	r6, r3
    int collision=0;
    17d6:	bfa8      	it	ge
    17d8:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    17da:	da3a      	bge.n	1852 <gfx_sprite+0xa2>
    17dc:	f100 0901 	add.w	r9, r0, #1
    17e0:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    17e2:	f8df 8080 	ldr.w	r8, [pc, #128]	; 1864 <gfx_sprite+0xb4>
    17e6:	e02b      	b.n	1840 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    17e8:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    17ec:	f898 3004 	ldrb.w	r3, [r8, #4]
    17f0:	4a1d      	ldr	r2, [pc, #116]	; (1868 <gfx_sprite+0xb8>)
    17f2:	4413      	add	r3, r2
    17f4:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    17f6:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    17fa:	3601      	adds	r6, #1
    17fc:	4556      	cmp	r6, sl
    17fe:	d019      	beq.n	1834 <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    1800:	f898 3004 	ldrb.w	r3, [r8, #4]
    1804:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    1806:	bf99      	ittee	ls
    1808:	fa45 f30b 	asrls.w	r3, r5, fp
    180c:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    1810:	fa45 f20b 	asrhi.w	r2, r5, fp
    1814:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    1816:	2302      	movs	r3, #2
    1818:	9900      	ldr	r1, [sp, #0]
    181a:	4630      	mov	r0, r6
    181c:	f7ff fe6c 	bl	14f8 <gfx_blit>
    1820:	4307      	orrs	r7, r0
            ppb--;
    1822:	3c01      	subs	r4, #1
            if (!ppb){
    1824:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1828:	d0de      	beq.n	17e8 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    182a:	f1cb 0308 	rsb	r3, fp, #8
    182e:	409d      	lsls	r5, r3
    1830:	b2ed      	uxtb	r5, r5
    1832:	e7e2      	b.n	17fa <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    1834:	9b00      	ldr	r3, [sp, #0]
    1836:	3301      	adds	r3, #1
    1838:	9300      	str	r3, [sp, #0]
    183a:	9a02      	ldr	r2, [sp, #8]
    183c:	4293      	cmp	r3, r2
    183e:	d008      	beq.n	1852 <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    1840:	9b03      	ldr	r3, [sp, #12]
    1842:	4619      	mov	r1, r3
    1844:	9a01      	ldr	r2, [sp, #4]
    1846:	eb01 0a02 	add.w	sl, r1, r2
    184a:	4552      	cmp	r2, sl
    184c:	daf2      	bge.n	1834 <gfx_sprite+0x84>
    184e:	9e01      	ldr	r6, [sp, #4]
    1850:	e7d6      	b.n	1800 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    usart_putc(USART1,'\n');
    1852:	210a      	movs	r1, #10
    1854:	4805      	ldr	r0, [pc, #20]	; (186c <gfx_sprite+0xbc>)
    1856:	f001 ff05 	bl	3664 <usart_putc>
    return collision;
}
    185a:	4638      	mov	r0, r7
    185c:	b005      	add	sp, #20
    185e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1862:	bf00      	nop
    1864:	2000018c 	.word	0x2000018c
    1868:	00003b64 	.word	0x00003b64
    186c:	40013800 	.word	0x40013800

00001870 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    1870:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    1874:	f001 fd9e 	bl	33b4 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    1878:	89c3      	ldrh	r3, [r0, #14]
    187a:	089e      	lsrs	r6, r3, #2
    187c:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    1880:	429e      	cmp	r6, r3
    1882:	da18      	bge.n	18b6 <color_bars+0x46>
    1884:	4607      	mov	r7, r0
static void color_bars(){
    1886:	f04f 0810 	mov.w	r8, #16
    188a:	4645      	mov	r5, r8
    188c:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    188e:	f014 0f07 	tst.w	r4, #7
				c--;
    1892:	bf04      	itt	eq
    1894:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    1898:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    189a:	462a      	mov	r2, r5
    189c:	4631      	mov	r1, r6
    189e:	4620      	mov	r0, r4
    18a0:	f7ff fe76 	bl	1590 <gfx_plot>
		for (x=0;x<128;x++){
    18a4:	3401      	adds	r4, #1
    18a6:	2c80      	cmp	r4, #128	; 0x80
    18a8:	d1f1      	bne.n	188e <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    18aa:	3601      	adds	r6, #1
    18ac:	89fb      	ldrh	r3, [r7, #14]
    18ae:	42b3      	cmp	r3, r6
    18b0:	dceb      	bgt.n	188a <color_bars+0x1a>
    18b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    18b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000018ba <vertical_bars>:
	}
		

}

static void vertical_bars(){
    18ba:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    18bc:	f001 fd7a 	bl	33b4 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    18c0:	89c3      	ldrh	r3, [r0, #14]
    18c2:	2b10      	cmp	r3, #16
    18c4:	dd12      	ble.n	18ec <vertical_bars+0x32>
    18c6:	4605      	mov	r5, r0
    18c8:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    18ca:	260f      	movs	r6, #15
    18cc:	2700      	movs	r7, #0
    18ce:	4632      	mov	r2, r6
    18d0:	4621      	mov	r1, r4
    18d2:	4638      	mov	r0, r7
    18d4:	f7ff fe5c 	bl	1590 <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    18d8:	89a8      	ldrh	r0, [r5, #12]
    18da:	4632      	mov	r2, r6
    18dc:	4621      	mov	r1, r4
    18de:	3801      	subs	r0, #1
    18e0:	f7ff fe56 	bl	1590 <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    18e4:	3401      	adds	r4, #1
    18e6:	89eb      	ldrh	r3, [r5, #14]
    18e8:	42a3      	cmp	r3, r4
    18ea:	dcf0      	bgt.n	18ce <vertical_bars+0x14>
    18ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000018ee <horiz_bars>:
	}
}

static void horiz_bars(){
    18ee:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    18f0:	f001 fd60 	bl	33b4 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    18f4:	8983      	ldrh	r3, [r0, #12]
    18f6:	b193      	cbz	r3, 191e <horiz_bars+0x30>
    18f8:	4605      	mov	r5, r0
    18fa:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    18fc:	260f      	movs	r6, #15
    18fe:	4627      	mov	r7, r4
    1900:	4632      	mov	r2, r6
    1902:	4639      	mov	r1, r7
    1904:	4620      	mov	r0, r4
    1906:	f7ff fe43 	bl	1590 <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    190a:	89e9      	ldrh	r1, [r5, #14]
    190c:	4632      	mov	r2, r6
    190e:	3901      	subs	r1, #1
    1910:	4620      	mov	r0, r4
    1912:	f7ff fe3d 	bl	1590 <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    1916:	3401      	adds	r4, #1
    1918:	89ab      	ldrh	r3, [r5, #12]
    191a:	42a3      	cmp	r3, r4
    191c:	dcf0      	bgt.n	1900 <horiz_bars+0x12>
    191e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001920 <display_menu>:
	" Video test",
	" Sound test",
	" BASIC",
};

static void display_menu(){
    1920:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1922:	f7ff fe5f 	bl	15e4 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1926:	4808      	ldr	r0, [pc, #32]	; (1948 <display_menu+0x28>)
    1928:	f001 fa3d 	bl	2da6 <println>
    192c:	4807      	ldr	r0, [pc, #28]	; (194c <display_menu+0x2c>)
    192e:	f001 fa3a 	bl	2da6 <println>
    1932:	4807      	ldr	r0, [pc, #28]	; (1950 <display_menu+0x30>)
    1934:	f001 fa37 	bl	2da6 <println>
    1938:	4806      	ldr	r0, [pc, #24]	; (1954 <display_menu+0x34>)
    193a:	f001 fa34 	bl	2da6 <println>
    193e:	4806      	ldr	r0, [pc, #24]	; (1958 <display_menu+0x38>)
    1940:	f001 fa31 	bl	2da6 <println>
    1944:	bd08      	pop	{r3, pc}
    1946:	bf00      	nop
    1948:	00003c80 	.word	0x00003c80
    194c:	00003c8c 	.word	0x00003c8c
    1950:	00003c9c 	.word	0x00003c9c
    1954:	00003ca8 	.word	0x00003ca8
    1958:	00003cb4 	.word	0x00003cb4

0000195c <draw_balls>:
void draw_balls(){
    195c:	b510      	push	{r4, lr}
    195e:	b082      	sub	sp, #8
	frame_sync();
    1960:	f001 fcee 	bl	3340 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1964:	4c0a      	ldr	r4, [pc, #40]	; (1990 <draw_balls+0x34>)
    1966:	6923      	ldr	r3, [r4, #16]
    1968:	9300      	str	r3, [sp, #0]
    196a:	2308      	movs	r3, #8
    196c:	461a      	mov	r2, r3
    196e:	6861      	ldr	r1, [r4, #4]
    1970:	6820      	ldr	r0, [r4, #0]
    1972:	f7ff ff1d 	bl	17b0 <gfx_sprite>
    1976:	69a1      	ldr	r1, [r4, #24]
    1978:	6960      	ldr	r0, [r4, #20]
    197a:	6a63      	ldr	r3, [r4, #36]	; 0x24
    197c:	9300      	str	r3, [sp, #0]
    197e:	2308      	movs	r3, #8
    1980:	461a      	mov	r2, r3
    1982:	f7ff ff15 	bl	17b0 <gfx_sprite>
	wait_sync_end();
    1986:	f001 fce3 	bl	3350 <wait_sync_end>
}
    198a:	b002      	add	sp, #8
    198c:	bd10      	pop	{r4, pc}
    198e:	bf00      	nop
    1990:	200026a8 	.word	0x200026a8

00001994 <isqrt>:
	if (n<2) return n;
    1994:	2801      	cmp	r0, #1
    1996:	dd0c      	ble.n	19b2 <isqrt+0x1e>
int isqrt(int n){
    1998:	b510      	push	{r4, lr}
    199a:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    199c:	1080      	asrs	r0, r0, #2
    199e:	f7ff fff9 	bl	1994 <isqrt>
    19a2:	0040      	lsls	r0, r0, #1
	large = small + 1;
    19a4:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    19a6:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    19aa:	4294      	cmp	r4, r2
    19ac:	bfa8      	it	ge
    19ae:	4618      	movge	r0, r3
}
    19b0:	bd10      	pop	{r4, pc}
    19b2:	4770      	bx	lr

000019b4 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    19b4:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    19b6:	6803      	ldr	r3, [r0, #0]
    19b8:	680a      	ldr	r2, [r1, #0]
    19ba:	6844      	ldr	r4, [r0, #4]
    19bc:	6848      	ldr	r0, [r1, #4]
    19be:	fb00 f004 	mul.w	r0, r0, r4
    19c2:	fb02 0003 	mla	r0, r2, r3, r0
    19c6:	2800      	cmp	r0, #0
    19c8:	bfb8      	it	lt
    19ca:	4240      	neglt	r0, r0
    19cc:	f7ff ffe2 	bl	1994 <isqrt>
}
    19d0:	bd10      	pop	{r4, pc}

000019d2 <move_balls>:
void move_balls(){
    19d2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    19d4:	f001 fcee 	bl	33b4 <get_video_params>
    19d8:	4b1c      	ldr	r3, [pc, #112]	; (1a4c <move_balls+0x7a>)
    19da:	f103 0628 	add.w	r6, r3, #40	; 0x28
    19de:	e005      	b.n	19ec <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    19e0:	4249      	negs	r1, r1
    19e2:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    19e4:	6055      	str	r5, [r2, #4]
    19e6:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    19e8:	42b3      	cmp	r3, r6
    19ea:	d017      	beq.n	1a1c <move_balls+0x4a>
    19ec:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    19ee:	681d      	ldr	r5, [r3, #0]
    19f0:	6899      	ldr	r1, [r3, #8]
    19f2:	186c      	adds	r4, r5, r1
    19f4:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    19f6:	f114 0f07 	cmn.w	r4, #7
    19fa:	db02      	blt.n	1a02 <move_balls+0x30>
    19fc:	8987      	ldrh	r7, [r0, #12]
    19fe:	42bc      	cmp	r4, r7
    1a00:	db02      	blt.n	1a08 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    1a02:	4249      	negs	r1, r1
    1a04:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1a06:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1a08:	6855      	ldr	r5, [r2, #4]
    1a0a:	68d1      	ldr	r1, [r2, #12]
    1a0c:	186c      	adds	r4, r5, r1
    1a0e:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1a10:	2c0f      	cmp	r4, #15
    1a12:	dde5      	ble.n	19e0 <move_balls+0xe>
    1a14:	89c7      	ldrh	r7, [r0, #14]
    1a16:	42bc      	cmp	r4, r7
    1a18:	dbe5      	blt.n	19e6 <move_balls+0x14>
    1a1a:	e7e1      	b.n	19e0 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1a1c:	480c      	ldr	r0, [pc, #48]	; (1a50 <move_balls+0x7e>)
    1a1e:	4601      	mov	r1, r0
    1a20:	3814      	subs	r0, #20
    1a22:	f7ff ffc7 	bl	19b4 <distance>
    1a26:	2807      	cmp	r0, #7
    1a28:	d80f      	bhi.n	1a4a <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1a2a:	4b08      	ldr	r3, [pc, #32]	; (1a4c <move_balls+0x7a>)
    1a2c:	689a      	ldr	r2, [r3, #8]
    1a2e:	69db      	ldr	r3, [r3, #28]
    1a30:	429a      	cmp	r2, r3
    1a32:	d002      	beq.n	1a3a <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1a34:	4905      	ldr	r1, [pc, #20]	; (1a4c <move_balls+0x7a>)
    1a36:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1a38:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1a3a:	4b04      	ldr	r3, [pc, #16]	; (1a4c <move_balls+0x7a>)
    1a3c:	68da      	ldr	r2, [r3, #12]
    1a3e:	6a1b      	ldr	r3, [r3, #32]
    1a40:	429a      	cmp	r2, r3
    1a42:	d002      	beq.n	1a4a <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1a44:	4901      	ldr	r1, [pc, #4]	; (1a4c <move_balls+0x7a>)
    1a46:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1a48:	620a      	str	r2, [r1, #32]
    1a4a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1a4c:	200026a8 	.word	0x200026a8
    1a50:	200026bc 	.word	0x200026bc

00001a54 <init_balls>:
void init_balls(){
    1a54:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a58:	f001 fcac 	bl	33b4 <get_video_params>
    1a5c:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a5e:	4b15      	ldr	r3, [pc, #84]	; (1ab4 <init_balls+0x60>)
    1a60:	6818      	ldr	r0, [r3, #0]
    1a62:	f7fe fcc1 	bl	3e8 <srand>
    1a66:	4c14      	ldr	r4, [pc, #80]	; (1ab8 <init_balls+0x64>)
    1a68:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    1a6c:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    1a6e:	4f13      	ldr	r7, [pc, #76]	; (1abc <init_balls+0x68>)
    1a70:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    1a74:	f7fe fcbe 	bl	3f4 <rand>
    1a78:	89ab      	ldrh	r3, [r5, #12]
    1a7a:	fb90 f2f3 	sdiv	r2, r0, r3
    1a7e:	fb02 0013 	mls	r0, r2, r3, r0
    1a82:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1a84:	f7fe fcb6 	bl	3f4 <rand>
    1a88:	89eb      	ldrh	r3, [r5, #14]
    1a8a:	3b10      	subs	r3, #16
    1a8c:	fb90 f2f3 	sdiv	r2, r0, r3
    1a90:	fb02 0013 	mls	r0, r2, r3, r0
    1a94:	3010      	adds	r0, #16
    1a96:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1a98:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    1a9a:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1a9c:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    1a9e:	2b00      	cmp	r3, #0
    1aa0:	bf14      	ite	ne
    1aa2:	4643      	movne	r3, r8
    1aa4:	463b      	moveq	r3, r7
    1aa6:	6123      	str	r3, [r4, #16]
    1aa8:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1aaa:	454c      	cmp	r4, r9
    1aac:	d1e2      	bne.n	1a74 <init_balls+0x20>
}
    1aae:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1ab2:	bf00      	nop
    1ab4:	20004e34 	.word	0x20004e34
    1ab8:	200026a8 	.word	0x200026a8
    1abc:	00003b74 	.word	0x00003b74

00001ac0 <main>:
			break;	
		}
	}//while
}

void main(void){
    1ac0:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1ac4:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1ac6:	4ac0      	ldr	r2, [pc, #768]	; (1dc8 <main+0x308>)
    1ac8:	6813      	ldr	r3, [r2, #0]
    1aca:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1ace:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1ad0:	4613      	mov	r3, r2
    1ad2:	681a      	ldr	r2, [r3, #0]
    1ad4:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1ad8:	d0fb      	beq.n	1ad2 <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1ada:	4bbb      	ldr	r3, [pc, #748]	; (1dc8 <main+0x308>)
    1adc:	685a      	ldr	r2, [r3, #4]
    1ade:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1ae2:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1ae4:	681a      	ldr	r2, [r3, #0]
    1ae6:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1aea:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1aec:	681a      	ldr	r2, [r3, #0]
    1aee:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1af2:	d0fb      	beq.n	1aec <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1af4:	4ab5      	ldr	r2, [pc, #724]	; (1dcc <main+0x30c>)
    1af6:	6813      	ldr	r3, [r2, #0]
    1af8:	f043 0312 	orr.w	r3, r3, #18
    1afc:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1afe:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1b02:	6853      	ldr	r3, [r2, #4]
    1b04:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1b08:	f043 0302 	orr.w	r3, r3, #2
    1b0c:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1b0e:	f640 031d 	movw	r3, #2077	; 0x81d
    1b12:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1b14:	4cae      	ldr	r4, [pc, #696]	; (1dd0 <main+0x310>)
    1b16:	2206      	movs	r2, #6
    1b18:	210d      	movs	r1, #13
    1b1a:	4620      	mov	r0, r4
    1b1c:	f7ff fcac 	bl	1478 <config_pin>
	_led_off();
    1b20:	68e3      	ldr	r3, [r4, #12]
    1b22:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1b26:	60e3      	str	r3, [r4, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1b28:	2400      	movs	r4, #0
    1b2a:	9401      	str	r4, [sp, #4]
    1b2c:	2301      	movs	r3, #1
    1b2e:	9300      	str	r3, [sp, #0]
    1b30:	2303      	movs	r3, #3
    1b32:	4622      	mov	r2, r4
    1b34:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1b38:	48a6      	ldr	r0, [pc, #664]	; (1dd4 <main+0x314>)
    1b3a:	f001 fcf2 	bl	3522 <usart_open_channel>
	gamepad_init();
    1b3e:	f7ff fa79 	bl	1034 <gamepad_init>
	tvout_init();
    1b42:	f001 f9e7 	bl	2f14 <tvout_init>
	sound_init();
    1b46:	f000 fe41 	bl	27cc <sound_init>
	gfx_cls();
    1b4a:	f7ff fd4b 	bl	15e4 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1b4e:	f001 fc31 	bl	33b4 <get_video_params>
	display_menu();
    1b52:	f7ff fee5 	bl	1920 <display_menu>
	int i=0;
    1b56:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1b58:	4b9f      	ldr	r3, [pc, #636]	; (1dd8 <main+0x318>)
    1b5a:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1b5e:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1b62:	9304      	str	r3, [sp, #16]
    1b64:	e186      	b.n	1e74 <main+0x3b4>
			if (i<(MENU_ITEMS-1)) i++;
    1b66:	f1ba 0f03 	cmp.w	sl, #3
    1b6a:	f300 8183 	bgt.w	1e74 <main+0x3b4>
    1b6e:	f10a 0a01 	add.w	sl, sl, #1
    1b72:	e17f      	b.n	1e74 <main+0x3b4>
			switch(i){
    1b74:	f1ba 0f04 	cmp.w	sl, #4
    1b78:	f200 817a 	bhi.w	1e70 <main+0x3b0>
    1b7c:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1b80:	00cd0005 	.word	0x00cd0005
    1b84:	01a8010c 	.word	0x01a8010c
    1b88:	01e4      	.short	0x01e4
	count=games_count();
    1b8a:	f7ff fb03 	bl	1194 <games_count>
    1b8e:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1b90:	2000      	movs	r0, #0
    1b92:	f001 fbe5 	bl	3360 <set_video_mode>
	vparams=get_video_params();
    1b96:	f001 fc0d 	bl	33b4 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1b9a:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1b9e:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1ba2:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1ba4:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1ba8:	454e      	cmp	r6, r9
    1baa:	bfda      	itte	le
    1bac:	eba9 0806 	suble.w	r8, r9, r6
    1bb0:	f108 0801 	addle.w	r8, r8, #1
    1bb4:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1bb6:	2100      	movs	r1, #0
    1bb8:	4608      	mov	r0, r1
    1bba:	f001 f8ab 	bl	2d14 <set_cursor>
	print(" ********** GAMES **********");
    1bbe:	4887      	ldr	r0, [pc, #540]	; (1ddc <main+0x31c>)
    1bc0:	f001 f8dc 	bl	2d7c <print>
	while ((r<rows) && games_list[first].size){
    1bc4:	f1bb 0f01 	cmp.w	fp, #1
    1bc8:	d92d      	bls.n	1c26 <main+0x166>
    1bca:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1bce:	4a84      	ldr	r2, [pc, #528]	; (1de0 <main+0x320>)
    1bd0:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1bd4:	691b      	ldr	r3, [r3, #16]
    1bd6:	b333      	cbz	r3, 1c26 <main+0x166>
    1bd8:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1bdc:	1c53      	adds	r3, r2, #1
    1bde:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1be2:	2501      	movs	r5, #1
		put_char(' ');
    1be4:	2720      	movs	r7, #32
		new_line();
    1be6:	f000 ffdf 	bl	2ba8 <new_line>
		clear_line();
    1bea:	f001 f961 	bl	2eb0 <clear_line>
		put_char(' ');
    1bee:	4638      	mov	r0, r7
    1bf0:	f001 f824 	bl	2c3c <put_char>
		print(games_list[first].name);
    1bf4:	4620      	mov	r0, r4
    1bf6:	f001 f8c1 	bl	2d7c <print>
		line=get_cursor()&0xff;
    1bfa:	f001 f891 	bl	2d20 <get_cursor>
		set_cursor(90,line);
    1bfe:	b2c1      	uxtb	r1, r0
    1c00:	205a      	movs	r0, #90	; 0x5a
    1c02:	f001 f887 	bl	2d14 <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1c06:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1c0a:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1c0c:	bf0c      	ite	eq
    1c0e:	4875      	ldreq	r0, [pc, #468]	; (1de4 <main+0x324>)
			print("(BPCHIP)");
    1c10:	4875      	ldrne	r0, [pc, #468]	; (1de8 <main+0x328>)
    1c12:	f001 f8b3 	bl	2d7c <print>
		r++;
    1c16:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1c18:	42ae      	cmp	r6, r5
    1c1a:	d004      	beq.n	1c26 <main+0x166>
    1c1c:	341c      	adds	r4, #28
    1c1e:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1c22:	2b00      	cmp	r3, #0
    1c24:	d1df      	bne.n	1be6 <main+0x126>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1c26:	eba9 0108 	sub.w	r1, r9, r8
    1c2a:	00c9      	lsls	r1, r1, #3
    1c2c:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1c30:	2000      	movs	r0, #0
    1c32:	f001 f86f 	bl	2d14 <set_cursor>
		put_char('>');
    1c36:	203e      	movs	r0, #62	; 0x3e
    1c38:	f001 f800 	bl	2c3c <put_char>
		btn=btn_wait_any();
    1c3c:	f7ff fa70 	bl	1120 <btn_wait_any>
    1c40:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1c42:	f7ff fa59 	bl	10f8 <btn_wait_up>
		switch(btn){
    1c46:	2c04      	cmp	r4, #4
    1c48:	d053      	beq.n	1cf2 <main+0x232>
    1c4a:	d943      	bls.n	1cd4 <main+0x214>
    1c4c:	2c40      	cmp	r4, #64	; 0x40
    1c4e:	d057      	beq.n	1d00 <main+0x240>
    1c50:	2c80      	cmp	r4, #128	; 0x80
    1c52:	f000 810d 	beq.w	1e70 <main+0x3b0>
    1c56:	2c20      	cmp	r4, #32
    1c58:	d1a6      	bne.n	1ba8 <main+0xe8>
	run_game(selected-1);
    1c5a:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1c5e:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1c62:	4b5f      	ldr	r3, [pc, #380]	; (1de0 <main+0x320>)
    1c64:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1c68:	2b01      	cmp	r3, #1
    1c6a:	bf14      	ite	ne
    1c6c:	2600      	movne	r6, #0
    1c6e:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1c72:	4f5b      	ldr	r7, [pc, #364]	; (1de0 <main+0x320>)
    1c74:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1c78:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1c7c:	6922      	ldr	r2, [r4, #16]
    1c7e:	495b      	ldr	r1, [pc, #364]	; (1dec <main+0x32c>)
    1c80:	4431      	add	r1, r6
    1c82:	6960      	ldr	r0, [r4, #20]
    1c84:	f7ff fb39 	bl	12fa <move>
	set_keymap(games_list[idx].keymap);
    1c88:	69a0      	ldr	r0, [r4, #24]
    1c8a:	f7ff f9c7 	bl	101c <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1c8e:	eba5 0909 	sub.w	r9, r5, r9
    1c92:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1c96:	f001 fb63 	bl	3360 <set_video_mode>
	exit_code=chip_vm(addr,debug_level);
    1c9a:	4b55      	ldr	r3, [pc, #340]	; (1df0 <main+0x330>)
    1c9c:	7819      	ldrb	r1, [r3, #0]
    1c9e:	4630      	mov	r0, r6
    1ca0:	f7fe fbb6 	bl	410 <chip_vm>
    1ca4:	4604      	mov	r4, r0
	print("exit code: ");
    1ca6:	4853      	ldr	r0, [pc, #332]	; (1df4 <main+0x334>)
    1ca8:	f001 f868 	bl	2d7c <print>
	switch(exit_code){
    1cac:	2c01      	cmp	r4, #1
    1cae:	d02a      	beq.n	1d06 <main+0x246>
    1cb0:	b374      	cbz	r4, 1d10 <main+0x250>
    1cb2:	2c03      	cmp	r4, #3
    1cb4:	d82c      	bhi.n	1d10 <main+0x250>
		select_console(SERIAL);
    1cb6:	2001      	movs	r0, #1
    1cb8:	f001 f91c 	bl	2ef4 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1cbc:	4621      	mov	r1, r4
    1cbe:	484e      	ldr	r0, [pc, #312]	; (1df8 <main+0x338>)
    1cc0:	f7fe fb34 	bl	32c <print_vms>
		select_console(LOCAL);
    1cc4:	2000      	movs	r0, #0
    1cc6:	f001 f915 	bl	2ef4 <select_console>
		btn_wait_any();
    1cca:	f7ff fa29 	bl	1120 <btn_wait_any>
		i=1;
    1cce:	2301      	movs	r3, #1
    1cd0:	9305      	str	r3, [sp, #20]
    1cd2:	e01d      	b.n	1d10 <main+0x250>
		switch(btn){
    1cd4:	2c01      	cmp	r4, #1
    1cd6:	d009      	beq.n	1cec <main+0x22c>
    1cd8:	2c02      	cmp	r4, #2
    1cda:	f47f af65 	bne.w	1ba8 <main+0xe8>
			if (selected>1) selected--;
    1cde:	f1b9 0f01 	cmp.w	r9, #1
    1ce2:	f77f af61 	ble.w	1ba8 <main+0xe8>
    1ce6:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1cea:	e75d      	b.n	1ba8 <main+0xe8>
			selected=1;
    1cec:	f04f 0901 	mov.w	r9, #1
    1cf0:	e75a      	b.n	1ba8 <main+0xe8>
			if (selected<count){
    1cf2:	9b03      	ldr	r3, [sp, #12]
    1cf4:	454b      	cmp	r3, r9
    1cf6:	f77f af57 	ble.w	1ba8 <main+0xe8>
				selected++;
    1cfa:	f109 0901 	add.w	r9, r9, #1
    1cfe:	e753      	b.n	1ba8 <main+0xe8>
			selected=count;
    1d00:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1d04:	e750      	b.n	1ba8 <main+0xe8>
		print("CHIP EXIT OK");
    1d06:	483d      	ldr	r0, [pc, #244]	; (1dfc <main+0x33c>)
    1d08:	f001 f838 	bl	2d7c <print>
		i=0;
    1d0c:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1d10:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1d14:	f001 fb58 	bl	33c8 <game_pause>
    1d18:	e0aa      	b.n	1e70 <main+0x3b0>
	gfx_cls();
    1d1a:	f7ff fc63 	bl	15e4 <gfx_cls>
	print(" **** VM debug support ****\n");
    1d1e:	4838      	ldr	r0, [pc, #224]	; (1e00 <main+0x340>)
    1d20:	f001 f82c 	bl	2d7c <print>
	print(" No debug support#\n");
    1d24:	4837      	ldr	r0, [pc, #220]	; (1e04 <main+0x344>)
    1d26:	f001 f829 	bl	2d7c <print>
	print(" Print PC and OPCODE\n");
    1d2a:	4837      	ldr	r0, [pc, #220]	; (1e08 <main+0x348>)
    1d2c:	f001 f826 	bl	2d7c <print>
	print(" Print all VM states.\n");
    1d30:	4836      	ldr	r0, [pc, #216]	; (1e0c <main+0x34c>)
    1d32:	f001 f823 	bl	2d7c <print>
	print(" Single step\n");
    1d36:	4836      	ldr	r0, [pc, #216]	; (1e10 <main+0x350>)
    1d38:	f001 f820 	bl	2d7c <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d3c:	4c2c      	ldr	r4, [pc, #176]	; (1df0 <main+0x330>)
    1d3e:	2500      	movs	r5, #0
		put_char('*');
    1d40:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d42:	7821      	ldrb	r1, [r4, #0]
    1d44:	3101      	adds	r1, #1
    1d46:	00c9      	lsls	r1, r1, #3
    1d48:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d4c:	4628      	mov	r0, r5
    1d4e:	f000 ffe1 	bl	2d14 <set_cursor>
		put_char('*');
    1d52:	4630      	mov	r0, r6
    1d54:	f000 ff72 	bl	2c3c <put_char>
		btn=btn_wait_any();
    1d58:	f7ff f9e2 	bl	1120 <btn_wait_any>
    1d5c:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d5e:	7821      	ldrb	r1, [r4, #0]
    1d60:	3101      	adds	r1, #1
    1d62:	00c9      	lsls	r1, r1, #3
    1d64:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d68:	4628      	mov	r0, r5
    1d6a:	f000 ffd3 	bl	2d14 <set_cursor>
		put_char(' ');
    1d6e:	2020      	movs	r0, #32
    1d70:	f000 ff64 	bl	2c3c <put_char>
		switch(btn){
    1d74:	2f04      	cmp	r7, #4
    1d76:	d009      	beq.n	1d8c <main+0x2cc>
    1d78:	2f20      	cmp	r7, #32
    1d7a:	d079      	beq.n	1e70 <main+0x3b0>
    1d7c:	2f02      	cmp	r7, #2
    1d7e:	d1e0      	bne.n	1d42 <main+0x282>
			if (debug_level) debug_level--;
    1d80:	7823      	ldrb	r3, [r4, #0]
    1d82:	2b00      	cmp	r3, #0
    1d84:	d0dd      	beq.n	1d42 <main+0x282>
    1d86:	3b01      	subs	r3, #1
    1d88:	7023      	strb	r3, [r4, #0]
    1d8a:	e7da      	b.n	1d42 <main+0x282>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1d8c:	7823      	ldrb	r3, [r4, #0]
    1d8e:	2b02      	cmp	r3, #2
    1d90:	d8d7      	bhi.n	1d42 <main+0x282>
    1d92:	3301      	adds	r3, #1
    1d94:	7023      	strb	r3, [r4, #0]
    1d96:	e7d4      	b.n	1d42 <main+0x282>
	set_video_mode(p);
    1d98:	2000      	movs	r0, #0
    1d9a:	f001 fae1 	bl	3360 <set_video_mode>
	color_bars();
    1d9e:	f7ff fd67 	bl	1870 <color_bars>
	vertical_bars();
    1da2:	f7ff fd8a 	bl	18ba <vertical_bars>
	horiz_bars();
    1da6:	f7ff fda2 	bl	18ee <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1daa:	2110      	movs	r1, #16
    1dac:	4819      	ldr	r0, [pc, #100]	; (1e14 <main+0x354>)
    1dae:	f001 f800 	bl	2db2 <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1db2:	210a      	movs	r1, #10
    1db4:	9804      	ldr	r0, [sp, #16]
    1db6:	f000 fffc 	bl	2db2 <print_int>
	init_balls();
    1dba:	f7ff fe4b 	bl	1a54 <init_balls>
	p=0;
    1dbe:	2400      	movs	r4, #0
		if (btn_query_down(KEY_RIGHT)){
    1dc0:	2510      	movs	r5, #16
				print("BPCHIP mode\n180x112 16 colors");
    1dc2:	4f15      	ldr	r7, [pc, #84]	; (1e18 <main+0x358>)
				print("SCHIP mode\n128x64 mono");
    1dc4:	4e15      	ldr	r6, [pc, #84]	; (1e1c <main+0x35c>)
    1dc6:	e03d      	b.n	1e44 <main+0x384>
    1dc8:	40021000 	.word	0x40021000
    1dcc:	40022000 	.word	0x40022000
    1dd0:	40011000 	.word	0x40011000
    1dd4:	40013800 	.word	0x40013800
    1dd8:	20004e40 	.word	0x20004e40
    1ddc:	00003cbc 	.word	0x00003cbc
    1de0:	20000004 	.word	0x20000004
    1de4:	00003cdc 	.word	0x00003cdc
    1de8:	00003ce4 	.word	0x00003ce4
    1dec:	200006a0 	.word	0x200006a0
    1df0:	200026a4 	.word	0x200026a4
    1df4:	00003cf0 	.word	0x00003cf0
    1df8:	00003d0c 	.word	0x00003d0c
    1dfc:	00003cfc 	.word	0x00003cfc
    1e00:	00003d1c 	.word	0x00003d1c
    1e04:	00003d3c 	.word	0x00003d3c
    1e08:	00003d50 	.word	0x00003d50
    1e0c:	00003d68 	.word	0x00003d68
    1e10:	00003d80 	.word	0x00003d80
    1e14:	00004000 	.word	0x00004000
    1e18:	00003d90 	.word	0x00003d90
    1e1c:	00003db0 	.word	0x00003db0
			p^=1;
    1e20:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1e24:	4620      	mov	r0, r4
    1e26:	f001 fa9b 	bl	3360 <set_video_mode>
			switch(p){
    1e2a:	2c00      	cmp	r4, #0
    1e2c:	d046      	beq.n	1ebc <main+0x3fc>
    1e2e:	2c01      	cmp	r4, #1
    1e30:	d04a      	beq.n	1ec8 <main+0x408>
			vertical_bars();
    1e32:	f7ff fd42 	bl	18ba <vertical_bars>
			horiz_bars();
    1e36:	f7ff fd5a 	bl	18ee <horiz_bars>
			init_balls();
    1e3a:	f7ff fe0b 	bl	1a54 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1e3e:	4628      	mov	r0, r5
    1e40:	f7ff f95a 	bl	10f8 <btn_wait_up>
		draw_balls();
    1e44:	f7ff fd8a 	bl	195c <draw_balls>
		draw_balls();
    1e48:	f7ff fd88 	bl	195c <draw_balls>
		move_balls();
    1e4c:	f7ff fdc1 	bl	19d2 <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1e50:	4628      	mov	r0, r5
    1e52:	f7ff f931 	bl	10b8 <btn_query_down>
    1e56:	2800      	cmp	r0, #0
    1e58:	d1e2      	bne.n	1e20 <main+0x360>
		}else if (btn_query_down(KEY_B)){
    1e5a:	2020      	movs	r0, #32
    1e5c:	f7ff f92c 	bl	10b8 <btn_query_down>
    1e60:	2800      	cmp	r0, #0
    1e62:	d0ef      	beq.n	1e44 <main+0x384>
			btn_wait_up(KEY_B);
    1e64:	2020      	movs	r0, #32
    1e66:	f7ff f947 	bl	10f8 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1e6a:	2000      	movs	r0, #0
    1e6c:	f001 fa78 	bl	3360 <set_video_mode>
			display_menu();
    1e70:	f7ff fd56 	bl	1920 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1e74:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1e78:	b2e4      	uxtb	r4, r4
    1e7a:	4621      	mov	r1, r4
    1e7c:	2000      	movs	r0, #0
    1e7e:	f000 ff49 	bl	2d14 <set_cursor>
		put_char('>');
    1e82:	203e      	movs	r0, #62	; 0x3e
    1e84:	f000 feda 	bl	2c3c <put_char>
		btn=btn_wait_any();
    1e88:	f7ff f94a 	bl	1120 <btn_wait_any>
    1e8c:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1e8e:	f7ff f933 	bl	10f8 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1e92:	4621      	mov	r1, r4
    1e94:	2000      	movs	r0, #0
    1e96:	f000 ff3d 	bl	2d14 <set_cursor>
		put_char(' ');
    1e9a:	2020      	movs	r0, #32
    1e9c:	f000 fece 	bl	2c3c <put_char>
		switch(btn){
    1ea0:	2d04      	cmp	r5, #4
    1ea2:	f43f ae60 	beq.w	1b66 <main+0xa6>
    1ea6:	2d20      	cmp	r5, #32
    1ea8:	f43f ae64 	beq.w	1b74 <main+0xb4>
    1eac:	2d02      	cmp	r5, #2
    1eae:	d1e1      	bne.n	1e74 <main+0x3b4>
			if (i) i--;
    1eb0:	f1ba 0f00 	cmp.w	sl, #0
    1eb4:	d0de      	beq.n	1e74 <main+0x3b4>
    1eb6:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1eba:	e7db      	b.n	1e74 <main+0x3b4>
				print("BPCHIP mode\n180x112 16 colors");
    1ebc:	4638      	mov	r0, r7
    1ebe:	f000 ff5d 	bl	2d7c <print>
				color_bars();
    1ec2:	f7ff fcd5 	bl	1870 <color_bars>
    1ec6:	e7b4      	b.n	1e32 <main+0x372>
				print("SCHIP mode\n128x64 mono");
    1ec8:	4630      	mov	r0, r6
    1eca:	f000 ff57 	bl	2d7c <print>
    1ece:	e7b0      	b.n	1e32 <main+0x372>
	gfx_cls();
    1ed0:	f7ff fb88 	bl	15e4 <gfx_cls>
	print("press buttons\n");
    1ed4:	4828      	ldr	r0, [pc, #160]	; (1f78 <main+0x4b8>)
    1ed6:	f000 ff51 	bl	2d7c <print>
		tone(freq,30);
    1eda:	251e      	movs	r5, #30
			freq=493;
    1edc:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    1ee0:	f240 266e 	movw	r6, #622	; 0x26e
    1ee4:	e019      	b.n	1f1a <main+0x45a>
		switch(key){
    1ee6:	2802      	cmp	r0, #2
    1ee8:	d03f      	beq.n	1f6a <main+0x4aa>
    1eea:	2804      	cmp	r0, #4
    1eec:	d00e      	beq.n	1f0c <main+0x44c>
    1eee:	2801      	cmp	r0, #1
    1ef0:	d024      	beq.n	1f3c <main+0x47c>
		tone(freq,30);
    1ef2:	4629      	mov	r1, r5
    1ef4:	9802      	ldr	r0, [sp, #8]
    1ef6:	f000 fc95 	bl	2824 <tone>
	while (key!=KEY_B){
    1efa:	2c20      	cmp	r4, #32
    1efc:	d10d      	bne.n	1f1a <main+0x45a>
    1efe:	e02b      	b.n	1f58 <main+0x498>
		switch(key){
    1f00:	2810      	cmp	r0, #16
    1f02:	d1f6      	bne.n	1ef2 <main+0x432>
			freq=523;
    1f04:	f240 230b 	movw	r3, #523	; 0x20b
    1f08:	9302      	str	r3, [sp, #8]
    1f0a:	e002      	b.n	1f12 <main+0x452>
			freq=466;
    1f0c:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    1f10:	9302      	str	r3, [sp, #8]
		tone(freq,30);
    1f12:	4629      	mov	r1, r5
    1f14:	9802      	ldr	r0, [sp, #8]
    1f16:	f000 fc85 	bl	2824 <tone>
		key=btn_wait_any();
    1f1a:	f7ff f901 	bl	1120 <btn_wait_any>
    1f1e:	4604      	mov	r4, r0
		switch(key){
    1f20:	2808      	cmp	r0, #8
    1f22:	d026      	beq.n	1f72 <main+0x4b2>
    1f24:	d9df      	bls.n	1ee6 <main+0x426>
    1f26:	2820      	cmp	r0, #32
    1f28:	d011      	beq.n	1f4e <main+0x48e>
    1f2a:	d9e9      	bls.n	1f00 <main+0x440>
    1f2c:	2840      	cmp	r0, #64	; 0x40
    1f2e:	d009      	beq.n	1f44 <main+0x484>
    1f30:	2880      	cmp	r0, #128	; 0x80
    1f32:	d1de      	bne.n	1ef2 <main+0x432>
			freq=659;
    1f34:	f240 2393 	movw	r3, #659	; 0x293
    1f38:	9302      	str	r3, [sp, #8]
    1f3a:	e7ea      	b.n	1f12 <main+0x452>
			freq=554;
    1f3c:	f240 232a 	movw	r3, #554	; 0x22a
    1f40:	9302      	str	r3, [sp, #8]
    1f42:	e7e6      	b.n	1f12 <main+0x452>
			freq=622;
    1f44:	9602      	str	r6, [sp, #8]
    1f46:	e7e4      	b.n	1f12 <main+0x452>
				basic();
    1f48:	f7fe f996 	bl	278 <basic>
    1f4c:	e790      	b.n	1e70 <main+0x3b0>
		tone(freq,30);
    1f4e:	211e      	movs	r1, #30
    1f50:	f240 204b 	movw	r0, #587	; 0x24b
    1f54:	f000 fc66 	bl	2824 <tone>
	noise(30);
    1f58:	201e      	movs	r0, #30
    1f5a:	f000 fc9d 	bl	2898 <noise>
	while(sound_timer);
    1f5e:	4a07      	ldr	r2, [pc, #28]	; (1f7c <main+0x4bc>)
    1f60:	8813      	ldrh	r3, [r2, #0]
    1f62:	b29b      	uxth	r3, r3
    1f64:	2b00      	cmp	r3, #0
    1f66:	d1fb      	bne.n	1f60 <main+0x4a0>
    1f68:	e782      	b.n	1e70 <main+0x3b0>
			freq=440;
    1f6a:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    1f6e:	9302      	str	r3, [sp, #8]
    1f70:	e7cf      	b.n	1f12 <main+0x452>
			freq=493;
    1f72:	9702      	str	r7, [sp, #8]
    1f74:	e7cd      	b.n	1f12 <main+0x452>
    1f76:	bf00      	nop
    1f78:	00003dc8 	.word	0x00003dc8
    1f7c:	20004e38 	.word	0x20004e38

00001f80 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f80:	283b      	cmp	r0, #59	; 0x3b
    1f82:	dc0d      	bgt.n	1fa0 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1f84:	1143      	asrs	r3, r0, #5
    1f86:	009b      	lsls	r3, r3, #2
    1f88:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1f8c:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1f90:	6819      	ldr	r1, [r3, #0]
    1f92:	f000 001f 	and.w	r0, r0, #31
    1f96:	2201      	movs	r2, #1
    1f98:	fa02 f000 	lsl.w	r0, r2, r0
    1f9c:	4308      	orrs	r0, r1
    1f9e:	6018      	str	r0, [r3, #0]
    1fa0:	4770      	bx	lr

00001fa2 <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1fa2:	283b      	cmp	r0, #59	; 0x3b
    1fa4:	dc08      	bgt.n	1fb8 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1fa6:	1142      	asrs	r2, r0, #5
    1fa8:	f000 001f 	and.w	r0, r0, #31
    1fac:	2301      	movs	r3, #1
    1fae:	fa03 f000 	lsl.w	r0, r3, r0
    1fb2:	4b02      	ldr	r3, [pc, #8]	; (1fbc <disable_interrupt+0x1a>)
    1fb4:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1fb8:	4770      	bx	lr
    1fba:	bf00      	nop
    1fbc:	e000e180 	.word	0xe000e180

00001fc0 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1fc0:	283b      	cmp	r0, #59	; 0x3b
    1fc2:	dc09      	bgt.n	1fd8 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1fc4:	1142      	asrs	r2, r0, #5
    1fc6:	4b05      	ldr	r3, [pc, #20]	; (1fdc <get_pending+0x1c>)
    1fc8:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1fcc:	f000 031f 	and.w	r3, r0, #31
    1fd0:	2001      	movs	r0, #1
    1fd2:	4098      	lsls	r0, r3
    1fd4:	4010      	ands	r0, r2
    1fd6:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1fd8:	2000      	movs	r0, #0
}
    1fda:	4770      	bx	lr
    1fdc:	e000e280 	.word	0xe000e280

00001fe0 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1fe0:	283b      	cmp	r0, #59	; 0x3b
    1fe2:	dc0c      	bgt.n	1ffe <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1fe4:	1143      	asrs	r3, r0, #5
    1fe6:	009b      	lsls	r3, r3, #2
    1fe8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1fec:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1ff0:	681a      	ldr	r2, [r3, #0]
    1ff2:	f000 031f 	and.w	r3, r0, #31
    1ff6:	2001      	movs	r0, #1
    1ff8:	4098      	lsls	r0, r3
    1ffa:	4010      	ands	r0, r2
    1ffc:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1ffe:	2000      	movs	r0, #0
}
    2000:	4770      	bx	lr

00002002 <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    2002:	283b      	cmp	r0, #59	; 0x3b
    2004:	dc0d      	bgt.n	2022 <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    2006:	1143      	asrs	r3, r0, #5
    2008:	009b      	lsls	r3, r3, #2
    200a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    200e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2012:	6819      	ldr	r1, [r3, #0]
    2014:	f000 001f 	and.w	r0, r0, #31
    2018:	2201      	movs	r2, #1
    201a:	fa02 f000 	lsl.w	r0, r2, r0
    201e:	4308      	orrs	r0, r1
    2020:	6018      	str	r0, [r3, #0]
    2022:	4770      	bx	lr

00002024 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2024:	283b      	cmp	r0, #59	; 0x3b
    2026:	dc08      	bgt.n	203a <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    2028:	1142      	asrs	r2, r0, #5
    202a:	f000 001f 	and.w	r0, r0, #31
    202e:	2301      	movs	r3, #1
    2030:	fa03 f000 	lsl.w	r0, r3, r0
    2034:	4b01      	ldr	r3, [pc, #4]	; (203c <clear_pending+0x18>)
    2036:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    203a:	4770      	bx	lr
    203c:	e000e280 	.word	0xe000e280

00002040 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    2040:	283b      	cmp	r0, #59	; 0x3b
    2042:	d90c      	bls.n	205e <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2044:	f100 030f 	add.w	r3, r0, #15
    2048:	2b0e      	cmp	r3, #14
    204a:	d807      	bhi.n	205c <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    204c:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    2050:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2054:	30fc      	adds	r0, #252	; 0xfc
    2056:	0109      	lsls	r1, r1, #4
    2058:	4b04      	ldr	r3, [pc, #16]	; (206c <set_int_priority+0x2c>)
    205a:	54c1      	strb	r1, [r0, r3]
    205c:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    205e:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    2062:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    2066:	0109      	lsls	r1, r1, #4
    2068:	7001      	strb	r1, [r0, #0]
    206a:	4770      	bx	lr
    206c:	e000ed18 	.word	0xe000ed18

00002070 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    2070:	f010 0f03 	tst.w	r0, #3
    2074:	d113      	bne.n	209e <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    2076:	4b0c      	ldr	r3, [pc, #48]	; (20a8 <leap_year+0x38>)
    2078:	fba3 2300 	umull	r2, r3, r3, r0
    207c:	095b      	lsrs	r3, r3, #5
    207e:	2264      	movs	r2, #100	; 0x64
    2080:	fb02 0313 	mls	r3, r2, r3, r0
    2084:	b96b      	cbnz	r3, 20a2 <leap_year+0x32>
    2086:	4b08      	ldr	r3, [pc, #32]	; (20a8 <leap_year+0x38>)
    2088:	fba3 2300 	umull	r2, r3, r3, r0
    208c:	09db      	lsrs	r3, r3, #7
    208e:	f44f 72c8 	mov.w	r2, #400	; 0x190
    2092:	fb02 0013 	mls	r0, r2, r3, r0
    2096:	fab0 f080 	clz	r0, r0
    209a:	0940      	lsrs	r0, r0, #5
    209c:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    209e:	2000      	movs	r0, #0
    20a0:	4770      	bx	lr
		return 1;
    20a2:	2001      	movs	r0, #1
}
    20a4:	4770      	bx	lr
    20a6:	bf00      	nop
    20a8:	51eb851f 	.word	0x51eb851f

000020ac <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    20ac:	4b07      	ldr	r3, [pc, #28]	; (20cc <sec_per_month+0x20>)
    20ae:	5c5a      	ldrb	r2, [r3, r1]
    20b0:	4b07      	ldr	r3, [pc, #28]	; (20d0 <sec_per_month+0x24>)
    20b2:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    20b6:	2902      	cmp	r1, #2
    20b8:	d001      	beq.n	20be <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    20ba:	4618      	mov	r0, r3
    20bc:	4770      	bx	lr
	if (month==2 && leap){
    20be:	2800      	cmp	r0, #0
    20c0:	d0fb      	beq.n	20ba <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    20c2:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    20c6:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    20ca:	e7f6      	b.n	20ba <sec_per_month+0xe>
    20cc:	00003bac 	.word	0x00003bac
    20d0:	00015180 	.word	0x00015180

000020d4 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    20d4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    20d8:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    20da:	4b37      	ldr	r3, [pc, #220]	; (21b8 <get_date_time+0xe4>)
    20dc:	699a      	ldr	r2, [r3, #24]
    20de:	69dc      	ldr	r4, [r3, #28]
    20e0:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    20e4:	f240 70b2 	movw	r0, #1970	; 0x7b2
    20e8:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    20ea:	f7ff ffc1 	bl	2070 <leap_year>
    20ee:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20f0:	4d32      	ldr	r5, [pc, #200]	; (21bc <get_date_time+0xe8>)
    20f2:	4f33      	ldr	r7, [pc, #204]	; (21c0 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    20f4:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 21d4 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20f8:	e00e      	b.n	2118 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    20fa:	4444      	add	r4, r8
    20fc:	e005      	b.n	210a <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20fe:	42ac      	cmp	r4, r5
    2100:	d90f      	bls.n	2122 <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    2102:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    2106:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    210a:	8930      	ldrh	r0, [r6, #8]
    210c:	3001      	adds	r0, #1
    210e:	b280      	uxth	r0, r0
    2110:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    2112:	f7ff ffad 	bl	2070 <leap_year>
    2116:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2118:	f1b9 0f00 	cmp.w	r9, #0
    211c:	d1ef      	bne.n	20fe <get_date_time+0x2a>
    211e:	42bc      	cmp	r4, r7
    2120:	d8eb      	bhi.n	20fa <get_date_time+0x26>
	}//while
	dt->month=1;
    2122:	8873      	ldrh	r3, [r6, #2]
    2124:	2201      	movs	r2, #1
    2126:	f362 1389 	bfi	r3, r2, #6, #4
    212a:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    212c:	f362 0345 	bfi	r3, r2, #1, #5
    2130:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    2132:	6833      	ldr	r3, [r6, #0]
    2134:	f36f 3310 	bfc	r3, #12, #5
    2138:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    213a:	f36f 138b 	bfc	r3, #6, #6
    213e:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    2140:	f36f 0305 	bfc	r3, #0, #6
    2144:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2146:	e005      	b.n	2154 <get_date_time+0x80>
		dt->month++;
    2148:	3501      	adds	r5, #1
    214a:	8873      	ldrh	r3, [r6, #2]
    214c:	f365 1389 	bfi	r3, r5, #6, #4
    2150:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    2152:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2154:	8875      	ldrh	r5, [r6, #2]
    2156:	f3c5 1583 	ubfx	r5, r5, #6, #4
    215a:	4629      	mov	r1, r5
    215c:	4648      	mov	r0, r9
    215e:	f7ff ffa5 	bl	20ac <sec_per_month>
    2162:	4284      	cmp	r4, r0
    2164:	d8f0      	bhi.n	2148 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    2166:	4a17      	ldr	r2, [pc, #92]	; (21c4 <get_date_time+0xf0>)
    2168:	fba2 3204 	umull	r3, r2, r2, r4
    216c:	0c12      	lsrs	r2, r2, #16
    216e:	1c51      	adds	r1, r2, #1
    2170:	78b3      	ldrb	r3, [r6, #2]
    2172:	f361 0345 	bfi	r3, r1, #1, #5
    2176:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    2178:	4b13      	ldr	r3, [pc, #76]	; (21c8 <get_date_time+0xf4>)
    217a:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    217e:	4c13      	ldr	r4, [pc, #76]	; (21cc <get_date_time+0xf8>)
    2180:	fba4 3402 	umull	r3, r4, r4, r2
    2184:	0ae4      	lsrs	r4, r4, #11
    2186:	6833      	ldr	r3, [r6, #0]
    2188:	f364 3310 	bfi	r3, r4, #12, #5
    218c:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    218e:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2192:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    2196:	4a0e      	ldr	r2, [pc, #56]	; (21d0 <get_date_time+0xfc>)
    2198:	fba2 1204 	umull	r1, r2, r2, r4
    219c:	0952      	lsrs	r2, r2, #5
    219e:	f362 138b 	bfi	r3, r2, #6, #6
    21a2:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    21a4:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    21a8:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    21ac:	f364 0305 	bfi	r3, r4, #0, #6
    21b0:	7033      	strb	r3, [r6, #0]
    21b2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    21b6:	bf00      	nop
    21b8:	40002800 	.word	0x40002800
    21bc:	01e284ff 	.word	0x01e284ff
    21c0:	01e1337f 	.word	0x01e1337f
    21c4:	c22e4507 	.word	0xc22e4507
    21c8:	00015180 	.word	0x00015180
    21cc:	91a2b3c5 	.word	0x91a2b3c5
    21d0:	88888889 	.word	0x88888889
    21d4:	fe1ecc80 	.word	0xfe1ecc80

000021d8 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    21d8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    21dc:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    21de:	8903      	ldrh	r3, [r0, #8]
    21e0:	f240 72b1 	movw	r2, #1969	; 0x7b1
    21e4:	4293      	cmp	r3, r2
    21e6:	d857      	bhi.n	2298 <set_date_time+0xc0>
    21e8:	f240 70b2 	movw	r0, #1970	; 0x7b2
    21ec:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    21f0:	f7ff ff3e 	bl	2070 <leap_year>
    21f4:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    21f6:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    21f8:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    21fc:	f3c6 1683 	ubfx	r6, r6, #6, #4
    2200:	2e01      	cmp	r6, #1
    2202:	d908      	bls.n	2216 <set_date_time+0x3e>
    2204:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    2206:	4629      	mov	r1, r5
    2208:	4638      	mov	r0, r7
    220a:	f7ff ff4f 	bl	20ac <sec_per_month>
    220e:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    2210:	3501      	adds	r5, #1
    2212:	42b5      	cmp	r5, r6
    2214:	d1f7      	bne.n	2206 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    2216:	f8d8 2000 	ldr.w	r2, [r8]
    221a:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    221e:	f8b8 2000 	ldrh.w	r2, [r8]
    2222:	f3c2 1285 	ubfx	r2, r2, #6, #6
    2226:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    222a:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    222c:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2230:	fb01 2203 	mla	r2, r1, r3, r2
    2234:	f898 3000 	ldrb.w	r3, [r8]
    2238:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    223c:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    223e:	f898 3002 	ldrb.w	r3, [r8, #2]
    2242:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2246:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2248:	4928      	ldr	r1, [pc, #160]	; (22ec <set_date_time+0x114>)
    224a:	fb01 2303 	mla	r3, r1, r3, r2
    224e:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2250:	4a27      	ldr	r2, [pc, #156]	; (22f0 <set_date_time+0x118>)
    2252:	69d3      	ldr	r3, [r2, #28]
    2254:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2258:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    225a:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    225e:	6813      	ldr	r3, [r2, #0]
    2260:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2264:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2266:	4b23      	ldr	r3, [pc, #140]	; (22f4 <set_date_time+0x11c>)
    2268:	685a      	ldr	r2, [r3, #4]
    226a:	f042 0210 	orr.w	r2, r2, #16
    226e:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    2270:	0c22      	lsrs	r2, r4, #16
    2272:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    2274:	b2a4      	uxth	r4, r4
    2276:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2278:	685a      	ldr	r2, [r3, #4]
    227a:	f022 0210 	bic.w	r2, r2, #16
    227e:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    2280:	461a      	mov	r2, r3
    2282:	6853      	ldr	r3, [r2, #4]
    2284:	f013 0f20 	tst.w	r3, #32
    2288:	d0fb      	beq.n	2282 <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    228a:	4a1b      	ldr	r2, [pc, #108]	; (22f8 <set_date_time+0x120>)
    228c:	6813      	ldr	r3, [r2, #0]
    228e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2292:	6013      	str	r3, [r2, #0]
    2294:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    2298:	f640 023a 	movw	r2, #2106	; 0x83a
    229c:	4293      	cmp	r3, r2
    229e:	d90c      	bls.n	22ba <set_date_time+0xe2>
    22a0:	4616      	mov	r6, r2
    22a2:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    22a6:	4610      	mov	r0, r2
    22a8:	f7ff fee2 	bl	2070 <leap_year>
    22ac:	4607      	mov	r7, r0
    22ae:	2400      	movs	r4, #0
    22b0:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    22b4:	f8df 9044 	ldr.w	r9, [pc, #68]	; 22fc <set_date_time+0x124>
    22b8:	e00e      	b.n	22d8 <set_date_time+0x100>
	leap=leap_year(dt->year);
    22ba:	8906      	ldrh	r6, [r0, #8]
    22bc:	4630      	mov	r0, r6
    22be:	f7ff fed7 	bl	2070 <leap_year>
    22c2:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    22c4:	f240 73b2 	movw	r3, #1970	; 0x7b2
    22c8:	429e      	cmp	r6, r3
    22ca:	d8f0      	bhi.n	22ae <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    22cc:	2400      	movs	r4, #0
    22ce:	e793      	b.n	21f8 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    22d0:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    22d2:	3501      	adds	r5, #1
    22d4:	42b5      	cmp	r5, r6
    22d6:	d28f      	bcs.n	21f8 <set_date_time+0x20>
		if (leap_year(i)){
    22d8:	4628      	mov	r0, r5
    22da:	f7ff fec9 	bl	2070 <leap_year>
    22de:	2800      	cmp	r0, #0
    22e0:	d0f6      	beq.n	22d0 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    22e2:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    22e6:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    22ea:	e7f2      	b.n	22d2 <set_date_time+0xfa>
    22ec:	00015180 	.word	0x00015180
    22f0:	40021000 	.word	0x40021000
    22f4:	40002800 	.word	0x40002800
    22f8:	40007000 	.word	0x40007000
    22fc:	01e13380 	.word	0x01e13380

00002300 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    2300:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    2302:	4b35      	ldr	r3, [pc, #212]	; (23d8 <rtc_init+0xd8>)
    2304:	685a      	ldr	r2, [r3, #4]
    2306:	f64a 2355 	movw	r3, #43605	; 0xaa55
    230a:	429a      	cmp	r2, r3
    230c:	d05c      	beq.n	23c8 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    230e:	4b33      	ldr	r3, [pc, #204]	; (23dc <rtc_init+0xdc>)
    2310:	69da      	ldr	r2, [r3, #28]
    2312:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2316:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2318:	4c31      	ldr	r4, [pc, #196]	; (23e0 <rtc_init+0xe0>)
    231a:	6822      	ldr	r2, [r4, #0]
    231c:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2320:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    2322:	6a1a      	ldr	r2, [r3, #32]
    2324:	f042 0201 	orr.w	r2, r2, #1
    2328:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    232a:	461a      	mov	r2, r3
    232c:	6a13      	ldr	r3, [r2, #32]
    232e:	f013 0f02 	tst.w	r3, #2
    2332:	d0fb      	beq.n	232c <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2334:	4a29      	ldr	r2, [pc, #164]	; (23dc <rtc_init+0xdc>)
    2336:	6a13      	ldr	r3, [r2, #32]
    2338:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    233c:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    233e:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2342:	6853      	ldr	r3, [r2, #4]
    2344:	f013 0f08 	tst.w	r3, #8
    2348:	d0fb      	beq.n	2342 <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    234a:	4a26      	ldr	r2, [pc, #152]	; (23e4 <rtc_init+0xe4>)
    234c:	6853      	ldr	r3, [r2, #4]
    234e:	f013 0f20 	tst.w	r3, #32
    2352:	d0fb      	beq.n	234c <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2354:	4a23      	ldr	r2, [pc, #140]	; (23e4 <rtc_init+0xe4>)
    2356:	6853      	ldr	r3, [r2, #4]
    2358:	f043 0310 	orr.w	r3, r3, #16
    235c:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    235e:	6853      	ldr	r3, [r2, #4]
    2360:	f013 0f20 	tst.w	r3, #32
    2364:	d0fb      	beq.n	235e <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    2366:	4a1f      	ldr	r2, [pc, #124]	; (23e4 <rtc_init+0xe4>)
    2368:	6813      	ldr	r3, [r2, #0]
    236a:	4319      	orrs	r1, r3
    236c:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    236e:	6853      	ldr	r3, [r2, #4]
    2370:	f013 0f20 	tst.w	r3, #32
    2374:	d0fb      	beq.n	236e <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    2376:	03c2      	lsls	r2, r0, #15
    2378:	481b      	ldr	r0, [pc, #108]	; (23e8 <rtc_init+0xe8>)
    237a:	fba0 3202 	umull	r3, r2, r0, r2
    237e:	0992      	lsrs	r2, r2, #6
    2380:	3a01      	subs	r2, #1
    2382:	b291      	uxth	r1, r2
    2384:	4b17      	ldr	r3, [pc, #92]	; (23e4 <rtc_init+0xe4>)
    2386:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    2388:	4619      	mov	r1, r3
    238a:	684b      	ldr	r3, [r1, #4]
    238c:	f013 0f20 	tst.w	r3, #32
    2390:	d0fb      	beq.n	238a <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    2392:	f3c2 4203 	ubfx	r2, r2, #16, #4
    2396:	4b13      	ldr	r3, [pc, #76]	; (23e4 <rtc_init+0xe4>)
    2398:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    239a:	461a      	mov	r2, r3
    239c:	6853      	ldr	r3, [r2, #4]
    239e:	f013 0f20 	tst.w	r3, #32
    23a2:	d0fb      	beq.n	239c <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    23a4:	f64a 2255 	movw	r2, #43605	; 0xaa55
    23a8:	4b0b      	ldr	r3, [pc, #44]	; (23d8 <rtc_init+0xd8>)
    23aa:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    23ac:	4a0d      	ldr	r2, [pc, #52]	; (23e4 <rtc_init+0xe4>)
    23ae:	6853      	ldr	r3, [r2, #4]
    23b0:	f023 0310 	bic.w	r3, r3, #16
    23b4:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    23b6:	6853      	ldr	r3, [r2, #4]
    23b8:	f013 0f20 	tst.w	r3, #32
    23bc:	d0fb      	beq.n	23b6 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    23be:	4a08      	ldr	r2, [pc, #32]	; (23e0 <rtc_init+0xe0>)
    23c0:	6813      	ldr	r3, [r2, #0]
    23c2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23c6:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    23c8:	210f      	movs	r1, #15
    23ca:	2003      	movs	r0, #3
    23cc:	f7ff fe38 	bl	2040 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    23d0:	2003      	movs	r0, #3
    23d2:	f7ff fdd5 	bl	1f80 <enable_interrupt>
    23d6:	bd10      	pop	{r4, pc}
    23d8:	40006c00 	.word	0x40006c00
    23dc:	40021000 	.word	0x40021000
    23e0:	40007000 	.word	0x40007000
    23e4:	40002800 	.word	0x40002800
    23e8:	10624dd3 	.word	0x10624dd3

000023ec <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    23ec:	4b06      	ldr	r3, [pc, #24]	; (2408 <reset_backup_domain+0x1c>)
    23ee:	69da      	ldr	r2, [r3, #28]
    23f0:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    23f4:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    23f6:	6a1a      	ldr	r2, [r3, #32]
    23f8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    23fc:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    23fe:	6a1a      	ldr	r2, [r3, #32]
    2400:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    2404:	621a      	str	r2, [r3, #32]
    2406:	4770      	bx	lr
    2408:	40021000 	.word	0x40021000

0000240c <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    240c:	4a27      	ldr	r2, [pc, #156]	; (24ac <rtc_clock_trim+0xa0>)
    240e:	69d3      	ldr	r3, [r2, #28]
    2410:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2414:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    2416:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    241a:	6853      	ldr	r3, [r2, #4]
    241c:	f013 0f08 	tst.w	r3, #8
    2420:	d0fb      	beq.n	241a <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2422:	4a23      	ldr	r2, [pc, #140]	; (24b0 <rtc_clock_trim+0xa4>)
    2424:	6813      	ldr	r3, [r2, #0]
    2426:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    242a:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    242c:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    2430:	6853      	ldr	r3, [r2, #4]
    2432:	f043 0310 	orr.w	r3, r3, #16
    2436:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2438:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    243c:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    243e:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2442:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2444:	b9b8      	cbnz	r0, 2476 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    2446:	2200      	movs	r2, #0
    2448:	4b1a      	ldr	r3, [pc, #104]	; (24b4 <rtc_clock_trim+0xa8>)
    244a:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    244c:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    2450:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2454:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2456:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2458:	4a17      	ldr	r2, [pc, #92]	; (24b8 <rtc_clock_trim+0xac>)
    245a:	6853      	ldr	r3, [r2, #4]
    245c:	f023 0310 	bic.w	r3, r3, #16
    2460:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    2462:	6853      	ldr	r3, [r2, #4]
    2464:	f013 0f20 	tst.w	r3, #32
    2468:	d0fb      	beq.n	2462 <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    246a:	4a11      	ldr	r2, [pc, #68]	; (24b0 <rtc_clock_trim+0xa4>)
    246c:	6813      	ldr	r3, [r2, #0]
    246e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2472:	6013      	str	r3, [r2, #0]
    2474:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    2476:	2800      	cmp	r0, #0
    2478:	dd06      	ble.n	2488 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    247a:	4b0e      	ldr	r3, [pc, #56]	; (24b4 <rtc_clock_trim+0xa8>)
    247c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    247e:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    2482:	4310      	orrs	r0, r2
    2484:	62d8      	str	r0, [r3, #44]	; 0x2c
    2486:	e7e7      	b.n	2458 <rtc_clock_trim+0x4c>
		trim=-trim;
    2488:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    248a:	2100      	movs	r1, #0
    248c:	4b09      	ldr	r3, [pc, #36]	; (24b4 <rtc_clock_trim+0xa8>)
    248e:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    2490:	f64f 73ff 	movw	r3, #65535	; 0xffff
    2494:	287f      	cmp	r0, #127	; 0x7f
    2496:	bfd4      	ite	le
    2498:	1a18      	suble	r0, r3, r0
    249a:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    249e:	f3c0 000e 	ubfx	r0, r0, #0, #15
    24a2:	4a05      	ldr	r2, [pc, #20]	; (24b8 <rtc_clock_trim+0xac>)
    24a4:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    24a6:	6091      	str	r1, [r2, #8]
    24a8:	e7d6      	b.n	2458 <rtc_clock_trim+0x4c>
    24aa:	bf00      	nop
    24ac:	40021000 	.word	0x40021000
    24b0:	40007000 	.word	0x40007000
    24b4:	40006c00 	.word	0x40006c00
    24b8:	40002800 	.word	0x40002800

000024bc <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    24bc:	4770      	bx	lr

000024be <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    24be:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    24c2:	4607      	mov	r7, r0
    24c4:	4688      	mov	r8, r1
    24c6:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    24c8:	2400      	movs	r4, #0
	i=0;
    24ca:	4626      	mov	r6, r4
	while (digit(date[i])){
    24cc:	e008      	b.n	24e0 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    24ce:	3601      	adds	r6, #1
    24d0:	3501      	adds	r5, #1
    24d2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    24d6:	f899 3000 	ldrb.w	r3, [r9]
    24da:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    24de:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    24e0:	46a9      	mov	r9, r5
    24e2:	7828      	ldrb	r0, [r5, #0]
    24e4:	f7fe fe9d 	bl	1222 <digit>
    24e8:	4682      	mov	sl, r0
    24ea:	2800      	cmp	r0, #0
    24ec:	d1ef      	bne.n	24ce <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    24ee:	2e03      	cmp	r6, #3
    24f0:	dd02      	ble.n	24f8 <str_to_date+0x3a>
    24f2:	782b      	ldrb	r3, [r5, #0]
    24f4:	2b2f      	cmp	r3, #47	; 0x2f
    24f6:	d002      	beq.n	24fe <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    24f8:	4650      	mov	r0, sl
    24fa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    24fe:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    2502:	3601      	adds	r6, #1
    2504:	19bd      	adds	r5, r7, r6
	n=0;
    2506:	4604      	mov	r4, r0
	while (digit(date[i])){
    2508:	e008      	b.n	251c <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    250a:	3601      	adds	r6, #1
    250c:	3501      	adds	r5, #1
    250e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2512:	f899 3000 	ldrb.w	r3, [r9]
    2516:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    251a:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    251c:	46a9      	mov	r9, r5
    251e:	7828      	ldrb	r0, [r5, #0]
    2520:	f7fe fe7f 	bl	1222 <digit>
    2524:	4682      	mov	sl, r0
    2526:	2800      	cmp	r0, #0
    2528:	d1ef      	bne.n	250a <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    252a:	2e06      	cmp	r6, #6
    252c:	dde4      	ble.n	24f8 <str_to_date+0x3a>
    252e:	782b      	ldrb	r3, [r5, #0]
    2530:	2b2f      	cmp	r3, #47	; 0x2f
    2532:	d1e1      	bne.n	24f8 <str_to_date+0x3a>
	dt->month=n;
    2534:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2538:	f364 1389 	bfi	r3, r4, #6, #4
    253c:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2540:	1c74      	adds	r4, r6, #1
    2542:	443e      	add	r6, r7
	while (digit(date[i])){
    2544:	e008      	b.n	2558 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    2546:	3401      	adds	r4, #1
    2548:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    254c:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2550:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2554:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2558:	7870      	ldrb	r0, [r6, #1]
    255a:	f7fe fe62 	bl	1222 <digit>
    255e:	2800      	cmp	r0, #0
    2560:	d1f1      	bne.n	2546 <str_to_date+0x88>
	if (i<10) return 0;
    2562:	2c09      	cmp	r4, #9
    2564:	dd08      	ble.n	2578 <str_to_date+0xba>
	dt->day=n;
    2566:	f898 3002 	ldrb.w	r3, [r8, #2]
    256a:	f36a 0345 	bfi	r3, sl, #1, #5
    256e:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    2572:	f04f 0a01 	mov.w	sl, #1
    2576:	e7bf      	b.n	24f8 <str_to_date+0x3a>
	if (i<10) return 0;
    2578:	4682      	mov	sl, r0
    257a:	e7bd      	b.n	24f8 <str_to_date+0x3a>

0000257c <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    257c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2580:	4607      	mov	r7, r0
    2582:	4688      	mov	r8, r1
    2584:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    2586:	2400      	movs	r4, #0
	i=0;
    2588:	4626      	mov	r6, r4
	while (digit(time[i])){
    258a:	e00a      	b.n	25a2 <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    258c:	3601      	adds	r6, #1
    258e:	3501      	adds	r5, #1
    2590:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2594:	0064      	lsls	r4, r4, #1
    2596:	3c30      	subs	r4, #48	; 0x30
    2598:	f899 3000 	ldrb.w	r3, [r9]
    259c:	441c      	add	r4, r3
    259e:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    25a2:	46a9      	mov	r9, r5
    25a4:	7828      	ldrb	r0, [r5, #0]
    25a6:	f7fe fe3c 	bl	1222 <digit>
    25aa:	4603      	mov	r3, r0
    25ac:	2800      	cmp	r0, #0
    25ae:	d1ed      	bne.n	258c <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    25b0:	2c17      	cmp	r4, #23
    25b2:	d802      	bhi.n	25ba <str_to_time+0x3e>
    25b4:	782a      	ldrb	r2, [r5, #0]
    25b6:	2a3a      	cmp	r2, #58	; 0x3a
    25b8:	d002      	beq.n	25c0 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    25ba:	4618      	mov	r0, r3
    25bc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    25c0:	f8d8 3000 	ldr.w	r3, [r8]
    25c4:	f364 3310 	bfi	r3, r4, #12, #5
    25c8:	f8c8 3000 	str.w	r3, [r8]
	i++;
    25cc:	3601      	adds	r6, #1
    25ce:	19bd      	adds	r5, r7, r6
	n=0;
    25d0:	2400      	movs	r4, #0
	while (digit(time[i])){
    25d2:	e00a      	b.n	25ea <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    25d4:	3601      	adds	r6, #1
    25d6:	3501      	adds	r5, #1
    25d8:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25dc:	0064      	lsls	r4, r4, #1
    25de:	3c30      	subs	r4, #48	; 0x30
    25e0:	f899 3000 	ldrb.w	r3, [r9]
    25e4:	441c      	add	r4, r3
    25e6:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    25ea:	46a9      	mov	r9, r5
    25ec:	7828      	ldrb	r0, [r5, #0]
    25ee:	f7fe fe18 	bl	1222 <digit>
    25f2:	4603      	mov	r3, r0
    25f4:	2800      	cmp	r0, #0
    25f6:	d1ed      	bne.n	25d4 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    25f8:	2c3b      	cmp	r4, #59	; 0x3b
    25fa:	d8de      	bhi.n	25ba <str_to_time+0x3e>
    25fc:	782a      	ldrb	r2, [r5, #0]
    25fe:	2a3a      	cmp	r2, #58	; 0x3a
    2600:	d1db      	bne.n	25ba <str_to_time+0x3e>
	dt->minute=n;
    2602:	f8b8 3000 	ldrh.w	r3, [r8]
    2606:	f364 138b 	bfi	r3, r4, #6, #6
    260a:	f8a8 3000 	strh.w	r3, [r8]
    260e:	443e      	add	r6, r7
	n=0;
    2610:	2400      	movs	r4, #0
	while (digit(time[i])){
    2612:	e008      	b.n	2626 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2614:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2618:	0064      	lsls	r4, r4, #1
    261a:	3c30      	subs	r4, #48	; 0x30
    261c:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2620:	441c      	add	r4, r3
    2622:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2626:	7870      	ldrb	r0, [r6, #1]
    2628:	f7fe fdfb 	bl	1222 <digit>
    262c:	4603      	mov	r3, r0
    262e:	2800      	cmp	r0, #0
    2630:	d1f0      	bne.n	2614 <str_to_time+0x98>
	if (n>59) return 0;
    2632:	2c3b      	cmp	r4, #59	; 0x3b
    2634:	d8c1      	bhi.n	25ba <str_to_time+0x3e>
	dt->second=n;
    2636:	f898 3000 	ldrb.w	r3, [r8]
    263a:	f364 0305 	bfi	r3, r4, #0, #6
    263e:	f888 3000 	strb.w	r3, [r8]
	return 1;
    2642:	2301      	movs	r3, #1
    2644:	e7b9      	b.n	25ba <str_to_time+0x3e>

00002646 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    2646:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2648:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    264a:	4b23      	ldr	r3, [pc, #140]	; (26d8 <date_str+0x92>)
    264c:	fba3 4302 	umull	r4, r3, r3, r2
    2650:	099b      	lsrs	r3, r3, #6
    2652:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2656:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2658:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    265c:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2660:	4b1e      	ldr	r3, [pc, #120]	; (26dc <date_str+0x96>)
    2662:	fba3 4302 	umull	r4, r3, r3, r2
    2666:	095b      	lsrs	r3, r3, #5
    2668:	f103 0430 	add.w	r4, r3, #48	; 0x30
    266c:	704c      	strb	r4, [r1, #1]
	n%=100;
    266e:	2464      	movs	r4, #100	; 0x64
    2670:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2674:	4a1a      	ldr	r2, [pc, #104]	; (26e0 <date_str+0x9a>)
    2676:	fba2 5403 	umull	r5, r4, r2, r3
    267a:	08e4      	lsrs	r4, r4, #3
    267c:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2680:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    2682:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2686:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    268a:	3330      	adds	r3, #48	; 0x30
    268c:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    268e:	262f      	movs	r6, #47	; 0x2f
    2690:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    2692:	8843      	ldrh	r3, [r0, #2]
    2694:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    2698:	fba2 5403 	umull	r5, r4, r2, r3
    269c:	08e4      	lsrs	r4, r4, #3
    269e:	f104 0530 	add.w	r5, r4, #48	; 0x30
    26a2:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    26a4:	00a5      	lsls	r5, r4, #2
    26a6:	442c      	add	r4, r5
    26a8:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    26ac:	3330      	adds	r3, #48	; 0x30
    26ae:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    26b0:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    26b2:	7880      	ldrb	r0, [r0, #2]
    26b4:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    26b8:	fba2 3200 	umull	r3, r2, r2, r0
    26bc:	08d3      	lsrs	r3, r2, #3
    26be:	f103 0230 	add.w	r2, r3, #48	; 0x30
    26c2:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    26c4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    26c8:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    26cc:	3330      	adds	r3, #48	; 0x30
    26ce:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    26d0:	2300      	movs	r3, #0
    26d2:	728b      	strb	r3, [r1, #10]

}
    26d4:	bc70      	pop	{r4, r5, r6}
    26d6:	4770      	bx	lr
    26d8:	10624dd3 	.word	0x10624dd3
    26dc:	51eb851f 	.word	0x51eb851f
    26e0:	cccccccd 	.word	0xcccccccd

000026e4 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    26e4:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    26e6:	6802      	ldr	r2, [r0, #0]
    26e8:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    26ec:	4b18      	ldr	r3, [pc, #96]	; (2750 <time_str+0x6c>)
    26ee:	fba3 5402 	umull	r5, r4, r3, r2
    26f2:	08e4      	lsrs	r4, r4, #3
    26f4:	f104 0530 	add.w	r5, r4, #48	; 0x30
    26f8:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    26fa:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26fe:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2702:	3230      	adds	r2, #48	; 0x30
    2704:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    2706:	253a      	movs	r5, #58	; 0x3a
    2708:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    270a:	8802      	ldrh	r2, [r0, #0]
    270c:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2710:	fba3 6402 	umull	r6, r4, r3, r2
    2714:	08e4      	lsrs	r4, r4, #3
    2716:	f104 0630 	add.w	r6, r4, #48	; 0x30
    271a:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    271c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2720:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2724:	3230      	adds	r2, #48	; 0x30
    2726:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2728:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    272a:	7802      	ldrb	r2, [r0, #0]
    272c:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    2730:	fba3 0302 	umull	r0, r3, r3, r2
    2734:	08db      	lsrs	r3, r3, #3
    2736:	f103 0030 	add.w	r0, r3, #48	; 0x30
    273a:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    273c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2740:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2744:	3330      	adds	r3, #48	; 0x30
    2746:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2748:	2300      	movs	r3, #0
    274a:	720b      	strb	r3, [r1, #8]
}
    274c:	bc70      	pop	{r4, r5, r6}
    274e:	4770      	bx	lr
    2750:	cccccccd 	.word	0xcccccccd

00002754 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2754:	b500      	push	{lr}
    2756:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2758:	a801      	add	r0, sp, #4
    275a:	f7ff fcbb 	bl	20d4 <get_date_time>
	t.fields.second=dt.second/2;
    275e:	f89d 3004 	ldrb.w	r3, [sp, #4]
    2762:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2766:	2000      	movs	r0, #0
    2768:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    276c:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2770:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2774:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2778:	9b01      	ldr	r3, [sp, #4]
    277a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    277e:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    2782:	f89d 3006 	ldrb.w	r3, [sp, #6]
    2786:	f3c3 0344 	ubfx	r3, r3, #1, #5
    278a:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    278e:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    2792:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2796:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    279a:	f89d 300c 	ldrb.w	r3, [sp, #12]
    279e:	3344      	adds	r3, #68	; 0x44
    27a0:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    27a4:	b005      	add	sp, #20
    27a6:	f85d fb04 	ldr.w	pc, [sp], #4

000027aa <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    27aa:	4b07      	ldr	r3, [pc, #28]	; (27c8 <RTC_handler+0x1e>)
    27ac:	685b      	ldr	r3, [r3, #4]
    27ae:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    27b2:	bf1c      	itt	ne
    27b4:	4b04      	ldrne	r3, [pc, #16]	; (27c8 <RTC_handler+0x1e>)
    27b6:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    27b8:	4b03      	ldr	r3, [pc, #12]	; (27c8 <RTC_handler+0x1e>)
    27ba:	685b      	ldr	r3, [r3, #4]
    27bc:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    27c0:	bf1c      	itt	ne
    27c2:	4b01      	ldrne	r3, [pc, #4]	; (27c8 <RTC_handler+0x1e>)
    27c4:	685b      	ldrne	r3, [r3, #4]
    27c6:	4770      	bx	lr
    27c8:	40002800 	.word	0x40002800

000027cc <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    27cc:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    27ce:	4b12      	ldr	r3, [pc, #72]	; (2818 <sound_init+0x4c>)
    27d0:	685a      	ldr	r2, [r3, #4]
    27d2:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    27d6:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    27d8:	685a      	ldr	r2, [r3, #4]
    27da:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    27de:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    27e0:	220a      	movs	r2, #10
    27e2:	4611      	mov	r1, r2
    27e4:	480d      	ldr	r0, [pc, #52]	; (281c <sound_init+0x50>)
    27e6:	f7fe fe47 	bl	1478 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    27ea:	4a0d      	ldr	r2, [pc, #52]	; (2820 <sound_init+0x54>)
    27ec:	69d3      	ldr	r3, [r2, #28]
    27ee:	f043 0301 	orr.w	r3, r3, #1
    27f2:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    27f4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    27f8:	2278      	movs	r2, #120	; 0x78
    27fa:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    27fc:	f44f 7280 	mov.w	r2, #256	; 0x100
    2800:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    2802:	2209      	movs	r2, #9
    2804:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    2806:	2100      	movs	r1, #0
    2808:	201c      	movs	r0, #28
    280a:	f7ff fc19 	bl	2040 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    280e:	201c      	movs	r0, #28
    2810:	f7ff fbb6 	bl	1f80 <enable_interrupt>
    2814:	bd08      	pop	{r3, pc}
    2816:	bf00      	nop
    2818:	40010000 	.word	0x40010000
    281c:	40010c00 	.word	0x40010c00
    2820:	40021000 	.word	0x40021000

00002824 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2824:	4b07      	ldr	r3, [pc, #28]	; (2844 <tone+0x20>)
    2826:	fbb3 f0f0 	udiv	r0, r3, r0
    282a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    282e:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    2830:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2832:	0852      	lsrs	r2, r2, #1
    2834:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    2836:	681a      	ldr	r2, [r3, #0]
    2838:	f042 0201 	orr.w	r2, r2, #1
    283c:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    283e:	4b02      	ldr	r3, [pc, #8]	; (2848 <tone+0x24>)
    2840:	8019      	strh	r1, [r3, #0]
    2842:	4770      	bx	lr
    2844:	006d3d32 	.word	0x006d3d32
    2848:	20004e38 	.word	0x20004e38

0000284c <beep>:
}

void beep(uint16_t duration){
    284c:	b508      	push	{r3, lr}
    tone(1000,duration);
    284e:	4601      	mov	r1, r0
    2850:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2854:	f7ff ffe6 	bl	2824 <tone>
    2858:	bd08      	pop	{r3, pc}

0000285a <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    285a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    285e:	681a      	ldr	r2, [r3, #0]
    2860:	f022 0201 	bic.w	r2, r2, #1
    2864:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    2866:	68da      	ldr	r2, [r3, #12]
    2868:	f022 0201 	bic.w	r2, r2, #1
    286c:	60da      	str	r2, [r3, #12]
    286e:	4770      	bx	lr

00002870 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    2870:	b510      	push	{r4, lr}
    2872:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    2874:	b289      	uxth	r1, r1
    2876:	4b06      	ldr	r3, [pc, #24]	; (2890 <key_tone+0x20>)
    2878:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    287c:	f7ff ffd2 	bl	2824 <tone>
    if (wait_end) while (sound_timer);
    2880:	b124      	cbz	r4, 288c <key_tone+0x1c>
    2882:	4a04      	ldr	r2, [pc, #16]	; (2894 <key_tone+0x24>)
    2884:	8813      	ldrh	r3, [r2, #0]
    2886:	b29b      	uxth	r3, r3
    2888:	2b00      	cmp	r3, #0
    288a:	d1fb      	bne.n	2884 <key_tone+0x14>
    288c:	bd10      	pop	{r4, pc}
    288e:	bf00      	nop
    2890:	00003bbc 	.word	0x00003bbc
    2894:	20004e38 	.word	0x20004e38

00002898 <noise>:
}

// produit un bruit 
void noise(int length){
    2898:	b510      	push	{r4, lr}
    289a:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    289c:	4b07      	ldr	r3, [pc, #28]	; (28bc <noise+0x24>)
    289e:	6818      	ldr	r0, [r3, #0]
    28a0:	f7fd fda2 	bl	3e8 <srand>
    tone(6000,length);
    28a4:	b2a1      	uxth	r1, r4
    28a6:	f241 7070 	movw	r0, #6000	; 0x1770
    28aa:	f7ff ffbb 	bl	2824 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    28ae:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28b2:	68d3      	ldr	r3, [r2, #12]
    28b4:	f043 0301 	orr.w	r3, r3, #1
    28b8:	60d3      	str	r3, [r2, #12]
    28ba:	bd10      	pop	{r4, pc}
    28bc:	20004e34 	.word	0x20004e34

000028c0 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    28c0:	4668      	mov	r0, sp
    28c2:	f020 0107 	bic.w	r1, r0, #7
    28c6:	468d      	mov	sp, r1
    28c8:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    28ca:	f7fd fd93 	bl	3f4 <rand>
    28ce:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    28d2:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28d6:	6a13      	ldr	r3, [r2, #32]
    28d8:	bf14      	ite	ne
    28da:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    28de:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    28e2:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    28e4:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28e8:	6913      	ldr	r3, [r2, #16]
    28ea:	f023 0301 	bic.w	r3, r3, #1
    28ee:	6113      	str	r3, [r2, #16]
}
    28f0:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    28f4:	4685      	mov	sp, r0
    28f6:	4770      	bx	lr

000028f8 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    28f8:	6803      	ldr	r3, [r0, #0]
    28fa:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    28fe:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2900:	6803      	ldr	r3, [r0, #0]
    2902:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2906:	6001      	str	r1, [r0, #0]
    2908:	4770      	bx	lr

0000290a <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    290a:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    290c:	4a2f      	ldr	r2, [pc, #188]	; (29cc <spi_config_port+0xc2>)
    290e:	6993      	ldr	r3, [r2, #24]
    2910:	f043 0301 	orr.w	r3, r3, #1
    2914:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2916:	4b2e      	ldr	r3, [pc, #184]	; (29d0 <spi_config_port+0xc6>)
    2918:	4298      	cmp	r0, r3
    291a:	d01a      	beq.n	2952 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    291c:	4a2b      	ldr	r2, [pc, #172]	; (29cc <spi_config_port+0xc2>)
    291e:	6993      	ldr	r3, [r2, #24]
    2920:	f043 0308 	orr.w	r3, r3, #8
    2924:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2926:	4c2b      	ldr	r4, [pc, #172]	; (29d4 <spi_config_port+0xca>)
    2928:	2203      	movs	r2, #3
    292a:	2102      	movs	r1, #2
    292c:	4620      	mov	r0, r4
    292e:	f7fe fda3 	bl	1478 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2932:	220b      	movs	r2, #11
    2934:	210d      	movs	r1, #13
    2936:	4620      	mov	r0, r4
    2938:	f7fe fd9e 	bl	1478 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    293c:	2204      	movs	r2, #4
    293e:	210e      	movs	r1, #14
    2940:	4620      	mov	r0, r4
    2942:	f7fe fd99 	bl	1478 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2946:	220b      	movs	r2, #11
    2948:	210f      	movs	r1, #15
    294a:	4620      	mov	r0, r4
    294c:	f7fe fd94 	bl	1478 <config_pin>
    2950:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    2952:	b9c9      	cbnz	r1, 2988 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2954:	6993      	ldr	r3, [r2, #24]
    2956:	f043 0304 	orr.w	r3, r3, #4
    295a:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    295c:	4c1e      	ldr	r4, [pc, #120]	; (29d8 <spi_config_port+0xce>)
    295e:	2203      	movs	r2, #3
    2960:	2104      	movs	r1, #4
    2962:	4620      	mov	r0, r4
    2964:	f7fe fd88 	bl	1478 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2968:	220b      	movs	r2, #11
    296a:	2105      	movs	r1, #5
    296c:	4620      	mov	r0, r4
    296e:	f7fe fd83 	bl	1478 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2972:	2204      	movs	r2, #4
    2974:	2106      	movs	r1, #6
    2976:	4620      	mov	r0, r4
    2978:	f7fe fd7e 	bl	1478 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    297c:	220b      	movs	r2, #11
    297e:	2107      	movs	r1, #7
    2980:	4620      	mov	r0, r4
    2982:	f7fe fd79 	bl	1478 <config_pin>
    2986:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2988:	4a10      	ldr	r2, [pc, #64]	; (29cc <spi_config_port+0xc2>)
    298a:	6993      	ldr	r3, [r2, #24]
    298c:	f043 030d 	orr.w	r3, r3, #13
    2990:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2992:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    2996:	6853      	ldr	r3, [r2, #4]
    2998:	f043 0301 	orr.w	r3, r3, #1
    299c:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    299e:	2203      	movs	r2, #3
    29a0:	210f      	movs	r1, #15
    29a2:	480d      	ldr	r0, [pc, #52]	; (29d8 <spi_config_port+0xce>)
    29a4:	f7fe fd68 	bl	1478 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    29a8:	4c0a      	ldr	r4, [pc, #40]	; (29d4 <spi_config_port+0xca>)
    29aa:	220b      	movs	r2, #11
    29ac:	2103      	movs	r1, #3
    29ae:	4620      	mov	r0, r4
    29b0:	f7fe fd62 	bl	1478 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    29b4:	2204      	movs	r2, #4
    29b6:	4611      	mov	r1, r2
    29b8:	4620      	mov	r0, r4
    29ba:	f7fe fd5d 	bl	1478 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    29be:	220b      	movs	r2, #11
    29c0:	2105      	movs	r1, #5
    29c2:	4620      	mov	r0, r4
    29c4:	f7fe fd58 	bl	1478 <config_pin>
    29c8:	bd10      	pop	{r4, pc}
    29ca:	bf00      	nop
    29cc:	40021000 	.word	0x40021000
    29d0:	40013000 	.word	0x40013000
    29d4:	40010c00 	.word	0x40010c00
    29d8:	40010800 	.word	0x40010800

000029dc <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    29dc:	b570      	push	{r4, r5, r6, lr}
    29de:	4604      	mov	r4, r0
    29e0:	460d      	mov	r5, r1
    29e2:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    29e4:	4619      	mov	r1, r3
    29e6:	f7ff ff90 	bl	290a <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    29ea:	4b0c      	ldr	r3, [pc, #48]	; (2a1c <spi_init+0x40>)
    29ec:	429c      	cmp	r4, r3
    29ee:	d00e      	beq.n	2a0e <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    29f0:	4a0b      	ldr	r2, [pc, #44]	; (2a20 <spi_init+0x44>)
    29f2:	69d3      	ldr	r3, [r2, #28]
    29f4:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    29f8:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    29fa:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    29fc:	4629      	mov	r1, r5
    29fe:	4620      	mov	r0, r4
    2a00:	f7ff ff7a 	bl	28f8 <spi_baudrate>
	_spi_enable(channel);
    2a04:	6823      	ldr	r3, [r4, #0]
    2a06:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2a0a:	6023      	str	r3, [r4, #0]
    2a0c:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2a0e:	4a04      	ldr	r2, [pc, #16]	; (2a20 <spi_init+0x44>)
    2a10:	6993      	ldr	r3, [r2, #24]
    2a12:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2a16:	6193      	str	r3, [r2, #24]
    2a18:	e7ef      	b.n	29fa <spi_init+0x1e>
    2a1a:	bf00      	nop
    2a1c:	40013000 	.word	0x40013000
    2a20:	40021000 	.word	0x40021000

00002a24 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2a24:	6883      	ldr	r3, [r0, #8]
    2a26:	f013 0f02 	tst.w	r3, #2
    2a2a:	d0fb      	beq.n	2a24 <spi_send>
	channel->DR=b;
    2a2c:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a2e:	6883      	ldr	r3, [r0, #8]
    2a30:	f013 0f01 	tst.w	r3, #1
    2a34:	d0fb      	beq.n	2a2e <spi_send+0xa>
	return (uint8_t)channel->DR;
    2a36:	68c0      	ldr	r0, [r0, #12]
}
    2a38:	b2c0      	uxtb	r0, r0
    2a3a:	4770      	bx	lr

00002a3c <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2a3c:	6883      	ldr	r3, [r0, #8]
    2a3e:	f013 0f02 	tst.w	r3, #2
    2a42:	d0fb      	beq.n	2a3c <spi_receive>
	channel->DR=255;
    2a44:	23ff      	movs	r3, #255	; 0xff
    2a46:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a48:	6883      	ldr	r3, [r0, #8]
    2a4a:	f013 0f01 	tst.w	r3, #1
    2a4e:	d0fb      	beq.n	2a48 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2a50:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2a52:	b2c0      	uxtb	r0, r0
    2a54:	4770      	bx	lr

00002a56 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2a56:	b14a      	cbz	r2, 2a6c <spi_send_block+0x16>
    2a58:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2a5a:	f811 3b01 	ldrb.w	r3, [r1], #1
    2a5e:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2a60:	6883      	ldr	r3, [r0, #8]
    2a62:	f013 0f02 	tst.w	r3, #2
    2a66:	d0fb      	beq.n	2a60 <spi_send_block+0xa>
	while (count){
    2a68:	428a      	cmp	r2, r1
    2a6a:	d1f6      	bne.n	2a5a <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2a6c:	6883      	ldr	r3, [r0, #8]
    2a6e:	f013 0f80 	tst.w	r3, #128	; 0x80
    2a72:	d1fb      	bne.n	2a6c <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2a74:	68c3      	ldr	r3, [r0, #12]
    2a76:	4770      	bx	lr

00002a78 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2a78:	b16a      	cbz	r2, 2a96 <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2a7a:	b410      	push	{r4}
    2a7c:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2a7e:	2400      	movs	r4, #0
    2a80:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2a82:	6883      	ldr	r3, [r0, #8]
    2a84:	f013 0f01 	tst.w	r3, #1
    2a88:	d0fb      	beq.n	2a82 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2a8a:	68c3      	ldr	r3, [r0, #12]
    2a8c:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2a90:	428a      	cmp	r2, r1
    2a92:	d1f5      	bne.n	2a80 <spi_receive_block+0x8>
		count--;
	}
}
    2a94:	bc10      	pop	{r4}
    2a96:	4770      	bx	lr

00002a98 <reset_mcu>:
	_reset_mcu();
    2a98:	4a01      	ldr	r2, [pc, #4]	; (2aa0 <reset_mcu+0x8>)
    2a9a:	4b02      	ldr	r3, [pc, #8]	; (2aa4 <reset_mcu+0xc>)
    2a9c:	601a      	str	r2, [r3, #0]
    2a9e:	bf00      	nop
    2aa0:	05fa0004 	.word	0x05fa0004
    2aa4:	e000ed0c 	.word	0xe000ed0c

00002aa8 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2aa8:	b508      	push	{r3, lr}
    2aaa:	460c      	mov	r4, r1
	print(msg);
    2aac:	f000 f966 	bl	2d7c <print>
	print("\nat address ");
    2ab0:	4813      	ldr	r0, [pc, #76]	; (2b00 <print_fault+0x58>)
    2ab2:	f000 f963 	bl	2d7c <print>
	if (adr) {
    2ab6:	b9ec      	cbnz	r4, 2af4 <print_fault+0x4c>
	put_char(CR);
    2ab8:	200d      	movs	r0, #13
    2aba:	f000 f8bf 	bl	2c3c <put_char>
	print("\nUFSR=");
    2abe:	4811      	ldr	r0, [pc, #68]	; (2b04 <print_fault+0x5c>)
    2ac0:	f000 f95c 	bl	2d7c <print>
	print_int(CFSR->fsr.usageFalt,16);
    2ac4:	4c10      	ldr	r4, [pc, #64]	; (2b08 <print_fault+0x60>)
    2ac6:	6820      	ldr	r0, [r4, #0]
    2ac8:	2110      	movs	r1, #16
    2aca:	40c8      	lsrs	r0, r1
    2acc:	f000 f971 	bl	2db2 <print_int>
	print("\nBFSR=");
    2ad0:	480e      	ldr	r0, [pc, #56]	; (2b0c <print_fault+0x64>)
    2ad2:	f000 f953 	bl	2d7c <print>
	print_int(CFSR->fsr.busFault,16);
    2ad6:	6820      	ldr	r0, [r4, #0]
    2ad8:	2110      	movs	r1, #16
    2ada:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2ade:	f000 f968 	bl	2db2 <print_int>
	print("\nMMFSR=");
    2ae2:	480b      	ldr	r0, [pc, #44]	; (2b10 <print_fault+0x68>)
    2ae4:	f000 f94a 	bl	2d7c <print>
	print_int(CFSR->fsr.mmFault,16);
    2ae8:	6820      	ldr	r0, [r4, #0]
    2aea:	2110      	movs	r1, #16
    2aec:	b2c0      	uxtb	r0, r0
    2aee:	f000 f960 	bl	2db2 <print_int>
    2af2:	e7fe      	b.n	2af2 <print_fault+0x4a>
		print_int(adr,16);
    2af4:	2110      	movs	r1, #16
    2af6:	4620      	mov	r0, r4
    2af8:	f000 f95b 	bl	2db2 <print_int>
    2afc:	e7dc      	b.n	2ab8 <print_fault+0x10>
    2afe:	bf00      	nop
    2b00:	00003e88 	.word	0x00003e88
    2b04:	00003e98 	.word	0x00003e98
    2b08:	e000ed28 	.word	0xe000ed28
    2b0c:	00003ea0 	.word	0x00003ea0
    2b10:	00003ea8 	.word	0x00003ea8

00002b14 <draw_char>:
	}else{
		usart_putc(USART1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2b14:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2b18:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2b1a:	18cb      	adds	r3, r1, r3
    2b1c:	9301      	str	r3, [sp, #4]
    2b1e:	4299      	cmp	r1, r3
    2b20:	da20      	bge.n	2b64 <draw_char+0x50>
    2b22:	4683      	mov	fp, r0
    2b24:	460e      	mov	r6, r1
    2b26:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2b28:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2b2c:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b2e:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2b6c <draw_char+0x58>
		byte=*glyph++;
    2b32:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2b36:	45bb      	cmp	fp, r7
    2b38:	da10      	bge.n	2b5c <draw_char+0x48>
    2b3a:	465c      	mov	r4, fp
    2b3c:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b3e:	ea18 0f05 	tst.w	r8, r5
    2b42:	bf14      	ite	ne
    2b44:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2b48:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2b4c:	4631      	mov	r1, r6
    2b4e:	4620      	mov	r0, r4
    2b50:	f7fe fd1e 	bl	1590 <gfx_plot>
			mask>>=1;
    2b54:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2b56:	3401      	adds	r4, #1
    2b58:	42bc      	cmp	r4, r7
    2b5a:	d1f0      	bne.n	2b3e <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2b5c:	3601      	adds	r6, #1
    2b5e:	9b01      	ldr	r3, [sp, #4]
    2b60:	429e      	cmp	r6, r3
    2b62:	d1e6      	bne.n	2b32 <draw_char+0x1e>
		}
	}
}
    2b64:	b003      	add	sp, #12
    2b66:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2b6a:	bf00      	nop
    2b6c:	200001e8 	.word	0x200001e8

00002b70 <font_color>:
	text_colors[FG]=color&0xf;
    2b70:	f000 000f 	and.w	r0, r0, #15
    2b74:	4b01      	ldr	r3, [pc, #4]	; (2b7c <font_color+0xc>)
    2b76:	7058      	strb	r0, [r3, #1]
    2b78:	4770      	bx	lr
    2b7a:	bf00      	nop
    2b7c:	200001e8 	.word	0x200001e8

00002b80 <bg_color>:
	text_colors[BG]=color&0xf;
    2b80:	f000 000f 	and.w	r0, r0, #15
    2b84:	4b01      	ldr	r3, [pc, #4]	; (2b8c <bg_color+0xc>)
    2b86:	7018      	strb	r0, [r3, #0]
    2b88:	4770      	bx	lr
    2b8a:	bf00      	nop
    2b8c:	200001e8 	.word	0x200001e8

00002b90 <select_font>:
	font=font_id;
    2b90:	4b01      	ldr	r3, [pc, #4]	; (2b98 <select_font+0x8>)
    2b92:	7098      	strb	r0, [r3, #2]
    2b94:	4770      	bx	lr
    2b96:	bf00      	nop
    2b98:	200001e8 	.word	0x200001e8

00002b9c <get_font>:
}
    2b9c:	4b01      	ldr	r3, [pc, #4]	; (2ba4 <get_font+0x8>)
    2b9e:	7898      	ldrb	r0, [r3, #2]
    2ba0:	4770      	bx	lr
    2ba2:	bf00      	nop
    2ba4:	200001e8 	.word	0x200001e8

00002ba8 <new_line>:
void new_line(){
    2ba8:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2baa:	4b21      	ldr	r3, [pc, #132]	; (2c30 <new_line+0x88>)
    2bac:	781b      	ldrb	r3, [r3, #0]
    2bae:	2b00      	cmp	r3, #0
    2bb0:	d138      	bne.n	2c24 <new_line+0x7c>
		xpos=0;
    2bb2:	2200      	movs	r2, #0
    2bb4:	4b1e      	ldr	r3, [pc, #120]	; (2c30 <new_line+0x88>)
    2bb6:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2bb8:	f000 fbfc 	bl	33b4 <get_video_params>
		switch (font){
    2bbc:	4b1d      	ldr	r3, [pc, #116]	; (2c34 <new_line+0x8c>)
    2bbe:	789b      	ldrb	r3, [r3, #2]
    2bc0:	2b01      	cmp	r3, #1
    2bc2:	d011      	beq.n	2be8 <new_line+0x40>
    2bc4:	b113      	cbz	r3, 2bcc <new_line+0x24>
    2bc6:	2b02      	cmp	r3, #2
    2bc8:	d01d      	beq.n	2c06 <new_line+0x5e>
    2bca:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2bcc:	4b18      	ldr	r3, [pc, #96]	; (2c30 <new_line+0x88>)
    2bce:	789b      	ldrb	r3, [r3, #2]
    2bd0:	1d99      	adds	r1, r3, #6
    2bd2:	89c2      	ldrh	r2, [r0, #14]
    2bd4:	3a05      	subs	r2, #5
    2bd6:	4291      	cmp	r1, r2
    2bd8:	dc02      	bgt.n	2be0 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2bda:	4a15      	ldr	r2, [pc, #84]	; (2c30 <new_line+0x88>)
    2bdc:	7091      	strb	r1, [r2, #2]
    2bde:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2be0:	2006      	movs	r0, #6
    2be2:	f7fe fd13 	bl	160c <gfx_scroll_up>
    2be6:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2be8:	4b11      	ldr	r3, [pc, #68]	; (2c30 <new_line+0x88>)
    2bea:	789b      	ldrb	r3, [r3, #2]
    2bec:	f103 010a 	add.w	r1, r3, #10
    2bf0:	89c2      	ldrh	r2, [r0, #14]
    2bf2:	3a09      	subs	r2, #9
    2bf4:	4291      	cmp	r1, r2
    2bf6:	dc02      	bgt.n	2bfe <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2bf8:	4a0d      	ldr	r2, [pc, #52]	; (2c30 <new_line+0x88>)
    2bfa:	7091      	strb	r1, [r2, #2]
    2bfc:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2bfe:	200a      	movs	r0, #10
    2c00:	f7fe fd04 	bl	160c <gfx_scroll_up>
    2c04:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2c06:	4b0a      	ldr	r3, [pc, #40]	; (2c30 <new_line+0x88>)
    2c08:	789b      	ldrb	r3, [r3, #2]
    2c0a:	f103 0108 	add.w	r1, r3, #8
    2c0e:	89c2      	ldrh	r2, [r0, #14]
    2c10:	3a07      	subs	r2, #7
    2c12:	4291      	cmp	r1, r2
    2c14:	dc02      	bgt.n	2c1c <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2c16:	4a06      	ldr	r2, [pc, #24]	; (2c30 <new_line+0x88>)
    2c18:	7091      	strb	r1, [r2, #2]
    2c1a:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2c1c:	2008      	movs	r0, #8
    2c1e:	f7fe fcf5 	bl	160c <gfx_scroll_up>
    2c22:	bd08      	pop	{r3, pc}
		usart_putc(USART1,'\n');
    2c24:	210a      	movs	r1, #10
    2c26:	4804      	ldr	r0, [pc, #16]	; (2c38 <new_line+0x90>)
    2c28:	f000 fd1c 	bl	3664 <usart_putc>
    2c2c:	bd08      	pop	{r3, pc}
    2c2e:	bf00      	nop
    2c30:	2000067c 	.word	0x2000067c
    2c34:	200001e8 	.word	0x200001e8
    2c38:	40013800 	.word	0x40013800

00002c3c <put_char>:

void put_char(uint8_t c){
    2c3c:	b530      	push	{r4, r5, lr}
    2c3e:	b083      	sub	sp, #12
	if (console==LOCAL){
    2c40:	4b2e      	ldr	r3, [pc, #184]	; (2cfc <put_char+0xc0>)
    2c42:	781b      	ldrb	r3, [r3, #0]
    2c44:	2b00      	cmp	r3, #0
    2c46:	d153      	bne.n	2cf0 <put_char+0xb4>
		switch(font){
    2c48:	4b2d      	ldr	r3, [pc, #180]	; (2d00 <put_char+0xc4>)
    2c4a:	789b      	ldrb	r3, [r3, #2]
    2c4c:	2b01      	cmp	r3, #1
    2c4e:	d036      	beq.n	2cbe <put_char+0x82>
    2c50:	b1e3      	cbz	r3, 2c8c <put_char+0x50>
    2c52:	2b02      	cmp	r3, #2
    2c54:	d150      	bne.n	2cf8 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2c56:	f1a0 0320 	sub.w	r3, r0, #32
    2c5a:	b2db      	uxtb	r3, r3
    2c5c:	2b64      	cmp	r3, #100	; 0x64
    2c5e:	d84b      	bhi.n	2cf8 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2c60:	4c26      	ldr	r4, [pc, #152]	; (2cfc <put_char+0xc0>)
    2c62:	78a1      	ldrb	r1, [r4, #2]
    2c64:	7865      	ldrb	r5, [r4, #1]
    2c66:	3820      	subs	r0, #32
    2c68:	4b26      	ldr	r3, [pc, #152]	; (2d04 <put_char+0xc8>)
    2c6a:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2c6e:	9300      	str	r3, [sp, #0]
    2c70:	2308      	movs	r3, #8
    2c72:	2206      	movs	r2, #6
    2c74:	4628      	mov	r0, r5
    2c76:	f7ff ff4d 	bl	2b14 <draw_char>
				xpos+=CHAR_WIDTH;
    2c7a:	7863      	ldrb	r3, [r4, #1]
    2c7c:	3306      	adds	r3, #6
    2c7e:	b2db      	uxtb	r3, r3
    2c80:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2c82:	2baf      	cmp	r3, #175	; 0xaf
    2c84:	d938      	bls.n	2cf8 <put_char+0xbc>
					new_line();
    2c86:	f7ff ff8f 	bl	2ba8 <new_line>
    2c8a:	e035      	b.n	2cf8 <put_char+0xbc>
			if (c<16){
    2c8c:	280f      	cmp	r0, #15
    2c8e:	d833      	bhi.n	2cf8 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2c90:	4c1a      	ldr	r4, [pc, #104]	; (2cfc <put_char+0xc0>)
    2c92:	78a1      	ldrb	r1, [r4, #2]
    2c94:	7865      	ldrb	r5, [r4, #1]
    2c96:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2c9a:	4b1b      	ldr	r3, [pc, #108]	; (2d08 <put_char+0xcc>)
    2c9c:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2ca0:	9300      	str	r3, [sp, #0]
    2ca2:	2306      	movs	r3, #6
    2ca4:	2204      	movs	r2, #4
    2ca6:	4628      	mov	r0, r5
    2ca8:	f7ff ff34 	bl	2b14 <draw_char>
				xpos+=SHEX_WIDTH;
    2cac:	7863      	ldrb	r3, [r4, #1]
    2cae:	3304      	adds	r3, #4
    2cb0:	b2db      	uxtb	r3, r3
    2cb2:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2cb4:	2bb1      	cmp	r3, #177	; 0xb1
    2cb6:	d91f      	bls.n	2cf8 <put_char+0xbc>
					new_line();
    2cb8:	f7ff ff76 	bl	2ba8 <new_line>
    2cbc:	e01c      	b.n	2cf8 <put_char+0xbc>
			if (c<16){
    2cbe:	280f      	cmp	r0, #15
    2cc0:	d81a      	bhi.n	2cf8 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2cc2:	4c0e      	ldr	r4, [pc, #56]	; (2cfc <put_char+0xc0>)
    2cc4:	78a1      	ldrb	r1, [r4, #2]
    2cc6:	7865      	ldrb	r5, [r4, #1]
    2cc8:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2ccc:	4b0f      	ldr	r3, [pc, #60]	; (2d0c <put_char+0xd0>)
    2cce:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2cd2:	9300      	str	r3, [sp, #0]
    2cd4:	230a      	movs	r3, #10
    2cd6:	2208      	movs	r2, #8
    2cd8:	4628      	mov	r0, r5
    2cda:	f7ff ff1b 	bl	2b14 <draw_char>
				xpos+=LHEX_WIDTH;
    2cde:	7863      	ldrb	r3, [r4, #1]
    2ce0:	3308      	adds	r3, #8
    2ce2:	b2db      	uxtb	r3, r3
    2ce4:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2ce6:	2bad      	cmp	r3, #173	; 0xad
    2ce8:	d906      	bls.n	2cf8 <put_char+0xbc>
					new_line();
    2cea:	f7ff ff5d 	bl	2ba8 <new_line>
    2cee:	e003      	b.n	2cf8 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(USART1,c);
    2cf0:	4601      	mov	r1, r0
    2cf2:	4807      	ldr	r0, [pc, #28]	; (2d10 <put_char+0xd4>)
    2cf4:	f000 fcb6 	bl	3664 <usart_putc>
	}
}
    2cf8:	b003      	add	sp, #12
    2cfa:	bd30      	pop	{r4, r5, pc}
    2cfc:	2000067c 	.word	0x2000067c
    2d00:	200001e8 	.word	0x200001e8
    2d04:	00003734 	.word	0x00003734
    2d08:	00003afc 	.word	0x00003afc
    2d0c:	00003a5c 	.word	0x00003a5c
    2d10:	40013800 	.word	0x40013800

00002d14 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2d14:	4b01      	ldr	r3, [pc, #4]	; (2d1c <set_cursor+0x8>)
    2d16:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2d18:	7099      	strb	r1, [r3, #2]
    2d1a:	4770      	bx	lr
    2d1c:	2000067c 	.word	0x2000067c

00002d20 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2d20:	4b03      	ldr	r3, [pc, #12]	; (2d30 <get_cursor+0x10>)
    2d22:	785a      	ldrb	r2, [r3, #1]
    2d24:	7898      	ldrb	r0, [r3, #2]
    2d26:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2d2a:	b280      	uxth	r0, r0
    2d2c:	4770      	bx	lr
    2d2e:	bf00      	nop
    2d30:	2000067c 	.word	0x2000067c

00002d34 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2d34:	4b0f      	ldr	r3, [pc, #60]	; (2d74 <cursor_left+0x40>)
    2d36:	789b      	ldrb	r3, [r3, #2]
    2d38:	2b01      	cmp	r3, #1
    2d3a:	d00b      	beq.n	2d54 <cursor_left+0x20>
    2d3c:	b113      	cbz	r3, 2d44 <cursor_left+0x10>
    2d3e:	2b02      	cmp	r3, #2
    2d40:	d010      	beq.n	2d64 <cursor_left+0x30>
    2d42:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2d44:	4b0c      	ldr	r3, [pc, #48]	; (2d78 <cursor_left+0x44>)
    2d46:	785b      	ldrb	r3, [r3, #1]
    2d48:	2b04      	cmp	r3, #4
    2d4a:	d412      	bmi.n	2d72 <cursor_left+0x3e>
    2d4c:	3b04      	subs	r3, #4
    2d4e:	4a0a      	ldr	r2, [pc, #40]	; (2d78 <cursor_left+0x44>)
    2d50:	7053      	strb	r3, [r2, #1]
    2d52:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2d54:	4b08      	ldr	r3, [pc, #32]	; (2d78 <cursor_left+0x44>)
    2d56:	785b      	ldrb	r3, [r3, #1]
    2d58:	2b08      	cmp	r3, #8
    2d5a:	d40a      	bmi.n	2d72 <cursor_left+0x3e>
    2d5c:	3b08      	subs	r3, #8
    2d5e:	4a06      	ldr	r2, [pc, #24]	; (2d78 <cursor_left+0x44>)
    2d60:	7053      	strb	r3, [r2, #1]
    2d62:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2d64:	4b04      	ldr	r3, [pc, #16]	; (2d78 <cursor_left+0x44>)
    2d66:	785b      	ldrb	r3, [r3, #1]
    2d68:	2b06      	cmp	r3, #6
    2d6a:	d402      	bmi.n	2d72 <cursor_left+0x3e>
    2d6c:	3b06      	subs	r3, #6
    2d6e:	4a02      	ldr	r2, [pc, #8]	; (2d78 <cursor_left+0x44>)
    2d70:	7053      	strb	r3, [r2, #1]
    2d72:	4770      	bx	lr
    2d74:	200001e8 	.word	0x200001e8
    2d78:	2000067c 	.word	0x2000067c

00002d7c <print>:
void print(const char* str){
    2d7c:	b510      	push	{r4, lr}
    2d7e:	4604      	mov	r4, r0
    while ((c=*str++)){
    2d80:	e001      	b.n	2d86 <print+0xa>
            new_line();
    2d82:	f7ff ff11 	bl	2ba8 <new_line>
    while ((c=*str++)){
    2d86:	f814 0b01 	ldrb.w	r0, [r4], #1
    2d8a:	b158      	cbz	r0, 2da4 <print+0x28>
        switch(c){
    2d8c:	280a      	cmp	r0, #10
    2d8e:	d0f8      	beq.n	2d82 <print+0x6>
    2d90:	280d      	cmp	r0, #13
    2d92:	d0f6      	beq.n	2d82 <print+0x6>
    2d94:	2808      	cmp	r0, #8
    2d96:	d002      	beq.n	2d9e <print+0x22>
            put_char(c);
    2d98:	f7ff ff50 	bl	2c3c <put_char>
    2d9c:	e7f3      	b.n	2d86 <print+0xa>
            cursor_left();    
    2d9e:	f7ff ffc9 	bl	2d34 <cursor_left>
            break;
    2da2:	e7f0      	b.n	2d86 <print+0xa>
}
    2da4:	bd10      	pop	{r4, pc}

00002da6 <println>:
void println(const char *text){
    2da6:	b508      	push	{r3, lr}
	print(text);
    2da8:	f7ff ffe8 	bl	2d7c <print>
	new_line();
    2dac:	f7ff fefc 	bl	2ba8 <new_line>
    2db0:	bd08      	pop	{r3, pc}

00002db2 <print_int>:
void print_int(int i,uint8_t base){
    2db2:	b530      	push	{r4, r5, lr}
    2db4:	b085      	sub	sp, #20
    fmt[15]=0;
    2db6:	2300      	movs	r3, #0
    2db8:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2dbc:	2320      	movs	r3, #32
    2dbe:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2dc2:	1e02      	subs	r2, r0, #0
        i=-i;
    2dc4:	bfba      	itte	lt
    2dc6:	4252      	neglt	r2, r2
        sign=1;
    2dc8:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2dca:	2500      	movge	r5, #0
    while (idx>1 && i){
    2dcc:	b1aa      	cbz	r2, 2dfa <print_int+0x48>
    2dce:	f10d 040e 	add.w	r4, sp, #14
    2dd2:	200e      	movs	r0, #14
        d=i%base;
    2dd4:	fb92 f3f1 	sdiv	r3, r2, r1
    2dd8:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2ddc:	2b09      	cmp	r3, #9
    2dde:	bfc8      	it	gt
    2de0:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2de2:	3801      	subs	r0, #1
    2de4:	3330      	adds	r3, #48	; 0x30
    2de6:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2dea:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2dee:	2801      	cmp	r0, #1
    2df0:	d007      	beq.n	2e02 <print_int+0x50>
    2df2:	2a00      	cmp	r2, #0
    2df4:	d1ee      	bne.n	2dd4 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2df6:	280e      	cmp	r0, #14
    2df8:	d103      	bne.n	2e02 <print_int+0x50>
    2dfa:	2330      	movs	r3, #48	; 0x30
    2dfc:	f88d 300d 	strb.w	r3, [sp, #13]
    2e00:	200d      	movs	r0, #13
    if (base==10 && sign){
    2e02:	290a      	cmp	r1, #10
    2e04:	d006      	beq.n	2e14 <print_int+0x62>
    }else if (base==16){
    2e06:	2910      	cmp	r1, #16
    2e08:	d00d      	beq.n	2e26 <print_int+0x74>
    print(&fmt[idx]);
    2e0a:	4468      	add	r0, sp
    2e0c:	f7ff ffb6 	bl	2d7c <print>
}
    2e10:	b005      	add	sp, #20
    2e12:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2e14:	2d00      	cmp	r5, #0
    2e16:	d0f8      	beq.n	2e0a <print_int+0x58>
        fmt[--idx]='-';
    2e18:	3801      	subs	r0, #1
    2e1a:	ab04      	add	r3, sp, #16
    2e1c:	4403      	add	r3, r0
    2e1e:	222d      	movs	r2, #45	; 0x2d
    2e20:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e24:	e7f1      	b.n	2e0a <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2e26:	f010 0f01 	tst.w	r0, #1
    2e2a:	d005      	beq.n	2e38 <print_int+0x86>
    2e2c:	3801      	subs	r0, #1
    2e2e:	ab04      	add	r3, sp, #16
    2e30:	4403      	add	r3, r0
    2e32:	2230      	movs	r2, #48	; 0x30
    2e34:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2e38:	3801      	subs	r0, #1
    2e3a:	ab04      	add	r3, sp, #16
    2e3c:	4403      	add	r3, r0
    2e3e:	2224      	movs	r2, #36	; 0x24
    2e40:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e44:	e7e1      	b.n	2e0a <print_int+0x58>

00002e46 <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2e46:	b508      	push	{r3, lr}
	print("press button");
    2e48:	4801      	ldr	r0, [pc, #4]	; (2e50 <prompt_btn+0xa>)
    2e4a:	f7ff ff97 	bl	2d7c <print>
    2e4e:	bd08      	pop	{r3, pc}
    2e50:	00003ef4 	.word	0x00003ef4

00002e54 <clear_screen>:
}

void clear_screen(){
    2e54:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2e56:	4b07      	ldr	r3, [pc, #28]	; (2e74 <clear_screen+0x20>)
    2e58:	781b      	ldrb	r3, [r3, #0]
    2e5a:	b123      	cbz	r3, 2e66 <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(USART1,FF);
    2e5c:	210c      	movs	r1, #12
    2e5e:	4806      	ldr	r0, [pc, #24]	; (2e78 <clear_screen+0x24>)
    2e60:	f000 fc00 	bl	3664 <usart_putc>
    2e64:	bd08      	pop	{r3, pc}
		gfx_cls();
    2e66:	f7fe fbbd 	bl	15e4 <gfx_cls>
		xpos=0;
    2e6a:	4b02      	ldr	r3, [pc, #8]	; (2e74 <clear_screen+0x20>)
    2e6c:	2200      	movs	r2, #0
    2e6e:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2e70:	709a      	strb	r2, [r3, #2]
    2e72:	bd08      	pop	{r3, pc}
    2e74:	2000067c 	.word	0x2000067c
    2e78:	40013800 	.word	0x40013800

00002e7c <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2e7c:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2e7e:	2800      	cmp	r0, #0
    2e80:	bf14      	ite	ne
    2e82:	260f      	movne	r6, #15
    2e84:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e86:	4b09      	ldr	r3, [pc, #36]	; (2eac <show_cursor+0x30>)
    2e88:	785c      	ldrb	r4, [r3, #1]
    2e8a:	1da3      	adds	r3, r4, #6
    2e8c:	429c      	cmp	r4, r3
    2e8e:	da0b      	bge.n	2ea8 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2e90:	4d06      	ldr	r5, [pc, #24]	; (2eac <show_cursor+0x30>)
    2e92:	78a9      	ldrb	r1, [r5, #2]
    2e94:	4632      	mov	r2, r6
    2e96:	3107      	adds	r1, #7
    2e98:	4620      	mov	r0, r4
    2e9a:	f7fe fb79 	bl	1590 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e9e:	3401      	adds	r4, #1
    2ea0:	786b      	ldrb	r3, [r5, #1]
    2ea2:	3306      	adds	r3, #6
    2ea4:	42a3      	cmp	r3, r4
    2ea6:	dcf4      	bgt.n	2e92 <show_cursor+0x16>
    2ea8:	bd70      	pop	{r4, r5, r6, pc}
    2eaa:	bf00      	nop
    2eac:	2000067c 	.word	0x2000067c

00002eb0 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2eb0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2eb4:	f000 fa7e 	bl	33b4 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2eb8:	4b0c      	ldr	r3, [pc, #48]	; (2eec <clear_line+0x3c>)
    2eba:	789c      	ldrb	r4, [r3, #2]
    2ebc:	f104 0308 	add.w	r3, r4, #8
    2ec0:	429c      	cmp	r4, r3
    2ec2:	da10      	bge.n	2ee6 <clear_line+0x36>
    2ec4:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2ec6:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2ef0 <clear_line+0x40>
    2eca:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ecc:	4e07      	ldr	r6, [pc, #28]	; (2eec <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2ece:	7a28      	ldrb	r0, [r5, #8]
    2ed0:	463a      	mov	r2, r7
    2ed2:	4601      	mov	r1, r0
    2ed4:	fb04 8000 	mla	r0, r4, r0, r8
    2ed8:	f7fe fa25 	bl	1326 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2edc:	3401      	adds	r4, #1
    2ede:	78b3      	ldrb	r3, [r6, #2]
    2ee0:	3308      	adds	r3, #8
    2ee2:	42a3      	cmp	r3, r4
    2ee4:	dcf3      	bgt.n	2ece <clear_line+0x1e>
    2ee6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2eea:	bf00      	nop
    2eec:	2000067c 	.word	0x2000067c
    2ef0:	200026d0 	.word	0x200026d0

00002ef4 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    2ef4:	4b01      	ldr	r3, [pc, #4]	; (2efc <select_console+0x8>)
    2ef6:	7018      	strb	r0, [r3, #0]
    2ef8:	4770      	bx	lr
    2efa:	bf00      	nop
    2efc:	2000067c 	.word	0x2000067c

00002f00 <get_char>:
}

//read a character from serial port
char get_char(){
    2f00:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(USART1)));
    2f02:	4c03      	ldr	r4, [pc, #12]	; (2f10 <get_char+0x10>)
    2f04:	4620      	mov	r0, r4
    2f06:	f000 fb7b 	bl	3600 <usart_getc>
    2f0a:	2800      	cmp	r0, #0
    2f0c:	d0fa      	beq.n	2f04 <get_char+0x4>
	return c;
}
    2f0e:	bd10      	pop	{r4, pc}
    2f10:	40013800 	.word	0x40013800

00002f14 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2f14:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2f18:	4c31      	ldr	r4, [pc, #196]	; (2fe0 <tvout_init+0xcc>)
    2f1a:	4b32      	ldr	r3, [pc, #200]	; (2fe4 <tvout_init+0xd0>)
    2f1c:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2f1e:	4a32      	ldr	r2, [pc, #200]	; (2fe8 <tvout_init+0xd4>)
    2f20:	4b32      	ldr	r3, [pc, #200]	; (2fec <tvout_init+0xd8>)
    2f22:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2f24:	220a      	movs	r2, #10
    2f26:	2108      	movs	r1, #8
    2f28:	4620      	mov	r0, r4
    2f2a:	f7fe faa5 	bl	1478 <config_pin>
    PORTA->ODR=0;
    2f2e:	2500      	movs	r5, #0
    2f30:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2f32:	4e2f      	ldr	r6, [pc, #188]	; (2ff0 <tvout_init+0xdc>)
    2f34:	69b3      	ldr	r3, [r6, #24]
    2f36:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2f3a:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2f3c:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2f40:	f04f 0878 	mov.w	r8, #120	; 0x78
    2f44:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2f48:	2301      	movs	r3, #1
    2f4a:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2f4c:	2784      	movs	r7, #132	; 0x84
    2f4e:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2f50:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2f54:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2f56:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2f5a:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    2f5c:	f240 1365 	movw	r3, #357	; 0x165
    2f60:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2f62:	6963      	ldr	r3, [r4, #20]
    2f64:	f043 0301 	orr.w	r3, r3, #1
    2f68:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2f6a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2f6e:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2f70:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2f72:	68e3      	ldr	r3, [r4, #12]
    2f74:	f043 0301 	orr.w	r3, r3, #1
    2f78:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2f7a:	4629      	mov	r1, r5
    2f7c:	2019      	movs	r0, #25
    2f7e:	f7ff f85f 	bl	2040 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2f82:	4629      	mov	r1, r5
    2f84:	201b      	movs	r0, #27
    2f86:	f7ff f85b 	bl	2040 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2f8a:	2019      	movs	r0, #25
    2f8c:	f7fe fff8 	bl	1f80 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2f90:	201b      	movs	r0, #27
    2f92:	f7fe fff5 	bl	1f80 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2f96:	6823      	ldr	r3, [r4, #0]
    2f98:	f043 0301 	orr.w	r3, r3, #1
    2f9c:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2f9e:	220a      	movs	r2, #10
    2fa0:	4629      	mov	r1, r5
    2fa2:	4814      	ldr	r0, [pc, #80]	; (2ff4 <tvout_init+0xe0>)
    2fa4:	f7fe fa68 	bl	1478 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2fa8:	69f3      	ldr	r3, [r6, #28]
    2faa:	f043 0302 	orr.w	r3, r3, #2
    2fae:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2fb0:	4b11      	ldr	r3, [pc, #68]	; (2ff8 <tvout_init+0xe4>)
    2fb2:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2fb6:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2fb8:	2213      	movs	r2, #19
    2fba:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2fbc:	220a      	movs	r2, #10
    2fbe:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2fc0:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2fc2:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2fc6:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2fc8:	695a      	ldr	r2, [r3, #20]
    2fca:	f042 0201 	orr.w	r2, r2, #1
    2fce:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2fd0:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2fd2:	681a      	ldr	r2, [r3, #0]
    2fd4:	f042 0201 	orr.w	r2, r2, #1
    2fd8:	601a      	str	r2, [r3, #0]
    2fda:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2fde:	bf00      	nop
    2fe0:	40010800 	.word	0x40010800
    2fe4:	88883333 	.word	0x88883333
    2fe8:	84484444 	.word	0x84484444
    2fec:	40010804 	.word	0x40010804
    2ff0:	40021000 	.word	0x40021000
    2ff4:	40010c00 	.word	0x40010c00
    2ff8:	40000400 	.word	0x40000400

00002ffc <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2ffc:	4668      	mov	r0, sp
    2ffe:	f020 0107 	bic.w	r1, r0, #7
    3002:	468d      	mov	sp, r1
    3004:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    3006:	4a2f      	ldr	r2, [pc, #188]	; (30c4 <TV_OUT_handler+0xc8>)
    3008:	6a13      	ldr	r3, [r2, #32]
    300a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    300e:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    3010:	492d      	ldr	r1, [pc, #180]	; (30c8 <TV_OUT_handler+0xcc>)
    3012:	f240 2209 	movw	r2, #521	; 0x209
    3016:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3018:	4293      	cmp	r3, r2
    301a:	d9fc      	bls.n	3016 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    301c:	4a29      	ldr	r2, [pc, #164]	; (30c4 <TV_OUT_handler+0xc8>)
    301e:	6a13      	ldr	r3, [r2, #32]
    3020:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3024:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    3026:	4b29      	ldr	r3, [pc, #164]	; (30cc <TV_OUT_handler+0xd0>)
    3028:	881d      	ldrh	r5, [r3, #0]
    302a:	b2ad      	uxth	r5, r5
    302c:	4b28      	ldr	r3, [pc, #160]	; (30d0 <TV_OUT_handler+0xd4>)
    302e:	7818      	ldrb	r0, [r3, #0]
    3030:	785a      	ldrb	r2, [r3, #1]
    3032:	fb95 f5f2 	sdiv	r5, r5, r2
    3036:	4a27      	ldr	r2, [pc, #156]	; (30d4 <TV_OUT_handler+0xd8>)
    3038:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    303c:	8859      	ldrh	r1, [r3, #2]
    303e:	4a22      	ldr	r2, [pc, #136]	; (30c8 <TV_OUT_handler+0xcc>)
    3040:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3042:	428b      	cmp	r3, r1
    3044:	d3fc      	bcc.n	3040 <TV_OUT_handler+0x44>
    _jitter_cancel();
    3046:	4b24      	ldr	r3, [pc, #144]	; (30d8 <TV_OUT_handler+0xdc>)
    3048:	461a      	mov	r2, r3
    304a:	6812      	ldr	r2, [r2, #0]
    304c:	f002 0207 	and.w	r2, r2, #7
    3050:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3054:	4497      	add	pc, r2
    3056:	bf00      	nop
    3058:	bf00      	nop
    305a:	bf00      	nop
    305c:	bf00      	nop
    305e:	bf00      	nop
    3060:	bf00      	nop
    3062:	bf00      	nop
    3064:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    3066:	4a17      	ldr	r2, [pc, #92]	; (30c4 <TV_OUT_handler+0xc8>)
    3068:	6a13      	ldr	r3, [r2, #32]
    306a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    306e:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    3070:	b1b0      	cbz	r0, 30a0 <TV_OUT_handler+0xa4>
    3072:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3074:	4819      	ldr	r0, [pc, #100]	; (30dc <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    3076:	4916      	ldr	r1, [pc, #88]	; (30d0 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    3078:	781a      	ldrb	r2, [r3, #0]
    307a:	0912      	lsrs	r2, r2, #4
    307c:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    307e:	790c      	ldrb	r4, [r1, #4]
    3080:	4622      	mov	r2, r4
    3082:	3a01      	subs	r2, #1
    3084:	d1fd      	bne.n	3082 <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    3086:	f813 2b01 	ldrb.w	r2, [r3], #1
    308a:	f002 020f 	and.w	r2, r2, #15
    308e:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    3090:	790c      	ldrb	r4, [r1, #4]
    3092:	4622      	mov	r2, r4
    3094:	3a01      	subs	r2, #1
    3096:	d1fd      	bne.n	3094 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    3098:	1b5c      	subs	r4, r3, r5
    309a:	780a      	ldrb	r2, [r1, #0]
    309c:	4294      	cmp	r4, r2
    309e:	d3eb      	bcc.n	3078 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    30a0:	2200      	movs	r2, #0
    30a2:	4b0f      	ldr	r3, [pc, #60]	; (30e0 <TV_OUT_handler+0xe4>)
    30a4:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    30a6:	4a07      	ldr	r2, [pc, #28]	; (30c4 <TV_OUT_handler+0xc8>)
    30a8:	6a13      	ldr	r3, [r2, #32]
    30aa:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    30ae:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    30b0:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    30b4:	6913      	ldr	r3, [r2, #16]
    30b6:	f023 0304 	bic.w	r3, r3, #4
    30ba:	6113      	str	r3, [r2, #16]
}
    30bc:	bc31      	pop	{r0, r4, r5}
    30be:	4685      	mov	sp, r0
    30c0:	4770      	bx	lr
    30c2:	bf00      	nop
    30c4:	40000400 	.word	0x40000400
    30c8:	40012c00 	.word	0x40012c00
    30cc:	20000680 	.word	0x20000680
    30d0:	200001ec 	.word	0x200001ec
    30d4:	200026d0 	.word	0x200026d0
    30d8:	40012c24 	.word	0x40012c24
    30dc:	4001080c 	.word	0x4001080c
    30e0:	40010800 	.word	0x40010800

000030e4 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    30e4:	4668      	mov	r0, sp
    30e6:	f020 0107 	bic.w	r1, r0, #7
    30ea:	468d      	mov	sp, r1
    30ec:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    30ee:	4a8e      	ldr	r2, [pc, #568]	; (3328 <TV_SYNC_handler+0x244>)
    30f0:	8853      	ldrh	r3, [r2, #2]
    30f2:	3301      	adds	r3, #1
    30f4:	b29b      	uxth	r3, r3
    30f6:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    30f8:	498c      	ldr	r1, [pc, #560]	; (332c <TV_SYNC_handler+0x248>)
    30fa:	680b      	ldr	r3, [r1, #0]
    30fc:	3301      	adds	r3, #1
    30fe:	600b      	str	r3, [r1, #0]
    switch (task){
    3100:	8893      	ldrh	r3, [r2, #4]
    3102:	b29b      	uxth	r3, r3
    3104:	2b09      	cmp	r3, #9
    3106:	f200 8081 	bhi.w	320c <TV_SYNC_handler+0x128>
    310a:	e8df f013 	tbh	[pc, r3, lsl #1]
    310e:	000a      	.short	0x000a
    3110:	0048002a 	.word	0x0048002a
    3114:	00880069 	.word	0x00880069
    3118:	00a50090 	.word	0x00a50090
    311c:	00d100b4 	.word	0x00d100b4
    3120:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    3122:	4b81      	ldr	r3, [pc, #516]	; (3328 <TV_SYNC_handler+0x244>)
    3124:	881b      	ldrh	r3, [r3, #0]
    3126:	b29b      	uxth	r3, r3
    3128:	b17b      	cbz	r3, 314a <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    312a:	4a7f      	ldr	r2, [pc, #508]	; (3328 <TV_SYNC_handler+0x244>)
    312c:	8813      	ldrh	r3, [r2, #0]
    312e:	3301      	adds	r3, #1
    3130:	b29b      	uxth	r3, r3
    3132:	8013      	strh	r3, [r2, #0]
    3134:	8813      	ldrh	r3, [r2, #0]
    3136:	b29b      	uxth	r3, r3
    3138:	2b06      	cmp	r3, #6
    313a:	d167      	bne.n	320c <TV_SYNC_handler+0x128>
    313c:	2300      	movs	r3, #0
    313e:	8013      	strh	r3, [r2, #0]
    3140:	8893      	ldrh	r3, [r2, #4]
    3142:	3301      	adds	r3, #1
    3144:	b29b      	uxth	r3, r3
    3146:	8093      	strh	r3, [r2, #4]
    3148:	e060      	b.n	320c <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    314a:	4b79      	ldr	r3, [pc, #484]	; (3330 <TV_SYNC_handler+0x24c>)
    314c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3150:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3152:	22a4      	movs	r2, #164	; 0xa4
    3154:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3156:	4a74      	ldr	r2, [pc, #464]	; (3328 <TV_SYNC_handler+0x244>)
    3158:	8813      	ldrh	r3, [r2, #0]
    315a:	3301      	adds	r3, #1
    315c:	b29b      	uxth	r3, r3
    315e:	8013      	strh	r3, [r2, #0]
    3160:	e054      	b.n	320c <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    3162:	4b71      	ldr	r3, [pc, #452]	; (3328 <TV_SYNC_handler+0x244>)
    3164:	881b      	ldrh	r3, [r3, #0]
    3166:	b29b      	uxth	r3, r3
    3168:	b17b      	cbz	r3, 318a <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    316a:	4a6f      	ldr	r2, [pc, #444]	; (3328 <TV_SYNC_handler+0x244>)
    316c:	8813      	ldrh	r3, [r2, #0]
    316e:	3301      	adds	r3, #1
    3170:	b29b      	uxth	r3, r3
    3172:	8013      	strh	r3, [r2, #0]
    3174:	8813      	ldrh	r3, [r2, #0]
    3176:	b29b      	uxth	r3, r3
    3178:	2b06      	cmp	r3, #6
    317a:	d147      	bne.n	320c <TV_SYNC_handler+0x128>
    317c:	2300      	movs	r3, #0
    317e:	8013      	strh	r3, [r2, #0]
    3180:	8893      	ldrh	r3, [r2, #4]
    3182:	3301      	adds	r3, #1
    3184:	b29b      	uxth	r3, r3
    3186:	8093      	strh	r3, [r2, #4]
    3188:	e040      	b.n	320c <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    318a:	f240 7294 	movw	r2, #1940	; 0x794
    318e:	4b68      	ldr	r3, [pc, #416]	; (3330 <TV_SYNC_handler+0x24c>)
    3190:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3192:	4a65      	ldr	r2, [pc, #404]	; (3328 <TV_SYNC_handler+0x244>)
    3194:	8813      	ldrh	r3, [r2, #0]
    3196:	3301      	adds	r3, #1
    3198:	b29b      	uxth	r3, r3
    319a:	8013      	strh	r3, [r2, #0]
    319c:	e036      	b.n	320c <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    319e:	4b62      	ldr	r3, [pc, #392]	; (3328 <TV_SYNC_handler+0x244>)
    31a0:	881b      	ldrh	r3, [r3, #0]
    31a2:	b29b      	uxth	r3, r3
    31a4:	b153      	cbz	r3, 31bc <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    31a6:	4b60      	ldr	r3, [pc, #384]	; (3328 <TV_SYNC_handler+0x244>)
    31a8:	881b      	ldrh	r3, [r3, #0]
    31aa:	b29b      	uxth	r3, r3
    31ac:	2b06      	cmp	r3, #6
    31ae:	d00e      	beq.n	31ce <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    31b0:	4a5d      	ldr	r2, [pc, #372]	; (3328 <TV_SYNC_handler+0x244>)
    31b2:	8813      	ldrh	r3, [r2, #0]
    31b4:	3301      	adds	r3, #1
    31b6:	b29b      	uxth	r3, r3
    31b8:	8013      	strh	r3, [r2, #0]
            break;
    31ba:	e027      	b.n	320c <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    31bc:	22a4      	movs	r2, #164	; 0xa4
    31be:	4b5c      	ldr	r3, [pc, #368]	; (3330 <TV_SYNC_handler+0x24c>)
    31c0:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    31c2:	4a59      	ldr	r2, [pc, #356]	; (3328 <TV_SYNC_handler+0x244>)
    31c4:	8813      	ldrh	r3, [r2, #0]
    31c6:	3301      	adds	r3, #1
    31c8:	b29b      	uxth	r3, r3
    31ca:	8013      	strh	r3, [r2, #0]
            break;
    31cc:	e01e      	b.n	320c <TV_SYNC_handler+0x128>
            task++;
    31ce:	4a56      	ldr	r2, [pc, #344]	; (3328 <TV_SYNC_handler+0x244>)
    31d0:	8893      	ldrh	r3, [r2, #4]
    31d2:	3301      	adds	r3, #1
    31d4:	b29b      	uxth	r3, r3
    31d6:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    31d8:	88d3      	ldrh	r3, [r2, #6]
    31da:	f013 0f01 	tst.w	r3, #1
    31de:	d015      	beq.n	320c <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    31e0:	4b53      	ldr	r3, [pc, #332]	; (3330 <TV_SYNC_handler+0x24c>)
    31e2:	f241 12c5 	movw	r2, #4549	; 0x11c5
    31e6:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    31e8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    31ec:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    31ee:	4a4e      	ldr	r2, [pc, #312]	; (3328 <TV_SYNC_handler+0x244>)
    31f0:	88d3      	ldrh	r3, [r2, #6]
    31f2:	f023 0302 	bic.w	r3, r3, #2
    31f6:	041b      	lsls	r3, r3, #16
    31f8:	0c1b      	lsrs	r3, r3, #16
    31fa:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    31fc:	8853      	ldrh	r3, [r2, #2]
    31fe:	f3c3 038d 	ubfx	r3, r3, #2, #14
    3202:	8053      	strh	r3, [r2, #2]
        task++;
    3204:	8893      	ldrh	r3, [r2, #4]
    3206:	3301      	adds	r3, #1
    3208:	b29b      	uxth	r3, r3
    320a:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    320c:	4a48      	ldr	r2, [pc, #288]	; (3330 <TV_SYNC_handler+0x24c>)
    320e:	6913      	ldr	r3, [r2, #16]
    3210:	f023 0301 	bic.w	r3, r3, #1
    3214:	6113      	str	r3, [r2, #16]
}
    3216:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    321a:	4685      	mov	sp, r0
    321c:	4770      	bx	lr
        read_gamepad();
    321e:	f7fd ff27 	bl	1070 <read_gamepad>
        task++;
    3222:	4a41      	ldr	r2, [pc, #260]	; (3328 <TV_SYNC_handler+0x244>)
    3224:	8893      	ldrh	r3, [r2, #4]
    3226:	3301      	adds	r3, #1
    3228:	b29b      	uxth	r3, r3
    322a:	8093      	strh	r3, [r2, #4]
        break;    
    322c:	e7ee      	b.n	320c <TV_SYNC_handler+0x128>
        if (sound_timer){
    322e:	4b41      	ldr	r3, [pc, #260]	; (3334 <TV_SYNC_handler+0x250>)
    3230:	881b      	ldrh	r3, [r3, #0]
    3232:	b29b      	uxth	r3, r3
    3234:	b13b      	cbz	r3, 3246 <TV_SYNC_handler+0x162>
            sound_timer--;
    3236:	4a3f      	ldr	r2, [pc, #252]	; (3334 <TV_SYNC_handler+0x250>)
    3238:	8813      	ldrh	r3, [r2, #0]
    323a:	3b01      	subs	r3, #1
    323c:	b29b      	uxth	r3, r3
    323e:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3240:	8813      	ldrh	r3, [r2, #0]
    3242:	b29b      	uxth	r3, r3
    3244:	b12b      	cbz	r3, 3252 <TV_SYNC_handler+0x16e>
        task++;
    3246:	4a38      	ldr	r2, [pc, #224]	; (3328 <TV_SYNC_handler+0x244>)
    3248:	8893      	ldrh	r3, [r2, #4]
    324a:	3301      	adds	r3, #1
    324c:	b29b      	uxth	r3, r3
    324e:	8093      	strh	r3, [r2, #4]
        break;    
    3250:	e7dc      	b.n	320c <TV_SYNC_handler+0x128>
                sound_stop();
    3252:	f7ff fb02 	bl	285a <sound_stop>
    3256:	e7f6      	b.n	3246 <TV_SYNC_handler+0x162>
        if (game_timer){
    3258:	4b37      	ldr	r3, [pc, #220]	; (3338 <TV_SYNC_handler+0x254>)
    325a:	881b      	ldrh	r3, [r3, #0]
    325c:	b29b      	uxth	r3, r3
    325e:	b123      	cbz	r3, 326a <TV_SYNC_handler+0x186>
            game_timer--;
    3260:	4a35      	ldr	r2, [pc, #212]	; (3338 <TV_SYNC_handler+0x254>)
    3262:	8813      	ldrh	r3, [r2, #0]
    3264:	3b01      	subs	r3, #1
    3266:	b29b      	uxth	r3, r3
    3268:	8013      	strh	r3, [r2, #0]
        task++;
    326a:	4a2f      	ldr	r2, [pc, #188]	; (3328 <TV_SYNC_handler+0x244>)
    326c:	8893      	ldrh	r3, [r2, #4]
    326e:	3301      	adds	r3, #1
    3270:	b29b      	uxth	r3, r3
    3272:	8093      	strh	r3, [r2, #4]
        break;
    3274:	e7ca      	b.n	320c <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    3276:	4b2c      	ldr	r3, [pc, #176]	; (3328 <TV_SYNC_handler+0x244>)
    3278:	885b      	ldrh	r3, [r3, #2]
    327a:	b29b      	uxth	r3, r3
    327c:	4a2f      	ldr	r2, [pc, #188]	; (333c <TV_SYNC_handler+0x258>)
    327e:	88d2      	ldrh	r2, [r2, #6]
    3280:	429a      	cmp	r2, r3
    3282:	d1c3      	bne.n	320c <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    3284:	4b2a      	ldr	r3, [pc, #168]	; (3330 <TV_SYNC_handler+0x24c>)
    3286:	691a      	ldr	r2, [r3, #16]
    3288:	f022 0204 	bic.w	r2, r2, #4
    328c:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    328e:	68da      	ldr	r2, [r3, #12]
    3290:	f042 0204 	orr.w	r2, r2, #4
    3294:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    3296:	4b24      	ldr	r3, [pc, #144]	; (3328 <TV_SYNC_handler+0x244>)
    3298:	88da      	ldrh	r2, [r3, #6]
    329a:	b292      	uxth	r2, r2
    329c:	f042 0204 	orr.w	r2, r2, #4
    32a0:	80da      	strh	r2, [r3, #6]
            task++;
    32a2:	889a      	ldrh	r2, [r3, #4]
    32a4:	3201      	adds	r2, #1
    32a6:	b292      	uxth	r2, r2
    32a8:	809a      	strh	r2, [r3, #4]
            slice=0;
    32aa:	2200      	movs	r2, #0
    32ac:	801a      	strh	r2, [r3, #0]
    32ae:	e7ad      	b.n	320c <TV_SYNC_handler+0x128>
        slice++;
    32b0:	4a1d      	ldr	r2, [pc, #116]	; (3328 <TV_SYNC_handler+0x244>)
    32b2:	8813      	ldrh	r3, [r2, #0]
    32b4:	3301      	adds	r3, #1
    32b6:	b29b      	uxth	r3, r3
    32b8:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    32ba:	8853      	ldrh	r3, [r2, #2]
    32bc:	b29b      	uxth	r3, r3
    32be:	4a1f      	ldr	r2, [pc, #124]	; (333c <TV_SYNC_handler+0x258>)
    32c0:	8912      	ldrh	r2, [r2, #8]
    32c2:	429a      	cmp	r2, r3
    32c4:	d1a2      	bne.n	320c <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    32c6:	4a1a      	ldr	r2, [pc, #104]	; (3330 <TV_SYNC_handler+0x24c>)
    32c8:	68d3      	ldr	r3, [r2, #12]
    32ca:	f023 0304 	bic.w	r3, r3, #4
    32ce:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    32d0:	4a15      	ldr	r2, [pc, #84]	; (3328 <TV_SYNC_handler+0x244>)
    32d2:	88d3      	ldrh	r3, [r2, #6]
    32d4:	f023 0304 	bic.w	r3, r3, #4
    32d8:	041b      	lsls	r3, r3, #16
    32da:	0c1b      	lsrs	r3, r3, #16
    32dc:	80d3      	strh	r3, [r2, #6]
            task++;
    32de:	8893      	ldrh	r3, [r2, #4]
    32e0:	3301      	adds	r3, #1
    32e2:	b29b      	uxth	r3, r3
    32e4:	8093      	strh	r3, [r2, #4]
    32e6:	e791      	b.n	320c <TV_SYNC_handler+0x128>
        if (scan_line==263){
    32e8:	4b0f      	ldr	r3, [pc, #60]	; (3328 <TV_SYNC_handler+0x244>)
    32ea:	885b      	ldrh	r3, [r3, #2]
    32ec:	b29b      	uxth	r3, r3
    32ee:	f240 1207 	movw	r2, #263	; 0x107
    32f2:	4293      	cmp	r3, r2
    32f4:	d18a      	bne.n	320c <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    32f6:	4b0c      	ldr	r3, [pc, #48]	; (3328 <TV_SYNC_handler+0x244>)
    32f8:	88db      	ldrh	r3, [r3, #6]
    32fa:	f013 0f01 	tst.w	r3, #1
    32fe:	d003      	beq.n	3308 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    3300:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3304:	4b0a      	ldr	r3, [pc, #40]	; (3330 <TV_SYNC_handler+0x24c>)
    3306:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    3308:	4b07      	ldr	r3, [pc, #28]	; (3328 <TV_SYNC_handler+0x244>)
    330a:	88da      	ldrh	r2, [r3, #6]
    330c:	b292      	uxth	r2, r2
    330e:	f082 0201 	eor.w	r2, r2, #1
    3312:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    3314:	88da      	ldrh	r2, [r3, #6]
    3316:	b292      	uxth	r2, r2
    3318:	f042 0202 	orr.w	r2, r2, #2
    331c:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    331e:	2200      	movs	r2, #0
    3320:	805a      	strh	r2, [r3, #2]
            slice=0;
    3322:	801a      	strh	r2, [r3, #0]
            task=0;
    3324:	809a      	strh	r2, [r3, #4]
    3326:	e771      	b.n	320c <TV_SYNC_handler+0x128>
    3328:	20000680 	.word	0x20000680
    332c:	20004e34 	.word	0x20004e34
    3330:	40012c00 	.word	0x40012c00
    3334:	20004e38 	.word	0x20004e38
    3338:	20004e30 	.word	0x20004e30
    333c:	200001ec 	.word	0x200001ec

00003340 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3340:	4a02      	ldr	r2, [pc, #8]	; (334c <frame_sync+0xc>)
    3342:	88d3      	ldrh	r3, [r2, #6]
    3344:	f013 0f02 	tst.w	r3, #2
    3348:	d0fb      	beq.n	3342 <frame_sync+0x2>
}
    334a:	4770      	bx	lr
    334c:	20000680 	.word	0x20000680

00003350 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3350:	4a02      	ldr	r2, [pc, #8]	; (335c <wait_sync_end+0xc>)
    3352:	88d3      	ldrh	r3, [r2, #6]
    3354:	f013 0f02 	tst.w	r3, #2
    3358:	d1fb      	bne.n	3352 <wait_sync_end+0x2>
}
    335a:	4770      	bx	lr
    335c:	20000680 	.word	0x20000680

00003360 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3360:	b510      	push	{r4, lr}
    3362:	4604      	mov	r4, r0
    frame_sync();
    3364:	f7ff ffec 	bl	3340 <frame_sync>
    video_mode=mode;
    3368:	4b0e      	ldr	r3, [pc, #56]	; (33a4 <set_video_mode+0x44>)
    336a:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    336c:	b1ac      	cbz	r4, 339a <set_video_mode+0x3a>
    336e:	2200      	movs	r2, #0
    3370:	4b0d      	ldr	r3, [pc, #52]	; (33a8 <set_video_mode+0x48>)
    3372:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3374:	4b0d      	ldr	r3, [pc, #52]	; (33ac <set_video_mode+0x4c>)
    3376:	480e      	ldr	r0, [pc, #56]	; (33b0 <set_video_mode+0x50>)
    3378:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    337c:	8842      	ldrh	r2, [r0, #2]
    337e:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3380:	8882      	ldrh	r2, [r0, #4]
    3382:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    3384:	88c2      	ldrh	r2, [r0, #6]
    3386:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    3388:	7a02      	ldrb	r2, [r0, #8]
    338a:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    338c:	7a42      	ldrb	r2, [r0, #9]
    338e:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    3390:	7a82      	ldrb	r2, [r0, #10]
    3392:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    3394:	f7fe f926 	bl	15e4 <gfx_cls>
    3398:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    339a:	2202      	movs	r2, #2
    339c:	4b02      	ldr	r3, [pc, #8]	; (33a8 <set_video_mode+0x48>)
    339e:	701a      	strb	r2, [r3, #0]
    33a0:	e7e8      	b.n	3374 <set_video_mode+0x14>
    33a2:	bf00      	nop
    33a4:	20000680 	.word	0x20000680
    33a8:	20000190 	.word	0x20000190
    33ac:	200001ec 	.word	0x200001ec
    33b0:	00003bec 	.word	0x00003bec

000033b4 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    33b4:	4b02      	ldr	r3, [pc, #8]	; (33c0 <get_video_params+0xc>)
    33b6:	7a18      	ldrb	r0, [r3, #8]
}
    33b8:	4b02      	ldr	r3, [pc, #8]	; (33c4 <get_video_params+0x10>)
    33ba:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    33be:	4770      	bx	lr
    33c0:	20000680 	.word	0x20000680
    33c4:	00003bec 	.word	0x00003bec

000033c8 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    33c8:	4b03      	ldr	r3, [pc, #12]	; (33d8 <game_pause+0x10>)
    33ca:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    33cc:	461a      	mov	r2, r3
    33ce:	8813      	ldrh	r3, [r2, #0]
    33d0:	b29b      	uxth	r3, r3
    33d2:	2b00      	cmp	r3, #0
    33d4:	d1fb      	bne.n	33ce <game_pause+0x6>
}
    33d6:	4770      	bx	lr
    33d8:	20004e30 	.word	0x20004e30

000033dc <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    33dc:	4b03      	ldr	r3, [pc, #12]	; (33ec <micro_pause+0x10>)
    33de:	681b      	ldr	r3, [r3, #0]
    33e0:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    33e2:	4a02      	ldr	r2, [pc, #8]	; (33ec <micro_pause+0x10>)
    33e4:	6813      	ldr	r3, [r2, #0]
    33e6:	4298      	cmp	r0, r3
    33e8:	d8fc      	bhi.n	33e4 <micro_pause+0x8>
}
    33ea:	4770      	bx	lr
    33ec:	20004e34 	.word	0x20004e34

000033f0 <usart_config_port>:
static uint8_t head;
static uint8_t tail;

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    33f0:	4b3b      	ldr	r3, [pc, #236]	; (34e0 <usart_config_port+0xf0>)
    33f2:	4298      	cmp	r0, r3
    33f4:	d057      	beq.n	34a6 <usart_config_port+0xb6>
    33f6:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    33fa:	4298      	cmp	r0, r3
    33fc:	d004      	beq.n	3408 <usart_config_port+0x18>
    33fe:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    3402:	4298      	cmp	r0, r3
    3404:	d032      	beq.n	346c <usart_config_port+0x7c>
    3406:	4770      	bx	lr
	case (uint32_t)USART1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    3408:	4836      	ldr	r0, [pc, #216]	; (34e4 <usart_config_port+0xf4>)
    340a:	6983      	ldr	r3, [r0, #24]
    340c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3410:	f043 0304 	orr.w	r3, r3, #4
    3414:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    3416:	2a01      	cmp	r2, #1
    3418:	d016      	beq.n	3448 <usart_config_port+0x58>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    341a:	4b33      	ldr	r3, [pc, #204]	; (34e8 <usart_config_port+0xf8>)
    341c:	4299      	cmp	r1, r3
    341e:	d01c      	beq.n	345a <usart_config_port+0x6a>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3420:	4a32      	ldr	r2, [pc, #200]	; (34ec <usart_config_port+0xfc>)
    3422:	6853      	ldr	r3, [r2, #4]
    3424:	f043 0304 	orr.w	r3, r3, #4
    3428:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    342a:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    342e:	6993      	ldr	r3, [r2, #24]
    3430:	f043 0308 	orr.w	r3, r3, #8
    3434:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    3436:	680b      	ldr	r3, [r1, #0]
    3438:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    343c:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    343e:	680b      	ldr	r3, [r1, #0]
    3440:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    3444:	600b      	str	r3, [r1, #0]
    3446:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    3448:	684b      	ldr	r3, [r1, #4]
    344a:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    344e:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3450:	684b      	ldr	r3, [r1, #4]
    3452:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    3456:	604b      	str	r3, [r1, #4]
    3458:	e7df      	b.n	341a <usart_config_port+0x2a>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    345a:	685a      	ldr	r2, [r3, #4]
    345c:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3460:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    3462:	685a      	ldr	r2, [r3, #4]
    3464:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    3468:	605a      	str	r2, [r3, #4]
    346a:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    346c:	4b1d      	ldr	r3, [pc, #116]	; (34e4 <usart_config_port+0xf4>)
    346e:	69d8      	ldr	r0, [r3, #28]
    3470:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3474:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    3476:	6998      	ldr	r0, [r3, #24]
    3478:	f040 0004 	orr.w	r0, r0, #4
    347c:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    347e:	2a01      	cmp	r2, #1
    3480:	d008      	beq.n	3494 <usart_config_port+0xa4>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    3482:	680b      	ldr	r3, [r1, #0]
    3484:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3488:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    348a:	680b      	ldr	r3, [r1, #0]
    348c:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3490:	600b      	str	r3, [r1, #0]
    3492:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3494:	680b      	ldr	r3, [r1, #0]
    3496:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    349a:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    349c:	680b      	ldr	r3, [r1, #0]
    349e:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    34a2:	600b      	str	r3, [r1, #0]
    34a4:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    34a6:	4b0f      	ldr	r3, [pc, #60]	; (34e4 <usart_config_port+0xf4>)
    34a8:	69d8      	ldr	r0, [r3, #28]
    34aa:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    34ae:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    34b0:	6998      	ldr	r0, [r3, #24]
    34b2:	f040 0008 	orr.w	r0, r0, #8
    34b6:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    34b8:	2a01      	cmp	r2, #1
    34ba:	d008      	beq.n	34ce <usart_config_port+0xde>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    34bc:	684b      	ldr	r3, [r1, #4]
    34be:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    34c2:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    34c4:	684b      	ldr	r3, [r1, #4]
    34c6:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    34ca:	604b      	str	r3, [r1, #4]
		}
		break;
	}
}
    34cc:	e79b      	b.n	3406 <usart_config_port+0x16>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    34ce:	684b      	ldr	r3, [r1, #4]
    34d0:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    34d4:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    34d6:	684b      	ldr	r3, [r1, #4]
    34d8:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    34dc:	604b      	str	r3, [r1, #4]
    34de:	4770      	bx	lr
    34e0:	40004800 	.word	0x40004800
    34e4:	40021000 	.word	0x40021000
    34e8:	40010800 	.word	0x40010800
    34ec:	40010000 	.word	0x40010000

000034f0 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    34f0:	4b04      	ldr	r3, [pc, #16]	; (3504 <usart_set_baud+0x14>)
    34f2:	4298      	cmp	r0, r3
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
    34f4:	bf0c      	ite	eq
    34f6:	4b04      	ldreq	r3, [pc, #16]	; (3508 <usart_set_baud+0x18>)
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    34f8:	4b04      	ldrne	r3, [pc, #16]	; (350c <usart_set_baud+0x1c>)
    34fa:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channel->BRR=rate;
    34fe:	6081      	str	r1, [r0, #8]
    3500:	4770      	bx	lr
    3502:	bf00      	nop
    3504:	40013800 	.word	0x40013800
    3508:	044463f4 	.word	0x044463f4
    350c:	022231fa 	.word	0x022231fa

00003510 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
	channel->CR1&=USART_CR1_DIR_MASK;
    3510:	68c3      	ldr	r3, [r0, #12]
    3512:	f023 030c 	bic.w	r3, r3, #12
    3516:	60c3      	str	r3, [r0, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    3518:	68c3      	ldr	r3, [r0, #12]
    351a:	ea43 0181 	orr.w	r1, r3, r1, lsl #2
    351e:	60c1      	str	r1, [r0, #12]
    3520:	4770      	bx	lr

00003522 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    3522:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    3526:	4604      	mov	r4, r0
    3528:	460f      	mov	r7, r1
    352a:	4615      	mov	r5, r2
    352c:	4698      	mov	r8, r3
    352e:	9e07      	ldr	r6, [sp, #28]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    3530:	4b2e      	ldr	r3, [pc, #184]	; (35ec <usart_open_channel+0xca>)
    3532:	4298      	cmp	r0, r3
    3534:	d03e      	beq.n	35b4 <usart_open_channel+0x92>
    3536:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    353a:	4298      	cmp	r0, r3
    353c:	d01b      	beq.n	3576 <usart_open_channel+0x54>
    353e:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    3542:	4298      	cmp	r0, r3
    3544:	d02a      	beq.n	359c <usart_open_channel+0x7a>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    3546:	2e01      	cmp	r6, #1
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3548:	bf04      	itt	eq
    354a:	f44f 7340 	moveq.w	r3, #768	; 0x300
    354e:	6163      	streq	r3, [r4, #20]
	}
	usart_comm_dir(channel,dir);
    3550:	4641      	mov	r1, r8
    3552:	4620      	mov	r0, r4
    3554:	f7ff ffdc 	bl	3510 <usart_comm_dir>
	switch (parity){
    3558:	2d01      	cmp	r5, #1
    355a:	d03c      	beq.n	35d6 <usart_open_channel+0xb4>
    355c:	b3b5      	cbz	r5, 35cc <usart_open_channel+0xaa>
    355e:	2d02      	cmp	r5, #2
    3560:	d03e      	beq.n	35e0 <usart_open_channel+0xbe>
		break;
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3562:	4639      	mov	r1, r7
    3564:	4620      	mov	r0, r4
    3566:	f7ff ffc3 	bl	34f0 <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    356a:	68e3      	ldr	r3, [r4, #12]
    356c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3570:	60e3      	str	r3, [r4, #12]
    3572:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    3576:	9b06      	ldr	r3, [sp, #24]
    3578:	b95b      	cbnz	r3, 3592 <usart_open_channel+0x70>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    357a:	4632      	mov	r2, r6
    357c:	491c      	ldr	r1, [pc, #112]	; (35f0 <usart_open_channel+0xce>)
    357e:	f7ff ff37 	bl	33f0 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    3582:	2107      	movs	r1, #7
    3584:	2025      	movs	r0, #37	; 0x25
    3586:	f7fe fd5b 	bl	2040 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    358a:	2025      	movs	r0, #37	; 0x25
    358c:	f7fe fcf8 	bl	1f80 <enable_interrupt>
		break;
    3590:	e7d9      	b.n	3546 <usart_open_channel+0x24>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    3592:	4632      	mov	r2, r6
    3594:	4917      	ldr	r1, [pc, #92]	; (35f4 <usart_open_channel+0xd2>)
    3596:	f7ff ff2b 	bl	33f0 <usart_config_port>
    359a:	e7f2      	b.n	3582 <usart_open_channel+0x60>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    359c:	4632      	mov	r2, r6
    359e:	4914      	ldr	r1, [pc, #80]	; (35f0 <usart_open_channel+0xce>)
    35a0:	f7ff ff26 	bl	33f0 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    35a4:	2107      	movs	r1, #7
    35a6:	2026      	movs	r0, #38	; 0x26
    35a8:	f7fe fd4a 	bl	2040 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    35ac:	2026      	movs	r0, #38	; 0x26
    35ae:	f7fe fce7 	bl	1f80 <enable_interrupt>
		break;
    35b2:	e7c8      	b.n	3546 <usart_open_channel+0x24>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    35b4:	4632      	mov	r2, r6
    35b6:	490f      	ldr	r1, [pc, #60]	; (35f4 <usart_open_channel+0xd2>)
    35b8:	f7ff ff1a 	bl	33f0 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    35bc:	2107      	movs	r1, #7
    35be:	2027      	movs	r0, #39	; 0x27
    35c0:	f7fe fd3e 	bl	2040 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    35c4:	2027      	movs	r0, #39	; 0x27
    35c6:	f7fe fcdb 	bl	1f80 <enable_interrupt>
		break;
    35ca:	e7bc      	b.n	3546 <usart_open_channel+0x24>
		channel->CR1|=USART_CR1_RXNEIE;
    35cc:	68e3      	ldr	r3, [r4, #12]
    35ce:	f043 0320 	orr.w	r3, r3, #32
    35d2:	60e3      	str	r3, [r4, #12]
		break;
    35d4:	e7c5      	b.n	3562 <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    35d6:	68e3      	ldr	r3, [r4, #12]
    35d8:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    35dc:	60e3      	str	r3, [r4, #12]
		break;
    35de:	e7c0      	b.n	3562 <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    35e0:	68e3      	ldr	r3, [r4, #12]
    35e2:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    35e6:	60e3      	str	r3, [r4, #12]
		break;
    35e8:	e7bb      	b.n	3562 <usart_open_channel+0x40>
    35ea:	bf00      	nop
    35ec:	40004800 	.word	0x40004800
    35f0:	40010800 	.word	0x40010800
    35f4:	40010c00 	.word	0x40010c00

000035f8 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
	return channel->SR&USART_SR_RXNE;
    35f8:	6800      	ldr	r0, [r0, #0]
}
    35fa:	f000 0020 	and.w	r0, r0, #32
    35fe:	4770      	bx	lr

00003600 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
	char c;
	if (head!=tail){
    3600:	4a07      	ldr	r2, [pc, #28]	; (3620 <usart_getc+0x20>)
    3602:	7813      	ldrb	r3, [r2, #0]
    3604:	7852      	ldrb	r2, [r2, #1]
    3606:	429a      	cmp	r2, r3
    3608:	d007      	beq.n	361a <usart_getc+0x1a>
		c=rx_queue[head++];
    360a:	4a05      	ldr	r2, [pc, #20]	; (3620 <usart_getc+0x20>)
    360c:	18d1      	adds	r1, r2, r3
    360e:	7908      	ldrb	r0, [r1, #4]
    3610:	3301      	adds	r3, #1
		head&=(RX_QUEUE_SIZE-1);
    3612:	f003 030f 	and.w	r3, r3, #15
    3616:	7013      	strb	r3, [r2, #0]
		return c;
    3618:	4770      	bx	lr
	}else{
		return 0;
    361a:	2000      	movs	r0, #0
	}
		
}
    361c:	4770      	bx	lr
    361e:	bf00      	nop
    3620:	2000068c 	.word	0x2000068c

00003624 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
    3624:	b410      	push	{r4}
	unsigned t0=ntsc_ticks+dly;
    3626:	4b0d      	ldr	r3, [pc, #52]	; (365c <usart_getc_dly+0x38>)
    3628:	681b      	ldr	r3, [r3, #0]
    362a:	4419      	add	r1, r3
	char c;

	while ((ntsc_ticks<t0) && !(head==tail));
    362c:	4b0c      	ldr	r3, [pc, #48]	; (3660 <usart_getc_dly+0x3c>)
    362e:	781a      	ldrb	r2, [r3, #0]
    3630:	785c      	ldrb	r4, [r3, #1]
    3632:	480a      	ldr	r0, [pc, #40]	; (365c <usart_getc_dly+0x38>)
    3634:	6803      	ldr	r3, [r0, #0]
    3636:	4299      	cmp	r1, r3
    3638:	d901      	bls.n	363e <usart_getc_dly+0x1a>
    363a:	42a2      	cmp	r2, r4
    363c:	d1fa      	bne.n	3634 <usart_getc_dly+0x10>
	if (ntsc_ticks<t0){
    363e:	4b07      	ldr	r3, [pc, #28]	; (365c <usart_getc_dly+0x38>)
    3640:	681b      	ldr	r3, [r3, #0]
    3642:	4299      	cmp	r1, r3
    3644:	d908      	bls.n	3658 <usart_getc_dly+0x34>
			c=rx_queue[head++];
    3646:	4b06      	ldr	r3, [pc, #24]	; (3660 <usart_getc_dly+0x3c>)
    3648:	1899      	adds	r1, r3, r2
    364a:	7908      	ldrb	r0, [r1, #4]
    364c:	3201      	adds	r2, #1
			head&=(RX_QUEUE_SIZE-1);
    364e:	f002 020f 	and.w	r2, r2, #15
    3652:	701a      	strb	r2, [r3, #0]
			return c;
	}else return 0;
}
    3654:	bc10      	pop	{r4}
    3656:	4770      	bx	lr
	}else return 0;
    3658:	2000      	movs	r0, #0
    365a:	e7fb      	b.n	3654 <usart_getc_dly+0x30>
    365c:	20004e34 	.word	0x20004e34
    3660:	2000068c 	.word	0x2000068c

00003664 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    3664:	6803      	ldr	r3, [r0, #0]
    3666:	f013 0f80 	tst.w	r3, #128	; 0x80
    366a:	d0fb      	beq.n	3664 <usart_putc>
	channel->DR=c;
    366c:	6041      	str	r1, [r0, #4]
    366e:	4770      	bx	lr

00003670 <usart_cts>:
}


int usart_cts(usart_t* channel){
	int cts;
	switch ((uint32_t)channel){
    3670:	4b0d      	ldr	r3, [pc, #52]	; (36a8 <usart_cts+0x38>)
    3672:	4298      	cmp	r0, r3
    3674:	d013      	beq.n	369e <usart_cts+0x2e>
    3676:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    367a:	4298      	cmp	r0, r3
    367c:	d005      	beq.n	368a <usart_cts+0x1a>
    367e:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    3682:	4298      	cmp	r0, r3
    3684:	d006      	beq.n	3694 <usart_cts+0x24>
    3686:	2000      	movs	r0, #0
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3688:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    368a:	4b08      	ldr	r3, [pc, #32]	; (36ac <usart_cts+0x3c>)
    368c:	6898      	ldr	r0, [r3, #8]
    368e:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    3692:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    3694:	4b05      	ldr	r3, [pc, #20]	; (36ac <usart_cts+0x3c>)
    3696:	6898      	ldr	r0, [r3, #8]
    3698:	f000 0001 	and.w	r0, r0, #1
			break;
    369c:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    369e:	4b04      	ldr	r3, [pc, #16]	; (36b0 <usart_cts+0x40>)
    36a0:	6898      	ldr	r0, [r3, #8]
    36a2:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    36a6:	4770      	bx	lr
    36a8:	40004800 	.word	0x40004800
    36ac:	40010800 	.word	0x40010800
    36b0:	40010c00 	.word	0x40010c00

000036b4 <usart_print>:

void usart_print(usart_t* channel, const char *str){
    36b4:	b538      	push	{r3, r4, r5, lr}
    36b6:	4605      	mov	r5, r0
    36b8:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    36ba:	7809      	ldrb	r1, [r1, #0]
    36bc:	b131      	cbz	r1, 36cc <usart_print+0x18>
    36be:	4628      	mov	r0, r5
    36c0:	f7ff ffd0 	bl	3664 <usart_putc>
    36c4:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    36c8:	2900      	cmp	r1, #0
    36ca:	d1f8      	bne.n	36be <usart_print+0xa>
    36cc:	bd38      	pop	{r3, r4, r5, pc}

000036ce <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    36ce:	4668      	mov	r0, sp
    36d0:	f020 0107 	bic.w	r1, r0, #7
    36d4:	468d      	mov	sp, r1
    36d6:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    36d8:	4b08      	ldr	r3, [pc, #32]	; (36fc <USART1_handler+0x2e>)
    36da:	681b      	ldr	r3, [r3, #0]
    36dc:	f013 0f20 	tst.w	r3, #32
    36e0:	d009      	beq.n	36f6 <USART1_handler+0x28>
				rx_queue[tail++]=USART1->DR;
    36e2:	4a07      	ldr	r2, [pc, #28]	; (3700 <USART1_handler+0x32>)
    36e4:	7853      	ldrb	r3, [r2, #1]
    36e6:	4905      	ldr	r1, [pc, #20]	; (36fc <USART1_handler+0x2e>)
    36e8:	6848      	ldr	r0, [r1, #4]
    36ea:	18d1      	adds	r1, r2, r3
    36ec:	7108      	strb	r0, [r1, #4]
    36ee:	3301      	adds	r3, #1
				tail&=(RX_QUEUE_SIZE-1);
    36f0:	f003 030f 	and.w	r3, r3, #15
    36f4:	7053      	strb	r3, [r2, #1]
		}
}
    36f6:	bc01      	pop	{r0}
    36f8:	4685      	mov	sp, r0
    36fa:	4770      	bx	lr
    36fc:	40013800 	.word	0x40013800
    3700:	2000068c 	.word	0x2000068c
