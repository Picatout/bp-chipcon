
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 91 2a 00 00     .P. 1........*..
      10:	91 2a 00 00 91 2a 00 00 91 2a 00 00 91 2a 00 00     .*...*...*...*..
      20:	91 2a 00 00 91 2a 00 00 91 2a 00 00 09 02 00 00     .*...*...*......
      30:	91 2a 00 00 91 2a 00 00 0d 02 00 00 11 02 00 00     .*...*..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 a3 27 00 00     ........!....'..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 91 2a 00 00 91 2a 00 00 49 02 00 00     E....*...*..I...
      80:	91 2a 00 00 91 2a 00 00 91 2a 00 00 91 2a 00 00     .*...*...*...*..
      90:	91 2a 00 00 91 2a 00 00 91 2a 00 00 4d 02 00 00     .*...*...*..M...
      a0:	91 2a 00 00 c9 30 00 00 91 2a 00 00 e1 2f 00 00     .*...0...*.../..
      b0:	b9 28 00 00 51 02 00 00 55 02 00 00 91 2a 00 00     .(..Q...U....*..
      c0:	91 2a 00 00 91 2a 00 00 91 2a 00 00 91 2a 00 00     .*...*...*...*..
      d0:	91 2a 00 00 59 02 00 00 5d 02 00 00 61 02 00 00     .*..Y...]...a...
      e0:	91 2a 00 00 91 2a 00 00 91 2a 00 00 91 2a 00 00     .*...*...*...*..
      f0:	91 2a 00 00 91 2a 00 00 91 2a 00 00 91 2a 00 00     .*...*...*...*..
     100:	91 2a 00 00 91 2a 00 00 91 2a 00 00 91 2a 00 00     .*...*...*...*..
     110:	91 2a 00 00 91 2a 00 00 91 2a 00 00 91 2a 00 00     .*...*...*...*..
     120:	91 2a 00 00 91 2a 00 00 91 2a 00 00 91 2a 00 00     .*...*...*...*..

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
     186:	f001 fc97 	bl	1ab8 <main>
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
     1da:	f002 fc61 	bl	2aa0 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fc5e 	bl	2aa0 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fc5b 	bl	2aa0 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fc58 	bl	2aa0 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003e58 	.word	0x00003e58
     1f8:	00003e34 	.word	0x00003e34
     1fc:	00003e4c 	.word	0x00003e4c
     200:	00003e68 	.word	0x00003e68

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fc44 	bl	2a90 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fc42 	bl	2a90 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fc40 	bl	2a90 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fc3e 	bl	2a90 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fc3c 	bl	2a90 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fc3a 	bl	2a90 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fc38 	bl	2a90 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fc36 	bl	2a90 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fc34 	bl	2a90 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fc32 	bl	2a90 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fc30 	bl	2a90 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fc2e 	bl	2a90 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fc2c 	bl	2a90 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fc2a 	bl	2a90 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fc28 	bl	2a90 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fc26 	bl	2a90 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fc24 	bl	2a90 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fc22 	bl	2a90 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fc20 	bl	2a90 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fc1e 	bl	2a90 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fc1c 	bl	2a90 <reset_mcu>

00000258 <USART1_handler>:
_default_handler(USART1_handler) // 37
     258:	f002 fc1a 	bl	2a90 <reset_mcu>

0000025c <USART2_handler>:
_default_handler(USART2_handler) // 38
     25c:	f002 fc18 	bl	2a90 <reset_mcu>

00000260 <USART3_handler>:
_default_handler(USART3_handler) // 39
     260:	f002 fc16 	bl	2a90 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fc14 	bl	2a90 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fc12 	bl	2a90 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fc10 	bl	2a90 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fc0e 	bl	2a90 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fc0c 	bl	2a90 <reset_mcu>

00000278 <basic>:
#include "graphics.h"
#include "gamepad.h"
#include "text.h"
#include "basic.h"

void basic(){
     278:	b508      	push	{r3, lr}
    gfx_cls();
     27a:	f001 f9af 	bl	15dc <gfx_cls>
    print("not done yet\n");
     27e:	4804      	ldr	r0, [pc, #16]	; (290 <basic+0x18>)
     280:	f002 fd78 	bl	2d74 <print>
    prompt_btn();
     284:	f002 fddb 	bl	2e3e <prompt_btn>
    btn_wait_any();
     288:	f000 ff46 	bl	1118 <btn_wait_any>
     28c:	bd08      	pop	{r3, pc}
     28e:	bf00      	nop
     290:	00003ba0 	.word	0x00003ba0

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
     332:	f002 fc2f 	bl	2b94 <get_font>
     336:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     338:	2002      	movs	r0, #2
     33a:	f002 fc25 	bl	2b88 <select_font>
	new_line();
     33e:	f002 fc2f 	bl	2ba0 <new_line>
	print(msg);
     342:	4628      	mov	r0, r5
     344:	f002 fd16 	bl	2d74 <print>
	switch(error_code){
     348:	2c02      	cmp	r4, #2
     34a:	d03a      	beq.n	3c2 <print_vms+0x96>
     34c:	2c03      	cmp	r4, #3
     34e:	d102      	bne.n	356 <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     350:	481e      	ldr	r0, [pc, #120]	; (3cc <print_vms+0xa0>)
     352:	f002 fd0f 	bl	2d74 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     356:	481e      	ldr	r0, [pc, #120]	; (3d0 <print_vms+0xa4>)
     358:	f002 fd0c 	bl	2d74 <print>
	print_hex(vms.pc-2);
     35c:	4d1d      	ldr	r5, [pc, #116]	; (3d4 <print_vms+0xa8>)
     35e:	8828      	ldrh	r0, [r5, #0]
     360:	2110      	movs	r1, #16
     362:	3802      	subs	r0, #2
     364:	f002 fd21 	bl	2daa <print_int>
	print_hex(vms.b2);
     368:	2110      	movs	r1, #16
     36a:	7de8      	ldrb	r0, [r5, #23]
     36c:	f002 fd1d 	bl	2daa <print_int>
	print_hex(vms.b1);
     370:	2110      	movs	r1, #16
     372:	7da8      	ldrb	r0, [r5, #22]
     374:	f002 fd19 	bl	2daa <print_int>
	new_line();
     378:	f002 fc12 	bl	2ba0 <new_line>
	print("I:");
     37c:	4816      	ldr	r0, [pc, #88]	; (3d8 <print_vms+0xac>)
     37e:	f002 fcf9 	bl	2d74 <print>
	print_hex(vms.ix);
     382:	2110      	movs	r1, #16
     384:	8868      	ldrh	r0, [r5, #2]
     386:	f002 fd10 	bl	2daa <print_int>
	print(" SP:");
     38a:	4814      	ldr	r0, [pc, #80]	; (3dc <print_vms+0xb0>)
     38c:	f002 fcf2 	bl	2d74 <print>
	print_hex(vms.sp);
     390:	2110      	movs	r1, #16
     392:	7928      	ldrb	r0, [r5, #4]
     394:	f002 fd09 	bl	2daa <print_int>
	new_line();
     398:	f002 fc02 	bl	2ba0 <new_line>
	print("var[]:");
     39c:	4810      	ldr	r0, [pc, #64]	; (3e0 <print_vms+0xb4>)
     39e:	f002 fce9 	bl	2d74 <print>
     3a2:	1dac      	adds	r4, r5, #6
     3a4:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     3a6:	2610      	movs	r6, #16
     3a8:	4631      	mov	r1, r6
     3aa:	f814 0b01 	ldrb.w	r0, [r4], #1
     3ae:	f002 fcfc 	bl	2daa <print_int>
	for (int i=0;i<16;i++){
     3b2:	42ac      	cmp	r4, r5
     3b4:	d1f8      	bne.n	3a8 <print_vms+0x7c>
	}
	new_line();
     3b6:	f002 fbf3 	bl	2ba0 <new_line>
	select_font(orig_font);
     3ba:	4638      	mov	r0, r7
     3bc:	f002 fbe4 	bl	2b88 <select_font>
     3c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3c2:	4808      	ldr	r0, [pc, #32]	; (3e4 <print_vms+0xb8>)
     3c4:	f002 fcd6 	bl	2d74 <print>
		break;
     3c8:	e7c5      	b.n	356 <print_vms+0x2a>
     3ca:	bf00      	nop
     3cc:	00003bb0 	.word	0x00003bb0
     3d0:	00003bd8 	.word	0x00003bd8
     3d4:	200001f8 	.word	0x200001f8
     3d8:	00003bdc 	.word	0x00003bdc
     3dc:	00003be0 	.word	0x00003be0
     3e0:	00003be8 	.word	0x00003be8
     3e4:	00003bc4 	.word	0x00003bc4

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
     424:	f080 841f 	bcs.w	c66 <chip_vm+0x856>
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
     43c:	f002 ffc0 	bl	33c0 <micro_pause>
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
     458:	f000 ffbc 	bl	13d4 <itoa>
     45c:	4f8a      	ldr	r7, [pc, #552]	; (688 <chip_vm+0x278>)
     45e:	4601      	mov	r1, r0
     460:	4638      	mov	r0, r7
     462:	f003 f903 	bl	366c <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     466:	7da0      	ldrb	r0, [r4, #22]
     468:	7de3      	ldrb	r3, [r4, #23]
     46a:	2210      	movs	r2, #16
     46c:	a902      	add	r1, sp, #8
     46e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     472:	f000 ffaf 	bl	13d4 <itoa>
     476:	4601      	mov	r1, r0
     478:	4638      	mov	r0, r7
     47a:	f003 f8f7 	bl	366c <usart_print>
			_debug_print("\n");
     47e:	4983      	ldr	r1, [pc, #524]	; (68c <chip_vm+0x27c>)
     480:	4638      	mov	r0, r7
     482:	f003 f8f3 	bl	366c <usart_print>
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
     4c0:	f002 fd14 	bl	2eec <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4c4:	2100      	movs	r1, #0
     4c6:	4872      	ldr	r0, [pc, #456]	; (690 <chip_vm+0x280>)
     4c8:	f7ff ff30 	bl	32c <print_vms>
			select_console(LOCAL);
     4cc:	2000      	movs	r0, #0
     4ce:	f002 fd0d 	bl	2eec <select_console>
			break;
     4d2:	e7d8      	b.n	486 <chip_vm+0x76>
			select_console(SERIAL);
     4d4:	2001      	movs	r0, #1
     4d6:	f002 fd09 	bl	2eec <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4da:	2100      	movs	r1, #0
     4dc:	486c      	ldr	r0, [pc, #432]	; (690 <chip_vm+0x280>)
     4de:	f7ff ff25 	bl	32c <print_vms>
			prompt_btn();
     4e2:	f002 fcac 	bl	2e3e <prompt_btn>
			select_console(LOCAL);
     4e6:	2000      	movs	r0, #0
     4e8:	f002 fd00 	bl	2eec <select_console>
			btn_wait_any();
     4ec:	f000 fe14 	bl	1118 <btn_wait_any>
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
     548:	03a303be 	.word	0x03a303be
     54c:	0040      	.short	0x0040
				gfx_scroll_down(vms.b2&0xf); 
     54e:	f003 000f 	and.w	r0, r3, #15
     552:	f001 f87d 	bl	1650 <gfx_scroll_down>
     556:	e0a4      	b.n	6a2 <chip_vm+0x292>
				gfx_scroll_up(vms.b2&0xf);					
     558:	f003 000f 	and.w	r0, r3, #15
     55c:	f001 f852 	bl	1604 <gfx_scroll_up>
     560:	e09f      	b.n	6a2 <chip_vm+0x292>
					exit_code=CHIP_BAD_OPCODE;
     562:	f04f 0802 	mov.w	r8, #2
     566:	e383      	b.n	c70 <chip_vm+0x860>
					gfx_cls();
     568:	f001 f838 	bl	15dc <gfx_cls>
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
     580:	f001 f8b8 	bl	16f4 <gfx_scroll_right>
					break;
     584:	e08d      	b.n	6a2 <chip_vm+0x292>
					gfx_scroll_left(4);
     586:	2004      	movs	r0, #4
     588:	f001 f886 	bl	1698 <gfx_scroll_left>
					break;
     58c:	e089      	b.n	6a2 <chip_vm+0x292>
					set_video_mode(VM_SCHIP);
     58e:	2001      	movs	r0, #1
     590:	f002 fed8 	bl	3344 <set_video_mode>
					break; 
     594:	e085      	b.n	6a2 <chip_vm+0x292>
					set_video_mode(VM_BPCHIP);
     596:	2000      	movs	r0, #0
     598:	f002 fed4 	bl	3344 <set_video_mode>
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
     618:	f040 832a 	bne.w	c70 <chip_vm+0x860>
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
     654:	f000 fe4d 	bl	12f2 <move>
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
     678:	f000 fe3b 	bl	12f2 <move>
				break;
     67c:	e011      	b.n	6a2 <chip_vm+0x292>
     67e:	bf00      	nop
     680:	200001f8 	.word	0x200001f8
     684:	2000068c 	.word	0x2000068c
     688:	40013800 	.word	0x40013800
     68c:	00003ce8 	.word	0x00003ce8
     690:	00003bf0 	.word	0x00003bf0
     694:	20000688 	.word	0x20000688
     698:	51eb851f 	.word	0x51eb851f
			vms.var[x]=vms.b2;
     69c:	44a0      	add	r8, r4
     69e:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     6a2:	8823      	ldrh	r3, [r4, #0]
     6a4:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     6a8:	f080 82e0 	bcs.w	c6c <chip_vm+0x85c>
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
     6ec:	f200 82af 	bhi.w	c4e <chip_vm+0x83e>
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
     756:	f200 8280 	bhi.w	c5a <chip_vm+0x84a>
     75a:	e8df f013 	tbh	[pc, r3, lsl #1]
     75e:	000f      	.short	0x000f
     760:	00200016 	.word	0x00200016
     764:	0034002a 	.word	0x0034002a
     768:	00520043 	.word	0x00520043
     76c:	027e005c 	.word	0x027e005c
     770:	027e027e 	.word	0x027e027e
     774:	027e027e 	.word	0x027e027e
     778:	006b027e 	.word	0x006b027e
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
     84c:	f200 8208 	bhi.w	c60 <chip_vm+0x850>
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
     88c:	f001 ffec 	bl	2868 <key_tone>
				break;
     890:	e707      	b.n	6a2 <chip_vm+0x292>
				select_font(FONT_ASCII);
     892:	2002      	movs	r0, #2
     894:	f002 f978 	bl	2b88 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     898:	44a1      	add	r9, r4
     89a:	44a0      	add	r8, r4
     89c:	f899 1006 	ldrb.w	r1, [r9, #6]
     8a0:	f898 0006 	ldrb.w	r0, [r8, #6]
     8a4:	f002 fa32 	bl	2d0c <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     8a8:	8860      	ldrh	r0, [r4, #2]
     8aa:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9b4 <chip_vm+0x5a4>
     8ae:	4448      	add	r0, r9
     8b0:	f002 fa60 	bl	2d74 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8b4:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8b8:	eb09 0008 	add.w	r0, r9, r8
     8bc:	f000 fd23 	bl	1306 <strlen>
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
     8dc:	f000 fe08 	bl	14f0 <gfx_blit>
				break;
     8e0:	e6df      	b.n	6a2 <chip_vm+0x292>
				noise((x<<4)+y);
     8e2:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8e6:	f001 ffd3 	bl	2890 <noise>
				break;
     8ea:	e6da      	b.n	6a2 <chip_vm+0x292>
				key_tone(vms.var[x],vms.var[y],true);
     8ec:	44a1      	add	r9, r4
     8ee:	44a0      	add	r8, r4
     8f0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8f4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8f8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8fc:	f001 ffb4 	bl	2868 <key_tone>
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
     92c:	f002 fd34 	bl	3398 <get_video_params>
					vms.var[x]=vparams->hres;
     930:	44a0      	add	r8, r4
     932:	8983      	ldrh	r3, [r0, #12]
     934:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     938:	e6b3      	b.n	6a2 <chip_vm+0x292>
					vmode_params_t *vparams=get_video_params();
     93a:	f002 fd2d 	bl	3398 <get_video_params>
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
     9b4:	2000068c 	.word	0x2000068c
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
     9da:	f000 febf 	bl	175c <gfx_get_pixel>
     9de:	7560      	strb	r0, [r4, #21]
				break;  	
     9e0:	e65f      	b.n	6a2 <chip_vm+0x292>
			vms.ix=caddr(vms.b1,vms.b2);
     9e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9e6:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9ea:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9ec:	4aa8      	ldr	r2, [pc, #672]	; (c90 <chip_vm+0x880>)
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
     a0c:	4aa0      	ldr	r2, [pc, #640]	; (c90 <chip_vm+0x880>)
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
     a44:	4a93      	ldr	r2, [pc, #588]	; (c94 <chip_vm+0x884>)
     a46:	4413      	add	r3, r2
     a48:	9300      	str	r3, [sp, #0]
     a4a:	2310      	movs	r3, #16
     a4c:	461a      	mov	r2, r3
     a4e:	f000 feab 	bl	17a8 <gfx_sprite>
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
     a6a:	f000 fe9d 	bl	17a8 <gfx_sprite>
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
     a84:	f8df e20c 	ldr.w	lr, [pc, #524]	; c94 <chip_vm+0x884>
     a88:	4472      	add	r2, lr
     a8a:	9200      	str	r2, [sp, #0]
     a8c:	2208      	movs	r2, #8
     a8e:	f000 fe8b 	bl	17a8 <gfx_sprite>
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
     aa8:	f000 fe7e 	bl	17a8 <gfx_sprite>
     aac:	7560      	strb	r0, [r4, #21]
     aae:	e5f8      	b.n	6a2 <chip_vm+0x292>
				switch(vms.b2){
     ab0:	2b9e      	cmp	r3, #158	; 0x9e
     ab2:	d003      	beq.n	abc <chip_vm+0x6ac>
     ab4:	2ba1      	cmp	r3, #161	; 0xa1
     ab6:	d00d      	beq.n	ad4 <chip_vm+0x6c4>
					return CHIP_BAD_OPCODE;
     ab8:	2002      	movs	r0, #2
     aba:	e0e3      	b.n	c84 <chip_vm+0x874>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     abc:	44a0      	add	r8, r4
     abe:	f898 0006 	ldrb.w	r0, [r8, #6]
     ac2:	f000 faf5 	bl	10b0 <btn_query_down>
     ac6:	2800      	cmp	r0, #0
     ac8:	f43f adeb 	beq.w	6a2 <chip_vm+0x292>
     acc:	8823      	ldrh	r3, [r4, #0]
     ace:	3302      	adds	r3, #2
     ad0:	8023      	strh	r3, [r4, #0]
     ad2:	e5e6      	b.n	6a2 <chip_vm+0x292>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     ad4:	44a0      	add	r8, r4
     ad6:	f898 0006 	ldrb.w	r0, [r8, #6]
     ada:	f000 fae9 	bl	10b0 <btn_query_down>
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
				flash_read_block((const uint8_t*)PERSIST_STORE,vms.var,x+1);
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
     b12:	4b61      	ldr	r3, [pc, #388]	; (c98 <chip_vm+0x888>)
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
     b2c:	f000 8087 	beq.w	c3e <chip_vm+0x82e>
     b30:	2b65      	cmp	r3, #101	; 0x65
     b32:	d1e7      	bne.n	b04 <chip_vm+0x6f4>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     b34:	8863      	ldrh	r3, [r4, #2]
     b36:	f108 0201 	add.w	r2, r8, #1
     b3a:	4631      	mov	r1, r6
     b3c:	4855      	ldr	r0, [pc, #340]	; (c94 <chip_vm+0x884>)
     b3e:	4418      	add	r0, r3
     b40:	f000 fbd7 	bl	12f2 <move>
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
     b54:	4a51      	ldr	r2, [pc, #324]	; (c9c <chip_vm+0x88c>)
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
     b8a:	4942      	ldr	r1, [pc, #264]	; (c94 <chip_vm+0x884>)
     b8c:	4419      	add	r1, r3
     b8e:	f104 0058 	add.w	r0, r4, #88	; 0x58
     b92:	f000 fbae 	bl	12f2 <move>
				break;
     b96:	e584      	b.n	6a2 <chip_vm+0x292>
				sprite_bpp=vms.b1%3;
     b98:	4b41      	ldr	r3, [pc, #260]	; (ca0 <chip_vm+0x890>)
     b9a:	fba3 1302 	umull	r1, r3, r3, r2
     b9e:	085b      	lsrs	r3, r3, #1
     ba0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     ba4:	1ad2      	subs	r2, r2, r3
     ba6:	4b3f      	ldr	r3, [pc, #252]	; (ca4 <chip_vm+0x894>)
     ba8:	701a      	strb	r2, [r3, #0]
				break;
     baa:	e57a      	b.n	6a2 <chip_vm+0x292>
				vms.var[x]=btn_wait_any();
     bac:	f000 fab4 	bl	1118 <btn_wait_any>
     bb0:	44a0      	add	r8, r4
     bb2:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     bb6:	e574      	b.n	6a2 <chip_vm+0x292>
				game_timer=vms.var[x];
     bb8:	44a0      	add	r8, r4
     bba:	f898 2006 	ldrb.w	r2, [r8, #6]
     bbe:	4b36      	ldr	r3, [pc, #216]	; (c98 <chip_vm+0x888>)
     bc0:	801a      	strh	r2, [r3, #0]
				break;
     bc2:	e56e      	b.n	6a2 <chip_vm+0x292>
				tone(523,vms.var[x]);
     bc4:	44a0      	add	r8, r4
     bc6:	f898 1006 	ldrb.w	r1, [r8, #6]
     bca:	f240 200b 	movw	r0, #523	; 0x20b
     bce:	f001 fe25 	bl	281c <tone>
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
     bec:	4a2e      	ldr	r2, [pc, #184]	; (ca8 <chip_vm+0x898>)
     bee:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     bf2:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     bf4:	2301      	movs	r3, #1
     bf6:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     bf8:	2000      	movs	r0, #0
     bfa:	f001 ffc5 	bl	2b88 <select_font>
				break;
     bfe:	e550      	b.n	6a2 <chip_vm+0x292>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c00:	44a0      	add	r8, r4
     c02:	f898 3006 	ldrb.w	r3, [r8, #6]
     c06:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c0a:	4a28      	ldr	r2, [pc, #160]	; (cac <chip_vm+0x89c>)
     c0c:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c10:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c12:	2001      	movs	r0, #1
     c14:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     c16:	f001 ffb7 	bl	2b88 <select_font>
				break;
     c1a:	e542      	b.n	6a2 <chip_vm+0x292>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     c1c:	8863      	ldrh	r3, [r4, #2]
     c1e:	f108 0201 	add.w	r2, r8, #1
     c22:	491c      	ldr	r1, [pc, #112]	; (c94 <chip_vm+0x884>)
     c24:	4419      	add	r1, r3
     c26:	4630      	mov	r0, r6
     c28:	f000 fb63 	bl	12f2 <move>
				break;
     c2c:	e539      	b.n	6a2 <chip_vm+0x292>
				flash_write_block(PERSIST_STORE,vms.var,x+1);
     c2e:	f108 0201 	add.w	r2, r8, #1
     c32:	4631      	mov	r1, r6
     c34:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
     c38:	f000 f96e 	bl	f18 <flash_write_block>
				break;
     c3c:	e531      	b.n	6a2 <chip_vm+0x292>
				flash_read_block((const uint8_t*)PERSIST_STORE,vms.var,x+1);
     c3e:	f108 0201 	add.w	r2, r8, #1
     c42:	4631      	mov	r1, r6
     c44:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
     c48:	f000 f94c 	bl	ee4 <flash_read_block>
				break;
     c4c:	e529      	b.n	6a2 <chip_vm+0x292>
	    switch (vms.b1>>4){
     c4e:	f04f 0800 	mov.w	r8, #0
     c52:	e4df      	b.n	614 <chip_vm+0x204>
			}else switch(vms.b2){
     c54:	f04f 0800 	mov.w	r8, #0
     c58:	e4dc      	b.n	614 <chip_vm+0x204>
				exit_code=CHIP_BAD_OPCODE;
     c5a:	f04f 0802 	mov.w	r8, #2
     c5e:	e4d9      	b.n	614 <chip_vm+0x204>
				exit_code=CHIP_BAD_OPCODE;
     c60:	f04f 0802 	mov.w	r8, #2
     c64:	e4d6      	b.n	614 <chip_vm+0x204>
			exit_code=CHIP_BAD_ADDR;
     c66:	f04f 0803 	mov.w	r8, #3
     c6a:	e001      	b.n	c70 <chip_vm+0x860>
     c6c:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     c70:	2002      	movs	r0, #2
     c72:	f001 ff89 	bl	2b88 <select_font>
	set_keymap(default_kmap);
     c76:	480e      	ldr	r0, [pc, #56]	; (cb0 <chip_vm+0x8a0>)
     c78:	f000 f9cc 	bl	1014 <set_keymap>
	set_video_mode(VM_BPCHIP);
     c7c:	2000      	movs	r0, #0
     c7e:	f002 fb61 	bl	3344 <set_video_mode>
	return exit_code;
     c82:	4640      	mov	r0, r8
}//schipp()
     c84:	b008      	add	sp, #32
     c86:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					exit_code=CHIP_EXIT_OK;
     c8a:	f04f 0801 	mov.w	r8, #1
     c8e:	e7ef      	b.n	c70 <chip_vm+0x860>
     c90:	20000688 	.word	0x20000688
     c94:	2000068c 	.word	0x2000068c
     c98:	20004e1c 	.word	0x20004e1c
     c9c:	cccccccd 	.word	0xcccccccd
     ca0:	aaaaaaab 	.word	0xaaaaaaab
     ca4:	20000190 	.word	0x20000190
     ca8:	00003a80 	.word	0x00003a80
     cac:	000039e0 	.word	0x000039e0
     cb0:	00003ae0 	.word	0x00003ae0

00000cb4 <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     cb4:	2200      	movs	r2, #0
     cb6:	4b0f      	ldr	r3, [pc, #60]	; (cf4 <flash_enable+0x40>)
     cb8:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     cba:	4b0f      	ldr	r3, [pc, #60]	; (cf8 <flash_enable+0x44>)
     cbc:	681b      	ldr	r3, [r3, #0]
     cbe:	f013 0f01 	tst.w	r3, #1
     cc2:	d10b      	bne.n	cdc <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     cc4:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     cc8:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     ccc:	6813      	ldr	r3, [r2, #0]
     cce:	f043 0301 	orr.w	r3, r3, #1
     cd2:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     cd4:	6813      	ldr	r3, [r2, #0]
     cd6:	f013 0f02 	tst.w	r3, #2
     cda:	d0fb      	beq.n	cd4 <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     cdc:	4b07      	ldr	r3, [pc, #28]	; (cfc <flash_enable+0x48>)
     cde:	4a08      	ldr	r2, [pc, #32]	; (d00 <flash_enable+0x4c>)
     ce0:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     ce2:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     ce6:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     ce8:	6918      	ldr	r0, [r3, #16]
     cea:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     cee:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     cf2:	4770      	bx	lr
     cf4:	20000270 	.word	0x20000270
     cf8:	40021000 	.word	0x40021000
     cfc:	40022000 	.word	0x40022000
     d00:	45670123 	.word	0x45670123

00000d04 <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     d04:	4a0b      	ldr	r2, [pc, #44]	; (d34 <flash_write_hword+0x30>)
     d06:	68d3      	ldr	r3, [r2, #12]
     d08:	f013 0f01 	tst.w	r3, #1
     d0c:	d1fb      	bne.n	d06 <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     d0e:	4b09      	ldr	r3, [pc, #36]	; (d34 <flash_write_hword+0x30>)
     d10:	68da      	ldr	r2, [r3, #12]
     d12:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     d16:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     d18:	2201      	movs	r2, #1
     d1a:	611a      	str	r2, [r3, #16]
	*address=hword;
     d1c:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     d1e:	68da      	ldr	r2, [r3, #12]
     d20:	f012 0f01 	tst.w	r2, #1
     d24:	d003      	beq.n	d2e <flash_write_hword+0x2a>
     d26:	68da      	ldr	r2, [r3, #12]
     d28:	f012 0f20 	tst.w	r2, #32
     d2c:	d0f7      	beq.n	d1e <flash_write_hword+0x1a>
	return *address==hword;
}
     d2e:	2001      	movs	r0, #1
     d30:	4770      	bx	lr
     d32:	bf00      	nop
     d34:	40022000 	.word	0x40022000

00000d38 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     d38:	283f      	cmp	r0, #63	; 0x3f
     d3a:	d914      	bls.n	d66 <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     d3c:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     d3e:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     d40:	1c81      	adds	r1, r0, #2
     d42:	8802      	ldrh	r2, [r0, #0]
     d44:	f64f 73ff 	movw	r3, #65535	; 0xffff
     d48:	429a      	cmp	r2, r3
     d4a:	d110      	bne.n	d6e <flash_erase_row+0x36>
     d4c:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     d50:	460b      	mov	r3, r1
     d52:	f64f 74ff 	movw	r4, #65535	; 0xffff
     d56:	f833 2b02 	ldrh.w	r2, [r3], #2
     d5a:	42a2      	cmp	r2, r4
     d5c:	d107      	bne.n	d6e <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     d5e:	429d      	cmp	r5, r3
     d60:	d1f9      	bne.n	d56 <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     d62:	2001      	movs	r0, #1
     d64:	e02f      	b.n	dc6 <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     d66:	2000      	movs	r0, #0
     d68:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     d6a:	2000      	movs	r0, #0
     d6c:	e02b      	b.n	dc6 <flash_erase_row+0x8e>
     d6e:	4b17      	ldr	r3, [pc, #92]	; (dcc <flash_erase_row+0x94>)
     d70:	691b      	ldr	r3, [r3, #16]
     d72:	f013 0f80 	tst.w	r3, #128	; 0x80
     d76:	d1f8      	bne.n	d6a <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     d78:	4b14      	ldr	r3, [pc, #80]	; (dcc <flash_erase_row+0x94>)
     d7a:	68da      	ldr	r2, [r3, #12]
     d7c:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     d80:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     d82:	2202      	movs	r2, #2
     d84:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     d86:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     d88:	691a      	ldr	r2, [r3, #16]
     d8a:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     d8e:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     d90:	68da      	ldr	r2, [r3, #12]
     d92:	f012 0f01 	tst.w	r2, #1
     d96:	d003      	beq.n	da0 <flash_erase_row+0x68>
     d98:	68da      	ldr	r2, [r3, #12]
     d9a:	f012 0f20 	tst.w	r2, #32
     d9e:	d0f7      	beq.n	d90 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     da0:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     da2:	f64f 72ff 	movw	r2, #65535	; 0xffff
     da6:	4293      	cmp	r3, r2
     da8:	d107      	bne.n	dba <flash_erase_row+0x82>
     daa:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     dae:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     db2:	4293      	cmp	r3, r2
     db4:	d101      	bne.n	dba <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     db6:	4281      	cmp	r1, r0
     db8:	d1f9      	bne.n	dae <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     dba:	f64f 70ff 	movw	r0, #65535	; 0xffff
     dbe:	4283      	cmp	r3, r0
     dc0:	bf14      	ite	ne
     dc2:	2000      	movne	r0, #0
     dc4:	2001      	moveq	r0, #1
}
     dc6:	bc30      	pop	{r4, r5}
     dc8:	4770      	bx	lr
     dca:	bf00      	nop
     dcc:	40022000 	.word	0x40022000

00000dd0 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     dd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     dd2:	4b1c      	ldr	r3, [pc, #112]	; (e44 <flash_sync+0x74>)
     dd4:	781b      	ldrb	r3, [r3, #0]
     dd6:	f013 0f01 	tst.w	r3, #1
     dda:	d102      	bne.n	de2 <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     ddc:	2301      	movs	r3, #1
}
     dde:	4618      	mov	r0, r3
     de0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     de2:	4b18      	ldr	r3, [pc, #96]	; (e44 <flash_sync+0x74>)
     de4:	7858      	ldrb	r0, [r3, #1]
     de6:	f7ff ffa7 	bl	d38 <flash_erase_row>
     dea:	4603      	mov	r3, r0
     dec:	2800      	cmp	r0, #0
     dee:	d0f6      	beq.n	dde <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     df0:	4e14      	ldr	r6, [pc, #80]	; (e44 <flash_sync+0x74>)
     df2:	7875      	ldrb	r5, [r6, #1]
     df4:	02ad      	lsls	r5, r5, #10
     df6:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     df8:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     dfa:	f64f 77ff 	movw	r7, #65535	; 0xffff
     dfe:	e004      	b.n	e0a <flash_sync+0x3a>
		dest++;
     e00:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e02:	3401      	adds	r4, #1
     e04:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     e08:	d00a      	beq.n	e20 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     e0a:	f836 1b02 	ldrh.w	r1, [r6], #2
     e0e:	42b9      	cmp	r1, r7
     e10:	d0f6      	beq.n	e00 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     e12:	4628      	mov	r0, r5
     e14:	f7ff ff76 	bl	d04 <flash_write_hword>
     e18:	2800      	cmp	r0, #0
     e1a:	d1f1      	bne.n	e00 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     e1c:	2c00      	cmp	r4, #0
     e1e:	dd04      	ble.n	e2a <flash_sync+0x5a>
     e20:	4a08      	ldr	r2, [pc, #32]	; (e44 <flash_sync+0x74>)
     e22:	7813      	ldrb	r3, [r2, #0]
     e24:	f023 0304 	bic.w	r3, r3, #4
     e28:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     e2a:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     e2e:	d106      	bne.n	e3e <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     e30:	4a04      	ldr	r2, [pc, #16]	; (e44 <flash_sync+0x74>)
     e32:	7813      	ldrb	r3, [r2, #0]
     e34:	f023 0301 	bic.w	r3, r3, #1
     e38:	7013      	strb	r3, [r2, #0]
			return 1;
     e3a:	2301      	movs	r3, #1
     e3c:	e7cf      	b.n	dde <flash_sync+0xe>
		return 0;
     e3e:	2300      	movs	r3, #0
     e40:	e7cd      	b.n	dde <flash_sync+0xe>
     e42:	bf00      	nop
     e44:	20000270 	.word	0x20000270

00000e48 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     e48:	2200      	movs	r2, #0
     e4a:	4b01      	ldr	r3, [pc, #4]	; (e50 <flash_flush+0x8>)
     e4c:	701a      	strb	r2, [r3, #0]
     e4e:	4770      	bx	lr
     e50:	20000270 	.word	0x20000270

00000e54 <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     e54:	b508      	push	{r3, lr}
	flash_sync();
     e56:	f7ff ffbb 	bl	dd0 <flash_sync>
	row_buff.flags=0;
     e5a:	2200      	movs	r2, #0
     e5c:	4b03      	ldr	r3, [pc, #12]	; (e6c <flash_disable+0x18>)
     e5e:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     e60:	4a03      	ldr	r2, [pc, #12]	; (e70 <flash_disable+0x1c>)
     e62:	6913      	ldr	r3, [r2, #16]
     e64:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     e68:	6113      	str	r3, [r2, #16]
     e6a:	bd08      	pop	{r3, pc}
     e6c:	20000270 	.word	0x20000270
     e70:	40022000 	.word	0x40022000

00000e74 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     e74:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     e78:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     e7c:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     e80:	d92c      	bls.n	edc <flash_write_byte+0x68>
     e82:	460e      	mov	r6, r1
     e84:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     e86:	4b16      	ldr	r3, [pc, #88]	; (ee0 <flash_write_byte+0x6c>)
     e88:	785b      	ldrb	r3, [r3, #1]
     e8a:	4598      	cmp	r8, r3
     e8c:	d019      	beq.n	ec2 <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     e8e:	f7ff ff9f 	bl	dd0 <flash_sync>
     e92:	4603      	mov	r3, r0
     e94:	b1f8      	cbz	r0, ed6 <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     e96:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     e9a:	f023 0303 	bic.w	r3, r3, #3
     e9e:	4a10      	ldr	r2, [pc, #64]	; (ee0 <flash_write_byte+0x6c>)
     ea0:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     ea4:	f833 4b02 	ldrh.w	r4, [r3], #2
     ea8:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     eac:	42ab      	cmp	r3, r5
     eae:	d1f9      	bne.n	ea4 <flash_write_byte+0x30>
	row_buff.row=r;
     eb0:	4a0b      	ldr	r2, [pc, #44]	; (ee0 <flash_write_byte+0x6c>)
     eb2:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     eb6:	7813      	ldrb	r3, [r2, #0]
     eb8:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     ebc:	f043 0302 	orr.w	r3, r3, #2
     ec0:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     ec2:	4a07      	ldr	r2, [pc, #28]	; (ee0 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     ec4:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     ec8:	4413      	add	r3, r2
     eca:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     ecc:	7813      	ldrb	r3, [r2, #0]
     ece:	f043 0301 	orr.w	r3, r3, #1
     ed2:	7013      	strb	r3, [r2, #0]
	return 1;
     ed4:	2301      	movs	r3, #1
}
     ed6:	4618      	mov	r0, r3
     ed8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
     edc:	2300      	movs	r3, #0
     ede:	e7fa      	b.n	ed6 <flash_write_byte+0x62>
     ee0:	20000270 	.word	0x20000270

00000ee4 <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     ee4:	2a00      	cmp	r2, #0
     ee6:	dd13      	ble.n	f10 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
     ee8:	b410      	push	{r4}
     eea:	4603      	mov	r3, r0
     eec:	3901      	subs	r1, #1
     eee:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
     ef0:	4a08      	ldr	r2, [pc, #32]	; (f14 <flash_read_block+0x30>)
     ef2:	7854      	ldrb	r4, [r2, #1]
     ef4:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
     ef8:	bf03      	ittte	eq
     efa:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
     efe:	18a4      	addeq	r4, r4, r2
     f00:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
     f02:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
     f04:	f801 4f01 	strb.w	r4, [r1, #1]!
     f08:	3301      	adds	r3, #1
     f0a:	4283      	cmp	r3, r0
     f0c:	d1f1      	bne.n	ef2 <flash_read_block+0xe>
}
     f0e:	bc10      	pop	{r4}
     f10:	4770      	bx	lr
     f12:	bf00      	nop
     f14:	20000270 	.word	0x20000270

00000f18 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
     f18:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<ffa) return 0;
     f1a:	4b11      	ldr	r3, [pc, #68]	; (f60 <flash_write_block+0x48>)
     f1c:	681b      	ldr	r3, [r3, #0]
     f1e:	4298      	cmp	r0, r3
     f20:	d202      	bcs.n	f28 <flash_write_block+0x10>
     f22:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
     f24:	4618      	mov	r0, r3
     f26:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     f28:	4604      	mov	r4, r0
     f2a:	460e      	mov	r6, r1
     f2c:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
     f2e:	f7ff fec1 	bl	cb4 <flash_enable>
     f32:	4603      	mov	r3, r0
     f34:	2800      	cmp	r0, #0
     f36:	d0f5      	beq.n	f24 <flash_write_block+0xc>
	for (i=0;i<size;i++){
     f38:	2f00      	cmp	r7, #0
     f3a:	dd0c      	ble.n	f56 <flash_write_block+0x3e>
     f3c:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
     f3e:	1c65      	adds	r5, r4, #1
     f40:	f816 1b01 	ldrb.w	r1, [r6], #1
     f44:	4620      	mov	r0, r4
     f46:	f7ff ff95 	bl	e74 <flash_write_byte>
     f4a:	4603      	mov	r3, r0
     f4c:	2800      	cmp	r0, #0
     f4e:	d0e9      	beq.n	f24 <flash_write_block+0xc>
     f50:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
     f52:	42bd      	cmp	r5, r7
     f54:	d1f3      	bne.n	f3e <flash_write_block+0x26>
	flash_disable();
     f56:	f7ff ff7d 	bl	e54 <flash_disable>
	return 1;
     f5a:	2301      	movs	r3, #1
     f5c:	e7e2      	b.n	f24 <flash_write_block+0xc>
     f5e:	bf00      	nop
     f60:	00004000 	.word	0x00004000

00000f64 <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
     f64:	4b0a      	ldr	r3, [pc, #40]	; (f90 <btn_mask+0x2c>)
     f66:	781b      	ldrb	r3, [r3, #0]
     f68:	4283      	cmp	r3, r0
     f6a:	d00a      	beq.n	f82 <btn_mask+0x1e>
     f6c:	4a09      	ldr	r2, [pc, #36]	; (f94 <btn_mask+0x30>)
    for (i=0;i<8;i++){
     f6e:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
     f70:	f812 1b01 	ldrb.w	r1, [r2], #1
     f74:	4281      	cmp	r1, r0
     f76:	d005      	beq.n	f84 <btn_mask+0x20>
    for (i=0;i<8;i++){
     f78:	3301      	adds	r3, #1
     f7a:	2b08      	cmp	r3, #8
     f7c:	d1f8      	bne.n	f70 <btn_mask+0xc>
    }
    return 255;
     f7e:	20ff      	movs	r0, #255	; 0xff
}
     f80:	4770      	bx	lr
    for (i=0;i<8;i++){
     f82:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
     f84:	2001      	movs	r0, #1
     f86:	fa00 f303 	lsl.w	r3, r0, r3
     f8a:	b2d8      	uxtb	r0, r3
     f8c:	4770      	bx	lr
     f8e:	bf00      	nop
     f90:	20000674 	.word	0x20000674
     f94:	20000675 	.word	0x20000675

00000f98 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
     f98:	b430      	push	{r4, r5}
     f9a:	4605      	mov	r5, r0
     f9c:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
     f9e:	2000      	movs	r0, #0
     fa0:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     fa2:	4b1b      	ldr	r3, [pc, #108]	; (1010 <shift_out+0x78>)
     fa4:	e003      	b.n	fae <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
     fa6:	0052      	lsls	r2, r2, #1
     fa8:	b2d2      	uxtb	r2, r2
    while (mask){
     faa:	3c01      	subs	r4, #1
     fac:	d01d      	beq.n	fea <shift_out+0x52>
        if (byte&mask){
     fae:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     fb0:	68d9      	ldr	r1, [r3, #12]
     fb2:	bf14      	ite	ne
     fb4:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
     fb8:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
     fbc:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     fbe:	68d9      	ldr	r1, [r3, #12]
     fc0:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
     fc4:	60d9      	str	r1, [r3, #12]
        _clk_delay();
     fc6:	bf00      	nop
     fc8:	bf00      	nop
     fca:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
     fcc:	68d9      	ldr	r1, [r3, #12]
     fce:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
     fd2:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
     fd4:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
     fd6:	6899      	ldr	r1, [r3, #8]
     fd8:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
     fdc:	6099      	str	r1, [r3, #8]
     fde:	2900      	cmp	r1, #0
     fe0:	d0e1      	beq.n	fa6 <shift_out+0xe>
     fe2:	f060 007f 	orn	r0, r0, #127	; 0x7f
     fe6:	b2c0      	uxtb	r0, r0
     fe8:	e7dd      	b.n	fa6 <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
     fea:	4b09      	ldr	r3, [pc, #36]	; (1010 <shift_out+0x78>)
     fec:	68da      	ldr	r2, [r3, #12]
     fee:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
     ff2:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
     ff4:	68da      	ldr	r2, [r3, #12]
     ff6:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
     ffa:	60da      	str	r2, [r3, #12]
    _clk_delay();
     ffc:	bf00      	nop
     ffe:	bf00      	nop
    1000:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    1002:	68da      	ldr	r2, [r3, #12]
    1004:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    1008:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    100a:	bc30      	pop	{r4, r5}
    100c:	4770      	bx	lr
    100e:	bf00      	nop
    1010:	40010c00 	.word	0x40010c00

00001014 <set_keymap>:
void set_keymap(const uint8_t *kmap){
    1014:	1e43      	subs	r3, r0, #1
    1016:	4a04      	ldr	r2, [pc, #16]	; (1028 <set_keymap+0x14>)
    1018:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    101a:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    101e:	f802 1f01 	strb.w	r1, [r2, #1]!
    1022:	4283      	cmp	r3, r0
    1024:	d1f9      	bne.n	101a <set_keymap+0x6>
}
    1026:	4770      	bx	lr
    1028:	20000673 	.word	0x20000673

0000102c <gamepad_init>:
void gamepad_init(){
    102c:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    102e:	4c0b      	ldr	r4, [pc, #44]	; (105c <gamepad_init+0x30>)
    1030:	2202      	movs	r2, #2
    1032:	210f      	movs	r1, #15
    1034:	4620      	mov	r0, r4
    1036:	f000 fa1b 	bl	1470 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    103a:	2202      	movs	r2, #2
    103c:	210d      	movs	r1, #13
    103e:	4620      	mov	r0, r4
    1040:	f000 fa16 	bl	1470 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    1044:	2208      	movs	r2, #8
    1046:	210e      	movs	r1, #14
    1048:	4620      	mov	r0, r4
    104a:	f000 fa11 	bl	1470 <config_pin>
    btn_state=0xff;
    104e:	22ff      	movs	r2, #255	; 0xff
    1050:	4b03      	ldr	r3, [pc, #12]	; (1060 <gamepad_init+0x34>)
    1052:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1054:	4803      	ldr	r0, [pc, #12]	; (1064 <gamepad_init+0x38>)
    1056:	f7ff ffdd 	bl	1014 <set_keymap>
    105a:	bd10      	pop	{r4, pc}
    105c:	40010c00 	.word	0x40010c00
    1060:	2000268c 	.word	0x2000268c
    1064:	00003ae0 	.word	0x00003ae0

00001068 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1068:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    106a:	20fe      	movs	r0, #254	; 0xfe
    106c:	f7ff ff94 	bl	f98 <shift_out>
    1070:	4b0c      	ldr	r3, [pc, #48]	; (10a4 <read_gamepad+0x3c>)
    1072:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1074:	781b      	ldrb	r3, [r3, #0]
    1076:	f013 0f12 	tst.w	r3, #18
    107a:	d111      	bne.n	10a0 <read_gamepad+0x38>
        while (btn_state!=0xff){
    107c:	4b09      	ldr	r3, [pc, #36]	; (10a4 <read_gamepad+0x3c>)
    107e:	781b      	ldrb	r3, [r3, #0]
    1080:	b2db      	uxtb	r3, r3
    1082:	2bff      	cmp	r3, #255	; 0xff
    1084:	d009      	beq.n	109a <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    1086:	25fe      	movs	r5, #254	; 0xfe
    1088:	4c06      	ldr	r4, [pc, #24]	; (10a4 <read_gamepad+0x3c>)
    108a:	4628      	mov	r0, r5
    108c:	f7ff ff84 	bl	f98 <shift_out>
    1090:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    1092:	7823      	ldrb	r3, [r4, #0]
    1094:	b2db      	uxtb	r3, r3
    1096:	2bff      	cmp	r3, #255	; 0xff
    1098:	d1f7      	bne.n	108a <read_gamepad+0x22>
        };
        _reset_mcu();
    109a:	4a03      	ldr	r2, [pc, #12]	; (10a8 <read_gamepad+0x40>)
    109c:	4b03      	ldr	r3, [pc, #12]	; (10ac <read_gamepad+0x44>)
    109e:	601a      	str	r2, [r3, #0]
    10a0:	bd38      	pop	{r3, r4, r5, pc}
    10a2:	bf00      	nop
    10a4:	2000268c 	.word	0x2000268c
    10a8:	05fa0004 	.word	0x05fa0004
    10ac:	e000ed0c 	.word	0xe000ed0c

000010b0 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    10b0:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    10b2:	f7ff ff57 	bl	f64 <btn_mask>
    return !(btn_state&mask);
    10b6:	4b03      	ldr	r3, [pc, #12]	; (10c4 <btn_query_down+0x14>)
    10b8:	781b      	ldrb	r3, [r3, #0]
    10ba:	4203      	tst	r3, r0
}
    10bc:	bf0c      	ite	eq
    10be:	2001      	moveq	r0, #1
    10c0:	2000      	movne	r0, #0
    10c2:	bd08      	pop	{r3, pc}
    10c4:	2000268c 	.word	0x2000268c

000010c8 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    10c8:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    10ca:	f7ff ff4b 	bl	f64 <btn_mask>
    10ce:	4606      	mov	r6, r0
    int frame_count=0;
    10d0:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    10d2:	4d06      	ldr	r5, [pc, #24]	; (10ec <btn_wait_down+0x24>)
    10d4:	e000      	b.n	10d8 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    10d6:	2400      	movs	r4, #0
        frame_sync();
    10d8:	f002 f924 	bl	3324 <frame_sync>
        if (!(btn_state&mask)){
    10dc:	782b      	ldrb	r3, [r5, #0]
    10de:	4233      	tst	r3, r6
    10e0:	d1f9      	bne.n	10d6 <btn_wait_down+0xe>
            frame_count++;
    10e2:	3401      	adds	r4, #1
    while (frame_count<3){
    10e4:	2c02      	cmp	r4, #2
    10e6:	ddf7      	ble.n	10d8 <btn_wait_down+0x10>
        }
    }
}
    10e8:	bd70      	pop	{r4, r5, r6, pc}
    10ea:	bf00      	nop
    10ec:	2000268c 	.word	0x2000268c

000010f0 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    10f0:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    10f2:	f7ff ff37 	bl	f64 <btn_mask>
    10f6:	4606      	mov	r6, r0
    int frame_count=0;
    10f8:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    10fa:	4d06      	ldr	r5, [pc, #24]	; (1114 <btn_wait_up+0x24>)
    10fc:	e000      	b.n	1100 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    10fe:	2400      	movs	r4, #0
        frame_sync();
    1100:	f002 f910 	bl	3324 <frame_sync>
        if ((btn_state&mask)){
    1104:	782b      	ldrb	r3, [r5, #0]
    1106:	4233      	tst	r3, r6
    1108:	d0f9      	beq.n	10fe <btn_wait_up+0xe>
            frame_count++;
    110a:	3401      	adds	r4, #1
    while (frame_count<3){
    110c:	2c02      	cmp	r4, #2
    110e:	ddf7      	ble.n	1100 <btn_wait_up+0x10>
        }
    }
}
    1110:	bd70      	pop	{r4, r5, r6, pc}
    1112:	bf00      	nop
    1114:	2000268c 	.word	0x2000268c

00001118 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1118:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    111a:	4b15      	ldr	r3, [pc, #84]	; (1170 <btn_wait_any+0x58>)
    111c:	781c      	ldrb	r4, [r3, #0]
    111e:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1120:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    1122:	461d      	mov	r5, r3
    1124:	e007      	b.n	1136 <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    1126:	782a      	ldrb	r2, [r5, #0]
    1128:	b2d2      	uxtb	r2, r2
    112a:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    112c:	bf18      	it	ne
    112e:	3601      	addne	r6, #1
    while (frame_count<3){
    1130:	2e02      	cmp	r6, #2
    1132:	dc0a      	bgt.n	114a <btn_wait_any+0x32>
    1134:	461c      	mov	r4, r3
        frame_sync();
    1136:	f002 f8f5 	bl	3324 <frame_sync>
        if (last_state!=btn_state){
    113a:	782b      	ldrb	r3, [r5, #0]
    113c:	b2db      	uxtb	r3, r3
    113e:	42a3      	cmp	r3, r4
    1140:	d0f1      	beq.n	1126 <btn_wait_any+0xe>
            last_state=btn_state;
    1142:	782c      	ldrb	r4, [r5, #0]
    1144:	b2e4      	uxtb	r4, r4
            frame_count=0;
    1146:	2600      	movs	r6, #0
    1148:	e7f5      	b.n	1136 <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    114a:	43e3      	mvns	r3, r4
    mask>>=1;
    114c:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1150:	b15b      	cbz	r3, 116a <btn_wait_any+0x52>
    1152:	2200      	movs	r2, #0
    1154:	3201      	adds	r2, #1
    1156:	b2d2      	uxtb	r2, r2
    1158:	085b      	lsrs	r3, r3, #1
    115a:	d1fb      	bne.n	1154 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    115c:	4b05      	ldr	r3, [pc, #20]	; (1174 <btn_wait_any+0x5c>)
    115e:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1160:	4620      	mov	r0, r4
    1162:	f7ff ffc5 	bl	10f0 <btn_wait_up>
    return btn;
}
    1166:	4620      	mov	r0, r4
    1168:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    116a:	461a      	mov	r2, r3
    116c:	e7f6      	b.n	115c <btn_wait_any+0x44>
    116e:	bf00      	nop
    1170:	2000268c 	.word	0x2000268c
    1174:	20000674 	.word	0x20000674

00001178 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1178:	4b01      	ldr	r3, [pc, #4]	; (1180 <btn_set_value+0x8>)
    117a:	5419      	strb	r1, [r3, r0]
    117c:	4770      	bx	lr
    117e:	bf00      	nop
    1180:	20000674 	.word	0x20000674

00001184 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    1184:	4800      	ldr	r0, [pc, #0]	; (1188 <get_keymap+0x4>)
    1186:	4770      	bx	lr
    1188:	20000674 	.word	0x20000674

0000118c <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    118c:	4b06      	ldr	r3, [pc, #24]	; (11a8 <games_count+0x1c>)
    118e:	691b      	ldr	r3, [r3, #16]
    1190:	b13b      	cbz	r3, 11a2 <games_count+0x16>
    1192:	4b05      	ldr	r3, [pc, #20]	; (11a8 <games_count+0x1c>)
    1194:	2000      	movs	r0, #0
    for (i=0;;i++){
    1196:	3001      	adds	r0, #1
    1198:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    119a:	691a      	ldr	r2, [r3, #16]
    119c:	2a00      	cmp	r2, #0
    119e:	d1fa      	bne.n	1196 <games_count+0xa>
    11a0:	4770      	bx	lr
    for (i=0;;i++){
    11a2:	2000      	movs	r0, #0
    }
    return i;
}
    11a4:	4770      	bx	lr
    11a6:	bf00      	nop
    11a8:	20000004 	.word	0x20000004

000011ac <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    11ac:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    11ae:	7803      	ldrb	r3, [r0, #0]
    11b0:	b1fb      	cbz	r3, 11f2 <strcmp+0x46>
    11b2:	780a      	ldrb	r2, [r1, #0]
    11b4:	b17a      	cbz	r2, 11d6 <strcmp+0x2a>
		if (*s1<*s2){
    11b6:	4293      	cmp	r3, r2
    11b8:	d313      	bcc.n	11e2 <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    11ba:	d815      	bhi.n	11e8 <strcmp+0x3c>
    11bc:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    11be:	4621      	mov	r1, r4
	while (*s1 && *s2){
    11c0:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    11c4:	b1ab      	cbz	r3, 11f2 <strcmp+0x46>
    11c6:	f814 2b01 	ldrb.w	r2, [r4], #1
    11ca:	b122      	cbz	r2, 11d6 <strcmp+0x2a>
		if (*s1<*s2){
    11cc:	4293      	cmp	r3, r2
    11ce:	d30d      	bcc.n	11ec <strcmp+0x40>
		}else if (*s1>*s2){
    11d0:	d9f5      	bls.n	11be <strcmp+0x12>
			result=1;
    11d2:	2001      	movs	r0, #1
    11d4:	e003      	b.n	11de <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    11d6:	7808      	ldrb	r0, [r1, #0]
    11d8:	fab0 f080 	clz	r0, r0
    11dc:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    11de:	bc10      	pop	{r4}
    11e0:	4770      	bx	lr
			result=-1;
    11e2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    11e6:	e7fa      	b.n	11de <strcmp+0x32>
			result=1;
    11e8:	2001      	movs	r0, #1
    11ea:	e7f8      	b.n	11de <strcmp+0x32>
			result=-1;
    11ec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    11f0:	e7f5      	b.n	11de <strcmp+0x32>
		if (!*s1 && *s2){
    11f2:	7808      	ldrb	r0, [r1, #0]
    11f4:	3000      	adds	r0, #0
    11f6:	bf18      	it	ne
    11f8:	2001      	movne	r0, #1
    11fa:	4240      	negs	r0, r0
    11fc:	e7ef      	b.n	11de <strcmp+0x32>

000011fe <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    11fe:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    1202:	b2db      	uxtb	r3, r3
    1204:	2b19      	cmp	r3, #25
    1206:	d906      	bls.n	1216 <alpha+0x18>
    1208:	3841      	subs	r0, #65	; 0x41
    120a:	b2c0      	uxtb	r0, r0
    120c:	2819      	cmp	r0, #25
    120e:	bf8c      	ite	hi
    1210:	2000      	movhi	r0, #0
    1212:	2001      	movls	r0, #1
    1214:	4770      	bx	lr
    1216:	2001      	movs	r0, #1
}
    1218:	4770      	bx	lr

0000121a <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    121a:	3830      	subs	r0, #48	; 0x30
    121c:	b2c0      	uxtb	r0, r0
}
    121e:	2809      	cmp	r0, #9
    1220:	bf8c      	ite	hi
    1222:	2000      	movhi	r0, #0
    1224:	2001      	movls	r0, #1
    1226:	4770      	bx	lr

00001228 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1228:	2860      	cmp	r0, #96	; 0x60
    122a:	bf84      	itt	hi
    122c:	3820      	subhi	r0, #32
    122e:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1230:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1234:	b2db      	uxtb	r3, r3
    1236:	2b09      	cmp	r3, #9
    1238:	d906      	bls.n	1248 <hexdigit+0x20>
    123a:	3841      	subs	r0, #65	; 0x41
    123c:	b2c0      	uxtb	r0, r0
    123e:	2805      	cmp	r0, #5
    1240:	bf8c      	ite	hi
    1242:	2000      	movhi	r0, #0
    1244:	2001      	movls	r0, #1
    1246:	4770      	bx	lr
    1248:	2001      	movs	r0, #1
}
    124a:	4770      	bx	lr

0000124c <atoi>:

int atoi(const char *str){
    124c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1250:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1252:	7803      	ldrb	r3, [r0, #0]
    1254:	2b20      	cmp	r3, #32
    1256:	d103      	bne.n	1260 <atoi+0x14>
    1258:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    125c:	2b20      	cmp	r3, #32
    125e:	d0fb      	beq.n	1258 <atoi+0xc>
	if (*str=='-'){
    1260:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    1262:	bf06      	itte	eq
    1264:	3501      	addeq	r5, #1
		sign=-1;
    1266:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    126a:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    126e:	782b      	ldrb	r3, [r5, #0]
    1270:	2b24      	cmp	r3, #36	; 0x24
    1272:	d005      	beq.n	1280 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1274:	2b30      	cmp	r3, #48	; 0x30
    1276:	d00a      	beq.n	128e <atoi+0x42>
	int n=0,sign=1,base=10;
    1278:	270a      	movs	r7, #10
    127a:	3d01      	subs	r5, #1
    127c:	2600      	movs	r6, #0
    127e:	e026      	b.n	12ce <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    1280:	7868      	ldrb	r0, [r5, #1]
    1282:	f7ff ffd1 	bl	1228 <hexdigit>
    1286:	b160      	cbz	r0, 12a2 <atoi+0x56>
		str++;
    1288:	3501      	adds	r5, #1
		base=16;
    128a:	2710      	movs	r7, #16
		str++;
    128c:	e7f5      	b.n	127a <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    128e:	786b      	ldrb	r3, [r5, #1]
    1290:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    1294:	2b58      	cmp	r3, #88	; 0x58
    1296:	d001      	beq.n	129c <atoi+0x50>
	int n=0,sign=1,base=10;
    1298:	270a      	movs	r7, #10
    129a:	e7ee      	b.n	127a <atoi+0x2e>
		base=16;
		str+=2;
    129c:	3502      	adds	r5, #2
		base=16;
    129e:	2710      	movs	r7, #16
    12a0:	e7eb      	b.n	127a <atoi+0x2e>
	int n=0,sign=1,base=10;
    12a2:	270a      	movs	r7, #10
    12a4:	e7e9      	b.n	127a <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12a6:	4620      	mov	r0, r4
    12a8:	f7ff ffbe 	bl	1228 <hexdigit>
    12ac:	3000      	adds	r0, #0
    12ae:	bf18      	it	ne
    12b0:	2001      	movne	r0, #1
    12b2:	b1d0      	cbz	r0, 12ea <atoi+0x9e>
		if (c>='a'){c-=32;}
    12b4:	2c60      	cmp	r4, #96	; 0x60
    12b6:	bf84      	itt	hi
    12b8:	3c20      	subhi	r4, #32
    12ba:	b2e4      	uxtbhi	r4, r4
		c-='0';
    12bc:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    12c0:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    12c2:	2b09      	cmp	r3, #9
    12c4:	bf84      	itt	hi
    12c6:	3c37      	subhi	r4, #55	; 0x37
    12c8:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    12ca:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12ce:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    12d2:	2c00      	cmp	r4, #0
    12d4:	d0e7      	beq.n	12a6 <atoi+0x5a>
    12d6:	2f0a      	cmp	r7, #10
    12d8:	d1e5      	bne.n	12a6 <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    12da:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    12de:	b2c0      	uxtb	r0, r0
    12e0:	2809      	cmp	r0, #9
    12e2:	bf8c      	ite	hi
    12e4:	2000      	movhi	r0, #0
    12e6:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    12e8:	e7e3      	b.n	12b2 <atoi+0x66>
		str++;
	}
	return sign*n;
}
    12ea:	fb08 f006 	mul.w	r0, r8, r6
    12ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000012f2 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    12f2:	b13a      	cbz	r2, 1304 <move+0x12>
    12f4:	3901      	subs	r1, #1
    12f6:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    12f8:	f810 3b01 	ldrb.w	r3, [r0], #1
    12fc:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1300:	4290      	cmp	r0, r2
    1302:	d1f9      	bne.n	12f8 <move+0x6>
    1304:	4770      	bx	lr

00001306 <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    1306:	7803      	ldrb	r3, [r0, #0]
    1308:	b13b      	cbz	r3, 131a <strlen+0x14>
    130a:	4603      	mov	r3, r0
    130c:	2000      	movs	r0, #0
    130e:	3001      	adds	r0, #1
    1310:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1314:	2a00      	cmp	r2, #0
    1316:	d1fa      	bne.n	130e <strlen+0x8>
    1318:	4770      	bx	lr
	int ll=0;
    131a:	2000      	movs	r0, #0
	return ll;
}
    131c:	4770      	bx	lr

0000131e <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    131e:	b121      	cbz	r1, 132a <fill+0xc>
    1320:	1841      	adds	r1, r0, r1
    1322:	f800 2b01 	strb.w	r2, [r0], #1
    1326:	4288      	cmp	r0, r1
    1328:	d1fb      	bne.n	1322 <fill+0x4>
    132a:	4770      	bx	lr

0000132c <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    132c:	3861      	subs	r0, #97	; 0x61
    132e:	b2c0      	uxtb	r0, r0
}
    1330:	2819      	cmp	r0, #25
    1332:	bf8c      	ite	hi
    1334:	2000      	movhi	r0, #0
    1336:	2001      	movls	r0, #1
    1338:	4770      	bx	lr

0000133a <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    133a:	3841      	subs	r0, #65	; 0x41
    133c:	b2c0      	uxtb	r0, r0
}
    133e:	2819      	cmp	r0, #25
    1340:	bf8c      	ite	hi
    1342:	2000      	movhi	r0, #0
    1344:	2001      	movls	r0, #1
    1346:	4770      	bx	lr

00001348 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1348:	7803      	ldrb	r3, [r0, #0]
    134a:	b153      	cbz	r3, 1362 <uppercase+0x1a>
	return (c>='a') && (c<='z');
    134c:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1350:	b2d2      	uxtb	r2, r2
    1352:	2a19      	cmp	r2, #25
    1354:	bf9c      	itt	ls
    1356:	3b20      	subls	r3, #32
    1358:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    135a:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    135e:	2b00      	cmp	r3, #0
    1360:	d1f4      	bne.n	134c <uppercase+0x4>
    1362:	4770      	bx	lr

00001364 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1364:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    1366:	1844      	adds	r4, r0, r1
    1368:	5c43      	ldrb	r3, [r0, r1]
    136a:	b153      	cbz	r3, 1382 <scan+0x1e>
    136c:	429a      	cmp	r2, r3
    136e:	d00a      	beq.n	1386 <scan+0x22>
    1370:	4608      	mov	r0, r1
    1372:	3001      	adds	r0, #1
    1374:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    1378:	b10b      	cbz	r3, 137e <scan+0x1a>
    137a:	4293      	cmp	r3, r2
    137c:	d1f9      	bne.n	1372 <scan+0xe>
	return start;
}
    137e:	bc10      	pop	{r4}
    1380:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    1382:	4608      	mov	r0, r1
    1384:	e7fb      	b.n	137e <scan+0x1a>
    1386:	4608      	mov	r0, r1
	return start;
    1388:	e7f9      	b.n	137e <scan+0x1a>

0000138a <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    138a:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    138c:	1844      	adds	r4, r0, r1
    138e:	5c43      	ldrb	r3, [r0, r1]
    1390:	b153      	cbz	r3, 13a8 <skip+0x1e>
    1392:	429a      	cmp	r2, r3
    1394:	d10a      	bne.n	13ac <skip+0x22>
    1396:	4608      	mov	r0, r1
    1398:	3001      	adds	r0, #1
    139a:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    139e:	b10b      	cbz	r3, 13a4 <skip+0x1a>
    13a0:	4293      	cmp	r3, r2
    13a2:	d0f9      	beq.n	1398 <skip+0xe>
	return start;
}
    13a4:	bc10      	pop	{r4}
    13a6:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    13a8:	4608      	mov	r0, r1
    13aa:	e7fb      	b.n	13a4 <skip+0x1a>
    13ac:	4608      	mov	r0, r1
	return start;
    13ae:	e7f9      	b.n	13a4 <skip+0x1a>

000013b0 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    13b0:	b538      	push	{r3, r4, r5, lr}
    13b2:	4604      	mov	r4, r0
    13b4:	460d      	mov	r5, r1
	s1+=strlen(s1);
    13b6:	f7ff ffa6 	bl	1306 <strlen>
    13ba:	4420      	add	r0, r4
	while (*s2){
    13bc:	782b      	ldrb	r3, [r5, #0]
    13be:	b133      	cbz	r3, 13ce <strcat+0x1e>
    13c0:	4629      	mov	r1, r5
		*s1++=*s2++;
    13c2:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    13c6:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    13ca:	2b00      	cmp	r3, #0
    13cc:	d1f9      	bne.n	13c2 <strcat+0x12>
	}
	*s1=0;
    13ce:	2300      	movs	r3, #0
    13d0:	7003      	strb	r3, [r0, #0]
	return s1;
}
    13d2:	bd38      	pop	{r3, r4, r5, pc}

000013d4 <itoa>:

char *itoa(int n,char *buffer,int base){
    13d4:	b5f0      	push	{r4, r5, r6, r7, lr}
    13d6:	b085      	sub	sp, #20
    13d8:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    13da:	2a0a      	cmp	r2, #10
    13dc:	d033      	beq.n	1446 <itoa+0x72>
	int i=14,sign=0;
    13de:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    13e0:	2300      	movs	r3, #0
    13e2:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    13e6:	2320      	movs	r3, #32
    13e8:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    13ec:	b390      	cbz	r0, 1454 <itoa+0x80>
    13ee:	f10d 060d 	add.w	r6, sp, #13
    13f2:	250e      	movs	r5, #14
		d=n%base+'0';
    13f4:	fb90 f3f2 	sdiv	r3, r0, r2
    13f8:	fb02 0313 	mls	r3, r2, r3, r0
    13fc:	b2db      	uxtb	r3, r3
    13fe:	f103 0130 	add.w	r1, r3, #48	; 0x30
    1402:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1404:	2939      	cmp	r1, #57	; 0x39
    1406:	bf84      	itt	hi
    1408:	3337      	addhi	r3, #55	; 0x37
    140a:	b2d9      	uxtbhi	r1, r3
		n/=base;
    140c:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1410:	3d01      	subs	r5, #1
    1412:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    1416:	2800      	cmp	r0, #0
    1418:	d1ec      	bne.n	13f4 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    141a:	2d0e      	cmp	r5, #14
    141c:	d01a      	beq.n	1454 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    141e:	2a0a      	cmp	r2, #10
    1420:	d01d      	beq.n	145e <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    1422:	2a10      	cmp	r2, #16
    1424:	d105      	bne.n	1432 <itoa+0x5e>
    1426:	3d01      	subs	r5, #1
    1428:	ab04      	add	r3, sp, #16
    142a:	442b      	add	r3, r5
    142c:	2224      	movs	r2, #36	; 0x24
    142e:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    1432:	f1c5 0210 	rsb	r2, r5, #16
    1436:	4621      	mov	r1, r4
    1438:	eb0d 0005 	add.w	r0, sp, r5
    143c:	f7ff ff59 	bl	12f2 <move>
	return buffer;
    1440:	4620      	mov	r0, r4
    1442:	b005      	add	sp, #20
    1444:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    1446:	2800      	cmp	r0, #0
    1448:	db01      	blt.n	144e <itoa+0x7a>
	int i=14,sign=0;
    144a:	2700      	movs	r7, #0
    144c:	e7c8      	b.n	13e0 <itoa+0xc>
		n=-n;
    144e:	4240      	negs	r0, r0
		sign=1;
    1450:	2701      	movs	r7, #1
    1452:	e7c5      	b.n	13e0 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1454:	2330      	movs	r3, #48	; 0x30
    1456:	f88d 300d 	strb.w	r3, [sp, #13]
    145a:	250d      	movs	r5, #13
    145c:	e7df      	b.n	141e <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    145e:	2f00      	cmp	r7, #0
    1460:	d0e7      	beq.n	1432 <itoa+0x5e>
    1462:	3d01      	subs	r5, #1
    1464:	ab04      	add	r3, sp, #16
    1466:	442b      	add	r3, r5
    1468:	222d      	movs	r2, #45	; 0x2d
    146a:	f803 2c10 	strb.w	r2, [r3, #-16]
    146e:	e7e0      	b.n	1432 <itoa+0x5e>

00001470 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    1470:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    1472:	08cb      	lsrs	r3, r1, #3
    1474:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    1478:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    147a:	f001 011c 	and.w	r1, r1, #28
    147e:	250f      	movs	r5, #15
    1480:	408d      	lsls	r5, r1
    1482:	ea24 0405 	bic.w	r4, r4, r5
    1486:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    148a:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    148e:	fa02 f101 	lsl.w	r1, r2, r1
    1492:	4321      	orrs	r1, r4
    1494:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    1498:	bc30      	pop	{r4, r5}
    149a:	4770      	bx	lr

0000149c <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    149c:	6880      	ldr	r0, [r0, #8]
    149e:	2301      	movs	r3, #1
    14a0:	fa03 f101 	lsl.w	r1, r3, r1
}
    14a4:	4008      	ands	r0, r1
    14a6:	4770      	bx	lr

000014a8 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    14a8:	b93a      	cbnz	r2, 14ba <write_pin+0x12>
    14aa:	68c3      	ldr	r3, [r0, #12]
    14ac:	2201      	movs	r2, #1
    14ae:	fa02 f101 	lsl.w	r1, r2, r1
    14b2:	ea23 0101 	bic.w	r1, r3, r1
    14b6:	60c1      	str	r1, [r0, #12]
    14b8:	4770      	bx	lr
    14ba:	68c2      	ldr	r2, [r0, #12]
    14bc:	2301      	movs	r3, #1
    14be:	fa03 f101 	lsl.w	r1, r3, r1
    14c2:	4311      	orrs	r1, r2
    14c4:	60c1      	str	r1, [r0, #12]
    14c6:	4770      	bx	lr

000014c8 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    14c8:	68c2      	ldr	r2, [r0, #12]
    14ca:	2301      	movs	r3, #1
    14cc:	fa03 f101 	lsl.w	r1, r3, r1
    14d0:	4051      	eors	r1, r2
    14d2:	60c1      	str	r1, [r0, #12]
    14d4:	4770      	bx	lr
	...

000014d8 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    14d8:	4b04      	ldr	r3, [pc, #16]	; (14ec <set_palette+0x14>)
    14da:	7802      	ldrb	r2, [r0, #0]
    14dc:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    14de:	7842      	ldrb	r2, [r0, #1]
    14e0:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    14e2:	7882      	ldrb	r2, [r0, #2]
    14e4:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    14e6:	78c2      	ldrb	r2, [r0, #3]
    14e8:	70da      	strb	r2, [r3, #3]
    14ea:	4770      	bx	lr
    14ec:	2000018c 	.word	0x2000018c

000014f0 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    14f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    14f2:	4604      	mov	r4, r0
    14f4:	460e      	mov	r6, r1
    14f6:	4615      	mov	r5, r2
    14f8:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    14fa:	f001 ff4d 	bl	3398 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    14fe:	2c00      	cmp	r4, #0
    1500:	db38      	blt.n	1574 <gfx_blit+0x84>
    1502:	8983      	ldrh	r3, [r0, #12]
    1504:	429c      	cmp	r4, r3
    1506:	da37      	bge.n	1578 <gfx_blit+0x88>
    1508:	2e00      	cmp	r6, #0
    150a:	db37      	blt.n	157c <gfx_blit+0x8c>
    150c:	89c3      	ldrh	r3, [r0, #14]
    150e:	429e      	cmp	r6, r3
    1510:	da36      	bge.n	1580 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    1512:	7a03      	ldrb	r3, [r0, #8]
    1514:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1518:	1052      	asrs	r2, r2, #1
    151a:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    151e:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    1522:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    1526:	bf06      	itte	eq
    1528:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    152a:	220f      	moveq	r2, #15
    mask=0xf0;
    152c:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    152e:	4b15      	ldr	r3, [pc, #84]	; (1584 <gfx_blit+0x94>)
    1530:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    1532:	2f04      	cmp	r7, #4
    1534:	d805      	bhi.n	1542 <gfx_blit+0x52>
    1536:	e8df f007 	tbb	[pc, r7]
    153a:	1003      	.short	0x1003
    153c:	1412      	.short	0x1412
    153e:	18          	.byte	0x18
    153f:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1540:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    1542:	4910      	ldr	r1, [pc, #64]	; (1584 <gfx_blit+0x94>)
    1544:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    1546:	ea23 0302 	bic.w	r3, r3, r2
    154a:	fab0 f080 	clz	r0, r0
    154e:	0940      	lsrs	r0, r0, #5
    1550:	4283      	cmp	r3, r0
    1552:	bf14      	ite	ne
    1554:	2000      	movne	r0, #0
    1556:	2001      	moveq	r0, #1
    1558:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    155a:	4003      	ands	r3, r0
        break;
    155c:	e7f1      	b.n	1542 <gfx_blit+0x52>
        byte^=color;
    155e:	4043      	eors	r3, r0
        break;
    1560:	e7ef      	b.n	1542 <gfx_blit+0x52>
        byte^=~mask;
    1562:	43d4      	mvns	r4, r2
    1564:	405c      	eors	r4, r3
    1566:	b2e3      	uxtb	r3, r4
        break;
    1568:	e7eb      	b.n	1542 <gfx_blit+0x52>
        byte &=mask;
    156a:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    156e:	ea40 0304 	orr.w	r3, r0, r4
        break;
    1572:	e7e6      	b.n	1542 <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1574:	2000      	movs	r0, #0
    1576:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1578:	2000      	movs	r0, #0
    157a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    157c:	2000      	movs	r0, #0
    157e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1580:	2000      	movs	r0, #0
}
    1582:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1584:	200026bc 	.word	0x200026bc

00001588 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    1588:	b570      	push	{r4, r5, r6, lr}
    158a:	4604      	mov	r4, r0
    158c:	460e      	mov	r6, r1
    158e:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1590:	f001 ff02 	bl	3398 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    1594:	2c00      	cmp	r4, #0
    1596:	db1d      	blt.n	15d4 <gfx_plot+0x4c>
    1598:	8983      	ldrh	r3, [r0, #12]
    159a:	429c      	cmp	r4, r3
    159c:	da1a      	bge.n	15d4 <gfx_plot+0x4c>
    159e:	2e00      	cmp	r6, #0
    15a0:	db18      	blt.n	15d4 <gfx_plot+0x4c>
    15a2:	89c3      	ldrh	r3, [r0, #14]
    15a4:	429e      	cmp	r6, r3
    15a6:	da15      	bge.n	15d4 <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    15a8:	7a03      	ldrb	r3, [r0, #8]
    15aa:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    15ae:	1052      	asrs	r2, r2, #1
    15b0:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    15b4:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    15b8:	4b07      	ldr	r3, [pc, #28]	; (15d8 <gfx_plot+0x50>)
    15ba:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    15bc:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    15c0:	bf19      	ittee	ne
    15c2:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    15c6:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    15c8:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    15cc:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    15d0:	4b01      	ldr	r3, [pc, #4]	; (15d8 <gfx_plot+0x50>)
    15d2:	559d      	strb	r5, [r3, r6]
    15d4:	bd70      	pop	{r4, r5, r6, pc}
    15d6:	bf00      	nop
    15d8:	200026bc 	.word	0x200026bc

000015dc <gfx_cls>:
}

void gfx_cls(){
    15dc:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    15de:	f001 fedb 	bl	3398 <get_video_params>
    15e2:	4b06      	ldr	r3, [pc, #24]	; (15fc <gfx_cls+0x20>)
    15e4:	4906      	ldr	r1, [pc, #24]	; (1600 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    15e6:	2200      	movs	r2, #0
    15e8:	f803 2f01 	strb.w	r2, [r3, #1]!
    15ec:	428b      	cmp	r3, r1
    15ee:	d1fb      	bne.n	15e8 <gfx_cls+0xc>
    set_cursor(0,0);
    15f0:	2100      	movs	r1, #0
    15f2:	4608      	mov	r0, r1
    15f4:	f001 fb8a 	bl	2d0c <set_cursor>
    15f8:	bd08      	pop	{r3, pc}
    15fa:	bf00      	nop
    15fc:	200026bb 	.word	0x200026bb
    1600:	20004e1b 	.word	0x20004e1b

00001604 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    1604:	b570      	push	{r4, r5, r6, lr}
    1606:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1608:	f001 fec6 	bl	3398 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    160c:	7a06      	ldrb	r6, [r0, #8]
    160e:	4b0f      	ldr	r3, [pc, #60]	; (164c <gfx_scroll_up+0x48>)
    1610:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    1614:	89c2      	ldrh	r2, [r0, #14]
    1616:	1b12      	subs	r2, r2, r4
    1618:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    161c:	b1a6      	cbz	r6, 1648 <gfx_scroll_up+0x44>
    161e:	4a0b      	ldr	r2, [pc, #44]	; (164c <gfx_scroll_up+0x48>)
    1620:	199d      	adds	r5, r3, r6
    1622:	f813 1b01 	ldrb.w	r1, [r3], #1
    1626:	f802 1b01 	strb.w	r1, [r2], #1
    162a:	42ab      	cmp	r3, r5
    162c:	d1f9      	bne.n	1622 <gfx_scroll_up+0x1e>
    162e:	4b07      	ldr	r3, [pc, #28]	; (164c <gfx_scroll_up+0x48>)
    1630:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    1632:	7a02      	ldrb	r2, [r0, #8]
    1634:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1638:	b12a      	cbz	r2, 1646 <gfx_scroll_up+0x42>
    163a:	441a      	add	r2, r3
    163c:	2100      	movs	r1, #0
    163e:	f803 1b01 	strb.w	r1, [r3], #1
    1642:	4293      	cmp	r3, r2
    1644:	d1fb      	bne.n	163e <gfx_scroll_up+0x3a>
    1646:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1648:	4b00      	ldr	r3, [pc, #0]	; (164c <gfx_scroll_up+0x48>)
    164a:	e7f2      	b.n	1632 <gfx_scroll_up+0x2e>
    164c:	200026bc 	.word	0x200026bc

00001650 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1650:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1652:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1654:	f001 fea0 	bl	3398 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1658:	89c3      	ldrh	r3, [r0, #14]
    165a:	7a04      	ldrb	r4, [r0, #8]
    165c:	1b5f      	subs	r7, r3, r5
    165e:	fb04 f707 	mul.w	r7, r4, r7
    1662:	490c      	ldr	r1, [pc, #48]	; (1694 <gfx_scroll_down+0x44>)
    1664:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    1666:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    166a:	b147      	cbz	r7, 167e <gfx_scroll_down+0x2e>
    166c:	4619      	mov	r1, r3
    166e:	4e09      	ldr	r6, [pc, #36]	; (1694 <gfx_scroll_down+0x44>)
    1670:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1674:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1678:	42b2      	cmp	r2, r6
    167a:	d1f9      	bne.n	1670 <gfx_scroll_down+0x20>
    167c:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    167e:	7a02      	ldrb	r2, [r0, #8]
    1680:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    1684:	b12a      	cbz	r2, 1692 <gfx_scroll_down+0x42>
    1686:	1a9a      	subs	r2, r3, r2
    1688:	2100      	movs	r1, #0
    168a:	f803 1d01 	strb.w	r1, [r3, #-1]!
    168e:	4293      	cmp	r3, r2
    1690:	d1fb      	bne.n	168a <gfx_scroll_down+0x3a>
    1692:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1694:	200026bc 	.word	0x200026bc

00001698 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    1698:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    169c:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    169e:	f001 fe7b 	bl	3398 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    16a2:	89c3      	ldrh	r3, [r0, #14]
    16a4:	b30b      	cbz	r3, 16ea <gfx_scroll_left+0x52>
    16a6:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    16aa:	f8df 8044 	ldr.w	r8, [pc, #68]	; 16f0 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    16ae:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    16b0:	7a03      	ldrb	r3, [r0, #8]
    16b2:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    16b6:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    16b8:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    16ba:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    16be:	d009      	beq.n	16d4 <gfx_scroll_left+0x3c>
    16c0:	1e59      	subs	r1, r3, #1
    16c2:	eb02 050e 	add.w	r5, r2, lr
    16c6:	f812 4b01 	ldrb.w	r4, [r2], #1
    16ca:	f801 4f01 	strb.w	r4, [r1, #1]!
    16ce:	4295      	cmp	r5, r2
    16d0:	d1f9      	bne.n	16c6 <gfx_scroll_left+0x2e>
    16d2:	4473      	add	r3, lr
        while (size--) *dest++=0;
    16d4:	b126      	cbz	r6, 16e0 <gfx_scroll_left+0x48>
    16d6:	199a      	adds	r2, r3, r6
    16d8:	f803 7b01 	strb.w	r7, [r3], #1
    16dc:	4293      	cmp	r3, r2
    16de:	d1fb      	bne.n	16d8 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    16e0:	f10c 0c01 	add.w	ip, ip, #1
    16e4:	89c3      	ldrh	r3, [r0, #14]
    16e6:	4563      	cmp	r3, ip
    16e8:	dce2      	bgt.n	16b0 <gfx_scroll_left+0x18>
    16ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    16ee:	bf00      	nop
    16f0:	200026bc 	.word	0x200026bc

000016f4 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    16f4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    16f8:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    16fa:	f001 fe4d 	bl	3398 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    16fe:	89c3      	ldrh	r3, [r0, #14]
    1700:	b33b      	cbz	r3, 1752 <gfx_scroll_right+0x5e>
    1702:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1706:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1758 <gfx_scroll_right+0x64>
        src=dest-n;
    170a:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    170e:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1710:	7a03      	ldrb	r3, [r0, #8]
    1712:	fb0e 3303 	mla	r3, lr, r3, r3
    1716:	4443      	add	r3, r8
        src=dest-n;
    1718:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    171c:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    171e:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    1722:	d00a      	beq.n	173a <gfx_scroll_right+0x46>
    1724:	4619      	mov	r1, r3
    1726:	eba2 0609 	sub.w	r6, r2, r9
    172a:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    172e:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1732:	42b2      	cmp	r2, r6
    1734:	d1f9      	bne.n	172a <gfx_scroll_right+0x36>
    1736:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    173a:	b12d      	cbz	r5, 1748 <gfx_scroll_right+0x54>
    173c:	eb03 020c 	add.w	r2, r3, ip
    1740:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1744:	429a      	cmp	r2, r3
    1746:	d1fb      	bne.n	1740 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1748:	f10e 0e01 	add.w	lr, lr, #1
    174c:	89c3      	ldrh	r3, [r0, #14]
    174e:	4573      	cmp	r3, lr
    1750:	dcde      	bgt.n	1710 <gfx_scroll_right+0x1c>
    1752:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1756:	bf00      	nop
    1758:	200026bc 	.word	0x200026bc

0000175c <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    175c:	b538      	push	{r3, r4, r5, lr}
    175e:	4604      	mov	r4, r0
    1760:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1762:	f001 fe19 	bl	3398 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1766:	2c00      	cmp	r4, #0
    1768:	db18      	blt.n	179c <gfx_get_pixel+0x40>
    176a:	8983      	ldrh	r3, [r0, #12]
    176c:	429c      	cmp	r4, r3
    176e:	db01      	blt.n	1774 <gfx_get_pixel+0x18>
    1770:	20ff      	movs	r0, #255	; 0xff
    1772:	bd38      	pop	{r3, r4, r5, pc}
    1774:	2d00      	cmp	r5, #0
    1776:	db13      	blt.n	17a0 <gfx_get_pixel+0x44>
    1778:	89c3      	ldrh	r3, [r0, #14]
    177a:	429d      	cmp	r5, r3
    177c:	db01      	blt.n	1782 <gfx_get_pixel+0x26>
    177e:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    1780:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    1782:	7a03      	ldrb	r3, [r0, #8]
    1784:	1062      	asrs	r2, r4, #1
    1786:	4907      	ldr	r1, [pc, #28]	; (17a4 <gfx_get_pixel+0x48>)
    1788:	fb05 1503 	mla	r5, r5, r3, r1
    178c:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    178e:	f014 0f01 	tst.w	r4, #1
    1792:	bf08      	it	eq
    1794:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    1796:	f000 000f 	and.w	r0, r0, #15
    179a:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    179c:	20ff      	movs	r0, #255	; 0xff
    179e:	bd38      	pop	{r3, r4, r5, pc}
    17a0:	20ff      	movs	r0, #255	; 0xff
    17a2:	bd38      	pop	{r3, r4, r5, pc}
    17a4:	200026bc 	.word	0x200026bc

000017a8 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int /* __attribute__((optimize("-O1")))*/ gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    17a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    17ac:	b085      	sub	sp, #20
    17ae:	9001      	str	r0, [sp, #4]
    17b0:	460e      	mov	r6, r1
    17b2:	9100      	str	r1, [sp, #0]
    17b4:	9203      	str	r2, [sp, #12]
    17b6:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    17b8:	4a28      	ldr	r2, [pc, #160]	; (185c <gfx_sprite+0xb4>)
    17ba:	7911      	ldrb	r1, [r2, #4]
    17bc:	4a28      	ldr	r2, [pc, #160]	; (1860 <gfx_sprite+0xb8>)
    17be:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    17c2:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    17c4:	440a      	add	r2, r1
    17c6:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    17c8:	4433      	add	r3, r6
    17ca:	9302      	str	r3, [sp, #8]
    17cc:	429e      	cmp	r6, r3
    int collision=0;
    17ce:	bfa8      	it	ge
    17d0:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    17d2:	da3a      	bge.n	184a <gfx_sprite+0xa2>
    17d4:	f100 0901 	add.w	r9, r0, #1
    17d8:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    17da:	f8df 8080 	ldr.w	r8, [pc, #128]	; 185c <gfx_sprite+0xb4>
    17de:	e02b      	b.n	1838 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    17e0:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    17e4:	f898 3004 	ldrb.w	r3, [r8, #4]
    17e8:	4a1d      	ldr	r2, [pc, #116]	; (1860 <gfx_sprite+0xb8>)
    17ea:	4413      	add	r3, r2
    17ec:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    17ee:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    17f2:	3601      	adds	r6, #1
    17f4:	4556      	cmp	r6, sl
    17f6:	d019      	beq.n	182c <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    17f8:	f898 3004 	ldrb.w	r3, [r8, #4]
    17fc:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    17fe:	bf99      	ittee	ls
    1800:	fa45 f30b 	asrls.w	r3, r5, fp
    1804:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    1808:	fa45 f20b 	asrhi.w	r2, r5, fp
    180c:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    180e:	2302      	movs	r3, #2
    1810:	9900      	ldr	r1, [sp, #0]
    1812:	4630      	mov	r0, r6
    1814:	f7ff fe6c 	bl	14f0 <gfx_blit>
    1818:	4307      	orrs	r7, r0
            ppb--;
    181a:	3c01      	subs	r4, #1
            if (!ppb){
    181c:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1820:	d0de      	beq.n	17e0 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    1822:	f1cb 0308 	rsb	r3, fp, #8
    1826:	409d      	lsls	r5, r3
    1828:	b2ed      	uxtb	r5, r5
    182a:	e7e2      	b.n	17f2 <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    182c:	9b00      	ldr	r3, [sp, #0]
    182e:	3301      	adds	r3, #1
    1830:	9300      	str	r3, [sp, #0]
    1832:	9a02      	ldr	r2, [sp, #8]
    1834:	4293      	cmp	r3, r2
    1836:	d008      	beq.n	184a <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    1838:	9b03      	ldr	r3, [sp, #12]
    183a:	4619      	mov	r1, r3
    183c:	9a01      	ldr	r2, [sp, #4]
    183e:	eb01 0a02 	add.w	sl, r1, r2
    1842:	4552      	cmp	r2, sl
    1844:	daf2      	bge.n	182c <gfx_sprite+0x84>
    1846:	9e01      	ldr	r6, [sp, #4]
    1848:	e7d6      	b.n	17f8 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    usart_putc(USART1,'\n');
    184a:	210a      	movs	r1, #10
    184c:	4805      	ldr	r0, [pc, #20]	; (1864 <gfx_sprite+0xbc>)
    184e:	f001 fee5 	bl	361c <usart_putc>
    return collision;
}
    1852:	4638      	mov	r0, r7
    1854:	b005      	add	sp, #20
    1856:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    185a:	bf00      	nop
    185c:	2000018c 	.word	0x2000018c
    1860:	00003ae8 	.word	0x00003ae8
    1864:	40013800 	.word	0x40013800

00001868 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    1868:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    186c:	f001 fd94 	bl	3398 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    1870:	89c3      	ldrh	r3, [r0, #14]
    1872:	089e      	lsrs	r6, r3, #2
    1874:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    1878:	429e      	cmp	r6, r3
    187a:	da18      	bge.n	18ae <color_bars+0x46>
    187c:	4607      	mov	r7, r0
static void color_bars(){
    187e:	f04f 0810 	mov.w	r8, #16
    1882:	4645      	mov	r5, r8
    1884:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    1886:	f014 0f07 	tst.w	r4, #7
				c--;
    188a:	bf04      	itt	eq
    188c:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    1890:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    1892:	462a      	mov	r2, r5
    1894:	4631      	mov	r1, r6
    1896:	4620      	mov	r0, r4
    1898:	f7ff fe76 	bl	1588 <gfx_plot>
		for (x=0;x<128;x++){
    189c:	3401      	adds	r4, #1
    189e:	2c80      	cmp	r4, #128	; 0x80
    18a0:	d1f1      	bne.n	1886 <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    18a2:	3601      	adds	r6, #1
    18a4:	89fb      	ldrh	r3, [r7, #14]
    18a6:	42b3      	cmp	r3, r6
    18a8:	dceb      	bgt.n	1882 <color_bars+0x1a>
    18aa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    18ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000018b2 <vertical_bars>:
	}
		

}

static void vertical_bars(){
    18b2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    18b4:	f001 fd70 	bl	3398 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    18b8:	89c3      	ldrh	r3, [r0, #14]
    18ba:	2b10      	cmp	r3, #16
    18bc:	dd12      	ble.n	18e4 <vertical_bars+0x32>
    18be:	4605      	mov	r5, r0
    18c0:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    18c2:	260f      	movs	r6, #15
    18c4:	2700      	movs	r7, #0
    18c6:	4632      	mov	r2, r6
    18c8:	4621      	mov	r1, r4
    18ca:	4638      	mov	r0, r7
    18cc:	f7ff fe5c 	bl	1588 <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    18d0:	89a8      	ldrh	r0, [r5, #12]
    18d2:	4632      	mov	r2, r6
    18d4:	4621      	mov	r1, r4
    18d6:	3801      	subs	r0, #1
    18d8:	f7ff fe56 	bl	1588 <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    18dc:	3401      	adds	r4, #1
    18de:	89eb      	ldrh	r3, [r5, #14]
    18e0:	42a3      	cmp	r3, r4
    18e2:	dcf0      	bgt.n	18c6 <vertical_bars+0x14>
    18e4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000018e6 <horiz_bars>:
	}
}

static void horiz_bars(){
    18e6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    18e8:	f001 fd56 	bl	3398 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    18ec:	8983      	ldrh	r3, [r0, #12]
    18ee:	b193      	cbz	r3, 1916 <horiz_bars+0x30>
    18f0:	4605      	mov	r5, r0
    18f2:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    18f4:	260f      	movs	r6, #15
    18f6:	4627      	mov	r7, r4
    18f8:	4632      	mov	r2, r6
    18fa:	4639      	mov	r1, r7
    18fc:	4620      	mov	r0, r4
    18fe:	f7ff fe43 	bl	1588 <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    1902:	89e9      	ldrh	r1, [r5, #14]
    1904:	4632      	mov	r2, r6
    1906:	3901      	subs	r1, #1
    1908:	4620      	mov	r0, r4
    190a:	f7ff fe3d 	bl	1588 <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    190e:	3401      	adds	r4, #1
    1910:	89ab      	ldrh	r3, [r5, #12]
    1912:	42a3      	cmp	r3, r4
    1914:	dcf0      	bgt.n	18f8 <horiz_bars+0x12>
    1916:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001918 <display_menu>:
	" Video test",
	" Sound test",
	" BASIC",
};

static void display_menu(){
    1918:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    191a:	f7ff fe5f 	bl	15dc <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    191e:	4808      	ldr	r0, [pc, #32]	; (1940 <display_menu+0x28>)
    1920:	f001 fa3d 	bl	2d9e <println>
    1924:	4807      	ldr	r0, [pc, #28]	; (1944 <display_menu+0x2c>)
    1926:	f001 fa3a 	bl	2d9e <println>
    192a:	4807      	ldr	r0, [pc, #28]	; (1948 <display_menu+0x30>)
    192c:	f001 fa37 	bl	2d9e <println>
    1930:	4806      	ldr	r0, [pc, #24]	; (194c <display_menu+0x34>)
    1932:	f001 fa34 	bl	2d9e <println>
    1936:	4806      	ldr	r0, [pc, #24]	; (1950 <display_menu+0x38>)
    1938:	f001 fa31 	bl	2d9e <println>
    193c:	bd08      	pop	{r3, pc}
    193e:	bf00      	nop
    1940:	00003c04 	.word	0x00003c04
    1944:	00003c10 	.word	0x00003c10
    1948:	00003c20 	.word	0x00003c20
    194c:	00003c2c 	.word	0x00003c2c
    1950:	00003c38 	.word	0x00003c38

00001954 <draw_balls>:
void draw_balls(){
    1954:	b510      	push	{r4, lr}
    1956:	b082      	sub	sp, #8
	frame_sync();
    1958:	f001 fce4 	bl	3324 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    195c:	4c0a      	ldr	r4, [pc, #40]	; (1988 <draw_balls+0x34>)
    195e:	6923      	ldr	r3, [r4, #16]
    1960:	9300      	str	r3, [sp, #0]
    1962:	2308      	movs	r3, #8
    1964:	461a      	mov	r2, r3
    1966:	6861      	ldr	r1, [r4, #4]
    1968:	6820      	ldr	r0, [r4, #0]
    196a:	f7ff ff1d 	bl	17a8 <gfx_sprite>
    196e:	69a1      	ldr	r1, [r4, #24]
    1970:	6960      	ldr	r0, [r4, #20]
    1972:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1974:	9300      	str	r3, [sp, #0]
    1976:	2308      	movs	r3, #8
    1978:	461a      	mov	r2, r3
    197a:	f7ff ff15 	bl	17a8 <gfx_sprite>
	wait_sync_end();
    197e:	f001 fcd9 	bl	3334 <wait_sync_end>
}
    1982:	b002      	add	sp, #8
    1984:	bd10      	pop	{r4, pc}
    1986:	bf00      	nop
    1988:	20002694 	.word	0x20002694

0000198c <isqrt>:
	if (n<2) return n;
    198c:	2801      	cmp	r0, #1
    198e:	dd0c      	ble.n	19aa <isqrt+0x1e>
int isqrt(int n){
    1990:	b510      	push	{r4, lr}
    1992:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1994:	1080      	asrs	r0, r0, #2
    1996:	f7ff fff9 	bl	198c <isqrt>
    199a:	0040      	lsls	r0, r0, #1
	large = small + 1;
    199c:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    199e:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    19a2:	4294      	cmp	r4, r2
    19a4:	bfa8      	it	ge
    19a6:	4618      	movge	r0, r3
}
    19a8:	bd10      	pop	{r4, pc}
    19aa:	4770      	bx	lr

000019ac <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    19ac:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    19ae:	6803      	ldr	r3, [r0, #0]
    19b0:	680a      	ldr	r2, [r1, #0]
    19b2:	6844      	ldr	r4, [r0, #4]
    19b4:	6848      	ldr	r0, [r1, #4]
    19b6:	fb00 f004 	mul.w	r0, r0, r4
    19ba:	fb02 0003 	mla	r0, r2, r3, r0
    19be:	2800      	cmp	r0, #0
    19c0:	bfb8      	it	lt
    19c2:	4240      	neglt	r0, r0
    19c4:	f7ff ffe2 	bl	198c <isqrt>
}
    19c8:	bd10      	pop	{r4, pc}

000019ca <move_balls>:
void move_balls(){
    19ca:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    19cc:	f001 fce4 	bl	3398 <get_video_params>
    19d0:	4b1c      	ldr	r3, [pc, #112]	; (1a44 <move_balls+0x7a>)
    19d2:	f103 0628 	add.w	r6, r3, #40	; 0x28
    19d6:	e005      	b.n	19e4 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    19d8:	4249      	negs	r1, r1
    19da:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    19dc:	6055      	str	r5, [r2, #4]
    19de:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    19e0:	42b3      	cmp	r3, r6
    19e2:	d017      	beq.n	1a14 <move_balls+0x4a>
    19e4:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    19e6:	681d      	ldr	r5, [r3, #0]
    19e8:	6899      	ldr	r1, [r3, #8]
    19ea:	186c      	adds	r4, r5, r1
    19ec:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    19ee:	f114 0f07 	cmn.w	r4, #7
    19f2:	db02      	blt.n	19fa <move_balls+0x30>
    19f4:	8987      	ldrh	r7, [r0, #12]
    19f6:	42bc      	cmp	r4, r7
    19f8:	db02      	blt.n	1a00 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    19fa:	4249      	negs	r1, r1
    19fc:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    19fe:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1a00:	6855      	ldr	r5, [r2, #4]
    1a02:	68d1      	ldr	r1, [r2, #12]
    1a04:	186c      	adds	r4, r5, r1
    1a06:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1a08:	2c0f      	cmp	r4, #15
    1a0a:	dde5      	ble.n	19d8 <move_balls+0xe>
    1a0c:	89c7      	ldrh	r7, [r0, #14]
    1a0e:	42bc      	cmp	r4, r7
    1a10:	dbe5      	blt.n	19de <move_balls+0x14>
    1a12:	e7e1      	b.n	19d8 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1a14:	480c      	ldr	r0, [pc, #48]	; (1a48 <move_balls+0x7e>)
    1a16:	4601      	mov	r1, r0
    1a18:	3814      	subs	r0, #20
    1a1a:	f7ff ffc7 	bl	19ac <distance>
    1a1e:	2807      	cmp	r0, #7
    1a20:	d80f      	bhi.n	1a42 <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1a22:	4b08      	ldr	r3, [pc, #32]	; (1a44 <move_balls+0x7a>)
    1a24:	689a      	ldr	r2, [r3, #8]
    1a26:	69db      	ldr	r3, [r3, #28]
    1a28:	429a      	cmp	r2, r3
    1a2a:	d002      	beq.n	1a32 <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1a2c:	4905      	ldr	r1, [pc, #20]	; (1a44 <move_balls+0x7a>)
    1a2e:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1a30:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1a32:	4b04      	ldr	r3, [pc, #16]	; (1a44 <move_balls+0x7a>)
    1a34:	68da      	ldr	r2, [r3, #12]
    1a36:	6a1b      	ldr	r3, [r3, #32]
    1a38:	429a      	cmp	r2, r3
    1a3a:	d002      	beq.n	1a42 <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1a3c:	4901      	ldr	r1, [pc, #4]	; (1a44 <move_balls+0x7a>)
    1a3e:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1a40:	620a      	str	r2, [r1, #32]
    1a42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1a44:	20002694 	.word	0x20002694
    1a48:	200026a8 	.word	0x200026a8

00001a4c <init_balls>:
void init_balls(){
    1a4c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a50:	f001 fca2 	bl	3398 <get_video_params>
    1a54:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a56:	4b15      	ldr	r3, [pc, #84]	; (1aac <init_balls+0x60>)
    1a58:	6818      	ldr	r0, [r3, #0]
    1a5a:	f7fe fcc5 	bl	3e8 <srand>
    1a5e:	4c14      	ldr	r4, [pc, #80]	; (1ab0 <init_balls+0x64>)
    1a60:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    1a64:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    1a66:	4f13      	ldr	r7, [pc, #76]	; (1ab4 <init_balls+0x68>)
    1a68:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    1a6c:	f7fe fcc2 	bl	3f4 <rand>
    1a70:	89ab      	ldrh	r3, [r5, #12]
    1a72:	fb90 f2f3 	sdiv	r2, r0, r3
    1a76:	fb02 0013 	mls	r0, r2, r3, r0
    1a7a:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1a7c:	f7fe fcba 	bl	3f4 <rand>
    1a80:	89eb      	ldrh	r3, [r5, #14]
    1a82:	3b10      	subs	r3, #16
    1a84:	fb90 f2f3 	sdiv	r2, r0, r3
    1a88:	fb02 0013 	mls	r0, r2, r3, r0
    1a8c:	3010      	adds	r0, #16
    1a8e:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1a90:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    1a92:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1a94:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    1a96:	2b00      	cmp	r3, #0
    1a98:	bf14      	ite	ne
    1a9a:	4643      	movne	r3, r8
    1a9c:	463b      	moveq	r3, r7
    1a9e:	6123      	str	r3, [r4, #16]
    1aa0:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1aa2:	454c      	cmp	r4, r9
    1aa4:	d1e2      	bne.n	1a6c <init_balls+0x20>
}
    1aa6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1aaa:	bf00      	nop
    1aac:	20004e20 	.word	0x20004e20
    1ab0:	20002694 	.word	0x20002694
    1ab4:	00003af8 	.word	0x00003af8

00001ab8 <main>:
			break;	
		}
	}//while
}

void main(void){
    1ab8:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1abc:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1abe:	4ac0      	ldr	r2, [pc, #768]	; (1dc0 <main+0x308>)
    1ac0:	6813      	ldr	r3, [r2, #0]
    1ac2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1ac6:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1ac8:	4613      	mov	r3, r2
    1aca:	681a      	ldr	r2, [r3, #0]
    1acc:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1ad0:	d0fb      	beq.n	1aca <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1ad2:	4bbb      	ldr	r3, [pc, #748]	; (1dc0 <main+0x308>)
    1ad4:	685a      	ldr	r2, [r3, #4]
    1ad6:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1ada:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1adc:	681a      	ldr	r2, [r3, #0]
    1ade:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1ae2:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1ae4:	681a      	ldr	r2, [r3, #0]
    1ae6:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1aea:	d0fb      	beq.n	1ae4 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1aec:	4ab5      	ldr	r2, [pc, #724]	; (1dc4 <main+0x30c>)
    1aee:	6813      	ldr	r3, [r2, #0]
    1af0:	f043 0312 	orr.w	r3, r3, #18
    1af4:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1af6:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1afa:	6853      	ldr	r3, [r2, #4]
    1afc:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1b00:	f043 0302 	orr.w	r3, r3, #2
    1b04:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1b06:	f640 031d 	movw	r3, #2077	; 0x81d
    1b0a:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1b0c:	4cae      	ldr	r4, [pc, #696]	; (1dc8 <main+0x310>)
    1b0e:	2206      	movs	r2, #6
    1b10:	210d      	movs	r1, #13
    1b12:	4620      	mov	r0, r4
    1b14:	f7ff fcac 	bl	1470 <config_pin>
	_led_off();
    1b18:	68e3      	ldr	r3, [r4, #12]
    1b1a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1b1e:	60e3      	str	r3, [r4, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_TX,ALT_PORT,FLOW_SOFT);
    1b20:	2400      	movs	r4, #0
    1b22:	9401      	str	r4, [sp, #4]
    1b24:	2301      	movs	r3, #1
    1b26:	9300      	str	r3, [sp, #0]
    1b28:	2302      	movs	r3, #2
    1b2a:	4622      	mov	r2, r4
    1b2c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1b30:	48a6      	ldr	r0, [pc, #664]	; (1dcc <main+0x314>)
    1b32:	f001 fce8 	bl	3506 <usart_open_channel>
	gamepad_init();
    1b36:	f7ff fa79 	bl	102c <gamepad_init>
	tvout_init();
    1b3a:	f001 f9dd 	bl	2ef8 <tvout_init>
	sound_init();
    1b3e:	f000 fe41 	bl	27c4 <sound_init>
	gfx_cls();
    1b42:	f7ff fd4b 	bl	15dc <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1b46:	f001 fc27 	bl	3398 <get_video_params>
	display_menu();
    1b4a:	f7ff fee5 	bl	1918 <display_menu>
	int i=0;
    1b4e:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1b50:	4b9f      	ldr	r3, [pc, #636]	; (1dd0 <main+0x318>)
    1b52:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1b56:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1b5a:	9304      	str	r3, [sp, #16]
    1b5c:	e186      	b.n	1e6c <main+0x3b4>
			if (i<(MENU_ITEMS-1)) i++;
    1b5e:	f1ba 0f03 	cmp.w	sl, #3
    1b62:	f300 8183 	bgt.w	1e6c <main+0x3b4>
    1b66:	f10a 0a01 	add.w	sl, sl, #1
    1b6a:	e17f      	b.n	1e6c <main+0x3b4>
			switch(i){
    1b6c:	f1ba 0f04 	cmp.w	sl, #4
    1b70:	f200 817a 	bhi.w	1e68 <main+0x3b0>
    1b74:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1b78:	00cd0005 	.word	0x00cd0005
    1b7c:	01a8010c 	.word	0x01a8010c
    1b80:	01e4      	.short	0x01e4
	count=games_count();
    1b82:	f7ff fb03 	bl	118c <games_count>
    1b86:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1b88:	2000      	movs	r0, #0
    1b8a:	f001 fbdb 	bl	3344 <set_video_mode>
	vparams=get_video_params();
    1b8e:	f001 fc03 	bl	3398 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1b92:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1b96:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1b9a:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1b9c:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1ba0:	454e      	cmp	r6, r9
    1ba2:	bfda      	itte	le
    1ba4:	eba9 0806 	suble.w	r8, r9, r6
    1ba8:	f108 0801 	addle.w	r8, r8, #1
    1bac:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1bae:	2100      	movs	r1, #0
    1bb0:	4608      	mov	r0, r1
    1bb2:	f001 f8ab 	bl	2d0c <set_cursor>
	print(" ********** GAMES **********");
    1bb6:	4887      	ldr	r0, [pc, #540]	; (1dd4 <main+0x31c>)
    1bb8:	f001 f8dc 	bl	2d74 <print>
	while ((r<rows) && games_list[first].size){
    1bbc:	f1bb 0f01 	cmp.w	fp, #1
    1bc0:	d92d      	bls.n	1c1e <main+0x166>
    1bc2:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1bc6:	4a84      	ldr	r2, [pc, #528]	; (1dd8 <main+0x320>)
    1bc8:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1bcc:	691b      	ldr	r3, [r3, #16]
    1bce:	b333      	cbz	r3, 1c1e <main+0x166>
    1bd0:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1bd4:	1c53      	adds	r3, r2, #1
    1bd6:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1bda:	2501      	movs	r5, #1
		put_char(' ');
    1bdc:	2720      	movs	r7, #32
		new_line();
    1bde:	f000 ffdf 	bl	2ba0 <new_line>
		clear_line();
    1be2:	f001 f961 	bl	2ea8 <clear_line>
		put_char(' ');
    1be6:	4638      	mov	r0, r7
    1be8:	f001 f824 	bl	2c34 <put_char>
		print(games_list[first].name);
    1bec:	4620      	mov	r0, r4
    1bee:	f001 f8c1 	bl	2d74 <print>
		line=get_cursor()&0xff;
    1bf2:	f001 f891 	bl	2d18 <get_cursor>
		set_cursor(90,line);
    1bf6:	b2c1      	uxtb	r1, r0
    1bf8:	205a      	movs	r0, #90	; 0x5a
    1bfa:	f001 f887 	bl	2d0c <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1bfe:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1c02:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1c04:	bf0c      	ite	eq
    1c06:	4875      	ldreq	r0, [pc, #468]	; (1ddc <main+0x324>)
			print("(BPCHIP)");
    1c08:	4875      	ldrne	r0, [pc, #468]	; (1de0 <main+0x328>)
    1c0a:	f001 f8b3 	bl	2d74 <print>
		r++;
    1c0e:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1c10:	42ae      	cmp	r6, r5
    1c12:	d004      	beq.n	1c1e <main+0x166>
    1c14:	341c      	adds	r4, #28
    1c16:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1c1a:	2b00      	cmp	r3, #0
    1c1c:	d1df      	bne.n	1bde <main+0x126>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1c1e:	eba9 0108 	sub.w	r1, r9, r8
    1c22:	00c9      	lsls	r1, r1, #3
    1c24:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1c28:	2000      	movs	r0, #0
    1c2a:	f001 f86f 	bl	2d0c <set_cursor>
		put_char('>');
    1c2e:	203e      	movs	r0, #62	; 0x3e
    1c30:	f001 f800 	bl	2c34 <put_char>
		btn=btn_wait_any();
    1c34:	f7ff fa70 	bl	1118 <btn_wait_any>
    1c38:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1c3a:	f7ff fa59 	bl	10f0 <btn_wait_up>
		switch(btn){
    1c3e:	2c04      	cmp	r4, #4
    1c40:	d053      	beq.n	1cea <main+0x232>
    1c42:	d943      	bls.n	1ccc <main+0x214>
    1c44:	2c40      	cmp	r4, #64	; 0x40
    1c46:	d057      	beq.n	1cf8 <main+0x240>
    1c48:	2c80      	cmp	r4, #128	; 0x80
    1c4a:	f000 810d 	beq.w	1e68 <main+0x3b0>
    1c4e:	2c20      	cmp	r4, #32
    1c50:	d1a6      	bne.n	1ba0 <main+0xe8>
	run_game(selected-1);
    1c52:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1c56:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1c5a:	4b5f      	ldr	r3, [pc, #380]	; (1dd8 <main+0x320>)
    1c5c:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1c60:	2b01      	cmp	r3, #1
    1c62:	bf14      	ite	ne
    1c64:	2600      	movne	r6, #0
    1c66:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1c6a:	4f5b      	ldr	r7, [pc, #364]	; (1dd8 <main+0x320>)
    1c6c:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1c70:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1c74:	6922      	ldr	r2, [r4, #16]
    1c76:	495b      	ldr	r1, [pc, #364]	; (1de4 <main+0x32c>)
    1c78:	4431      	add	r1, r6
    1c7a:	6960      	ldr	r0, [r4, #20]
    1c7c:	f7ff fb39 	bl	12f2 <move>
	set_keymap(games_list[idx].keymap);
    1c80:	69a0      	ldr	r0, [r4, #24]
    1c82:	f7ff f9c7 	bl	1014 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1c86:	eba5 0909 	sub.w	r9, r5, r9
    1c8a:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1c8e:	f001 fb59 	bl	3344 <set_video_mode>
	exit_code=chip_vm(addr,debug_level);
    1c92:	4b55      	ldr	r3, [pc, #340]	; (1de8 <main+0x330>)
    1c94:	7819      	ldrb	r1, [r3, #0]
    1c96:	4630      	mov	r0, r6
    1c98:	f7fe fbba 	bl	410 <chip_vm>
    1c9c:	4604      	mov	r4, r0
	print("exit code: ");
    1c9e:	4853      	ldr	r0, [pc, #332]	; (1dec <main+0x334>)
    1ca0:	f001 f868 	bl	2d74 <print>
	switch(exit_code){
    1ca4:	2c01      	cmp	r4, #1
    1ca6:	d02a      	beq.n	1cfe <main+0x246>
    1ca8:	b374      	cbz	r4, 1d08 <main+0x250>
    1caa:	2c03      	cmp	r4, #3
    1cac:	d82c      	bhi.n	1d08 <main+0x250>
		select_console(SERIAL);
    1cae:	2001      	movs	r0, #1
    1cb0:	f001 f91c 	bl	2eec <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1cb4:	4621      	mov	r1, r4
    1cb6:	484e      	ldr	r0, [pc, #312]	; (1df0 <main+0x338>)
    1cb8:	f7fe fb38 	bl	32c <print_vms>
		select_console(LOCAL);
    1cbc:	2000      	movs	r0, #0
    1cbe:	f001 f915 	bl	2eec <select_console>
		btn_wait_any();
    1cc2:	f7ff fa29 	bl	1118 <btn_wait_any>
		i=1;
    1cc6:	2301      	movs	r3, #1
    1cc8:	9305      	str	r3, [sp, #20]
    1cca:	e01d      	b.n	1d08 <main+0x250>
		switch(btn){
    1ccc:	2c01      	cmp	r4, #1
    1cce:	d009      	beq.n	1ce4 <main+0x22c>
    1cd0:	2c02      	cmp	r4, #2
    1cd2:	f47f af65 	bne.w	1ba0 <main+0xe8>
			if (selected>1) selected--;
    1cd6:	f1b9 0f01 	cmp.w	r9, #1
    1cda:	f77f af61 	ble.w	1ba0 <main+0xe8>
    1cde:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1ce2:	e75d      	b.n	1ba0 <main+0xe8>
			selected=1;
    1ce4:	f04f 0901 	mov.w	r9, #1
    1ce8:	e75a      	b.n	1ba0 <main+0xe8>
			if (selected<count){
    1cea:	9b03      	ldr	r3, [sp, #12]
    1cec:	454b      	cmp	r3, r9
    1cee:	f77f af57 	ble.w	1ba0 <main+0xe8>
				selected++;
    1cf2:	f109 0901 	add.w	r9, r9, #1
    1cf6:	e753      	b.n	1ba0 <main+0xe8>
			selected=count;
    1cf8:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1cfc:	e750      	b.n	1ba0 <main+0xe8>
		print("CHIP EXIT OK");
    1cfe:	483d      	ldr	r0, [pc, #244]	; (1df4 <main+0x33c>)
    1d00:	f001 f838 	bl	2d74 <print>
		i=0;
    1d04:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1d08:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1d0c:	f001 fb4e 	bl	33ac <game_pause>
    1d10:	e0aa      	b.n	1e68 <main+0x3b0>
	gfx_cls();
    1d12:	f7ff fc63 	bl	15dc <gfx_cls>
	print(" **** VM debug support ****\n");
    1d16:	4838      	ldr	r0, [pc, #224]	; (1df8 <main+0x340>)
    1d18:	f001 f82c 	bl	2d74 <print>
	print(" No debug support#\n");
    1d1c:	4837      	ldr	r0, [pc, #220]	; (1dfc <main+0x344>)
    1d1e:	f001 f829 	bl	2d74 <print>
	print(" Print PC and OPCODE\n");
    1d22:	4837      	ldr	r0, [pc, #220]	; (1e00 <main+0x348>)
    1d24:	f001 f826 	bl	2d74 <print>
	print(" Print all VM states.\n");
    1d28:	4836      	ldr	r0, [pc, #216]	; (1e04 <main+0x34c>)
    1d2a:	f001 f823 	bl	2d74 <print>
	print(" Single step\n");
    1d2e:	4836      	ldr	r0, [pc, #216]	; (1e08 <main+0x350>)
    1d30:	f001 f820 	bl	2d74 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d34:	4c2c      	ldr	r4, [pc, #176]	; (1de8 <main+0x330>)
    1d36:	2500      	movs	r5, #0
		put_char('*');
    1d38:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d3a:	7821      	ldrb	r1, [r4, #0]
    1d3c:	3101      	adds	r1, #1
    1d3e:	00c9      	lsls	r1, r1, #3
    1d40:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d44:	4628      	mov	r0, r5
    1d46:	f000 ffe1 	bl	2d0c <set_cursor>
		put_char('*');
    1d4a:	4630      	mov	r0, r6
    1d4c:	f000 ff72 	bl	2c34 <put_char>
		btn=btn_wait_any();
    1d50:	f7ff f9e2 	bl	1118 <btn_wait_any>
    1d54:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d56:	7821      	ldrb	r1, [r4, #0]
    1d58:	3101      	adds	r1, #1
    1d5a:	00c9      	lsls	r1, r1, #3
    1d5c:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d60:	4628      	mov	r0, r5
    1d62:	f000 ffd3 	bl	2d0c <set_cursor>
		put_char(' ');
    1d66:	2020      	movs	r0, #32
    1d68:	f000 ff64 	bl	2c34 <put_char>
		switch(btn){
    1d6c:	2f04      	cmp	r7, #4
    1d6e:	d009      	beq.n	1d84 <main+0x2cc>
    1d70:	2f20      	cmp	r7, #32
    1d72:	d079      	beq.n	1e68 <main+0x3b0>
    1d74:	2f02      	cmp	r7, #2
    1d76:	d1e0      	bne.n	1d3a <main+0x282>
			if (debug_level) debug_level--;
    1d78:	7823      	ldrb	r3, [r4, #0]
    1d7a:	2b00      	cmp	r3, #0
    1d7c:	d0dd      	beq.n	1d3a <main+0x282>
    1d7e:	3b01      	subs	r3, #1
    1d80:	7023      	strb	r3, [r4, #0]
    1d82:	e7da      	b.n	1d3a <main+0x282>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1d84:	7823      	ldrb	r3, [r4, #0]
    1d86:	2b02      	cmp	r3, #2
    1d88:	d8d7      	bhi.n	1d3a <main+0x282>
    1d8a:	3301      	adds	r3, #1
    1d8c:	7023      	strb	r3, [r4, #0]
    1d8e:	e7d4      	b.n	1d3a <main+0x282>
	set_video_mode(p);
    1d90:	2000      	movs	r0, #0
    1d92:	f001 fad7 	bl	3344 <set_video_mode>
	color_bars();
    1d96:	f7ff fd67 	bl	1868 <color_bars>
	vertical_bars();
    1d9a:	f7ff fd8a 	bl	18b2 <vertical_bars>
	horiz_bars();
    1d9e:	f7ff fda2 	bl	18e6 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1da2:	2110      	movs	r1, #16
    1da4:	4819      	ldr	r0, [pc, #100]	; (1e0c <main+0x354>)
    1da6:	f001 f800 	bl	2daa <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1daa:	210a      	movs	r1, #10
    1dac:	9804      	ldr	r0, [sp, #16]
    1dae:	f000 fffc 	bl	2daa <print_int>
	init_balls();
    1db2:	f7ff fe4b 	bl	1a4c <init_balls>
	p=0;
    1db6:	2400      	movs	r4, #0
		if (btn_query_down(KEY_RIGHT)){
    1db8:	2510      	movs	r5, #16
				print("BPCHIP mode\n180x112 16 colors");
    1dba:	4f15      	ldr	r7, [pc, #84]	; (1e10 <main+0x358>)
				print("SCHIP mode\n128x64 mono");
    1dbc:	4e15      	ldr	r6, [pc, #84]	; (1e14 <main+0x35c>)
    1dbe:	e03d      	b.n	1e3c <main+0x384>
    1dc0:	40021000 	.word	0x40021000
    1dc4:	40022000 	.word	0x40022000
    1dc8:	40011000 	.word	0x40011000
    1dcc:	40013800 	.word	0x40013800
    1dd0:	20004e30 	.word	0x20004e30
    1dd4:	00003c40 	.word	0x00003c40
    1dd8:	20000004 	.word	0x20000004
    1ddc:	00003c60 	.word	0x00003c60
    1de0:	00003c68 	.word	0x00003c68
    1de4:	2000068c 	.word	0x2000068c
    1de8:	20002690 	.word	0x20002690
    1dec:	00003c74 	.word	0x00003c74
    1df0:	00003c90 	.word	0x00003c90
    1df4:	00003c80 	.word	0x00003c80
    1df8:	00003ca0 	.word	0x00003ca0
    1dfc:	00003cc0 	.word	0x00003cc0
    1e00:	00003cd4 	.word	0x00003cd4
    1e04:	00003cec 	.word	0x00003cec
    1e08:	00003d04 	.word	0x00003d04
    1e0c:	00004000 	.word	0x00004000
    1e10:	00003d14 	.word	0x00003d14
    1e14:	00003d34 	.word	0x00003d34
			p^=1;
    1e18:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1e1c:	4620      	mov	r0, r4
    1e1e:	f001 fa91 	bl	3344 <set_video_mode>
			switch(p){
    1e22:	2c00      	cmp	r4, #0
    1e24:	d046      	beq.n	1eb4 <main+0x3fc>
    1e26:	2c01      	cmp	r4, #1
    1e28:	d04a      	beq.n	1ec0 <main+0x408>
			vertical_bars();
    1e2a:	f7ff fd42 	bl	18b2 <vertical_bars>
			horiz_bars();
    1e2e:	f7ff fd5a 	bl	18e6 <horiz_bars>
			init_balls();
    1e32:	f7ff fe0b 	bl	1a4c <init_balls>
			btn_wait_up(KEY_RIGHT);
    1e36:	4628      	mov	r0, r5
    1e38:	f7ff f95a 	bl	10f0 <btn_wait_up>
		draw_balls();
    1e3c:	f7ff fd8a 	bl	1954 <draw_balls>
		draw_balls();
    1e40:	f7ff fd88 	bl	1954 <draw_balls>
		move_balls();
    1e44:	f7ff fdc1 	bl	19ca <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1e48:	4628      	mov	r0, r5
    1e4a:	f7ff f931 	bl	10b0 <btn_query_down>
    1e4e:	2800      	cmp	r0, #0
    1e50:	d1e2      	bne.n	1e18 <main+0x360>
		}else if (btn_query_down(KEY_B)){
    1e52:	2020      	movs	r0, #32
    1e54:	f7ff f92c 	bl	10b0 <btn_query_down>
    1e58:	2800      	cmp	r0, #0
    1e5a:	d0ef      	beq.n	1e3c <main+0x384>
			btn_wait_up(KEY_B);
    1e5c:	2020      	movs	r0, #32
    1e5e:	f7ff f947 	bl	10f0 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1e62:	2000      	movs	r0, #0
    1e64:	f001 fa6e 	bl	3344 <set_video_mode>
			display_menu();
    1e68:	f7ff fd56 	bl	1918 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1e6c:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1e70:	b2e4      	uxtb	r4, r4
    1e72:	4621      	mov	r1, r4
    1e74:	2000      	movs	r0, #0
    1e76:	f000 ff49 	bl	2d0c <set_cursor>
		put_char('>');
    1e7a:	203e      	movs	r0, #62	; 0x3e
    1e7c:	f000 feda 	bl	2c34 <put_char>
		btn=btn_wait_any();
    1e80:	f7ff f94a 	bl	1118 <btn_wait_any>
    1e84:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1e86:	f7ff f933 	bl	10f0 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1e8a:	4621      	mov	r1, r4
    1e8c:	2000      	movs	r0, #0
    1e8e:	f000 ff3d 	bl	2d0c <set_cursor>
		put_char(' ');
    1e92:	2020      	movs	r0, #32
    1e94:	f000 fece 	bl	2c34 <put_char>
		switch(btn){
    1e98:	2d04      	cmp	r5, #4
    1e9a:	f43f ae60 	beq.w	1b5e <main+0xa6>
    1e9e:	2d20      	cmp	r5, #32
    1ea0:	f43f ae64 	beq.w	1b6c <main+0xb4>
    1ea4:	2d02      	cmp	r5, #2
    1ea6:	d1e1      	bne.n	1e6c <main+0x3b4>
			if (i) i--;
    1ea8:	f1ba 0f00 	cmp.w	sl, #0
    1eac:	d0de      	beq.n	1e6c <main+0x3b4>
    1eae:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1eb2:	e7db      	b.n	1e6c <main+0x3b4>
				print("BPCHIP mode\n180x112 16 colors");
    1eb4:	4638      	mov	r0, r7
    1eb6:	f000 ff5d 	bl	2d74 <print>
				color_bars();
    1eba:	f7ff fcd5 	bl	1868 <color_bars>
    1ebe:	e7b4      	b.n	1e2a <main+0x372>
				print("SCHIP mode\n128x64 mono");
    1ec0:	4630      	mov	r0, r6
    1ec2:	f000 ff57 	bl	2d74 <print>
    1ec6:	e7b0      	b.n	1e2a <main+0x372>
	gfx_cls();
    1ec8:	f7ff fb88 	bl	15dc <gfx_cls>
	print("press buttons\n");
    1ecc:	4828      	ldr	r0, [pc, #160]	; (1f70 <main+0x4b8>)
    1ece:	f000 ff51 	bl	2d74 <print>
		tone(freq,30);
    1ed2:	251e      	movs	r5, #30
			freq=493;
    1ed4:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    1ed8:	f240 266e 	movw	r6, #622	; 0x26e
    1edc:	e019      	b.n	1f12 <main+0x45a>
		switch(key){
    1ede:	2802      	cmp	r0, #2
    1ee0:	d03f      	beq.n	1f62 <main+0x4aa>
    1ee2:	2804      	cmp	r0, #4
    1ee4:	d00e      	beq.n	1f04 <main+0x44c>
    1ee6:	2801      	cmp	r0, #1
    1ee8:	d024      	beq.n	1f34 <main+0x47c>
		tone(freq,30);
    1eea:	4629      	mov	r1, r5
    1eec:	9802      	ldr	r0, [sp, #8]
    1eee:	f000 fc95 	bl	281c <tone>
	while (key!=KEY_B){
    1ef2:	2c20      	cmp	r4, #32
    1ef4:	d10d      	bne.n	1f12 <main+0x45a>
    1ef6:	e02b      	b.n	1f50 <main+0x498>
		switch(key){
    1ef8:	2810      	cmp	r0, #16
    1efa:	d1f6      	bne.n	1eea <main+0x432>
			freq=523;
    1efc:	f240 230b 	movw	r3, #523	; 0x20b
    1f00:	9302      	str	r3, [sp, #8]
    1f02:	e002      	b.n	1f0a <main+0x452>
			freq=466;
    1f04:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    1f08:	9302      	str	r3, [sp, #8]
		tone(freq,30);
    1f0a:	4629      	mov	r1, r5
    1f0c:	9802      	ldr	r0, [sp, #8]
    1f0e:	f000 fc85 	bl	281c <tone>
		key=btn_wait_any();
    1f12:	f7ff f901 	bl	1118 <btn_wait_any>
    1f16:	4604      	mov	r4, r0
		switch(key){
    1f18:	2808      	cmp	r0, #8
    1f1a:	d026      	beq.n	1f6a <main+0x4b2>
    1f1c:	d9df      	bls.n	1ede <main+0x426>
    1f1e:	2820      	cmp	r0, #32
    1f20:	d011      	beq.n	1f46 <main+0x48e>
    1f22:	d9e9      	bls.n	1ef8 <main+0x440>
    1f24:	2840      	cmp	r0, #64	; 0x40
    1f26:	d009      	beq.n	1f3c <main+0x484>
    1f28:	2880      	cmp	r0, #128	; 0x80
    1f2a:	d1de      	bne.n	1eea <main+0x432>
			freq=659;
    1f2c:	f240 2393 	movw	r3, #659	; 0x293
    1f30:	9302      	str	r3, [sp, #8]
    1f32:	e7ea      	b.n	1f0a <main+0x452>
			freq=554;
    1f34:	f240 232a 	movw	r3, #554	; 0x22a
    1f38:	9302      	str	r3, [sp, #8]
    1f3a:	e7e6      	b.n	1f0a <main+0x452>
			freq=622;
    1f3c:	9602      	str	r6, [sp, #8]
    1f3e:	e7e4      	b.n	1f0a <main+0x452>
				basic();
    1f40:	f7fe f99a 	bl	278 <basic>
    1f44:	e790      	b.n	1e68 <main+0x3b0>
		tone(freq,30);
    1f46:	211e      	movs	r1, #30
    1f48:	f240 204b 	movw	r0, #587	; 0x24b
    1f4c:	f000 fc66 	bl	281c <tone>
	noise(30);
    1f50:	201e      	movs	r0, #30
    1f52:	f000 fc9d 	bl	2890 <noise>
	while(sound_timer);
    1f56:	4a07      	ldr	r2, [pc, #28]	; (1f74 <main+0x4bc>)
    1f58:	8813      	ldrh	r3, [r2, #0]
    1f5a:	b29b      	uxth	r3, r3
    1f5c:	2b00      	cmp	r3, #0
    1f5e:	d1fb      	bne.n	1f58 <main+0x4a0>
    1f60:	e782      	b.n	1e68 <main+0x3b0>
			freq=440;
    1f62:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    1f66:	9302      	str	r3, [sp, #8]
    1f68:	e7cf      	b.n	1f0a <main+0x452>
			freq=493;
    1f6a:	9702      	str	r7, [sp, #8]
    1f6c:	e7cd      	b.n	1f0a <main+0x452>
    1f6e:	bf00      	nop
    1f70:	00003d4c 	.word	0x00003d4c
    1f74:	20004e24 	.word	0x20004e24

00001f78 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f78:	283b      	cmp	r0, #59	; 0x3b
    1f7a:	dc0d      	bgt.n	1f98 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1f7c:	1143      	asrs	r3, r0, #5
    1f7e:	009b      	lsls	r3, r3, #2
    1f80:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1f84:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1f88:	6819      	ldr	r1, [r3, #0]
    1f8a:	f000 001f 	and.w	r0, r0, #31
    1f8e:	2201      	movs	r2, #1
    1f90:	fa02 f000 	lsl.w	r0, r2, r0
    1f94:	4308      	orrs	r0, r1
    1f96:	6018      	str	r0, [r3, #0]
    1f98:	4770      	bx	lr

00001f9a <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f9a:	283b      	cmp	r0, #59	; 0x3b
    1f9c:	dc08      	bgt.n	1fb0 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1f9e:	1142      	asrs	r2, r0, #5
    1fa0:	f000 001f 	and.w	r0, r0, #31
    1fa4:	2301      	movs	r3, #1
    1fa6:	fa03 f000 	lsl.w	r0, r3, r0
    1faa:	4b02      	ldr	r3, [pc, #8]	; (1fb4 <disable_interrupt+0x1a>)
    1fac:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1fb0:	4770      	bx	lr
    1fb2:	bf00      	nop
    1fb4:	e000e180 	.word	0xe000e180

00001fb8 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1fb8:	283b      	cmp	r0, #59	; 0x3b
    1fba:	dc09      	bgt.n	1fd0 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1fbc:	1142      	asrs	r2, r0, #5
    1fbe:	4b05      	ldr	r3, [pc, #20]	; (1fd4 <get_pending+0x1c>)
    1fc0:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1fc4:	f000 031f 	and.w	r3, r0, #31
    1fc8:	2001      	movs	r0, #1
    1fca:	4098      	lsls	r0, r3
    1fcc:	4010      	ands	r0, r2
    1fce:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1fd0:	2000      	movs	r0, #0
}
    1fd2:	4770      	bx	lr
    1fd4:	e000e280 	.word	0xe000e280

00001fd8 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1fd8:	283b      	cmp	r0, #59	; 0x3b
    1fda:	dc0c      	bgt.n	1ff6 <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1fdc:	1143      	asrs	r3, r0, #5
    1fde:	009b      	lsls	r3, r3, #2
    1fe0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1fe4:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1fe8:	681a      	ldr	r2, [r3, #0]
    1fea:	f000 031f 	and.w	r3, r0, #31
    1fee:	2001      	movs	r0, #1
    1ff0:	4098      	lsls	r0, r3
    1ff2:	4010      	ands	r0, r2
    1ff4:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1ff6:	2000      	movs	r0, #0
}
    1ff8:	4770      	bx	lr

00001ffa <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1ffa:	283b      	cmp	r0, #59	; 0x3b
    1ffc:	dc0d      	bgt.n	201a <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1ffe:	1143      	asrs	r3, r0, #5
    2000:	009b      	lsls	r3, r3, #2
    2002:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2006:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    200a:	6819      	ldr	r1, [r3, #0]
    200c:	f000 001f 	and.w	r0, r0, #31
    2010:	2201      	movs	r2, #1
    2012:	fa02 f000 	lsl.w	r0, r2, r0
    2016:	4308      	orrs	r0, r1
    2018:	6018      	str	r0, [r3, #0]
    201a:	4770      	bx	lr

0000201c <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    201c:	283b      	cmp	r0, #59	; 0x3b
    201e:	dc08      	bgt.n	2032 <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    2020:	1142      	asrs	r2, r0, #5
    2022:	f000 001f 	and.w	r0, r0, #31
    2026:	2301      	movs	r3, #1
    2028:	fa03 f000 	lsl.w	r0, r3, r0
    202c:	4b01      	ldr	r3, [pc, #4]	; (2034 <clear_pending+0x18>)
    202e:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    2032:	4770      	bx	lr
    2034:	e000e280 	.word	0xe000e280

00002038 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    2038:	283b      	cmp	r0, #59	; 0x3b
    203a:	d90c      	bls.n	2056 <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    203c:	f100 030f 	add.w	r3, r0, #15
    2040:	2b0e      	cmp	r3, #14
    2042:	d807      	bhi.n	2054 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    2044:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    2048:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    204c:	30fc      	adds	r0, #252	; 0xfc
    204e:	0109      	lsls	r1, r1, #4
    2050:	4b04      	ldr	r3, [pc, #16]	; (2064 <set_int_priority+0x2c>)
    2052:	54c1      	strb	r1, [r0, r3]
    2054:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    2056:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    205a:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    205e:	0109      	lsls	r1, r1, #4
    2060:	7001      	strb	r1, [r0, #0]
    2062:	4770      	bx	lr
    2064:	e000ed18 	.word	0xe000ed18

00002068 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    2068:	f010 0f03 	tst.w	r0, #3
    206c:	d113      	bne.n	2096 <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    206e:	4b0c      	ldr	r3, [pc, #48]	; (20a0 <leap_year+0x38>)
    2070:	fba3 2300 	umull	r2, r3, r3, r0
    2074:	095b      	lsrs	r3, r3, #5
    2076:	2264      	movs	r2, #100	; 0x64
    2078:	fb02 0313 	mls	r3, r2, r3, r0
    207c:	b96b      	cbnz	r3, 209a <leap_year+0x32>
    207e:	4b08      	ldr	r3, [pc, #32]	; (20a0 <leap_year+0x38>)
    2080:	fba3 2300 	umull	r2, r3, r3, r0
    2084:	09db      	lsrs	r3, r3, #7
    2086:	f44f 72c8 	mov.w	r2, #400	; 0x190
    208a:	fb02 0013 	mls	r0, r2, r3, r0
    208e:	fab0 f080 	clz	r0, r0
    2092:	0940      	lsrs	r0, r0, #5
    2094:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    2096:	2000      	movs	r0, #0
    2098:	4770      	bx	lr
		return 1;
    209a:	2001      	movs	r0, #1
}
    209c:	4770      	bx	lr
    209e:	bf00      	nop
    20a0:	51eb851f 	.word	0x51eb851f

000020a4 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    20a4:	4b07      	ldr	r3, [pc, #28]	; (20c4 <sec_per_month+0x20>)
    20a6:	5c5a      	ldrb	r2, [r3, r1]
    20a8:	4b07      	ldr	r3, [pc, #28]	; (20c8 <sec_per_month+0x24>)
    20aa:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    20ae:	2902      	cmp	r1, #2
    20b0:	d001      	beq.n	20b6 <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    20b2:	4618      	mov	r0, r3
    20b4:	4770      	bx	lr
	if (month==2 && leap){
    20b6:	2800      	cmp	r0, #0
    20b8:	d0fb      	beq.n	20b2 <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    20ba:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    20be:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    20c2:	e7f6      	b.n	20b2 <sec_per_month+0xe>
    20c4:	00003b30 	.word	0x00003b30
    20c8:	00015180 	.word	0x00015180

000020cc <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    20cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    20d0:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    20d2:	4b37      	ldr	r3, [pc, #220]	; (21b0 <get_date_time+0xe4>)
    20d4:	699a      	ldr	r2, [r3, #24]
    20d6:	69dc      	ldr	r4, [r3, #28]
    20d8:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    20dc:	f240 70b2 	movw	r0, #1970	; 0x7b2
    20e0:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    20e2:	f7ff ffc1 	bl	2068 <leap_year>
    20e6:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20e8:	4d32      	ldr	r5, [pc, #200]	; (21b4 <get_date_time+0xe8>)
    20ea:	4f33      	ldr	r7, [pc, #204]	; (21b8 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    20ec:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 21cc <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20f0:	e00e      	b.n	2110 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    20f2:	4444      	add	r4, r8
    20f4:	e005      	b.n	2102 <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20f6:	42ac      	cmp	r4, r5
    20f8:	d90f      	bls.n	211a <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    20fa:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    20fe:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    2102:	8930      	ldrh	r0, [r6, #8]
    2104:	3001      	adds	r0, #1
    2106:	b280      	uxth	r0, r0
    2108:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    210a:	f7ff ffad 	bl	2068 <leap_year>
    210e:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2110:	f1b9 0f00 	cmp.w	r9, #0
    2114:	d1ef      	bne.n	20f6 <get_date_time+0x2a>
    2116:	42bc      	cmp	r4, r7
    2118:	d8eb      	bhi.n	20f2 <get_date_time+0x26>
	}//while
	dt->month=1;
    211a:	8873      	ldrh	r3, [r6, #2]
    211c:	2201      	movs	r2, #1
    211e:	f362 1389 	bfi	r3, r2, #6, #4
    2122:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    2124:	f362 0345 	bfi	r3, r2, #1, #5
    2128:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    212a:	6833      	ldr	r3, [r6, #0]
    212c:	f36f 3310 	bfc	r3, #12, #5
    2130:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    2132:	f36f 138b 	bfc	r3, #6, #6
    2136:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    2138:	f36f 0305 	bfc	r3, #0, #6
    213c:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    213e:	e005      	b.n	214c <get_date_time+0x80>
		dt->month++;
    2140:	3501      	adds	r5, #1
    2142:	8873      	ldrh	r3, [r6, #2]
    2144:	f365 1389 	bfi	r3, r5, #6, #4
    2148:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    214a:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    214c:	8875      	ldrh	r5, [r6, #2]
    214e:	f3c5 1583 	ubfx	r5, r5, #6, #4
    2152:	4629      	mov	r1, r5
    2154:	4648      	mov	r0, r9
    2156:	f7ff ffa5 	bl	20a4 <sec_per_month>
    215a:	4284      	cmp	r4, r0
    215c:	d8f0      	bhi.n	2140 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    215e:	4a17      	ldr	r2, [pc, #92]	; (21bc <get_date_time+0xf0>)
    2160:	fba2 3204 	umull	r3, r2, r2, r4
    2164:	0c12      	lsrs	r2, r2, #16
    2166:	1c51      	adds	r1, r2, #1
    2168:	78b3      	ldrb	r3, [r6, #2]
    216a:	f361 0345 	bfi	r3, r1, #1, #5
    216e:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    2170:	4b13      	ldr	r3, [pc, #76]	; (21c0 <get_date_time+0xf4>)
    2172:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    2176:	4c13      	ldr	r4, [pc, #76]	; (21c4 <get_date_time+0xf8>)
    2178:	fba4 3402 	umull	r3, r4, r4, r2
    217c:	0ae4      	lsrs	r4, r4, #11
    217e:	6833      	ldr	r3, [r6, #0]
    2180:	f364 3310 	bfi	r3, r4, #12, #5
    2184:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    2186:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    218a:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    218e:	4a0e      	ldr	r2, [pc, #56]	; (21c8 <get_date_time+0xfc>)
    2190:	fba2 1204 	umull	r1, r2, r2, r4
    2194:	0952      	lsrs	r2, r2, #5
    2196:	f362 138b 	bfi	r3, r2, #6, #6
    219a:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    219c:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    21a0:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    21a4:	f364 0305 	bfi	r3, r4, #0, #6
    21a8:	7033      	strb	r3, [r6, #0]
    21aa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    21ae:	bf00      	nop
    21b0:	40002800 	.word	0x40002800
    21b4:	01e284ff 	.word	0x01e284ff
    21b8:	01e1337f 	.word	0x01e1337f
    21bc:	c22e4507 	.word	0xc22e4507
    21c0:	00015180 	.word	0x00015180
    21c4:	91a2b3c5 	.word	0x91a2b3c5
    21c8:	88888889 	.word	0x88888889
    21cc:	fe1ecc80 	.word	0xfe1ecc80

000021d0 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    21d0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    21d4:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    21d6:	8903      	ldrh	r3, [r0, #8]
    21d8:	f240 72b1 	movw	r2, #1969	; 0x7b1
    21dc:	4293      	cmp	r3, r2
    21de:	d857      	bhi.n	2290 <set_date_time+0xc0>
    21e0:	f240 70b2 	movw	r0, #1970	; 0x7b2
    21e4:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    21e8:	f7ff ff3e 	bl	2068 <leap_year>
    21ec:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    21ee:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    21f0:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    21f4:	f3c6 1683 	ubfx	r6, r6, #6, #4
    21f8:	2e01      	cmp	r6, #1
    21fa:	d908      	bls.n	220e <set_date_time+0x3e>
    21fc:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    21fe:	4629      	mov	r1, r5
    2200:	4638      	mov	r0, r7
    2202:	f7ff ff4f 	bl	20a4 <sec_per_month>
    2206:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    2208:	3501      	adds	r5, #1
    220a:	42b5      	cmp	r5, r6
    220c:	d1f7      	bne.n	21fe <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    220e:	f8d8 2000 	ldr.w	r2, [r8]
    2212:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    2216:	f8b8 2000 	ldrh.w	r2, [r8]
    221a:	f3c2 1285 	ubfx	r2, r2, #6, #6
    221e:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2222:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    2224:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2228:	fb01 2203 	mla	r2, r1, r3, r2
    222c:	f898 3000 	ldrb.w	r3, [r8]
    2230:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2234:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    2236:	f898 3002 	ldrb.w	r3, [r8, #2]
    223a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    223e:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2240:	4928      	ldr	r1, [pc, #160]	; (22e4 <set_date_time+0x114>)
    2242:	fb01 2303 	mla	r3, r1, r3, r2
    2246:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2248:	4a27      	ldr	r2, [pc, #156]	; (22e8 <set_date_time+0x118>)
    224a:	69d3      	ldr	r3, [r2, #28]
    224c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2250:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2252:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    2256:	6813      	ldr	r3, [r2, #0]
    2258:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    225c:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    225e:	4b23      	ldr	r3, [pc, #140]	; (22ec <set_date_time+0x11c>)
    2260:	685a      	ldr	r2, [r3, #4]
    2262:	f042 0210 	orr.w	r2, r2, #16
    2266:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    2268:	0c22      	lsrs	r2, r4, #16
    226a:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    226c:	b2a4      	uxth	r4, r4
    226e:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2270:	685a      	ldr	r2, [r3, #4]
    2272:	f022 0210 	bic.w	r2, r2, #16
    2276:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    2278:	461a      	mov	r2, r3
    227a:	6853      	ldr	r3, [r2, #4]
    227c:	f013 0f20 	tst.w	r3, #32
    2280:	d0fb      	beq.n	227a <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2282:	4a1b      	ldr	r2, [pc, #108]	; (22f0 <set_date_time+0x120>)
    2284:	6813      	ldr	r3, [r2, #0]
    2286:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    228a:	6013      	str	r3, [r2, #0]
    228c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    2290:	f640 023a 	movw	r2, #2106	; 0x83a
    2294:	4293      	cmp	r3, r2
    2296:	d90c      	bls.n	22b2 <set_date_time+0xe2>
    2298:	4616      	mov	r6, r2
    229a:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    229e:	4610      	mov	r0, r2
    22a0:	f7ff fee2 	bl	2068 <leap_year>
    22a4:	4607      	mov	r7, r0
    22a6:	2400      	movs	r4, #0
    22a8:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    22ac:	f8df 9044 	ldr.w	r9, [pc, #68]	; 22f4 <set_date_time+0x124>
    22b0:	e00e      	b.n	22d0 <set_date_time+0x100>
	leap=leap_year(dt->year);
    22b2:	8906      	ldrh	r6, [r0, #8]
    22b4:	4630      	mov	r0, r6
    22b6:	f7ff fed7 	bl	2068 <leap_year>
    22ba:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    22bc:	f240 73b2 	movw	r3, #1970	; 0x7b2
    22c0:	429e      	cmp	r6, r3
    22c2:	d8f0      	bhi.n	22a6 <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    22c4:	2400      	movs	r4, #0
    22c6:	e793      	b.n	21f0 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    22c8:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    22ca:	3501      	adds	r5, #1
    22cc:	42b5      	cmp	r5, r6
    22ce:	d28f      	bcs.n	21f0 <set_date_time+0x20>
		if (leap_year(i)){
    22d0:	4628      	mov	r0, r5
    22d2:	f7ff fec9 	bl	2068 <leap_year>
    22d6:	2800      	cmp	r0, #0
    22d8:	d0f6      	beq.n	22c8 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    22da:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    22de:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    22e2:	e7f2      	b.n	22ca <set_date_time+0xfa>
    22e4:	00015180 	.word	0x00015180
    22e8:	40021000 	.word	0x40021000
    22ec:	40002800 	.word	0x40002800
    22f0:	40007000 	.word	0x40007000
    22f4:	01e13380 	.word	0x01e13380

000022f8 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    22f8:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    22fa:	4b35      	ldr	r3, [pc, #212]	; (23d0 <rtc_init+0xd8>)
    22fc:	685a      	ldr	r2, [r3, #4]
    22fe:	f64a 2355 	movw	r3, #43605	; 0xaa55
    2302:	429a      	cmp	r2, r3
    2304:	d05c      	beq.n	23c0 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2306:	4b33      	ldr	r3, [pc, #204]	; (23d4 <rtc_init+0xdc>)
    2308:	69da      	ldr	r2, [r3, #28]
    230a:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    230e:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2310:	4c31      	ldr	r4, [pc, #196]	; (23d8 <rtc_init+0xe0>)
    2312:	6822      	ldr	r2, [r4, #0]
    2314:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2318:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    231a:	6a1a      	ldr	r2, [r3, #32]
    231c:	f042 0201 	orr.w	r2, r2, #1
    2320:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    2322:	461a      	mov	r2, r3
    2324:	6a13      	ldr	r3, [r2, #32]
    2326:	f013 0f02 	tst.w	r3, #2
    232a:	d0fb      	beq.n	2324 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    232c:	4a29      	ldr	r2, [pc, #164]	; (23d4 <rtc_init+0xdc>)
    232e:	6a13      	ldr	r3, [r2, #32]
    2330:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2334:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    2336:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    233a:	6853      	ldr	r3, [r2, #4]
    233c:	f013 0f08 	tst.w	r3, #8
    2340:	d0fb      	beq.n	233a <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    2342:	4a26      	ldr	r2, [pc, #152]	; (23dc <rtc_init+0xe4>)
    2344:	6853      	ldr	r3, [r2, #4]
    2346:	f013 0f20 	tst.w	r3, #32
    234a:	d0fb      	beq.n	2344 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    234c:	4a23      	ldr	r2, [pc, #140]	; (23dc <rtc_init+0xe4>)
    234e:	6853      	ldr	r3, [r2, #4]
    2350:	f043 0310 	orr.w	r3, r3, #16
    2354:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    2356:	6853      	ldr	r3, [r2, #4]
    2358:	f013 0f20 	tst.w	r3, #32
    235c:	d0fb      	beq.n	2356 <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    235e:	4a1f      	ldr	r2, [pc, #124]	; (23dc <rtc_init+0xe4>)
    2360:	6813      	ldr	r3, [r2, #0]
    2362:	4319      	orrs	r1, r3
    2364:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    2366:	6853      	ldr	r3, [r2, #4]
    2368:	f013 0f20 	tst.w	r3, #32
    236c:	d0fb      	beq.n	2366 <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    236e:	03c2      	lsls	r2, r0, #15
    2370:	481b      	ldr	r0, [pc, #108]	; (23e0 <rtc_init+0xe8>)
    2372:	fba0 3202 	umull	r3, r2, r0, r2
    2376:	0992      	lsrs	r2, r2, #6
    2378:	3a01      	subs	r2, #1
    237a:	b291      	uxth	r1, r2
    237c:	4b17      	ldr	r3, [pc, #92]	; (23dc <rtc_init+0xe4>)
    237e:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    2380:	4619      	mov	r1, r3
    2382:	684b      	ldr	r3, [r1, #4]
    2384:	f013 0f20 	tst.w	r3, #32
    2388:	d0fb      	beq.n	2382 <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    238a:	f3c2 4203 	ubfx	r2, r2, #16, #4
    238e:	4b13      	ldr	r3, [pc, #76]	; (23dc <rtc_init+0xe4>)
    2390:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    2392:	461a      	mov	r2, r3
    2394:	6853      	ldr	r3, [r2, #4]
    2396:	f013 0f20 	tst.w	r3, #32
    239a:	d0fb      	beq.n	2394 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    239c:	f64a 2255 	movw	r2, #43605	; 0xaa55
    23a0:	4b0b      	ldr	r3, [pc, #44]	; (23d0 <rtc_init+0xd8>)
    23a2:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    23a4:	4a0d      	ldr	r2, [pc, #52]	; (23dc <rtc_init+0xe4>)
    23a6:	6853      	ldr	r3, [r2, #4]
    23a8:	f023 0310 	bic.w	r3, r3, #16
    23ac:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    23ae:	6853      	ldr	r3, [r2, #4]
    23b0:	f013 0f20 	tst.w	r3, #32
    23b4:	d0fb      	beq.n	23ae <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    23b6:	4a08      	ldr	r2, [pc, #32]	; (23d8 <rtc_init+0xe0>)
    23b8:	6813      	ldr	r3, [r2, #0]
    23ba:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23be:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    23c0:	210f      	movs	r1, #15
    23c2:	2003      	movs	r0, #3
    23c4:	f7ff fe38 	bl	2038 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    23c8:	2003      	movs	r0, #3
    23ca:	f7ff fdd5 	bl	1f78 <enable_interrupt>
    23ce:	bd10      	pop	{r4, pc}
    23d0:	40006c00 	.word	0x40006c00
    23d4:	40021000 	.word	0x40021000
    23d8:	40007000 	.word	0x40007000
    23dc:	40002800 	.word	0x40002800
    23e0:	10624dd3 	.word	0x10624dd3

000023e4 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    23e4:	4b06      	ldr	r3, [pc, #24]	; (2400 <reset_backup_domain+0x1c>)
    23e6:	69da      	ldr	r2, [r3, #28]
    23e8:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    23ec:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    23ee:	6a1a      	ldr	r2, [r3, #32]
    23f0:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    23f4:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    23f6:	6a1a      	ldr	r2, [r3, #32]
    23f8:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    23fc:	621a      	str	r2, [r3, #32]
    23fe:	4770      	bx	lr
    2400:	40021000 	.word	0x40021000

00002404 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2404:	4a27      	ldr	r2, [pc, #156]	; (24a4 <rtc_clock_trim+0xa0>)
    2406:	69d3      	ldr	r3, [r2, #28]
    2408:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    240c:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    240e:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2412:	6853      	ldr	r3, [r2, #4]
    2414:	f013 0f08 	tst.w	r3, #8
    2418:	d0fb      	beq.n	2412 <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    241a:	4a23      	ldr	r2, [pc, #140]	; (24a8 <rtc_clock_trim+0xa4>)
    241c:	6813      	ldr	r3, [r2, #0]
    241e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2422:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2424:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    2428:	6853      	ldr	r3, [r2, #4]
    242a:	f043 0310 	orr.w	r3, r3, #16
    242e:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2430:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    2434:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    2436:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    243a:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    243c:	b9b8      	cbnz	r0, 246e <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    243e:	2200      	movs	r2, #0
    2440:	4b1a      	ldr	r3, [pc, #104]	; (24ac <rtc_clock_trim+0xa8>)
    2442:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    2444:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    2448:	f647 71ff 	movw	r1, #32767	; 0x7fff
    244c:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    244e:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2450:	4a17      	ldr	r2, [pc, #92]	; (24b0 <rtc_clock_trim+0xac>)
    2452:	6853      	ldr	r3, [r2, #4]
    2454:	f023 0310 	bic.w	r3, r3, #16
    2458:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    245a:	6853      	ldr	r3, [r2, #4]
    245c:	f013 0f20 	tst.w	r3, #32
    2460:	d0fb      	beq.n	245a <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2462:	4a11      	ldr	r2, [pc, #68]	; (24a8 <rtc_clock_trim+0xa4>)
    2464:	6813      	ldr	r3, [r2, #0]
    2466:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    246a:	6013      	str	r3, [r2, #0]
    246c:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    246e:	2800      	cmp	r0, #0
    2470:	dd06      	ble.n	2480 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    2472:	4b0e      	ldr	r3, [pc, #56]	; (24ac <rtc_clock_trim+0xa8>)
    2474:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    2476:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    247a:	4310      	orrs	r0, r2
    247c:	62d8      	str	r0, [r3, #44]	; 0x2c
    247e:	e7e7      	b.n	2450 <rtc_clock_trim+0x4c>
		trim=-trim;
    2480:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    2482:	2100      	movs	r1, #0
    2484:	4b09      	ldr	r3, [pc, #36]	; (24ac <rtc_clock_trim+0xa8>)
    2486:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    2488:	f64f 73ff 	movw	r3, #65535	; 0xffff
    248c:	287f      	cmp	r0, #127	; 0x7f
    248e:	bfd4      	ite	le
    2490:	1a18      	suble	r0, r3, r0
    2492:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    2496:	f3c0 000e 	ubfx	r0, r0, #0, #15
    249a:	4a05      	ldr	r2, [pc, #20]	; (24b0 <rtc_clock_trim+0xac>)
    249c:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    249e:	6091      	str	r1, [r2, #8]
    24a0:	e7d6      	b.n	2450 <rtc_clock_trim+0x4c>
    24a2:	bf00      	nop
    24a4:	40021000 	.word	0x40021000
    24a8:	40007000 	.word	0x40007000
    24ac:	40006c00 	.word	0x40006c00
    24b0:	40002800 	.word	0x40002800

000024b4 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    24b4:	4770      	bx	lr

000024b6 <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    24b6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    24ba:	4607      	mov	r7, r0
    24bc:	4688      	mov	r8, r1
    24be:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    24c0:	2400      	movs	r4, #0
	i=0;
    24c2:	4626      	mov	r6, r4
	while (digit(date[i])){
    24c4:	e008      	b.n	24d8 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    24c6:	3601      	adds	r6, #1
    24c8:	3501      	adds	r5, #1
    24ca:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    24ce:	f899 3000 	ldrb.w	r3, [r9]
    24d2:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    24d6:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    24d8:	46a9      	mov	r9, r5
    24da:	7828      	ldrb	r0, [r5, #0]
    24dc:	f7fe fe9d 	bl	121a <digit>
    24e0:	4682      	mov	sl, r0
    24e2:	2800      	cmp	r0, #0
    24e4:	d1ef      	bne.n	24c6 <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    24e6:	2e03      	cmp	r6, #3
    24e8:	dd02      	ble.n	24f0 <str_to_date+0x3a>
    24ea:	782b      	ldrb	r3, [r5, #0]
    24ec:	2b2f      	cmp	r3, #47	; 0x2f
    24ee:	d002      	beq.n	24f6 <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    24f0:	4650      	mov	r0, sl
    24f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    24f6:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    24fa:	3601      	adds	r6, #1
    24fc:	19bd      	adds	r5, r7, r6
	n=0;
    24fe:	4604      	mov	r4, r0
	while (digit(date[i])){
    2500:	e008      	b.n	2514 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    2502:	3601      	adds	r6, #1
    2504:	3501      	adds	r5, #1
    2506:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    250a:	f899 3000 	ldrb.w	r3, [r9]
    250e:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    2512:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2514:	46a9      	mov	r9, r5
    2516:	7828      	ldrb	r0, [r5, #0]
    2518:	f7fe fe7f 	bl	121a <digit>
    251c:	4682      	mov	sl, r0
    251e:	2800      	cmp	r0, #0
    2520:	d1ef      	bne.n	2502 <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    2522:	2e06      	cmp	r6, #6
    2524:	dde4      	ble.n	24f0 <str_to_date+0x3a>
    2526:	782b      	ldrb	r3, [r5, #0]
    2528:	2b2f      	cmp	r3, #47	; 0x2f
    252a:	d1e1      	bne.n	24f0 <str_to_date+0x3a>
	dt->month=n;
    252c:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2530:	f364 1389 	bfi	r3, r4, #6, #4
    2534:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2538:	1c74      	adds	r4, r6, #1
    253a:	443e      	add	r6, r7
	while (digit(date[i])){
    253c:	e008      	b.n	2550 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    253e:	3401      	adds	r4, #1
    2540:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2544:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2548:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    254c:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2550:	7870      	ldrb	r0, [r6, #1]
    2552:	f7fe fe62 	bl	121a <digit>
    2556:	2800      	cmp	r0, #0
    2558:	d1f1      	bne.n	253e <str_to_date+0x88>
	if (i<10) return 0;
    255a:	2c09      	cmp	r4, #9
    255c:	dd08      	ble.n	2570 <str_to_date+0xba>
	dt->day=n;
    255e:	f898 3002 	ldrb.w	r3, [r8, #2]
    2562:	f36a 0345 	bfi	r3, sl, #1, #5
    2566:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    256a:	f04f 0a01 	mov.w	sl, #1
    256e:	e7bf      	b.n	24f0 <str_to_date+0x3a>
	if (i<10) return 0;
    2570:	4682      	mov	sl, r0
    2572:	e7bd      	b.n	24f0 <str_to_date+0x3a>

00002574 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    2574:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2578:	4607      	mov	r7, r0
    257a:	4688      	mov	r8, r1
    257c:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    257e:	2400      	movs	r4, #0
	i=0;
    2580:	4626      	mov	r6, r4
	while (digit(time[i])){
    2582:	e00a      	b.n	259a <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    2584:	3601      	adds	r6, #1
    2586:	3501      	adds	r5, #1
    2588:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    258c:	0064      	lsls	r4, r4, #1
    258e:	3c30      	subs	r4, #48	; 0x30
    2590:	f899 3000 	ldrb.w	r3, [r9]
    2594:	441c      	add	r4, r3
    2596:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    259a:	46a9      	mov	r9, r5
    259c:	7828      	ldrb	r0, [r5, #0]
    259e:	f7fe fe3c 	bl	121a <digit>
    25a2:	4603      	mov	r3, r0
    25a4:	2800      	cmp	r0, #0
    25a6:	d1ed      	bne.n	2584 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    25a8:	2c17      	cmp	r4, #23
    25aa:	d802      	bhi.n	25b2 <str_to_time+0x3e>
    25ac:	782a      	ldrb	r2, [r5, #0]
    25ae:	2a3a      	cmp	r2, #58	; 0x3a
    25b0:	d002      	beq.n	25b8 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    25b2:	4618      	mov	r0, r3
    25b4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    25b8:	f8d8 3000 	ldr.w	r3, [r8]
    25bc:	f364 3310 	bfi	r3, r4, #12, #5
    25c0:	f8c8 3000 	str.w	r3, [r8]
	i++;
    25c4:	3601      	adds	r6, #1
    25c6:	19bd      	adds	r5, r7, r6
	n=0;
    25c8:	2400      	movs	r4, #0
	while (digit(time[i])){
    25ca:	e00a      	b.n	25e2 <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    25cc:	3601      	adds	r6, #1
    25ce:	3501      	adds	r5, #1
    25d0:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25d4:	0064      	lsls	r4, r4, #1
    25d6:	3c30      	subs	r4, #48	; 0x30
    25d8:	f899 3000 	ldrb.w	r3, [r9]
    25dc:	441c      	add	r4, r3
    25de:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    25e2:	46a9      	mov	r9, r5
    25e4:	7828      	ldrb	r0, [r5, #0]
    25e6:	f7fe fe18 	bl	121a <digit>
    25ea:	4603      	mov	r3, r0
    25ec:	2800      	cmp	r0, #0
    25ee:	d1ed      	bne.n	25cc <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    25f0:	2c3b      	cmp	r4, #59	; 0x3b
    25f2:	d8de      	bhi.n	25b2 <str_to_time+0x3e>
    25f4:	782a      	ldrb	r2, [r5, #0]
    25f6:	2a3a      	cmp	r2, #58	; 0x3a
    25f8:	d1db      	bne.n	25b2 <str_to_time+0x3e>
	dt->minute=n;
    25fa:	f8b8 3000 	ldrh.w	r3, [r8]
    25fe:	f364 138b 	bfi	r3, r4, #6, #6
    2602:	f8a8 3000 	strh.w	r3, [r8]
    2606:	443e      	add	r6, r7
	n=0;
    2608:	2400      	movs	r4, #0
	while (digit(time[i])){
    260a:	e008      	b.n	261e <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    260c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2610:	0064      	lsls	r4, r4, #1
    2612:	3c30      	subs	r4, #48	; 0x30
    2614:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2618:	441c      	add	r4, r3
    261a:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    261e:	7870      	ldrb	r0, [r6, #1]
    2620:	f7fe fdfb 	bl	121a <digit>
    2624:	4603      	mov	r3, r0
    2626:	2800      	cmp	r0, #0
    2628:	d1f0      	bne.n	260c <str_to_time+0x98>
	if (n>59) return 0;
    262a:	2c3b      	cmp	r4, #59	; 0x3b
    262c:	d8c1      	bhi.n	25b2 <str_to_time+0x3e>
	dt->second=n;
    262e:	f898 3000 	ldrb.w	r3, [r8]
    2632:	f364 0305 	bfi	r3, r4, #0, #6
    2636:	f888 3000 	strb.w	r3, [r8]
	return 1;
    263a:	2301      	movs	r3, #1
    263c:	e7b9      	b.n	25b2 <str_to_time+0x3e>

0000263e <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    263e:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2640:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    2642:	4b23      	ldr	r3, [pc, #140]	; (26d0 <date_str+0x92>)
    2644:	fba3 4302 	umull	r4, r3, r3, r2
    2648:	099b      	lsrs	r3, r3, #6
    264a:	f103 0430 	add.w	r4, r3, #48	; 0x30
    264e:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2650:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2654:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2658:	4b1e      	ldr	r3, [pc, #120]	; (26d4 <date_str+0x96>)
    265a:	fba3 4302 	umull	r4, r3, r3, r2
    265e:	095b      	lsrs	r3, r3, #5
    2660:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2664:	704c      	strb	r4, [r1, #1]
	n%=100;
    2666:	2464      	movs	r4, #100	; 0x64
    2668:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    266c:	4a1a      	ldr	r2, [pc, #104]	; (26d8 <date_str+0x9a>)
    266e:	fba2 5403 	umull	r5, r4, r2, r3
    2672:	08e4      	lsrs	r4, r4, #3
    2674:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2678:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    267a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    267e:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    2682:	3330      	adds	r3, #48	; 0x30
    2684:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    2686:	262f      	movs	r6, #47	; 0x2f
    2688:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    268a:	8843      	ldrh	r3, [r0, #2]
    268c:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    2690:	fba2 5403 	umull	r5, r4, r2, r3
    2694:	08e4      	lsrs	r4, r4, #3
    2696:	f104 0530 	add.w	r5, r4, #48	; 0x30
    269a:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    269c:	00a5      	lsls	r5, r4, #2
    269e:	442c      	add	r4, r5
    26a0:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    26a4:	3330      	adds	r3, #48	; 0x30
    26a6:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    26a8:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    26aa:	7880      	ldrb	r0, [r0, #2]
    26ac:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    26b0:	fba2 3200 	umull	r3, r2, r2, r0
    26b4:	08d3      	lsrs	r3, r2, #3
    26b6:	f103 0230 	add.w	r2, r3, #48	; 0x30
    26ba:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    26bc:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    26c0:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    26c4:	3330      	adds	r3, #48	; 0x30
    26c6:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    26c8:	2300      	movs	r3, #0
    26ca:	728b      	strb	r3, [r1, #10]

}
    26cc:	bc70      	pop	{r4, r5, r6}
    26ce:	4770      	bx	lr
    26d0:	10624dd3 	.word	0x10624dd3
    26d4:	51eb851f 	.word	0x51eb851f
    26d8:	cccccccd 	.word	0xcccccccd

000026dc <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    26dc:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    26de:	6802      	ldr	r2, [r0, #0]
    26e0:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    26e4:	4b18      	ldr	r3, [pc, #96]	; (2748 <time_str+0x6c>)
    26e6:	fba3 5402 	umull	r5, r4, r3, r2
    26ea:	08e4      	lsrs	r4, r4, #3
    26ec:	f104 0530 	add.w	r5, r4, #48	; 0x30
    26f0:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    26f2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26f6:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    26fa:	3230      	adds	r2, #48	; 0x30
    26fc:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    26fe:	253a      	movs	r5, #58	; 0x3a
    2700:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    2702:	8802      	ldrh	r2, [r0, #0]
    2704:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2708:	fba3 6402 	umull	r6, r4, r3, r2
    270c:	08e4      	lsrs	r4, r4, #3
    270e:	f104 0630 	add.w	r6, r4, #48	; 0x30
    2712:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    2714:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2718:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    271c:	3230      	adds	r2, #48	; 0x30
    271e:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2720:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    2722:	7802      	ldrb	r2, [r0, #0]
    2724:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    2728:	fba3 0302 	umull	r0, r3, r3, r2
    272c:	08db      	lsrs	r3, r3, #3
    272e:	f103 0030 	add.w	r0, r3, #48	; 0x30
    2732:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2734:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2738:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    273c:	3330      	adds	r3, #48	; 0x30
    273e:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2740:	2300      	movs	r3, #0
    2742:	720b      	strb	r3, [r1, #8]
}
    2744:	bc70      	pop	{r4, r5, r6}
    2746:	4770      	bx	lr
    2748:	cccccccd 	.word	0xcccccccd

0000274c <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    274c:	b500      	push	{lr}
    274e:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2750:	a801      	add	r0, sp, #4
    2752:	f7ff fcbb 	bl	20cc <get_date_time>
	t.fields.second=dt.second/2;
    2756:	f89d 3004 	ldrb.w	r3, [sp, #4]
    275a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    275e:	2000      	movs	r0, #0
    2760:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2764:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2768:	f3c3 1385 	ubfx	r3, r3, #6, #6
    276c:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2770:	9b01      	ldr	r3, [sp, #4]
    2772:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2776:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    277a:	f89d 3006 	ldrb.w	r3, [sp, #6]
    277e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2782:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    2786:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    278a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    278e:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    2792:	f89d 300c 	ldrb.w	r3, [sp, #12]
    2796:	3344      	adds	r3, #68	; 0x44
    2798:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    279c:	b005      	add	sp, #20
    279e:	f85d fb04 	ldr.w	pc, [sp], #4

000027a2 <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    27a2:	4b07      	ldr	r3, [pc, #28]	; (27c0 <RTC_handler+0x1e>)
    27a4:	685b      	ldr	r3, [r3, #4]
    27a6:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    27aa:	bf1c      	itt	ne
    27ac:	4b04      	ldrne	r3, [pc, #16]	; (27c0 <RTC_handler+0x1e>)
    27ae:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    27b0:	4b03      	ldr	r3, [pc, #12]	; (27c0 <RTC_handler+0x1e>)
    27b2:	685b      	ldr	r3, [r3, #4]
    27b4:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    27b8:	bf1c      	itt	ne
    27ba:	4b01      	ldrne	r3, [pc, #4]	; (27c0 <RTC_handler+0x1e>)
    27bc:	685b      	ldrne	r3, [r3, #4]
    27be:	4770      	bx	lr
    27c0:	40002800 	.word	0x40002800

000027c4 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    27c4:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    27c6:	4b12      	ldr	r3, [pc, #72]	; (2810 <sound_init+0x4c>)
    27c8:	685a      	ldr	r2, [r3, #4]
    27ca:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    27ce:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    27d0:	685a      	ldr	r2, [r3, #4]
    27d2:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    27d6:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    27d8:	220a      	movs	r2, #10
    27da:	4611      	mov	r1, r2
    27dc:	480d      	ldr	r0, [pc, #52]	; (2814 <sound_init+0x50>)
    27de:	f7fe fe47 	bl	1470 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    27e2:	4a0d      	ldr	r2, [pc, #52]	; (2818 <sound_init+0x54>)
    27e4:	69d3      	ldr	r3, [r2, #28]
    27e6:	f043 0301 	orr.w	r3, r3, #1
    27ea:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    27ec:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    27f0:	2278      	movs	r2, #120	; 0x78
    27f2:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    27f4:	f44f 7280 	mov.w	r2, #256	; 0x100
    27f8:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    27fa:	2209      	movs	r2, #9
    27fc:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    27fe:	2100      	movs	r1, #0
    2800:	201c      	movs	r0, #28
    2802:	f7ff fc19 	bl	2038 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    2806:	201c      	movs	r0, #28
    2808:	f7ff fbb6 	bl	1f78 <enable_interrupt>
    280c:	bd08      	pop	{r3, pc}
    280e:	bf00      	nop
    2810:	40010000 	.word	0x40010000
    2814:	40010c00 	.word	0x40010c00
    2818:	40021000 	.word	0x40021000

0000281c <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    281c:	4b07      	ldr	r3, [pc, #28]	; (283c <tone+0x20>)
    281e:	fbb3 f0f0 	udiv	r0, r3, r0
    2822:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2826:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    2828:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    282a:	0852      	lsrs	r2, r2, #1
    282c:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    282e:	681a      	ldr	r2, [r3, #0]
    2830:	f042 0201 	orr.w	r2, r2, #1
    2834:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2836:	4b02      	ldr	r3, [pc, #8]	; (2840 <tone+0x24>)
    2838:	8019      	strh	r1, [r3, #0]
    283a:	4770      	bx	lr
    283c:	006d3d32 	.word	0x006d3d32
    2840:	20004e24 	.word	0x20004e24

00002844 <beep>:
}

void beep(uint16_t duration){
    2844:	b508      	push	{r3, lr}
    tone(1000,duration);
    2846:	4601      	mov	r1, r0
    2848:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    284c:	f7ff ffe6 	bl	281c <tone>
    2850:	bd08      	pop	{r3, pc}

00002852 <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    2852:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2856:	681a      	ldr	r2, [r3, #0]
    2858:	f022 0201 	bic.w	r2, r2, #1
    285c:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    285e:	68da      	ldr	r2, [r3, #12]
    2860:	f022 0201 	bic.w	r2, r2, #1
    2864:	60da      	str	r2, [r3, #12]
    2866:	4770      	bx	lr

00002868 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    2868:	b510      	push	{r4, lr}
    286a:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    286c:	b289      	uxth	r1, r1
    286e:	4b06      	ldr	r3, [pc, #24]	; (2888 <key_tone+0x20>)
    2870:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    2874:	f7ff ffd2 	bl	281c <tone>
    if (wait_end) while (sound_timer);
    2878:	b124      	cbz	r4, 2884 <key_tone+0x1c>
    287a:	4a04      	ldr	r2, [pc, #16]	; (288c <key_tone+0x24>)
    287c:	8813      	ldrh	r3, [r2, #0]
    287e:	b29b      	uxth	r3, r3
    2880:	2b00      	cmp	r3, #0
    2882:	d1fb      	bne.n	287c <key_tone+0x14>
    2884:	bd10      	pop	{r4, pc}
    2886:	bf00      	nop
    2888:	00003b40 	.word	0x00003b40
    288c:	20004e24 	.word	0x20004e24

00002890 <noise>:
}

// produit un bruit 
void noise(int length){
    2890:	b510      	push	{r4, lr}
    2892:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    2894:	4b07      	ldr	r3, [pc, #28]	; (28b4 <noise+0x24>)
    2896:	6818      	ldr	r0, [r3, #0]
    2898:	f7fd fda6 	bl	3e8 <srand>
    tone(6000,length);
    289c:	b2a1      	uxth	r1, r4
    289e:	f241 7070 	movw	r0, #6000	; 0x1770
    28a2:	f7ff ffbb 	bl	281c <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    28a6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28aa:	68d3      	ldr	r3, [r2, #12]
    28ac:	f043 0301 	orr.w	r3, r3, #1
    28b0:	60d3      	str	r3, [r2, #12]
    28b2:	bd10      	pop	{r4, pc}
    28b4:	20004e20 	.word	0x20004e20

000028b8 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    28b8:	4668      	mov	r0, sp
    28ba:	f020 0107 	bic.w	r1, r0, #7
    28be:	468d      	mov	sp, r1
    28c0:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    28c2:	f7fd fd97 	bl	3f4 <rand>
    28c6:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    28ca:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28ce:	6a13      	ldr	r3, [r2, #32]
    28d0:	bf14      	ite	ne
    28d2:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    28d6:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    28da:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    28dc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28e0:	6913      	ldr	r3, [r2, #16]
    28e2:	f023 0301 	bic.w	r3, r3, #1
    28e6:	6113      	str	r3, [r2, #16]
}
    28e8:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    28ec:	4685      	mov	sp, r0
    28ee:	4770      	bx	lr

000028f0 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    28f0:	6803      	ldr	r3, [r0, #0]
    28f2:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    28f6:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    28f8:	6803      	ldr	r3, [r0, #0]
    28fa:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    28fe:	6001      	str	r1, [r0, #0]
    2900:	4770      	bx	lr

00002902 <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2902:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2904:	4a2f      	ldr	r2, [pc, #188]	; (29c4 <spi_config_port+0xc2>)
    2906:	6993      	ldr	r3, [r2, #24]
    2908:	f043 0301 	orr.w	r3, r3, #1
    290c:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    290e:	4b2e      	ldr	r3, [pc, #184]	; (29c8 <spi_config_port+0xc6>)
    2910:	4298      	cmp	r0, r3
    2912:	d01a      	beq.n	294a <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2914:	4a2b      	ldr	r2, [pc, #172]	; (29c4 <spi_config_port+0xc2>)
    2916:	6993      	ldr	r3, [r2, #24]
    2918:	f043 0308 	orr.w	r3, r3, #8
    291c:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    291e:	4c2b      	ldr	r4, [pc, #172]	; (29cc <spi_config_port+0xca>)
    2920:	2203      	movs	r2, #3
    2922:	2102      	movs	r1, #2
    2924:	4620      	mov	r0, r4
    2926:	f7fe fda3 	bl	1470 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    292a:	220b      	movs	r2, #11
    292c:	210d      	movs	r1, #13
    292e:	4620      	mov	r0, r4
    2930:	f7fe fd9e 	bl	1470 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2934:	2204      	movs	r2, #4
    2936:	210e      	movs	r1, #14
    2938:	4620      	mov	r0, r4
    293a:	f7fe fd99 	bl	1470 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    293e:	220b      	movs	r2, #11
    2940:	210f      	movs	r1, #15
    2942:	4620      	mov	r0, r4
    2944:	f7fe fd94 	bl	1470 <config_pin>
    2948:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    294a:	b9c9      	cbnz	r1, 2980 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    294c:	6993      	ldr	r3, [r2, #24]
    294e:	f043 0304 	orr.w	r3, r3, #4
    2952:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2954:	4c1e      	ldr	r4, [pc, #120]	; (29d0 <spi_config_port+0xce>)
    2956:	2203      	movs	r2, #3
    2958:	2104      	movs	r1, #4
    295a:	4620      	mov	r0, r4
    295c:	f7fe fd88 	bl	1470 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2960:	220b      	movs	r2, #11
    2962:	2105      	movs	r1, #5
    2964:	4620      	mov	r0, r4
    2966:	f7fe fd83 	bl	1470 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    296a:	2204      	movs	r2, #4
    296c:	2106      	movs	r1, #6
    296e:	4620      	mov	r0, r4
    2970:	f7fe fd7e 	bl	1470 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2974:	220b      	movs	r2, #11
    2976:	2107      	movs	r1, #7
    2978:	4620      	mov	r0, r4
    297a:	f7fe fd79 	bl	1470 <config_pin>
    297e:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2980:	4a10      	ldr	r2, [pc, #64]	; (29c4 <spi_config_port+0xc2>)
    2982:	6993      	ldr	r3, [r2, #24]
    2984:	f043 030d 	orr.w	r3, r3, #13
    2988:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    298a:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    298e:	6853      	ldr	r3, [r2, #4]
    2990:	f043 0301 	orr.w	r3, r3, #1
    2994:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2996:	2203      	movs	r2, #3
    2998:	210f      	movs	r1, #15
    299a:	480d      	ldr	r0, [pc, #52]	; (29d0 <spi_config_port+0xce>)
    299c:	f7fe fd68 	bl	1470 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    29a0:	4c0a      	ldr	r4, [pc, #40]	; (29cc <spi_config_port+0xca>)
    29a2:	220b      	movs	r2, #11
    29a4:	2103      	movs	r1, #3
    29a6:	4620      	mov	r0, r4
    29a8:	f7fe fd62 	bl	1470 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    29ac:	2204      	movs	r2, #4
    29ae:	4611      	mov	r1, r2
    29b0:	4620      	mov	r0, r4
    29b2:	f7fe fd5d 	bl	1470 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    29b6:	220b      	movs	r2, #11
    29b8:	2105      	movs	r1, #5
    29ba:	4620      	mov	r0, r4
    29bc:	f7fe fd58 	bl	1470 <config_pin>
    29c0:	bd10      	pop	{r4, pc}
    29c2:	bf00      	nop
    29c4:	40021000 	.word	0x40021000
    29c8:	40013000 	.word	0x40013000
    29cc:	40010c00 	.word	0x40010c00
    29d0:	40010800 	.word	0x40010800

000029d4 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    29d4:	b570      	push	{r4, r5, r6, lr}
    29d6:	4604      	mov	r4, r0
    29d8:	460d      	mov	r5, r1
    29da:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    29dc:	4619      	mov	r1, r3
    29de:	f7ff ff90 	bl	2902 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    29e2:	4b0c      	ldr	r3, [pc, #48]	; (2a14 <spi_init+0x40>)
    29e4:	429c      	cmp	r4, r3
    29e6:	d00e      	beq.n	2a06 <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    29e8:	4a0b      	ldr	r2, [pc, #44]	; (2a18 <spi_init+0x44>)
    29ea:	69d3      	ldr	r3, [r2, #28]
    29ec:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    29f0:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    29f2:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    29f4:	4629      	mov	r1, r5
    29f6:	4620      	mov	r0, r4
    29f8:	f7ff ff7a 	bl	28f0 <spi_baudrate>
	_spi_enable(channel);
    29fc:	6823      	ldr	r3, [r4, #0]
    29fe:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2a02:	6023      	str	r3, [r4, #0]
    2a04:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2a06:	4a04      	ldr	r2, [pc, #16]	; (2a18 <spi_init+0x44>)
    2a08:	6993      	ldr	r3, [r2, #24]
    2a0a:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2a0e:	6193      	str	r3, [r2, #24]
    2a10:	e7ef      	b.n	29f2 <spi_init+0x1e>
    2a12:	bf00      	nop
    2a14:	40013000 	.word	0x40013000
    2a18:	40021000 	.word	0x40021000

00002a1c <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2a1c:	6883      	ldr	r3, [r0, #8]
    2a1e:	f013 0f02 	tst.w	r3, #2
    2a22:	d0fb      	beq.n	2a1c <spi_send>
	channel->DR=b;
    2a24:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a26:	6883      	ldr	r3, [r0, #8]
    2a28:	f013 0f01 	tst.w	r3, #1
    2a2c:	d0fb      	beq.n	2a26 <spi_send+0xa>
	return (uint8_t)channel->DR;
    2a2e:	68c0      	ldr	r0, [r0, #12]
}
    2a30:	b2c0      	uxtb	r0, r0
    2a32:	4770      	bx	lr

00002a34 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2a34:	6883      	ldr	r3, [r0, #8]
    2a36:	f013 0f02 	tst.w	r3, #2
    2a3a:	d0fb      	beq.n	2a34 <spi_receive>
	channel->DR=255;
    2a3c:	23ff      	movs	r3, #255	; 0xff
    2a3e:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a40:	6883      	ldr	r3, [r0, #8]
    2a42:	f013 0f01 	tst.w	r3, #1
    2a46:	d0fb      	beq.n	2a40 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2a48:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2a4a:	b2c0      	uxtb	r0, r0
    2a4c:	4770      	bx	lr

00002a4e <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2a4e:	b14a      	cbz	r2, 2a64 <spi_send_block+0x16>
    2a50:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2a52:	f811 3b01 	ldrb.w	r3, [r1], #1
    2a56:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2a58:	6883      	ldr	r3, [r0, #8]
    2a5a:	f013 0f02 	tst.w	r3, #2
    2a5e:	d0fb      	beq.n	2a58 <spi_send_block+0xa>
	while (count){
    2a60:	428a      	cmp	r2, r1
    2a62:	d1f6      	bne.n	2a52 <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2a64:	6883      	ldr	r3, [r0, #8]
    2a66:	f013 0f80 	tst.w	r3, #128	; 0x80
    2a6a:	d1fb      	bne.n	2a64 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2a6c:	68c3      	ldr	r3, [r0, #12]
    2a6e:	4770      	bx	lr

00002a70 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2a70:	b16a      	cbz	r2, 2a8e <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2a72:	b410      	push	{r4}
    2a74:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2a76:	2400      	movs	r4, #0
    2a78:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2a7a:	6883      	ldr	r3, [r0, #8]
    2a7c:	f013 0f01 	tst.w	r3, #1
    2a80:	d0fb      	beq.n	2a7a <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2a82:	68c3      	ldr	r3, [r0, #12]
    2a84:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2a88:	428a      	cmp	r2, r1
    2a8a:	d1f5      	bne.n	2a78 <spi_receive_block+0x8>
		count--;
	}
}
    2a8c:	bc10      	pop	{r4}
    2a8e:	4770      	bx	lr

00002a90 <reset_mcu>:
	_reset_mcu();
    2a90:	4a01      	ldr	r2, [pc, #4]	; (2a98 <reset_mcu+0x8>)
    2a92:	4b02      	ldr	r3, [pc, #8]	; (2a9c <reset_mcu+0xc>)
    2a94:	601a      	str	r2, [r3, #0]
    2a96:	bf00      	nop
    2a98:	05fa0004 	.word	0x05fa0004
    2a9c:	e000ed0c 	.word	0xe000ed0c

00002aa0 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2aa0:	b508      	push	{r3, lr}
    2aa2:	460c      	mov	r4, r1
	print(msg);
    2aa4:	f000 f966 	bl	2d74 <print>
	print("\nat address ");
    2aa8:	4813      	ldr	r0, [pc, #76]	; (2af8 <print_fault+0x58>)
    2aaa:	f000 f963 	bl	2d74 <print>
	if (adr) {
    2aae:	b9ec      	cbnz	r4, 2aec <print_fault+0x4c>
	put_char(CR);
    2ab0:	200d      	movs	r0, #13
    2ab2:	f000 f8bf 	bl	2c34 <put_char>
	print("\nUFSR=");
    2ab6:	4811      	ldr	r0, [pc, #68]	; (2afc <print_fault+0x5c>)
    2ab8:	f000 f95c 	bl	2d74 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2abc:	4c10      	ldr	r4, [pc, #64]	; (2b00 <print_fault+0x60>)
    2abe:	6820      	ldr	r0, [r4, #0]
    2ac0:	2110      	movs	r1, #16
    2ac2:	40c8      	lsrs	r0, r1
    2ac4:	f000 f971 	bl	2daa <print_int>
	print("\nBFSR=");
    2ac8:	480e      	ldr	r0, [pc, #56]	; (2b04 <print_fault+0x64>)
    2aca:	f000 f953 	bl	2d74 <print>
	print_int(CFSR->fsr.busFault,16);
    2ace:	6820      	ldr	r0, [r4, #0]
    2ad0:	2110      	movs	r1, #16
    2ad2:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2ad6:	f000 f968 	bl	2daa <print_int>
	print("\nMMFSR=");
    2ada:	480b      	ldr	r0, [pc, #44]	; (2b08 <print_fault+0x68>)
    2adc:	f000 f94a 	bl	2d74 <print>
	print_int(CFSR->fsr.mmFault,16);
    2ae0:	6820      	ldr	r0, [r4, #0]
    2ae2:	2110      	movs	r1, #16
    2ae4:	b2c0      	uxtb	r0, r0
    2ae6:	f000 f960 	bl	2daa <print_int>
    2aea:	e7fe      	b.n	2aea <print_fault+0x4a>
		print_int(adr,16);
    2aec:	2110      	movs	r1, #16
    2aee:	4620      	mov	r0, r4
    2af0:	f000 f95b 	bl	2daa <print_int>
    2af4:	e7dc      	b.n	2ab0 <print_fault+0x10>
    2af6:	bf00      	nop
    2af8:	00003e0c 	.word	0x00003e0c
    2afc:	00003e1c 	.word	0x00003e1c
    2b00:	e000ed28 	.word	0xe000ed28
    2b04:	00003e24 	.word	0x00003e24
    2b08:	00003e2c 	.word	0x00003e2c

00002b0c <draw_char>:
	}else{
		usart_putc(USART1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2b0c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2b10:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2b12:	18cb      	adds	r3, r1, r3
    2b14:	9301      	str	r3, [sp, #4]
    2b16:	4299      	cmp	r1, r3
    2b18:	da20      	bge.n	2b5c <draw_char+0x50>
    2b1a:	4683      	mov	fp, r0
    2b1c:	460e      	mov	r6, r1
    2b1e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2b20:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2b24:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b26:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2b64 <draw_char+0x58>
		byte=*glyph++;
    2b2a:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2b2e:	45bb      	cmp	fp, r7
    2b30:	da10      	bge.n	2b54 <draw_char+0x48>
    2b32:	465c      	mov	r4, fp
    2b34:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b36:	ea18 0f05 	tst.w	r8, r5
    2b3a:	bf14      	ite	ne
    2b3c:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2b40:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2b44:	4631      	mov	r1, r6
    2b46:	4620      	mov	r0, r4
    2b48:	f7fe fd1e 	bl	1588 <gfx_plot>
			mask>>=1;
    2b4c:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2b4e:	3401      	adds	r4, #1
    2b50:	42bc      	cmp	r4, r7
    2b52:	d1f0      	bne.n	2b36 <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2b54:	3601      	adds	r6, #1
    2b56:	9b01      	ldr	r3, [sp, #4]
    2b58:	429e      	cmp	r6, r3
    2b5a:	d1e6      	bne.n	2b2a <draw_char+0x1e>
		}
	}
}
    2b5c:	b003      	add	sp, #12
    2b5e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2b62:	bf00      	nop
    2b64:	200001e8 	.word	0x200001e8

00002b68 <font_color>:
	text_colors[FG]=color&0xf;
    2b68:	f000 000f 	and.w	r0, r0, #15
    2b6c:	4b01      	ldr	r3, [pc, #4]	; (2b74 <font_color+0xc>)
    2b6e:	7058      	strb	r0, [r3, #1]
    2b70:	4770      	bx	lr
    2b72:	bf00      	nop
    2b74:	200001e8 	.word	0x200001e8

00002b78 <bg_color>:
	text_colors[BG]=color&0xf;
    2b78:	f000 000f 	and.w	r0, r0, #15
    2b7c:	4b01      	ldr	r3, [pc, #4]	; (2b84 <bg_color+0xc>)
    2b7e:	7018      	strb	r0, [r3, #0]
    2b80:	4770      	bx	lr
    2b82:	bf00      	nop
    2b84:	200001e8 	.word	0x200001e8

00002b88 <select_font>:
	font=font_id;
    2b88:	4b01      	ldr	r3, [pc, #4]	; (2b90 <select_font+0x8>)
    2b8a:	7098      	strb	r0, [r3, #2]
    2b8c:	4770      	bx	lr
    2b8e:	bf00      	nop
    2b90:	200001e8 	.word	0x200001e8

00002b94 <get_font>:
}
    2b94:	4b01      	ldr	r3, [pc, #4]	; (2b9c <get_font+0x8>)
    2b96:	7898      	ldrb	r0, [r3, #2]
    2b98:	4770      	bx	lr
    2b9a:	bf00      	nop
    2b9c:	200001e8 	.word	0x200001e8

00002ba0 <new_line>:
void new_line(){
    2ba0:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2ba2:	4b21      	ldr	r3, [pc, #132]	; (2c28 <new_line+0x88>)
    2ba4:	781b      	ldrb	r3, [r3, #0]
    2ba6:	2b00      	cmp	r3, #0
    2ba8:	d138      	bne.n	2c1c <new_line+0x7c>
		xpos=0;
    2baa:	2200      	movs	r2, #0
    2bac:	4b1e      	ldr	r3, [pc, #120]	; (2c28 <new_line+0x88>)
    2bae:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2bb0:	f000 fbf2 	bl	3398 <get_video_params>
		switch (font){
    2bb4:	4b1d      	ldr	r3, [pc, #116]	; (2c2c <new_line+0x8c>)
    2bb6:	789b      	ldrb	r3, [r3, #2]
    2bb8:	2b01      	cmp	r3, #1
    2bba:	d011      	beq.n	2be0 <new_line+0x40>
    2bbc:	b113      	cbz	r3, 2bc4 <new_line+0x24>
    2bbe:	2b02      	cmp	r3, #2
    2bc0:	d01d      	beq.n	2bfe <new_line+0x5e>
    2bc2:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2bc4:	4b18      	ldr	r3, [pc, #96]	; (2c28 <new_line+0x88>)
    2bc6:	789b      	ldrb	r3, [r3, #2]
    2bc8:	1d99      	adds	r1, r3, #6
    2bca:	89c2      	ldrh	r2, [r0, #14]
    2bcc:	3a05      	subs	r2, #5
    2bce:	4291      	cmp	r1, r2
    2bd0:	dc02      	bgt.n	2bd8 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2bd2:	4a15      	ldr	r2, [pc, #84]	; (2c28 <new_line+0x88>)
    2bd4:	7091      	strb	r1, [r2, #2]
    2bd6:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2bd8:	2006      	movs	r0, #6
    2bda:	f7fe fd13 	bl	1604 <gfx_scroll_up>
    2bde:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2be0:	4b11      	ldr	r3, [pc, #68]	; (2c28 <new_line+0x88>)
    2be2:	789b      	ldrb	r3, [r3, #2]
    2be4:	f103 010a 	add.w	r1, r3, #10
    2be8:	89c2      	ldrh	r2, [r0, #14]
    2bea:	3a09      	subs	r2, #9
    2bec:	4291      	cmp	r1, r2
    2bee:	dc02      	bgt.n	2bf6 <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2bf0:	4a0d      	ldr	r2, [pc, #52]	; (2c28 <new_line+0x88>)
    2bf2:	7091      	strb	r1, [r2, #2]
    2bf4:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2bf6:	200a      	movs	r0, #10
    2bf8:	f7fe fd04 	bl	1604 <gfx_scroll_up>
    2bfc:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2bfe:	4b0a      	ldr	r3, [pc, #40]	; (2c28 <new_line+0x88>)
    2c00:	789b      	ldrb	r3, [r3, #2]
    2c02:	f103 0108 	add.w	r1, r3, #8
    2c06:	89c2      	ldrh	r2, [r0, #14]
    2c08:	3a07      	subs	r2, #7
    2c0a:	4291      	cmp	r1, r2
    2c0c:	dc02      	bgt.n	2c14 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2c0e:	4a06      	ldr	r2, [pc, #24]	; (2c28 <new_line+0x88>)
    2c10:	7091      	strb	r1, [r2, #2]
    2c12:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2c14:	2008      	movs	r0, #8
    2c16:	f7fe fcf5 	bl	1604 <gfx_scroll_up>
    2c1a:	bd08      	pop	{r3, pc}
		usart_putc(USART1,'\n');
    2c1c:	210a      	movs	r1, #10
    2c1e:	4804      	ldr	r0, [pc, #16]	; (2c30 <new_line+0x90>)
    2c20:	f000 fcfc 	bl	361c <usart_putc>
    2c24:	bd08      	pop	{r3, pc}
    2c26:	bf00      	nop
    2c28:	2000067c 	.word	0x2000067c
    2c2c:	200001e8 	.word	0x200001e8
    2c30:	40013800 	.word	0x40013800

00002c34 <put_char>:

void put_char(uint8_t c){
    2c34:	b530      	push	{r4, r5, lr}
    2c36:	b083      	sub	sp, #12
	if (console==LOCAL){
    2c38:	4b2e      	ldr	r3, [pc, #184]	; (2cf4 <put_char+0xc0>)
    2c3a:	781b      	ldrb	r3, [r3, #0]
    2c3c:	2b00      	cmp	r3, #0
    2c3e:	d153      	bne.n	2ce8 <put_char+0xb4>
	switch(font){
    2c40:	4b2d      	ldr	r3, [pc, #180]	; (2cf8 <put_char+0xc4>)
    2c42:	789b      	ldrb	r3, [r3, #2]
    2c44:	2b01      	cmp	r3, #1
    2c46:	d036      	beq.n	2cb6 <put_char+0x82>
    2c48:	b1e3      	cbz	r3, 2c84 <put_char+0x50>
    2c4a:	2b02      	cmp	r3, #2
    2c4c:	d150      	bne.n	2cf0 <put_char+0xbc>
				new_line();
			}
		}
		break;
	case FONT_ASCII:
		if ((c>31) && (c<(FONT_SIZE+32))){
    2c4e:	f1a0 0320 	sub.w	r3, r0, #32
    2c52:	b2db      	uxtb	r3, r3
    2c54:	2b64      	cmp	r3, #100	; 0x64
    2c56:	d84b      	bhi.n	2cf0 <put_char+0xbc>
			draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2c58:	4c26      	ldr	r4, [pc, #152]	; (2cf4 <put_char+0xc0>)
    2c5a:	78a1      	ldrb	r1, [r4, #2]
    2c5c:	7865      	ldrb	r5, [r4, #1]
    2c5e:	3820      	subs	r0, #32
    2c60:	4b26      	ldr	r3, [pc, #152]	; (2cfc <put_char+0xc8>)
    2c62:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2c66:	9300      	str	r3, [sp, #0]
    2c68:	2308      	movs	r3, #8
    2c6a:	2206      	movs	r2, #6
    2c6c:	4628      	mov	r0, r5
    2c6e:	f7ff ff4d 	bl	2b0c <draw_char>
			xpos+=CHAR_WIDTH;
    2c72:	7863      	ldrb	r3, [r4, #1]
    2c74:	3306      	adds	r3, #6
    2c76:	b2db      	uxtb	r3, r3
    2c78:	7063      	strb	r3, [r4, #1]
			if (xpos>(HRES-CHAR_WIDTH+1)){
    2c7a:	2baf      	cmp	r3, #175	; 0xaf
    2c7c:	d938      	bls.n	2cf0 <put_char+0xbc>
				new_line();
    2c7e:	f7ff ff8f 	bl	2ba0 <new_line>
    2c82:	e035      	b.n	2cf0 <put_char+0xbc>
		if (c<16){
    2c84:	280f      	cmp	r0, #15
    2c86:	d833      	bhi.n	2cf0 <put_char+0xbc>
			draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2c88:	4c1a      	ldr	r4, [pc, #104]	; (2cf4 <put_char+0xc0>)
    2c8a:	78a1      	ldrb	r1, [r4, #2]
    2c8c:	7865      	ldrb	r5, [r4, #1]
    2c8e:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2c92:	4b1b      	ldr	r3, [pc, #108]	; (2d00 <put_char+0xcc>)
    2c94:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2c98:	9300      	str	r3, [sp, #0]
    2c9a:	2306      	movs	r3, #6
    2c9c:	2204      	movs	r2, #4
    2c9e:	4628      	mov	r0, r5
    2ca0:	f7ff ff34 	bl	2b0c <draw_char>
			xpos+=SHEX_WIDTH;
    2ca4:	7863      	ldrb	r3, [r4, #1]
    2ca6:	3304      	adds	r3, #4
    2ca8:	b2db      	uxtb	r3, r3
    2caa:	7063      	strb	r3, [r4, #1]
			if (xpos>(HRES-SHEX_WIDTH+1)){
    2cac:	2bb1      	cmp	r3, #177	; 0xb1
    2cae:	d91f      	bls.n	2cf0 <put_char+0xbc>
				new_line();
    2cb0:	f7ff ff76 	bl	2ba0 <new_line>
    2cb4:	e01c      	b.n	2cf0 <put_char+0xbc>
		if (c<16){
    2cb6:	280f      	cmp	r0, #15
    2cb8:	d81a      	bhi.n	2cf0 <put_char+0xbc>
			draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2cba:	4c0e      	ldr	r4, [pc, #56]	; (2cf4 <put_char+0xc0>)
    2cbc:	78a1      	ldrb	r1, [r4, #2]
    2cbe:	7865      	ldrb	r5, [r4, #1]
    2cc0:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2cc4:	4b0f      	ldr	r3, [pc, #60]	; (2d04 <put_char+0xd0>)
    2cc6:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2cca:	9300      	str	r3, [sp, #0]
    2ccc:	230a      	movs	r3, #10
    2cce:	2208      	movs	r2, #8
    2cd0:	4628      	mov	r0, r5
    2cd2:	f7ff ff1b 	bl	2b0c <draw_char>
			xpos+=LHEX_WIDTH;
    2cd6:	7863      	ldrb	r3, [r4, #1]
    2cd8:	3308      	adds	r3, #8
    2cda:	b2db      	uxtb	r3, r3
    2cdc:	7063      	strb	r3, [r4, #1]
			if (xpos>(HRES-LHEX_WIDTH+1)){
    2cde:	2bad      	cmp	r3, #173	; 0xad
    2ce0:	d906      	bls.n	2cf0 <put_char+0xbc>
				new_line();
    2ce2:	f7ff ff5d 	bl	2ba0 <new_line>
    2ce6:	e003      	b.n	2cf0 <put_char+0xbc>
			}
		}
		break;		
	}
	}else{
		usart_putc(USART1,c);
    2ce8:	4601      	mov	r1, r0
    2cea:	4807      	ldr	r0, [pc, #28]	; (2d08 <put_char+0xd4>)
    2cec:	f000 fc96 	bl	361c <usart_putc>
	}
}
    2cf0:	b003      	add	sp, #12
    2cf2:	bd30      	pop	{r4, r5, pc}
    2cf4:	2000067c 	.word	0x2000067c
    2cf8:	200001e8 	.word	0x200001e8
    2cfc:	000036b8 	.word	0x000036b8
    2d00:	00003a80 	.word	0x00003a80
    2d04:	000039e0 	.word	0x000039e0
    2d08:	40013800 	.word	0x40013800

00002d0c <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2d0c:	4b01      	ldr	r3, [pc, #4]	; (2d14 <set_cursor+0x8>)
    2d0e:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2d10:	7099      	strb	r1, [r3, #2]
    2d12:	4770      	bx	lr
    2d14:	2000067c 	.word	0x2000067c

00002d18 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2d18:	4b03      	ldr	r3, [pc, #12]	; (2d28 <get_cursor+0x10>)
    2d1a:	785a      	ldrb	r2, [r3, #1]
    2d1c:	7898      	ldrb	r0, [r3, #2]
    2d1e:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2d22:	b280      	uxth	r0, r0
    2d24:	4770      	bx	lr
    2d26:	bf00      	nop
    2d28:	2000067c 	.word	0x2000067c

00002d2c <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2d2c:	4b0f      	ldr	r3, [pc, #60]	; (2d6c <cursor_left+0x40>)
    2d2e:	789b      	ldrb	r3, [r3, #2]
    2d30:	2b01      	cmp	r3, #1
    2d32:	d00b      	beq.n	2d4c <cursor_left+0x20>
    2d34:	b113      	cbz	r3, 2d3c <cursor_left+0x10>
    2d36:	2b02      	cmp	r3, #2
    2d38:	d010      	beq.n	2d5c <cursor_left+0x30>
    2d3a:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2d3c:	4b0c      	ldr	r3, [pc, #48]	; (2d70 <cursor_left+0x44>)
    2d3e:	785b      	ldrb	r3, [r3, #1]
    2d40:	2b04      	cmp	r3, #4
    2d42:	d412      	bmi.n	2d6a <cursor_left+0x3e>
    2d44:	3b04      	subs	r3, #4
    2d46:	4a0a      	ldr	r2, [pc, #40]	; (2d70 <cursor_left+0x44>)
    2d48:	7053      	strb	r3, [r2, #1]
    2d4a:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2d4c:	4b08      	ldr	r3, [pc, #32]	; (2d70 <cursor_left+0x44>)
    2d4e:	785b      	ldrb	r3, [r3, #1]
    2d50:	2b08      	cmp	r3, #8
    2d52:	d40a      	bmi.n	2d6a <cursor_left+0x3e>
    2d54:	3b08      	subs	r3, #8
    2d56:	4a06      	ldr	r2, [pc, #24]	; (2d70 <cursor_left+0x44>)
    2d58:	7053      	strb	r3, [r2, #1]
    2d5a:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2d5c:	4b04      	ldr	r3, [pc, #16]	; (2d70 <cursor_left+0x44>)
    2d5e:	785b      	ldrb	r3, [r3, #1]
    2d60:	2b06      	cmp	r3, #6
    2d62:	d402      	bmi.n	2d6a <cursor_left+0x3e>
    2d64:	3b06      	subs	r3, #6
    2d66:	4a02      	ldr	r2, [pc, #8]	; (2d70 <cursor_left+0x44>)
    2d68:	7053      	strb	r3, [r2, #1]
    2d6a:	4770      	bx	lr
    2d6c:	200001e8 	.word	0x200001e8
    2d70:	2000067c 	.word	0x2000067c

00002d74 <print>:
void print(const char* str){
    2d74:	b510      	push	{r4, lr}
    2d76:	4604      	mov	r4, r0
    while ((c=*str++)){
    2d78:	e001      	b.n	2d7e <print+0xa>
            new_line();
    2d7a:	f7ff ff11 	bl	2ba0 <new_line>
    while ((c=*str++)){
    2d7e:	f814 0b01 	ldrb.w	r0, [r4], #1
    2d82:	b158      	cbz	r0, 2d9c <print+0x28>
        switch(c){
    2d84:	280a      	cmp	r0, #10
    2d86:	d0f8      	beq.n	2d7a <print+0x6>
    2d88:	280d      	cmp	r0, #13
    2d8a:	d0f6      	beq.n	2d7a <print+0x6>
    2d8c:	2808      	cmp	r0, #8
    2d8e:	d002      	beq.n	2d96 <print+0x22>
            put_char(c);
    2d90:	f7ff ff50 	bl	2c34 <put_char>
    2d94:	e7f3      	b.n	2d7e <print+0xa>
            cursor_left();    
    2d96:	f7ff ffc9 	bl	2d2c <cursor_left>
            break;
    2d9a:	e7f0      	b.n	2d7e <print+0xa>
}
    2d9c:	bd10      	pop	{r4, pc}

00002d9e <println>:
void println(const char *text){
    2d9e:	b508      	push	{r3, lr}
	print(text);
    2da0:	f7ff ffe8 	bl	2d74 <print>
	new_line();
    2da4:	f7ff fefc 	bl	2ba0 <new_line>
    2da8:	bd08      	pop	{r3, pc}

00002daa <print_int>:
void print_int(int i,uint8_t base){
    2daa:	b530      	push	{r4, r5, lr}
    2dac:	b085      	sub	sp, #20
    fmt[15]=0;
    2dae:	2300      	movs	r3, #0
    2db0:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2db4:	2320      	movs	r3, #32
    2db6:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2dba:	1e02      	subs	r2, r0, #0
        i=-i;
    2dbc:	bfba      	itte	lt
    2dbe:	4252      	neglt	r2, r2
        sign=1;
    2dc0:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2dc2:	2500      	movge	r5, #0
    while (idx>1 && i){
    2dc4:	b1aa      	cbz	r2, 2df2 <print_int+0x48>
    2dc6:	f10d 040e 	add.w	r4, sp, #14
    2dca:	200e      	movs	r0, #14
        d=i%base;
    2dcc:	fb92 f3f1 	sdiv	r3, r2, r1
    2dd0:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2dd4:	2b09      	cmp	r3, #9
    2dd6:	bfc8      	it	gt
    2dd8:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2dda:	3801      	subs	r0, #1
    2ddc:	3330      	adds	r3, #48	; 0x30
    2dde:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2de2:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2de6:	2801      	cmp	r0, #1
    2de8:	d007      	beq.n	2dfa <print_int+0x50>
    2dea:	2a00      	cmp	r2, #0
    2dec:	d1ee      	bne.n	2dcc <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2dee:	280e      	cmp	r0, #14
    2df0:	d103      	bne.n	2dfa <print_int+0x50>
    2df2:	2330      	movs	r3, #48	; 0x30
    2df4:	f88d 300d 	strb.w	r3, [sp, #13]
    2df8:	200d      	movs	r0, #13
    if (base==10 && sign){
    2dfa:	290a      	cmp	r1, #10
    2dfc:	d006      	beq.n	2e0c <print_int+0x62>
    }else if (base==16){
    2dfe:	2910      	cmp	r1, #16
    2e00:	d00d      	beq.n	2e1e <print_int+0x74>
    print(&fmt[idx]);
    2e02:	4468      	add	r0, sp
    2e04:	f7ff ffb6 	bl	2d74 <print>
}
    2e08:	b005      	add	sp, #20
    2e0a:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2e0c:	2d00      	cmp	r5, #0
    2e0e:	d0f8      	beq.n	2e02 <print_int+0x58>
        fmt[--idx]='-';
    2e10:	3801      	subs	r0, #1
    2e12:	ab04      	add	r3, sp, #16
    2e14:	4403      	add	r3, r0
    2e16:	222d      	movs	r2, #45	; 0x2d
    2e18:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e1c:	e7f1      	b.n	2e02 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2e1e:	f010 0f01 	tst.w	r0, #1
    2e22:	d005      	beq.n	2e30 <print_int+0x86>
    2e24:	3801      	subs	r0, #1
    2e26:	ab04      	add	r3, sp, #16
    2e28:	4403      	add	r3, r0
    2e2a:	2230      	movs	r2, #48	; 0x30
    2e2c:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2e30:	3801      	subs	r0, #1
    2e32:	ab04      	add	r3, sp, #16
    2e34:	4403      	add	r3, r0
    2e36:	2224      	movs	r2, #36	; 0x24
    2e38:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e3c:	e7e1      	b.n	2e02 <print_int+0x58>

00002e3e <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2e3e:	b508      	push	{r3, lr}
	print("press button");
    2e40:	4801      	ldr	r0, [pc, #4]	; (2e48 <prompt_btn+0xa>)
    2e42:	f7ff ff97 	bl	2d74 <print>
    2e46:	bd08      	pop	{r3, pc}
    2e48:	00003e78 	.word	0x00003e78

00002e4c <clear_screen>:
}

void clear_screen(){
    2e4c:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2e4e:	4b07      	ldr	r3, [pc, #28]	; (2e6c <clear_screen+0x20>)
    2e50:	781b      	ldrb	r3, [r3, #0]
    2e52:	b123      	cbz	r3, 2e5e <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(USART1,FF);
    2e54:	210c      	movs	r1, #12
    2e56:	4806      	ldr	r0, [pc, #24]	; (2e70 <clear_screen+0x24>)
    2e58:	f000 fbe0 	bl	361c <usart_putc>
    2e5c:	bd08      	pop	{r3, pc}
		gfx_cls();
    2e5e:	f7fe fbbd 	bl	15dc <gfx_cls>
		xpos=0;
    2e62:	4b02      	ldr	r3, [pc, #8]	; (2e6c <clear_screen+0x20>)
    2e64:	2200      	movs	r2, #0
    2e66:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2e68:	709a      	strb	r2, [r3, #2]
    2e6a:	bd08      	pop	{r3, pc}
    2e6c:	2000067c 	.word	0x2000067c
    2e70:	40013800 	.word	0x40013800

00002e74 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2e74:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2e76:	2800      	cmp	r0, #0
    2e78:	bf14      	ite	ne
    2e7a:	260f      	movne	r6, #15
    2e7c:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e7e:	4b09      	ldr	r3, [pc, #36]	; (2ea4 <show_cursor+0x30>)
    2e80:	785c      	ldrb	r4, [r3, #1]
    2e82:	1da3      	adds	r3, r4, #6
    2e84:	429c      	cmp	r4, r3
    2e86:	da0b      	bge.n	2ea0 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2e88:	4d06      	ldr	r5, [pc, #24]	; (2ea4 <show_cursor+0x30>)
    2e8a:	78a9      	ldrb	r1, [r5, #2]
    2e8c:	4632      	mov	r2, r6
    2e8e:	3107      	adds	r1, #7
    2e90:	4620      	mov	r0, r4
    2e92:	f7fe fb79 	bl	1588 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e96:	3401      	adds	r4, #1
    2e98:	786b      	ldrb	r3, [r5, #1]
    2e9a:	3306      	adds	r3, #6
    2e9c:	42a3      	cmp	r3, r4
    2e9e:	dcf4      	bgt.n	2e8a <show_cursor+0x16>
    2ea0:	bd70      	pop	{r4, r5, r6, pc}
    2ea2:	bf00      	nop
    2ea4:	2000067c 	.word	0x2000067c

00002ea8 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2ea8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2eac:	f000 fa74 	bl	3398 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2eb0:	4b0c      	ldr	r3, [pc, #48]	; (2ee4 <clear_line+0x3c>)
    2eb2:	789c      	ldrb	r4, [r3, #2]
    2eb4:	f104 0308 	add.w	r3, r4, #8
    2eb8:	429c      	cmp	r4, r3
    2eba:	da10      	bge.n	2ede <clear_line+0x36>
    2ebc:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2ebe:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2ee8 <clear_line+0x40>
    2ec2:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ec4:	4e07      	ldr	r6, [pc, #28]	; (2ee4 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2ec6:	7a28      	ldrb	r0, [r5, #8]
    2ec8:	463a      	mov	r2, r7
    2eca:	4601      	mov	r1, r0
    2ecc:	fb04 8000 	mla	r0, r4, r0, r8
    2ed0:	f7fe fa25 	bl	131e <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ed4:	3401      	adds	r4, #1
    2ed6:	78b3      	ldrb	r3, [r6, #2]
    2ed8:	3308      	adds	r3, #8
    2eda:	42a3      	cmp	r3, r4
    2edc:	dcf3      	bgt.n	2ec6 <clear_line+0x1e>
    2ede:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2ee2:	bf00      	nop
    2ee4:	2000067c 	.word	0x2000067c
    2ee8:	200026bc 	.word	0x200026bc

00002eec <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    2eec:	4b01      	ldr	r3, [pc, #4]	; (2ef4 <select_console+0x8>)
    2eee:	7018      	strb	r0, [r3, #0]
    2ef0:	4770      	bx	lr
    2ef2:	bf00      	nop
    2ef4:	2000067c 	.word	0x2000067c

00002ef8 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2ef8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2efc:	4c31      	ldr	r4, [pc, #196]	; (2fc4 <tvout_init+0xcc>)
    2efe:	4b32      	ldr	r3, [pc, #200]	; (2fc8 <tvout_init+0xd0>)
    2f00:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2f02:	4a32      	ldr	r2, [pc, #200]	; (2fcc <tvout_init+0xd4>)
    2f04:	4b32      	ldr	r3, [pc, #200]	; (2fd0 <tvout_init+0xd8>)
    2f06:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2f08:	220a      	movs	r2, #10
    2f0a:	2108      	movs	r1, #8
    2f0c:	4620      	mov	r0, r4
    2f0e:	f7fe faaf 	bl	1470 <config_pin>
    PORTA->ODR=0;
    2f12:	2500      	movs	r5, #0
    2f14:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2f16:	4e2f      	ldr	r6, [pc, #188]	; (2fd4 <tvout_init+0xdc>)
    2f18:	69b3      	ldr	r3, [r6, #24]
    2f1a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2f1e:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2f20:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2f24:	f04f 0878 	mov.w	r8, #120	; 0x78
    2f28:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2f2c:	2301      	movs	r3, #1
    2f2e:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2f30:	2784      	movs	r7, #132	; 0x84
    2f32:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2f34:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2f38:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2f3a:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2f3e:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    2f40:	f240 1365 	movw	r3, #357	; 0x165
    2f44:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2f46:	6963      	ldr	r3, [r4, #20]
    2f48:	f043 0301 	orr.w	r3, r3, #1
    2f4c:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2f4e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2f52:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2f54:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2f56:	68e3      	ldr	r3, [r4, #12]
    2f58:	f043 0301 	orr.w	r3, r3, #1
    2f5c:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2f5e:	4629      	mov	r1, r5
    2f60:	2019      	movs	r0, #25
    2f62:	f7ff f869 	bl	2038 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2f66:	4629      	mov	r1, r5
    2f68:	201b      	movs	r0, #27
    2f6a:	f7ff f865 	bl	2038 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2f6e:	2019      	movs	r0, #25
    2f70:	f7ff f802 	bl	1f78 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2f74:	201b      	movs	r0, #27
    2f76:	f7fe ffff 	bl	1f78 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2f7a:	6823      	ldr	r3, [r4, #0]
    2f7c:	f043 0301 	orr.w	r3, r3, #1
    2f80:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2f82:	220a      	movs	r2, #10
    2f84:	4629      	mov	r1, r5
    2f86:	4814      	ldr	r0, [pc, #80]	; (2fd8 <tvout_init+0xe0>)
    2f88:	f7fe fa72 	bl	1470 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2f8c:	69f3      	ldr	r3, [r6, #28]
    2f8e:	f043 0302 	orr.w	r3, r3, #2
    2f92:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2f94:	4b11      	ldr	r3, [pc, #68]	; (2fdc <tvout_init+0xe4>)
    2f96:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2f9a:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2f9c:	2213      	movs	r2, #19
    2f9e:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2fa0:	220a      	movs	r2, #10
    2fa2:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2fa4:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2fa6:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2faa:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2fac:	695a      	ldr	r2, [r3, #20]
    2fae:	f042 0201 	orr.w	r2, r2, #1
    2fb2:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2fb4:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2fb6:	681a      	ldr	r2, [r3, #0]
    2fb8:	f042 0201 	orr.w	r2, r2, #1
    2fbc:	601a      	str	r2, [r3, #0]
    2fbe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2fc2:	bf00      	nop
    2fc4:	40010800 	.word	0x40010800
    2fc8:	88883333 	.word	0x88883333
    2fcc:	84484444 	.word	0x84484444
    2fd0:	40010804 	.word	0x40010804
    2fd4:	40021000 	.word	0x40021000
    2fd8:	40010c00 	.word	0x40010c00
    2fdc:	40000400 	.word	0x40000400

00002fe0 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2fe0:	4668      	mov	r0, sp
    2fe2:	f020 0107 	bic.w	r1, r0, #7
    2fe6:	468d      	mov	sp, r1
    2fe8:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    2fea:	4a2f      	ldr	r2, [pc, #188]	; (30a8 <TV_OUT_handler+0xc8>)
    2fec:	6a13      	ldr	r3, [r2, #32]
    2fee:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2ff2:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    2ff4:	492d      	ldr	r1, [pc, #180]	; (30ac <TV_OUT_handler+0xcc>)
    2ff6:	f240 2209 	movw	r2, #521	; 0x209
    2ffa:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    2ffc:	4293      	cmp	r3, r2
    2ffe:	d9fc      	bls.n	2ffa <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    3000:	4a29      	ldr	r2, [pc, #164]	; (30a8 <TV_OUT_handler+0xc8>)
    3002:	6a13      	ldr	r3, [r2, #32]
    3004:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3008:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    300a:	4b29      	ldr	r3, [pc, #164]	; (30b0 <TV_OUT_handler+0xd0>)
    300c:	881d      	ldrh	r5, [r3, #0]
    300e:	b2ad      	uxth	r5, r5
    3010:	4b28      	ldr	r3, [pc, #160]	; (30b4 <TV_OUT_handler+0xd4>)
    3012:	7818      	ldrb	r0, [r3, #0]
    3014:	785a      	ldrb	r2, [r3, #1]
    3016:	fb95 f5f2 	sdiv	r5, r5, r2
    301a:	4a27      	ldr	r2, [pc, #156]	; (30b8 <TV_OUT_handler+0xd8>)
    301c:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    3020:	8859      	ldrh	r1, [r3, #2]
    3022:	4a22      	ldr	r2, [pc, #136]	; (30ac <TV_OUT_handler+0xcc>)
    3024:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3026:	428b      	cmp	r3, r1
    3028:	d3fc      	bcc.n	3024 <TV_OUT_handler+0x44>
    _jitter_cancel();
    302a:	4b24      	ldr	r3, [pc, #144]	; (30bc <TV_OUT_handler+0xdc>)
    302c:	461a      	mov	r2, r3
    302e:	6812      	ldr	r2, [r2, #0]
    3030:	f002 0207 	and.w	r2, r2, #7
    3034:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3038:	4497      	add	pc, r2
    303a:	bf00      	nop
    303c:	bf00      	nop
    303e:	bf00      	nop
    3040:	bf00      	nop
    3042:	bf00      	nop
    3044:	bf00      	nop
    3046:	bf00      	nop
    3048:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    304a:	4a17      	ldr	r2, [pc, #92]	; (30a8 <TV_OUT_handler+0xc8>)
    304c:	6a13      	ldr	r3, [r2, #32]
    304e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3052:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    3054:	b1b0      	cbz	r0, 3084 <TV_OUT_handler+0xa4>
    3056:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3058:	4819      	ldr	r0, [pc, #100]	; (30c0 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    305a:	4916      	ldr	r1, [pc, #88]	; (30b4 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    305c:	781a      	ldrb	r2, [r3, #0]
    305e:	0912      	lsrs	r2, r2, #4
    3060:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    3062:	790c      	ldrb	r4, [r1, #4]
    3064:	4622      	mov	r2, r4
    3066:	3a01      	subs	r2, #1
    3068:	d1fd      	bne.n	3066 <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    306a:	f813 2b01 	ldrb.w	r2, [r3], #1
    306e:	f002 020f 	and.w	r2, r2, #15
    3072:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    3074:	790c      	ldrb	r4, [r1, #4]
    3076:	4622      	mov	r2, r4
    3078:	3a01      	subs	r2, #1
    307a:	d1fd      	bne.n	3078 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    307c:	1b5c      	subs	r4, r3, r5
    307e:	780a      	ldrb	r2, [r1, #0]
    3080:	4294      	cmp	r4, r2
    3082:	d3eb      	bcc.n	305c <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    3084:	2200      	movs	r2, #0
    3086:	4b0f      	ldr	r3, [pc, #60]	; (30c4 <TV_OUT_handler+0xe4>)
    3088:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    308a:	4a07      	ldr	r2, [pc, #28]	; (30a8 <TV_OUT_handler+0xc8>)
    308c:	6a13      	ldr	r3, [r2, #32]
    308e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3092:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    3094:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    3098:	6913      	ldr	r3, [r2, #16]
    309a:	f023 0304 	bic.w	r3, r3, #4
    309e:	6113      	str	r3, [r2, #16]
}
    30a0:	bc31      	pop	{r0, r4, r5}
    30a2:	4685      	mov	sp, r0
    30a4:	4770      	bx	lr
    30a6:	bf00      	nop
    30a8:	40000400 	.word	0x40000400
    30ac:	40012c00 	.word	0x40012c00
    30b0:	20000680 	.word	0x20000680
    30b4:	200001ec 	.word	0x200001ec
    30b8:	200026bc 	.word	0x200026bc
    30bc:	40012c24 	.word	0x40012c24
    30c0:	4001080c 	.word	0x4001080c
    30c4:	40010800 	.word	0x40010800

000030c8 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    30c8:	4668      	mov	r0, sp
    30ca:	f020 0107 	bic.w	r1, r0, #7
    30ce:	468d      	mov	sp, r1
    30d0:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    30d2:	4a8e      	ldr	r2, [pc, #568]	; (330c <TV_SYNC_handler+0x244>)
    30d4:	8853      	ldrh	r3, [r2, #2]
    30d6:	3301      	adds	r3, #1
    30d8:	b29b      	uxth	r3, r3
    30da:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    30dc:	498c      	ldr	r1, [pc, #560]	; (3310 <TV_SYNC_handler+0x248>)
    30de:	680b      	ldr	r3, [r1, #0]
    30e0:	3301      	adds	r3, #1
    30e2:	600b      	str	r3, [r1, #0]
    switch (task){
    30e4:	8893      	ldrh	r3, [r2, #4]
    30e6:	b29b      	uxth	r3, r3
    30e8:	2b09      	cmp	r3, #9
    30ea:	f200 8081 	bhi.w	31f0 <TV_SYNC_handler+0x128>
    30ee:	e8df f013 	tbh	[pc, r3, lsl #1]
    30f2:	000a      	.short	0x000a
    30f4:	0048002a 	.word	0x0048002a
    30f8:	00880069 	.word	0x00880069
    30fc:	00a50090 	.word	0x00a50090
    3100:	00d100b4 	.word	0x00d100b4
    3104:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    3106:	4b81      	ldr	r3, [pc, #516]	; (330c <TV_SYNC_handler+0x244>)
    3108:	881b      	ldrh	r3, [r3, #0]
    310a:	b29b      	uxth	r3, r3
    310c:	b17b      	cbz	r3, 312e <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    310e:	4a7f      	ldr	r2, [pc, #508]	; (330c <TV_SYNC_handler+0x244>)
    3110:	8813      	ldrh	r3, [r2, #0]
    3112:	3301      	adds	r3, #1
    3114:	b29b      	uxth	r3, r3
    3116:	8013      	strh	r3, [r2, #0]
    3118:	8813      	ldrh	r3, [r2, #0]
    311a:	b29b      	uxth	r3, r3
    311c:	2b06      	cmp	r3, #6
    311e:	d167      	bne.n	31f0 <TV_SYNC_handler+0x128>
    3120:	2300      	movs	r3, #0
    3122:	8013      	strh	r3, [r2, #0]
    3124:	8893      	ldrh	r3, [r2, #4]
    3126:	3301      	adds	r3, #1
    3128:	b29b      	uxth	r3, r3
    312a:	8093      	strh	r3, [r2, #4]
    312c:	e060      	b.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    312e:	4b79      	ldr	r3, [pc, #484]	; (3314 <TV_SYNC_handler+0x24c>)
    3130:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3134:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3136:	22a4      	movs	r2, #164	; 0xa4
    3138:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    313a:	4a74      	ldr	r2, [pc, #464]	; (330c <TV_SYNC_handler+0x244>)
    313c:	8813      	ldrh	r3, [r2, #0]
    313e:	3301      	adds	r3, #1
    3140:	b29b      	uxth	r3, r3
    3142:	8013      	strh	r3, [r2, #0]
    3144:	e054      	b.n	31f0 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    3146:	4b71      	ldr	r3, [pc, #452]	; (330c <TV_SYNC_handler+0x244>)
    3148:	881b      	ldrh	r3, [r3, #0]
    314a:	b29b      	uxth	r3, r3
    314c:	b17b      	cbz	r3, 316e <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    314e:	4a6f      	ldr	r2, [pc, #444]	; (330c <TV_SYNC_handler+0x244>)
    3150:	8813      	ldrh	r3, [r2, #0]
    3152:	3301      	adds	r3, #1
    3154:	b29b      	uxth	r3, r3
    3156:	8013      	strh	r3, [r2, #0]
    3158:	8813      	ldrh	r3, [r2, #0]
    315a:	b29b      	uxth	r3, r3
    315c:	2b06      	cmp	r3, #6
    315e:	d147      	bne.n	31f0 <TV_SYNC_handler+0x128>
    3160:	2300      	movs	r3, #0
    3162:	8013      	strh	r3, [r2, #0]
    3164:	8893      	ldrh	r3, [r2, #4]
    3166:	3301      	adds	r3, #1
    3168:	b29b      	uxth	r3, r3
    316a:	8093      	strh	r3, [r2, #4]
    316c:	e040      	b.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    316e:	f240 7294 	movw	r2, #1940	; 0x794
    3172:	4b68      	ldr	r3, [pc, #416]	; (3314 <TV_SYNC_handler+0x24c>)
    3174:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3176:	4a65      	ldr	r2, [pc, #404]	; (330c <TV_SYNC_handler+0x244>)
    3178:	8813      	ldrh	r3, [r2, #0]
    317a:	3301      	adds	r3, #1
    317c:	b29b      	uxth	r3, r3
    317e:	8013      	strh	r3, [r2, #0]
    3180:	e036      	b.n	31f0 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    3182:	4b62      	ldr	r3, [pc, #392]	; (330c <TV_SYNC_handler+0x244>)
    3184:	881b      	ldrh	r3, [r3, #0]
    3186:	b29b      	uxth	r3, r3
    3188:	b153      	cbz	r3, 31a0 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    318a:	4b60      	ldr	r3, [pc, #384]	; (330c <TV_SYNC_handler+0x244>)
    318c:	881b      	ldrh	r3, [r3, #0]
    318e:	b29b      	uxth	r3, r3
    3190:	2b06      	cmp	r3, #6
    3192:	d00e      	beq.n	31b2 <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    3194:	4a5d      	ldr	r2, [pc, #372]	; (330c <TV_SYNC_handler+0x244>)
    3196:	8813      	ldrh	r3, [r2, #0]
    3198:	3301      	adds	r3, #1
    319a:	b29b      	uxth	r3, r3
    319c:	8013      	strh	r3, [r2, #0]
            break;
    319e:	e027      	b.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    31a0:	22a4      	movs	r2, #164	; 0xa4
    31a2:	4b5c      	ldr	r3, [pc, #368]	; (3314 <TV_SYNC_handler+0x24c>)
    31a4:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    31a6:	4a59      	ldr	r2, [pc, #356]	; (330c <TV_SYNC_handler+0x244>)
    31a8:	8813      	ldrh	r3, [r2, #0]
    31aa:	3301      	adds	r3, #1
    31ac:	b29b      	uxth	r3, r3
    31ae:	8013      	strh	r3, [r2, #0]
            break;
    31b0:	e01e      	b.n	31f0 <TV_SYNC_handler+0x128>
            task++;
    31b2:	4a56      	ldr	r2, [pc, #344]	; (330c <TV_SYNC_handler+0x244>)
    31b4:	8893      	ldrh	r3, [r2, #4]
    31b6:	3301      	adds	r3, #1
    31b8:	b29b      	uxth	r3, r3
    31ba:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    31bc:	88d3      	ldrh	r3, [r2, #6]
    31be:	f013 0f01 	tst.w	r3, #1
    31c2:	d015      	beq.n	31f0 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    31c4:	4b53      	ldr	r3, [pc, #332]	; (3314 <TV_SYNC_handler+0x24c>)
    31c6:	f241 12c5 	movw	r2, #4549	; 0x11c5
    31ca:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    31cc:	f44f 72a8 	mov.w	r2, #336	; 0x150
    31d0:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    31d2:	4a4e      	ldr	r2, [pc, #312]	; (330c <TV_SYNC_handler+0x244>)
    31d4:	88d3      	ldrh	r3, [r2, #6]
    31d6:	f023 0302 	bic.w	r3, r3, #2
    31da:	041b      	lsls	r3, r3, #16
    31dc:	0c1b      	lsrs	r3, r3, #16
    31de:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    31e0:	8853      	ldrh	r3, [r2, #2]
    31e2:	f3c3 038d 	ubfx	r3, r3, #2, #14
    31e6:	8053      	strh	r3, [r2, #2]
        task++;
    31e8:	8893      	ldrh	r3, [r2, #4]
    31ea:	3301      	adds	r3, #1
    31ec:	b29b      	uxth	r3, r3
    31ee:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    31f0:	4a48      	ldr	r2, [pc, #288]	; (3314 <TV_SYNC_handler+0x24c>)
    31f2:	6913      	ldr	r3, [r2, #16]
    31f4:	f023 0301 	bic.w	r3, r3, #1
    31f8:	6113      	str	r3, [r2, #16]
}
    31fa:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    31fe:	4685      	mov	sp, r0
    3200:	4770      	bx	lr
        read_gamepad();
    3202:	f7fd ff31 	bl	1068 <read_gamepad>
        task++;
    3206:	4a41      	ldr	r2, [pc, #260]	; (330c <TV_SYNC_handler+0x244>)
    3208:	8893      	ldrh	r3, [r2, #4]
    320a:	3301      	adds	r3, #1
    320c:	b29b      	uxth	r3, r3
    320e:	8093      	strh	r3, [r2, #4]
        break;    
    3210:	e7ee      	b.n	31f0 <TV_SYNC_handler+0x128>
        if (sound_timer){
    3212:	4b41      	ldr	r3, [pc, #260]	; (3318 <TV_SYNC_handler+0x250>)
    3214:	881b      	ldrh	r3, [r3, #0]
    3216:	b29b      	uxth	r3, r3
    3218:	b13b      	cbz	r3, 322a <TV_SYNC_handler+0x162>
            sound_timer--;
    321a:	4a3f      	ldr	r2, [pc, #252]	; (3318 <TV_SYNC_handler+0x250>)
    321c:	8813      	ldrh	r3, [r2, #0]
    321e:	3b01      	subs	r3, #1
    3220:	b29b      	uxth	r3, r3
    3222:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3224:	8813      	ldrh	r3, [r2, #0]
    3226:	b29b      	uxth	r3, r3
    3228:	b12b      	cbz	r3, 3236 <TV_SYNC_handler+0x16e>
        task++;
    322a:	4a38      	ldr	r2, [pc, #224]	; (330c <TV_SYNC_handler+0x244>)
    322c:	8893      	ldrh	r3, [r2, #4]
    322e:	3301      	adds	r3, #1
    3230:	b29b      	uxth	r3, r3
    3232:	8093      	strh	r3, [r2, #4]
        break;    
    3234:	e7dc      	b.n	31f0 <TV_SYNC_handler+0x128>
                sound_stop();
    3236:	f7ff fb0c 	bl	2852 <sound_stop>
    323a:	e7f6      	b.n	322a <TV_SYNC_handler+0x162>
        if (game_timer){
    323c:	4b37      	ldr	r3, [pc, #220]	; (331c <TV_SYNC_handler+0x254>)
    323e:	881b      	ldrh	r3, [r3, #0]
    3240:	b29b      	uxth	r3, r3
    3242:	b123      	cbz	r3, 324e <TV_SYNC_handler+0x186>
            game_timer--;
    3244:	4a35      	ldr	r2, [pc, #212]	; (331c <TV_SYNC_handler+0x254>)
    3246:	8813      	ldrh	r3, [r2, #0]
    3248:	3b01      	subs	r3, #1
    324a:	b29b      	uxth	r3, r3
    324c:	8013      	strh	r3, [r2, #0]
        task++;
    324e:	4a2f      	ldr	r2, [pc, #188]	; (330c <TV_SYNC_handler+0x244>)
    3250:	8893      	ldrh	r3, [r2, #4]
    3252:	3301      	adds	r3, #1
    3254:	b29b      	uxth	r3, r3
    3256:	8093      	strh	r3, [r2, #4]
        break;
    3258:	e7ca      	b.n	31f0 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    325a:	4b2c      	ldr	r3, [pc, #176]	; (330c <TV_SYNC_handler+0x244>)
    325c:	885b      	ldrh	r3, [r3, #2]
    325e:	b29b      	uxth	r3, r3
    3260:	4a2f      	ldr	r2, [pc, #188]	; (3320 <TV_SYNC_handler+0x258>)
    3262:	88d2      	ldrh	r2, [r2, #6]
    3264:	429a      	cmp	r2, r3
    3266:	d1c3      	bne.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    3268:	4b2a      	ldr	r3, [pc, #168]	; (3314 <TV_SYNC_handler+0x24c>)
    326a:	691a      	ldr	r2, [r3, #16]
    326c:	f022 0204 	bic.w	r2, r2, #4
    3270:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    3272:	68da      	ldr	r2, [r3, #12]
    3274:	f042 0204 	orr.w	r2, r2, #4
    3278:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    327a:	4b24      	ldr	r3, [pc, #144]	; (330c <TV_SYNC_handler+0x244>)
    327c:	88da      	ldrh	r2, [r3, #6]
    327e:	b292      	uxth	r2, r2
    3280:	f042 0204 	orr.w	r2, r2, #4
    3284:	80da      	strh	r2, [r3, #6]
            task++;
    3286:	889a      	ldrh	r2, [r3, #4]
    3288:	3201      	adds	r2, #1
    328a:	b292      	uxth	r2, r2
    328c:	809a      	strh	r2, [r3, #4]
            slice=0;
    328e:	2200      	movs	r2, #0
    3290:	801a      	strh	r2, [r3, #0]
    3292:	e7ad      	b.n	31f0 <TV_SYNC_handler+0x128>
        slice++;
    3294:	4a1d      	ldr	r2, [pc, #116]	; (330c <TV_SYNC_handler+0x244>)
    3296:	8813      	ldrh	r3, [r2, #0]
    3298:	3301      	adds	r3, #1
    329a:	b29b      	uxth	r3, r3
    329c:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    329e:	8853      	ldrh	r3, [r2, #2]
    32a0:	b29b      	uxth	r3, r3
    32a2:	4a1f      	ldr	r2, [pc, #124]	; (3320 <TV_SYNC_handler+0x258>)
    32a4:	8912      	ldrh	r2, [r2, #8]
    32a6:	429a      	cmp	r2, r3
    32a8:	d1a2      	bne.n	31f0 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    32aa:	4a1a      	ldr	r2, [pc, #104]	; (3314 <TV_SYNC_handler+0x24c>)
    32ac:	68d3      	ldr	r3, [r2, #12]
    32ae:	f023 0304 	bic.w	r3, r3, #4
    32b2:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    32b4:	4a15      	ldr	r2, [pc, #84]	; (330c <TV_SYNC_handler+0x244>)
    32b6:	88d3      	ldrh	r3, [r2, #6]
    32b8:	f023 0304 	bic.w	r3, r3, #4
    32bc:	041b      	lsls	r3, r3, #16
    32be:	0c1b      	lsrs	r3, r3, #16
    32c0:	80d3      	strh	r3, [r2, #6]
            task++;
    32c2:	8893      	ldrh	r3, [r2, #4]
    32c4:	3301      	adds	r3, #1
    32c6:	b29b      	uxth	r3, r3
    32c8:	8093      	strh	r3, [r2, #4]
    32ca:	e791      	b.n	31f0 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    32cc:	4b0f      	ldr	r3, [pc, #60]	; (330c <TV_SYNC_handler+0x244>)
    32ce:	885b      	ldrh	r3, [r3, #2]
    32d0:	b29b      	uxth	r3, r3
    32d2:	f240 1207 	movw	r2, #263	; 0x107
    32d6:	4293      	cmp	r3, r2
    32d8:	d18a      	bne.n	31f0 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    32da:	4b0c      	ldr	r3, [pc, #48]	; (330c <TV_SYNC_handler+0x244>)
    32dc:	88db      	ldrh	r3, [r3, #6]
    32de:	f013 0f01 	tst.w	r3, #1
    32e2:	d003      	beq.n	32ec <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    32e4:	f640 02e2 	movw	r2, #2274	; 0x8e2
    32e8:	4b0a      	ldr	r3, [pc, #40]	; (3314 <TV_SYNC_handler+0x24c>)
    32ea:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    32ec:	4b07      	ldr	r3, [pc, #28]	; (330c <TV_SYNC_handler+0x244>)
    32ee:	88da      	ldrh	r2, [r3, #6]
    32f0:	b292      	uxth	r2, r2
    32f2:	f082 0201 	eor.w	r2, r2, #1
    32f6:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    32f8:	88da      	ldrh	r2, [r3, #6]
    32fa:	b292      	uxth	r2, r2
    32fc:	f042 0202 	orr.w	r2, r2, #2
    3300:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    3302:	2200      	movs	r2, #0
    3304:	805a      	strh	r2, [r3, #2]
            slice=0;
    3306:	801a      	strh	r2, [r3, #0]
            task=0;
    3308:	809a      	strh	r2, [r3, #4]
    330a:	e771      	b.n	31f0 <TV_SYNC_handler+0x128>
    330c:	20000680 	.word	0x20000680
    3310:	20004e20 	.word	0x20004e20
    3314:	40012c00 	.word	0x40012c00
    3318:	20004e24 	.word	0x20004e24
    331c:	20004e1c 	.word	0x20004e1c
    3320:	200001ec 	.word	0x200001ec

00003324 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3324:	4a02      	ldr	r2, [pc, #8]	; (3330 <frame_sync+0xc>)
    3326:	88d3      	ldrh	r3, [r2, #6]
    3328:	f013 0f02 	tst.w	r3, #2
    332c:	d0fb      	beq.n	3326 <frame_sync+0x2>
}
    332e:	4770      	bx	lr
    3330:	20000680 	.word	0x20000680

00003334 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3334:	4a02      	ldr	r2, [pc, #8]	; (3340 <wait_sync_end+0xc>)
    3336:	88d3      	ldrh	r3, [r2, #6]
    3338:	f013 0f02 	tst.w	r3, #2
    333c:	d1fb      	bne.n	3336 <wait_sync_end+0x2>
}
    333e:	4770      	bx	lr
    3340:	20000680 	.word	0x20000680

00003344 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3344:	b510      	push	{r4, lr}
    3346:	4604      	mov	r4, r0
    frame_sync();
    3348:	f7ff ffec 	bl	3324 <frame_sync>
    video_mode=mode;
    334c:	4b0e      	ldr	r3, [pc, #56]	; (3388 <set_video_mode+0x44>)
    334e:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3350:	b1ac      	cbz	r4, 337e <set_video_mode+0x3a>
    3352:	2200      	movs	r2, #0
    3354:	4b0d      	ldr	r3, [pc, #52]	; (338c <set_video_mode+0x48>)
    3356:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3358:	4b0d      	ldr	r3, [pc, #52]	; (3390 <set_video_mode+0x4c>)
    335a:	480e      	ldr	r0, [pc, #56]	; (3394 <set_video_mode+0x50>)
    335c:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    3360:	8842      	ldrh	r2, [r0, #2]
    3362:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3364:	8882      	ldrh	r2, [r0, #4]
    3366:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    3368:	88c2      	ldrh	r2, [r0, #6]
    336a:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    336c:	7a02      	ldrb	r2, [r0, #8]
    336e:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    3370:	7a42      	ldrb	r2, [r0, #9]
    3372:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    3374:	7a82      	ldrb	r2, [r0, #10]
    3376:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    3378:	f7fe f930 	bl	15dc <gfx_cls>
    337c:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    337e:	2202      	movs	r2, #2
    3380:	4b02      	ldr	r3, [pc, #8]	; (338c <set_video_mode+0x48>)
    3382:	701a      	strb	r2, [r3, #0]
    3384:	e7e8      	b.n	3358 <set_video_mode+0x14>
    3386:	bf00      	nop
    3388:	20000680 	.word	0x20000680
    338c:	20000190 	.word	0x20000190
    3390:	200001ec 	.word	0x200001ec
    3394:	00003b70 	.word	0x00003b70

00003398 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    3398:	4b02      	ldr	r3, [pc, #8]	; (33a4 <get_video_params+0xc>)
    339a:	7a18      	ldrb	r0, [r3, #8]
}
    339c:	4b02      	ldr	r3, [pc, #8]	; (33a8 <get_video_params+0x10>)
    339e:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    33a2:	4770      	bx	lr
    33a4:	20000680 	.word	0x20000680
    33a8:	00003b70 	.word	0x00003b70

000033ac <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    33ac:	4b03      	ldr	r3, [pc, #12]	; (33bc <game_pause+0x10>)
    33ae:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    33b0:	461a      	mov	r2, r3
    33b2:	8813      	ldrh	r3, [r2, #0]
    33b4:	b29b      	uxth	r3, r3
    33b6:	2b00      	cmp	r3, #0
    33b8:	d1fb      	bne.n	33b2 <game_pause+0x6>
}
    33ba:	4770      	bx	lr
    33bc:	20004e1c 	.word	0x20004e1c

000033c0 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    33c0:	4b03      	ldr	r3, [pc, #12]	; (33d0 <micro_pause+0x10>)
    33c2:	681b      	ldr	r3, [r3, #0]
    33c4:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    33c6:	4a02      	ldr	r2, [pc, #8]	; (33d0 <micro_pause+0x10>)
    33c8:	6813      	ldr	r3, [r2, #0]
    33ca:	4298      	cmp	r0, r3
    33cc:	d8fc      	bhi.n	33c8 <micro_pause+0x8>
}
    33ce:	4770      	bx	lr
    33d0:	20004e20 	.word	0x20004e20

000033d4 <usart_config_port>:
#define _usart_select(n)  USART##n_
#define _usart_sfr_sel(n,s) USART##n_##s 

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    33d4:	4b3b      	ldr	r3, [pc, #236]	; (34c4 <usart_config_port+0xf0>)
    33d6:	4298      	cmp	r0, r3
    33d8:	d057      	beq.n	348a <usart_config_port+0xb6>
    33da:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    33de:	4298      	cmp	r0, r3
    33e0:	d004      	beq.n	33ec <usart_config_port+0x18>
    33e2:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    33e6:	4298      	cmp	r0, r3
    33e8:	d032      	beq.n	3450 <usart_config_port+0x7c>
    33ea:	4770      	bx	lr
	case (uint32_t)USART1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    33ec:	4836      	ldr	r0, [pc, #216]	; (34c8 <usart_config_port+0xf4>)
    33ee:	6983      	ldr	r3, [r0, #24]
    33f0:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    33f4:	f043 0304 	orr.w	r3, r3, #4
    33f8:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    33fa:	2a01      	cmp	r2, #1
    33fc:	d016      	beq.n	342c <usart_config_port+0x58>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    33fe:	4b33      	ldr	r3, [pc, #204]	; (34cc <usart_config_port+0xf8>)
    3400:	4299      	cmp	r1, r3
    3402:	d01c      	beq.n	343e <usart_config_port+0x6a>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3404:	4a32      	ldr	r2, [pc, #200]	; (34d0 <usart_config_port+0xfc>)
    3406:	6853      	ldr	r3, [r2, #4]
    3408:	f043 0304 	orr.w	r3, r3, #4
    340c:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    340e:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    3412:	6993      	ldr	r3, [r2, #24]
    3414:	f043 0308 	orr.w	r3, r3, #8
    3418:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    341a:	680b      	ldr	r3, [r1, #0]
    341c:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3420:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    3422:	680b      	ldr	r3, [r1, #0]
    3424:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    3428:	600b      	str	r3, [r1, #0]
    342a:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    342c:	684b      	ldr	r3, [r1, #4]
    342e:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    3432:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3434:	684b      	ldr	r3, [r1, #4]
    3436:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    343a:	604b      	str	r3, [r1, #4]
    343c:	e7df      	b.n	33fe <usart_config_port+0x2a>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    343e:	685a      	ldr	r2, [r3, #4]
    3440:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3444:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    3446:	685a      	ldr	r2, [r3, #4]
    3448:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    344c:	605a      	str	r2, [r3, #4]
    344e:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3450:	4b1d      	ldr	r3, [pc, #116]	; (34c8 <usart_config_port+0xf4>)
    3452:	69d8      	ldr	r0, [r3, #28]
    3454:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3458:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    345a:	6998      	ldr	r0, [r3, #24]
    345c:	f040 0004 	orr.w	r0, r0, #4
    3460:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    3462:	2a01      	cmp	r2, #1
    3464:	d008      	beq.n	3478 <usart_config_port+0xa4>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    3466:	680b      	ldr	r3, [r1, #0]
    3468:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    346c:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    346e:	680b      	ldr	r3, [r1, #0]
    3470:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3474:	600b      	str	r3, [r1, #0]
    3476:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3478:	680b      	ldr	r3, [r1, #0]
    347a:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    347e:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    3480:	680b      	ldr	r3, [r1, #0]
    3482:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    3486:	600b      	str	r3, [r1, #0]
    3488:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    348a:	4b0f      	ldr	r3, [pc, #60]	; (34c8 <usart_config_port+0xf4>)
    348c:	69d8      	ldr	r0, [r3, #28]
    348e:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    3492:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3494:	6998      	ldr	r0, [r3, #24]
    3496:	f040 0008 	orr.w	r0, r0, #8
    349a:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    349c:	2a01      	cmp	r2, #1
    349e:	d008      	beq.n	34b2 <usart_config_port+0xde>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    34a0:	684b      	ldr	r3, [r1, #4]
    34a2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    34a6:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    34a8:	684b      	ldr	r3, [r1, #4]
    34aa:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    34ae:	604b      	str	r3, [r1, #4]
		}
		break;
	}
}
    34b0:	e79b      	b.n	33ea <usart_config_port+0x16>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    34b2:	684b      	ldr	r3, [r1, #4]
    34b4:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    34b8:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    34ba:	684b      	ldr	r3, [r1, #4]
    34bc:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    34c0:	604b      	str	r3, [r1, #4]
    34c2:	4770      	bx	lr
    34c4:	40004800 	.word	0x40004800
    34c8:	40021000 	.word	0x40021000
    34cc:	40010800 	.word	0x40010800
    34d0:	40010000 	.word	0x40010000

000034d4 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    34d4:	4b04      	ldr	r3, [pc, #16]	; (34e8 <usart_set_baud+0x14>)
    34d6:	4298      	cmp	r0, r3
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
    34d8:	bf0c      	ite	eq
    34da:	4b04      	ldreq	r3, [pc, #16]	; (34ec <usart_set_baud+0x18>)
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    34dc:	4b04      	ldrne	r3, [pc, #16]	; (34f0 <usart_set_baud+0x1c>)
    34de:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channel->BRR=rate;
    34e2:	6081      	str	r1, [r0, #8]
    34e4:	4770      	bx	lr
    34e6:	bf00      	nop
    34e8:	40013800 	.word	0x40013800
    34ec:	044463f4 	.word	0x044463f4
    34f0:	022231fa 	.word	0x022231fa

000034f4 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
	channel->CR1&=USART_CR1_DIR_MASK;
    34f4:	68c3      	ldr	r3, [r0, #12]
    34f6:	f023 030c 	bic.w	r3, r3, #12
    34fa:	60c3      	str	r3, [r0, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    34fc:	68c3      	ldr	r3, [r0, #12]
    34fe:	ea43 0181 	orr.w	r1, r3, r1, lsl #2
    3502:	60c1      	str	r1, [r0, #12]
    3504:	4770      	bx	lr

00003506 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    3506:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    350a:	4604      	mov	r4, r0
    350c:	460f      	mov	r7, r1
    350e:	4615      	mov	r5, r2
    3510:	4698      	mov	r8, r3
    3512:	9e07      	ldr	r6, [sp, #28]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    3514:	4b2e      	ldr	r3, [pc, #184]	; (35d0 <usart_open_channel+0xca>)
    3516:	4298      	cmp	r0, r3
    3518:	d03e      	beq.n	3598 <usart_open_channel+0x92>
    351a:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    351e:	4298      	cmp	r0, r3
    3520:	d01b      	beq.n	355a <usart_open_channel+0x54>
    3522:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    3526:	4298      	cmp	r0, r3
    3528:	d02a      	beq.n	3580 <usart_open_channel+0x7a>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    352a:	2e01      	cmp	r6, #1
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    352c:	bf04      	itt	eq
    352e:	f44f 7340 	moveq.w	r3, #768	; 0x300
    3532:	6163      	streq	r3, [r4, #20]
	}
	usart_comm_dir(channel,dir);
    3534:	4641      	mov	r1, r8
    3536:	4620      	mov	r0, r4
    3538:	f7ff ffdc 	bl	34f4 <usart_comm_dir>
	switch (parity){
    353c:	2d01      	cmp	r5, #1
    353e:	d03c      	beq.n	35ba <usart_open_channel+0xb4>
    3540:	b3b5      	cbz	r5, 35b0 <usart_open_channel+0xaa>
    3542:	2d02      	cmp	r5, #2
    3544:	d03e      	beq.n	35c4 <usart_open_channel+0xbe>
		break;
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3546:	4639      	mov	r1, r7
    3548:	4620      	mov	r0, r4
    354a:	f7ff ffc3 	bl	34d4 <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    354e:	68e3      	ldr	r3, [r4, #12]
    3550:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3554:	60e3      	str	r3, [r4, #12]
    3556:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    355a:	9b06      	ldr	r3, [sp, #24]
    355c:	b95b      	cbnz	r3, 3576 <usart_open_channel+0x70>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    355e:	4632      	mov	r2, r6
    3560:	491c      	ldr	r1, [pc, #112]	; (35d4 <usart_open_channel+0xce>)
    3562:	f7ff ff37 	bl	33d4 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    3566:	2107      	movs	r1, #7
    3568:	2025      	movs	r0, #37	; 0x25
    356a:	f7fe fd65 	bl	2038 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    356e:	2025      	movs	r0, #37	; 0x25
    3570:	f7fe fd02 	bl	1f78 <enable_interrupt>
		break;
    3574:	e7d9      	b.n	352a <usart_open_channel+0x24>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    3576:	4632      	mov	r2, r6
    3578:	4917      	ldr	r1, [pc, #92]	; (35d8 <usart_open_channel+0xd2>)
    357a:	f7ff ff2b 	bl	33d4 <usart_config_port>
    357e:	e7f2      	b.n	3566 <usart_open_channel+0x60>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    3580:	4632      	mov	r2, r6
    3582:	4914      	ldr	r1, [pc, #80]	; (35d4 <usart_open_channel+0xce>)
    3584:	f7ff ff26 	bl	33d4 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    3588:	2107      	movs	r1, #7
    358a:	2026      	movs	r0, #38	; 0x26
    358c:	f7fe fd54 	bl	2038 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    3590:	2026      	movs	r0, #38	; 0x26
    3592:	f7fe fcf1 	bl	1f78 <enable_interrupt>
		break;
    3596:	e7c8      	b.n	352a <usart_open_channel+0x24>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    3598:	4632      	mov	r2, r6
    359a:	490f      	ldr	r1, [pc, #60]	; (35d8 <usart_open_channel+0xd2>)
    359c:	f7ff ff1a 	bl	33d4 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    35a0:	2107      	movs	r1, #7
    35a2:	2027      	movs	r0, #39	; 0x27
    35a4:	f7fe fd48 	bl	2038 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    35a8:	2027      	movs	r0, #39	; 0x27
    35aa:	f7fe fce5 	bl	1f78 <enable_interrupt>
		break;
    35ae:	e7bc      	b.n	352a <usart_open_channel+0x24>
		channel->CR1|=USART_CR1_RXNEIE;
    35b0:	68e3      	ldr	r3, [r4, #12]
    35b2:	f043 0320 	orr.w	r3, r3, #32
    35b6:	60e3      	str	r3, [r4, #12]
		break;
    35b8:	e7c5      	b.n	3546 <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    35ba:	68e3      	ldr	r3, [r4, #12]
    35bc:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    35c0:	60e3      	str	r3, [r4, #12]
		break;
    35c2:	e7c0      	b.n	3546 <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    35c4:	68e3      	ldr	r3, [r4, #12]
    35c6:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    35ca:	60e3      	str	r3, [r4, #12]
		break;
    35cc:	e7bb      	b.n	3546 <usart_open_channel+0x40>
    35ce:	bf00      	nop
    35d0:	40004800 	.word	0x40004800
    35d4:	40010800 	.word	0x40010800
    35d8:	40010c00 	.word	0x40010c00

000035dc <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
	return channel->SR&USART_SR_RXNE;
    35dc:	6800      	ldr	r0, [r0, #0]
}
    35de:	f000 0020 	and.w	r0, r0, #32
    35e2:	4770      	bx	lr

000035e4 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
	if (channel->SR&USART_SR_RXNE){
    35e4:	6803      	ldr	r3, [r0, #0]
    35e6:	f013 0320 	ands.w	r3, r3, #32
		return channel->DR;
    35ea:	bf18      	it	ne
    35ec:	6843      	ldrne	r3, [r0, #4]
	}else{
		return 0;
	}
		
}
    35ee:	b2d8      	uxtb	r0, r3
    35f0:	4770      	bx	lr

000035f2 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
	unsigned t0=ntsc_ticks+dly;
    35f2:	4b09      	ldr	r3, [pc, #36]	; (3618 <usart_getc_dly+0x26>)
    35f4:	681b      	ldr	r3, [r3, #0]
    35f6:	4419      	add	r1, r3
	
	while ((ntsc_ticks<t0) && !(channel->SR&USART_SR_RXNE));
    35f8:	4a07      	ldr	r2, [pc, #28]	; (3618 <usart_getc_dly+0x26>)
    35fa:	6813      	ldr	r3, [r2, #0]
    35fc:	4299      	cmp	r1, r3
    35fe:	d903      	bls.n	3608 <usart_getc_dly+0x16>
    3600:	6803      	ldr	r3, [r0, #0]
    3602:	f013 0f20 	tst.w	r3, #32
    3606:	d0f8      	beq.n	35fa <usart_getc_dly+0x8>
	if (ntsc_ticks<t0) return channel->DR; else return 0;
    3608:	4b03      	ldr	r3, [pc, #12]	; (3618 <usart_getc_dly+0x26>)
    360a:	681b      	ldr	r3, [r3, #0]
    360c:	4299      	cmp	r1, r3
    360e:	bf8c      	ite	hi
    3610:	6840      	ldrhi	r0, [r0, #4]
    3612:	2000      	movls	r0, #0
}
    3614:	b2c0      	uxtb	r0, r0
    3616:	4770      	bx	lr
    3618:	20004e20 	.word	0x20004e20

0000361c <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    361c:	6803      	ldr	r3, [r0, #0]
    361e:	f013 0f80 	tst.w	r3, #128	; 0x80
    3622:	d0fb      	beq.n	361c <usart_putc>
	channel->DR=c;
    3624:	6041      	str	r1, [r0, #4]
    3626:	4770      	bx	lr

00003628 <usart_cts>:
}


int usart_cts(usart_t* channel){
	int cts;
	switch ((uint32_t)channel){
    3628:	4b0d      	ldr	r3, [pc, #52]	; (3660 <usart_cts+0x38>)
    362a:	4298      	cmp	r0, r3
    362c:	d013      	beq.n	3656 <usart_cts+0x2e>
    362e:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3632:	4298      	cmp	r0, r3
    3634:	d005      	beq.n	3642 <usart_cts+0x1a>
    3636:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    363a:	4298      	cmp	r0, r3
    363c:	d006      	beq.n	364c <usart_cts+0x24>
    363e:	2000      	movs	r0, #0
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3640:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    3642:	4b08      	ldr	r3, [pc, #32]	; (3664 <usart_cts+0x3c>)
    3644:	6898      	ldr	r0, [r3, #8]
    3646:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    364a:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    364c:	4b05      	ldr	r3, [pc, #20]	; (3664 <usart_cts+0x3c>)
    364e:	6898      	ldr	r0, [r3, #8]
    3650:	f000 0001 	and.w	r0, r0, #1
			break;
    3654:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    3656:	4b04      	ldr	r3, [pc, #16]	; (3668 <usart_cts+0x40>)
    3658:	6898      	ldr	r0, [r3, #8]
    365a:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    365e:	4770      	bx	lr
    3660:	40004800 	.word	0x40004800
    3664:	40010800 	.word	0x40010800
    3668:	40010c00 	.word	0x40010c00

0000366c <usart_print>:

void usart_print(usart_t* channel, const char *str){
    366c:	b538      	push	{r3, r4, r5, lr}
    366e:	4605      	mov	r5, r0
    3670:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    3672:	7809      	ldrb	r1, [r1, #0]
    3674:	b131      	cbz	r1, 3684 <usart_print+0x18>
    3676:	4628      	mov	r0, r5
    3678:	f7ff ffd0 	bl	361c <usart_putc>
    367c:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    3680:	2900      	cmp	r1, #0
    3682:	d1f8      	bne.n	3676 <usart_print+0xa>
    3684:	bd38      	pop	{r3, r4, r5, pc}
    3686:	bf00      	nop
