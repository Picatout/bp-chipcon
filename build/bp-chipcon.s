
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 a9 2b 00 00     .P. 1........+..
      10:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 a9 2b 00 00     .+...+...+...+..
      20:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 09 02 00 00     .+...+...+......
      30:	a9 2b 00 00 a9 2b 00 00 0d 02 00 00 11 02 00 00     .+...+..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 bb 28 00 00     ........!....(..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 a9 2b 00 00 a9 2b 00 00 49 02 00 00     E....+...+..I...
      80:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 a9 2b 00 00     .+...+...+...+..
      90:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 4d 02 00 00     .+...+...+..M...
      a0:	a9 2b 00 00 e5 31 00 00 a9 2b 00 00 fd 30 00 00     .+...1...+...0..
      b0:	d1 29 00 00 51 02 00 00 55 02 00 00 a9 2b 00 00     .)..Q...U....+..
      c0:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 a9 2b 00 00     .+...+...+...+..
      d0:	a9 2b 00 00 f7 37 00 00 2d 38 00 00 6d 38 00 00     .+...7..-8..m8..
      e0:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 a9 2b 00 00     .+...+...+...+..
      f0:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 a9 2b 00 00     .+...+...+...+..
     100:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 a9 2b 00 00     .+...+...+...+..
     110:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 a9 2b 00 00     .+...+...+...+..
     120:	a9 2b 00 00 a9 2b 00 00 a9 2b 00 00 a9 2b 00 00     .+...+...+...+..

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
     186:	f001 fd25 	bl	1bd4 <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e7e 	.word	0x20004e7e
     190:	20000212 	.word	0x20000212
     194:	20004e7d 	.word	0x20004e7d
     198:	20000212 	.word	0x20000212
     19c:	20000000 	.word	0x20000000
     1a0:	00009930 	.word	0x00009930
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
     1da:	f002 fced 	bl	2bb8 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 fcea 	bl	2bb8 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 fce7 	bl	2bb8 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 fce4 	bl	2bb8 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	000040b0 	.word	0x000040b0
     1f8:	0000408c 	.word	0x0000408c
     1fc:	000040a4 	.word	0x000040a4
     200:	000040c0 	.word	0x000040c0

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 fcd0 	bl	2ba8 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 fcce 	bl	2ba8 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 fccc 	bl	2ba8 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 fcca 	bl	2ba8 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 fcc8 	bl	2ba8 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 fcc6 	bl	2ba8 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 fcc4 	bl	2ba8 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 fcc2 	bl	2ba8 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 fcc0 	bl	2ba8 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 fcbe 	bl	2ba8 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 fcbc 	bl	2ba8 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 fcba 	bl	2ba8 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 fcb8 	bl	2ba8 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 fcb6 	bl	2ba8 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 fcb4 	bl	2ba8 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 fcb2 	bl	2ba8 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 fcb0 	bl	2ba8 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 fcae 	bl	2ba8 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 fcac 	bl	2ba8 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 fcaa 	bl	2ba8 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 fca8 	bl	2ba8 <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 fca6 	bl	2ba8 <reset_mcu>
_default_handler(USART2_handler) // 38
     25c:	f002 fca4 	bl	2ba8 <reset_mcu>
_default_handler(USART3_handler) // 39
     260:	f002 fca2 	bl	2ba8 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 fca0 	bl	2ba8 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 fc9e 	bl	2ba8 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 fc9c 	bl	2ba8 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 fc9a 	bl	2ba8 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 fc98 	bl	2ba8 <reset_mcu>

00000278 <basic>:
#include "graphics.h"
#include "gamepad.h"
#include "text.h"
#include "basic.h"

void basic(){
     278:	b508      	push	{r3, lr}
    gfx_cls();
     27a:	f001 fa43 	bl	1704 <gfx_cls>
    print("not done yet\n");
     27e:	4804      	ldr	r0, [pc, #16]	; (290 <basic+0x18>)
     280:	f002 fe00 	bl	2e84 <print>
    prompt_btn();
     284:	f002 fe63 	bl	2f4e <prompt_btn>
    btn_wait_any();
     288:	f000 ffda 	bl	1240 <btn_wait_any>
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
     332:	f002 fcbb 	bl	2cac <get_font>
     336:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     338:	2002      	movs	r0, #2
     33a:	f002 fcb1 	bl	2ca0 <select_font>
	new_line();
     33e:	f002 fcbb 	bl	2cb8 <new_line>
	print(msg);
     342:	4628      	mov	r0, r5
     344:	f002 fd9e 	bl	2e84 <print>
	switch(error_code){
     348:	2c02      	cmp	r4, #2
     34a:	d039      	beq.n	3c0 <print_vms+0x94>
     34c:	2c03      	cmp	r4, #3
     34e:	d102      	bne.n	356 <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     350:	481d      	ldr	r0, [pc, #116]	; (3c8 <print_vms+0x9c>)
     352:	f002 fd97 	bl	2e84 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     356:	481d      	ldr	r0, [pc, #116]	; (3cc <print_vms+0xa0>)
     358:	f002 fd94 	bl	2e84 <print>
	print_hex(vms.pc-2);
     35c:	4d1c      	ldr	r5, [pc, #112]	; (3d0 <print_vms+0xa4>)
     35e:	8828      	ldrh	r0, [r5, #0]
     360:	2110      	movs	r1, #16
     362:	3802      	subs	r0, #2
     364:	f002 fda9 	bl	2eba <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     368:	7e28      	ldrb	r0, [r5, #24]
     36a:	7e6b      	ldrb	r3, [r5, #25]
     36c:	2110      	movs	r1, #16
     36e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     372:	f002 fda2 	bl	2eba <print_int>
	new_line();
     376:	f002 fc9f 	bl	2cb8 <new_line>
	print("I:");
     37a:	4816      	ldr	r0, [pc, #88]	; (3d4 <print_vms+0xa8>)
     37c:	f002 fd82 	bl	2e84 <print>
	print_hex(vms.ix);
     380:	2110      	movs	r1, #16
     382:	8868      	ldrh	r0, [r5, #2]
     384:	f002 fd99 	bl	2eba <print_int>
	print(" SP:");
     388:	4813      	ldr	r0, [pc, #76]	; (3d8 <print_vms+0xac>)
     38a:	f002 fd7b 	bl	2e84 <print>
	print_hex(vms.sp);
     38e:	2110      	movs	r1, #16
     390:	7928      	ldrb	r0, [r5, #4]
     392:	f002 fd92 	bl	2eba <print_int>
	new_line();
     396:	f002 fc8f 	bl	2cb8 <new_line>
	print("var[]:");
     39a:	4810      	ldr	r0, [pc, #64]	; (3dc <print_vms+0xb0>)
     39c:	f002 fd72 	bl	2e84 <print>
     3a0:	1dac      	adds	r4, r5, #6
     3a2:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     3a4:	2610      	movs	r6, #16
     3a6:	4631      	mov	r1, r6
     3a8:	f814 0b01 	ldrb.w	r0, [r4], #1
     3ac:	f002 fd85 	bl	2eba <print_int>
	for (int i=0;i<16;i++){
     3b0:	42ac      	cmp	r4, r5
     3b2:	d1f8      	bne.n	3a6 <print_vms+0x7a>
	}
	new_line();
     3b4:	f002 fc80 	bl	2cb8 <new_line>
	select_font(orig_font);
     3b8:	4638      	mov	r0, r7
     3ba:	f002 fc71 	bl	2ca0 <select_font>
     3be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3c0:	4807      	ldr	r0, [pc, #28]	; (3e0 <print_vms+0xb4>)
     3c2:	f002 fd5f 	bl	2e84 <print>
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
     422:	f080 84b6 	bcs.w	d92 <chip_vm+0x986>
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
     438:	f003 f850 	bl	34dc <micro_pause>
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
     456:	f001 f851 	bl	14fc <itoa>
     45a:	4601      	mov	r1, r0
     45c:	2000      	movs	r0, #0
     45e:	f003 f9bd 	bl	37dc <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     462:	7e20      	ldrb	r0, [r4, #24]
     464:	7e63      	ldrb	r3, [r4, #25]
     466:	2210      	movs	r2, #16
     468:	a902      	add	r1, sp, #8
     46a:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     46e:	f001 f845 	bl	14fc <itoa>
     472:	4601      	mov	r1, r0
     474:	2000      	movs	r0, #0
     476:	f003 f9b1 	bl	37dc <usart_print>
			_debug_print("\n");
     47a:	4984      	ldr	r1, [pc, #528]	; (68c <chip_vm+0x280>)
     47c:	2000      	movs	r0, #0
     47e:	f003 f9ad 	bl	37dc <usart_print>
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
     4bc:	f002 fd9c 	bl	2ff8 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4c0:	2100      	movs	r1, #0
     4c2:	4873      	ldr	r0, [pc, #460]	; (690 <chip_vm+0x284>)
     4c4:	f7ff ff32 	bl	32c <print_vms>
			select_console(LOCAL);
     4c8:	2000      	movs	r0, #0
     4ca:	f002 fd95 	bl	2ff8 <select_console>
			break;
     4ce:	e7d8      	b.n	482 <chip_vm+0x76>
			select_console(SERIAL);
     4d0:	2001      	movs	r0, #1
     4d2:	f002 fd91 	bl	2ff8 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4d6:	2100      	movs	r1, #0
     4d8:	486d      	ldr	r0, [pc, #436]	; (690 <chip_vm+0x284>)
     4da:	f7ff ff27 	bl	32c <print_vms>
			print("vt100 keyboard to continue\n");
     4de:	486d      	ldr	r0, [pc, #436]	; (694 <chip_vm+0x288>)
     4e0:	f002 fcd0 	bl	2e84 <print>
			get_char();
     4e4:	f002 fd8e 	bl	3004 <get_char>
			select_console(LOCAL);
     4e8:	2000      	movs	r0, #0
     4ea:	f002 fd85 	bl	2ff8 <select_console>
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
     544:	0455003d 	.word	0x0455003d
     548:	00410437 	.word	0x00410437
				gfx_scroll_down(vms.b2&0xf); 
     54c:	f003 000f 	and.w	r0, r3, #15
     550:	f001 f912 	bl	1778 <gfx_scroll_down>
     554:	e0a5      	b.n	6a2 <chip_vm+0x296>
				gfx_scroll_up(vms.b2&0xf);					
     556:	f003 000f 	and.w	r0, r3, #15
     55a:	f001 f8e7 	bl	172c <gfx_scroll_up>
     55e:	e0a0      	b.n	6a2 <chip_vm+0x296>
					exit_code=CHIP_BAD_OPCODE;
     560:	f04f 0802 	mov.w	r8, #2
     564:	f000 bc1a 	b.w	d9c <chip_vm+0x990>
					gfx_cls();
     568:	f001 f8cc 	bl	1704 <gfx_cls>
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
     580:	f001 f94c 	bl	181c <gfx_scroll_right>
					break;
     584:	e08d      	b.n	6a2 <chip_vm+0x296>
					gfx_scroll_left(4);
     586:	2004      	movs	r0, #4
     588:	f001 f91a 	bl	17c0 <gfx_scroll_left>
					break;
     58c:	e089      	b.n	6a2 <chip_vm+0x296>
					set_video_mode(VM_SCHIP);
     58e:	2001      	movs	r0, #1
     590:	f002 ff66 	bl	3460 <set_video_mode>
					break; 
     594:	e085      	b.n	6a2 <chip_vm+0x296>
					set_video_mode(VM_BPCHIP);
     596:	2000      	movs	r0, #0
     598:	f002 ff62 	bl	3460 <set_video_mode>
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
     618:	f040 83c0 	bne.w	d9c <chip_vm+0x990>
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
     654:	f000 fee1 	bl	141a <move>
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
     678:	f000 fecf 	bl	141a <move>
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
     6a8:	f080 8376 	bcs.w	d98 <chip_vm+0x98c>
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
     6ec:	f200 8342 	bhi.w	d74 <chip_vm+0x968>
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
     756:	f200 8313 	bhi.w	d80 <chip_vm+0x974>
     75a:	e8df f013 	tbh	[pc, r3, lsl #1]
     75e:	000f      	.short	0x000f
     760:	00200016 	.word	0x00200016
     764:	0034002a 	.word	0x0034002a
     768:	00520043 	.word	0x00520043
     76c:	0311005c 	.word	0x0311005c
     770:	03110311 	.word	0x03110311
     774:	03110311 	.word	0x03110311
     778:	006b0311 	.word	0x006b0311
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
     84c:	f200 829b 	bhi.w	d86 <chip_vm+0x97a>
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
     88c:	f002 f878 	bl	2980 <key_tone>
				break;
     890:	e707      	b.n	6a2 <chip_vm+0x296>
				select_font(FONT_ASCII);
     892:	2002      	movs	r0, #2
     894:	f002 fa04 	bl	2ca0 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     898:	44a1      	add	r9, r4
     89a:	44a0      	add	r8, r4
     89c:	f899 1006 	ldrb.w	r1, [r9, #6]
     8a0:	f898 0006 	ldrb.w	r0, [r8, #6]
     8a4:	f002 faba 	bl	2e1c <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     8a8:	8860      	ldrh	r0, [r4, #2]
     8aa:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9b4 <chip_vm+0x5a8>
     8ae:	4448      	add	r0, r9
     8b0:	f002 fae8 	bl	2e84 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     8b4:	f8b4 8002 	ldrh.w	r8, [r4, #2]
     8b8:	eb09 0008 	add.w	r0, r9, r8
     8bc:	f000 fdb7 	bl	142e <strlen>
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
     8dc:	f000 fe9c 	bl	1618 <gfx_blit>
				break;
     8e0:	e6df      	b.n	6a2 <chip_vm+0x296>
				noise((x<<4)+y);
     8e2:	eb09 1008 	add.w	r0, r9, r8, lsl #4
     8e6:	f002 f85f 	bl	29a8 <noise>
				break;
     8ea:	e6da      	b.n	6a2 <chip_vm+0x296>
				key_tone(vms.var[x],vms.var[y],true);
     8ec:	44a1      	add	r9, r4
     8ee:	44a0      	add	r8, r4
     8f0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8f4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8f8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8fc:	f002 f840 	bl	2980 <key_tone>
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
     92c:	f002 fdc2 	bl	34b4 <get_video_params>
					vms.var[x]=vparams->hres;
     930:	44a0      	add	r8, r4
     932:	8983      	ldrh	r3, [r0, #12]
     934:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     938:	e6b3      	b.n	6a2 <chip_vm+0x296>
					vmode_params_t *vparams=get_video_params();
     93a:	f002 fdbb 	bl	34b4 <get_video_params>
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
     9da:	f000 ff53 	bl	1884 <gfx_get_pixel>
     9de:	7560      	strb	r0, [r4, #21]
				break;  	
     9e0:	e65f      	b.n	6a2 <chip_vm+0x296>
			vms.ix=caddr(vms.b1,vms.b2);
     9e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     9e6:	f3c3 030b 	ubfx	r3, r3, #0, #12
     9ea:	8063      	strh	r3, [r4, #2]
			if (video_mode==VM_BPCHIP){
     9ec:	4a98      	ldr	r2, [pc, #608]	; (c50 <chip_vm+0x844>)
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
     a0c:	4a90      	ldr	r2, [pc, #576]	; (c50 <chip_vm+0x844>)
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
     a4a:	4a82      	ldr	r2, [pc, #520]	; (c54 <chip_vm+0x848>)
     a4c:	4413      	add	r3, r2
     a4e:	9300      	str	r3, [sp, #0]
     a50:	2310      	movs	r3, #16
     a52:	461a      	mov	r2, r3
     a54:	f000 ff3c 	bl	18d0 <gfx_sprite>
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
     a70:	f000 ff2e 	bl	18d0 <gfx_sprite>
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
     a8a:	f8df e1c8 	ldr.w	lr, [pc, #456]	; c54 <chip_vm+0x848>
     a8e:	4472      	add	r2, lr
     a90:	9200      	str	r2, [sp, #0]
     a92:	2208      	movs	r2, #8
     a94:	f000 ff1c 	bl	18d0 <gfx_sprite>
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
     aae:	f000 ff0f 	bl	18d0 <gfx_sprite>
     ab2:	7560      	strb	r0, [r4, #21]
     ab4:	e5f5      	b.n	6a2 <chip_vm+0x296>
				switch(vms.b2){
     ab6:	2b9e      	cmp	r3, #158	; 0x9e
     ab8:	d003      	beq.n	ac2 <chip_vm+0x6b6>
     aba:	2ba1      	cmp	r3, #161	; 0xa1
     abc:	d00d      	beq.n	ada <chip_vm+0x6ce>
					return CHIP_BAD_OPCODE;
     abe:	2002      	movs	r0, #2
     ac0:	e176      	b.n	db0 <chip_vm+0x9a4>
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     ac2:	44a0      	add	r8, r4
     ac4:	f898 0006 	ldrb.w	r0, [r8, #6]
     ac8:	f000 fb86 	bl	11d8 <btn_query_down>
     acc:	2800      	cmp	r0, #0
     ace:	f43f ade8 	beq.w	6a2 <chip_vm+0x296>
     ad2:	8823      	ldrh	r3, [r4, #0]
     ad4:	3302      	adds	r3, #2
     ad6:	8023      	strh	r3, [r4, #0]
     ad8:	e5e3      	b.n	6a2 <chip_vm+0x296>
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     ada:	44a0      	add	r8, r4
     adc:	f898 0006 	ldrb.w	r0, [r8, #6]
     ae0:	f000 fb7a 	bl	11d8 <btn_query_down>
     ae4:	2800      	cmp	r0, #0
     ae6:	f47f addc 	bne.w	6a2 <chip_vm+0x296>
     aea:	8823      	ldrh	r3, [r4, #0]
     aec:	3302      	adds	r3, #2
     aee:	8023      	strh	r3, [r4, #0]
     af0:	e5d7      	b.n	6a2 <chip_vm+0x296>
			switch(vms.b2){
     af2:	3b01      	subs	r3, #1
     af4:	2b84      	cmp	r3, #132	; 0x84
     af6:	f200 8149 	bhi.w	d8c <chip_vm+0x980>
     afa:	e8df f013 	tbh	[pc, r3, lsl #1]
     afe:	0085      	.short	0x0085
     b00:	01470147 	.word	0x01470147
     b04:	01470147 	.word	0x01470147
     b08:	008f0147 	.word	0x008f0147
     b0c:	01470147 	.word	0x01470147
     b10:	01470095 	.word	0x01470095
     b14:	01470147 	.word	0x01470147
     b18:	01470147 	.word	0x01470147
     b1c:	01470147 	.word	0x01470147
     b20:	01470147 	.word	0x01470147
     b24:	009b0147 	.word	0x009b0147
     b28:	01470147 	.word	0x01470147
     b2c:	014700a1 	.word	0x014700a1
     b30:	01470147 	.word	0x01470147
     b34:	01470147 	.word	0x01470147
     b38:	014700b3 	.word	0x014700b3
     b3c:	01470147 	.word	0x01470147
     b40:	01470147 	.word	0x01470147
     b44:	01470147 	.word	0x01470147
     b48:	01470147 	.word	0x01470147
     b4c:	00ba0147 	.word	0x00ba0147
     b50:	01470147 	.word	0x01470147
     b54:	01470147 	.word	0x01470147
     b58:	01470147 	.word	0x01470147
     b5c:	014700c9 	.word	0x014700c9
     b60:	00d70147 	.word	0x00d70147
     b64:	01470147 	.word	0x01470147
     b68:	01470147 	.word	0x01470147
     b6c:	01470147 	.word	0x01470147
     b70:	01470147 	.word	0x01470147
     b74:	01470147 	.word	0x01470147
     b78:	01470147 	.word	0x01470147
     b7c:	01470147 	.word	0x01470147
     b80:	01470147 	.word	0x01470147
     b84:	01470147 	.word	0x01470147
     b88:	01470147 	.word	0x01470147
     b8c:	01470147 	.word	0x01470147
     b90:	01470147 	.word	0x01470147
     b94:	01470147 	.word	0x01470147
     b98:	01470147 	.word	0x01470147
     b9c:	01470147 	.word	0x01470147
     ba0:	01470147 	.word	0x01470147
     ba4:	00fc0147 	.word	0x00fc0147
     ba8:	01470147 	.word	0x01470147
     bac:	01470147 	.word	0x01470147
     bb0:	01470147 	.word	0x01470147
     bb4:	01470147 	.word	0x01470147
     bb8:	01470147 	.word	0x01470147
     bbc:	01470147 	.word	0x01470147
     bc0:	01470147 	.word	0x01470147
     bc4:	01050147 	.word	0x01050147
     bc8:	01470147 	.word	0x01470147
     bcc:	01470147 	.word	0x01470147
     bd0:	01470147 	.word	0x01470147
     bd4:	01470147 	.word	0x01470147
     bd8:	01470147 	.word	0x01470147
     bdc:	01470147 	.word	0x01470147
     be0:	01470147 	.word	0x01470147
     be4:	0111010e 	.word	0x0111010e
     be8:	01470147 	.word	0x01470147
     bec:	01470147 	.word	0x01470147
     bf0:	01470147 	.word	0x01470147
     bf4:	01470147 	.word	0x01470147
     bf8:	01470147 	.word	0x01470147
     bfc:	01470147 	.word	0x01470147
     c00:	01470147 	.word	0x01470147
     c04:	01260147 	.word	0x01260147
				sprite_bpp=vms.b1%3;
     c08:	4b13      	ldr	r3, [pc, #76]	; (c58 <chip_vm+0x84c>)
     c0a:	fba3 1302 	umull	r1, r3, r3, r2
     c0e:	085b      	lsrs	r3, r3, #1
     c10:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     c14:	1ad2      	subs	r2, r2, r3
     c16:	4b11      	ldr	r3, [pc, #68]	; (c5c <chip_vm+0x850>)
     c18:	701a      	strb	r2, [r3, #0]
				break;
     c1a:	e542      	b.n	6a2 <chip_vm+0x296>
				vms.var[x]=game_timer;
     c1c:	4b10      	ldr	r3, [pc, #64]	; (c60 <chip_vm+0x854>)
     c1e:	881b      	ldrh	r3, [r3, #0]
     c20:	44a0      	add	r8, r4
     c22:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     c26:	e53c      	b.n	6a2 <chip_vm+0x296>
				vms.var[x]=btn_wait_any();
     c28:	f000 fb0a 	bl	1240 <btn_wait_any>
     c2c:	44a0      	add	r8, r4
     c2e:	f888 0006 	strb.w	r0, [r8, #6]
				break;
     c32:	e536      	b.n	6a2 <chip_vm+0x296>
				game_timer=vms.var[x];
     c34:	44a0      	add	r8, r4
     c36:	f898 2006 	ldrb.w	r2, [r8, #6]
     c3a:	4b09      	ldr	r3, [pc, #36]	; (c60 <chip_vm+0x854>)
     c3c:	801a      	strh	r2, [r3, #0]
				break;
     c3e:	e530      	b.n	6a2 <chip_vm+0x296>
				tone(523,vms.var[x]);
     c40:	44a0      	add	r8, r4
     c42:	f898 1006 	ldrb.w	r1, [r8, #6]
     c46:	f240 200b 	movw	r0, #523	; 0x20b
     c4a:	f001 fe73 	bl	2934 <tone>
				break;
     c4e:	e528      	b.n	6a2 <chip_vm+0x296>
     c50:	200006a8 	.word	0x200006a8
     c54:	200006e4 	.word	0x200006e4
     c58:	aaaaaaab 	.word	0xaaaaaaab
     c5c:	200001ac 	.word	0x200001ac
     c60:	20004e74 	.word	0x20004e74
				vms.ix += vms.var[x];
     c64:	44a0      	add	r8, r4
     c66:	f898 3006 	ldrb.w	r3, [r8, #6]
     c6a:	8862      	ldrh	r2, [r4, #2]
     c6c:	4413      	add	r3, r2
     c6e:	8063      	strh	r3, [r4, #2]
				break;
     c70:	e517      	b.n	6a2 <chip_vm+0x296>
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
     c72:	44a0      	add	r8, r4
     c74:	f898 3006 	ldrb.w	r3, [r8, #6]
     c78:	eb03 0343 	add.w	r3, r3, r3, lsl #1
     c7c:	4a4f      	ldr	r2, [pc, #316]	; (dbc <chip_vm+0x9b0>)
     c7e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     c82:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     c84:	2301      	movs	r3, #1
     c86:	7163      	strb	r3, [r4, #5]
				select_font(FONT_SHEX);
     c88:	2000      	movs	r0, #0
     c8a:	f002 f809 	bl	2ca0 <select_font>
				break;
     c8e:	e508      	b.n	6a2 <chip_vm+0x296>
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
     c90:	44a0      	add	r8, r4
     c92:	f898 3006 	ldrb.w	r3, [r8, #6]
     c96:	eb03 0383 	add.w	r3, r3, r3, lsl #2
     c9a:	4a49      	ldr	r2, [pc, #292]	; (dc0 <chip_vm+0x9b4>)
     c9c:	eb02 0343 	add.w	r3, r2, r3, lsl #1
     ca0:	8063      	strh	r3, [r4, #2]
				vms.sprite_mem=FLASH_MEM;
     ca2:	2001      	movs	r0, #1
     ca4:	7160      	strb	r0, [r4, #5]
				select_font(FONT_LHEX);
     ca6:	f001 fffb 	bl	2ca0 <select_font>
				break;
     caa:	e4fa      	b.n	6a2 <chip_vm+0x296>
				n=vms.var[x];
     cac:	44a0      	add	r8, r4
     cae:	f898 1006 	ldrb.w	r1, [r8, #6]
				block[2]=n%10;
     cb2:	4a44      	ldr	r2, [pc, #272]	; (dc4 <chip_vm+0x9b8>)
     cb4:	fba2 0301 	umull	r0, r3, r2, r1
     cb8:	08db      	lsrs	r3, r3, #3
     cba:	eb03 0083 	add.w	r0, r3, r3, lsl #2
     cbe:	eba1 0040 	sub.w	r0, r1, r0, lsl #1
     cc2:	f884 005e 	strb.w	r0, [r4, #94]	; 0x5e
				block[1]=n%10;
     cc6:	b2db      	uxtb	r3, r3
     cc8:	fba2 0203 	umull	r0, r2, r2, r3
     ccc:	08d2      	lsrs	r2, r2, #3
     cce:	eb02 0282 	add.w	r2, r2, r2, lsl #2
     cd2:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
     cd6:	f884 305d 	strb.w	r3, [r4, #93]	; 0x5d
				block[0]=n/10;
     cda:	fba7 2301 	umull	r2, r3, r7, r1
     cde:	095b      	lsrs	r3, r3, #5
     ce0:	f884 305c 	strb.w	r3, [r4, #92]	; 0x5c
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
     ce4:	8863      	ldrh	r3, [r4, #2]
     ce6:	2203      	movs	r2, #3
     ce8:	4937      	ldr	r1, [pc, #220]	; (dc8 <chip_vm+0x9bc>)
     cea:	4419      	add	r1, r3
     cec:	f104 005c 	add.w	r0, r4, #92	; 0x5c
     cf0:	f000 fb93 	bl	141a <move>
				break;
     cf4:	e4d5      	b.n	6a2 <chip_vm+0x296>
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
     cf6:	8863      	ldrh	r3, [r4, #2]
     cf8:	f108 0201 	add.w	r2, r8, #1
     cfc:	4932      	ldr	r1, [pc, #200]	; (dc8 <chip_vm+0x9bc>)
     cfe:	4419      	add	r1, r3
     d00:	4630      	mov	r0, r6
     d02:	f000 fb8a 	bl	141a <move>
				break;
     d06:	e4cc      	b.n	6a2 <chip_vm+0x296>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
     d08:	8863      	ldrh	r3, [r4, #2]
     d0a:	f108 0201 	add.w	r2, r8, #1
     d0e:	4631      	mov	r1, r6
     d10:	482d      	ldr	r0, [pc, #180]	; (dc8 <chip_vm+0x9bc>)
     d12:	4418      	add	r0, r3
     d14:	f000 fb81 	bl	141a <move>
				break;
     d18:	e4c3      	b.n	6a2 <chip_vm+0x296>
				vms.s=(x&0x7)*FLASH_SECTOR_SIZE; // flash sector {0..7}
     d1a:	0352      	lsls	r2, r2, #13
     d1c:	82e2      	strh	r2, [r4, #22]
				break;			
     d1e:	e4c0      	b.n	6a2 <chip_vm+0x296>
				if (video_mode==VM_BPCHIP){
     d20:	4b2a      	ldr	r3, [pc, #168]	; (dcc <chip_vm+0x9c0>)
     d22:	781b      	ldrb	r3, [r3, #0]
     d24:	b953      	cbnz	r3, d3c <chip_vm+0x930>
					flash_write_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d26:	8ae3      	ldrh	r3, [r4, #22]
     d28:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d2c:	8860      	ldrh	r0, [r4, #2]
     d2e:	f108 0201 	add.w	r2, r8, #1
     d32:	4631      	mov	r1, r6
     d34:	4418      	add	r0, r3
     d36:	f000 f987 	bl	1048 <flash_write_block>
     d3a:	e4b2      	b.n	6a2 <chip_vm+0x296>
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
     d3c:	f108 0201 	add.w	r2, r8, #1
     d40:	4631      	mov	r1, r6
     d42:	4823      	ldr	r0, [pc, #140]	; (dd0 <chip_vm+0x9c4>)
     d44:	f000 f980 	bl	1048 <flash_write_block>
     d48:	e4ab      	b.n	6a2 <chip_vm+0x296>
				if (video_mode==VM_BPCHIP){
     d4a:	4b20      	ldr	r3, [pc, #128]	; (dcc <chip_vm+0x9c0>)
     d4c:	781b      	ldrb	r3, [r3, #0]
     d4e:	b953      	cbnz	r3, d66 <chip_vm+0x95a>
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
     d50:	8ae3      	ldrh	r3, [r4, #22]
     d52:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
     d56:	8860      	ldrh	r0, [r4, #2]
     d58:	f108 0201 	add.w	r2, r8, #1
     d5c:	4631      	mov	r1, r6
     d5e:	4418      	add	r0, r3
     d60:	f000 f958 	bl	1014 <flash_read_block>
     d64:	e49d      	b.n	6a2 <chip_vm+0x296>
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
     d66:	f108 0201 	add.w	r2, r8, #1
     d6a:	4631      	mov	r1, r6
     d6c:	4818      	ldr	r0, [pc, #96]	; (dd0 <chip_vm+0x9c4>)
     d6e:	f000 f951 	bl	1014 <flash_read_block>
     d72:	e496      	b.n	6a2 <chip_vm+0x296>
	    switch (vms.b1>>4){
     d74:	f04f 0800 	mov.w	r8, #0
     d78:	e44c      	b.n	614 <chip_vm+0x208>
			}else switch(vms.b2){
     d7a:	f04f 0800 	mov.w	r8, #0
     d7e:	e449      	b.n	614 <chip_vm+0x208>
				exit_code=CHIP_BAD_OPCODE;
     d80:	f04f 0802 	mov.w	r8, #2
     d84:	e446      	b.n	614 <chip_vm+0x208>
				exit_code=CHIP_BAD_OPCODE;
     d86:	f04f 0802 	mov.w	r8, #2
     d8a:	e443      	b.n	614 <chip_vm+0x208>
				}
				break;
			default:
				exit_code=CHIP_BAD_OPCODE;
     d8c:	f04f 0802 	mov.w	r8, #2
     d90:	e440      	b.n	614 <chip_vm+0x208>
			exit_code=CHIP_BAD_ADDR;
     d92:	f04f 0803 	mov.w	r8, #3
     d96:	e001      	b.n	d9c <chip_vm+0x990>
     d98:	f04f 0803 	mov.w	r8, #3
			}//switch(vms.b2)
			break;	
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
     d9c:	2002      	movs	r0, #2
     d9e:	f001 ff7f 	bl	2ca0 <select_font>
	set_keymap(default_kmap);
     da2:	480c      	ldr	r0, [pc, #48]	; (dd4 <chip_vm+0x9c8>)
     da4:	f000 f9ca 	bl	113c <set_keymap>
	set_video_mode(VM_BPCHIP);
     da8:	2000      	movs	r0, #0
     daa:	f002 fb59 	bl	3460 <set_video_mode>
	return exit_code;
     dae:	4640      	mov	r0, r8
}//schipp()
     db0:	b009      	add	sp, #36	; 0x24
     db2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
					exit_code=CHIP_EXIT_OK;
     db6:	f04f 0801 	mov.w	r8, #1
     dba:	e7ef      	b.n	d9c <chip_vm+0x990>
     dbc:	00003ca8 	.word	0x00003ca8
     dc0:	00003c08 	.word	0x00003c08
     dc4:	cccccccd 	.word	0xcccccccd
     dc8:	200006e4 	.word	0x200006e4
     dcc:	200006a8 	.word	0x200006a8
     dd0:	0001fff0 	.word	0x0001fff0
     dd4:	00003d08 	.word	0x00003d08

00000dd8 <flash_enable>:
//mémoire flash du mcu
int flash_enable(){
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     dd8:	2200      	movs	r2, #0
     dda:	4b0f      	ldr	r3, [pc, #60]	; (e18 <flash_enable+0x40>)
     ddc:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     dde:	4b0f      	ldr	r3, [pc, #60]	; (e1c <flash_enable+0x44>)
     de0:	681b      	ldr	r3, [r3, #0]
     de2:	f013 0f01 	tst.w	r3, #1
     de6:	d10b      	bne.n	e00 <flash_enable+0x28>
		RCC->CR|=RCC_CR_HSION;
     de8:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
     dec:	f502 3204 	add.w	r2, r2, #135168	; 0x21000
     df0:	6813      	ldr	r3, [r2, #0]
     df2:	f043 0301 	orr.w	r3, r3, #1
     df6:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     df8:	6813      	ldr	r3, [r2, #0]
     dfa:	f013 0f02 	tst.w	r3, #2
     dfe:	d0fb      	beq.n	df8 <flash_enable+0x20>
	}
	FLASH->KEYR=0x45670123;
     e00:	4b07      	ldr	r3, [pc, #28]	; (e20 <flash_enable+0x48>)
     e02:	4a08      	ldr	r2, [pc, #32]	; (e24 <flash_enable+0x4c>)
     e04:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     e06:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
     e0a:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     e0c:	6918      	ldr	r0, [r3, #16]
     e0e:	f080 0080 	eor.w	r0, r0, #128	; 0x80
}
     e12:	f3c0 10c0 	ubfx	r0, r0, #7, #1
     e16:	4770      	bx	lr
     e18:	20000290 	.word	0x20000290
     e1c:	40021000 	.word	0x40021000
     e20:	40022000 	.word	0x40022000
     e24:	45670123 	.word	0x45670123

00000e28 <flash_write_hword>:


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
	while (_flash_busy);
     e28:	4a0b      	ldr	r2, [pc, #44]	; (e58 <flash_write_hword+0x30>)
     e2a:	68d3      	ldr	r3, [r2, #12]
     e2c:	f013 0f01 	tst.w	r3, #1
     e30:	d1fb      	bne.n	e2a <flash_write_hword+0x2>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e32:	4b09      	ldr	r3, [pc, #36]	; (e58 <flash_write_hword+0x30>)
     e34:	68da      	ldr	r2, [r3, #12]
     e36:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     e3a:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PG;
     e3c:	2201      	movs	r2, #1
     e3e:	611a      	str	r2, [r3, #16]
	*address=hword;
     e40:	8001      	strh	r1, [r0, #0]
	while (_flash_busy && ! _flash_eop);
     e42:	68da      	ldr	r2, [r3, #12]
     e44:	f012 0f01 	tst.w	r2, #1
     e48:	d003      	beq.n	e52 <flash_write_hword+0x2a>
     e4a:	68da      	ldr	r2, [r3, #12]
     e4c:	f012 0f20 	tst.w	r2, #32
     e50:	d0f7      	beq.n	e42 <flash_write_hword+0x1a>
	return *address==hword;
}
     e52:	2001      	movs	r0, #1
     e54:	4770      	bx	lr
     e56:	bf00      	nop
     e58:	40022000 	.word	0x40022000

00000e5c <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e5c:	283f      	cmp	r0, #63	; 0x3f
     e5e:	d914      	bls.n	e8a <flash_erase_row+0x2e>
int flash_erase_row(unsigned int row_nbr){
     e60:	b430      	push	{r4, r5}
	addr=_row2addr(row);
     e62:	0280      	lsls	r0, r0, #10
		if (*addr++!=FLASH_ERASED) return false;
     e64:	1c81      	adds	r1, r0, #2
     e66:	8802      	ldrh	r2, [r0, #0]
     e68:	f64f 73ff 	movw	r3, #65535	; 0xffff
     e6c:	429a      	cmp	r2, r3
     e6e:	d110      	bne.n	e92 <flash_erase_row+0x36>
     e70:	f500 6580 	add.w	r5, r0, #1024	; 0x400
     e74:	460b      	mov	r3, r1
     e76:	f64f 74ff 	movw	r4, #65535	; 0xffff
     e7a:	f833 2b02 	ldrh.w	r2, [r3], #2
     e7e:	42a2      	cmp	r2, r4
     e80:	d107      	bne.n	e92 <flash_erase_row+0x36>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e82:	429d      	cmp	r5, r3
     e84:	d1f9      	bne.n	e7a <flash_erase_row+0x1e>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     e86:	2001      	movs	r0, #1
     e88:	e02f      	b.n	eea <flash_erase_row+0x8e>
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     e8a:	2000      	movs	r0, #0
     e8c:	4770      	bx	lr
	addr=_row2addr(row_nbr);
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     e8e:	2000      	movs	r0, #0
     e90:	e02b      	b.n	eea <flash_erase_row+0x8e>
     e92:	4b17      	ldr	r3, [pc, #92]	; (ef0 <flash_erase_row+0x94>)
     e94:	691b      	ldr	r3, [r3, #16]
     e96:	f013 0f80 	tst.w	r3, #128	; 0x80
     e9a:	d1f8      	bne.n	e8e <flash_erase_row+0x32>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     e9c:	4b14      	ldr	r3, [pc, #80]	; (ef0 <flash_erase_row+0x94>)
     e9e:	68da      	ldr	r2, [r3, #12]
     ea0:	f042 0234 	orr.w	r2, r2, #52	; 0x34
     ea4:	60da      	str	r2, [r3, #12]
	FLASH->CR=FLASH_CR_PER;
     ea6:	2202      	movs	r2, #2
     ea8:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     eaa:	6158      	str	r0, [r3, #20]
	FLASH->CR|=FLASH_CR_STRT;
     eac:	691a      	ldr	r2, [r3, #16]
     eae:	f042 0240 	orr.w	r2, r2, #64	; 0x40
     eb2:	611a      	str	r2, [r3, #16]
	while (_flash_busy && ! _flash_eop);
     eb4:	68da      	ldr	r2, [r3, #12]
     eb6:	f012 0f01 	tst.w	r2, #1
     eba:	d003      	beq.n	ec4 <flash_erase_row+0x68>
     ebc:	68da      	ldr	r2, [r3, #12]
     ebe:	f012 0f20 	tst.w	r2, #32
     ec2:	d0f7      	beq.n	eb4 <flash_erase_row+0x58>
	addr=_row2addr(row_nbr);
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
		u16=*addr++;
     ec4:	8803      	ldrh	r3, [r0, #0]
		if (u16!=FLASH_ERASED) break;
     ec6:	f64f 72ff 	movw	r2, #65535	; 0xffff
     eca:	4293      	cmp	r3, r2
     ecc:	d107      	bne.n	ede <flash_erase_row+0x82>
     ece:	f500 6080 	add.w	r0, r0, #1024	; 0x400
		u16=*addr++;
     ed2:	f831 3b02 	ldrh.w	r3, [r1], #2
		if (u16!=FLASH_ERASED) break;
     ed6:	4293      	cmp	r3, r2
     ed8:	d101      	bne.n	ede <flash_erase_row+0x82>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     eda:	4281      	cmp	r1, r0
     edc:	d1f9      	bne.n	ed2 <flash_erase_row+0x76>
	}
	return u16==FLASH_ERASED;
     ede:	f64f 70ff 	movw	r0, #65535	; 0xffff
     ee2:	4283      	cmp	r3, r0
     ee4:	bf14      	ite	ne
     ee6:	2000      	movne	r0, #0
     ee8:	2001      	moveq	r0, #1
}
     eea:	bc30      	pop	{r4, r5}
     eec:	4770      	bx	lr
     eee:	bf00      	nop
     ef0:	40022000 	.word	0x40022000

00000ef4 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     ef4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     ef6:	4b1c      	ldr	r3, [pc, #112]	; (f68 <flash_sync+0x74>)
     ef8:	781b      	ldrb	r3, [r3, #0]
     efa:	f013 0f01 	tst.w	r3, #1
     efe:	d102      	bne.n	f06 <flash_sync+0x12>
			row_buff.flags&=~F_MODIFIED;
			return 1;
		}
		return 0;
	}
	return 1;
     f00:	2301      	movs	r3, #1
}
     f02:	4618      	mov	r0, r3
     f04:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     f06:	4b18      	ldr	r3, [pc, #96]	; (f68 <flash_sync+0x74>)
     f08:	7858      	ldrb	r0, [r3, #1]
     f0a:	f7ff ffa7 	bl	e5c <flash_erase_row>
     f0e:	4603      	mov	r3, r0
     f10:	2800      	cmp	r0, #0
     f12:	d0f6      	beq.n	f02 <flash_sync+0xe>
	dest=_row2addr(row_buff.row);
     f14:	4e14      	ldr	r6, [pc, #80]	; (f68 <flash_sync+0x74>)
     f16:	7875      	ldrb	r5, [r6, #1]
     f18:	02ad      	lsls	r5, r5, #10
     f1a:	3602      	adds	r6, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f1c:	2400      	movs	r4, #0
		if (*src!=(uint16_t)FLASH_ERASED){
     f1e:	f64f 77ff 	movw	r7, #65535	; 0xffff
     f22:	e004      	b.n	f2e <flash_sync+0x3a>
		dest++;
     f24:	3502      	adds	r5, #2
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f26:	3401      	adds	r4, #1
     f28:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f2c:	d00a      	beq.n	f44 <flash_sync+0x50>
		if (*src!=(uint16_t)FLASH_ERASED){
     f2e:	f836 1b02 	ldrh.w	r1, [r6], #2
     f32:	42b9      	cmp	r1, r7
     f34:	d0f6      	beq.n	f24 <flash_sync+0x30>
			if (!flash_write_hword(dest,*src)) break;
     f36:	4628      	mov	r0, r5
     f38:	f7ff ff76 	bl	e28 <flash_write_hword>
     f3c:	2800      	cmp	r0, #0
     f3e:	d1f1      	bne.n	f24 <flash_sync+0x30>
	if (i>0) row_buff.flags&=~F_ERASED;
     f40:	2c00      	cmp	r4, #0
     f42:	dd04      	ble.n	f4e <flash_sync+0x5a>
     f44:	4a08      	ldr	r2, [pc, #32]	; (f68 <flash_sync+0x74>)
     f46:	7813      	ldrb	r3, [r2, #0]
     f48:	f023 0304 	bic.w	r3, r3, #4
     f4c:	7013      	strb	r3, [r2, #0]
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     f4e:	f5b4 7f00 	cmp.w	r4, #512	; 0x200
     f52:	d106      	bne.n	f62 <flash_sync+0x6e>
			row_buff.flags&=~F_MODIFIED;
     f54:	4a04      	ldr	r2, [pc, #16]	; (f68 <flash_sync+0x74>)
     f56:	7813      	ldrb	r3, [r2, #0]
     f58:	f023 0301 	bic.w	r3, r3, #1
     f5c:	7013      	strb	r3, [r2, #0]
			return 1;
     f5e:	2301      	movs	r3, #1
     f60:	e7cf      	b.n	f02 <flash_sync+0xe>
		return 0;
     f62:	2300      	movs	r3, #0
     f64:	e7cd      	b.n	f02 <flash_sync+0xe>
     f66:	bf00      	nop
     f68:	20000290 	.word	0x20000290

00000f6c <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
	row_buff.flags=0;
     f6c:	2200      	movs	r2, #0
     f6e:	4b01      	ldr	r3, [pc, #4]	; (f74 <flash_flush+0x8>)
     f70:	701a      	strb	r2, [r3, #0]
     f72:	4770      	bx	lr
     f74:	20000290 	.word	0x20000290

00000f78 <flash_disable>:
}


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     f78:	b508      	push	{r3, lr}
	flash_sync();
     f7a:	f7ff ffbb 	bl	ef4 <flash_sync>
	row_buff.flags=0;
     f7e:	2200      	movs	r2, #0
     f80:	4b06      	ldr	r3, [pc, #24]	; (f9c <flash_disable+0x24>)
     f82:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     f84:	4a06      	ldr	r2, [pc, #24]	; (fa0 <flash_disable+0x28>)
     f86:	6913      	ldr	r3, [r2, #16]
     f88:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     f8c:	6113      	str	r3, [r2, #16]
	RCC->CR&=~RCC_CR_HSION;
     f8e:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
     f92:	6813      	ldr	r3, [r2, #0]
     f94:	f023 0301 	bic.w	r3, r3, #1
     f98:	6013      	str	r3, [r2, #0]
     f9a:	bd08      	pop	{r3, pc}
     f9c:	20000290 	.word	0x20000290
     fa0:	40022000 	.word	0x40022000

00000fa4 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
     fa4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	uint32_t offset, row;
	
	row=_addr2row(address);
     fa8:	ea4f 2890 	mov.w	r8, r0, lsr #10
	if (row<FIRST_WRITABLE_ROW) return 0;
     fac:	f1b8 0f3f 	cmp.w	r8, #63	; 0x3f
     fb0:	d92c      	bls.n	100c <flash_write_byte+0x68>
     fb2:	460e      	mov	r6, r1
     fb4:	4607      	mov	r7, r0
	if (row!=row_buff.row){
     fb6:	4b16      	ldr	r3, [pc, #88]	; (1010 <flash_write_byte+0x6c>)
     fb8:	785b      	ldrb	r3, [r3, #1]
     fba:	4598      	cmp	r8, r3
     fbc:	d019      	beq.n	ff2 <flash_write_byte+0x4e>
		if (!flash_sync()) return 0;
     fbe:	f7ff ff99 	bl	ef4 <flash_sync>
     fc2:	4603      	mov	r3, r0
     fc4:	b1f8      	cbz	r0, 1006 <flash_write_byte+0x62>
	src=(uint16_t*)_row2addr(r);
     fc6:	f427 737f 	bic.w	r3, r7, #1020	; 0x3fc
     fca:	f023 0303 	bic.w	r3, r3, #3
     fce:	4a10      	ldr	r2, [pc, #64]	; (1010 <flash_write_byte+0x6c>)
     fd0:	f503 6580 	add.w	r5, r3, #1024	; 0x400
		*dest++=*src++;
     fd4:	f833 4b02 	ldrh.w	r4, [r3], #2
     fd8:	f822 4f02 	strh.w	r4, [r2, #2]!
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     fdc:	42ab      	cmp	r3, r5
     fde:	d1f9      	bne.n	fd4 <flash_write_byte+0x30>
	row_buff.row=r;
     fe0:	4a0b      	ldr	r2, [pc, #44]	; (1010 <flash_write_byte+0x6c>)
     fe2:	f882 8001 	strb.w	r8, [r2, #1]
	row_buff.flags&=~(F_MODIFIED);
     fe6:	7813      	ldrb	r3, [r2, #0]
     fe8:	f023 0301 	bic.w	r3, r3, #1
	row_buff.flags|=F_LOADED;
     fec:	f043 0302 	orr.w	r3, r3, #2
     ff0:	7013      	strb	r3, [r2, #0]
		load_row(row);
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
	row_buff.data[offset]=b;
     ff2:	4a07      	ldr	r2, [pc, #28]	; (1010 <flash_write_byte+0x6c>)
	offset=(uint32_t)address&FLASH_ROW_MASK;
     ff4:	f3c7 0309 	ubfx	r3, r7, #0, #10
	row_buff.data[offset]=b;
     ff8:	4413      	add	r3, r2
     ffa:	709e      	strb	r6, [r3, #2]
	row_buff.flags|=F_MODIFIED;
     ffc:	7813      	ldrb	r3, [r2, #0]
     ffe:	f043 0301 	orr.w	r3, r3, #1
    1002:	7013      	strb	r3, [r2, #0]
	return 1;
    1004:	2301      	movs	r3, #1
}
    1006:	4618      	mov	r0, r3
    1008:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	if (row<FIRST_WRITABLE_ROW) return 0;
    100c:	2300      	movs	r3, #0
    100e:	e7fa      	b.n	1006 <flash_write_byte+0x62>
    1010:	20000290 	.word	0x20000290

00001014 <flash_read_block>:
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    1014:	2a00      	cmp	r2, #0
    1016:	dd13      	ble.n	1040 <flash_read_block+0x2c>
void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
    1018:	b410      	push	{r4}
    101a:	4603      	mov	r3, r0
    101c:	3901      	subs	r1, #1
    101e:	4410      	add	r0, r2
		if (_addr2row(address)==row_buff.row){
    1020:	4a08      	ldr	r2, [pc, #32]	; (1044 <flash_read_block+0x30>)
    1022:	7854      	ldrb	r4, [r2, #1]
    1024:	ebb4 2f93 	cmp.w	r4, r3, lsr #10
			i=((uint32_t)address&FLASH_ROW_MASK);
    1028:	bf03      	ittte	eq
    102a:	f3c3 0409 	ubfxeq	r4, r3, #0, #10
			return row_buff.data[i];
    102e:	18a4      	addeq	r4, r4, r2
    1030:	78a4      	ldrbeq	r4, [r4, #2]
			return *address;
    1032:	781c      	ldrbne	r4, [r3, #0]
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    1034:	f801 4f01 	strb.w	r4, [r1, #1]!
    1038:	3301      	adds	r3, #1
    103a:	4283      	cmp	r3, r0
    103c:	d1f1      	bne.n	1022 <flash_read_block+0xe>
}
    103e:	bc10      	pop	{r4}
    1040:	4770      	bx	lr
    1042:	bf00      	nop
    1044:	20000290 	.word	0x20000290

00001048 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    1048:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	if ((void*)address<(void*)0x10000) return 0;
    104a:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
    104e:	d202      	bcs.n	1056 <flash_write_block+0xe>
    1050:	2300      	movs	r3, #0
			return 0;
		}
	}
	flash_disable();
	return 1;
}
    1052:	4618      	mov	r0, r3
    1054:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1056:	4604      	mov	r4, r0
    1058:	460e      	mov	r6, r1
    105a:	4617      	mov	r7, r2
	if (!flash_enable()) return 0;	
    105c:	f7ff febc 	bl	dd8 <flash_enable>
    1060:	4603      	mov	r3, r0
    1062:	2800      	cmp	r0, #0
    1064:	d0f5      	beq.n	1052 <flash_write_block+0xa>
	for (i=0;i<size;i++){
    1066:	2f00      	cmp	r7, #0
    1068:	dd0c      	ble.n	1084 <flash_write_block+0x3c>
    106a:	4427      	add	r7, r4
		if (!flash_write_byte(address++,*buffer++)){
    106c:	1c65      	adds	r5, r4, #1
    106e:	f816 1b01 	ldrb.w	r1, [r6], #1
    1072:	4620      	mov	r0, r4
    1074:	f7ff ff96 	bl	fa4 <flash_write_byte>
    1078:	4603      	mov	r3, r0
    107a:	2800      	cmp	r0, #0
    107c:	d0e9      	beq.n	1052 <flash_write_block+0xa>
    107e:	462c      	mov	r4, r5
	for (i=0;i<size;i++){
    1080:	42bd      	cmp	r5, r7
    1082:	d1f3      	bne.n	106c <flash_write_block+0x24>
	flash_disable();
    1084:	f7ff ff78 	bl	f78 <flash_disable>
	return 1;
    1088:	2301      	movs	r3, #1
    108a:	e7e2      	b.n	1052 <flash_write_block+0xa>

0000108c <btn_mask>:
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    int i;
    for (i=0;i<8;i++){
        if (buttons[i]==btn_value) return 1<<i;
    108c:	4b0a      	ldr	r3, [pc, #40]	; (10b8 <btn_mask+0x2c>)
    108e:	781b      	ldrb	r3, [r3, #0]
    1090:	4283      	cmp	r3, r0
    1092:	d00a      	beq.n	10aa <btn_mask+0x1e>
    1094:	4a09      	ldr	r2, [pc, #36]	; (10bc <btn_mask+0x30>)
    for (i=0;i<8;i++){
    1096:	2301      	movs	r3, #1
        if (buttons[i]==btn_value) return 1<<i;
    1098:	f812 1b01 	ldrb.w	r1, [r2], #1
    109c:	4281      	cmp	r1, r0
    109e:	d005      	beq.n	10ac <btn_mask+0x20>
    for (i=0;i<8;i++){
    10a0:	3301      	adds	r3, #1
    10a2:	2b08      	cmp	r3, #8
    10a4:	d1f8      	bne.n	1098 <btn_mask+0xc>
    }
    return 255;
    10a6:	20ff      	movs	r0, #255	; 0xff
}
    10a8:	4770      	bx	lr
    for (i=0;i<8;i++){
    10aa:	2300      	movs	r3, #0
        if (buttons[i]==btn_value) return 1<<i;
    10ac:	2001      	movs	r0, #1
    10ae:	fa00 f303 	lsl.w	r3, r0, r3
    10b2:	b2d8      	uxtb	r0, r3
    10b4:	4770      	bx	lr
    10b6:	bf00      	nop
    10b8:	20000694 	.word	0x20000694
    10bc:	20000695 	.word	0x20000695

000010c0 <shift_out>:
        u8>>=1;
    }
    return count;
}

static uint8_t shift_out(uint8_t byte){
    10c0:	b430      	push	{r4, r5}
    10c2:	4605      	mov	r5, r0
    10c4:	2408      	movs	r4, #8
    uint8_t mask=1,rx_byte=0;
    10c6:	2000      	movs	r0, #0
    10c8:	2201      	movs	r2, #1

    while (mask){
        if (byte&mask){
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    10ca:	4b1b      	ldr	r3, [pc, #108]	; (1138 <shift_out+0x78>)
    10cc:	e003      	b.n	10d6 <shift_out+0x16>
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
        _clk_delay();
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
        rx_byte>>=1;
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
        mask<<=1;
    10ce:	0052      	lsls	r2, r2, #1
    10d0:	b2d2      	uxtb	r2, r2
    while (mask){
    10d2:	3c01      	subs	r4, #1
    10d4:	d01d      	beq.n	1112 <shift_out+0x52>
        if (byte&mask){
    10d6:	4215      	tst	r5, r2
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    10d8:	68d9      	ldr	r1, [r3, #12]
    10da:	bf14      	ite	ne
    10dc:	f441 4100 	orrne.w	r1, r1, #32768	; 0x8000
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    10e0:	f421 4100 	biceq.w	r1, r1, #32768	; 0x8000
    10e4:	60d9      	str	r1, [r3, #12]
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    10e6:	68d9      	ldr	r1, [r3, #12]
    10e8:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
    10ec:	60d9      	str	r1, [r3, #12]
        _clk_delay();
    10ee:	bf00      	nop
    10f0:	bf00      	nop
    10f2:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    10f4:	68d9      	ldr	r1, [r3, #12]
    10f6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    10fa:	60d9      	str	r1, [r3, #12]
        rx_byte>>=1;
    10fc:	0840      	lsrs	r0, r0, #1
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
    10fe:	6899      	ldr	r1, [r3, #8]
    1100:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
    1104:	6099      	str	r1, [r3, #8]
    1106:	2900      	cmp	r1, #0
    1108:	d0e1      	beq.n	10ce <shift_out+0xe>
    110a:	f060 007f 	orn	r0, r0, #127	; 0x7f
    110e:	b2c0      	uxtb	r0, r0
    1110:	e7dd      	b.n	10ce <shift_out+0xe>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    1112:	4b09      	ldr	r3, [pc, #36]	; (1138 <shift_out+0x78>)
    1114:	68da      	ldr	r2, [r3, #12]
    1116:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    111a:	60da      	str	r2, [r3, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    111c:	68da      	ldr	r2, [r3, #12]
    111e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    1122:	60da      	str	r2, [r3, #12]
    _clk_delay();
    1124:	bf00      	nop
    1126:	bf00      	nop
    1128:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    112a:	68da      	ldr	r2, [r3, #12]
    112c:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
    1130:	60da      	str	r2, [r3, #12]
    return rx_byte;
}
    1132:	bc30      	pop	{r4, r5}
    1134:	4770      	bx	lr
    1136:	bf00      	nop
    1138:	40010c00 	.word	0x40010c00

0000113c <set_keymap>:
void set_keymap(const uint8_t *kmap){
    113c:	1e43      	subs	r3, r0, #1
    113e:	4a04      	ldr	r2, [pc, #16]	; (1150 <set_keymap+0x14>)
    1140:	3007      	adds	r0, #7
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    1142:	f813 1f01 	ldrb.w	r1, [r3, #1]!
    1146:	f802 1f01 	strb.w	r1, [r2, #1]!
    114a:	4283      	cmp	r3, r0
    114c:	d1f9      	bne.n	1142 <set_keymap+0x6>
}
    114e:	4770      	bx	lr
    1150:	20000693 	.word	0x20000693

00001154 <gamepad_init>:
void gamepad_init(){
    1154:	b510      	push	{r4, lr}
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    1156:	4c0b      	ldr	r4, [pc, #44]	; (1184 <gamepad_init+0x30>)
    1158:	2202      	movs	r2, #2
    115a:	210f      	movs	r1, #15
    115c:	4620      	mov	r0, r4
    115e:	f000 fa1b 	bl	1598 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    1162:	2202      	movs	r2, #2
    1164:	210d      	movs	r1, #13
    1166:	4620      	mov	r0, r4
    1168:	f000 fa16 	bl	1598 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    116c:	2208      	movs	r2, #8
    116e:	210e      	movs	r1, #14
    1170:	4620      	mov	r0, r4
    1172:	f000 fa11 	bl	1598 <config_pin>
    btn_state=0xff;
    1176:	22ff      	movs	r2, #255	; 0xff
    1178:	4b03      	ldr	r3, [pc, #12]	; (1188 <gamepad_init+0x34>)
    117a:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    117c:	4803      	ldr	r0, [pc, #12]	; (118c <gamepad_init+0x38>)
    117e:	f7ff ffdd 	bl	113c <set_keymap>
    1182:	bd10      	pop	{r4, pc}
    1184:	40010c00 	.word	0x40010c00
    1188:	200026e4 	.word	0x200026e4
    118c:	00003d08 	.word	0x00003d08

00001190 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1190:	b538      	push	{r3, r4, r5, lr}
    btn_state=shift_out(0xfe);
    1192:	20fe      	movs	r0, #254	; 0xfe
    1194:	f7ff ff94 	bl	10c0 <shift_out>
    1198:	4b0c      	ldr	r3, [pc, #48]	; (11cc <read_gamepad+0x3c>)
    119a:	7018      	strb	r0, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    119c:	781b      	ldrb	r3, [r3, #0]
    119e:	f013 0f12 	tst.w	r3, #18
    11a2:	d111      	bne.n	11c8 <read_gamepad+0x38>
        while (btn_state!=0xff){
    11a4:	4b09      	ldr	r3, [pc, #36]	; (11cc <read_gamepad+0x3c>)
    11a6:	781b      	ldrb	r3, [r3, #0]
    11a8:	b2db      	uxtb	r3, r3
    11aa:	2bff      	cmp	r3, #255	; 0xff
    11ac:	d009      	beq.n	11c2 <read_gamepad+0x32>
            btn_state=shift_out(0xfe);
    11ae:	25fe      	movs	r5, #254	; 0xfe
    11b0:	4c06      	ldr	r4, [pc, #24]	; (11cc <read_gamepad+0x3c>)
    11b2:	4628      	mov	r0, r5
    11b4:	f7ff ff84 	bl	10c0 <shift_out>
    11b8:	7020      	strb	r0, [r4, #0]
        while (btn_state!=0xff){
    11ba:	7823      	ldrb	r3, [r4, #0]
    11bc:	b2db      	uxtb	r3, r3
    11be:	2bff      	cmp	r3, #255	; 0xff
    11c0:	d1f7      	bne.n	11b2 <read_gamepad+0x22>
        };
        _reset_mcu();
    11c2:	4a03      	ldr	r2, [pc, #12]	; (11d0 <read_gamepad+0x40>)
    11c4:	4b03      	ldr	r3, [pc, #12]	; (11d4 <read_gamepad+0x44>)
    11c6:	601a      	str	r2, [r3, #0]
    11c8:	bd38      	pop	{r3, r4, r5, pc}
    11ca:	bf00      	nop
    11cc:	200026e4 	.word	0x200026e4
    11d0:	05fa0004 	.word	0x05fa0004
    11d4:	e000ed0c 	.word	0xe000ed0c

000011d8 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    11d8:	b508      	push	{r3, lr}
    uint8_t mask=btn_mask(btn);
    11da:	f7ff ff57 	bl	108c <btn_mask>
    return !(btn_state&mask);
    11de:	4b03      	ldr	r3, [pc, #12]	; (11ec <btn_query_down+0x14>)
    11e0:	781b      	ldrb	r3, [r3, #0]
    11e2:	4203      	tst	r3, r0
}
    11e4:	bf0c      	ite	eq
    11e6:	2001      	moveq	r0, #1
    11e8:	2000      	movne	r0, #0
    11ea:	bd08      	pop	{r3, pc}
    11ec:	200026e4 	.word	0x200026e4

000011f0 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    11f0:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    11f2:	f7ff ff4b 	bl	108c <btn_mask>
    11f6:	4606      	mov	r6, r0
    int frame_count=0;
    11f8:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if (!(btn_state&mask)){
    11fa:	4d06      	ldr	r5, [pc, #24]	; (1214 <btn_wait_down+0x24>)
    11fc:	e000      	b.n	1200 <btn_wait_down+0x10>
            frame_count++;
        }else{
            frame_count=0;
    11fe:	2400      	movs	r4, #0
        frame_sync();
    1200:	f002 f91e 	bl	3440 <frame_sync>
        if (!(btn_state&mask)){
    1204:	782b      	ldrb	r3, [r5, #0]
    1206:	4233      	tst	r3, r6
    1208:	d1f9      	bne.n	11fe <btn_wait_down+0xe>
            frame_count++;
    120a:	3401      	adds	r4, #1
    while (frame_count<3){
    120c:	2c02      	cmp	r4, #2
    120e:	ddf7      	ble.n	1200 <btn_wait_down+0x10>
        }
    }
}
    1210:	bd70      	pop	{r4, r5, r6, pc}
    1212:	bf00      	nop
    1214:	200026e4 	.word	0x200026e4

00001218 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1218:	b570      	push	{r4, r5, r6, lr}
    uint8_t mask=btn_mask(btn);
    121a:	f7ff ff37 	bl	108c <btn_mask>
    121e:	4606      	mov	r6, r0
    int frame_count=0;
    1220:	2400      	movs	r4, #0
    while (frame_count<3){
        frame_sync();
        if ((btn_state&mask)){
    1222:	4d06      	ldr	r5, [pc, #24]	; (123c <btn_wait_up+0x24>)
    1224:	e000      	b.n	1228 <btn_wait_up+0x10>
            frame_count++;
        }else{
            frame_count=0;
    1226:	2400      	movs	r4, #0
        frame_sync();
    1228:	f002 f90a 	bl	3440 <frame_sync>
        if ((btn_state&mask)){
    122c:	782b      	ldrb	r3, [r5, #0]
    122e:	4233      	tst	r3, r6
    1230:	d0f9      	beq.n	1226 <btn_wait_up+0xe>
            frame_count++;
    1232:	3401      	adds	r4, #1
    while (frame_count<3){
    1234:	2c02      	cmp	r4, #2
    1236:	ddf7      	ble.n	1228 <btn_wait_up+0x10>
        }
    }
}
    1238:	bd70      	pop	{r4, r5, r6, pc}
    123a:	bf00      	nop
    123c:	200026e4 	.word	0x200026e4

00001240 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1240:	b570      	push	{r4, r5, r6, lr}
    uint8_t btn, last_state=btn_state;
    1242:	4b15      	ldr	r3, [pc, #84]	; (1298 <btn_wait_any+0x58>)
    1244:	781c      	ldrb	r4, [r3, #0]
    1246:	b2e4      	uxtb	r4, r4
    int frame_count=0;
    1248:	2600      	movs	r6, #0
    while (frame_count<3){
        frame_sync();
        if (last_state!=btn_state){
    124a:	461d      	mov	r5, r3
    124c:	e007      	b.n	125e <btn_wait_any+0x1e>
            frame_count=0;
            last_state=btn_state;
        }else if(btn_state!=0xff){
    124e:	782a      	ldrb	r2, [r5, #0]
    1250:	b2d2      	uxtb	r2, r2
    1252:	2aff      	cmp	r2, #255	; 0xff
            frame_count++;
    1254:	bf18      	it	ne
    1256:	3601      	addne	r6, #1
    while (frame_count<3){
    1258:	2e02      	cmp	r6, #2
    125a:	dc0a      	bgt.n	1272 <btn_wait_any+0x32>
    125c:	461c      	mov	r4, r3
        frame_sync();
    125e:	f002 f8ef 	bl	3440 <frame_sync>
        if (last_state!=btn_state){
    1262:	782b      	ldrb	r3, [r5, #0]
    1264:	b2db      	uxtb	r3, r3
    1266:	42a3      	cmp	r3, r4
    1268:	d0f1      	beq.n	124e <btn_wait_any+0xe>
            last_state=btn_state;
    126a:	782c      	ldrb	r4, [r5, #0]
    126c:	b2e4      	uxtb	r4, r4
            frame_count=0;
    126e:	2600      	movs	r6, #0
    1270:	e7f5      	b.n	125e <btn_wait_any+0x1e>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    1272:	43e3      	mvns	r3, r4
    mask>>=1;
    1274:	f3c3 0346 	ubfx	r3, r3, #1, #7
    while(mask){idx++; mask>>=1;}
    1278:	b15b      	cbz	r3, 1292 <btn_wait_any+0x52>
    127a:	2200      	movs	r2, #0
    127c:	3201      	adds	r2, #1
    127e:	b2d2      	uxtb	r2, r2
    1280:	085b      	lsrs	r3, r3, #1
    1282:	d1fb      	bne.n	127c <btn_wait_any+0x3c>
    btn=buttons[btn_idx(last_state^0xff)];
    1284:	4b05      	ldr	r3, [pc, #20]	; (129c <btn_wait_any+0x5c>)
    1286:	5c9c      	ldrb	r4, [r3, r2]
    // wait button release
    btn_wait_up(btn);
    1288:	4620      	mov	r0, r4
    128a:	f7ff ffc5 	bl	1218 <btn_wait_up>
    return btn;
}
    128e:	4620      	mov	r0, r4
    1290:	bd70      	pop	{r4, r5, r6, pc}
    uint8_t idx=0;
    1292:	461a      	mov	r2, r3
    1294:	e7f6      	b.n	1284 <btn_wait_any+0x44>
    1296:	bf00      	nop
    1298:	200026e4 	.word	0x200026e4
    129c:	20000694 	.word	0x20000694

000012a0 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    buttons[idx]=value;
    12a0:	4b01      	ldr	r3, [pc, #4]	; (12a8 <btn_set_value+0x8>)
    12a2:	5419      	strb	r1, [r3, r0]
    12a4:	4770      	bx	lr
    12a6:	bf00      	nop
    12a8:	20000694 	.word	0x20000694

000012ac <get_keymap>:
}

// retourne la table buttons
uint8_t* get_keymap(){
    return buttons;
}
    12ac:	4800      	ldr	r0, [pc, #0]	; (12b0 <get_keymap+0x4>)
    12ae:	4770      	bx	lr
    12b0:	20000694 	.word	0x20000694

000012b4 <games_count>:


unsigned games_count(){
    unsigned i;
    for (i=0;;i++){
        if (!games_list[i].size) break;
    12b4:	4b06      	ldr	r3, [pc, #24]	; (12d0 <games_count+0x1c>)
    12b6:	691b      	ldr	r3, [r3, #16]
    12b8:	b13b      	cbz	r3, 12ca <games_count+0x16>
    12ba:	4b05      	ldr	r3, [pc, #20]	; (12d0 <games_count+0x1c>)
    12bc:	2000      	movs	r0, #0
    for (i=0;;i++){
    12be:	3001      	adds	r0, #1
    12c0:	331c      	adds	r3, #28
        if (!games_list[i].size) break;
    12c2:	691a      	ldr	r2, [r3, #16]
    12c4:	2a00      	cmp	r2, #0
    12c6:	d1fa      	bne.n	12be <games_count+0xa>
    12c8:	4770      	bx	lr
    for (i=0;;i++){
    12ca:	2000      	movs	r0, #0
    }
    return i;
}
    12cc:	4770      	bx	lr
    12ce:	bf00      	nop
    12d0:	20000004 	.word	0x20000004

000012d4 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    12d4:	b410      	push	{r4}
	int result=0;
	while (*s1 && *s2){
    12d6:	7803      	ldrb	r3, [r0, #0]
    12d8:	b1fb      	cbz	r3, 131a <strcmp+0x46>
    12da:	780a      	ldrb	r2, [r1, #0]
    12dc:	b17a      	cbz	r2, 12fe <strcmp+0x2a>
		if (*s1<*s2){
    12de:	4293      	cmp	r3, r2
    12e0:	d313      	bcc.n	130a <strcmp+0x36>
			result=-1;
			break;
		}else if (*s1>*s2){
    12e2:	d815      	bhi.n	1310 <strcmp+0x3c>
    12e4:	1c4c      	adds	r4, r1, #1
			result=1;
			break;
		}
		s1++;
		s2++;
    12e6:	4621      	mov	r1, r4
	while (*s1 && *s2){
    12e8:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    12ec:	b1ab      	cbz	r3, 131a <strcmp+0x46>
    12ee:	f814 2b01 	ldrb.w	r2, [r4], #1
    12f2:	b122      	cbz	r2, 12fe <strcmp+0x2a>
		if (*s1<*s2){
    12f4:	4293      	cmp	r3, r2
    12f6:	d30d      	bcc.n	1314 <strcmp+0x40>
		}else if (*s1>*s2){
    12f8:	d9f5      	bls.n	12e6 <strcmp+0x12>
			result=1;
    12fa:	2001      	movs	r0, #1
    12fc:	e003      	b.n	1306 <strcmp+0x32>
	}
	if (!result){
		if (!*s1 && *s2){
			result=-1;
		}else if (*s1 && !*s2) {
    12fe:	7808      	ldrb	r0, [r1, #0]
    1300:	fab0 f080 	clz	r0, r0
    1304:	0940      	lsrs	r0, r0, #5
			result=1;
		}
	}
	return result;
}
    1306:	bc10      	pop	{r4}
    1308:	4770      	bx	lr
			result=-1;
    130a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    130e:	e7fa      	b.n	1306 <strcmp+0x32>
			result=1;
    1310:	2001      	movs	r0, #1
    1312:	e7f8      	b.n	1306 <strcmp+0x32>
			result=-1;
    1314:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    1318:	e7f5      	b.n	1306 <strcmp+0x32>
		if (!*s1 && *s2){
    131a:	7808      	ldrb	r0, [r1, #0]
    131c:	3000      	adds	r0, #0
    131e:	bf18      	it	ne
    1320:	2001      	movne	r0, #1
    1322:	4240      	negs	r0, r0
    1324:	e7ef      	b.n	1306 <strcmp+0x32>

00001326 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1326:	f1a0 0361 	sub.w	r3, r0, #97	; 0x61
    132a:	b2db      	uxtb	r3, r3
    132c:	2b19      	cmp	r3, #25
    132e:	d906      	bls.n	133e <alpha+0x18>
    1330:	3841      	subs	r0, #65	; 0x41
    1332:	b2c0      	uxtb	r0, r0
    1334:	2819      	cmp	r0, #25
    1336:	bf8c      	ite	hi
    1338:	2000      	movhi	r0, #0
    133a:	2001      	movls	r0, #1
    133c:	4770      	bx	lr
    133e:	2001      	movs	r0, #1
}
    1340:	4770      	bx	lr

00001342 <digit>:

int digit(char c){
   return ((c>='0') && (c<='9'));
    1342:	3830      	subs	r0, #48	; 0x30
    1344:	b2c0      	uxtb	r0, r0
}
    1346:	2809      	cmp	r0, #9
    1348:	bf8c      	ite	hi
    134a:	2000      	movhi	r0, #0
    134c:	2001      	movls	r0, #1
    134e:	4770      	bx	lr

00001350 <hexdigit>:

int hexdigit(char c){
	if (c>='a') c-=32;
    1350:	2860      	cmp	r0, #96	; 0x60
    1352:	bf84      	itt	hi
    1354:	3820      	subhi	r0, #32
    1356:	b2c0      	uxtbhi	r0, r0
   return ((c>='0') && (c<='9'));
    1358:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
	return (digit(c) || (c>='A' && c<='F'));
    135c:	b2db      	uxtb	r3, r3
    135e:	2b09      	cmp	r3, #9
    1360:	d906      	bls.n	1370 <hexdigit+0x20>
    1362:	3841      	subs	r0, #65	; 0x41
    1364:	b2c0      	uxtb	r0, r0
    1366:	2805      	cmp	r0, #5
    1368:	bf8c      	ite	hi
    136a:	2000      	movhi	r0, #0
    136c:	2001      	movls	r0, #1
    136e:	4770      	bx	lr
    1370:	2001      	movs	r0, #1
}
    1372:	4770      	bx	lr

00001374 <atoi>:

int atoi(const char *str){
    1374:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1378:	4605      	mov	r5, r0
	int n=0,sign=1,base=10;
    char c;
    
	while (*str && (*str==SPACE)) str++;
    137a:	7803      	ldrb	r3, [r0, #0]
    137c:	2b20      	cmp	r3, #32
    137e:	d103      	bne.n	1388 <atoi+0x14>
    1380:	f815 3f01 	ldrb.w	r3, [r5, #1]!
    1384:	2b20      	cmp	r3, #32
    1386:	d0fb      	beq.n	1380 <atoi+0xc>
	if (*str=='-'){
    1388:	2b2d      	cmp	r3, #45	; 0x2d
		sign=-1;
		str++;
    138a:	bf06      	itte	eq
    138c:	3501      	addeq	r5, #1
		sign=-1;
    138e:	f04f 38ff 	moveq.w	r8, #4294967295	; 0xffffffff
	int n=0,sign=1,base=10;
    1392:	f04f 0801 	movne.w	r8, #1
	}
	if (*str=='$' && hexdigit(*(str+1))){
    1396:	782b      	ldrb	r3, [r5, #0]
    1398:	2b24      	cmp	r3, #36	; 0x24
    139a:	d005      	beq.n	13a8 <atoi+0x34>
		base=16;
		str++;
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    139c:	2b30      	cmp	r3, #48	; 0x30
    139e:	d00a      	beq.n	13b6 <atoi+0x42>
	int n=0,sign=1,base=10;
    13a0:	270a      	movs	r7, #10
    13a2:	3d01      	subs	r5, #1
    13a4:	2600      	movs	r6, #0
    13a6:	e026      	b.n	13f6 <atoi+0x82>
	if (*str=='$' && hexdigit(*(str+1))){
    13a8:	7868      	ldrb	r0, [r5, #1]
    13aa:	f7ff ffd1 	bl	1350 <hexdigit>
    13ae:	b160      	cbz	r0, 13ca <atoi+0x56>
		str++;
    13b0:	3501      	adds	r5, #1
		base=16;
    13b2:	2710      	movs	r7, #16
		str++;
    13b4:	e7f5      	b.n	13a2 <atoi+0x2e>
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    13b6:	786b      	ldrb	r3, [r5, #1]
    13b8:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    13bc:	2b58      	cmp	r3, #88	; 0x58
    13be:	d001      	beq.n	13c4 <atoi+0x50>
	int n=0,sign=1,base=10;
    13c0:	270a      	movs	r7, #10
    13c2:	e7ee      	b.n	13a2 <atoi+0x2e>
		base=16;
		str+=2;
    13c4:	3502      	adds	r5, #2
		base=16;
    13c6:	2710      	movs	r7, #16
    13c8:	e7eb      	b.n	13a2 <atoi+0x2e>
	int n=0,sign=1,base=10;
    13ca:	270a      	movs	r7, #10
    13cc:	e7e9      	b.n	13a2 <atoi+0x2e>
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13ce:	4620      	mov	r0, r4
    13d0:	f7ff ffbe 	bl	1350 <hexdigit>
    13d4:	3000      	adds	r0, #0
    13d6:	bf18      	it	ne
    13d8:	2001      	movne	r0, #1
    13da:	b1d0      	cbz	r0, 1412 <atoi+0x9e>
		if (c>='a'){c-=32;}
    13dc:	2c60      	cmp	r4, #96	; 0x60
    13de:	bf84      	itt	hi
    13e0:	3c20      	subhi	r4, #32
    13e2:	b2e4      	uxtbhi	r4, r4
		c-='0';
    13e4:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
    13e8:	b2db      	uxtb	r3, r3
		if (c>9){c-=7;}
    13ea:	2b09      	cmp	r3, #9
    13ec:	bf84      	itt	hi
    13ee:	3c37      	subhi	r4, #55	; 0x37
    13f0:	b2e3      	uxtbhi	r3, r4
		n=n*base+c;
    13f2:	fb07 3606 	mla	r6, r7, r6, r3
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    13f6:	f815 4f01 	ldrb.w	r4, [r5, #1]!
    13fa:	2c00      	cmp	r4, #0
    13fc:	d0e7      	beq.n	13ce <atoi+0x5a>
    13fe:	2f0a      	cmp	r7, #10
    1400:	d1e5      	bne.n	13ce <atoi+0x5a>
   return ((c>='0') && (c<='9'));
    1402:	f1a4 0030 	sub.w	r0, r4, #48	; 0x30
    1406:	b2c0      	uxtb	r0, r0
    1408:	2809      	cmp	r0, #9
    140a:	bf8c      	ite	hi
    140c:	2000      	movhi	r0, #0
    140e:	2001      	movls	r0, #1
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1410:	e7e3      	b.n	13da <atoi+0x66>
		str++;
	}
	return sign*n;
}
    1412:	fb08 f006 	mul.w	r0, r8, r6
    1416:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0000141a <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
	while (len){
    141a:	b13a      	cbz	r2, 142c <move+0x12>
    141c:	3901      	subs	r1, #1
    141e:	1882      	adds	r2, r0, r2
		*dest++=*src++;
    1420:	f810 3b01 	ldrb.w	r3, [r0], #1
    1424:	f801 3f01 	strb.w	r3, [r1, #1]!
	while (len){
    1428:	4290      	cmp	r0, r2
    142a:	d1f9      	bne.n	1420 <move+0x6>
    142c:	4770      	bx	lr

0000142e <strlen>:
	}
}

int strlen(const char* str){
	int ll=0;
	while (str[ll]){ll++;}
    142e:	7803      	ldrb	r3, [r0, #0]
    1430:	b13b      	cbz	r3, 1442 <strlen+0x14>
    1432:	4603      	mov	r3, r0
    1434:	2000      	movs	r0, #0
    1436:	3001      	adds	r0, #1
    1438:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    143c:	2a00      	cmp	r2, #0
    143e:	d1fa      	bne.n	1436 <strlen+0x8>
    1440:	4770      	bx	lr
	int ll=0;
    1442:	2000      	movs	r0, #0
	return ll;
}
    1444:	4770      	bx	lr

00001446 <fill>:

void fill(void *buffer, unsigned int size, char c){
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1446:	b121      	cbz	r1, 1452 <fill+0xc>
    1448:	1841      	adds	r1, r0, r1
    144a:	f800 2b01 	strb.w	r2, [r0], #1
    144e:	4288      	cmp	r0, r1
    1450:	d1fb      	bne.n	144a <fill+0x4>
    1452:	4770      	bx	lr

00001454 <is_lower>:
}

//retourne vrai si caractère en minuscule
int is_lower(char c){
	return (c>='a') && (c<='z');
    1454:	3861      	subs	r0, #97	; 0x61
    1456:	b2c0      	uxtb	r0, r0
}
    1458:	2819      	cmp	r0, #25
    145a:	bf8c      	ite	hi
    145c:	2000      	movhi	r0, #0
    145e:	2001      	movls	r0, #1
    1460:	4770      	bx	lr

00001462 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
	return (c>='A') && (c<='Z');
    1462:	3841      	subs	r0, #65	; 0x41
    1464:	b2c0      	uxtb	r0, r0
}
    1466:	2819      	cmp	r0, #25
    1468:	bf8c      	ite	hi
    146a:	2000      	movhi	r0, #0
    146c:	2001      	movls	r0, #1
    146e:	4770      	bx	lr

00001470 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
	while (*buffer){
    1470:	7803      	ldrb	r3, [r0, #0]
    1472:	b153      	cbz	r3, 148a <uppercase+0x1a>
	return (c>='a') && (c<='z');
    1474:	f1a3 0261 	sub.w	r2, r3, #97	; 0x61
		if (is_lower(*buffer)){*buffer-=32;}
    1478:	b2d2      	uxtb	r2, r2
    147a:	2a19      	cmp	r2, #25
    147c:	bf9c      	itt	ls
    147e:	3b20      	subls	r3, #32
    1480:	7003      	strbls	r3, [r0, #0]
	while (*buffer){
    1482:	f810 3f01 	ldrb.w	r3, [r0, #1]!
    1486:	2b00      	cmp	r3, #0
    1488:	d1f4      	bne.n	1474 <uppercase+0x4>
    148a:	4770      	bx	lr

0000148c <scan>:
		buffer++;
	}
}

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    148c:	b410      	push	{r4}
	while (buffer[start] && buffer[start]!=c) start++;
    148e:	1844      	adds	r4, r0, r1
    1490:	5c43      	ldrb	r3, [r0, r1]
    1492:	b153      	cbz	r3, 14aa <scan+0x1e>
    1494:	429a      	cmp	r2, r3
    1496:	d00a      	beq.n	14ae <scan+0x22>
    1498:	4608      	mov	r0, r1
    149a:	3001      	adds	r0, #1
    149c:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14a0:	b10b      	cbz	r3, 14a6 <scan+0x1a>
    14a2:	4293      	cmp	r3, r2
    14a4:	d1f9      	bne.n	149a <scan+0xe>
	return start;
}
    14a6:	bc10      	pop	{r4}
    14a8:	4770      	bx	lr
	while (buffer[start] && buffer[start]!=c) start++;
    14aa:	4608      	mov	r0, r1
    14ac:	e7fb      	b.n	14a6 <scan+0x1a>
    14ae:	4608      	mov	r0, r1
	return start;
    14b0:	e7f9      	b.n	14a6 <scan+0x1a>

000014b2 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    14b2:	b410      	push	{r4}
	while (buffer[start] && buffer[start]==c) start++;
    14b4:	1844      	adds	r4, r0, r1
    14b6:	5c43      	ldrb	r3, [r0, r1]
    14b8:	b153      	cbz	r3, 14d0 <skip+0x1e>
    14ba:	429a      	cmp	r2, r3
    14bc:	d10a      	bne.n	14d4 <skip+0x22>
    14be:	4608      	mov	r0, r1
    14c0:	3001      	adds	r0, #1
    14c2:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    14c6:	b10b      	cbz	r3, 14cc <skip+0x1a>
    14c8:	4293      	cmp	r3, r2
    14ca:	d0f9      	beq.n	14c0 <skip+0xe>
	return start;
}
    14cc:	bc10      	pop	{r4}
    14ce:	4770      	bx	lr
	while (buffer[start] && buffer[start]==c) start++;
    14d0:	4608      	mov	r0, r1
    14d2:	e7fb      	b.n	14cc <skip+0x1a>
    14d4:	4608      	mov	r0, r1
	return start;
    14d6:	e7f9      	b.n	14cc <skip+0x1a>

000014d8 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    14d8:	b538      	push	{r3, r4, r5, lr}
    14da:	4604      	mov	r4, r0
    14dc:	460d      	mov	r5, r1
	s1+=strlen(s1);
    14de:	f7ff ffa6 	bl	142e <strlen>
    14e2:	4420      	add	r0, r4
	while (*s2){
    14e4:	782b      	ldrb	r3, [r5, #0]
    14e6:	b133      	cbz	r3, 14f6 <strcat+0x1e>
    14e8:	4629      	mov	r1, r5
		*s1++=*s2++;
    14ea:	f800 3b01 	strb.w	r3, [r0], #1
	while (*s2){
    14ee:	f811 3f01 	ldrb.w	r3, [r1, #1]!
    14f2:	2b00      	cmp	r3, #0
    14f4:	d1f9      	bne.n	14ea <strcat+0x12>
	}
	*s1=0;
    14f6:	2300      	movs	r3, #0
    14f8:	7003      	strb	r3, [r0, #0]
	return s1;
}
    14fa:	bd38      	pop	{r3, r4, r5, pc}

000014fc <itoa>:

char *itoa(int n,char *buffer,int base){
    14fc:	b5f0      	push	{r4, r5, r6, r7, lr}
    14fe:	b085      	sub	sp, #20
    1500:	460c      	mov	r4, r1
	char d,fmt[16];
	int i=14,sign=0;
	if ((base==10) && (n<0)){
    1502:	2a0a      	cmp	r2, #10
    1504:	d033      	beq.n	156e <itoa+0x72>
	int i=14,sign=0;
    1506:	2700      	movs	r7, #0
		sign=1;
		n=-n;
	}
	fmt[15]=0;
    1508:	2300      	movs	r3, #0
    150a:	f88d 300f 	strb.w	r3, [sp, #15]
	fmt[14]=' ';
    150e:	2320      	movs	r3, #32
    1510:	f88d 300e 	strb.w	r3, [sp, #14]
	while (n){
    1514:	b390      	cbz	r0, 157c <itoa+0x80>
    1516:	f10d 060d 	add.w	r6, sp, #13
    151a:	250e      	movs	r5, #14
		d=n%base+'0';
    151c:	fb90 f3f2 	sdiv	r3, r0, r2
    1520:	fb02 0313 	mls	r3, r2, r3, r0
    1524:	b2db      	uxtb	r3, r3
    1526:	f103 0130 	add.w	r1, r3, #48	; 0x30
    152a:	b2c9      	uxtb	r1, r1
		if (d>'9') d+=7;
    152c:	2939      	cmp	r1, #57	; 0x39
    152e:	bf84      	itt	hi
    1530:	3337      	addhi	r3, #55	; 0x37
    1532:	b2d9      	uxtbhi	r1, r3
		n/=base;
    1534:	fb90 f0f2 	sdiv	r0, r0, r2
		fmt[--i]=d;
    1538:	3d01      	subs	r5, #1
    153a:	f806 1901 	strb.w	r1, [r6], #-1
	while (n){
    153e:	2800      	cmp	r0, #0
    1540:	d1ec      	bne.n	151c <itoa+0x20>
	}
	if (i==14) fmt[--i]='0';
    1542:	2d0e      	cmp	r5, #14
    1544:	d01a      	beq.n	157c <itoa+0x80>
	if ((base==10) && sign) fmt[--i]='-';
    1546:	2a0a      	cmp	r2, #10
    1548:	d01d      	beq.n	1586 <itoa+0x8a>
	if (base==16) fmt[--i]='$';
    154a:	2a10      	cmp	r2, #16
    154c:	d105      	bne.n	155a <itoa+0x5e>
    154e:	3d01      	subs	r5, #1
    1550:	ab04      	add	r3, sp, #16
    1552:	442b      	add	r3, r5
    1554:	2224      	movs	r2, #36	; 0x24
    1556:	f803 2c10 	strb.w	r2, [r3, #-16]
	move((const char*)&fmt[i],buffer,16-i);
    155a:	f1c5 0210 	rsb	r2, r5, #16
    155e:	4621      	mov	r1, r4
    1560:	eb0d 0005 	add.w	r0, sp, r5
    1564:	f7ff ff59 	bl	141a <move>
	return buffer;
    1568:	4620      	mov	r0, r4
    156a:	b005      	add	sp, #20
    156c:	bdf0      	pop	{r4, r5, r6, r7, pc}
	if ((base==10) && (n<0)){
    156e:	2800      	cmp	r0, #0
    1570:	db01      	blt.n	1576 <itoa+0x7a>
	int i=14,sign=0;
    1572:	2700      	movs	r7, #0
    1574:	e7c8      	b.n	1508 <itoa+0xc>
		n=-n;
    1576:	4240      	negs	r0, r0
		sign=1;
    1578:	2701      	movs	r7, #1
    157a:	e7c5      	b.n	1508 <itoa+0xc>
	if (i==14) fmt[--i]='0';
    157c:	2330      	movs	r3, #48	; 0x30
    157e:	f88d 300d 	strb.w	r3, [sp, #13]
    1582:	250d      	movs	r5, #13
    1584:	e7df      	b.n	1546 <itoa+0x4a>
	if ((base==10) && sign) fmt[--i]='-';
    1586:	2f00      	cmp	r7, #0
    1588:	d0e7      	beq.n	155a <itoa+0x5e>
    158a:	3d01      	subs	r5, #1
    158c:	ab04      	add	r3, sp, #16
    158e:	442b      	add	r3, r5
    1590:	222d      	movs	r2, #45	; 0x2d
    1592:	f803 2c10 	strb.w	r2, [r3, #-16]
    1596:	e7e0      	b.n	155a <itoa+0x5e>

00001598 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    1598:	b430      	push	{r4, r5}
	uint8_t shift;
	shift=(pin&7)<<2;
	port->CR[pin>>3]&=~(15<<shift);
    159a:	08cb      	lsrs	r3, r1, #3
    159c:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
	shift=(pin&7)<<2;
    15a0:	0089      	lsls	r1, r1, #2
	port->CR[pin>>3]&=~(15<<shift);
    15a2:	f001 011c 	and.w	r1, r1, #28
    15a6:	250f      	movs	r5, #15
    15a8:	408d      	lsls	r5, r1
    15aa:	ea24 0405 	bic.w	r4, r4, r5
    15ae:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    15b2:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
    15b6:	fa02 f101 	lsl.w	r1, r2, r1
    15ba:	4321      	orrs	r1, r4
    15bc:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
}
    15c0:	bc30      	pop	{r4, r5}
    15c2:	4770      	bx	lr

000015c4 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
	return port->IDR&(1<<pin);
    15c4:	6880      	ldr	r0, [r0, #8]
    15c6:	2301      	movs	r3, #1
    15c8:	fa03 f101 	lsl.w	r1, r3, r1
}
    15cc:	4008      	ands	r0, r1
    15ce:	4770      	bx	lr

000015d0 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15d0:	b93a      	cbnz	r2, 15e2 <write_pin+0x12>
    15d2:	68c3      	ldr	r3, [r0, #12]
    15d4:	2201      	movs	r2, #1
    15d6:	fa02 f101 	lsl.w	r1, r2, r1
    15da:	ea23 0101 	bic.w	r1, r3, r1
    15de:	60c1      	str	r1, [r0, #12]
    15e0:	4770      	bx	lr
    15e2:	68c2      	ldr	r2, [r0, #12]
    15e4:	2301      	movs	r3, #1
    15e6:	fa03 f101 	lsl.w	r1, r3, r1
    15ea:	4311      	orrs	r1, r2
    15ec:	60c1      	str	r1, [r0, #12]
    15ee:	4770      	bx	lr

000015f0 <toggle_pin>:
}

inline void toggle_pin(gpio_t* port, unsigned pin){
	port->ODR^=(1<<pin);
    15f0:	68c2      	ldr	r2, [r0, #12]
    15f2:	2301      	movs	r3, #1
    15f4:	fa03 f101 	lsl.w	r1, r3, r1
    15f8:	4051      	eors	r1, r2
    15fa:	60c1      	str	r1, [r0, #12]
    15fc:	4770      	bx	lr
	...

00001600 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    palette[0]=new[0];
    1600:	4b04      	ldr	r3, [pc, #16]	; (1614 <set_palette+0x14>)
    1602:	7802      	ldrb	r2, [r0, #0]
    1604:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    1606:	7842      	ldrb	r2, [r0, #1]
    1608:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    160a:	7882      	ldrb	r2, [r0, #2]
    160c:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    160e:	78c2      	ldrb	r2, [r0, #3]
    1610:	70da      	strb	r2, [r3, #3]
    1612:	4770      	bx	lr
    1614:	200001a8 	.word	0x200001a8

00001618 <gfx_blit>:
}

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    1618:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    161a:	4604      	mov	r4, r0
    161c:	460e      	mov	r6, r1
    161e:	4615      	mov	r5, r2
    1620:	461f      	mov	r7, r3
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    1622:	f001 ff47 	bl	34b4 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    1626:	2c00      	cmp	r4, #0
    1628:	db38      	blt.n	169c <gfx_blit+0x84>
    162a:	8983      	ldrh	r3, [r0, #12]
    162c:	429c      	cmp	r4, r3
    162e:	da37      	bge.n	16a0 <gfx_blit+0x88>
    1630:	2e00      	cmp	r6, #0
    1632:	db37      	blt.n	16a4 <gfx_blit+0x8c>
    1634:	89c3      	ldrh	r3, [r0, #14]
    1636:	429e      	cmp	r6, r3
    1638:	da36      	bge.n	16a8 <gfx_blit+0x90>
    idx=y*vparams->bpr+x/2;
    163a:	7a03      	ldrb	r3, [r0, #8]
    163c:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    1640:	1052      	asrs	r2, r2, #1
    1642:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    1646:	f005 000f 	and.w	r0, r5, #15
    mask=0xf0;
    if (!(x&1)){
    164a:	f014 0f01 	tst.w	r4, #1
         color<<=4;
    164e:	bf06      	itte	eq
    1650:	0100      	lsleq	r0, r0, #4
         mask=0x0f;
    1652:	220f      	moveq	r2, #15
    mask=0xf0;
    1654:	22f0      	movne	r2, #240	; 0xf0
    }
    byte=video_buffer[idx];
    1656:	4b15      	ldr	r3, [pc, #84]	; (16ac <gfx_blit+0x94>)
    1658:	5d9b      	ldrb	r3, [r3, r6]
    switch (op){
    165a:	2f04      	cmp	r7, #4
    165c:	d805      	bhi.n	166a <gfx_blit+0x52>
    165e:	e8df f007 	tbb	[pc, r7]
    1662:	1003      	.short	0x1003
    1664:	1412      	.short	0x1412
    1666:	18          	.byte	0x18
    1667:	00          	.byte	0x00
    case BIT_OR:
        byte|=color;
    1668:	4303      	orrs	r3, r0
    case BIT_SET:
        byte &=mask;
        byte|=color;
        break;
    }//switch (op)
    video_buffer[idx]=byte;
    166a:	4910      	ldr	r1, [pc, #64]	; (16ac <gfx_blit+0x94>)
    166c:	558b      	strb	r3, [r1, r6]
    return !((byte&~mask)^color==0);
    166e:	ea23 0302 	bic.w	r3, r3, r2
    1672:	fab0 f080 	clz	r0, r0
    1676:	0940      	lsrs	r0, r0, #5
    1678:	4283      	cmp	r3, r0
    167a:	bf14      	ite	ne
    167c:	2000      	movne	r0, #0
    167e:	2001      	moveq	r0, #1
    1680:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
        byte&=color;
    1682:	4003      	ands	r3, r0
        break;
    1684:	e7f1      	b.n	166a <gfx_blit+0x52>
        byte^=color;
    1686:	4043      	eors	r3, r0
        break;
    1688:	e7ef      	b.n	166a <gfx_blit+0x52>
        byte^=~mask;
    168a:	43d4      	mvns	r4, r2
    168c:	405c      	eors	r4, r3
    168e:	b2e3      	uxtb	r3, r4
        break;
    1690:	e7eb      	b.n	166a <gfx_blit+0x52>
        byte &=mask;
    1692:	ea02 0403 	and.w	r4, r2, r3
        byte|=color;
    1696:	ea40 0304 	orr.w	r3, r0, r4
        break;
    169a:	e7e6      	b.n	166a <gfx_blit+0x52>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    169c:	2000      	movs	r0, #0
    169e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16a0:	2000      	movs	r0, #0
    16a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16a4:	2000      	movs	r0, #0
    16a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16a8:	2000      	movs	r0, #0
}
    16aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    16ac:	20002714 	.word	0x20002714

000016b0 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    16b0:	b570      	push	{r4, r5, r6, lr}
    16b2:	4604      	mov	r4, r0
    16b4:	460e      	mov	r6, r1
    16b6:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    16b8:	f001 fefc 	bl	34b4 <get_video_params>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    16bc:	2c00      	cmp	r4, #0
    16be:	db1d      	blt.n	16fc <gfx_plot+0x4c>
    16c0:	8983      	ldrh	r3, [r0, #12]
    16c2:	429c      	cmp	r4, r3
    16c4:	da1a      	bge.n	16fc <gfx_plot+0x4c>
    16c6:	2e00      	cmp	r6, #0
    16c8:	db18      	blt.n	16fc <gfx_plot+0x4c>
    16ca:	89c3      	ldrh	r3, [r0, #14]
    16cc:	429e      	cmp	r6, r3
    16ce:	da15      	bge.n	16fc <gfx_plot+0x4c>
    idx=y*vparams->bpr+x/2;
    16d0:	7a03      	ldrb	r3, [r0, #8]
    16d2:	eb04 72d4 	add.w	r2, r4, r4, lsr #31
    16d6:	1052      	asrs	r2, r2, #1
    16d8:	fb06 2603 	mla	r6, r6, r3, r2
    color&=0xf;
    16dc:	f005 050f 	and.w	r5, r5, #15
    byte=video_buffer[idx];
    16e0:	4b07      	ldr	r3, [pc, #28]	; (1700 <gfx_plot+0x50>)
    16e2:	5d9b      	ldrb	r3, [r3, r6]
    if (x&1){
    16e4:	f014 0f01 	tst.w	r4, #1
        byte&=0xf0;
    16e8:	bf19      	ittee	ne
    16ea:	f003 03f0 	andne.w	r3, r3, #240	; 0xf0
        byte|=color;
    16ee:	431d      	orrne	r5, r3
    }else{
        byte&=0xf;
    16f0:	f003 030f 	andeq.w	r3, r3, #15
        byte|=color<<4;
    16f4:	ea43 1505 	orreq.w	r5, r3, r5, lsl #4
    }
    video_buffer[idx]=byte;
    16f8:	4b01      	ldr	r3, [pc, #4]	; (1700 <gfx_plot+0x50>)
    16fa:	559d      	strb	r5, [r3, r6]
    16fc:	bd70      	pop	{r4, r5, r6, pc}
    16fe:	bf00      	nop
    1700:	20002714 	.word	0x20002714

00001704 <gfx_cls>:
}

void gfx_cls(){
    1704:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    1706:	f001 fed5 	bl	34b4 <get_video_params>
    170a:	4b06      	ldr	r3, [pc, #24]	; (1724 <gfx_cls+0x20>)
    170c:	4906      	ldr	r1, [pc, #24]	; (1728 <gfx_cls+0x24>)
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    170e:	2200      	movs	r2, #0
    1710:	f803 2f01 	strb.w	r2, [r3, #1]!
    1714:	428b      	cmp	r3, r1
    1716:	d1fb      	bne.n	1710 <gfx_cls+0xc>
    set_cursor(0,0);
    1718:	2100      	movs	r1, #0
    171a:	4608      	mov	r0, r1
    171c:	f001 fb7e 	bl	2e1c <set_cursor>
    1720:	bd08      	pop	{r3, pc}
    1722:	bf00      	nop
    1724:	20002713 	.word	0x20002713
    1728:	20004e73 	.word	0x20004e73

0000172c <gfx_scroll_up>:
    while (size--) *dest++=*src++;
    return dest;
}


void gfx_scroll_up(uint8_t n){
    172c:	b570      	push	{r4, r5, r6, lr}
    172e:	4604      	mov	r4, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1730:	f001 fec0 	bl	34b4 <get_video_params>
    src=&video_buffer[n*vparams->bpr];
    1734:	7a06      	ldrb	r6, [r0, #8]
    1736:	4b0f      	ldr	r3, [pc, #60]	; (1774 <gfx_scroll_up+0x48>)
    1738:	fb06 3304 	mla	r3, r6, r4, r3
    dest=video_buffer;
    size = (vparams->vres-n)*vparams->bpr;
    173c:	89c2      	ldrh	r2, [r0, #14]
    173e:	1b12      	subs	r2, r2, r4
    1740:	fb06 f602 	mul.w	r6, r6, r2
    while (size--) *dest++=*src++;
    1744:	b1a6      	cbz	r6, 1770 <gfx_scroll_up+0x44>
    1746:	4a0b      	ldr	r2, [pc, #44]	; (1774 <gfx_scroll_up+0x48>)
    1748:	199d      	adds	r5, r3, r6
    174a:	f813 1b01 	ldrb.w	r1, [r3], #1
    174e:	f802 1b01 	strb.w	r1, [r2], #1
    1752:	42ab      	cmp	r3, r5
    1754:	d1f9      	bne.n	174a <gfx_scroll_up+0x1e>
    1756:	4b07      	ldr	r3, [pc, #28]	; (1774 <gfx_scroll_up+0x48>)
    1758:	4433      	add	r3, r6
    dest=move_down(src,dest,size);
    size=vparams->bpr*n;
    175a:	7a02      	ldrb	r2, [r0, #8]
    175c:	fb04 f202 	mul.w	r2, r4, r2
    while (size--) *dest++=0;
    1760:	b12a      	cbz	r2, 176e <gfx_scroll_up+0x42>
    1762:	441a      	add	r2, r3
    1764:	2100      	movs	r1, #0
    1766:	f803 1b01 	strb.w	r1, [r3], #1
    176a:	4293      	cmp	r3, r2
    176c:	d1fb      	bne.n	1766 <gfx_scroll_up+0x3a>
    176e:	bd70      	pop	{r4, r5, r6, pc}
    while (size--) *dest++=*src++;
    1770:	4b00      	ldr	r3, [pc, #0]	; (1774 <gfx_scroll_up+0x48>)
    1772:	e7f2      	b.n	175a <gfx_scroll_up+0x2e>
    1774:	20002714 	.word	0x20002714

00001778 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1778:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    177a:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    177c:	f001 fe9a 	bl	34b4 <get_video_params>
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    1780:	89c3      	ldrh	r3, [r0, #14]
    1782:	7a04      	ldrb	r4, [r0, #8]
    1784:	1b5f      	subs	r7, r3, r5
    1786:	fb04 f707 	mul.w	r7, r4, r7
    178a:	490c      	ldr	r1, [pc, #48]	; (17bc <gfx_scroll_down+0x44>)
    178c:	187a      	adds	r2, r7, r1
    dest=&video_buffer[vparams->vres*vparams->bpr];
    178e:	fb04 1303 	mla	r3, r4, r3, r1
    while (size--) *--dest=*--src;
    1792:	b147      	cbz	r7, 17a6 <gfx_scroll_down+0x2e>
    1794:	4619      	mov	r1, r3
    1796:	4e09      	ldr	r6, [pc, #36]	; (17bc <gfx_scroll_down+0x44>)
    1798:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    179c:	f801 4d01 	strb.w	r4, [r1, #-1]!
    17a0:	42b2      	cmp	r2, r6
    17a2:	d1f9      	bne.n	1798 <gfx_scroll_down+0x20>
    17a4:	1bdb      	subs	r3, r3, r7
    size = (vparams->vres-n)*vparams->bpr;
    dest=move_up(src,dest,size);
    size=vparams->bpr*n;
    17a6:	7a02      	ldrb	r2, [r0, #8]
    17a8:	fb05 f202 	mul.w	r2, r5, r2
    while (size--) *--dest=0;
    17ac:	b12a      	cbz	r2, 17ba <gfx_scroll_down+0x42>
    17ae:	1a9a      	subs	r2, r3, r2
    17b0:	2100      	movs	r1, #0
    17b2:	f803 1d01 	strb.w	r1, [r3, #-1]!
    17b6:	4293      	cmp	r3, r2
    17b8:	d1fb      	bne.n	17b2 <gfx_scroll_down+0x3a>
    17ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    17bc:	20002714 	.word	0x20002714

000017c0 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    17c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    17c4:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    17c6:	f001 fe75 	bl	34b4 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    17ca:	89c3      	ldrh	r3, [r0, #14]
    17cc:	b30b      	cbz	r3, 1812 <gfx_scroll_left+0x52>
    17ce:	f04f 0c00 	mov.w	ip, #0
        dest=&video_buffer[y*vparams->bpr];
    17d2:	f8df 8044 	ldr.w	r8, [pc, #68]	; 1818 <gfx_scroll_left+0x58>
        src=dest+n;
        size=vparams->hres/2-n;
        dest=move_down(src,dest,size);
        size=n;
        while (size--) *dest++=0;
    17d6:	4667      	mov	r7, ip
        dest=&video_buffer[y*vparams->bpr];
    17d8:	7a03      	ldrb	r3, [r0, #8]
    17da:	fb0c 8303 	mla	r3, ip, r3, r8
        src=dest+n;
    17de:	199a      	adds	r2, r3, r6
        size=vparams->hres/2-n;
    17e0:	8981      	ldrh	r1, [r0, #12]
    while (size--) *dest++=*src++;
    17e2:	ebd6 0e51 	rsbs	lr, r6, r1, lsr #1
    17e6:	d009      	beq.n	17fc <gfx_scroll_left+0x3c>
    17e8:	1e59      	subs	r1, r3, #1
    17ea:	eb02 050e 	add.w	r5, r2, lr
    17ee:	f812 4b01 	ldrb.w	r4, [r2], #1
    17f2:	f801 4f01 	strb.w	r4, [r1, #1]!
    17f6:	4295      	cmp	r5, r2
    17f8:	d1f9      	bne.n	17ee <gfx_scroll_left+0x2e>
    17fa:	4473      	add	r3, lr
        while (size--) *dest++=0;
    17fc:	b126      	cbz	r6, 1808 <gfx_scroll_left+0x48>
    17fe:	199a      	adds	r2, r3, r6
    1800:	f803 7b01 	strb.w	r7, [r3], #1
    1804:	4293      	cmp	r3, r2
    1806:	d1fb      	bne.n	1800 <gfx_scroll_left+0x40>
    for (y=0;y<vparams->vres;y++){
    1808:	f10c 0c01 	add.w	ip, ip, #1
    180c:	89c3      	ldrh	r3, [r0, #14]
    180e:	4563      	cmp	r3, ip
    1810:	dce2      	bgt.n	17d8 <gfx_scroll_left+0x18>
    1812:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    1816:	bf00      	nop
    1818:	20002714 	.word	0x20002714

0000181c <gfx_scroll_right>:
    }
}

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    181c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1820:	4605      	mov	r5, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    1822:	f001 fe47 	bl	34b4 <get_video_params>
    for (y=0;y<vparams->vres;y++){
    1826:	89c3      	ldrh	r3, [r0, #14]
    1828:	b33b      	cbz	r3, 187a <gfx_scroll_right+0x5e>
    182a:	f04f 0e00 	mov.w	lr, #0
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    182e:	f8df 8050 	ldr.w	r8, [pc, #80]	; 1880 <gfx_scroll_right+0x64>
        src=dest-n;
    1832:	f1c5 0c00 	rsb	ip, r5, #0
        size=vparams->hres/2-n;
        dest=move_up(src,dest,size);
        size=n;
        while (size--) *--dest=0;
    1836:	4677      	mov	r7, lr
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    1838:	7a03      	ldrb	r3, [r0, #8]
    183a:	fb0e 3303 	mla	r3, lr, r3, r3
    183e:	4443      	add	r3, r8
        src=dest-n;
    1840:	eb03 020c 	add.w	r2, r3, ip
        size=vparams->hres/2-n;
    1844:	8981      	ldrh	r1, [r0, #12]
    while (size--) *--dest=*--src;
    1846:	ebd5 0951 	rsbs	r9, r5, r1, lsr #1
    184a:	d00a      	beq.n	1862 <gfx_scroll_right+0x46>
    184c:	4619      	mov	r1, r3
    184e:	eba2 0609 	sub.w	r6, r2, r9
    1852:	f812 4d01 	ldrb.w	r4, [r2, #-1]!
    1856:	f801 4d01 	strb.w	r4, [r1, #-1]!
    185a:	42b2      	cmp	r2, r6
    185c:	d1f9      	bne.n	1852 <gfx_scroll_right+0x36>
    185e:	eba3 0309 	sub.w	r3, r3, r9
        while (size--) *--dest=0;
    1862:	b12d      	cbz	r5, 1870 <gfx_scroll_right+0x54>
    1864:	eb03 020c 	add.w	r2, r3, ip
    1868:	f803 7d01 	strb.w	r7, [r3, #-1]!
    186c:	429a      	cmp	r2, r3
    186e:	d1fb      	bne.n	1868 <gfx_scroll_right+0x4c>
    for (y=0;y<vparams->vres;y++){
    1870:	f10e 0e01 	add.w	lr, lr, #1
    1874:	89c3      	ldrh	r3, [r0, #14]
    1876:	4573      	cmp	r3, lr
    1878:	dcde      	bgt.n	1838 <gfx_scroll_right+0x1c>
    187a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    187e:	bf00      	nop
    1880:	20002714 	.word	0x20002714

00001884 <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    1884:	b538      	push	{r3, r4, r5, lr}
    1886:	4604      	mov	r4, r0
    1888:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    188a:	f001 fe13 	bl	34b4 <get_video_params>
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    188e:	2c00      	cmp	r4, #0
    1890:	db18      	blt.n	18c4 <gfx_get_pixel+0x40>
    1892:	8983      	ldrh	r3, [r0, #12]
    1894:	429c      	cmp	r4, r3
    1896:	db01      	blt.n	189c <gfx_get_pixel+0x18>
    1898:	20ff      	movs	r0, #255	; 0xff
    189a:	bd38      	pop	{r3, r4, r5, pc}
    189c:	2d00      	cmp	r5, #0
    189e:	db13      	blt.n	18c8 <gfx_get_pixel+0x44>
    18a0:	89c3      	ldrh	r3, [r0, #14]
    18a2:	429d      	cmp	r5, r3
    18a4:	db01      	blt.n	18aa <gfx_get_pixel+0x26>
    18a6:	20ff      	movs	r0, #255	; 0xff
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    if (!(x&1)) byte>>=4;
    return byte&0xf;
}
    18a8:	bd38      	pop	{r3, r4, r5, pc}
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    18aa:	7a03      	ldrb	r3, [r0, #8]
    18ac:	1062      	asrs	r2, r4, #1
    18ae:	4907      	ldr	r1, [pc, #28]	; (18cc <gfx_get_pixel+0x48>)
    18b0:	fb05 1503 	mla	r5, r5, r3, r1
    18b4:	5ca8      	ldrb	r0, [r5, r2]
    if (!(x&1)) byte>>=4;
    18b6:	f014 0f01 	tst.w	r4, #1
    18ba:	bf08      	it	eq
    18bc:	0900      	lsreq	r0, r0, #4
    return byte&0xf;
    18be:	f000 000f 	and.w	r0, r0, #15
    18c2:	bd38      	pop	{r3, r4, r5, pc}
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    18c4:	20ff      	movs	r0, #255	; 0xff
    18c6:	bd38      	pop	{r3, r4, r5, pc}
    18c8:	20ff      	movs	r0, #255	; 0xff
    18ca:	bd38      	pop	{r3, r4, r5, pc}
    18cc:	20002714 	.word	0x20002714

000018d0 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int /* __attribute__((optimize("-O1")))*/ gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    18d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    18d4:	b085      	sub	sp, #20
    18d6:	9001      	str	r0, [sp, #4]
    18d8:	460e      	mov	r6, r1
    18da:	9100      	str	r1, [sp, #0]
    18dc:	9203      	str	r2, [sp, #12]
    18de:	980e      	ldr	r0, [sp, #56]	; 0x38
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;

    shift=bit_shift[sprite_bpp];
    18e0:	4a26      	ldr	r2, [pc, #152]	; (197c <gfx_sprite+0xac>)
    18e2:	7911      	ldrb	r1, [r2, #4]
    18e4:	4a26      	ldr	r2, [pc, #152]	; (1980 <gfx_sprite+0xb0>)
    18e6:	f812 b001 	ldrb.w	fp, [r2, r1]
    bmp_byte=*sprite++;
    18ea:	7805      	ldrb	r5, [r0, #0]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    18ec:	440a      	add	r2, r1
    18ee:	7914      	ldrb	r4, [r2, #4]
    for (y0=y;y0<(y+height);y0++){ 
    18f0:	4433      	add	r3, r6
    18f2:	9302      	str	r3, [sp, #8]
    18f4:	429e      	cmp	r6, r3
    int collision=0;
    18f6:	bfa8      	it	ge
    18f8:	2700      	movge	r7, #0
    for (y0=y;y0<(y+height);y0++){ 
    18fa:	da3a      	bge.n	1972 <gfx_sprite+0xa2>
    18fc:	f100 0901 	add.w	r9, r0, #1
    1900:	2700      	movs	r7, #0
        for(x0=x;x0<(x+width);x0++){
            if (sprite_bpp<FOUR_BPP){
    1902:	f8df 8078 	ldr.w	r8, [pc, #120]	; 197c <gfx_sprite+0xac>
    1906:	e02b      	b.n	1960 <gfx_sprite+0x90>
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
            bmp_byte<<=(8-shift);
            ppb--;
            if (!ppb){
                bmp_byte=*sprite++;
    1908:	f899 5000 	ldrb.w	r5, [r9]
                ppb=pixels_per_byte[sprite_bpp];
    190c:	f898 3004 	ldrb.w	r3, [r8, #4]
    1910:	4a1b      	ldr	r2, [pc, #108]	; (1980 <gfx_sprite+0xb0>)
    1912:	4413      	add	r3, r2
    1914:	791c      	ldrb	r4, [r3, #4]
                bmp_byte=*sprite++;
    1916:	f109 0901 	add.w	r9, r9, #1
        for(x0=x;x0<(x+width);x0++){
    191a:	3601      	adds	r6, #1
    191c:	4556      	cmp	r6, sl
    191e:	d019      	beq.n	1954 <gfx_sprite+0x84>
            if (sprite_bpp<FOUR_BPP){
    1920:	f898 3004 	ldrb.w	r3, [r8, #4]
    1924:	2b01      	cmp	r3, #1
                color=palette[bmp_byte>>shift];
    1926:	bf99      	ittee	ls
    1928:	fa45 f30b 	asrls.w	r3, r5, fp
    192c:	f818 2003 	ldrbls.w	r2, [r8, r3]
                color=bmp_byte>>shift;
    1930:	fa45 f20b 	asrhi.w	r2, r5, fp
    1934:	b2d2      	uxtbhi	r2, r2
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    1936:	2302      	movs	r3, #2
    1938:	9900      	ldr	r1, [sp, #0]
    193a:	4630      	mov	r0, r6
    193c:	f7ff fe6c 	bl	1618 <gfx_blit>
    1940:	4307      	orrs	r7, r0
            ppb--;
    1942:	3c01      	subs	r4, #1
            if (!ppb){
    1944:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
    1948:	d0de      	beq.n	1908 <gfx_sprite+0x38>
            bmp_byte<<=(8-shift);
    194a:	f1cb 0308 	rsb	r3, fp, #8
    194e:	409d      	lsls	r5, r3
    1950:	b2ed      	uxtb	r5, r5
    1952:	e7e2      	b.n	191a <gfx_sprite+0x4a>
    for (y0=y;y0<(y+height);y0++){ 
    1954:	9b00      	ldr	r3, [sp, #0]
    1956:	3301      	adds	r3, #1
    1958:	9300      	str	r3, [sp, #0]
    195a:	9a02      	ldr	r2, [sp, #8]
    195c:	4293      	cmp	r3, r2
    195e:	d008      	beq.n	1972 <gfx_sprite+0xa2>
        for(x0=x;x0<(x+width);x0++){
    1960:	9b03      	ldr	r3, [sp, #12]
    1962:	4619      	mov	r1, r3
    1964:	9a01      	ldr	r2, [sp, #4]
    1966:	eb01 0a02 	add.w	sl, r1, r2
    196a:	4552      	cmp	r2, sl
    196c:	daf2      	bge.n	1954 <gfx_sprite+0x84>
    196e:	9e01      	ldr	r6, [sp, #4]
    1970:	e7d6      	b.n	1920 <gfx_sprite+0x50>
            }
        }//for(x)
    }//for(y0)
    return collision;
}
    1972:	4638      	mov	r0, r7
    1974:	b005      	add	sp, #20
    1976:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    197a:	bf00      	nop
    197c:	200001a8 	.word	0x200001a8
    1980:	00003d10 	.word	0x00003d10

00001984 <color_bars>:
			balls[i].ball_sprite=ball8x8_1bpp;
		}
	}
}

static void color_bars(){
    1984:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int x,y;
	uint8_t c=0;
	vmode_params_t* vparams=get_video_params();
    1988:	f001 fd94 	bl	34b4 <get_video_params>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    198c:	89c3      	ldrh	r3, [r0, #14]
    198e:	089e      	lsrs	r6, r3, #2
    1990:	eb06 0646 	add.w	r6, r6, r6, lsl #1
    1994:	429e      	cmp	r6, r3
    1996:	da18      	bge.n	19ca <color_bars+0x46>
    1998:	4607      	mov	r7, r0
static void color_bars(){
    199a:	f04f 0810 	mov.w	r8, #16
    199e:	4645      	mov	r5, r8
    19a0:	2400      	movs	r4, #0
		c=0x10;
		for (x=0;x<128;x++){
			if (x%8==0){
    19a2:	f014 0f07 	tst.w	r4, #7
				c--;
    19a6:	bf04      	itt	eq
    19a8:	f105 35ff 	addeq.w	r5, r5, #4294967295	; 0xffffffff
    19ac:	b2ed      	uxtbeq	r5, r5
			}
			gfx_plot(x,y,c);
    19ae:	462a      	mov	r2, r5
    19b0:	4631      	mov	r1, r6
    19b2:	4620      	mov	r0, r4
    19b4:	f7ff fe7c 	bl	16b0 <gfx_plot>
		for (x=0;x<128;x++){
    19b8:	3401      	adds	r4, #1
    19ba:	2c80      	cmp	r4, #128	; 0x80
    19bc:	d1f1      	bne.n	19a2 <color_bars+0x1e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    19be:	3601      	adds	r6, #1
    19c0:	89fb      	ldrh	r3, [r7, #14]
    19c2:	42b3      	cmp	r3, r6
    19c4:	dceb      	bgt.n	199e <color_bars+0x1a>
    19c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    19ca:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000019ce <vertical_bars>:
	}
		

}

static void vertical_bars(){
    19ce:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int y;
	vmode_params_t* vparams=get_video_params();
    19d0:	f001 fd70 	bl	34b4 <get_video_params>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19d4:	89c3      	ldrh	r3, [r0, #14]
    19d6:	2b10      	cmp	r3, #16
    19d8:	dd12      	ble.n	1a00 <vertical_bars+0x32>
    19da:	4605      	mov	r5, r0
    19dc:	2410      	movs	r4, #16
		gfx_plot(0,y,15);
    19de:	260f      	movs	r6, #15
    19e0:	2700      	movs	r7, #0
    19e2:	4632      	mov	r2, r6
    19e4:	4621      	mov	r1, r4
    19e6:	4638      	mov	r0, r7
    19e8:	f7ff fe62 	bl	16b0 <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    19ec:	89a8      	ldrh	r0, [r5, #12]
    19ee:	4632      	mov	r2, r6
    19f0:	4621      	mov	r1, r4
    19f2:	3801      	subs	r0, #1
    19f4:	f7ff fe5c 	bl	16b0 <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    19f8:	3401      	adds	r4, #1
    19fa:	89eb      	ldrh	r3, [r5, #14]
    19fc:	42a3      	cmp	r3, r4
    19fe:	dcf0      	bgt.n	19e2 <vertical_bars+0x14>
    1a00:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001a02 <horiz_bars>:
	}
}

static void horiz_bars(){
    1a02:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int x;
	vmode_params_t* vparams=get_video_params();
    1a04:	f001 fd56 	bl	34b4 <get_video_params>
	for (x=0;x<vparams->hres;x++){
    1a08:	8983      	ldrh	r3, [r0, #12]
    1a0a:	b193      	cbz	r3, 1a32 <horiz_bars+0x30>
    1a0c:	4605      	mov	r5, r0
    1a0e:	2400      	movs	r4, #0
		gfx_plot(x,0,15);
    1a10:	260f      	movs	r6, #15
    1a12:	4627      	mov	r7, r4
    1a14:	4632      	mov	r2, r6
    1a16:	4639      	mov	r1, r7
    1a18:	4620      	mov	r0, r4
    1a1a:	f7ff fe49 	bl	16b0 <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    1a1e:	89e9      	ldrh	r1, [r5, #14]
    1a20:	4632      	mov	r2, r6
    1a22:	3901      	subs	r1, #1
    1a24:	4620      	mov	r0, r4
    1a26:	f7ff fe43 	bl	16b0 <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    1a2a:	3401      	adds	r4, #1
    1a2c:	89ab      	ldrh	r3, [r5, #12]
    1a2e:	42a3      	cmp	r3, r4
    1a30:	dcf0      	bgt.n	1a14 <horiz_bars+0x12>
    1a32:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001a34 <display_menu>:
	" Video test",
	" Sound test",
	" BASIC",
};

static void display_menu(){
    1a34:	b508      	push	{r3, lr}
	int i;
	gfx_cls();
    1a36:	f7ff fe65 	bl	1704 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
		println(menu_list[i]);
    1a3a:	4808      	ldr	r0, [pc, #32]	; (1a5c <display_menu+0x28>)
    1a3c:	f001 fa37 	bl	2eae <println>
    1a40:	4807      	ldr	r0, [pc, #28]	; (1a60 <display_menu+0x2c>)
    1a42:	f001 fa34 	bl	2eae <println>
    1a46:	4807      	ldr	r0, [pc, #28]	; (1a64 <display_menu+0x30>)
    1a48:	f001 fa31 	bl	2eae <println>
    1a4c:	4806      	ldr	r0, [pc, #24]	; (1a68 <display_menu+0x34>)
    1a4e:	f001 fa2e 	bl	2eae <println>
    1a52:	4806      	ldr	r0, [pc, #24]	; (1a6c <display_menu+0x38>)
    1a54:	f001 fa2b 	bl	2eae <println>
    1a58:	bd08      	pop	{r3, pc}
    1a5a:	bf00      	nop
    1a5c:	00003e5c 	.word	0x00003e5c
    1a60:	00003e68 	.word	0x00003e68
    1a64:	00003e78 	.word	0x00003e78
    1a68:	00003e84 	.word	0x00003e84
    1a6c:	00003e90 	.word	0x00003e90

00001a70 <draw_balls>:
void draw_balls(){
    1a70:	b510      	push	{r4, lr}
    1a72:	b082      	sub	sp, #8
	frame_sync();
    1a74:	f001 fce4 	bl	3440 <frame_sync>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1a78:	4c0a      	ldr	r4, [pc, #40]	; (1aa4 <draw_balls+0x34>)
    1a7a:	6923      	ldr	r3, [r4, #16]
    1a7c:	9300      	str	r3, [sp, #0]
    1a7e:	2308      	movs	r3, #8
    1a80:	461a      	mov	r2, r3
    1a82:	6861      	ldr	r1, [r4, #4]
    1a84:	6820      	ldr	r0, [r4, #0]
    1a86:	f7ff ff23 	bl	18d0 <gfx_sprite>
    1a8a:	69a1      	ldr	r1, [r4, #24]
    1a8c:	6960      	ldr	r0, [r4, #20]
    1a8e:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1a90:	9300      	str	r3, [sp, #0]
    1a92:	2308      	movs	r3, #8
    1a94:	461a      	mov	r2, r3
    1a96:	f7ff ff1b 	bl	18d0 <gfx_sprite>
	wait_sync_end();
    1a9a:	f001 fcd9 	bl	3450 <wait_sync_end>
}
    1a9e:	b002      	add	sp, #8
    1aa0:	bd10      	pop	{r4, pc}
    1aa2:	bf00      	nop
    1aa4:	200026ec 	.word	0x200026ec

00001aa8 <isqrt>:
	if (n<2) return n;
    1aa8:	2801      	cmp	r0, #1
    1aaa:	dd0c      	ble.n	1ac6 <isqrt+0x1e>
int isqrt(int n){
    1aac:	b510      	push	{r4, lr}
    1aae:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    1ab0:	1080      	asrs	r0, r0, #2
    1ab2:	f7ff fff9 	bl	1aa8 <isqrt>
    1ab6:	0040      	lsls	r0, r0, #1
	large = small + 1;
    1ab8:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    1aba:	fb03 f203 	mul.w	r2, r3, r3
		return large;	
    1abe:	4294      	cmp	r4, r2
    1ac0:	bfa8      	it	ge
    1ac2:	4618      	movge	r0, r3
}
    1ac4:	bd10      	pop	{r4, pc}
    1ac6:	4770      	bx	lr

00001ac8 <distance>:
unsigned distance(ball_t *ball1, ball_t *ball2){
    1ac8:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    1aca:	6803      	ldr	r3, [r0, #0]
    1acc:	680a      	ldr	r2, [r1, #0]
    1ace:	6844      	ldr	r4, [r0, #4]
    1ad0:	6848      	ldr	r0, [r1, #4]
    1ad2:	fb00 f004 	mul.w	r0, r0, r4
    1ad6:	fb02 0003 	mla	r0, r2, r3, r0
    1ada:	2800      	cmp	r0, #0
    1adc:	bfb8      	it	lt
    1ade:	4240      	neglt	r0, r0
    1ae0:	f7ff ffe2 	bl	1aa8 <isqrt>
}
    1ae4:	bd10      	pop	{r4, pc}

00001ae6 <move_balls>:
void move_balls(){
    1ae6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	vmode_params_t *vparams=get_video_params();
    1ae8:	f001 fce4 	bl	34b4 <get_video_params>
    1aec:	4b1c      	ldr	r3, [pc, #112]	; (1b60 <move_balls+0x7a>)
    1aee:	f103 0628 	add.w	r6, r3, #40	; 0x28
    1af2:	e005      	b.n	1b00 <move_balls+0x1a>
			balls[i].dy=-balls[i].dy;
    1af4:	4249      	negs	r1, r1
    1af6:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    1af8:	6055      	str	r5, [r2, #4]
    1afa:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    1afc:	42b3      	cmp	r3, r6
    1afe:	d017      	beq.n	1b30 <move_balls+0x4a>
    1b00:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    1b02:	681d      	ldr	r5, [r3, #0]
    1b04:	6899      	ldr	r1, [r3, #8]
    1b06:	186c      	adds	r4, r5, r1
    1b08:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    1b0a:	f114 0f07 	cmn.w	r4, #7
    1b0e:	db02      	blt.n	1b16 <move_balls+0x30>
    1b10:	8987      	ldrh	r7, [r0, #12]
    1b12:	42bc      	cmp	r4, r7
    1b14:	db02      	blt.n	1b1c <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    1b16:	4249      	negs	r1, r1
    1b18:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1b1a:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1b1c:	6855      	ldr	r5, [r2, #4]
    1b1e:	68d1      	ldr	r1, [r2, #12]
    1b20:	186c      	adds	r4, r5, r1
    1b22:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    1b24:	2c0f      	cmp	r4, #15
    1b26:	dde5      	ble.n	1af4 <move_balls+0xe>
    1b28:	89c7      	ldrh	r7, [r0, #14]
    1b2a:	42bc      	cmp	r4, r7
    1b2c:	dbe5      	blt.n	1afa <move_balls+0x14>
    1b2e:	e7e1      	b.n	1af4 <move_balls+0xe>
	if (distance(&balls[0],&balls[1])<8){
    1b30:	480c      	ldr	r0, [pc, #48]	; (1b64 <move_balls+0x7e>)
    1b32:	4601      	mov	r1, r0
    1b34:	3814      	subs	r0, #20
    1b36:	f7ff ffc7 	bl	1ac8 <distance>
    1b3a:	2807      	cmp	r0, #7
    1b3c:	d80f      	bhi.n	1b5e <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1b3e:	4b08      	ldr	r3, [pc, #32]	; (1b60 <move_balls+0x7a>)
    1b40:	689a      	ldr	r2, [r3, #8]
    1b42:	69db      	ldr	r3, [r3, #28]
    1b44:	429a      	cmp	r2, r3
    1b46:	d002      	beq.n	1b4e <move_balls+0x68>
			balls[0].dx=balls[1].dx;
    1b48:	4905      	ldr	r1, [pc, #20]	; (1b60 <move_balls+0x7a>)
    1b4a:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1b4c:	61ca      	str	r2, [r1, #28]
		if (balls[0].dy!=balls[1].dy){
    1b4e:	4b04      	ldr	r3, [pc, #16]	; (1b60 <move_balls+0x7a>)
    1b50:	68da      	ldr	r2, [r3, #12]
    1b52:	6a1b      	ldr	r3, [r3, #32]
    1b54:	429a      	cmp	r2, r3
    1b56:	d002      	beq.n	1b5e <move_balls+0x78>
			balls[0].dy=balls[1].dy;
    1b58:	4901      	ldr	r1, [pc, #4]	; (1b60 <move_balls+0x7a>)
    1b5a:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1b5c:	620a      	str	r2, [r1, #32]
    1b5e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1b60:	200026ec 	.word	0x200026ec
    1b64:	20002700 	.word	0x20002700

00001b68 <init_balls>:
void init_balls(){
    1b68:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	vmode_params_t *vparams=get_video_params();
    1b6c:	f001 fca2 	bl	34b4 <get_video_params>
    1b70:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    1b72:	4b15      	ldr	r3, [pc, #84]	; (1bc8 <init_balls+0x60>)
    1b74:	6818      	ldr	r0, [r3, #0]
    1b76:	f7fe fc35 	bl	3e4 <srand>
    1b7a:	4c14      	ldr	r4, [pc, #80]	; (1bcc <init_balls+0x64>)
    1b7c:	f104 0928 	add.w	r9, r4, #40	; 0x28
		balls[i].dx=1;
    1b80:	2601      	movs	r6, #1
			balls[i].ball_sprite=ball8x8_1bpp;
    1b82:	4f13      	ldr	r7, [pc, #76]	; (1bd0 <init_balls+0x68>)
    1b84:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    1b88:	f7fe fc32 	bl	3f0 <rand>
    1b8c:	89ab      	ldrh	r3, [r5, #12]
    1b8e:	fb90 f2f3 	sdiv	r2, r0, r3
    1b92:	fb02 0013 	mls	r0, r2, r3, r0
    1b96:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1b98:	f7fe fc2a 	bl	3f0 <rand>
    1b9c:	89eb      	ldrh	r3, [r5, #14]
    1b9e:	3b10      	subs	r3, #16
    1ba0:	fb90 f2f3 	sdiv	r2, r0, r3
    1ba4:	fb02 0013 	mls	r0, r2, r3, r0
    1ba8:	3010      	adds	r0, #16
    1baa:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    1bac:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    1bae:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    1bb0:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    1bb2:	2b00      	cmp	r3, #0
    1bb4:	bf14      	ite	ne
    1bb6:	4643      	movne	r3, r8
    1bb8:	463b      	moveq	r3, r7
    1bba:	6123      	str	r3, [r4, #16]
    1bbc:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    1bbe:	454c      	cmp	r4, r9
    1bc0:	d1e2      	bne.n	1b88 <init_balls+0x20>
}
    1bc2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1bc6:	bf00      	nop
    1bc8:	20004e78 	.word	0x20004e78
    1bcc:	200026ec 	.word	0x200026ec
    1bd0:	00003d20 	.word	0x00003d20

00001bd4 <main>:
			break;	
		}
	}//while
}

void main(void){
    1bd4:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
    1bd8:	b087      	sub	sp, #28
	RCC->CR|=RCC_CR_HSEON;
    1bda:	4ac0      	ldr	r2, [pc, #768]	; (1edc <main+0x308>)
    1bdc:	6813      	ldr	r3, [r2, #0]
    1bde:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1be2:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    1be4:	4613      	mov	r3, r2
    1be6:	681a      	ldr	r2, [r3, #0]
    1be8:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    1bec:	d0fb      	beq.n	1be6 <main+0x12>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    1bee:	4bbb      	ldr	r3, [pc, #748]	; (1edc <main+0x308>)
    1bf0:	685a      	ldr	r2, [r3, #4]
    1bf2:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    1bf6:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    1bf8:	681a      	ldr	r2, [r3, #0]
    1bfa:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    1bfe:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1c00:	681a      	ldr	r2, [r3, #0]
    1c02:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    1c06:	d0fb      	beq.n	1c00 <main+0x2c>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1c08:	4ab5      	ldr	r2, [pc, #724]	; (1ee0 <main+0x30c>)
    1c0a:	6813      	ldr	r3, [r2, #0]
    1c0c:	f043 0312 	orr.w	r3, r3, #18
    1c10:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1c12:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1c16:	6853      	ldr	r3, [r2, #4]
    1c18:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1c1c:	f043 0302 	orr.w	r3, r3, #2
    1c20:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1c22:	f640 031d 	movw	r3, #2077	; 0x81d
    1c26:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1c28:	4cae      	ldr	r4, [pc, #696]	; (1ee4 <main+0x310>)
    1c2a:	2206      	movs	r2, #6
    1c2c:	210d      	movs	r1, #13
    1c2e:	4620      	mov	r0, r4
    1c30:	f7ff fcb2 	bl	1598 <config_pin>
	_led_off();
    1c34:	68e3      	ldr	r3, [r4, #12]
    1c36:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1c3a:	60e3      	str	r3, [r4, #12]
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1c3c:	2400      	movs	r4, #0
    1c3e:	9401      	str	r4, [sp, #4]
    1c40:	2301      	movs	r3, #1
    1c42:	9300      	str	r3, [sp, #0]
    1c44:	2303      	movs	r3, #3
    1c46:	4622      	mov	r2, r4
    1c48:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1c4c:	4620      	mov	r0, r4
    1c4e:	f001 fce9 	bl	3624 <usart_open_channel>
	gamepad_init();
    1c52:	f7ff fa7f 	bl	1154 <gamepad_init>
	tvout_init();
    1c56:	f001 f9dd 	bl	3014 <tvout_init>
	sound_init();
    1c5a:	f000 fe3f 	bl	28dc <sound_init>
	gfx_cls();
    1c5e:	f7ff fd51 	bl	1704 <gfx_cls>
	vmode_params_t* vparams=get_video_params();
    1c62:	f001 fc27 	bl	34b4 <get_video_params>
	display_menu();
    1c66:	f7ff fee5 	bl	1a34 <display_menu>
	int i=0;
    1c6a:	46a2      	mov	sl, r4
	print_int(0x20005000-(int)(&_TPA_START),10);
    1c6c:	4b9e      	ldr	r3, [pc, #632]	; (1ee8 <main+0x314>)
    1c6e:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1c72:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1c76:	9304      	str	r3, [sp, #16]
    1c78:	e184      	b.n	1f84 <main+0x3b0>
			if (i<(MENU_ITEMS-1)) i++;
    1c7a:	f1ba 0f03 	cmp.w	sl, #3
    1c7e:	f300 8181 	bgt.w	1f84 <main+0x3b0>
    1c82:	f10a 0a01 	add.w	sl, sl, #1
    1c86:	e17d      	b.n	1f84 <main+0x3b0>
			switch(i){
    1c88:	f1ba 0f04 	cmp.w	sl, #4
    1c8c:	f200 8178 	bhi.w	1f80 <main+0x3ac>
    1c90:	e8df f01a 	tbh	[pc, sl, lsl #1]
    1c94:	00cd0005 	.word	0x00cd0005
    1c98:	01a6010c 	.word	0x01a6010c
    1c9c:	01e2      	.short	0x01e2
	count=games_count();
    1c9e:	f7ff fb09 	bl	12b4 <games_count>
    1ca2:	9003      	str	r0, [sp, #12]
	set_video_mode(VM_BPCHIP);
    1ca4:	2000      	movs	r0, #0
    1ca6:	f001 fbdb 	bl	3460 <set_video_mode>
	vparams=get_video_params();
    1caa:	f001 fc03 	bl	34b4 <get_video_params>
	rows=vparams->vres/CHAR_HEIGHT;
    1cae:	f8b0 b00e 	ldrh.w	fp, [r0, #14]
    1cb2:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
    1cb6:	465e      	mov	r6, fp
	int i=0,first=0,count,rows,selected=1;
    1cb8:	f04f 0901 	mov.w	r9, #1
		if (selected<rows) first=0;else first=selected-rows+1;
    1cbc:	454e      	cmp	r6, r9
    1cbe:	bfda      	itte	le
    1cc0:	eba9 0806 	suble.w	r8, r9, r6
    1cc4:	f108 0801 	addle.w	r8, r8, #1
    1cc8:	46d0      	movgt	r8, sl
	set_cursor(0,0);
    1cca:	2100      	movs	r1, #0
    1ccc:	4608      	mov	r0, r1
    1cce:	f001 f8a5 	bl	2e1c <set_cursor>
	print(" ********** GAMES **********");
    1cd2:	4886      	ldr	r0, [pc, #536]	; (1eec <main+0x318>)
    1cd4:	f001 f8d6 	bl	2e84 <print>
	while ((r<rows) && games_list[first].size){
    1cd8:	f1bb 0f01 	cmp.w	fp, #1
    1cdc:	d92d      	bls.n	1d3a <main+0x166>
    1cde:	ebc8 03c8 	rsb	r3, r8, r8, lsl #3
    1ce2:	4a83      	ldr	r2, [pc, #524]	; (1ef0 <main+0x31c>)
    1ce4:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    1ce8:	691b      	ldr	r3, [r3, #16]
    1cea:	b333      	cbz	r3, 1d3a <main+0x166>
    1cec:	ebc8 04c8 	rsb	r4, r8, r8, lsl #3
    1cf0:	1c53      	adds	r3, r2, #1
    1cf2:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    1cf6:	2501      	movs	r5, #1
		put_char(' ');
    1cf8:	2720      	movs	r7, #32
		new_line();
    1cfa:	f000 ffdd 	bl	2cb8 <new_line>
		clear_line();
    1cfe:	f001 f959 	bl	2fb4 <clear_line>
		put_char(' ');
    1d02:	4638      	mov	r0, r7
    1d04:	f001 f820 	bl	2d48 <put_char>
		print(games_list[first].name);
    1d08:	4620      	mov	r0, r4
    1d0a:	f001 f8bb 	bl	2e84 <print>
		line=get_cursor()&0xff;
    1d0e:	f001 f88b 	bl	2e28 <get_cursor>
		set_cursor(90,line);
    1d12:	b2c1      	uxtb	r1, r0
    1d14:	205a      	movs	r0, #90	; 0x5a
    1d16:	f001 f881 	bl	2e1c <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    1d1a:	f814 3c01 	ldrb.w	r3, [r4, #-1]
    1d1e:	2b01      	cmp	r3, #1
			print("(SCHIP)");
    1d20:	bf0c      	ite	eq
    1d22:	4874      	ldreq	r0, [pc, #464]	; (1ef4 <main+0x320>)
			print("(BPCHIP)");
    1d24:	4874      	ldrne	r0, [pc, #464]	; (1ef8 <main+0x324>)
    1d26:	f001 f8ad 	bl	2e84 <print>
		r++;
    1d2a:	3501      	adds	r5, #1
	while ((r<rows) && games_list[first].size){
    1d2c:	42ae      	cmp	r6, r5
    1d2e:	d004      	beq.n	1d3a <main+0x166>
    1d30:	341c      	adds	r4, #28
    1d32:	f8d4 300f 	ldr.w	r3, [r4, #15]
    1d36:	2b00      	cmp	r3, #0
    1d38:	d1df      	bne.n	1cfa <main+0x126>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    1d3a:	eba9 0108 	sub.w	r1, r9, r8
    1d3e:	00c9      	lsls	r1, r1, #3
    1d40:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1d44:	2000      	movs	r0, #0
    1d46:	f001 f869 	bl	2e1c <set_cursor>
		put_char('>');
    1d4a:	203e      	movs	r0, #62	; 0x3e
    1d4c:	f000 fffc 	bl	2d48 <put_char>
		btn=btn_wait_any();
    1d50:	f7ff fa76 	bl	1240 <btn_wait_any>
    1d54:	4604      	mov	r4, r0
		btn_wait_up(btn);
    1d56:	f7ff fa5f 	bl	1218 <btn_wait_up>
		switch(btn){
    1d5a:	2c04      	cmp	r4, #4
    1d5c:	d053      	beq.n	1e06 <main+0x232>
    1d5e:	d943      	bls.n	1de8 <main+0x214>
    1d60:	2c40      	cmp	r4, #64	; 0x40
    1d62:	d057      	beq.n	1e14 <main+0x240>
    1d64:	2c80      	cmp	r4, #128	; 0x80
    1d66:	f000 810b 	beq.w	1f80 <main+0x3ac>
    1d6a:	2c20      	cmp	r4, #32
    1d6c:	d1a6      	bne.n	1cbc <main+0xe8>
	run_game(selected-1);
    1d6e:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
	if (games_list[idx].vmode==VM_SCHIP){
    1d72:	ebc9 02c9 	rsb	r2, r9, r9, lsl #3
    1d76:	4b5e      	ldr	r3, [pc, #376]	; (1ef0 <main+0x31c>)
    1d78:	f813 3022 	ldrb.w	r3, [r3, r2, lsl #2]
		addr=512;
    1d7c:	2b01      	cmp	r3, #1
    1d7e:	bf14      	ite	ne
    1d80:	2600      	movne	r6, #0
    1d82:	f44f 7600 	moveq.w	r6, #512	; 0x200
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    1d86:	4f5a      	ldr	r7, [pc, #360]	; (1ef0 <main+0x31c>)
    1d88:	ea4f 05c9 	mov.w	r5, r9, lsl #3
    1d8c:	eb07 0482 	add.w	r4, r7, r2, lsl #2
    1d90:	6922      	ldr	r2, [r4, #16]
    1d92:	495a      	ldr	r1, [pc, #360]	; (1efc <main+0x328>)
    1d94:	4431      	add	r1, r6
    1d96:	6960      	ldr	r0, [r4, #20]
    1d98:	f7ff fb3f 	bl	141a <move>
	set_keymap(games_list[idx].keymap);
    1d9c:	69a0      	ldr	r0, [r4, #24]
    1d9e:	f7ff f9cd 	bl	113c <set_keymap>
	set_video_mode(games_list[idx].vmode);
    1da2:	eba5 0909 	sub.w	r9, r5, r9
    1da6:	f817 0029 	ldrb.w	r0, [r7, r9, lsl #2]
    1daa:	f001 fb59 	bl	3460 <set_video_mode>
	exit_code=chip_vm(addr,debug_level);
    1dae:	4b54      	ldr	r3, [pc, #336]	; (1f00 <main+0x32c>)
    1db0:	7819      	ldrb	r1, [r3, #0]
    1db2:	4630      	mov	r0, r6
    1db4:	f7fe fb2a 	bl	40c <chip_vm>
    1db8:	4604      	mov	r4, r0
	print("exit code: ");
    1dba:	4852      	ldr	r0, [pc, #328]	; (1f04 <main+0x330>)
    1dbc:	f001 f862 	bl	2e84 <print>
	switch(exit_code){
    1dc0:	2c01      	cmp	r4, #1
    1dc2:	d02a      	beq.n	1e1a <main+0x246>
    1dc4:	b374      	cbz	r4, 1e24 <main+0x250>
    1dc6:	2c03      	cmp	r4, #3
    1dc8:	d82c      	bhi.n	1e24 <main+0x250>
		select_console(SERIAL);
    1dca:	2001      	movs	r0, #1
    1dcc:	f001 f914 	bl	2ff8 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    1dd0:	4621      	mov	r1, r4
    1dd2:	484d      	ldr	r0, [pc, #308]	; (1f08 <main+0x334>)
    1dd4:	f7fe faaa 	bl	32c <print_vms>
		select_console(LOCAL);
    1dd8:	2000      	movs	r0, #0
    1dda:	f001 f90d 	bl	2ff8 <select_console>
		btn_wait_any();
    1dde:	f7ff fa2f 	bl	1240 <btn_wait_any>
		i=1;
    1de2:	2301      	movs	r3, #1
    1de4:	9305      	str	r3, [sp, #20]
    1de6:	e01d      	b.n	1e24 <main+0x250>
		switch(btn){
    1de8:	2c01      	cmp	r4, #1
    1dea:	d009      	beq.n	1e00 <main+0x22c>
    1dec:	2c02      	cmp	r4, #2
    1dee:	f47f af65 	bne.w	1cbc <main+0xe8>
			if (selected>1) selected--;
    1df2:	f1b9 0f01 	cmp.w	r9, #1
    1df6:	f77f af61 	ble.w	1cbc <main+0xe8>
    1dfa:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
    1dfe:	e75d      	b.n	1cbc <main+0xe8>
			selected=1;
    1e00:	f04f 0901 	mov.w	r9, #1
    1e04:	e75a      	b.n	1cbc <main+0xe8>
			if (selected<count){
    1e06:	9b03      	ldr	r3, [sp, #12]
    1e08:	454b      	cmp	r3, r9
    1e0a:	f77f af57 	ble.w	1cbc <main+0xe8>
				selected++;
    1e0e:	f109 0901 	add.w	r9, r9, #1
    1e12:	e753      	b.n	1cbc <main+0xe8>
			selected=count;
    1e14:	f8dd 900c 	ldr.w	r9, [sp, #12]
    1e18:	e750      	b.n	1cbc <main+0xe8>
		print("CHIP EXIT OK");
    1e1a:	483c      	ldr	r0, [pc, #240]	; (1f0c <main+0x338>)
    1e1c:	f001 f832 	bl	2e84 <print>
		i=0;
    1e20:	f8cd a014 	str.w	sl, [sp, #20]
	game_pause(i);
    1e24:	f8bd 0014 	ldrh.w	r0, [sp, #20]
    1e28:	f001 fb4e 	bl	34c8 <game_pause>
    1e2c:	e0a8      	b.n	1f80 <main+0x3ac>
	gfx_cls();
    1e2e:	f7ff fc69 	bl	1704 <gfx_cls>
	print(" **** VM debug support ****\n");
    1e32:	4837      	ldr	r0, [pc, #220]	; (1f10 <main+0x33c>)
    1e34:	f001 f826 	bl	2e84 <print>
	print(" No debug support\n");
    1e38:	4836      	ldr	r0, [pc, #216]	; (1f14 <main+0x340>)
    1e3a:	f001 f823 	bl	2e84 <print>
	print(" Print PC and OPCODE\n");
    1e3e:	4836      	ldr	r0, [pc, #216]	; (1f18 <main+0x344>)
    1e40:	f001 f820 	bl	2e84 <print>
	print(" Print all VM states.\n");
    1e44:	4835      	ldr	r0, [pc, #212]	; (1f1c <main+0x348>)
    1e46:	f001 f81d 	bl	2e84 <print>
	print(" Single step\n");
    1e4a:	4835      	ldr	r0, [pc, #212]	; (1f20 <main+0x34c>)
    1e4c:	f001 f81a 	bl	2e84 <print>
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e50:	4c2b      	ldr	r4, [pc, #172]	; (1f00 <main+0x32c>)
    1e52:	2500      	movs	r5, #0
		put_char('*');
    1e54:	262a      	movs	r6, #42	; 0x2a
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e56:	7821      	ldrb	r1, [r4, #0]
    1e58:	3101      	adds	r1, #1
    1e5a:	00c9      	lsls	r1, r1, #3
    1e5c:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1e60:	4628      	mov	r0, r5
    1e62:	f000 ffdb 	bl	2e1c <set_cursor>
		put_char('*');
    1e66:	4630      	mov	r0, r6
    1e68:	f000 ff6e 	bl	2d48 <put_char>
		btn=btn_wait_any();
    1e6c:	f7ff f9e8 	bl	1240 <btn_wait_any>
    1e70:	4607      	mov	r7, r0
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    1e72:	7821      	ldrb	r1, [r4, #0]
    1e74:	3101      	adds	r1, #1
    1e76:	00c9      	lsls	r1, r1, #3
    1e78:	f001 01f8 	and.w	r1, r1, #248	; 0xf8
    1e7c:	4628      	mov	r0, r5
    1e7e:	f000 ffcd 	bl	2e1c <set_cursor>
		put_char(' ');
    1e82:	2020      	movs	r0, #32
    1e84:	f000 ff60 	bl	2d48 <put_char>
		switch(btn){
    1e88:	2f04      	cmp	r7, #4
    1e8a:	d009      	beq.n	1ea0 <main+0x2cc>
    1e8c:	2f20      	cmp	r7, #32
    1e8e:	d077      	beq.n	1f80 <main+0x3ac>
    1e90:	2f02      	cmp	r7, #2
    1e92:	d1e0      	bne.n	1e56 <main+0x282>
			if (debug_level) debug_level--;
    1e94:	7823      	ldrb	r3, [r4, #0]
    1e96:	2b00      	cmp	r3, #0
    1e98:	d0dd      	beq.n	1e56 <main+0x282>
    1e9a:	3b01      	subs	r3, #1
    1e9c:	7023      	strb	r3, [r4, #0]
    1e9e:	e7da      	b.n	1e56 <main+0x282>
			if (debug_level<DEBUG_SSTEP) debug_level++;
    1ea0:	7823      	ldrb	r3, [r4, #0]
    1ea2:	2b02      	cmp	r3, #2
    1ea4:	d8d7      	bhi.n	1e56 <main+0x282>
    1ea6:	3301      	adds	r3, #1
    1ea8:	7023      	strb	r3, [r4, #0]
    1eaa:	e7d4      	b.n	1e56 <main+0x282>
	set_video_mode(p);
    1eac:	2000      	movs	r0, #0
    1eae:	f001 fad7 	bl	3460 <set_video_mode>
	color_bars();
    1eb2:	f7ff fd67 	bl	1984 <color_bars>
	vertical_bars();
    1eb6:	f7ff fd8a 	bl	19ce <vertical_bars>
	horiz_bars();
    1eba:	f7ff fda2 	bl	1a02 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    1ebe:	2110      	movs	r1, #16
    1ec0:	4818      	ldr	r0, [pc, #96]	; (1f24 <main+0x350>)
    1ec2:	f000 fffa 	bl	2eba <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    1ec6:	210a      	movs	r1, #10
    1ec8:	9804      	ldr	r0, [sp, #16]
    1eca:	f000 fff6 	bl	2eba <print_int>
	init_balls();
    1ece:	f7ff fe4b 	bl	1b68 <init_balls>
	p=0;
    1ed2:	2400      	movs	r4, #0
		if (btn_query_down(KEY_RIGHT)){
    1ed4:	2510      	movs	r5, #16
				print("BPCHIP mode\n180x112 16 colors");
    1ed6:	4f14      	ldr	r7, [pc, #80]	; (1f28 <main+0x354>)
				print("SCHIP mode\n128x64 mono");
    1ed8:	4e14      	ldr	r6, [pc, #80]	; (1f2c <main+0x358>)
    1eda:	e03b      	b.n	1f54 <main+0x380>
    1edc:	40021000 	.word	0x40021000
    1ee0:	40022000 	.word	0x40022000
    1ee4:	40011000 	.word	0x40011000
    1ee8:	20004e80 	.word	0x20004e80
    1eec:	00003e98 	.word	0x00003e98
    1ef0:	20000004 	.word	0x20000004
    1ef4:	00003eb8 	.word	0x00003eb8
    1ef8:	00003ec0 	.word	0x00003ec0
    1efc:	200006e4 	.word	0x200006e4
    1f00:	200026e8 	.word	0x200026e8
    1f04:	00003ecc 	.word	0x00003ecc
    1f08:	00003ee8 	.word	0x00003ee8
    1f0c:	00003ed8 	.word	0x00003ed8
    1f10:	00003ef8 	.word	0x00003ef8
    1f14:	00003f18 	.word	0x00003f18
    1f18:	00003f2c 	.word	0x00003f2c
    1f1c:	00003f44 	.word	0x00003f44
    1f20:	00003f5c 	.word	0x00003f5c
    1f24:	00004400 	.word	0x00004400
    1f28:	00003f6c 	.word	0x00003f6c
    1f2c:	00003f8c 	.word	0x00003f8c
			p^=1;
    1f30:	f084 0401 	eor.w	r4, r4, #1
			set_video_mode(p);
    1f34:	4620      	mov	r0, r4
    1f36:	f001 fa93 	bl	3460 <set_video_mode>
			switch(p){
    1f3a:	2c00      	cmp	r4, #0
    1f3c:	d046      	beq.n	1fcc <main+0x3f8>
    1f3e:	2c01      	cmp	r4, #1
    1f40:	d04a      	beq.n	1fd8 <main+0x404>
			vertical_bars();
    1f42:	f7ff fd44 	bl	19ce <vertical_bars>
			horiz_bars();
    1f46:	f7ff fd5c 	bl	1a02 <horiz_bars>
			init_balls();
    1f4a:	f7ff fe0d 	bl	1b68 <init_balls>
			btn_wait_up(KEY_RIGHT);
    1f4e:	4628      	mov	r0, r5
    1f50:	f7ff f962 	bl	1218 <btn_wait_up>
		draw_balls();
    1f54:	f7ff fd8c 	bl	1a70 <draw_balls>
		draw_balls();
    1f58:	f7ff fd8a 	bl	1a70 <draw_balls>
		move_balls();
    1f5c:	f7ff fdc3 	bl	1ae6 <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    1f60:	4628      	mov	r0, r5
    1f62:	f7ff f939 	bl	11d8 <btn_query_down>
    1f66:	2800      	cmp	r0, #0
    1f68:	d1e2      	bne.n	1f30 <main+0x35c>
		}else if (btn_query_down(KEY_B)){
    1f6a:	2020      	movs	r0, #32
    1f6c:	f7ff f934 	bl	11d8 <btn_query_down>
    1f70:	2800      	cmp	r0, #0
    1f72:	d0ef      	beq.n	1f54 <main+0x380>
			btn_wait_up(KEY_B);
    1f74:	2020      	movs	r0, #32
    1f76:	f7ff f94f 	bl	1218 <btn_wait_up>
	set_video_mode(VM_BPCHIP);
    1f7a:	2000      	movs	r0, #0
    1f7c:	f001 fa70 	bl	3460 <set_video_mode>
			display_menu();
    1f80:	f7ff fd58 	bl	1a34 <display_menu>
		set_cursor(0,i*CHAR_HEIGHT);
    1f84:	ea4f 04ca 	mov.w	r4, sl, lsl #3
    1f88:	b2e4      	uxtb	r4, r4
    1f8a:	4621      	mov	r1, r4
    1f8c:	2000      	movs	r0, #0
    1f8e:	f000 ff45 	bl	2e1c <set_cursor>
		put_char('>');
    1f92:	203e      	movs	r0, #62	; 0x3e
    1f94:	f000 fed8 	bl	2d48 <put_char>
		btn=btn_wait_any();
    1f98:	f7ff f952 	bl	1240 <btn_wait_any>
    1f9c:	4605      	mov	r5, r0
		btn_wait_up(btn);
    1f9e:	f7ff f93b 	bl	1218 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    1fa2:	4621      	mov	r1, r4
    1fa4:	2000      	movs	r0, #0
    1fa6:	f000 ff39 	bl	2e1c <set_cursor>
		put_char(' ');
    1faa:	2020      	movs	r0, #32
    1fac:	f000 fecc 	bl	2d48 <put_char>
		switch(btn){
    1fb0:	2d04      	cmp	r5, #4
    1fb2:	f43f ae62 	beq.w	1c7a <main+0xa6>
    1fb6:	2d20      	cmp	r5, #32
    1fb8:	f43f ae66 	beq.w	1c88 <main+0xb4>
    1fbc:	2d02      	cmp	r5, #2
    1fbe:	d1e1      	bne.n	1f84 <main+0x3b0>
			if (i) i--;
    1fc0:	f1ba 0f00 	cmp.w	sl, #0
    1fc4:	d0de      	beq.n	1f84 <main+0x3b0>
    1fc6:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    1fca:	e7db      	b.n	1f84 <main+0x3b0>
				print("BPCHIP mode\n180x112 16 colors");
    1fcc:	4638      	mov	r0, r7
    1fce:	f000 ff59 	bl	2e84 <print>
				color_bars();
    1fd2:	f7ff fcd7 	bl	1984 <color_bars>
    1fd6:	e7b4      	b.n	1f42 <main+0x36e>
				print("SCHIP mode\n128x64 mono");
    1fd8:	4630      	mov	r0, r6
    1fda:	f000 ff53 	bl	2e84 <print>
    1fde:	e7b0      	b.n	1f42 <main+0x36e>
	gfx_cls();
    1fe0:	f7ff fb90 	bl	1704 <gfx_cls>
	print("press buttons\n");
    1fe4:	4828      	ldr	r0, [pc, #160]	; (2088 <main+0x4b4>)
    1fe6:	f000 ff4d 	bl	2e84 <print>
		tone(freq,30);
    1fea:	251e      	movs	r5, #30
			freq=493;
    1fec:	f240 17ed 	movw	r7, #493	; 0x1ed
			freq=622;
    1ff0:	f240 266e 	movw	r6, #622	; 0x26e
    1ff4:	e019      	b.n	202a <main+0x456>
		switch(key){
    1ff6:	2802      	cmp	r0, #2
    1ff8:	d03f      	beq.n	207a <main+0x4a6>
    1ffa:	2804      	cmp	r0, #4
    1ffc:	d00e      	beq.n	201c <main+0x448>
    1ffe:	2801      	cmp	r0, #1
    2000:	d024      	beq.n	204c <main+0x478>
		tone(freq,30);
    2002:	4629      	mov	r1, r5
    2004:	9802      	ldr	r0, [sp, #8]
    2006:	f000 fc95 	bl	2934 <tone>
	while (key!=KEY_B){
    200a:	2c20      	cmp	r4, #32
    200c:	d10d      	bne.n	202a <main+0x456>
    200e:	e02b      	b.n	2068 <main+0x494>
		switch(key){
    2010:	2810      	cmp	r0, #16
    2012:	d1f6      	bne.n	2002 <main+0x42e>
			freq=523;
    2014:	f240 230b 	movw	r3, #523	; 0x20b
    2018:	9302      	str	r3, [sp, #8]
    201a:	e002      	b.n	2022 <main+0x44e>
			freq=466;
    201c:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2020:	9302      	str	r3, [sp, #8]
		tone(freq,30);
    2022:	4629      	mov	r1, r5
    2024:	9802      	ldr	r0, [sp, #8]
    2026:	f000 fc85 	bl	2934 <tone>
		key=btn_wait_any();
    202a:	f7ff f909 	bl	1240 <btn_wait_any>
    202e:	4604      	mov	r4, r0
		switch(key){
    2030:	2808      	cmp	r0, #8
    2032:	d026      	beq.n	2082 <main+0x4ae>
    2034:	d9df      	bls.n	1ff6 <main+0x422>
    2036:	2820      	cmp	r0, #32
    2038:	d011      	beq.n	205e <main+0x48a>
    203a:	d9e9      	bls.n	2010 <main+0x43c>
    203c:	2840      	cmp	r0, #64	; 0x40
    203e:	d009      	beq.n	2054 <main+0x480>
    2040:	2880      	cmp	r0, #128	; 0x80
    2042:	d1de      	bne.n	2002 <main+0x42e>
			freq=659;
    2044:	f240 2393 	movw	r3, #659	; 0x293
    2048:	9302      	str	r3, [sp, #8]
    204a:	e7ea      	b.n	2022 <main+0x44e>
			freq=554;
    204c:	f240 232a 	movw	r3, #554	; 0x22a
    2050:	9302      	str	r3, [sp, #8]
    2052:	e7e6      	b.n	2022 <main+0x44e>
			freq=622;
    2054:	9602      	str	r6, [sp, #8]
    2056:	e7e4      	b.n	2022 <main+0x44e>
				basic();
    2058:	f7fe f90e 	bl	278 <basic>
    205c:	e790      	b.n	1f80 <main+0x3ac>
		tone(freq,30);
    205e:	211e      	movs	r1, #30
    2060:	f240 204b 	movw	r0, #587	; 0x24b
    2064:	f000 fc66 	bl	2934 <tone>
	noise(30);
    2068:	201e      	movs	r0, #30
    206a:	f000 fc9d 	bl	29a8 <noise>
	while(sound_timer);
    206e:	4a07      	ldr	r2, [pc, #28]	; (208c <main+0x4b8>)
    2070:	8813      	ldrh	r3, [r2, #0]
    2072:	b29b      	uxth	r3, r3
    2074:	2b00      	cmp	r3, #0
    2076:	d1fb      	bne.n	2070 <main+0x49c>
    2078:	e782      	b.n	1f80 <main+0x3ac>
			freq=440;
    207a:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    207e:	9302      	str	r3, [sp, #8]
    2080:	e7cf      	b.n	2022 <main+0x44e>
			freq=493;
    2082:	9702      	str	r7, [sp, #8]
    2084:	e7cd      	b.n	2022 <main+0x44e>
    2086:	bf00      	nop
    2088:	00003fa4 	.word	0x00003fa4
    208c:	20004e7c 	.word	0x20004e7c

00002090 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    2090:	283b      	cmp	r0, #59	; 0x3b
    2092:	dc0d      	bgt.n	20b0 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    2094:	1143      	asrs	r3, r0, #5
    2096:	009b      	lsls	r3, r3, #2
    2098:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    209c:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    20a0:	6819      	ldr	r1, [r3, #0]
    20a2:	f000 001f 	and.w	r0, r0, #31
    20a6:	2201      	movs	r2, #1
    20a8:	fa02 f000 	lsl.w	r0, r2, r0
    20ac:	4308      	orrs	r0, r1
    20ae:	6018      	str	r0, [r3, #0]
    20b0:	4770      	bx	lr

000020b2 <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    20b2:	283b      	cmp	r0, #59	; 0x3b
    20b4:	dc08      	bgt.n	20c8 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    20b6:	1142      	asrs	r2, r0, #5
    20b8:	f000 001f 	and.w	r0, r0, #31
    20bc:	2301      	movs	r3, #1
    20be:	fa03 f000 	lsl.w	r0, r3, r0
    20c2:	4b02      	ldr	r3, [pc, #8]	; (20cc <disable_interrupt+0x1a>)
    20c4:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    20c8:	4770      	bx	lr
    20ca:	bf00      	nop
    20cc:	e000e180 	.word	0xe000e180

000020d0 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    20d0:	283b      	cmp	r0, #59	; 0x3b
    20d2:	dc09      	bgt.n	20e8 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    20d4:	1142      	asrs	r2, r0, #5
    20d6:	4b05      	ldr	r3, [pc, #20]	; (20ec <get_pending+0x1c>)
    20d8:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    20dc:	f000 031f 	and.w	r3, r0, #31
    20e0:	2001      	movs	r0, #1
    20e2:	4098      	lsls	r0, r3
    20e4:	4010      	ands	r0, r2
    20e6:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    20e8:	2000      	movs	r0, #0
}
    20ea:	4770      	bx	lr
    20ec:	e000e280 	.word	0xe000e280

000020f0 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    20f0:	283b      	cmp	r0, #59	; 0x3b
    20f2:	dc0c      	bgt.n	210e <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    20f4:	1143      	asrs	r3, r0, #5
    20f6:	009b      	lsls	r3, r3, #2
    20f8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    20fc:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2100:	681a      	ldr	r2, [r3, #0]
    2102:	f000 031f 	and.w	r3, r0, #31
    2106:	2001      	movs	r0, #1
    2108:	4098      	lsls	r0, r3
    210a:	4010      	ands	r0, r2
    210c:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    210e:	2000      	movs	r0, #0
}
    2110:	4770      	bx	lr

00002112 <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    2112:	283b      	cmp	r0, #59	; 0x3b
    2114:	dc0d      	bgt.n	2132 <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    2116:	1143      	asrs	r3, r0, #5
    2118:	009b      	lsls	r3, r3, #2
    211a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    211e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2122:	6819      	ldr	r1, [r3, #0]
    2124:	f000 001f 	and.w	r0, r0, #31
    2128:	2201      	movs	r2, #1
    212a:	fa02 f000 	lsl.w	r0, r2, r0
    212e:	4308      	orrs	r0, r1
    2130:	6018      	str	r0, [r3, #0]
    2132:	4770      	bx	lr

00002134 <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    2134:	283b      	cmp	r0, #59	; 0x3b
    2136:	dc08      	bgt.n	214a <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    2138:	1142      	asrs	r2, r0, #5
    213a:	f000 001f 	and.w	r0, r0, #31
    213e:	2301      	movs	r3, #1
    2140:	fa03 f000 	lsl.w	r0, r3, r0
    2144:	4b01      	ldr	r3, [pc, #4]	; (214c <clear_pending+0x18>)
    2146:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    214a:	4770      	bx	lr
    214c:	e000e280 	.word	0xe000e280

00002150 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    2150:	283b      	cmp	r0, #59	; 0x3b
    2152:	d90c      	bls.n	216e <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    2154:	f100 030f 	add.w	r3, r0, #15
    2158:	2b0e      	cmp	r3, #14
    215a:	d807      	bhi.n	216c <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    215c:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    2160:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    2164:	30fc      	adds	r0, #252	; 0xfc
    2166:	0109      	lsls	r1, r1, #4
    2168:	4b04      	ldr	r3, [pc, #16]	; (217c <set_int_priority+0x2c>)
    216a:	54c1      	strb	r1, [r0, r3]
    216c:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    216e:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    2172:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    2176:	0109      	lsls	r1, r1, #4
    2178:	7001      	strb	r1, [r0, #0]
    217a:	4770      	bx	lr
    217c:	e000ed18 	.word	0xe000ed18

00002180 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    2180:	f010 0f03 	tst.w	r0, #3
    2184:	d113      	bne.n	21ae <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    2186:	4b0c      	ldr	r3, [pc, #48]	; (21b8 <leap_year+0x38>)
    2188:	fba3 2300 	umull	r2, r3, r3, r0
    218c:	095b      	lsrs	r3, r3, #5
    218e:	2264      	movs	r2, #100	; 0x64
    2190:	fb02 0313 	mls	r3, r2, r3, r0
    2194:	b96b      	cbnz	r3, 21b2 <leap_year+0x32>
    2196:	4b08      	ldr	r3, [pc, #32]	; (21b8 <leap_year+0x38>)
    2198:	fba3 2300 	umull	r2, r3, r3, r0
    219c:	09db      	lsrs	r3, r3, #7
    219e:	f44f 72c8 	mov.w	r2, #400	; 0x190
    21a2:	fb02 0013 	mls	r0, r2, r3, r0
    21a6:	fab0 f080 	clz	r0, r0
    21aa:	0940      	lsrs	r0, r0, #5
    21ac:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    21ae:	2000      	movs	r0, #0
    21b0:	4770      	bx	lr
		return 1;
    21b2:	2001      	movs	r0, #1
}
    21b4:	4770      	bx	lr
    21b6:	bf00      	nop
    21b8:	51eb851f 	.word	0x51eb851f

000021bc <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    21bc:	4b07      	ldr	r3, [pc, #28]	; (21dc <sec_per_month+0x20>)
    21be:	5c5a      	ldrb	r2, [r3, r1]
    21c0:	4b07      	ldr	r3, [pc, #28]	; (21e0 <sec_per_month+0x24>)
    21c2:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    21c6:	2902      	cmp	r1, #2
    21c8:	d001      	beq.n	21ce <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    21ca:	4618      	mov	r0, r3
    21cc:	4770      	bx	lr
	if (month==2 && leap){
    21ce:	2800      	cmp	r0, #0
    21d0:	d0fb      	beq.n	21ca <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    21d2:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    21d6:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    21da:	e7f6      	b.n	21ca <sec_per_month+0xe>
    21dc:	00003d58 	.word	0x00003d58
    21e0:	00015180 	.word	0x00015180

000021e4 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    21e4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    21e8:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    21ea:	4b37      	ldr	r3, [pc, #220]	; (22c8 <get_date_time+0xe4>)
    21ec:	699a      	ldr	r2, [r3, #24]
    21ee:	69dc      	ldr	r4, [r3, #28]
    21f0:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    21f4:	f240 70b2 	movw	r0, #1970	; 0x7b2
    21f8:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    21fa:	f7ff ffc1 	bl	2180 <leap_year>
    21fe:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2200:	4d32      	ldr	r5, [pc, #200]	; (22cc <get_date_time+0xe8>)
    2202:	4f33      	ldr	r7, [pc, #204]	; (22d0 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    2204:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 22e4 <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2208:	e00e      	b.n	2228 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    220a:	4444      	add	r4, r8
    220c:	e005      	b.n	221a <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    220e:	42ac      	cmp	r4, r5
    2210:	d90f      	bls.n	2232 <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    2212:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    2216:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    221a:	8930      	ldrh	r0, [r6, #8]
    221c:	3001      	adds	r0, #1
    221e:	b280      	uxth	r0, r0
    2220:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    2222:	f7ff ffad 	bl	2180 <leap_year>
    2226:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    2228:	f1b9 0f00 	cmp.w	r9, #0
    222c:	d1ef      	bne.n	220e <get_date_time+0x2a>
    222e:	42bc      	cmp	r4, r7
    2230:	d8eb      	bhi.n	220a <get_date_time+0x26>
	}//while
	dt->month=1;
    2232:	8873      	ldrh	r3, [r6, #2]
    2234:	2201      	movs	r2, #1
    2236:	f362 1389 	bfi	r3, r2, #6, #4
    223a:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    223c:	f362 0345 	bfi	r3, r2, #1, #5
    2240:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    2242:	6833      	ldr	r3, [r6, #0]
    2244:	f36f 3310 	bfc	r3, #12, #5
    2248:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    224a:	f36f 138b 	bfc	r3, #6, #6
    224e:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    2250:	f36f 0305 	bfc	r3, #0, #6
    2254:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2256:	e005      	b.n	2264 <get_date_time+0x80>
		dt->month++;
    2258:	3501      	adds	r5, #1
    225a:	8873      	ldrh	r3, [r6, #2]
    225c:	f365 1389 	bfi	r3, r5, #6, #4
    2260:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    2262:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    2264:	8875      	ldrh	r5, [r6, #2]
    2266:	f3c5 1583 	ubfx	r5, r5, #6, #4
    226a:	4629      	mov	r1, r5
    226c:	4648      	mov	r0, r9
    226e:	f7ff ffa5 	bl	21bc <sec_per_month>
    2272:	4284      	cmp	r4, r0
    2274:	d8f0      	bhi.n	2258 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    2276:	4a17      	ldr	r2, [pc, #92]	; (22d4 <get_date_time+0xf0>)
    2278:	fba2 3204 	umull	r3, r2, r2, r4
    227c:	0c12      	lsrs	r2, r2, #16
    227e:	1c51      	adds	r1, r2, #1
    2280:	78b3      	ldrb	r3, [r6, #2]
    2282:	f361 0345 	bfi	r3, r1, #1, #5
    2286:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    2288:	4b13      	ldr	r3, [pc, #76]	; (22d8 <get_date_time+0xf4>)
    228a:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    228e:	4c13      	ldr	r4, [pc, #76]	; (22dc <get_date_time+0xf8>)
    2290:	fba4 3402 	umull	r3, r4, r4, r2
    2294:	0ae4      	lsrs	r4, r4, #11
    2296:	6833      	ldr	r3, [r6, #0]
    2298:	f364 3310 	bfi	r3, r4, #12, #5
    229c:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    229e:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    22a2:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    22a6:	4a0e      	ldr	r2, [pc, #56]	; (22e0 <get_date_time+0xfc>)
    22a8:	fba2 1204 	umull	r1, r2, r2, r4
    22ac:	0952      	lsrs	r2, r2, #5
    22ae:	f362 138b 	bfi	r3, r2, #6, #6
    22b2:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    22b4:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    22b8:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    22bc:	f364 0305 	bfi	r3, r4, #0, #6
    22c0:	7033      	strb	r3, [r6, #0]
    22c2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    22c6:	bf00      	nop
    22c8:	40002800 	.word	0x40002800
    22cc:	01e284ff 	.word	0x01e284ff
    22d0:	01e1337f 	.word	0x01e1337f
    22d4:	c22e4507 	.word	0xc22e4507
    22d8:	00015180 	.word	0x00015180
    22dc:	91a2b3c5 	.word	0x91a2b3c5
    22e0:	88888889 	.word	0x88888889
    22e4:	fe1ecc80 	.word	0xfe1ecc80

000022e8 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    22e8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    22ec:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    22ee:	8903      	ldrh	r3, [r0, #8]
    22f0:	f240 72b1 	movw	r2, #1969	; 0x7b1
    22f4:	4293      	cmp	r3, r2
    22f6:	d857      	bhi.n	23a8 <set_date_time+0xc0>
    22f8:	f240 70b2 	movw	r0, #1970	; 0x7b2
    22fc:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    2300:	f7ff ff3e 	bl	2180 <leap_year>
    2304:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    2306:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    2308:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    230c:	f3c6 1683 	ubfx	r6, r6, #6, #4
    2310:	2e01      	cmp	r6, #1
    2312:	d908      	bls.n	2326 <set_date_time+0x3e>
    2314:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    2316:	4629      	mov	r1, r5
    2318:	4638      	mov	r0, r7
    231a:	f7ff ff4f 	bl	21bc <sec_per_month>
    231e:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    2320:	3501      	adds	r5, #1
    2322:	42b5      	cmp	r5, r6
    2324:	d1f7      	bne.n	2316 <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    2326:	f8d8 2000 	ldr.w	r2, [r8]
    232a:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    232e:	f8b8 2000 	ldrh.w	r2, [r8]
    2332:	f3c2 1285 	ubfx	r2, r2, #6, #6
    2336:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    233a:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    233c:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2340:	fb01 2203 	mla	r2, r1, r3, r2
    2344:	f898 3000 	ldrb.w	r3, [r8]
    2348:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    234c:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    234e:	f898 3002 	ldrb.w	r3, [r8, #2]
    2352:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2356:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    2358:	4928      	ldr	r1, [pc, #160]	; (23fc <set_date_time+0x114>)
    235a:	fb01 2303 	mla	r3, r1, r3, r2
    235e:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    2360:	4a27      	ldr	r2, [pc, #156]	; (2400 <set_date_time+0x118>)
    2362:	69d3      	ldr	r3, [r2, #28]
    2364:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2368:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    236a:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    236e:	6813      	ldr	r3, [r2, #0]
    2370:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2374:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    2376:	4b23      	ldr	r3, [pc, #140]	; (2404 <set_date_time+0x11c>)
    2378:	685a      	ldr	r2, [r3, #4]
    237a:	f042 0210 	orr.w	r2, r2, #16
    237e:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    2380:	0c22      	lsrs	r2, r4, #16
    2382:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    2384:	b2a4      	uxth	r4, r4
    2386:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2388:	685a      	ldr	r2, [r3, #4]
    238a:	f022 0210 	bic.w	r2, r2, #16
    238e:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    2390:	461a      	mov	r2, r3
    2392:	6853      	ldr	r3, [r2, #4]
    2394:	f013 0f20 	tst.w	r3, #32
    2398:	d0fb      	beq.n	2392 <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    239a:	4a1b      	ldr	r2, [pc, #108]	; (2408 <set_date_time+0x120>)
    239c:	6813      	ldr	r3, [r2, #0]
    239e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    23a2:	6013      	str	r3, [r2, #0]
    23a4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    23a8:	f640 023a 	movw	r2, #2106	; 0x83a
    23ac:	4293      	cmp	r3, r2
    23ae:	d90c      	bls.n	23ca <set_date_time+0xe2>
    23b0:	4616      	mov	r6, r2
    23b2:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    23b6:	4610      	mov	r0, r2
    23b8:	f7ff fee2 	bl	2180 <leap_year>
    23bc:	4607      	mov	r7, r0
    23be:	2400      	movs	r4, #0
    23c0:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    23c4:	f8df 9044 	ldr.w	r9, [pc, #68]	; 240c <set_date_time+0x124>
    23c8:	e00e      	b.n	23e8 <set_date_time+0x100>
	leap=leap_year(dt->year);
    23ca:	8906      	ldrh	r6, [r0, #8]
    23cc:	4630      	mov	r0, r6
    23ce:	f7ff fed7 	bl	2180 <leap_year>
    23d2:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    23d4:	f240 73b2 	movw	r3, #1970	; 0x7b2
    23d8:	429e      	cmp	r6, r3
    23da:	d8f0      	bhi.n	23be <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    23dc:	2400      	movs	r4, #0
    23de:	e793      	b.n	2308 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    23e0:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    23e2:	3501      	adds	r5, #1
    23e4:	42b5      	cmp	r5, r6
    23e6:	d28f      	bcs.n	2308 <set_date_time+0x20>
		if (leap_year(i)){
    23e8:	4628      	mov	r0, r5
    23ea:	f7ff fec9 	bl	2180 <leap_year>
    23ee:	2800      	cmp	r0, #0
    23f0:	d0f6      	beq.n	23e0 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    23f2:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    23f6:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    23fa:	e7f2      	b.n	23e2 <set_date_time+0xfa>
    23fc:	00015180 	.word	0x00015180
    2400:	40021000 	.word	0x40021000
    2404:	40002800 	.word	0x40002800
    2408:	40007000 	.word	0x40007000
    240c:	01e13380 	.word	0x01e13380

00002410 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    2410:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    2412:	4b35      	ldr	r3, [pc, #212]	; (24e8 <rtc_init+0xd8>)
    2414:	685a      	ldr	r2, [r3, #4]
    2416:	f64a 2355 	movw	r3, #43605	; 0xaa55
    241a:	429a      	cmp	r2, r3
    241c:	d05c      	beq.n	24d8 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    241e:	4b33      	ldr	r3, [pc, #204]	; (24ec <rtc_init+0xdc>)
    2420:	69da      	ldr	r2, [r3, #28]
    2422:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2426:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    2428:	4c31      	ldr	r4, [pc, #196]	; (24f0 <rtc_init+0xe0>)
    242a:	6822      	ldr	r2, [r4, #0]
    242c:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2430:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    2432:	6a1a      	ldr	r2, [r3, #32]
    2434:	f042 0201 	orr.w	r2, r2, #1
    2438:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    243a:	461a      	mov	r2, r3
    243c:	6a13      	ldr	r3, [r2, #32]
    243e:	f013 0f02 	tst.w	r3, #2
    2442:	d0fb      	beq.n	243c <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    2444:	4a29      	ldr	r2, [pc, #164]	; (24ec <rtc_init+0xdc>)
    2446:	6a13      	ldr	r3, [r2, #32]
    2448:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    244c:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    244e:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    2452:	6853      	ldr	r3, [r2, #4]
    2454:	f013 0f08 	tst.w	r3, #8
    2458:	d0fb      	beq.n	2452 <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    245a:	4a26      	ldr	r2, [pc, #152]	; (24f4 <rtc_init+0xe4>)
    245c:	6853      	ldr	r3, [r2, #4]
    245e:	f013 0f20 	tst.w	r3, #32
    2462:	d0fb      	beq.n	245c <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    2464:	4a23      	ldr	r2, [pc, #140]	; (24f4 <rtc_init+0xe4>)
    2466:	6853      	ldr	r3, [r2, #4]
    2468:	f043 0310 	orr.w	r3, r3, #16
    246c:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    246e:	6853      	ldr	r3, [r2, #4]
    2470:	f013 0f20 	tst.w	r3, #32
    2474:	d0fb      	beq.n	246e <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    2476:	4a1f      	ldr	r2, [pc, #124]	; (24f4 <rtc_init+0xe4>)
    2478:	6813      	ldr	r3, [r2, #0]
    247a:	4319      	orrs	r1, r3
    247c:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    247e:	6853      	ldr	r3, [r2, #4]
    2480:	f013 0f20 	tst.w	r3, #32
    2484:	d0fb      	beq.n	247e <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    2486:	03c2      	lsls	r2, r0, #15
    2488:	481b      	ldr	r0, [pc, #108]	; (24f8 <rtc_init+0xe8>)
    248a:	fba0 3202 	umull	r3, r2, r0, r2
    248e:	0992      	lsrs	r2, r2, #6
    2490:	3a01      	subs	r2, #1
    2492:	b291      	uxth	r1, r2
    2494:	4b17      	ldr	r3, [pc, #92]	; (24f4 <rtc_init+0xe4>)
    2496:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    2498:	4619      	mov	r1, r3
    249a:	684b      	ldr	r3, [r1, #4]
    249c:	f013 0f20 	tst.w	r3, #32
    24a0:	d0fb      	beq.n	249a <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    24a2:	f3c2 4203 	ubfx	r2, r2, #16, #4
    24a6:	4b13      	ldr	r3, [pc, #76]	; (24f4 <rtc_init+0xe4>)
    24a8:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    24aa:	461a      	mov	r2, r3
    24ac:	6853      	ldr	r3, [r2, #4]
    24ae:	f013 0f20 	tst.w	r3, #32
    24b2:	d0fb      	beq.n	24ac <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    24b4:	f64a 2255 	movw	r2, #43605	; 0xaa55
    24b8:	4b0b      	ldr	r3, [pc, #44]	; (24e8 <rtc_init+0xd8>)
    24ba:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    24bc:	4a0d      	ldr	r2, [pc, #52]	; (24f4 <rtc_init+0xe4>)
    24be:	6853      	ldr	r3, [r2, #4]
    24c0:	f023 0310 	bic.w	r3, r3, #16
    24c4:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    24c6:	6853      	ldr	r3, [r2, #4]
    24c8:	f013 0f20 	tst.w	r3, #32
    24cc:	d0fb      	beq.n	24c6 <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    24ce:	4a08      	ldr	r2, [pc, #32]	; (24f0 <rtc_init+0xe0>)
    24d0:	6813      	ldr	r3, [r2, #0]
    24d2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    24d6:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    24d8:	210f      	movs	r1, #15
    24da:	2003      	movs	r0, #3
    24dc:	f7ff fe38 	bl	2150 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    24e0:	2003      	movs	r0, #3
    24e2:	f7ff fdd5 	bl	2090 <enable_interrupt>
    24e6:	bd10      	pop	{r4, pc}
    24e8:	40006c00 	.word	0x40006c00
    24ec:	40021000 	.word	0x40021000
    24f0:	40007000 	.word	0x40007000
    24f4:	40002800 	.word	0x40002800
    24f8:	10624dd3 	.word	0x10624dd3

000024fc <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    24fc:	4b06      	ldr	r3, [pc, #24]	; (2518 <reset_backup_domain+0x1c>)
    24fe:	69da      	ldr	r2, [r3, #28]
    2500:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    2504:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    2506:	6a1a      	ldr	r2, [r3, #32]
    2508:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    250c:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    250e:	6a1a      	ldr	r2, [r3, #32]
    2510:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    2514:	621a      	str	r2, [r3, #32]
    2516:	4770      	bx	lr
    2518:	40021000 	.word	0x40021000

0000251c <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    251c:	4a27      	ldr	r2, [pc, #156]	; (25bc <rtc_clock_trim+0xa0>)
    251e:	69d3      	ldr	r3, [r2, #28]
    2520:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2524:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    2526:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    252a:	6853      	ldr	r3, [r2, #4]
    252c:	f013 0f08 	tst.w	r3, #8
    2530:	d0fb      	beq.n	252a <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    2532:	4a23      	ldr	r2, [pc, #140]	; (25c0 <rtc_clock_trim+0xa4>)
    2534:	6813      	ldr	r3, [r2, #0]
    2536:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    253a:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    253c:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    2540:	6853      	ldr	r3, [r2, #4]
    2542:	f043 0310 	orr.w	r3, r3, #16
    2546:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    2548:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    254c:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    254e:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2552:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    2554:	b9b8      	cbnz	r0, 2586 <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    2556:	2200      	movs	r2, #0
    2558:	4b1a      	ldr	r3, [pc, #104]	; (25c4 <rtc_clock_trim+0xa8>)
    255a:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    255c:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    2560:	f647 71ff 	movw	r1, #32767	; 0x7fff
    2564:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    2566:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    2568:	4a17      	ldr	r2, [pc, #92]	; (25c8 <rtc_clock_trim+0xac>)
    256a:	6853      	ldr	r3, [r2, #4]
    256c:	f023 0310 	bic.w	r3, r3, #16
    2570:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    2572:	6853      	ldr	r3, [r2, #4]
    2574:	f013 0f20 	tst.w	r3, #32
    2578:	d0fb      	beq.n	2572 <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    257a:	4a11      	ldr	r2, [pc, #68]	; (25c0 <rtc_clock_trim+0xa4>)
    257c:	6813      	ldr	r3, [r2, #0]
    257e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2582:	6013      	str	r3, [r2, #0]
    2584:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    2586:	2800      	cmp	r0, #0
    2588:	dd06      	ble.n	2598 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    258a:	4b0e      	ldr	r3, [pc, #56]	; (25c4 <rtc_clock_trim+0xa8>)
    258c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    258e:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    2592:	4310      	orrs	r0, r2
    2594:	62d8      	str	r0, [r3, #44]	; 0x2c
    2596:	e7e7      	b.n	2568 <rtc_clock_trim+0x4c>
		trim=-trim;
    2598:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    259a:	2100      	movs	r1, #0
    259c:	4b09      	ldr	r3, [pc, #36]	; (25c4 <rtc_clock_trim+0xa8>)
    259e:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    25a0:	f64f 73ff 	movw	r3, #65535	; 0xffff
    25a4:	287f      	cmp	r0, #127	; 0x7f
    25a6:	bfd4      	ite	le
    25a8:	1a18      	suble	r0, r3, r0
    25aa:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    25ae:	f3c0 000e 	ubfx	r0, r0, #0, #15
    25b2:	4a05      	ldr	r2, [pc, #20]	; (25c8 <rtc_clock_trim+0xac>)
    25b4:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    25b6:	6091      	str	r1, [r2, #8]
    25b8:	e7d6      	b.n	2568 <rtc_clock_trim+0x4c>
    25ba:	bf00      	nop
    25bc:	40021000 	.word	0x40021000
    25c0:	40007000 	.word	0x40007000
    25c4:	40006c00 	.word	0x40006c00
    25c8:	40002800 	.word	0x40002800

000025cc <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    25cc:	4770      	bx	lr

000025ce <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    25ce:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    25d2:	4607      	mov	r7, r0
    25d4:	4688      	mov	r8, r1
    25d6:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    25d8:	2400      	movs	r4, #0
	i=0;
    25da:	4626      	mov	r6, r4
	while (digit(date[i])){
    25dc:	e008      	b.n	25f0 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    25de:	3601      	adds	r6, #1
    25e0:	3501      	adds	r5, #1
    25e2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    25e6:	f899 3000 	ldrb.w	r3, [r9]
    25ea:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    25ee:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    25f0:	46a9      	mov	r9, r5
    25f2:	7828      	ldrb	r0, [r5, #0]
    25f4:	f7fe fea5 	bl	1342 <digit>
    25f8:	4682      	mov	sl, r0
    25fa:	2800      	cmp	r0, #0
    25fc:	d1ef      	bne.n	25de <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    25fe:	2e03      	cmp	r6, #3
    2600:	dd02      	ble.n	2608 <str_to_date+0x3a>
    2602:	782b      	ldrb	r3, [r5, #0]
    2604:	2b2f      	cmp	r3, #47	; 0x2f
    2606:	d002      	beq.n	260e <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    2608:	4650      	mov	r0, sl
    260a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    260e:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    2612:	3601      	adds	r6, #1
    2614:	19bd      	adds	r5, r7, r6
	n=0;
    2616:	4604      	mov	r4, r0
	while (digit(date[i])){
    2618:	e008      	b.n	262c <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    261a:	3601      	adds	r6, #1
    261c:	3501      	adds	r5, #1
    261e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2622:	f899 3000 	ldrb.w	r3, [r9]
    2626:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    262a:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    262c:	46a9      	mov	r9, r5
    262e:	7828      	ldrb	r0, [r5, #0]
    2630:	f7fe fe87 	bl	1342 <digit>
    2634:	4682      	mov	sl, r0
    2636:	2800      	cmp	r0, #0
    2638:	d1ef      	bne.n	261a <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    263a:	2e06      	cmp	r6, #6
    263c:	dde4      	ble.n	2608 <str_to_date+0x3a>
    263e:	782b      	ldrb	r3, [r5, #0]
    2640:	2b2f      	cmp	r3, #47	; 0x2f
    2642:	d1e1      	bne.n	2608 <str_to_date+0x3a>
	dt->month=n;
    2644:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2648:	f364 1389 	bfi	r3, r4, #6, #4
    264c:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2650:	1c74      	adds	r4, r6, #1
    2652:	443e      	add	r6, r7
	while (digit(date[i])){
    2654:	e008      	b.n	2668 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    2656:	3401      	adds	r4, #1
    2658:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    265c:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2660:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    2664:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2668:	7870      	ldrb	r0, [r6, #1]
    266a:	f7fe fe6a 	bl	1342 <digit>
    266e:	2800      	cmp	r0, #0
    2670:	d1f1      	bne.n	2656 <str_to_date+0x88>
	if (i<10) return 0;
    2672:	2c09      	cmp	r4, #9
    2674:	dd08      	ble.n	2688 <str_to_date+0xba>
	dt->day=n;
    2676:	f898 3002 	ldrb.w	r3, [r8, #2]
    267a:	f36a 0345 	bfi	r3, sl, #1, #5
    267e:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    2682:	f04f 0a01 	mov.w	sl, #1
    2686:	e7bf      	b.n	2608 <str_to_date+0x3a>
	if (i<10) return 0;
    2688:	4682      	mov	sl, r0
    268a:	e7bd      	b.n	2608 <str_to_date+0x3a>

0000268c <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    268c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2690:	4607      	mov	r7, r0
    2692:	4688      	mov	r8, r1
    2694:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    2696:	2400      	movs	r4, #0
	i=0;
    2698:	4626      	mov	r6, r4
	while (digit(time[i])){
    269a:	e00a      	b.n	26b2 <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    269c:	3601      	adds	r6, #1
    269e:	3501      	adds	r5, #1
    26a0:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26a4:	0064      	lsls	r4, r4, #1
    26a6:	3c30      	subs	r4, #48	; 0x30
    26a8:	f899 3000 	ldrb.w	r3, [r9]
    26ac:	441c      	add	r4, r3
    26ae:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    26b2:	46a9      	mov	r9, r5
    26b4:	7828      	ldrb	r0, [r5, #0]
    26b6:	f7fe fe44 	bl	1342 <digit>
    26ba:	4603      	mov	r3, r0
    26bc:	2800      	cmp	r0, #0
    26be:	d1ed      	bne.n	269c <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    26c0:	2c17      	cmp	r4, #23
    26c2:	d802      	bhi.n	26ca <str_to_time+0x3e>
    26c4:	782a      	ldrb	r2, [r5, #0]
    26c6:	2a3a      	cmp	r2, #58	; 0x3a
    26c8:	d002      	beq.n	26d0 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    26ca:	4618      	mov	r0, r3
    26cc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    26d0:	f8d8 3000 	ldr.w	r3, [r8]
    26d4:	f364 3310 	bfi	r3, r4, #12, #5
    26d8:	f8c8 3000 	str.w	r3, [r8]
	i++;
    26dc:	3601      	adds	r6, #1
    26de:	19bd      	adds	r5, r7, r6
	n=0;
    26e0:	2400      	movs	r4, #0
	while (digit(time[i])){
    26e2:	e00a      	b.n	26fa <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    26e4:	3601      	adds	r6, #1
    26e6:	3501      	adds	r5, #1
    26e8:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    26ec:	0064      	lsls	r4, r4, #1
    26ee:	3c30      	subs	r4, #48	; 0x30
    26f0:	f899 3000 	ldrb.w	r3, [r9]
    26f4:	441c      	add	r4, r3
    26f6:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    26fa:	46a9      	mov	r9, r5
    26fc:	7828      	ldrb	r0, [r5, #0]
    26fe:	f7fe fe20 	bl	1342 <digit>
    2702:	4603      	mov	r3, r0
    2704:	2800      	cmp	r0, #0
    2706:	d1ed      	bne.n	26e4 <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    2708:	2c3b      	cmp	r4, #59	; 0x3b
    270a:	d8de      	bhi.n	26ca <str_to_time+0x3e>
    270c:	782a      	ldrb	r2, [r5, #0]
    270e:	2a3a      	cmp	r2, #58	; 0x3a
    2710:	d1db      	bne.n	26ca <str_to_time+0x3e>
	dt->minute=n;
    2712:	f8b8 3000 	ldrh.w	r3, [r8]
    2716:	f364 138b 	bfi	r3, r4, #6, #6
    271a:	f8a8 3000 	strh.w	r3, [r8]
    271e:	443e      	add	r6, r7
	n=0;
    2720:	2400      	movs	r4, #0
	while (digit(time[i])){
    2722:	e008      	b.n	2736 <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    2724:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2728:	0064      	lsls	r4, r4, #1
    272a:	3c30      	subs	r4, #48	; 0x30
    272c:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2730:	441c      	add	r4, r3
    2732:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    2736:	7870      	ldrb	r0, [r6, #1]
    2738:	f7fe fe03 	bl	1342 <digit>
    273c:	4603      	mov	r3, r0
    273e:	2800      	cmp	r0, #0
    2740:	d1f0      	bne.n	2724 <str_to_time+0x98>
	if (n>59) return 0;
    2742:	2c3b      	cmp	r4, #59	; 0x3b
    2744:	d8c1      	bhi.n	26ca <str_to_time+0x3e>
	dt->second=n;
    2746:	f898 3000 	ldrb.w	r3, [r8]
    274a:	f364 0305 	bfi	r3, r4, #0, #6
    274e:	f888 3000 	strb.w	r3, [r8]
	return 1;
    2752:	2301      	movs	r3, #1
    2754:	e7b9      	b.n	26ca <str_to_time+0x3e>

00002756 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    2756:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2758:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    275a:	4b23      	ldr	r3, [pc, #140]	; (27e8 <date_str+0x92>)
    275c:	fba3 4302 	umull	r4, r3, r3, r2
    2760:	099b      	lsrs	r3, r3, #6
    2762:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2766:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2768:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    276c:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2770:	4b1e      	ldr	r3, [pc, #120]	; (27ec <date_str+0x96>)
    2772:	fba3 4302 	umull	r4, r3, r3, r2
    2776:	095b      	lsrs	r3, r3, #5
    2778:	f103 0430 	add.w	r4, r3, #48	; 0x30
    277c:	704c      	strb	r4, [r1, #1]
	n%=100;
    277e:	2464      	movs	r4, #100	; 0x64
    2780:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    2784:	4a1a      	ldr	r2, [pc, #104]	; (27f0 <date_str+0x9a>)
    2786:	fba2 5403 	umull	r5, r4, r2, r3
    278a:	08e4      	lsrs	r4, r4, #3
    278c:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2790:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    2792:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2796:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    279a:	3330      	adds	r3, #48	; 0x30
    279c:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    279e:	262f      	movs	r6, #47	; 0x2f
    27a0:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    27a2:	8843      	ldrh	r3, [r0, #2]
    27a4:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    27a8:	fba2 5403 	umull	r5, r4, r2, r3
    27ac:	08e4      	lsrs	r4, r4, #3
    27ae:	f104 0530 	add.w	r5, r4, #48	; 0x30
    27b2:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    27b4:	00a5      	lsls	r5, r4, #2
    27b6:	442c      	add	r4, r5
    27b8:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    27bc:	3330      	adds	r3, #48	; 0x30
    27be:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    27c0:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    27c2:	7880      	ldrb	r0, [r0, #2]
    27c4:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    27c8:	fba2 3200 	umull	r3, r2, r2, r0
    27cc:	08d3      	lsrs	r3, r2, #3
    27ce:	f103 0230 	add.w	r2, r3, #48	; 0x30
    27d2:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    27d4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    27d8:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    27dc:	3330      	adds	r3, #48	; 0x30
    27de:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    27e0:	2300      	movs	r3, #0
    27e2:	728b      	strb	r3, [r1, #10]

}
    27e4:	bc70      	pop	{r4, r5, r6}
    27e6:	4770      	bx	lr
    27e8:	10624dd3 	.word	0x10624dd3
    27ec:	51eb851f 	.word	0x51eb851f
    27f0:	cccccccd 	.word	0xcccccccd

000027f4 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    27f4:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    27f6:	6802      	ldr	r2, [r0, #0]
    27f8:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    27fc:	4b18      	ldr	r3, [pc, #96]	; (2860 <time_str+0x6c>)
    27fe:	fba3 5402 	umull	r5, r4, r3, r2
    2802:	08e4      	lsrs	r4, r4, #3
    2804:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2808:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    280a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    280e:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2812:	3230      	adds	r2, #48	; 0x30
    2814:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    2816:	253a      	movs	r5, #58	; 0x3a
    2818:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    281a:	8802      	ldrh	r2, [r0, #0]
    281c:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2820:	fba3 6402 	umull	r6, r4, r3, r2
    2824:	08e4      	lsrs	r4, r4, #3
    2826:	f104 0630 	add.w	r6, r4, #48	; 0x30
    282a:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    282c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2830:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    2834:	3230      	adds	r2, #48	; 0x30
    2836:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2838:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    283a:	7802      	ldrb	r2, [r0, #0]
    283c:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    2840:	fba3 0302 	umull	r0, r3, r3, r2
    2844:	08db      	lsrs	r3, r3, #3
    2846:	f103 0030 	add.w	r0, r3, #48	; 0x30
    284a:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    284c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2850:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    2854:	3330      	adds	r3, #48	; 0x30
    2856:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2858:	2300      	movs	r3, #0
    285a:	720b      	strb	r3, [r1, #8]
}
    285c:	bc70      	pop	{r4, r5, r6}
    285e:	4770      	bx	lr
    2860:	cccccccd 	.word	0xcccccccd

00002864 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2864:	b500      	push	{lr}
    2866:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2868:	a801      	add	r0, sp, #4
    286a:	f7ff fcbb 	bl	21e4 <get_date_time>
	t.fields.second=dt.second/2;
    286e:	f89d 3004 	ldrb.w	r3, [sp, #4]
    2872:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2876:	2000      	movs	r0, #0
    2878:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    287c:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2880:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2884:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2888:	9b01      	ldr	r3, [sp, #4]
    288a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    288e:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    2892:	f89d 3006 	ldrb.w	r3, [sp, #6]
    2896:	f3c3 0344 	ubfx	r3, r3, #1, #5
    289a:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    289e:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    28a2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    28a6:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    28aa:	f89d 300c 	ldrb.w	r3, [sp, #12]
    28ae:	3344      	adds	r3, #68	; 0x44
    28b0:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    28b4:	b005      	add	sp, #20
    28b6:	f85d fb04 	ldr.w	pc, [sp], #4

000028ba <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    28ba:	4b07      	ldr	r3, [pc, #28]	; (28d8 <RTC_handler+0x1e>)
    28bc:	685b      	ldr	r3, [r3, #4]
    28be:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    28c2:	bf1c      	itt	ne
    28c4:	4b04      	ldrne	r3, [pc, #16]	; (28d8 <RTC_handler+0x1e>)
    28c6:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    28c8:	4b03      	ldr	r3, [pc, #12]	; (28d8 <RTC_handler+0x1e>)
    28ca:	685b      	ldr	r3, [r3, #4]
    28cc:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    28d0:	bf1c      	itt	ne
    28d2:	4b01      	ldrne	r3, [pc, #4]	; (28d8 <RTC_handler+0x1e>)
    28d4:	685b      	ldrne	r3, [r3, #4]
    28d6:	4770      	bx	lr
    28d8:	40002800 	.word	0x40002800

000028dc <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    28dc:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    28de:	4b12      	ldr	r3, [pc, #72]	; (2928 <sound_init+0x4c>)
    28e0:	685a      	ldr	r2, [r3, #4]
    28e2:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    28e6:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    28e8:	685a      	ldr	r2, [r3, #4]
    28ea:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    28ee:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    28f0:	220a      	movs	r2, #10
    28f2:	4611      	mov	r1, r2
    28f4:	480d      	ldr	r0, [pc, #52]	; (292c <sound_init+0x50>)
    28f6:	f7fe fe4f 	bl	1598 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    28fa:	4a0d      	ldr	r2, [pc, #52]	; (2930 <sound_init+0x54>)
    28fc:	69d3      	ldr	r3, [r2, #28]
    28fe:	f043 0301 	orr.w	r3, r3, #1
    2902:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2904:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2908:	2278      	movs	r2, #120	; 0x78
    290a:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    290c:	f44f 7280 	mov.w	r2, #256	; 0x100
    2910:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    2912:	2209      	movs	r2, #9
    2914:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    2916:	2100      	movs	r1, #0
    2918:	201c      	movs	r0, #28
    291a:	f7ff fc19 	bl	2150 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    291e:	201c      	movs	r0, #28
    2920:	f7ff fbb6 	bl	2090 <enable_interrupt>
    2924:	bd08      	pop	{r3, pc}
    2926:	bf00      	nop
    2928:	40010000 	.word	0x40010000
    292c:	40010c00 	.word	0x40010c00
    2930:	40021000 	.word	0x40021000

00002934 <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    2934:	4b07      	ldr	r3, [pc, #28]	; (2954 <tone+0x20>)
    2936:	fbb3 f0f0 	udiv	r0, r3, r0
    293a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    293e:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    2940:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2942:	0852      	lsrs	r2, r2, #1
    2944:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    2946:	681a      	ldr	r2, [r3, #0]
    2948:	f042 0201 	orr.w	r2, r2, #1
    294c:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    294e:	4b02      	ldr	r3, [pc, #8]	; (2958 <tone+0x24>)
    2950:	8019      	strh	r1, [r3, #0]
    2952:	4770      	bx	lr
    2954:	006d3d32 	.word	0x006d3d32
    2958:	20004e7c 	.word	0x20004e7c

0000295c <beep>:
}

void beep(uint16_t duration){
    295c:	b508      	push	{r3, lr}
    tone(1000,duration);
    295e:	4601      	mov	r1, r0
    2960:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    2964:	f7ff ffe6 	bl	2934 <tone>
    2968:	bd08      	pop	{r3, pc}

0000296a <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    296a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    296e:	681a      	ldr	r2, [r3, #0]
    2970:	f022 0201 	bic.w	r2, r2, #1
    2974:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    2976:	68da      	ldr	r2, [r3, #12]
    2978:	f022 0201 	bic.w	r2, r2, #1
    297c:	60da      	str	r2, [r3, #12]
    297e:	4770      	bx	lr

00002980 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    2980:	b510      	push	{r4, lr}
    2982:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    2984:	b289      	uxth	r1, r1
    2986:	4b06      	ldr	r3, [pc, #24]	; (29a0 <key_tone+0x20>)
    2988:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    298c:	f7ff ffd2 	bl	2934 <tone>
    if (wait_end) while (sound_timer);
    2990:	b124      	cbz	r4, 299c <key_tone+0x1c>
    2992:	4a04      	ldr	r2, [pc, #16]	; (29a4 <key_tone+0x24>)
    2994:	8813      	ldrh	r3, [r2, #0]
    2996:	b29b      	uxth	r3, r3
    2998:	2b00      	cmp	r3, #0
    299a:	d1fb      	bne.n	2994 <key_tone+0x14>
    299c:	bd10      	pop	{r4, pc}
    299e:	bf00      	nop
    29a0:	00003d68 	.word	0x00003d68
    29a4:	20004e7c 	.word	0x20004e7c

000029a8 <noise>:
}

// produit un bruit 
void noise(int length){
    29a8:	b510      	push	{r4, lr}
    29aa:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    29ac:	4b07      	ldr	r3, [pc, #28]	; (29cc <noise+0x24>)
    29ae:	6818      	ldr	r0, [r3, #0]
    29b0:	f7fd fd18 	bl	3e4 <srand>
    tone(6000,length);
    29b4:	b2a1      	uxth	r1, r4
    29b6:	f241 7070 	movw	r0, #6000	; 0x1770
    29ba:	f7ff ffbb 	bl	2934 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    29be:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29c2:	68d3      	ldr	r3, [r2, #12]
    29c4:	f043 0301 	orr.w	r3, r3, #1
    29c8:	60d3      	str	r3, [r2, #12]
    29ca:	bd10      	pop	{r4, pc}
    29cc:	20004e78 	.word	0x20004e78

000029d0 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    29d0:	4668      	mov	r0, sp
    29d2:	f020 0107 	bic.w	r1, r0, #7
    29d6:	468d      	mov	sp, r1
    29d8:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    29da:	f7fd fd09 	bl	3f0 <rand>
    29de:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    29e2:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29e6:	6a13      	ldr	r3, [r2, #32]
    29e8:	bf14      	ite	ne
    29ea:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    29ee:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    29f2:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    29f4:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    29f8:	6913      	ldr	r3, [r2, #16]
    29fa:	f023 0301 	bic.w	r3, r3, #1
    29fe:	6113      	str	r3, [r2, #16]
}
    2a00:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    2a04:	4685      	mov	sp, r0
    2a06:	4770      	bx	lr

00002a08 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    2a08:	6803      	ldr	r3, [r0, #0]
    2a0a:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    2a0e:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    2a10:	6803      	ldr	r3, [r0, #0]
    2a12:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    2a16:	6001      	str	r1, [r0, #0]
    2a18:	4770      	bx	lr

00002a1a <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2a1a:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2a1c:	4a2f      	ldr	r2, [pc, #188]	; (2adc <spi_config_port+0xc2>)
    2a1e:	6993      	ldr	r3, [r2, #24]
    2a20:	f043 0301 	orr.w	r3, r3, #1
    2a24:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2a26:	4b2e      	ldr	r3, [pc, #184]	; (2ae0 <spi_config_port+0xc6>)
    2a28:	4298      	cmp	r0, r3
    2a2a:	d01a      	beq.n	2a62 <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2a2c:	4a2b      	ldr	r2, [pc, #172]	; (2adc <spi_config_port+0xc2>)
    2a2e:	6993      	ldr	r3, [r2, #24]
    2a30:	f043 0308 	orr.w	r3, r3, #8
    2a34:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    2a36:	4c2b      	ldr	r4, [pc, #172]	; (2ae4 <spi_config_port+0xca>)
    2a38:	2203      	movs	r2, #3
    2a3a:	2102      	movs	r1, #2
    2a3c:	4620      	mov	r0, r4
    2a3e:	f7fe fdab 	bl	1598 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2a42:	220b      	movs	r2, #11
    2a44:	210d      	movs	r1, #13
    2a46:	4620      	mov	r0, r4
    2a48:	f7fe fda6 	bl	1598 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2a4c:	2204      	movs	r2, #4
    2a4e:	210e      	movs	r1, #14
    2a50:	4620      	mov	r0, r4
    2a52:	f7fe fda1 	bl	1598 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2a56:	220b      	movs	r2, #11
    2a58:	210f      	movs	r1, #15
    2a5a:	4620      	mov	r0, r4
    2a5c:	f7fe fd9c 	bl	1598 <config_pin>
    2a60:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    2a62:	b9c9      	cbnz	r1, 2a98 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2a64:	6993      	ldr	r3, [r2, #24]
    2a66:	f043 0304 	orr.w	r3, r3, #4
    2a6a:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2a6c:	4c1e      	ldr	r4, [pc, #120]	; (2ae8 <spi_config_port+0xce>)
    2a6e:	2203      	movs	r2, #3
    2a70:	2104      	movs	r1, #4
    2a72:	4620      	mov	r0, r4
    2a74:	f7fe fd90 	bl	1598 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2a78:	220b      	movs	r2, #11
    2a7a:	2105      	movs	r1, #5
    2a7c:	4620      	mov	r0, r4
    2a7e:	f7fe fd8b 	bl	1598 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    2a82:	2204      	movs	r2, #4
    2a84:	2106      	movs	r1, #6
    2a86:	4620      	mov	r0, r4
    2a88:	f7fe fd86 	bl	1598 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2a8c:	220b      	movs	r2, #11
    2a8e:	2107      	movs	r1, #7
    2a90:	4620      	mov	r0, r4
    2a92:	f7fe fd81 	bl	1598 <config_pin>
    2a96:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2a98:	4a10      	ldr	r2, [pc, #64]	; (2adc <spi_config_port+0xc2>)
    2a9a:	6993      	ldr	r3, [r2, #24]
    2a9c:	f043 030d 	orr.w	r3, r3, #13
    2aa0:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2aa2:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    2aa6:	6853      	ldr	r3, [r2, #4]
    2aa8:	f043 0301 	orr.w	r3, r3, #1
    2aac:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2aae:	2203      	movs	r2, #3
    2ab0:	210f      	movs	r1, #15
    2ab2:	480d      	ldr	r0, [pc, #52]	; (2ae8 <spi_config_port+0xce>)
    2ab4:	f7fe fd70 	bl	1598 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2ab8:	4c0a      	ldr	r4, [pc, #40]	; (2ae4 <spi_config_port+0xca>)
    2aba:	220b      	movs	r2, #11
    2abc:	2103      	movs	r1, #3
    2abe:	4620      	mov	r0, r4
    2ac0:	f7fe fd6a 	bl	1598 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2ac4:	2204      	movs	r2, #4
    2ac6:	4611      	mov	r1, r2
    2ac8:	4620      	mov	r0, r4
    2aca:	f7fe fd65 	bl	1598 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2ace:	220b      	movs	r2, #11
    2ad0:	2105      	movs	r1, #5
    2ad2:	4620      	mov	r0, r4
    2ad4:	f7fe fd60 	bl	1598 <config_pin>
    2ad8:	bd10      	pop	{r4, pc}
    2ada:	bf00      	nop
    2adc:	40021000 	.word	0x40021000
    2ae0:	40013000 	.word	0x40013000
    2ae4:	40010c00 	.word	0x40010c00
    2ae8:	40010800 	.word	0x40010800

00002aec <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2aec:	b570      	push	{r4, r5, r6, lr}
    2aee:	4604      	mov	r4, r0
    2af0:	460d      	mov	r5, r1
    2af2:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    2af4:	4619      	mov	r1, r3
    2af6:	f7ff ff90 	bl	2a1a <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2afa:	4b0c      	ldr	r3, [pc, #48]	; (2b2c <spi_init+0x40>)
    2afc:	429c      	cmp	r4, r3
    2afe:	d00e      	beq.n	2b1e <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    2b00:	4a0b      	ldr	r2, [pc, #44]	; (2b30 <spi_init+0x44>)
    2b02:	69d3      	ldr	r3, [r2, #28]
    2b04:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2b08:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    2b0a:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    2b0c:	4629      	mov	r1, r5
    2b0e:	4620      	mov	r0, r4
    2b10:	f7ff ff7a 	bl	2a08 <spi_baudrate>
	_spi_enable(channel);
    2b14:	6823      	ldr	r3, [r4, #0]
    2b16:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2b1a:	6023      	str	r3, [r4, #0]
    2b1c:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2b1e:	4a04      	ldr	r2, [pc, #16]	; (2b30 <spi_init+0x44>)
    2b20:	6993      	ldr	r3, [r2, #24]
    2b22:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2b26:	6193      	str	r3, [r2, #24]
    2b28:	e7ef      	b.n	2b0a <spi_init+0x1e>
    2b2a:	bf00      	nop
    2b2c:	40013000 	.word	0x40013000
    2b30:	40021000 	.word	0x40021000

00002b34 <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    2b34:	6883      	ldr	r3, [r0, #8]
    2b36:	f013 0f02 	tst.w	r3, #2
    2b3a:	d0fb      	beq.n	2b34 <spi_send>
	channel->DR=b;
    2b3c:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b3e:	6883      	ldr	r3, [r0, #8]
    2b40:	f013 0f01 	tst.w	r3, #1
    2b44:	d0fb      	beq.n	2b3e <spi_send+0xa>
	return (uint8_t)channel->DR;
    2b46:	68c0      	ldr	r0, [r0, #12]
}
    2b48:	b2c0      	uxtb	r0, r0
    2b4a:	4770      	bx	lr

00002b4c <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2b4c:	6883      	ldr	r3, [r0, #8]
    2b4e:	f013 0f02 	tst.w	r3, #2
    2b52:	d0fb      	beq.n	2b4c <spi_receive>
	channel->DR=255;
    2b54:	23ff      	movs	r3, #255	; 0xff
    2b56:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2b58:	6883      	ldr	r3, [r0, #8]
    2b5a:	f013 0f01 	tst.w	r3, #1
    2b5e:	d0fb      	beq.n	2b58 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2b60:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    2b62:	b2c0      	uxtb	r0, r0
    2b64:	4770      	bx	lr

00002b66 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    2b66:	b14a      	cbz	r2, 2b7c <spi_send_block+0x16>
    2b68:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2b6a:	f811 3b01 	ldrb.w	r3, [r1], #1
    2b6e:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2b70:	6883      	ldr	r3, [r0, #8]
    2b72:	f013 0f02 	tst.w	r3, #2
    2b76:	d0fb      	beq.n	2b70 <spi_send_block+0xa>
	while (count){
    2b78:	428a      	cmp	r2, r1
    2b7a:	d1f6      	bne.n	2b6a <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2b7c:	6883      	ldr	r3, [r0, #8]
    2b7e:	f013 0f80 	tst.w	r3, #128	; 0x80
    2b82:	d1fb      	bne.n	2b7c <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    2b84:	68c3      	ldr	r3, [r0, #12]
    2b86:	4770      	bx	lr

00002b88 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2b88:	b16a      	cbz	r2, 2ba6 <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2b8a:	b410      	push	{r4}
    2b8c:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2b8e:	2400      	movs	r4, #0
    2b90:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    2b92:	6883      	ldr	r3, [r0, #8]
    2b94:	f013 0f01 	tst.w	r3, #1
    2b98:	d0fb      	beq.n	2b92 <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2b9a:	68c3      	ldr	r3, [r0, #12]
    2b9c:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2ba0:	428a      	cmp	r2, r1
    2ba2:	d1f5      	bne.n	2b90 <spi_receive_block+0x8>
		count--;
	}
}
    2ba4:	bc10      	pop	{r4}
    2ba6:	4770      	bx	lr

00002ba8 <reset_mcu>:
	_reset_mcu();
    2ba8:	4a01      	ldr	r2, [pc, #4]	; (2bb0 <reset_mcu+0x8>)
    2baa:	4b02      	ldr	r3, [pc, #8]	; (2bb4 <reset_mcu+0xc>)
    2bac:	601a      	str	r2, [r3, #0]
    2bae:	bf00      	nop
    2bb0:	05fa0004 	.word	0x05fa0004
    2bb4:	e000ed0c 	.word	0xe000ed0c

00002bb8 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2bb8:	b508      	push	{r3, lr}
    2bba:	460c      	mov	r4, r1
	print(msg);
    2bbc:	f000 f962 	bl	2e84 <print>
	print("\nat address ");
    2bc0:	4813      	ldr	r0, [pc, #76]	; (2c10 <print_fault+0x58>)
    2bc2:	f000 f95f 	bl	2e84 <print>
	if (adr) {
    2bc6:	b9ec      	cbnz	r4, 2c04 <print_fault+0x4c>
	put_char(CR);
    2bc8:	200d      	movs	r0, #13
    2bca:	f000 f8bd 	bl	2d48 <put_char>
	print("\nUFSR=");
    2bce:	4811      	ldr	r0, [pc, #68]	; (2c14 <print_fault+0x5c>)
    2bd0:	f000 f958 	bl	2e84 <print>
	print_int(CFSR->fsr.usageFalt,16);
    2bd4:	4c10      	ldr	r4, [pc, #64]	; (2c18 <print_fault+0x60>)
    2bd6:	6820      	ldr	r0, [r4, #0]
    2bd8:	2110      	movs	r1, #16
    2bda:	40c8      	lsrs	r0, r1
    2bdc:	f000 f96d 	bl	2eba <print_int>
	print("\nBFSR=");
    2be0:	480e      	ldr	r0, [pc, #56]	; (2c1c <print_fault+0x64>)
    2be2:	f000 f94f 	bl	2e84 <print>
	print_int(CFSR->fsr.busFault,16);
    2be6:	6820      	ldr	r0, [r4, #0]
    2be8:	2110      	movs	r1, #16
    2bea:	f3c0 2007 	ubfx	r0, r0, #8, #8
    2bee:	f000 f964 	bl	2eba <print_int>
	print("\nMMFSR=");
    2bf2:	480b      	ldr	r0, [pc, #44]	; (2c20 <print_fault+0x68>)
    2bf4:	f000 f946 	bl	2e84 <print>
	print_int(CFSR->fsr.mmFault,16);
    2bf8:	6820      	ldr	r0, [r4, #0]
    2bfa:	2110      	movs	r1, #16
    2bfc:	b2c0      	uxtb	r0, r0
    2bfe:	f000 f95c 	bl	2eba <print_int>
    2c02:	e7fe      	b.n	2c02 <print_fault+0x4a>
		print_int(adr,16);
    2c04:	2110      	movs	r1, #16
    2c06:	4620      	mov	r0, r4
    2c08:	f000 f957 	bl	2eba <print_int>
    2c0c:	e7dc      	b.n	2bc8 <print_fault+0x10>
    2c0e:	bf00      	nop
    2c10:	00004064 	.word	0x00004064
    2c14:	00004074 	.word	0x00004074
    2c18:	e000ed28 	.word	0xe000ed28
    2c1c:	0000407c 	.word	0x0000407c
    2c20:	00004084 	.word	0x00004084

00002c24 <draw_char>:
	}else{
		usart_putc(CHN1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    2c24:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2c28:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2c2a:	18cb      	adds	r3, r1, r3
    2c2c:	9301      	str	r3, [sp, #4]
    2c2e:	4299      	cmp	r1, r3
    2c30:	da20      	bge.n	2c74 <draw_char+0x50>
    2c32:	4683      	mov	fp, r0
    2c34:	460e      	mov	r6, r1
    2c36:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2c38:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2c3c:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c3e:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2c7c <draw_char+0x58>
		byte=*glyph++;
    2c42:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    2c46:	45bb      	cmp	fp, r7
    2c48:	da10      	bge.n	2c6c <draw_char+0x48>
    2c4a:	465c      	mov	r4, fp
    2c4c:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2c4e:	ea18 0f05 	tst.w	r8, r5
    2c52:	bf14      	ite	ne
    2c54:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2c58:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2c5c:	4631      	mov	r1, r6
    2c5e:	4620      	mov	r0, r4
    2c60:	f7fe fd26 	bl	16b0 <gfx_plot>
			mask>>=1;
    2c64:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    2c66:	3401      	adds	r4, #1
    2c68:	42bc      	cmp	r4, r7
    2c6a:	d1f0      	bne.n	2c4e <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2c6c:	3601      	adds	r6, #1
    2c6e:	9b01      	ldr	r3, [sp, #4]
    2c70:	429e      	cmp	r6, r3
    2c72:	d1e6      	bne.n	2c42 <draw_char+0x1e>
		}
	}
}
    2c74:	b003      	add	sp, #12
    2c76:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2c7a:	bf00      	nop
    2c7c:	20000204 	.word	0x20000204

00002c80 <font_color>:
	text_colors[FG]=color&0xf;
    2c80:	f000 000f 	and.w	r0, r0, #15
    2c84:	4b01      	ldr	r3, [pc, #4]	; (2c8c <font_color+0xc>)
    2c86:	7058      	strb	r0, [r3, #1]
    2c88:	4770      	bx	lr
    2c8a:	bf00      	nop
    2c8c:	20000204 	.word	0x20000204

00002c90 <bg_color>:
	text_colors[BG]=color&0xf;
    2c90:	f000 000f 	and.w	r0, r0, #15
    2c94:	4b01      	ldr	r3, [pc, #4]	; (2c9c <bg_color+0xc>)
    2c96:	7018      	strb	r0, [r3, #0]
    2c98:	4770      	bx	lr
    2c9a:	bf00      	nop
    2c9c:	20000204 	.word	0x20000204

00002ca0 <select_font>:
	font=font_id;
    2ca0:	4b01      	ldr	r3, [pc, #4]	; (2ca8 <select_font+0x8>)
    2ca2:	7098      	strb	r0, [r3, #2]
    2ca4:	4770      	bx	lr
    2ca6:	bf00      	nop
    2ca8:	20000204 	.word	0x20000204

00002cac <get_font>:
}
    2cac:	4b01      	ldr	r3, [pc, #4]	; (2cb4 <get_font+0x8>)
    2cae:	7898      	ldrb	r0, [r3, #2]
    2cb0:	4770      	bx	lr
    2cb2:	bf00      	nop
    2cb4:	20000204 	.word	0x20000204

00002cb8 <new_line>:
void new_line(){
    2cb8:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2cba:	4b21      	ldr	r3, [pc, #132]	; (2d40 <new_line+0x88>)
    2cbc:	781b      	ldrb	r3, [r3, #0]
    2cbe:	2b00      	cmp	r3, #0
    2cc0:	d138      	bne.n	2d34 <new_line+0x7c>
		xpos=0;
    2cc2:	2200      	movs	r2, #0
    2cc4:	4b1e      	ldr	r3, [pc, #120]	; (2d40 <new_line+0x88>)
    2cc6:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    2cc8:	f000 fbf4 	bl	34b4 <get_video_params>
		switch (font){
    2ccc:	4b1d      	ldr	r3, [pc, #116]	; (2d44 <new_line+0x8c>)
    2cce:	789b      	ldrb	r3, [r3, #2]
    2cd0:	2b01      	cmp	r3, #1
    2cd2:	d011      	beq.n	2cf8 <new_line+0x40>
    2cd4:	b113      	cbz	r3, 2cdc <new_line+0x24>
    2cd6:	2b02      	cmp	r3, #2
    2cd8:	d01d      	beq.n	2d16 <new_line+0x5e>
    2cda:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    2cdc:	4b18      	ldr	r3, [pc, #96]	; (2d40 <new_line+0x88>)
    2cde:	789b      	ldrb	r3, [r3, #2]
    2ce0:	1d99      	adds	r1, r3, #6
    2ce2:	89c2      	ldrh	r2, [r0, #14]
    2ce4:	3a05      	subs	r2, #5
    2ce6:	4291      	cmp	r1, r2
    2ce8:	dc02      	bgt.n	2cf0 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    2cea:	4a15      	ldr	r2, [pc, #84]	; (2d40 <new_line+0x88>)
    2cec:	7091      	strb	r1, [r2, #2]
    2cee:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    2cf0:	2006      	movs	r0, #6
    2cf2:	f7fe fd1b 	bl	172c <gfx_scroll_up>
    2cf6:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    2cf8:	4b11      	ldr	r3, [pc, #68]	; (2d40 <new_line+0x88>)
    2cfa:	789b      	ldrb	r3, [r3, #2]
    2cfc:	f103 010a 	add.w	r1, r3, #10
    2d00:	89c2      	ldrh	r2, [r0, #14]
    2d02:	3a09      	subs	r2, #9
    2d04:	4291      	cmp	r1, r2
    2d06:	dc02      	bgt.n	2d0e <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    2d08:	4a0d      	ldr	r2, [pc, #52]	; (2d40 <new_line+0x88>)
    2d0a:	7091      	strb	r1, [r2, #2]
    2d0c:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    2d0e:	200a      	movs	r0, #10
    2d10:	f7fe fd0c 	bl	172c <gfx_scroll_up>
    2d14:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    2d16:	4b0a      	ldr	r3, [pc, #40]	; (2d40 <new_line+0x88>)
    2d18:	789b      	ldrb	r3, [r3, #2]
    2d1a:	f103 0108 	add.w	r1, r3, #8
    2d1e:	89c2      	ldrh	r2, [r0, #14]
    2d20:	3a07      	subs	r2, #7
    2d22:	4291      	cmp	r1, r2
    2d24:	dc02      	bgt.n	2d2c <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    2d26:	4a06      	ldr	r2, [pc, #24]	; (2d40 <new_line+0x88>)
    2d28:	7091      	strb	r1, [r2, #2]
    2d2a:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2d2c:	2008      	movs	r0, #8
    2d2e:	f7fe fcfd 	bl	172c <gfx_scroll_up>
    2d32:	bd08      	pop	{r3, pc}
		usart_putc(CHN1,'\n');
    2d34:	210a      	movs	r1, #10
    2d36:	2000      	movs	r0, #0
    2d38:	f000 fd2a 	bl	3790 <usart_putc>
    2d3c:	bd08      	pop	{r3, pc}
    2d3e:	bf00      	nop
    2d40:	2000069c 	.word	0x2000069c
    2d44:	20000204 	.word	0x20000204

00002d48 <put_char>:

void put_char(uint8_t c){
    2d48:	b530      	push	{r4, r5, lr}
    2d4a:	b083      	sub	sp, #12
	if (console==LOCAL){
    2d4c:	4b2e      	ldr	r3, [pc, #184]	; (2e08 <put_char+0xc0>)
    2d4e:	781b      	ldrb	r3, [r3, #0]
    2d50:	2b00      	cmp	r3, #0
    2d52:	d153      	bne.n	2dfc <put_char+0xb4>
		switch(font){
    2d54:	4b2d      	ldr	r3, [pc, #180]	; (2e0c <put_char+0xc4>)
    2d56:	789b      	ldrb	r3, [r3, #2]
    2d58:	2b01      	cmp	r3, #1
    2d5a:	d036      	beq.n	2dca <put_char+0x82>
    2d5c:	b1e3      	cbz	r3, 2d98 <put_char+0x50>
    2d5e:	2b02      	cmp	r3, #2
    2d60:	d150      	bne.n	2e04 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    2d62:	f1a0 0320 	sub.w	r3, r0, #32
    2d66:	b2db      	uxtb	r3, r3
    2d68:	2b64      	cmp	r3, #100	; 0x64
    2d6a:	d84b      	bhi.n	2e04 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2d6c:	4c26      	ldr	r4, [pc, #152]	; (2e08 <put_char+0xc0>)
    2d6e:	78a1      	ldrb	r1, [r4, #2]
    2d70:	7865      	ldrb	r5, [r4, #1]
    2d72:	3820      	subs	r0, #32
    2d74:	4b26      	ldr	r3, [pc, #152]	; (2e10 <put_char+0xc8>)
    2d76:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2d7a:	9300      	str	r3, [sp, #0]
    2d7c:	2308      	movs	r3, #8
    2d7e:	2206      	movs	r2, #6
    2d80:	4628      	mov	r0, r5
    2d82:	f7ff ff4f 	bl	2c24 <draw_char>
				xpos+=CHAR_WIDTH;
    2d86:	7863      	ldrb	r3, [r4, #1]
    2d88:	3306      	adds	r3, #6
    2d8a:	b2db      	uxtb	r3, r3
    2d8c:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    2d8e:	2baf      	cmp	r3, #175	; 0xaf
    2d90:	d938      	bls.n	2e04 <put_char+0xbc>
					new_line();
    2d92:	f7ff ff91 	bl	2cb8 <new_line>
    2d96:	e035      	b.n	2e04 <put_char+0xbc>
			if (c<16){
    2d98:	280f      	cmp	r0, #15
    2d9a:	d833      	bhi.n	2e04 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2d9c:	4c1a      	ldr	r4, [pc, #104]	; (2e08 <put_char+0xc0>)
    2d9e:	78a1      	ldrb	r1, [r4, #2]
    2da0:	7865      	ldrb	r5, [r4, #1]
    2da2:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2da6:	4b1b      	ldr	r3, [pc, #108]	; (2e14 <put_char+0xcc>)
    2da8:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dac:	9300      	str	r3, [sp, #0]
    2dae:	2306      	movs	r3, #6
    2db0:	2204      	movs	r2, #4
    2db2:	4628      	mov	r0, r5
    2db4:	f7ff ff36 	bl	2c24 <draw_char>
				xpos+=SHEX_WIDTH;
    2db8:	7863      	ldrb	r3, [r4, #1]
    2dba:	3304      	adds	r3, #4
    2dbc:	b2db      	uxtb	r3, r3
    2dbe:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    2dc0:	2bb1      	cmp	r3, #177	; 0xb1
    2dc2:	d91f      	bls.n	2e04 <put_char+0xbc>
					new_line();
    2dc4:	f7ff ff78 	bl	2cb8 <new_line>
    2dc8:	e01c      	b.n	2e04 <put_char+0xbc>
			if (c<16){
    2dca:	280f      	cmp	r0, #15
    2dcc:	d81a      	bhi.n	2e04 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    2dce:	4c0e      	ldr	r4, [pc, #56]	; (2e08 <put_char+0xc0>)
    2dd0:	78a1      	ldrb	r1, [r4, #2]
    2dd2:	7865      	ldrb	r5, [r4, #1]
    2dd4:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2dd8:	4b0f      	ldr	r3, [pc, #60]	; (2e18 <put_char+0xd0>)
    2dda:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2dde:	9300      	str	r3, [sp, #0]
    2de0:	230a      	movs	r3, #10
    2de2:	2208      	movs	r2, #8
    2de4:	4628      	mov	r0, r5
    2de6:	f7ff ff1d 	bl	2c24 <draw_char>
				xpos+=LHEX_WIDTH;
    2dea:	7863      	ldrb	r3, [r4, #1]
    2dec:	3308      	adds	r3, #8
    2dee:	b2db      	uxtb	r3, r3
    2df0:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    2df2:	2bad      	cmp	r3, #173	; 0xad
    2df4:	d906      	bls.n	2e04 <put_char+0xbc>
					new_line();
    2df6:	f7ff ff5f 	bl	2cb8 <new_line>
    2dfa:	e003      	b.n	2e04 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(CHN1,c);
    2dfc:	4601      	mov	r1, r0
    2dfe:	2000      	movs	r0, #0
    2e00:	f000 fcc6 	bl	3790 <usart_putc>
	}
}
    2e04:	b003      	add	sp, #12
    2e06:	bd30      	pop	{r4, r5, pc}
    2e08:	2000069c 	.word	0x2000069c
    2e0c:	20000204 	.word	0x20000204
    2e10:	000038e0 	.word	0x000038e0
    2e14:	00003ca8 	.word	0x00003ca8
    2e18:	00003c08 	.word	0x00003c08

00002e1c <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    2e1c:	4b01      	ldr	r3, [pc, #4]	; (2e24 <set_cursor+0x8>)
    2e1e:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2e20:	7099      	strb	r1, [r3, #2]
    2e22:	4770      	bx	lr
    2e24:	2000069c 	.word	0x2000069c

00002e28 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2e28:	4b03      	ldr	r3, [pc, #12]	; (2e38 <get_cursor+0x10>)
    2e2a:	785a      	ldrb	r2, [r3, #1]
    2e2c:	7898      	ldrb	r0, [r3, #2]
    2e2e:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2e32:	b280      	uxth	r0, r0
    2e34:	4770      	bx	lr
    2e36:	bf00      	nop
    2e38:	2000069c 	.word	0x2000069c

00002e3c <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    2e3c:	4b0f      	ldr	r3, [pc, #60]	; (2e7c <cursor_left+0x40>)
    2e3e:	789b      	ldrb	r3, [r3, #2]
    2e40:	2b01      	cmp	r3, #1
    2e42:	d00b      	beq.n	2e5c <cursor_left+0x20>
    2e44:	b113      	cbz	r3, 2e4c <cursor_left+0x10>
    2e46:	2b02      	cmp	r3, #2
    2e48:	d010      	beq.n	2e6c <cursor_left+0x30>
    2e4a:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    2e4c:	4b0c      	ldr	r3, [pc, #48]	; (2e80 <cursor_left+0x44>)
    2e4e:	785b      	ldrb	r3, [r3, #1]
    2e50:	2b04      	cmp	r3, #4
    2e52:	d412      	bmi.n	2e7a <cursor_left+0x3e>
    2e54:	3b04      	subs	r3, #4
    2e56:	4a0a      	ldr	r2, [pc, #40]	; (2e80 <cursor_left+0x44>)
    2e58:	7053      	strb	r3, [r2, #1]
    2e5a:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    2e5c:	4b08      	ldr	r3, [pc, #32]	; (2e80 <cursor_left+0x44>)
    2e5e:	785b      	ldrb	r3, [r3, #1]
    2e60:	2b08      	cmp	r3, #8
    2e62:	d40a      	bmi.n	2e7a <cursor_left+0x3e>
    2e64:	3b08      	subs	r3, #8
    2e66:	4a06      	ldr	r2, [pc, #24]	; (2e80 <cursor_left+0x44>)
    2e68:	7053      	strb	r3, [r2, #1]
    2e6a:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    2e6c:	4b04      	ldr	r3, [pc, #16]	; (2e80 <cursor_left+0x44>)
    2e6e:	785b      	ldrb	r3, [r3, #1]
    2e70:	2b06      	cmp	r3, #6
    2e72:	d402      	bmi.n	2e7a <cursor_left+0x3e>
    2e74:	3b06      	subs	r3, #6
    2e76:	4a02      	ldr	r2, [pc, #8]	; (2e80 <cursor_left+0x44>)
    2e78:	7053      	strb	r3, [r2, #1]
    2e7a:	4770      	bx	lr
    2e7c:	20000204 	.word	0x20000204
    2e80:	2000069c 	.word	0x2000069c

00002e84 <print>:
void print(const char* str){
    2e84:	b510      	push	{r4, lr}
    2e86:	4604      	mov	r4, r0
    while ((c=*str++)){
    2e88:	e001      	b.n	2e8e <print+0xa>
            new_line();
    2e8a:	f7ff ff15 	bl	2cb8 <new_line>
    while ((c=*str++)){
    2e8e:	f814 0b01 	ldrb.w	r0, [r4], #1
    2e92:	b158      	cbz	r0, 2eac <print+0x28>
        switch(c){
    2e94:	280a      	cmp	r0, #10
    2e96:	d0f8      	beq.n	2e8a <print+0x6>
    2e98:	280d      	cmp	r0, #13
    2e9a:	d0f6      	beq.n	2e8a <print+0x6>
    2e9c:	2808      	cmp	r0, #8
    2e9e:	d002      	beq.n	2ea6 <print+0x22>
            put_char(c);
    2ea0:	f7ff ff52 	bl	2d48 <put_char>
    2ea4:	e7f3      	b.n	2e8e <print+0xa>
            cursor_left();    
    2ea6:	f7ff ffc9 	bl	2e3c <cursor_left>
            break;
    2eaa:	e7f0      	b.n	2e8e <print+0xa>
}
    2eac:	bd10      	pop	{r4, pc}

00002eae <println>:
void println(const char *text){
    2eae:	b508      	push	{r3, lr}
	print(text);
    2eb0:	f7ff ffe8 	bl	2e84 <print>
	new_line();
    2eb4:	f7ff ff00 	bl	2cb8 <new_line>
    2eb8:	bd08      	pop	{r3, pc}

00002eba <print_int>:
void print_int(int i,uint8_t base){
    2eba:	b530      	push	{r4, r5, lr}
    2ebc:	b085      	sub	sp, #20
    fmt[15]=0;
    2ebe:	2300      	movs	r3, #0
    2ec0:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    2ec4:	2320      	movs	r3, #32
    2ec6:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    2eca:	1e02      	subs	r2, r0, #0
        i=-i;
    2ecc:	bfba      	itte	lt
    2ece:	4252      	neglt	r2, r2
        sign=1;
    2ed0:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    2ed2:	2500      	movge	r5, #0
    while (idx>1 && i){
    2ed4:	b1aa      	cbz	r2, 2f02 <print_int+0x48>
    2ed6:	f10d 040e 	add.w	r4, sp, #14
    2eda:	200e      	movs	r0, #14
        d=i%base;
    2edc:	fb92 f3f1 	sdiv	r3, r2, r1
    2ee0:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    2ee4:	2b09      	cmp	r3, #9
    2ee6:	bfc8      	it	gt
    2ee8:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    2eea:	3801      	subs	r0, #1
    2eec:	3330      	adds	r3, #48	; 0x30
    2eee:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    2ef2:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    2ef6:	2801      	cmp	r0, #1
    2ef8:	d007      	beq.n	2f0a <print_int+0x50>
    2efa:	2a00      	cmp	r2, #0
    2efc:	d1ee      	bne.n	2edc <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    2efe:	280e      	cmp	r0, #14
    2f00:	d103      	bne.n	2f0a <print_int+0x50>
    2f02:	2330      	movs	r3, #48	; 0x30
    2f04:	f88d 300d 	strb.w	r3, [sp, #13]
    2f08:	200d      	movs	r0, #13
    if (base==10 && sign){
    2f0a:	290a      	cmp	r1, #10
    2f0c:	d006      	beq.n	2f1c <print_int+0x62>
    }else if (base==16){
    2f0e:	2910      	cmp	r1, #16
    2f10:	d00d      	beq.n	2f2e <print_int+0x74>
    print(&fmt[idx]);
    2f12:	4468      	add	r0, sp
    2f14:	f7ff ffb6 	bl	2e84 <print>
}
    2f18:	b005      	add	sp, #20
    2f1a:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    2f1c:	2d00      	cmp	r5, #0
    2f1e:	d0f8      	beq.n	2f12 <print_int+0x58>
        fmt[--idx]='-';
    2f20:	3801      	subs	r0, #1
    2f22:	ab04      	add	r3, sp, #16
    2f24:	4403      	add	r3, r0
    2f26:	222d      	movs	r2, #45	; 0x2d
    2f28:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f2c:	e7f1      	b.n	2f12 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    2f2e:	f010 0f01 	tst.w	r0, #1
    2f32:	d005      	beq.n	2f40 <print_int+0x86>
    2f34:	3801      	subs	r0, #1
    2f36:	ab04      	add	r3, sp, #16
    2f38:	4403      	add	r3, r0
    2f3a:	2230      	movs	r2, #48	; 0x30
    2f3c:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2f40:	3801      	subs	r0, #1
    2f42:	ab04      	add	r3, sp, #16
    2f44:	4403      	add	r3, r0
    2f46:	2224      	movs	r2, #36	; 0x24
    2f48:	f803 2c10 	strb.w	r2, [r3, #-16]
    2f4c:	e7e1      	b.n	2f12 <print_int+0x58>

00002f4e <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    2f4e:	b508      	push	{r3, lr}
	print("press button");
    2f50:	4801      	ldr	r0, [pc, #4]	; (2f58 <prompt_btn+0xa>)
    2f52:	f7ff ff97 	bl	2e84 <print>
    2f56:	bd08      	pop	{r3, pc}
    2f58:	000040d0 	.word	0x000040d0

00002f5c <clear_screen>:
}

void clear_screen(){
    2f5c:	b508      	push	{r3, lr}
	if (console==LOCAL){
    2f5e:	4b07      	ldr	r3, [pc, #28]	; (2f7c <clear_screen+0x20>)
    2f60:	781b      	ldrb	r3, [r3, #0]
    2f62:	b123      	cbz	r3, 2f6e <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(CHN1,FF);
    2f64:	210c      	movs	r1, #12
    2f66:	2000      	movs	r0, #0
    2f68:	f000 fc12 	bl	3790 <usart_putc>
    2f6c:	bd08      	pop	{r3, pc}
		gfx_cls();
    2f6e:	f7fe fbc9 	bl	1704 <gfx_cls>
		xpos=0;
    2f72:	4b02      	ldr	r3, [pc, #8]	; (2f7c <clear_screen+0x20>)
    2f74:	2200      	movs	r2, #0
    2f76:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2f78:	709a      	strb	r2, [r3, #2]
    2f7a:	bd08      	pop	{r3, pc}
    2f7c:	2000069c 	.word	0x2000069c

00002f80 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2f80:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2f82:	2800      	cmp	r0, #0
    2f84:	bf14      	ite	ne
    2f86:	260f      	movne	r6, #15
    2f88:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2f8a:	4b09      	ldr	r3, [pc, #36]	; (2fb0 <show_cursor+0x30>)
    2f8c:	785c      	ldrb	r4, [r3, #1]
    2f8e:	1da3      	adds	r3, r4, #6
    2f90:	429c      	cmp	r4, r3
    2f92:	da0b      	bge.n	2fac <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2f94:	4d06      	ldr	r5, [pc, #24]	; (2fb0 <show_cursor+0x30>)
    2f96:	78a9      	ldrb	r1, [r5, #2]
    2f98:	4632      	mov	r2, r6
    2f9a:	3107      	adds	r1, #7
    2f9c:	4620      	mov	r0, r4
    2f9e:	f7fe fb87 	bl	16b0 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2fa2:	3401      	adds	r4, #1
    2fa4:	786b      	ldrb	r3, [r5, #1]
    2fa6:	3306      	adds	r3, #6
    2fa8:	42a3      	cmp	r3, r4
    2faa:	dcf4      	bgt.n	2f96 <show_cursor+0x16>
    2fac:	bd70      	pop	{r4, r5, r6, pc}
    2fae:	bf00      	nop
    2fb0:	2000069c 	.word	0x2000069c

00002fb4 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    2fb4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    2fb8:	f000 fa7c 	bl	34b4 <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fbc:	4b0c      	ldr	r3, [pc, #48]	; (2ff0 <clear_line+0x3c>)
    2fbe:	789c      	ldrb	r4, [r3, #2]
    2fc0:	f104 0308 	add.w	r3, r4, #8
    2fc4:	429c      	cmp	r4, r3
    2fc6:	da10      	bge.n	2fea <clear_line+0x36>
    2fc8:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fca:	f8df 8028 	ldr.w	r8, [pc, #40]	; 2ff4 <clear_line+0x40>
    2fce:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fd0:	4e07      	ldr	r6, [pc, #28]	; (2ff0 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    2fd2:	7a28      	ldrb	r0, [r5, #8]
    2fd4:	463a      	mov	r2, r7
    2fd6:	4601      	mov	r1, r0
    2fd8:	fb04 8000 	mla	r0, r4, r0, r8
    2fdc:	f7fe fa33 	bl	1446 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    2fe0:	3401      	adds	r4, #1
    2fe2:	78b3      	ldrb	r3, [r6, #2]
    2fe4:	3308      	adds	r3, #8
    2fe6:	42a3      	cmp	r3, r4
    2fe8:	dcf3      	bgt.n	2fd2 <clear_line+0x1e>
    2fea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2fee:	bf00      	nop
    2ff0:	2000069c 	.word	0x2000069c
    2ff4:	20002714 	.word	0x20002714

00002ff8 <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    2ff8:	4b01      	ldr	r3, [pc, #4]	; (3000 <select_console+0x8>)
    2ffa:	7018      	strb	r0, [r3, #0]
    2ffc:	4770      	bx	lr
    2ffe:	bf00      	nop
    3000:	2000069c 	.word	0x2000069c

00003004 <get_char>:
}

//read a character from serial port
char get_char(){
    3004:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(CHN1)));
    3006:	2400      	movs	r4, #0
    3008:	4620      	mov	r0, r4
    300a:	f000 fb8f 	bl	372c <usart_getc>
    300e:	2800      	cmp	r0, #0
    3010:	d0fa      	beq.n	3008 <get_char+0x4>
	return c;
}
    3012:	bd10      	pop	{r4, pc}

00003014 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    3014:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    3018:	4c31      	ldr	r4, [pc, #196]	; (30e0 <tvout_init+0xcc>)
    301a:	4b32      	ldr	r3, [pc, #200]	; (30e4 <tvout_init+0xd0>)
    301c:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    301e:	4a32      	ldr	r2, [pc, #200]	; (30e8 <tvout_init+0xd4>)
    3020:	4b32      	ldr	r3, [pc, #200]	; (30ec <tvout_init+0xd8>)
    3022:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    3024:	220a      	movs	r2, #10
    3026:	2108      	movs	r1, #8
    3028:	4620      	mov	r0, r4
    302a:	f7fe fab5 	bl	1598 <config_pin>
    PORTA->ODR=0;
    302e:	2500      	movs	r5, #0
    3030:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    3032:	4e2f      	ldr	r6, [pc, #188]	; (30f0 <tvout_init+0xdc>)
    3034:	69b3      	ldr	r3, [r6, #24]
    3036:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    303a:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    303c:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    3040:	f04f 0878 	mov.w	r8, #120	; 0x78
    3044:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    3048:	2301      	movs	r3, #1
    304a:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    304c:	2784      	movs	r7, #132	; 0x84
    304e:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    3050:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3054:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    3056:	f44f 73a8 	mov.w	r3, #336	; 0x150
    305a:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    305c:	f240 1365 	movw	r3, #357	; 0x165
    3060:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    3062:	6963      	ldr	r3, [r4, #20]
    3064:	f043 0301 	orr.w	r3, r3, #1
    3068:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    306a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    306e:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    3070:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    3072:	68e3      	ldr	r3, [r4, #12]
    3074:	f043 0301 	orr.w	r3, r3, #1
    3078:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    307a:	4629      	mov	r1, r5
    307c:	2019      	movs	r0, #25
    307e:	f7ff f867 	bl	2150 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    3082:	4629      	mov	r1, r5
    3084:	201b      	movs	r0, #27
    3086:	f7ff f863 	bl	2150 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    308a:	2019      	movs	r0, #25
    308c:	f7ff f800 	bl	2090 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    3090:	201b      	movs	r0, #27
    3092:	f7fe fffd 	bl	2090 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    3096:	6823      	ldr	r3, [r4, #0]
    3098:	f043 0301 	orr.w	r3, r3, #1
    309c:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    309e:	220a      	movs	r2, #10
    30a0:	4629      	mov	r1, r5
    30a2:	4814      	ldr	r0, [pc, #80]	; (30f4 <tvout_init+0xe0>)
    30a4:	f7fe fa78 	bl	1598 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    30a8:	69f3      	ldr	r3, [r6, #28]
    30aa:	f043 0302 	orr.w	r3, r3, #2
    30ae:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    30b0:	4b11      	ldr	r3, [pc, #68]	; (30f8 <tvout_init+0xe4>)
    30b2:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    30b6:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    30b8:	2213      	movs	r2, #19
    30ba:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    30bc:	220a      	movs	r2, #10
    30be:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    30c0:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    30c2:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    30c6:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    30c8:	695a      	ldr	r2, [r3, #20]
    30ca:	f042 0201 	orr.w	r2, r2, #1
    30ce:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    30d0:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    30d2:	681a      	ldr	r2, [r3, #0]
    30d4:	f042 0201 	orr.w	r2, r2, #1
    30d8:	601a      	str	r2, [r3, #0]
    30da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    30de:	bf00      	nop
    30e0:	40010800 	.word	0x40010800
    30e4:	88883333 	.word	0x88883333
    30e8:	84484444 	.word	0x84484444
    30ec:	40010804 	.word	0x40010804
    30f0:	40021000 	.word	0x40021000
    30f4:	40010c00 	.word	0x40010c00
    30f8:	40000400 	.word	0x40000400

000030fc <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    30fc:	4668      	mov	r0, sp
    30fe:	f020 0107 	bic.w	r1, r0, #7
    3102:	468d      	mov	sp, r1
    3104:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    3106:	4a2f      	ldr	r2, [pc, #188]	; (31c4 <TV_OUT_handler+0xc8>)
    3108:	6a13      	ldr	r3, [r2, #32]
    310a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    310e:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    3110:	492d      	ldr	r1, [pc, #180]	; (31c8 <TV_OUT_handler+0xcc>)
    3112:	f240 2209 	movw	r2, #521	; 0x209
    3116:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3118:	4293      	cmp	r3, r2
    311a:	d9fc      	bls.n	3116 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    311c:	4a29      	ldr	r2, [pc, #164]	; (31c4 <TV_OUT_handler+0xc8>)
    311e:	6a13      	ldr	r3, [r2, #32]
    3120:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3124:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    3126:	4b29      	ldr	r3, [pc, #164]	; (31cc <TV_OUT_handler+0xd0>)
    3128:	881d      	ldrh	r5, [r3, #0]
    312a:	b2ad      	uxth	r5, r5
    312c:	4b28      	ldr	r3, [pc, #160]	; (31d0 <TV_OUT_handler+0xd4>)
    312e:	7818      	ldrb	r0, [r3, #0]
    3130:	785a      	ldrb	r2, [r3, #1]
    3132:	fb95 f5f2 	sdiv	r5, r5, r2
    3136:	4a27      	ldr	r2, [pc, #156]	; (31d4 <TV_OUT_handler+0xd8>)
    3138:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    313c:	8859      	ldrh	r1, [r3, #2]
    313e:	4a22      	ldr	r2, [pc, #136]	; (31c8 <TV_OUT_handler+0xcc>)
    3140:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3142:	428b      	cmp	r3, r1
    3144:	d3fc      	bcc.n	3140 <TV_OUT_handler+0x44>
    _jitter_cancel();
    3146:	4b24      	ldr	r3, [pc, #144]	; (31d8 <TV_OUT_handler+0xdc>)
    3148:	461a      	mov	r2, r3
    314a:	6812      	ldr	r2, [r2, #0]
    314c:	f002 0207 	and.w	r2, r2, #7
    3150:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3154:	4497      	add	pc, r2
    3156:	bf00      	nop
    3158:	bf00      	nop
    315a:	bf00      	nop
    315c:	bf00      	nop
    315e:	bf00      	nop
    3160:	bf00      	nop
    3162:	bf00      	nop
    3164:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    3166:	4a17      	ldr	r2, [pc, #92]	; (31c4 <TV_OUT_handler+0xc8>)
    3168:	6a13      	ldr	r3, [r2, #32]
    316a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    316e:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    3170:	b1b0      	cbz	r0, 31a0 <TV_OUT_handler+0xa4>
    3172:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    3174:	4819      	ldr	r0, [pc, #100]	; (31dc <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    3176:	4916      	ldr	r1, [pc, #88]	; (31d0 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    3178:	781a      	ldrb	r2, [r3, #0]
    317a:	0912      	lsrs	r2, r2, #4
    317c:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    317e:	790c      	ldrb	r4, [r1, #4]
    3180:	4622      	mov	r2, r4
    3182:	3a01      	subs	r2, #1
    3184:	d1fd      	bne.n	3182 <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    3186:	f813 2b01 	ldrb.w	r2, [r3], #1
    318a:	f002 020f 	and.w	r2, r2, #15
    318e:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    3190:	790c      	ldrb	r4, [r1, #4]
    3192:	4622      	mov	r2, r4
    3194:	3a01      	subs	r2, #1
    3196:	d1fd      	bne.n	3194 <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    3198:	1b5c      	subs	r4, r3, r5
    319a:	780a      	ldrb	r2, [r1, #0]
    319c:	4294      	cmp	r4, r2
    319e:	d3eb      	bcc.n	3178 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    31a0:	2200      	movs	r2, #0
    31a2:	4b0f      	ldr	r3, [pc, #60]	; (31e0 <TV_OUT_handler+0xe4>)
    31a4:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    31a6:	4a07      	ldr	r2, [pc, #28]	; (31c4 <TV_OUT_handler+0xc8>)
    31a8:	6a13      	ldr	r3, [r2, #32]
    31aa:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    31ae:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    31b0:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    31b4:	6913      	ldr	r3, [r2, #16]
    31b6:	f023 0304 	bic.w	r3, r3, #4
    31ba:	6113      	str	r3, [r2, #16]
}
    31bc:	bc31      	pop	{r0, r4, r5}
    31be:	4685      	mov	sp, r0
    31c0:	4770      	bx	lr
    31c2:	bf00      	nop
    31c4:	40000400 	.word	0x40000400
    31c8:	40012c00 	.word	0x40012c00
    31cc:	200006a0 	.word	0x200006a0
    31d0:	20000208 	.word	0x20000208
    31d4:	20002714 	.word	0x20002714
    31d8:	40012c24 	.word	0x40012c24
    31dc:	4001080c 	.word	0x4001080c
    31e0:	40010800 	.word	0x40010800

000031e4 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    31e4:	4668      	mov	r0, sp
    31e6:	f020 0107 	bic.w	r1, r0, #7
    31ea:	468d      	mov	sp, r1
    31ec:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    31ee:	4a8e      	ldr	r2, [pc, #568]	; (3428 <TV_SYNC_handler+0x244>)
    31f0:	8853      	ldrh	r3, [r2, #2]
    31f2:	3301      	adds	r3, #1
    31f4:	b29b      	uxth	r3, r3
    31f6:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    31f8:	498c      	ldr	r1, [pc, #560]	; (342c <TV_SYNC_handler+0x248>)
    31fa:	680b      	ldr	r3, [r1, #0]
    31fc:	3301      	adds	r3, #1
    31fe:	600b      	str	r3, [r1, #0]
    switch (task){
    3200:	8893      	ldrh	r3, [r2, #4]
    3202:	b29b      	uxth	r3, r3
    3204:	2b09      	cmp	r3, #9
    3206:	f200 8081 	bhi.w	330c <TV_SYNC_handler+0x128>
    320a:	e8df f013 	tbh	[pc, r3, lsl #1]
    320e:	000a      	.short	0x000a
    3210:	0048002a 	.word	0x0048002a
    3214:	00880069 	.word	0x00880069
    3218:	00a50090 	.word	0x00a50090
    321c:	00d100b4 	.word	0x00d100b4
    3220:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    3222:	4b81      	ldr	r3, [pc, #516]	; (3428 <TV_SYNC_handler+0x244>)
    3224:	881b      	ldrh	r3, [r3, #0]
    3226:	b29b      	uxth	r3, r3
    3228:	b17b      	cbz	r3, 324a <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    322a:	4a7f      	ldr	r2, [pc, #508]	; (3428 <TV_SYNC_handler+0x244>)
    322c:	8813      	ldrh	r3, [r2, #0]
    322e:	3301      	adds	r3, #1
    3230:	b29b      	uxth	r3, r3
    3232:	8013      	strh	r3, [r2, #0]
    3234:	8813      	ldrh	r3, [r2, #0]
    3236:	b29b      	uxth	r3, r3
    3238:	2b06      	cmp	r3, #6
    323a:	d167      	bne.n	330c <TV_SYNC_handler+0x128>
    323c:	2300      	movs	r3, #0
    323e:	8013      	strh	r3, [r2, #0]
    3240:	8893      	ldrh	r3, [r2, #4]
    3242:	3301      	adds	r3, #1
    3244:	b29b      	uxth	r3, r3
    3246:	8093      	strh	r3, [r2, #4]
    3248:	e060      	b.n	330c <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    324a:	4b79      	ldr	r3, [pc, #484]	; (3430 <TV_SYNC_handler+0x24c>)
    324c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3250:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    3252:	22a4      	movs	r2, #164	; 0xa4
    3254:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3256:	4a74      	ldr	r2, [pc, #464]	; (3428 <TV_SYNC_handler+0x244>)
    3258:	8813      	ldrh	r3, [r2, #0]
    325a:	3301      	adds	r3, #1
    325c:	b29b      	uxth	r3, r3
    325e:	8013      	strh	r3, [r2, #0]
    3260:	e054      	b.n	330c <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    3262:	4b71      	ldr	r3, [pc, #452]	; (3428 <TV_SYNC_handler+0x244>)
    3264:	881b      	ldrh	r3, [r3, #0]
    3266:	b29b      	uxth	r3, r3
    3268:	b17b      	cbz	r3, 328a <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    326a:	4a6f      	ldr	r2, [pc, #444]	; (3428 <TV_SYNC_handler+0x244>)
    326c:	8813      	ldrh	r3, [r2, #0]
    326e:	3301      	adds	r3, #1
    3270:	b29b      	uxth	r3, r3
    3272:	8013      	strh	r3, [r2, #0]
    3274:	8813      	ldrh	r3, [r2, #0]
    3276:	b29b      	uxth	r3, r3
    3278:	2b06      	cmp	r3, #6
    327a:	d147      	bne.n	330c <TV_SYNC_handler+0x128>
    327c:	2300      	movs	r3, #0
    327e:	8013      	strh	r3, [r2, #0]
    3280:	8893      	ldrh	r3, [r2, #4]
    3282:	3301      	adds	r3, #1
    3284:	b29b      	uxth	r3, r3
    3286:	8093      	strh	r3, [r2, #4]
    3288:	e040      	b.n	330c <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    328a:	f240 7294 	movw	r2, #1940	; 0x794
    328e:	4b68      	ldr	r3, [pc, #416]	; (3430 <TV_SYNC_handler+0x24c>)
    3290:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    3292:	4a65      	ldr	r2, [pc, #404]	; (3428 <TV_SYNC_handler+0x244>)
    3294:	8813      	ldrh	r3, [r2, #0]
    3296:	3301      	adds	r3, #1
    3298:	b29b      	uxth	r3, r3
    329a:	8013      	strh	r3, [r2, #0]
    329c:	e036      	b.n	330c <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    329e:	4b62      	ldr	r3, [pc, #392]	; (3428 <TV_SYNC_handler+0x244>)
    32a0:	881b      	ldrh	r3, [r3, #0]
    32a2:	b29b      	uxth	r3, r3
    32a4:	b153      	cbz	r3, 32bc <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    32a6:	4b60      	ldr	r3, [pc, #384]	; (3428 <TV_SYNC_handler+0x244>)
    32a8:	881b      	ldrh	r3, [r3, #0]
    32aa:	b29b      	uxth	r3, r3
    32ac:	2b06      	cmp	r3, #6
    32ae:	d00e      	beq.n	32ce <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    32b0:	4a5d      	ldr	r2, [pc, #372]	; (3428 <TV_SYNC_handler+0x244>)
    32b2:	8813      	ldrh	r3, [r2, #0]
    32b4:	3301      	adds	r3, #1
    32b6:	b29b      	uxth	r3, r3
    32b8:	8013      	strh	r3, [r2, #0]
            break;
    32ba:	e027      	b.n	330c <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    32bc:	22a4      	movs	r2, #164	; 0xa4
    32be:	4b5c      	ldr	r3, [pc, #368]	; (3430 <TV_SYNC_handler+0x24c>)
    32c0:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    32c2:	4a59      	ldr	r2, [pc, #356]	; (3428 <TV_SYNC_handler+0x244>)
    32c4:	8813      	ldrh	r3, [r2, #0]
    32c6:	3301      	adds	r3, #1
    32c8:	b29b      	uxth	r3, r3
    32ca:	8013      	strh	r3, [r2, #0]
            break;
    32cc:	e01e      	b.n	330c <TV_SYNC_handler+0x128>
            task++;
    32ce:	4a56      	ldr	r2, [pc, #344]	; (3428 <TV_SYNC_handler+0x244>)
    32d0:	8893      	ldrh	r3, [r2, #4]
    32d2:	3301      	adds	r3, #1
    32d4:	b29b      	uxth	r3, r3
    32d6:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    32d8:	88d3      	ldrh	r3, [r2, #6]
    32da:	f013 0f01 	tst.w	r3, #1
    32de:	d015      	beq.n	330c <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    32e0:	4b53      	ldr	r3, [pc, #332]	; (3430 <TV_SYNC_handler+0x24c>)
    32e2:	f241 12c5 	movw	r2, #4549	; 0x11c5
    32e6:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    32e8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    32ec:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    32ee:	4a4e      	ldr	r2, [pc, #312]	; (3428 <TV_SYNC_handler+0x244>)
    32f0:	88d3      	ldrh	r3, [r2, #6]
    32f2:	f023 0302 	bic.w	r3, r3, #2
    32f6:	041b      	lsls	r3, r3, #16
    32f8:	0c1b      	lsrs	r3, r3, #16
    32fa:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    32fc:	8853      	ldrh	r3, [r2, #2]
    32fe:	f3c3 038d 	ubfx	r3, r3, #2, #14
    3302:	8053      	strh	r3, [r2, #2]
        task++;
    3304:	8893      	ldrh	r3, [r2, #4]
    3306:	3301      	adds	r3, #1
    3308:	b29b      	uxth	r3, r3
    330a:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    330c:	4a48      	ldr	r2, [pc, #288]	; (3430 <TV_SYNC_handler+0x24c>)
    330e:	6913      	ldr	r3, [r2, #16]
    3310:	f023 0301 	bic.w	r3, r3, #1
    3314:	6113      	str	r3, [r2, #16]
}
    3316:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    331a:	4685      	mov	sp, r0
    331c:	4770      	bx	lr
        read_gamepad();
    331e:	f7fd ff37 	bl	1190 <read_gamepad>
        task++;
    3322:	4a41      	ldr	r2, [pc, #260]	; (3428 <TV_SYNC_handler+0x244>)
    3324:	8893      	ldrh	r3, [r2, #4]
    3326:	3301      	adds	r3, #1
    3328:	b29b      	uxth	r3, r3
    332a:	8093      	strh	r3, [r2, #4]
        break;    
    332c:	e7ee      	b.n	330c <TV_SYNC_handler+0x128>
        if (sound_timer){
    332e:	4b41      	ldr	r3, [pc, #260]	; (3434 <TV_SYNC_handler+0x250>)
    3330:	881b      	ldrh	r3, [r3, #0]
    3332:	b29b      	uxth	r3, r3
    3334:	b13b      	cbz	r3, 3346 <TV_SYNC_handler+0x162>
            sound_timer--;
    3336:	4a3f      	ldr	r2, [pc, #252]	; (3434 <TV_SYNC_handler+0x250>)
    3338:	8813      	ldrh	r3, [r2, #0]
    333a:	3b01      	subs	r3, #1
    333c:	b29b      	uxth	r3, r3
    333e:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    3340:	8813      	ldrh	r3, [r2, #0]
    3342:	b29b      	uxth	r3, r3
    3344:	b12b      	cbz	r3, 3352 <TV_SYNC_handler+0x16e>
        task++;
    3346:	4a38      	ldr	r2, [pc, #224]	; (3428 <TV_SYNC_handler+0x244>)
    3348:	8893      	ldrh	r3, [r2, #4]
    334a:	3301      	adds	r3, #1
    334c:	b29b      	uxth	r3, r3
    334e:	8093      	strh	r3, [r2, #4]
        break;    
    3350:	e7dc      	b.n	330c <TV_SYNC_handler+0x128>
                sound_stop();
    3352:	f7ff fb0a 	bl	296a <sound_stop>
    3356:	e7f6      	b.n	3346 <TV_SYNC_handler+0x162>
        if (game_timer){
    3358:	4b37      	ldr	r3, [pc, #220]	; (3438 <TV_SYNC_handler+0x254>)
    335a:	881b      	ldrh	r3, [r3, #0]
    335c:	b29b      	uxth	r3, r3
    335e:	b123      	cbz	r3, 336a <TV_SYNC_handler+0x186>
            game_timer--;
    3360:	4a35      	ldr	r2, [pc, #212]	; (3438 <TV_SYNC_handler+0x254>)
    3362:	8813      	ldrh	r3, [r2, #0]
    3364:	3b01      	subs	r3, #1
    3366:	b29b      	uxth	r3, r3
    3368:	8013      	strh	r3, [r2, #0]
        task++;
    336a:	4a2f      	ldr	r2, [pc, #188]	; (3428 <TV_SYNC_handler+0x244>)
    336c:	8893      	ldrh	r3, [r2, #4]
    336e:	3301      	adds	r3, #1
    3370:	b29b      	uxth	r3, r3
    3372:	8093      	strh	r3, [r2, #4]
        break;
    3374:	e7ca      	b.n	330c <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    3376:	4b2c      	ldr	r3, [pc, #176]	; (3428 <TV_SYNC_handler+0x244>)
    3378:	885b      	ldrh	r3, [r3, #2]
    337a:	b29b      	uxth	r3, r3
    337c:	4a2f      	ldr	r2, [pc, #188]	; (343c <TV_SYNC_handler+0x258>)
    337e:	88d2      	ldrh	r2, [r2, #6]
    3380:	429a      	cmp	r2, r3
    3382:	d1c3      	bne.n	330c <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    3384:	4b2a      	ldr	r3, [pc, #168]	; (3430 <TV_SYNC_handler+0x24c>)
    3386:	691a      	ldr	r2, [r3, #16]
    3388:	f022 0204 	bic.w	r2, r2, #4
    338c:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    338e:	68da      	ldr	r2, [r3, #12]
    3390:	f042 0204 	orr.w	r2, r2, #4
    3394:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    3396:	4b24      	ldr	r3, [pc, #144]	; (3428 <TV_SYNC_handler+0x244>)
    3398:	88da      	ldrh	r2, [r3, #6]
    339a:	b292      	uxth	r2, r2
    339c:	f042 0204 	orr.w	r2, r2, #4
    33a0:	80da      	strh	r2, [r3, #6]
            task++;
    33a2:	889a      	ldrh	r2, [r3, #4]
    33a4:	3201      	adds	r2, #1
    33a6:	b292      	uxth	r2, r2
    33a8:	809a      	strh	r2, [r3, #4]
            slice=0;
    33aa:	2200      	movs	r2, #0
    33ac:	801a      	strh	r2, [r3, #0]
    33ae:	e7ad      	b.n	330c <TV_SYNC_handler+0x128>
        slice++;
    33b0:	4a1d      	ldr	r2, [pc, #116]	; (3428 <TV_SYNC_handler+0x244>)
    33b2:	8813      	ldrh	r3, [r2, #0]
    33b4:	3301      	adds	r3, #1
    33b6:	b29b      	uxth	r3, r3
    33b8:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    33ba:	8853      	ldrh	r3, [r2, #2]
    33bc:	b29b      	uxth	r3, r3
    33be:	4a1f      	ldr	r2, [pc, #124]	; (343c <TV_SYNC_handler+0x258>)
    33c0:	8912      	ldrh	r2, [r2, #8]
    33c2:	429a      	cmp	r2, r3
    33c4:	d1a2      	bne.n	330c <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    33c6:	4a1a      	ldr	r2, [pc, #104]	; (3430 <TV_SYNC_handler+0x24c>)
    33c8:	68d3      	ldr	r3, [r2, #12]
    33ca:	f023 0304 	bic.w	r3, r3, #4
    33ce:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    33d0:	4a15      	ldr	r2, [pc, #84]	; (3428 <TV_SYNC_handler+0x244>)
    33d2:	88d3      	ldrh	r3, [r2, #6]
    33d4:	f023 0304 	bic.w	r3, r3, #4
    33d8:	041b      	lsls	r3, r3, #16
    33da:	0c1b      	lsrs	r3, r3, #16
    33dc:	80d3      	strh	r3, [r2, #6]
            task++;
    33de:	8893      	ldrh	r3, [r2, #4]
    33e0:	3301      	adds	r3, #1
    33e2:	b29b      	uxth	r3, r3
    33e4:	8093      	strh	r3, [r2, #4]
    33e6:	e791      	b.n	330c <TV_SYNC_handler+0x128>
        if (scan_line==263){
    33e8:	4b0f      	ldr	r3, [pc, #60]	; (3428 <TV_SYNC_handler+0x244>)
    33ea:	885b      	ldrh	r3, [r3, #2]
    33ec:	b29b      	uxth	r3, r3
    33ee:	f240 1207 	movw	r2, #263	; 0x107
    33f2:	4293      	cmp	r3, r2
    33f4:	d18a      	bne.n	330c <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    33f6:	4b0c      	ldr	r3, [pc, #48]	; (3428 <TV_SYNC_handler+0x244>)
    33f8:	88db      	ldrh	r3, [r3, #6]
    33fa:	f013 0f01 	tst.w	r3, #1
    33fe:	d003      	beq.n	3408 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    3400:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3404:	4b0a      	ldr	r3, [pc, #40]	; (3430 <TV_SYNC_handler+0x24c>)
    3406:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    3408:	4b07      	ldr	r3, [pc, #28]	; (3428 <TV_SYNC_handler+0x244>)
    340a:	88da      	ldrh	r2, [r3, #6]
    340c:	b292      	uxth	r2, r2
    340e:	f082 0201 	eor.w	r2, r2, #1
    3412:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    3414:	88da      	ldrh	r2, [r3, #6]
    3416:	b292      	uxth	r2, r2
    3418:	f042 0202 	orr.w	r2, r2, #2
    341c:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    341e:	2200      	movs	r2, #0
    3420:	805a      	strh	r2, [r3, #2]
            slice=0;
    3422:	801a      	strh	r2, [r3, #0]
            task=0;
    3424:	809a      	strh	r2, [r3, #4]
    3426:	e771      	b.n	330c <TV_SYNC_handler+0x128>
    3428:	200006a0 	.word	0x200006a0
    342c:	20004e78 	.word	0x20004e78
    3430:	40012c00 	.word	0x40012c00
    3434:	20004e7c 	.word	0x20004e7c
    3438:	20004e74 	.word	0x20004e74
    343c:	20000208 	.word	0x20000208

00003440 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    3440:	4a02      	ldr	r2, [pc, #8]	; (344c <frame_sync+0xc>)
    3442:	88d3      	ldrh	r3, [r2, #6]
    3444:	f013 0f02 	tst.w	r3, #2
    3448:	d0fb      	beq.n	3442 <frame_sync+0x2>
}
    344a:	4770      	bx	lr
    344c:	200006a0 	.word	0x200006a0

00003450 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    3450:	4a02      	ldr	r2, [pc, #8]	; (345c <wait_sync_end+0xc>)
    3452:	88d3      	ldrh	r3, [r2, #6]
    3454:	f013 0f02 	tst.w	r3, #2
    3458:	d1fb      	bne.n	3452 <wait_sync_end+0x2>
}
    345a:	4770      	bx	lr
    345c:	200006a0 	.word	0x200006a0

00003460 <set_video_mode>:

void set_video_mode(vmode_t mode){
    3460:	b510      	push	{r4, lr}
    3462:	4604      	mov	r4, r0
    frame_sync();
    3464:	f7ff ffec 	bl	3440 <frame_sync>
    video_mode=mode;
    3468:	4b0e      	ldr	r3, [pc, #56]	; (34a4 <set_video_mode+0x44>)
    346a:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    346c:	b1ac      	cbz	r4, 349a <set_video_mode+0x3a>
    346e:	2200      	movs	r2, #0
    3470:	4b0d      	ldr	r3, [pc, #52]	; (34a8 <set_video_mode+0x48>)
    3472:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    3474:	4b0d      	ldr	r3, [pc, #52]	; (34ac <set_video_mode+0x4c>)
    3476:	480e      	ldr	r0, [pc, #56]	; (34b0 <set_video_mode+0x50>)
    3478:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    347c:	8842      	ldrh	r2, [r0, #2]
    347e:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    3480:	8882      	ldrh	r2, [r0, #4]
    3482:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    3484:	88c2      	ldrh	r2, [r0, #6]
    3486:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    3488:	7a02      	ldrb	r2, [r0, #8]
    348a:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    348c:	7a42      	ldrb	r2, [r0, #9]
    348e:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    3490:	7a82      	ldrb	r2, [r0, #10]
    3492:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    3494:	f7fe f936 	bl	1704 <gfx_cls>
    3498:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    349a:	2202      	movs	r2, #2
    349c:	4b02      	ldr	r3, [pc, #8]	; (34a8 <set_video_mode+0x48>)
    349e:	701a      	strb	r2, [r3, #0]
    34a0:	e7e8      	b.n	3474 <set_video_mode+0x14>
    34a2:	bf00      	nop
    34a4:	200006a0 	.word	0x200006a0
    34a8:	200001ac 	.word	0x200001ac
    34ac:	20000208 	.word	0x20000208
    34b0:	00003da0 	.word	0x00003da0

000034b4 <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    34b4:	4b02      	ldr	r3, [pc, #8]	; (34c0 <get_video_params+0xc>)
    34b6:	7a18      	ldrb	r0, [r3, #8]
}
    34b8:	4b02      	ldr	r3, [pc, #8]	; (34c4 <get_video_params+0x10>)
    34ba:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    34be:	4770      	bx	lr
    34c0:	200006a0 	.word	0x200006a0
    34c4:	00003da0 	.word	0x00003da0

000034c8 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    34c8:	4b03      	ldr	r3, [pc, #12]	; (34d8 <game_pause+0x10>)
    34ca:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    34cc:	461a      	mov	r2, r3
    34ce:	8813      	ldrh	r3, [r2, #0]
    34d0:	b29b      	uxth	r3, r3
    34d2:	2b00      	cmp	r3, #0
    34d4:	d1fb      	bne.n	34ce <game_pause+0x6>
}
    34d6:	4770      	bx	lr
    34d8:	20004e74 	.word	0x20004e74

000034dc <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    34dc:	4b03      	ldr	r3, [pc, #12]	; (34ec <micro_pause+0x10>)
    34de:	681b      	ldr	r3, [r3, #0]
    34e0:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    34e2:	4a02      	ldr	r2, [pc, #8]	; (34ec <micro_pause+0x10>)
    34e4:	6813      	ldr	r3, [r2, #0]
    34e6:	4298      	cmp	r0, r3
    34e8:	d8fc      	bhi.n	34e4 <micro_pause+0x8>
}
    34ea:	4770      	bx	lr
    34ec:	20004e78 	.word	0x20004e78

000034f0 <usart_config_port>:

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
	switch(channel){ // activation du périphérique USART et du PORT
    34f0:	2801      	cmp	r0, #1
    34f2:	d035      	beq.n	3560 <usart_config_port+0x70>
    34f4:	b110      	cbz	r0, 34fc <usart_config_port+0xc>
    34f6:	2802      	cmp	r0, #2
    34f8:	d04f      	beq.n	359a <usart_config_port+0xaa>
    34fa:	4770      	bx	lr
	case CHN1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    34fc:	4835      	ldr	r0, [pc, #212]	; (35d4 <usart_config_port+0xe4>)
    34fe:	6983      	ldr	r3, [r0, #24]
    3500:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3504:	f043 0304 	orr.w	r3, r3, #4
    3508:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    350a:	2a01      	cmp	r2, #1
    350c:	d016      	beq.n	353c <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    350e:	4b32      	ldr	r3, [pc, #200]	; (35d8 <usart_config_port+0xe8>)
    3510:	4299      	cmp	r1, r3
    3512:	d01c      	beq.n	354e <usart_config_port+0x5e>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    3514:	4a31      	ldr	r2, [pc, #196]	; (35dc <usart_config_port+0xec>)
    3516:	6853      	ldr	r3, [r2, #4]
    3518:	f043 0304 	orr.w	r3, r3, #4
    351c:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    351e:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    3522:	6993      	ldr	r3, [r2, #24]
    3524:	f043 0308 	orr.w	r3, r3, #8
    3528:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    352a:	680b      	ldr	r3, [r1, #0]
    352c:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    3530:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    3532:	680b      	ldr	r3, [r1, #0]
    3534:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    3538:	600b      	str	r3, [r1, #0]
    353a:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    353c:	684b      	ldr	r3, [r1, #4]
    353e:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    3542:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    3544:	684b      	ldr	r3, [r1, #4]
    3546:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    354a:	604b      	str	r3, [r1, #4]
    354c:	e7df      	b.n	350e <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    354e:	685a      	ldr	r2, [r3, #4]
    3550:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    3554:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    3556:	685a      	ldr	r2, [r3, #4]
    3558:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    355c:	605a      	str	r2, [r3, #4]
    355e:	4770      	bx	lr
		}
		break;
	case CHN2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    3560:	4b1c      	ldr	r3, [pc, #112]	; (35d4 <usart_config_port+0xe4>)
    3562:	69d8      	ldr	r0, [r3, #28]
    3564:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    3568:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    356a:	6998      	ldr	r0, [r3, #24]
    356c:	f040 0004 	orr.w	r0, r0, #4
    3570:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    3572:	2a01      	cmp	r2, #1
    3574:	d008      	beq.n	3588 <usart_config_port+0x98>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    3576:	680b      	ldr	r3, [r1, #0]
    3578:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    357c:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    357e:	680b      	ldr	r3, [r1, #0]
    3580:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    3584:	600b      	str	r3, [r1, #0]
    3586:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    3588:	680b      	ldr	r3, [r1, #0]
    358a:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    358e:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    3590:	680b      	ldr	r3, [r1, #0]
    3592:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    3596:	600b      	str	r3, [r1, #0]
    3598:	4770      	bx	lr
		}
		break;
	case CHN3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    359a:	4b0e      	ldr	r3, [pc, #56]	; (35d4 <usart_config_port+0xe4>)
    359c:	69d8      	ldr	r0, [r3, #28]
    359e:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    35a2:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    35a4:	6998      	ldr	r0, [r3, #24]
    35a6:	f040 0008 	orr.w	r0, r0, #8
    35aa:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    35ac:	2a01      	cmp	r2, #1
    35ae:	d008      	beq.n	35c2 <usart_config_port+0xd2>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    35b0:	684b      	ldr	r3, [r1, #4]
    35b2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    35b6:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    35b8:	684b      	ldr	r3, [r1, #4]
    35ba:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    35be:	604b      	str	r3, [r1, #4]
    35c0:	4770      	bx	lr
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    35c2:	684b      	ldr	r3, [r1, #4]
    35c4:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    35c8:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    35ca:	684b      	ldr	r3, [r1, #4]
    35cc:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    35d0:	604b      	str	r3, [r1, #4]
    35d2:	4770      	bx	lr
    35d4:	40021000 	.word	0x40021000
    35d8:	40010800 	.word	0x40010800
    35dc:	40010000 	.word	0x40010000

000035e0 <usart_set_baud>:
}

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
	uint32_t rate;
    if (channel==CHN1){
    35e0:	4602      	mov	r2, r0
    35e2:	b138      	cbz	r0, 35f4 <usart_set_baud+0x14>
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    35e4:	4b05      	ldr	r3, [pc, #20]	; (35fc <usart_set_baud+0x1c>)
    35e6:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channels[channel]->BRR=rate;
    35ea:	4b05      	ldr	r3, [pc, #20]	; (3600 <usart_set_baud+0x20>)
    35ec:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    35f0:	6099      	str	r1, [r3, #8]
    35f2:	4770      	bx	lr
		rate|=(FAPB2/baud)%16;
    35f4:	4b03      	ldr	r3, [pc, #12]	; (3604 <usart_set_baud+0x24>)
    35f6:	fbb3 f1f1 	udiv	r1, r3, r1
    35fa:	e7f6      	b.n	35ea <usart_set_baud+0xa>
    35fc:	022231fa 	.word	0x022231fa
    3600:	00003dc8 	.word	0x00003dc8
    3604:	044463f4 	.word	0x044463f4

00003608 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    3608:	4b05      	ldr	r3, [pc, #20]	; (3620 <usart_comm_dir+0x18>)
    360a:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    360e:	68da      	ldr	r2, [r3, #12]
    3610:	f022 020c 	bic.w	r2, r2, #12
    3614:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    3616:	68da      	ldr	r2, [r3, #12]
    3618:	ea42 0181 	orr.w	r1, r2, r1, lsl #2
    361c:	60d9      	str	r1, [r3, #12]
    361e:	4770      	bx	lr
    3620:	00003dc8 	.word	0x00003dc8

00003624 <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    3624:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    3628:	4604      	mov	r4, r0
    362a:	460f      	mov	r7, r1
    362c:	4615      	mov	r5, r2
    362e:	4698      	mov	r8, r3
    3630:	9e07      	ldr	r6, [sp, #28]
	switch(channel){ // activation du périphérique USART et du PORT
    3632:	2801      	cmp	r0, #1
    3634:	d030      	beq.n	3698 <usart_open_channel+0x74>
    3636:	b1d0      	cbz	r0, 366e <usart_open_channel+0x4a>
    3638:	2802      	cmp	r0, #2
    363a:	d03a      	beq.n	36b2 <usart_open_channel+0x8e>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    363c:	2e01      	cmp	r6, #1
    363e:	d045      	beq.n	36cc <usart_open_channel+0xa8>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
	}
	usart_comm_dir(channel,dir);
    3640:	4641      	mov	r1, r8
    3642:	4620      	mov	r0, r4
    3644:	f7ff ffe0 	bl	3608 <usart_comm_dir>
	switch (parity){
    3648:	2d01      	cmp	r5, #1
    364a:	d04e      	beq.n	36ea <usart_open_channel+0xc6>
    364c:	2d00      	cmp	r5, #0
    364e:	d044      	beq.n	36da <usart_open_channel+0xb6>
    3650:	2d02      	cmp	r5, #2
    3652:	d052      	beq.n	36fa <usart_open_channel+0xd6>
		break;
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    3654:	4639      	mov	r1, r7
    3656:	4620      	mov	r0, r4
    3658:	f7ff ffc2 	bl	35e0 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    365c:	4b2b      	ldr	r3, [pc, #172]	; (370c <usart_open_channel+0xe8>)
    365e:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3662:	68d3      	ldr	r3, [r2, #12]
    3664:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3668:	60d3      	str	r3, [r2, #12]
    366a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    366e:	9b06      	ldr	r3, [sp, #24]
    3670:	b963      	cbnz	r3, 368c <usart_open_channel+0x68>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    3672:	4632      	mov	r2, r6
    3674:	4926      	ldr	r1, [pc, #152]	; (3710 <usart_open_channel+0xec>)
    3676:	2000      	movs	r0, #0
    3678:	f7ff ff3a 	bl	34f0 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    367c:	2107      	movs	r1, #7
    367e:	2025      	movs	r0, #37	; 0x25
    3680:	f7fe fd66 	bl	2150 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    3684:	2025      	movs	r0, #37	; 0x25
    3686:	f7fe fd03 	bl	2090 <enable_interrupt>
		break;
    368a:	e7d7      	b.n	363c <usart_open_channel+0x18>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    368c:	4632      	mov	r2, r6
    368e:	4921      	ldr	r1, [pc, #132]	; (3714 <usart_open_channel+0xf0>)
    3690:	2000      	movs	r0, #0
    3692:	f7ff ff2d 	bl	34f0 <usart_config_port>
    3696:	e7f1      	b.n	367c <usart_open_channel+0x58>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    3698:	4632      	mov	r2, r6
    369a:	491d      	ldr	r1, [pc, #116]	; (3710 <usart_open_channel+0xec>)
    369c:	2001      	movs	r0, #1
    369e:	f7ff ff27 	bl	34f0 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    36a2:	2107      	movs	r1, #7
    36a4:	2026      	movs	r0, #38	; 0x26
    36a6:	f7fe fd53 	bl	2150 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    36aa:	2026      	movs	r0, #38	; 0x26
    36ac:	f7fe fcf0 	bl	2090 <enable_interrupt>
		break;
    36b0:	e7c4      	b.n	363c <usart_open_channel+0x18>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    36b2:	4632      	mov	r2, r6
    36b4:	4917      	ldr	r1, [pc, #92]	; (3714 <usart_open_channel+0xf0>)
    36b6:	2002      	movs	r0, #2
    36b8:	f7ff ff1a 	bl	34f0 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    36bc:	2107      	movs	r1, #7
    36be:	2027      	movs	r0, #39	; 0x27
    36c0:	f7fe fd46 	bl	2150 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    36c4:	2027      	movs	r0, #39	; 0x27
    36c6:	f7fe fce3 	bl	2090 <enable_interrupt>
		break;
    36ca:	e7b7      	b.n	363c <usart_open_channel+0x18>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    36cc:	4b0f      	ldr	r3, [pc, #60]	; (370c <usart_open_channel+0xe8>)
    36ce:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
    36d2:	f44f 7240 	mov.w	r2, #768	; 0x300
    36d6:	615a      	str	r2, [r3, #20]
    36d8:	e7b2      	b.n	3640 <usart_open_channel+0x1c>
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    36da:	4b0c      	ldr	r3, [pc, #48]	; (370c <usart_open_channel+0xe8>)
    36dc:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    36e0:	68d3      	ldr	r3, [r2, #12]
    36e2:	f043 0320 	orr.w	r3, r3, #32
    36e6:	60d3      	str	r3, [r2, #12]
		break;
    36e8:	e7b4      	b.n	3654 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    36ea:	4b08      	ldr	r3, [pc, #32]	; (370c <usart_open_channel+0xe8>)
    36ec:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    36f0:	68d3      	ldr	r3, [r2, #12]
    36f2:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    36f6:	60d3      	str	r3, [r2, #12]
		break;
    36f8:	e7ac      	b.n	3654 <usart_open_channel+0x30>
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    36fa:	4b04      	ldr	r3, [pc, #16]	; (370c <usart_open_channel+0xe8>)
    36fc:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    3700:	68d3      	ldr	r3, [r2, #12]
    3702:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    3706:	60d3      	str	r3, [r2, #12]
		break;
    3708:	e7a4      	b.n	3654 <usart_open_channel+0x30>
    370a:	bf00      	nop
    370c:	00003dc8 	.word	0x00003dc8
    3710:	40010800 	.word	0x40010800
    3714:	40010c00 	.word	0x40010c00

00003718 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
	return channels[channel]->SR&USART_SR_RXNE;
    3718:	4b03      	ldr	r3, [pc, #12]	; (3728 <usart_stat+0x10>)
    371a:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    371e:	6818      	ldr	r0, [r3, #0]
}
    3720:	f000 0020 	and.w	r0, r0, #32
    3724:	4770      	bx	lr
    3726:	bf00      	nop
    3728:	00003dc8 	.word	0x00003dc8

0000372c <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    372c:	4602      	mov	r2, r0
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    372e:	490c      	ldr	r1, [pc, #48]	; (3760 <usart_getc+0x34>)
    3730:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3734:	005b      	lsls	r3, r3, #1
    3736:	18c8      	adds	r0, r1, r3
    3738:	5ccb      	ldrb	r3, [r1, r3]
    373a:	7841      	ldrb	r1, [r0, #1]
    373c:	4299      	cmp	r1, r3
    373e:	d00d      	beq.n	375c <usart_getc+0x30>
char usart_getc(usart_channel_t channel){
    3740:	b430      	push	{r4, r5}
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    3742:	4d07      	ldr	r5, [pc, #28]	; (3760 <usart_getc+0x34>)
    3744:	00d4      	lsls	r4, r2, #3
    3746:	4601      	mov	r1, r0
    3748:	4419      	add	r1, r3
    374a:	7888      	ldrb	r0, [r1, #2]
		usart_queue[channel].head&=QUEUE_MASK;
    374c:	4422      	add	r2, r4
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    374e:	3301      	adds	r3, #1
		usart_queue[channel].head&=QUEUE_MASK;
    3750:	f003 030f 	and.w	r3, r3, #15
    3754:	f805 3012 	strb.w	r3, [r5, r2, lsl #1]
		return c;
	}else{
		return 0;
	}
		
}
    3758:	bc30      	pop	{r4, r5}
    375a:	4770      	bx	lr
		return 0;
    375c:	2000      	movs	r0, #0
    375e:	4770      	bx	lr
    3760:	200006ac 	.word	0x200006ac

00003764 <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    3764:	b570      	push	{r4, r5, r6, lr}
    3766:	4606      	mov	r6, r0
	unsigned t0=ntsc_ticks+dly;
    3768:	4b08      	ldr	r3, [pc, #32]	; (378c <usart_getc_dly+0x28>)
    376a:	681c      	ldr	r4, [r3, #0]
    376c:	440c      	add	r4, r1
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    376e:	461d      	mov	r5, r3
    3770:	682b      	ldr	r3, [r5, #0]
    3772:	429c      	cmp	r4, r3
    3774:	d906      	bls.n	3784 <usart_getc_dly+0x20>
    3776:	4630      	mov	r0, r6
    3778:	f7ff ffd8 	bl	372c <usart_getc>
    377c:	4603      	mov	r3, r0
    377e:	2800      	cmp	r0, #0
    3780:	d0f6      	beq.n	3770 <usart_getc_dly+0xc>
    3782:	e000      	b.n	3786 <usart_getc_dly+0x22>
    3784:	2300      	movs	r3, #0
	return c;
}
    3786:	4618      	mov	r0, r3
    3788:	bd70      	pop	{r4, r5, r6, pc}
    378a:	bf00      	nop
    378c:	20004e78 	.word	0x20004e78

00003790 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    3790:	4b04      	ldr	r3, [pc, #16]	; (37a4 <usart_putc+0x14>)
    3792:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
    3796:	6813      	ldr	r3, [r2, #0]
    3798:	f013 0f80 	tst.w	r3, #128	; 0x80
    379c:	d0fb      	beq.n	3796 <usart_putc+0x6>
	channels[channel]->DR=c;
    379e:	6051      	str	r1, [r2, #4]
    37a0:	4770      	bx	lr
    37a2:	bf00      	nop
    37a4:	00003dc8 	.word	0x00003dc8

000037a8 <usart_cts>:
}


int usart_cts(usart_channel_t channel){
	int cts;
	switch (channel){
    37a8:	2801      	cmp	r0, #1
    37aa:	d009      	beq.n	37c0 <usart_cts+0x18>
    37ac:	b118      	cbz	r0, 37b6 <usart_cts+0xe>
    37ae:	2802      	cmp	r0, #2
    37b0:	d00b      	beq.n	37ca <usart_cts+0x22>
    37b2:	2000      	movs	r0, #0
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    37b4:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    37b6:	4b07      	ldr	r3, [pc, #28]	; (37d4 <usart_cts+0x2c>)
    37b8:	6898      	ldr	r0, [r3, #8]
    37ba:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    37be:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    37c0:	4b04      	ldr	r3, [pc, #16]	; (37d4 <usart_cts+0x2c>)
    37c2:	6898      	ldr	r0, [r3, #8]
    37c4:	f000 0001 	and.w	r0, r0, #1
			break;
    37c8:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    37ca:	4b03      	ldr	r3, [pc, #12]	; (37d8 <usart_cts+0x30>)
    37cc:	6898      	ldr	r0, [r3, #8]
    37ce:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    37d2:	4770      	bx	lr
    37d4:	40010800 	.word	0x40010800
    37d8:	40010c00 	.word	0x40010c00

000037dc <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    37dc:	b538      	push	{r3, r4, r5, lr}
    37de:	4605      	mov	r5, r0
    37e0:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    37e2:	7809      	ldrb	r1, [r1, #0]
    37e4:	b131      	cbz	r1, 37f4 <usart_print+0x18>
    37e6:	4628      	mov	r0, r5
    37e8:	f7ff ffd2 	bl	3790 <usart_putc>
    37ec:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    37f0:	2900      	cmp	r1, #0
    37f2:	d1f8      	bne.n	37e6 <usart_print+0xa>
    37f4:	bd38      	pop	{r3, r4, r5, pc}

000037f6 <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    37f6:	4668      	mov	r0, sp
    37f8:	f020 0107 	bic.w	r1, r0, #7
    37fc:	468d      	mov	sp, r1
    37fe:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3800:	4b08      	ldr	r3, [pc, #32]	; (3824 <USART1_handler+0x2e>)
    3802:	681b      	ldr	r3, [r3, #0]
    3804:	f013 0f20 	tst.w	r3, #32
    3808:	d009      	beq.n	381e <USART1_handler+0x28>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    380a:	4a07      	ldr	r2, [pc, #28]	; (3828 <USART1_handler+0x32>)
    380c:	7853      	ldrb	r3, [r2, #1]
    380e:	4905      	ldr	r1, [pc, #20]	; (3824 <USART1_handler+0x2e>)
    3810:	6848      	ldr	r0, [r1, #4]
    3812:	18d1      	adds	r1, r2, r3
    3814:	7088      	strb	r0, [r1, #2]
    3816:	3301      	adds	r3, #1
				usart_queue[CHN1].tail&=QUEUE_MASK;
    3818:	f003 030f 	and.w	r3, r3, #15
    381c:	7053      	strb	r3, [r2, #1]
		}
}
    381e:	bc01      	pop	{r0}
    3820:	4685      	mov	sp, r0
    3822:	4770      	bx	lr
    3824:	40013800 	.word	0x40013800
    3828:	200006ac 	.word	0x200006ac

0000382c <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    382c:	4668      	mov	r0, sp
    382e:	f020 0107 	bic.w	r1, r0, #7
    3832:	468d      	mov	sp, r1
    3834:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3836:	4b0a      	ldr	r3, [pc, #40]	; (3860 <USART2_handler+0x34>)
    3838:	681b      	ldr	r3, [r3, #0]
    383a:	f013 0f20 	tst.w	r3, #32
    383e:	d00b      	beq.n	3858 <USART2_handler+0x2c>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    3840:	4a08      	ldr	r2, [pc, #32]	; (3864 <USART2_handler+0x38>)
    3842:	7cd1      	ldrb	r1, [r2, #19]
    3844:	1c4b      	adds	r3, r1, #1
    3846:	b2db      	uxtb	r3, r3
    3848:	74d3      	strb	r3, [r2, #19]
    384a:	4807      	ldr	r0, [pc, #28]	; (3868 <USART2_handler+0x3c>)
    384c:	6840      	ldr	r0, [r0, #4]
    384e:	4411      	add	r1, r2
    3850:	7508      	strb	r0, [r1, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3852:	f003 030f 	and.w	r3, r3, #15
    3856:	74d3      	strb	r3, [r2, #19]
		}
}
    3858:	bc01      	pop	{r0}
    385a:	4685      	mov	sp, r0
    385c:	4770      	bx	lr
    385e:	bf00      	nop
    3860:	40013800 	.word	0x40013800
    3864:	200006ac 	.word	0x200006ac
    3868:	40004400 	.word	0x40004400

0000386c <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    386c:	4668      	mov	r0, sp
    386e:	f020 0107 	bic.w	r1, r0, #7
    3872:	468d      	mov	sp, r1
    3874:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    3876:	4b0b      	ldr	r3, [pc, #44]	; (38a4 <USART3_handler+0x38>)
    3878:	681b      	ldr	r3, [r3, #0]
    387a:	f013 0f20 	tst.w	r3, #32
    387e:	d00d      	beq.n	389c <USART3_handler+0x30>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    3880:	4b09      	ldr	r3, [pc, #36]	; (38a8 <USART3_handler+0x3c>)
    3882:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
    3886:	1c51      	adds	r1, r2, #1
    3888:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
    388c:	4907      	ldr	r1, [pc, #28]	; (38ac <USART3_handler+0x40>)
    388e:	6849      	ldr	r1, [r1, #4]
    3890:	441a      	add	r2, r3
    3892:	7511      	strb	r1, [r2, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    3894:	7cda      	ldrb	r2, [r3, #19]
    3896:	f002 020f 	and.w	r2, r2, #15
    389a:	74da      	strb	r2, [r3, #19]
		}
}
    389c:	bc01      	pop	{r0}
    389e:	4685      	mov	sp, r0
    38a0:	4770      	bx	lr
    38a2:	bf00      	nop
    38a4:	40013800 	.word	0x40013800
    38a8:	200006ac 	.word	0x200006ac
    38ac:	40004800 	.word	0x40004800
