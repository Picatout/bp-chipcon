
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 95 2a 00 00     .P. 1........*..
      10:	95 2a 00 00 95 2a 00 00 95 2a 00 00 95 2a 00 00     .*...*...*...*..
      20:	95 2a 00 00 95 2a 00 00 95 2a 00 00 09 02 00 00     .*...*...*......
      30:	95 2a 00 00 95 2a 00 00 0d 02 00 00 11 02 00 00     .*...*..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 a7 27 00 00     ........!....'..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 95 2a 00 00 95 2a 00 00 49 02 00 00     E....*...*..I...
      80:	95 2a 00 00 95 2a 00 00 95 2a 00 00 95 2a 00 00     .*...*...*...*..
      90:	95 2a 00 00 95 2a 00 00 95 2a 00 00 4d 02 00 00     .*...*...*..M...
      a0:	95 2a 00 00 e1 30 00 00 95 2a 00 00 f9 2f 00 00     .*...0...*.../..
      b0:	bd 28 00 00 51 02 00 00 55 02 00 00 95 2a 00 00     .(..Q...U....*..
      c0:	95 2a 00 00 95 2a 00 00 95 2a 00 00 95 2a 00 00     .*...*...*...*..
      d0:	95 2a 00 00 cb 36 00 00 5d 02 00 00 61 02 00 00     .*...6..]...a...
      e0:	95 2a 00 00 95 2a 00 00 95 2a 00 00 95 2a 00 00     .*...*...*...*..
      f0:	95 2a 00 00 95 2a 00 00 95 2a 00 00 95 2a 00 00     .*...*...*...*..
     100:	95 2a 00 00 95 2a 00 00 95 2a 00 00 95 2a 00 00     .*...*...*...*..
     110:	95 2a 00 00 95 2a 00 00 95 2a 00 00 95 2a 00 00     .*...*...*...*..
     120:	95 2a 00 00 95 2a 00 00 95 2a 00 00 95 2a 00 00     .*...*...*...*..

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
     186:	f001 fc99 	bl	1abc <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e56 	.word	0x20004e56
     190:	20000212 	.word	0x20000212
     194:	20004e55 	.word	0x20004e55
     198:	20000212 	.word	0x20000212
     19c:	20000000 	.word	0x20000000
     1a0:	000094ec 	.word	0x000094ec
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
     1da:	f002 fc63 	bl	2aa4 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fc60 	bl	2aa4 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fc5d 	bl	2aa4 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fc5a 	bl	2aa4 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003ed8 	.word	0x00003ed8
     1f8:	00003eb4 	.word	0x00003eb4
     1fc:	00003ecc 	.word	0x00003ecc
     200:	00003ee8 	.word	0x00003ee8

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fc46 	bl	2a94 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fc44 	bl	2a94 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fc42 	bl	2a94 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fc40 	bl	2a94 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fc3e 	bl	2a94 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fc3c 	bl	2a94 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fc3a 	bl	2a94 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fc38 	bl	2a94 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fc36 	bl	2a94 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fc34 	bl	2a94 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fc32 	bl	2a94 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fc30 	bl	2a94 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fc2e 	bl	2a94 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fc2c 	bl	2a94 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fc2a 	bl	2a94 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fc28 	bl	2a94 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fc26 	bl	2a94 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fc24 	bl	2a94 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fc22 	bl	2a94 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fc20 	bl	2a94 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fc1e 	bl	2a94 <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 fc1c 	bl	2a94 <reset_mcu>

0000025c <USART2_handler>:
_default_handler(USART2_handler) // 38
     25c:	f002 fc1a 	bl	2a94 <reset_mcu>

00000260 <USART3_handler>:
_default_handler(USART3_handler) // 39
     260:	f002 fc18 	bl	2a94 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fc16 	bl	2a94 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fc14 	bl	2a94 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fc12 	bl	2a94 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fc10 	bl	2a94 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fc0e 	bl	2a94 <reset_mcu>

00000278 <basic>:
#include "graphics.h"
#include "gamepad.h"
#include "text.h"
#include "basic.h"

void basic(){
     278:	b508      	push	{r3, lr}
    gfx_cls();
     27a:	f001 f9b1 	bl	15e0 <gfx_cls>
    print("not done yet\n");
     27e:	4804      	ldr	r0, [pc, #16]	; (290 <basic+0x18>)
     280:	f002 fd7a 	bl	2d78 <print>
    prompt_btn();
     284:	f002 fddd 	bl	2e42 <prompt_btn>
    btn_wait_any();
     288:	f000 ff48 	bl	111c <btn_wait_any>
     28c:	bd08      	pop	{r3, pc}
     28e:	bf00      	nop
     290:	00003c20 	.word	0x00003c20

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
     332:	f002 fc31 	bl	2b98 <get_font>
     336:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     338:	2002      	movs	r0, #2
     33a:	f002 fc27 	bl	2b8c <select_font>
	new_line();
     33e:	f002 fc31 	bl	2ba4 <new_line>
	print(msg);
     342:	4628      	mov	r0, r5
     344:	f002 fd18 	bl	2d78 <print>
	switch(error_code){
     348:	2c02      	cmp	r4, #2
     34a:	d039      	beq.n	3c0 <print_vms+0x94>
     34c:	2c03      	cmp	r4, #3
     34e:	d102      	bne.n	356 <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     350:	481d      	ldr	r0, [pc, #116]	; (3c8 <print_vms+0x9c>)
     352:	f002 fd11 	bl	2d78 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     356:	481d      	ldr	r0, [pc, #116]	; (3cc <print_vms+0xa0>)
     358:	f002 fd0e 	bl	2d78 <print>
	print_hex(vms.pc-2);
     35c:	4d1c      	ldr	r5, [pc, #112]	; (3d0 <print_vms+0xa4>)
     35e:	8828      	ldrh	r0, [r5, #0]
     360:	2110      	movs	r1, #16
     362:	3802      	subs	r0, #2
     364:	f002 fd23 	bl	2dae <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     368:	7da8      	ldrb	r0, [r5, #22]
     36a:	7deb      	ldrb	r3, [r5, #23]
     36c:	2110      	movs	r1, #16
     36e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     372:	f002 fd1c 	bl	2dae <print_int>
	new_line();
     376:	f002 fc15 	bl	2ba4 <new_line>
	print("I:");
     37a:	4816      	ldr	r0, [pc, #88]	; (3d4 <print_vms+0xa8>)
     37c:	f002 fcfc 	bl	2d78 <print>
	print_hex(vms.ix);
     380:	2110      	movs	r1, #16
     382:	8868      	ldrh	r0, [r5, #2]
     384:	f002 fd13 	bl	2dae <print_int>
	print(" SP:");
     388:	4813      	ldr	r0, [pc, #76]	; (3d8 <print_vms+0xac>)
     38a:	f002 fcf5 	bl	2d78 <print>
	print_hex(vms.sp);
     38e:	2110      	movs	r1, #16
     390:	7928      	ldrb	r0, [r5, #4]
     392:	f002 fd0c 	bl	2dae <print_int>
	new_line();
     396:	f002 fc05 	bl	2ba4 <new_line>
	print("var[]:");
     39a:	4810      	ldr	r0, [pc, #64]	; (3dc <print_vms+0xb0>)
     39c:	f002 fcec 	bl	2d78 <print>
     3a0:	1dac      	adds	r4, r5, #6
     3a2:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     3a4:	2610      	movs	r6, #16
     3a6:	4631      	mov	r1, r6
     3a8:	f814 0b01 	ldrb.w	r0, [r4], #1
     3ac:	f002 fcff 	bl	2dae <print_int>
	for (int i=0;i<16;i++){
     3b0:	42ac      	cmp	r4, r5
     3b2:	d1f8      	bne.n	3a6 <print_vms+0x7a>
	}
	new_line();
     3b4:	f002 fbf6 	bl	2ba4 <new_line>
	select_font(orig_font);
     3b8:	4638      	mov	r0, r7
     3ba:	f002 fbe7 	bl	2b8c <select_font>
     3be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3c0:	4807      	ldr	r0, [pc, #28]	; (3e0 <print_vms+0xb4>)
     3c2:	f002 fcd9 	bl	2d78 <print>
		break;
     3c6:	e7c6      	b.n	356 <print_vms+0x2a>
     3c8:	00003c30 	.word	0x00003c30
     3cc:	00003c58 	.word	0x00003c58
     3d0:	20000214 	.word	0x20000214
     3d4:	00003c5c 	.word	0x00003c5c
     3d8:	00003c60 	.word	0x00003c60
     3dc:	00003c68 	.word	0x00003c68
     3e0:	00003c44 	.word	0x00003c44

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
     40c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
     410:	b088      	sub	sp, #32
#define SLOW_DOWN 5
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
	char buffer[24];

	vms.pc=program_address;
     412:	4b9a      	ldr	r3, [pc, #616]	; (67c <chip_vm+0x270>)
     414:	8018      	strh	r0, [r3, #0]
	vms.sp=0;
     416:	2200      	movs	r2, #0
     418:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     41a:	805a      	strh	r2, [r3, #2]
 	while (exit_code==CHIP_CONTINUE){
		if (vms.pc>=GAME_SPACE){
     41c:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
     420:	f080 8423 	bcs.w	c6a <chip_vm+0x85e>
     424:	460d      	mov	r5, r1
			prompt_btn();
			select_console(LOCAL);
			btn_wait_any();
			break;
		}//switch(dbg_level)
		x=rx(vms.b1);
     426:	461c      	mov	r4, r3
				block[0]=n/10;
				//store_block(vms.ix,3,block);
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
				break;
			case 0x55: // FX55  LD [I], VX  save registers V0..VX in ram pointed by I
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     428:	1d9e      	adds	r6, r3, #6
				block[0]=n/10;
     42a:	f8df a268 	ldr.w	sl, [pc, #616]	; 694 <chip_vm+0x288>
     42e:	e13b      	b.n	6a8 <chip_vm+0x29c>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     430:	2d00      	cmp	r5, #0
     432:	f040 813e 	bne.w	6b2 <chip_vm+0x2a6>
     436:	2005      	movs	r0, #5
     438:	f002 ffce 	bl	33d8 <micro_pause>
		_get_opcode(vms.pc);
     43c:	8823      	ldrh	r3, [r4, #0]
     43e:	4a90      	ldr	r2, [pc, #576]	; (680 <chip_vm+0x274>)
     440:	5cd1      	ldrb	r1, [r2, r3]
     442:	75a1      	strb	r1, [r4, #22]
     444:	441a      	add	r2, r3
     446:	7852      	ldrb	r2, [r2, #1]
     448:	75e2      	strb	r2, [r4, #23]
		vms.pc+=2;
     44a:	3302      	adds	r3, #2
     44c:	8023      	strh	r3, [r4, #0]
     44e:	e019      	b.n	484 <chip_vm+0x78>
			_debug_print(itoa(vms.pc-2,buffer,16));
     450:	2210      	movs	r2, #16
     452:	a902      	add	r1, sp, #8
     454:	3802      	subs	r0, #2
     456:	f000 ffbf 	bl	13d8 <itoa>
     45a:	4f8a      	ldr	r7, [pc, #552]	; (684 <chip_vm+0x278>)
     45c:	4601      	mov	r1, r0
     45e:	4638      	mov	r0, r7
     460:	f003 f926 	bl	36b0 <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     464:	7da0      	ldrb	r0, [r4, #22]
     466:	7de3      	ldrb	r3, [r4, #23]
     468:	2210      	movs	r2, #16
     46a:	a902      	add	r1, sp, #8
     46c:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     470:	f000 ffb2 	bl	13d8 <itoa>
     474:	4601      	mov	r1, r0
     476:	4638      	mov	r0, r7
     478:	f003 f91a 	bl	36b0 <usart_print>
			_debug_print("\n");
     47c:	4982      	ldr	r1, [pc, #520]	; (688 <chip_vm+0x27c>)
     47e:	4638      	mov	r0, r7
     480:	f003 f916 	bl	36b0 <usart_print>
		x=rx(vms.b1);
     484:	7da2      	ldrb	r2, [r4, #22]
     486:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     48a:	7de3      	ldrb	r3, [r4, #23]
     48c:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     490:	0911      	lsrs	r1, r2, #4
     492:	290f      	cmp	r1, #15
     494:	f200 8103 	bhi.w	69e <chip_vm+0x292>
     498:	e8df f011 	tbh	[pc, r1, lsl #1]
     49c:	0080002a 	.word	0x0080002a
     4a0:	00a0008c 	.word	0x00a0008c
     4a4:	00b200a9 	.word	0x00b200a9
     4a8:	014c00fe 	.word	0x014c00fe
     4ac:	01d30158 	.word	0x01d30158
     4b0:	02ae02a1 	.word	0x02ae02a1
     4b4:	02c602be 	.word	0x02c602be
     4b8:	03260308 	.word	0x03260308
			select_console(SERIAL);
     4bc:	2001      	movs	r0, #1
     4be:	f002 fd17 	bl	2ef0 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4c2:	2100      	movs	r1, #0
     4c4:	4871      	ldr	r0, [pc, #452]	; (68c <chip_vm+0x280>)
     4c6:	f7ff ff31 	bl	32c <print_vms>
			select_console(LOCAL);
     4ca:	2000      	movs	r0, #0
     4cc:	f002 fd10 	bl	2ef0 <select_console>
			break;
     4d0:	e7d8      	b.n	484 <chip_vm+0x78>
			select_console(SERIAL);
     4d2:	2001      	movs	r0, #1
     4d4:	f002 fd0c 	bl	2ef0 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4d8:	2100      	movs	r1, #0
     4da:	486c      	ldr	r0, [pc, #432]	; (68c <chip_vm+0x280>)
     4dc:	f7ff ff26 	bl	32c <print_vms>
			prompt_btn();
     4e0:	f002 fcaf 	bl	2e42 <prompt_btn>
			select_console(LOCAL);
     4e4:	2000      	movs	r0, #0
     4e6:	f002 fd03 	bl	2ef0 <select_console>
			btn_wait_any();
     4ea:	f000 fe17 	bl	111c <btn_wait_any>
			break;
     4ee:	e7c9      	b.n	484 <chip_vm+0x78>
		    if ((vms.b1|vms.b2)==0){
     4f0:	431a      	orrs	r2, r3
     4f2:	f000 80d4 	beq.w	69e <chip_vm+0x292>
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
     50c:	002a002d 	.word	0x002a002d
     510:	002a002a 	.word	0x002a002a
     514:	002a002a 	.word	0x002a002a
     518:	002a002a 	.word	0x002a002a
     51c:	002a002a 	.word	0x002a002a
     520:	002a002a 	.word	0x002a002a
     524:	002a002a 	.word	0x002a002a
     528:	002a0030 	.word	0x002a0030
     52c:	002a002a 	.word	0x002a002a
     530:	002a002a 	.word	0x002a002a
     534:	002a002a 	.word	0x002a002a
     538:	002a002a 	.word	0x002a002a
     53c:	002a002a 	.word	0x002a002a
     540:	00380044 	.word	0x00380044
     544:	03c1003c 	.word	0x03c1003c
     548:	004003a6 	.word	0x004003a6
				gfx_scroll_down(vms.b2&0xf); 
     54c:	f003 000f 	and.w	r0, r3, #15
     550:	f001 f880 	bl	1654 <gfx_scroll_down>
     554:	e0a3      	b.n	69e <chip_vm+0x292>
				gfx_scroll_up(vms.b2&0xf);					
     556:	f003 000f 	and.w	r0, r3, #15
     55a:	f001 f855 	bl	1608 <gfx_scroll_up>
     55e:	e09e      	b.n	69e <chip_vm+0x292>
					exit_code=CHIP_BAD_OPCODE;
     560:	f04f 0802 	mov.w	r8, #2
     564:	e386      	b.n	c74 <chip_vm+0x868>
					gfx_cls();
     566:	f001 f83b 	bl	15e0 <gfx_cls>
					break;
     56a:	e098      	b.n	69e <chip_vm+0x292>
					vms.pc=vms.stack[vms.sp--];
     56c:	7923      	ldrb	r3, [r4, #4]
     56e:	1e5a      	subs	r2, r3, #1
     570:	7122      	strb	r2, [r4, #4]
     572:	330c      	adds	r3, #12
     574:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     578:	8023      	strh	r3, [r4, #0]
					break;
     57a:	e090      	b.n	69e <chip_vm+0x292>
					gfx_scroll_right(4);
     57c:	2004      	movs	r0, #4
     57e:	f001 f8bb 	bl	16f8 <gfx_scroll_right>
					break;
     582:	e08c      	b.n	69e <chip_vm+0x292>
					gfx_scroll_left(4);
     584:	2004      	movs	r0, #4
     586:	f001 f889 	bl	169c <gfx_scroll_left>
					break;
     58a:	e088      	b.n	69e <chip_vm+0x292>
					set_video_mode(VM_SCHIP);
     58c:	2001      	movs	r0, #1
     58e:	f002 fee5 	bl	335c <set_video_mode>
					break; 
     592:	e084      	b.n	69e <chip_vm+0x292>
					set_video_mode(VM_BPCHIP);
     594:	2000      	movs	r0, #0
     596:	f002 fee1 	bl	335c <set_video_mode>
					break;
     59a:	e080      	b.n	69e <chip_vm+0x292>
			vms.pc=caddr(vms.b1,vms.b2);
     59c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5a0:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5a4:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5a6:	4a3a      	ldr	r2, [pc, #232]	; (690 <chip_vm+0x284>)
     5a8:	7812      	ldrb	r2, [r2, #0]
     5aa:	2a00      	cmp	r2, #0
     5ac:	d177      	bne.n	69e <chip_vm+0x292>
				vms.pc<<=1;
     5ae:	005b      	lsls	r3, r3, #1
     5b0:	8023      	strh	r3, [r4, #0]
     5b2:	e074      	b.n	69e <chip_vm+0x292>
			vms.stack[++vms.sp]=vms.pc;
     5b4:	7921      	ldrb	r1, [r4, #4]
     5b6:	3101      	adds	r1, #1
     5b8:	b2c9      	uxtb	r1, r1
     5ba:	7121      	strb	r1, [r4, #4]
     5bc:	310c      	adds	r1, #12
     5be:	8820      	ldrh	r0, [r4, #0]
     5c0:	f824 0011 	strh.w	r0, [r4, r1, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     5c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5c8:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5cc:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5ce:	4a30      	ldr	r2, [pc, #192]	; (690 <chip_vm+0x284>)
     5d0:	7812      	ldrb	r2, [r2, #0]
     5d2:	2a00      	cmp	r2, #0
     5d4:	d163      	bne.n	69e <chip_vm+0x292>
				vms.pc<<=1;
     5d6:	005b      	lsls	r3, r3, #1
     5d8:	8023      	strh	r3, [r4, #0]
     5da:	e060      	b.n	69e <chip_vm+0x292>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     5dc:	44a0      	add	r8, r4
     5de:	f898 2006 	ldrb.w	r2, [r8, #6]
     5e2:	429a      	cmp	r2, r3
     5e4:	d15b      	bne.n	69e <chip_vm+0x292>
     5e6:	8823      	ldrh	r3, [r4, #0]
     5e8:	3302      	adds	r3, #2
     5ea:	8023      	strh	r3, [r4, #0]
     5ec:	e057      	b.n	69e <chip_vm+0x292>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     5ee:	44a0      	add	r8, r4
     5f0:	f898 2006 	ldrb.w	r2, [r8, #6]
     5f4:	429a      	cmp	r2, r3
     5f6:	d052      	beq.n	69e <chip_vm+0x292>
     5f8:	8823      	ldrh	r3, [r4, #0]
     5fa:	3302      	adds	r3, #2
     5fc:	8023      	strh	r3, [r4, #0]
     5fe:	e04e      	b.n	69e <chip_vm+0x292>
			switch(vms.b2&0xf){
     600:	f003 030f 	and.w	r3, r3, #15
     604:	2b02      	cmp	r3, #2
     606:	d015      	beq.n	634 <chip_vm+0x228>
     608:	2b03      	cmp	r3, #3
     60a:	d025      	beq.n	658 <chip_vm+0x24c>
     60c:	b133      	cbz	r3, 61c <chip_vm+0x210>
     60e:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     612:	f1b8 0f00 	cmp.w	r8, #0
     616:	f040 832d 	bne.w	c74 <chip_vm+0x868>
     61a:	e040      	b.n	69e <chip_vm+0x292>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     61c:	44a0      	add	r8, r4
     61e:	44a1      	add	r9, r4
     620:	f898 2006 	ldrb.w	r2, [r8, #6]
     624:	f899 3006 	ldrb.w	r3, [r9, #6]
     628:	429a      	cmp	r2, r3
     62a:	d138      	bne.n	69e <chip_vm+0x292>
     62c:	8823      	ldrh	r3, [r4, #0]
     62e:	3302      	adds	r3, #2
     630:	8023      	strh	r3, [r4, #0]
     632:	e034      	b.n	69e <chip_vm+0x292>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     634:	4640      	mov	r0, r8
     636:	45c8      	cmp	r8, r9
     638:	bf28      	it	cs
     63a:	4648      	movcs	r0, r9
     63c:	eba9 0208 	sub.w	r2, r9, r8
     640:	2a00      	cmp	r2, #0
     642:	bfb8      	it	lt
     644:	4252      	neglt	r2, r2
     646:	8863      	ldrh	r3, [r4, #2]
     648:	3006      	adds	r0, #6
     64a:	3201      	adds	r2, #1
     64c:	490c      	ldr	r1, [pc, #48]	; (680 <chip_vm+0x274>)
     64e:	4419      	add	r1, r3
     650:	4420      	add	r0, r4
     652:	f000 fe50 	bl	12f6 <move>
				break;
     656:	e022      	b.n	69e <chip_vm+0x292>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     658:	8863      	ldrh	r3, [r4, #2]
     65a:	4641      	mov	r1, r8
     65c:	45c8      	cmp	r8, r9
     65e:	bf28      	it	cs
     660:	4649      	movcs	r1, r9
     662:	eba9 0208 	sub.w	r2, r9, r8
     666:	2a00      	cmp	r2, #0
     668:	bfb8      	it	lt
     66a:	4252      	neglt	r2, r2
     66c:	3106      	adds	r1, #6
     66e:	3201      	adds	r2, #1
     670:	4421      	add	r1, r4
     672:	4803      	ldr	r0, [pc, #12]	; (680 <chip_vm+0x274>)
     674:	4418      	add	r0, r3
     676:	f000 fe3e 	bl	12f6 <move>
				break;
     67a:	e010      	b.n	69e <chip_vm+0x292>
     67c:	20000214 	.word	0x20000214
     680:	200006bc 	.word	0x200006bc
     684:	40013800 	.word	0x40013800
     688:	00003d68 	.word	0x00003d68
     68c:	00003c70 	.word	0x00003c70
     690:	200006a4 	.word	0x200006a4
     694:	51eb851f 	.word	0x51eb851f
			vms.var[x]=vms.b2;
     698:	44a0      	add	r8, r4
     69a:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     69e:	8823      	ldrh	r3, [r4, #0]
     6a0:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     6a4:	f080 82e4 	bcs.w	c70 <chip_vm+0x864>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     6a8:	4bc0      	ldr	r3, [pc, #768]	; (9ac <chip_vm+0x5a0>)
     6aa:	781b      	ldrb	r3, [r3, #0]
     6ac:	2b01      	cmp	r3, #1
     6ae:	f43f aebf 	beq.w	430 <chip_vm+0x24>
		_get_opcode(vms.pc);
     6b2:	8820      	ldrh	r0, [r4, #0]
     6b4:	4bbe      	ldr	r3, [pc, #760]	; (9b0 <chip_vm+0x5a4>)
     6b6:	5c1a      	ldrb	r2, [r3, r0]
     6b8:	75a2      	strb	r2, [r4, #22]
     6ba:	4403      	add	r3, r0
     6bc:	785b      	ldrb	r3, [r3, #1]
     6be:	75e3      	strb	r3, [r4, #23]
		vms.pc+=2;
     6c0:	3002      	adds	r0, #2
     6c2:	b280      	uxth	r0, r0
     6c4:	8020      	strh	r0, [r4, #0]
		switch(dbg_level){
     6c6:	2d02      	cmp	r5, #2
     6c8:	f43f aef8 	beq.w	4bc <chip_vm+0xb0>
     6cc:	2d03      	cmp	r5, #3
     6ce:	f43f af00 	beq.w	4d2 <chip_vm+0xc6>
     6d2:	2d01      	cmp	r5, #1
     6d4:	f43f aebc 	beq.w	450 <chip_vm+0x44>
		x=rx(vms.b1);
     6d8:	7da2      	ldrb	r2, [r4, #22]
     6da:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     6de:	7de3      	ldrb	r3, [r4, #23]
     6e0:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     6e4:	0911      	lsrs	r1, r2, #4
     6e6:	290f      	cmp	r1, #15
     6e8:	f200 82b3 	bhi.w	c52 <chip_vm+0x846>
     6ec:	a001      	add	r0, pc, #4	; (adr r0, 6f4 <chip_vm+0x2e8>)
     6ee:	f850 f021 	ldr.w	pc, [r0, r1, lsl #2]
     6f2:	bf00      	nop
     6f4:	000004f1 	.word	0x000004f1
     6f8:	0000059d 	.word	0x0000059d
     6fc:	000005b5 	.word	0x000005b5
     700:	000005dd 	.word	0x000005dd
     704:	000005ef 	.word	0x000005ef
     708:	00000601 	.word	0x00000601
     70c:	00000699 	.word	0x00000699
     710:	00000735 	.word	0x00000735
     714:	0000074d 	.word	0x0000074d
     718:	00000843 	.word	0x00000843
     71c:	000009df 	.word	0x000009df
     720:	000009f9 	.word	0x000009f9
     724:	00000a19 	.word	0x00000a19
     728:	00000a29 	.word	0x00000a29
     72c:	00000aad 	.word	0x00000aad
     730:	00000ae9 	.word	0x00000ae9
		    n=(vms.var[x]+vms.b2)>255;
     734:	44a0      	add	r8, r4
     736:	f898 0006 	ldrb.w	r0, [r8, #6]
			vms.var[x]+=vms.b2;
     73a:	4403      	add	r3, r0
     73c:	f888 3006 	strb.w	r3, [r8, #6]
		    n=(vms.var[x]+vms.b2)>255;
     740:	2bff      	cmp	r3, #255	; 0xff
     742:	bfd4      	ite	le
     744:	2300      	movle	r3, #0
     746:	2301      	movgt	r3, #1
     748:	7563      	strb	r3, [r4, #21]
			break;
     74a:	e7a8      	b.n	69e <chip_vm+0x292>
			switch(vms.b2&0xf){
     74c:	f003 030f 	and.w	r3, r3, #15
     750:	2b0e      	cmp	r3, #14
     752:	f200 8284 	bhi.w	c5e <chip_vm+0x852>
     756:	e8df f013 	tbh	[pc, r3, lsl #1]
     75a:	000f      	.short	0x000f
     75c:	00200016 	.word	0x00200016
     760:	0034002a 	.word	0x0034002a
     764:	00520043 	.word	0x00520043
     768:	0282005c 	.word	0x0282005c
     76c:	02820282 	.word	0x02820282
     770:	02820282 	.word	0x02820282
     774:	006b0282 	.word	0x006b0282
				vms.var[x]=vms.var[y];
     778:	44a1      	add	r9, r4
     77a:	f899 3006 	ldrb.w	r3, [r9, #6]
     77e:	44a0      	add	r8, r4
     780:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     784:	e78b      	b.n	69e <chip_vm+0x292>
				vms.var[x]|=vms.var[y];
     786:	44a0      	add	r8, r4
     788:	44a1      	add	r9, r4
     78a:	f898 3006 	ldrb.w	r3, [r8, #6]
     78e:	f899 2006 	ldrb.w	r2, [r9, #6]
     792:	4313      	orrs	r3, r2
     794:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     798:	e781      	b.n	69e <chip_vm+0x292>
				vms.var[x]&=vms.var[y];
     79a:	44a0      	add	r8, r4
     79c:	44a1      	add	r9, r4
     79e:	f898 3006 	ldrb.w	r3, [r8, #6]
     7a2:	f899 2006 	ldrb.w	r2, [r9, #6]
     7a6:	4013      	ands	r3, r2
     7a8:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7ac:	e777      	b.n	69e <chip_vm+0x292>
				vms.var[x]^=vms.var[y];
     7ae:	44a0      	add	r8, r4
     7b0:	44a1      	add	r9, r4
     7b2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7b6:	f899 2006 	ldrb.w	r2, [r9, #6]
     7ba:	4053      	eors	r3, r2
     7bc:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7c0:	e76d      	b.n	69e <chip_vm+0x292>
				n=(vms.var[x]+vms.var[y])>255;
     7c2:	44a0      	add	r8, r4
     7c4:	f898 3006 	ldrb.w	r3, [r8, #6]
     7c8:	44a1      	add	r9, r4
     7ca:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]+=vms.var[y];
     7ce:	4413      	add	r3, r2
     7d0:	f888 3006 	strb.w	r3, [r8, #6]
				n=(vms.var[x]+vms.var[y])>255;
     7d4:	2bff      	cmp	r3, #255	; 0xff
     7d6:	bfd4      	ite	le
     7d8:	2300      	movle	r3, #0
     7da:	2301      	movgt	r3, #1
     7dc:	7563      	strb	r3, [r4, #21]
				break;
     7de:	e75e      	b.n	69e <chip_vm+0x292>
				n=vms.var[x]>=vms.var[y];
     7e0:	44a0      	add	r8, r4
     7e2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7e6:	44a1      	add	r9, r4
     7e8:	f899 2006 	ldrb.w	r2, [r9, #6]
				vms.var[x]-=vms.var[y];
     7ec:	1a99      	subs	r1, r3, r2
     7ee:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[x]>=vms.var[y];
     7f2:	4293      	cmp	r3, r2
     7f4:	bf34      	ite	cc
     7f6:	2300      	movcc	r3, #0
     7f8:	2301      	movcs	r3, #1
     7fa:	7563      	strb	r3, [r4, #21]
				break;
     7fc:	e74f      	b.n	69e <chip_vm+0x292>
				n=(vms.var[x]&1u);
     7fe:	44a0      	add	r8, r4
     800:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]>>=1;
     804:	085a      	lsrs	r2, r3, #1
     806:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&1u);
     80a:	f003 0301 	and.w	r3, r3, #1
				vms.var[15]=n;
     80e:	7563      	strb	r3, [r4, #21]
				break;
     810:	e745      	b.n	69e <chip_vm+0x292>
				n=vms.var[y]>=vms.var[x];
     812:	44a1      	add	r9, r4
     814:	f899 3006 	ldrb.w	r3, [r9, #6]
     818:	44a0      	add	r8, r4
     81a:	f898 2006 	ldrb.w	r2, [r8, #6]
				vms.var[x]=vms.var[y]-vms.var[x];
     81e:	1a99      	subs	r1, r3, r2
     820:	f888 1006 	strb.w	r1, [r8, #6]
				n=vms.var[y]>=vms.var[x];
     824:	4293      	cmp	r3, r2
     826:	bf34      	ite	cc
     828:	2300      	movcc	r3, #0
     82a:	2301      	movcs	r3, #1
     82c:	7563      	strb	r3, [r4, #21]
				break;
     82e:	e736      	b.n	69e <chip_vm+0x292>
				n=(vms.var[x]&128)>>7;
     830:	44a0      	add	r8, r4
     832:	f898 3006 	ldrb.w	r3, [r8, #6]
				vms.var[x]<<=1;
     836:	005a      	lsls	r2, r3, #1
     838:	f888 2006 	strb.w	r2, [r8, #6]
				n=(vms.var[x]&128)>>7;
     83c:	09db      	lsrs	r3, r3, #7
				vms.var[15]=n;
     83e:	7563      	strb	r3, [r4, #21]
				break;
     840:	e72d      	b.n	69e <chip_vm+0x292>
			switch (vms.b2&0xf){
     842:	f003 030f 	and.w	r3, r3, #15
     846:	2b0f      	cmp	r3, #15
     848:	f200 820c 	bhi.w	c64 <chip_vm+0x858>
     84c:	e8df f003 	tbb	[pc, r3]
     850:	3c1f1508 	.word	0x3c1f1508
     854:	62574c47 	.word	0x62574c47
     858:	867a736c 	.word	0x867a736c
     85c:	c1b29f93 	.word	0xc1b29f93
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     860:	44a0      	add	r8, r4
     862:	44a1      	add	r9, r4
     864:	f898 2006 	ldrb.w	r2, [r8, #6]
     868:	f899 3006 	ldrb.w	r3, [r9, #6]
     86c:	429a      	cmp	r2, r3
     86e:	f43f af16 	beq.w	69e <chip_vm+0x292>
     872:	8823      	ldrh	r3, [r4, #0]
     874:	3302      	adds	r3, #2
     876:	8023      	strh	r3, [r4, #0]
     878:	e711      	b.n	69e <chip_vm+0x292>
				key_tone(vms.var[x],vms.var[y],false);
     87a:	44a1      	add	r9, r4
     87c:	44a0      	add	r8, r4
     87e:	2200      	movs	r2, #0
     880:	f899 1006 	ldrb.w	r1, [r9, #6]
     884:	f898 0006 	ldrb.w	r0, [r8, #6]
     888:	f001 fff0 	bl	286c <key_tone>
				break;
     88c:	e707      	b.n	69e <chip_vm+0x292>
				select_font(FONT_ASCII);
     88e:	2002      	movs	r0, #2
     890:	f002 f97c 	bl	2b8c <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     894:	44a1      	add	r9, r4
     896:	44a0      	add	r8, r4
     898:	f899 1006 	ldrb.w	r1, [r9, #6]
     89c:	f898 0006 	ldrb.w	r0, [r8, #6]
     8a0:	f002 fa36 	bl	2d10 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     8a4:	8860      	ldrh	r0, [r4, #2]
     8a6:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9b0 <chip_vm+0x5a4>
     8aa:	4448      	add	r0, r9
     8ac:	f002 fa64 	bl	2d78 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8b0:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8b4:	eb09 0008 	add.w	r0, r9, r8
     8b8:	f000 fd27 	bl	130a <strlen>
     8bc:	f108 0801 	add.w	r8, r8, #1
     8c0:	4480      	add	r8, r0
     8c2:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     8c6:	e6ea      	b.n	69e <chip_vm+0x292>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     8c8:	44a1      	add	r9, r4
     8ca:	44a0      	add	r8, r4
     8cc:	2303      	movs	r3, #3
     8ce:	2200      	movs	r2, #0
     8d0:	f899 1006 	ldrb.w	r1, [r9, #6]
     8d4:	f898 0006 	ldrb.w	r0, [r8, #6]
     8d8:	f000 fe0c 	bl	14f4 <gfx_blit>
				break;
     8dc:	e6df      	b.n	69e <chip_vm+0x292>
				noise((x<<4)+y);
     8de:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8e2:	f001 ffd7 	bl	2894 <noise>
				break;
     8e6:	e6da      	b.n	69e <chip_vm+0x292>
				key_tone(vms.var[x],vms.var[y],true);
     8e8:	44a1      	add	r9, r4
     8ea:	44a0      	add	r8, r4
     8ec:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8f0:	f899 1006 	ldrb.w	r1, [r9, #6]
     8f4:	f898 0006 	ldrb.w	r0, [r8, #6]
     8f8:	f001 ffb8 	bl	286c <key_tone>
				break;
     8fc:	e6cf      	b.n	69e <chip_vm+0x292>
				vms.stack[++vms.sp]=vms.var[x];
     8fe:	7923      	ldrb	r3, [r4, #4]
     900:	3301      	adds	r3, #1
     902:	b2db      	uxtb	r3, r3
     904:	7123      	strb	r3, [r4, #4]
     906:	330c      	adds	r3, #12
     908:	44a0      	add	r8, r4
     90a:	f898 2006 	ldrb.w	r2, [r8, #6]
     90e:	f824 2013 	strh.w	r2, [r4, r3, lsl #1]
				break;
     912:	e6c4      	b.n	69e <chip_vm+0x292>
				vms.var[x]=vms.stack[vms.sp--];
     914:	7923      	ldrb	r3, [r4, #4]
     916:	1e5a      	subs	r2, r3, #1
     918:	7122      	strb	r2, [r4, #4]
     91a:	44a0      	add	r8, r4
     91c:	330c      	adds	r3, #12
     91e:	f834 3013 	ldrh.w	r3, [r4, r3, lsl #1]
     922:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     926:	e6ba      	b.n	69e <chip_vm+0x292>
				{ 	vmode_params_t *vparams=get_video_params();
     928:	f002 fd42 	bl	33b0 <get_video_params>
					vms.var[x]=vparams->hres;
     92c:	44a0      	add	r8, r4
     92e:	8983      	ldrh	r3, [r0, #12]
     930:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     934:	e6b3      	b.n	69e <chip_vm+0x292>
					vmode_params_t *vparams=get_video_params();
     936:	f002 fd3b 	bl	33b0 <get_video_params>
					vms.var[x]=vparams->vres;
     93a:	44a0      	add	r8, r4
     93c:	89c3      	ldrh	r3, [r0, #14]
     93e:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     942:	e6ac      	b.n	69e <chip_vm+0x292>
			    vms.var[x] |= (1<<(y&0x7));
     944:	44a0      	add	r8, r4
     946:	f009 0907 	and.w	r9, r9, #7
     94a:	2301      	movs	r3, #1
     94c:	fa03 f309 	lsl.w	r3, r3, r9
     950:	f898 2006 	ldrb.w	r2, [r8, #6]
     954:	4313      	orrs	r3, r2
     956:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     95a:	e6a0      	b.n	69e <chip_vm+0x292>
			    vms.var[x] &= ~(1<<(y&0x7));
     95c:	44a0      	add	r8, r4
     95e:	f009 0207 	and.w	r2, r9, #7
     962:	2301      	movs	r3, #1
     964:	fa03 f202 	lsl.w	r2, r3, r2
     968:	f898 3006 	ldrb.w	r3, [r8, #6]
     96c:	ea23 0302 	bic.w	r3, r3, r2
     970:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     974:	e693      	b.n	69e <chip_vm+0x292>
   			    vms.var[x] ^= (1<<(y&0x7));
     976:	44a0      	add	r8, r4
     978:	f009 0907 	and.w	r9, r9, #7
     97c:	2301      	movs	r3, #1
     97e:	fa03 f309 	lsl.w	r3, r3, r9
     982:	f898 2006 	ldrb.w	r2, [r8, #6]
     986:	4053      	eors	r3, r2
     988:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     98c:	e687      	b.n	69e <chip_vm+0x292>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     98e:	44a0      	add	r8, r4
     990:	f898 3006 	ldrb.w	r3, [r8, #6]
     994:	f009 0907 	and.w	r9, r9, #7
     998:	fa43 f309 	asr.w	r3, r3, r9
     99c:	f013 0f01 	tst.w	r3, #1
     9a0:	f43f ae7d 	beq.w	69e <chip_vm+0x292>
     9a4:	8823      	ldrh	r3, [r4, #0]
     9a6:	3302      	adds	r3, #2
     9a8:	8023      	strh	r3, [r4, #0]
     9aa:	e678      	b.n	69e <chip_vm+0x292>
     9ac:	200006a4 	.word	0x200006a4
     9b0:	200006bc 	.word	0x200006bc
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     9b4:	44a0      	add	r8, r4
     9b6:	f898 3006 	ldrb.w	r3, [r8, #6]
     9ba:	f009 0907 	and.w	r9, r9, #7
     9be:	fa43 f309 	asr.w	r3, r3, r9
     9c2:	f013 0f01 	tst.w	r3, #1
     9c6:	f47f ae6a 	bne.w	69e <chip_vm+0x292>
     9ca:	8823      	ldrh	r3, [r4, #0]
     9cc:	3302      	adds	r3, #2
     9ce:	8023      	strh	r3, [r4, #0]
     9d0:	e665      	b.n	69e <chip_vm+0x292>
			    vms.var[15]=gfx_get_pixel(x,y);
     9d2:	4649      	mov	r1, r9
     9d4:	4640      	mov	r0, r8
     9d6:	f000 fec3 	bl	1760 <gfx_get_pixel>
     9da:	7560      	strb	r0, [r4, #21]
				break;  	
     9dc:	e65f      	b.n	69e <chip_vm+0x292>
			vms.ix=caddr(vms.b1,vms.b2);
     9de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9e2:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9e6:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9e8:	4aaa      	ldr	r2, [pc, #680]	; (c94 <chip_vm+0x888>)
     9ea:	7812      	ldrb	r2, [r2, #0]
     9ec:	b90a      	cbnz	r2, 9f2 <chip_vm+0x5e6>
				vms.ix<<=1;
     9ee:	005b      	lsls	r3, r3, #1
     9f0:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     9f2:	2300      	movs	r3, #0
     9f4:	7163      	strb	r3, [r4, #5]
			break;
     9f6:	e652      	b.n	69e <chip_vm+0x292>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     9f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9fc:	f3c3 030b 	ubfx	r3, r3, #0, #12
     a00:	79a2      	ldrb	r2, [r4, #6]
     a02:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     a06:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     a08:	4aa2      	ldr	r2, [pc, #648]	; (c94 <chip_vm+0x888>)
     a0a:	7812      	ldrb	r2, [r2, #0]
     a0c:	2a00      	cmp	r2, #0
     a0e:	f47f ae46 	bne.w	69e <chip_vm+0x292>
				vms.pc<<=1;
     a12:	005b      	lsls	r3, r3, #1
     a14:	8023      	strh	r3, [r4, #0]
     a16:	e642      	b.n	69e <chip_vm+0x292>
			vms.var[x]=rand()&vms.b2;
     a18:	f7ff fcea 	bl	3f0 <rand>
     a1c:	44a0      	add	r8, r4
     a1e:	7de3      	ldrb	r3, [r4, #23]
     a20:	4018      	ands	r0, r3
     a22:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     a26:	e63a      	b.n	69e <chip_vm+0x292>
			if (!n){
     a28:	f013 030f 	ands.w	r3, r3, #15
     a2c:	d11f      	bne.n	a6e <chip_vm+0x662>
				if (vms.sprite_mem==RAM_MEM){
     a2e:	7963      	ldrb	r3, [r4, #5]
     a30:	b97b      	cbnz	r3, a52 <chip_vm+0x646>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     a32:	44a1      	add	r9, r4
     a34:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a38:	44a0      	add	r8, r4
     a3a:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a3e:	8863      	ldrh	r3, [r4, #2]
     a40:	4a95      	ldr	r2, [pc, #596]	; (c98 <chip_vm+0x88c>)
     a42:	4413      	add	r3, r2
     a44:	9300      	str	r3, [sp, #0]
     a46:	2310      	movs	r3, #16
     a48:	461a      	mov	r2, r3
     a4a:	f000 feaf 	bl	17ac <gfx_sprite>
     a4e:	7560      	strb	r0, [r4, #21]
     a50:	e625      	b.n	69e <chip_vm+0x292>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     a52:	44a1      	add	r9, r4
     a54:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a58:	44a0      	add	r8, r4
     a5a:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a5e:	8863      	ldrh	r3, [r4, #2]
     a60:	9300      	str	r3, [sp, #0]
     a62:	2310      	movs	r3, #16
     a64:	461a      	mov	r2, r3
     a66:	f000 fea1 	bl	17ac <gfx_sprite>
     a6a:	7560      	strb	r0, [r4, #21]
     a6c:	e617      	b.n	69e <chip_vm+0x292>
				if (vms.sprite_mem==RAM_MEM){
     a6e:	7962      	ldrb	r2, [r4, #5]
     a70:	b97a      	cbnz	r2, a92 <chip_vm+0x686>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     a72:	44a1      	add	r9, r4
     a74:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a78:	44a0      	add	r8, r4
     a7a:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a7e:	8862      	ldrh	r2, [r4, #2]
     a80:	f8df e214 	ldr.w	lr, [pc, #532]	; c98 <chip_vm+0x88c>
     a84:	4472      	add	r2, lr
     a86:	9200      	str	r2, [sp, #0]
     a88:	2208      	movs	r2, #8
     a8a:	f000 fe8f 	bl	17ac <gfx_sprite>
     a8e:	7560      	strb	r0, [r4, #21]
     a90:	e605      	b.n	69e <chip_vm+0x292>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     a92:	44a1      	add	r9, r4
     a94:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a98:	44a0      	add	r8, r4
     a9a:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a9e:	8862      	ldrh	r2, [r4, #2]
     aa0:	9200      	str	r2, [sp, #0]
     aa2:	2208      	movs	r2, #8
     aa4:	f000 fe82 	bl	17ac <gfx_sprite>
     aa8:	7560      	strb	r0, [r4, #21]
     aaa:	e5f8      	b.n	69e <chip_vm+0x292>
				switch(vms.b2){
     aac:	2b9e      	cmp	r3, #158	; 0x9e
     aae:	d003      	beq.n	ab8 <chip_vm+0x6ac>
     ab0:	2ba1      	cmp	r3, #161	; 0xa1
     ab2:	d00d      	beq.n	ad0 <chip_vm+0x6c4>
					return CHIP_BAD_OPCODE;
     ab4:	2002      	movs	r0, #2
     ab6:	e0e7      	b.n	c88 <chip_vm+0x87c>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     ab8:	44a0      	add	r8, r4
     aba:	f898 0006 	ldrb.w	r0, [r8, #6]
     abe:	f000 faf9 	bl	10b4 <btn_query_down>
     ac2:	2800      	cmp	r0, #0
     ac4:	f43f adeb 	beq.w	69e <chip_vm+0x292>
     ac8:	8823      	ldrh	r3, [r4, #0]
     aca:	3302      	adds	r3, #2
     acc:	8023      	strh	r3, [r4, #0]
     ace:	e5e6      	b.n	69e <chip_vm+0x292>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     ad0:	44a0      	add	r8, r4
     ad2:	f898 0006 	ldrb.w	r0, [r8, #6]
     ad6:	f000 faed 	bl	10b4 <btn_query_down>
     ada:	2800      	cmp	r0, #0
     adc:	f47f addf 	bne.w	69e <chip_vm+0x292>
     ae0:	8823      	ldrh	r3, [r4, #0]
     ae2:	3302      	adds	r3, #2
     ae4:	8023      	strh	r3, [r4, #0]
     ae6:	e5da      	b.n	69e <chip_vm+0x292>
			switch(vms.b2){
     ae8:	2b29      	cmp	r3, #41	; 0x29
     aea:	d078      	beq.n	bde <chip_vm+0x7d2>
     aec:	d815      	bhi.n	b1a <chip_vm+0x70e>
     aee:	2b0a      	cmp	r3, #10
     af0:	d05a      	beq.n	ba8 <chip_vm+0x79c>
     af2:	d908      	bls.n	b06 <chip_vm+0x6fa>
     af4:	2b18      	cmp	r3, #24
     af6:	d063      	beq.n	bc0 <chip_vm+0x7b4>
     af8:	2b1e      	cmp	r3, #30
     afa:	d069      	beq.n	bd0 <chip_vm+0x7c4>
     afc:	2b15      	cmp	r3, #21
     afe:	d059      	beq.n	bb4 <chip_vm+0x7a8>
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash
				flash_read_block((const uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
				//move((const uint8_t*)block,vms.var,x+1);
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     b00:	f04f 0802 	mov.w	r8, #2
     b04:	e585      	b.n	612 <chip_vm+0x206>
			switch(vms.b2){
     b06:	2b01      	cmp	r3, #1
     b08:	d044      	beq.n	b94 <chip_vm+0x788>
     b0a:	2b07      	cmp	r3, #7
     b0c:	d1f8      	bne.n	b00 <chip_vm+0x6f4>
				vms.var[x]=game_timer;
     b0e:	4b63      	ldr	r3, [pc, #396]	; (c9c <chip_vm+0x890>)
     b10:	881b      	ldrh	r3, [r3, #0]
     b12:	44a0      	add	r8, r4
     b14:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     b18:	e5c1      	b.n	69e <chip_vm+0x292>
			switch(vms.b2){
     b1a:	2b55      	cmp	r3, #85	; 0x55
     b1c:	d07c      	beq.n	c18 <chip_vm+0x80c>
     b1e:	d910      	bls.n	b42 <chip_vm+0x736>
     b20:	2b75      	cmp	r3, #117	; 0x75
     b22:	f000 8082 	beq.w	c2a <chip_vm+0x81e>
     b26:	2b85      	cmp	r3, #133	; 0x85
     b28:	f000 8089 	beq.w	c3e <chip_vm+0x832>
     b2c:	2b65      	cmp	r3, #101	; 0x65
     b2e:	d1e7      	bne.n	b00 <chip_vm+0x6f4>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     b30:	8863      	ldrh	r3, [r4, #2]
     b32:	f108 0201 	add.w	r2, r8, #1
     b36:	4631      	mov	r1, r6
     b38:	4857      	ldr	r0, [pc, #348]	; (c98 <chip_vm+0x88c>)
     b3a:	4418      	add	r0, r3
     b3c:	f000 fbdb 	bl	12f6 <move>
				break;
     b40:	e5ad      	b.n	69e <chip_vm+0x292>
			switch(vms.b2){
     b42:	2b30      	cmp	r3, #48	; 0x30
     b44:	d05a      	beq.n	bfc <chip_vm+0x7f0>
     b46:	2b33      	cmp	r3, #51	; 0x33
     b48:	d1da      	bne.n	b00 <chip_vm+0x6f4>
				n=vms.var[x];
     b4a:	44a0      	add	r8, r4
     b4c:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     b50:	4a53      	ldr	r2, [pc, #332]	; (ca0 <chip_vm+0x894>)
     b52:	fba2 0301 	umull	r0, r3, r2, r1
     b56:	08db      	lsrs	r3, r3, #3
     b58:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     b5c:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     b60:	f884 005a 	strb.w	r0, [r4, #90]	; 0x5a
				block[1]=n%10;
     b64:	b2db      	uxtb	r3, r3
     b66:	fba2 0203 	umull	r0, r2, r2, r3
     b6a:	08d2      	lsrs	r2, r2, #3
     b6c:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     b70:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     b74:	f884 3059 	strb.w	r3, [r4, #89]	; 0x59
				block[0]=n/10;
     b78:	fbaa 2301 	umull	r2, r3, sl, r1
     b7c:	095b      	lsrs	r3, r3, #5
     b7e:	f884 3058 	strb.w	r3, [r4, #88]	; 0x58
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     b82:	8863      	ldrh	r3, [r4, #2]
     b84:	2203      	movs	r2, #3
     b86:	4944      	ldr	r1, [pc, #272]	; (c98 <chip_vm+0x88c>)
     b88:	4419      	add	r1, r3
     b8a:	f104 0058 	add.w	r0, r4, #88	; 0x58
     b8e:	f000 fbb2 	bl	12f6 <move>
				break;
     b92:	e584      	b.n	69e <chip_vm+0x292>
				sprite_bpp=vms.b1%3;
     b94:	4b43      	ldr	r3, [pc, #268]	; (ca4 <chip_vm+0x898>)
     b96:	fba3 1302 	umull	r1, r3, r3, r2
     b9a:	085b      	lsrs	r3, r3, #1
     b9c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     ba0:	1ad2      	subs	r2, r2, r3
     ba2:	4b41      	ldr	r3, [pc, #260]	; (ca8 <chip_vm+0x89c>)
     ba4:	701a      	strb	r2, [r3, #0]
				break;
     ba6:	e57a      	b.n	69e <chip_vm+0x292>
				vms.var[x]=btn_wait_any();
     ba8:	f000 fab8 	bl	111c <btn_wait_any>
     bac:	44a0      	add	r8, r4
     bae:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     bb2:	e574      	b.n	69e <chip_vm+0x292>
				game_timer=vms.var[x];
     bb4:	44a0      	add	r8, r4
     bb6:	f898 2006 	ldrb.w	r2, [r8, #6]
     bba:	4b38      	ldr	r3, [pc, #224]	; (c9c <chip_vm+0x890>)
     bbc:	801a      	strh	r2, [r3, #0]
				break;
     bbe:	e56e      	b.n	69e <chip_vm+0x292>
				tone(523,vms.var[x]);
     bc0:	44a0      	add	r8, r4
     bc2:	f898 1006 	ldrb.w	r1, [r8, #6]
     bc6:	f240 200b 	movw	r0, #523	; 0x20b
     bca:	f001 fe29 	bl	2820 <tone>
				break;
     bce:	e566      	b.n	69e <chip_vm+0x292>
				vms.ix += vms.var[x];
     bd0:	44a0      	add	r8, r4
     bd2:	f898 3006 	ldrb.w	r3, [r8, #6]
     bd6:	8862      	ldrh	r2, [r4, #2]
     bd8:	4413      	add	r3, r2
     bda:	8063      	strh	r3, [r4, #2]
				break;
     bdc:	e55f      	b.n	69e <chip_vm+0x292>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     bde:	44a0      	add	r8, r4
     be0:	f898 3006 	ldrb.w	r3, [r8, #6]
     be4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     be8:	4a30      	ldr	r2, [pc, #192]	; (cac <chip_vm+0x8a0>)
     bea:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     bee:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     bf0:	2301      	movs	r3, #1
     bf2:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     bf4:	2000      	movs	r0, #0
     bf6:	f001 ffc9 	bl	2b8c <select_font>
				break;
     bfa:	e550      	b.n	69e <chip_vm+0x292>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     bfc:	44a0      	add	r8, r4
     bfe:	f898 3006 	ldrb.w	r3, [r8, #6]
     c02:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c06:	4a2a      	ldr	r2, [pc, #168]	; (cb0 <chip_vm+0x8a4>)
     c08:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c0c:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c0e:	2001      	movs	r0, #1
     c10:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     c12:	f001 ffbb 	bl	2b8c <select_font>
				break;
     c16:	e542      	b.n	69e <chip_vm+0x292>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     c18:	8863      	ldrh	r3, [r4, #2]
     c1a:	f108 0201 	add.w	r2, r8, #1
     c1e:	491e      	ldr	r1, [pc, #120]	; (c98 <chip_vm+0x88c>)
     c20:	4419      	add	r1, r3
     c22:	4630      	mov	r0, r6
     c24:	f000 fb67 	bl	12f6 <move>
				break;
     c28:	e539      	b.n	69e <chip_vm+0x292>
				flash_write_block((uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
     c2a:	8860      	ldrh	r0, [r4, #2]
     c2c:	f500 4000 	add.w	r0, r0, #32768	; 0x8000
     c30:	f108 0201 	add.w	r2, r8, #1
     c34:	4631      	mov	r1, r6
     c36:	0040      	lsls	r0, r0, #1
     c38:	f000 f970 	bl	f1c <flash_write_block>
				break;
     c3c:	e52f      	b.n	69e <chip_vm+0x292>
				flash_read_block((const uint8_t*)(PERSIST_STORE+vms.ix*2),vms.var,x+1);
     c3e:	8860      	ldrh	r0, [r4, #2]
     c40:	f500 4000 	add.w	r0, r0, #32768	; 0x8000
     c44:	f108 0201 	add.w	r2, r8, #1
     c48:	4631      	mov	r1, r6
     c4a:	0040      	lsls	r0, r0, #1
     c4c:	f000 f94c 	bl	ee8 <flash_read_block>
				break;
     c50:	e525      	b.n	69e <chip_vm+0x292>
	    switch (vms.b1>>4){
     c52:	f04f 0800 	mov.w	r8, #0
     c56:	e4dc      	b.n	612 <chip_vm+0x206>
			}else switch(vms.b2){
     c58:	f04f 0800 	mov.w	r8, #0
     c5c:	e4d9      	b.n	612 <chip_vm+0x206>
				exit_code=CHIP_BAD_OPCODE;
     c5e:	f04f 0802 	mov.w	r8, #2
     c62:	e4d6      	b.n	612 <chip_vm+0x206>
				exit_code=CHIP_BAD_OPCODE;
     c64:	f04f 0802 	mov.w	r8, #2
     c68:	e4d3      	b.n	612 <chip_vm+0x206>
			exit_code=CHIP_BAD_ADDR;
     c6a:	f04f 0803 	mov.w	r8, #3
     c6e:	e001      	b.n	c74 <chip_vm+0x868>
     c70:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     c74:	2002      	movs	r0, #2
     c76:	f001 ff89 	bl	2b8c <select_font>
	set_keymap(default_kmap);
     c7a:	480e      	ldr	r0, [pc, #56]	; (cb4 <chip_vm+0x8a8>)
     c7c:	f000 f9cc 	bl	1018 <set_keymap>
	set_video_mode(VM_BPCHIP);
     c80:	2000      	movs	r0, #0
     c82:	f002 fb6b 	bl	335c <set_video_mode>
	return exit_code;
     c86:	4640      	mov	r0, r8
}//schipp()
     c88:	b008      	add	sp, #32
     c8a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					exit_code=CHIP_EXIT_OK;
     c8e:	f04f 0801 	mov.w	r8, #1
     c92:	e7ef      	b.n	c74 <chip_vm+0x868>
     c94:	200006a4 	.word	0x200006a4
     c98:	200006bc 	.word	0x200006bc
     c9c:	20004e4c 	.word	0x20004e4c
     ca0:	cccccccd 	.word	0xcccccccd
     ca4:	aaaaaaab 	.word	0xaaaaaaab
     ca8:	200001ac 	.word	0x200001ac
     cac:	00003af8 	.word	0x00003af8
     cb0:	00003a58 	.word	0x00003a58
     cb4:	00003b58 	.word	0x00003b58

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
     cf8:	2000028c 	.word	0x2000028c
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
     e48:	2000028c 	.word	0x2000028c

00000e4c <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     e4c:	2200      	movs	r2, #0
     e4e:	4b01      	ldr	r3, [pc, #4]	; (e54 <flash_flush+0x8>)
     e50:	701a      	strb	r2, [r3, #0]
     e52:	4770      	bx	lr
     e54:	2000028c 	.word	0x2000028c

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
     e70:	2000028c 	.word	0x2000028c
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
     ee4:	2000028c 	.word	0x2000028c

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
     f18:	2000028c 	.word	0x2000028c

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
     f94:	20000690 	.word	0x20000690
     f98:	20000691 	.word	0x20000691

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
    102c:	2000068f 	.word	0x2000068f

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
    1064:	200026bc 	.word	0x200026bc
    1068:	00003b58 	.word	0x00003b58

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
    10a8:	200026bc 	.word	0x200026bc
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
    10c8:	200026bc 	.word	0x200026bc

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
    10dc:	f002 f92e 	bl	333c <frame_sync>
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
    10f0:	200026bc 	.word	0x200026bc

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
    1104:	f002 f91a 	bl	333c <frame_sync>
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
    1118:	200026bc 	.word	0x200026bc

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
    113a:	f002 f8ff 	bl	333c <frame_sync>
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
    1174:	200026bc 	.word	0x200026bc
    1178:	20000690 	.word	0x20000690

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
    1184:	20000690 	.word	0x20000690

00001188 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    1188:	4800      	ldr	r0, [pc, #0]	; (118c <get_keymap+0x4>)
    118a:	4770      	bx	lr
    118c:	20000690 	.word	0x20000690

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
    14f0:	200001a8 	.word	0x200001a8

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
    14fe:	f001 ff57 	bl	33b0 <get_video_params>
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
    1588:	200026ec 	.word	0x200026ec

0000158c <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    158c:	b570      	push	{r4, r5, r6, lr}
    158e:	4604      	mov	r4, r0
    1590:	460e      	mov	r6, r1
    1592:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1594:	f001 ff0c 	bl	33b0 <get_video_params>
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
    15dc:	200026ec 	.word	0x200026ec

000015e0 <gfx_cls>:
}

void gfx_cls(){
    15e0:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    15e2:	f001 fee5 	bl	33b0 <get_video_params>
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
    15f8:	f001 fb8a 	bl	2d10 <set_cursor>
    15fc:	bd08      	pop	{r3, pc}
    15fe:	bf00      	nop
    1600:	200026eb 	.word	0x200026eb
    1604:	20004e4b 	.word	0x20004e4b

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
    160c:	f001 fed0 	bl	33b0 <get_video_params>
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
    1650:	200026ec 	.word	0x200026ec

00001654 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1654:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1656:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1658:	f001 feaa 	bl	33b0 <get_video_params>
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
    1698:	200026ec 	.word	0x200026ec

0000169c <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    169c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    16a0:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    16a2:	f001 fe85 	bl	33b0 <get_video_params>
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
    16f4:	200026ec 	.word	0x200026ec

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
    16fe:	f001 fe57 	bl	33b0 <get_video_params>
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
    175c:	200026ec 	.word	0x200026ec

00001760 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1760:	b538      	push	{r3, r4, r5, lr}
    1762:	4604      	mov	r4, r0
    1764:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1766:	f001 fe23 	bl	33b0 <get_video_params>
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
    17a8:	200026ec 	.word	0x200026ec

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
    1852:	f001 ff05 	bl	3660 <usart_putc>
    return collision;
}
    1856:	4638      	mov	r0, r7
    1858:	b005      	add	sp, #20
    185a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    185e:	bf00      	nop
    1860:	200001a8 	.word	0x200001a8
    1864:	00003b60 	.word	0x00003b60
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
    1870:	f001 fd9e 	bl	33b0 <get_video_params>
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
    18b8:	f001 fd7a 	bl	33b0 <get_video_params>
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
    18ec:	f001 fd60 	bl	33b0 <get_video_params>
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
	" Video test",
	" Sound test",
	" BASIC",
};

static void display_menu(){
    191c:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    191e:	f7ff fe5f 	bl	15e0 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1922:	4808      	ldr	r0, [pc, #32]	; (1944 <display_menu+0x28>)
    1924:	f001 fa3d 	bl	2da2 <println>
    1928:	4807      	ldr	r0, [pc, #28]	; (1948 <display_menu+0x2c>)
    192a:	f001 fa3a 	bl	2da2 <println>
    192e:	4807      	ldr	r0, [pc, #28]	; (194c <display_menu+0x30>)
    1930:	f001 fa37 	bl	2da2 <println>
    1934:	4806      	ldr	r0, [pc, #24]	; (1950 <display_menu+0x34>)
    1936:	f001 fa34 	bl	2da2 <println>
    193a:	4806      	ldr	r0, [pc, #24]	; (1954 <display_menu+0x38>)
    193c:	f001 fa31 	bl	2da2 <println>
    1940:	bd08      	pop	{r3, pc}
    1942:	bf00      	nop
    1944:	00003c84 	.word	0x00003c84
    1948:	00003c90 	.word	0x00003c90
    194c:	00003ca0 	.word	0x00003ca0
    1950:	00003cac 	.word	0x00003cac
    1954:	00003cb8 	.word	0x00003cb8

00001958 <draw_balls>:
void draw_balls(){
    1958:	b510      	push	{r4, lr}
    195a:	b082      	sub	sp, #8
	frame_sync();
    195c:	f001 fcee 	bl	333c <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1960:	4c0a      	ldr	r4, [pc, #40]	; (198c <draw_balls+0x34>)
    1962:	6923      	ldr	r3, [r4, #16]
    1964:	9300      	str	r3, [sp, #0]
    1966:	2308      	movs	r3, #8
    1968:	461a      	mov	r2, r3
    196a:	6861      	ldr	r1, [r4, #4]
    196c:	6820      	ldr	r0, [r4, #0]
    196e:	f7ff ff1d 	bl	17ac <gfx_sprite>
    1972:	69a1      	ldr	r1, [r4, #24]
    1974:	6960      	ldr	r0, [r4, #20]
    1976:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1978:	9300      	str	r3, [sp, #0]
    197a:	2308      	movs	r3, #8
    197c:	461a      	mov	r2, r3
    197e:	f7ff ff15 	bl	17ac <gfx_sprite>
	wait_sync_end();
    1982:	f001 fce3 	bl	334c <wait_sync_end>
}
    1986:	b002      	add	sp, #8
    1988:	bd10      	pop	{r4, pc}
    198a:	bf00      	nop
    198c:	200026c4 	.word	0x200026c4

00001990 <isqrt>:
	if (n<2) return n;
    1990:	2801      	cmp	r0, #1
    1992:	dd0c      	ble.n	19ae <isqrt+0x1e>
int isqrt(int n){
    1994:	b510      	push	{r4, lr}
    1996:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1998:	1080      	asrs	r0, r0, #2
    199a:	f7ff fff9 	bl	1990 <isqrt>
    199e:	0040      	lsls	r0, r0, #1
	large = small + 1;
    19a0:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    19a2:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    19a6:	4294      	cmp	r4, r2
    19a8:	bfa8      	it	ge
    19aa:	4618      	movge	r0, r3
}
    19ac:	bd10      	pop	{r4, pc}
    19ae:	4770      	bx	lr

000019b0 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    19b0:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    19b2:	6803      	ldr	r3, [r0, #0]
    19b4:	680a      	ldr	r2, [r1, #0]
    19b6:	6844      	ldr	r4, [r0, #4]
    19b8:	6848      	ldr	r0, [r1, #4]
    19ba:	fb00 f004 	mul.w	r0, r0, r4
    19be:	fb02 0003 	mla	r0, r2, r3, r0
    19c2:	2800      	cmp	r0, #0
    19c4:	bfb8      	it	lt
    19c6:	4240      	neglt	r0, r0
    19c8:	f7ff ffe2 	bl	1990 <isqrt>
}
    19cc:	bd10      	pop	{r4, pc}

000019ce <move_balls>:
void move_balls(){
    19ce:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    19d0:	f001 fcee 	bl	33b0 <get_video_params>
    19d4:	4b1c      	ldr	r3, [pc, #112]	; (1a48 <move_balls+0x7a>)
    19d6:	f103 0628 	add.w	r6, r3, #40	; 0x28
    19da:	e005      	b.n	19e8 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    19dc:	4249      	negs	r1, r1
    19de:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    19e0:	6055      	str	r5, [r2, #4]
    19e2:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    19e4:	42b3      	cmp	r3, r6
    19e6:	d017      	beq.n	1a18 <move_balls+0x4a>
    19e8:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    19ea:	681d      	ldr	r5, [r3, #0]
    19ec:	6899      	ldr	r1, [r3, #8]
    19ee:	186c      	adds	r4, r5, r1
    19f0:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    19f2:	f114 0f07 	cmn.w	r4, #7
    19f6:	db02      	blt.n	19fe <move_balls+0x30>
    19f8:	8987      	ldrh	r7, [r0, #12]
    19fa:	42bc      	cmp	r4, r7
    19fc:	db02      	blt.n	1a04 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    19fe:	4249      	negs	r1, r1
    1a00:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1a02:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1a04:	6855      	ldr	r5, [r2, #4]
    1a06:	68d1      	ldr	r1, [r2, #12]
    1a08:	186c      	adds	r4, r5, r1
    1a0a:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1a0c:	2c0f      	cmp	r4, #15
    1a0e:	dde5      	ble.n	19dc <move_balls+0xe>
    1a10:	89c7      	ldrh	r7, [r0, #14]
    1a12:	42bc      	cmp	r4, r7
    1a14:	dbe5      	blt.n	19e2 <move_balls+0x14>
    1a16:	e7e1      	b.n	19dc <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1a18:	480c      	ldr	r0, [pc, #48]	; (1a4c <move_balls+0x7e>)
    1a1a:	4601      	mov	r1, r0
    1a1c:	3814      	subs	r0, #20
    1a1e:	f7ff ffc7 	bl	19b0 <distance>
    1a22:	2807      	cmp	r0, #7
    1a24:	d80f      	bhi.n	1a46 <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1a26:	4b08      	ldr	r3, [pc, #32]	; (1a48 <move_balls+0x7a>)
    1a28:	689a      	ldr	r2, [r3, #8]
    1a2a:	69db      	ldr	r3, [r3, #28]
    1a2c:	429a      	cmp	r2, r3
    1a2e:	d002      	beq.n	1a36 <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1a30:	4905      	ldr	r1, [pc, #20]	; (1a48 <move_balls+0x7a>)
    1a32:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1a34:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1a36:	4b04      	ldr	r3, [pc, #16]	; (1a48 <move_balls+0x7a>)
    1a38:	68da      	ldr	r2, [r3, #12]
    1a3a:	6a1b      	ldr	r3, [r3, #32]
    1a3c:	429a      	cmp	r2, r3
    1a3e:	d002      	beq.n	1a46 <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1a40:	4901      	ldr	r1, [pc, #4]	; (1a48 <move_balls+0x7a>)
    1a42:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1a44:	620a      	str	r2, [r1, #32]
    1a46:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1a48:	200026c4 	.word	0x200026c4
    1a4c:	200026d8 	.word	0x200026d8

00001a50 <init_balls>:
void init_balls(){
    1a50:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1a54:	f001 fcac 	bl	33b0 <get_video_params>
    1a58:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1a5a:	4b15      	ldr	r3, [pc, #84]	; (1ab0 <init_balls+0x60>)
    1a5c:	6818      	ldr	r0, [r3, #0]
    1a5e:	f7fe fcc1 	bl	3e4 <srand>
    1a62:	4c14      	ldr	r4, [pc, #80]	; (1ab4 <init_balls+0x64>)
    1a64:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    1a68:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    1a6a:	4f13      	ldr	r7, [pc, #76]	; (1ab8 <init_balls+0x68>)
    1a6c:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    1a70:	f7fe fcbe 	bl	3f0 <rand>
    1a74:	89ab      	ldrh	r3, [r5, #12]
    1a76:	fb90 f2f3 	sdiv	r2, r0, r3
    1a7a:	fb02 0013 	mls	r0, r2, r3, r0
    1a7e:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1a80:	f7fe fcb6 	bl	3f0 <rand>
    1a84:	89eb      	ldrh	r3, [r5, #14]
    1a86:	3b10      	subs	r3, #16
    1a88:	fb90 f2f3 	sdiv	r2, r0, r3
    1a8c:	fb02 0013 	mls	r0, r2, r3, r0
    1a90:	3010      	adds	r0, #16
    1a92:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1a94:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    1a96:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1a98:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    1a9a:	2b00      	cmp	r3, #0
    1a9c:	bf14      	ite	ne
    1a9e:	4643      	movne	r3, r8
    1aa0:	463b      	moveq	r3, r7
    1aa2:	6123      	str	r3, [r4, #16]
    1aa4:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1aa6:	454c      	cmp	r4, r9
    1aa8:	d1e2      	bne.n	1a70 <init_balls+0x20>
}
    1aaa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1aae:	bf00      	nop
    1ab0:	20004e50 	.word	0x20004e50
    1ab4:	200026c4 	.word	0x200026c4
    1ab8:	00003b70 	.word	0x00003b70

00001abc <main>:
			break;	
		}
	}//while
}

void main(void){
    1abc:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1ac0:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1ac2:	4ac0      	ldr	r2, [pc, #768]	; (1dc4 <main+0x308>)
    1ac4:	6813      	ldr	r3, [r2, #0]
    1ac6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1aca:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1acc:	4613      	mov	r3, r2
    1ace:	681a      	ldr	r2, [r3, #0]
    1ad0:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1ad4:	d0fb      	beq.n	1ace <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1ad6:	4bbb      	ldr	r3, [pc, #748]	; (1dc4 <main+0x308>)
    1ad8:	685a      	ldr	r2, [r3, #4]
    1ada:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1ade:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1ae0:	681a      	ldr	r2, [r3, #0]
    1ae2:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1ae6:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1ae8:	681a      	ldr	r2, [r3, #0]
    1aea:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1aee:	d0fb      	beq.n	1ae8 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1af0:	4ab5      	ldr	r2, [pc, #724]	; (1dc8 <main+0x30c>)
    1af2:	6813      	ldr	r3, [r2, #0]
    1af4:	f043 0312 	orr.w	r3, r3, #18
    1af8:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1afa:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1afe:	6853      	ldr	r3, [r2, #4]
    1b00:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1b04:	f043 0302 	orr.w	r3, r3, #2
    1b08:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1b0a:	f640 031d 	movw	r3, #2077	; 0x81d
    1b0e:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1b10:	4cae      	ldr	r4, [pc, #696]	; (1dcc <main+0x310>)
    1b12:	2206      	movs	r2, #6
    1b14:	210d      	movs	r1, #13
    1b16:	4620      	mov	r0, r4
    1b18:	f7ff fcac 	bl	1474 <config_pin>
	_led_off();
    1b1c:	68e3      	ldr	r3, [r4, #12]
    1b1e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1b22:	60e3      	str	r3, [r4, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1b24:	2400      	movs	r4, #0
    1b26:	9401      	str	r4, [sp, #4]
    1b28:	2301      	movs	r3, #1
    1b2a:	9300      	str	r3, [sp, #0]
    1b2c:	2303      	movs	r3, #3
    1b2e:	4622      	mov	r2, r4
    1b30:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1b34:	48a6      	ldr	r0, [pc, #664]	; (1dd0 <main+0x314>)
    1b36:	f001 fcf2 	bl	351e <usart_open_channel>
	gamepad_init();
    1b3a:	f7ff fa79 	bl	1030 <gamepad_init>
	tvout_init();
    1b3e:	f001 f9e7 	bl	2f10 <tvout_init>
	sound_init();
    1b42:	f000 fe41 	bl	27c8 <sound_init>
	gfx_cls();
    1b46:	f7ff fd4b 	bl	15e0 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1b4a:	f001 fc31 	bl	33b0 <get_video_params>
	display_menu();
    1b4e:	f7ff fee5 	bl	191c <display_menu>
	int i=0;
    1b52:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1b54:	4b9f      	ldr	r3, [pc, #636]	; (1dd4 <main+0x318>)
    1b56:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1b5a:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1b5e:	9304      	str	r3, [sp, #16]
    1b60:	e186      	b.n	1e70 <main+0x3b4>
			if (i<(MENU_ITEMS-1)) i++;
    1b62:	f1ba 0f03 	cmp.w	sl, #3
    1b66:	f300 8183 	bgt.w	1e70 <main+0x3b4>
    1b6a:	f10a 0a01 	add.w	sl, sl, #1
    1b6e:	e17f      	b.n	1e70 <main+0x3b4>
			switch(i){
    1b70:	f1ba 0f04 	cmp.w	sl, #4
    1b74:	f200 817a 	bhi.w	1e6c <main+0x3b0>
    1b78:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1b7c:	00cd0005 	.word	0x00cd0005
    1b80:	01a8010c 	.word	0x01a8010c
    1b84:	01e4      	.short	0x01e4
	count=games_count();
    1b86:	f7ff fb03 	bl	1190 <games_count>
    1b8a:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1b8c:	2000      	movs	r0, #0
    1b8e:	f001 fbe5 	bl	335c <set_video_mode>
	vparams=get_video_params();
    1b92:	f001 fc0d 	bl	33b0 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1b96:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1b9a:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1b9e:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1ba0:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1ba4:	454e      	cmp	r6, r9
    1ba6:	bfda      	itte	le
    1ba8:	eba9 0806 	suble.w	r8, r9, r6
    1bac:	f108 0801 	addle.w	r8, r8, #1
    1bb0:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1bb2:	2100      	movs	r1, #0
    1bb4:	4608      	mov	r0, r1
    1bb6:	f001 f8ab 	bl	2d10 <set_cursor>
	print(" ********** GAMES **********");
    1bba:	4887      	ldr	r0, [pc, #540]	; (1dd8 <main+0x31c>)
    1bbc:	f001 f8dc 	bl	2d78 <print>
	while ((r<rows) && games_list[first].size){
    1bc0:	f1bb 0f01 	cmp.w	fp, #1
    1bc4:	d92d      	bls.n	1c22 <main+0x166>
    1bc6:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1bca:	4a84      	ldr	r2, [pc, #528]	; (1ddc <main+0x320>)
    1bcc:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1bd0:	691b      	ldr	r3, [r3, #16]
    1bd2:	b333      	cbz	r3, 1c22 <main+0x166>
    1bd4:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1bd8:	1c53      	adds	r3, r2, #1
    1bda:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1bde:	2501      	movs	r5, #1
		put_char(' ');
    1be0:	2720      	movs	r7, #32
		new_line();
    1be2:	f000 ffdf 	bl	2ba4 <new_line>
		clear_line();
    1be6:	f001 f961 	bl	2eac <clear_line>
		put_char(' ');
    1bea:	4638      	mov	r0, r7
    1bec:	f001 f824 	bl	2c38 <put_char>
		print(games_list[first].name);
    1bf0:	4620      	mov	r0, r4
    1bf2:	f001 f8c1 	bl	2d78 <print>
		line=get_cursor()&0xff;
    1bf6:	f001 f891 	bl	2d1c <get_cursor>
		set_cursor(90,line);
    1bfa:	b2c1      	uxtb	r1, r0
    1bfc:	205a      	movs	r0, #90	; 0x5a
    1bfe:	f001 f887 	bl	2d10 <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1c02:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1c06:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1c08:	bf0c      	ite	eq
    1c0a:	4875      	ldreq	r0, [pc, #468]	; (1de0 <main+0x324>)
			print("(BPCHIP)");
    1c0c:	4875      	ldrne	r0, [pc, #468]	; (1de4 <main+0x328>)
    1c0e:	f001 f8b3 	bl	2d78 <print>
		r++;
    1c12:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1c14:	42ae      	cmp	r6, r5
    1c16:	d004      	beq.n	1c22 <main+0x166>
    1c18:	341c      	adds	r4, #28
    1c1a:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1c1e:	2b00      	cmp	r3, #0
    1c20:	d1df      	bne.n	1be2 <main+0x126>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1c22:	eba9 0108 	sub.w	r1, r9, r8
    1c26:	00c9      	lsls	r1, r1, #3
    1c28:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1c2c:	2000      	movs	r0, #0
    1c2e:	f001 f86f 	bl	2d10 <set_cursor>
		put_char('>');
    1c32:	203e      	movs	r0, #62	; 0x3e
    1c34:	f001 f800 	bl	2c38 <put_char>
		btn=btn_wait_any();
    1c38:	f7ff fa70 	bl	111c <btn_wait_any>
    1c3c:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1c3e:	f7ff fa59 	bl	10f4 <btn_wait_up>
		switch(btn){
    1c42:	2c04      	cmp	r4, #4
    1c44:	d053      	beq.n	1cee <main+0x232>
    1c46:	d943      	bls.n	1cd0 <main+0x214>
    1c48:	2c40      	cmp	r4, #64	; 0x40
    1c4a:	d057      	beq.n	1cfc <main+0x240>
    1c4c:	2c80      	cmp	r4, #128	; 0x80
    1c4e:	f000 810d 	beq.w	1e6c <main+0x3b0>
    1c52:	2c20      	cmp	r4, #32
    1c54:	d1a6      	bne.n	1ba4 <main+0xe8>
	run_game(selected-1);
    1c56:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1c5a:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1c5e:	4b5f      	ldr	r3, [pc, #380]	; (1ddc <main+0x320>)
    1c60:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1c64:	2b01      	cmp	r3, #1
    1c66:	bf14      	ite	ne
    1c68:	2600      	movne	r6, #0
    1c6a:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1c6e:	4f5b      	ldr	r7, [pc, #364]	; (1ddc <main+0x320>)
    1c70:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1c74:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1c78:	6922      	ldr	r2, [r4, #16]
    1c7a:	495b      	ldr	r1, [pc, #364]	; (1de8 <main+0x32c>)
    1c7c:	4431      	add	r1, r6
    1c7e:	6960      	ldr	r0, [r4, #20]
    1c80:	f7ff fb39 	bl	12f6 <move>
	set_keymap(games_list[idx].keymap);
    1c84:	69a0      	ldr	r0, [r4, #24]
    1c86:	f7ff f9c7 	bl	1018 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1c8a:	eba5 0909 	sub.w	r9, r5, r9
    1c8e:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1c92:	f001 fb63 	bl	335c <set_video_mode>
	exit_code=chip_vm(addr,debug_level);
    1c96:	4b55      	ldr	r3, [pc, #340]	; (1dec <main+0x330>)
    1c98:	7819      	ldrb	r1, [r3, #0]
    1c9a:	4630      	mov	r0, r6
    1c9c:	f7fe fbb6 	bl	40c <chip_vm>
    1ca0:	4604      	mov	r4, r0
	print("exit code: ");
    1ca2:	4853      	ldr	r0, [pc, #332]	; (1df0 <main+0x334>)
    1ca4:	f001 f868 	bl	2d78 <print>
	switch(exit_code){
    1ca8:	2c01      	cmp	r4, #1
    1caa:	d02a      	beq.n	1d02 <main+0x246>
    1cac:	b374      	cbz	r4, 1d0c <main+0x250>
    1cae:	2c03      	cmp	r4, #3
    1cb0:	d82c      	bhi.n	1d0c <main+0x250>
		select_console(SERIAL);
    1cb2:	2001      	movs	r0, #1
    1cb4:	f001 f91c 	bl	2ef0 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1cb8:	4621      	mov	r1, r4
    1cba:	484e      	ldr	r0, [pc, #312]	; (1df4 <main+0x338>)
    1cbc:	f7fe fb36 	bl	32c <print_vms>
		select_console(LOCAL);
    1cc0:	2000      	movs	r0, #0
    1cc2:	f001 f915 	bl	2ef0 <select_console>
		btn_wait_any();
    1cc6:	f7ff fa29 	bl	111c <btn_wait_any>
		i=1;
    1cca:	2301      	movs	r3, #1
    1ccc:	9305      	str	r3, [sp, #20]
    1cce:	e01d      	b.n	1d0c <main+0x250>
		switch(btn){
    1cd0:	2c01      	cmp	r4, #1
    1cd2:	d009      	beq.n	1ce8 <main+0x22c>
    1cd4:	2c02      	cmp	r4, #2
    1cd6:	f47f af65 	bne.w	1ba4 <main+0xe8>
			if (selected>1) selected--;
    1cda:	f1b9 0f01 	cmp.w	r9, #1
    1cde:	f77f af61 	ble.w	1ba4 <main+0xe8>
    1ce2:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1ce6:	e75d      	b.n	1ba4 <main+0xe8>
			selected=1;
    1ce8:	f04f 0901 	mov.w	r9, #1
    1cec:	e75a      	b.n	1ba4 <main+0xe8>
			if (selected<count){
    1cee:	9b03      	ldr	r3, [sp, #12]
    1cf0:	454b      	cmp	r3, r9
    1cf2:	f77f af57 	ble.w	1ba4 <main+0xe8>
				selected++;
    1cf6:	f109 0901 	add.w	r9, r9, #1
    1cfa:	e753      	b.n	1ba4 <main+0xe8>
			selected=count;
    1cfc:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1d00:	e750      	b.n	1ba4 <main+0xe8>
		print("CHIP EXIT OK");
    1d02:	483d      	ldr	r0, [pc, #244]	; (1df8 <main+0x33c>)
    1d04:	f001 f838 	bl	2d78 <print>
		i=0;
    1d08:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1d0c:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1d10:	f001 fb58 	bl	33c4 <game_pause>
    1d14:	e0aa      	b.n	1e6c <main+0x3b0>
	gfx_cls();
    1d16:	f7ff fc63 	bl	15e0 <gfx_cls>
	print(" **** VM debug support ****\n");
    1d1a:	4838      	ldr	r0, [pc, #224]	; (1dfc <main+0x340>)
    1d1c:	f001 f82c 	bl	2d78 <print>
	print(" No debug support#\n");
    1d20:	4837      	ldr	r0, [pc, #220]	; (1e00 <main+0x344>)
    1d22:	f001 f829 	bl	2d78 <print>
	print(" Print PC and OPCODE\n");
    1d26:	4837      	ldr	r0, [pc, #220]	; (1e04 <main+0x348>)
    1d28:	f001 f826 	bl	2d78 <print>
	print(" Print all VM states.\n");
    1d2c:	4836      	ldr	r0, [pc, #216]	; (1e08 <main+0x34c>)
    1d2e:	f001 f823 	bl	2d78 <print>
	print(" Single step\n");
    1d32:	4836      	ldr	r0, [pc, #216]	; (1e0c <main+0x350>)
    1d34:	f001 f820 	bl	2d78 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d38:	4c2c      	ldr	r4, [pc, #176]	; (1dec <main+0x330>)
    1d3a:	2500      	movs	r5, #0
		put_char('*');
    1d3c:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d3e:	7821      	ldrb	r1, [r4, #0]
    1d40:	3101      	adds	r1, #1
    1d42:	00c9      	lsls	r1, r1, #3
    1d44:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d48:	4628      	mov	r0, r5
    1d4a:	f000 ffe1 	bl	2d10 <set_cursor>
		put_char('*');
    1d4e:	4630      	mov	r0, r6
    1d50:	f000 ff72 	bl	2c38 <put_char>
		btn=btn_wait_any();
    1d54:	f7ff f9e2 	bl	111c <btn_wait_any>
    1d58:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1d5a:	7821      	ldrb	r1, [r4, #0]
    1d5c:	3101      	adds	r1, #1
    1d5e:	00c9      	lsls	r1, r1, #3
    1d60:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d64:	4628      	mov	r0, r5
    1d66:	f000 ffd3 	bl	2d10 <set_cursor>
		put_char(' ');
    1d6a:	2020      	movs	r0, #32
    1d6c:	f000 ff64 	bl	2c38 <put_char>
		switch(btn){
    1d70:	2f04      	cmp	r7, #4
    1d72:	d009      	beq.n	1d88 <main+0x2cc>
    1d74:	2f20      	cmp	r7, #32
    1d76:	d079      	beq.n	1e6c <main+0x3b0>
    1d78:	2f02      	cmp	r7, #2
    1d7a:	d1e0      	bne.n	1d3e <main+0x282>
			if (debug_level) debug_level--;
    1d7c:	7823      	ldrb	r3, [r4, #0]
    1d7e:	2b00      	cmp	r3, #0
    1d80:	d0dd      	beq.n	1d3e <main+0x282>
    1d82:	3b01      	subs	r3, #1
    1d84:	7023      	strb	r3, [r4, #0]
    1d86:	e7da      	b.n	1d3e <main+0x282>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1d88:	7823      	ldrb	r3, [r4, #0]
    1d8a:	2b02      	cmp	r3, #2
    1d8c:	d8d7      	bhi.n	1d3e <main+0x282>
    1d8e:	3301      	adds	r3, #1
    1d90:	7023      	strb	r3, [r4, #0]
    1d92:	e7d4      	b.n	1d3e <main+0x282>
	set_video_mode(p);
    1d94:	2000      	movs	r0, #0
    1d96:	f001 fae1 	bl	335c <set_video_mode>
	color_bars();
    1d9a:	f7ff fd67 	bl	186c <color_bars>
	vertical_bars();
    1d9e:	f7ff fd8a 	bl	18b6 <vertical_bars>
	horiz_bars();
    1da2:	f7ff fda2 	bl	18ea <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1da6:	2110      	movs	r1, #16
    1da8:	4819      	ldr	r0, [pc, #100]	; (1e10 <main+0x354>)
    1daa:	f001 f800 	bl	2dae <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1dae:	210a      	movs	r1, #10
    1db0:	9804      	ldr	r0, [sp, #16]
    1db2:	f000 fffc 	bl	2dae <print_int>
	init_balls();
    1db6:	f7ff fe4b 	bl	1a50 <init_balls>
	p=0;
    1dba:	2400      	movs	r4, #0
		if (btn_query_down(KEY_RIGHT)){
    1dbc:	2510      	movs	r5, #16
				print("BPCHIP mode\n180x112 16 colors");
    1dbe:	4f15      	ldr	r7, [pc, #84]	; (1e14 <main+0x358>)
				print("SCHIP mode\n128x64 mono");
    1dc0:	4e15      	ldr	r6, [pc, #84]	; (1e18 <main+0x35c>)
    1dc2:	e03d      	b.n	1e40 <main+0x384>
    1dc4:	40021000 	.word	0x40021000
    1dc8:	40022000 	.word	0x40022000
    1dcc:	40011000 	.word	0x40011000
    1dd0:	40013800 	.word	0x40013800
    1dd4:	20004e60 	.word	0x20004e60
    1dd8:	00003cc0 	.word	0x00003cc0
    1ddc:	20000004 	.word	0x20000004
    1de0:	00003ce0 	.word	0x00003ce0
    1de4:	00003ce8 	.word	0x00003ce8
    1de8:	200006bc 	.word	0x200006bc
    1dec:	200026c0 	.word	0x200026c0
    1df0:	00003cf4 	.word	0x00003cf4
    1df4:	00003d10 	.word	0x00003d10
    1df8:	00003d00 	.word	0x00003d00
    1dfc:	00003d20 	.word	0x00003d20
    1e00:	00003d40 	.word	0x00003d40
    1e04:	00003d54 	.word	0x00003d54
    1e08:	00003d6c 	.word	0x00003d6c
    1e0c:	00003d84 	.word	0x00003d84
    1e10:	00004000 	.word	0x00004000
    1e14:	00003d94 	.word	0x00003d94
    1e18:	00003db4 	.word	0x00003db4
			p^=1;
    1e1c:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1e20:	4620      	mov	r0, r4
    1e22:	f001 fa9b 	bl	335c <set_video_mode>
			switch(p){
    1e26:	2c00      	cmp	r4, #0
    1e28:	d046      	beq.n	1eb8 <main+0x3fc>
    1e2a:	2c01      	cmp	r4, #1
    1e2c:	d04a      	beq.n	1ec4 <main+0x408>
			vertical_bars();
    1e2e:	f7ff fd42 	bl	18b6 <vertical_bars>
			horiz_bars();
    1e32:	f7ff fd5a 	bl	18ea <horiz_bars>
			init_balls();
    1e36:	f7ff fe0b 	bl	1a50 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1e3a:	4628      	mov	r0, r5
    1e3c:	f7ff f95a 	bl	10f4 <btn_wait_up>
		draw_balls();
    1e40:	f7ff fd8a 	bl	1958 <draw_balls>
		draw_balls();
    1e44:	f7ff fd88 	bl	1958 <draw_balls>
		move_balls();
    1e48:	f7ff fdc1 	bl	19ce <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1e4c:	4628      	mov	r0, r5
    1e4e:	f7ff f931 	bl	10b4 <btn_query_down>
    1e52:	2800      	cmp	r0, #0
    1e54:	d1e2      	bne.n	1e1c <main+0x360>
		}else if (btn_query_down(KEY_B)){
    1e56:	2020      	movs	r0, #32
    1e58:	f7ff f92c 	bl	10b4 <btn_query_down>
    1e5c:	2800      	cmp	r0, #0
    1e5e:	d0ef      	beq.n	1e40 <main+0x384>
			btn_wait_up(KEY_B);
    1e60:	2020      	movs	r0, #32
    1e62:	f7ff f947 	bl	10f4 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1e66:	2000      	movs	r0, #0
    1e68:	f001 fa78 	bl	335c <set_video_mode>
			display_menu();
    1e6c:	f7ff fd56 	bl	191c <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1e70:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1e74:	b2e4      	uxtb	r4, r4
    1e76:	4621      	mov	r1, r4
    1e78:	2000      	movs	r0, #0
    1e7a:	f000 ff49 	bl	2d10 <set_cursor>
		put_char('>');
    1e7e:	203e      	movs	r0, #62	; 0x3e
    1e80:	f000 feda 	bl	2c38 <put_char>
		btn=btn_wait_any();
    1e84:	f7ff f94a 	bl	111c <btn_wait_any>
    1e88:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1e8a:	f7ff f933 	bl	10f4 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1e8e:	4621      	mov	r1, r4
    1e90:	2000      	movs	r0, #0
    1e92:	f000 ff3d 	bl	2d10 <set_cursor>
		put_char(' ');
    1e96:	2020      	movs	r0, #32
    1e98:	f000 fece 	bl	2c38 <put_char>
		switch(btn){
    1e9c:	2d04      	cmp	r5, #4
    1e9e:	f43f ae60 	beq.w	1b62 <main+0xa6>
    1ea2:	2d20      	cmp	r5, #32
    1ea4:	f43f ae64 	beq.w	1b70 <main+0xb4>
    1ea8:	2d02      	cmp	r5, #2
    1eaa:	d1e1      	bne.n	1e70 <main+0x3b4>
			if (i) i--;
    1eac:	f1ba 0f00 	cmp.w	sl, #0
    1eb0:	d0de      	beq.n	1e70 <main+0x3b4>
    1eb2:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1eb6:	e7db      	b.n	1e70 <main+0x3b4>
				print("BPCHIP mode\n180x112 16 colors");
    1eb8:	4638      	mov	r0, r7
    1eba:	f000 ff5d 	bl	2d78 <print>
				color_bars();
    1ebe:	f7ff fcd5 	bl	186c <color_bars>
    1ec2:	e7b4      	b.n	1e2e <main+0x372>
				print("SCHIP mode\n128x64 mono");
    1ec4:	4630      	mov	r0, r6
    1ec6:	f000 ff57 	bl	2d78 <print>
    1eca:	e7b0      	b.n	1e2e <main+0x372>
	gfx_cls();
    1ecc:	f7ff fb88 	bl	15e0 <gfx_cls>
	print("press buttons\n");
    1ed0:	4828      	ldr	r0, [pc, #160]	; (1f74 <main+0x4b8>)
    1ed2:	f000 ff51 	bl	2d78 <print>
		tone(freq,30);
    1ed6:	251e      	movs	r5, #30
			freq=493;
    1ed8:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    1edc:	f240 266e 	movw	r6, #622	; 0x26e
    1ee0:	e019      	b.n	1f16 <main+0x45a>
		switch(key){
    1ee2:	2802      	cmp	r0, #2
    1ee4:	d03f      	beq.n	1f66 <main+0x4aa>
    1ee6:	2804      	cmp	r0, #4
    1ee8:	d00e      	beq.n	1f08 <main+0x44c>
    1eea:	2801      	cmp	r0, #1
    1eec:	d024      	beq.n	1f38 <main+0x47c>
		tone(freq,30);
    1eee:	4629      	mov	r1, r5
    1ef0:	9802      	ldr	r0, [sp, #8]
    1ef2:	f000 fc95 	bl	2820 <tone>
	while (key!=KEY_B){
    1ef6:	2c20      	cmp	r4, #32
    1ef8:	d10d      	bne.n	1f16 <main+0x45a>
    1efa:	e02b      	b.n	1f54 <main+0x498>
		switch(key){
    1efc:	2810      	cmp	r0, #16
    1efe:	d1f6      	bne.n	1eee <main+0x432>
			freq=523;
    1f00:	f240 230b 	movw	r3, #523	; 0x20b
    1f04:	9302      	str	r3, [sp, #8]
    1f06:	e002      	b.n	1f0e <main+0x452>
			freq=466;
    1f08:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    1f0c:	9302      	str	r3, [sp, #8]
		tone(freq,30);
    1f0e:	4629      	mov	r1, r5
    1f10:	9802      	ldr	r0, [sp, #8]
    1f12:	f000 fc85 	bl	2820 <tone>
		key=btn_wait_any();
    1f16:	f7ff f901 	bl	111c <btn_wait_any>
    1f1a:	4604      	mov	r4, r0
		switch(key){
    1f1c:	2808      	cmp	r0, #8
    1f1e:	d026      	beq.n	1f6e <main+0x4b2>
    1f20:	d9df      	bls.n	1ee2 <main+0x426>
    1f22:	2820      	cmp	r0, #32
    1f24:	d011      	beq.n	1f4a <main+0x48e>
    1f26:	d9e9      	bls.n	1efc <main+0x440>
    1f28:	2840      	cmp	r0, #64	; 0x40
    1f2a:	d009      	beq.n	1f40 <main+0x484>
    1f2c:	2880      	cmp	r0, #128	; 0x80
    1f2e:	d1de      	bne.n	1eee <main+0x432>
			freq=659;
    1f30:	f240 2393 	movw	r3, #659	; 0x293
    1f34:	9302      	str	r3, [sp, #8]
    1f36:	e7ea      	b.n	1f0e <main+0x452>
			freq=554;
    1f38:	f240 232a 	movw	r3, #554	; 0x22a
    1f3c:	9302      	str	r3, [sp, #8]
    1f3e:	e7e6      	b.n	1f0e <main+0x452>
			freq=622;
    1f40:	9602      	str	r6, [sp, #8]
    1f42:	e7e4      	b.n	1f0e <main+0x452>
				basic();
    1f44:	f7fe f998 	bl	278 <basic>
    1f48:	e790      	b.n	1e6c <main+0x3b0>
		tone(freq,30);
    1f4a:	211e      	movs	r1, #30
    1f4c:	f240 204b 	movw	r0, #587	; 0x24b
    1f50:	f000 fc66 	bl	2820 <tone>
	noise(30);
    1f54:	201e      	movs	r0, #30
    1f56:	f000 fc9d 	bl	2894 <noise>
	while(sound_timer);
    1f5a:	4a07      	ldr	r2, [pc, #28]	; (1f78 <main+0x4bc>)
    1f5c:	8813      	ldrh	r3, [r2, #0]
    1f5e:	b29b      	uxth	r3, r3
    1f60:	2b00      	cmp	r3, #0
    1f62:	d1fb      	bne.n	1f5c <main+0x4a0>
    1f64:	e782      	b.n	1e6c <main+0x3b0>
			freq=440;
    1f66:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    1f6a:	9302      	str	r3, [sp, #8]
    1f6c:	e7cf      	b.n	1f0e <main+0x452>
			freq=493;
    1f6e:	9702      	str	r7, [sp, #8]
    1f70:	e7cd      	b.n	1f0e <main+0x452>
    1f72:	bf00      	nop
    1f74:	00003dcc 	.word	0x00003dcc
    1f78:	20004e54 	.word	0x20004e54

00001f7c <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f7c:	283b      	cmp	r0, #59	; 0x3b
    1f7e:	dc0d      	bgt.n	1f9c <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1f80:	1143      	asrs	r3, r0, #5
    1f82:	009b      	lsls	r3, r3, #2
    1f84:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1f88:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1f8c:	6819      	ldr	r1, [r3, #0]
    1f8e:	f000 001f 	and.w	r0, r0, #31
    1f92:	2201      	movs	r2, #1
    1f94:	fa02 f000 	lsl.w	r0, r2, r0
    1f98:	4308      	orrs	r0, r1
    1f9a:	6018      	str	r0, [r3, #0]
    1f9c:	4770      	bx	lr

00001f9e <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1f9e:	283b      	cmp	r0, #59	; 0x3b
    1fa0:	dc08      	bgt.n	1fb4 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1fa2:	1142      	asrs	r2, r0, #5
    1fa4:	f000 001f 	and.w	r0, r0, #31
    1fa8:	2301      	movs	r3, #1
    1faa:	fa03 f000 	lsl.w	r0, r3, r0
    1fae:	4b02      	ldr	r3, [pc, #8]	; (1fb8 <disable_interrupt+0x1a>)
    1fb0:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1fb4:	4770      	bx	lr
    1fb6:	bf00      	nop
    1fb8:	e000e180 	.word	0xe000e180

00001fbc <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1fbc:	283b      	cmp	r0, #59	; 0x3b
    1fbe:	dc09      	bgt.n	1fd4 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1fc0:	1142      	asrs	r2, r0, #5
    1fc2:	4b05      	ldr	r3, [pc, #20]	; (1fd8 <get_pending+0x1c>)
    1fc4:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1fc8:	f000 031f 	and.w	r3, r0, #31
    1fcc:	2001      	movs	r0, #1
    1fce:	4098      	lsls	r0, r3
    1fd0:	4010      	ands	r0, r2
    1fd2:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1fd4:	2000      	movs	r0, #0
}
    1fd6:	4770      	bx	lr
    1fd8:	e000e280 	.word	0xe000e280

00001fdc <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1fdc:	283b      	cmp	r0, #59	; 0x3b
    1fde:	dc0c      	bgt.n	1ffa <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1fe0:	1143      	asrs	r3, r0, #5
    1fe2:	009b      	lsls	r3, r3, #2
    1fe4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1fe8:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1fec:	681a      	ldr	r2, [r3, #0]
    1fee:	f000 031f 	and.w	r3, r0, #31
    1ff2:	2001      	movs	r0, #1
    1ff4:	4098      	lsls	r0, r3
    1ff6:	4010      	ands	r0, r2
    1ff8:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1ffa:	2000      	movs	r0, #0
}
    1ffc:	4770      	bx	lr

00001ffe <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1ffe:	283b      	cmp	r0, #59	; 0x3b
    2000:	dc0d      	bgt.n	201e <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    2002:	1143      	asrs	r3, r0, #5
    2004:	009b      	lsls	r3, r3, #2
    2006:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    200a:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    200e:	6819      	ldr	r1, [r3, #0]
    2010:	f000 001f 	and.w	r0, r0, #31
    2014:	2201      	movs	r2, #1
    2016:	fa02 f000 	lsl.w	r0, r2, r0
    201a:	4308      	orrs	r0, r1
    201c:	6018      	str	r0, [r3, #0]
    201e:	4770      	bx	lr

00002020 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2020:	283b      	cmp	r0, #59	; 0x3b
    2022:	dc08      	bgt.n	2036 <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    2024:	1142      	asrs	r2, r0, #5
    2026:	f000 001f 	and.w	r0, r0, #31
    202a:	2301      	movs	r3, #1
    202c:	fa03 f000 	lsl.w	r0, r3, r0
    2030:	4b01      	ldr	r3, [pc, #4]	; (2038 <clear_pending+0x18>)
    2032:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    2036:	4770      	bx	lr
    2038:	e000e280 	.word	0xe000e280

0000203c <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    203c:	283b      	cmp	r0, #59	; 0x3b
    203e:	d90c      	bls.n	205a <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2040:	f100 030f 	add.w	r3, r0, #15
    2044:	2b0e      	cmp	r3, #14
    2046:	d807      	bhi.n	2058 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    2048:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    204c:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2050:	30fc      	adds	r0, #252	; 0xfc
    2052:	0109      	lsls	r1, r1, #4
    2054:	4b04      	ldr	r3, [pc, #16]	; (2068 <set_int_priority+0x2c>)
    2056:	54c1      	strb	r1, [r0, r3]
    2058:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    205a:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    205e:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    2062:	0109      	lsls	r1, r1, #4
    2064:	7001      	strb	r1, [r0, #0]
    2066:	4770      	bx	lr
    2068:	e000ed18 	.word	0xe000ed18

0000206c <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    206c:	f010 0f03 	tst.w	r0, #3
    2070:	d113      	bne.n	209a <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    2072:	4b0c      	ldr	r3, [pc, #48]	; (20a4 <leap_year+0x38>)
    2074:	fba3 2300 	umull	r2, r3, r3, r0
    2078:	095b      	lsrs	r3, r3, #5
    207a:	2264      	movs	r2, #100	; 0x64
    207c:	fb02 0313 	mls	r3, r2, r3, r0
    2080:	b96b      	cbnz	r3, 209e <leap_year+0x32>
    2082:	4b08      	ldr	r3, [pc, #32]	; (20a4 <leap_year+0x38>)
    2084:	fba3 2300 	umull	r2, r3, r3, r0
    2088:	09db      	lsrs	r3, r3, #7
    208a:	f44f 72c8 	mov.w	r2, #400	; 0x190
    208e:	fb02 0013 	mls	r0, r2, r3, r0
    2092:	fab0 f080 	clz	r0, r0
    2096:	0940      	lsrs	r0, r0, #5
    2098:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    209a:	2000      	movs	r0, #0
    209c:	4770      	bx	lr
		return 1;
    209e:	2001      	movs	r0, #1
}
    20a0:	4770      	bx	lr
    20a2:	bf00      	nop
    20a4:	51eb851f 	.word	0x51eb851f

000020a8 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    20a8:	4b07      	ldr	r3, [pc, #28]	; (20c8 <sec_per_month+0x20>)
    20aa:	5c5a      	ldrb	r2, [r3, r1]
    20ac:	4b07      	ldr	r3, [pc, #28]	; (20cc <sec_per_month+0x24>)
    20ae:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    20b2:	2902      	cmp	r1, #2
    20b4:	d001      	beq.n	20ba <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    20b6:	4618      	mov	r0, r3
    20b8:	4770      	bx	lr
	if (month==2 && leap){
    20ba:	2800      	cmp	r0, #0
    20bc:	d0fb      	beq.n	20b6 <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    20be:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    20c2:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    20c6:	e7f6      	b.n	20b6 <sec_per_month+0xe>
    20c8:	00003ba8 	.word	0x00003ba8
    20cc:	00015180 	.word	0x00015180

000020d0 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    20d0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    20d4:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    20d6:	4b37      	ldr	r3, [pc, #220]	; (21b4 <get_date_time+0xe4>)
    20d8:	699a      	ldr	r2, [r3, #24]
    20da:	69dc      	ldr	r4, [r3, #28]
    20dc:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    20e0:	f240 70b2 	movw	r0, #1970	; 0x7b2
    20e4:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    20e6:	f7ff ffc1 	bl	206c <leap_year>
    20ea:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20ec:	4d32      	ldr	r5, [pc, #200]	; (21b8 <get_date_time+0xe8>)
    20ee:	4f33      	ldr	r7, [pc, #204]	; (21bc <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    20f0:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 21d0 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20f4:	e00e      	b.n	2114 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    20f6:	4444      	add	r4, r8
    20f8:	e005      	b.n	2106 <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    20fa:	42ac      	cmp	r4, r5
    20fc:	d90f      	bls.n	211e <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    20fe:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    2102:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    2106:	8930      	ldrh	r0, [r6, #8]
    2108:	3001      	adds	r0, #1
    210a:	b280      	uxth	r0, r0
    210c:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    210e:	f7ff ffad 	bl	206c <leap_year>
    2112:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2114:	f1b9 0f00 	cmp.w	r9, #0
    2118:	d1ef      	bne.n	20fa <get_date_time+0x2a>
    211a:	42bc      	cmp	r4, r7
    211c:	d8eb      	bhi.n	20f6 <get_date_time+0x26>
	}//while
	dt->month=1;
    211e:	8873      	ldrh	r3, [r6, #2]
    2120:	2201      	movs	r2, #1
    2122:	f362 1389 	bfi	r3, r2, #6, #4
    2126:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    2128:	f362 0345 	bfi	r3, r2, #1, #5
    212c:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    212e:	6833      	ldr	r3, [r6, #0]
    2130:	f36f 3310 	bfc	r3, #12, #5
    2134:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    2136:	f36f 138b 	bfc	r3, #6, #6
    213a:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    213c:	f36f 0305 	bfc	r3, #0, #6
    2140:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2142:	e005      	b.n	2150 <get_date_time+0x80>
		dt->month++;
    2144:	3501      	adds	r5, #1
    2146:	8873      	ldrh	r3, [r6, #2]
    2148:	f365 1389 	bfi	r3, r5, #6, #4
    214c:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    214e:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2150:	8875      	ldrh	r5, [r6, #2]
    2152:	f3c5 1583 	ubfx	r5, r5, #6, #4
    2156:	4629      	mov	r1, r5
    2158:	4648      	mov	r0, r9
    215a:	f7ff ffa5 	bl	20a8 <sec_per_month>
    215e:	4284      	cmp	r4, r0
    2160:	d8f0      	bhi.n	2144 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    2162:	4a17      	ldr	r2, [pc, #92]	; (21c0 <get_date_time+0xf0>)
    2164:	fba2 3204 	umull	r3, r2, r2, r4
    2168:	0c12      	lsrs	r2, r2, #16
    216a:	1c51      	adds	r1, r2, #1
    216c:	78b3      	ldrb	r3, [r6, #2]
    216e:	f361 0345 	bfi	r3, r1, #1, #5
    2172:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    2174:	4b13      	ldr	r3, [pc, #76]	; (21c4 <get_date_time+0xf4>)
    2176:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    217a:	4c13      	ldr	r4, [pc, #76]	; (21c8 <get_date_time+0xf8>)
    217c:	fba4 3402 	umull	r3, r4, r4, r2
    2180:	0ae4      	lsrs	r4, r4, #11
    2182:	6833      	ldr	r3, [r6, #0]
    2184:	f364 3310 	bfi	r3, r4, #12, #5
    2188:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    218a:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    218e:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    2192:	4a0e      	ldr	r2, [pc, #56]	; (21cc <get_date_time+0xfc>)
    2194:	fba2 1204 	umull	r1, r2, r2, r4
    2198:	0952      	lsrs	r2, r2, #5
    219a:	f362 138b 	bfi	r3, r2, #6, #6
    219e:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    21a0:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    21a4:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    21a8:	f364 0305 	bfi	r3, r4, #0, #6
    21ac:	7033      	strb	r3, [r6, #0]
    21ae:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    21b2:	bf00      	nop
    21b4:	40002800 	.word	0x40002800
    21b8:	01e284ff 	.word	0x01e284ff
    21bc:	01e1337f 	.word	0x01e1337f
    21c0:	c22e4507 	.word	0xc22e4507
    21c4:	00015180 	.word	0x00015180
    21c8:	91a2b3c5 	.word	0x91a2b3c5
    21cc:	88888889 	.word	0x88888889
    21d0:	fe1ecc80 	.word	0xfe1ecc80

000021d4 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    21d4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    21d8:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    21da:	8903      	ldrh	r3, [r0, #8]
    21dc:	f240 72b1 	movw	r2, #1969	; 0x7b1
    21e0:	4293      	cmp	r3, r2
    21e2:	d857      	bhi.n	2294 <set_date_time+0xc0>
    21e4:	f240 70b2 	movw	r0, #1970	; 0x7b2
    21e8:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    21ec:	f7ff ff3e 	bl	206c <leap_year>
    21f0:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    21f2:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    21f4:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    21f8:	f3c6 1683 	ubfx	r6, r6, #6, #4
    21fc:	2e01      	cmp	r6, #1
    21fe:	d908      	bls.n	2212 <set_date_time+0x3e>
    2200:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    2202:	4629      	mov	r1, r5
    2204:	4638      	mov	r0, r7
    2206:	f7ff ff4f 	bl	20a8 <sec_per_month>
    220a:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    220c:	3501      	adds	r5, #1
    220e:	42b5      	cmp	r5, r6
    2210:	d1f7      	bne.n	2202 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    2212:	f8d8 2000 	ldr.w	r2, [r8]
    2216:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    221a:	f8b8 2000 	ldrh.w	r2, [r8]
    221e:	f3c2 1285 	ubfx	r2, r2, #6, #6
    2222:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    2226:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    2228:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    222c:	fb01 2203 	mla	r2, r1, r3, r2
    2230:	f898 3000 	ldrb.w	r3, [r8]
    2234:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2238:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    223a:	f898 3002 	ldrb.w	r3, [r8, #2]
    223e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2242:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2244:	4928      	ldr	r1, [pc, #160]	; (22e8 <set_date_time+0x114>)
    2246:	fb01 2303 	mla	r3, r1, r3, r2
    224a:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    224c:	4a27      	ldr	r2, [pc, #156]	; (22ec <set_date_time+0x118>)
    224e:	69d3      	ldr	r3, [r2, #28]
    2250:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2254:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2256:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    225a:	6813      	ldr	r3, [r2, #0]
    225c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2260:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2262:	4b23      	ldr	r3, [pc, #140]	; (22f0 <set_date_time+0x11c>)
    2264:	685a      	ldr	r2, [r3, #4]
    2266:	f042 0210 	orr.w	r2, r2, #16
    226a:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    226c:	0c22      	lsrs	r2, r4, #16
    226e:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    2270:	b2a4      	uxth	r4, r4
    2272:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2274:	685a      	ldr	r2, [r3, #4]
    2276:	f022 0210 	bic.w	r2, r2, #16
    227a:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    227c:	461a      	mov	r2, r3
    227e:	6853      	ldr	r3, [r2, #4]
    2280:	f013 0f20 	tst.w	r3, #32
    2284:	d0fb      	beq.n	227e <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2286:	4a1b      	ldr	r2, [pc, #108]	; (22f4 <set_date_time+0x120>)
    2288:	6813      	ldr	r3, [r2, #0]
    228a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    228e:	6013      	str	r3, [r2, #0]
    2290:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    2294:	f640 023a 	movw	r2, #2106	; 0x83a
    2298:	4293      	cmp	r3, r2
    229a:	d90c      	bls.n	22b6 <set_date_time+0xe2>
    229c:	4616      	mov	r6, r2
    229e:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    22a2:	4610      	mov	r0, r2
    22a4:	f7ff fee2 	bl	206c <leap_year>
    22a8:	4607      	mov	r7, r0
    22aa:	2400      	movs	r4, #0
    22ac:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    22b0:	f8df 9044 	ldr.w	r9, [pc, #68]	; 22f8 <set_date_time+0x124>
    22b4:	e00e      	b.n	22d4 <set_date_time+0x100>
	leap=leap_year(dt->year);
    22b6:	8906      	ldrh	r6, [r0, #8]
    22b8:	4630      	mov	r0, r6
    22ba:	f7ff fed7 	bl	206c <leap_year>
    22be:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    22c0:	f240 73b2 	movw	r3, #1970	; 0x7b2
    22c4:	429e      	cmp	r6, r3
    22c6:	d8f0      	bhi.n	22aa <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    22c8:	2400      	movs	r4, #0
    22ca:	e793      	b.n	21f4 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    22cc:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    22ce:	3501      	adds	r5, #1
    22d0:	42b5      	cmp	r5, r6
    22d2:	d28f      	bcs.n	21f4 <set_date_time+0x20>
		if (leap_year(i)){
    22d4:	4628      	mov	r0, r5
    22d6:	f7ff fec9 	bl	206c <leap_year>
    22da:	2800      	cmp	r0, #0
    22dc:	d0f6      	beq.n	22cc <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    22de:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    22e2:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    22e6:	e7f2      	b.n	22ce <set_date_time+0xfa>
    22e8:	00015180 	.word	0x00015180
    22ec:	40021000 	.word	0x40021000
    22f0:	40002800 	.word	0x40002800
    22f4:	40007000 	.word	0x40007000
    22f8:	01e13380 	.word	0x01e13380

000022fc <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    22fc:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    22fe:	4b35      	ldr	r3, [pc, #212]	; (23d4 <rtc_init+0xd8>)
    2300:	685a      	ldr	r2, [r3, #4]
    2302:	f64a 2355 	movw	r3, #43605	; 0xaa55
    2306:	429a      	cmp	r2, r3
    2308:	d05c      	beq.n	23c4 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    230a:	4b33      	ldr	r3, [pc, #204]	; (23d8 <rtc_init+0xdc>)
    230c:	69da      	ldr	r2, [r3, #28]
    230e:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2312:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2314:	4c31      	ldr	r4, [pc, #196]	; (23dc <rtc_init+0xe0>)
    2316:	6822      	ldr	r2, [r4, #0]
    2318:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    231c:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    231e:	6a1a      	ldr	r2, [r3, #32]
    2320:	f042 0201 	orr.w	r2, r2, #1
    2324:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    2326:	461a      	mov	r2, r3
    2328:	6a13      	ldr	r3, [r2, #32]
    232a:	f013 0f02 	tst.w	r3, #2
    232e:	d0fb      	beq.n	2328 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2330:	4a29      	ldr	r2, [pc, #164]	; (23d8 <rtc_init+0xdc>)
    2332:	6a13      	ldr	r3, [r2, #32]
    2334:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2338:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    233a:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    233e:	6853      	ldr	r3, [r2, #4]
    2340:	f013 0f08 	tst.w	r3, #8
    2344:	d0fb      	beq.n	233e <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    2346:	4a26      	ldr	r2, [pc, #152]	; (23e0 <rtc_init+0xe4>)
    2348:	6853      	ldr	r3, [r2, #4]
    234a:	f013 0f20 	tst.w	r3, #32
    234e:	d0fb      	beq.n	2348 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2350:	4a23      	ldr	r2, [pc, #140]	; (23e0 <rtc_init+0xe4>)
    2352:	6853      	ldr	r3, [r2, #4]
    2354:	f043 0310 	orr.w	r3, r3, #16
    2358:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    235a:	6853      	ldr	r3, [r2, #4]
    235c:	f013 0f20 	tst.w	r3, #32
    2360:	d0fb      	beq.n	235a <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    2362:	4a1f      	ldr	r2, [pc, #124]	; (23e0 <rtc_init+0xe4>)
    2364:	6813      	ldr	r3, [r2, #0]
    2366:	4319      	orrs	r1, r3
    2368:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    236a:	6853      	ldr	r3, [r2, #4]
    236c:	f013 0f20 	tst.w	r3, #32
    2370:	d0fb      	beq.n	236a <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    2372:	03c2      	lsls	r2, r0, #15
    2374:	481b      	ldr	r0, [pc, #108]	; (23e4 <rtc_init+0xe8>)
    2376:	fba0 3202 	umull	r3, r2, r0, r2
    237a:	0992      	lsrs	r2, r2, #6
    237c:	3a01      	subs	r2, #1
    237e:	b291      	uxth	r1, r2
    2380:	4b17      	ldr	r3, [pc, #92]	; (23e0 <rtc_init+0xe4>)
    2382:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    2384:	4619      	mov	r1, r3
    2386:	684b      	ldr	r3, [r1, #4]
    2388:	f013 0f20 	tst.w	r3, #32
    238c:	d0fb      	beq.n	2386 <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    238e:	f3c2 4203 	ubfx	r2, r2, #16, #4
    2392:	4b13      	ldr	r3, [pc, #76]	; (23e0 <rtc_init+0xe4>)
    2394:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    2396:	461a      	mov	r2, r3
    2398:	6853      	ldr	r3, [r2, #4]
    239a:	f013 0f20 	tst.w	r3, #32
    239e:	d0fb      	beq.n	2398 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    23a0:	f64a 2255 	movw	r2, #43605	; 0xaa55
    23a4:	4b0b      	ldr	r3, [pc, #44]	; (23d4 <rtc_init+0xd8>)
    23a6:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    23a8:	4a0d      	ldr	r2, [pc, #52]	; (23e0 <rtc_init+0xe4>)
    23aa:	6853      	ldr	r3, [r2, #4]
    23ac:	f023 0310 	bic.w	r3, r3, #16
    23b0:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    23b2:	6853      	ldr	r3, [r2, #4]
    23b4:	f013 0f20 	tst.w	r3, #32
    23b8:	d0fb      	beq.n	23b2 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    23ba:	4a08      	ldr	r2, [pc, #32]	; (23dc <rtc_init+0xe0>)
    23bc:	6813      	ldr	r3, [r2, #0]
    23be:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23c2:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    23c4:	210f      	movs	r1, #15
    23c6:	2003      	movs	r0, #3
    23c8:	f7ff fe38 	bl	203c <set_int_priority>
	enable_interrupt(IRQ_RTC);
    23cc:	2003      	movs	r0, #3
    23ce:	f7ff fdd5 	bl	1f7c <enable_interrupt>
    23d2:	bd10      	pop	{r4, pc}
    23d4:	40006c00 	.word	0x40006c00
    23d8:	40021000 	.word	0x40021000
    23dc:	40007000 	.word	0x40007000
    23e0:	40002800 	.word	0x40002800
    23e4:	10624dd3 	.word	0x10624dd3

000023e8 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    23e8:	4b06      	ldr	r3, [pc, #24]	; (2404 <reset_backup_domain+0x1c>)
    23ea:	69da      	ldr	r2, [r3, #28]
    23ec:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    23f0:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    23f2:	6a1a      	ldr	r2, [r3, #32]
    23f4:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    23f8:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    23fa:	6a1a      	ldr	r2, [r3, #32]
    23fc:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    2400:	621a      	str	r2, [r3, #32]
    2402:	4770      	bx	lr
    2404:	40021000 	.word	0x40021000

00002408 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2408:	4a27      	ldr	r2, [pc, #156]	; (24a8 <rtc_clock_trim+0xa0>)
    240a:	69d3      	ldr	r3, [r2, #28]
    240c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2410:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    2412:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2416:	6853      	ldr	r3, [r2, #4]
    2418:	f013 0f08 	tst.w	r3, #8
    241c:	d0fb      	beq.n	2416 <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    241e:	4a23      	ldr	r2, [pc, #140]	; (24ac <rtc_clock_trim+0xa4>)
    2420:	6813      	ldr	r3, [r2, #0]
    2422:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2426:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2428:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    242c:	6853      	ldr	r3, [r2, #4]
    242e:	f043 0310 	orr.w	r3, r3, #16
    2432:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2434:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    2438:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    243a:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    243e:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2440:	b9b8      	cbnz	r0, 2472 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    2442:	2200      	movs	r2, #0
    2444:	4b1a      	ldr	r3, [pc, #104]	; (24b0 <rtc_clock_trim+0xa8>)
    2446:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    2448:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    244c:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2450:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2452:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2454:	4a17      	ldr	r2, [pc, #92]	; (24b4 <rtc_clock_trim+0xac>)
    2456:	6853      	ldr	r3, [r2, #4]
    2458:	f023 0310 	bic.w	r3, r3, #16
    245c:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    245e:	6853      	ldr	r3, [r2, #4]
    2460:	f013 0f20 	tst.w	r3, #32
    2464:	d0fb      	beq.n	245e <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    2466:	4a11      	ldr	r2, [pc, #68]	; (24ac <rtc_clock_trim+0xa4>)
    2468:	6813      	ldr	r3, [r2, #0]
    246a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    246e:	6013      	str	r3, [r2, #0]
    2470:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    2472:	2800      	cmp	r0, #0
    2474:	dd06      	ble.n	2484 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    2476:	4b0e      	ldr	r3, [pc, #56]	; (24b0 <rtc_clock_trim+0xa8>)
    2478:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    247a:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    247e:	4310      	orrs	r0, r2
    2480:	62d8      	str	r0, [r3, #44]	; 0x2c
    2482:	e7e7      	b.n	2454 <rtc_clock_trim+0x4c>
		trim=-trim;
    2484:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    2486:	2100      	movs	r1, #0
    2488:	4b09      	ldr	r3, [pc, #36]	; (24b0 <rtc_clock_trim+0xa8>)
    248a:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    248c:	f64f 73ff 	movw	r3, #65535	; 0xffff
    2490:	287f      	cmp	r0, #127	; 0x7f
    2492:	bfd4      	ite	le
    2494:	1a18      	suble	r0, r3, r0
    2496:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    249a:	f3c0 000e 	ubfx	r0, r0, #0, #15
    249e:	4a05      	ldr	r2, [pc, #20]	; (24b4 <rtc_clock_trim+0xac>)
    24a0:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    24a2:	6091      	str	r1, [r2, #8]
    24a4:	e7d6      	b.n	2454 <rtc_clock_trim+0x4c>
    24a6:	bf00      	nop
    24a8:	40021000 	.word	0x40021000
    24ac:	40007000 	.word	0x40007000
    24b0:	40006c00 	.word	0x40006c00
    24b4:	40002800 	.word	0x40002800

000024b8 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    24b8:	4770      	bx	lr

000024ba <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    24ba:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    24be:	4607      	mov	r7, r0
    24c0:	4688      	mov	r8, r1
    24c2:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    24c4:	2400      	movs	r4, #0
	i=0;
    24c6:	4626      	mov	r6, r4
	while (digit(date[i])){
    24c8:	e008      	b.n	24dc <str_to_date+0x22>
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
    24e8:	d1ef      	bne.n	24ca <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    24ea:	2e03      	cmp	r6, #3
    24ec:	dd02      	ble.n	24f4 <str_to_date+0x3a>
    24ee:	782b      	ldrb	r3, [r5, #0]
    24f0:	2b2f      	cmp	r3, #47	; 0x2f
    24f2:	d002      	beq.n	24fa <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    24f4:	4650      	mov	r0, sl
    24f6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    24fa:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    24fe:	3601      	adds	r6, #1
    2500:	19bd      	adds	r5, r7, r6
	n=0;
    2502:	4604      	mov	r4, r0
	while (digit(date[i])){
    2504:	e008      	b.n	2518 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    2506:	3601      	adds	r6, #1
    2508:	3501      	adds	r5, #1
    250a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    250e:	f899 3000 	ldrb.w	r3, [r9]
    2512:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    2516:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2518:	46a9      	mov	r9, r5
    251a:	7828      	ldrb	r0, [r5, #0]
    251c:	f7fe fe7f 	bl	121e <digit>
    2520:	4682      	mov	sl, r0
    2522:	2800      	cmp	r0, #0
    2524:	d1ef      	bne.n	2506 <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    2526:	2e06      	cmp	r6, #6
    2528:	dde4      	ble.n	24f4 <str_to_date+0x3a>
    252a:	782b      	ldrb	r3, [r5, #0]
    252c:	2b2f      	cmp	r3, #47	; 0x2f
    252e:	d1e1      	bne.n	24f4 <str_to_date+0x3a>
	dt->month=n;
    2530:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2534:	f364 1389 	bfi	r3, r4, #6, #4
    2538:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    253c:	1c74      	adds	r4, r6, #1
    253e:	443e      	add	r6, r7
	while (digit(date[i])){
    2540:	e008      	b.n	2554 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    2542:	3401      	adds	r4, #1
    2544:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2548:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    254c:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2550:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2554:	7870      	ldrb	r0, [r6, #1]
    2556:	f7fe fe62 	bl	121e <digit>
    255a:	2800      	cmp	r0, #0
    255c:	d1f1      	bne.n	2542 <str_to_date+0x88>
	if (i<10) return 0;
    255e:	2c09      	cmp	r4, #9
    2560:	dd08      	ble.n	2574 <str_to_date+0xba>
	dt->day=n;
    2562:	f898 3002 	ldrb.w	r3, [r8, #2]
    2566:	f36a 0345 	bfi	r3, sl, #1, #5
    256a:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    256e:	f04f 0a01 	mov.w	sl, #1
    2572:	e7bf      	b.n	24f4 <str_to_date+0x3a>
	if (i<10) return 0;
    2574:	4682      	mov	sl, r0
    2576:	e7bd      	b.n	24f4 <str_to_date+0x3a>

00002578 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    2578:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    257c:	4607      	mov	r7, r0
    257e:	4688      	mov	r8, r1
    2580:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    2582:	2400      	movs	r4, #0
	i=0;
    2584:	4626      	mov	r6, r4
	while (digit(time[i])){
    2586:	e00a      	b.n	259e <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    2588:	3601      	adds	r6, #1
    258a:	3501      	adds	r5, #1
    258c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2590:	0064      	lsls	r4, r4, #1
    2592:	3c30      	subs	r4, #48	; 0x30
    2594:	f899 3000 	ldrb.w	r3, [r9]
    2598:	441c      	add	r4, r3
    259a:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    259e:	46a9      	mov	r9, r5
    25a0:	7828      	ldrb	r0, [r5, #0]
    25a2:	f7fe fe3c 	bl	121e <digit>
    25a6:	4603      	mov	r3, r0
    25a8:	2800      	cmp	r0, #0
    25aa:	d1ed      	bne.n	2588 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    25ac:	2c17      	cmp	r4, #23
    25ae:	d802      	bhi.n	25b6 <str_to_time+0x3e>
    25b0:	782a      	ldrb	r2, [r5, #0]
    25b2:	2a3a      	cmp	r2, #58	; 0x3a
    25b4:	d002      	beq.n	25bc <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    25b6:	4618      	mov	r0, r3
    25b8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    25bc:	f8d8 3000 	ldr.w	r3, [r8]
    25c0:	f364 3310 	bfi	r3, r4, #12, #5
    25c4:	f8c8 3000 	str.w	r3, [r8]
	i++;
    25c8:	3601      	adds	r6, #1
    25ca:	19bd      	adds	r5, r7, r6
	n=0;
    25cc:	2400      	movs	r4, #0
	while (digit(time[i])){
    25ce:	e00a      	b.n	25e6 <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    25d0:	3601      	adds	r6, #1
    25d2:	3501      	adds	r5, #1
    25d4:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25d8:	0064      	lsls	r4, r4, #1
    25da:	3c30      	subs	r4, #48	; 0x30
    25dc:	f899 3000 	ldrb.w	r3, [r9]
    25e0:	441c      	add	r4, r3
    25e2:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    25e6:	46a9      	mov	r9, r5
    25e8:	7828      	ldrb	r0, [r5, #0]
    25ea:	f7fe fe18 	bl	121e <digit>
    25ee:	4603      	mov	r3, r0
    25f0:	2800      	cmp	r0, #0
    25f2:	d1ed      	bne.n	25d0 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    25f4:	2c3b      	cmp	r4, #59	; 0x3b
    25f6:	d8de      	bhi.n	25b6 <str_to_time+0x3e>
    25f8:	782a      	ldrb	r2, [r5, #0]
    25fa:	2a3a      	cmp	r2, #58	; 0x3a
    25fc:	d1db      	bne.n	25b6 <str_to_time+0x3e>
	dt->minute=n;
    25fe:	f8b8 3000 	ldrh.w	r3, [r8]
    2602:	f364 138b 	bfi	r3, r4, #6, #6
    2606:	f8a8 3000 	strh.w	r3, [r8]
    260a:	443e      	add	r6, r7
	n=0;
    260c:	2400      	movs	r4, #0
	while (digit(time[i])){
    260e:	e008      	b.n	2622 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2610:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2614:	0064      	lsls	r4, r4, #1
    2616:	3c30      	subs	r4, #48	; 0x30
    2618:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    261c:	441c      	add	r4, r3
    261e:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2622:	7870      	ldrb	r0, [r6, #1]
    2624:	f7fe fdfb 	bl	121e <digit>
    2628:	4603      	mov	r3, r0
    262a:	2800      	cmp	r0, #0
    262c:	d1f0      	bne.n	2610 <str_to_time+0x98>
	if (n>59) return 0;
    262e:	2c3b      	cmp	r4, #59	; 0x3b
    2630:	d8c1      	bhi.n	25b6 <str_to_time+0x3e>
	dt->second=n;
    2632:	f898 3000 	ldrb.w	r3, [r8]
    2636:	f364 0305 	bfi	r3, r4, #0, #6
    263a:	f888 3000 	strb.w	r3, [r8]
	return 1;
    263e:	2301      	movs	r3, #1
    2640:	e7b9      	b.n	25b6 <str_to_time+0x3e>

00002642 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    2642:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2644:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    2646:	4b23      	ldr	r3, [pc, #140]	; (26d4 <date_str+0x92>)
    2648:	fba3 4302 	umull	r4, r3, r3, r2
    264c:	099b      	lsrs	r3, r3, #6
    264e:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2652:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2654:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2658:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    265c:	4b1e      	ldr	r3, [pc, #120]	; (26d8 <date_str+0x96>)
    265e:	fba3 4302 	umull	r4, r3, r3, r2
    2662:	095b      	lsrs	r3, r3, #5
    2664:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2668:	704c      	strb	r4, [r1, #1]
	n%=100;
    266a:	2464      	movs	r4, #100	; 0x64
    266c:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2670:	4a1a      	ldr	r2, [pc, #104]	; (26dc <date_str+0x9a>)
    2672:	fba2 5403 	umull	r5, r4, r2, r3
    2676:	08e4      	lsrs	r4, r4, #3
    2678:	f104 0530 	add.w	r5, r4, #48	; 0x30
    267c:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    267e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2682:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    2686:	3330      	adds	r3, #48	; 0x30
    2688:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    268a:	262f      	movs	r6, #47	; 0x2f
    268c:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    268e:	8843      	ldrh	r3, [r0, #2]
    2690:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    2694:	fba2 5403 	umull	r5, r4, r2, r3
    2698:	08e4      	lsrs	r4, r4, #3
    269a:	f104 0530 	add.w	r5, r4, #48	; 0x30
    269e:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    26a0:	00a5      	lsls	r5, r4, #2
    26a2:	442c      	add	r4, r5
    26a4:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    26a8:	3330      	adds	r3, #48	; 0x30
    26aa:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    26ac:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    26ae:	7880      	ldrb	r0, [r0, #2]
    26b0:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    26b4:	fba2 3200 	umull	r3, r2, r2, r0
    26b8:	08d3      	lsrs	r3, r2, #3
    26ba:	f103 0230 	add.w	r2, r3, #48	; 0x30
    26be:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    26c0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    26c4:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    26c8:	3330      	adds	r3, #48	; 0x30
    26ca:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    26cc:	2300      	movs	r3, #0
    26ce:	728b      	strb	r3, [r1, #10]

}
    26d0:	bc70      	pop	{r4, r5, r6}
    26d2:	4770      	bx	lr
    26d4:	10624dd3 	.word	0x10624dd3
    26d8:	51eb851f 	.word	0x51eb851f
    26dc:	cccccccd 	.word	0xcccccccd

000026e0 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    26e0:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    26e2:	6802      	ldr	r2, [r0, #0]
    26e4:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    26e8:	4b18      	ldr	r3, [pc, #96]	; (274c <time_str+0x6c>)
    26ea:	fba3 5402 	umull	r5, r4, r3, r2
    26ee:	08e4      	lsrs	r4, r4, #3
    26f0:	f104 0530 	add.w	r5, r4, #48	; 0x30
    26f4:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    26f6:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26fa:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    26fe:	3230      	adds	r2, #48	; 0x30
    2700:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    2702:	253a      	movs	r5, #58	; 0x3a
    2704:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    2706:	8802      	ldrh	r2, [r0, #0]
    2708:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    270c:	fba3 6402 	umull	r6, r4, r3, r2
    2710:	08e4      	lsrs	r4, r4, #3
    2712:	f104 0630 	add.w	r6, r4, #48	; 0x30
    2716:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    2718:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    271c:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2720:	3230      	adds	r2, #48	; 0x30
    2722:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2724:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    2726:	7802      	ldrb	r2, [r0, #0]
    2728:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    272c:	fba3 0302 	umull	r0, r3, r3, r2
    2730:	08db      	lsrs	r3, r3, #3
    2732:	f103 0030 	add.w	r0, r3, #48	; 0x30
    2736:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2738:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    273c:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2740:	3330      	adds	r3, #48	; 0x30
    2742:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2744:	2300      	movs	r3, #0
    2746:	720b      	strb	r3, [r1, #8]
}
    2748:	bc70      	pop	{r4, r5, r6}
    274a:	4770      	bx	lr
    274c:	cccccccd 	.word	0xcccccccd

00002750 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2750:	b500      	push	{lr}
    2752:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2754:	a801      	add	r0, sp, #4
    2756:	f7ff fcbb 	bl	20d0 <get_date_time>
	t.fields.second=dt.second/2;
    275a:	f89d 3004 	ldrb.w	r3, [sp, #4]
    275e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2762:	2000      	movs	r0, #0
    2764:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2768:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    276c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2770:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2774:	9b01      	ldr	r3, [sp, #4]
    2776:	f3c3 3304 	ubfx	r3, r3, #12, #5
    277a:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    277e:	f89d 3006 	ldrb.w	r3, [sp, #6]
    2782:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2786:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    278a:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    278e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2792:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    2796:	f89d 300c 	ldrb.w	r3, [sp, #12]
    279a:	3344      	adds	r3, #68	; 0x44
    279c:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    27a0:	b005      	add	sp, #20
    27a2:	f85d fb04 	ldr.w	pc, [sp], #4

000027a6 <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    27a6:	4b07      	ldr	r3, [pc, #28]	; (27c4 <RTC_handler+0x1e>)
    27a8:	685b      	ldr	r3, [r3, #4]
    27aa:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    27ae:	bf1c      	itt	ne
    27b0:	4b04      	ldrne	r3, [pc, #16]	; (27c4 <RTC_handler+0x1e>)
    27b2:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    27b4:	4b03      	ldr	r3, [pc, #12]	; (27c4 <RTC_handler+0x1e>)
    27b6:	685b      	ldr	r3, [r3, #4]
    27b8:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    27bc:	bf1c      	itt	ne
    27be:	4b01      	ldrne	r3, [pc, #4]	; (27c4 <RTC_handler+0x1e>)
    27c0:	685b      	ldrne	r3, [r3, #4]
    27c2:	4770      	bx	lr
    27c4:	40002800 	.word	0x40002800

000027c8 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    27c8:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    27ca:	4b12      	ldr	r3, [pc, #72]	; (2814 <sound_init+0x4c>)
    27cc:	685a      	ldr	r2, [r3, #4]
    27ce:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    27d2:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    27d4:	685a      	ldr	r2, [r3, #4]
    27d6:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    27da:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    27dc:	220a      	movs	r2, #10
    27de:	4611      	mov	r1, r2
    27e0:	480d      	ldr	r0, [pc, #52]	; (2818 <sound_init+0x50>)
    27e2:	f7fe fe47 	bl	1474 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    27e6:	4a0d      	ldr	r2, [pc, #52]	; (281c <sound_init+0x54>)
    27e8:	69d3      	ldr	r3, [r2, #28]
    27ea:	f043 0301 	orr.w	r3, r3, #1
    27ee:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    27f0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    27f4:	2278      	movs	r2, #120	; 0x78
    27f6:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    27f8:	f44f 7280 	mov.w	r2, #256	; 0x100
    27fc:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    27fe:	2209      	movs	r2, #9
    2800:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    2802:	2100      	movs	r1, #0
    2804:	201c      	movs	r0, #28
    2806:	f7ff fc19 	bl	203c <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    280a:	201c      	movs	r0, #28
    280c:	f7ff fbb6 	bl	1f7c <enable_interrupt>
    2810:	bd08      	pop	{r3, pc}
    2812:	bf00      	nop
    2814:	40010000 	.word	0x40010000
    2818:	40010c00 	.word	0x40010c00
    281c:	40021000 	.word	0x40021000

00002820 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2820:	4b07      	ldr	r3, [pc, #28]	; (2840 <tone+0x20>)
    2822:	fbb3 f0f0 	udiv	r0, r3, r0
    2826:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    282a:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    282c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    282e:	0852      	lsrs	r2, r2, #1
    2830:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    2832:	681a      	ldr	r2, [r3, #0]
    2834:	f042 0201 	orr.w	r2, r2, #1
    2838:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    283a:	4b02      	ldr	r3, [pc, #8]	; (2844 <tone+0x24>)
    283c:	8019      	strh	r1, [r3, #0]
    283e:	4770      	bx	lr
    2840:	006d3d32 	.word	0x006d3d32
    2844:	20004e54 	.word	0x20004e54

00002848 <beep>:
}

void beep(uint16_t duration){
    2848:	b508      	push	{r3, lr}
    tone(1000,duration);
    284a:	4601      	mov	r1, r0
    284c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2850:	f7ff ffe6 	bl	2820 <tone>
    2854:	bd08      	pop	{r3, pc}

00002856 <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    2856:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    285a:	681a      	ldr	r2, [r3, #0]
    285c:	f022 0201 	bic.w	r2, r2, #1
    2860:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    2862:	68da      	ldr	r2, [r3, #12]
    2864:	f022 0201 	bic.w	r2, r2, #1
    2868:	60da      	str	r2, [r3, #12]
    286a:	4770      	bx	lr

0000286c <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    286c:	b510      	push	{r4, lr}
    286e:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    2870:	b289      	uxth	r1, r1
    2872:	4b06      	ldr	r3, [pc, #24]	; (288c <key_tone+0x20>)
    2874:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    2878:	f7ff ffd2 	bl	2820 <tone>
    if (wait_end) while (sound_timer);
    287c:	b124      	cbz	r4, 2888 <key_tone+0x1c>
    287e:	4a04      	ldr	r2, [pc, #16]	; (2890 <key_tone+0x24>)
    2880:	8813      	ldrh	r3, [r2, #0]
    2882:	b29b      	uxth	r3, r3
    2884:	2b00      	cmp	r3, #0
    2886:	d1fb      	bne.n	2880 <key_tone+0x14>
    2888:	bd10      	pop	{r4, pc}
    288a:	bf00      	nop
    288c:	00003bb8 	.word	0x00003bb8
    2890:	20004e54 	.word	0x20004e54

00002894 <noise>:
}

// produit un bruit 
void noise(int length){
    2894:	b510      	push	{r4, lr}
    2896:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    2898:	4b07      	ldr	r3, [pc, #28]	; (28b8 <noise+0x24>)
    289a:	6818      	ldr	r0, [r3, #0]
    289c:	f7fd fda2 	bl	3e4 <srand>
    tone(6000,length);
    28a0:	b2a1      	uxth	r1, r4
    28a2:	f241 7070 	movw	r0, #6000	; 0x1770
    28a6:	f7ff ffbb 	bl	2820 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    28aa:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28ae:	68d3      	ldr	r3, [r2, #12]
    28b0:	f043 0301 	orr.w	r3, r3, #1
    28b4:	60d3      	str	r3, [r2, #12]
    28b6:	bd10      	pop	{r4, pc}
    28b8:	20004e50 	.word	0x20004e50

000028bc <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    28bc:	4668      	mov	r0, sp
    28be:	f020 0107 	bic.w	r1, r0, #7
    28c2:	468d      	mov	sp, r1
    28c4:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    28c6:	f7fd fd93 	bl	3f0 <rand>
    28ca:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    28ce:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28d2:	6a13      	ldr	r3, [r2, #32]
    28d4:	bf14      	ite	ne
    28d6:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    28da:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    28de:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    28e0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    28e4:	6913      	ldr	r3, [r2, #16]
    28e6:	f023 0301 	bic.w	r3, r3, #1
    28ea:	6113      	str	r3, [r2, #16]
}
    28ec:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    28f0:	4685      	mov	sp, r0
    28f2:	4770      	bx	lr

000028f4 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    28f4:	6803      	ldr	r3, [r0, #0]
    28f6:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    28fa:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    28fc:	6803      	ldr	r3, [r0, #0]
    28fe:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2902:	6001      	str	r1, [r0, #0]
    2904:	4770      	bx	lr

00002906 <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2906:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2908:	4a2f      	ldr	r2, [pc, #188]	; (29c8 <spi_config_port+0xc2>)
    290a:	6993      	ldr	r3, [r2, #24]
    290c:	f043 0301 	orr.w	r3, r3, #1
    2910:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2912:	4b2e      	ldr	r3, [pc, #184]	; (29cc <spi_config_port+0xc6>)
    2914:	4298      	cmp	r0, r3
    2916:	d01a      	beq.n	294e <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2918:	4a2b      	ldr	r2, [pc, #172]	; (29c8 <spi_config_port+0xc2>)
    291a:	6993      	ldr	r3, [r2, #24]
    291c:	f043 0308 	orr.w	r3, r3, #8
    2920:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2922:	4c2b      	ldr	r4, [pc, #172]	; (29d0 <spi_config_port+0xca>)
    2924:	2203      	movs	r2, #3
    2926:	2102      	movs	r1, #2
    2928:	4620      	mov	r0, r4
    292a:	f7fe fda3 	bl	1474 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    292e:	220b      	movs	r2, #11
    2930:	210d      	movs	r1, #13
    2932:	4620      	mov	r0, r4
    2934:	f7fe fd9e 	bl	1474 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2938:	2204      	movs	r2, #4
    293a:	210e      	movs	r1, #14
    293c:	4620      	mov	r0, r4
    293e:	f7fe fd99 	bl	1474 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2942:	220b      	movs	r2, #11
    2944:	210f      	movs	r1, #15
    2946:	4620      	mov	r0, r4
    2948:	f7fe fd94 	bl	1474 <config_pin>
    294c:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    294e:	b9c9      	cbnz	r1, 2984 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2950:	6993      	ldr	r3, [r2, #24]
    2952:	f043 0304 	orr.w	r3, r3, #4
    2956:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2958:	4c1e      	ldr	r4, [pc, #120]	; (29d4 <spi_config_port+0xce>)
    295a:	2203      	movs	r2, #3
    295c:	2104      	movs	r1, #4
    295e:	4620      	mov	r0, r4
    2960:	f7fe fd88 	bl	1474 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2964:	220b      	movs	r2, #11
    2966:	2105      	movs	r1, #5
    2968:	4620      	mov	r0, r4
    296a:	f7fe fd83 	bl	1474 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    296e:	2204      	movs	r2, #4
    2970:	2106      	movs	r1, #6
    2972:	4620      	mov	r0, r4
    2974:	f7fe fd7e 	bl	1474 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2978:	220b      	movs	r2, #11
    297a:	2107      	movs	r1, #7
    297c:	4620      	mov	r0, r4
    297e:	f7fe fd79 	bl	1474 <config_pin>
    2982:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2984:	4a10      	ldr	r2, [pc, #64]	; (29c8 <spi_config_port+0xc2>)
    2986:	6993      	ldr	r3, [r2, #24]
    2988:	f043 030d 	orr.w	r3, r3, #13
    298c:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    298e:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    2992:	6853      	ldr	r3, [r2, #4]
    2994:	f043 0301 	orr.w	r3, r3, #1
    2998:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    299a:	2203      	movs	r2, #3
    299c:	210f      	movs	r1, #15
    299e:	480d      	ldr	r0, [pc, #52]	; (29d4 <spi_config_port+0xce>)
    29a0:	f7fe fd68 	bl	1474 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    29a4:	4c0a      	ldr	r4, [pc, #40]	; (29d0 <spi_config_port+0xca>)
    29a6:	220b      	movs	r2, #11
    29a8:	2103      	movs	r1, #3
    29aa:	4620      	mov	r0, r4
    29ac:	f7fe fd62 	bl	1474 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    29b0:	2204      	movs	r2, #4
    29b2:	4611      	mov	r1, r2
    29b4:	4620      	mov	r0, r4
    29b6:	f7fe fd5d 	bl	1474 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    29ba:	220b      	movs	r2, #11
    29bc:	2105      	movs	r1, #5
    29be:	4620      	mov	r0, r4
    29c0:	f7fe fd58 	bl	1474 <config_pin>
    29c4:	bd10      	pop	{r4, pc}
    29c6:	bf00      	nop
    29c8:	40021000 	.word	0x40021000
    29cc:	40013000 	.word	0x40013000
    29d0:	40010c00 	.word	0x40010c00
    29d4:	40010800 	.word	0x40010800

000029d8 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    29d8:	b570      	push	{r4, r5, r6, lr}
    29da:	4604      	mov	r4, r0
    29dc:	460d      	mov	r5, r1
    29de:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    29e0:	4619      	mov	r1, r3
    29e2:	f7ff ff90 	bl	2906 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    29e6:	4b0c      	ldr	r3, [pc, #48]	; (2a18 <spi_init+0x40>)
    29e8:	429c      	cmp	r4, r3
    29ea:	d00e      	beq.n	2a0a <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    29ec:	4a0b      	ldr	r2, [pc, #44]	; (2a1c <spi_init+0x44>)
    29ee:	69d3      	ldr	r3, [r2, #28]
    29f0:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    29f4:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    29f6:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    29f8:	4629      	mov	r1, r5
    29fa:	4620      	mov	r0, r4
    29fc:	f7ff ff7a 	bl	28f4 <spi_baudrate>
	_spi_enable(channel);
    2a00:	6823      	ldr	r3, [r4, #0]
    2a02:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2a06:	6023      	str	r3, [r4, #0]
    2a08:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2a0a:	4a04      	ldr	r2, [pc, #16]	; (2a1c <spi_init+0x44>)
    2a0c:	6993      	ldr	r3, [r2, #24]
    2a0e:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2a12:	6193      	str	r3, [r2, #24]
    2a14:	e7ef      	b.n	29f6 <spi_init+0x1e>
    2a16:	bf00      	nop
    2a18:	40013000 	.word	0x40013000
    2a1c:	40021000 	.word	0x40021000

00002a20 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2a20:	6883      	ldr	r3, [r0, #8]
    2a22:	f013 0f02 	tst.w	r3, #2
    2a26:	d0fb      	beq.n	2a20 <spi_send>
	channel->DR=b;
    2a28:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a2a:	6883      	ldr	r3, [r0, #8]
    2a2c:	f013 0f01 	tst.w	r3, #1
    2a30:	d0fb      	beq.n	2a2a <spi_send+0xa>
	return (uint8_t)channel->DR;
    2a32:	68c0      	ldr	r0, [r0, #12]
}
    2a34:	b2c0      	uxtb	r0, r0
    2a36:	4770      	bx	lr

00002a38 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2a38:	6883      	ldr	r3, [r0, #8]
    2a3a:	f013 0f02 	tst.w	r3, #2
    2a3e:	d0fb      	beq.n	2a38 <spi_receive>
	channel->DR=255;
    2a40:	23ff      	movs	r3, #255	; 0xff
    2a42:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2a44:	6883      	ldr	r3, [r0, #8]
    2a46:	f013 0f01 	tst.w	r3, #1
    2a4a:	d0fb      	beq.n	2a44 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2a4c:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2a4e:	b2c0      	uxtb	r0, r0
    2a50:	4770      	bx	lr

00002a52 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2a52:	b14a      	cbz	r2, 2a68 <spi_send_block+0x16>
    2a54:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2a56:	f811 3b01 	ldrb.w	r3, [r1], #1
    2a5a:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2a5c:	6883      	ldr	r3, [r0, #8]
    2a5e:	f013 0f02 	tst.w	r3, #2
    2a62:	d0fb      	beq.n	2a5c <spi_send_block+0xa>
	while (count){
    2a64:	428a      	cmp	r2, r1
    2a66:	d1f6      	bne.n	2a56 <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2a68:	6883      	ldr	r3, [r0, #8]
    2a6a:	f013 0f80 	tst.w	r3, #128	; 0x80
    2a6e:	d1fb      	bne.n	2a68 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2a70:	68c3      	ldr	r3, [r0, #12]
    2a72:	4770      	bx	lr

00002a74 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2a74:	b16a      	cbz	r2, 2a92 <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2a76:	b410      	push	{r4}
    2a78:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2a7a:	2400      	movs	r4, #0
    2a7c:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2a7e:	6883      	ldr	r3, [r0, #8]
    2a80:	f013 0f01 	tst.w	r3, #1
    2a84:	d0fb      	beq.n	2a7e <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2a86:	68c3      	ldr	r3, [r0, #12]
    2a88:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2a8c:	428a      	cmp	r2, r1
    2a8e:	d1f5      	bne.n	2a7c <spi_receive_block+0x8>
		count--;
	}
}
    2a90:	bc10      	pop	{r4}
    2a92:	4770      	bx	lr

00002a94 <reset_mcu>:
	_reset_mcu();
    2a94:	4a01      	ldr	r2, [pc, #4]	; (2a9c <reset_mcu+0x8>)
    2a96:	4b02      	ldr	r3, [pc, #8]	; (2aa0 <reset_mcu+0xc>)
    2a98:	601a      	str	r2, [r3, #0]
    2a9a:	bf00      	nop
    2a9c:	05fa0004 	.word	0x05fa0004
    2aa0:	e000ed0c 	.word	0xe000ed0c

00002aa4 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2aa4:	b508      	push	{r3, lr}
    2aa6:	460c      	mov	r4, r1
	print(msg);
    2aa8:	f000 f966 	bl	2d78 <print>
	print("\nat address ");
    2aac:	4813      	ldr	r0, [pc, #76]	; (2afc <print_fault+0x58>)
    2aae:	f000 f963 	bl	2d78 <print>
	if (adr) {
    2ab2:	b9ec      	cbnz	r4, 2af0 <print_fault+0x4c>
	put_char(CR);
    2ab4:	200d      	movs	r0, #13
    2ab6:	f000 f8bf 	bl	2c38 <put_char>
	print("\nUFSR=");
    2aba:	4811      	ldr	r0, [pc, #68]	; (2b00 <print_fault+0x5c>)
    2abc:	f000 f95c 	bl	2d78 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2ac0:	4c10      	ldr	r4, [pc, #64]	; (2b04 <print_fault+0x60>)
    2ac2:	6820      	ldr	r0, [r4, #0]
    2ac4:	2110      	movs	r1, #16
    2ac6:	40c8      	lsrs	r0, r1
    2ac8:	f000 f971 	bl	2dae <print_int>
	print("\nBFSR=");
    2acc:	480e      	ldr	r0, [pc, #56]	; (2b08 <print_fault+0x64>)
    2ace:	f000 f953 	bl	2d78 <print>
	print_int(CFSR->fsr.busFault,16);
    2ad2:	6820      	ldr	r0, [r4, #0]
    2ad4:	2110      	movs	r1, #16
    2ad6:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2ada:	f000 f968 	bl	2dae <print_int>
	print("\nMMFSR=");
    2ade:	480b      	ldr	r0, [pc, #44]	; (2b0c <print_fault+0x68>)
    2ae0:	f000 f94a 	bl	2d78 <print>
	print_int(CFSR->fsr.mmFault,16);
    2ae4:	6820      	ldr	r0, [r4, #0]
    2ae6:	2110      	movs	r1, #16
    2ae8:	b2c0      	uxtb	r0, r0
    2aea:	f000 f960 	bl	2dae <print_int>
    2aee:	e7fe      	b.n	2aee <print_fault+0x4a>
		print_int(adr,16);
    2af0:	2110      	movs	r1, #16
    2af2:	4620      	mov	r0, r4
    2af4:	f000 f95b 	bl	2dae <print_int>
    2af8:	e7dc      	b.n	2ab4 <print_fault+0x10>
    2afa:	bf00      	nop
    2afc:	00003e8c 	.word	0x00003e8c
    2b00:	00003e9c 	.word	0x00003e9c
    2b04:	e000ed28 	.word	0xe000ed28
    2b08:	00003ea4 	.word	0x00003ea4
    2b0c:	00003eac 	.word	0x00003eac

00002b10 <draw_char>:
	}else{
		usart_putc(USART1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2b10:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2b14:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2b16:	18cb      	adds	r3, r1, r3
    2b18:	9301      	str	r3, [sp, #4]
    2b1a:	4299      	cmp	r1, r3
    2b1c:	da20      	bge.n	2b60 <draw_char+0x50>
    2b1e:	4683      	mov	fp, r0
    2b20:	460e      	mov	r6, r1
    2b22:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2b24:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2b28:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b2a:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2b68 <draw_char+0x58>
		byte=*glyph++;
    2b2e:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2b32:	45bb      	cmp	fp, r7
    2b34:	da10      	bge.n	2b58 <draw_char+0x48>
    2b36:	465c      	mov	r4, fp
    2b38:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2b3a:	ea18 0f05 	tst.w	r8, r5
    2b3e:	bf14      	ite	ne
    2b40:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2b44:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2b48:	4631      	mov	r1, r6
    2b4a:	4620      	mov	r0, r4
    2b4c:	f7fe fd1e 	bl	158c <gfx_plot>
			mask>>=1;
    2b50:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2b52:	3401      	adds	r4, #1
    2b54:	42bc      	cmp	r4, r7
    2b56:	d1f0      	bne.n	2b3a <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2b58:	3601      	adds	r6, #1
    2b5a:	9b01      	ldr	r3, [sp, #4]
    2b5c:	429e      	cmp	r6, r3
    2b5e:	d1e6      	bne.n	2b2e <draw_char+0x1e>
		}
	}
}
    2b60:	b003      	add	sp, #12
    2b62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2b66:	bf00      	nop
    2b68:	20000204 	.word	0x20000204

00002b6c <font_color>:
	text_colors[FG]=color&0xf;
    2b6c:	f000 000f 	and.w	r0, r0, #15
    2b70:	4b01      	ldr	r3, [pc, #4]	; (2b78 <font_color+0xc>)
    2b72:	7058      	strb	r0, [r3, #1]
    2b74:	4770      	bx	lr
    2b76:	bf00      	nop
    2b78:	20000204 	.word	0x20000204

00002b7c <bg_color>:
	text_colors[BG]=color&0xf;
    2b7c:	f000 000f 	and.w	r0, r0, #15
    2b80:	4b01      	ldr	r3, [pc, #4]	; (2b88 <bg_color+0xc>)
    2b82:	7018      	strb	r0, [r3, #0]
    2b84:	4770      	bx	lr
    2b86:	bf00      	nop
    2b88:	20000204 	.word	0x20000204

00002b8c <select_font>:
	font=font_id;
    2b8c:	4b01      	ldr	r3, [pc, #4]	; (2b94 <select_font+0x8>)
    2b8e:	7098      	strb	r0, [r3, #2]
    2b90:	4770      	bx	lr
    2b92:	bf00      	nop
    2b94:	20000204 	.word	0x20000204

00002b98 <get_font>:
}
    2b98:	4b01      	ldr	r3, [pc, #4]	; (2ba0 <get_font+0x8>)
    2b9a:	7898      	ldrb	r0, [r3, #2]
    2b9c:	4770      	bx	lr
    2b9e:	bf00      	nop
    2ba0:	20000204 	.word	0x20000204

00002ba4 <new_line>:
void new_line(){
    2ba4:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2ba6:	4b21      	ldr	r3, [pc, #132]	; (2c2c <new_line+0x88>)
    2ba8:	781b      	ldrb	r3, [r3, #0]
    2baa:	2b00      	cmp	r3, #0
    2bac:	d138      	bne.n	2c20 <new_line+0x7c>
		xpos=0;
    2bae:	2200      	movs	r2, #0
    2bb0:	4b1e      	ldr	r3, [pc, #120]	; (2c2c <new_line+0x88>)
    2bb2:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2bb4:	f000 fbfc 	bl	33b0 <get_video_params>
		switch (font){
    2bb8:	4b1d      	ldr	r3, [pc, #116]	; (2c30 <new_line+0x8c>)
    2bba:	789b      	ldrb	r3, [r3, #2]
    2bbc:	2b01      	cmp	r3, #1
    2bbe:	d011      	beq.n	2be4 <new_line+0x40>
    2bc0:	b113      	cbz	r3, 2bc8 <new_line+0x24>
    2bc2:	2b02      	cmp	r3, #2
    2bc4:	d01d      	beq.n	2c02 <new_line+0x5e>
    2bc6:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2bc8:	4b18      	ldr	r3, [pc, #96]	; (2c2c <new_line+0x88>)
    2bca:	789b      	ldrb	r3, [r3, #2]
    2bcc:	1d99      	adds	r1, r3, #6
    2bce:	89c2      	ldrh	r2, [r0, #14]
    2bd0:	3a05      	subs	r2, #5
    2bd2:	4291      	cmp	r1, r2
    2bd4:	dc02      	bgt.n	2bdc <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2bd6:	4a15      	ldr	r2, [pc, #84]	; (2c2c <new_line+0x88>)
    2bd8:	7091      	strb	r1, [r2, #2]
    2bda:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2bdc:	2006      	movs	r0, #6
    2bde:	f7fe fd13 	bl	1608 <gfx_scroll_up>
    2be2:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2be4:	4b11      	ldr	r3, [pc, #68]	; (2c2c <new_line+0x88>)
    2be6:	789b      	ldrb	r3, [r3, #2]
    2be8:	f103 010a 	add.w	r1, r3, #10
    2bec:	89c2      	ldrh	r2, [r0, #14]
    2bee:	3a09      	subs	r2, #9
    2bf0:	4291      	cmp	r1, r2
    2bf2:	dc02      	bgt.n	2bfa <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2bf4:	4a0d      	ldr	r2, [pc, #52]	; (2c2c <new_line+0x88>)
    2bf6:	7091      	strb	r1, [r2, #2]
    2bf8:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2bfa:	200a      	movs	r0, #10
    2bfc:	f7fe fd04 	bl	1608 <gfx_scroll_up>
    2c00:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2c02:	4b0a      	ldr	r3, [pc, #40]	; (2c2c <new_line+0x88>)
    2c04:	789b      	ldrb	r3, [r3, #2]
    2c06:	f103 0108 	add.w	r1, r3, #8
    2c0a:	89c2      	ldrh	r2, [r0, #14]
    2c0c:	3a07      	subs	r2, #7
    2c0e:	4291      	cmp	r1, r2
    2c10:	dc02      	bgt.n	2c18 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2c12:	4a06      	ldr	r2, [pc, #24]	; (2c2c <new_line+0x88>)
    2c14:	7091      	strb	r1, [r2, #2]
    2c16:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2c18:	2008      	movs	r0, #8
    2c1a:	f7fe fcf5 	bl	1608 <gfx_scroll_up>
    2c1e:	bd08      	pop	{r3, pc}
		usart_putc(USART1,'\n');
    2c20:	210a      	movs	r1, #10
    2c22:	4804      	ldr	r0, [pc, #16]	; (2c34 <new_line+0x90>)
    2c24:	f000 fd1c 	bl	3660 <usart_putc>
    2c28:	bd08      	pop	{r3, pc}
    2c2a:	bf00      	nop
    2c2c:	20000698 	.word	0x20000698
    2c30:	20000204 	.word	0x20000204
    2c34:	40013800 	.word	0x40013800

00002c38 <put_char>:

void put_char(uint8_t c){
    2c38:	b530      	push	{r4, r5, lr}
    2c3a:	b083      	sub	sp, #12
	if (console==LOCAL){
    2c3c:	4b2e      	ldr	r3, [pc, #184]	; (2cf8 <put_char+0xc0>)
    2c3e:	781b      	ldrb	r3, [r3, #0]
    2c40:	2b00      	cmp	r3, #0
    2c42:	d153      	bne.n	2cec <put_char+0xb4>
		switch(font){
    2c44:	4b2d      	ldr	r3, [pc, #180]	; (2cfc <put_char+0xc4>)
    2c46:	789b      	ldrb	r3, [r3, #2]
    2c48:	2b01      	cmp	r3, #1
    2c4a:	d036      	beq.n	2cba <put_char+0x82>
    2c4c:	b1e3      	cbz	r3, 2c88 <put_char+0x50>
    2c4e:	2b02      	cmp	r3, #2
    2c50:	d150      	bne.n	2cf4 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2c52:	f1a0 0320 	sub.w	r3, r0, #32
    2c56:	b2db      	uxtb	r3, r3
    2c58:	2b64      	cmp	r3, #100	; 0x64
    2c5a:	d84b      	bhi.n	2cf4 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2c5c:	4c26      	ldr	r4, [pc, #152]	; (2cf8 <put_char+0xc0>)
    2c5e:	78a1      	ldrb	r1, [r4, #2]
    2c60:	7865      	ldrb	r5, [r4, #1]
    2c62:	3820      	subs	r0, #32
    2c64:	4b26      	ldr	r3, [pc, #152]	; (2d00 <put_char+0xc8>)
    2c66:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2c6a:	9300      	str	r3, [sp, #0]
    2c6c:	2308      	movs	r3, #8
    2c6e:	2206      	movs	r2, #6
    2c70:	4628      	mov	r0, r5
    2c72:	f7ff ff4d 	bl	2b10 <draw_char>
				xpos+=CHAR_WIDTH;
    2c76:	7863      	ldrb	r3, [r4, #1]
    2c78:	3306      	adds	r3, #6
    2c7a:	b2db      	uxtb	r3, r3
    2c7c:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2c7e:	2baf      	cmp	r3, #175	; 0xaf
    2c80:	d938      	bls.n	2cf4 <put_char+0xbc>
					new_line();
    2c82:	f7ff ff8f 	bl	2ba4 <new_line>
    2c86:	e035      	b.n	2cf4 <put_char+0xbc>
			if (c<16){
    2c88:	280f      	cmp	r0, #15
    2c8a:	d833      	bhi.n	2cf4 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2c8c:	4c1a      	ldr	r4, [pc, #104]	; (2cf8 <put_char+0xc0>)
    2c8e:	78a1      	ldrb	r1, [r4, #2]
    2c90:	7865      	ldrb	r5, [r4, #1]
    2c92:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2c96:	4b1b      	ldr	r3, [pc, #108]	; (2d04 <put_char+0xcc>)
    2c98:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2c9c:	9300      	str	r3, [sp, #0]
    2c9e:	2306      	movs	r3, #6
    2ca0:	2204      	movs	r2, #4
    2ca2:	4628      	mov	r0, r5
    2ca4:	f7ff ff34 	bl	2b10 <draw_char>
				xpos+=SHEX_WIDTH;
    2ca8:	7863      	ldrb	r3, [r4, #1]
    2caa:	3304      	adds	r3, #4
    2cac:	b2db      	uxtb	r3, r3
    2cae:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2cb0:	2bb1      	cmp	r3, #177	; 0xb1
    2cb2:	d91f      	bls.n	2cf4 <put_char+0xbc>
					new_line();
    2cb4:	f7ff ff76 	bl	2ba4 <new_line>
    2cb8:	e01c      	b.n	2cf4 <put_char+0xbc>
			if (c<16){
    2cba:	280f      	cmp	r0, #15
    2cbc:	d81a      	bhi.n	2cf4 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2cbe:	4c0e      	ldr	r4, [pc, #56]	; (2cf8 <put_char+0xc0>)
    2cc0:	78a1      	ldrb	r1, [r4, #2]
    2cc2:	7865      	ldrb	r5, [r4, #1]
    2cc4:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2cc8:	4b0f      	ldr	r3, [pc, #60]	; (2d08 <put_char+0xd0>)
    2cca:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2cce:	9300      	str	r3, [sp, #0]
    2cd0:	230a      	movs	r3, #10
    2cd2:	2208      	movs	r2, #8
    2cd4:	4628      	mov	r0, r5
    2cd6:	f7ff ff1b 	bl	2b10 <draw_char>
				xpos+=LHEX_WIDTH;
    2cda:	7863      	ldrb	r3, [r4, #1]
    2cdc:	3308      	adds	r3, #8
    2cde:	b2db      	uxtb	r3, r3
    2ce0:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2ce2:	2bad      	cmp	r3, #173	; 0xad
    2ce4:	d906      	bls.n	2cf4 <put_char+0xbc>
					new_line();
    2ce6:	f7ff ff5d 	bl	2ba4 <new_line>
    2cea:	e003      	b.n	2cf4 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(USART1,c);
    2cec:	4601      	mov	r1, r0
    2cee:	4807      	ldr	r0, [pc, #28]	; (2d0c <put_char+0xd4>)
    2cf0:	f000 fcb6 	bl	3660 <usart_putc>
	}
}
    2cf4:	b003      	add	sp, #12
    2cf6:	bd30      	pop	{r4, r5, pc}
    2cf8:	20000698 	.word	0x20000698
    2cfc:	20000204 	.word	0x20000204
    2d00:	00003730 	.word	0x00003730
    2d04:	00003af8 	.word	0x00003af8
    2d08:	00003a58 	.word	0x00003a58
    2d0c:	40013800 	.word	0x40013800

00002d10 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2d10:	4b01      	ldr	r3, [pc, #4]	; (2d18 <set_cursor+0x8>)
    2d12:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2d14:	7099      	strb	r1, [r3, #2]
    2d16:	4770      	bx	lr
    2d18:	20000698 	.word	0x20000698

00002d1c <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2d1c:	4b03      	ldr	r3, [pc, #12]	; (2d2c <get_cursor+0x10>)
    2d1e:	785a      	ldrb	r2, [r3, #1]
    2d20:	7898      	ldrb	r0, [r3, #2]
    2d22:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2d26:	b280      	uxth	r0, r0
    2d28:	4770      	bx	lr
    2d2a:	bf00      	nop
    2d2c:	20000698 	.word	0x20000698

00002d30 <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2d30:	4b0f      	ldr	r3, [pc, #60]	; (2d70 <cursor_left+0x40>)
    2d32:	789b      	ldrb	r3, [r3, #2]
    2d34:	2b01      	cmp	r3, #1
    2d36:	d00b      	beq.n	2d50 <cursor_left+0x20>
    2d38:	b113      	cbz	r3, 2d40 <cursor_left+0x10>
    2d3a:	2b02      	cmp	r3, #2
    2d3c:	d010      	beq.n	2d60 <cursor_left+0x30>
    2d3e:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2d40:	4b0c      	ldr	r3, [pc, #48]	; (2d74 <cursor_left+0x44>)
    2d42:	785b      	ldrb	r3, [r3, #1]
    2d44:	2b04      	cmp	r3, #4
    2d46:	d412      	bmi.n	2d6e <cursor_left+0x3e>
    2d48:	3b04      	subs	r3, #4
    2d4a:	4a0a      	ldr	r2, [pc, #40]	; (2d74 <cursor_left+0x44>)
    2d4c:	7053      	strb	r3, [r2, #1]
    2d4e:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2d50:	4b08      	ldr	r3, [pc, #32]	; (2d74 <cursor_left+0x44>)
    2d52:	785b      	ldrb	r3, [r3, #1]
    2d54:	2b08      	cmp	r3, #8
    2d56:	d40a      	bmi.n	2d6e <cursor_left+0x3e>
    2d58:	3b08      	subs	r3, #8
    2d5a:	4a06      	ldr	r2, [pc, #24]	; (2d74 <cursor_left+0x44>)
    2d5c:	7053      	strb	r3, [r2, #1]
    2d5e:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2d60:	4b04      	ldr	r3, [pc, #16]	; (2d74 <cursor_left+0x44>)
    2d62:	785b      	ldrb	r3, [r3, #1]
    2d64:	2b06      	cmp	r3, #6
    2d66:	d402      	bmi.n	2d6e <cursor_left+0x3e>
    2d68:	3b06      	subs	r3, #6
    2d6a:	4a02      	ldr	r2, [pc, #8]	; (2d74 <cursor_left+0x44>)
    2d6c:	7053      	strb	r3, [r2, #1]
    2d6e:	4770      	bx	lr
    2d70:	20000204 	.word	0x20000204
    2d74:	20000698 	.word	0x20000698

00002d78 <print>:
void print(const char* str){
    2d78:	b510      	push	{r4, lr}
    2d7a:	4604      	mov	r4, r0
    while ((c=*str++)){
    2d7c:	e001      	b.n	2d82 <print+0xa>
            new_line();
    2d7e:	f7ff ff11 	bl	2ba4 <new_line>
    while ((c=*str++)){
    2d82:	f814 0b01 	ldrb.w	r0, [r4], #1
    2d86:	b158      	cbz	r0, 2da0 <print+0x28>
        switch(c){
    2d88:	280a      	cmp	r0, #10
    2d8a:	d0f8      	beq.n	2d7e <print+0x6>
    2d8c:	280d      	cmp	r0, #13
    2d8e:	d0f6      	beq.n	2d7e <print+0x6>
    2d90:	2808      	cmp	r0, #8
    2d92:	d002      	beq.n	2d9a <print+0x22>
            put_char(c);
    2d94:	f7ff ff50 	bl	2c38 <put_char>
    2d98:	e7f3      	b.n	2d82 <print+0xa>
            cursor_left();    
    2d9a:	f7ff ffc9 	bl	2d30 <cursor_left>
            break;
    2d9e:	e7f0      	b.n	2d82 <print+0xa>
}
    2da0:	bd10      	pop	{r4, pc}

00002da2 <println>:
void println(const char *text){
    2da2:	b508      	push	{r3, lr}
	print(text);
    2da4:	f7ff ffe8 	bl	2d78 <print>
	new_line();
    2da8:	f7ff fefc 	bl	2ba4 <new_line>
    2dac:	bd08      	pop	{r3, pc}

00002dae <print_int>:
void print_int(int i,uint8_t base){
    2dae:	b530      	push	{r4, r5, lr}
    2db0:	b085      	sub	sp, #20
    fmt[15]=0;
    2db2:	2300      	movs	r3, #0
    2db4:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2db8:	2320      	movs	r3, #32
    2dba:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2dbe:	1e02      	subs	r2, r0, #0
        i=-i;
    2dc0:	bfba      	itte	lt
    2dc2:	4252      	neglt	r2, r2
        sign=1;
    2dc4:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2dc6:	2500      	movge	r5, #0
    while (idx>1 && i){
    2dc8:	b1aa      	cbz	r2, 2df6 <print_int+0x48>
    2dca:	f10d 040e 	add.w	r4, sp, #14
    2dce:	200e      	movs	r0, #14
        d=i%base;
    2dd0:	fb92 f3f1 	sdiv	r3, r2, r1
    2dd4:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2dd8:	2b09      	cmp	r3, #9
    2dda:	bfc8      	it	gt
    2ddc:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2dde:	3801      	subs	r0, #1
    2de0:	3330      	adds	r3, #48	; 0x30
    2de2:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2de6:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2dea:	2801      	cmp	r0, #1
    2dec:	d007      	beq.n	2dfe <print_int+0x50>
    2dee:	2a00      	cmp	r2, #0
    2df0:	d1ee      	bne.n	2dd0 <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2df2:	280e      	cmp	r0, #14
    2df4:	d103      	bne.n	2dfe <print_int+0x50>
    2df6:	2330      	movs	r3, #48	; 0x30
    2df8:	f88d 300d 	strb.w	r3, [sp, #13]
    2dfc:	200d      	movs	r0, #13
    if (base==10 && sign){
    2dfe:	290a      	cmp	r1, #10
    2e00:	d006      	beq.n	2e10 <print_int+0x62>
    }else if (base==16){
    2e02:	2910      	cmp	r1, #16
    2e04:	d00d      	beq.n	2e22 <print_int+0x74>
    print(&fmt[idx]);
    2e06:	4468      	add	r0, sp
    2e08:	f7ff ffb6 	bl	2d78 <print>
}
    2e0c:	b005      	add	sp, #20
    2e0e:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2e10:	2d00      	cmp	r5, #0
    2e12:	d0f8      	beq.n	2e06 <print_int+0x58>
        fmt[--idx]='-';
    2e14:	3801      	subs	r0, #1
    2e16:	ab04      	add	r3, sp, #16
    2e18:	4403      	add	r3, r0
    2e1a:	222d      	movs	r2, #45	; 0x2d
    2e1c:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e20:	e7f1      	b.n	2e06 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2e22:	f010 0f01 	tst.w	r0, #1
    2e26:	d005      	beq.n	2e34 <print_int+0x86>
    2e28:	3801      	subs	r0, #1
    2e2a:	ab04      	add	r3, sp, #16
    2e2c:	4403      	add	r3, r0
    2e2e:	2230      	movs	r2, #48	; 0x30
    2e30:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2e34:	3801      	subs	r0, #1
    2e36:	ab04      	add	r3, sp, #16
    2e38:	4403      	add	r3, r0
    2e3a:	2224      	movs	r2, #36	; 0x24
    2e3c:	f803 2c10 	strb.w	r2, [r3, #-16]
    2e40:	e7e1      	b.n	2e06 <print_int+0x58>

00002e42 <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2e42:	b508      	push	{r3, lr}
	print("press button");
    2e44:	4801      	ldr	r0, [pc, #4]	; (2e4c <prompt_btn+0xa>)
    2e46:	f7ff ff97 	bl	2d78 <print>
    2e4a:	bd08      	pop	{r3, pc}
    2e4c:	00003ef8 	.word	0x00003ef8

00002e50 <clear_screen>:
}

void clear_screen(){
    2e50:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2e52:	4b07      	ldr	r3, [pc, #28]	; (2e70 <clear_screen+0x20>)
    2e54:	781b      	ldrb	r3, [r3, #0]
    2e56:	b123      	cbz	r3, 2e62 <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(USART1,FF);
    2e58:	210c      	movs	r1, #12
    2e5a:	4806      	ldr	r0, [pc, #24]	; (2e74 <clear_screen+0x24>)
    2e5c:	f000 fc00 	bl	3660 <usart_putc>
    2e60:	bd08      	pop	{r3, pc}
		gfx_cls();
    2e62:	f7fe fbbd 	bl	15e0 <gfx_cls>
		xpos=0;
    2e66:	4b02      	ldr	r3, [pc, #8]	; (2e70 <clear_screen+0x20>)
    2e68:	2200      	movs	r2, #0
    2e6a:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2e6c:	709a      	strb	r2, [r3, #2]
    2e6e:	bd08      	pop	{r3, pc}
    2e70:	20000698 	.word	0x20000698
    2e74:	40013800 	.word	0x40013800

00002e78 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2e78:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2e7a:	2800      	cmp	r0, #0
    2e7c:	bf14      	ite	ne
    2e7e:	260f      	movne	r6, #15
    2e80:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e82:	4b09      	ldr	r3, [pc, #36]	; (2ea8 <show_cursor+0x30>)
    2e84:	785c      	ldrb	r4, [r3, #1]
    2e86:	1da3      	adds	r3, r4, #6
    2e88:	429c      	cmp	r4, r3
    2e8a:	da0b      	bge.n	2ea4 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2e8c:	4d06      	ldr	r5, [pc, #24]	; (2ea8 <show_cursor+0x30>)
    2e8e:	78a9      	ldrb	r1, [r5, #2]
    2e90:	4632      	mov	r2, r6
    2e92:	3107      	adds	r1, #7
    2e94:	4620      	mov	r0, r4
    2e96:	f7fe fb79 	bl	158c <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2e9a:	3401      	adds	r4, #1
    2e9c:	786b      	ldrb	r3, [r5, #1]
    2e9e:	3306      	adds	r3, #6
    2ea0:	42a3      	cmp	r3, r4
    2ea2:	dcf4      	bgt.n	2e8e <show_cursor+0x16>
    2ea4:	bd70      	pop	{r4, r5, r6, pc}
    2ea6:	bf00      	nop
    2ea8:	20000698 	.word	0x20000698

00002eac <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2eac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2eb0:	f000 fa7e 	bl	33b0 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2eb4:	4b0c      	ldr	r3, [pc, #48]	; (2ee8 <clear_line+0x3c>)
    2eb6:	789c      	ldrb	r4, [r3, #2]
    2eb8:	f104 0308 	add.w	r3, r4, #8
    2ebc:	429c      	cmp	r4, r3
    2ebe:	da10      	bge.n	2ee2 <clear_line+0x36>
    2ec0:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2ec2:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2eec <clear_line+0x40>
    2ec6:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ec8:	4e07      	ldr	r6, [pc, #28]	; (2ee8 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2eca:	7a28      	ldrb	r0, [r5, #8]
    2ecc:	463a      	mov	r2, r7
    2ece:	4601      	mov	r1, r0
    2ed0:	fb04 8000 	mla	r0, r4, r0, r8
    2ed4:	f7fe fa25 	bl	1322 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ed8:	3401      	adds	r4, #1
    2eda:	78b3      	ldrb	r3, [r6, #2]
    2edc:	3308      	adds	r3, #8
    2ede:	42a3      	cmp	r3, r4
    2ee0:	dcf3      	bgt.n	2eca <clear_line+0x1e>
    2ee2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2ee6:	bf00      	nop
    2ee8:	20000698 	.word	0x20000698
    2eec:	200026ec 	.word	0x200026ec

00002ef0 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    2ef0:	4b01      	ldr	r3, [pc, #4]	; (2ef8 <select_console+0x8>)
    2ef2:	7018      	strb	r0, [r3, #0]
    2ef4:	4770      	bx	lr
    2ef6:	bf00      	nop
    2ef8:	20000698 	.word	0x20000698

00002efc <get_char>:
}

//read a character from serial port
char get_char(){
    2efc:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(USART1)));
    2efe:	4c03      	ldr	r4, [pc, #12]	; (2f0c <get_char+0x10>)
    2f00:	4620      	mov	r0, r4
    2f02:	f000 fb7b 	bl	35fc <usart_getc>
    2f06:	2800      	cmp	r0, #0
    2f08:	d0fa      	beq.n	2f00 <get_char+0x4>
	return c;
}
    2f0a:	bd10      	pop	{r4, pc}
    2f0c:	40013800 	.word	0x40013800

00002f10 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2f10:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2f14:	4c31      	ldr	r4, [pc, #196]	; (2fdc <tvout_init+0xcc>)
    2f16:	4b32      	ldr	r3, [pc, #200]	; (2fe0 <tvout_init+0xd0>)
    2f18:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2f1a:	4a32      	ldr	r2, [pc, #200]	; (2fe4 <tvout_init+0xd4>)
    2f1c:	4b32      	ldr	r3, [pc, #200]	; (2fe8 <tvout_init+0xd8>)
    2f1e:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2f20:	220a      	movs	r2, #10
    2f22:	2108      	movs	r1, #8
    2f24:	4620      	mov	r0, r4
    2f26:	f7fe faa5 	bl	1474 <config_pin>
    PORTA->ODR=0;
    2f2a:	2500      	movs	r5, #0
    2f2c:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2f2e:	4e2f      	ldr	r6, [pc, #188]	; (2fec <tvout_init+0xdc>)
    2f30:	69b3      	ldr	r3, [r6, #24]
    2f32:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2f36:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2f38:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2f3c:	f04f 0878 	mov.w	r8, #120	; 0x78
    2f40:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2f44:	2301      	movs	r3, #1
    2f46:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2f48:	2784      	movs	r7, #132	; 0x84
    2f4a:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2f4c:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2f50:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2f52:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2f56:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    2f58:	f240 1365 	movw	r3, #357	; 0x165
    2f5c:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2f5e:	6963      	ldr	r3, [r4, #20]
    2f60:	f043 0301 	orr.w	r3, r3, #1
    2f64:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2f66:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2f6a:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2f6c:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2f6e:	68e3      	ldr	r3, [r4, #12]
    2f70:	f043 0301 	orr.w	r3, r3, #1
    2f74:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2f76:	4629      	mov	r1, r5
    2f78:	2019      	movs	r0, #25
    2f7a:	f7ff f85f 	bl	203c <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2f7e:	4629      	mov	r1, r5
    2f80:	201b      	movs	r0, #27
    2f82:	f7ff f85b 	bl	203c <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2f86:	2019      	movs	r0, #25
    2f88:	f7fe fff8 	bl	1f7c <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2f8c:	201b      	movs	r0, #27
    2f8e:	f7fe fff5 	bl	1f7c <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2f92:	6823      	ldr	r3, [r4, #0]
    2f94:	f043 0301 	orr.w	r3, r3, #1
    2f98:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2f9a:	220a      	movs	r2, #10
    2f9c:	4629      	mov	r1, r5
    2f9e:	4814      	ldr	r0, [pc, #80]	; (2ff0 <tvout_init+0xe0>)
    2fa0:	f7fe fa68 	bl	1474 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2fa4:	69f3      	ldr	r3, [r6, #28]
    2fa6:	f043 0302 	orr.w	r3, r3, #2
    2faa:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2fac:	4b11      	ldr	r3, [pc, #68]	; (2ff4 <tvout_init+0xe4>)
    2fae:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2fb2:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2fb4:	2213      	movs	r2, #19
    2fb6:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2fb8:	220a      	movs	r2, #10
    2fba:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2fbc:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2fbe:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2fc2:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2fc4:	695a      	ldr	r2, [r3, #20]
    2fc6:	f042 0201 	orr.w	r2, r2, #1
    2fca:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2fcc:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2fce:	681a      	ldr	r2, [r3, #0]
    2fd0:	f042 0201 	orr.w	r2, r2, #1
    2fd4:	601a      	str	r2, [r3, #0]
    2fd6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2fda:	bf00      	nop
    2fdc:	40010800 	.word	0x40010800
    2fe0:	88883333 	.word	0x88883333
    2fe4:	84484444 	.word	0x84484444
    2fe8:	40010804 	.word	0x40010804
    2fec:	40021000 	.word	0x40021000
    2ff0:	40010c00 	.word	0x40010c00
    2ff4:	40000400 	.word	0x40000400

00002ff8 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2ff8:	4668      	mov	r0, sp
    2ffa:	f020 0107 	bic.w	r1, r0, #7
    2ffe:	468d      	mov	sp, r1
    3000:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    3002:	4a2f      	ldr	r2, [pc, #188]	; (30c0 <TV_OUT_handler+0xc8>)
    3004:	6a13      	ldr	r3, [r2, #32]
    3006:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    300a:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    300c:	492d      	ldr	r1, [pc, #180]	; (30c4 <TV_OUT_handler+0xcc>)
    300e:	f240 2209 	movw	r2, #521	; 0x209
    3012:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3014:	4293      	cmp	r3, r2
    3016:	d9fc      	bls.n	3012 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    3018:	4a29      	ldr	r2, [pc, #164]	; (30c0 <TV_OUT_handler+0xc8>)
    301a:	6a13      	ldr	r3, [r2, #32]
    301c:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3020:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    3022:	4b29      	ldr	r3, [pc, #164]	; (30c8 <TV_OUT_handler+0xd0>)
    3024:	881d      	ldrh	r5, [r3, #0]
    3026:	b2ad      	uxth	r5, r5
    3028:	4b28      	ldr	r3, [pc, #160]	; (30cc <TV_OUT_handler+0xd4>)
    302a:	7818      	ldrb	r0, [r3, #0]
    302c:	785a      	ldrb	r2, [r3, #1]
    302e:	fb95 f5f2 	sdiv	r5, r5, r2
    3032:	4a27      	ldr	r2, [pc, #156]	; (30d0 <TV_OUT_handler+0xd8>)
    3034:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    3038:	8859      	ldrh	r1, [r3, #2]
    303a:	4a22      	ldr	r2, [pc, #136]	; (30c4 <TV_OUT_handler+0xcc>)
    303c:	6a53      	ldr	r3, [r2, #36]	; 0x24
    303e:	428b      	cmp	r3, r1
    3040:	d3fc      	bcc.n	303c <TV_OUT_handler+0x44>
    _jitter_cancel();
    3042:	4b24      	ldr	r3, [pc, #144]	; (30d4 <TV_OUT_handler+0xdc>)
    3044:	461a      	mov	r2, r3
    3046:	6812      	ldr	r2, [r2, #0]
    3048:	f002 0207 	and.w	r2, r2, #7
    304c:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3050:	4497      	add	pc, r2
    3052:	bf00      	nop
    3054:	bf00      	nop
    3056:	bf00      	nop
    3058:	bf00      	nop
    305a:	bf00      	nop
    305c:	bf00      	nop
    305e:	bf00      	nop
    3060:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    3062:	4a17      	ldr	r2, [pc, #92]	; (30c0 <TV_OUT_handler+0xc8>)
    3064:	6a13      	ldr	r3, [r2, #32]
    3066:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    306a:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    306c:	b1b0      	cbz	r0, 309c <TV_OUT_handler+0xa4>
    306e:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3070:	4819      	ldr	r0, [pc, #100]	; (30d8 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    3072:	4916      	ldr	r1, [pc, #88]	; (30cc <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    3074:	781a      	ldrb	r2, [r3, #0]
    3076:	0912      	lsrs	r2, r2, #4
    3078:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    307a:	790c      	ldrb	r4, [r1, #4]
    307c:	4622      	mov	r2, r4
    307e:	3a01      	subs	r2, #1
    3080:	d1fd      	bne.n	307e <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    3082:	f813 2b01 	ldrb.w	r2, [r3], #1
    3086:	f002 020f 	and.w	r2, r2, #15
    308a:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    308c:	790c      	ldrb	r4, [r1, #4]
    308e:	4622      	mov	r2, r4
    3090:	3a01      	subs	r2, #1
    3092:	d1fd      	bne.n	3090 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    3094:	1b5c      	subs	r4, r3, r5
    3096:	780a      	ldrb	r2, [r1, #0]
    3098:	4294      	cmp	r4, r2
    309a:	d3eb      	bcc.n	3074 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    309c:	2200      	movs	r2, #0
    309e:	4b0f      	ldr	r3, [pc, #60]	; (30dc <TV_OUT_handler+0xe4>)
    30a0:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    30a2:	4a07      	ldr	r2, [pc, #28]	; (30c0 <TV_OUT_handler+0xc8>)
    30a4:	6a13      	ldr	r3, [r2, #32]
    30a6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    30aa:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    30ac:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    30b0:	6913      	ldr	r3, [r2, #16]
    30b2:	f023 0304 	bic.w	r3, r3, #4
    30b6:	6113      	str	r3, [r2, #16]
}
    30b8:	bc31      	pop	{r0, r4, r5}
    30ba:	4685      	mov	sp, r0
    30bc:	4770      	bx	lr
    30be:	bf00      	nop
    30c0:	40000400 	.word	0x40000400
    30c4:	40012c00 	.word	0x40012c00
    30c8:	2000069c 	.word	0x2000069c
    30cc:	20000208 	.word	0x20000208
    30d0:	200026ec 	.word	0x200026ec
    30d4:	40012c24 	.word	0x40012c24
    30d8:	4001080c 	.word	0x4001080c
    30dc:	40010800 	.word	0x40010800

000030e0 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    30e0:	4668      	mov	r0, sp
    30e2:	f020 0107 	bic.w	r1, r0, #7
    30e6:	468d      	mov	sp, r1
    30e8:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    30ea:	4a8e      	ldr	r2, [pc, #568]	; (3324 <TV_SYNC_handler+0x244>)
    30ec:	8853      	ldrh	r3, [r2, #2]
    30ee:	3301      	adds	r3, #1
    30f0:	b29b      	uxth	r3, r3
    30f2:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    30f4:	498c      	ldr	r1, [pc, #560]	; (3328 <TV_SYNC_handler+0x248>)
    30f6:	680b      	ldr	r3, [r1, #0]
    30f8:	3301      	adds	r3, #1
    30fa:	600b      	str	r3, [r1, #0]
    switch (task){
    30fc:	8893      	ldrh	r3, [r2, #4]
    30fe:	b29b      	uxth	r3, r3
    3100:	2b09      	cmp	r3, #9
    3102:	f200 8081 	bhi.w	3208 <TV_SYNC_handler+0x128>
    3106:	e8df f013 	tbh	[pc, r3, lsl #1]
    310a:	000a      	.short	0x000a
    310c:	0048002a 	.word	0x0048002a
    3110:	00880069 	.word	0x00880069
    3114:	00a50090 	.word	0x00a50090
    3118:	00d100b4 	.word	0x00d100b4
    311c:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    311e:	4b81      	ldr	r3, [pc, #516]	; (3324 <TV_SYNC_handler+0x244>)
    3120:	881b      	ldrh	r3, [r3, #0]
    3122:	b29b      	uxth	r3, r3
    3124:	b17b      	cbz	r3, 3146 <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    3126:	4a7f      	ldr	r2, [pc, #508]	; (3324 <TV_SYNC_handler+0x244>)
    3128:	8813      	ldrh	r3, [r2, #0]
    312a:	3301      	adds	r3, #1
    312c:	b29b      	uxth	r3, r3
    312e:	8013      	strh	r3, [r2, #0]
    3130:	8813      	ldrh	r3, [r2, #0]
    3132:	b29b      	uxth	r3, r3
    3134:	2b06      	cmp	r3, #6
    3136:	d167      	bne.n	3208 <TV_SYNC_handler+0x128>
    3138:	2300      	movs	r3, #0
    313a:	8013      	strh	r3, [r2, #0]
    313c:	8893      	ldrh	r3, [r2, #4]
    313e:	3301      	adds	r3, #1
    3140:	b29b      	uxth	r3, r3
    3142:	8093      	strh	r3, [r2, #4]
    3144:	e060      	b.n	3208 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    3146:	4b79      	ldr	r3, [pc, #484]	; (332c <TV_SYNC_handler+0x24c>)
    3148:	f640 02e2 	movw	r2, #2274	; 0x8e2
    314c:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    314e:	22a4      	movs	r2, #164	; 0xa4
    3150:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3152:	4a74      	ldr	r2, [pc, #464]	; (3324 <TV_SYNC_handler+0x244>)
    3154:	8813      	ldrh	r3, [r2, #0]
    3156:	3301      	adds	r3, #1
    3158:	b29b      	uxth	r3, r3
    315a:	8013      	strh	r3, [r2, #0]
    315c:	e054      	b.n	3208 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    315e:	4b71      	ldr	r3, [pc, #452]	; (3324 <TV_SYNC_handler+0x244>)
    3160:	881b      	ldrh	r3, [r3, #0]
    3162:	b29b      	uxth	r3, r3
    3164:	b17b      	cbz	r3, 3186 <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    3166:	4a6f      	ldr	r2, [pc, #444]	; (3324 <TV_SYNC_handler+0x244>)
    3168:	8813      	ldrh	r3, [r2, #0]
    316a:	3301      	adds	r3, #1
    316c:	b29b      	uxth	r3, r3
    316e:	8013      	strh	r3, [r2, #0]
    3170:	8813      	ldrh	r3, [r2, #0]
    3172:	b29b      	uxth	r3, r3
    3174:	2b06      	cmp	r3, #6
    3176:	d147      	bne.n	3208 <TV_SYNC_handler+0x128>
    3178:	2300      	movs	r3, #0
    317a:	8013      	strh	r3, [r2, #0]
    317c:	8893      	ldrh	r3, [r2, #4]
    317e:	3301      	adds	r3, #1
    3180:	b29b      	uxth	r3, r3
    3182:	8093      	strh	r3, [r2, #4]
    3184:	e040      	b.n	3208 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    3186:	f240 7294 	movw	r2, #1940	; 0x794
    318a:	4b68      	ldr	r3, [pc, #416]	; (332c <TV_SYNC_handler+0x24c>)
    318c:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    318e:	4a65      	ldr	r2, [pc, #404]	; (3324 <TV_SYNC_handler+0x244>)
    3190:	8813      	ldrh	r3, [r2, #0]
    3192:	3301      	adds	r3, #1
    3194:	b29b      	uxth	r3, r3
    3196:	8013      	strh	r3, [r2, #0]
    3198:	e036      	b.n	3208 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    319a:	4b62      	ldr	r3, [pc, #392]	; (3324 <TV_SYNC_handler+0x244>)
    319c:	881b      	ldrh	r3, [r3, #0]
    319e:	b29b      	uxth	r3, r3
    31a0:	b153      	cbz	r3, 31b8 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    31a2:	4b60      	ldr	r3, [pc, #384]	; (3324 <TV_SYNC_handler+0x244>)
    31a4:	881b      	ldrh	r3, [r3, #0]
    31a6:	b29b      	uxth	r3, r3
    31a8:	2b06      	cmp	r3, #6
    31aa:	d00e      	beq.n	31ca <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    31ac:	4a5d      	ldr	r2, [pc, #372]	; (3324 <TV_SYNC_handler+0x244>)
    31ae:	8813      	ldrh	r3, [r2, #0]
    31b0:	3301      	adds	r3, #1
    31b2:	b29b      	uxth	r3, r3
    31b4:	8013      	strh	r3, [r2, #0]
            break;
    31b6:	e027      	b.n	3208 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    31b8:	22a4      	movs	r2, #164	; 0xa4
    31ba:	4b5c      	ldr	r3, [pc, #368]	; (332c <TV_SYNC_handler+0x24c>)
    31bc:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    31be:	4a59      	ldr	r2, [pc, #356]	; (3324 <TV_SYNC_handler+0x244>)
    31c0:	8813      	ldrh	r3, [r2, #0]
    31c2:	3301      	adds	r3, #1
    31c4:	b29b      	uxth	r3, r3
    31c6:	8013      	strh	r3, [r2, #0]
            break;
    31c8:	e01e      	b.n	3208 <TV_SYNC_handler+0x128>
            task++;
    31ca:	4a56      	ldr	r2, [pc, #344]	; (3324 <TV_SYNC_handler+0x244>)
    31cc:	8893      	ldrh	r3, [r2, #4]
    31ce:	3301      	adds	r3, #1
    31d0:	b29b      	uxth	r3, r3
    31d2:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    31d4:	88d3      	ldrh	r3, [r2, #6]
    31d6:	f013 0f01 	tst.w	r3, #1
    31da:	d015      	beq.n	3208 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    31dc:	4b53      	ldr	r3, [pc, #332]	; (332c <TV_SYNC_handler+0x24c>)
    31de:	f241 12c5 	movw	r2, #4549	; 0x11c5
    31e2:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    31e4:	f44f 72a8 	mov.w	r2, #336	; 0x150
    31e8:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    31ea:	4a4e      	ldr	r2, [pc, #312]	; (3324 <TV_SYNC_handler+0x244>)
    31ec:	88d3      	ldrh	r3, [r2, #6]
    31ee:	f023 0302 	bic.w	r3, r3, #2
    31f2:	041b      	lsls	r3, r3, #16
    31f4:	0c1b      	lsrs	r3, r3, #16
    31f6:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    31f8:	8853      	ldrh	r3, [r2, #2]
    31fa:	f3c3 038d 	ubfx	r3, r3, #2, #14
    31fe:	8053      	strh	r3, [r2, #2]
        task++;
    3200:	8893      	ldrh	r3, [r2, #4]
    3202:	3301      	adds	r3, #1
    3204:	b29b      	uxth	r3, r3
    3206:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    3208:	4a48      	ldr	r2, [pc, #288]	; (332c <TV_SYNC_handler+0x24c>)
    320a:	6913      	ldr	r3, [r2, #16]
    320c:	f023 0301 	bic.w	r3, r3, #1
    3210:	6113      	str	r3, [r2, #16]
}
    3212:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    3216:	4685      	mov	sp, r0
    3218:	4770      	bx	lr
        read_gamepad();
    321a:	f7fd ff27 	bl	106c <read_gamepad>
        task++;
    321e:	4a41      	ldr	r2, [pc, #260]	; (3324 <TV_SYNC_handler+0x244>)
    3220:	8893      	ldrh	r3, [r2, #4]
    3222:	3301      	adds	r3, #1
    3224:	b29b      	uxth	r3, r3
    3226:	8093      	strh	r3, [r2, #4]
        break;    
    3228:	e7ee      	b.n	3208 <TV_SYNC_handler+0x128>
        if (sound_timer){
    322a:	4b41      	ldr	r3, [pc, #260]	; (3330 <TV_SYNC_handler+0x250>)
    322c:	881b      	ldrh	r3, [r3, #0]
    322e:	b29b      	uxth	r3, r3
    3230:	b13b      	cbz	r3, 3242 <TV_SYNC_handler+0x162>
            sound_timer--;
    3232:	4a3f      	ldr	r2, [pc, #252]	; (3330 <TV_SYNC_handler+0x250>)
    3234:	8813      	ldrh	r3, [r2, #0]
    3236:	3b01      	subs	r3, #1
    3238:	b29b      	uxth	r3, r3
    323a:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    323c:	8813      	ldrh	r3, [r2, #0]
    323e:	b29b      	uxth	r3, r3
    3240:	b12b      	cbz	r3, 324e <TV_SYNC_handler+0x16e>
        task++;
    3242:	4a38      	ldr	r2, [pc, #224]	; (3324 <TV_SYNC_handler+0x244>)
    3244:	8893      	ldrh	r3, [r2, #4]
    3246:	3301      	adds	r3, #1
    3248:	b29b      	uxth	r3, r3
    324a:	8093      	strh	r3, [r2, #4]
        break;    
    324c:	e7dc      	b.n	3208 <TV_SYNC_handler+0x128>
                sound_stop();
    324e:	f7ff fb02 	bl	2856 <sound_stop>
    3252:	e7f6      	b.n	3242 <TV_SYNC_handler+0x162>
        if (game_timer){
    3254:	4b37      	ldr	r3, [pc, #220]	; (3334 <TV_SYNC_handler+0x254>)
    3256:	881b      	ldrh	r3, [r3, #0]
    3258:	b29b      	uxth	r3, r3
    325a:	b123      	cbz	r3, 3266 <TV_SYNC_handler+0x186>
            game_timer--;
    325c:	4a35      	ldr	r2, [pc, #212]	; (3334 <TV_SYNC_handler+0x254>)
    325e:	8813      	ldrh	r3, [r2, #0]
    3260:	3b01      	subs	r3, #1
    3262:	b29b      	uxth	r3, r3
    3264:	8013      	strh	r3, [r2, #0]
        task++;
    3266:	4a2f      	ldr	r2, [pc, #188]	; (3324 <TV_SYNC_handler+0x244>)
    3268:	8893      	ldrh	r3, [r2, #4]
    326a:	3301      	adds	r3, #1
    326c:	b29b      	uxth	r3, r3
    326e:	8093      	strh	r3, [r2, #4]
        break;
    3270:	e7ca      	b.n	3208 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    3272:	4b2c      	ldr	r3, [pc, #176]	; (3324 <TV_SYNC_handler+0x244>)
    3274:	885b      	ldrh	r3, [r3, #2]
    3276:	b29b      	uxth	r3, r3
    3278:	4a2f      	ldr	r2, [pc, #188]	; (3338 <TV_SYNC_handler+0x258>)
    327a:	88d2      	ldrh	r2, [r2, #6]
    327c:	429a      	cmp	r2, r3
    327e:	d1c3      	bne.n	3208 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    3280:	4b2a      	ldr	r3, [pc, #168]	; (332c <TV_SYNC_handler+0x24c>)
    3282:	691a      	ldr	r2, [r3, #16]
    3284:	f022 0204 	bic.w	r2, r2, #4
    3288:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    328a:	68da      	ldr	r2, [r3, #12]
    328c:	f042 0204 	orr.w	r2, r2, #4
    3290:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    3292:	4b24      	ldr	r3, [pc, #144]	; (3324 <TV_SYNC_handler+0x244>)
    3294:	88da      	ldrh	r2, [r3, #6]
    3296:	b292      	uxth	r2, r2
    3298:	f042 0204 	orr.w	r2, r2, #4
    329c:	80da      	strh	r2, [r3, #6]
            task++;
    329e:	889a      	ldrh	r2, [r3, #4]
    32a0:	3201      	adds	r2, #1
    32a2:	b292      	uxth	r2, r2
    32a4:	809a      	strh	r2, [r3, #4]
            slice=0;
    32a6:	2200      	movs	r2, #0
    32a8:	801a      	strh	r2, [r3, #0]
    32aa:	e7ad      	b.n	3208 <TV_SYNC_handler+0x128>
        slice++;
    32ac:	4a1d      	ldr	r2, [pc, #116]	; (3324 <TV_SYNC_handler+0x244>)
    32ae:	8813      	ldrh	r3, [r2, #0]
    32b0:	3301      	adds	r3, #1
    32b2:	b29b      	uxth	r3, r3
    32b4:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    32b6:	8853      	ldrh	r3, [r2, #2]
    32b8:	b29b      	uxth	r3, r3
    32ba:	4a1f      	ldr	r2, [pc, #124]	; (3338 <TV_SYNC_handler+0x258>)
    32bc:	8912      	ldrh	r2, [r2, #8]
    32be:	429a      	cmp	r2, r3
    32c0:	d1a2      	bne.n	3208 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    32c2:	4a1a      	ldr	r2, [pc, #104]	; (332c <TV_SYNC_handler+0x24c>)
    32c4:	68d3      	ldr	r3, [r2, #12]
    32c6:	f023 0304 	bic.w	r3, r3, #4
    32ca:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    32cc:	4a15      	ldr	r2, [pc, #84]	; (3324 <TV_SYNC_handler+0x244>)
    32ce:	88d3      	ldrh	r3, [r2, #6]
    32d0:	f023 0304 	bic.w	r3, r3, #4
    32d4:	041b      	lsls	r3, r3, #16
    32d6:	0c1b      	lsrs	r3, r3, #16
    32d8:	80d3      	strh	r3, [r2, #6]
            task++;
    32da:	8893      	ldrh	r3, [r2, #4]
    32dc:	3301      	adds	r3, #1
    32de:	b29b      	uxth	r3, r3
    32e0:	8093      	strh	r3, [r2, #4]
    32e2:	e791      	b.n	3208 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    32e4:	4b0f      	ldr	r3, [pc, #60]	; (3324 <TV_SYNC_handler+0x244>)
    32e6:	885b      	ldrh	r3, [r3, #2]
    32e8:	b29b      	uxth	r3, r3
    32ea:	f240 1207 	movw	r2, #263	; 0x107
    32ee:	4293      	cmp	r3, r2
    32f0:	d18a      	bne.n	3208 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    32f2:	4b0c      	ldr	r3, [pc, #48]	; (3324 <TV_SYNC_handler+0x244>)
    32f4:	88db      	ldrh	r3, [r3, #6]
    32f6:	f013 0f01 	tst.w	r3, #1
    32fa:	d003      	beq.n	3304 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    32fc:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3300:	4b0a      	ldr	r3, [pc, #40]	; (332c <TV_SYNC_handler+0x24c>)
    3302:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    3304:	4b07      	ldr	r3, [pc, #28]	; (3324 <TV_SYNC_handler+0x244>)
    3306:	88da      	ldrh	r2, [r3, #6]
    3308:	b292      	uxth	r2, r2
    330a:	f082 0201 	eor.w	r2, r2, #1
    330e:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    3310:	88da      	ldrh	r2, [r3, #6]
    3312:	b292      	uxth	r2, r2
    3314:	f042 0202 	orr.w	r2, r2, #2
    3318:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    331a:	2200      	movs	r2, #0
    331c:	805a      	strh	r2, [r3, #2]
            slice=0;
    331e:	801a      	strh	r2, [r3, #0]
            task=0;
    3320:	809a      	strh	r2, [r3, #4]
    3322:	e771      	b.n	3208 <TV_SYNC_handler+0x128>
    3324:	2000069c 	.word	0x2000069c
    3328:	20004e50 	.word	0x20004e50
    332c:	40012c00 	.word	0x40012c00
    3330:	20004e54 	.word	0x20004e54
    3334:	20004e4c 	.word	0x20004e4c
    3338:	20000208 	.word	0x20000208

0000333c <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    333c:	4a02      	ldr	r2, [pc, #8]	; (3348 <frame_sync+0xc>)
    333e:	88d3      	ldrh	r3, [r2, #6]
    3340:	f013 0f02 	tst.w	r3, #2
    3344:	d0fb      	beq.n	333e <frame_sync+0x2>
}
    3346:	4770      	bx	lr
    3348:	2000069c 	.word	0x2000069c

0000334c <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    334c:	4a02      	ldr	r2, [pc, #8]	; (3358 <wait_sync_end+0xc>)
    334e:	88d3      	ldrh	r3, [r2, #6]
    3350:	f013 0f02 	tst.w	r3, #2
    3354:	d1fb      	bne.n	334e <wait_sync_end+0x2>
}
    3356:	4770      	bx	lr
    3358:	2000069c 	.word	0x2000069c

0000335c <set_video_mode>:

void set_video_mode(vmode_t mode){
    335c:	b510      	push	{r4, lr}
    335e:	4604      	mov	r4, r0
    frame_sync();
    3360:	f7ff ffec 	bl	333c <frame_sync>
    video_mode=mode;
    3364:	4b0e      	ldr	r3, [pc, #56]	; (33a0 <set_video_mode+0x44>)
    3366:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3368:	b1ac      	cbz	r4, 3396 <set_video_mode+0x3a>
    336a:	2200      	movs	r2, #0
    336c:	4b0d      	ldr	r3, [pc, #52]	; (33a4 <set_video_mode+0x48>)
    336e:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3370:	4b0d      	ldr	r3, [pc, #52]	; (33a8 <set_video_mode+0x4c>)
    3372:	480e      	ldr	r0, [pc, #56]	; (33ac <set_video_mode+0x50>)
    3374:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    3378:	8842      	ldrh	r2, [r0, #2]
    337a:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    337c:	8882      	ldrh	r2, [r0, #4]
    337e:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    3380:	88c2      	ldrh	r2, [r0, #6]
    3382:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    3384:	7a02      	ldrb	r2, [r0, #8]
    3386:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    3388:	7a42      	ldrb	r2, [r0, #9]
    338a:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    338c:	7a82      	ldrb	r2, [r0, #10]
    338e:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    3390:	f7fe f926 	bl	15e0 <gfx_cls>
    3394:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    3396:	2202      	movs	r2, #2
    3398:	4b02      	ldr	r3, [pc, #8]	; (33a4 <set_video_mode+0x48>)
    339a:	701a      	strb	r2, [r3, #0]
    339c:	e7e8      	b.n	3370 <set_video_mode+0x14>
    339e:	bf00      	nop
    33a0:	2000069c 	.word	0x2000069c
    33a4:	200001ac 	.word	0x200001ac
    33a8:	20000208 	.word	0x20000208
    33ac:	00003bf0 	.word	0x00003bf0

000033b0 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    33b0:	4b02      	ldr	r3, [pc, #8]	; (33bc <get_video_params+0xc>)
    33b2:	7a18      	ldrb	r0, [r3, #8]
}
    33b4:	4b02      	ldr	r3, [pc, #8]	; (33c0 <get_video_params+0x10>)
    33b6:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    33ba:	4770      	bx	lr
    33bc:	2000069c 	.word	0x2000069c
    33c0:	00003bf0 	.word	0x00003bf0

000033c4 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    33c4:	4b03      	ldr	r3, [pc, #12]	; (33d4 <game_pause+0x10>)
    33c6:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    33c8:	461a      	mov	r2, r3
    33ca:	8813      	ldrh	r3, [r2, #0]
    33cc:	b29b      	uxth	r3, r3
    33ce:	2b00      	cmp	r3, #0
    33d0:	d1fb      	bne.n	33ca <game_pause+0x6>
}
    33d2:	4770      	bx	lr
    33d4:	20004e4c 	.word	0x20004e4c

000033d8 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    33d8:	4b03      	ldr	r3, [pc, #12]	; (33e8 <micro_pause+0x10>)
    33da:	681b      	ldr	r3, [r3, #0]
    33dc:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    33de:	4a02      	ldr	r2, [pc, #8]	; (33e8 <micro_pause+0x10>)
    33e0:	6813      	ldr	r3, [r2, #0]
    33e2:	4298      	cmp	r0, r3
    33e4:	d8fc      	bhi.n	33e0 <micro_pause+0x8>
}
    33e6:	4770      	bx	lr
    33e8:	20004e50 	.word	0x20004e50

000033ec <usart_config_port>:
static uint8_t head;
static uint8_t tail;

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    33ec:	4b3b      	ldr	r3, [pc, #236]	; (34dc <usart_config_port+0xf0>)
    33ee:	4298      	cmp	r0, r3
    33f0:	d057      	beq.n	34a2 <usart_config_port+0xb6>
    33f2:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    33f6:	4298      	cmp	r0, r3
    33f8:	d004      	beq.n	3404 <usart_config_port+0x18>
    33fa:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    33fe:	4298      	cmp	r0, r3
    3400:	d032      	beq.n	3468 <usart_config_port+0x7c>
    3402:	4770      	bx	lr
	case (uint32_t)USART1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    3404:	4836      	ldr	r0, [pc, #216]	; (34e0 <usart_config_port+0xf4>)
    3406:	6983      	ldr	r3, [r0, #24]
    3408:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    340c:	f043 0304 	orr.w	r3, r3, #4
    3410:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    3412:	2a01      	cmp	r2, #1
    3414:	d016      	beq.n	3444 <usart_config_port+0x58>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    3416:	4b33      	ldr	r3, [pc, #204]	; (34e4 <usart_config_port+0xf8>)
    3418:	4299      	cmp	r1, r3
    341a:	d01c      	beq.n	3456 <usart_config_port+0x6a>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    341c:	4a32      	ldr	r2, [pc, #200]	; (34e8 <usart_config_port+0xfc>)
    341e:	6853      	ldr	r3, [r2, #4]
    3420:	f043 0304 	orr.w	r3, r3, #4
    3424:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    3426:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    342a:	6993      	ldr	r3, [r2, #24]
    342c:	f043 0308 	orr.w	r3, r3, #8
    3430:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    3432:	680b      	ldr	r3, [r1, #0]
    3434:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3438:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    343a:	680b      	ldr	r3, [r1, #0]
    343c:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    3440:	600b      	str	r3, [r1, #0]
    3442:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    3444:	684b      	ldr	r3, [r1, #4]
    3446:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    344a:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    344c:	684b      	ldr	r3, [r1, #4]
    344e:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    3452:	604b      	str	r3, [r1, #4]
    3454:	e7df      	b.n	3416 <usart_config_port+0x2a>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    3456:	685a      	ldr	r2, [r3, #4]
    3458:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    345c:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    345e:	685a      	ldr	r2, [r3, #4]
    3460:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    3464:	605a      	str	r2, [r3, #4]
    3466:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3468:	4b1d      	ldr	r3, [pc, #116]	; (34e0 <usart_config_port+0xf4>)
    346a:	69d8      	ldr	r0, [r3, #28]
    346c:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3470:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    3472:	6998      	ldr	r0, [r3, #24]
    3474:	f040 0004 	orr.w	r0, r0, #4
    3478:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    347a:	2a01      	cmp	r2, #1
    347c:	d008      	beq.n	3490 <usart_config_port+0xa4>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    347e:	680b      	ldr	r3, [r1, #0]
    3480:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    3484:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    3486:	680b      	ldr	r3, [r1, #0]
    3488:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    348c:	600b      	str	r3, [r1, #0]
    348e:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3490:	680b      	ldr	r3, [r1, #0]
    3492:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    3496:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    3498:	680b      	ldr	r3, [r1, #0]
    349a:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    349e:	600b      	str	r3, [r1, #0]
    34a0:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    34a2:	4b0f      	ldr	r3, [pc, #60]	; (34e0 <usart_config_port+0xf4>)
    34a4:	69d8      	ldr	r0, [r3, #28]
    34a6:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    34aa:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    34ac:	6998      	ldr	r0, [r3, #24]
    34ae:	f040 0008 	orr.w	r0, r0, #8
    34b2:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    34b4:	2a01      	cmp	r2, #1
    34b6:	d008      	beq.n	34ca <usart_config_port+0xde>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    34b8:	684b      	ldr	r3, [r1, #4]
    34ba:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    34be:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    34c0:	684b      	ldr	r3, [r1, #4]
    34c2:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    34c6:	604b      	str	r3, [r1, #4]
		}
		break;
	}
}
    34c8:	e79b      	b.n	3402 <usart_config_port+0x16>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    34ca:	684b      	ldr	r3, [r1, #4]
    34cc:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    34d0:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    34d2:	684b      	ldr	r3, [r1, #4]
    34d4:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    34d8:	604b      	str	r3, [r1, #4]
    34da:	4770      	bx	lr
    34dc:	40004800 	.word	0x40004800
    34e0:	40021000 	.word	0x40021000
    34e4:	40010800 	.word	0x40010800
    34e8:	40010000 	.word	0x40010000

000034ec <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    34ec:	4b04      	ldr	r3, [pc, #16]	; (3500 <usart_set_baud+0x14>)
    34ee:	4298      	cmp	r0, r3
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
    34f0:	bf0c      	ite	eq
    34f2:	4b04      	ldreq	r3, [pc, #16]	; (3504 <usart_set_baud+0x18>)
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    34f4:	4b04      	ldrne	r3, [pc, #16]	; (3508 <usart_set_baud+0x1c>)
    34f6:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channel->BRR=rate;
    34fa:	6081      	str	r1, [r0, #8]
    34fc:	4770      	bx	lr
    34fe:	bf00      	nop
    3500:	40013800 	.word	0x40013800
    3504:	044463f4 	.word	0x044463f4
    3508:	022231fa 	.word	0x022231fa

0000350c <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
	channel->CR1&=USART_CR1_DIR_MASK;
    350c:	68c3      	ldr	r3, [r0, #12]
    350e:	f023 030c 	bic.w	r3, r3, #12
    3512:	60c3      	str	r3, [r0, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    3514:	68c3      	ldr	r3, [r0, #12]
    3516:	ea43 0181 	orr.w	r1, r3, r1, lsl #2
    351a:	60c1      	str	r1, [r0, #12]
    351c:	4770      	bx	lr

0000351e <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    351e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    3522:	4604      	mov	r4, r0
    3524:	460f      	mov	r7, r1
    3526:	4615      	mov	r5, r2
    3528:	4698      	mov	r8, r3
    352a:	9e07      	ldr	r6, [sp, #28]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    352c:	4b2e      	ldr	r3, [pc, #184]	; (35e8 <usart_open_channel+0xca>)
    352e:	4298      	cmp	r0, r3
    3530:	d03e      	beq.n	35b0 <usart_open_channel+0x92>
    3532:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3536:	4298      	cmp	r0, r3
    3538:	d01b      	beq.n	3572 <usart_open_channel+0x54>
    353a:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    353e:	4298      	cmp	r0, r3
    3540:	d02a      	beq.n	3598 <usart_open_channel+0x7a>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    3542:	2e01      	cmp	r6, #1
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3544:	bf04      	itt	eq
    3546:	f44f 7340 	moveq.w	r3, #768	; 0x300
    354a:	6163      	streq	r3, [r4, #20]
	}
	usart_comm_dir(channel,dir);
    354c:	4641      	mov	r1, r8
    354e:	4620      	mov	r0, r4
    3550:	f7ff ffdc 	bl	350c <usart_comm_dir>
	switch (parity){
    3554:	2d01      	cmp	r5, #1
    3556:	d03c      	beq.n	35d2 <usart_open_channel+0xb4>
    3558:	b3b5      	cbz	r5, 35c8 <usart_open_channel+0xaa>
    355a:	2d02      	cmp	r5, #2
    355c:	d03e      	beq.n	35dc <usart_open_channel+0xbe>
		break;
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    355e:	4639      	mov	r1, r7
    3560:	4620      	mov	r0, r4
    3562:	f7ff ffc3 	bl	34ec <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    3566:	68e3      	ldr	r3, [r4, #12]
    3568:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    356c:	60e3      	str	r3, [r4, #12]
    356e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    3572:	9b06      	ldr	r3, [sp, #24]
    3574:	b95b      	cbnz	r3, 358e <usart_open_channel+0x70>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    3576:	4632      	mov	r2, r6
    3578:	491c      	ldr	r1, [pc, #112]	; (35ec <usart_open_channel+0xce>)
    357a:	f7ff ff37 	bl	33ec <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    357e:	2107      	movs	r1, #7
    3580:	2025      	movs	r0, #37	; 0x25
    3582:	f7fe fd5b 	bl	203c <set_int_priority>
		enable_interrupt(IRQ_USART1);
    3586:	2025      	movs	r0, #37	; 0x25
    3588:	f7fe fcf8 	bl	1f7c <enable_interrupt>
		break;
    358c:	e7d9      	b.n	3542 <usart_open_channel+0x24>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    358e:	4632      	mov	r2, r6
    3590:	4917      	ldr	r1, [pc, #92]	; (35f0 <usart_open_channel+0xd2>)
    3592:	f7ff ff2b 	bl	33ec <usart_config_port>
    3596:	e7f2      	b.n	357e <usart_open_channel+0x60>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    3598:	4632      	mov	r2, r6
    359a:	4914      	ldr	r1, [pc, #80]	; (35ec <usart_open_channel+0xce>)
    359c:	f7ff ff26 	bl	33ec <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    35a0:	2107      	movs	r1, #7
    35a2:	2026      	movs	r0, #38	; 0x26
    35a4:	f7fe fd4a 	bl	203c <set_int_priority>
		enable_interrupt(IRQ_USART2);
    35a8:	2026      	movs	r0, #38	; 0x26
    35aa:	f7fe fce7 	bl	1f7c <enable_interrupt>
		break;
    35ae:	e7c8      	b.n	3542 <usart_open_channel+0x24>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    35b0:	4632      	mov	r2, r6
    35b2:	490f      	ldr	r1, [pc, #60]	; (35f0 <usart_open_channel+0xd2>)
    35b4:	f7ff ff1a 	bl	33ec <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    35b8:	2107      	movs	r1, #7
    35ba:	2027      	movs	r0, #39	; 0x27
    35bc:	f7fe fd3e 	bl	203c <set_int_priority>
		enable_interrupt(IRQ_USART3);
    35c0:	2027      	movs	r0, #39	; 0x27
    35c2:	f7fe fcdb 	bl	1f7c <enable_interrupt>
		break;
    35c6:	e7bc      	b.n	3542 <usart_open_channel+0x24>
		channel->CR1|=USART_CR1_RXNEIE;
    35c8:	68e3      	ldr	r3, [r4, #12]
    35ca:	f043 0320 	orr.w	r3, r3, #32
    35ce:	60e3      	str	r3, [r4, #12]
		break;
    35d0:	e7c5      	b.n	355e <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    35d2:	68e3      	ldr	r3, [r4, #12]
    35d4:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    35d8:	60e3      	str	r3, [r4, #12]
		break;
    35da:	e7c0      	b.n	355e <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    35dc:	68e3      	ldr	r3, [r4, #12]
    35de:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    35e2:	60e3      	str	r3, [r4, #12]
		break;
    35e4:	e7bb      	b.n	355e <usart_open_channel+0x40>
    35e6:	bf00      	nop
    35e8:	40004800 	.word	0x40004800
    35ec:	40010800 	.word	0x40010800
    35f0:	40010c00 	.word	0x40010c00

000035f4 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
	return channel->SR&USART_SR_RXNE;
    35f4:	6800      	ldr	r0, [r0, #0]
}
    35f6:	f000 0020 	and.w	r0, r0, #32
    35fa:	4770      	bx	lr

000035fc <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
	char c;
	if (head!=tail){
    35fc:	4a07      	ldr	r2, [pc, #28]	; (361c <usart_getc+0x20>)
    35fe:	7813      	ldrb	r3, [r2, #0]
    3600:	7852      	ldrb	r2, [r2, #1]
    3602:	429a      	cmp	r2, r3
    3604:	d007      	beq.n	3616 <usart_getc+0x1a>
		c=rx_queue[head++];
    3606:	4a05      	ldr	r2, [pc, #20]	; (361c <usart_getc+0x20>)
    3608:	18d1      	adds	r1, r2, r3
    360a:	7908      	ldrb	r0, [r1, #4]
    360c:	3301      	adds	r3, #1
		head&=(RX_QUEUE_SIZE-1);
    360e:	f003 030f 	and.w	r3, r3, #15
    3612:	7013      	strb	r3, [r2, #0]
		return c;
    3614:	4770      	bx	lr
	}else{
		return 0;
    3616:	2000      	movs	r0, #0
	}
		
}
    3618:	4770      	bx	lr
    361a:	bf00      	nop
    361c:	200006a8 	.word	0x200006a8

00003620 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
    3620:	b410      	push	{r4}
	unsigned t0=ntsc_ticks+dly;
    3622:	4b0d      	ldr	r3, [pc, #52]	; (3658 <usart_getc_dly+0x38>)
    3624:	681b      	ldr	r3, [r3, #0]
    3626:	4419      	add	r1, r3
	char c;

	while ((ntsc_ticks<t0) && !(head==tail));
    3628:	4b0c      	ldr	r3, [pc, #48]	; (365c <usart_getc_dly+0x3c>)
    362a:	781a      	ldrb	r2, [r3, #0]
    362c:	785c      	ldrb	r4, [r3, #1]
    362e:	480a      	ldr	r0, [pc, #40]	; (3658 <usart_getc_dly+0x38>)
    3630:	6803      	ldr	r3, [r0, #0]
    3632:	4299      	cmp	r1, r3
    3634:	d901      	bls.n	363a <usart_getc_dly+0x1a>
    3636:	42a2      	cmp	r2, r4
    3638:	d1fa      	bne.n	3630 <usart_getc_dly+0x10>
	if (ntsc_ticks<t0){
    363a:	4b07      	ldr	r3, [pc, #28]	; (3658 <usart_getc_dly+0x38>)
    363c:	681b      	ldr	r3, [r3, #0]
    363e:	4299      	cmp	r1, r3
    3640:	d908      	bls.n	3654 <usart_getc_dly+0x34>
			c=rx_queue[head++];
    3642:	4b06      	ldr	r3, [pc, #24]	; (365c <usart_getc_dly+0x3c>)
    3644:	1899      	adds	r1, r3, r2
    3646:	7908      	ldrb	r0, [r1, #4]
    3648:	3201      	adds	r2, #1
			head&=(RX_QUEUE_SIZE-1);
    364a:	f002 020f 	and.w	r2, r2, #15
    364e:	701a      	strb	r2, [r3, #0]
			return c;
	}else return 0;
}
    3650:	bc10      	pop	{r4}
    3652:	4770      	bx	lr
	}else return 0;
    3654:	2000      	movs	r0, #0
    3656:	e7fb      	b.n	3650 <usart_getc_dly+0x30>
    3658:	20004e50 	.word	0x20004e50
    365c:	200006a8 	.word	0x200006a8

00003660 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    3660:	6803      	ldr	r3, [r0, #0]
    3662:	f013 0f80 	tst.w	r3, #128	; 0x80
    3666:	d0fb      	beq.n	3660 <usart_putc>
	channel->DR=c;
    3668:	6041      	str	r1, [r0, #4]
    366a:	4770      	bx	lr

0000366c <usart_cts>:
}


int usart_cts(usart_t* channel){
	int cts;
	switch ((uint32_t)channel){
    366c:	4b0d      	ldr	r3, [pc, #52]	; (36a4 <usart_cts+0x38>)
    366e:	4298      	cmp	r0, r3
    3670:	d013      	beq.n	369a <usart_cts+0x2e>
    3672:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3676:	4298      	cmp	r0, r3
    3678:	d005      	beq.n	3686 <usart_cts+0x1a>
    367a:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    367e:	4298      	cmp	r0, r3
    3680:	d006      	beq.n	3690 <usart_cts+0x24>
    3682:	2000      	movs	r0, #0
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3684:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    3686:	4b08      	ldr	r3, [pc, #32]	; (36a8 <usart_cts+0x3c>)
    3688:	6898      	ldr	r0, [r3, #8]
    368a:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    368e:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    3690:	4b05      	ldr	r3, [pc, #20]	; (36a8 <usart_cts+0x3c>)
    3692:	6898      	ldr	r0, [r3, #8]
    3694:	f000 0001 	and.w	r0, r0, #1
			break;
    3698:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    369a:	4b04      	ldr	r3, [pc, #16]	; (36ac <usart_cts+0x40>)
    369c:	6898      	ldr	r0, [r3, #8]
    369e:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    36a2:	4770      	bx	lr
    36a4:	40004800 	.word	0x40004800
    36a8:	40010800 	.word	0x40010800
    36ac:	40010c00 	.word	0x40010c00

000036b0 <usart_print>:

void usart_print(usart_t* channel, const char *str){
    36b0:	b538      	push	{r3, r4, r5, lr}
    36b2:	4605      	mov	r5, r0
    36b4:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    36b6:	7809      	ldrb	r1, [r1, #0]
    36b8:	b131      	cbz	r1, 36c8 <usart_print+0x18>
    36ba:	4628      	mov	r0, r5
    36bc:	f7ff ffd0 	bl	3660 <usart_putc>
    36c0:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    36c4:	2900      	cmp	r1, #0
    36c6:	d1f8      	bne.n	36ba <usart_print+0xa>
    36c8:	bd38      	pop	{r3, r4, r5, pc}

000036ca <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    36ca:	4668      	mov	r0, sp
    36cc:	f020 0107 	bic.w	r1, r0, #7
    36d0:	468d      	mov	sp, r1
    36d2:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    36d4:	4b08      	ldr	r3, [pc, #32]	; (36f8 <USART1_handler+0x2e>)
    36d6:	681b      	ldr	r3, [r3, #0]
    36d8:	f013 0f20 	tst.w	r3, #32
    36dc:	d009      	beq.n	36f2 <USART1_handler+0x28>
				rx_queue[tail++]=USART1->DR;
    36de:	4a07      	ldr	r2, [pc, #28]	; (36fc <USART1_handler+0x32>)
    36e0:	7853      	ldrb	r3, [r2, #1]
    36e2:	4905      	ldr	r1, [pc, #20]	; (36f8 <USART1_handler+0x2e>)
    36e4:	6848      	ldr	r0, [r1, #4]
    36e6:	18d1      	adds	r1, r2, r3
    36e8:	7108      	strb	r0, [r1, #4]
    36ea:	3301      	adds	r3, #1
				tail&=(RX_QUEUE_SIZE-1);
    36ec:	f003 030f 	and.w	r3, r3, #15
    36f0:	7053      	strb	r3, [r2, #1]
		}
}
    36f2:	bc01      	pop	{r0}
    36f4:	4685      	mov	sp, r0
    36f6:	4770      	bx	lr
    36f8:	40013800 	.word	0x40013800
    36fc:	200006a8 	.word	0x200006a8
