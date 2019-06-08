
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 b9 2b 00 00     .P. 1........+..
      10:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 b9 2b 00 00     .+...+...+...+..
      20:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 09 02 00 00     .+...+...+......
      30:	b9 2b 00 00 b9 2b 00 00 0d 02 00 00 11 02 00 00     .+...+..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 cb 28 00 00     ........!....(..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 b9 2b 00 00 b9 2b 00 00 49 02 00 00     E....+...+..I...
      80:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 b9 2b 00 00     .+...+...+...+..
      90:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 4d 02 00 00     .+...+...+..M...
      a0:	b9 2b 00 00 f5 31 00 00 b9 2b 00 00 0d 31 00 00     .+...1...+...1..
      b0:	e1 29 00 00 51 02 00 00 55 02 00 00 b9 2b 00 00     .)..Q...U....+..
      c0:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 b9 2b 00 00     .+...+...+...+..
      d0:	b9 2b 00 00 07 38 00 00 3d 38 00 00 7d 38 00 00     .+...8..=8..}8..
      e0:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 b9 2b 00 00     .+...+...+...+..
      f0:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 b9 2b 00 00     .+...+...+...+..
     100:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 b9 2b 00 00     .+...+...+...+..
     110:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 b9 2b 00 00     .+...+...+...+..
     120:	b9 2b 00 00 b9 2b 00 00 b9 2b 00 00 b9 2b 00 00     .+...+...+...+..

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
     186:	f001 fd29 	bl	1bdc <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e7e 	.word	0x20004e7e
     190:	20000212 	.word	0x20000212
     194:	20004e7d 	.word	0x20004e7d
     198:	20000212 	.word	0x20000212
     19c:	20000000 	.word	0x20000000
     1a0:	00009998 	.word	0x00009998
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
     1da:	f002 fcf5 	bl	2bc8 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fcf2 	bl	2bc8 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fcef 	bl	2bc8 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fcec 	bl	2bc8 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	000040b0 	.word	0x000040b0
     1f8:	0000408c 	.word	0x0000408c
     1fc:	000040a4 	.word	0x000040a4
     200:	000040c0 	.word	0x000040c0

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fcd8 	bl	2bb8 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fcd6 	bl	2bb8 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fcd4 	bl	2bb8 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fcd2 	bl	2bb8 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fcd0 	bl	2bb8 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fcce 	bl	2bb8 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fccc 	bl	2bb8 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fcca 	bl	2bb8 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fcc8 	bl	2bb8 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fcc6 	bl	2bb8 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fcc4 	bl	2bb8 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fcc2 	bl	2bb8 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fcc0 	bl	2bb8 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fcbe 	bl	2bb8 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fcbc 	bl	2bb8 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fcba 	bl	2bb8 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fcb8 	bl	2bb8 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fcb6 	bl	2bb8 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fcb4 	bl	2bb8 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fcb2 	bl	2bb8 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fcb0 	bl	2bb8 <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 fcae 	bl	2bb8 <reset_mcu>
_default_handler(USART2_handler) // 38
     25c:	f002 fcac 	bl	2bb8 <reset_mcu>
_default_handler(USART3_handler) // 39
     260:	f002 fcaa 	bl	2bb8 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fca8 	bl	2bb8 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fca6 	bl	2bb8 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fca4 	bl	2bb8 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fca2 	bl	2bb8 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fca0 	bl	2bb8 <reset_mcu>

00000278 <basic>:
#include "graphics.h"
#include "gamepad.h"
#include "text.h"
#include "basic.h"

void basic(){
     278:	b508      	push	{r3, lr}
    gfx_cls();
     27a:	f001 fa3f 	bl	16fc <gfx_cls>
    print("not done yet\n");
     27e:	4804      	ldr	r0, [pc, #16]	; (290 <basic+0x18>)
     280:	f002 fe08 	bl	2e94 <print>
    prompt_btn();
     284:	f002 fe6b 	bl	2f5e <prompt_btn>
    btn_wait_any();
     288:	f000 ffd6 	bl	1238 <btn_wait_any>
     28c:	bd08      	pop	{r3, pc}
     28e:	bf00      	nop
     290:	00003ddc 	.word	0x00003ddc

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
     332:	f002 fcc3 	bl	2cbc <get_font>
     336:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     338:	2002      	movs	r0, #2
     33a:	f002 fcb9 	bl	2cb0 <select_font>
	new_line();
     33e:	f002 fcc3 	bl	2cc8 <new_line>
	print(msg);
     342:	4628      	mov	r0, r5
     344:	f002 fda6 	bl	2e94 <print>
	switch(error_code){
     348:	2c02      	cmp	r4, #2
     34a:	d039      	beq.n	3c0 <print_vms+0x94>
     34c:	2c03      	cmp	r4, #3
     34e:	d102      	bne.n	356 <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     350:	481d      	ldr	r0, [pc, #116]	; (3c8 <print_vms+0x9c>)
     352:	f002 fd9f 	bl	2e94 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     356:	481d      	ldr	r0, [pc, #116]	; (3cc <print_vms+0xa0>)
     358:	f002 fd9c 	bl	2e94 <print>
	print_hex(vms.pc-2);
     35c:	4d1c      	ldr	r5, [pc, #112]	; (3d0 <print_vms+0xa4>)
     35e:	8828      	ldrh	r0, [r5, #0]
     360:	2110      	movs	r1, #16
     362:	3802      	subs	r0, #2
     364:	f002 fdb1 	bl	2eca <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     368:	7e28      	ldrb	r0, [r5, #24]
     36a:	7e6b      	ldrb	r3, [r5, #25]
     36c:	2110      	movs	r1, #16
     36e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     372:	f002 fdaa 	bl	2eca <print_int>
	new_line();
     376:	f002 fca7 	bl	2cc8 <new_line>
	print("I:");
     37a:	4816      	ldr	r0, [pc, #88]	; (3d4 <print_vms+0xa8>)
     37c:	f002 fd8a 	bl	2e94 <print>
	print_hex(vms.ix);
     380:	2110      	movs	r1, #16
     382:	8868      	ldrh	r0, [r5, #2]
     384:	f002 fda1 	bl	2eca <print_int>
	print(" SP:");
     388:	4813      	ldr	r0, [pc, #76]	; (3d8 <print_vms+0xac>)
     38a:	f002 fd83 	bl	2e94 <print>
	print_hex(vms.sp);
     38e:	2110      	movs	r1, #16
     390:	7928      	ldrb	r0, [r5, #4]
     392:	f002 fd9a 	bl	2eca <print_int>
	new_line();
     396:	f002 fc97 	bl	2cc8 <new_line>
	print("var[]:");
     39a:	4810      	ldr	r0, [pc, #64]	; (3dc <print_vms+0xb0>)
     39c:	f002 fd7a 	bl	2e94 <print>
     3a0:	1dac      	adds	r4, r5, #6
     3a2:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     3a4:	2610      	movs	r6, #16
     3a6:	4631      	mov	r1, r6
     3a8:	f814 0b01 	ldrb.w	r0, [r4], #1
     3ac:	f002 fd8d 	bl	2eca <print_int>
	for (int i=0;i<16;i++){
     3b0:	42ac      	cmp	r4, r5
     3b2:	d1f8      	bne.n	3a6 <print_vms+0x7a>
	}
	new_line();
     3b4:	f002 fc88 	bl	2cc8 <new_line>
	select_font(orig_font);
     3b8:	4638      	mov	r0, r7
     3ba:	f002 fc79 	bl	2cb0 <select_font>
     3be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3c0:	4807      	ldr	r0, [pc, #28]	; (3e0 <print_vms+0xb4>)
     3c2:	f002 fd67 	bl	2e94 <print>
		break;
     3c6:	e7c6      	b.n	356 <print_vms+0x2a>
     3c8:	00003dec 	.word	0x00003dec
     3cc:	00003e14 	.word	0x00003e14
     3d0:	20000214 	.word	0x20000214
     3d4:	00003e18 	.word	0x00003e18
     3d8:	00003e1c 	.word	0x00003e1c
     3dc:	00003e24 	.word	0x00003e24
     3e0:	00003e00 	.word	0x00003e00

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
     412:	4b9b      	ldr	r3, [pc, #620]	; (680 <chip_vm+0x274>)
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
     422:	f080 84b1 	bcs.w	d88 <chip_vm+0x97c>
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
     42c:	4f95      	ldr	r7, [pc, #596]	; (684 <chip_vm+0x278>)
     42e:	e13d      	b.n	6ac <chip_vm+0x2a0>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     430:	2d00      	cmp	r5, #0
     432:	f040 8140 	bne.w	6b6 <chip_vm+0x2aa>
     436:	2005      	movs	r0, #5
     438:	f003 f858 	bl	34ec <micro_pause>
		_get_opcode(vms.pc);
     43c:	8823      	ldrh	r3, [r4, #0]
     43e:	4a92      	ldr	r2, [pc, #584]	; (688 <chip_vm+0x27c>)
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
     456:	f001 f84d 	bl	14f4 <itoa>
     45a:	4601      	mov	r1, r0
     45c:	2000      	movs	r0, #0
     45e:	f003 f9c5 	bl	37ec <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     462:	7e20      	ldrb	r0, [r4, #24]
     464:	7e63      	ldrb	r3, [r4, #25]
     466:	2210      	movs	r2, #16
     468:	a902      	add	r1, sp, #8
     46a:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     46e:	f001 f841 	bl	14f4 <itoa>
     472:	4601      	mov	r1, r0
     474:	2000      	movs	r0, #0
     476:	f003 f9b9 	bl	37ec <usart_print>
			_debug_print("\n");
     47a:	4984      	ldr	r1, [pc, #528]	; (68c <chip_vm+0x280>)
     47c:	2000      	movs	r0, #0
     47e:	f003 f9b5 	bl	37ec <usart_print>
		x=rx(vms.b1);
     482:	7e22      	ldrb	r2, [r4, #24]
     484:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     488:	7e63      	ldrb	r3, [r4, #25]
     48a:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     48e:	0911      	lsrs	r1, r2, #4
     490:	290f      	cmp	r1, #15
     492:	f200 8106 	bhi.w	6a2 <chip_vm+0x296>
     496:	e8df f011 	tbh	[pc, r1, lsl #1]
     49a:	002b      	.short	0x002b
     49c:	008e0082 	.word	0x008e0082
     4a0:	00ab00a2 	.word	0x00ab00a2
     4a4:	010100b4 	.word	0x010100b4
     4a8:	015b014f 	.word	0x015b014f
     4ac:	02a401d6 	.word	0x02a401d6
     4b0:	02c102b1 	.word	0x02c102b1
     4b4:	030e02cc 	.word	0x030e02cc
     4b8:	032c      	.short	0x032c
			select_console(SERIAL);
     4ba:	2001      	movs	r0, #1
     4bc:	f002 fda4 	bl	3008 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4c0:	2100      	movs	r1, #0
     4c2:	4873      	ldr	r0, [pc, #460]	; (690 <chip_vm+0x284>)
     4c4:	f7ff ff32 	bl	32c <print_vms>
			select_console(LOCAL);
     4c8:	2000      	movs	r0, #0
     4ca:	f002 fd9d 	bl	3008 <select_console>
			break;
     4ce:	e7d8      	b.n	482 <chip_vm+0x76>
			select_console(SERIAL);
     4d0:	2001      	movs	r0, #1
     4d2:	f002 fd99 	bl	3008 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4d6:	2100      	movs	r1, #0
     4d8:	486d      	ldr	r0, [pc, #436]	; (690 <chip_vm+0x284>)
     4da:	f7ff ff27 	bl	32c <print_vms>
			print("vt100 keyboard to continue\n");
     4de:	486d      	ldr	r0, [pc, #436]	; (694 <chip_vm+0x288>)
     4e0:	f002 fcd8 	bl	2e94 <print>
			get_char();
     4e4:	f002 fd96 	bl	3014 <get_char>
			select_console(LOCAL);
     4e8:	2000      	movs	r0, #0
     4ea:	f002 fd8d 	bl	3008 <select_console>
			break;
     4ee:	e7c8      	b.n	482 <chip_vm+0x76>
		    if ((vms.b1|vms.b2)==0){
     4f0:	431a      	orrs	r2, r3
     4f2:	f000 80d6 	beq.w	6a2 <chip_vm+0x296>
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
     53c:	002a002a 	.word	0x002a002a
     540:	00390045 	.word	0x00390045
     544:	0450003d 	.word	0x0450003d
     548:	00410432 	.word	0x00410432
				gfx_scroll_down(vms.b2&0xf); 
     54c:	f003 000f 	and.w	r0, r3, #15
     550:	f001 f90e 	bl	1770 <gfx_scroll_down>
     554:	e0a5      	b.n	6a2 <chip_vm+0x296>
				gfx_scroll_up(vms.b2&0xf);					
     556:	f003 000f 	and.w	r0, r3, #15
     55a:	f001 f8e3 	bl	1724 <gfx_scroll_up>
     55e:	e0a0      	b.n	6a2 <chip_vm+0x296>
					exit_code=CHIP_BAD_OPCODE;
     560:	f04f 0802 	mov.w	r8, #2
     564:	f000 bc15 	b.w	d92 <chip_vm+0x986>
					gfx_cls();
     568:	f001 f8c8 	bl	16fc <gfx_cls>
					break;
     56c:	e099      	b.n	6a2 <chip_vm+0x296>
					vms.pc=vms.stack[vms.sp--];
     56e:	7923      	ldrb	r3, [r4, #4]
     570:	1e5a      	subs	r2, r3, #1
     572:	7122      	strb	r2, [r4, #4]
     574:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     578:	8b5b      	ldrh	r3, [r3, #26]
     57a:	8023      	strh	r3, [r4, #0]
					break;
     57c:	e091      	b.n	6a2 <chip_vm+0x296>
					gfx_scroll_right(4);
     57e:	2004      	movs	r0, #4
     580:	f001 f948 	bl	1814 <gfx_scroll_right>
					break;
     584:	e08d      	b.n	6a2 <chip_vm+0x296>
					gfx_scroll_left(4);
     586:	2004      	movs	r0, #4
     588:	f001 f916 	bl	17b8 <gfx_scroll_left>
					break;
     58c:	e089      	b.n	6a2 <chip_vm+0x296>
					set_video_mode(VM_SCHIP);
     58e:	2001      	movs	r0, #1
     590:	f002 ff6e 	bl	3470 <set_video_mode>
					break; 
     594:	e085      	b.n	6a2 <chip_vm+0x296>
					set_video_mode(VM_BPCHIP);
     596:	2000      	movs	r0, #0
     598:	f002 ff6a 	bl	3470 <set_video_mode>
					break;
     59c:	e081      	b.n	6a2 <chip_vm+0x296>
			vms.pc=caddr(vms.b1,vms.b2);
     59e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5a2:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5a6:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5a8:	4a3b      	ldr	r2, [pc, #236]	; (698 <chip_vm+0x28c>)
     5aa:	7812      	ldrb	r2, [r2, #0]
     5ac:	2a00      	cmp	r2, #0
     5ae:	d178      	bne.n	6a2 <chip_vm+0x296>
				vms.pc<<=1;
     5b0:	005b      	lsls	r3, r3, #1
     5b2:	8023      	strh	r3, [r4, #0]
     5b4:	e075      	b.n	6a2 <chip_vm+0x296>
			vms.stack[++vms.sp]=vms.pc;
     5b6:	7921      	ldrb	r1, [r4, #4]
     5b8:	3101      	adds	r1, #1
     5ba:	b2c9      	uxtb	r1, r1
     5bc:	7121      	strb	r1, [r4, #4]
     5be:	eb04 0141 	add.w	r1, r4, r1, lsl #1
     5c2:	8820      	ldrh	r0, [r4, #0]
     5c4:	8348      	strh	r0, [r1, #26]
			vms.pc=caddr(vms.b1,vms.b2);
     5c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     5ca:	f3c3 030b 	ubfx	r3, r3, #0, #12
     5ce:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     5d0:	4a31      	ldr	r2, [pc, #196]	; (698 <chip_vm+0x28c>)
     5d2:	7812      	ldrb	r2, [r2, #0]
     5d4:	2a00      	cmp	r2, #0
     5d6:	d164      	bne.n	6a2 <chip_vm+0x296>
				vms.pc<<=1;
     5d8:	005b      	lsls	r3, r3, #1
     5da:	8023      	strh	r3, [r4, #0]
     5dc:	e061      	b.n	6a2 <chip_vm+0x296>
			if (vms.var[x]==vms.b2) vms.pc+=2;
     5de:	44a0      	add	r8, r4
     5e0:	f898 2006 	ldrb.w	r2, [r8, #6]
     5e4:	429a      	cmp	r2, r3
     5e6:	d15c      	bne.n	6a2 <chip_vm+0x296>
     5e8:	8823      	ldrh	r3, [r4, #0]
     5ea:	3302      	adds	r3, #2
     5ec:	8023      	strh	r3, [r4, #0]
     5ee:	e058      	b.n	6a2 <chip_vm+0x296>
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     5f0:	44a0      	add	r8, r4
     5f2:	f898 2006 	ldrb.w	r2, [r8, #6]
     5f6:	429a      	cmp	r2, r3
     5f8:	d053      	beq.n	6a2 <chip_vm+0x296>
     5fa:	8823      	ldrh	r3, [r4, #0]
     5fc:	3302      	adds	r3, #2
     5fe:	8023      	strh	r3, [r4, #0]
     600:	e04f      	b.n	6a2 <chip_vm+0x296>
			switch(vms.b2&0xf){
     602:	f003 030f 	and.w	r3, r3, #15
     606:	2b02      	cmp	r3, #2
     608:	d015      	beq.n	636 <chip_vm+0x22a>
     60a:	2b03      	cmp	r3, #3
     60c:	d025      	beq.n	65a <chip_vm+0x24e>
     60e:	b133      	cbz	r3, 61e <chip_vm+0x212>
     610:	f04f 0800 	mov.w	r8, #0
 	while (exit_code==CHIP_CONTINUE){
     614:	f1b8 0f00 	cmp.w	r8, #0
     618:	f040 83bb 	bne.w	d92 <chip_vm+0x986>
     61c:	e041      	b.n	6a2 <chip_vm+0x296>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     61e:	44a0      	add	r8, r4
     620:	44a1      	add	r9, r4
     622:	f898 2006 	ldrb.w	r2, [r8, #6]
     626:	f899 3006 	ldrb.w	r3, [r9, #6]
     62a:	429a      	cmp	r2, r3
     62c:	d139      	bne.n	6a2 <chip_vm+0x296>
     62e:	8823      	ldrh	r3, [r4, #0]
     630:	3302      	adds	r3, #2
     632:	8023      	strh	r3, [r4, #0]
     634:	e035      	b.n	6a2 <chip_vm+0x296>
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
     64e:	490e      	ldr	r1, [pc, #56]	; (688 <chip_vm+0x27c>)
     650:	4419      	add	r1, r3
     652:	4420      	add	r0, r4
     654:	f000 fedd 	bl	1412 <move>
				break;
     658:	e023      	b.n	6a2 <chip_vm+0x296>
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
     674:	4804      	ldr	r0, [pc, #16]	; (688 <chip_vm+0x27c>)
     676:	4418      	add	r0, r3
     678:	f000 fecb 	bl	1412 <move>
				break;
     67c:	e011      	b.n	6a2 <chip_vm+0x296>
     67e:	bf00      	nop
     680:	20000214 	.word	0x20000214
     684:	51eb851f 	.word	0x51eb851f
     688:	200006e4 	.word	0x200006e4
     68c:	00003f40 	.word	0x00003f40
     690:	00003e2c 	.word	0x00003e2c
     694:	00003e40 	.word	0x00003e40
     698:	200006a8 	.word	0x200006a8
			vms.var[x]=vms.b2;
     69c:	44a0      	add	r8, r4
     69e:	f888 3006 	strb.w	r3, [r8, #6]
		if (vms.pc>=GAME_SPACE){
     6a2:	8823      	ldrh	r3, [r4, #0]
     6a4:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     6a8:	f080 8371 	bcs.w	d8e <chip_vm+0x982>
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     6ac:	4bc0      	ldr	r3, [pc, #768]	; (9b0 <chip_vm+0x5a4>)
     6ae:	781b      	ldrb	r3, [r3, #0]
     6b0:	2b01      	cmp	r3, #1
     6b2:	f43f aebd 	beq.w	430 <chip_vm+0x24>
		_get_opcode(vms.pc);
     6b6:	8820      	ldrh	r0, [r4, #0]
     6b8:	4bbe      	ldr	r3, [pc, #760]	; (9b4 <chip_vm+0x5a8>)
     6ba:	5c1a      	ldrb	r2, [r3, r0]
     6bc:	7622      	strb	r2, [r4, #24]
     6be:	4403      	add	r3, r0
     6c0:	785b      	ldrb	r3, [r3, #1]
     6c2:	7663      	strb	r3, [r4, #25]
		vms.pc+=2;
     6c4:	3002      	adds	r0, #2
     6c6:	b280      	uxth	r0, r0
     6c8:	8020      	strh	r0, [r4, #0]
		switch(dbg_level){
     6ca:	2d02      	cmp	r5, #2
     6cc:	f43f aef5 	beq.w	4ba <chip_vm+0xae>
     6d0:	2d03      	cmp	r5, #3
     6d2:	f43f aefd 	beq.w	4d0 <chip_vm+0xc4>
     6d6:	2d01      	cmp	r5, #1
     6d8:	f43f aeba 	beq.w	450 <chip_vm+0x44>
		x=rx(vms.b1);
     6dc:	7e22      	ldrb	r2, [r4, #24]
     6de:	f002 080f 	and.w	r8, r2, #15
		y=ry(vms.b2);
     6e2:	7e63      	ldrb	r3, [r4, #25]
     6e4:	ea4f 1913 	mov.w	r9, r3, lsr #4
	    switch (vms.b1>>4){
     6e8:	0911      	lsrs	r1, r2, #4
     6ea:	290f      	cmp	r1, #15
     6ec:	f200 833d 	bhi.w	d6a <chip_vm+0x95e>
     6f0:	a001      	add	r0, pc, #4	; (adr r0, 6f8 <chip_vm+0x2ec>)
     6f2:	f850 f021 	ldr.w	pc, [r0, r1, lsl #2]
     6f6:	bf00      	nop
     6f8:	000004f1 	.word	0x000004f1
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
     72c:	00000a33 	.word	0x00000a33
     730:	00000ab7 	.word	0x00000ab7
     734:	00000af3 	.word	0x00000af3
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
     74e:	e7a8      	b.n	6a2 <chip_vm+0x296>
			switch(vms.b2&0xf){
     750:	f003 030f 	and.w	r3, r3, #15
     754:	2b0e      	cmp	r3, #14
     756:	f200 830e 	bhi.w	d76 <chip_vm+0x96a>
     75a:	e8df f013 	tbh	[pc, r3, lsl #1]
     75e:	000f      	.short	0x000f
     760:	00200016 	.word	0x00200016
     764:	0034002a 	.word	0x0034002a
     768:	00520043 	.word	0x00520043
     76c:	030c005c 	.word	0x030c005c
     770:	030c030c 	.word	0x030c030c
     774:	030c030c 	.word	0x030c030c
     778:	006b030c 	.word	0x006b030c
				vms.var[x]=vms.var[y];
     77c:	44a1      	add	r9, r4
     77e:	f899 3006 	ldrb.w	r3, [r9, #6]
     782:	44a0      	add	r8, r4
     784:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     788:	e78b      	b.n	6a2 <chip_vm+0x296>
				vms.var[x]|=vms.var[y];
     78a:	44a0      	add	r8, r4
     78c:	44a1      	add	r9, r4
     78e:	f898 3006 	ldrb.w	r3, [r8, #6]
     792:	f899 2006 	ldrb.w	r2, [r9, #6]
     796:	4313      	orrs	r3, r2
     798:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     79c:	e781      	b.n	6a2 <chip_vm+0x296>
				vms.var[x]&=vms.var[y];
     79e:	44a0      	add	r8, r4
     7a0:	44a1      	add	r9, r4
     7a2:	f898 3006 	ldrb.w	r3, [r8, #6]
     7a6:	f899 2006 	ldrb.w	r2, [r9, #6]
     7aa:	4013      	ands	r3, r2
     7ac:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7b0:	e777      	b.n	6a2 <chip_vm+0x296>
				vms.var[x]^=vms.var[y];
     7b2:	44a0      	add	r8, r4
     7b4:	44a1      	add	r9, r4
     7b6:	f898 3006 	ldrb.w	r3, [r8, #6]
     7ba:	f899 2006 	ldrb.w	r2, [r9, #6]
     7be:	4053      	eors	r3, r2
     7c0:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     7c4:	e76d      	b.n	6a2 <chip_vm+0x296>
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
     7e2:	e75e      	b.n	6a2 <chip_vm+0x296>
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
     800:	e74f      	b.n	6a2 <chip_vm+0x296>
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
     814:	e745      	b.n	6a2 <chip_vm+0x296>
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
     832:	e736      	b.n	6a2 <chip_vm+0x296>
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
     844:	e72d      	b.n	6a2 <chip_vm+0x296>
			switch (vms.b2&0xf){
     846:	f003 030f 	and.w	r3, r3, #15
     84a:	2b0f      	cmp	r3, #15
     84c:	f200 8296 	bhi.w	d7c <chip_vm+0x970>
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
     872:	f43f af16 	beq.w	6a2 <chip_vm+0x296>
     876:	8823      	ldrh	r3, [r4, #0]
     878:	3302      	adds	r3, #2
     87a:	8023      	strh	r3, [r4, #0]
     87c:	e711      	b.n	6a2 <chip_vm+0x296>
				key_tone(vms.var[x],vms.var[y],false);
     87e:	44a1      	add	r9, r4
     880:	44a0      	add	r8, r4
     882:	2200      	movs	r2, #0
     884:	f899 1006 	ldrb.w	r1, [r9, #6]
     888:	f898 0006 	ldrb.w	r0, [r8, #6]
     88c:	f002 f880 	bl	2990 <key_tone>
				break;
     890:	e707      	b.n	6a2 <chip_vm+0x296>
				select_font(FONT_ASCII);
     892:	2002      	movs	r0, #2
     894:	f002 fa0c 	bl	2cb0 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     898:	44a1      	add	r9, r4
     89a:	44a0      	add	r8, r4
     89c:	f899 1006 	ldrb.w	r1, [r9, #6]
     8a0:	f898 0006 	ldrb.w	r0, [r8, #6]
     8a4:	f002 fac2 	bl	2e2c <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     8a8:	8860      	ldrh	r0, [r4, #2]
     8aa:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9b4 <chip_vm+0x5a8>
     8ae:	4448      	add	r0, r9
     8b0:	f002 faf0 	bl	2e94 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8b4:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8b8:	eb09 0008 	add.w	r0, r9, r8
     8bc:	f000 fdb3 	bl	1426 <strlen>
     8c0:	f108 0801 	add.w	r8, r8, #1
     8c4:	4480      	add	r8, r0
     8c6:	f8a4 8002 	strh.w	r8, [r4, #2]
				break;
     8ca:	e6ea      	b.n	6a2 <chip_vm+0x296>
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     8cc:	44a1      	add	r9, r4
     8ce:	44a0      	add	r8, r4
     8d0:	2303      	movs	r3, #3
     8d2:	2200      	movs	r2, #0
     8d4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8d8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8dc:	f000 fe98 	bl	1610 <gfx_blit>
				break;
     8e0:	e6df      	b.n	6a2 <chip_vm+0x296>
				noise((x<<4)+y);
     8e2:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8e6:	f002 f867 	bl	29b8 <noise>
				break;
     8ea:	e6da      	b.n	6a2 <chip_vm+0x296>
				key_tone(vms.var[x],vms.var[y],true);
     8ec:	44a1      	add	r9, r4
     8ee:	44a0      	add	r8, r4
     8f0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8f4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8f8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8fc:	f002 f848 	bl	2990 <key_tone>
				break;
     900:	e6cf      	b.n	6a2 <chip_vm+0x296>
				vms.stack[++vms.sp]=vms.var[x];
     902:	7923      	ldrb	r3, [r4, #4]
     904:	3301      	adds	r3, #1
     906:	b2db      	uxtb	r3, r3
     908:	7123      	strb	r3, [r4, #4]
     90a:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     90e:	44a0      	add	r8, r4
     910:	f898 2006 	ldrb.w	r2, [r8, #6]
     914:	835a      	strh	r2, [r3, #26]
				break;
     916:	e6c4      	b.n	6a2 <chip_vm+0x296>
				vms.var[x]=vms.stack[vms.sp--];
     918:	7923      	ldrb	r3, [r4, #4]
     91a:	1e5a      	subs	r2, r3, #1
     91c:	7122      	strb	r2, [r4, #4]
     91e:	44a0      	add	r8, r4
     920:	eb04 0343 	add.w	r3, r4, r3, lsl #1
     924:	8b5b      	ldrh	r3, [r3, #26]
     926:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     92a:	e6ba      	b.n	6a2 <chip_vm+0x296>
				{ 	vmode_params_t *vparams=get_video_params();
     92c:	f002 fdca 	bl	34c4 <get_video_params>
					vms.var[x]=vparams->hres;
     930:	44a0      	add	r8, r4
     932:	8983      	ldrh	r3, [r0, #12]
     934:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     938:	e6b3      	b.n	6a2 <chip_vm+0x296>
					vmode_params_t *vparams=get_video_params();
     93a:	f002 fdc3 	bl	34c4 <get_video_params>
					vms.var[x]=vparams->vres;
     93e:	44a0      	add	r8, r4
     940:	89c3      	ldrh	r3, [r0, #14]
     942:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     946:	e6ac      	b.n	6a2 <chip_vm+0x296>
			    vms.var[x] |= (1<<(y&0x7));
     948:	44a0      	add	r8, r4
     94a:	f009 0907 	and.w	r9, r9, #7
     94e:	2301      	movs	r3, #1
     950:	fa03 f309 	lsl.w	r3, r3, r9
     954:	f898 2006 	ldrb.w	r2, [r8, #6]
     958:	4313      	orrs	r3, r2
     95a:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     95e:	e6a0      	b.n	6a2 <chip_vm+0x296>
			    vms.var[x] &= ~(1<<(y&0x7));
     960:	44a0      	add	r8, r4
     962:	f009 0207 	and.w	r2, r9, #7
     966:	2301      	movs	r3, #1
     968:	fa03 f202 	lsl.w	r2, r3, r2
     96c:	f898 3006 	ldrb.w	r3, [r8, #6]
     970:	ea23 0302 	bic.w	r3, r3, r2
     974:	f888 3006 	strb.w	r3, [r8, #6]
			    break;
     978:	e693      	b.n	6a2 <chip_vm+0x296>
   			    vms.var[x] ^= (1<<(y&0x7));
     97a:	44a0      	add	r8, r4
     97c:	f009 0907 	and.w	r9, r9, #7
     980:	2301      	movs	r3, #1
     982:	fa03 f309 	lsl.w	r3, r3, r9
     986:	f898 2006 	ldrb.w	r2, [r8, #6]
     98a:	4053      	eors	r3, r2
     98c:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     990:	e687      	b.n	6a2 <chip_vm+0x296>
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     992:	44a0      	add	r8, r4
     994:	f898 3006 	ldrb.w	r3, [r8, #6]
     998:	f009 0907 	and.w	r9, r9, #7
     99c:	fa43 f309 	asr.w	r3, r3, r9
     9a0:	f013 0f01 	tst.w	r3, #1
     9a4:	f43f ae7d 	beq.w	6a2 <chip_vm+0x296>
     9a8:	8823      	ldrh	r3, [r4, #0]
     9aa:	3302      	adds	r3, #2
     9ac:	8023      	strh	r3, [r4, #0]
     9ae:	e678      	b.n	6a2 <chip_vm+0x296>
     9b0:	200006a8 	.word	0x200006a8
     9b4:	200006e4 	.word	0x200006e4
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     9b8:	44a0      	add	r8, r4
     9ba:	f898 3006 	ldrb.w	r3, [r8, #6]
     9be:	f009 0907 	and.w	r9, r9, #7
     9c2:	fa43 f309 	asr.w	r3, r3, r9
     9c6:	f013 0f01 	tst.w	r3, #1
     9ca:	f47f ae6a 	bne.w	6a2 <chip_vm+0x296>
     9ce:	8823      	ldrh	r3, [r4, #0]
     9d0:	3302      	adds	r3, #2
     9d2:	8023      	strh	r3, [r4, #0]
     9d4:	e665      	b.n	6a2 <chip_vm+0x296>
			    vms.var[15]=gfx_get_pixel(x,y);
     9d6:	4649      	mov	r1, r9
     9d8:	4640      	mov	r0, r8
     9da:	f000 ff4f 	bl	187c <gfx_get_pixel>
     9de:	7560      	strb	r0, [r4, #21]
				break;  	
     9e0:	e65f      	b.n	6a2 <chip_vm+0x296>
			vms.ix=caddr(vms.b1,vms.b2);
     9e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9e6:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9ea:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9ec:	4a9a      	ldr	r2, [pc, #616]	; (c58 <chip_vm+0x84c>)
     9ee:	7812      	ldrb	r2, [r2, #0]
     9f0:	b90a      	cbnz	r2, 9f6 <chip_vm+0x5ea>
				vms.ix<<=1;
     9f2:	005b      	lsls	r3, r3, #1
     9f4:	8063      	strh	r3, [r4, #2]
			vms.sprite_mem=RAM_MEM;
     9f6:	2300      	movs	r3, #0
     9f8:	7163      	strb	r3, [r4, #5]
			break;
     9fa:	e652      	b.n	6a2 <chip_vm+0x296>
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     9fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     a00:	f3c3 030b 	ubfx	r3, r3, #0, #12
     a04:	79a2      	ldrb	r2, [r4, #6]
     a06:	eb03 0342 	add.w	r3, r3, r2, lsl #1
     a0a:	8023      	strh	r3, [r4, #0]
			if (video_mode==VM_BPCHIP){
     a0c:	4a92      	ldr	r2, [pc, #584]	; (c58 <chip_vm+0x84c>)
     a0e:	7812      	ldrb	r2, [r2, #0]
     a10:	2a00      	cmp	r2, #0
     a12:	f47f ae46 	bne.w	6a2 <chip_vm+0x296>
				vms.pc<<=1;
     a16:	005b      	lsls	r3, r3, #1
     a18:	8023      	strh	r3, [r4, #0]
     a1a:	e642      	b.n	6a2 <chip_vm+0x296>
			vms.var[x]=rand()%vms.b2;
     a1c:	f7ff fce8 	bl	3f0 <rand>
     a20:	44a0      	add	r8, r4
     a22:	7e63      	ldrb	r3, [r4, #25]
     a24:	fb90 f2f3 	sdiv	r2, r0, r3
     a28:	fb02 0013 	mls	r0, r2, r3, r0
     a2c:	f888 0006 	strb.w	r0, [r8, #6]
			break;
     a30:	e637      	b.n	6a2 <chip_vm+0x296>
			if (!n){
     a32:	f013 030f 	ands.w	r3, r3, #15
     a36:	d11f      	bne.n	a78 <chip_vm+0x66c>
				if (vms.sprite_mem==RAM_MEM){
     a38:	7963      	ldrb	r3, [r4, #5]
     a3a:	b97b      	cbnz	r3, a5c <chip_vm+0x650>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     a3c:	44a1      	add	r9, r4
     a3e:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a42:	44a0      	add	r8, r4
     a44:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a48:	8863      	ldrh	r3, [r4, #2]
     a4a:	4a84      	ldr	r2, [pc, #528]	; (c5c <chip_vm+0x850>)
     a4c:	4413      	add	r3, r2
     a4e:	9300      	str	r3, [sp, #0]
     a50:	2310      	movs	r3, #16
     a52:	461a      	mov	r2, r3
     a54:	f000 ff38 	bl	18c8 <gfx_sprite>
     a58:	7560      	strb	r0, [r4, #21]
     a5a:	e622      	b.n	6a2 <chip_vm+0x296>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     a5c:	44a1      	add	r9, r4
     a5e:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a62:	44a0      	add	r8, r4
     a64:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a68:	8863      	ldrh	r3, [r4, #2]
     a6a:	9300      	str	r3, [sp, #0]
     a6c:	2310      	movs	r3, #16
     a6e:	461a      	mov	r2, r3
     a70:	f000 ff2a 	bl	18c8 <gfx_sprite>
     a74:	7560      	strb	r0, [r4, #21]
     a76:	e614      	b.n	6a2 <chip_vm+0x296>
				if (vms.sprite_mem==RAM_MEM){
     a78:	7962      	ldrb	r2, [r4, #5]
     a7a:	b97a      	cbnz	r2, a9c <chip_vm+0x690>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     a7c:	44a1      	add	r9, r4
     a7e:	f999 1006 	ldrsb.w	r1, [r9, #6]
     a82:	44a0      	add	r8, r4
     a84:	f998 0006 	ldrsb.w	r0, [r8, #6]
     a88:	8862      	ldrh	r2, [r4, #2]
     a8a:	f8df e1d0 	ldr.w	lr, [pc, #464]	; c5c <chip_vm+0x850>
     a8e:	4472      	add	r2, lr
     a90:	9200      	str	r2, [sp, #0]
     a92:	2208      	movs	r2, #8
     a94:	f000 ff18 	bl	18c8 <gfx_sprite>
     a98:	7560      	strb	r0, [r4, #21]
     a9a:	e602      	b.n	6a2 <chip_vm+0x296>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     a9c:	44a1      	add	r9, r4
     a9e:	f999 1006 	ldrsb.w	r1, [r9, #6]
     aa2:	44a0      	add	r8, r4
     aa4:	f998 0006 	ldrsb.w	r0, [r8, #6]
     aa8:	8862      	ldrh	r2, [r4, #2]
     aaa:	9200      	str	r2, [sp, #0]
     aac:	2208      	movs	r2, #8
     aae:	f000 ff0b 	bl	18c8 <gfx_sprite>
     ab2:	7560      	strb	r0, [r4, #21]
     ab4:	e5f5      	b.n	6a2 <chip_vm+0x296>
				switch(vms.b2){
     ab6:	2b9e      	cmp	r3, #158	; 0x9e
     ab8:	d003      	beq.n	ac2 <chip_vm+0x6b6>
     aba:	2ba1      	cmp	r3, #161	; 0xa1
     abc:	d00d      	beq.n	ada <chip_vm+0x6ce>
					return CHIP_BAD_OPCODE;
     abe:	2002      	movs	r0, #2
     ac0:	e171      	b.n	da6 <chip_vm+0x99a>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     ac2:	44a0      	add	r8, r4
     ac4:	f898 0006 	ldrb.w	r0, [r8, #6]
     ac8:	f000 fb82 	bl	11d0 <btn_query_down>
     acc:	2800      	cmp	r0, #0
     ace:	f43f ade8 	beq.w	6a2 <chip_vm+0x296>
     ad2:	8823      	ldrh	r3, [r4, #0]
     ad4:	3302      	adds	r3, #2
     ad6:	8023      	strh	r3, [r4, #0]
     ad8:	e5e3      	b.n	6a2 <chip_vm+0x296>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     ada:	44a0      	add	r8, r4
     adc:	f898 0006 	ldrb.w	r0, [r8, #6]
     ae0:	f000 fb76 	bl	11d0 <btn_query_down>
     ae4:	2800      	cmp	r0, #0
     ae6:	f47f addc 	bne.w	6a2 <chip_vm+0x296>
     aea:	8823      	ldrh	r3, [r4, #0]
     aec:	3302      	adds	r3, #2
     aee:	8023      	strh	r3, [r4, #0]
     af0:	e5d7      	b.n	6a2 <chip_vm+0x296>
			switch(vms.b2){
     af2:	3b01      	subs	r3, #1
     af4:	2b84      	cmp	r3, #132	; 0x84
     af6:	f200 8144 	bhi.w	d82 <chip_vm+0x976>
     afa:	e8df f013 	tbh	[pc, r3, lsl #1]
     afe:	0085      	.short	0x0085
     b00:	01420142 	.word	0x01420142
     b04:	01420142 	.word	0x01420142
     b08:	008b0142 	.word	0x008b0142
     b0c:	01420142 	.word	0x01420142
     b10:	01420091 	.word	0x01420091
     b14:	01420142 	.word	0x01420142
     b18:	01420142 	.word	0x01420142
     b1c:	01420142 	.word	0x01420142
     b20:	01420142 	.word	0x01420142
     b24:	00970142 	.word	0x00970142
     b28:	01420142 	.word	0x01420142
     b2c:	0142009d 	.word	0x0142009d
     b30:	01420142 	.word	0x01420142
     b34:	01420142 	.word	0x01420142
     b38:	014200a5 	.word	0x014200a5
     b3c:	01420142 	.word	0x01420142
     b40:	01420142 	.word	0x01420142
     b44:	01420142 	.word	0x01420142
     b48:	01420142 	.word	0x01420142
     b4c:	00b50142 	.word	0x00b50142
     b50:	01420142 	.word	0x01420142
     b54:	01420142 	.word	0x01420142
     b58:	01420142 	.word	0x01420142
     b5c:	014200c4 	.word	0x014200c4
     b60:	00d20142 	.word	0x00d20142
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
     b94:	01420142 	.word	0x01420142
     b98:	01420142 	.word	0x01420142
     b9c:	01420142 	.word	0x01420142
     ba0:	01420142 	.word	0x01420142
     ba4:	00f70142 	.word	0x00f70142
     ba8:	01420142 	.word	0x01420142
     bac:	01420142 	.word	0x01420142
     bb0:	01420142 	.word	0x01420142
     bb4:	01420142 	.word	0x01420142
     bb8:	01420142 	.word	0x01420142
     bbc:	01420142 	.word	0x01420142
     bc0:	01420142 	.word	0x01420142
     bc4:	01000142 	.word	0x01000142
     bc8:	01420142 	.word	0x01420142
     bcc:	01420142 	.word	0x01420142
     bd0:	01420142 	.word	0x01420142
     bd4:	01420142 	.word	0x01420142
     bd8:	01420142 	.word	0x01420142
     bdc:	01420142 	.word	0x01420142
     be0:	01420142 	.word	0x01420142
     be4:	010c0109 	.word	0x010c0109
     be8:	01420142 	.word	0x01420142
     bec:	01420142 	.word	0x01420142
     bf0:	01420142 	.word	0x01420142
     bf4:	01420142 	.word	0x01420142
     bf8:	01420142 	.word	0x01420142
     bfc:	01420142 	.word	0x01420142
     c00:	01420142 	.word	0x01420142
     c04:	01210142 	.word	0x01210142
				sprite_bpp=(vms.b1&0xf)/2; 
     c08:	ea4f 0858 	mov.w	r8, r8, lsr #1
     c0c:	4b14      	ldr	r3, [pc, #80]	; (c60 <chip_vm+0x854>)
     c0e:	f883 8000 	strb.w	r8, [r3]
				break;
     c12:	e546      	b.n	6a2 <chip_vm+0x296>
				vms.var[x]=game_timer;
     c14:	4b13      	ldr	r3, [pc, #76]	; (c64 <chip_vm+0x858>)
     c16:	881b      	ldrh	r3, [r3, #0]
     c18:	44a0      	add	r8, r4
     c1a:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     c1e:	e540      	b.n	6a2 <chip_vm+0x296>
				vms.var[x]=btn_wait_any();
     c20:	f000 fb0a 	bl	1238 <btn_wait_any>
     c24:	44a0      	add	r8, r4
     c26:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     c2a:	e53a      	b.n	6a2 <chip_vm+0x296>
				game_timer=vms.var[x];
     c2c:	44a0      	add	r8, r4
     c2e:	f898 2006 	ldrb.w	r2, [r8, #6]
     c32:	4b0c      	ldr	r3, [pc, #48]	; (c64 <chip_vm+0x858>)
     c34:	801a      	strh	r2, [r3, #0]
				break;
     c36:	e534      	b.n	6a2 <chip_vm+0x296>
				tone(523,vms.var[x]);
     c38:	44a0      	add	r8, r4
     c3a:	f898 1006 	ldrb.w	r1, [r8, #6]
     c3e:	f240 200b 	movw	r0, #523	; 0x20b
     c42:	f001 fe7f 	bl	2944 <tone>
				break;
     c46:	e52c      	b.n	6a2 <chip_vm+0x296>
				vms.ix += vms.var[x];
     c48:	44a0      	add	r8, r4
     c4a:	f898 3006 	ldrb.w	r3, [r8, #6]
     c4e:	8862      	ldrh	r2, [r4, #2]
     c50:	4413      	add	r3, r2
     c52:	8063      	strh	r3, [r4, #2]
				break;
     c54:	e525      	b.n	6a2 <chip_vm+0x296>
     c56:	bf00      	nop
     c58:	200006a8 	.word	0x200006a8
     c5c:	200006e4 	.word	0x200006e4
     c60:	200001ac 	.word	0x200001ac
     c64:	20004e74 	.word	0x20004e74
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     c68:	44a0      	add	r8, r4
     c6a:	f898 3006 	ldrb.w	r3, [r8, #6]
     c6e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     c72:	4a50      	ldr	r2, [pc, #320]	; (db4 <chip_vm+0x9a8>)
     c74:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c78:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c7a:	2301      	movs	r3, #1
     c7c:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     c7e:	2000      	movs	r0, #0
     c80:	f002 f816 	bl	2cb0 <select_font>
				break;
     c84:	e50d      	b.n	6a2 <chip_vm+0x296>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c86:	44a0      	add	r8, r4
     c88:	f898 3006 	ldrb.w	r3, [r8, #6]
     c8c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c90:	4a49      	ldr	r2, [pc, #292]	; (db8 <chip_vm+0x9ac>)
     c92:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c96:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c98:	2001      	movs	r0, #1
     c9a:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     c9c:	f002 f808 	bl	2cb0 <select_font>
				break;
     ca0:	e4ff      	b.n	6a2 <chip_vm+0x296>
				n=vms.var[x];
     ca2:	44a0      	add	r8, r4
     ca4:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     ca8:	4a44      	ldr	r2, [pc, #272]	; (dbc <chip_vm+0x9b0>)
     caa:	fba2 0301 	umull	r0, r3, r2, r1
     cae:	08db      	lsrs	r3, r3, #3
     cb0:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     cb4:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     cb8:	f884 005e 	strb.w	r0, [r4, #94]	; 0x5e
				block[1]=n%10;
     cbc:	b2db      	uxtb	r3, r3
     cbe:	fba2 0203 	umull	r0, r2, r2, r3
     cc2:	08d2      	lsrs	r2, r2, #3
     cc4:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     cc8:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     ccc:	f884 305d 	strb.w	r3, [r4, #93]	; 0x5d
				block[0]=n/10;
     cd0:	fba7 2301 	umull	r2, r3, r7, r1
     cd4:	095b      	lsrs	r3, r3, #5
     cd6:	f884 305c 	strb.w	r3, [r4, #92]	; 0x5c
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     cda:	8863      	ldrh	r3, [r4, #2]
     cdc:	2203      	movs	r2, #3
     cde:	4938      	ldr	r1, [pc, #224]	; (dc0 <chip_vm+0x9b4>)
     ce0:	4419      	add	r1, r3
     ce2:	f104 005c 	add.w	r0, r4, #92	; 0x5c
     ce6:	f000 fb94 	bl	1412 <move>
				break;
     cea:	e4da      	b.n	6a2 <chip_vm+0x296>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     cec:	8863      	ldrh	r3, [r4, #2]
     cee:	f108 0201 	add.w	r2, r8, #1
     cf2:	4933      	ldr	r1, [pc, #204]	; (dc0 <chip_vm+0x9b4>)
     cf4:	4419      	add	r1, r3
     cf6:	4630      	mov	r0, r6
     cf8:	f000 fb8b 	bl	1412 <move>
				break;
     cfc:	e4d1      	b.n	6a2 <chip_vm+0x296>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     cfe:	8863      	ldrh	r3, [r4, #2]
     d00:	f108 0201 	add.w	r2, r8, #1
     d04:	4631      	mov	r1, r6
     d06:	482e      	ldr	r0, [pc, #184]	; (dc0 <chip_vm+0x9b4>)
     d08:	4418      	add	r0, r3
     d0a:	f000 fb82 	bl	1412 <move>
				break;
     d0e:	e4c8      	b.n	6a2 <chip_vm+0x296>
				vms.s=(x&0x7)*FLASH_SECTOR_SIZE; // flash sector {0..7}
     d10:	0352      	lsls	r2, r2, #13
     d12:	82e2      	strh	r2, [r4, #22]
				break;			
     d14:	e4c5      	b.n	6a2 <chip_vm+0x296>
				if (video_mode==VM_BPCHIP){
     d16:	4b2b      	ldr	r3, [pc, #172]	; (dc4 <chip_vm+0x9b8>)
     d18:	781b      	ldrb	r3, [r3, #0]
     d1a:	b953      	cbnz	r3, d32 <chip_vm+0x926>
					flash_write_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d1c:	8ae3      	ldrh	r3, [r4, #22]
     d1e:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d22:	8860      	ldrh	r0, [r4, #2]
     d24:	f108 0201 	add.w	r2, r8, #1
     d28:	4631      	mov	r1, r6
     d2a:	4418      	add	r0, r3
     d2c:	f000 f988 	bl	1040 <flash_write_block>
     d30:	e4b7      	b.n	6a2 <chip_vm+0x296>
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
     d32:	f108 0201 	add.w	r2, r8, #1
     d36:	4631      	mov	r1, r6
     d38:	4823      	ldr	r0, [pc, #140]	; (dc8 <chip_vm+0x9bc>)
     d3a:	f000 f981 	bl	1040 <flash_write_block>
     d3e:	e4b0      	b.n	6a2 <chip_vm+0x296>
				if (video_mode==VM_BPCHIP){
     d40:	4b20      	ldr	r3, [pc, #128]	; (dc4 <chip_vm+0x9b8>)
     d42:	781b      	ldrb	r3, [r3, #0]
     d44:	b953      	cbnz	r3, d5c <chip_vm+0x950>
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d46:	8ae3      	ldrh	r3, [r4, #22]
     d48:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d4c:	8860      	ldrh	r0, [r4, #2]
     d4e:	f108 0201 	add.w	r2, r8, #1
     d52:	4631      	mov	r1, r6
     d54:	4418      	add	r0, r3
     d56:	f000 f959 	bl	100c <flash_read_block>
     d5a:	e4a2      	b.n	6a2 <chip_vm+0x296>
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     d5c:	f108 0201 	add.w	r2, r8, #1
     d60:	4631      	mov	r1, r6
     d62:	4819      	ldr	r0, [pc, #100]	; (dc8 <chip_vm+0x9bc>)
     d64:	f000 f952 	bl	100c <flash_read_block>
     d68:	e49b      	b.n	6a2 <chip_vm+0x296>
	    switch (vms.b1>>4){
     d6a:	f04f 0800 	mov.w	r8, #0
     d6e:	e451      	b.n	614 <chip_vm+0x208>
			}else switch(vms.b2){
     d70:	f04f 0800 	mov.w	r8, #0
     d74:	e44e      	b.n	614 <chip_vm+0x208>
				exit_code=CHIP_BAD_OPCODE;
     d76:	f04f 0802 	mov.w	r8, #2
     d7a:	e44b      	b.n	614 <chip_vm+0x208>
				exit_code=CHIP_BAD_OPCODE;
     d7c:	f04f 0802 	mov.w	r8, #2
     d80:	e448      	b.n	614 <chip_vm+0x208>
				}
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     d82:	f04f 0802 	mov.w	r8, #2
     d86:	e445      	b.n	614 <chip_vm+0x208>
			exit_code=CHIP_BAD_ADDR;
     d88:	f04f 0803 	mov.w	r8, #3
     d8c:	e001      	b.n	d92 <chip_vm+0x986>
     d8e:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     d92:	2002      	movs	r0, #2
     d94:	f001 ff8c 	bl	2cb0 <select_font>
	set_keymap(default_kmap);
     d98:	480c      	ldr	r0, [pc, #48]	; (dcc <chip_vm+0x9c0>)
     d9a:	f000 f9cb 	bl	1134 <set_keymap>
	set_video_mode(VM_BPCHIP);
     d9e:	2000      	movs	r0, #0
     da0:	f002 fb66 	bl	3470 <set_video_mode>
	return exit_code;
     da4:	4640      	mov	r0, r8
}//schipp()
     da6:	b009      	add	sp, #36	; 0x24
     da8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     dac:	f04f 0801 	mov.w	r8, #1
     db0:	e7ef      	b.n	d92 <chip_vm+0x986>
     db2:	bf00      	nop
     db4:	00003cb8 	.word	0x00003cb8
     db8:	00003c18 	.word	0x00003c18
     dbc:	cccccccd 	.word	0xcccccccd
     dc0:	200006e4 	.word	0x200006e4
     dc4:	200006a8 	.word	0x200006a8
     dc8:	0001fff0 	.word	0x0001fff0
     dcc:	00003d18 	.word	0x00003d18

00000dd0 <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     dd0:	2200      	movs	r2, #0
     dd2:	4b0f      	ldr	r3, [pc, #60]	; (e10 <flash_enable+0x40>)
     dd4:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     dd6:	4b0f      	ldr	r3, [pc, #60]	; (e14 <flash_enable+0x44>)
     dd8:	681b      	ldr	r3, [r3, #0]
     dda:	f013 0f01 	tst.w	r3, #1
     dde:	d10b      	bne.n	df8 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     de0:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     de4:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     de8:	6813      	ldr	r3, [r2, #0]
     dea:	f043 0301 	orr.w	r3, r3, #1
     dee:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     df0:	6813      	ldr	r3, [r2, #0]
     df2:	f013 0f02 	tst.w	r3, #2
     df6:	d0fb      	beq.n	df0 <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     df8:	4b07      	ldr	r3, [pc, #28]	; (e18 <flash_enable+0x48>)
     dfa:	4a08      	ldr	r2, [pc, #32]	; (e1c <flash_enable+0x4c>)
     dfc:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     dfe:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     e02:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     e04:	6918      	ldr	r0, [r3, #16]
     e06:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     e0a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     e0e:	4770      	bx	lr
     e10:	20000290 	.word	0x20000290
     e14:	40021000 	.word	0x40021000
     e18:	40022000 	.word	0x40022000
     e1c:	45670123 	.word	0x45670123

00000e20 <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     e20:	4a0b      	ldr	r2, [pc, #44]	; (e50 <flash_write_hword+0x30>)
     e22:	68d3      	ldr	r3, [r2, #12]
     e24:	f013 0f01 	tst.w	r3, #1
     e28:	d1fb      	bne.n	e22 <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e2a:	4b09      	ldr	r3, [pc, #36]	; (e50 <flash_write_hword+0x30>)
     e2c:	68da      	ldr	r2, [r3, #12]
     e2e:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     e32:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     e34:	2201      	movs	r2, #1
     e36:	611a      	str	r2, [r3, #16]
	*address=hword;
     e38:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     e3a:	68da      	ldr	r2, [r3, #12]
     e3c:	f012 0f01 	tst.w	r2, #1
     e40:	d003      	beq.n	e4a <flash_write_hword+0x2a>
     e42:	68da      	ldr	r2, [r3, #12]
     e44:	f012 0f20 	tst.w	r2, #32
     e48:	d0f7      	beq.n	e3a <flash_write_hword+0x1a>
	return *address==hword;
}
     e4a:	2001      	movs	r0, #1
     e4c:	4770      	bx	lr
     e4e:	bf00      	nop
     e50:	40022000 	.word	0x40022000

00000e54 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e54:	283f      	cmp	r0, #63	; 0x3f
     e56:	d914      	bls.n	e82 <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     e58:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     e5a:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     e5c:	1c81      	adds	r1, r0, #2
     e5e:	8802      	ldrh	r2, [r0, #0]
     e60:	f64f 73ff 	movw	r3, #65535	; 0xffff
     e64:	429a      	cmp	r2, r3
     e66:	d110      	bne.n	e8a <flash_erase_row+0x36>
     e68:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     e6c:	460b      	mov	r3, r1
     e6e:	f64f 74ff 	movw	r4, #65535	; 0xffff
     e72:	f833 2b02 	ldrh.w	r2, [r3], #2
     e76:	42a2      	cmp	r2, r4
     e78:	d107      	bne.n	e8a <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e7a:	429d      	cmp	r5, r3
     e7c:	d1f9      	bne.n	e72 <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     e7e:	2001      	movs	r0, #1
     e80:	e02f      	b.n	ee2 <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e82:	2000      	movs	r0, #0
     e84:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     e86:	2000      	movs	r0, #0
     e88:	e02b      	b.n	ee2 <flash_erase_row+0x8e>
     e8a:	4b17      	ldr	r3, [pc, #92]	; (ee8 <flash_erase_row+0x94>)
     e8c:	691b      	ldr	r3, [r3, #16]
     e8e:	f013 0f80 	tst.w	r3, #128	; 0x80
     e92:	d1f8      	bne.n	e86 <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e94:	4b14      	ldr	r3, [pc, #80]	; (ee8 <flash_erase_row+0x94>)
     e96:	68da      	ldr	r2, [r3, #12]
     e98:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     e9c:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     e9e:	2202      	movs	r2, #2
     ea0:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     ea2:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     ea4:	691a      	ldr	r2, [r3, #16]
     ea6:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     eaa:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     eac:	68da      	ldr	r2, [r3, #12]
     eae:	f012 0f01 	tst.w	r2, #1
     eb2:	d003      	beq.n	ebc <flash_erase_row+0x68>
     eb4:	68da      	ldr	r2, [r3, #12]
     eb6:	f012 0f20 	tst.w	r2, #32
     eba:	d0f7      	beq.n	eac <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     ebc:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     ebe:	f64f 72ff 	movw	r2, #65535	; 0xffff
     ec2:	4293      	cmp	r3, r2
     ec4:	d107      	bne.n	ed6 <flash_erase_row+0x82>
     ec6:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     eca:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     ece:	4293      	cmp	r3, r2
     ed0:	d101      	bne.n	ed6 <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     ed2:	4281      	cmp	r1, r0
     ed4:	d1f9      	bne.n	eca <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     ed6:	f64f 70ff 	movw	r0, #65535	; 0xffff
     eda:	4283      	cmp	r3, r0
     edc:	bf14      	ite	ne
     ede:	2000      	movne	r0, #0
     ee0:	2001      	moveq	r0, #1
}
     ee2:	bc30      	pop	{r4, r5}
     ee4:	4770      	bx	lr
     ee6:	bf00      	nop
     ee8:	40022000 	.word	0x40022000

00000eec <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     eec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     eee:	4b1c      	ldr	r3, [pc, #112]	; (f60 <flash_sync+0x74>)
     ef0:	781b      	ldrb	r3, [r3, #0]
     ef2:	f013 0f01 	tst.w	r3, #1
     ef6:	d102      	bne.n	efe <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     ef8:	2301      	movs	r3, #1
}
     efa:	4618      	mov	r0, r3
     efc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     efe:	4b18      	ldr	r3, [pc, #96]	; (f60 <flash_sync+0x74>)
     f00:	7858      	ldrb	r0, [r3, #1]
     f02:	f7ff ffa7 	bl	e54 <flash_erase_row>
     f06:	4603      	mov	r3, r0
     f08:	2800      	cmp	r0, #0
     f0a:	d0f6      	beq.n	efa <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     f0c:	4e14      	ldr	r6, [pc, #80]	; (f60 <flash_sync+0x74>)
     f0e:	7875      	ldrb	r5, [r6, #1]
     f10:	02ad      	lsls	r5, r5, #10
     f12:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f14:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     f16:	f64f 77ff 	movw	r7, #65535	; 0xffff
     f1a:	e004      	b.n	f26 <flash_sync+0x3a>
		dest++;
     f1c:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f1e:	3401      	adds	r4, #1
     f20:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f24:	d00a      	beq.n	f3c <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     f26:	f836 1b02 	ldrh.w	r1, [r6], #2
     f2a:	42b9      	cmp	r1, r7
     f2c:	d0f6      	beq.n	f1c <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     f2e:	4628      	mov	r0, r5
     f30:	f7ff ff76 	bl	e20 <flash_write_hword>
     f34:	2800      	cmp	r0, #0
     f36:	d1f1      	bne.n	f1c <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     f38:	2c00      	cmp	r4, #0
     f3a:	dd04      	ble.n	f46 <flash_sync+0x5a>
     f3c:	4a08      	ldr	r2, [pc, #32]	; (f60 <flash_sync+0x74>)
     f3e:	7813      	ldrb	r3, [r2, #0]
     f40:	f023 0304 	bic.w	r3, r3, #4
     f44:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     f46:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f4a:	d106      	bne.n	f5a <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     f4c:	4a04      	ldr	r2, [pc, #16]	; (f60 <flash_sync+0x74>)
     f4e:	7813      	ldrb	r3, [r2, #0]
     f50:	f023 0301 	bic.w	r3, r3, #1
     f54:	7013      	strb	r3, [r2, #0]
			return 1;
     f56:	2301      	movs	r3, #1
     f58:	e7cf      	b.n	efa <flash_sync+0xe>
		return 0;
     f5a:	2300      	movs	r3, #0
     f5c:	e7cd      	b.n	efa <flash_sync+0xe>
     f5e:	bf00      	nop
     f60:	20000290 	.word	0x20000290

00000f64 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     f64:	2200      	movs	r2, #0
     f66:	4b01      	ldr	r3, [pc, #4]	; (f6c <flash_flush+0x8>)
     f68:	701a      	strb	r2, [r3, #0]
     f6a:	4770      	bx	lr
     f6c:	20000290 	.word	0x20000290

00000f70 <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     f70:	b508      	push	{r3, lr}
	flash_sync();
     f72:	f7ff ffbb 	bl	eec <flash_sync>
	row_buff.flags=0;
     f76:	2200      	movs	r2, #0
     f78:	4b06      	ldr	r3, [pc, #24]	; (f94 <flash_disable+0x24>)
     f7a:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     f7c:	4a06      	ldr	r2, [pc, #24]	; (f98 <flash_disable+0x28>)
     f7e:	6913      	ldr	r3, [r2, #16]
     f80:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     f84:	6113      	str	r3, [r2, #16]
	RCC->CR&=~RCC_CR_HSION;
     f86:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
     f8a:	6813      	ldr	r3, [r2, #0]
     f8c:	f023 0301 	bic.w	r3, r3, #1
     f90:	6013      	str	r3, [r2, #0]
     f92:	bd08      	pop	{r3, pc}
     f94:	20000290 	.word	0x20000290
     f98:	40022000 	.word	0x40022000

00000f9c <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     f9c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     fa0:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     fa4:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     fa8:	d92c      	bls.n	1004 <flash_write_byte+0x68>
     faa:	460e      	mov	r6, r1
     fac:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     fae:	4b16      	ldr	r3, [pc, #88]	; (1008 <flash_write_byte+0x6c>)
     fb0:	785b      	ldrb	r3, [r3, #1]
     fb2:	4598      	cmp	r8, r3
     fb4:	d019      	beq.n	fea <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     fb6:	f7ff ff99 	bl	eec <flash_sync>
     fba:	4603      	mov	r3, r0
     fbc:	b1f8      	cbz	r0, ffe <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     fbe:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     fc2:	f023 0303 	bic.w	r3, r3, #3
     fc6:	4a10      	ldr	r2, [pc, #64]	; (1008 <flash_write_byte+0x6c>)
     fc8:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     fcc:	f833 4b02 	ldrh.w	r4, [r3], #2
     fd0:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     fd4:	42ab      	cmp	r3, r5
     fd6:	d1f9      	bne.n	fcc <flash_write_byte+0x30>
	row_buff.row=r;
     fd8:	4a0b      	ldr	r2, [pc, #44]	; (1008 <flash_write_byte+0x6c>)
     fda:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     fde:	7813      	ldrb	r3, [r2, #0]
     fe0:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     fe4:	f043 0302 	orr.w	r3, r3, #2
     fe8:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     fea:	4a07      	ldr	r2, [pc, #28]	; (1008 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     fec:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     ff0:	4413      	add	r3, r2
     ff2:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     ff4:	7813      	ldrb	r3, [r2, #0]
     ff6:	f043 0301 	orr.w	r3, r3, #1
     ffa:	7013      	strb	r3, [r2, #0]
	return 1;
     ffc:	2301      	movs	r3, #1
}
     ffe:	4618      	mov	r0, r3
    1000:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
    1004:	2300      	movs	r3, #0
    1006:	e7fa      	b.n	ffe <flash_write_byte+0x62>
    1008:	20000290 	.word	0x20000290

0000100c <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    100c:	2a00      	cmp	r2, #0
    100e:	dd13      	ble.n	1038 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
    1010:	b410      	push	{r4}
    1012:	4603      	mov	r3, r0
    1014:	3901      	subs	r1, #1
    1016:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
    1018:	4a08      	ldr	r2, [pc, #32]	; (103c <flash_read_block+0x30>)
    101a:	7854      	ldrb	r4, [r2, #1]
    101c:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
    1020:	bf03      	ittte	eq
    1022:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
    1026:	18a4      	addeq	r4, r4, r2
    1028:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
    102a:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    102c:	f801 4f01 	strb.w	r4, [r1, #1]!
    1030:	3301      	adds	r3, #1
    1032:	4283      	cmp	r3, r0
    1034:	d1f1      	bne.n	101a <flash_read_block+0xe>
}
    1036:	bc10      	pop	{r4}
    1038:	4770      	bx	lr
    103a:	bf00      	nop
    103c:	20000290 	.word	0x20000290

00001040 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    1040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<(void*)0x10000) return 0;
    1042:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
    1046:	d202      	bcs.n	104e <flash_write_block+0xe>
    1048:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
    104a:	4618      	mov	r0, r3
    104c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    104e:	4604      	mov	r4, r0
    1050:	460e      	mov	r6, r1
    1052:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
    1054:	f7ff febc 	bl	dd0 <flash_enable>
    1058:	4603      	mov	r3, r0
    105a:	2800      	cmp	r0, #0
    105c:	d0f5      	beq.n	104a <flash_write_block+0xa>
	for (i=0;i<size;i++){
    105e:	2f00      	cmp	r7, #0
    1060:	dd0c      	ble.n	107c <flash_write_block+0x3c>
    1062:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
    1064:	1c65      	adds	r5, r4, #1
    1066:	f816 1b01 	ldrb.w	r1, [r6], #1
    106a:	4620      	mov	r0, r4
    106c:	f7ff ff96 	bl	f9c <flash_write_byte>
    1070:	4603      	mov	r3, r0
    1072:	2800      	cmp	r0, #0
    1074:	d0e9      	beq.n	104a <flash_write_block+0xa>
    1076:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
    1078:	42bd      	cmp	r5, r7
    107a:	d1f3      	bne.n	1064 <flash_write_block+0x24>
	flash_disable();
    107c:	f7ff ff78 	bl	f70 <flash_disable>
	return 1;
    1080:	2301      	movs	r3, #1
    1082:	e7e2      	b.n	104a <flash_write_block+0xa>

00001084 <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
    1084:	4b0a      	ldr	r3, [pc, #40]	; (10b0 <btn_mask+0x2c>)
    1086:	781b      	ldrb	r3, [r3, #0]
    1088:	4283      	cmp	r3, r0
    108a:	d00a      	beq.n	10a2 <btn_mask+0x1e>
    108c:	4a09      	ldr	r2, [pc, #36]	; (10b4 <btn_mask+0x30>)
    for (i=0;i<8;i++){
    108e:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
    1090:	f812 1b01 	ldrb.w	r1, [r2], #1
    1094:	4281      	cmp	r1, r0
    1096:	d005      	beq.n	10a4 <btn_mask+0x20>
    for (i=0;i<8;i++){
    1098:	3301      	adds	r3, #1
    109a:	2b08      	cmp	r3, #8
    109c:	d1f8      	bne.n	1090 <btn_mask+0xc>
    }
    return 255;
    109e:	20ff      	movs	r0, #255	; 0xff
}
    10a0:	4770      	bx	lr
    for (i=0;i<8;i++){
    10a2:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
    10a4:	2001      	movs	r0, #1
    10a6:	fa00 f303 	lsl.w	r3, r0, r3
    10aa:	b2d8      	uxtb	r0, r3
    10ac:	4770      	bx	lr
    10ae:	bf00      	nop
    10b0:	20000694 	.word	0x20000694
    10b4:	20000695 	.word	0x20000695

000010b8 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
    10b8:	b430      	push	{r4, r5}
    10ba:	4605      	mov	r5, r0
    10bc:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
    10be:	2000      	movs	r0, #0
    10c0:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    10c2:	4b1b      	ldr	r3, [pc, #108]	; (1130 <shift_out+0x78>)
    10c4:	e003      	b.n	10ce <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
    10c6:	0052      	lsls	r2, r2, #1
    10c8:	b2d2      	uxtb	r2, r2
    while (mask){
    10ca:	3c01      	subs	r4, #1
    10cc:	d01d      	beq.n	110a <shift_out+0x52>
        if (byte&mask){
    10ce:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    10d0:	68d9      	ldr	r1, [r3, #12]
    10d2:	bf14      	ite	ne
    10d4:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    10d8:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
    10dc:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10de:	68d9      	ldr	r1, [r3, #12]
    10e0:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
    10e4:	60d9      	str	r1, [r3, #12]
        _clk_delay();
    10e6:	bf00      	nop
    10e8:	bf00      	nop
    10ea:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10ec:	68d9      	ldr	r1, [r3, #12]
    10ee:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    10f2:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
    10f4:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
    10f6:	6899      	ldr	r1, [r3, #8]
    10f8:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
    10fc:	6099      	str	r1, [r3, #8]
    10fe:	2900      	cmp	r1, #0
    1100:	d0e1      	beq.n	10c6 <shift_out+0xe>
    1102:	f060 007f 	orn	r0, r0, #127	; 0x7f
    1106:	b2c0      	uxtb	r0, r0
    1108:	e7dd      	b.n	10c6 <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    110a:	4b09      	ldr	r3, [pc, #36]	; (1130 <shift_out+0x78>)
    110c:	68da      	ldr	r2, [r3, #12]
    110e:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    1112:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    1114:	68da      	ldr	r2, [r3, #12]
    1116:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    111a:	60da      	str	r2, [r3, #12]
    _clk_delay();
    111c:	bf00      	nop
    111e:	bf00      	nop
    1120:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    1122:	68da      	ldr	r2, [r3, #12]
    1124:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    1128:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    112a:	bc30      	pop	{r4, r5}
    112c:	4770      	bx	lr
    112e:	bf00      	nop
    1130:	40010c00 	.word	0x40010c00

00001134 <set_keymap>:
void set_keymap(const uint8_t *kmap){
    1134:	1e43      	subs	r3, r0, #1
    1136:	4a04      	ldr	r2, [pc, #16]	; (1148 <set_keymap+0x14>)
    1138:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    113a:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    113e:	f802 1f01 	strb.w	r1, [r2, #1]!
    1142:	4283      	cmp	r3, r0
    1144:	d1f9      	bne.n	113a <set_keymap+0x6>
}
    1146:	4770      	bx	lr
    1148:	20000693 	.word	0x20000693

0000114c <gamepad_init>:
void gamepad_init(){
    114c:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    114e:	4c0b      	ldr	r4, [pc, #44]	; (117c <gamepad_init+0x30>)
    1150:	2202      	movs	r2, #2
    1152:	210f      	movs	r1, #15
    1154:	4620      	mov	r0, r4
    1156:	f000 fa1b 	bl	1590 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    115a:	2202      	movs	r2, #2
    115c:	210d      	movs	r1, #13
    115e:	4620      	mov	r0, r4
    1160:	f000 fa16 	bl	1590 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    1164:	2208      	movs	r2, #8
    1166:	210e      	movs	r1, #14
    1168:	4620      	mov	r0, r4
    116a:	f000 fa11 	bl	1590 <config_pin>
    btn_state=0xff;
    116e:	22ff      	movs	r2, #255	; 0xff
    1170:	4b03      	ldr	r3, [pc, #12]	; (1180 <gamepad_init+0x34>)
    1172:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1174:	4803      	ldr	r0, [pc, #12]	; (1184 <gamepad_init+0x38>)
    1176:	f7ff ffdd 	bl	1134 <set_keymap>
    117a:	bd10      	pop	{r4, pc}
    117c:	40010c00 	.word	0x40010c00
    1180:	200026e4 	.word	0x200026e4
    1184:	00003d18 	.word	0x00003d18

00001188 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1188:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    118a:	20fe      	movs	r0, #254	; 0xfe
    118c:	f7ff ff94 	bl	10b8 <shift_out>
    1190:	4b0c      	ldr	r3, [pc, #48]	; (11c4 <read_gamepad+0x3c>)
    1192:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1194:	781b      	ldrb	r3, [r3, #0]
    1196:	f013 0f12 	tst.w	r3, #18
    119a:	d111      	bne.n	11c0 <read_gamepad+0x38>
        while (btn_state!=0xff){
    119c:	4b09      	ldr	r3, [pc, #36]	; (11c4 <read_gamepad+0x3c>)
    119e:	781b      	ldrb	r3, [r3, #0]
    11a0:	b2db      	uxtb	r3, r3
    11a2:	2bff      	cmp	r3, #255	; 0xff
    11a4:	d009      	beq.n	11ba <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    11a6:	25fe      	movs	r5, #254	; 0xfe
    11a8:	4c06      	ldr	r4, [pc, #24]	; (11c4 <read_gamepad+0x3c>)
    11aa:	4628      	mov	r0, r5
    11ac:	f7ff ff84 	bl	10b8 <shift_out>
    11b0:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    11b2:	7823      	ldrb	r3, [r4, #0]
    11b4:	b2db      	uxtb	r3, r3
    11b6:	2bff      	cmp	r3, #255	; 0xff
    11b8:	d1f7      	bne.n	11aa <read_gamepad+0x22>
        };
        _reset_mcu();
    11ba:	4a03      	ldr	r2, [pc, #12]	; (11c8 <read_gamepad+0x40>)
    11bc:	4b03      	ldr	r3, [pc, #12]	; (11cc <read_gamepad+0x44>)
    11be:	601a      	str	r2, [r3, #0]
    11c0:	bd38      	pop	{r3, r4, r5, pc}
    11c2:	bf00      	nop
    11c4:	200026e4 	.word	0x200026e4
    11c8:	05fa0004 	.word	0x05fa0004
    11cc:	e000ed0c 	.word	0xe000ed0c

000011d0 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    11d0:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    11d2:	f7ff ff57 	bl	1084 <btn_mask>
    return !(btn_state&mask);
    11d6:	4b03      	ldr	r3, [pc, #12]	; (11e4 <btn_query_down+0x14>)
    11d8:	781b      	ldrb	r3, [r3, #0]
    11da:	4203      	tst	r3, r0
}
    11dc:	bf0c      	ite	eq
    11de:	2001      	moveq	r0, #1
    11e0:	2000      	movne	r0, #0
    11e2:	bd08      	pop	{r3, pc}
    11e4:	200026e4 	.word	0x200026e4

000011e8 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    11e8:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11ea:	f7ff ff4b 	bl	1084 <btn_mask>
    11ee:	4606      	mov	r6, r0
    int frame_count=0;
    11f0:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    11f2:	4d06      	ldr	r5, [pc, #24]	; (120c <btn_wait_down+0x24>)
    11f4:	e000      	b.n	11f8 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11f6:	2400      	movs	r4, #0
        frame_sync();
    11f8:	f002 f92a 	bl	3450 <frame_sync>
        if (!(btn_state&mask)){
    11fc:	782b      	ldrb	r3, [r5, #0]
    11fe:	4233      	tst	r3, r6
    1200:	d1f9      	bne.n	11f6 <btn_wait_down+0xe>
            frame_count++;
    1202:	3401      	adds	r4, #1
    while (frame_count<3){
    1204:	2c02      	cmp	r4, #2
    1206:	ddf7      	ble.n	11f8 <btn_wait_down+0x10>
        }
    }
}
    1208:	bd70      	pop	{r4, r5, r6, pc}
    120a:	bf00      	nop
    120c:	200026e4 	.word	0x200026e4

00001210 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1210:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    1212:	f7ff ff37 	bl	1084 <btn_mask>
    1216:	4606      	mov	r6, r0
    int frame_count=0;
    1218:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    121a:	4d06      	ldr	r5, [pc, #24]	; (1234 <btn_wait_up+0x24>)
    121c:	e000      	b.n	1220 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    121e:	2400      	movs	r4, #0
        frame_sync();
    1220:	f002 f916 	bl	3450 <frame_sync>
        if ((btn_state&mask)){
    1224:	782b      	ldrb	r3, [r5, #0]
    1226:	4233      	tst	r3, r6
    1228:	d0f9      	beq.n	121e <btn_wait_up+0xe>
            frame_count++;
    122a:	3401      	adds	r4, #1
    while (frame_count<3){
    122c:	2c02      	cmp	r4, #2
    122e:	ddf7      	ble.n	1220 <btn_wait_up+0x10>
        }
    }
}
    1230:	bd70      	pop	{r4, r5, r6, pc}
    1232:	bf00      	nop
    1234:	200026e4 	.word	0x200026e4

00001238 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1238:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    123a:	4b15      	ldr	r3, [pc, #84]	; (1290 <btn_wait_any+0x58>)
    123c:	781c      	ldrb	r4, [r3, #0]
    123e:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1240:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    1242:	461d      	mov	r5, r3
    1244:	e007      	b.n	1256 <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    1246:	782a      	ldrb	r2, [r5, #0]
    1248:	b2d2      	uxtb	r2, r2
    124a:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    124c:	bf18      	it	ne
    124e:	3601      	addne	r6, #1
    while (frame_count<3){
    1250:	2e02      	cmp	r6, #2
    1252:	dc0a      	bgt.n	126a <btn_wait_any+0x32>
    1254:	461c      	mov	r4, r3
        frame_sync();
    1256:	f002 f8fb 	bl	3450 <frame_sync>
        if (last_state!=btn_state){
    125a:	782b      	ldrb	r3, [r5, #0]
    125c:	b2db      	uxtb	r3, r3
    125e:	42a3      	cmp	r3, r4
    1260:	d0f1      	beq.n	1246 <btn_wait_any+0xe>
            last_state=btn_state;
    1262:	782c      	ldrb	r4, [r5, #0]
    1264:	b2e4      	uxtb	r4, r4
            frame_count=0;
    1266:	2600      	movs	r6, #0
    1268:	e7f5      	b.n	1256 <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    126a:	43e3      	mvns	r3, r4
    mask>>=1;
    126c:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1270:	b15b      	cbz	r3, 128a <btn_wait_any+0x52>
    1272:	2200      	movs	r2, #0
    1274:	3201      	adds	r2, #1
    1276:	b2d2      	uxtb	r2, r2
    1278:	085b      	lsrs	r3, r3, #1
    127a:	d1fb      	bne.n	1274 <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    127c:	4b05      	ldr	r3, [pc, #20]	; (1294 <btn_wait_any+0x5c>)
    127e:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1280:	4620      	mov	r0, r4
    1282:	f7ff ffc5 	bl	1210 <btn_wait_up>
    return btn;
}
    1286:	4620      	mov	r0, r4
    1288:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    128a:	461a      	mov	r2, r3
    128c:	e7f6      	b.n	127c <btn_wait_any+0x44>
    128e:	bf00      	nop
    1290:	200026e4 	.word	0x200026e4
    1294:	20000694 	.word	0x20000694

00001298 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    1298:	4b01      	ldr	r3, [pc, #4]	; (12a0 <btn_set_value+0x8>)
    129a:	5419      	strb	r1, [r3, r0]
    129c:	4770      	bx	lr
    129e:	bf00      	nop
    12a0:	20000694 	.word	0x20000694

000012a4 <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    12a4:	4800      	ldr	r0, [pc, #0]	; (12a8 <get_keymap+0x4>)
    12a6:	4770      	bx	lr
    12a8:	20000694 	.word	0x20000694

000012ac <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    12ac:	4b06      	ldr	r3, [pc, #24]	; (12c8 <games_count+0x1c>)
    12ae:	691b      	ldr	r3, [r3, #16]
    12b0:	b13b      	cbz	r3, 12c2 <games_count+0x16>
    12b2:	4b05      	ldr	r3, [pc, #20]	; (12c8 <games_count+0x1c>)
    12b4:	2000      	movs	r0, #0
    for (i=0;;i++){
    12b6:	3001      	adds	r0, #1
    12b8:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    12ba:	691a      	ldr	r2, [r3, #16]
    12bc:	2a00      	cmp	r2, #0
    12be:	d1fa      	bne.n	12b6 <games_count+0xa>
    12c0:	4770      	bx	lr
    for (i=0;;i++){
    12c2:	2000      	movs	r0, #0
    }
    return i;
}
    12c4:	4770      	bx	lr
    12c6:	bf00      	nop
    12c8:	20000004 	.word	0x20000004

000012cc <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    12cc:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    12ce:	7803      	ldrb	r3, [r0, #0]
    12d0:	b1fb      	cbz	r3, 1312 <strcmp+0x46>
    12d2:	780a      	ldrb	r2, [r1, #0]
    12d4:	b17a      	cbz	r2, 12f6 <strcmp+0x2a>
		if (*s1<*s2){
    12d6:	4293      	cmp	r3, r2
    12d8:	d313      	bcc.n	1302 <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    12da:	d815      	bhi.n	1308 <strcmp+0x3c>
    12dc:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    12de:	4621      	mov	r1, r4
	while (*s1 && *s2){
    12e0:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    12e4:	b1ab      	cbz	r3, 1312 <strcmp+0x46>
    12e6:	f814 2b01 	ldrb.w	r2, [r4], #1
    12ea:	b122      	cbz	r2, 12f6 <strcmp+0x2a>
		if (*s1<*s2){
    12ec:	4293      	cmp	r3, r2
    12ee:	d30d      	bcc.n	130c <strcmp+0x40>
		}else if (*s1>*s2){
    12f0:	d9f5      	bls.n	12de <strcmp+0x12>
			result=1;
    12f2:	2001      	movs	r0, #1
    12f4:	e003      	b.n	12fe <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    12f6:	7808      	ldrb	r0, [r1, #0]
    12f8:	fab0 f080 	clz	r0, r0
    12fc:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    12fe:	bc10      	pop	{r4}
    1300:	4770      	bx	lr
			result=-1;
    1302:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1306:	e7fa      	b.n	12fe <strcmp+0x32>
			result=1;
    1308:	2001      	movs	r0, #1
    130a:	e7f8      	b.n	12fe <strcmp+0x32>
			result=-1;
    130c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1310:	e7f5      	b.n	12fe <strcmp+0x32>
		if (!*s1 && *s2){
    1312:	7808      	ldrb	r0, [r1, #0]
    1314:	3000      	adds	r0, #0
    1316:	bf18      	it	ne
    1318:	2001      	movne	r0, #1
    131a:	4240      	negs	r0, r0
    131c:	e7ef      	b.n	12fe <strcmp+0x32>

0000131e <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    131e:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    1322:	b2db      	uxtb	r3, r3
    1324:	2b19      	cmp	r3, #25
    1326:	d906      	bls.n	1336 <alpha+0x18>
    1328:	3841      	subs	r0, #65	; 0x41
    132a:	b2c0      	uxtb	r0, r0
    132c:	2819      	cmp	r0, #25
    132e:	bf8c      	ite	hi
    1330:	2000      	movhi	r0, #0
    1332:	2001      	movls	r0, #1
    1334:	4770      	bx	lr
    1336:	2001      	movs	r0, #1
}
    1338:	4770      	bx	lr

0000133a <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    133a:	3830      	subs	r0, #48	; 0x30
    133c:	b2c0      	uxtb	r0, r0
}
    133e:	2809      	cmp	r0, #9
    1340:	bf8c      	ite	hi
    1342:	2000      	movhi	r0, #0
    1344:	2001      	movls	r0, #1
    1346:	4770      	bx	lr

00001348 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1348:	2860      	cmp	r0, #96	; 0x60
    134a:	bf84      	itt	hi
    134c:	3820      	subhi	r0, #32
    134e:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1350:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    1354:	b2db      	uxtb	r3, r3
    1356:	2b09      	cmp	r3, #9
    1358:	d906      	bls.n	1368 <hexdigit+0x20>
    135a:	3841      	subs	r0, #65	; 0x41
    135c:	b2c0      	uxtb	r0, r0
    135e:	2805      	cmp	r0, #5
    1360:	bf8c      	ite	hi
    1362:	2000      	movhi	r0, #0
    1364:	2001      	movls	r0, #1
    1366:	4770      	bx	lr
    1368:	2001      	movs	r0, #1
}
    136a:	4770      	bx	lr

0000136c <atoi>:

int atoi(const char *str){
    136c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1370:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1372:	7803      	ldrb	r3, [r0, #0]
    1374:	2b20      	cmp	r3, #32
    1376:	d103      	bne.n	1380 <atoi+0x14>
    1378:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    137c:	2b20      	cmp	r3, #32
    137e:	d0fb      	beq.n	1378 <atoi+0xc>
	if (*str=='-'){
    1380:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    1382:	bf06      	itte	eq
    1384:	3501      	addeq	r5, #1
		sign=-1;
    1386:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    138a:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    138e:	782b      	ldrb	r3, [r5, #0]
    1390:	2b24      	cmp	r3, #36	; 0x24
    1392:	d005      	beq.n	13a0 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1394:	2b30      	cmp	r3, #48	; 0x30
    1396:	d00a      	beq.n	13ae <atoi+0x42>
	int n=0,sign=1,base=10;
    1398:	270a      	movs	r7, #10
    139a:	3d01      	subs	r5, #1
    139c:	2600      	movs	r6, #0
    139e:	e026      	b.n	13ee <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    13a0:	7868      	ldrb	r0, [r5, #1]
    13a2:	f7ff ffd1 	bl	1348 <hexdigit>
    13a6:	b160      	cbz	r0, 13c2 <atoi+0x56>
		str++;
    13a8:	3501      	adds	r5, #1
		base=16;
    13aa:	2710      	movs	r7, #16
		str++;
    13ac:	e7f5      	b.n	139a <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    13ae:	786b      	ldrb	r3, [r5, #1]
    13b0:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    13b4:	2b58      	cmp	r3, #88	; 0x58
    13b6:	d001      	beq.n	13bc <atoi+0x50>
	int n=0,sign=1,base=10;
    13b8:	270a      	movs	r7, #10
    13ba:	e7ee      	b.n	139a <atoi+0x2e>
		base=16;
		str+=2;
    13bc:	3502      	adds	r5, #2
		base=16;
    13be:	2710      	movs	r7, #16
    13c0:	e7eb      	b.n	139a <atoi+0x2e>
	int n=0,sign=1,base=10;
    13c2:	270a      	movs	r7, #10
    13c4:	e7e9      	b.n	139a <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13c6:	4620      	mov	r0, r4
    13c8:	f7ff ffbe 	bl	1348 <hexdigit>
    13cc:	3000      	adds	r0, #0
    13ce:	bf18      	it	ne
    13d0:	2001      	movne	r0, #1
    13d2:	b1d0      	cbz	r0, 140a <atoi+0x9e>
		if (c>='a'){c-=32;}
    13d4:	2c60      	cmp	r4, #96	; 0x60
    13d6:	bf84      	itt	hi
    13d8:	3c20      	subhi	r4, #32
    13da:	b2e4      	uxtbhi	r4, r4
		c-='0';
    13dc:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    13e0:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    13e2:	2b09      	cmp	r3, #9
    13e4:	bf84      	itt	hi
    13e6:	3c37      	subhi	r4, #55	; 0x37
    13e8:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    13ea:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13ee:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    13f2:	2c00      	cmp	r4, #0
    13f4:	d0e7      	beq.n	13c6 <atoi+0x5a>
    13f6:	2f0a      	cmp	r7, #10
    13f8:	d1e5      	bne.n	13c6 <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    13fa:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    13fe:	b2c0      	uxtb	r0, r0
    1400:	2809      	cmp	r0, #9
    1402:	bf8c      	ite	hi
    1404:	2000      	movhi	r0, #0
    1406:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1408:	e7e3      	b.n	13d2 <atoi+0x66>
		str++;
	}
	return sign*n;
}
    140a:	fb08 f006 	mul.w	r0, r8, r6
    140e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00001412 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    1412:	b13a      	cbz	r2, 1424 <move+0x12>
    1414:	3901      	subs	r1, #1
    1416:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1418:	f810 3b01 	ldrb.w	r3, [r0], #1
    141c:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1420:	4290      	cmp	r0, r2
    1422:	d1f9      	bne.n	1418 <move+0x6>
    1424:	4770      	bx	lr

00001426 <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    1426:	7803      	ldrb	r3, [r0, #0]
    1428:	b13b      	cbz	r3, 143a <strlen+0x14>
    142a:	4603      	mov	r3, r0
    142c:	2000      	movs	r0, #0
    142e:	3001      	adds	r0, #1
    1430:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    1434:	2a00      	cmp	r2, #0
    1436:	d1fa      	bne.n	142e <strlen+0x8>
    1438:	4770      	bx	lr
	int ll=0;
    143a:	2000      	movs	r0, #0
	return ll;
}
    143c:	4770      	bx	lr

0000143e <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    143e:	b121      	cbz	r1, 144a <fill+0xc>
    1440:	1841      	adds	r1, r0, r1
    1442:	f800 2b01 	strb.w	r2, [r0], #1
    1446:	4288      	cmp	r0, r1
    1448:	d1fb      	bne.n	1442 <fill+0x4>
    144a:	4770      	bx	lr

0000144c <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    144c:	3861      	subs	r0, #97	; 0x61
    144e:	b2c0      	uxtb	r0, r0
}
    1450:	2819      	cmp	r0, #25
    1452:	bf8c      	ite	hi
    1454:	2000      	movhi	r0, #0
    1456:	2001      	movls	r0, #1
    1458:	4770      	bx	lr

0000145a <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    145a:	3841      	subs	r0, #65	; 0x41
    145c:	b2c0      	uxtb	r0, r0
}
    145e:	2819      	cmp	r0, #25
    1460:	bf8c      	ite	hi
    1462:	2000      	movhi	r0, #0
    1464:	2001      	movls	r0, #1
    1466:	4770      	bx	lr

00001468 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1468:	7803      	ldrb	r3, [r0, #0]
    146a:	b153      	cbz	r3, 1482 <uppercase+0x1a>
	return (c>='a') && (c<='z');
    146c:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1470:	b2d2      	uxtb	r2, r2
    1472:	2a19      	cmp	r2, #25
    1474:	bf9c      	itt	ls
    1476:	3b20      	subls	r3, #32
    1478:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    147a:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    147e:	2b00      	cmp	r3, #0
    1480:	d1f4      	bne.n	146c <uppercase+0x4>
    1482:	4770      	bx	lr

00001484 <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1484:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    1486:	1844      	adds	r4, r0, r1
    1488:	5c43      	ldrb	r3, [r0, r1]
    148a:	b153      	cbz	r3, 14a2 <scan+0x1e>
    148c:	429a      	cmp	r2, r3
    148e:	d00a      	beq.n	14a6 <scan+0x22>
    1490:	4608      	mov	r0, r1
    1492:	3001      	adds	r0, #1
    1494:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    1498:	b10b      	cbz	r3, 149e <scan+0x1a>
    149a:	4293      	cmp	r3, r2
    149c:	d1f9      	bne.n	1492 <scan+0xe>
	return start;
}
    149e:	bc10      	pop	{r4}
    14a0:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    14a2:	4608      	mov	r0, r1
    14a4:	e7fb      	b.n	149e <scan+0x1a>
    14a6:	4608      	mov	r0, r1
	return start;
    14a8:	e7f9      	b.n	149e <scan+0x1a>

000014aa <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    14aa:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    14ac:	1844      	adds	r4, r0, r1
    14ae:	5c43      	ldrb	r3, [r0, r1]
    14b0:	b153      	cbz	r3, 14c8 <skip+0x1e>
    14b2:	429a      	cmp	r2, r3
    14b4:	d10a      	bne.n	14cc <skip+0x22>
    14b6:	4608      	mov	r0, r1
    14b8:	3001      	adds	r0, #1
    14ba:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14be:	b10b      	cbz	r3, 14c4 <skip+0x1a>
    14c0:	4293      	cmp	r3, r2
    14c2:	d0f9      	beq.n	14b8 <skip+0xe>
	return start;
}
    14c4:	bc10      	pop	{r4}
    14c6:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    14c8:	4608      	mov	r0, r1
    14ca:	e7fb      	b.n	14c4 <skip+0x1a>
    14cc:	4608      	mov	r0, r1
	return start;
    14ce:	e7f9      	b.n	14c4 <skip+0x1a>

000014d0 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    14d0:	b538      	push	{r3, r4, r5, lr}
    14d2:	4604      	mov	r4, r0
    14d4:	460d      	mov	r5, r1
	s1+=strlen(s1);
    14d6:	f7ff ffa6 	bl	1426 <strlen>
    14da:	4420      	add	r0, r4
	while (*s2){
    14dc:	782b      	ldrb	r3, [r5, #0]
    14de:	b133      	cbz	r3, 14ee <strcat+0x1e>
    14e0:	4629      	mov	r1, r5
		*s1++=*s2++;
    14e2:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    14e6:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    14ea:	2b00      	cmp	r3, #0
    14ec:	d1f9      	bne.n	14e2 <strcat+0x12>
	}
	*s1=0;
    14ee:	2300      	movs	r3, #0
    14f0:	7003      	strb	r3, [r0, #0]
	return s1;
}
    14f2:	bd38      	pop	{r3, r4, r5, pc}

000014f4 <itoa>:

char *itoa(int n,char *buffer,int base){
    14f4:	b5f0      	push	{r4, r5, r6, r7, lr}
    14f6:	b085      	sub	sp, #20
    14f8:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    14fa:	2a0a      	cmp	r2, #10
    14fc:	d033      	beq.n	1566 <itoa+0x72>
	int i=14,sign=0;
    14fe:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    1500:	2300      	movs	r3, #0
    1502:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    1506:	2320      	movs	r3, #32
    1508:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    150c:	b390      	cbz	r0, 1574 <itoa+0x80>
    150e:	f10d 060d 	add.w	r6, sp, #13
    1512:	250e      	movs	r5, #14
		d=n%base+'0';
    1514:	fb90 f3f2 	sdiv	r3, r0, r2
    1518:	fb02 0313 	mls	r3, r2, r3, r0
    151c:	b2db      	uxtb	r3, r3
    151e:	f103 0130 	add.w	r1, r3, #48	; 0x30
    1522:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    1524:	2939      	cmp	r1, #57	; 0x39
    1526:	bf84      	itt	hi
    1528:	3337      	addhi	r3, #55	; 0x37
    152a:	b2d9      	uxtbhi	r1, r3
		n/=base;
    152c:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1530:	3d01      	subs	r5, #1
    1532:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    1536:	2800      	cmp	r0, #0
    1538:	d1ec      	bne.n	1514 <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    153a:	2d0e      	cmp	r5, #14
    153c:	d01a      	beq.n	1574 <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    153e:	2a0a      	cmp	r2, #10
    1540:	d01d      	beq.n	157e <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    1542:	2a10      	cmp	r2, #16
    1544:	d105      	bne.n	1552 <itoa+0x5e>
    1546:	3d01      	subs	r5, #1
    1548:	ab04      	add	r3, sp, #16
    154a:	442b      	add	r3, r5
    154c:	2224      	movs	r2, #36	; 0x24
    154e:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    1552:	f1c5 0210 	rsb	r2, r5, #16
    1556:	4621      	mov	r1, r4
    1558:	eb0d 0005 	add.w	r0, sp, r5
    155c:	f7ff ff59 	bl	1412 <move>
	return buffer;
    1560:	4620      	mov	r0, r4
    1562:	b005      	add	sp, #20
    1564:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    1566:	2800      	cmp	r0, #0
    1568:	db01      	blt.n	156e <itoa+0x7a>
	int i=14,sign=0;
    156a:	2700      	movs	r7, #0
    156c:	e7c8      	b.n	1500 <itoa+0xc>
		n=-n;
    156e:	4240      	negs	r0, r0
		sign=1;
    1570:	2701      	movs	r7, #1
    1572:	e7c5      	b.n	1500 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    1574:	2330      	movs	r3, #48	; 0x30
    1576:	f88d 300d 	strb.w	r3, [sp, #13]
    157a:	250d      	movs	r5, #13
    157c:	e7df      	b.n	153e <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    157e:	2f00      	cmp	r7, #0
    1580:	d0e7      	beq.n	1552 <itoa+0x5e>
    1582:	3d01      	subs	r5, #1
    1584:	ab04      	add	r3, sp, #16
    1586:	442b      	add	r3, r5
    1588:	222d      	movs	r2, #45	; 0x2d
    158a:	f803 2c10 	strb.w	r2, [r3, #-16]
    158e:	e7e0      	b.n	1552 <itoa+0x5e>

00001590 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    1590:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    1592:	08cb      	lsrs	r3, r1, #3
    1594:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    1598:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    159a:	f001 011c 	and.w	r1, r1, #28
    159e:	250f      	movs	r5, #15
    15a0:	408d      	lsls	r5, r1
    15a2:	ea24 0405 	bic.w	r4, r4, r5
    15a6:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    15aa:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    15ae:	fa02 f101 	lsl.w	r1, r2, r1
    15b2:	4321      	orrs	r1, r4
    15b4:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    15b8:	bc30      	pop	{r4, r5}
    15ba:	4770      	bx	lr

000015bc <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    15bc:	6880      	ldr	r0, [r0, #8]
    15be:	2301      	movs	r3, #1
    15c0:	fa03 f101 	lsl.w	r1, r3, r1
}
    15c4:	4008      	ands	r0, r1
    15c6:	4770      	bx	lr

000015c8 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15c8:	b93a      	cbnz	r2, 15da <write_pin+0x12>
    15ca:	68c3      	ldr	r3, [r0, #12]
    15cc:	2201      	movs	r2, #1
    15ce:	fa02 f101 	lsl.w	r1, r2, r1
    15d2:	ea23 0101 	bic.w	r1, r3, r1
    15d6:	60c1      	str	r1, [r0, #12]
    15d8:	4770      	bx	lr
    15da:	68c2      	ldr	r2, [r0, #12]
    15dc:	2301      	movs	r3, #1
    15de:	fa03 f101 	lsl.w	r1, r3, r1
    15e2:	4311      	orrs	r1, r2
    15e4:	60c1      	str	r1, [r0, #12]
    15e6:	4770      	bx	lr

000015e8 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    15e8:	68c2      	ldr	r2, [r0, #12]
    15ea:	2301      	movs	r3, #1
    15ec:	fa03 f101 	lsl.w	r1, r3, r1
    15f0:	4051      	eors	r1, r2
    15f2:	60c1      	str	r1, [r0, #12]
    15f4:	4770      	bx	lr
	...

000015f8 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    15f8:	4b04      	ldr	r3, [pc, #16]	; (160c <set_palette+0x14>)
    15fa:	7802      	ldrb	r2, [r0, #0]
    15fc:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    15fe:	7842      	ldrb	r2, [r0, #1]
    1600:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    1602:	7882      	ldrb	r2, [r0, #2]
    1604:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    1606:	78c2      	ldrb	r2, [r0, #3]
    1608:	70da      	strb	r2, [r3, #3]
    160a:	4770      	bx	lr
    160c:	200001a8 	.word	0x200001a8

00001610 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    1610:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1612:	4604      	mov	r4, r0
    1614:	460e      	mov	r6, r1
    1616:	4615      	mov	r5, r2
    1618:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    161a:	f001 ff53 	bl	34c4 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    161e:	2c00      	cmp	r4, #0
    1620:	db38      	blt.n	1694 <gfx_blit+0x84>
    1622:	8983      	ldrh	r3, [r0, #12]
    1624:	429c      	cmp	r4, r3
    1626:	da37      	bge.n	1698 <gfx_blit+0x88>
    1628:	2e00      	cmp	r6, #0
    162a:	db37      	blt.n	169c <gfx_blit+0x8c>
    162c:	89c3      	ldrh	r3, [r0, #14]
    162e:	429e      	cmp	r6, r3
    1630:	da36      	bge.n	16a0 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    1632:	7a03      	ldrb	r3, [r0, #8]
    1634:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1638:	1052      	asrs	r2, r2, #1
    163a:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    163e:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    1642:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    1646:	bf06      	itte	eq
    1648:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    164a:	220f      	moveq	r2, #15
    mask=0xf0;
    164c:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    164e:	4b15      	ldr	r3, [pc, #84]	; (16a4 <gfx_blit+0x94>)
    1650:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    1652:	2f04      	cmp	r7, #4
    1654:	d805      	bhi.n	1662 <gfx_blit+0x52>
    1656:	e8df f007 	tbb	[pc, r7]
    165a:	1003      	.short	0x1003
    165c:	1412      	.short	0x1412
    165e:	18          	.byte	0x18
    165f:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1660:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    1662:	4910      	ldr	r1, [pc, #64]	; (16a4 <gfx_blit+0x94>)
    1664:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    1666:	ea23 0302 	bic.w	r3, r3, r2
    166a:	fab0 f080 	clz	r0, r0
    166e:	0940      	lsrs	r0, r0, #5
    1670:	4283      	cmp	r3, r0
    1672:	bf14      	ite	ne
    1674:	2000      	movne	r0, #0
    1676:	2001      	moveq	r0, #1
    1678:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    167a:	4003      	ands	r3, r0
        break;
    167c:	e7f1      	b.n	1662 <gfx_blit+0x52>
        byte^=color;
    167e:	4043      	eors	r3, r0
        break;
    1680:	e7ef      	b.n	1662 <gfx_blit+0x52>
        byte^=~mask;
    1682:	43d4      	mvns	r4, r2
    1684:	405c      	eors	r4, r3
    1686:	b2e3      	uxtb	r3, r4
        break;
    1688:	e7eb      	b.n	1662 <gfx_blit+0x52>
        byte &=mask;
    168a:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    168e:	ea40 0304 	orr.w	r3, r0, r4
        break;
    1692:	e7e6      	b.n	1662 <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1694:	2000      	movs	r0, #0
    1696:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1698:	2000      	movs	r0, #0
    169a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    169c:	2000      	movs	r0, #0
    169e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16a0:	2000      	movs	r0, #0
}
    16a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16a4:	20002714 	.word	0x20002714

000016a8 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    16a8:	b570      	push	{r4, r5, r6, lr}
    16aa:	4604      	mov	r4, r0
    16ac:	460e      	mov	r6, r1
    16ae:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    16b0:	f001 ff08 	bl	34c4 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    16b4:	2c00      	cmp	r4, #0
    16b6:	db1d      	blt.n	16f4 <gfx_plot+0x4c>
    16b8:	8983      	ldrh	r3, [r0, #12]
    16ba:	429c      	cmp	r4, r3
    16bc:	da1a      	bge.n	16f4 <gfx_plot+0x4c>
    16be:	2e00      	cmp	r6, #0
    16c0:	db18      	blt.n	16f4 <gfx_plot+0x4c>
    16c2:	89c3      	ldrh	r3, [r0, #14]
    16c4:	429e      	cmp	r6, r3
    16c6:	da15      	bge.n	16f4 <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    16c8:	7a03      	ldrb	r3, [r0, #8]
    16ca:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    16ce:	1052      	asrs	r2, r2, #1
    16d0:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    16d4:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    16d8:	4b07      	ldr	r3, [pc, #28]	; (16f8 <gfx_plot+0x50>)
    16da:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    16dc:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    16e0:	bf19      	ittee	ne
    16e2:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    16e6:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    16e8:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    16ec:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    16f0:	4b01      	ldr	r3, [pc, #4]	; (16f8 <gfx_plot+0x50>)
    16f2:	559d      	strb	r5, [r3, r6]
    16f4:	bd70      	pop	{r4, r5, r6, pc}
    16f6:	bf00      	nop
    16f8:	20002714 	.word	0x20002714

000016fc <gfx_cls>:
}

void gfx_cls(){
    16fc:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    16fe:	f001 fee1 	bl	34c4 <get_video_params>
    1702:	4b06      	ldr	r3, [pc, #24]	; (171c <gfx_cls+0x20>)
    1704:	4906      	ldr	r1, [pc, #24]	; (1720 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    1706:	2200      	movs	r2, #0
    1708:	f803 2f01 	strb.w	r2, [r3, #1]!
    170c:	428b      	cmp	r3, r1
    170e:	d1fb      	bne.n	1708 <gfx_cls+0xc>
    set_cursor(0,0);
    1710:	2100      	movs	r1, #0
    1712:	4608      	mov	r0, r1
    1714:	f001 fb8a 	bl	2e2c <set_cursor>
    1718:	bd08      	pop	{r3, pc}
    171a:	bf00      	nop
    171c:	20002713 	.word	0x20002713
    1720:	20004e73 	.word	0x20004e73

00001724 <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    1724:	b570      	push	{r4, r5, r6, lr}
    1726:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1728:	f001 fecc 	bl	34c4 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    172c:	7a06      	ldrb	r6, [r0, #8]
    172e:	4b0f      	ldr	r3, [pc, #60]	; (176c <gfx_scroll_up+0x48>)
    1730:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    1734:	89c2      	ldrh	r2, [r0, #14]
    1736:	1b12      	subs	r2, r2, r4
    1738:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    173c:	b1a6      	cbz	r6, 1768 <gfx_scroll_up+0x44>
    173e:	4a0b      	ldr	r2, [pc, #44]	; (176c <gfx_scroll_up+0x48>)
    1740:	199d      	adds	r5, r3, r6
    1742:	f813 1b01 	ldrb.w	r1, [r3], #1
    1746:	f802 1b01 	strb.w	r1, [r2], #1
    174a:	42ab      	cmp	r3, r5
    174c:	d1f9      	bne.n	1742 <gfx_scroll_up+0x1e>
    174e:	4b07      	ldr	r3, [pc, #28]	; (176c <gfx_scroll_up+0x48>)
    1750:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    1752:	7a02      	ldrb	r2, [r0, #8]
    1754:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1758:	b12a      	cbz	r2, 1766 <gfx_scroll_up+0x42>
    175a:	441a      	add	r2, r3
    175c:	2100      	movs	r1, #0
    175e:	f803 1b01 	strb.w	r1, [r3], #1
    1762:	4293      	cmp	r3, r2
    1764:	d1fb      	bne.n	175e <gfx_scroll_up+0x3a>
    1766:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1768:	4b00      	ldr	r3, [pc, #0]	; (176c <gfx_scroll_up+0x48>)
    176a:	e7f2      	b.n	1752 <gfx_scroll_up+0x2e>
    176c:	20002714 	.word	0x20002714

00001770 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1770:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1772:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1774:	f001 fea6 	bl	34c4 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1778:	89c3      	ldrh	r3, [r0, #14]
    177a:	7a04      	ldrb	r4, [r0, #8]
    177c:	1b5f      	subs	r7, r3, r5
    177e:	fb04 f707 	mul.w	r7, r4, r7
    1782:	490c      	ldr	r1, [pc, #48]	; (17b4 <gfx_scroll_down+0x44>)
    1784:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    1786:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    178a:	b147      	cbz	r7, 179e <gfx_scroll_down+0x2e>
    178c:	4619      	mov	r1, r3
    178e:	4e09      	ldr	r6, [pc, #36]	; (17b4 <gfx_scroll_down+0x44>)
    1790:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1794:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1798:	42b2      	cmp	r2, r6
    179a:	d1f9      	bne.n	1790 <gfx_scroll_down+0x20>
    179c:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    179e:	7a02      	ldrb	r2, [r0, #8]
    17a0:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    17a4:	b12a      	cbz	r2, 17b2 <gfx_scroll_down+0x42>
    17a6:	1a9a      	subs	r2, r3, r2
    17a8:	2100      	movs	r1, #0
    17aa:	f803 1d01 	strb.w	r1, [r3, #-1]!
    17ae:	4293      	cmp	r3, r2
    17b0:	d1fb      	bne.n	17aa <gfx_scroll_down+0x3a>
    17b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    17b4:	20002714 	.word	0x20002714

000017b8 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    17b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    17bc:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    17be:	f001 fe81 	bl	34c4 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    17c2:	89c3      	ldrh	r3, [r0, #14]
    17c4:	b30b      	cbz	r3, 180a <gfx_scroll_left+0x52>
    17c6:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    17ca:	f8df 8044 	ldr.w	r8, [pc, #68]	; 1810 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    17ce:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    17d0:	7a03      	ldrb	r3, [r0, #8]
    17d2:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    17d6:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    17d8:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    17da:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    17de:	d009      	beq.n	17f4 <gfx_scroll_left+0x3c>
    17e0:	1e59      	subs	r1, r3, #1
    17e2:	eb02 050e 	add.w	r5, r2, lr
    17e6:	f812 4b01 	ldrb.w	r4, [r2], #1
    17ea:	f801 4f01 	strb.w	r4, [r1, #1]!
    17ee:	4295      	cmp	r5, r2
    17f0:	d1f9      	bne.n	17e6 <gfx_scroll_left+0x2e>
    17f2:	4473      	add	r3, lr
        while (size--) *dest++=0;
    17f4:	b126      	cbz	r6, 1800 <gfx_scroll_left+0x48>
    17f6:	199a      	adds	r2, r3, r6
    17f8:	f803 7b01 	strb.w	r7, [r3], #1
    17fc:	4293      	cmp	r3, r2
    17fe:	d1fb      	bne.n	17f8 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    1800:	f10c 0c01 	add.w	ip, ip, #1
    1804:	89c3      	ldrh	r3, [r0, #14]
    1806:	4563      	cmp	r3, ip
    1808:	dce2      	bgt.n	17d0 <gfx_scroll_left+0x18>
    180a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    180e:	bf00      	nop
    1810:	20002714 	.word	0x20002714

00001814 <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    1814:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1818:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    181a:	f001 fe53 	bl	34c4 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    181e:	89c3      	ldrh	r3, [r0, #14]
    1820:	b33b      	cbz	r3, 1872 <gfx_scroll_right+0x5e>
    1822:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1826:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1878 <gfx_scroll_right+0x64>
        src=dest-n;
    182a:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    182e:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1830:	7a03      	ldrb	r3, [r0, #8]
    1832:	fb0e 3303 	mla	r3, lr, r3, r3
    1836:	4443      	add	r3, r8
        src=dest-n;
    1838:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    183c:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    183e:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    1842:	d00a      	beq.n	185a <gfx_scroll_right+0x46>
    1844:	4619      	mov	r1, r3
    1846:	eba2 0609 	sub.w	r6, r2, r9
    184a:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    184e:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1852:	42b2      	cmp	r2, r6
    1854:	d1f9      	bne.n	184a <gfx_scroll_right+0x36>
    1856:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    185a:	b12d      	cbz	r5, 1868 <gfx_scroll_right+0x54>
    185c:	eb03 020c 	add.w	r2, r3, ip
    1860:	f803 7d01 	strb.w	r7, [r3, #-1]!
    1864:	429a      	cmp	r2, r3
    1866:	d1fb      	bne.n	1860 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1868:	f10e 0e01 	add.w	lr, lr, #1
    186c:	89c3      	ldrh	r3, [r0, #14]
    186e:	4573      	cmp	r3, lr
    1870:	dcde      	bgt.n	1830 <gfx_scroll_right+0x1c>
    1872:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1876:	bf00      	nop
    1878:	20002714 	.word	0x20002714

0000187c <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    187c:	b538      	push	{r3, r4, r5, lr}
    187e:	4604      	mov	r4, r0
    1880:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1882:	f001 fe1f 	bl	34c4 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    1886:	2c00      	cmp	r4, #0
    1888:	db18      	blt.n	18bc <gfx_get_pixel+0x40>
    188a:	8983      	ldrh	r3, [r0, #12]
    188c:	429c      	cmp	r4, r3
    188e:	db01      	blt.n	1894 <gfx_get_pixel+0x18>
    1890:	20ff      	movs	r0, #255	; 0xff
    1892:	bd38      	pop	{r3, r4, r5, pc}
    1894:	2d00      	cmp	r5, #0
    1896:	db13      	blt.n	18c0 <gfx_get_pixel+0x44>
    1898:	89c3      	ldrh	r3, [r0, #14]
    189a:	429d      	cmp	r5, r3
    189c:	db01      	blt.n	18a2 <gfx_get_pixel+0x26>
    189e:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    18a0:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    18a2:	7a03      	ldrb	r3, [r0, #8]
    18a4:	1062      	asrs	r2, r4, #1
    18a6:	4907      	ldr	r1, [pc, #28]	; (18c4 <gfx_get_pixel+0x48>)
    18a8:	fb05 1503 	mla	r5, r5, r3, r1
    18ac:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    18ae:	f014 0f01 	tst.w	r4, #1
    18b2:	bf08      	it	eq
    18b4:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    18b6:	f000 000f 	and.w	r0, r0, #15
    18ba:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    18bc:	20ff      	movs	r0, #255	; 0xff
    18be:	bd38      	pop	{r3, r4, r5, pc}
    18c0:	20ff      	movs	r0, #255	; 0xff
    18c2:	bd38      	pop	{r3, r4, r5, pc}
    18c4:	20002714 	.word	0x20002714

000018c8 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    18c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    18cc:	b085      	sub	sp, #20
    18ce:	9001      	str	r0, [sp, #4]
    18d0:	460e      	mov	r6, r1
    18d2:	9100      	str	r1, [sp, #0]
    18d4:	9203      	str	r2, [sp, #12]
    18d6:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    
    shift=bit_shift[sprite_bpp];
    18d8:	4a26      	ldr	r2, [pc, #152]	; (1974 <gfx_sprite+0xac>)
    18da:	7911      	ldrb	r1, [r2, #4]
    18dc:	4a26      	ldr	r2, [pc, #152]	; (1978 <gfx_sprite+0xb0>)
    18de:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    18e2:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    18e4:	440a      	add	r2, r1
    18e6:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    18e8:	4433      	add	r3, r6
    18ea:	9302      	str	r3, [sp, #8]
    18ec:	429e      	cmp	r6, r3
    int collision=0;
    18ee:	bfa8      	it	ge
    18f0:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    18f2:	da3a      	bge.n	196a <gfx_sprite+0xa2>
    18f4:	f100 0901 	add.w	r9, r0, #1
    18f8:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    18fa:	f8df 8078 	ldr.w	r8, [pc, #120]	; 1974 <gfx_sprite+0xac>
    18fe:	e02b      	b.n	1958 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    1900:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    1904:	f898 3004 	ldrb.w	r3, [r8, #4]
    1908:	4a1b      	ldr	r2, [pc, #108]	; (1978 <gfx_sprite+0xb0>)
    190a:	4413      	add	r3, r2
    190c:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    190e:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    1912:	3601      	adds	r6, #1
    1914:	4556      	cmp	r6, sl
    1916:	d019      	beq.n	194c <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    1918:	f898 3004 	ldrb.w	r3, [r8, #4]
    191c:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    191e:	bf99      	ittee	ls
    1920:	fa45 f30b 	asrls.w	r3, r5, fp
    1924:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    1928:	fa45 f20b 	asrhi.w	r2, r5, fp
    192c:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    192e:	2302      	movs	r3, #2
    1930:	9900      	ldr	r1, [sp, #0]
    1932:	4630      	mov	r0, r6
    1934:	f7ff fe6c 	bl	1610 <gfx_blit>
    1938:	4307      	orrs	r7, r0
            ppb--;
    193a:	3c01      	subs	r4, #1
            if (!ppb){
    193c:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1940:	d0de      	beq.n	1900 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    1942:	f1cb 0308 	rsb	r3, fp, #8
    1946:	409d      	lsls	r5, r3
    1948:	b2ed      	uxtb	r5, r5
    194a:	e7e2      	b.n	1912 <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    194c:	9b00      	ldr	r3, [sp, #0]
    194e:	3301      	adds	r3, #1
    1950:	9300      	str	r3, [sp, #0]
    1952:	9a02      	ldr	r2, [sp, #8]
    1954:	4293      	cmp	r3, r2
    1956:	d008      	beq.n	196a <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    1958:	9b03      	ldr	r3, [sp, #12]
    195a:	4619      	mov	r1, r3
    195c:	9a01      	ldr	r2, [sp, #4]
    195e:	eb01 0a02 	add.w	sl, r1, r2
    1962:	4552      	cmp	r2, sl
    1964:	daf2      	bge.n	194c <gfx_sprite+0x84>
    1966:	9e01      	ldr	r6, [sp, #4]
    1968:	e7d6      	b.n	1918 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    return collision;
}
    196a:	4638      	mov	r0, r7
    196c:	b005      	add	sp, #20
    196e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1972:	bf00      	nop
    1974:	200001a8 	.word	0x200001a8
    1978:	00003d20 	.word	0x00003d20

0000197c <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    197c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    1980:	f001 fda0 	bl	34c4 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    1984:	89c3      	ldrh	r3, [r0, #14]
    1986:	089e      	lsrs	r6, r3, #2
    1988:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    198c:	429e      	cmp	r6, r3
    198e:	da18      	bge.n	19c2 <color_bars+0x46>
    1990:	4607      	mov	r7, r0
static void color_bars(){
    1992:	f04f 0810 	mov.w	r8, #16
    1996:	4645      	mov	r5, r8
    1998:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    199a:	f014 0f07 	tst.w	r4, #7
				c--;
    199e:	bf04      	itt	eq
    19a0:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    19a4:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    19a6:	462a      	mov	r2, r5
    19a8:	4631      	mov	r1, r6
    19aa:	4620      	mov	r0, r4
    19ac:	f7ff fe7c 	bl	16a8 <gfx_plot>
		for (x=0;x<128;x++){
    19b0:	3401      	adds	r4, #1
    19b2:	2c80      	cmp	r4, #128	; 0x80
    19b4:	d1f1      	bne.n	199a <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19b6:	3601      	adds	r6, #1
    19b8:	89fb      	ldrh	r3, [r7, #14]
    19ba:	42b3      	cmp	r3, r6
    19bc:	dceb      	bgt.n	1996 <color_bars+0x1a>
    19be:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    19c2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000019c6 <vertical_bars>:
	}
		

}

static void vertical_bars(){
    19c6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    19c8:	f001 fd7c 	bl	34c4 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19cc:	89c3      	ldrh	r3, [r0, #14]
    19ce:	2b10      	cmp	r3, #16
    19d0:	dd12      	ble.n	19f8 <vertical_bars+0x32>
    19d2:	4605      	mov	r5, r0
    19d4:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    19d6:	260f      	movs	r6, #15
    19d8:	2700      	movs	r7, #0
    19da:	4632      	mov	r2, r6
    19dc:	4621      	mov	r1, r4
    19de:	4638      	mov	r0, r7
    19e0:	f7ff fe62 	bl	16a8 <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    19e4:	89a8      	ldrh	r0, [r5, #12]
    19e6:	4632      	mov	r2, r6
    19e8:	4621      	mov	r1, r4
    19ea:	3801      	subs	r0, #1
    19ec:	f7ff fe5c 	bl	16a8 <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19f0:	3401      	adds	r4, #1
    19f2:	89eb      	ldrh	r3, [r5, #14]
    19f4:	42a3      	cmp	r3, r4
    19f6:	dcf0      	bgt.n	19da <vertical_bars+0x14>
    19f8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000019fa <horiz_bars>:
	}
}

static void horiz_bars(){
    19fa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    19fc:	f001 fd62 	bl	34c4 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1a00:	8983      	ldrh	r3, [r0, #12]
    1a02:	b193      	cbz	r3, 1a2a <horiz_bars+0x30>
    1a04:	4605      	mov	r5, r0
    1a06:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    1a08:	260f      	movs	r6, #15
    1a0a:	4627      	mov	r7, r4
    1a0c:	4632      	mov	r2, r6
    1a0e:	4639      	mov	r1, r7
    1a10:	4620      	mov	r0, r4
    1a12:	f7ff fe49 	bl	16a8 <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    1a16:	89e9      	ldrh	r1, [r5, #14]
    1a18:	4632      	mov	r2, r6
    1a1a:	3901      	subs	r1, #1
    1a1c:	4620      	mov	r0, r4
    1a1e:	f7ff fe43 	bl	16a8 <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    1a22:	3401      	adds	r4, #1
    1a24:	89ab      	ldrh	r3, [r5, #12]
    1a26:	42a3      	cmp	r3, r4
    1a28:	dcf0      	bgt.n	1a0c <horiz_bars+0x12>
    1a2a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001a2c <display_menu>:
	" Video test",
	" Sound test",
	" BASIC",
};

static void display_menu(){
    1a2c:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1a2e:	f7ff fe65 	bl	16fc <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1a32:	4808      	ldr	r0, [pc, #32]	; (1a54 <display_menu+0x28>)
    1a34:	f001 fa43 	bl	2ebe <println>
    1a38:	4807      	ldr	r0, [pc, #28]	; (1a58 <display_menu+0x2c>)
    1a3a:	f001 fa40 	bl	2ebe <println>
    1a3e:	4807      	ldr	r0, [pc, #28]	; (1a5c <display_menu+0x30>)
    1a40:	f001 fa3d 	bl	2ebe <println>
    1a44:	4806      	ldr	r0, [pc, #24]	; (1a60 <display_menu+0x34>)
    1a46:	f001 fa3a 	bl	2ebe <println>
    1a4a:	4806      	ldr	r0, [pc, #24]	; (1a64 <display_menu+0x38>)
    1a4c:	f001 fa37 	bl	2ebe <println>
    1a50:	bd08      	pop	{r3, pc}
    1a52:	bf00      	nop
    1a54:	00003e5c 	.word	0x00003e5c
    1a58:	00003e68 	.word	0x00003e68
    1a5c:	00003e78 	.word	0x00003e78
    1a60:	00003e84 	.word	0x00003e84
    1a64:	00003e90 	.word	0x00003e90

00001a68 <draw_balls>:
void draw_balls(){
    1a68:	b510      	push	{r4, lr}
    1a6a:	b082      	sub	sp, #8
	frame_sync();
    1a6c:	f001 fcf0 	bl	3450 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1a70:	4c0a      	ldr	r4, [pc, #40]	; (1a9c <draw_balls+0x34>)
    1a72:	6923      	ldr	r3, [r4, #16]
    1a74:	9300      	str	r3, [sp, #0]
    1a76:	2308      	movs	r3, #8
    1a78:	461a      	mov	r2, r3
    1a7a:	6861      	ldr	r1, [r4, #4]
    1a7c:	6820      	ldr	r0, [r4, #0]
    1a7e:	f7ff ff23 	bl	18c8 <gfx_sprite>
    1a82:	69a1      	ldr	r1, [r4, #24]
    1a84:	6960      	ldr	r0, [r4, #20]
    1a86:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1a88:	9300      	str	r3, [sp, #0]
    1a8a:	2308      	movs	r3, #8
    1a8c:	461a      	mov	r2, r3
    1a8e:	f7ff ff1b 	bl	18c8 <gfx_sprite>
	wait_sync_end();
    1a92:	f001 fce5 	bl	3460 <wait_sync_end>
}
    1a96:	b002      	add	sp, #8
    1a98:	bd10      	pop	{r4, pc}
    1a9a:	bf00      	nop
    1a9c:	200026ec 	.word	0x200026ec

00001aa0 <isqrt>:
	if (n<2) return n;
    1aa0:	2801      	cmp	r0, #1
    1aa2:	dd0c      	ble.n	1abe <isqrt+0x1e>
int isqrt(int n){
    1aa4:	b510      	push	{r4, lr}
    1aa6:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1aa8:	1080      	asrs	r0, r0, #2
    1aaa:	f7ff fff9 	bl	1aa0 <isqrt>
    1aae:	0040      	lsls	r0, r0, #1
	large = small + 1;
    1ab0:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    1ab2:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    1ab6:	4294      	cmp	r4, r2
    1ab8:	bfa8      	it	ge
    1aba:	4618      	movge	r0, r3
}
    1abc:	bd10      	pop	{r4, pc}
    1abe:	4770      	bx	lr

00001ac0 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    1ac0:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    1ac2:	6803      	ldr	r3, [r0, #0]
    1ac4:	680a      	ldr	r2, [r1, #0]
    1ac6:	6844      	ldr	r4, [r0, #4]
    1ac8:	6848      	ldr	r0, [r1, #4]
    1aca:	fb00 f004 	mul.w	r0, r0, r4
    1ace:	fb02 0003 	mla	r0, r2, r3, r0
    1ad2:	2800      	cmp	r0, #0
    1ad4:	bfb8      	it	lt
    1ad6:	4240      	neglt	r0, r0
    1ad8:	f7ff ffe2 	bl	1aa0 <isqrt>
}
    1adc:	bd10      	pop	{r4, pc}

00001ade <move_balls>:
void move_balls(){
    1ade:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    1ae0:	f001 fcf0 	bl	34c4 <get_video_params>
    1ae4:	4b1c      	ldr	r3, [pc, #112]	; (1b58 <move_balls+0x7a>)
    1ae6:	f103 0628 	add.w	r6, r3, #40	; 0x28
    1aea:	e005      	b.n	1af8 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    1aec:	4249      	negs	r1, r1
    1aee:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1af0:	6055      	str	r5, [r2, #4]
    1af2:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    1af4:	42b3      	cmp	r3, r6
    1af6:	d017      	beq.n	1b28 <move_balls+0x4a>
    1af8:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1afa:	681d      	ldr	r5, [r3, #0]
    1afc:	6899      	ldr	r1, [r3, #8]
    1afe:	186c      	adds	r4, r5, r1
    1b00:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    1b02:	f114 0f07 	cmn.w	r4, #7
    1b06:	db02      	blt.n	1b0e <move_balls+0x30>
    1b08:	8987      	ldrh	r7, [r0, #12]
    1b0a:	42bc      	cmp	r4, r7
    1b0c:	db02      	blt.n	1b14 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    1b0e:	4249      	negs	r1, r1
    1b10:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1b12:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1b14:	6855      	ldr	r5, [r2, #4]
    1b16:	68d1      	ldr	r1, [r2, #12]
    1b18:	186c      	adds	r4, r5, r1
    1b1a:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1b1c:	2c0f      	cmp	r4, #15
    1b1e:	dde5      	ble.n	1aec <move_balls+0xe>
    1b20:	89c7      	ldrh	r7, [r0, #14]
    1b22:	42bc      	cmp	r4, r7
    1b24:	dbe5      	blt.n	1af2 <move_balls+0x14>
    1b26:	e7e1      	b.n	1aec <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1b28:	480c      	ldr	r0, [pc, #48]	; (1b5c <move_balls+0x7e>)
    1b2a:	4601      	mov	r1, r0
    1b2c:	3814      	subs	r0, #20
    1b2e:	f7ff ffc7 	bl	1ac0 <distance>
    1b32:	2807      	cmp	r0, #7
    1b34:	d80f      	bhi.n	1b56 <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1b36:	4b08      	ldr	r3, [pc, #32]	; (1b58 <move_balls+0x7a>)
    1b38:	689a      	ldr	r2, [r3, #8]
    1b3a:	69db      	ldr	r3, [r3, #28]
    1b3c:	429a      	cmp	r2, r3
    1b3e:	d002      	beq.n	1b46 <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1b40:	4905      	ldr	r1, [pc, #20]	; (1b58 <move_balls+0x7a>)
    1b42:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1b44:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1b46:	4b04      	ldr	r3, [pc, #16]	; (1b58 <move_balls+0x7a>)
    1b48:	68da      	ldr	r2, [r3, #12]
    1b4a:	6a1b      	ldr	r3, [r3, #32]
    1b4c:	429a      	cmp	r2, r3
    1b4e:	d002      	beq.n	1b56 <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1b50:	4901      	ldr	r1, [pc, #4]	; (1b58 <move_balls+0x7a>)
    1b52:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1b54:	620a      	str	r2, [r1, #32]
    1b56:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1b58:	200026ec 	.word	0x200026ec
    1b5c:	20002700 	.word	0x20002700

00001b60 <init_balls>:
void init_balls(){
    1b60:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1b64:	f001 fcae 	bl	34c4 <get_video_params>
    1b68:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1b6a:	4b18      	ldr	r3, [pc, #96]	; (1bcc <init_balls+0x6c>)
    1b6c:	6818      	ldr	r0, [r3, #0]
    1b6e:	f7fe fc39 	bl	3e4 <srand>
    1b72:	4c17      	ldr	r4, [pc, #92]	; (1bd0 <init_balls+0x70>)
    1b74:	f104 0628 	add.w	r6, r4, #40	; 0x28
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1b78:	4f16      	ldr	r7, [pc, #88]	; (1bd4 <init_balls+0x74>)
    1b7a:	f107 0910 	add.w	r9, r7, #16
			sprite_bpp=TWO_BPP;
    1b7e:	f8df 8058 	ldr.w	r8, [pc, #88]	; 1bd8 <init_balls+0x78>
    1b82:	e004      	b.n	1b8e <init_balls+0x2e>
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    1b84:	f8c4 9010 	str.w	r9, [r4, #16]
    1b88:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1b8a:	42b4      	cmp	r4, r6
    1b8c:	d01c      	beq.n	1bc8 <init_balls+0x68>
		balls[i].x=rand()%vparams->hres;
    1b8e:	f7fe fc2f 	bl	3f0 <rand>
    1b92:	89ab      	ldrh	r3, [r5, #12]
    1b94:	fb90 f2f3 	sdiv	r2, r0, r3
    1b98:	fb02 0013 	mls	r0, r2, r3, r0
    1b9c:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1b9e:	f7fe fc27 	bl	3f0 <rand>
    1ba2:	89eb      	ldrh	r3, [r5, #14]
    1ba4:	3b10      	subs	r3, #16
    1ba6:	fb90 f2f3 	sdiv	r2, r0, r3
    1baa:	fb02 0013 	mls	r0, r2, r3, r0
    1bae:	3010      	adds	r0, #16
    1bb0:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1bb2:	2301      	movs	r3, #1
    1bb4:	60a3      	str	r3, [r4, #8]
		balls[i].dy=1;
    1bb6:	60e3      	str	r3, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1bb8:	782b      	ldrb	r3, [r5, #0]
    1bba:	2b00      	cmp	r3, #0
    1bbc:	d1e2      	bne.n	1b84 <init_balls+0x24>
			balls[i].ball_sprite=ball8x8_2bpp;//ball8x8;
    1bbe:	6127      	str	r7, [r4, #16]
			sprite_bpp=TWO_BPP;
    1bc0:	2301      	movs	r3, #1
    1bc2:	f888 3000 	strb.w	r3, [r8]
    1bc6:	e7df      	b.n	1b88 <init_balls+0x28>
}
    1bc8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1bcc:	20004e78 	.word	0x20004e78
    1bd0:	200026ec 	.word	0x200026ec
    1bd4:	00003d30 	.word	0x00003d30
    1bd8:	200001ac 	.word	0x200001ac

00001bdc <main>:
			break;	
		}
	}//while
}

void main(void){
    1bdc:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1be0:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1be2:	4ac0      	ldr	r2, [pc, #768]	; (1ee4 <main+0x308>)
    1be4:	6813      	ldr	r3, [r2, #0]
    1be6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1bea:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1bec:	4613      	mov	r3, r2
    1bee:	681a      	ldr	r2, [r3, #0]
    1bf0:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1bf4:	d0fb      	beq.n	1bee <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1bf6:	4bbb      	ldr	r3, [pc, #748]	; (1ee4 <main+0x308>)
    1bf8:	685a      	ldr	r2, [r3, #4]
    1bfa:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1bfe:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1c00:	681a      	ldr	r2, [r3, #0]
    1c02:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1c06:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1c08:	681a      	ldr	r2, [r3, #0]
    1c0a:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1c0e:	d0fb      	beq.n	1c08 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1c10:	4ab5      	ldr	r2, [pc, #724]	; (1ee8 <main+0x30c>)
    1c12:	6813      	ldr	r3, [r2, #0]
    1c14:	f043 0312 	orr.w	r3, r3, #18
    1c18:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1c1a:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1c1e:	6853      	ldr	r3, [r2, #4]
    1c20:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1c24:	f043 0302 	orr.w	r3, r3, #2
    1c28:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1c2a:	f640 031d 	movw	r3, #2077	; 0x81d
    1c2e:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1c30:	4cae      	ldr	r4, [pc, #696]	; (1eec <main+0x310>)
    1c32:	2206      	movs	r2, #6
    1c34:	210d      	movs	r1, #13
    1c36:	4620      	mov	r0, r4
    1c38:	f7ff fcaa 	bl	1590 <config_pin>
	_led_off();
    1c3c:	68e3      	ldr	r3, [r4, #12]
    1c3e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1c42:	60e3      	str	r3, [r4, #12]
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1c44:	2400      	movs	r4, #0
    1c46:	9401      	str	r4, [sp, #4]
    1c48:	2301      	movs	r3, #1
    1c4a:	9300      	str	r3, [sp, #0]
    1c4c:	2303      	movs	r3, #3
    1c4e:	4622      	mov	r2, r4
    1c50:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1c54:	4620      	mov	r0, r4
    1c56:	f001 fced 	bl	3634 <usart_open_channel>
	gamepad_init();
    1c5a:	f7ff fa77 	bl	114c <gamepad_init>
	tvout_init();
    1c5e:	f001 f9e1 	bl	3024 <tvout_init>
	sound_init();
    1c62:	f000 fe43 	bl	28ec <sound_init>
	gfx_cls();
    1c66:	f7ff fd49 	bl	16fc <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1c6a:	f001 fc2b 	bl	34c4 <get_video_params>
	display_menu();
    1c6e:	f7ff fedd 	bl	1a2c <display_menu>
	int i=0;
    1c72:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1c74:	4b9e      	ldr	r3, [pc, #632]	; (1ef0 <main+0x314>)
    1c76:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1c7a:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1c7e:	9304      	str	r3, [sp, #16]
    1c80:	e186      	b.n	1f90 <main+0x3b4>
			if (i<(MENU_ITEMS-1)) i++;
    1c82:	f1ba 0f03 	cmp.w	sl, #3
    1c86:	f300 8183 	bgt.w	1f90 <main+0x3b4>
    1c8a:	f10a 0a01 	add.w	sl, sl, #1
    1c8e:	e17f      	b.n	1f90 <main+0x3b4>
			switch(i){
    1c90:	f1ba 0f04 	cmp.w	sl, #4
    1c94:	f200 817a 	bhi.w	1f8c <main+0x3b0>
    1c98:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1c9c:	00cd0005 	.word	0x00cd0005
    1ca0:	01aa010c 	.word	0x01aa010c
    1ca4:	01e6      	.short	0x01e6
	count=games_count();
    1ca6:	f7ff fb01 	bl	12ac <games_count>
    1caa:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1cac:	2000      	movs	r0, #0
    1cae:	f001 fbdf 	bl	3470 <set_video_mode>
	vparams=get_video_params();
    1cb2:	f001 fc07 	bl	34c4 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1cb6:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1cba:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1cbe:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1cc0:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1cc4:	454e      	cmp	r6, r9
    1cc6:	bfda      	itte	le
    1cc8:	eba9 0806 	suble.w	r8, r9, r6
    1ccc:	f108 0801 	addle.w	r8, r8, #1
    1cd0:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1cd2:	2100      	movs	r1, #0
    1cd4:	4608      	mov	r0, r1
    1cd6:	f001 f8a9 	bl	2e2c <set_cursor>
	print(" ********** GAMES **********");
    1cda:	4886      	ldr	r0, [pc, #536]	; (1ef4 <main+0x318>)
    1cdc:	f001 f8da 	bl	2e94 <print>
	while ((r<rows) && games_list[first].size){
    1ce0:	f1bb 0f01 	cmp.w	fp, #1
    1ce4:	d92d      	bls.n	1d42 <main+0x166>
    1ce6:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1cea:	4a83      	ldr	r2, [pc, #524]	; (1ef8 <main+0x31c>)
    1cec:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1cf0:	691b      	ldr	r3, [r3, #16]
    1cf2:	b333      	cbz	r3, 1d42 <main+0x166>
    1cf4:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1cf8:	1c53      	adds	r3, r2, #1
    1cfa:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1cfe:	2501      	movs	r5, #1
		put_char(' ');
    1d00:	2720      	movs	r7, #32
		new_line();
    1d02:	f000 ffe1 	bl	2cc8 <new_line>
		clear_line();
    1d06:	f001 f95d 	bl	2fc4 <clear_line>
		put_char(' ');
    1d0a:	4638      	mov	r0, r7
    1d0c:	f001 f824 	bl	2d58 <put_char>
		print(games_list[first].name);
    1d10:	4620      	mov	r0, r4
    1d12:	f001 f8bf 	bl	2e94 <print>
		line=get_cursor()&0xff;
    1d16:	f001 f88f 	bl	2e38 <get_cursor>
		set_cursor(90,line);
    1d1a:	b2c1      	uxtb	r1, r0
    1d1c:	205a      	movs	r0, #90	; 0x5a
    1d1e:	f001 f885 	bl	2e2c <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1d22:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1d26:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1d28:	bf0c      	ite	eq
    1d2a:	4874      	ldreq	r0, [pc, #464]	; (1efc <main+0x320>)
			print("(BPCHIP)");
    1d2c:	4874      	ldrne	r0, [pc, #464]	; (1f00 <main+0x324>)
    1d2e:	f001 f8b1 	bl	2e94 <print>
		r++;
    1d32:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1d34:	42ae      	cmp	r6, r5
    1d36:	d004      	beq.n	1d42 <main+0x166>
    1d38:	341c      	adds	r4, #28
    1d3a:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1d3e:	2b00      	cmp	r3, #0
    1d40:	d1df      	bne.n	1d02 <main+0x126>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1d42:	eba9 0108 	sub.w	r1, r9, r8
    1d46:	00c9      	lsls	r1, r1, #3
    1d48:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d4c:	2000      	movs	r0, #0
    1d4e:	f001 f86d 	bl	2e2c <set_cursor>
		put_char('>');
    1d52:	203e      	movs	r0, #62	; 0x3e
    1d54:	f001 f800 	bl	2d58 <put_char>
		btn=btn_wait_any();
    1d58:	f7ff fa6e 	bl	1238 <btn_wait_any>
    1d5c:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1d5e:	f7ff fa57 	bl	1210 <btn_wait_up>
		switch(btn){
    1d62:	2c04      	cmp	r4, #4
    1d64:	d053      	beq.n	1e0e <main+0x232>
    1d66:	d943      	bls.n	1df0 <main+0x214>
    1d68:	2c40      	cmp	r4, #64	; 0x40
    1d6a:	d057      	beq.n	1e1c <main+0x240>
    1d6c:	2c80      	cmp	r4, #128	; 0x80
    1d6e:	f000 810d 	beq.w	1f8c <main+0x3b0>
    1d72:	2c20      	cmp	r4, #32
    1d74:	d1a6      	bne.n	1cc4 <main+0xe8>
	run_game(selected-1);
    1d76:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1d7a:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1d7e:	4b5e      	ldr	r3, [pc, #376]	; (1ef8 <main+0x31c>)
    1d80:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1d84:	2b01      	cmp	r3, #1
    1d86:	bf14      	ite	ne
    1d88:	2600      	movne	r6, #0
    1d8a:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1d8e:	4f5a      	ldr	r7, [pc, #360]	; (1ef8 <main+0x31c>)
    1d90:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1d94:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1d98:	6922      	ldr	r2, [r4, #16]
    1d9a:	495a      	ldr	r1, [pc, #360]	; (1f04 <main+0x328>)
    1d9c:	4431      	add	r1, r6
    1d9e:	6960      	ldr	r0, [r4, #20]
    1da0:	f7ff fb37 	bl	1412 <move>
	set_keymap(games_list[idx].keymap);
    1da4:	69a0      	ldr	r0, [r4, #24]
    1da6:	f7ff f9c5 	bl	1134 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1daa:	eba5 0909 	sub.w	r9, r5, r9
    1dae:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1db2:	f001 fb5d 	bl	3470 <set_video_mode>
	exit_code=chip_vm(addr,debug_level);
    1db6:	4b54      	ldr	r3, [pc, #336]	; (1f08 <main+0x32c>)
    1db8:	7819      	ldrb	r1, [r3, #0]
    1dba:	4630      	mov	r0, r6
    1dbc:	f7fe fb26 	bl	40c <chip_vm>
    1dc0:	4604      	mov	r4, r0
	print("exit code: ");
    1dc2:	4852      	ldr	r0, [pc, #328]	; (1f0c <main+0x330>)
    1dc4:	f001 f866 	bl	2e94 <print>
	switch(exit_code){
    1dc8:	2c01      	cmp	r4, #1
    1dca:	d02a      	beq.n	1e22 <main+0x246>
    1dcc:	b374      	cbz	r4, 1e2c <main+0x250>
    1dce:	2c03      	cmp	r4, #3
    1dd0:	d82c      	bhi.n	1e2c <main+0x250>
		select_console(SERIAL);
    1dd2:	2001      	movs	r0, #1
    1dd4:	f001 f918 	bl	3008 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1dd8:	4621      	mov	r1, r4
    1dda:	484d      	ldr	r0, [pc, #308]	; (1f10 <main+0x334>)
    1ddc:	f7fe faa6 	bl	32c <print_vms>
		select_console(LOCAL);
    1de0:	2000      	movs	r0, #0
    1de2:	f001 f911 	bl	3008 <select_console>
		btn_wait_any();
    1de6:	f7ff fa27 	bl	1238 <btn_wait_any>
		i=1;
    1dea:	2301      	movs	r3, #1
    1dec:	9305      	str	r3, [sp, #20]
    1dee:	e01d      	b.n	1e2c <main+0x250>
		switch(btn){
    1df0:	2c01      	cmp	r4, #1
    1df2:	d009      	beq.n	1e08 <main+0x22c>
    1df4:	2c02      	cmp	r4, #2
    1df6:	f47f af65 	bne.w	1cc4 <main+0xe8>
			if (selected>1) selected--;
    1dfa:	f1b9 0f01 	cmp.w	r9, #1
    1dfe:	f77f af61 	ble.w	1cc4 <main+0xe8>
    1e02:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1e06:	e75d      	b.n	1cc4 <main+0xe8>
			selected=1;
    1e08:	f04f 0901 	mov.w	r9, #1
    1e0c:	e75a      	b.n	1cc4 <main+0xe8>
			if (selected<count){
    1e0e:	9b03      	ldr	r3, [sp, #12]
    1e10:	454b      	cmp	r3, r9
    1e12:	f77f af57 	ble.w	1cc4 <main+0xe8>
				selected++;
    1e16:	f109 0901 	add.w	r9, r9, #1
    1e1a:	e753      	b.n	1cc4 <main+0xe8>
			selected=count;
    1e1c:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1e20:	e750      	b.n	1cc4 <main+0xe8>
		print("CHIP EXIT OK");
    1e22:	483c      	ldr	r0, [pc, #240]	; (1f14 <main+0x338>)
    1e24:	f001 f836 	bl	2e94 <print>
		i=0;
    1e28:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1e2c:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1e30:	f001 fb52 	bl	34d8 <game_pause>
    1e34:	e0aa      	b.n	1f8c <main+0x3b0>
	gfx_cls();
    1e36:	f7ff fc61 	bl	16fc <gfx_cls>
	print(" **** VM debug support ****\n");
    1e3a:	4837      	ldr	r0, [pc, #220]	; (1f18 <main+0x33c>)
    1e3c:	f001 f82a 	bl	2e94 <print>
	print(" No debug support\n");
    1e40:	4836      	ldr	r0, [pc, #216]	; (1f1c <main+0x340>)
    1e42:	f001 f827 	bl	2e94 <print>
	print(" Print PC and OPCODE\n");
    1e46:	4836      	ldr	r0, [pc, #216]	; (1f20 <main+0x344>)
    1e48:	f001 f824 	bl	2e94 <print>
	print(" Print all VM states.\n");
    1e4c:	4835      	ldr	r0, [pc, #212]	; (1f24 <main+0x348>)
    1e4e:	f001 f821 	bl	2e94 <print>
	print(" Single step\n");
    1e52:	4835      	ldr	r0, [pc, #212]	; (1f28 <main+0x34c>)
    1e54:	f001 f81e 	bl	2e94 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e58:	4c2b      	ldr	r4, [pc, #172]	; (1f08 <main+0x32c>)
    1e5a:	2500      	movs	r5, #0
		put_char('*');
    1e5c:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e5e:	7821      	ldrb	r1, [r4, #0]
    1e60:	3101      	adds	r1, #1
    1e62:	00c9      	lsls	r1, r1, #3
    1e64:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1e68:	4628      	mov	r0, r5
    1e6a:	f000 ffdf 	bl	2e2c <set_cursor>
		put_char('*');
    1e6e:	4630      	mov	r0, r6
    1e70:	f000 ff72 	bl	2d58 <put_char>
		btn=btn_wait_any();
    1e74:	f7ff f9e0 	bl	1238 <btn_wait_any>
    1e78:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e7a:	7821      	ldrb	r1, [r4, #0]
    1e7c:	3101      	adds	r1, #1
    1e7e:	00c9      	lsls	r1, r1, #3
    1e80:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1e84:	4628      	mov	r0, r5
    1e86:	f000 ffd1 	bl	2e2c <set_cursor>
		put_char(' ');
    1e8a:	2020      	movs	r0, #32
    1e8c:	f000 ff64 	bl	2d58 <put_char>
		switch(btn){
    1e90:	2f04      	cmp	r7, #4
    1e92:	d009      	beq.n	1ea8 <main+0x2cc>
    1e94:	2f20      	cmp	r7, #32
    1e96:	d079      	beq.n	1f8c <main+0x3b0>
    1e98:	2f02      	cmp	r7, #2
    1e9a:	d1e0      	bne.n	1e5e <main+0x282>
			if (debug_level) debug_level--;
    1e9c:	7823      	ldrb	r3, [r4, #0]
    1e9e:	2b00      	cmp	r3, #0
    1ea0:	d0dd      	beq.n	1e5e <main+0x282>
    1ea2:	3b01      	subs	r3, #1
    1ea4:	7023      	strb	r3, [r4, #0]
    1ea6:	e7da      	b.n	1e5e <main+0x282>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1ea8:	7823      	ldrb	r3, [r4, #0]
    1eaa:	2b02      	cmp	r3, #2
    1eac:	d8d7      	bhi.n	1e5e <main+0x282>
    1eae:	3301      	adds	r3, #1
    1eb0:	7023      	strb	r3, [r4, #0]
    1eb2:	e7d4      	b.n	1e5e <main+0x282>
	set_video_mode(p);
    1eb4:	2000      	movs	r0, #0
    1eb6:	f001 fadb 	bl	3470 <set_video_mode>
	color_bars();
    1eba:	f7ff fd5f 	bl	197c <color_bars>
	vertical_bars();
    1ebe:	f7ff fd82 	bl	19c6 <vertical_bars>
	horiz_bars();
    1ec2:	f7ff fd9a 	bl	19fa <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1ec6:	2110      	movs	r1, #16
    1ec8:	4818      	ldr	r0, [pc, #96]	; (1f2c <main+0x350>)
    1eca:	f000 fffe 	bl	2eca <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1ece:	210a      	movs	r1, #10
    1ed0:	9804      	ldr	r0, [sp, #16]
    1ed2:	f000 fffa 	bl	2eca <print_int>
	init_balls();
    1ed6:	f7ff fe43 	bl	1b60 <init_balls>
	p=0;
    1eda:	2400      	movs	r4, #0
				print("BPCHIP mode\n180x112 16 colors");
    1edc:	4f14      	ldr	r7, [pc, #80]	; (1f30 <main+0x354>)
				sprite_bpp=TWO_BPP;
    1ede:	4e15      	ldr	r6, [pc, #84]	; (1f34 <main+0x358>)
				print("SCHIP mode\n128x64 mono");
    1ee0:	4d15      	ldr	r5, [pc, #84]	; (1f38 <main+0x35c>)
    1ee2:	e03d      	b.n	1f60 <main+0x384>
    1ee4:	40021000 	.word	0x40021000
    1ee8:	40022000 	.word	0x40022000
    1eec:	40011000 	.word	0x40011000
    1ef0:	20004e80 	.word	0x20004e80
    1ef4:	00003e98 	.word	0x00003e98
    1ef8:	20000004 	.word	0x20000004
    1efc:	00003eb8 	.word	0x00003eb8
    1f00:	00003ec0 	.word	0x00003ec0
    1f04:	200006e4 	.word	0x200006e4
    1f08:	200026e8 	.word	0x200026e8
    1f0c:	00003ecc 	.word	0x00003ecc
    1f10:	00003ee8 	.word	0x00003ee8
    1f14:	00003ed8 	.word	0x00003ed8
    1f18:	00003ef8 	.word	0x00003ef8
    1f1c:	00003f18 	.word	0x00003f18
    1f20:	00003f2c 	.word	0x00003f2c
    1f24:	00003f44 	.word	0x00003f44
    1f28:	00003f5c 	.word	0x00003f5c
    1f2c:	00004400 	.word	0x00004400
    1f30:	00003f6c 	.word	0x00003f6c
    1f34:	200001ac 	.word	0x200001ac
    1f38:	00003f8c 	.word	0x00003f8c
			p^=1;
    1f3c:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1f40:	4620      	mov	r0, r4
    1f42:	f001 fa95 	bl	3470 <set_video_mode>
			switch(p){
    1f46:	2c00      	cmp	r4, #0
    1f48:	d046      	beq.n	1fd8 <main+0x3fc>
    1f4a:	2c01      	cmp	r4, #1
    1f4c:	d04c      	beq.n	1fe8 <main+0x40c>
			vertical_bars();
    1f4e:	f7ff fd3a 	bl	19c6 <vertical_bars>
			horiz_bars();
    1f52:	f7ff fd52 	bl	19fa <horiz_bars>
			init_balls();
    1f56:	f7ff fe03 	bl	1b60 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1f5a:	2010      	movs	r0, #16
    1f5c:	f7ff f958 	bl	1210 <btn_wait_up>
		draw_balls();
    1f60:	f7ff fd82 	bl	1a68 <draw_balls>
		draw_balls();
    1f64:	f7ff fd80 	bl	1a68 <draw_balls>
		move_balls();
    1f68:	f7ff fdb9 	bl	1ade <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1f6c:	2010      	movs	r0, #16
    1f6e:	f7ff f92f 	bl	11d0 <btn_query_down>
    1f72:	2800      	cmp	r0, #0
    1f74:	d1e2      	bne.n	1f3c <main+0x360>
		}else if (btn_query_down(KEY_B)){
    1f76:	2020      	movs	r0, #32
    1f78:	f7ff f92a 	bl	11d0 <btn_query_down>
    1f7c:	2800      	cmp	r0, #0
    1f7e:	d0ef      	beq.n	1f60 <main+0x384>
			btn_wait_up(KEY_B);
    1f80:	2020      	movs	r0, #32
    1f82:	f7ff f945 	bl	1210 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1f86:	2000      	movs	r0, #0
    1f88:	f001 fa72 	bl	3470 <set_video_mode>
			display_menu();
    1f8c:	f7ff fd4e 	bl	1a2c <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1f90:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1f94:	b2e4      	uxtb	r4, r4
    1f96:	4621      	mov	r1, r4
    1f98:	2000      	movs	r0, #0
    1f9a:	f000 ff47 	bl	2e2c <set_cursor>
		put_char('>');
    1f9e:	203e      	movs	r0, #62	; 0x3e
    1fa0:	f000 feda 	bl	2d58 <put_char>
		btn=btn_wait_any();
    1fa4:	f7ff f948 	bl	1238 <btn_wait_any>
    1fa8:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1faa:	f7ff f931 	bl	1210 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1fae:	4621      	mov	r1, r4
    1fb0:	2000      	movs	r0, #0
    1fb2:	f000 ff3b 	bl	2e2c <set_cursor>
		put_char(' ');
    1fb6:	2020      	movs	r0, #32
    1fb8:	f000 fece 	bl	2d58 <put_char>
		switch(btn){
    1fbc:	2d04      	cmp	r5, #4
    1fbe:	f43f ae60 	beq.w	1c82 <main+0xa6>
    1fc2:	2d20      	cmp	r5, #32
    1fc4:	f43f ae64 	beq.w	1c90 <main+0xb4>
    1fc8:	2d02      	cmp	r5, #2
    1fca:	d1e1      	bne.n	1f90 <main+0x3b4>
			if (i) i--;
    1fcc:	f1ba 0f00 	cmp.w	sl, #0
    1fd0:	d0de      	beq.n	1f90 <main+0x3b4>
    1fd2:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1fd6:	e7db      	b.n	1f90 <main+0x3b4>
				print("BPCHIP mode\n180x112 16 colors");
    1fd8:	4638      	mov	r0, r7
    1fda:	f000 ff5b 	bl	2e94 <print>
				color_bars();
    1fde:	f7ff fccd 	bl	197c <color_bars>
				sprite_bpp=TWO_BPP;
    1fe2:	2301      	movs	r3, #1
    1fe4:	7033      	strb	r3, [r6, #0]
    1fe6:	e7b2      	b.n	1f4e <main+0x372>
				print("SCHIP mode\n128x64 mono");
    1fe8:	4628      	mov	r0, r5
    1fea:	f000 ff53 	bl	2e94 <print>
    1fee:	e7ae      	b.n	1f4e <main+0x372>
	gfx_cls();
    1ff0:	f7ff fb84 	bl	16fc <gfx_cls>
	print("press buttons\n");
    1ff4:	4828      	ldr	r0, [pc, #160]	; (2098 <main+0x4bc>)
    1ff6:	f000 ff4d 	bl	2e94 <print>
		tone(freq,30);
    1ffa:	251e      	movs	r5, #30
			freq=493;
    1ffc:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    2000:	f240 266e 	movw	r6, #622	; 0x26e
    2004:	e019      	b.n	203a <main+0x45e>
		switch(key){
    2006:	2802      	cmp	r0, #2
    2008:	d03f      	beq.n	208a <main+0x4ae>
    200a:	2804      	cmp	r0, #4
    200c:	d00e      	beq.n	202c <main+0x450>
    200e:	2801      	cmp	r0, #1
    2010:	d024      	beq.n	205c <main+0x480>
		tone(freq,30);
    2012:	4629      	mov	r1, r5
    2014:	9802      	ldr	r0, [sp, #8]
    2016:	f000 fc95 	bl	2944 <tone>
	while (key!=KEY_B){
    201a:	2c20      	cmp	r4, #32
    201c:	d10d      	bne.n	203a <main+0x45e>
    201e:	e02b      	b.n	2078 <main+0x49c>
		switch(key){
    2020:	2810      	cmp	r0, #16
    2022:	d1f6      	bne.n	2012 <main+0x436>
			freq=523;
    2024:	f240 230b 	movw	r3, #523	; 0x20b
    2028:	9302      	str	r3, [sp, #8]
    202a:	e002      	b.n	2032 <main+0x456>
			freq=466;
    202c:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2030:	9302      	str	r3, [sp, #8]
		tone(freq,30);
    2032:	4629      	mov	r1, r5
    2034:	9802      	ldr	r0, [sp, #8]
    2036:	f000 fc85 	bl	2944 <tone>
		key=btn_wait_any();
    203a:	f7ff f8fd 	bl	1238 <btn_wait_any>
    203e:	4604      	mov	r4, r0
		switch(key){
    2040:	2808      	cmp	r0, #8
    2042:	d026      	beq.n	2092 <main+0x4b6>
    2044:	d9df      	bls.n	2006 <main+0x42a>
    2046:	2820      	cmp	r0, #32
    2048:	d011      	beq.n	206e <main+0x492>
    204a:	d9e9      	bls.n	2020 <main+0x444>
    204c:	2840      	cmp	r0, #64	; 0x40
    204e:	d009      	beq.n	2064 <main+0x488>
    2050:	2880      	cmp	r0, #128	; 0x80
    2052:	d1de      	bne.n	2012 <main+0x436>
			freq=659;
    2054:	f240 2393 	movw	r3, #659	; 0x293
    2058:	9302      	str	r3, [sp, #8]
    205a:	e7ea      	b.n	2032 <main+0x456>
			freq=554;
    205c:	f240 232a 	movw	r3, #554	; 0x22a
    2060:	9302      	str	r3, [sp, #8]
    2062:	e7e6      	b.n	2032 <main+0x456>
			freq=622;
    2064:	9602      	str	r6, [sp, #8]
    2066:	e7e4      	b.n	2032 <main+0x456>
				basic();
    2068:	f7fe f906 	bl	278 <basic>
    206c:	e78e      	b.n	1f8c <main+0x3b0>
		tone(freq,30);
    206e:	211e      	movs	r1, #30
    2070:	f240 204b 	movw	r0, #587	; 0x24b
    2074:	f000 fc66 	bl	2944 <tone>
	noise(30);
    2078:	201e      	movs	r0, #30
    207a:	f000 fc9d 	bl	29b8 <noise>
	while(sound_timer);
    207e:	4a07      	ldr	r2, [pc, #28]	; (209c <main+0x4c0>)
    2080:	8813      	ldrh	r3, [r2, #0]
    2082:	b29b      	uxth	r3, r3
    2084:	2b00      	cmp	r3, #0
    2086:	d1fb      	bne.n	2080 <main+0x4a4>
    2088:	e780      	b.n	1f8c <main+0x3b0>
			freq=440;
    208a:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    208e:	9302      	str	r3, [sp, #8]
    2090:	e7cf      	b.n	2032 <main+0x456>
			freq=493;
    2092:	9702      	str	r7, [sp, #8]
    2094:	e7cd      	b.n	2032 <main+0x456>
    2096:	bf00      	nop
    2098:	00003fa4 	.word	0x00003fa4
    209c:	20004e7c 	.word	0x20004e7c

000020a0 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20a0:	283b      	cmp	r0, #59	; 0x3b
    20a2:	dc0d      	bgt.n	20c0 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    20a4:	1143      	asrs	r3, r0, #5
    20a6:	009b      	lsls	r3, r3, #2
    20a8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    20ac:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    20b0:	6819      	ldr	r1, [r3, #0]
    20b2:	f000 001f 	and.w	r0, r0, #31
    20b6:	2201      	movs	r2, #1
    20b8:	fa02 f000 	lsl.w	r0, r2, r0
    20bc:	4308      	orrs	r0, r1
    20be:	6018      	str	r0, [r3, #0]
    20c0:	4770      	bx	lr

000020c2 <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20c2:	283b      	cmp	r0, #59	; 0x3b
    20c4:	dc08      	bgt.n	20d8 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    20c6:	1142      	asrs	r2, r0, #5
    20c8:	f000 001f 	and.w	r0, r0, #31
    20cc:	2301      	movs	r3, #1
    20ce:	fa03 f000 	lsl.w	r0, r3, r0
    20d2:	4b02      	ldr	r3, [pc, #8]	; (20dc <disable_interrupt+0x1a>)
    20d4:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    20d8:	4770      	bx	lr
    20da:	bf00      	nop
    20dc:	e000e180 	.word	0xe000e180

000020e0 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    20e0:	283b      	cmp	r0, #59	; 0x3b
    20e2:	dc09      	bgt.n	20f8 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    20e4:	1142      	asrs	r2, r0, #5
    20e6:	4b05      	ldr	r3, [pc, #20]	; (20fc <get_pending+0x1c>)
    20e8:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    20ec:	f000 031f 	and.w	r3, r0, #31
    20f0:	2001      	movs	r0, #1
    20f2:	4098      	lsls	r0, r3
    20f4:	4010      	ands	r0, r2
    20f6:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    20f8:	2000      	movs	r0, #0
}
    20fa:	4770      	bx	lr
    20fc:	e000e280 	.word	0xe000e280

00002100 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    2100:	283b      	cmp	r0, #59	; 0x3b
    2102:	dc0c      	bgt.n	211e <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    2104:	1143      	asrs	r3, r0, #5
    2106:	009b      	lsls	r3, r3, #2
    2108:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    210c:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2110:	681a      	ldr	r2, [r3, #0]
    2112:	f000 031f 	and.w	r3, r0, #31
    2116:	2001      	movs	r0, #1
    2118:	4098      	lsls	r0, r3
    211a:	4010      	ands	r0, r2
    211c:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    211e:	2000      	movs	r0, #0
}
    2120:	4770      	bx	lr

00002122 <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    2122:	283b      	cmp	r0, #59	; 0x3b
    2124:	dc0d      	bgt.n	2142 <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    2126:	1143      	asrs	r3, r0, #5
    2128:	009b      	lsls	r3, r3, #2
    212a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    212e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2132:	6819      	ldr	r1, [r3, #0]
    2134:	f000 001f 	and.w	r0, r0, #31
    2138:	2201      	movs	r2, #1
    213a:	fa02 f000 	lsl.w	r0, r2, r0
    213e:	4308      	orrs	r0, r1
    2140:	6018      	str	r0, [r3, #0]
    2142:	4770      	bx	lr

00002144 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2144:	283b      	cmp	r0, #59	; 0x3b
    2146:	dc08      	bgt.n	215a <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    2148:	1142      	asrs	r2, r0, #5
    214a:	f000 001f 	and.w	r0, r0, #31
    214e:	2301      	movs	r3, #1
    2150:	fa03 f000 	lsl.w	r0, r3, r0
    2154:	4b01      	ldr	r3, [pc, #4]	; (215c <clear_pending+0x18>)
    2156:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    215a:	4770      	bx	lr
    215c:	e000e280 	.word	0xe000e280

00002160 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    2160:	283b      	cmp	r0, #59	; 0x3b
    2162:	d90c      	bls.n	217e <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2164:	f100 030f 	add.w	r3, r0, #15
    2168:	2b0e      	cmp	r3, #14
    216a:	d807      	bhi.n	217c <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    216c:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    2170:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2174:	30fc      	adds	r0, #252	; 0xfc
    2176:	0109      	lsls	r1, r1, #4
    2178:	4b04      	ldr	r3, [pc, #16]	; (218c <set_int_priority+0x2c>)
    217a:	54c1      	strb	r1, [r0, r3]
    217c:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    217e:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    2182:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    2186:	0109      	lsls	r1, r1, #4
    2188:	7001      	strb	r1, [r0, #0]
    218a:	4770      	bx	lr
    218c:	e000ed18 	.word	0xe000ed18

00002190 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    2190:	f010 0f03 	tst.w	r0, #3
    2194:	d113      	bne.n	21be <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    2196:	4b0c      	ldr	r3, [pc, #48]	; (21c8 <leap_year+0x38>)
    2198:	fba3 2300 	umull	r2, r3, r3, r0
    219c:	095b      	lsrs	r3, r3, #5
    219e:	2264      	movs	r2, #100	; 0x64
    21a0:	fb02 0313 	mls	r3, r2, r3, r0
    21a4:	b96b      	cbnz	r3, 21c2 <leap_year+0x32>
    21a6:	4b08      	ldr	r3, [pc, #32]	; (21c8 <leap_year+0x38>)
    21a8:	fba3 2300 	umull	r2, r3, r3, r0
    21ac:	09db      	lsrs	r3, r3, #7
    21ae:	f44f 72c8 	mov.w	r2, #400	; 0x190
    21b2:	fb02 0013 	mls	r0, r2, r3, r0
    21b6:	fab0 f080 	clz	r0, r0
    21ba:	0940      	lsrs	r0, r0, #5
    21bc:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    21be:	2000      	movs	r0, #0
    21c0:	4770      	bx	lr
		return 1;
    21c2:	2001      	movs	r0, #1
}
    21c4:	4770      	bx	lr
    21c6:	bf00      	nop
    21c8:	51eb851f 	.word	0x51eb851f

000021cc <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    21cc:	4b07      	ldr	r3, [pc, #28]	; (21ec <sec_per_month+0x20>)
    21ce:	5c5a      	ldrb	r2, [r3, r1]
    21d0:	4b07      	ldr	r3, [pc, #28]	; (21f0 <sec_per_month+0x24>)
    21d2:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    21d6:	2902      	cmp	r1, #2
    21d8:	d001      	beq.n	21de <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    21da:	4618      	mov	r0, r3
    21dc:	4770      	bx	lr
	if (month==2 && leap){
    21de:	2800      	cmp	r0, #0
    21e0:	d0fb      	beq.n	21da <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    21e2:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    21e6:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    21ea:	e7f6      	b.n	21da <sec_per_month+0xe>
    21ec:	00003d58 	.word	0x00003d58
    21f0:	00015180 	.word	0x00015180

000021f4 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    21f4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    21f8:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    21fa:	4b37      	ldr	r3, [pc, #220]	; (22d8 <get_date_time+0xe4>)
    21fc:	699a      	ldr	r2, [r3, #24]
    21fe:	69dc      	ldr	r4, [r3, #28]
    2200:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    2204:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2208:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    220a:	f7ff ffc1 	bl	2190 <leap_year>
    220e:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2210:	4d32      	ldr	r5, [pc, #200]	; (22dc <get_date_time+0xe8>)
    2212:	4f33      	ldr	r7, [pc, #204]	; (22e0 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    2214:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 22f4 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2218:	e00e      	b.n	2238 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    221a:	4444      	add	r4, r8
    221c:	e005      	b.n	222a <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    221e:	42ac      	cmp	r4, r5
    2220:	d90f      	bls.n	2242 <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    2222:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    2226:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    222a:	8930      	ldrh	r0, [r6, #8]
    222c:	3001      	adds	r0, #1
    222e:	b280      	uxth	r0, r0
    2230:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    2232:	f7ff ffad 	bl	2190 <leap_year>
    2236:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2238:	f1b9 0f00 	cmp.w	r9, #0
    223c:	d1ef      	bne.n	221e <get_date_time+0x2a>
    223e:	42bc      	cmp	r4, r7
    2240:	d8eb      	bhi.n	221a <get_date_time+0x26>
	}//while
	dt->month=1;
    2242:	8873      	ldrh	r3, [r6, #2]
    2244:	2201      	movs	r2, #1
    2246:	f362 1389 	bfi	r3, r2, #6, #4
    224a:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    224c:	f362 0345 	bfi	r3, r2, #1, #5
    2250:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    2252:	6833      	ldr	r3, [r6, #0]
    2254:	f36f 3310 	bfc	r3, #12, #5
    2258:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    225a:	f36f 138b 	bfc	r3, #6, #6
    225e:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    2260:	f36f 0305 	bfc	r3, #0, #6
    2264:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2266:	e005      	b.n	2274 <get_date_time+0x80>
		dt->month++;
    2268:	3501      	adds	r5, #1
    226a:	8873      	ldrh	r3, [r6, #2]
    226c:	f365 1389 	bfi	r3, r5, #6, #4
    2270:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    2272:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2274:	8875      	ldrh	r5, [r6, #2]
    2276:	f3c5 1583 	ubfx	r5, r5, #6, #4
    227a:	4629      	mov	r1, r5
    227c:	4648      	mov	r0, r9
    227e:	f7ff ffa5 	bl	21cc <sec_per_month>
    2282:	4284      	cmp	r4, r0
    2284:	d8f0      	bhi.n	2268 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    2286:	4a17      	ldr	r2, [pc, #92]	; (22e4 <get_date_time+0xf0>)
    2288:	fba2 3204 	umull	r3, r2, r2, r4
    228c:	0c12      	lsrs	r2, r2, #16
    228e:	1c51      	adds	r1, r2, #1
    2290:	78b3      	ldrb	r3, [r6, #2]
    2292:	f361 0345 	bfi	r3, r1, #1, #5
    2296:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    2298:	4b13      	ldr	r3, [pc, #76]	; (22e8 <get_date_time+0xf4>)
    229a:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    229e:	4c13      	ldr	r4, [pc, #76]	; (22ec <get_date_time+0xf8>)
    22a0:	fba4 3402 	umull	r3, r4, r4, r2
    22a4:	0ae4      	lsrs	r4, r4, #11
    22a6:	6833      	ldr	r3, [r6, #0]
    22a8:	f364 3310 	bfi	r3, r4, #12, #5
    22ac:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    22ae:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    22b2:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    22b6:	4a0e      	ldr	r2, [pc, #56]	; (22f0 <get_date_time+0xfc>)
    22b8:	fba2 1204 	umull	r1, r2, r2, r4
    22bc:	0952      	lsrs	r2, r2, #5
    22be:	f362 138b 	bfi	r3, r2, #6, #6
    22c2:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    22c4:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    22c8:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    22cc:	f364 0305 	bfi	r3, r4, #0, #6
    22d0:	7033      	strb	r3, [r6, #0]
    22d2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    22d6:	bf00      	nop
    22d8:	40002800 	.word	0x40002800
    22dc:	01e284ff 	.word	0x01e284ff
    22e0:	01e1337f 	.word	0x01e1337f
    22e4:	c22e4507 	.word	0xc22e4507
    22e8:	00015180 	.word	0x00015180
    22ec:	91a2b3c5 	.word	0x91a2b3c5
    22f0:	88888889 	.word	0x88888889
    22f4:	fe1ecc80 	.word	0xfe1ecc80

000022f8 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    22f8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    22fc:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    22fe:	8903      	ldrh	r3, [r0, #8]
    2300:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2304:	4293      	cmp	r3, r2
    2306:	d857      	bhi.n	23b8 <set_date_time+0xc0>
    2308:	f240 70b2 	movw	r0, #1970	; 0x7b2
    230c:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    2310:	f7ff ff3e 	bl	2190 <leap_year>
    2314:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    2316:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    2318:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    231c:	f3c6 1683 	ubfx	r6, r6, #6, #4
    2320:	2e01      	cmp	r6, #1
    2322:	d908      	bls.n	2336 <set_date_time+0x3e>
    2324:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    2326:	4629      	mov	r1, r5
    2328:	4638      	mov	r0, r7
    232a:	f7ff ff4f 	bl	21cc <sec_per_month>
    232e:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    2330:	3501      	adds	r5, #1
    2332:	42b5      	cmp	r5, r6
    2334:	d1f7      	bne.n	2326 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    2336:	f8d8 2000 	ldr.w	r2, [r8]
    233a:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    233e:	f8b8 2000 	ldrh.w	r2, [r8]
    2342:	f3c2 1285 	ubfx	r2, r2, #6, #6
    2346:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    234a:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    234c:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2350:	fb01 2203 	mla	r2, r1, r3, r2
    2354:	f898 3000 	ldrb.w	r3, [r8]
    2358:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    235c:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    235e:	f898 3002 	ldrb.w	r3, [r8, #2]
    2362:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2366:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2368:	4928      	ldr	r1, [pc, #160]	; (240c <set_date_time+0x114>)
    236a:	fb01 2303 	mla	r3, r1, r3, r2
    236e:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2370:	4a27      	ldr	r2, [pc, #156]	; (2410 <set_date_time+0x118>)
    2372:	69d3      	ldr	r3, [r2, #28]
    2374:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2378:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    237a:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    237e:	6813      	ldr	r3, [r2, #0]
    2380:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2384:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2386:	4b23      	ldr	r3, [pc, #140]	; (2414 <set_date_time+0x11c>)
    2388:	685a      	ldr	r2, [r3, #4]
    238a:	f042 0210 	orr.w	r2, r2, #16
    238e:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    2390:	0c22      	lsrs	r2, r4, #16
    2392:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    2394:	b2a4      	uxth	r4, r4
    2396:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2398:	685a      	ldr	r2, [r3, #4]
    239a:	f022 0210 	bic.w	r2, r2, #16
    239e:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    23a0:	461a      	mov	r2, r3
    23a2:	6853      	ldr	r3, [r2, #4]
    23a4:	f013 0f20 	tst.w	r3, #32
    23a8:	d0fb      	beq.n	23a2 <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    23aa:	4a1b      	ldr	r2, [pc, #108]	; (2418 <set_date_time+0x120>)
    23ac:	6813      	ldr	r3, [r2, #0]
    23ae:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23b2:	6013      	str	r3, [r2, #0]
    23b4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    23b8:	f640 023a 	movw	r2, #2106	; 0x83a
    23bc:	4293      	cmp	r3, r2
    23be:	d90c      	bls.n	23da <set_date_time+0xe2>
    23c0:	4616      	mov	r6, r2
    23c2:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    23c6:	4610      	mov	r0, r2
    23c8:	f7ff fee2 	bl	2190 <leap_year>
    23cc:	4607      	mov	r7, r0
    23ce:	2400      	movs	r4, #0
    23d0:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    23d4:	f8df 9044 	ldr.w	r9, [pc, #68]	; 241c <set_date_time+0x124>
    23d8:	e00e      	b.n	23f8 <set_date_time+0x100>
	leap=leap_year(dt->year);
    23da:	8906      	ldrh	r6, [r0, #8]
    23dc:	4630      	mov	r0, r6
    23de:	f7ff fed7 	bl	2190 <leap_year>
    23e2:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    23e4:	f240 73b2 	movw	r3, #1970	; 0x7b2
    23e8:	429e      	cmp	r6, r3
    23ea:	d8f0      	bhi.n	23ce <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    23ec:	2400      	movs	r4, #0
    23ee:	e793      	b.n	2318 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    23f0:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    23f2:	3501      	adds	r5, #1
    23f4:	42b5      	cmp	r5, r6
    23f6:	d28f      	bcs.n	2318 <set_date_time+0x20>
		if (leap_year(i)){
    23f8:	4628      	mov	r0, r5
    23fa:	f7ff fec9 	bl	2190 <leap_year>
    23fe:	2800      	cmp	r0, #0
    2400:	d0f6      	beq.n	23f0 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    2402:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    2406:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    240a:	e7f2      	b.n	23f2 <set_date_time+0xfa>
    240c:	00015180 	.word	0x00015180
    2410:	40021000 	.word	0x40021000
    2414:	40002800 	.word	0x40002800
    2418:	40007000 	.word	0x40007000
    241c:	01e13380 	.word	0x01e13380

00002420 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    2420:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    2422:	4b35      	ldr	r3, [pc, #212]	; (24f8 <rtc_init+0xd8>)
    2424:	685a      	ldr	r2, [r3, #4]
    2426:	f64a 2355 	movw	r3, #43605	; 0xaa55
    242a:	429a      	cmp	r2, r3
    242c:	d05c      	beq.n	24e8 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    242e:	4b33      	ldr	r3, [pc, #204]	; (24fc <rtc_init+0xdc>)
    2430:	69da      	ldr	r2, [r3, #28]
    2432:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2436:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2438:	4c31      	ldr	r4, [pc, #196]	; (2500 <rtc_init+0xe0>)
    243a:	6822      	ldr	r2, [r4, #0]
    243c:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2440:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    2442:	6a1a      	ldr	r2, [r3, #32]
    2444:	f042 0201 	orr.w	r2, r2, #1
    2448:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    244a:	461a      	mov	r2, r3
    244c:	6a13      	ldr	r3, [r2, #32]
    244e:	f013 0f02 	tst.w	r3, #2
    2452:	d0fb      	beq.n	244c <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2454:	4a29      	ldr	r2, [pc, #164]	; (24fc <rtc_init+0xdc>)
    2456:	6a13      	ldr	r3, [r2, #32]
    2458:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    245c:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    245e:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2462:	6853      	ldr	r3, [r2, #4]
    2464:	f013 0f08 	tst.w	r3, #8
    2468:	d0fb      	beq.n	2462 <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    246a:	4a26      	ldr	r2, [pc, #152]	; (2504 <rtc_init+0xe4>)
    246c:	6853      	ldr	r3, [r2, #4]
    246e:	f013 0f20 	tst.w	r3, #32
    2472:	d0fb      	beq.n	246c <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2474:	4a23      	ldr	r2, [pc, #140]	; (2504 <rtc_init+0xe4>)
    2476:	6853      	ldr	r3, [r2, #4]
    2478:	f043 0310 	orr.w	r3, r3, #16
    247c:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    247e:	6853      	ldr	r3, [r2, #4]
    2480:	f013 0f20 	tst.w	r3, #32
    2484:	d0fb      	beq.n	247e <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    2486:	4a1f      	ldr	r2, [pc, #124]	; (2504 <rtc_init+0xe4>)
    2488:	6813      	ldr	r3, [r2, #0]
    248a:	4319      	orrs	r1, r3
    248c:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    248e:	6853      	ldr	r3, [r2, #4]
    2490:	f013 0f20 	tst.w	r3, #32
    2494:	d0fb      	beq.n	248e <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    2496:	03c2      	lsls	r2, r0, #15
    2498:	481b      	ldr	r0, [pc, #108]	; (2508 <rtc_init+0xe8>)
    249a:	fba0 3202 	umull	r3, r2, r0, r2
    249e:	0992      	lsrs	r2, r2, #6
    24a0:	3a01      	subs	r2, #1
    24a2:	b291      	uxth	r1, r2
    24a4:	4b17      	ldr	r3, [pc, #92]	; (2504 <rtc_init+0xe4>)
    24a6:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    24a8:	4619      	mov	r1, r3
    24aa:	684b      	ldr	r3, [r1, #4]
    24ac:	f013 0f20 	tst.w	r3, #32
    24b0:	d0fb      	beq.n	24aa <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    24b2:	f3c2 4203 	ubfx	r2, r2, #16, #4
    24b6:	4b13      	ldr	r3, [pc, #76]	; (2504 <rtc_init+0xe4>)
    24b8:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    24ba:	461a      	mov	r2, r3
    24bc:	6853      	ldr	r3, [r2, #4]
    24be:	f013 0f20 	tst.w	r3, #32
    24c2:	d0fb      	beq.n	24bc <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    24c4:	f64a 2255 	movw	r2, #43605	; 0xaa55
    24c8:	4b0b      	ldr	r3, [pc, #44]	; (24f8 <rtc_init+0xd8>)
    24ca:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    24cc:	4a0d      	ldr	r2, [pc, #52]	; (2504 <rtc_init+0xe4>)
    24ce:	6853      	ldr	r3, [r2, #4]
    24d0:	f023 0310 	bic.w	r3, r3, #16
    24d4:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    24d6:	6853      	ldr	r3, [r2, #4]
    24d8:	f013 0f20 	tst.w	r3, #32
    24dc:	d0fb      	beq.n	24d6 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    24de:	4a08      	ldr	r2, [pc, #32]	; (2500 <rtc_init+0xe0>)
    24e0:	6813      	ldr	r3, [r2, #0]
    24e2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    24e6:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    24e8:	210f      	movs	r1, #15
    24ea:	2003      	movs	r0, #3
    24ec:	f7ff fe38 	bl	2160 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    24f0:	2003      	movs	r0, #3
    24f2:	f7ff fdd5 	bl	20a0 <enable_interrupt>
    24f6:	bd10      	pop	{r4, pc}
    24f8:	40006c00 	.word	0x40006c00
    24fc:	40021000 	.word	0x40021000
    2500:	40007000 	.word	0x40007000
    2504:	40002800 	.word	0x40002800
    2508:	10624dd3 	.word	0x10624dd3

0000250c <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    250c:	4b06      	ldr	r3, [pc, #24]	; (2528 <reset_backup_domain+0x1c>)
    250e:	69da      	ldr	r2, [r3, #28]
    2510:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2514:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    2516:	6a1a      	ldr	r2, [r3, #32]
    2518:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    251c:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    251e:	6a1a      	ldr	r2, [r3, #32]
    2520:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    2524:	621a      	str	r2, [r3, #32]
    2526:	4770      	bx	lr
    2528:	40021000 	.word	0x40021000

0000252c <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    252c:	4a27      	ldr	r2, [pc, #156]	; (25cc <rtc_clock_trim+0xa0>)
    252e:	69d3      	ldr	r3, [r2, #28]
    2530:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2534:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    2536:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    253a:	6853      	ldr	r3, [r2, #4]
    253c:	f013 0f08 	tst.w	r3, #8
    2540:	d0fb      	beq.n	253a <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2542:	4a23      	ldr	r2, [pc, #140]	; (25d0 <rtc_clock_trim+0xa4>)
    2544:	6813      	ldr	r3, [r2, #0]
    2546:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    254a:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    254c:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    2550:	6853      	ldr	r3, [r2, #4]
    2552:	f043 0310 	orr.w	r3, r3, #16
    2556:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2558:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    255c:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    255e:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2562:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2564:	b9b8      	cbnz	r0, 2596 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    2566:	2200      	movs	r2, #0
    2568:	4b1a      	ldr	r3, [pc, #104]	; (25d4 <rtc_clock_trim+0xa8>)
    256a:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    256c:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    2570:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2574:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2576:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2578:	4a17      	ldr	r2, [pc, #92]	; (25d8 <rtc_clock_trim+0xac>)
    257a:	6853      	ldr	r3, [r2, #4]
    257c:	f023 0310 	bic.w	r3, r3, #16
    2580:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    2582:	6853      	ldr	r3, [r2, #4]
    2584:	f013 0f20 	tst.w	r3, #32
    2588:	d0fb      	beq.n	2582 <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    258a:	4a11      	ldr	r2, [pc, #68]	; (25d0 <rtc_clock_trim+0xa4>)
    258c:	6813      	ldr	r3, [r2, #0]
    258e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2592:	6013      	str	r3, [r2, #0]
    2594:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    2596:	2800      	cmp	r0, #0
    2598:	dd06      	ble.n	25a8 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    259a:	4b0e      	ldr	r3, [pc, #56]	; (25d4 <rtc_clock_trim+0xa8>)
    259c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    259e:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    25a2:	4310      	orrs	r0, r2
    25a4:	62d8      	str	r0, [r3, #44]	; 0x2c
    25a6:	e7e7      	b.n	2578 <rtc_clock_trim+0x4c>
		trim=-trim;
    25a8:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    25aa:	2100      	movs	r1, #0
    25ac:	4b09      	ldr	r3, [pc, #36]	; (25d4 <rtc_clock_trim+0xa8>)
    25ae:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    25b0:	f64f 73ff 	movw	r3, #65535	; 0xffff
    25b4:	287f      	cmp	r0, #127	; 0x7f
    25b6:	bfd4      	ite	le
    25b8:	1a18      	suble	r0, r3, r0
    25ba:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    25be:	f3c0 000e 	ubfx	r0, r0, #0, #15
    25c2:	4a05      	ldr	r2, [pc, #20]	; (25d8 <rtc_clock_trim+0xac>)
    25c4:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    25c6:	6091      	str	r1, [r2, #8]
    25c8:	e7d6      	b.n	2578 <rtc_clock_trim+0x4c>
    25ca:	bf00      	nop
    25cc:	40021000 	.word	0x40021000
    25d0:	40007000 	.word	0x40007000
    25d4:	40006c00 	.word	0x40006c00
    25d8:	40002800 	.word	0x40002800

000025dc <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    25dc:	4770      	bx	lr

000025de <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    25de:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    25e2:	4607      	mov	r7, r0
    25e4:	4688      	mov	r8, r1
    25e6:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    25e8:	2400      	movs	r4, #0
	i=0;
    25ea:	4626      	mov	r6, r4
	while (digit(date[i])){
    25ec:	e008      	b.n	2600 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    25ee:	3601      	adds	r6, #1
    25f0:	3501      	adds	r5, #1
    25f2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25f6:	f899 3000 	ldrb.w	r3, [r9]
    25fa:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    25fe:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2600:	46a9      	mov	r9, r5
    2602:	7828      	ldrb	r0, [r5, #0]
    2604:	f7fe fe99 	bl	133a <digit>
    2608:	4682      	mov	sl, r0
    260a:	2800      	cmp	r0, #0
    260c:	d1ef      	bne.n	25ee <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    260e:	2e03      	cmp	r6, #3
    2610:	dd02      	ble.n	2618 <str_to_date+0x3a>
    2612:	782b      	ldrb	r3, [r5, #0]
    2614:	2b2f      	cmp	r3, #47	; 0x2f
    2616:	d002      	beq.n	261e <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    2618:	4650      	mov	r0, sl
    261a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    261e:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    2622:	3601      	adds	r6, #1
    2624:	19bd      	adds	r5, r7, r6
	n=0;
    2626:	4604      	mov	r4, r0
	while (digit(date[i])){
    2628:	e008      	b.n	263c <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    262a:	3601      	adds	r6, #1
    262c:	3501      	adds	r5, #1
    262e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2632:	f899 3000 	ldrb.w	r3, [r9]
    2636:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    263a:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    263c:	46a9      	mov	r9, r5
    263e:	7828      	ldrb	r0, [r5, #0]
    2640:	f7fe fe7b 	bl	133a <digit>
    2644:	4682      	mov	sl, r0
    2646:	2800      	cmp	r0, #0
    2648:	d1ef      	bne.n	262a <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    264a:	2e06      	cmp	r6, #6
    264c:	dde4      	ble.n	2618 <str_to_date+0x3a>
    264e:	782b      	ldrb	r3, [r5, #0]
    2650:	2b2f      	cmp	r3, #47	; 0x2f
    2652:	d1e1      	bne.n	2618 <str_to_date+0x3a>
	dt->month=n;
    2654:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2658:	f364 1389 	bfi	r3, r4, #6, #4
    265c:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2660:	1c74      	adds	r4, r6, #1
    2662:	443e      	add	r6, r7
	while (digit(date[i])){
    2664:	e008      	b.n	2678 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    2666:	3401      	adds	r4, #1
    2668:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    266c:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2670:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2674:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2678:	7870      	ldrb	r0, [r6, #1]
    267a:	f7fe fe5e 	bl	133a <digit>
    267e:	2800      	cmp	r0, #0
    2680:	d1f1      	bne.n	2666 <str_to_date+0x88>
	if (i<10) return 0;
    2682:	2c09      	cmp	r4, #9
    2684:	dd08      	ble.n	2698 <str_to_date+0xba>
	dt->day=n;
    2686:	f898 3002 	ldrb.w	r3, [r8, #2]
    268a:	f36a 0345 	bfi	r3, sl, #1, #5
    268e:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    2692:	f04f 0a01 	mov.w	sl, #1
    2696:	e7bf      	b.n	2618 <str_to_date+0x3a>
	if (i<10) return 0;
    2698:	4682      	mov	sl, r0
    269a:	e7bd      	b.n	2618 <str_to_date+0x3a>

0000269c <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    269c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    26a0:	4607      	mov	r7, r0
    26a2:	4688      	mov	r8, r1
    26a4:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    26a6:	2400      	movs	r4, #0
	i=0;
    26a8:	4626      	mov	r6, r4
	while (digit(time[i])){
    26aa:	e00a      	b.n	26c2 <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    26ac:	3601      	adds	r6, #1
    26ae:	3501      	adds	r5, #1
    26b0:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26b4:	0064      	lsls	r4, r4, #1
    26b6:	3c30      	subs	r4, #48	; 0x30
    26b8:	f899 3000 	ldrb.w	r3, [r9]
    26bc:	441c      	add	r4, r3
    26be:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    26c2:	46a9      	mov	r9, r5
    26c4:	7828      	ldrb	r0, [r5, #0]
    26c6:	f7fe fe38 	bl	133a <digit>
    26ca:	4603      	mov	r3, r0
    26cc:	2800      	cmp	r0, #0
    26ce:	d1ed      	bne.n	26ac <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    26d0:	2c17      	cmp	r4, #23
    26d2:	d802      	bhi.n	26da <str_to_time+0x3e>
    26d4:	782a      	ldrb	r2, [r5, #0]
    26d6:	2a3a      	cmp	r2, #58	; 0x3a
    26d8:	d002      	beq.n	26e0 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    26da:	4618      	mov	r0, r3
    26dc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    26e0:	f8d8 3000 	ldr.w	r3, [r8]
    26e4:	f364 3310 	bfi	r3, r4, #12, #5
    26e8:	f8c8 3000 	str.w	r3, [r8]
	i++;
    26ec:	3601      	adds	r6, #1
    26ee:	19bd      	adds	r5, r7, r6
	n=0;
    26f0:	2400      	movs	r4, #0
	while (digit(time[i])){
    26f2:	e00a      	b.n	270a <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    26f4:	3601      	adds	r6, #1
    26f6:	3501      	adds	r5, #1
    26f8:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26fc:	0064      	lsls	r4, r4, #1
    26fe:	3c30      	subs	r4, #48	; 0x30
    2700:	f899 3000 	ldrb.w	r3, [r9]
    2704:	441c      	add	r4, r3
    2706:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    270a:	46a9      	mov	r9, r5
    270c:	7828      	ldrb	r0, [r5, #0]
    270e:	f7fe fe14 	bl	133a <digit>
    2712:	4603      	mov	r3, r0
    2714:	2800      	cmp	r0, #0
    2716:	d1ed      	bne.n	26f4 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    2718:	2c3b      	cmp	r4, #59	; 0x3b
    271a:	d8de      	bhi.n	26da <str_to_time+0x3e>
    271c:	782a      	ldrb	r2, [r5, #0]
    271e:	2a3a      	cmp	r2, #58	; 0x3a
    2720:	d1db      	bne.n	26da <str_to_time+0x3e>
	dt->minute=n;
    2722:	f8b8 3000 	ldrh.w	r3, [r8]
    2726:	f364 138b 	bfi	r3, r4, #6, #6
    272a:	f8a8 3000 	strh.w	r3, [r8]
    272e:	443e      	add	r6, r7
	n=0;
    2730:	2400      	movs	r4, #0
	while (digit(time[i])){
    2732:	e008      	b.n	2746 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2734:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2738:	0064      	lsls	r4, r4, #1
    273a:	3c30      	subs	r4, #48	; 0x30
    273c:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2740:	441c      	add	r4, r3
    2742:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2746:	7870      	ldrb	r0, [r6, #1]
    2748:	f7fe fdf7 	bl	133a <digit>
    274c:	4603      	mov	r3, r0
    274e:	2800      	cmp	r0, #0
    2750:	d1f0      	bne.n	2734 <str_to_time+0x98>
	if (n>59) return 0;
    2752:	2c3b      	cmp	r4, #59	; 0x3b
    2754:	d8c1      	bhi.n	26da <str_to_time+0x3e>
	dt->second=n;
    2756:	f898 3000 	ldrb.w	r3, [r8]
    275a:	f364 0305 	bfi	r3, r4, #0, #6
    275e:	f888 3000 	strb.w	r3, [r8]
	return 1;
    2762:	2301      	movs	r3, #1
    2764:	e7b9      	b.n	26da <str_to_time+0x3e>

00002766 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    2766:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2768:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    276a:	4b23      	ldr	r3, [pc, #140]	; (27f8 <date_str+0x92>)
    276c:	fba3 4302 	umull	r4, r3, r3, r2
    2770:	099b      	lsrs	r3, r3, #6
    2772:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2776:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2778:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    277c:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2780:	4b1e      	ldr	r3, [pc, #120]	; (27fc <date_str+0x96>)
    2782:	fba3 4302 	umull	r4, r3, r3, r2
    2786:	095b      	lsrs	r3, r3, #5
    2788:	f103 0430 	add.w	r4, r3, #48	; 0x30
    278c:	704c      	strb	r4, [r1, #1]
	n%=100;
    278e:	2464      	movs	r4, #100	; 0x64
    2790:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2794:	4a1a      	ldr	r2, [pc, #104]	; (2800 <date_str+0x9a>)
    2796:	fba2 5403 	umull	r5, r4, r2, r3
    279a:	08e4      	lsrs	r4, r4, #3
    279c:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27a0:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    27a2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    27a6:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27aa:	3330      	adds	r3, #48	; 0x30
    27ac:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    27ae:	262f      	movs	r6, #47	; 0x2f
    27b0:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    27b2:	8843      	ldrh	r3, [r0, #2]
    27b4:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    27b8:	fba2 5403 	umull	r5, r4, r2, r3
    27bc:	08e4      	lsrs	r4, r4, #3
    27be:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27c2:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    27c4:	00a5      	lsls	r5, r4, #2
    27c6:	442c      	add	r4, r5
    27c8:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27cc:	3330      	adds	r3, #48	; 0x30
    27ce:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    27d0:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    27d2:	7880      	ldrb	r0, [r0, #2]
    27d4:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    27d8:	fba2 3200 	umull	r3, r2, r2, r0
    27dc:	08d3      	lsrs	r3, r2, #3
    27de:	f103 0230 	add.w	r2, r3, #48	; 0x30
    27e2:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    27e4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    27e8:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    27ec:	3330      	adds	r3, #48	; 0x30
    27ee:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    27f0:	2300      	movs	r3, #0
    27f2:	728b      	strb	r3, [r1, #10]

}
    27f4:	bc70      	pop	{r4, r5, r6}
    27f6:	4770      	bx	lr
    27f8:	10624dd3 	.word	0x10624dd3
    27fc:	51eb851f 	.word	0x51eb851f
    2800:	cccccccd 	.word	0xcccccccd

00002804 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    2804:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    2806:	6802      	ldr	r2, [r0, #0]
    2808:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    280c:	4b18      	ldr	r3, [pc, #96]	; (2870 <time_str+0x6c>)
    280e:	fba3 5402 	umull	r5, r4, r3, r2
    2812:	08e4      	lsrs	r4, r4, #3
    2814:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2818:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    281a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    281e:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2822:	3230      	adds	r2, #48	; 0x30
    2824:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    2826:	253a      	movs	r5, #58	; 0x3a
    2828:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    282a:	8802      	ldrh	r2, [r0, #0]
    282c:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2830:	fba3 6402 	umull	r6, r4, r3, r2
    2834:	08e4      	lsrs	r4, r4, #3
    2836:	f104 0630 	add.w	r6, r4, #48	; 0x30
    283a:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    283c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2840:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2844:	3230      	adds	r2, #48	; 0x30
    2846:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2848:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    284a:	7802      	ldrb	r2, [r0, #0]
    284c:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    2850:	fba3 0302 	umull	r0, r3, r3, r2
    2854:	08db      	lsrs	r3, r3, #3
    2856:	f103 0030 	add.w	r0, r3, #48	; 0x30
    285a:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    285c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2860:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2864:	3330      	adds	r3, #48	; 0x30
    2866:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2868:	2300      	movs	r3, #0
    286a:	720b      	strb	r3, [r1, #8]
}
    286c:	bc70      	pop	{r4, r5, r6}
    286e:	4770      	bx	lr
    2870:	cccccccd 	.word	0xcccccccd

00002874 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2874:	b500      	push	{lr}
    2876:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2878:	a801      	add	r0, sp, #4
    287a:	f7ff fcbb 	bl	21f4 <get_date_time>
	t.fields.second=dt.second/2;
    287e:	f89d 3004 	ldrb.w	r3, [sp, #4]
    2882:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2886:	2000      	movs	r0, #0
    2888:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    288c:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2890:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2894:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2898:	9b01      	ldr	r3, [sp, #4]
    289a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    289e:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    28a2:	f89d 3006 	ldrb.w	r3, [sp, #6]
    28a6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    28aa:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    28ae:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    28b2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    28b6:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    28ba:	f89d 300c 	ldrb.w	r3, [sp, #12]
    28be:	3344      	adds	r3, #68	; 0x44
    28c0:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    28c4:	b005      	add	sp, #20
    28c6:	f85d fb04 	ldr.w	pc, [sp], #4

000028ca <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    28ca:	4b07      	ldr	r3, [pc, #28]	; (28e8 <RTC_handler+0x1e>)
    28cc:	685b      	ldr	r3, [r3, #4]
    28ce:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    28d2:	bf1c      	itt	ne
    28d4:	4b04      	ldrne	r3, [pc, #16]	; (28e8 <RTC_handler+0x1e>)
    28d6:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    28d8:	4b03      	ldr	r3, [pc, #12]	; (28e8 <RTC_handler+0x1e>)
    28da:	685b      	ldr	r3, [r3, #4]
    28dc:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    28e0:	bf1c      	itt	ne
    28e2:	4b01      	ldrne	r3, [pc, #4]	; (28e8 <RTC_handler+0x1e>)
    28e4:	685b      	ldrne	r3, [r3, #4]
    28e6:	4770      	bx	lr
    28e8:	40002800 	.word	0x40002800

000028ec <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    28ec:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    28ee:	4b12      	ldr	r3, [pc, #72]	; (2938 <sound_init+0x4c>)
    28f0:	685a      	ldr	r2, [r3, #4]
    28f2:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    28f6:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    28f8:	685a      	ldr	r2, [r3, #4]
    28fa:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    28fe:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    2900:	220a      	movs	r2, #10
    2902:	4611      	mov	r1, r2
    2904:	480d      	ldr	r0, [pc, #52]	; (293c <sound_init+0x50>)
    2906:	f7fe fe43 	bl	1590 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    290a:	4a0d      	ldr	r2, [pc, #52]	; (2940 <sound_init+0x54>)
    290c:	69d3      	ldr	r3, [r2, #28]
    290e:	f043 0301 	orr.w	r3, r3, #1
    2912:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2914:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2918:	2278      	movs	r2, #120	; 0x78
    291a:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    291c:	f44f 7280 	mov.w	r2, #256	; 0x100
    2920:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    2922:	2209      	movs	r2, #9
    2924:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    2926:	2100      	movs	r1, #0
    2928:	201c      	movs	r0, #28
    292a:	f7ff fc19 	bl	2160 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    292e:	201c      	movs	r0, #28
    2930:	f7ff fbb6 	bl	20a0 <enable_interrupt>
    2934:	bd08      	pop	{r3, pc}
    2936:	bf00      	nop
    2938:	40010000 	.word	0x40010000
    293c:	40010c00 	.word	0x40010c00
    2940:	40021000 	.word	0x40021000

00002944 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2944:	4b07      	ldr	r3, [pc, #28]	; (2964 <tone+0x20>)
    2946:	fbb3 f0f0 	udiv	r0, r3, r0
    294a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    294e:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    2950:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2952:	0852      	lsrs	r2, r2, #1
    2954:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    2956:	681a      	ldr	r2, [r3, #0]
    2958:	f042 0201 	orr.w	r2, r2, #1
    295c:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    295e:	4b02      	ldr	r3, [pc, #8]	; (2968 <tone+0x24>)
    2960:	8019      	strh	r1, [r3, #0]
    2962:	4770      	bx	lr
    2964:	006d3d32 	.word	0x006d3d32
    2968:	20004e7c 	.word	0x20004e7c

0000296c <beep>:
}

void beep(uint16_t duration){
    296c:	b508      	push	{r3, lr}
    tone(1000,duration);
    296e:	4601      	mov	r1, r0
    2970:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2974:	f7ff ffe6 	bl	2944 <tone>
    2978:	bd08      	pop	{r3, pc}

0000297a <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    297a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    297e:	681a      	ldr	r2, [r3, #0]
    2980:	f022 0201 	bic.w	r2, r2, #1
    2984:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    2986:	68da      	ldr	r2, [r3, #12]
    2988:	f022 0201 	bic.w	r2, r2, #1
    298c:	60da      	str	r2, [r3, #12]
    298e:	4770      	bx	lr

00002990 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    2990:	b510      	push	{r4, lr}
    2992:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    2994:	b289      	uxth	r1, r1
    2996:	4b06      	ldr	r3, [pc, #24]	; (29b0 <key_tone+0x20>)
    2998:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    299c:	f7ff ffd2 	bl	2944 <tone>
    if (wait_end) while (sound_timer);
    29a0:	b124      	cbz	r4, 29ac <key_tone+0x1c>
    29a2:	4a04      	ldr	r2, [pc, #16]	; (29b4 <key_tone+0x24>)
    29a4:	8813      	ldrh	r3, [r2, #0]
    29a6:	b29b      	uxth	r3, r3
    29a8:	2b00      	cmp	r3, #0
    29aa:	d1fb      	bne.n	29a4 <key_tone+0x14>
    29ac:	bd10      	pop	{r4, pc}
    29ae:	bf00      	nop
    29b0:	00003d68 	.word	0x00003d68
    29b4:	20004e7c 	.word	0x20004e7c

000029b8 <noise>:
}

// produit un bruit 
void noise(int length){
    29b8:	b510      	push	{r4, lr}
    29ba:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    29bc:	4b07      	ldr	r3, [pc, #28]	; (29dc <noise+0x24>)
    29be:	6818      	ldr	r0, [r3, #0]
    29c0:	f7fd fd10 	bl	3e4 <srand>
    tone(6000,length);
    29c4:	b2a1      	uxth	r1, r4
    29c6:	f241 7070 	movw	r0, #6000	; 0x1770
    29ca:	f7ff ffbb 	bl	2944 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    29ce:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29d2:	68d3      	ldr	r3, [r2, #12]
    29d4:	f043 0301 	orr.w	r3, r3, #1
    29d8:	60d3      	str	r3, [r2, #12]
    29da:	bd10      	pop	{r4, pc}
    29dc:	20004e78 	.word	0x20004e78

000029e0 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    29e0:	4668      	mov	r0, sp
    29e2:	f020 0107 	bic.w	r1, r0, #7
    29e6:	468d      	mov	sp, r1
    29e8:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    29ea:	f7fd fd01 	bl	3f0 <rand>
    29ee:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    29f2:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29f6:	6a13      	ldr	r3, [r2, #32]
    29f8:	bf14      	ite	ne
    29fa:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    29fe:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    2a02:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    2a04:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2a08:	6913      	ldr	r3, [r2, #16]
    2a0a:	f023 0301 	bic.w	r3, r3, #1
    2a0e:	6113      	str	r3, [r2, #16]
}
    2a10:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    2a14:	4685      	mov	sp, r0
    2a16:	4770      	bx	lr

00002a18 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    2a18:	6803      	ldr	r3, [r0, #0]
    2a1a:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2a1e:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2a20:	6803      	ldr	r3, [r0, #0]
    2a22:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2a26:	6001      	str	r1, [r0, #0]
    2a28:	4770      	bx	lr

00002a2a <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2a2a:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2a2c:	4a2f      	ldr	r2, [pc, #188]	; (2aec <spi_config_port+0xc2>)
    2a2e:	6993      	ldr	r3, [r2, #24]
    2a30:	f043 0301 	orr.w	r3, r3, #1
    2a34:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2a36:	4b2e      	ldr	r3, [pc, #184]	; (2af0 <spi_config_port+0xc6>)
    2a38:	4298      	cmp	r0, r3
    2a3a:	d01a      	beq.n	2a72 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2a3c:	4a2b      	ldr	r2, [pc, #172]	; (2aec <spi_config_port+0xc2>)
    2a3e:	6993      	ldr	r3, [r2, #24]
    2a40:	f043 0308 	orr.w	r3, r3, #8
    2a44:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2a46:	4c2b      	ldr	r4, [pc, #172]	; (2af4 <spi_config_port+0xca>)
    2a48:	2203      	movs	r2, #3
    2a4a:	2102      	movs	r1, #2
    2a4c:	4620      	mov	r0, r4
    2a4e:	f7fe fd9f 	bl	1590 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2a52:	220b      	movs	r2, #11
    2a54:	210d      	movs	r1, #13
    2a56:	4620      	mov	r0, r4
    2a58:	f7fe fd9a 	bl	1590 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2a5c:	2204      	movs	r2, #4
    2a5e:	210e      	movs	r1, #14
    2a60:	4620      	mov	r0, r4
    2a62:	f7fe fd95 	bl	1590 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2a66:	220b      	movs	r2, #11
    2a68:	210f      	movs	r1, #15
    2a6a:	4620      	mov	r0, r4
    2a6c:	f7fe fd90 	bl	1590 <config_pin>
    2a70:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    2a72:	b9c9      	cbnz	r1, 2aa8 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2a74:	6993      	ldr	r3, [r2, #24]
    2a76:	f043 0304 	orr.w	r3, r3, #4
    2a7a:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2a7c:	4c1e      	ldr	r4, [pc, #120]	; (2af8 <spi_config_port+0xce>)
    2a7e:	2203      	movs	r2, #3
    2a80:	2104      	movs	r1, #4
    2a82:	4620      	mov	r0, r4
    2a84:	f7fe fd84 	bl	1590 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2a88:	220b      	movs	r2, #11
    2a8a:	2105      	movs	r1, #5
    2a8c:	4620      	mov	r0, r4
    2a8e:	f7fe fd7f 	bl	1590 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2a92:	2204      	movs	r2, #4
    2a94:	2106      	movs	r1, #6
    2a96:	4620      	mov	r0, r4
    2a98:	f7fe fd7a 	bl	1590 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2a9c:	220b      	movs	r2, #11
    2a9e:	2107      	movs	r1, #7
    2aa0:	4620      	mov	r0, r4
    2aa2:	f7fe fd75 	bl	1590 <config_pin>
    2aa6:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2aa8:	4a10      	ldr	r2, [pc, #64]	; (2aec <spi_config_port+0xc2>)
    2aaa:	6993      	ldr	r3, [r2, #24]
    2aac:	f043 030d 	orr.w	r3, r3, #13
    2ab0:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2ab2:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    2ab6:	6853      	ldr	r3, [r2, #4]
    2ab8:	f043 0301 	orr.w	r3, r3, #1
    2abc:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2abe:	2203      	movs	r2, #3
    2ac0:	210f      	movs	r1, #15
    2ac2:	480d      	ldr	r0, [pc, #52]	; (2af8 <spi_config_port+0xce>)
    2ac4:	f7fe fd64 	bl	1590 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2ac8:	4c0a      	ldr	r4, [pc, #40]	; (2af4 <spi_config_port+0xca>)
    2aca:	220b      	movs	r2, #11
    2acc:	2103      	movs	r1, #3
    2ace:	4620      	mov	r0, r4
    2ad0:	f7fe fd5e 	bl	1590 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2ad4:	2204      	movs	r2, #4
    2ad6:	4611      	mov	r1, r2
    2ad8:	4620      	mov	r0, r4
    2ada:	f7fe fd59 	bl	1590 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2ade:	220b      	movs	r2, #11
    2ae0:	2105      	movs	r1, #5
    2ae2:	4620      	mov	r0, r4
    2ae4:	f7fe fd54 	bl	1590 <config_pin>
    2ae8:	bd10      	pop	{r4, pc}
    2aea:	bf00      	nop
    2aec:	40021000 	.word	0x40021000
    2af0:	40013000 	.word	0x40013000
    2af4:	40010c00 	.word	0x40010c00
    2af8:	40010800 	.word	0x40010800

00002afc <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2afc:	b570      	push	{r4, r5, r6, lr}
    2afe:	4604      	mov	r4, r0
    2b00:	460d      	mov	r5, r1
    2b02:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2b04:	4619      	mov	r1, r3
    2b06:	f7ff ff90 	bl	2a2a <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2b0a:	4b0c      	ldr	r3, [pc, #48]	; (2b3c <spi_init+0x40>)
    2b0c:	429c      	cmp	r4, r3
    2b0e:	d00e      	beq.n	2b2e <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2b10:	4a0b      	ldr	r2, [pc, #44]	; (2b40 <spi_init+0x44>)
    2b12:	69d3      	ldr	r3, [r2, #28]
    2b14:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2b18:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    2b1a:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2b1c:	4629      	mov	r1, r5
    2b1e:	4620      	mov	r0, r4
    2b20:	f7ff ff7a 	bl	2a18 <spi_baudrate>
	_spi_enable(channel);
    2b24:	6823      	ldr	r3, [r4, #0]
    2b26:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2b2a:	6023      	str	r3, [r4, #0]
    2b2c:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2b2e:	4a04      	ldr	r2, [pc, #16]	; (2b40 <spi_init+0x44>)
    2b30:	6993      	ldr	r3, [r2, #24]
    2b32:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2b36:	6193      	str	r3, [r2, #24]
    2b38:	e7ef      	b.n	2b1a <spi_init+0x1e>
    2b3a:	bf00      	nop
    2b3c:	40013000 	.word	0x40013000
    2b40:	40021000 	.word	0x40021000

00002b44 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2b44:	6883      	ldr	r3, [r0, #8]
    2b46:	f013 0f02 	tst.w	r3, #2
    2b4a:	d0fb      	beq.n	2b44 <spi_send>
	channel->DR=b;
    2b4c:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b4e:	6883      	ldr	r3, [r0, #8]
    2b50:	f013 0f01 	tst.w	r3, #1
    2b54:	d0fb      	beq.n	2b4e <spi_send+0xa>
	return (uint8_t)channel->DR;
    2b56:	68c0      	ldr	r0, [r0, #12]
}
    2b58:	b2c0      	uxtb	r0, r0
    2b5a:	4770      	bx	lr

00002b5c <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2b5c:	6883      	ldr	r3, [r0, #8]
    2b5e:	f013 0f02 	tst.w	r3, #2
    2b62:	d0fb      	beq.n	2b5c <spi_receive>
	channel->DR=255;
    2b64:	23ff      	movs	r3, #255	; 0xff
    2b66:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b68:	6883      	ldr	r3, [r0, #8]
    2b6a:	f013 0f01 	tst.w	r3, #1
    2b6e:	d0fb      	beq.n	2b68 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2b70:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2b72:	b2c0      	uxtb	r0, r0
    2b74:	4770      	bx	lr

00002b76 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2b76:	b14a      	cbz	r2, 2b8c <spi_send_block+0x16>
    2b78:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2b7a:	f811 3b01 	ldrb.w	r3, [r1], #1
    2b7e:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2b80:	6883      	ldr	r3, [r0, #8]
    2b82:	f013 0f02 	tst.w	r3, #2
    2b86:	d0fb      	beq.n	2b80 <spi_send_block+0xa>
	while (count){
    2b88:	428a      	cmp	r2, r1
    2b8a:	d1f6      	bne.n	2b7a <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2b8c:	6883      	ldr	r3, [r0, #8]
    2b8e:	f013 0f80 	tst.w	r3, #128	; 0x80
    2b92:	d1fb      	bne.n	2b8c <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2b94:	68c3      	ldr	r3, [r0, #12]
    2b96:	4770      	bx	lr

00002b98 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2b98:	b16a      	cbz	r2, 2bb6 <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2b9a:	b410      	push	{r4}
    2b9c:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2b9e:	2400      	movs	r4, #0
    2ba0:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2ba2:	6883      	ldr	r3, [r0, #8]
    2ba4:	f013 0f01 	tst.w	r3, #1
    2ba8:	d0fb      	beq.n	2ba2 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2baa:	68c3      	ldr	r3, [r0, #12]
    2bac:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2bb0:	428a      	cmp	r2, r1
    2bb2:	d1f5      	bne.n	2ba0 <spi_receive_block+0x8>
		count--;
	}
}
    2bb4:	bc10      	pop	{r4}
    2bb6:	4770      	bx	lr

00002bb8 <reset_mcu>:
	_reset_mcu();
    2bb8:	4a01      	ldr	r2, [pc, #4]	; (2bc0 <reset_mcu+0x8>)
    2bba:	4b02      	ldr	r3, [pc, #8]	; (2bc4 <reset_mcu+0xc>)
    2bbc:	601a      	str	r2, [r3, #0]
    2bbe:	bf00      	nop
    2bc0:	05fa0004 	.word	0x05fa0004
    2bc4:	e000ed0c 	.word	0xe000ed0c

00002bc8 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2bc8:	b508      	push	{r3, lr}
    2bca:	460c      	mov	r4, r1
	print(msg);
    2bcc:	f000 f962 	bl	2e94 <print>
	print("\nat address ");
    2bd0:	4813      	ldr	r0, [pc, #76]	; (2c20 <print_fault+0x58>)
    2bd2:	f000 f95f 	bl	2e94 <print>
	if (adr) {
    2bd6:	b9ec      	cbnz	r4, 2c14 <print_fault+0x4c>
	put_char(CR);
    2bd8:	200d      	movs	r0, #13
    2bda:	f000 f8bd 	bl	2d58 <put_char>
	print("\nUFSR=");
    2bde:	4811      	ldr	r0, [pc, #68]	; (2c24 <print_fault+0x5c>)
    2be0:	f000 f958 	bl	2e94 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2be4:	4c10      	ldr	r4, [pc, #64]	; (2c28 <print_fault+0x60>)
    2be6:	6820      	ldr	r0, [r4, #0]
    2be8:	2110      	movs	r1, #16
    2bea:	40c8      	lsrs	r0, r1
    2bec:	f000 f96d 	bl	2eca <print_int>
	print("\nBFSR=");
    2bf0:	480e      	ldr	r0, [pc, #56]	; (2c2c <print_fault+0x64>)
    2bf2:	f000 f94f 	bl	2e94 <print>
	print_int(CFSR->fsr.busFault,16);
    2bf6:	6820      	ldr	r0, [r4, #0]
    2bf8:	2110      	movs	r1, #16
    2bfa:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2bfe:	f000 f964 	bl	2eca <print_int>
	print("\nMMFSR=");
    2c02:	480b      	ldr	r0, [pc, #44]	; (2c30 <print_fault+0x68>)
    2c04:	f000 f946 	bl	2e94 <print>
	print_int(CFSR->fsr.mmFault,16);
    2c08:	6820      	ldr	r0, [r4, #0]
    2c0a:	2110      	movs	r1, #16
    2c0c:	b2c0      	uxtb	r0, r0
    2c0e:	f000 f95c 	bl	2eca <print_int>
    2c12:	e7fe      	b.n	2c12 <print_fault+0x4a>
		print_int(adr,16);
    2c14:	2110      	movs	r1, #16
    2c16:	4620      	mov	r0, r4
    2c18:	f000 f957 	bl	2eca <print_int>
    2c1c:	e7dc      	b.n	2bd8 <print_fault+0x10>
    2c1e:	bf00      	nop
    2c20:	00004064 	.word	0x00004064
    2c24:	00004074 	.word	0x00004074
    2c28:	e000ed28 	.word	0xe000ed28
    2c2c:	0000407c 	.word	0x0000407c
    2c30:	00004084 	.word	0x00004084

00002c34 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2c34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2c38:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2c3a:	18cb      	adds	r3, r1, r3
    2c3c:	9301      	str	r3, [sp, #4]
    2c3e:	4299      	cmp	r1, r3
    2c40:	da20      	bge.n	2c84 <draw_char+0x50>
    2c42:	4683      	mov	fp, r0
    2c44:	460e      	mov	r6, r1
    2c46:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2c48:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2c4c:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c4e:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2c8c <draw_char+0x58>
		byte=*glyph++;
    2c52:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2c56:	45bb      	cmp	fp, r7
    2c58:	da10      	bge.n	2c7c <draw_char+0x48>
    2c5a:	465c      	mov	r4, fp
    2c5c:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c5e:	ea18 0f05 	tst.w	r8, r5
    2c62:	bf14      	ite	ne
    2c64:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2c68:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2c6c:	4631      	mov	r1, r6
    2c6e:	4620      	mov	r0, r4
    2c70:	f7fe fd1a 	bl	16a8 <gfx_plot>
			mask>>=1;
    2c74:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2c76:	3401      	adds	r4, #1
    2c78:	42bc      	cmp	r4, r7
    2c7a:	d1f0      	bne.n	2c5e <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2c7c:	3601      	adds	r6, #1
    2c7e:	9b01      	ldr	r3, [sp, #4]
    2c80:	429e      	cmp	r6, r3
    2c82:	d1e6      	bne.n	2c52 <draw_char+0x1e>
		}
	}
}
    2c84:	b003      	add	sp, #12
    2c86:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2c8a:	bf00      	nop
    2c8c:	20000204 	.word	0x20000204

00002c90 <font_color>:
	text_colors[FG]=color&0xf;
    2c90:	f000 000f 	and.w	r0, r0, #15
    2c94:	4b01      	ldr	r3, [pc, #4]	; (2c9c <font_color+0xc>)
    2c96:	7058      	strb	r0, [r3, #1]
    2c98:	4770      	bx	lr
    2c9a:	bf00      	nop
    2c9c:	20000204 	.word	0x20000204

00002ca0 <bg_color>:
	text_colors[BG]=color&0xf;
    2ca0:	f000 000f 	and.w	r0, r0, #15
    2ca4:	4b01      	ldr	r3, [pc, #4]	; (2cac <bg_color+0xc>)
    2ca6:	7018      	strb	r0, [r3, #0]
    2ca8:	4770      	bx	lr
    2caa:	bf00      	nop
    2cac:	20000204 	.word	0x20000204

00002cb0 <select_font>:
	font=font_id;
    2cb0:	4b01      	ldr	r3, [pc, #4]	; (2cb8 <select_font+0x8>)
    2cb2:	7098      	strb	r0, [r3, #2]
    2cb4:	4770      	bx	lr
    2cb6:	bf00      	nop
    2cb8:	20000204 	.word	0x20000204

00002cbc <get_font>:
}
    2cbc:	4b01      	ldr	r3, [pc, #4]	; (2cc4 <get_font+0x8>)
    2cbe:	7898      	ldrb	r0, [r3, #2]
    2cc0:	4770      	bx	lr
    2cc2:	bf00      	nop
    2cc4:	20000204 	.word	0x20000204

00002cc8 <new_line>:
void new_line(){
    2cc8:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2cca:	4b21      	ldr	r3, [pc, #132]	; (2d50 <new_line+0x88>)
    2ccc:	781b      	ldrb	r3, [r3, #0]
    2cce:	2b00      	cmp	r3, #0
    2cd0:	d138      	bne.n	2d44 <new_line+0x7c>
		xpos=0;
    2cd2:	2200      	movs	r2, #0
    2cd4:	4b1e      	ldr	r3, [pc, #120]	; (2d50 <new_line+0x88>)
    2cd6:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2cd8:	f000 fbf4 	bl	34c4 <get_video_params>
		switch (font){
    2cdc:	4b1d      	ldr	r3, [pc, #116]	; (2d54 <new_line+0x8c>)
    2cde:	789b      	ldrb	r3, [r3, #2]
    2ce0:	2b01      	cmp	r3, #1
    2ce2:	d011      	beq.n	2d08 <new_line+0x40>
    2ce4:	b113      	cbz	r3, 2cec <new_line+0x24>
    2ce6:	2b02      	cmp	r3, #2
    2ce8:	d01d      	beq.n	2d26 <new_line+0x5e>
    2cea:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2cec:	4b18      	ldr	r3, [pc, #96]	; (2d50 <new_line+0x88>)
    2cee:	789b      	ldrb	r3, [r3, #2]
    2cf0:	1d99      	adds	r1, r3, #6
    2cf2:	89c2      	ldrh	r2, [r0, #14]
    2cf4:	3a05      	subs	r2, #5
    2cf6:	4291      	cmp	r1, r2
    2cf8:	dc02      	bgt.n	2d00 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2cfa:	4a15      	ldr	r2, [pc, #84]	; (2d50 <new_line+0x88>)
    2cfc:	7091      	strb	r1, [r2, #2]
    2cfe:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2d00:	2006      	movs	r0, #6
    2d02:	f7fe fd0f 	bl	1724 <gfx_scroll_up>
    2d06:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2d08:	4b11      	ldr	r3, [pc, #68]	; (2d50 <new_line+0x88>)
    2d0a:	789b      	ldrb	r3, [r3, #2]
    2d0c:	f103 010a 	add.w	r1, r3, #10
    2d10:	89c2      	ldrh	r2, [r0, #14]
    2d12:	3a09      	subs	r2, #9
    2d14:	4291      	cmp	r1, r2
    2d16:	dc02      	bgt.n	2d1e <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2d18:	4a0d      	ldr	r2, [pc, #52]	; (2d50 <new_line+0x88>)
    2d1a:	7091      	strb	r1, [r2, #2]
    2d1c:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2d1e:	200a      	movs	r0, #10
    2d20:	f7fe fd00 	bl	1724 <gfx_scroll_up>
    2d24:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2d26:	4b0a      	ldr	r3, [pc, #40]	; (2d50 <new_line+0x88>)
    2d28:	789b      	ldrb	r3, [r3, #2]
    2d2a:	f103 0108 	add.w	r1, r3, #8
    2d2e:	89c2      	ldrh	r2, [r0, #14]
    2d30:	3a07      	subs	r2, #7
    2d32:	4291      	cmp	r1, r2
    2d34:	dc02      	bgt.n	2d3c <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2d36:	4a06      	ldr	r2, [pc, #24]	; (2d50 <new_line+0x88>)
    2d38:	7091      	strb	r1, [r2, #2]
    2d3a:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2d3c:	2008      	movs	r0, #8
    2d3e:	f7fe fcf1 	bl	1724 <gfx_scroll_up>
    2d42:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    2d44:	210a      	movs	r1, #10
    2d46:	2000      	movs	r0, #0
    2d48:	f000 fd2a 	bl	37a0 <usart_putc>
    2d4c:	bd08      	pop	{r3, pc}
    2d4e:	bf00      	nop
    2d50:	2000069c 	.word	0x2000069c
    2d54:	20000204 	.word	0x20000204

00002d58 <put_char>:

void put_char(uint8_t c){
    2d58:	b530      	push	{r4, r5, lr}
    2d5a:	b083      	sub	sp, #12
	if (console==LOCAL){
    2d5c:	4b2e      	ldr	r3, [pc, #184]	; (2e18 <put_char+0xc0>)
    2d5e:	781b      	ldrb	r3, [r3, #0]
    2d60:	2b00      	cmp	r3, #0
    2d62:	d153      	bne.n	2e0c <put_char+0xb4>
		switch(font){
    2d64:	4b2d      	ldr	r3, [pc, #180]	; (2e1c <put_char+0xc4>)
    2d66:	789b      	ldrb	r3, [r3, #2]
    2d68:	2b01      	cmp	r3, #1
    2d6a:	d036      	beq.n	2dda <put_char+0x82>
    2d6c:	b1e3      	cbz	r3, 2da8 <put_char+0x50>
    2d6e:	2b02      	cmp	r3, #2
    2d70:	d150      	bne.n	2e14 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2d72:	f1a0 0320 	sub.w	r3, r0, #32
    2d76:	b2db      	uxtb	r3, r3
    2d78:	2b64      	cmp	r3, #100	; 0x64
    2d7a:	d84b      	bhi.n	2e14 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2d7c:	4c26      	ldr	r4, [pc, #152]	; (2e18 <put_char+0xc0>)
    2d7e:	78a1      	ldrb	r1, [r4, #2]
    2d80:	7865      	ldrb	r5, [r4, #1]
    2d82:	3820      	subs	r0, #32
    2d84:	4b26      	ldr	r3, [pc, #152]	; (2e20 <put_char+0xc8>)
    2d86:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2d8a:	9300      	str	r3, [sp, #0]
    2d8c:	2308      	movs	r3, #8
    2d8e:	2206      	movs	r2, #6
    2d90:	4628      	mov	r0, r5
    2d92:	f7ff ff4f 	bl	2c34 <draw_char>
				xpos+=CHAR_WIDTH;
    2d96:	7863      	ldrb	r3, [r4, #1]
    2d98:	3306      	adds	r3, #6
    2d9a:	b2db      	uxtb	r3, r3
    2d9c:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2d9e:	2baf      	cmp	r3, #175	; 0xaf
    2da0:	d938      	bls.n	2e14 <put_char+0xbc>
					new_line();
    2da2:	f7ff ff91 	bl	2cc8 <new_line>
    2da6:	e035      	b.n	2e14 <put_char+0xbc>
			if (c<16){
    2da8:	280f      	cmp	r0, #15
    2daa:	d833      	bhi.n	2e14 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2dac:	4c1a      	ldr	r4, [pc, #104]	; (2e18 <put_char+0xc0>)
    2dae:	78a1      	ldrb	r1, [r4, #2]
    2db0:	7865      	ldrb	r5, [r4, #1]
    2db2:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2db6:	4b1b      	ldr	r3, [pc, #108]	; (2e24 <put_char+0xcc>)
    2db8:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dbc:	9300      	str	r3, [sp, #0]
    2dbe:	2306      	movs	r3, #6
    2dc0:	2204      	movs	r2, #4
    2dc2:	4628      	mov	r0, r5
    2dc4:	f7ff ff36 	bl	2c34 <draw_char>
				xpos+=SHEX_WIDTH;
    2dc8:	7863      	ldrb	r3, [r4, #1]
    2dca:	3304      	adds	r3, #4
    2dcc:	b2db      	uxtb	r3, r3
    2dce:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2dd0:	2bb1      	cmp	r3, #177	; 0xb1
    2dd2:	d91f      	bls.n	2e14 <put_char+0xbc>
					new_line();
    2dd4:	f7ff ff78 	bl	2cc8 <new_line>
    2dd8:	e01c      	b.n	2e14 <put_char+0xbc>
			if (c<16){
    2dda:	280f      	cmp	r0, #15
    2ddc:	d81a      	bhi.n	2e14 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2dde:	4c0e      	ldr	r4, [pc, #56]	; (2e18 <put_char+0xc0>)
    2de0:	78a1      	ldrb	r1, [r4, #2]
    2de2:	7865      	ldrb	r5, [r4, #1]
    2de4:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2de8:	4b0f      	ldr	r3, [pc, #60]	; (2e28 <put_char+0xd0>)
    2dea:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dee:	9300      	str	r3, [sp, #0]
    2df0:	230a      	movs	r3, #10
    2df2:	2208      	movs	r2, #8
    2df4:	4628      	mov	r0, r5
    2df6:	f7ff ff1d 	bl	2c34 <draw_char>
				xpos+=LHEX_WIDTH;
    2dfa:	7863      	ldrb	r3, [r4, #1]
    2dfc:	3308      	adds	r3, #8
    2dfe:	b2db      	uxtb	r3, r3
    2e00:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2e02:	2bad      	cmp	r3, #173	; 0xad
    2e04:	d906      	bls.n	2e14 <put_char+0xbc>
					new_line();
    2e06:	f7ff ff5f 	bl	2cc8 <new_line>
    2e0a:	e003      	b.n	2e14 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2e0c:	4601      	mov	r1, r0
    2e0e:	2000      	movs	r0, #0
    2e10:	f000 fcc6 	bl	37a0 <usart_putc>
	}
}
    2e14:	b003      	add	sp, #12
    2e16:	bd30      	pop	{r4, r5, pc}
    2e18:	2000069c 	.word	0x2000069c
    2e1c:	20000204 	.word	0x20000204
    2e20:	000038f0 	.word	0x000038f0
    2e24:	00003cb8 	.word	0x00003cb8
    2e28:	00003c18 	.word	0x00003c18

00002e2c <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2e2c:	4b01      	ldr	r3, [pc, #4]	; (2e34 <set_cursor+0x8>)
    2e2e:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2e30:	7099      	strb	r1, [r3, #2]
    2e32:	4770      	bx	lr
    2e34:	2000069c 	.word	0x2000069c

00002e38 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2e38:	4b03      	ldr	r3, [pc, #12]	; (2e48 <get_cursor+0x10>)
    2e3a:	785a      	ldrb	r2, [r3, #1]
    2e3c:	7898      	ldrb	r0, [r3, #2]
    2e3e:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2e42:	b280      	uxth	r0, r0
    2e44:	4770      	bx	lr
    2e46:	bf00      	nop
    2e48:	2000069c 	.word	0x2000069c

00002e4c <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2e4c:	4b0f      	ldr	r3, [pc, #60]	; (2e8c <cursor_left+0x40>)
    2e4e:	789b      	ldrb	r3, [r3, #2]
    2e50:	2b01      	cmp	r3, #1
    2e52:	d00b      	beq.n	2e6c <cursor_left+0x20>
    2e54:	b113      	cbz	r3, 2e5c <cursor_left+0x10>
    2e56:	2b02      	cmp	r3, #2
    2e58:	d010      	beq.n	2e7c <cursor_left+0x30>
    2e5a:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2e5c:	4b0c      	ldr	r3, [pc, #48]	; (2e90 <cursor_left+0x44>)
    2e5e:	785b      	ldrb	r3, [r3, #1]
    2e60:	2b04      	cmp	r3, #4
    2e62:	d412      	bmi.n	2e8a <cursor_left+0x3e>
    2e64:	3b04      	subs	r3, #4
    2e66:	4a0a      	ldr	r2, [pc, #40]	; (2e90 <cursor_left+0x44>)
    2e68:	7053      	strb	r3, [r2, #1]
    2e6a:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2e6c:	4b08      	ldr	r3, [pc, #32]	; (2e90 <cursor_left+0x44>)
    2e6e:	785b      	ldrb	r3, [r3, #1]
    2e70:	2b08      	cmp	r3, #8
    2e72:	d40a      	bmi.n	2e8a <cursor_left+0x3e>
    2e74:	3b08      	subs	r3, #8
    2e76:	4a06      	ldr	r2, [pc, #24]	; (2e90 <cursor_left+0x44>)
    2e78:	7053      	strb	r3, [r2, #1]
    2e7a:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2e7c:	4b04      	ldr	r3, [pc, #16]	; (2e90 <cursor_left+0x44>)
    2e7e:	785b      	ldrb	r3, [r3, #1]
    2e80:	2b06      	cmp	r3, #6
    2e82:	d402      	bmi.n	2e8a <cursor_left+0x3e>
    2e84:	3b06      	subs	r3, #6
    2e86:	4a02      	ldr	r2, [pc, #8]	; (2e90 <cursor_left+0x44>)
    2e88:	7053      	strb	r3, [r2, #1]
    2e8a:	4770      	bx	lr
    2e8c:	20000204 	.word	0x20000204
    2e90:	2000069c 	.word	0x2000069c

00002e94 <print>:
void print(const char* str){
    2e94:	b510      	push	{r4, lr}
    2e96:	4604      	mov	r4, r0
    while ((c=*str++)){
    2e98:	e001      	b.n	2e9e <print+0xa>
            new_line();
    2e9a:	f7ff ff15 	bl	2cc8 <new_line>
    while ((c=*str++)){
    2e9e:	f814 0b01 	ldrb.w	r0, [r4], #1
    2ea2:	b158      	cbz	r0, 2ebc <print+0x28>
        switch(c){
    2ea4:	280a      	cmp	r0, #10
    2ea6:	d0f8      	beq.n	2e9a <print+0x6>
    2ea8:	280d      	cmp	r0, #13
    2eaa:	d0f6      	beq.n	2e9a <print+0x6>
    2eac:	2808      	cmp	r0, #8
    2eae:	d002      	beq.n	2eb6 <print+0x22>
            put_char(c);
    2eb0:	f7ff ff52 	bl	2d58 <put_char>
    2eb4:	e7f3      	b.n	2e9e <print+0xa>
            cursor_left();    
    2eb6:	f7ff ffc9 	bl	2e4c <cursor_left>
            break;
    2eba:	e7f0      	b.n	2e9e <print+0xa>
}
    2ebc:	bd10      	pop	{r4, pc}

00002ebe <println>:
void println(const char *text){
    2ebe:	b508      	push	{r3, lr}
	print(text);
    2ec0:	f7ff ffe8 	bl	2e94 <print>
	new_line();
    2ec4:	f7ff ff00 	bl	2cc8 <new_line>
    2ec8:	bd08      	pop	{r3, pc}

00002eca <print_int>:
void print_int(int i,uint8_t base){
    2eca:	b530      	push	{r4, r5, lr}
    2ecc:	b085      	sub	sp, #20
    fmt[15]=0;
    2ece:	2300      	movs	r3, #0
    2ed0:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2ed4:	2320      	movs	r3, #32
    2ed6:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2eda:	1e02      	subs	r2, r0, #0
        i=-i;
    2edc:	bfba      	itte	lt
    2ede:	4252      	neglt	r2, r2
        sign=1;
    2ee0:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2ee2:	2500      	movge	r5, #0
    while (idx>1 && i){
    2ee4:	b1aa      	cbz	r2, 2f12 <print_int+0x48>
    2ee6:	f10d 040e 	add.w	r4, sp, #14
    2eea:	200e      	movs	r0, #14
        d=i%base;
    2eec:	fb92 f3f1 	sdiv	r3, r2, r1
    2ef0:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2ef4:	2b09      	cmp	r3, #9
    2ef6:	bfc8      	it	gt
    2ef8:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2efa:	3801      	subs	r0, #1
    2efc:	3330      	adds	r3, #48	; 0x30
    2efe:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2f02:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2f06:	2801      	cmp	r0, #1
    2f08:	d007      	beq.n	2f1a <print_int+0x50>
    2f0a:	2a00      	cmp	r2, #0
    2f0c:	d1ee      	bne.n	2eec <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2f0e:	280e      	cmp	r0, #14
    2f10:	d103      	bne.n	2f1a <print_int+0x50>
    2f12:	2330      	movs	r3, #48	; 0x30
    2f14:	f88d 300d 	strb.w	r3, [sp, #13]
    2f18:	200d      	movs	r0, #13
    if (base==10 && sign){
    2f1a:	290a      	cmp	r1, #10
    2f1c:	d006      	beq.n	2f2c <print_int+0x62>
    }else if (base==16){
    2f1e:	2910      	cmp	r1, #16
    2f20:	d00d      	beq.n	2f3e <print_int+0x74>
    print(&fmt[idx]);
    2f22:	4468      	add	r0, sp
    2f24:	f7ff ffb6 	bl	2e94 <print>
}
    2f28:	b005      	add	sp, #20
    2f2a:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2f2c:	2d00      	cmp	r5, #0
    2f2e:	d0f8      	beq.n	2f22 <print_int+0x58>
        fmt[--idx]='-';
    2f30:	3801      	subs	r0, #1
    2f32:	ab04      	add	r3, sp, #16
    2f34:	4403      	add	r3, r0
    2f36:	222d      	movs	r2, #45	; 0x2d
    2f38:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f3c:	e7f1      	b.n	2f22 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2f3e:	f010 0f01 	tst.w	r0, #1
    2f42:	d005      	beq.n	2f50 <print_int+0x86>
    2f44:	3801      	subs	r0, #1
    2f46:	ab04      	add	r3, sp, #16
    2f48:	4403      	add	r3, r0
    2f4a:	2230      	movs	r2, #48	; 0x30
    2f4c:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2f50:	3801      	subs	r0, #1
    2f52:	ab04      	add	r3, sp, #16
    2f54:	4403      	add	r3, r0
    2f56:	2224      	movs	r2, #36	; 0x24
    2f58:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f5c:	e7e1      	b.n	2f22 <print_int+0x58>

00002f5e <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2f5e:	b508      	push	{r3, lr}
	print("press button");
    2f60:	4801      	ldr	r0, [pc, #4]	; (2f68 <prompt_btn+0xa>)
    2f62:	f7ff ff97 	bl	2e94 <print>
    2f66:	bd08      	pop	{r3, pc}
    2f68:	000040d0 	.word	0x000040d0

00002f6c <clear_screen>:
}

void clear_screen(){
    2f6c:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2f6e:	4b07      	ldr	r3, [pc, #28]	; (2f8c <clear_screen+0x20>)
    2f70:	781b      	ldrb	r3, [r3, #0]
    2f72:	b123      	cbz	r3, 2f7e <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    2f74:	210c      	movs	r1, #12
    2f76:	2000      	movs	r0, #0
    2f78:	f000 fc12 	bl	37a0 <usart_putc>
    2f7c:	bd08      	pop	{r3, pc}
		gfx_cls();
    2f7e:	f7fe fbbd 	bl	16fc <gfx_cls>
		xpos=0;
    2f82:	4b02      	ldr	r3, [pc, #8]	; (2f8c <clear_screen+0x20>)
    2f84:	2200      	movs	r2, #0
    2f86:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2f88:	709a      	strb	r2, [r3, #2]
    2f8a:	bd08      	pop	{r3, pc}
    2f8c:	2000069c 	.word	0x2000069c

00002f90 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2f90:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2f92:	2800      	cmp	r0, #0
    2f94:	bf14      	ite	ne
    2f96:	260f      	movne	r6, #15
    2f98:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2f9a:	4b09      	ldr	r3, [pc, #36]	; (2fc0 <show_cursor+0x30>)
    2f9c:	785c      	ldrb	r4, [r3, #1]
    2f9e:	1da3      	adds	r3, r4, #6
    2fa0:	429c      	cmp	r4, r3
    2fa2:	da0b      	bge.n	2fbc <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2fa4:	4d06      	ldr	r5, [pc, #24]	; (2fc0 <show_cursor+0x30>)
    2fa6:	78a9      	ldrb	r1, [r5, #2]
    2fa8:	4632      	mov	r2, r6
    2faa:	3107      	adds	r1, #7
    2fac:	4620      	mov	r0, r4
    2fae:	f7fe fb7b 	bl	16a8 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2fb2:	3401      	adds	r4, #1
    2fb4:	786b      	ldrb	r3, [r5, #1]
    2fb6:	3306      	adds	r3, #6
    2fb8:	42a3      	cmp	r3, r4
    2fba:	dcf4      	bgt.n	2fa6 <show_cursor+0x16>
    2fbc:	bd70      	pop	{r4, r5, r6, pc}
    2fbe:	bf00      	nop
    2fc0:	2000069c 	.word	0x2000069c

00002fc4 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2fc4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2fc8:	f000 fa7c 	bl	34c4 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fcc:	4b0c      	ldr	r3, [pc, #48]	; (3000 <clear_line+0x3c>)
    2fce:	789c      	ldrb	r4, [r3, #2]
    2fd0:	f104 0308 	add.w	r3, r4, #8
    2fd4:	429c      	cmp	r4, r3
    2fd6:	da10      	bge.n	2ffa <clear_line+0x36>
    2fd8:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fda:	f8df 8028 	ldr.w	r8, [pc, #40]	; 3004 <clear_line+0x40>
    2fde:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fe0:	4e07      	ldr	r6, [pc, #28]	; (3000 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fe2:	7a28      	ldrb	r0, [r5, #8]
    2fe4:	463a      	mov	r2, r7
    2fe6:	4601      	mov	r1, r0
    2fe8:	fb04 8000 	mla	r0, r4, r0, r8
    2fec:	f7fe fa27 	bl	143e <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2ff0:	3401      	adds	r4, #1
    2ff2:	78b3      	ldrb	r3, [r6, #2]
    2ff4:	3308      	adds	r3, #8
    2ff6:	42a3      	cmp	r3, r4
    2ff8:	dcf3      	bgt.n	2fe2 <clear_line+0x1e>
    2ffa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2ffe:	bf00      	nop
    3000:	2000069c 	.word	0x2000069c
    3004:	20002714 	.word	0x20002714

00003008 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    3008:	4b01      	ldr	r3, [pc, #4]	; (3010 <select_console+0x8>)
    300a:	7018      	strb	r0, [r3, #0]
    300c:	4770      	bx	lr
    300e:	bf00      	nop
    3010:	2000069c 	.word	0x2000069c

00003014 <get_char>:
}

//read a character from serial port
char get_char(){
    3014:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    3016:	2400      	movs	r4, #0
    3018:	4620      	mov	r0, r4
    301a:	f000 fb8f 	bl	373c <usart_getc>
    301e:	2800      	cmp	r0, #0
    3020:	d0fa      	beq.n	3018 <get_char+0x4>
	return c;
}
    3022:	bd10      	pop	{r4, pc}

00003024 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    3024:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    3028:	4c31      	ldr	r4, [pc, #196]	; (30f0 <tvout_init+0xcc>)
    302a:	4b32      	ldr	r3, [pc, #200]	; (30f4 <tvout_init+0xd0>)
    302c:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    302e:	4a32      	ldr	r2, [pc, #200]	; (30f8 <tvout_init+0xd4>)
    3030:	4b32      	ldr	r3, [pc, #200]	; (30fc <tvout_init+0xd8>)
    3032:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    3034:	220a      	movs	r2, #10
    3036:	2108      	movs	r1, #8
    3038:	4620      	mov	r0, r4
    303a:	f7fe faa9 	bl	1590 <config_pin>
    PORTA->ODR=0;
    303e:	2500      	movs	r5, #0
    3040:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    3042:	4e2f      	ldr	r6, [pc, #188]	; (3100 <tvout_init+0xdc>)
    3044:	69b3      	ldr	r3, [r6, #24]
    3046:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    304a:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    304c:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    3050:	f04f 0878 	mov.w	r8, #120	; 0x78
    3054:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    3058:	2301      	movs	r3, #1
    305a:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    305c:	2784      	movs	r7, #132	; 0x84
    305e:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    3060:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3064:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    3066:	f44f 73a8 	mov.w	r3, #336	; 0x150
    306a:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    306c:	f240 1365 	movw	r3, #357	; 0x165
    3070:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    3072:	6963      	ldr	r3, [r4, #20]
    3074:	f043 0301 	orr.w	r3, r3, #1
    3078:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    307a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    307e:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    3080:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    3082:	68e3      	ldr	r3, [r4, #12]
    3084:	f043 0301 	orr.w	r3, r3, #1
    3088:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    308a:	4629      	mov	r1, r5
    308c:	2019      	movs	r0, #25
    308e:	f7ff f867 	bl	2160 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    3092:	4629      	mov	r1, r5
    3094:	201b      	movs	r0, #27
    3096:	f7ff f863 	bl	2160 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    309a:	2019      	movs	r0, #25
    309c:	f7ff f800 	bl	20a0 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    30a0:	201b      	movs	r0, #27
    30a2:	f7fe fffd 	bl	20a0 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    30a6:	6823      	ldr	r3, [r4, #0]
    30a8:	f043 0301 	orr.w	r3, r3, #1
    30ac:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    30ae:	220a      	movs	r2, #10
    30b0:	4629      	mov	r1, r5
    30b2:	4814      	ldr	r0, [pc, #80]	; (3104 <tvout_init+0xe0>)
    30b4:	f7fe fa6c 	bl	1590 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    30b8:	69f3      	ldr	r3, [r6, #28]
    30ba:	f043 0302 	orr.w	r3, r3, #2
    30be:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    30c0:	4b11      	ldr	r3, [pc, #68]	; (3108 <tvout_init+0xe4>)
    30c2:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    30c6:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    30c8:	2213      	movs	r2, #19
    30ca:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    30cc:	220a      	movs	r2, #10
    30ce:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    30d0:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    30d2:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    30d6:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    30d8:	695a      	ldr	r2, [r3, #20]
    30da:	f042 0201 	orr.w	r2, r2, #1
    30de:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    30e0:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    30e2:	681a      	ldr	r2, [r3, #0]
    30e4:	f042 0201 	orr.w	r2, r2, #1
    30e8:	601a      	str	r2, [r3, #0]
    30ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    30ee:	bf00      	nop
    30f0:	40010800 	.word	0x40010800
    30f4:	88883333 	.word	0x88883333
    30f8:	84484444 	.word	0x84484444
    30fc:	40010804 	.word	0x40010804
    3100:	40021000 	.word	0x40021000
    3104:	40010c00 	.word	0x40010c00
    3108:	40000400 	.word	0x40000400

0000310c <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    310c:	4668      	mov	r0, sp
    310e:	f020 0107 	bic.w	r1, r0, #7
    3112:	468d      	mov	sp, r1
    3114:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    3116:	4a2f      	ldr	r2, [pc, #188]	; (31d4 <TV_OUT_handler+0xc8>)
    3118:	6a13      	ldr	r3, [r2, #32]
    311a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    311e:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    3120:	492d      	ldr	r1, [pc, #180]	; (31d8 <TV_OUT_handler+0xcc>)
    3122:	f240 2209 	movw	r2, #521	; 0x209
    3126:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3128:	4293      	cmp	r3, r2
    312a:	d9fc      	bls.n	3126 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    312c:	4a29      	ldr	r2, [pc, #164]	; (31d4 <TV_OUT_handler+0xc8>)
    312e:	6a13      	ldr	r3, [r2, #32]
    3130:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3134:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    3136:	4b29      	ldr	r3, [pc, #164]	; (31dc <TV_OUT_handler+0xd0>)
    3138:	881d      	ldrh	r5, [r3, #0]
    313a:	b2ad      	uxth	r5, r5
    313c:	4b28      	ldr	r3, [pc, #160]	; (31e0 <TV_OUT_handler+0xd4>)
    313e:	7818      	ldrb	r0, [r3, #0]
    3140:	785a      	ldrb	r2, [r3, #1]
    3142:	fb95 f5f2 	sdiv	r5, r5, r2
    3146:	4a27      	ldr	r2, [pc, #156]	; (31e4 <TV_OUT_handler+0xd8>)
    3148:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    314c:	8859      	ldrh	r1, [r3, #2]
    314e:	4a22      	ldr	r2, [pc, #136]	; (31d8 <TV_OUT_handler+0xcc>)
    3150:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3152:	428b      	cmp	r3, r1
    3154:	d3fc      	bcc.n	3150 <TV_OUT_handler+0x44>
    _jitter_cancel();
    3156:	4b24      	ldr	r3, [pc, #144]	; (31e8 <TV_OUT_handler+0xdc>)
    3158:	461a      	mov	r2, r3
    315a:	6812      	ldr	r2, [r2, #0]
    315c:	f002 0207 	and.w	r2, r2, #7
    3160:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3164:	4497      	add	pc, r2
    3166:	bf00      	nop
    3168:	bf00      	nop
    316a:	bf00      	nop
    316c:	bf00      	nop
    316e:	bf00      	nop
    3170:	bf00      	nop
    3172:	bf00      	nop
    3174:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    3176:	4a17      	ldr	r2, [pc, #92]	; (31d4 <TV_OUT_handler+0xc8>)
    3178:	6a13      	ldr	r3, [r2, #32]
    317a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    317e:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    3180:	b1b0      	cbz	r0, 31b0 <TV_OUT_handler+0xa4>
    3182:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3184:	4819      	ldr	r0, [pc, #100]	; (31ec <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    3186:	4916      	ldr	r1, [pc, #88]	; (31e0 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    3188:	781a      	ldrb	r2, [r3, #0]
    318a:	0912      	lsrs	r2, r2, #4
    318c:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    318e:	790c      	ldrb	r4, [r1, #4]
    3190:	4622      	mov	r2, r4
    3192:	3a01      	subs	r2, #1
    3194:	d1fd      	bne.n	3192 <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    3196:	f813 2b01 	ldrb.w	r2, [r3], #1
    319a:	f002 020f 	and.w	r2, r2, #15
    319e:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    31a0:	790c      	ldrb	r4, [r1, #4]
    31a2:	4622      	mov	r2, r4
    31a4:	3a01      	subs	r2, #1
    31a6:	d1fd      	bne.n	31a4 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    31a8:	1b5c      	subs	r4, r3, r5
    31aa:	780a      	ldrb	r2, [r1, #0]
    31ac:	4294      	cmp	r4, r2
    31ae:	d3eb      	bcc.n	3188 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    31b0:	2200      	movs	r2, #0
    31b2:	4b0f      	ldr	r3, [pc, #60]	; (31f0 <TV_OUT_handler+0xe4>)
    31b4:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    31b6:	4a07      	ldr	r2, [pc, #28]	; (31d4 <TV_OUT_handler+0xc8>)
    31b8:	6a13      	ldr	r3, [r2, #32]
    31ba:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    31be:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    31c0:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    31c4:	6913      	ldr	r3, [r2, #16]
    31c6:	f023 0304 	bic.w	r3, r3, #4
    31ca:	6113      	str	r3, [r2, #16]
}
    31cc:	bc31      	pop	{r0, r4, r5}
    31ce:	4685      	mov	sp, r0
    31d0:	4770      	bx	lr
    31d2:	bf00      	nop
    31d4:	40000400 	.word	0x40000400
    31d8:	40012c00 	.word	0x40012c00
    31dc:	200006a0 	.word	0x200006a0
    31e0:	20000208 	.word	0x20000208
    31e4:	20002714 	.word	0x20002714
    31e8:	40012c24 	.word	0x40012c24
    31ec:	4001080c 	.word	0x4001080c
    31f0:	40010800 	.word	0x40010800

000031f4 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    31f4:	4668      	mov	r0, sp
    31f6:	f020 0107 	bic.w	r1, r0, #7
    31fa:	468d      	mov	sp, r1
    31fc:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    31fe:	4a8e      	ldr	r2, [pc, #568]	; (3438 <TV_SYNC_handler+0x244>)
    3200:	8853      	ldrh	r3, [r2, #2]
    3202:	3301      	adds	r3, #1
    3204:	b29b      	uxth	r3, r3
    3206:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    3208:	498c      	ldr	r1, [pc, #560]	; (343c <TV_SYNC_handler+0x248>)
    320a:	680b      	ldr	r3, [r1, #0]
    320c:	3301      	adds	r3, #1
    320e:	600b      	str	r3, [r1, #0]
    switch (task){
    3210:	8893      	ldrh	r3, [r2, #4]
    3212:	b29b      	uxth	r3, r3
    3214:	2b09      	cmp	r3, #9
    3216:	f200 8081 	bhi.w	331c <TV_SYNC_handler+0x128>
    321a:	e8df f013 	tbh	[pc, r3, lsl #1]
    321e:	000a      	.short	0x000a
    3220:	0048002a 	.word	0x0048002a
    3224:	00880069 	.word	0x00880069
    3228:	00a50090 	.word	0x00a50090
    322c:	00d100b4 	.word	0x00d100b4
    3230:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    3232:	4b81      	ldr	r3, [pc, #516]	; (3438 <TV_SYNC_handler+0x244>)
    3234:	881b      	ldrh	r3, [r3, #0]
    3236:	b29b      	uxth	r3, r3
    3238:	b17b      	cbz	r3, 325a <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    323a:	4a7f      	ldr	r2, [pc, #508]	; (3438 <TV_SYNC_handler+0x244>)
    323c:	8813      	ldrh	r3, [r2, #0]
    323e:	3301      	adds	r3, #1
    3240:	b29b      	uxth	r3, r3
    3242:	8013      	strh	r3, [r2, #0]
    3244:	8813      	ldrh	r3, [r2, #0]
    3246:	b29b      	uxth	r3, r3
    3248:	2b06      	cmp	r3, #6
    324a:	d167      	bne.n	331c <TV_SYNC_handler+0x128>
    324c:	2300      	movs	r3, #0
    324e:	8013      	strh	r3, [r2, #0]
    3250:	8893      	ldrh	r3, [r2, #4]
    3252:	3301      	adds	r3, #1
    3254:	b29b      	uxth	r3, r3
    3256:	8093      	strh	r3, [r2, #4]
    3258:	e060      	b.n	331c <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    325a:	4b79      	ldr	r3, [pc, #484]	; (3440 <TV_SYNC_handler+0x24c>)
    325c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3260:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3262:	22a4      	movs	r2, #164	; 0xa4
    3264:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3266:	4a74      	ldr	r2, [pc, #464]	; (3438 <TV_SYNC_handler+0x244>)
    3268:	8813      	ldrh	r3, [r2, #0]
    326a:	3301      	adds	r3, #1
    326c:	b29b      	uxth	r3, r3
    326e:	8013      	strh	r3, [r2, #0]
    3270:	e054      	b.n	331c <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    3272:	4b71      	ldr	r3, [pc, #452]	; (3438 <TV_SYNC_handler+0x244>)
    3274:	881b      	ldrh	r3, [r3, #0]
    3276:	b29b      	uxth	r3, r3
    3278:	b17b      	cbz	r3, 329a <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    327a:	4a6f      	ldr	r2, [pc, #444]	; (3438 <TV_SYNC_handler+0x244>)
    327c:	8813      	ldrh	r3, [r2, #0]
    327e:	3301      	adds	r3, #1
    3280:	b29b      	uxth	r3, r3
    3282:	8013      	strh	r3, [r2, #0]
    3284:	8813      	ldrh	r3, [r2, #0]
    3286:	b29b      	uxth	r3, r3
    3288:	2b06      	cmp	r3, #6
    328a:	d147      	bne.n	331c <TV_SYNC_handler+0x128>
    328c:	2300      	movs	r3, #0
    328e:	8013      	strh	r3, [r2, #0]
    3290:	8893      	ldrh	r3, [r2, #4]
    3292:	3301      	adds	r3, #1
    3294:	b29b      	uxth	r3, r3
    3296:	8093      	strh	r3, [r2, #4]
    3298:	e040      	b.n	331c <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    329a:	f240 7294 	movw	r2, #1940	; 0x794
    329e:	4b68      	ldr	r3, [pc, #416]	; (3440 <TV_SYNC_handler+0x24c>)
    32a0:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32a2:	4a65      	ldr	r2, [pc, #404]	; (3438 <TV_SYNC_handler+0x244>)
    32a4:	8813      	ldrh	r3, [r2, #0]
    32a6:	3301      	adds	r3, #1
    32a8:	b29b      	uxth	r3, r3
    32aa:	8013      	strh	r3, [r2, #0]
    32ac:	e036      	b.n	331c <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    32ae:	4b62      	ldr	r3, [pc, #392]	; (3438 <TV_SYNC_handler+0x244>)
    32b0:	881b      	ldrh	r3, [r3, #0]
    32b2:	b29b      	uxth	r3, r3
    32b4:	b153      	cbz	r3, 32cc <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    32b6:	4b60      	ldr	r3, [pc, #384]	; (3438 <TV_SYNC_handler+0x244>)
    32b8:	881b      	ldrh	r3, [r3, #0]
    32ba:	b29b      	uxth	r3, r3
    32bc:	2b06      	cmp	r3, #6
    32be:	d00e      	beq.n	32de <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    32c0:	4a5d      	ldr	r2, [pc, #372]	; (3438 <TV_SYNC_handler+0x244>)
    32c2:	8813      	ldrh	r3, [r2, #0]
    32c4:	3301      	adds	r3, #1
    32c6:	b29b      	uxth	r3, r3
    32c8:	8013      	strh	r3, [r2, #0]
            break;
    32ca:	e027      	b.n	331c <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    32cc:	22a4      	movs	r2, #164	; 0xa4
    32ce:	4b5c      	ldr	r3, [pc, #368]	; (3440 <TV_SYNC_handler+0x24c>)
    32d0:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32d2:	4a59      	ldr	r2, [pc, #356]	; (3438 <TV_SYNC_handler+0x244>)
    32d4:	8813      	ldrh	r3, [r2, #0]
    32d6:	3301      	adds	r3, #1
    32d8:	b29b      	uxth	r3, r3
    32da:	8013      	strh	r3, [r2, #0]
            break;
    32dc:	e01e      	b.n	331c <TV_SYNC_handler+0x128>
            task++;
    32de:	4a56      	ldr	r2, [pc, #344]	; (3438 <TV_SYNC_handler+0x244>)
    32e0:	8893      	ldrh	r3, [r2, #4]
    32e2:	3301      	adds	r3, #1
    32e4:	b29b      	uxth	r3, r3
    32e6:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    32e8:	88d3      	ldrh	r3, [r2, #6]
    32ea:	f013 0f01 	tst.w	r3, #1
    32ee:	d015      	beq.n	331c <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    32f0:	4b53      	ldr	r3, [pc, #332]	; (3440 <TV_SYNC_handler+0x24c>)
    32f2:	f241 12c5 	movw	r2, #4549	; 0x11c5
    32f6:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    32f8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    32fc:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    32fe:	4a4e      	ldr	r2, [pc, #312]	; (3438 <TV_SYNC_handler+0x244>)
    3300:	88d3      	ldrh	r3, [r2, #6]
    3302:	f023 0302 	bic.w	r3, r3, #2
    3306:	041b      	lsls	r3, r3, #16
    3308:	0c1b      	lsrs	r3, r3, #16
    330a:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    330c:	8853      	ldrh	r3, [r2, #2]
    330e:	f3c3 038d 	ubfx	r3, r3, #2, #14
    3312:	8053      	strh	r3, [r2, #2]
        task++;
    3314:	8893      	ldrh	r3, [r2, #4]
    3316:	3301      	adds	r3, #1
    3318:	b29b      	uxth	r3, r3
    331a:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    331c:	4a48      	ldr	r2, [pc, #288]	; (3440 <TV_SYNC_handler+0x24c>)
    331e:	6913      	ldr	r3, [r2, #16]
    3320:	f023 0301 	bic.w	r3, r3, #1
    3324:	6113      	str	r3, [r2, #16]
}
    3326:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    332a:	4685      	mov	sp, r0
    332c:	4770      	bx	lr
        read_gamepad();
    332e:	f7fd ff2b 	bl	1188 <read_gamepad>
        task++;
    3332:	4a41      	ldr	r2, [pc, #260]	; (3438 <TV_SYNC_handler+0x244>)
    3334:	8893      	ldrh	r3, [r2, #4]
    3336:	3301      	adds	r3, #1
    3338:	b29b      	uxth	r3, r3
    333a:	8093      	strh	r3, [r2, #4]
        break;    
    333c:	e7ee      	b.n	331c <TV_SYNC_handler+0x128>
        if (sound_timer){
    333e:	4b41      	ldr	r3, [pc, #260]	; (3444 <TV_SYNC_handler+0x250>)
    3340:	881b      	ldrh	r3, [r3, #0]
    3342:	b29b      	uxth	r3, r3
    3344:	b13b      	cbz	r3, 3356 <TV_SYNC_handler+0x162>
            sound_timer--;
    3346:	4a3f      	ldr	r2, [pc, #252]	; (3444 <TV_SYNC_handler+0x250>)
    3348:	8813      	ldrh	r3, [r2, #0]
    334a:	3b01      	subs	r3, #1
    334c:	b29b      	uxth	r3, r3
    334e:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3350:	8813      	ldrh	r3, [r2, #0]
    3352:	b29b      	uxth	r3, r3
    3354:	b12b      	cbz	r3, 3362 <TV_SYNC_handler+0x16e>
        task++;
    3356:	4a38      	ldr	r2, [pc, #224]	; (3438 <TV_SYNC_handler+0x244>)
    3358:	8893      	ldrh	r3, [r2, #4]
    335a:	3301      	adds	r3, #1
    335c:	b29b      	uxth	r3, r3
    335e:	8093      	strh	r3, [r2, #4]
        break;    
    3360:	e7dc      	b.n	331c <TV_SYNC_handler+0x128>
                sound_stop();
    3362:	f7ff fb0a 	bl	297a <sound_stop>
    3366:	e7f6      	b.n	3356 <TV_SYNC_handler+0x162>
        if (game_timer){
    3368:	4b37      	ldr	r3, [pc, #220]	; (3448 <TV_SYNC_handler+0x254>)
    336a:	881b      	ldrh	r3, [r3, #0]
    336c:	b29b      	uxth	r3, r3
    336e:	b123      	cbz	r3, 337a <TV_SYNC_handler+0x186>
            game_timer--;
    3370:	4a35      	ldr	r2, [pc, #212]	; (3448 <TV_SYNC_handler+0x254>)
    3372:	8813      	ldrh	r3, [r2, #0]
    3374:	3b01      	subs	r3, #1
    3376:	b29b      	uxth	r3, r3
    3378:	8013      	strh	r3, [r2, #0]
        task++;
    337a:	4a2f      	ldr	r2, [pc, #188]	; (3438 <TV_SYNC_handler+0x244>)
    337c:	8893      	ldrh	r3, [r2, #4]
    337e:	3301      	adds	r3, #1
    3380:	b29b      	uxth	r3, r3
    3382:	8093      	strh	r3, [r2, #4]
        break;
    3384:	e7ca      	b.n	331c <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    3386:	4b2c      	ldr	r3, [pc, #176]	; (3438 <TV_SYNC_handler+0x244>)
    3388:	885b      	ldrh	r3, [r3, #2]
    338a:	b29b      	uxth	r3, r3
    338c:	4a2f      	ldr	r2, [pc, #188]	; (344c <TV_SYNC_handler+0x258>)
    338e:	88d2      	ldrh	r2, [r2, #6]
    3390:	429a      	cmp	r2, r3
    3392:	d1c3      	bne.n	331c <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    3394:	4b2a      	ldr	r3, [pc, #168]	; (3440 <TV_SYNC_handler+0x24c>)
    3396:	691a      	ldr	r2, [r3, #16]
    3398:	f022 0204 	bic.w	r2, r2, #4
    339c:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    339e:	68da      	ldr	r2, [r3, #12]
    33a0:	f042 0204 	orr.w	r2, r2, #4
    33a4:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    33a6:	4b24      	ldr	r3, [pc, #144]	; (3438 <TV_SYNC_handler+0x244>)
    33a8:	88da      	ldrh	r2, [r3, #6]
    33aa:	b292      	uxth	r2, r2
    33ac:	f042 0204 	orr.w	r2, r2, #4
    33b0:	80da      	strh	r2, [r3, #6]
            task++;
    33b2:	889a      	ldrh	r2, [r3, #4]
    33b4:	3201      	adds	r2, #1
    33b6:	b292      	uxth	r2, r2
    33b8:	809a      	strh	r2, [r3, #4]
            slice=0;
    33ba:	2200      	movs	r2, #0
    33bc:	801a      	strh	r2, [r3, #0]
    33be:	e7ad      	b.n	331c <TV_SYNC_handler+0x128>
        slice++;
    33c0:	4a1d      	ldr	r2, [pc, #116]	; (3438 <TV_SYNC_handler+0x244>)
    33c2:	8813      	ldrh	r3, [r2, #0]
    33c4:	3301      	adds	r3, #1
    33c6:	b29b      	uxth	r3, r3
    33c8:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    33ca:	8853      	ldrh	r3, [r2, #2]
    33cc:	b29b      	uxth	r3, r3
    33ce:	4a1f      	ldr	r2, [pc, #124]	; (344c <TV_SYNC_handler+0x258>)
    33d0:	8912      	ldrh	r2, [r2, #8]
    33d2:	429a      	cmp	r2, r3
    33d4:	d1a2      	bne.n	331c <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    33d6:	4a1a      	ldr	r2, [pc, #104]	; (3440 <TV_SYNC_handler+0x24c>)
    33d8:	68d3      	ldr	r3, [r2, #12]
    33da:	f023 0304 	bic.w	r3, r3, #4
    33de:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    33e0:	4a15      	ldr	r2, [pc, #84]	; (3438 <TV_SYNC_handler+0x244>)
    33e2:	88d3      	ldrh	r3, [r2, #6]
    33e4:	f023 0304 	bic.w	r3, r3, #4
    33e8:	041b      	lsls	r3, r3, #16
    33ea:	0c1b      	lsrs	r3, r3, #16
    33ec:	80d3      	strh	r3, [r2, #6]
            task++;
    33ee:	8893      	ldrh	r3, [r2, #4]
    33f0:	3301      	adds	r3, #1
    33f2:	b29b      	uxth	r3, r3
    33f4:	8093      	strh	r3, [r2, #4]
    33f6:	e791      	b.n	331c <TV_SYNC_handler+0x128>
        if (scan_line==263){
    33f8:	4b0f      	ldr	r3, [pc, #60]	; (3438 <TV_SYNC_handler+0x244>)
    33fa:	885b      	ldrh	r3, [r3, #2]
    33fc:	b29b      	uxth	r3, r3
    33fe:	f240 1207 	movw	r2, #263	; 0x107
    3402:	4293      	cmp	r3, r2
    3404:	d18a      	bne.n	331c <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    3406:	4b0c      	ldr	r3, [pc, #48]	; (3438 <TV_SYNC_handler+0x244>)
    3408:	88db      	ldrh	r3, [r3, #6]
    340a:	f013 0f01 	tst.w	r3, #1
    340e:	d003      	beq.n	3418 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    3410:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3414:	4b0a      	ldr	r3, [pc, #40]	; (3440 <TV_SYNC_handler+0x24c>)
    3416:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    3418:	4b07      	ldr	r3, [pc, #28]	; (3438 <TV_SYNC_handler+0x244>)
    341a:	88da      	ldrh	r2, [r3, #6]
    341c:	b292      	uxth	r2, r2
    341e:	f082 0201 	eor.w	r2, r2, #1
    3422:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    3424:	88da      	ldrh	r2, [r3, #6]
    3426:	b292      	uxth	r2, r2
    3428:	f042 0202 	orr.w	r2, r2, #2
    342c:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    342e:	2200      	movs	r2, #0
    3430:	805a      	strh	r2, [r3, #2]
            slice=0;
    3432:	801a      	strh	r2, [r3, #0]
            task=0;
    3434:	809a      	strh	r2, [r3, #4]
    3436:	e771      	b.n	331c <TV_SYNC_handler+0x128>
    3438:	200006a0 	.word	0x200006a0
    343c:	20004e78 	.word	0x20004e78
    3440:	40012c00 	.word	0x40012c00
    3444:	20004e7c 	.word	0x20004e7c
    3448:	20004e74 	.word	0x20004e74
    344c:	20000208 	.word	0x20000208

00003450 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3450:	4a02      	ldr	r2, [pc, #8]	; (345c <frame_sync+0xc>)
    3452:	88d3      	ldrh	r3, [r2, #6]
    3454:	f013 0f02 	tst.w	r3, #2
    3458:	d0fb      	beq.n	3452 <frame_sync+0x2>
}
    345a:	4770      	bx	lr
    345c:	200006a0 	.word	0x200006a0

00003460 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3460:	4a02      	ldr	r2, [pc, #8]	; (346c <wait_sync_end+0xc>)
    3462:	88d3      	ldrh	r3, [r2, #6]
    3464:	f013 0f02 	tst.w	r3, #2
    3468:	d1fb      	bne.n	3462 <wait_sync_end+0x2>
}
    346a:	4770      	bx	lr
    346c:	200006a0 	.word	0x200006a0

00003470 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3470:	b510      	push	{r4, lr}
    3472:	4604      	mov	r4, r0
    frame_sync();
    3474:	f7ff ffec 	bl	3450 <frame_sync>
    video_mode=mode;
    3478:	4b0e      	ldr	r3, [pc, #56]	; (34b4 <set_video_mode+0x44>)
    347a:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    347c:	b1ac      	cbz	r4, 34aa <set_video_mode+0x3a>
    347e:	2200      	movs	r2, #0
    3480:	4b0d      	ldr	r3, [pc, #52]	; (34b8 <set_video_mode+0x48>)
    3482:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3484:	4b0d      	ldr	r3, [pc, #52]	; (34bc <set_video_mode+0x4c>)
    3486:	480e      	ldr	r0, [pc, #56]	; (34c0 <set_video_mode+0x50>)
    3488:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    348c:	8842      	ldrh	r2, [r0, #2]
    348e:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3490:	8882      	ldrh	r2, [r0, #4]
    3492:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    3494:	88c2      	ldrh	r2, [r0, #6]
    3496:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    3498:	7a02      	ldrb	r2, [r0, #8]
    349a:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    349c:	7a42      	ldrb	r2, [r0, #9]
    349e:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    34a0:	7a82      	ldrb	r2, [r0, #10]
    34a2:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    34a4:	f7fe f92a 	bl	16fc <gfx_cls>
    34a8:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    34aa:	2202      	movs	r2, #2
    34ac:	4b02      	ldr	r3, [pc, #8]	; (34b8 <set_video_mode+0x48>)
    34ae:	701a      	strb	r2, [r3, #0]
    34b0:	e7e8      	b.n	3484 <set_video_mode+0x14>
    34b2:	bf00      	nop
    34b4:	200006a0 	.word	0x200006a0
    34b8:	200001ac 	.word	0x200001ac
    34bc:	20000208 	.word	0x20000208
    34c0:	00003da0 	.word	0x00003da0

000034c4 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    34c4:	4b02      	ldr	r3, [pc, #8]	; (34d0 <get_video_params+0xc>)
    34c6:	7a18      	ldrb	r0, [r3, #8]
}
    34c8:	4b02      	ldr	r3, [pc, #8]	; (34d4 <get_video_params+0x10>)
    34ca:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    34ce:	4770      	bx	lr
    34d0:	200006a0 	.word	0x200006a0
    34d4:	00003da0 	.word	0x00003da0

000034d8 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    34d8:	4b03      	ldr	r3, [pc, #12]	; (34e8 <game_pause+0x10>)
    34da:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    34dc:	461a      	mov	r2, r3
    34de:	8813      	ldrh	r3, [r2, #0]
    34e0:	b29b      	uxth	r3, r3
    34e2:	2b00      	cmp	r3, #0
    34e4:	d1fb      	bne.n	34de <game_pause+0x6>
}
    34e6:	4770      	bx	lr
    34e8:	20004e74 	.word	0x20004e74

000034ec <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    34ec:	4b03      	ldr	r3, [pc, #12]	; (34fc <micro_pause+0x10>)
    34ee:	681b      	ldr	r3, [r3, #0]
    34f0:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    34f2:	4a02      	ldr	r2, [pc, #8]	; (34fc <micro_pause+0x10>)
    34f4:	6813      	ldr	r3, [r2, #0]
    34f6:	4298      	cmp	r0, r3
    34f8:	d8fc      	bhi.n	34f4 <micro_pause+0x8>
}
    34fa:	4770      	bx	lr
    34fc:	20004e78 	.word	0x20004e78

00003500 <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    3500:	2801      	cmp	r0, #1
    3502:	d035      	beq.n	3570 <usart_config_port+0x70>
    3504:	b110      	cbz	r0, 350c <usart_config_port+0xc>
    3506:	2802      	cmp	r0, #2
    3508:	d04f      	beq.n	35aa <usart_config_port+0xaa>
    350a:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    350c:	4835      	ldr	r0, [pc, #212]	; (35e4 <usart_config_port+0xe4>)
    350e:	6983      	ldr	r3, [r0, #24]
    3510:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3514:	f043 0304 	orr.w	r3, r3, #4
    3518:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    351a:	2a01      	cmp	r2, #1
    351c:	d016      	beq.n	354c <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    351e:	4b32      	ldr	r3, [pc, #200]	; (35e8 <usart_config_port+0xe8>)
    3520:	4299      	cmp	r1, r3
    3522:	d01c      	beq.n	355e <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3524:	4a31      	ldr	r2, [pc, #196]	; (35ec <usart_config_port+0xec>)
    3526:	6853      	ldr	r3, [r2, #4]
    3528:	f043 0304 	orr.w	r3, r3, #4
    352c:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    352e:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    3532:	6993      	ldr	r3, [r2, #24]
    3534:	f043 0308 	orr.w	r3, r3, #8
    3538:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    353a:	680b      	ldr	r3, [r1, #0]
    353c:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3540:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    3542:	680b      	ldr	r3, [r1, #0]
    3544:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    3548:	600b      	str	r3, [r1, #0]
    354a:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    354c:	684b      	ldr	r3, [r1, #4]
    354e:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    3552:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3554:	684b      	ldr	r3, [r1, #4]
    3556:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    355a:	604b      	str	r3, [r1, #4]
    355c:	e7df      	b.n	351e <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    355e:	685a      	ldr	r2, [r3, #4]
    3560:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3564:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    3566:	685a      	ldr	r2, [r3, #4]
    3568:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    356c:	605a      	str	r2, [r3, #4]
    356e:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3570:	4b1c      	ldr	r3, [pc, #112]	; (35e4 <usart_config_port+0xe4>)
    3572:	69d8      	ldr	r0, [r3, #28]
    3574:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3578:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    357a:	6998      	ldr	r0, [r3, #24]
    357c:	f040 0004 	orr.w	r0, r0, #4
    3580:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    3582:	2a01      	cmp	r2, #1
    3584:	d008      	beq.n	3598 <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    3586:	680b      	ldr	r3, [r1, #0]
    3588:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    358c:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    358e:	680b      	ldr	r3, [r1, #0]
    3590:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3594:	600b      	str	r3, [r1, #0]
    3596:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3598:	680b      	ldr	r3, [r1, #0]
    359a:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    359e:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    35a0:	680b      	ldr	r3, [r1, #0]
    35a2:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    35a6:	600b      	str	r3, [r1, #0]
    35a8:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    35aa:	4b0e      	ldr	r3, [pc, #56]	; (35e4 <usart_config_port+0xe4>)
    35ac:	69d8      	ldr	r0, [r3, #28]
    35ae:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    35b2:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    35b4:	6998      	ldr	r0, [r3, #24]
    35b6:	f040 0008 	orr.w	r0, r0, #8
    35ba:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    35bc:	2a01      	cmp	r2, #1
    35be:	d008      	beq.n	35d2 <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    35c0:	684b      	ldr	r3, [r1, #4]
    35c2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    35c6:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    35c8:	684b      	ldr	r3, [r1, #4]
    35ca:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    35ce:	604b      	str	r3, [r1, #4]
    35d0:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    35d2:	684b      	ldr	r3, [r1, #4]
    35d4:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    35d8:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    35da:	684b      	ldr	r3, [r1, #4]
    35dc:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    35e0:	604b      	str	r3, [r1, #4]
    35e2:	4770      	bx	lr
    35e4:	40021000 	.word	0x40021000
    35e8:	40010800 	.word	0x40010800
    35ec:	40010000 	.word	0x40010000

000035f0 <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    35f0:	4602      	mov	r2, r0
    35f2:	b138      	cbz	r0, 3604 <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    35f4:	4b05      	ldr	r3, [pc, #20]	; (360c <usart_set_baud+0x1c>)
    35f6:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    35fa:	4b05      	ldr	r3, [pc, #20]	; (3610 <usart_set_baud+0x20>)
    35fc:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    3600:	6099      	str	r1, [r3, #8]
    3602:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    3604:	4b03      	ldr	r3, [pc, #12]	; (3614 <usart_set_baud+0x24>)
    3606:	fbb3 f1f1 	udiv	r1, r3, r1
    360a:	e7f6      	b.n	35fa <usart_set_baud+0xa>
    360c:	022231fa 	.word	0x022231fa
    3610:	00003dc8 	.word	0x00003dc8
    3614:	044463f4 	.word	0x044463f4

00003618 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    3618:	4b05      	ldr	r3, [pc, #20]	; (3630 <usart_comm_dir+0x18>)
    361a:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    361e:	68da      	ldr	r2, [r3, #12]
    3620:	f022 020c 	bic.w	r2, r2, #12
    3624:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    3626:	68da      	ldr	r2, [r3, #12]
    3628:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    362c:	60d9      	str	r1, [r3, #12]
    362e:	4770      	bx	lr
    3630:	00003dc8 	.word	0x00003dc8

00003634 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    3634:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    3638:	4604      	mov	r4, r0
    363a:	460f      	mov	r7, r1
    363c:	4615      	mov	r5, r2
    363e:	4698      	mov	r8, r3
    3640:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    3642:	2801      	cmp	r0, #1
    3644:	d030      	beq.n	36a8 <usart_open_channel+0x74>
    3646:	b1d0      	cbz	r0, 367e <usart_open_channel+0x4a>
    3648:	2802      	cmp	r0, #2
    364a:	d03a      	beq.n	36c2 <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    364c:	2e01      	cmp	r6, #1
    364e:	d045      	beq.n	36dc <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    3650:	4641      	mov	r1, r8
    3652:	4620      	mov	r0, r4
    3654:	f7ff ffe0 	bl	3618 <usart_comm_dir>
	switch (parity){
    3658:	2d01      	cmp	r5, #1
    365a:	d04e      	beq.n	36fa <usart_open_channel+0xc6>
    365c:	2d00      	cmp	r5, #0
    365e:	d044      	beq.n	36ea <usart_open_channel+0xb6>
    3660:	2d02      	cmp	r5, #2
    3662:	d052      	beq.n	370a <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3664:	4639      	mov	r1, r7
    3666:	4620      	mov	r0, r4
    3668:	f7ff ffc2 	bl	35f0 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    366c:	4b2b      	ldr	r3, [pc, #172]	; (371c <usart_open_channel+0xe8>)
    366e:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3672:	68d3      	ldr	r3, [r2, #12]
    3674:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3678:	60d3      	str	r3, [r2, #12]
    367a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    367e:	9b06      	ldr	r3, [sp, #24]
    3680:	b963      	cbnz	r3, 369c <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    3682:	4632      	mov	r2, r6
    3684:	4926      	ldr	r1, [pc, #152]	; (3720 <usart_open_channel+0xec>)
    3686:	2000      	movs	r0, #0
    3688:	f7ff ff3a 	bl	3500 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    368c:	2107      	movs	r1, #7
    368e:	2025      	movs	r0, #37	; 0x25
    3690:	f7fe fd66 	bl	2160 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    3694:	2025      	movs	r0, #37	; 0x25
    3696:	f7fe fd03 	bl	20a0 <enable_interrupt>
		break;
    369a:	e7d7      	b.n	364c <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    369c:	4632      	mov	r2, r6
    369e:	4921      	ldr	r1, [pc, #132]	; (3724 <usart_open_channel+0xf0>)
    36a0:	2000      	movs	r0, #0
    36a2:	f7ff ff2d 	bl	3500 <usart_config_port>
    36a6:	e7f1      	b.n	368c <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    36a8:	4632      	mov	r2, r6
    36aa:	491d      	ldr	r1, [pc, #116]	; (3720 <usart_open_channel+0xec>)
    36ac:	2001      	movs	r0, #1
    36ae:	f7ff ff27 	bl	3500 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    36b2:	2107      	movs	r1, #7
    36b4:	2026      	movs	r0, #38	; 0x26
    36b6:	f7fe fd53 	bl	2160 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    36ba:	2026      	movs	r0, #38	; 0x26
    36bc:	f7fe fcf0 	bl	20a0 <enable_interrupt>
		break;
    36c0:	e7c4      	b.n	364c <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    36c2:	4632      	mov	r2, r6
    36c4:	4917      	ldr	r1, [pc, #92]	; (3724 <usart_open_channel+0xf0>)
    36c6:	2002      	movs	r0, #2
    36c8:	f7ff ff1a 	bl	3500 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    36cc:	2107      	movs	r1, #7
    36ce:	2027      	movs	r0, #39	; 0x27
    36d0:	f7fe fd46 	bl	2160 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    36d4:	2027      	movs	r0, #39	; 0x27
    36d6:	f7fe fce3 	bl	20a0 <enable_interrupt>
		break;
    36da:	e7b7      	b.n	364c <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    36dc:	4b0f      	ldr	r3, [pc, #60]	; (371c <usart_open_channel+0xe8>)
    36de:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    36e2:	f44f 7240 	mov.w	r2, #768	; 0x300
    36e6:	615a      	str	r2, [r3, #20]
    36e8:	e7b2      	b.n	3650 <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    36ea:	4b0c      	ldr	r3, [pc, #48]	; (371c <usart_open_channel+0xe8>)
    36ec:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    36f0:	68d3      	ldr	r3, [r2, #12]
    36f2:	f043 0320 	orr.w	r3, r3, #32
    36f6:	60d3      	str	r3, [r2, #12]
		break;
    36f8:	e7b4      	b.n	3664 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    36fa:	4b08      	ldr	r3, [pc, #32]	; (371c <usart_open_channel+0xe8>)
    36fc:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3700:	68d3      	ldr	r3, [r2, #12]
    3702:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    3706:	60d3      	str	r3, [r2, #12]
		break;
    3708:	e7ac      	b.n	3664 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    370a:	4b04      	ldr	r3, [pc, #16]	; (371c <usart_open_channel+0xe8>)
    370c:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3710:	68d3      	ldr	r3, [r2, #12]
    3712:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    3716:	60d3      	str	r3, [r2, #12]
		break;
    3718:	e7a4      	b.n	3664 <usart_open_channel+0x30>
    371a:	bf00      	nop
    371c:	00003dc8 	.word	0x00003dc8
    3720:	40010800 	.word	0x40010800
    3724:	40010c00 	.word	0x40010c00

00003728 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return channels[channel]->SR&USART_SR_RXNE;
    3728:	4b03      	ldr	r3, [pc, #12]	; (3738 <usart_stat+0x10>)
    372a:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    372e:	6818      	ldr	r0, [r3, #0]
}
    3730:	f000 0020 	and.w	r0, r0, #32
    3734:	4770      	bx	lr
    3736:	bf00      	nop
    3738:	00003dc8 	.word	0x00003dc8

0000373c <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    373c:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    373e:	490c      	ldr	r1, [pc, #48]	; (3770 <usart_getc+0x34>)
    3740:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3744:	005b      	lsls	r3, r3, #1
    3746:	18c8      	adds	r0, r1, r3
    3748:	5ccb      	ldrb	r3, [r1, r3]
    374a:	7841      	ldrb	r1, [r0, #1]
    374c:	4299      	cmp	r1, r3
    374e:	d00d      	beq.n	376c <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    3750:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3752:	4d07      	ldr	r5, [pc, #28]	; (3770 <usart_getc+0x34>)
    3754:	00d4      	lsls	r4, r2, #3
    3756:	4601      	mov	r1, r0
    3758:	4419      	add	r1, r3
    375a:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    375c:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    375e:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    3760:	f003 030f 	and.w	r3, r3, #15
    3764:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    3768:	bc30      	pop	{r4, r5}
    376a:	4770      	bx	lr
		return 0;
    376c:	2000      	movs	r0, #0
    376e:	4770      	bx	lr
    3770:	200006ac 	.word	0x200006ac

00003774 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    3774:	b570      	push	{r4, r5, r6, lr}
    3776:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    3778:	4b08      	ldr	r3, [pc, #32]	; (379c <usart_getc_dly+0x28>)
    377a:	681c      	ldr	r4, [r3, #0]
    377c:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    377e:	461d      	mov	r5, r3
    3780:	682b      	ldr	r3, [r5, #0]
    3782:	429c      	cmp	r4, r3
    3784:	d906      	bls.n	3794 <usart_getc_dly+0x20>
    3786:	4630      	mov	r0, r6
    3788:	f7ff ffd8 	bl	373c <usart_getc>
    378c:	4603      	mov	r3, r0
    378e:	2800      	cmp	r0, #0
    3790:	d0f6      	beq.n	3780 <usart_getc_dly+0xc>
    3792:	e000      	b.n	3796 <usart_getc_dly+0x22>
    3794:	2300      	movs	r3, #0
	return c;
}
    3796:	4618      	mov	r0, r3
    3798:	bd70      	pop	{r4, r5, r6, pc}
    379a:	bf00      	nop
    379c:	20004e78 	.word	0x20004e78

000037a0 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    37a0:	4b04      	ldr	r3, [pc, #16]	; (37b4 <usart_putc+0x14>)
    37a2:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    37a6:	6813      	ldr	r3, [r2, #0]
    37a8:	f013 0f80 	tst.w	r3, #128	; 0x80
    37ac:	d0fb      	beq.n	37a6 <usart_putc+0x6>
	channels[channel]->DR=c;
    37ae:	6051      	str	r1, [r2, #4]
    37b0:	4770      	bx	lr
    37b2:	bf00      	nop
    37b4:	00003dc8 	.word	0x00003dc8

000037b8 <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    37b8:	2801      	cmp	r0, #1
    37ba:	d009      	beq.n	37d0 <usart_cts+0x18>
    37bc:	b118      	cbz	r0, 37c6 <usart_cts+0xe>
    37be:	2802      	cmp	r0, #2
    37c0:	d00b      	beq.n	37da <usart_cts+0x22>
    37c2:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    37c4:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    37c6:	4b07      	ldr	r3, [pc, #28]	; (37e4 <usart_cts+0x2c>)
    37c8:	6898      	ldr	r0, [r3, #8]
    37ca:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    37ce:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    37d0:	4b04      	ldr	r3, [pc, #16]	; (37e4 <usart_cts+0x2c>)
    37d2:	6898      	ldr	r0, [r3, #8]
    37d4:	f000 0001 	and.w	r0, r0, #1
			break;
    37d8:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    37da:	4b03      	ldr	r3, [pc, #12]	; (37e8 <usart_cts+0x30>)
    37dc:	6898      	ldr	r0, [r3, #8]
    37de:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    37e2:	4770      	bx	lr
    37e4:	40010800 	.word	0x40010800
    37e8:	40010c00 	.word	0x40010c00

000037ec <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    37ec:	b538      	push	{r3, r4, r5, lr}
    37ee:	4605      	mov	r5, r0
    37f0:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    37f2:	7809      	ldrb	r1, [r1, #0]
    37f4:	b131      	cbz	r1, 3804 <usart_print+0x18>
    37f6:	4628      	mov	r0, r5
    37f8:	f7ff ffd2 	bl	37a0 <usart_putc>
    37fc:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    3800:	2900      	cmp	r1, #0
    3802:	d1f8      	bne.n	37f6 <usart_print+0xa>
    3804:	bd38      	pop	{r3, r4, r5, pc}

00003806 <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    3806:	4668      	mov	r0, sp
    3808:	f020 0107 	bic.w	r1, r0, #7
    380c:	468d      	mov	sp, r1
    380e:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3810:	4b08      	ldr	r3, [pc, #32]	; (3834 <USART1_handler+0x2e>)
    3812:	681b      	ldr	r3, [r3, #0]
    3814:	f013 0f20 	tst.w	r3, #32
    3818:	d009      	beq.n	382e <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    381a:	4a07      	ldr	r2, [pc, #28]	; (3838 <USART1_handler+0x32>)
    381c:	7853      	ldrb	r3, [r2, #1]
    381e:	4905      	ldr	r1, [pc, #20]	; (3834 <USART1_handler+0x2e>)
    3820:	6848      	ldr	r0, [r1, #4]
    3822:	18d1      	adds	r1, r2, r3
    3824:	7088      	strb	r0, [r1, #2]
    3826:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    3828:	f003 030f 	and.w	r3, r3, #15
    382c:	7053      	strb	r3, [r2, #1]
		}
}
    382e:	bc01      	pop	{r0}
    3830:	4685      	mov	sp, r0
    3832:	4770      	bx	lr
    3834:	40013800 	.word	0x40013800
    3838:	200006ac 	.word	0x200006ac

0000383c <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    383c:	4668      	mov	r0, sp
    383e:	f020 0107 	bic.w	r1, r0, #7
    3842:	468d      	mov	sp, r1
    3844:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3846:	4b0a      	ldr	r3, [pc, #40]	; (3870 <USART2_handler+0x34>)
    3848:	681b      	ldr	r3, [r3, #0]
    384a:	f013 0f20 	tst.w	r3, #32
    384e:	d00b      	beq.n	3868 <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    3850:	4a08      	ldr	r2, [pc, #32]	; (3874 <USART2_handler+0x38>)
    3852:	7cd1      	ldrb	r1, [r2, #19]
    3854:	1c4b      	adds	r3, r1, #1
    3856:	b2db      	uxtb	r3, r3
    3858:	74d3      	strb	r3, [r2, #19]
    385a:	4807      	ldr	r0, [pc, #28]	; (3878 <USART2_handler+0x3c>)
    385c:	6840      	ldr	r0, [r0, #4]
    385e:	4411      	add	r1, r2
    3860:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3862:	f003 030f 	and.w	r3, r3, #15
    3866:	74d3      	strb	r3, [r2, #19]
		}
}
    3868:	bc01      	pop	{r0}
    386a:	4685      	mov	sp, r0
    386c:	4770      	bx	lr
    386e:	bf00      	nop
    3870:	40013800 	.word	0x40013800
    3874:	200006ac 	.word	0x200006ac
    3878:	40004400 	.word	0x40004400

0000387c <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    387c:	4668      	mov	r0, sp
    387e:	f020 0107 	bic.w	r1, r0, #7
    3882:	468d      	mov	sp, r1
    3884:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3886:	4b0b      	ldr	r3, [pc, #44]	; (38b4 <USART3_handler+0x38>)
    3888:	681b      	ldr	r3, [r3, #0]
    388a:	f013 0f20 	tst.w	r3, #32
    388e:	d00d      	beq.n	38ac <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    3890:	4b09      	ldr	r3, [pc, #36]	; (38b8 <USART3_handler+0x3c>)
    3892:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    3896:	1c51      	adds	r1, r2, #1
    3898:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    389c:	4907      	ldr	r1, [pc, #28]	; (38bc <USART3_handler+0x40>)
    389e:	6849      	ldr	r1, [r1, #4]
    38a0:	441a      	add	r2, r3
    38a2:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    38a4:	7cda      	ldrb	r2, [r3, #19]
    38a6:	f002 020f 	and.w	r2, r2, #15
    38aa:	74da      	strb	r2, [r3, #19]
		}
}
    38ac:	bc01      	pop	{r0}
    38ae:	4685      	mov	sp, r0
    38b0:	4770      	bx	lr
    38b2:	bf00      	nop
    38b4:	40013800 	.word	0x40013800
    38b8:	200006ac 	.word	0x200006ac
    38bc:	40004800 	.word	0x40004800
