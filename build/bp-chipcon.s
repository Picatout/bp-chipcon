
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 05 02 00 00 91 25 00 00     .P. 1........%..
      10:	91 25 00 00 91 25 00 00 91 25 00 00 91 25 00 00     .%...%...%...%..
      20:	91 25 00 00 91 25 00 00 91 25 00 00 09 02 00 00     .%...%...%......
      30:	91 25 00 00 91 25 00 00 0d 02 00 00 11 02 00 00     .%...%..........
      40:	15 02 00 00 19 02 00 00 21 02 00 00 a3 22 00 00     ........!...."..
      50:	25 02 00 00 29 02 00 00 2d 02 00 00 31 02 00 00     %...)...-...1...
      60:	35 02 00 00 39 02 00 00 3d 02 00 00 41 02 00 00     5...9...=...A...
      70:	45 02 00 00 91 25 00 00 91 25 00 00 49 02 00 00     E....%...%..I...
      80:	91 25 00 00 91 25 00 00 91 25 00 00 91 25 00 00     .%...%...%...%..
      90:	91 25 00 00 91 25 00 00 91 25 00 00 4d 02 00 00     .%...%...%..M...
      a0:	91 25 00 00 dd 2b 00 00 91 25 00 00 f5 2a 00 00     .%...+...%...*..
      b0:	b9 23 00 00 51 02 00 00 55 02 00 00 91 25 00 00     .#..Q...U....%..
      c0:	91 25 00 00 91 25 00 00 91 25 00 00 91 25 00 00     .%...%...%...%..
      d0:	91 25 00 00 c7 31 00 00 5d 02 00 00 61 02 00 00     .%...1..]...a...
      e0:	91 25 00 00 91 25 00 00 91 25 00 00 91 25 00 00     .%...%...%...%..
      f0:	91 25 00 00 91 25 00 00 91 25 00 00 91 25 00 00     .%...%...%...%..
     100:	91 25 00 00 91 25 00 00 91 25 00 00 91 25 00 00     .%...%...%...%..
     110:	91 25 00 00 91 25 00 00 91 25 00 00 91 25 00 00     .%...%...%...%..
     120:	91 25 00 00 91 25 00 00 91 25 00 00 91 25 00 00     .%...%...%...%..

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
     186:	f001 fc21 	bl	19cc <main>
     18a:	bd08      	pop	{r3, pc}
     18c:	20004e3a 	.word	0x20004e3a
     190:	200001f6 	.word	0x200001f6
     194:	20004e39 	.word	0x20004e39
     198:	200001f6 	.word	0x200001f6
     19c:	20000000 	.word	0x20000000
     1a0:	000090cc 	.word	0x000090cc
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
     1da:	f002 f9e1 	bl	25a0 <print_fault>
		print_fault("memory manager fault ",adr);
     1de:	4806      	ldr	r0, [pc, #24]	; (1f8 <HARD_FAULT_handler+0x4c>)
     1e0:	f002 f9de 	bl	25a0 <print_fault>
		print_fault("bus fault ",adr);
     1e4:	4805      	ldr	r0, [pc, #20]	; (1fc <HARD_FAULT_handler+0x50>)
     1e6:	f002 f9db 	bl	25a0 <print_fault>
		print_fault("hard fault  ",adr);
     1ea:	4805      	ldr	r0, [pc, #20]	; (200 <HARD_FAULT_handler+0x54>)
     1ec:	f002 f9d8 	bl	25a0 <print_fault>
     1f0:	e000ed28 	.word	0xe000ed28
     1f4:	00003874 	.word	0x00003874
     1f8:	00003850 	.word	0x00003850
     1fc:	00003868 	.word	0x00003868
     200:	00003884 	.word	0x00003884

00000204 <NMI_handler>:
_default_handler(NMI_handler) // 2
     204:	f002 f9c4 	bl	2590 <reset_mcu>

00000208 <SVC_handler>:
_default_handler(SVC_handler) // 11
     208:	f002 f9c2 	bl	2590 <reset_mcu>

0000020c <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     20c:	f002 f9c0 	bl	2590 <reset_mcu>

00000210 <STK_handler>:
_default_handler(STK_handler) // 15
     210:	f002 f9be 	bl	2590 <reset_mcu>

00000214 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     214:	f002 f9bc 	bl	2590 <reset_mcu>

00000218 <PVD_handler>:
_default_handler(PVD_handler) // 1
     218:	f002 f9ba 	bl	2590 <reset_mcu>
_default_handler(RTC_handler) // 2
     21c:	f002 f9b8 	bl	2590 <reset_mcu>

00000220 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     220:	f002 f9b6 	bl	2590 <reset_mcu>

00000224 <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     224:	f002 f9b4 	bl	2590 <reset_mcu>

00000228 <RCC_handler>:
_default_handler(RCC_handler) // 5
     228:	f002 f9b2 	bl	2590 <reset_mcu>

0000022c <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     22c:	f002 f9b0 	bl	2590 <reset_mcu>

00000230 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     230:	f002 f9ae 	bl	2590 <reset_mcu>

00000234 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     234:	f002 f9ac 	bl	2590 <reset_mcu>

00000238 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     238:	f002 f9aa 	bl	2590 <reset_mcu>

0000023c <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     23c:	f002 f9a8 	bl	2590 <reset_mcu>

00000240 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     240:	f002 f9a6 	bl	2590 <reset_mcu>

00000244 <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     244:	f002 f9a4 	bl	2590 <reset_mcu>

00000248 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     248:	f002 f9a2 	bl	2590 <reset_mcu>

0000024c <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     24c:	f002 f9a0 	bl	2590 <reset_mcu>

00000250 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     250:	f002 f99e 	bl	2590 <reset_mcu>

00000254 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     254:	f002 f99c 	bl	2590 <reset_mcu>
_default_handler(USART1_handler) // 37
     258:	f002 f99a 	bl	2590 <reset_mcu>

0000025c <USART2_handler>:
_default_handler(USART2_handler) // 38
     25c:	f002 f998 	bl	2590 <reset_mcu>

00000260 <USART3_handler>:
_default_handler(USART3_handler) // 39
     260:	f002 f996 	bl	2590 <reset_mcu>

00000264 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     264:	f002 f994 	bl	2590 <reset_mcu>

00000268 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     268:	f002 f992 	bl	2590 <reset_mcu>

0000026c <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26c:	f002 f990 	bl	2590 <reset_mcu>

00000270 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     270:	f002 f98e 	bl	2590 <reset_mcu>

00000274 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     274:	f002 f98c 	bl	2590 <reset_mcu>

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
     280:	f002 faf8 	bl	2874 <print>
    prompt_btn();
     284:	f002 fb5b 	bl	293e <prompt_btn>
    btn_wait_any();
     288:	f000 ff46 	bl	1118 <btn_wait_any>
     28c:	bd08      	pop	{r3, pc}
     28e:	bf00      	nop
     290:	00003714 	.word	0x00003714

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
     332:	f002 f9af 	bl	2694 <get_font>
     336:	4607      	mov	r7, r0
	select_font(FONT_ASCII);
     338:	2002      	movs	r0, #2
     33a:	f002 f9a5 	bl	2688 <select_font>
	new_line();
     33e:	f002 f9af 	bl	26a0 <new_line>
	print(msg);
     342:	4628      	mov	r0, r5
     344:	f002 fa96 	bl	2874 <print>
	switch(error_code){
     348:	2c02      	cmp	r4, #2
     34a:	d03a      	beq.n	3c2 <print_vms+0x96>
     34c:	2c03      	cmp	r4, #3
     34e:	d102      	bne.n	356 <print_vms+0x2a>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     350:	481e      	ldr	r0, [pc, #120]	; (3cc <print_vms+0xa0>)
     352:	f002 fa8f 	bl	2874 <print>
		break;
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
		break;
	}
	print("PC:");
     356:	481e      	ldr	r0, [pc, #120]	; (3d0 <print_vms+0xa4>)
     358:	f002 fa8c 	bl	2874 <print>
	print_hex(vms.pc-2);
     35c:	4d1d      	ldr	r5, [pc, #116]	; (3d4 <print_vms+0xa8>)
     35e:	8828      	ldrh	r0, [r5, #0]
     360:	2110      	movs	r1, #16
     362:	3802      	subs	r0, #2
     364:	f002 faa1 	bl	28aa <print_int>
	print_hex(vms.b2);
     368:	2110      	movs	r1, #16
     36a:	7de8      	ldrb	r0, [r5, #23]
     36c:	f002 fa9d 	bl	28aa <print_int>
	print_hex(vms.b1);
     370:	2110      	movs	r1, #16
     372:	7da8      	ldrb	r0, [r5, #22]
     374:	f002 fa99 	bl	28aa <print_int>
	new_line();
     378:	f002 f992 	bl	26a0 <new_line>
	print("I:");
     37c:	4816      	ldr	r0, [pc, #88]	; (3d8 <print_vms+0xac>)
     37e:	f002 fa79 	bl	2874 <print>
	print_hex(vms.ix);
     382:	2110      	movs	r1, #16
     384:	8868      	ldrh	r0, [r5, #2]
     386:	f002 fa90 	bl	28aa <print_int>
	print(" SP:");
     38a:	4814      	ldr	r0, [pc, #80]	; (3dc <print_vms+0xb0>)
     38c:	f002 fa72 	bl	2874 <print>
	print_hex(vms.sp);
     390:	2110      	movs	r1, #16
     392:	7928      	ldrb	r0, [r5, #4]
     394:	f002 fa89 	bl	28aa <print_int>
	new_line();
     398:	f002 f982 	bl	26a0 <new_line>
	print("var[]:");
     39c:	4810      	ldr	r0, [pc, #64]	; (3e0 <print_vms+0xb4>)
     39e:	f002 fa69 	bl	2874 <print>
     3a2:	1dac      	adds	r4, r5, #6
     3a4:	3516      	adds	r5, #22
	for (int i=0;i<16;i++){
		print_hex(vms.var[i]);
     3a6:	2610      	movs	r6, #16
     3a8:	4631      	mov	r1, r6
     3aa:	f814 0b01 	ldrb.w	r0, [r4], #1
     3ae:	f002 fa7c 	bl	28aa <print_int>
	for (int i=0;i<16;i++){
     3b2:	42ac      	cmp	r4, r5
     3b4:	d1f8      	bne.n	3a8 <print_vms+0x7c>
	}
	new_line();
     3b6:	f002 f973 	bl	26a0 <new_line>
	select_font(orig_font);
     3ba:	4638      	mov	r0, r7
     3bc:	f002 f964 	bl	2688 <select_font>
     3c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		print("CHIP BAD OPCODE\n");
     3c2:	4808      	ldr	r0, [pc, #32]	; (3e4 <print_vms+0xb8>)
     3c4:	f002 fa56 	bl	2874 <print>
		break;
     3c8:	e7c5      	b.n	356 <print_vms+0x2a>
     3ca:	bf00      	nop
     3cc:	00003724 	.word	0x00003724
     3d0:	0000374c 	.word	0x0000374c
     3d4:	200001f8 	.word	0x200001f8
     3d8:	00003750 	.word	0x00003750
     3dc:	00003754 	.word	0x00003754
     3e0:	0000375c 	.word	0x0000375c
     3e4:	00003738 	.word	0x00003738

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
     43c:	f002 fd4a 	bl	2ed4 <micro_pause>
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
     462:	f002 fea3 	bl	31ac <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     466:	7da0      	ldrb	r0, [r4, #22]
     468:	7de3      	ldrb	r3, [r4, #23]
     46a:	2210      	movs	r2, #16
     46c:	a902      	add	r1, sp, #8
     46e:	eb03 2000 	add.w	r0, r3, r0, lsl #8
     472:	f000 ffaf 	bl	13d4 <itoa>
     476:	4601      	mov	r1, r0
     478:	4638      	mov	r0, r7
     47a:	f002 fe97 	bl	31ac <usart_print>
			_debug_print("\n");
     47e:	4983      	ldr	r1, [pc, #524]	; (68c <chip_vm+0x27c>)
     480:	4638      	mov	r0, r7
     482:	f002 fe93 	bl	31ac <usart_print>
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
     4c0:	f002 fa94 	bl	29ec <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4c4:	2100      	movs	r1, #0
     4c6:	4872      	ldr	r0, [pc, #456]	; (690 <chip_vm+0x280>)
     4c8:	f7ff ff30 	bl	32c <print_vms>
			select_console(LOCAL);
     4cc:	2000      	movs	r0, #0
     4ce:	f002 fa8d 	bl	29ec <select_console>
			break;
     4d2:	e7d8      	b.n	486 <chip_vm+0x76>
			select_console(SERIAL);
     4d4:	2001      	movs	r0, #1
     4d6:	f002 fa89 	bl	29ec <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     4da:	2100      	movs	r1, #0
     4dc:	486c      	ldr	r0, [pc, #432]	; (690 <chip_vm+0x280>)
     4de:	f7ff ff25 	bl	32c <print_vms>
			prompt_btn();
     4e2:	f002 fa2c 	bl	293e <prompt_btn>
			select_console(LOCAL);
     4e6:	2000      	movs	r0, #0
     4e8:	f002 fa80 	bl	29ec <select_console>
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
     590:	f002 fc62 	bl	2e58 <set_video_mode>
					break; 
     594:	e085      	b.n	6a2 <chip_vm+0x292>
					set_video_mode(VM_BPCHIP);
     596:	2000      	movs	r0, #0
     598:	f002 fc5e 	bl	2e58 <set_video_mode>
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
     684:	200006a0 	.word	0x200006a0
     688:	40013800 	.word	0x40013800
     68c:	00003734 	.word	0x00003734
     690:	00003764 	.word	0x00003764
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
     88c:	f001 fd6c 	bl	2368 <key_tone>
				break;
     890:	e707      	b.n	6a2 <chip_vm+0x292>
				select_font(FONT_ASCII);
     892:	2002      	movs	r0, #2
     894:	f001 fef8 	bl	2688 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     898:	44a1      	add	r9, r4
     89a:	44a0      	add	r8, r4
     89c:	f899 1006 	ldrb.w	r1, [r9, #6]
     8a0:	f898 0006 	ldrb.w	r0, [r8, #6]
     8a4:	f001 ffb2 	bl	280c <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     8a8:	8860      	ldrh	r0, [r4, #2]
     8aa:	f8df 9108 	ldr.w	r9, [pc, #264]	; 9b4 <chip_vm+0x5a4>
     8ae:	4448      	add	r0, r9
     8b0:	f001 ffe0 	bl	2874 <print>
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
     8e6:	f001 fd53 	bl	2390 <noise>
				break;
     8ea:	e6da      	b.n	6a2 <chip_vm+0x292>
				key_tone(vms.var[x],vms.var[y],true);
     8ec:	44a1      	add	r9, r4
     8ee:	44a0      	add	r8, r4
     8f0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     8f4:	f899 1006 	ldrb.w	r1, [r9, #6]
     8f8:	f898 0006 	ldrb.w	r0, [r8, #6]
     8fc:	f001 fd34 	bl	2368 <key_tone>
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
     92c:	f002 fabe 	bl	2eac <get_video_params>
					vms.var[x]=vparams->hres;
     930:	44a0      	add	r8, r4
     932:	8983      	ldrh	r3, [r0, #12]
     934:	f888 3006 	strb.w	r3, [r8, #6]
				break;
     938:	e6b3      	b.n	6a2 <chip_vm+0x292>
					vmode_params_t *vparams=get_video_params();
     93a:	f002 fab7 	bl	2eac <get_video_params>
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
     bce:	f001 fba5 	bl	231c <tone>
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
     bfa:	f001 fd45 	bl	2688 <select_font>
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
     c16:	f001 fd37 	bl	2688 <select_font>
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
     c72:	f001 fd09 	bl	2688 <select_font>
	set_keymap(default_kmap);
     c76:	480e      	ldr	r0, [pc, #56]	; (cb0 <chip_vm+0x8a0>)
     c78:	f000 f9cc 	bl	1014 <set_keymap>
	set_video_mode(VM_BPCHIP);
     c7c:	2000      	movs	r0, #0
     c7e:	f002 f8eb 	bl	2e58 <set_video_mode>
	return exit_code;
     c82:	4640      	mov	r0, r8
}//schipp()
     c84:	b008      	add	sp, #32
     c86:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					exit_code=CHIP_EXIT_OK;
     c8a:	f04f 0801 	mov.w	r8, #1
     c8e:	e7ef      	b.n	c70 <chip_vm+0x860>
     c90:	20000688 	.word	0x20000688
     c94:	200006a0 	.word	0x200006a0
     c98:	20004e30 	.word	0x20004e30
     c9c:	cccccccd 	.word	0xcccccccd
     ca0:	aaaaaaab 	.word	0xaaaaaaab
     ca4:	20000190 	.word	0x20000190
     ca8:	000035f4 	.word	0x000035f4
     cac:	00003554 	.word	0x00003554
     cb0:	00003654 	.word	0x00003654

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
     f60:	00003c00 	.word	0x00003c00

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
    1060:	200026a0 	.word	0x200026a0
    1064:	00003654 	.word	0x00003654

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
    10a4:	200026a0 	.word	0x200026a0
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
    10c4:	200026a0 	.word	0x200026a0

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
    10d8:	f001 feae 	bl	2e38 <frame_sync>
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
    10ec:	200026a0 	.word	0x200026a0

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
    1100:	f001 fe9a 	bl	2e38 <frame_sync>
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
    1114:	200026a0 	.word	0x200026a0

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
    1136:	f001 fe7f 	bl	2e38 <frame_sync>
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
    1170:	200026a0 	.word	0x200026a0
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
    14fa:	f001 fcd7 	bl	2eac <get_video_params>
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
    1584:	200026d0 	.word	0x200026d0

00001588 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    1588:	b570      	push	{r4, r5, r6, lr}
    158a:	4604      	mov	r4, r0
    158c:	460e      	mov	r6, r1
    158e:	4615      	mov	r5, r2
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1590:	f001 fc8c 	bl	2eac <get_video_params>
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
    15d8:	200026d0 	.word	0x200026d0

000015dc <gfx_cls>:
}

void gfx_cls(){
    15dc:	b508      	push	{r3, lr}
	int x;
    vmode_params_t *vparams=get_video_params();
    15de:	f001 fc65 	bl	2eac <get_video_params>
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
    15f4:	f001 f90a 	bl	280c <set_cursor>
    15f8:	bd08      	pop	{r3, pc}
    15fa:	bf00      	nop
    15fc:	200026cf 	.word	0x200026cf
    1600:	20004e2f 	.word	0x20004e2f

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
    1608:	f001 fc50 	bl	2eac <get_video_params>
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
    164c:	200026d0 	.word	0x200026d0

00001650 <gfx_scroll_down>:
}

void gfx_scroll_down(uint8_t n){
    1650:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1652:	4605      	mov	r5, r0
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    1654:	f001 fc2a 	bl	2eac <get_video_params>
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
    1694:	200026d0 	.word	0x200026d0

00001698 <gfx_scroll_left>:
}

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    1698:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    169c:	4606      	mov	r6, r0
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    169e:	f001 fc05 	bl	2eac <get_video_params>
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
    16f0:	200026d0 	.word	0x200026d0

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
    16fa:	f001 fbd7 	bl	2eac <get_video_params>
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
    1758:	200026d0 	.word	0x200026d0

0000175c <gfx_get_pixel>:
    }
}


uint8_t gfx_get_pixel(int x, int y){
    175c:	b538      	push	{r3, r4, r5, lr}
    175e:	4604      	mov	r4, r0
    1760:	460d      	mov	r5, r1
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    1762:	f001 fba3 	bl	2eac <get_video_params>
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
    17a4:	200026d0 	.word	0x200026d0

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
    184e:	f001 fc85 	bl	315c <usart_putc>
    return collision;
}
    1852:	4638      	mov	r0, r7
    1854:	b005      	add	sp, #20
    1856:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    185a:	bf00      	nop
    185c:	2000018c 	.word	0x2000018c
    1860:	0000365c 	.word	0x0000365c
    1864:	40013800 	.word	0x40013800

00001868 <draw_balls>:
}ball_t;

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

void draw_balls(){
    1868:	b510      	push	{r4, lr}
    186a:	b082      	sub	sp, #8
	int i;
	frame_sync();
    186c:	f001 fae4 	bl	2e38 <frame_sync>
	for (i=0;i<BALL_COUNT;i++){
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    1870:	4c0a      	ldr	r4, [pc, #40]	; (189c <draw_balls+0x34>)
    1872:	6923      	ldr	r3, [r4, #16]
    1874:	9300      	str	r3, [sp, #0]
    1876:	2308      	movs	r3, #8
    1878:	461a      	mov	r2, r3
    187a:	6861      	ldr	r1, [r4, #4]
    187c:	6820      	ldr	r0, [r4, #0]
    187e:	f7ff ff93 	bl	17a8 <gfx_sprite>
    1882:	69a1      	ldr	r1, [r4, #24]
    1884:	6960      	ldr	r0, [r4, #20]
    1886:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1888:	9300      	str	r3, [sp, #0]
    188a:	2308      	movs	r3, #8
    188c:	461a      	mov	r2, r3
    188e:	f7ff ff8b 	bl	17a8 <gfx_sprite>
	}
	wait_sync_end();
    1892:	f001 fad9 	bl	2e48 <wait_sync_end>
}
    1896:	b002      	add	sp, #8
    1898:	bd10      	pop	{r4, pc}
    189a:	bf00      	nop
    189c:	200026a8 	.word	0x200026a8

000018a0 <isqrt>:

//REF: https://en.wikipedia.org/wiki/Integer_square_root
int isqrt(int n){
	int small, large;
	if (n<2) return n;
    18a0:	2801      	cmp	r0, #1
    18a2:	dd0c      	ble.n	18be <isqrt+0x1e>
int isqrt(int n){
    18a4:	b510      	push	{r4, lr}
    18a6:	4604      	mov	r4, r0
  	small = isqrt(n >> 2) << 1;
    18a8:	1080      	asrs	r0, r0, #2
    18aa:	f7ff fff9 	bl	18a0 <isqrt>
    18ae:	0040      	lsls	r0, r0, #1
	large = small + 1;
    18b0:	1c43      	adds	r3, r0, #1
	if (large*large > n)
    18b2:	fb03 f203 	mul.w	r2, r3, r3
		return small;
	else
		return large;	
    18b6:	4294      	cmp	r4, r2
    18b8:	bfa8      	it	ge
    18ba:	4618      	movge	r0, r3
}
    18bc:	bd10      	pop	{r4, pc}
    18be:	4770      	bx	lr

000018c0 <distance>:

unsigned distance(ball_t *ball1, ball_t *ball2){
    18c0:	b510      	push	{r4, lr}
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    18c2:	6803      	ldr	r3, [r0, #0]
    18c4:	680a      	ldr	r2, [r1, #0]
    18c6:	6844      	ldr	r4, [r0, #4]
    18c8:	6848      	ldr	r0, [r1, #4]
    18ca:	fb00 f004 	mul.w	r0, r0, r4
    18ce:	fb02 0003 	mla	r0, r2, r3, r0
    18d2:	2800      	cmp	r0, #0
    18d4:	bfb8      	it	lt
    18d6:	4240      	neglt	r0, r0
    18d8:	f7ff ffe2 	bl	18a0 <isqrt>
}
    18dc:	bd10      	pop	{r4, pc}

000018de <move_balls>:

void move_balls(){
    18de:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	int i;
	vmode_params_t *vparams=get_video_params();
    18e0:	f001 fae4 	bl	2eac <get_video_params>
    18e4:	4b1c      	ldr	r3, [pc, #112]	; (1958 <move_balls+0x7a>)
    18e6:	f103 0628 	add.w	r6, r3, #40	; 0x28
    18ea:	e005      	b.n	18f8 <move_balls+0x1a>
			balls[i].dx=-balls[i].dx;
			balls[i].x+=balls[i].dx;
		}
		balls[i].y+=balls[i].dy;
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
			balls[i].dy=-balls[i].dy;
    18ec:	4249      	negs	r1, r1
    18ee:	60d1      	str	r1, [r2, #12]
			balls[i].y+=balls[i].dy;
    18f0:	6055      	str	r5, [r2, #4]
    18f2:	3314      	adds	r3, #20
	for (i=0;i<BALL_COUNT;i++){
    18f4:	42b3      	cmp	r3, r6
    18f6:	d017      	beq.n	1928 <move_balls+0x4a>
    18f8:	461a      	mov	r2, r3
		balls[i].x+=balls[i].dx;
    18fa:	681d      	ldr	r5, [r3, #0]
    18fc:	6899      	ldr	r1, [r3, #8]
    18fe:	186c      	adds	r4, r5, r1
    1900:	601c      	str	r4, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    1902:	f114 0f07 	cmn.w	r4, #7
    1906:	db02      	blt.n	190e <move_balls+0x30>
    1908:	8987      	ldrh	r7, [r0, #12]
    190a:	42bc      	cmp	r4, r7
    190c:	db02      	blt.n	1914 <move_balls+0x36>
			balls[i].dx=-balls[i].dx;
    190e:	4249      	negs	r1, r1
    1910:	6091      	str	r1, [r2, #8]
			balls[i].x+=balls[i].dx;
    1912:	6015      	str	r5, [r2, #0]
		balls[i].y+=balls[i].dy;
    1914:	6855      	ldr	r5, [r2, #4]
    1916:	68d1      	ldr	r1, [r2, #12]
    1918:	186c      	adds	r4, r5, r1
    191a:	6054      	str	r4, [r2, #4]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    191c:	2c0f      	cmp	r4, #15
    191e:	dde5      	ble.n	18ec <move_balls+0xe>
    1920:	89c7      	ldrh	r7, [r0, #14]
    1922:	42bc      	cmp	r4, r7
    1924:	dbe5      	blt.n	18f2 <move_balls+0x14>
    1926:	e7e1      	b.n	18ec <move_balls+0xe>
		} 
	}
	// collision between balls
	if (distance(&balls[0],&balls[1])<8){
    1928:	480c      	ldr	r0, [pc, #48]	; (195c <move_balls+0x7e>)
    192a:	4601      	mov	r1, r0
    192c:	3814      	subs	r0, #20
    192e:	f7ff ffc7 	bl	18c0 <distance>
    1932:	2807      	cmp	r0, #7
    1934:	d80f      	bhi.n	1956 <move_balls+0x78>
		if (balls[0].dx!=balls[1].dx){
    1936:	4b08      	ldr	r3, [pc, #32]	; (1958 <move_balls+0x7a>)
    1938:	689a      	ldr	r2, [r3, #8]
    193a:	69db      	ldr	r3, [r3, #28]
    193c:	429a      	cmp	r2, r3
    193e:	d002      	beq.n	1946 <move_balls+0x68>
			i=balls[0].dx;
			balls[0].dx=balls[1].dx;
    1940:	4905      	ldr	r1, [pc, #20]	; (1958 <move_balls+0x7a>)
    1942:	608b      	str	r3, [r1, #8]
			balls[1].dx=i;
    1944:	61ca      	str	r2, [r1, #28]
		}
		if (balls[0].dy!=balls[1].dy){
    1946:	4b04      	ldr	r3, [pc, #16]	; (1958 <move_balls+0x7a>)
    1948:	68da      	ldr	r2, [r3, #12]
    194a:	6a1b      	ldr	r3, [r3, #32]
    194c:	429a      	cmp	r2, r3
    194e:	d002      	beq.n	1956 <move_balls+0x78>
			i=balls[0].dy;
			balls[0].dy=balls[1].dy;
    1950:	4901      	ldr	r1, [pc, #4]	; (1958 <move_balls+0x7a>)
    1952:	60cb      	str	r3, [r1, #12]
			balls[1].dy=i;
    1954:	620a      	str	r2, [r1, #32]
    1956:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1958:	200026a8 	.word	0x200026a8
    195c:	200026bc 	.word	0x200026bc

00001960 <init_balls>:
		}
	}
}


void init_balls(){
    1960:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	int i;
	vmode_params_t *vparams=get_video_params();
    1964:	f001 faa2 	bl	2eac <get_video_params>
    1968:	4605      	mov	r5, r0
	srand(ntsc_ticks);
    196a:	4b15      	ldr	r3, [pc, #84]	; (19c0 <init_balls+0x60>)
    196c:	6818      	ldr	r0, [r3, #0]
    196e:	f7fe fd3b 	bl	3e8 <srand>
    1972:	4c14      	ldr	r4, [pc, #80]	; (19c4 <init_balls+0x64>)
    1974:	f104 0928 	add.w	r9, r4, #40	; 0x28
	for (i=0;i<BALL_COUNT;i++){
		balls[i].x=rand()%vparams->hres;
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
		balls[i].dx=1;
    1978:	2601      	movs	r6, #1
		balls[i].dy=1;
		if (vparams->mode==VM_BPCHIP){
			balls[i].ball_sprite=ball8x8;
		}else{
			balls[i].ball_sprite=ball8x8_1bpp;
    197a:	4f13      	ldr	r7, [pc, #76]	; (19c8 <init_balls+0x68>)
    197c:	f107 0820 	add.w	r8, r7, #32
		balls[i].x=rand()%vparams->hres;
    1980:	f7fe fd38 	bl	3f4 <rand>
    1984:	89ab      	ldrh	r3, [r5, #12]
    1986:	fb90 f2f3 	sdiv	r2, r0, r3
    198a:	fb02 0013 	mls	r0, r2, r3, r0
    198e:	6020      	str	r0, [r4, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    1990:	f7fe fd30 	bl	3f4 <rand>
    1994:	89eb      	ldrh	r3, [r5, #14]
    1996:	3b10      	subs	r3, #16
    1998:	fb90 f2f3 	sdiv	r2, r0, r3
    199c:	fb02 0013 	mls	r0, r2, r3, r0
    19a0:	3010      	adds	r0, #16
    19a2:	6060      	str	r0, [r4, #4]
		balls[i].dx=1;
    19a4:	60a6      	str	r6, [r4, #8]
		balls[i].dy=1;
    19a6:	60e6      	str	r6, [r4, #12]
		if (vparams->mode==VM_BPCHIP){
    19a8:	782b      	ldrb	r3, [r5, #0]
			balls[i].ball_sprite=ball8x8;
    19aa:	2b00      	cmp	r3, #0
    19ac:	bf14      	ite	ne
    19ae:	4643      	movne	r3, r8
    19b0:	463b      	moveq	r3, r7
    19b2:	6123      	str	r3, [r4, #16]
    19b4:	3414      	adds	r4, #20
	for (i=0;i<BALL_COUNT;i++){
    19b6:	454c      	cmp	r4, r9
    19b8:	d1e2      	bne.n	1980 <init_balls+0x20>
		}
	}
}
    19ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    19be:	bf00      	nop
    19c0:	20004e34 	.word	0x20004e34
    19c4:	200026a8 	.word	0x200026a8
    19c8:	0000366c 	.word	0x0000366c

000019cc <main>:
			break;	
		}
	}//while
}

void main(void){
    19cc:	b500      	push	{lr}
    19ce:	b083      	sub	sp, #12
	RCC->CR|=RCC_CR_HSEON;
    19d0:	4a25      	ldr	r2, [pc, #148]	; (1a68 <main+0x9c>)
    19d2:	6813      	ldr	r3, [r2, #0]
    19d4:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    19d8:	6013      	str	r3, [r2, #0]
   while (!(RCC->CR&RCC_CR_HSERDY));
    19da:	4613      	mov	r3, r2
    19dc:	681a      	ldr	r2, [r3, #0]
    19de:	f412 3f00 	tst.w	r2, #131072	; 0x20000
    19e2:	d0fb      	beq.n	19dc <main+0x10>
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    19e4:	4b20      	ldr	r3, [pc, #128]	; (1a68 <main+0x9c>)
    19e6:	685a      	ldr	r2, [r3, #4]
    19e8:	f442 2250 	orr.w	r2, r2, #851968	; 0xd0000
    19ec:	605a      	str	r2, [r3, #4]
    RCC->CR|=RCC_CR_PLLON;
    19ee:	681a      	ldr	r2, [r3, #0]
    19f0:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
    19f4:	601a      	str	r2, [r3, #0]
    while (!(RCC->CR&RCC_CR_PLLRDY));
    19f6:	681a      	ldr	r2, [r3, #0]
    19f8:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
    19fc:	d0fb      	beq.n	19f6 <main+0x2a>
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    19fe:	4a1b      	ldr	r2, [pc, #108]	; (1a6c <main+0xa0>)
    1a00:	6813      	ldr	r3, [r2, #0]
    1a02:	f043 0312 	orr.w	r3, r3, #18
    1a06:	6013      	str	r3, [r2, #0]
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1a08:	f5a2 5280 	sub.w	r2, r2, #4096	; 0x1000
    1a0c:	6853      	ldr	r3, [r2, #4]
    1a0e:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1a12:	f043 0302 	orr.w	r3, r3, #2
    1a16:	6053      	str	r3, [r2, #4]
	set_sysclock();
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1a18:	f640 031d 	movw	r3, #2077	; 0x81d
    1a1c:	6193      	str	r3, [r2, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1a1e:	4c14      	ldr	r4, [pc, #80]	; (1a70 <main+0xa4>)
    1a20:	2206      	movs	r2, #6
    1a22:	210d      	movs	r1, #13
    1a24:	4620      	mov	r0, r4
    1a26:	f7ff fd23 	bl	1470 <config_pin>
	_led_off();
    1a2a:	68e3      	ldr	r3, [r4, #12]
    1a2c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1a30:	60e3      	str	r3, [r4, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    1a32:	2200      	movs	r2, #0
    1a34:	9201      	str	r2, [sp, #4]
    1a36:	2401      	movs	r4, #1
    1a38:	9400      	str	r4, [sp, #0]
    1a3a:	2303      	movs	r3, #3
    1a3c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    1a40:	480c      	ldr	r0, [pc, #48]	; (1a74 <main+0xa8>)
    1a42:	f001 faea 	bl	301a <usart_open_channel>
	gamepad_init();
    1a46:	f7ff faf1 	bl	102c <gamepad_init>
	tvout_init();
    1a4a:	f000 ffdf 	bl	2a0c <tvout_init>
	sound_init();
    1a4e:	f000 fc39 	bl	22c4 <sound_init>
	gfx_cls();
    1a52:	f7ff fdc3 	bl	15dc <gfx_cls>
		select_console(SERIAL);
    1a56:	4620      	mov	r0, r4
    1a58:	f000 ffc8 	bl	29ec <select_console>
		while(1)put_char(get_char());
    1a5c:	f000 ffcc 	bl	29f8 <get_char>
    1a60:	f000 fe68 	bl	2734 <put_char>
    1a64:	e7fa      	b.n	1a5c <main+0x90>
    1a66:	bf00      	nop
    1a68:	40021000 	.word	0x40021000
    1a6c:	40022000 	.word	0x40022000
    1a70:	40011000 	.word	0x40011000
    1a74:	40013800 	.word	0x40013800

00001a78 <enable_interrupt>:
#include "../include/blue_pill.h"



void enable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1a78:	283b      	cmp	r0, #59	; 0x3b
    1a7a:	dc0d      	bgt.n	1a98 <enable_interrupt+0x20>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1a7c:	1143      	asrs	r3, r0, #5
    1a7e:	009b      	lsls	r3, r3, #2
    1a80:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1a84:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1a88:	6819      	ldr	r1, [r3, #0]
    1a8a:	f000 001f 	and.w	r0, r0, #31
    1a8e:	2201      	movs	r2, #1
    1a90:	fa02 f000 	lsl.w	r0, r2, r0
    1a94:	4308      	orrs	r0, r1
    1a96:	6018      	str	r0, [r3, #0]
    1a98:	4770      	bx	lr

00001a9a <disable_interrupt>:
}


void disable_interrupt(int irq){
	if (irq>LAST_IRQ) return ;
    1a9a:	283b      	cmp	r0, #59	; 0x3b
    1a9c:	dc08      	bgt.n	1ab0 <disable_interrupt+0x16>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1a9e:	1142      	asrs	r2, r0, #5
    1aa0:	f000 001f 	and.w	r0, r0, #31
    1aa4:	2301      	movs	r3, #1
    1aa6:	fa03 f000 	lsl.w	r0, r3, r0
    1aaa:	4b02      	ldr	r3, [pc, #8]	; (1ab4 <disable_interrupt+0x1a>)
    1aac:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1ab0:	4770      	bx	lr
    1ab2:	bf00      	nop
    1ab4:	e000e180 	.word	0xe000e180

00001ab8 <get_pending>:
}

unsigned get_pending(int irq){
	if (irq>LAST_IRQ) return 0;
    1ab8:	283b      	cmp	r0, #59	; 0x3b
    1aba:	dc09      	bgt.n	1ad0 <get_pending+0x18>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1abc:	1142      	asrs	r2, r0, #5
    1abe:	4b05      	ldr	r3, [pc, #20]	; (1ad4 <get_pending+0x1c>)
    1ac0:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
    1ac4:	f000 031f 	and.w	r3, r0, #31
    1ac8:	2001      	movs	r0, #1
    1aca:	4098      	lsls	r0, r3
    1acc:	4010      	ands	r0, r2
    1ace:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1ad0:	2000      	movs	r0, #0
}
    1ad2:	4770      	bx	lr
    1ad4:	e000e280 	.word	0xe000e280

00001ad8 <get_active>:

unsigned get_active(int irq){
	if (irq>LAST_IRQ) return 0;
    1ad8:	283b      	cmp	r0, #59	; 0x3b
    1ada:	dc0c      	bgt.n	1af6 <get_active+0x1e>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    1adc:	1143      	asrs	r3, r0, #5
    1ade:	009b      	lsls	r3, r3, #2
    1ae0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1ae4:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1ae8:	681a      	ldr	r2, [r3, #0]
    1aea:	f000 031f 	and.w	r3, r0, #31
    1aee:	2001      	movs	r0, #1
    1af0:	4098      	lsls	r0, r3
    1af2:	4010      	ands	r0, r2
    1af4:	4770      	bx	lr
	if (irq>LAST_IRQ) return 0;
    1af6:	2000      	movs	r0, #0
}
    1af8:	4770      	bx	lr

00001afa <set_pending>:

void set_pending(int irq){
	if (irq>LAST_IRQ) return;
    1afa:	283b      	cmp	r0, #59	; 0x3b
    1afc:	dc0d      	bgt.n	1b1a <set_pending+0x20>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1afe:	1143      	asrs	r3, r0, #5
    1b00:	009b      	lsls	r3, r3, #2
    1b02:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1b06:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1b0a:	6819      	ldr	r1, [r3, #0]
    1b0c:	f000 001f 	and.w	r0, r0, #31
    1b10:	2201      	movs	r2, #1
    1b12:	fa02 f000 	lsl.w	r0, r2, r0
    1b16:	4308      	orrs	r0, r1
    1b18:	6018      	str	r0, [r3, #0]
    1b1a:	4770      	bx	lr

00001b1c <clear_pending>:
}

void clear_pending(int irq){
	if (irq>LAST_IRQ) return;
    1b1c:	283b      	cmp	r0, #59	; 0x3b
    1b1e:	dc08      	bgt.n	1b32 <clear_pending+0x16>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    1b20:	1142      	asrs	r2, r0, #5
    1b22:	f000 001f 	and.w	r0, r0, #31
    1b26:	2301      	movs	r3, #1
    1b28:	fa03 f000 	lsl.w	r0, r3, r0
    1b2c:	4b01      	ldr	r3, [pc, #4]	; (1b34 <clear_pending+0x18>)
    1b2e:	f843 0022 	str.w	r0, [r3, r2, lsl #2]
    1b32:	4770      	bx	lr
    1b34:	e000e280 	.word	0xe000e280

00001b38 <set_int_priority>:
}

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
	if ((irq>=0) && (irq<=LAST_IRQ)){
    1b38:	283b      	cmp	r0, #59	; 0x3b
    1b3a:	d90c      	bls.n	1b56 <set_int_priority+0x1e>
		IPR[irq]=(uint8_t)((priority&15)<<4);
	}else if ((irq<0) && (irq>-16)){
    1b3c:	f100 030f 	add.w	r3, r0, #15
    1b40:	2b0e      	cmp	r3, #14
    1b42:	d807      	bhi.n	1b54 <set_int_priority+0x1c>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    1b44:	f1c0 20ff 	rsb	r0, r0, #4278255360	; 0xff00ff00
    1b48:	f500 007f 	add.w	r0, r0, #16711680	; 0xff0000
    1b4c:	30fc      	adds	r0, #252	; 0xfc
    1b4e:	0109      	lsls	r1, r1, #4
    1b50:	4b04      	ldr	r3, [pc, #16]	; (1b64 <set_int_priority+0x2c>)
    1b52:	54c1      	strb	r1, [r0, r3]
    1b54:	4770      	bx	lr
		IPR[irq]=(uint8_t)((priority&15)<<4);
    1b56:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
    1b5a:	f500 4064 	add.w	r0, r0, #58368	; 0xe400
    1b5e:	0109      	lsls	r1, r1, #4
    1b60:	7001      	strb	r1, [r0, #0]
    1b62:	4770      	bx	lr
    1b64:	e000ed18 	.word	0xe000ed18

00001b68 <leap_year>:

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
	if (!(y&3)){
    1b68:	f010 0f03 	tst.w	r0, #3
    1b6c:	d113      	bne.n	1b96 <leap_year+0x2e>
		if ((y%100==0) && (y%400)){
    1b6e:	4b0c      	ldr	r3, [pc, #48]	; (1ba0 <leap_year+0x38>)
    1b70:	fba3 2300 	umull	r2, r3, r3, r0
    1b74:	095b      	lsrs	r3, r3, #5
    1b76:	2264      	movs	r2, #100	; 0x64
    1b78:	fb02 0313 	mls	r3, r2, r3, r0
    1b7c:	b96b      	cbnz	r3, 1b9a <leap_year+0x32>
    1b7e:	4b08      	ldr	r3, [pc, #32]	; (1ba0 <leap_year+0x38>)
    1b80:	fba3 2300 	umull	r2, r3, r3, r0
    1b84:	09db      	lsrs	r3, r3, #7
    1b86:	f44f 72c8 	mov.w	r2, #400	; 0x190
    1b8a:	fb02 0013 	mls	r0, r2, r3, r0
    1b8e:	fab0 f080 	clz	r0, r0
    1b92:	0940      	lsrs	r0, r0, #5
    1b94:	4770      	bx	lr
			return 0;
		}
		return 1;
	}
	return 0;
    1b96:	2000      	movs	r0, #0
    1b98:	4770      	bx	lr
		return 1;
    1b9a:	2001      	movs	r0, #1
}
    1b9c:	4770      	bx	lr
    1b9e:	bf00      	nop
    1ba0:	51eb851f 	.word	0x51eb851f

00001ba4 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    1ba4:	4b07      	ldr	r3, [pc, #28]	; (1bc4 <sec_per_month+0x20>)
    1ba6:	5c5a      	ldrb	r2, [r3, r1]
    1ba8:	4b07      	ldr	r3, [pc, #28]	; (1bc8 <sec_per_month+0x24>)
    1baa:	fb03 f302 	mul.w	r3, r3, r2
	if (month==2 && leap){
    1bae:	2902      	cmp	r1, #2
    1bb0:	d001      	beq.n	1bb6 <sec_per_month+0x12>
		sec+=SEC_PER_DAY;
	}
	return sec;
}
    1bb2:	4618      	mov	r0, r3
    1bb4:	4770      	bx	lr
	if (month==2 && leap){
    1bb6:	2800      	cmp	r0, #0
    1bb8:	d0fb      	beq.n	1bb2 <sec_per_month+0xe>
		sec+=SEC_PER_DAY;
    1bba:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1bbe:	f503 73c0 	add.w	r3, r3, #384	; 0x180
	return sec;
    1bc2:	e7f6      	b.n	1bb2 <sec_per_month+0xe>
    1bc4:	000036a4 	.word	0x000036a4
    1bc8:	00015180 	.word	0x00015180

00001bcc <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    1bcc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1bd0:	4606      	mov	r6, r0
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    1bd2:	4b37      	ldr	r3, [pc, #220]	; (1cb0 <get_date_time+0xe4>)
    1bd4:	699a      	ldr	r2, [r3, #24]
    1bd6:	69dc      	ldr	r4, [r3, #28]
    1bd8:	eb04 4402 	add.w	r4, r4, r2, lsl #16
	dt->year=EPOCH_YEAR;
    1bdc:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1be0:	8130      	strh	r0, [r6, #8]
	leap=leap_year(EPOCH_YEAR);
    1be2:	f7ff ffc1 	bl	1b68 <leap_year>
    1be6:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1be8:	4d32      	ldr	r5, [pc, #200]	; (1cb4 <get_date_time+0xe8>)
    1bea:	4f33      	ldr	r7, [pc, #204]	; (1cb8 <get_date_time+0xec>)
		if (leap){
			rtc_cntr-=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    1bec:	f8df 80dc 	ldr.w	r8, [pc, #220]	; 1ccc <get_date_time+0x100>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1bf0:	e00e      	b.n	1c10 <get_date_time+0x44>
			rtc_cntr-=SEC_PER_YEAR;
    1bf2:	4444      	add	r4, r8
    1bf4:	e005      	b.n	1c02 <get_date_time+0x36>
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1bf6:	42ac      	cmp	r4, r5
    1bf8:	d90f      	bls.n	1c1a <get_date_time+0x4e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    1bfa:	f1a4 74f1 	sub.w	r4, r4, #31588352	; 0x1e20000
    1bfe:	f5a4 4405 	sub.w	r4, r4, #34048	; 0x8500
		}
		dt->year++;
    1c02:	8930      	ldrh	r0, [r6, #8]
    1c04:	3001      	adds	r0, #1
    1c06:	b280      	uxth	r0, r0
    1c08:	8130      	strh	r0, [r6, #8]
		leap=leap_year(dt->year);
    1c0a:	f7ff ffad 	bl	1b68 <leap_year>
    1c0e:	4681      	mov	r9, r0
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    1c10:	f1b9 0f00 	cmp.w	r9, #0
    1c14:	d1ef      	bne.n	1bf6 <get_date_time+0x2a>
    1c16:	42bc      	cmp	r4, r7
    1c18:	d8eb      	bhi.n	1bf2 <get_date_time+0x26>
	}//while
	dt->month=1;
    1c1a:	8873      	ldrh	r3, [r6, #2]
    1c1c:	2201      	movs	r2, #1
    1c1e:	f362 1389 	bfi	r3, r2, #6, #4
    1c22:	8073      	strh	r3, [r6, #2]
	dt->day=1;
    1c24:	f362 0345 	bfi	r3, r2, #1, #5
    1c28:	70b3      	strb	r3, [r6, #2]
	dt->hour=0;
    1c2a:	6833      	ldr	r3, [r6, #0]
    1c2c:	f36f 3310 	bfc	r3, #12, #5
    1c30:	6033      	str	r3, [r6, #0]
	dt->minute=0;
    1c32:	f36f 138b 	bfc	r3, #6, #6
    1c36:	8033      	strh	r3, [r6, #0]
	dt->second=0;
    1c38:	f36f 0305 	bfc	r3, #0, #6
    1c3c:	7033      	strb	r3, [r6, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1c3e:	e005      	b.n	1c4c <get_date_time+0x80>
		dt->month++;
    1c40:	3501      	adds	r5, #1
    1c42:	8873      	ldrh	r3, [r6, #2]
    1c44:	f365 1389 	bfi	r3, r5, #6, #4
    1c48:	8073      	strh	r3, [r6, #2]
		rtc_cntr-=sec;
    1c4a:	1a24      	subs	r4, r4, r0
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1c4c:	8875      	ldrh	r5, [r6, #2]
    1c4e:	f3c5 1583 	ubfx	r5, r5, #6, #4
    1c52:	4629      	mov	r1, r5
    1c54:	4648      	mov	r0, r9
    1c56:	f7ff ffa5 	bl	1ba4 <sec_per_month>
    1c5a:	4284      	cmp	r4, r0
    1c5c:	d8f0      	bhi.n	1c40 <get_date_time+0x74>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    1c5e:	4a17      	ldr	r2, [pc, #92]	; (1cbc <get_date_time+0xf0>)
    1c60:	fba2 3204 	umull	r3, r2, r2, r4
    1c64:	0c12      	lsrs	r2, r2, #16
    1c66:	1c51      	adds	r1, r2, #1
    1c68:	78b3      	ldrb	r3, [r6, #2]
    1c6a:	f361 0345 	bfi	r3, r1, #1, #5
    1c6e:	70b3      	strb	r3, [r6, #2]
	rtc_cntr%=SEC_PER_DAY;
    1c70:	4b13      	ldr	r3, [pc, #76]	; (1cc0 <get_date_time+0xf4>)
    1c72:	fb03 4212 	mls	r2, r3, r2, r4
	dt->hour=rtc_cntr/SEC_PER_HR;
    1c76:	4c13      	ldr	r4, [pc, #76]	; (1cc4 <get_date_time+0xf8>)
    1c78:	fba4 3402 	umull	r3, r4, r4, r2
    1c7c:	0ae4      	lsrs	r4, r4, #11
    1c7e:	6833      	ldr	r3, [r6, #0]
    1c80:	f364 3310 	bfi	r3, r4, #12, #5
    1c84:	6033      	str	r3, [r6, #0]
	rtc_cntr%=SEC_PER_HR;
    1c86:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1c8a:	fb01 2414 	mls	r4, r1, r4, r2
	dt->minute=rtc_cntr/SEC_PER_MIN;
    1c8e:	4a0e      	ldr	r2, [pc, #56]	; (1cc8 <get_date_time+0xfc>)
    1c90:	fba2 1204 	umull	r1, r2, r2, r4
    1c94:	0952      	lsrs	r2, r2, #5
    1c96:	f362 138b 	bfi	r3, r2, #6, #6
    1c9a:	8033      	strh	r3, [r6, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    1c9c:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    1ca0:	eba4 0482 	sub.w	r4, r4, r2, lsl #2
    1ca4:	f364 0305 	bfi	r3, r4, #0, #6
    1ca8:	7033      	strb	r3, [r6, #0]
    1caa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    1cae:	bf00      	nop
    1cb0:	40002800 	.word	0x40002800
    1cb4:	01e284ff 	.word	0x01e284ff
    1cb8:	01e1337f 	.word	0x01e1337f
    1cbc:	c22e4507 	.word	0xc22e4507
    1cc0:	00015180 	.word	0x00015180
    1cc4:	91a2b3c5 	.word	0x91a2b3c5
    1cc8:	88888889 	.word	0x88888889
    1ccc:	fe1ecc80 	.word	0xfe1ecc80

00001cd0 <set_date_time>:
}

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    1cd0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    1cd4:	4680      	mov	r8, r0
	uint32_t i,rtc_cntr=0;
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    1cd6:	8903      	ldrh	r3, [r0, #8]
    1cd8:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1cdc:	4293      	cmp	r3, r2
    1cde:	d857      	bhi.n	1d90 <set_date_time+0xc0>
    1ce0:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1ce4:	f8a8 0008 	strh.w	r0, [r8, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
	leap=leap_year(dt->year);
    1ce8:	f7ff ff3e 	bl	1b68 <leap_year>
    1cec:	4607      	mov	r7, r0
	uint32_t i,rtc_cntr=0;
    1cee:	2400      	movs	r4, #0
			rtc_cntr+=SEC_PER_LEAP_YEAR;
		}else{
			rtc_cntr+=SEC_PER_YEAR;
		}
	}
	for (i=1;i<dt->month;i++){
    1cf0:	f8b8 6002 	ldrh.w	r6, [r8, #2]
    1cf4:	f3c6 1683 	ubfx	r6, r6, #6, #4
    1cf8:	2e01      	cmp	r6, #1
    1cfa:	d908      	bls.n	1d0e <set_date_time+0x3e>
    1cfc:	2501      	movs	r5, #1
		rtc_cntr+=sec_per_month(leap,i);
    1cfe:	4629      	mov	r1, r5
    1d00:	4638      	mov	r0, r7
    1d02:	f7ff ff4f 	bl	1ba4 <sec_per_month>
    1d06:	4404      	add	r4, r0
	for (i=1;i<dt->month;i++){
    1d08:	3501      	adds	r5, #1
    1d0a:	42b5      	cmp	r5, r6
    1d0c:	d1f7      	bne.n	1cfe <set_date_time+0x2e>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    1d0e:	f8d8 2000 	ldr.w	r2, [r8]
    1d12:	f3c2 3304 	ubfx	r3, r2, #12, #5
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    1d16:	f8b8 2000 	ldrh.w	r2, [r8]
    1d1a:	f3c2 1285 	ubfx	r2, r2, #6, #6
    1d1e:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
    1d22:	0092      	lsls	r2, r2, #2
	rtc_cntr+=dt->second;
    1d24:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1d28:	fb01 2203 	mla	r2, r1, r3, r2
    1d2c:	f898 3000 	ldrb.w	r3, [r8]
    1d30:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1d34:	441a      	add	r2, r3
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    1d36:	f898 3002 	ldrb.w	r3, [r8, #2]
    1d3a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1d3e:	3b01      	subs	r3, #1
	rtc_cntr+=dt->second;
    1d40:	4928      	ldr	r1, [pc, #160]	; (1de4 <set_date_time+0x114>)
    1d42:	fb01 2303 	mla	r3, r1, r3, r2
    1d46:	441c      	add	r4, r3
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1d48:	4a27      	ldr	r2, [pc, #156]	; (1de8 <set_date_time+0x118>)
    1d4a:	69d3      	ldr	r3, [r2, #28]
    1d4c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1d50:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1d52:	f5a2 32d0 	sub.w	r2, r2, #106496	; 0x1a000
    1d56:	6813      	ldr	r3, [r2, #0]
    1d58:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1d5c:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    1d5e:	4b23      	ldr	r3, [pc, #140]	; (1dec <set_date_time+0x11c>)
    1d60:	685a      	ldr	r2, [r3, #4]
    1d62:	f042 0210 	orr.w	r2, r2, #16
    1d66:	605a      	str	r2, [r3, #4]
	RTC->CNTH=rtc_cntr>>16;
    1d68:	0c22      	lsrs	r2, r4, #16
    1d6a:	619a      	str	r2, [r3, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    1d6c:	b2a4      	uxth	r4, r4
    1d6e:	61dc      	str	r4, [r3, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    1d70:	685a      	ldr	r2, [r3, #4]
    1d72:	f022 0210 	bic.w	r2, r2, #16
    1d76:	605a      	str	r2, [r3, #4]
	_wait_rtc_write();
    1d78:	461a      	mov	r2, r3
    1d7a:	6853      	ldr	r3, [r2, #4]
    1d7c:	f013 0f20 	tst.w	r3, #32
    1d80:	d0fb      	beq.n	1d7a <set_date_time+0xaa>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    1d82:	4a1b      	ldr	r2, [pc, #108]	; (1df0 <set_date_time+0x120>)
    1d84:	6813      	ldr	r3, [r2, #0]
    1d86:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1d8a:	6013      	str	r3, [r2, #0]
    1d8c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    1d90:	f640 023a 	movw	r2, #2106	; 0x83a
    1d94:	4293      	cmp	r3, r2
    1d96:	d90c      	bls.n	1db2 <set_date_time+0xe2>
    1d98:	4616      	mov	r6, r2
    1d9a:	f8a8 2008 	strh.w	r2, [r8, #8]
	leap=leap_year(dt->year);
    1d9e:	4610      	mov	r0, r2
    1da0:	f7ff fee2 	bl	1b68 <leap_year>
    1da4:	4607      	mov	r7, r0
    1da6:	2400      	movs	r4, #0
    1da8:	f240 75b2 	movw	r5, #1970	; 0x7b2
			rtc_cntr+=SEC_PER_YEAR;
    1dac:	f8df 9044 	ldr.w	r9, [pc, #68]	; 1df4 <set_date_time+0x124>
    1db0:	e00e      	b.n	1dd0 <set_date_time+0x100>
	leap=leap_year(dt->year);
    1db2:	8906      	ldrh	r6, [r0, #8]
    1db4:	4630      	mov	r0, r6
    1db6:	f7ff fed7 	bl	1b68 <leap_year>
    1dba:	4607      	mov	r7, r0
	for (i=EPOCH_YEAR;i<dt->year;i++){
    1dbc:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1dc0:	429e      	cmp	r6, r3
    1dc2:	d8f0      	bhi.n	1da6 <set_date_time+0xd6>
	uint32_t i,rtc_cntr=0;
    1dc4:	2400      	movs	r4, #0
    1dc6:	e793      	b.n	1cf0 <set_date_time+0x20>
			rtc_cntr+=SEC_PER_YEAR;
    1dc8:	444c      	add	r4, r9
	for (i=EPOCH_YEAR;i<dt->year;i++){
    1dca:	3501      	adds	r5, #1
    1dcc:	42b5      	cmp	r5, r6
    1dce:	d28f      	bcs.n	1cf0 <set_date_time+0x20>
		if (leap_year(i)){
    1dd0:	4628      	mov	r0, r5
    1dd2:	f7ff fec9 	bl	1b68 <leap_year>
    1dd6:	2800      	cmp	r0, #0
    1dd8:	d0f6      	beq.n	1dc8 <set_date_time+0xf8>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    1dda:	f104 74f1 	add.w	r4, r4, #31588352	; 0x1e20000
    1dde:	f504 4405 	add.w	r4, r4, #34048	; 0x8500
    1de2:	e7f2      	b.n	1dca <set_date_time+0xfa>
    1de4:	00015180 	.word	0x00015180
    1de8:	40021000 	.word	0x40021000
    1dec:	40002800 	.word	0x40002800
    1df0:	40007000 	.word	0x40007000
    1df4:	01e13380 	.word	0x01e13380

00001df8 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    1df8:	b510      	push	{r4, lr}
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    1dfa:	4b35      	ldr	r3, [pc, #212]	; (1ed0 <rtc_init+0xd8>)
    1dfc:	685a      	ldr	r2, [r3, #4]
    1dfe:	f64a 2355 	movw	r3, #43605	; 0xaa55
    1e02:	429a      	cmp	r2, r3
    1e04:	d05c      	beq.n	1ec0 <rtc_init+0xc8>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1e06:	4b33      	ldr	r3, [pc, #204]	; (1ed4 <rtc_init+0xdc>)
    1e08:	69da      	ldr	r2, [r3, #28]
    1e0a:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    1e0e:	61da      	str	r2, [r3, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    1e10:	4c31      	ldr	r4, [pc, #196]	; (1ed8 <rtc_init+0xe0>)
    1e12:	6822      	ldr	r2, [r4, #0]
    1e14:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    1e18:	6022      	str	r2, [r4, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    1e1a:	6a1a      	ldr	r2, [r3, #32]
    1e1c:	f042 0201 	orr.w	r2, r2, #1
    1e20:	621a      	str	r2, [r3, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    1e22:	461a      	mov	r2, r3
    1e24:	6a13      	ldr	r3, [r2, #32]
    1e26:	f013 0f02 	tst.w	r3, #2
    1e2a:	d0fb      	beq.n	1e24 <rtc_init+0x2c>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    1e2c:	4a29      	ldr	r2, [pc, #164]	; (1ed4 <rtc_init+0xdc>)
    1e2e:	6a13      	ldr	r3, [r2, #32]
    1e30:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1e34:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    1e36:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    1e3a:	6853      	ldr	r3, [r2, #4]
    1e3c:	f013 0f08 	tst.w	r3, #8
    1e40:	d0fb      	beq.n	1e3a <rtc_init+0x42>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    1e42:	4a26      	ldr	r2, [pc, #152]	; (1edc <rtc_init+0xe4>)
    1e44:	6853      	ldr	r3, [r2, #4]
    1e46:	f013 0f20 	tst.w	r3, #32
    1e4a:	d0fb      	beq.n	1e44 <rtc_init+0x4c>
		RTC->CRL|=RTC_CRL_CNF;
    1e4c:	4a23      	ldr	r2, [pc, #140]	; (1edc <rtc_init+0xe4>)
    1e4e:	6853      	ldr	r3, [r2, #4]
    1e50:	f043 0310 	orr.w	r3, r3, #16
    1e54:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    1e56:	6853      	ldr	r3, [r2, #4]
    1e58:	f013 0f20 	tst.w	r3, #32
    1e5c:	d0fb      	beq.n	1e56 <rtc_init+0x5e>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    1e5e:	4a1f      	ldr	r2, [pc, #124]	; (1edc <rtc_init+0xe4>)
    1e60:	6813      	ldr	r3, [r2, #0]
    1e62:	4319      	orrs	r1, r3
    1e64:	6011      	str	r1, [r2, #0]
		_wait_rtc_write();
    1e66:	6853      	ldr	r3, [r2, #4]
    1e68:	f013 0f20 	tst.w	r3, #32
    1e6c:	d0fb      	beq.n	1e66 <rtc_init+0x6e>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    1e6e:	03c2      	lsls	r2, r0, #15
    1e70:	481b      	ldr	r0, [pc, #108]	; (1ee0 <rtc_init+0xe8>)
    1e72:	fba0 3202 	umull	r3, r2, r0, r2
    1e76:	0992      	lsrs	r2, r2, #6
    1e78:	3a01      	subs	r2, #1
    1e7a:	b291      	uxth	r1, r2
    1e7c:	4b17      	ldr	r3, [pc, #92]	; (1edc <rtc_init+0xe4>)
    1e7e:	60d9      	str	r1, [r3, #12]
		_wait_rtc_write();
    1e80:	4619      	mov	r1, r3
    1e82:	684b      	ldr	r3, [r1, #4]
    1e84:	f013 0f20 	tst.w	r3, #32
    1e88:	d0fb      	beq.n	1e82 <rtc_init+0x8a>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    1e8a:	f3c2 4203 	ubfx	r2, r2, #16, #4
    1e8e:	4b13      	ldr	r3, [pc, #76]	; (1edc <rtc_init+0xe4>)
    1e90:	609a      	str	r2, [r3, #8]
		_wait_rtc_write();
    1e92:	461a      	mov	r2, r3
    1e94:	6853      	ldr	r3, [r2, #4]
    1e96:	f013 0f20 	tst.w	r3, #32
    1e9a:	d0fb      	beq.n	1e94 <rtc_init+0x9c>
		BKP->DR[0]=RTC_ACCESS_CODE;
    1e9c:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1ea0:	4b0b      	ldr	r3, [pc, #44]	; (1ed0 <rtc_init+0xd8>)
    1ea2:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    1ea4:	4a0d      	ldr	r2, [pc, #52]	; (1edc <rtc_init+0xe4>)
    1ea6:	6853      	ldr	r3, [r2, #4]
    1ea8:	f023 0310 	bic.w	r3, r3, #16
    1eac:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    1eae:	6853      	ldr	r3, [r2, #4]
    1eb0:	f013 0f20 	tst.w	r3, #32
    1eb4:	d0fb      	beq.n	1eae <rtc_init+0xb6>
		PWR->CR&=~PWR_CR_DBP;
    1eb6:	4a08      	ldr	r2, [pc, #32]	; (1ed8 <rtc_init+0xe0>)
    1eb8:	6813      	ldr	r3, [r2, #0]
    1eba:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1ebe:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    1ec0:	210f      	movs	r1, #15
    1ec2:	2003      	movs	r0, #3
    1ec4:	f7ff fe38 	bl	1b38 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    1ec8:	2003      	movs	r0, #3
    1eca:	f7ff fdd5 	bl	1a78 <enable_interrupt>
    1ece:	bd10      	pop	{r4, pc}
    1ed0:	40006c00 	.word	0x40006c00
    1ed4:	40021000 	.word	0x40021000
    1ed8:	40007000 	.word	0x40007000
    1edc:	40002800 	.word	0x40002800
    1ee0:	10624dd3 	.word	0x10624dd3

00001ee4 <reset_backup_domain>:
}

// réinitialise le backup domain
inline void reset_backup_domain(){
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1ee4:	4b06      	ldr	r3, [pc, #24]	; (1f00 <reset_backup_domain+0x1c>)
    1ee6:	69da      	ldr	r2, [r3, #28]
    1ee8:	f042 52c0 	orr.w	r2, r2, #402653184	; 0x18000000
    1eec:	61da      	str	r2, [r3, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    1eee:	6a1a      	ldr	r2, [r3, #32]
    1ef0:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
    1ef4:	621a      	str	r2, [r3, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    1ef6:	6a1a      	ldr	r2, [r3, #32]
    1ef8:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
    1efc:	621a      	str	r2, [r3, #32]
    1efe:	4770      	bx	lr
    1f00:	40021000 	.word	0x40021000

00001f04 <rtc_clock_trim>:
// la précision.
void rtc_clock_trim(int trim){
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1f04:	4a27      	ldr	r2, [pc, #156]	; (1fa4 <rtc_clock_trim+0xa0>)
    1f06:	69d3      	ldr	r3, [r2, #28]
    1f08:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1f0c:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    1f0e:	f5a2 32f4 	sub.w	r2, r2, #124928	; 0x1e800
    1f12:	6853      	ldr	r3, [r2, #4]
    1f14:	f013 0f08 	tst.w	r3, #8
    1f18:	d0fb      	beq.n	1f12 <rtc_clock_trim+0xe>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1f1a:	4a23      	ldr	r2, [pc, #140]	; (1fa8 <rtc_clock_trim+0xa4>)
    1f1c:	6813      	ldr	r3, [r2, #0]
    1f1e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1f22:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    1f24:	f5a2 4290 	sub.w	r2, r2, #18432	; 0x4800
    1f28:	6853      	ldr	r3, [r2, #4]
    1f2a:	f043 0310 	orr.w	r3, r3, #16
    1f2e:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    1f30:	f502 4288 	add.w	r2, r2, #17408	; 0x4400
    1f34:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
    1f36:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1f3a:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    1f3c:	b9b8      	cbnz	r0, 1f6e <rtc_clock_trim+0x6a>
		BKP->RTCCR=0;
    1f3e:	2200      	movs	r2, #0
    1f40:	4b1a      	ldr	r3, [pc, #104]	; (1fac <rtc_clock_trim+0xa8>)
    1f42:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    1f44:	f5a3 4388 	sub.w	r3, r3, #17408	; 0x4400
    1f48:	f647 71ff 	movw	r1, #32767	; 0x7fff
    1f4c:	60d9      	str	r1, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    1f4e:	609a      	str	r2, [r3, #8]
		BKP->RTCCR=0;
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    1f50:	4a17      	ldr	r2, [pc, #92]	; (1fb0 <rtc_clock_trim+0xac>)
    1f52:	6853      	ldr	r3, [r2, #4]
    1f54:	f023 0310 	bic.w	r3, r3, #16
    1f58:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    1f5a:	6853      	ldr	r3, [r2, #4]
    1f5c:	f013 0f20 	tst.w	r3, #32
    1f60:	d0fb      	beq.n	1f5a <rtc_clock_trim+0x56>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    1f62:	4a11      	ldr	r2, [pc, #68]	; (1fa8 <rtc_clock_trim+0xa4>)
    1f64:	6813      	ldr	r3, [r2, #0]
    1f66:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1f6a:	6013      	str	r3, [r2, #0]
    1f6c:	4770      	bx	lr
	}else if (trim>0){// trop rapide on ralentie
    1f6e:	2800      	cmp	r0, #0
    1f70:	dd06      	ble.n	1f80 <rtc_clock_trim+0x7c>
		BKP->RTCCR|=trim;
    1f72:	4b0e      	ldr	r3, [pc, #56]	; (1fac <rtc_clock_trim+0xa8>)
    1f74:	6ada      	ldr	r2, [r3, #44]	; 0x2c
		trim&=0x7f;
    1f76:	f000 007f 	and.w	r0, r0, #127	; 0x7f
		BKP->RTCCR|=trim;
    1f7a:	4310      	orrs	r0, r2
    1f7c:	62d8      	str	r0, [r3, #44]	; 0x2c
    1f7e:	e7e7      	b.n	1f50 <rtc_clock_trim+0x4c>
		trim=-trim;
    1f80:	4240      	negs	r0, r0
		BKP->RTCCR=0;
    1f82:	2100      	movs	r1, #0
    1f84:	4b09      	ldr	r3, [pc, #36]	; (1fac <rtc_clock_trim+0xa8>)
    1f86:	62d9      	str	r1, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    1f88:	f64f 73ff 	movw	r3, #65535	; 0xffff
    1f8c:	287f      	cmp	r0, #127	; 0x7f
    1f8e:	bfd4      	ite	le
    1f90:	1a18      	suble	r0, r3, r0
    1f92:	f1a3 007f 	subgt.w	r0, r3, #127	; 0x7f
    1f96:	f3c0 000e 	ubfx	r0, r0, #0, #15
    1f9a:	4a05      	ldr	r2, [pc, #20]	; (1fb0 <rtc_clock_trim+0xac>)
    1f9c:	60d0      	str	r0, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    1f9e:	6091      	str	r1, [r2, #8]
    1fa0:	e7d6      	b.n	1f50 <rtc_clock_trim+0x4c>
    1fa2:	bf00      	nop
    1fa4:	40021000 	.word	0x40021000
    1fa8:	40007000 	.word	0x40007000
    1fac:	40006c00 	.word	0x40006c00
    1fb0:	40002800 	.word	0x40002800

00001fb4 <rtc_set_alarm>:
}

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    1fb4:	4770      	bx	lr

00001fb6 <str_to_date>:
}

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    1fb6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    1fba:	4607      	mov	r7, r0
    1fbc:	4688      	mov	r8, r1
    1fbe:	4605      	mov	r5, r0
	int i,n;
	
	i=0;
	n=0;
    1fc0:	2400      	movs	r4, #0
	i=0;
    1fc2:	4626      	mov	r6, r4
	while (digit(date[i])){
    1fc4:	e008      	b.n	1fd8 <str_to_date+0x22>
		n=n*10+date[i++]-'0';
    1fc6:	3601      	adds	r6, #1
    1fc8:	3501      	adds	r5, #1
    1fca:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    1fce:	f899 3000 	ldrb.w	r3, [r9]
    1fd2:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    1fd6:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    1fd8:	46a9      	mov	r9, r5
    1fda:	7828      	ldrb	r0, [r5, #0]
    1fdc:	f7ff f91d 	bl	121a <digit>
    1fe0:	4682      	mov	sl, r0
    1fe2:	2800      	cmp	r0, #0
    1fe4:	d1ef      	bne.n	1fc6 <str_to_date+0x10>
	}
	if ((i<4) || date[i]!='/') return 0;
    1fe6:	2e03      	cmp	r6, #3
    1fe8:	dd02      	ble.n	1ff0 <str_to_date+0x3a>
    1fea:	782b      	ldrb	r3, [r5, #0]
    1fec:	2b2f      	cmp	r3, #47	; 0x2f
    1fee:	d002      	beq.n	1ff6 <str_to_date+0x40>
		n=n*10+date[i++]-'0';
	}
	if (i<10) return 0;
	dt->day=n;
	return 1;
}
    1ff0:	4650      	mov	r0, sl
    1ff2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	dt->year=n;
    1ff6:	f8a8 4008 	strh.w	r4, [r8, #8]
	i++;
    1ffa:	3601      	adds	r6, #1
    1ffc:	19bd      	adds	r5, r7, r6
	n=0;
    1ffe:	4604      	mov	r4, r0
	while (digit(date[i])){
    2000:	e008      	b.n	2014 <str_to_date+0x5e>
		n=n*10+date[i++]-'0';
    2002:	3601      	adds	r6, #1
    2004:	3501      	adds	r5, #1
    2006:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    200a:	f899 3000 	ldrb.w	r3, [r9]
    200e:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    2012:	3c30      	subs	r4, #48	; 0x30
	while (digit(date[i])){
    2014:	46a9      	mov	r9, r5
    2016:	7828      	ldrb	r0, [r5, #0]
    2018:	f7ff f8ff 	bl	121a <digit>
    201c:	4682      	mov	sl, r0
    201e:	2800      	cmp	r0, #0
    2020:	d1ef      	bne.n	2002 <str_to_date+0x4c>
	if ((i<7) || date[i]!='/') return 0;
    2022:	2e06      	cmp	r6, #6
    2024:	dde4      	ble.n	1ff0 <str_to_date+0x3a>
    2026:	782b      	ldrb	r3, [r5, #0]
    2028:	2b2f      	cmp	r3, #47	; 0x2f
    202a:	d1e1      	bne.n	1ff0 <str_to_date+0x3a>
	dt->month=n;
    202c:	f8b8 3002 	ldrh.w	r3, [r8, #2]
    2030:	f364 1389 	bfi	r3, r4, #6, #4
    2034:	f8a8 3002 	strh.w	r3, [r8, #2]
	i++;
    2038:	1c74      	adds	r4, r6, #1
    203a:	443e      	add	r6, r7
	while (digit(date[i])){
    203c:	e008      	b.n	2050 <str_to_date+0x9a>
		n=n*10+date[i++]-'0';
    203e:	3401      	adds	r4, #1
    2040:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
    2044:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2048:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
    204c:	f1aa 0a30 	sub.w	sl, sl, #48	; 0x30
	while (digit(date[i])){
    2050:	7870      	ldrb	r0, [r6, #1]
    2052:	f7ff f8e2 	bl	121a <digit>
    2056:	2800      	cmp	r0, #0
    2058:	d1f1      	bne.n	203e <str_to_date+0x88>
	if (i<10) return 0;
    205a:	2c09      	cmp	r4, #9
    205c:	dd08      	ble.n	2070 <str_to_date+0xba>
	dt->day=n;
    205e:	f898 3002 	ldrb.w	r3, [r8, #2]
    2062:	f36a 0345 	bfi	r3, sl, #1, #5
    2066:	f888 3002 	strb.w	r3, [r8, #2]
	return 1;
    206a:	f04f 0a01 	mov.w	sl, #1
    206e:	e7bf      	b.n	1ff0 <str_to_date+0x3a>
	if (i<10) return 0;
    2070:	4682      	mov	sl, r0
    2072:	e7bd      	b.n	1ff0 <str_to_date+0x3a>

00002074 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    2074:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2078:	4607      	mov	r7, r0
    207a:	4688      	mov	r8, r1
    207c:	4605      	mov	r5, r0
	int i;
	unsigned char n;
	
	i=0;
	n=0;
    207e:	2400      	movs	r4, #0
	i=0;
    2080:	4626      	mov	r6, r4
	while (digit(time[i])){
    2082:	e00a      	b.n	209a <str_to_time+0x26>
		n=n*10+time[i++]-'0';
    2084:	3601      	adds	r6, #1
    2086:	3501      	adds	r5, #1
    2088:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    208c:	0064      	lsls	r4, r4, #1
    208e:	3c30      	subs	r4, #48	; 0x30
    2090:	f899 3000 	ldrb.w	r3, [r9]
    2094:	441c      	add	r4, r3
    2096:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    209a:	46a9      	mov	r9, r5
    209c:	7828      	ldrb	r0, [r5, #0]
    209e:	f7ff f8bc 	bl	121a <digit>
    20a2:	4603      	mov	r3, r0
    20a4:	2800      	cmp	r0, #0
    20a6:	d1ed      	bne.n	2084 <str_to_time+0x10>
	}
	if ((n>23) || time[i]!=':') return 0;
    20a8:	2c17      	cmp	r4, #23
    20aa:	d802      	bhi.n	20b2 <str_to_time+0x3e>
    20ac:	782a      	ldrb	r2, [r5, #0]
    20ae:	2a3a      	cmp	r2, #58	; 0x3a
    20b0:	d002      	beq.n	20b8 <str_to_time+0x44>
		n=n*10+time[i++]-'0';
	}
	if (n>59) return 0;
	dt->second=n;
	return 1;
}
    20b2:	4618      	mov	r0, r3
    20b4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	dt->hour=n;
    20b8:	f8d8 3000 	ldr.w	r3, [r8]
    20bc:	f364 3310 	bfi	r3, r4, #12, #5
    20c0:	f8c8 3000 	str.w	r3, [r8]
	i++;
    20c4:	3601      	adds	r6, #1
    20c6:	19bd      	adds	r5, r7, r6
	n=0;
    20c8:	2400      	movs	r4, #0
	while (digit(time[i])){
    20ca:	e00a      	b.n	20e2 <str_to_time+0x6e>
		n=n*10+time[i++]-'0';
    20cc:	3601      	adds	r6, #1
    20ce:	3501      	adds	r5, #1
    20d0:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    20d4:	0064      	lsls	r4, r4, #1
    20d6:	3c30      	subs	r4, #48	; 0x30
    20d8:	f899 3000 	ldrb.w	r3, [r9]
    20dc:	441c      	add	r4, r3
    20de:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    20e2:	46a9      	mov	r9, r5
    20e4:	7828      	ldrb	r0, [r5, #0]
    20e6:	f7ff f898 	bl	121a <digit>
    20ea:	4603      	mov	r3, r0
    20ec:	2800      	cmp	r0, #0
    20ee:	d1ed      	bne.n	20cc <str_to_time+0x58>
	if ((n>59) || time[i]!=':') return 0;
    20f0:	2c3b      	cmp	r4, #59	; 0x3b
    20f2:	d8de      	bhi.n	20b2 <str_to_time+0x3e>
    20f4:	782a      	ldrb	r2, [r5, #0]
    20f6:	2a3a      	cmp	r2, #58	; 0x3a
    20f8:	d1db      	bne.n	20b2 <str_to_time+0x3e>
	dt->minute=n;
    20fa:	f8b8 3000 	ldrh.w	r3, [r8]
    20fe:	f364 138b 	bfi	r3, r4, #6, #6
    2102:	f8a8 3000 	strh.w	r3, [r8]
    2106:	443e      	add	r6, r7
	n=0;
    2108:	2400      	movs	r4, #0
	while (digit(time[i])){
    210a:	e008      	b.n	211e <str_to_time+0xaa>
		n=n*10+time[i++]-'0';
    210c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2110:	0064      	lsls	r4, r4, #1
    2112:	3c30      	subs	r4, #48	; 0x30
    2114:	f816 3f01 	ldrb.w	r3, [r6, #1]!
    2118:	441c      	add	r4, r3
    211a:	f004 04ff 	and.w	r4, r4, #255	; 0xff
	while (digit(time[i])){
    211e:	7870      	ldrb	r0, [r6, #1]
    2120:	f7ff f87b 	bl	121a <digit>
    2124:	4603      	mov	r3, r0
    2126:	2800      	cmp	r0, #0
    2128:	d1f0      	bne.n	210c <str_to_time+0x98>
	if (n>59) return 0;
    212a:	2c3b      	cmp	r4, #59	; 0x3b
    212c:	d8c1      	bhi.n	20b2 <str_to_time+0x3e>
	dt->second=n;
    212e:	f898 3000 	ldrb.w	r3, [r8]
    2132:	f364 0305 	bfi	r3, r4, #0, #6
    2136:	f888 3000 	strb.w	r3, [r8]
	return 1;
    213a:	2301      	movs	r3, #1
    213c:	e7b9      	b.n	20b2 <str_to_time+0x3e>

0000213e <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    213e:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->year;
    2140:	8902      	ldrh	r2, [r0, #8]
	buffer[i++]=n/1000+'0';
    2142:	4b23      	ldr	r3, [pc, #140]	; (21d0 <date_str+0x92>)
    2144:	fba3 4302 	umull	r4, r3, r3, r2
    2148:	099b      	lsrs	r3, r3, #6
    214a:	f103 0430 	add.w	r4, r3, #48	; 0x30
    214e:	700c      	strb	r4, [r1, #0]
	n%=1000;
    2150:	f44f 747a 	mov.w	r4, #1000	; 0x3e8
    2154:	fb04 2213 	mls	r2, r4, r3, r2
	buffer[i++]=n/100+'0';
    2158:	4b1e      	ldr	r3, [pc, #120]	; (21d4 <date_str+0x96>)
    215a:	fba3 4302 	umull	r4, r3, r3, r2
    215e:	095b      	lsrs	r3, r3, #5
    2160:	f103 0430 	add.w	r4, r3, #48	; 0x30
    2164:	704c      	strb	r4, [r1, #1]
	n%=100;
    2166:	2464      	movs	r4, #100	; 0x64
    2168:	fb04 2313 	mls	r3, r4, r3, r2
	buffer[i++]=n/10+'0';
    216c:	4a1a      	ldr	r2, [pc, #104]	; (21d8 <date_str+0x9a>)
    216e:	fba2 5403 	umull	r5, r4, r2, r3
    2172:	08e4      	lsrs	r4, r4, #3
    2174:	f104 0530 	add.w	r5, r4, #48	; 0x30
    2178:	708d      	strb	r5, [r1, #2]
	buffer[i++]=n%10+'0';
    217a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    217e:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    2182:	3330      	adds	r3, #48	; 0x30
    2184:	70cb      	strb	r3, [r1, #3]
	buffer[i++]='/';
    2186:	262f      	movs	r6, #47	; 0x2f
    2188:	710e      	strb	r6, [r1, #4]
	n=dt->month;
    218a:	8843      	ldrh	r3, [r0, #2]
    218c:	f3c3 1383 	ubfx	r3, r3, #6, #4
	buffer[i++]=n/10+'0';
    2190:	fba2 5403 	umull	r5, r4, r2, r3
    2194:	08e4      	lsrs	r4, r4, #3
    2196:	f104 0530 	add.w	r5, r4, #48	; 0x30
    219a:	714d      	strb	r5, [r1, #5]
	buffer[i++]=n%10+'0';
    219c:	00a5      	lsls	r5, r4, #2
    219e:	442c      	add	r4, r5
    21a0:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
    21a4:	3330      	adds	r3, #48	; 0x30
    21a6:	718b      	strb	r3, [r1, #6]
	buffer[i++]='/';
    21a8:	71ce      	strb	r6, [r1, #7]
	n=dt->day;
    21aa:	7880      	ldrb	r0, [r0, #2]
    21ac:	f3c0 0044 	ubfx	r0, r0, #1, #5
	buffer[i++]=n/10+'0';
    21b0:	fba2 3200 	umull	r3, r2, r2, r0
    21b4:	08d3      	lsrs	r3, r2, #3
    21b6:	f103 0230 	add.w	r2, r3, #48	; 0x30
    21ba:	720a      	strb	r2, [r1, #8]
	buffer[i++]=n%10+'0';
    21bc:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    21c0:	eba0 0343 	sub.w	r3, r0, r3, lsl #1
    21c4:	3330      	adds	r3, #48	; 0x30
    21c6:	724b      	strb	r3, [r1, #9]
	buffer[i]=0;
    21c8:	2300      	movs	r3, #0
    21ca:	728b      	strb	r3, [r1, #10]

}
    21cc:	bc70      	pop	{r4, r5, r6}
    21ce:	4770      	bx	lr
    21d0:	10624dd3 	.word	0x10624dd3
    21d4:	51eb851f 	.word	0x51eb851f
    21d8:	cccccccd 	.word	0xcccccccd

000021dc <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    21dc:	b470      	push	{r4, r5, r6}
	uint32_t n;
	int i=0;
	
	n=dt->hour;
    21de:	6802      	ldr	r2, [r0, #0]
    21e0:	f3c2 3204 	ubfx	r2, r2, #12, #5
	buffer[i++]=n/10+'0';
    21e4:	4b18      	ldr	r3, [pc, #96]	; (2248 <time_str+0x6c>)
    21e6:	fba3 5402 	umull	r5, r4, r3, r2
    21ea:	08e4      	lsrs	r4, r4, #3
    21ec:	f104 0530 	add.w	r5, r4, #48	; 0x30
    21f0:	700d      	strb	r5, [r1, #0]
	buffer[i++]=n%10+'0';
    21f2:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    21f6:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    21fa:	3230      	adds	r2, #48	; 0x30
    21fc:	704a      	strb	r2, [r1, #1]
	buffer[i++]=':';
    21fe:	253a      	movs	r5, #58	; 0x3a
    2200:	708d      	strb	r5, [r1, #2]
	n=dt->minute;
    2202:	8802      	ldrh	r2, [r0, #0]
    2204:	f3c2 1285 	ubfx	r2, r2, #6, #6
	buffer[i++]=n/10+'0';
    2208:	fba3 6402 	umull	r6, r4, r3, r2
    220c:	08e4      	lsrs	r4, r4, #3
    220e:	f104 0630 	add.w	r6, r4, #48	; 0x30
    2212:	70ce      	strb	r6, [r1, #3]
	buffer[i++]=n%10+'0';
    2214:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    2218:	eba2 0244 	sub.w	r2, r2, r4, lsl #1
    221c:	3230      	adds	r2, #48	; 0x30
    221e:	710a      	strb	r2, [r1, #4]
	buffer[i++]=':';
    2220:	714d      	strb	r5, [r1, #5]
	n=dt->second;
    2222:	7802      	ldrb	r2, [r0, #0]
    2224:	f002 023f 	and.w	r2, r2, #63	; 0x3f
	buffer[i++]=n/10+'0';
    2228:	fba3 0302 	umull	r0, r3, r3, r2
    222c:	08db      	lsrs	r3, r3, #3
    222e:	f103 0030 	add.w	r0, r3, #48	; 0x30
    2232:	7188      	strb	r0, [r1, #6]
	buffer[i++]=n%10+'0';
    2234:	eb03 0383 	add.w	r3, r3, r3, lsl #2
    2238:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
    223c:	3330      	adds	r3, #48	; 0x30
    223e:	71cb      	strb	r3, [r1, #7]
	buffer[i]=0;
    2240:	2300      	movs	r3, #0
    2242:	720b      	strb	r3, [r1, #8]
}
    2244:	bc70      	pop	{r4, r5, r6}
    2246:	4770      	bx	lr
    2248:	cccccccd 	.word	0xcccccccd

0000224c <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    224c:	b500      	push	{lr}
    224e:	b085      	sub	sp, #20
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    2250:	a801      	add	r0, sp, #4
    2252:	f7ff fcbb 	bl	1bcc <get_date_time>
	t.fields.second=dt.second/2;
    2256:	f89d 3004 	ldrb.w	r3, [sp, #4]
    225a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    225e:	2000      	movs	r0, #0
    2260:	f363 0004 	bfi	r0, r3, #0, #5
	t.fields.minute=dt.minute;
    2264:	f8bd 3004 	ldrh.w	r3, [sp, #4]
    2268:	f3c3 1385 	ubfx	r3, r3, #6, #6
    226c:	f363 104a 	bfi	r0, r3, #5, #6
	t.fields.hour=dt.hour;
    2270:	9b01      	ldr	r3, [sp, #4]
    2272:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2276:	f363 20cf 	bfi	r0, r3, #11, #5
	t.fields.day=dt.day;
    227a:	f89d 3006 	ldrb.w	r3, [sp, #6]
    227e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2282:	f363 4014 	bfi	r0, r3, #16, #5
	t.fields.month=dt.month;
    2286:	f8bd 3006 	ldrh.w	r3, [sp, #6]
    228a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    228e:	f363 5058 	bfi	r0, r3, #21, #4
	t.fields.year=dt.year-1980;
    2292:	f89d 300c 	ldrb.w	r3, [sp, #12]
    2296:	3344      	adds	r3, #68	; 0x44
    2298:	f363 605f 	bfi	r0, r3, #25, #7
	return t.u32;
}
    229c:	b005      	add	sp, #20
    229e:	f85d fb04 	ldr.w	pc, [sp], #4

000022a2 <RTC_handler>:


void RTC_handler(){
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    22a2:	4b07      	ldr	r3, [pc, #28]	; (22c0 <RTC_handler+0x1e>)
    22a4:	685b      	ldr	r3, [r3, #4]
    22a6:	f013 0f01 	tst.w	r3, #1
		RTC->CRL&~RTC_CRL_SECF;
    22aa:	bf1c      	itt	ne
    22ac:	4b04      	ldrne	r3, [pc, #16]	; (22c0 <RTC_handler+0x1e>)
    22ae:	685b      	ldrne	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    22b0:	4b03      	ldr	r3, [pc, #12]	; (22c0 <RTC_handler+0x1e>)
    22b2:	685b      	ldr	r3, [r3, #4]
    22b4:	f013 0f02 	tst.w	r3, #2
		RTC->CRL&~RTC_CRL_ALRF;
    22b8:	bf1c      	itt	ne
    22ba:	4b01      	ldrne	r3, [pc, #4]	; (22c0 <RTC_handler+0x1e>)
    22bc:	685b      	ldrne	r3, [r3, #4]
    22be:	4770      	bx	lr
    22c0:	40002800 	.word	0x40002800

000022c4 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    22c4:	b508      	push	{r3, lr}
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    22c6:	4b12      	ldr	r3, [pc, #72]	; (2310 <sound_init+0x4c>)
    22c8:	685a      	ldr	r2, [r3, #4]
    22ca:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    22ce:	605a      	str	r2, [r3, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    22d0:	685a      	ldr	r2, [r3, #4]
    22d2:	f442 7240 	orr.w	r2, r2, #768	; 0x300
    22d6:	605a      	str	r2, [r3, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    22d8:	220a      	movs	r2, #10
    22da:	4611      	mov	r1, r2
    22dc:	480d      	ldr	r0, [pc, #52]	; (2314 <sound_init+0x50>)
    22de:	f7ff f8c7 	bl	1470 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    22e2:	4a0d      	ldr	r2, [pc, #52]	; (2318 <sound_init+0x54>)
    22e4:	69d3      	ldr	r3, [r2, #28]
    22e6:	f043 0301 	orr.w	r3, r3, #1
    22ea:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    22ec:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    22f0:	2278      	movs	r2, #120	; 0x78
    22f2:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    22f4:	f44f 7280 	mov.w	r2, #256	; 0x100
    22f8:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    22fa:	2209      	movs	r2, #9
    22fc:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    22fe:	2100      	movs	r1, #0
    2300:	201c      	movs	r0, #28
    2302:	f7ff fc19 	bl	1b38 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    2306:	201c      	movs	r0, #28
    2308:	f7ff fbb6 	bl	1a78 <enable_interrupt>
    230c:	bd08      	pop	{r3, pc}
    230e:	bf00      	nop
    2310:	40010000 	.word	0x40010000
    2314:	40010c00 	.word	0x40010c00
    2318:	40021000 	.word	0x40021000

0000231c <tone>:
}

void tone(uint16_t freq, uint16_t duration){
    TMR2->ARR=FCLK/10/freq;
    231c:	4b07      	ldr	r3, [pc, #28]	; (233c <tone+0x20>)
    231e:	fbb3 f0f0 	udiv	r0, r3, r0
    2322:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2326:	62d8      	str	r0, [r3, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    2328:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    232a:	0852      	lsrs	r2, r2, #1
    232c:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    232e:	681a      	ldr	r2, [r3, #0]
    2330:	f042 0201 	orr.w	r2, r2, #1
    2334:	601a      	str	r2, [r3, #0]
    sound_timer=duration;
    2336:	4b02      	ldr	r3, [pc, #8]	; (2340 <tone+0x24>)
    2338:	8019      	strh	r1, [r3, #0]
    233a:	4770      	bx	lr
    233c:	006d3d32 	.word	0x006d3d32
    2340:	20004e38 	.word	0x20004e38

00002344 <beep>:
}

void beep(uint16_t duration){
    2344:	b508      	push	{r3, lr}
    tone(1000,duration);
    2346:	4601      	mov	r1, r0
    2348:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    234c:	f7ff ffe6 	bl	231c <tone>
    2350:	bd08      	pop	{r3, pc}

00002352 <sound_stop>:
}

void sound_stop(){
    TMR2->CR1&=~TMR_CR1_CEN;
    2352:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2356:	681a      	ldr	r2, [r3, #0]
    2358:	f022 0201 	bic.w	r2, r2, #1
    235c:	601a      	str	r2, [r3, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    235e:	68da      	ldr	r2, [r3, #12]
    2360:	f022 0201 	bic.w	r2, r2, #1
    2364:	60da      	str	r2, [r3, #12]
    2366:	4770      	bx	lr

00002368 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    2368:	b510      	push	{r4, lr}
    236a:	4614      	mov	r4, r2
    tone(tempered_scale[note],length);
    236c:	b289      	uxth	r1, r1
    236e:	4b06      	ldr	r3, [pc, #24]	; (2388 <key_tone+0x20>)
    2370:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
    2374:	f7ff ffd2 	bl	231c <tone>
    if (wait_end) while (sound_timer);
    2378:	b124      	cbz	r4, 2384 <key_tone+0x1c>
    237a:	4a04      	ldr	r2, [pc, #16]	; (238c <key_tone+0x24>)
    237c:	8813      	ldrh	r3, [r2, #0]
    237e:	b29b      	uxth	r3, r3
    2380:	2b00      	cmp	r3, #0
    2382:	d1fb      	bne.n	237c <key_tone+0x14>
    2384:	bd10      	pop	{r4, pc}
    2386:	bf00      	nop
    2388:	000036b4 	.word	0x000036b4
    238c:	20004e38 	.word	0x20004e38

00002390 <noise>:
}

// produit un bruit 
void noise(int length){
    2390:	b510      	push	{r4, lr}
    2392:	4604      	mov	r4, r0
    srand(ntsc_ticks);
    2394:	4b07      	ldr	r3, [pc, #28]	; (23b4 <noise+0x24>)
    2396:	6818      	ldr	r0, [r3, #0]
    2398:	f7fe f826 	bl	3e8 <srand>
    tone(6000,length);
    239c:	b2a1      	uxth	r1, r4
    239e:	f241 7070 	movw	r0, #6000	; 0x1770
    23a2:	f7ff ffbb 	bl	231c <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    23a6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    23aa:	68d3      	ldr	r3, [r2, #12]
    23ac:	f043 0301 	orr.w	r3, r3, #1
    23b0:	60d3      	str	r3, [r2, #12]
    23b2:	bd10      	pop	{r4, pc}
    23b4:	20004e34 	.word	0x20004e34

000023b8 <sound_handler>:
}

void __attribute__((__interrupt__)) sound_handler(){
    23b8:	4668      	mov	r0, sp
    23ba:	f020 0107 	bic.w	r1, r0, #7
    23be:	468d      	mov	sp, r1
    23c0:	b501      	push	{r0, lr}
    uint8_t byte,mask;
    if (rand()&1){
    23c2:	f7fe f817 	bl	3f4 <rand>
    23c6:	f010 0f01 	tst.w	r0, #1
        TMR2->CCER|=TMR_CCER_CC3P;
    23ca:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    23ce:	6a13      	ldr	r3, [r2, #32]
    23d0:	bf14      	ite	ne
    23d2:	f443 7300 	orrne.w	r3, r3, #512	; 0x200
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    23d6:	f423 7300 	biceq.w	r3, r3, #512	; 0x200
    23da:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    23dc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    23e0:	6913      	ldr	r3, [r2, #16]
    23e2:	f023 0301 	bic.w	r3, r3, #1
    23e6:	6113      	str	r3, [r2, #16]
}
    23e8:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    23ec:	4685      	mov	sp, r0
    23ee:	4770      	bx	lr

000023f0 <spi_baudrate>:

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
	channel->CR1&=SPI_CR1_BR_MASK;
    23f0:	6803      	ldr	r3, [r0, #0]
    23f2:	f023 0338 	bic.w	r3, r3, #56	; 0x38
    23f6:	6003      	str	r3, [r0, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    23f8:	6803      	ldr	r3, [r0, #0]
    23fa:	ea43 01c1 	orr.w	r1, r3, r1, lsl #3
    23fe:	6001      	str	r1, [r0, #0]
    2400:	4770      	bx	lr

00002402 <spi_config_port>:
}

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2402:	b510      	push	{r4, lr}
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    2404:	4a2f      	ldr	r2, [pc, #188]	; (24c4 <spi_config_port+0xc2>)
    2406:	6993      	ldr	r3, [r2, #24]
    2408:	f043 0301 	orr.w	r3, r3, #1
    240c:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    240e:	4b2e      	ldr	r3, [pc, #184]	; (24c8 <spi_config_port+0xc6>)
    2410:	4298      	cmp	r0, r3
    2412:	d01a      	beq.n	244a <spi_config_port+0x48>
			// PA7 -> MOSI output (push-pull), alt PB5
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
		}
	}else{
		// activation clock du port
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2414:	4a2b      	ldr	r2, [pc, #172]	; (24c4 <spi_config_port+0xc2>)
    2416:	6993      	ldr	r3, [r2, #24]
    2418:	f043 0308 	orr.w	r3, r3, #8
    241c:	6193      	str	r3, [r2, #24]
		// configuration port
		// PB12 NSS output (push-pull)
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    241e:	4c2b      	ldr	r4, [pc, #172]	; (24cc <spi_config_port+0xca>)
    2420:	2203      	movs	r2, #3
    2422:	2102      	movs	r1, #2
    2424:	4620      	mov	r0, r4
    2426:	f7ff f823 	bl	1470 <config_pin>
		// PB13 SCK output (push-pull)
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    242a:	220b      	movs	r2, #11
    242c:	210d      	movs	r1, #13
    242e:	4620      	mov	r0, r4
    2430:	f7ff f81e 	bl	1470 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
    2434:	2204      	movs	r2, #4
    2436:	210e      	movs	r1, #14
    2438:	4620      	mov	r0, r4
    243a:	f7ff f819 	bl	1470 <config_pin>
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    243e:	220b      	movs	r2, #11
    2440:	210f      	movs	r1, #15
    2442:	4620      	mov	r0, r4
    2444:	f7ff f814 	bl	1470 <config_pin>
    2448:	bd10      	pop	{r4, pc}
		if (!afio_cfg){
    244a:	b9c9      	cbnz	r1, 2480 <spi_config_port+0x7e>
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    244c:	6993      	ldr	r3, [r2, #24]
    244e:	f043 0304 	orr.w	r3, r3, #4
    2452:	6193      	str	r3, [r2, #24]
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    2454:	4c1e      	ldr	r4, [pc, #120]	; (24d0 <spi_config_port+0xce>)
    2456:	2203      	movs	r2, #3
    2458:	2104      	movs	r1, #4
    245a:	4620      	mov	r0, r4
    245c:	f7ff f808 	bl	1470 <config_pin>
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    2460:	220b      	movs	r2, #11
    2462:	2105      	movs	r1, #5
    2464:	4620      	mov	r0, r4
    2466:	f7ff f803 	bl	1470 <config_pin>
			config_pin(PORTA,6,INPUT_FLOAT);
    246a:	2204      	movs	r2, #4
    246c:	2106      	movs	r1, #6
    246e:	4620      	mov	r0, r4
    2470:	f7fe fffe 	bl	1470 <config_pin>
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    2474:	220b      	movs	r2, #11
    2476:	2107      	movs	r1, #7
    2478:	4620      	mov	r0, r4
    247a:	f7fe fff9 	bl	1470 <config_pin>
    247e:	bd10      	pop	{r4, pc}
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    2480:	4a10      	ldr	r2, [pc, #64]	; (24c4 <spi_config_port+0xc2>)
    2482:	6993      	ldr	r3, [r2, #24]
    2484:	f043 030d 	orr.w	r3, r3, #13
    2488:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    248a:	f5a2 3288 	sub.w	r2, r2, #69632	; 0x11000
    248e:	6853      	ldr	r3, [r2, #4]
    2490:	f043 0301 	orr.w	r3, r3, #1
    2494:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2496:	2203      	movs	r2, #3
    2498:	210f      	movs	r1, #15
    249a:	480d      	ldr	r0, [pc, #52]	; (24d0 <spi_config_port+0xce>)
    249c:	f7fe ffe8 	bl	1470 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    24a0:	4c0a      	ldr	r4, [pc, #40]	; (24cc <spi_config_port+0xca>)
    24a2:	220b      	movs	r2, #11
    24a4:	2103      	movs	r1, #3
    24a6:	4620      	mov	r0, r4
    24a8:	f7fe ffe2 	bl	1470 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    24ac:	2204      	movs	r2, #4
    24ae:	4611      	mov	r1, r2
    24b0:	4620      	mov	r0, r4
    24b2:	f7fe ffdd 	bl	1470 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    24b6:	220b      	movs	r2, #11
    24b8:	2105      	movs	r1, #5
    24ba:	4620      	mov	r0, r4
    24bc:	f7fe ffd8 	bl	1470 <config_pin>
    24c0:	bd10      	pop	{r4, pc}
    24c2:	bf00      	nop
    24c4:	40021000 	.word	0x40021000
    24c8:	40013000 	.word	0x40013000
    24cc:	40010c00 	.word	0x40010c00
    24d0:	40010800 	.word	0x40010800

000024d4 <spi_init>:
	}
}

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    24d4:	b570      	push	{r4, r5, r6, lr}
    24d6:	4604      	mov	r4, r0
    24d8:	460d      	mov	r5, r1
    24da:	4616      	mov	r6, r2
	spi_config_port(channel,afio_cfg);
    24dc:	4619      	mov	r1, r3
    24de:	f7ff ff90 	bl	2402 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    24e2:	4b0c      	ldr	r3, [pc, #48]	; (2514 <spi_init+0x40>)
    24e4:	429c      	cmp	r4, r3
    24e6:	d00e      	beq.n	2506 <spi_init+0x32>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    24e8:	4a0b      	ldr	r2, [pc, #44]	; (2518 <spi_init+0x44>)
    24ea:	69d3      	ldr	r3, [r2, #28]
    24ec:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    24f0:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    24f2:	6026      	str	r6, [r4, #0]
	spi_baudrate(channel,baud);
    24f4:	4629      	mov	r1, r5
    24f6:	4620      	mov	r0, r4
    24f8:	f7ff ff7a 	bl	23f0 <spi_baudrate>
	_spi_enable(channel);
    24fc:	6823      	ldr	r3, [r4, #0]
    24fe:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2502:	6023      	str	r3, [r4, #0]
    2504:	bd70      	pop	{r4, r5, r6, pc}
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    2506:	4a04      	ldr	r2, [pc, #16]	; (2518 <spi_init+0x44>)
    2508:	6993      	ldr	r3, [r2, #24]
    250a:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    250e:	6193      	str	r3, [r2, #24]
    2510:	e7ef      	b.n	24f2 <spi_init+0x1e>
    2512:	bf00      	nop
    2514:	40013000 	.word	0x40013000
    2518:	40021000 	.word	0x40021000

0000251c <spi_send>:
}


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
	while (!(channel->SR&SPI_SR_TXE));
    251c:	6883      	ldr	r3, [r0, #8]
    251e:	f013 0f02 	tst.w	r3, #2
    2522:	d0fb      	beq.n	251c <spi_send>
	channel->DR=b;
    2524:	60c1      	str	r1, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2526:	6883      	ldr	r3, [r0, #8]
    2528:	f013 0f01 	tst.w	r3, #1
    252c:	d0fb      	beq.n	2526 <spi_send+0xa>
	return (uint8_t)channel->DR;
    252e:	68c0      	ldr	r0, [r0, #12]
}
    2530:	b2c0      	uxtb	r0, r0
    2532:	4770      	bx	lr

00002534 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2534:	6883      	ldr	r3, [r0, #8]
    2536:	f013 0f02 	tst.w	r3, #2
    253a:	d0fb      	beq.n	2534 <spi_receive>
	channel->DR=255;
    253c:	23ff      	movs	r3, #255	; 0xff
    253e:	60c3      	str	r3, [r0, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2540:	6883      	ldr	r3, [r0, #8]
    2542:	f013 0f01 	tst.w	r3, #1
    2546:	d0fb      	beq.n	2540 <spi_receive+0xc>
	rx=(uint8_t)channel->DR;
    2548:	68c0      	ldr	r0, [r0, #12]
	return rx;
}
    254a:	b2c0      	uxtb	r0, r0
    254c:	4770      	bx	lr

0000254e <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
	uint8_t rx;
	while (count){
    254e:	b14a      	cbz	r2, 2564 <spi_send_block+0x16>
    2550:	188a      	adds	r2, r1, r2
		channel->DR=*buffer++;
    2552:	f811 3b01 	ldrb.w	r3, [r1], #1
    2556:	60c3      	str	r3, [r0, #12]
		while (!(channel->SR&SPI_SR_TXE));
    2558:	6883      	ldr	r3, [r0, #8]
    255a:	f013 0f02 	tst.w	r3, #2
    255e:	d0fb      	beq.n	2558 <spi_send_block+0xa>
	while (count){
    2560:	428a      	cmp	r2, r1
    2562:	d1f6      	bne.n	2552 <spi_send_block+0x4>
		count--;
	}
	while (channel->SR&SPI_SR_BSY);
    2564:	6883      	ldr	r3, [r0, #8]
    2566:	f013 0f80 	tst.w	r3, #128	; 0x80
    256a:	d1fb      	bne.n	2564 <spi_send_block+0x16>
	rx=(uint8_t)channel->DR;
    256c:	68c3      	ldr	r3, [r0, #12]
    256e:	4770      	bx	lr

00002570 <spi_receive_block>:
}

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
	while (count){
    2570:	b16a      	cbz	r2, 258e <spi_receive_block+0x1e>
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    2572:	b410      	push	{r4}
    2574:	188a      	adds	r2, r1, r2
		channel->DR=0;
    2576:	2400      	movs	r4, #0
    2578:	60c4      	str	r4, [r0, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    257a:	6883      	ldr	r3, [r0, #8]
    257c:	f013 0f01 	tst.w	r3, #1
    2580:	d0fb      	beq.n	257a <spi_receive_block+0xa>
		*buffer++=(uint8_t)channel->DR;
    2582:	68c3      	ldr	r3, [r0, #12]
    2584:	f801 3b01 	strb.w	r3, [r1], #1
	while (count){
    2588:	428a      	cmp	r2, r1
    258a:	d1f5      	bne.n	2578 <spi_receive_block+0x8>
		count--;
	}
}
    258c:	bc10      	pop	{r4}
    258e:	4770      	bx	lr

00002590 <reset_mcu>:
	_reset_mcu();
    2590:	4a01      	ldr	r2, [pc, #4]	; (2598 <reset_mcu+0x8>)
    2592:	4b02      	ldr	r3, [pc, #8]	; (259c <reset_mcu+0xc>)
    2594:	601a      	str	r2, [r3, #0]
    2596:	bf00      	nop
    2598:	05fa0004 	.word	0x05fa0004
    259c:	e000ed0c 	.word	0xe000ed0c

000025a0 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    25a0:	b508      	push	{r3, lr}
    25a2:	460c      	mov	r4, r1
	print(msg);
    25a4:	f000 f966 	bl	2874 <print>
	print("\nat address ");
    25a8:	4813      	ldr	r0, [pc, #76]	; (25f8 <print_fault+0x58>)
    25aa:	f000 f963 	bl	2874 <print>
	if (adr) {
    25ae:	b9ec      	cbnz	r4, 25ec <print_fault+0x4c>
	put_char(CR);
    25b0:	200d      	movs	r0, #13
    25b2:	f000 f8bf 	bl	2734 <put_char>
	print("\nUFSR=");
    25b6:	4811      	ldr	r0, [pc, #68]	; (25fc <print_fault+0x5c>)
    25b8:	f000 f95c 	bl	2874 <print>
	print_int(CFSR->fsr.usageFalt,16);
    25bc:	4c10      	ldr	r4, [pc, #64]	; (2600 <print_fault+0x60>)
    25be:	6820      	ldr	r0, [r4, #0]
    25c0:	2110      	movs	r1, #16
    25c2:	40c8      	lsrs	r0, r1
    25c4:	f000 f971 	bl	28aa <print_int>
	print("\nBFSR=");
    25c8:	480e      	ldr	r0, [pc, #56]	; (2604 <print_fault+0x64>)
    25ca:	f000 f953 	bl	2874 <print>
	print_int(CFSR->fsr.busFault,16);
    25ce:	6820      	ldr	r0, [r4, #0]
    25d0:	2110      	movs	r1, #16
    25d2:	f3c0 2007 	ubfx	r0, r0, #8, #8
    25d6:	f000 f968 	bl	28aa <print_int>
	print("\nMMFSR=");
    25da:	480b      	ldr	r0, [pc, #44]	; (2608 <print_fault+0x68>)
    25dc:	f000 f94a 	bl	2874 <print>
	print_int(CFSR->fsr.mmFault,16);
    25e0:	6820      	ldr	r0, [r4, #0]
    25e2:	2110      	movs	r1, #16
    25e4:	b2c0      	uxtb	r0, r0
    25e6:	f000 f960 	bl	28aa <print_int>
    25ea:	e7fe      	b.n	25ea <print_fault+0x4a>
		print_int(adr,16);
    25ec:	2110      	movs	r1, #16
    25ee:	4620      	mov	r0, r4
    25f0:	f000 f95b 	bl	28aa <print_int>
    25f4:	e7dc      	b.n	25b0 <print_fault+0x10>
    25f6:	bf00      	nop
    25f8:	00003828 	.word	0x00003828
    25fc:	00003838 	.word	0x00003838
    2600:	e000ed28 	.word	0xe000ed28
    2604:	00003840 	.word	0x00003840
    2608:	00003848 	.word	0x00003848

0000260c <draw_char>:
	}else{
		usart_putc(USART1,'\n');
	}
}

static void draw_char(int x,int y,int w, int h, const char* glyph){
    260c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2610:	b083      	sub	sp, #12
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    2612:	18cb      	adds	r3, r1, r3
    2614:	9301      	str	r3, [sp, #4]
    2616:	4299      	cmp	r1, r3
    2618:	da20      	bge.n	265c <draw_char+0x50>
    261a:	4683      	mov	fp, r0
    261c:	460e      	mov	r6, r1
    261e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    2620:	f103 3aff 	add.w	sl, r3, #4294967295	; 0xffffffff
		byte=*glyph++;
		mask=128;
		for (x0=x;x0<(x+w);x0++){
    2624:	1887      	adds	r7, r0, r2
			bit=byte&mask;
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2626:	f8df 903c 	ldr.w	r9, [pc, #60]	; 2664 <draw_char+0x58>
		byte=*glyph++;
    262a:	f81a 8f01 	ldrb.w	r8, [sl, #1]!
		for (x0=x;x0<(x+w);x0++){
    262e:	45bb      	cmp	fp, r7
    2630:	da10      	bge.n	2654 <draw_char+0x48>
    2632:	465c      	mov	r4, fp
    2634:	2580      	movs	r5, #128	; 0x80
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    2636:	ea18 0f05 	tst.w	r8, r5
    263a:	bf14      	ite	ne
    263c:	f899 2001 	ldrbne.w	r2, [r9, #1]
    2640:	f899 2000 	ldrbeq.w	r2, [r9]
			gfx_plot(x0,y0,c);
    2644:	4631      	mov	r1, r6
    2646:	4620      	mov	r0, r4
    2648:	f7fe ff9e 	bl	1588 <gfx_plot>
			mask>>=1;
    264c:	086d      	lsrs	r5, r5, #1
		for (x0=x;x0<(x+w);x0++){
    264e:	3401      	adds	r4, #1
    2650:	42bc      	cmp	r4, r7
    2652:	d1f0      	bne.n	2636 <draw_char+0x2a>
	for (y0=y;y0<(y+h);y0++){
    2654:	3601      	adds	r6, #1
    2656:	9b01      	ldr	r3, [sp, #4]
    2658:	429e      	cmp	r6, r3
    265a:	d1e6      	bne.n	262a <draw_char+0x1e>
		}
	}
}
    265c:	b003      	add	sp, #12
    265e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2662:	bf00      	nop
    2664:	200001e8 	.word	0x200001e8

00002668 <font_color>:
	text_colors[FG]=color&0xf;
    2668:	f000 000f 	and.w	r0, r0, #15
    266c:	4b01      	ldr	r3, [pc, #4]	; (2674 <font_color+0xc>)
    266e:	7058      	strb	r0, [r3, #1]
    2670:	4770      	bx	lr
    2672:	bf00      	nop
    2674:	200001e8 	.word	0x200001e8

00002678 <bg_color>:
	text_colors[BG]=color&0xf;
    2678:	f000 000f 	and.w	r0, r0, #15
    267c:	4b01      	ldr	r3, [pc, #4]	; (2684 <bg_color+0xc>)
    267e:	7018      	strb	r0, [r3, #0]
    2680:	4770      	bx	lr
    2682:	bf00      	nop
    2684:	200001e8 	.word	0x200001e8

00002688 <select_font>:
	font=font_id;
    2688:	4b01      	ldr	r3, [pc, #4]	; (2690 <select_font+0x8>)
    268a:	7098      	strb	r0, [r3, #2]
    268c:	4770      	bx	lr
    268e:	bf00      	nop
    2690:	200001e8 	.word	0x200001e8

00002694 <get_font>:
}
    2694:	4b01      	ldr	r3, [pc, #4]	; (269c <get_font+0x8>)
    2696:	7898      	ldrb	r0, [r3, #2]
    2698:	4770      	bx	lr
    269a:	bf00      	nop
    269c:	200001e8 	.word	0x200001e8

000026a0 <new_line>:
void new_line(){
    26a0:	b508      	push	{r3, lr}
	if (console==LOCAL){
    26a2:	4b21      	ldr	r3, [pc, #132]	; (2728 <new_line+0x88>)
    26a4:	781b      	ldrb	r3, [r3, #0]
    26a6:	2b00      	cmp	r3, #0
    26a8:	d138      	bne.n	271c <new_line+0x7c>
		xpos=0;
    26aa:	2200      	movs	r2, #0
    26ac:	4b1e      	ldr	r3, [pc, #120]	; (2728 <new_line+0x88>)
    26ae:	705a      	strb	r2, [r3, #1]
		vmode_params_t *vparams=get_video_params();	
    26b0:	f000 fbfc 	bl	2eac <get_video_params>
		switch (font){
    26b4:	4b1d      	ldr	r3, [pc, #116]	; (272c <new_line+0x8c>)
    26b6:	789b      	ldrb	r3, [r3, #2]
    26b8:	2b01      	cmp	r3, #1
    26ba:	d011      	beq.n	26e0 <new_line+0x40>
    26bc:	b113      	cbz	r3, 26c4 <new_line+0x24>
    26be:	2b02      	cmp	r3, #2
    26c0:	d01d      	beq.n	26fe <new_line+0x5e>
    26c2:	bd08      	pop	{r3, pc}
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    26c4:	4b18      	ldr	r3, [pc, #96]	; (2728 <new_line+0x88>)
    26c6:	789b      	ldrb	r3, [r3, #2]
    26c8:	1d99      	adds	r1, r3, #6
    26ca:	89c2      	ldrh	r2, [r0, #14]
    26cc:	3a05      	subs	r2, #5
    26ce:	4291      	cmp	r1, r2
    26d0:	dc02      	bgt.n	26d8 <new_line+0x38>
				ypos+=SHEX_HEIGHT;
    26d2:	4a15      	ldr	r2, [pc, #84]	; (2728 <new_line+0x88>)
    26d4:	7091      	strb	r1, [r2, #2]
    26d6:	bd08      	pop	{r3, pc}
				gfx_scroll_up(SHEX_HEIGHT);
    26d8:	2006      	movs	r0, #6
    26da:	f7fe ff93 	bl	1604 <gfx_scroll_up>
    26de:	bd08      	pop	{r3, pc}
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    26e0:	4b11      	ldr	r3, [pc, #68]	; (2728 <new_line+0x88>)
    26e2:	789b      	ldrb	r3, [r3, #2]
    26e4:	f103 010a 	add.w	r1, r3, #10
    26e8:	89c2      	ldrh	r2, [r0, #14]
    26ea:	3a09      	subs	r2, #9
    26ec:	4291      	cmp	r1, r2
    26ee:	dc02      	bgt.n	26f6 <new_line+0x56>
				ypos+=LHEX_HEIGHT;
    26f0:	4a0d      	ldr	r2, [pc, #52]	; (2728 <new_line+0x88>)
    26f2:	7091      	strb	r1, [r2, #2]
    26f4:	bd08      	pop	{r3, pc}
				gfx_scroll_up(LHEX_HEIGHT);
    26f6:	200a      	movs	r0, #10
    26f8:	f7fe ff84 	bl	1604 <gfx_scroll_up>
    26fc:	bd08      	pop	{r3, pc}
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    26fe:	4b0a      	ldr	r3, [pc, #40]	; (2728 <new_line+0x88>)
    2700:	789b      	ldrb	r3, [r3, #2]
    2702:	f103 0108 	add.w	r1, r3, #8
    2706:	89c2      	ldrh	r2, [r0, #14]
    2708:	3a07      	subs	r2, #7
    270a:	4291      	cmp	r1, r2
    270c:	dc02      	bgt.n	2714 <new_line+0x74>
				ypos+=CHAR_HEIGHT;
    270e:	4a06      	ldr	r2, [pc, #24]	; (2728 <new_line+0x88>)
    2710:	7091      	strb	r1, [r2, #2]
    2712:	bd08      	pop	{r3, pc}
				gfx_scroll_up(CHAR_HEIGHT);
    2714:	2008      	movs	r0, #8
    2716:	f7fe ff75 	bl	1604 <gfx_scroll_up>
    271a:	bd08      	pop	{r3, pc}
		usart_putc(USART1,'\n');
    271c:	210a      	movs	r1, #10
    271e:	4804      	ldr	r0, [pc, #16]	; (2730 <new_line+0x90>)
    2720:	f000 fd1c 	bl	315c <usart_putc>
    2724:	bd08      	pop	{r3, pc}
    2726:	bf00      	nop
    2728:	2000067c 	.word	0x2000067c
    272c:	200001e8 	.word	0x200001e8
    2730:	40013800 	.word	0x40013800

00002734 <put_char>:

void put_char(uint8_t c){
    2734:	b530      	push	{r4, r5, lr}
    2736:	b083      	sub	sp, #12
	if (console==LOCAL){
    2738:	4b2e      	ldr	r3, [pc, #184]	; (27f4 <put_char+0xc0>)
    273a:	781b      	ldrb	r3, [r3, #0]
    273c:	2b00      	cmp	r3, #0
    273e:	d153      	bne.n	27e8 <put_char+0xb4>
		switch(font){
    2740:	4b2d      	ldr	r3, [pc, #180]	; (27f8 <put_char+0xc4>)
    2742:	789b      	ldrb	r3, [r3, #2]
    2744:	2b01      	cmp	r3, #1
    2746:	d036      	beq.n	27b6 <put_char+0x82>
    2748:	b1e3      	cbz	r3, 2784 <put_char+0x50>
    274a:	2b02      	cmp	r3, #2
    274c:	d150      	bne.n	27f0 <put_char+0xbc>
					new_line();
				}
			}
			break;
		case FONT_ASCII:
			if ((c>31) && (c<(FONT_SIZE+32))){
    274e:	f1a0 0320 	sub.w	r3, r0, #32
    2752:	b2db      	uxtb	r3, r3
    2754:	2b64      	cmp	r3, #100	; 0x64
    2756:	d84b      	bhi.n	27f0 <put_char+0xbc>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    2758:	4c26      	ldr	r4, [pc, #152]	; (27f4 <put_char+0xc0>)
    275a:	78a1      	ldrb	r1, [r4, #2]
    275c:	7865      	ldrb	r5, [r4, #1]
    275e:	3820      	subs	r0, #32
    2760:	4b26      	ldr	r3, [pc, #152]	; (27fc <put_char+0xc8>)
    2762:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
    2766:	9300      	str	r3, [sp, #0]
    2768:	2308      	movs	r3, #8
    276a:	2206      	movs	r2, #6
    276c:	4628      	mov	r0, r5
    276e:	f7ff ff4d 	bl	260c <draw_char>
				xpos+=CHAR_WIDTH;
    2772:	7863      	ldrb	r3, [r4, #1]
    2774:	3306      	adds	r3, #6
    2776:	b2db      	uxtb	r3, r3
    2778:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    277a:	2baf      	cmp	r3, #175	; 0xaf
    277c:	d938      	bls.n	27f0 <put_char+0xbc>
					new_line();
    277e:	f7ff ff8f 	bl	26a0 <new_line>
    2782:	e035      	b.n	27f0 <put_char+0xbc>
			if (c<16){
    2784:	280f      	cmp	r0, #15
    2786:	d833      	bhi.n	27f0 <put_char+0xbc>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    2788:	4c1a      	ldr	r4, [pc, #104]	; (27f4 <put_char+0xc0>)
    278a:	78a1      	ldrb	r1, [r4, #2]
    278c:	7865      	ldrb	r5, [r4, #1]
    278e:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    2792:	4b1b      	ldr	r3, [pc, #108]	; (2800 <put_char+0xcc>)
    2794:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    2798:	9300      	str	r3, [sp, #0]
    279a:	2306      	movs	r3, #6
    279c:	2204      	movs	r2, #4
    279e:	4628      	mov	r0, r5
    27a0:	f7ff ff34 	bl	260c <draw_char>
				xpos+=SHEX_WIDTH;
    27a4:	7863      	ldrb	r3, [r4, #1]
    27a6:	3304      	adds	r3, #4
    27a8:	b2db      	uxtb	r3, r3
    27aa:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    27ac:	2bb1      	cmp	r3, #177	; 0xb1
    27ae:	d91f      	bls.n	27f0 <put_char+0xbc>
					new_line();
    27b0:	f7ff ff76 	bl	26a0 <new_line>
    27b4:	e01c      	b.n	27f0 <put_char+0xbc>
			if (c<16){
    27b6:	280f      	cmp	r0, #15
    27b8:	d81a      	bhi.n	27f0 <put_char+0xbc>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    27ba:	4c0e      	ldr	r4, [pc, #56]	; (27f4 <put_char+0xc0>)
    27bc:	78a1      	ldrb	r1, [r4, #2]
    27be:	7865      	ldrb	r5, [r4, #1]
    27c0:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    27c4:	4b0f      	ldr	r3, [pc, #60]	; (2804 <put_char+0xd0>)
    27c6:	eb03 0340 	add.w	r3, r3, r0, lsl #1
    27ca:	9300      	str	r3, [sp, #0]
    27cc:	230a      	movs	r3, #10
    27ce:	2208      	movs	r2, #8
    27d0:	4628      	mov	r0, r5
    27d2:	f7ff ff1b 	bl	260c <draw_char>
				xpos+=LHEX_WIDTH;
    27d6:	7863      	ldrb	r3, [r4, #1]
    27d8:	3308      	adds	r3, #8
    27da:	b2db      	uxtb	r3, r3
    27dc:	7063      	strb	r3, [r4, #1]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    27de:	2bad      	cmp	r3, #173	; 0xad
    27e0:	d906      	bls.n	27f0 <put_char+0xbc>
					new_line();
    27e2:	f7ff ff5d 	bl	26a0 <new_line>
    27e6:	e003      	b.n	27f0 <put_char+0xbc>
				}
			}
			break;		
		}
	}else{
		usart_putc(USART1,c);
    27e8:	4601      	mov	r1, r0
    27ea:	4807      	ldr	r0, [pc, #28]	; (2808 <put_char+0xd4>)
    27ec:	f000 fcb6 	bl	315c <usart_putc>
	}
}
    27f0:	b003      	add	sp, #12
    27f2:	bd30      	pop	{r4, r5, pc}
    27f4:	2000067c 	.word	0x2000067c
    27f8:	200001e8 	.word	0x200001e8
    27fc:	0000322c 	.word	0x0000322c
    2800:	000035f4 	.word	0x000035f4
    2804:	00003554 	.word	0x00003554
    2808:	40013800 	.word	0x40013800

0000280c <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
	xpos=x;
    280c:	4b01      	ldr	r3, [pc, #4]	; (2814 <set_cursor+0x8>)
    280e:	7058      	strb	r0, [r3, #1]
	ypos=y;
    2810:	7099      	strb	r1, [r3, #2]
    2812:	4770      	bx	lr
    2814:	2000067c 	.word	0x2000067c

00002818 <get_cursor>:
}

uint16_t get_cursor(){
	return (xpos<<8)+ypos;
    2818:	4b03      	ldr	r3, [pc, #12]	; (2828 <get_cursor+0x10>)
    281a:	785a      	ldrb	r2, [r3, #1]
    281c:	7898      	ldrb	r0, [r3, #2]
    281e:	eb00 2002 	add.w	r0, r0, r2, lsl #8
}
    2822:	b280      	uxth	r0, r0
    2824:	4770      	bx	lr
    2826:	bf00      	nop
    2828:	2000067c 	.word	0x2000067c

0000282c <cursor_left>:
    }
    print(&fmt[idx]);
}

void cursor_left(){
	switch(font){
    282c:	4b0f      	ldr	r3, [pc, #60]	; (286c <cursor_left+0x40>)
    282e:	789b      	ldrb	r3, [r3, #2]
    2830:	2b01      	cmp	r3, #1
    2832:	d00b      	beq.n	284c <cursor_left+0x20>
    2834:	b113      	cbz	r3, 283c <cursor_left+0x10>
    2836:	2b02      	cmp	r3, #2
    2838:	d010      	beq.n	285c <cursor_left+0x30>
    283a:	4770      	bx	lr
	case FONT_SHEX:
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    283c:	4b0c      	ldr	r3, [pc, #48]	; (2870 <cursor_left+0x44>)
    283e:	785b      	ldrb	r3, [r3, #1]
    2840:	2b04      	cmp	r3, #4
    2842:	d412      	bmi.n	286a <cursor_left+0x3e>
    2844:	3b04      	subs	r3, #4
    2846:	4a0a      	ldr	r2, [pc, #40]	; (2870 <cursor_left+0x44>)
    2848:	7053      	strb	r3, [r2, #1]
    284a:	4770      	bx	lr
		break;
	case FONT_LHEX:
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    284c:	4b08      	ldr	r3, [pc, #32]	; (2870 <cursor_left+0x44>)
    284e:	785b      	ldrb	r3, [r3, #1]
    2850:	2b08      	cmp	r3, #8
    2852:	d40a      	bmi.n	286a <cursor_left+0x3e>
    2854:	3b08      	subs	r3, #8
    2856:	4a06      	ldr	r2, [pc, #24]	; (2870 <cursor_left+0x44>)
    2858:	7053      	strb	r3, [r2, #1]
    285a:	4770      	bx	lr
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    285c:	4b04      	ldr	r3, [pc, #16]	; (2870 <cursor_left+0x44>)
    285e:	785b      	ldrb	r3, [r3, #1]
    2860:	2b06      	cmp	r3, #6
    2862:	d402      	bmi.n	286a <cursor_left+0x3e>
    2864:	3b06      	subs	r3, #6
    2866:	4a02      	ldr	r2, [pc, #8]	; (2870 <cursor_left+0x44>)
    2868:	7053      	strb	r3, [r2, #1]
    286a:	4770      	bx	lr
    286c:	200001e8 	.word	0x200001e8
    2870:	2000067c 	.word	0x2000067c

00002874 <print>:
void print(const char* str){
    2874:	b510      	push	{r4, lr}
    2876:	4604      	mov	r4, r0
    while ((c=*str++)){
    2878:	e001      	b.n	287e <print+0xa>
            new_line();
    287a:	f7ff ff11 	bl	26a0 <new_line>
    while ((c=*str++)){
    287e:	f814 0b01 	ldrb.w	r0, [r4], #1
    2882:	b158      	cbz	r0, 289c <print+0x28>
        switch(c){
    2884:	280a      	cmp	r0, #10
    2886:	d0f8      	beq.n	287a <print+0x6>
    2888:	280d      	cmp	r0, #13
    288a:	d0f6      	beq.n	287a <print+0x6>
    288c:	2808      	cmp	r0, #8
    288e:	d002      	beq.n	2896 <print+0x22>
            put_char(c);
    2890:	f7ff ff50 	bl	2734 <put_char>
    2894:	e7f3      	b.n	287e <print+0xa>
            cursor_left();    
    2896:	f7ff ffc9 	bl	282c <cursor_left>
            break;
    289a:	e7f0      	b.n	287e <print+0xa>
}
    289c:	bd10      	pop	{r4, pc}

0000289e <println>:
void println(const char *text){
    289e:	b508      	push	{r3, lr}
	print(text);
    28a0:	f7ff ffe8 	bl	2874 <print>
	new_line();
    28a4:	f7ff fefc 	bl	26a0 <new_line>
    28a8:	bd08      	pop	{r3, pc}

000028aa <print_int>:
void print_int(int i,uint8_t base){
    28aa:	b530      	push	{r4, r5, lr}
    28ac:	b085      	sub	sp, #20
    fmt[15]=0;
    28ae:	2300      	movs	r3, #0
    28b0:	f88d 300f 	strb.w	r3, [sp, #15]
    fmt[14]=' ';
    28b4:	2320      	movs	r3, #32
    28b6:	f88d 300e 	strb.w	r3, [sp, #14]
    if (i<0){
    28ba:	1e02      	subs	r2, r0, #0
        i=-i;
    28bc:	bfba      	itte	lt
    28be:	4252      	neglt	r2, r2
        sign=1;
    28c0:	2501      	movlt	r5, #1
    char fmt[16],sign=0;
    28c2:	2500      	movge	r5, #0
    while (idx>1 && i){
    28c4:	b1aa      	cbz	r2, 28f2 <print_int+0x48>
    28c6:	f10d 040e 	add.w	r4, sp, #14
    28ca:	200e      	movs	r0, #14
        d=i%base;
    28cc:	fb92 f3f1 	sdiv	r3, r2, r1
    28d0:	fb01 2313 	mls	r3, r1, r3, r2
        if (d>9) d+=7;
    28d4:	2b09      	cmp	r3, #9
    28d6:	bfc8      	it	gt
    28d8:	3307      	addgt	r3, #7
        fmt[--idx]=d+='0';
    28da:	3801      	subs	r0, #1
    28dc:	3330      	adds	r3, #48	; 0x30
    28de:	f804 3d01 	strb.w	r3, [r4, #-1]!
        i/=base;
    28e2:	fb92 f2f1 	sdiv	r2, r2, r1
    while (idx>1 && i){
    28e6:	2801      	cmp	r0, #1
    28e8:	d007      	beq.n	28fa <print_int+0x50>
    28ea:	2a00      	cmp	r2, #0
    28ec:	d1ee      	bne.n	28cc <print_int+0x22>
    if (idx==14)fmt[--idx]='0';
    28ee:	280e      	cmp	r0, #14
    28f0:	d103      	bne.n	28fa <print_int+0x50>
    28f2:	2330      	movs	r3, #48	; 0x30
    28f4:	f88d 300d 	strb.w	r3, [sp, #13]
    28f8:	200d      	movs	r0, #13
    if (base==10 && sign){
    28fa:	290a      	cmp	r1, #10
    28fc:	d006      	beq.n	290c <print_int+0x62>
    }else if (base==16){
    28fe:	2910      	cmp	r1, #16
    2900:	d00d      	beq.n	291e <print_int+0x74>
    print(&fmt[idx]);
    2902:	4468      	add	r0, sp
    2904:	f7ff ffb6 	bl	2874 <print>
}
    2908:	b005      	add	sp, #20
    290a:	bd30      	pop	{r4, r5, pc}
    if (base==10 && sign){
    290c:	2d00      	cmp	r5, #0
    290e:	d0f8      	beq.n	2902 <print_int+0x58>
        fmt[--idx]='-';
    2910:	3801      	subs	r0, #1
    2912:	ab04      	add	r3, sp, #16
    2914:	4403      	add	r3, r0
    2916:	222d      	movs	r2, #45	; 0x2d
    2918:	f803 2c10 	strb.w	r2, [r3, #-16]
    291c:	e7f1      	b.n	2902 <print_int+0x58>
        if((16-idx&1))fmt[--idx]='0';
    291e:	f010 0f01 	tst.w	r0, #1
    2922:	d005      	beq.n	2930 <print_int+0x86>
    2924:	3801      	subs	r0, #1
    2926:	ab04      	add	r3, sp, #16
    2928:	4403      	add	r3, r0
    292a:	2230      	movs	r2, #48	; 0x30
    292c:	f803 2c10 	strb.w	r2, [r3, #-16]
		fmt[--idx]='$';
    2930:	3801      	subs	r0, #1
    2932:	ab04      	add	r3, sp, #16
    2934:	4403      	add	r3, r0
    2936:	2224      	movs	r2, #36	; 0x24
    2938:	f803 2c10 	strb.w	r2, [r3, #-16]
    293c:	e7e1      	b.n	2902 <print_int+0x58>

0000293e <prompt_btn>:
		break;	
	}
}

void prompt_btn(){
    293e:	b508      	push	{r3, lr}
	print("press button");
    2940:	4801      	ldr	r0, [pc, #4]	; (2948 <prompt_btn+0xa>)
    2942:	f7ff ff97 	bl	2874 <print>
    2946:	bd08      	pop	{r3, pc}
    2948:	00003894 	.word	0x00003894

0000294c <clear_screen>:
}

void clear_screen(){
    294c:	b508      	push	{r3, lr}
	if (console==LOCAL){
    294e:	4b07      	ldr	r3, [pc, #28]	; (296c <clear_screen+0x20>)
    2950:	781b      	ldrb	r3, [r3, #0]
    2952:	b123      	cbz	r3, 295e <clear_screen+0x12>
		gfx_cls();
		xpos=0;
		ypos=0;
	}else{
		usart_putc(USART1,FF);
    2954:	210c      	movs	r1, #12
    2956:	4806      	ldr	r0, [pc, #24]	; (2970 <clear_screen+0x24>)
    2958:	f000 fc00 	bl	315c <usart_putc>
    295c:	bd08      	pop	{r3, pc}
		gfx_cls();
    295e:	f7fe fe3d 	bl	15dc <gfx_cls>
		xpos=0;
    2962:	4b02      	ldr	r3, [pc, #8]	; (296c <clear_screen+0x20>)
    2964:	2200      	movs	r2, #0
    2966:	705a      	strb	r2, [r3, #1]
		ypos=0;
    2968:	709a      	strb	r2, [r3, #2]
    296a:	bd08      	pop	{r3, pc}
    296c:	2000067c 	.word	0x2000067c
    2970:	40013800 	.word	0x40013800

00002974 <show_cursor>:
	}
}

// affiche un curseur texte
void show_cursor(int show){
    2974:	b570      	push	{r4, r5, r6, lr}
	int x,y;
	uint8_t color=show?15:0;
    2976:	2800      	cmp	r0, #0
    2978:	bf14      	ite	ne
    297a:	260f      	movne	r6, #15
    297c:	2600      	moveq	r6, #0
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    297e:	4b09      	ldr	r3, [pc, #36]	; (29a4 <show_cursor+0x30>)
    2980:	785c      	ldrb	r4, [r3, #1]
    2982:	1da3      	adds	r3, r4, #6
    2984:	429c      	cmp	r4, r3
    2986:	da0b      	bge.n	29a0 <show_cursor+0x2c>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    2988:	4d06      	ldr	r5, [pc, #24]	; (29a4 <show_cursor+0x30>)
    298a:	78a9      	ldrb	r1, [r5, #2]
    298c:	4632      	mov	r2, r6
    298e:	3107      	adds	r1, #7
    2990:	4620      	mov	r0, r4
    2992:	f7fe fdf9 	bl	1588 <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    2996:	3401      	adds	r4, #1
    2998:	786b      	ldrb	r3, [r5, #1]
    299a:	3306      	adds	r3, #6
    299c:	42a3      	cmp	r3, r4
    299e:	dcf4      	bgt.n	298a <show_cursor+0x16>
    29a0:	bd70      	pop	{r4, r5, r6, pc}
    29a2:	bf00      	nop
    29a4:	2000067c 	.word	0x2000067c

000029a8 <clear_line>:
		}
}

// efface la ligne où est le curseur texte
void clear_line(){
    29a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	int y;
	vmode_params_t *vparams=get_video_params();
    29ac:	f000 fa7e 	bl	2eac <get_video_params>
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    29b0:	4b0c      	ldr	r3, [pc, #48]	; (29e4 <clear_line+0x3c>)
    29b2:	789c      	ldrb	r4, [r3, #2]
    29b4:	f104 0308 	add.w	r3, r4, #8
    29b8:	429c      	cmp	r4, r3
    29ba:	da10      	bge.n	29de <clear_line+0x36>
    29bc:	4605      	mov	r5, r0
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    29be:	f8df 8028 	ldr.w	r8, [pc, #40]	; 29e8 <clear_line+0x40>
    29c2:	2700      	movs	r7, #0
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    29c4:	4e07      	ldr	r6, [pc, #28]	; (29e4 <clear_line+0x3c>)
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    29c6:	7a28      	ldrb	r0, [r5, #8]
    29c8:	463a      	mov	r2, r7
    29ca:	4601      	mov	r1, r0
    29cc:	fb04 8000 	mla	r0, r4, r0, r8
    29d0:	f7fe fca5 	bl	131e <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    29d4:	3401      	adds	r4, #1
    29d6:	78b3      	ldrb	r3, [r6, #2]
    29d8:	3308      	adds	r3, #8
    29da:	42a3      	cmp	r3, r4
    29dc:	dcf3      	bgt.n	29c6 <clear_line+0x1e>
    29de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    29e2:	bf00      	nop
    29e4:	2000067c 	.word	0x2000067c
    29e8:	200026d0 	.word	0x200026d0

000029ec <select_console>:
}

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
	console=con;
    29ec:	4b01      	ldr	r3, [pc, #4]	; (29f4 <select_console+0x8>)
    29ee:	7018      	strb	r0, [r3, #0]
    29f0:	4770      	bx	lr
    29f2:	bf00      	nop
    29f4:	2000067c 	.word	0x2000067c

000029f8 <get_char>:
}

//read a character from serial port
char get_char(){
    29f8:	b510      	push	{r4, lr}
	char c;
	while (!(c=usart_getc(USART1)));
    29fa:	4c03      	ldr	r4, [pc, #12]	; (2a08 <get_char+0x10>)
    29fc:	4620      	mov	r0, r4
    29fe:	f000 fb7b 	bl	30f8 <usart_getc>
    2a02:	2800      	cmp	r0, #0
    2a04:	d0fa      	beq.n	29fc <get_char+0x4>
	return c;
}
    2a06:	bd10      	pop	{r4, pc}
    2a08:	40013800 	.word	0x40013800

00002a0c <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2a0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    2a10:	4c31      	ldr	r4, [pc, #196]	; (2ad8 <tvout_init+0xcc>)
    2a12:	4b32      	ldr	r3, [pc, #200]	; (2adc <tvout_init+0xd0>)
    2a14:	6023      	str	r3, [r4, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    2a16:	4a32      	ldr	r2, [pc, #200]	; (2ae0 <tvout_init+0xd4>)
    2a18:	4b32      	ldr	r3, [pc, #200]	; (2ae4 <tvout_init+0xd8>)
    2a1a:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2a1c:	220a      	movs	r2, #10
    2a1e:	2108      	movs	r1, #8
    2a20:	4620      	mov	r0, r4
    2a22:	f7fe fd25 	bl	1470 <config_pin>
    PORTA->ODR=0;
    2a26:	2500      	movs	r5, #0
    2a28:	60e5      	str	r5, [r4, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2a2a:	4e2f      	ldr	r6, [pc, #188]	; (2ae8 <tvout_init+0xdc>)
    2a2c:	69b3      	ldr	r3, [r6, #24]
    2a2e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2a32:	61b3      	str	r3, [r6, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2a34:	f504 5410 	add.w	r4, r4, #9216	; 0x2400
    2a38:	f04f 0878 	mov.w	r8, #120	; 0x78
    2a3c:	f8c4 8018 	str.w	r8, [r4, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2a40:	2301      	movs	r3, #1
    2a42:	6223      	str	r3, [r4, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2a44:	2784      	movs	r7, #132	; 0x84
    2a46:	6027      	str	r7, [r4, #0]
    TMR1->ARR=HPERIOD;
    2a48:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2a4c:	62e3      	str	r3, [r4, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2a4e:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2a52:	6363      	str	r3, [r4, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    2a54:	f240 1365 	movw	r3, #357	; 0x165
    2a58:	63a3      	str	r3, [r4, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2a5a:	6963      	ldr	r3, [r4, #20]
    2a5c:	f043 0301 	orr.w	r3, r3, #1
    2a60:	6163      	str	r3, [r4, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2a62:	f44f 4300 	mov.w	r3, #32768	; 0x8000
    2a66:	6463      	str	r3, [r4, #68]	; 0x44
    TMR1->SR=0;
    2a68:	6125      	str	r5, [r4, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2a6a:	68e3      	ldr	r3, [r4, #12]
    2a6c:	f043 0301 	orr.w	r3, r3, #1
    2a70:	60e3      	str	r3, [r4, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    2a72:	4629      	mov	r1, r5
    2a74:	2019      	movs	r0, #25
    2a76:	f7ff f85f 	bl	1b38 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    2a7a:	4629      	mov	r1, r5
    2a7c:	201b      	movs	r0, #27
    2a7e:	f7ff f85b 	bl	1b38 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2a82:	2019      	movs	r0, #25
    2a84:	f7fe fff8 	bl	1a78 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    2a88:	201b      	movs	r0, #27
    2a8a:	f7fe fff5 	bl	1a78 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    2a8e:	6823      	ldr	r3, [r4, #0]
    2a90:	f043 0301 	orr.w	r3, r3, #1
    2a94:	6023      	str	r3, [r4, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    2a96:	220a      	movs	r2, #10
    2a98:	4629      	mov	r1, r5
    2a9a:	4814      	ldr	r0, [pc, #80]	; (2aec <tvout_init+0xe0>)
    2a9c:	f7fe fce8 	bl	1470 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    2aa0:	69f3      	ldr	r3, [r6, #28]
    2aa2:	f043 0302 	orr.w	r3, r3, #2
    2aa6:	61f3      	str	r3, [r6, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    2aa8:	4b11      	ldr	r3, [pc, #68]	; (2af0 <tvout_init+0xe4>)
    2aaa:	f8c3 801c 	str.w	r8, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2aae:	601f      	str	r7, [r3, #0]
    TMR3->ARR=19; 
    2ab0:	2213      	movs	r2, #19
    2ab2:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2ab4:	220a      	movs	r2, #10
    2ab6:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    2ab8:	6c5a      	ldr	r2, [r3, #68]	; 0x44
    2aba:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
    2abe:	645a      	str	r2, [r3, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    2ac0:	695a      	ldr	r2, [r3, #20]
    2ac2:	f042 0201 	orr.w	r2, r2, #1
    2ac6:	615a      	str	r2, [r3, #20]
    TMR3->SR=0;
    2ac8:	611d      	str	r5, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2aca:	681a      	ldr	r2, [r3, #0]
    2acc:	f042 0201 	orr.w	r2, r2, #1
    2ad0:	601a      	str	r2, [r3, #0]
    2ad2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2ad6:	bf00      	nop
    2ad8:	40010800 	.word	0x40010800
    2adc:	88883333 	.word	0x88883333
    2ae0:	84484444 	.word	0x84484444
    2ae4:	40010804 	.word	0x40010804
    2ae8:	40021000 	.word	0x40021000
    2aec:	40010c00 	.word	0x40010c00
    2af0:	40000400 	.word	0x40000400

00002af4 <TV_OUT_handler>:
}

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2af4:	4668      	mov	r0, sp
    2af6:	f020 0107 	bic.w	r1, r0, #7
    2afa:	468d      	mov	sp, r1
    2afc:	b431      	push	{r0, r4, r5}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    2afe:	4a2f      	ldr	r2, [pc, #188]	; (2bbc <TV_OUT_handler+0xc8>)
    2b00:	6a13      	ldr	r3, [r2, #32]
    2b02:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2b06:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    2b08:	492d      	ldr	r1, [pc, #180]	; (2bc0 <TV_OUT_handler+0xcc>)
    2b0a:	f240 2209 	movw	r2, #521	; 0x209
    2b0e:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    2b10:	4293      	cmp	r3, r2
    2b12:	d9fc      	bls.n	2b0e <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    2b14:	4a29      	ldr	r2, [pc, #164]	; (2bbc <TV_OUT_handler+0xc8>)
    2b16:	6a13      	ldr	r3, [r2, #32]
    2b18:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2b1c:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    2b1e:	4b29      	ldr	r3, [pc, #164]	; (2bc4 <TV_OUT_handler+0xd0>)
    2b20:	881d      	ldrh	r5, [r3, #0]
    2b22:	b2ad      	uxth	r5, r5
    2b24:	4b28      	ldr	r3, [pc, #160]	; (2bc8 <TV_OUT_handler+0xd4>)
    2b26:	7818      	ldrb	r0, [r3, #0]
    2b28:	785a      	ldrb	r2, [r3, #1]
    2b2a:	fb95 f5f2 	sdiv	r5, r5, r2
    2b2e:	4a27      	ldr	r2, [pc, #156]	; (2bcc <TV_OUT_handler+0xd8>)
    2b30:	fb00 2505 	mla	r5, r0, r5, r2
    while(TMR1->CNT<left_margin);
    2b34:	8859      	ldrh	r1, [r3, #2]
    2b36:	4a22      	ldr	r2, [pc, #136]	; (2bc0 <TV_OUT_handler+0xcc>)
    2b38:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2b3a:	428b      	cmp	r3, r1
    2b3c:	d3fc      	bcc.n	2b38 <TV_OUT_handler+0x44>
    _jitter_cancel();
    2b3e:	4b24      	ldr	r3, [pc, #144]	; (2bd0 <TV_OUT_handler+0xdc>)
    2b40:	461a      	mov	r2, r3
    2b42:	6812      	ldr	r2, [r2, #0]
    2b44:	f002 0207 	and.w	r2, r2, #7
    2b48:	ea4f 0242 	mov.w	r2, r2, lsl #1
    2b4c:	4497      	add	pc, r2
    2b4e:	bf00      	nop
    2b50:	bf00      	nop
    2b52:	bf00      	nop
    2b54:	bf00      	nop
    2b56:	bf00      	nop
    2b58:	bf00      	nop
    2b5a:	bf00      	nop
    2b5c:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    2b5e:	4a17      	ldr	r2, [pc, #92]	; (2bbc <TV_OUT_handler+0xc8>)
    2b60:	6a13      	ldr	r3, [r2, #32]
    2b62:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2b66:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    2b68:	b1b0      	cbz	r0, 2b98 <TV_OUT_handler+0xa4>
    2b6a:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    2b6c:	4819      	ldr	r0, [pc, #100]	; (2bd4 <TV_OUT_handler+0xe0>)
        _pixel_delay(pixel_delay);
    2b6e:	4916      	ldr	r1, [pc, #88]	; (2bc8 <TV_OUT_handler+0xd4>)
        *video_port=(*video_data)>>4;
    2b70:	781a      	ldrb	r2, [r3, #0]
    2b72:	0912      	lsrs	r2, r2, #4
    2b74:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    2b76:	790c      	ldrb	r4, [r1, #4]
    2b78:	4622      	mov	r2, r4
    2b7a:	3a01      	subs	r2, #1
    2b7c:	d1fd      	bne.n	2b7a <TV_OUT_handler+0x86>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    2b7e:	f813 2b01 	ldrb.w	r2, [r3], #1
    2b82:	f002 020f 	and.w	r2, r2, #15
    2b86:	8002      	strh	r2, [r0, #0]
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        _pixel_delay(pixel_delay);
    2b88:	790c      	ldrb	r4, [r1, #4]
    2b8a:	4622      	mov	r2, r4
    2b8c:	3a01      	subs	r2, #1
    2b8e:	d1fd      	bne.n	2b8c <TV_OUT_handler+0x98>
    for (i=0;i<byte_per_row;i++){
    2b90:	1b5c      	subs	r4, r3, r5
    2b92:	780a      	ldrb	r2, [r1, #0]
    2b94:	4294      	cmp	r4, r2
    2b96:	d3eb      	bcc.n	2b70 <TV_OUT_handler+0x7c>
    }
    PORTA->ODR=0;
    2b98:	2200      	movs	r2, #0
    2b9a:	4b0f      	ldr	r3, [pc, #60]	; (2bd8 <TV_OUT_handler+0xe4>)
    2b9c:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    2b9e:	4a07      	ldr	r2, [pc, #28]	; (2bbc <TV_OUT_handler+0xc8>)
    2ba0:	6a13      	ldr	r3, [r2, #32]
    2ba2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2ba6:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    2ba8:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    2bac:	6913      	ldr	r3, [r2, #16]
    2bae:	f023 0304 	bic.w	r3, r3, #4
    2bb2:	6113      	str	r3, [r2, #16]
}
    2bb4:	bc31      	pop	{r0, r4, r5}
    2bb6:	4685      	mov	sp, r0
    2bb8:	4770      	bx	lr
    2bba:	bf00      	nop
    2bbc:	40000400 	.word	0x40000400
    2bc0:	40012c00 	.word	0x40012c00
    2bc4:	20000680 	.word	0x20000680
    2bc8:	200001ec 	.word	0x200001ec
    2bcc:	200026d0 	.word	0x200026d0
    2bd0:	40012c24 	.word	0x40012c24
    2bd4:	4001080c 	.word	0x4001080c
    2bd8:	40010800 	.word	0x40010800

00002bdc <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    2bdc:	4668      	mov	r0, sp
    2bde:	f020 0107 	bic.w	r1, r0, #7
    2be2:	468d      	mov	sp, r1
    2be4:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    2be6:	4a8e      	ldr	r2, [pc, #568]	; (2e20 <TV_SYNC_handler+0x244>)
    2be8:	8853      	ldrh	r3, [r2, #2]
    2bea:	3301      	adds	r3, #1
    2bec:	b29b      	uxth	r3, r3
    2bee:	8053      	strh	r3, [r2, #2]
    ntsc_ticks++;
    2bf0:	498c      	ldr	r1, [pc, #560]	; (2e24 <TV_SYNC_handler+0x248>)
    2bf2:	680b      	ldr	r3, [r1, #0]
    2bf4:	3301      	adds	r3, #1
    2bf6:	600b      	str	r3, [r1, #0]
    switch (task){
    2bf8:	8893      	ldrh	r3, [r2, #4]
    2bfa:	b29b      	uxth	r3, r3
    2bfc:	2b09      	cmp	r3, #9
    2bfe:	f200 8081 	bhi.w	2d04 <TV_SYNC_handler+0x128>
    2c02:	e8df f013 	tbh	[pc, r3, lsl #1]
    2c06:	000a      	.short	0x000a
    2c08:	0048002a 	.word	0x0048002a
    2c0c:	00880069 	.word	0x00880069
    2c10:	00a50090 	.word	0x00a50090
    2c14:	00d100b4 	.word	0x00d100b4
    2c18:	00ed      	.short	0x00ed
    case PRE_SYNC:
        if (!slice){
    2c1a:	4b81      	ldr	r3, [pc, #516]	; (2e20 <TV_SYNC_handler+0x244>)
    2c1c:	881b      	ldrh	r3, [r3, #0]
    2c1e:	b29b      	uxth	r3, r3
    2c20:	b17b      	cbz	r3, 2c42 <TV_SYNC_handler+0x66>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    2c22:	4a7f      	ldr	r2, [pc, #508]	; (2e20 <TV_SYNC_handler+0x244>)
    2c24:	8813      	ldrh	r3, [r2, #0]
    2c26:	3301      	adds	r3, #1
    2c28:	b29b      	uxth	r3, r3
    2c2a:	8013      	strh	r3, [r2, #0]
    2c2c:	8813      	ldrh	r3, [r2, #0]
    2c2e:	b29b      	uxth	r3, r3
    2c30:	2b06      	cmp	r3, #6
    2c32:	d167      	bne.n	2d04 <TV_SYNC_handler+0x128>
    2c34:	2300      	movs	r3, #0
    2c36:	8013      	strh	r3, [r2, #0]
    2c38:	8893      	ldrh	r3, [r2, #4]
    2c3a:	3301      	adds	r3, #1
    2c3c:	b29b      	uxth	r3, r3
    2c3e:	8093      	strh	r3, [r2, #4]
    2c40:	e060      	b.n	2d04 <TV_SYNC_handler+0x128>
            TMR1->ARR=SYNC_LINE;
    2c42:	4b79      	ldr	r3, [pc, #484]	; (2e28 <TV_SYNC_handler+0x24c>)
    2c44:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2c48:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    2c4a:	22a4      	movs	r2, #164	; 0xa4
    2c4c:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    2c4e:	4a74      	ldr	r2, [pc, #464]	; (2e20 <TV_SYNC_handler+0x244>)
    2c50:	8813      	ldrh	r3, [r2, #0]
    2c52:	3301      	adds	r3, #1
    2c54:	b29b      	uxth	r3, r3
    2c56:	8013      	strh	r3, [r2, #0]
    2c58:	e054      	b.n	2d04 <TV_SYNC_handler+0x128>
        }
        break;
    case VSYNC:
        if (!slice){
    2c5a:	4b71      	ldr	r3, [pc, #452]	; (2e20 <TV_SYNC_handler+0x244>)
    2c5c:	881b      	ldrh	r3, [r3, #0]
    2c5e:	b29b      	uxth	r3, r3
    2c60:	b17b      	cbz	r3, 2c82 <TV_SYNC_handler+0xa6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    2c62:	4a6f      	ldr	r2, [pc, #444]	; (2e20 <TV_SYNC_handler+0x244>)
    2c64:	8813      	ldrh	r3, [r2, #0]
    2c66:	3301      	adds	r3, #1
    2c68:	b29b      	uxth	r3, r3
    2c6a:	8013      	strh	r3, [r2, #0]
    2c6c:	8813      	ldrh	r3, [r2, #0]
    2c6e:	b29b      	uxth	r3, r3
    2c70:	2b06      	cmp	r3, #6
    2c72:	d147      	bne.n	2d04 <TV_SYNC_handler+0x128>
    2c74:	2300      	movs	r3, #0
    2c76:	8013      	strh	r3, [r2, #0]
    2c78:	8893      	ldrh	r3, [r2, #4]
    2c7a:	3301      	adds	r3, #1
    2c7c:	b29b      	uxth	r3, r3
    2c7e:	8093      	strh	r3, [r2, #4]
    2c80:	e040      	b.n	2d04 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SYNC_PULSE;
    2c82:	f240 7294 	movw	r2, #1940	; 0x794
    2c86:	4b68      	ldr	r3, [pc, #416]	; (2e28 <TV_SYNC_handler+0x24c>)
    2c88:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    2c8a:	4a65      	ldr	r2, [pc, #404]	; (2e20 <TV_SYNC_handler+0x244>)
    2c8c:	8813      	ldrh	r3, [r2, #0]
    2c8e:	3301      	adds	r3, #1
    2c90:	b29b      	uxth	r3, r3
    2c92:	8013      	strh	r3, [r2, #0]
    2c94:	e036      	b.n	2d04 <TV_SYNC_handler+0x128>
        }
        break;
    case POST_SYNC:
        if (!slice){
    2c96:	4b62      	ldr	r3, [pc, #392]	; (2e20 <TV_SYNC_handler+0x244>)
    2c98:	881b      	ldrh	r3, [r3, #0]
    2c9a:	b29b      	uxth	r3, r3
    2c9c:	b153      	cbz	r3, 2cb4 <TV_SYNC_handler+0xd8>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    2c9e:	4b60      	ldr	r3, [pc, #384]	; (2e20 <TV_SYNC_handler+0x244>)
    2ca0:	881b      	ldrh	r3, [r3, #0]
    2ca2:	b29b      	uxth	r3, r3
    2ca4:	2b06      	cmp	r3, #6
    2ca6:	d00e      	beq.n	2cc6 <TV_SYNC_handler+0xea>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    2ca8:	4a5d      	ldr	r2, [pc, #372]	; (2e20 <TV_SYNC_handler+0x244>)
    2caa:	8813      	ldrh	r3, [r2, #0]
    2cac:	3301      	adds	r3, #1
    2cae:	b29b      	uxth	r3, r3
    2cb0:	8013      	strh	r3, [r2, #0]
            break;
    2cb2:	e027      	b.n	2d04 <TV_SYNC_handler+0x128>
            TMR1->CCR1=SERRATION;    
    2cb4:	22a4      	movs	r2, #164	; 0xa4
    2cb6:	4b5c      	ldr	r3, [pc, #368]	; (2e28 <TV_SYNC_handler+0x24c>)
    2cb8:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    2cba:	4a59      	ldr	r2, [pc, #356]	; (2e20 <TV_SYNC_handler+0x244>)
    2cbc:	8813      	ldrh	r3, [r2, #0]
    2cbe:	3301      	adds	r3, #1
    2cc0:	b29b      	uxth	r3, r3
    2cc2:	8013      	strh	r3, [r2, #0]
            break;
    2cc4:	e01e      	b.n	2d04 <TV_SYNC_handler+0x128>
            task++;
    2cc6:	4a56      	ldr	r2, [pc, #344]	; (2e20 <TV_SYNC_handler+0x244>)
    2cc8:	8893      	ldrh	r3, [r2, #4]
    2cca:	3301      	adds	r3, #1
    2ccc:	b29b      	uxth	r3, r3
    2cce:	8093      	strh	r3, [r2, #4]
            if (!(flags&F_EVEN)){
    2cd0:	88d3      	ldrh	r3, [r2, #6]
    2cd2:	f013 0f01 	tst.w	r3, #1
    2cd6:	d015      	beq.n	2d04 <TV_SYNC_handler+0x128>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    2cd8:	4b53      	ldr	r3, [pc, #332]	; (2e28 <TV_SYNC_handler+0x24c>)
    2cda:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2cde:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    2ce0:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2ce4:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    2ce6:	4a4e      	ldr	r2, [pc, #312]	; (2e20 <TV_SYNC_handler+0x244>)
    2ce8:	88d3      	ldrh	r3, [r2, #6]
    2cea:	f023 0302 	bic.w	r3, r3, #2
    2cee:	041b      	lsls	r3, r3, #16
    2cf0:	0c1b      	lsrs	r3, r3, #16
    2cf2:	80d3      	strh	r3, [r2, #6]
        scan_line>>=2;
    2cf4:	8853      	ldrh	r3, [r2, #2]
    2cf6:	f3c3 038d 	ubfx	r3, r3, #2, #14
    2cfa:	8053      	strh	r3, [r2, #2]
        task++;
    2cfc:	8893      	ldrh	r3, [r2, #4]
    2cfe:	3301      	adds	r3, #1
    2d00:	b29b      	uxth	r3, r3
    2d02:	8093      	strh	r3, [r2, #4]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    2d04:	4a48      	ldr	r2, [pc, #288]	; (2e28 <TV_SYNC_handler+0x24c>)
    2d06:	6913      	ldr	r3, [r2, #16]
    2d08:	f023 0301 	bic.w	r3, r3, #1
    2d0c:	6113      	str	r3, [r2, #16]
}
    2d0e:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    2d12:	4685      	mov	sp, r0
    2d14:	4770      	bx	lr
        read_gamepad();
    2d16:	f7fe f9a7 	bl	1068 <read_gamepad>
        task++;
    2d1a:	4a41      	ldr	r2, [pc, #260]	; (2e20 <TV_SYNC_handler+0x244>)
    2d1c:	8893      	ldrh	r3, [r2, #4]
    2d1e:	3301      	adds	r3, #1
    2d20:	b29b      	uxth	r3, r3
    2d22:	8093      	strh	r3, [r2, #4]
        break;    
    2d24:	e7ee      	b.n	2d04 <TV_SYNC_handler+0x128>
        if (sound_timer){
    2d26:	4b41      	ldr	r3, [pc, #260]	; (2e2c <TV_SYNC_handler+0x250>)
    2d28:	881b      	ldrh	r3, [r3, #0]
    2d2a:	b29b      	uxth	r3, r3
    2d2c:	b13b      	cbz	r3, 2d3e <TV_SYNC_handler+0x162>
            sound_timer--;
    2d2e:	4a3f      	ldr	r2, [pc, #252]	; (2e2c <TV_SYNC_handler+0x250>)
    2d30:	8813      	ldrh	r3, [r2, #0]
    2d32:	3b01      	subs	r3, #1
    2d34:	b29b      	uxth	r3, r3
    2d36:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    2d38:	8813      	ldrh	r3, [r2, #0]
    2d3a:	b29b      	uxth	r3, r3
    2d3c:	b12b      	cbz	r3, 2d4a <TV_SYNC_handler+0x16e>
        task++;
    2d3e:	4a38      	ldr	r2, [pc, #224]	; (2e20 <TV_SYNC_handler+0x244>)
    2d40:	8893      	ldrh	r3, [r2, #4]
    2d42:	3301      	adds	r3, #1
    2d44:	b29b      	uxth	r3, r3
    2d46:	8093      	strh	r3, [r2, #4]
        break;    
    2d48:	e7dc      	b.n	2d04 <TV_SYNC_handler+0x128>
                sound_stop();
    2d4a:	f7ff fb02 	bl	2352 <sound_stop>
    2d4e:	e7f6      	b.n	2d3e <TV_SYNC_handler+0x162>
        if (game_timer){
    2d50:	4b37      	ldr	r3, [pc, #220]	; (2e30 <TV_SYNC_handler+0x254>)
    2d52:	881b      	ldrh	r3, [r3, #0]
    2d54:	b29b      	uxth	r3, r3
    2d56:	b123      	cbz	r3, 2d62 <TV_SYNC_handler+0x186>
            game_timer--;
    2d58:	4a35      	ldr	r2, [pc, #212]	; (2e30 <TV_SYNC_handler+0x254>)
    2d5a:	8813      	ldrh	r3, [r2, #0]
    2d5c:	3b01      	subs	r3, #1
    2d5e:	b29b      	uxth	r3, r3
    2d60:	8013      	strh	r3, [r2, #0]
        task++;
    2d62:	4a2f      	ldr	r2, [pc, #188]	; (2e20 <TV_SYNC_handler+0x244>)
    2d64:	8893      	ldrh	r3, [r2, #4]
    2d66:	3301      	adds	r3, #1
    2d68:	b29b      	uxth	r3, r3
    2d6a:	8093      	strh	r3, [r2, #4]
        break;
    2d6c:	e7ca      	b.n	2d04 <TV_SYNC_handler+0x128>
        if (scan_line==video_start){
    2d6e:	4b2c      	ldr	r3, [pc, #176]	; (2e20 <TV_SYNC_handler+0x244>)
    2d70:	885b      	ldrh	r3, [r3, #2]
    2d72:	b29b      	uxth	r3, r3
    2d74:	4a2f      	ldr	r2, [pc, #188]	; (2e34 <TV_SYNC_handler+0x258>)
    2d76:	88d2      	ldrh	r2, [r2, #6]
    2d78:	429a      	cmp	r2, r3
    2d7a:	d1c3      	bne.n	2d04 <TV_SYNC_handler+0x128>
            TMR1->SR&=~TMR_SR_CC2IF;
    2d7c:	4b2a      	ldr	r3, [pc, #168]	; (2e28 <TV_SYNC_handler+0x24c>)
    2d7e:	691a      	ldr	r2, [r3, #16]
    2d80:	f022 0204 	bic.w	r2, r2, #4
    2d84:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    2d86:	68da      	ldr	r2, [r3, #12]
    2d88:	f042 0204 	orr.w	r2, r2, #4
    2d8c:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    2d8e:	4b24      	ldr	r3, [pc, #144]	; (2e20 <TV_SYNC_handler+0x244>)
    2d90:	88da      	ldrh	r2, [r3, #6]
    2d92:	b292      	uxth	r2, r2
    2d94:	f042 0204 	orr.w	r2, r2, #4
    2d98:	80da      	strh	r2, [r3, #6]
            task++;
    2d9a:	889a      	ldrh	r2, [r3, #4]
    2d9c:	3201      	adds	r2, #1
    2d9e:	b292      	uxth	r2, r2
    2da0:	809a      	strh	r2, [r3, #4]
            slice=0;
    2da2:	2200      	movs	r2, #0
    2da4:	801a      	strh	r2, [r3, #0]
    2da6:	e7ad      	b.n	2d04 <TV_SYNC_handler+0x128>
        slice++;
    2da8:	4a1d      	ldr	r2, [pc, #116]	; (2e20 <TV_SYNC_handler+0x244>)
    2daa:	8813      	ldrh	r3, [r2, #0]
    2dac:	3301      	adds	r3, #1
    2dae:	b29b      	uxth	r3, r3
    2db0:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    2db2:	8853      	ldrh	r3, [r2, #2]
    2db4:	b29b      	uxth	r3, r3
    2db6:	4a1f      	ldr	r2, [pc, #124]	; (2e34 <TV_SYNC_handler+0x258>)
    2db8:	8912      	ldrh	r2, [r2, #8]
    2dba:	429a      	cmp	r2, r3
    2dbc:	d1a2      	bne.n	2d04 <TV_SYNC_handler+0x128>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    2dbe:	4a1a      	ldr	r2, [pc, #104]	; (2e28 <TV_SYNC_handler+0x24c>)
    2dc0:	68d3      	ldr	r3, [r2, #12]
    2dc2:	f023 0304 	bic.w	r3, r3, #4
    2dc6:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    2dc8:	4a15      	ldr	r2, [pc, #84]	; (2e20 <TV_SYNC_handler+0x244>)
    2dca:	88d3      	ldrh	r3, [r2, #6]
    2dcc:	f023 0304 	bic.w	r3, r3, #4
    2dd0:	041b      	lsls	r3, r3, #16
    2dd2:	0c1b      	lsrs	r3, r3, #16
    2dd4:	80d3      	strh	r3, [r2, #6]
            task++;
    2dd6:	8893      	ldrh	r3, [r2, #4]
    2dd8:	3301      	adds	r3, #1
    2dda:	b29b      	uxth	r3, r3
    2ddc:	8093      	strh	r3, [r2, #4]
    2dde:	e791      	b.n	2d04 <TV_SYNC_handler+0x128>
        if (scan_line==263){
    2de0:	4b0f      	ldr	r3, [pc, #60]	; (2e20 <TV_SYNC_handler+0x244>)
    2de2:	885b      	ldrh	r3, [r3, #2]
    2de4:	b29b      	uxth	r3, r3
    2de6:	f240 1207 	movw	r2, #263	; 0x107
    2dea:	4293      	cmp	r3, r2
    2dec:	d18a      	bne.n	2d04 <TV_SYNC_handler+0x128>
            if (flags&F_EVEN){ // half length
    2dee:	4b0c      	ldr	r3, [pc, #48]	; (2e20 <TV_SYNC_handler+0x244>)
    2df0:	88db      	ldrh	r3, [r3, #6]
    2df2:	f013 0f01 	tst.w	r3, #1
    2df6:	d003      	beq.n	2e00 <TV_SYNC_handler+0x224>
                TMR1->ARR=SYNC_LINE;
    2df8:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2dfc:	4b0a      	ldr	r3, [pc, #40]	; (2e28 <TV_SYNC_handler+0x24c>)
    2dfe:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    2e00:	4b07      	ldr	r3, [pc, #28]	; (2e20 <TV_SYNC_handler+0x244>)
    2e02:	88da      	ldrh	r2, [r3, #6]
    2e04:	b292      	uxth	r2, r2
    2e06:	f082 0201 	eor.w	r2, r2, #1
    2e0a:	80da      	strh	r2, [r3, #6]
            flags|=F_VSYNC;
    2e0c:	88da      	ldrh	r2, [r3, #6]
    2e0e:	b292      	uxth	r2, r2
    2e10:	f042 0202 	orr.w	r2, r2, #2
    2e14:	80da      	strh	r2, [r3, #6]
            scan_line=0;
    2e16:	2200      	movs	r2, #0
    2e18:	805a      	strh	r2, [r3, #2]
            slice=0;
    2e1a:	801a      	strh	r2, [r3, #0]
            task=0;
    2e1c:	809a      	strh	r2, [r3, #4]
    2e1e:	e771      	b.n	2d04 <TV_SYNC_handler+0x128>
    2e20:	20000680 	.word	0x20000680
    2e24:	20004e34 	.word	0x20004e34
    2e28:	40012c00 	.word	0x40012c00
    2e2c:	20004e38 	.word	0x20004e38
    2e30:	20004e30 	.word	0x20004e30
    2e34:	200001ec 	.word	0x200001ec

00002e38 <frame_sync>:

void frame_sync(){
    while (!(flags&F_VSYNC));
    2e38:	4a02      	ldr	r2, [pc, #8]	; (2e44 <frame_sync+0xc>)
    2e3a:	88d3      	ldrh	r3, [r2, #6]
    2e3c:	f013 0f02 	tst.w	r3, #2
    2e40:	d0fb      	beq.n	2e3a <frame_sync+0x2>
}
    2e42:	4770      	bx	lr
    2e44:	20000680 	.word	0x20000680

00002e48 <wait_sync_end>:

void wait_sync_end(){
    while (flags&F_VSYNC);
    2e48:	4a02      	ldr	r2, [pc, #8]	; (2e54 <wait_sync_end+0xc>)
    2e4a:	88d3      	ldrh	r3, [r2, #6]
    2e4c:	f013 0f02 	tst.w	r3, #2
    2e50:	d1fb      	bne.n	2e4a <wait_sync_end+0x2>
}
    2e52:	4770      	bx	lr
    2e54:	20000680 	.word	0x20000680

00002e58 <set_video_mode>:

void set_video_mode(vmode_t mode){
    2e58:	b510      	push	{r4, lr}
    2e5a:	4604      	mov	r4, r0
    frame_sync();
    2e5c:	f7ff ffec 	bl	2e38 <frame_sync>
    video_mode=mode;
    2e60:	4b0e      	ldr	r3, [pc, #56]	; (2e9c <set_video_mode+0x44>)
    2e62:	721c      	strb	r4, [r3, #8]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    2e64:	b1ac      	cbz	r4, 2e92 <set_video_mode+0x3a>
    2e66:	2200      	movs	r2, #0
    2e68:	4b0d      	ldr	r3, [pc, #52]	; (2ea0 <set_video_mode+0x48>)
    2e6a:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    2e6c:	4b0d      	ldr	r3, [pc, #52]	; (2ea4 <set_video_mode+0x4c>)
    2e6e:	480e      	ldr	r0, [pc, #56]	; (2ea8 <set_video_mode+0x50>)
    2e70:	eb00 1004 	add.w	r0, r0, r4, lsl #4
    2e74:	8842      	ldrh	r2, [r0, #2]
    2e76:	80da      	strh	r2, [r3, #6]
    video_end=video_params[mode].video_end;
    2e78:	8882      	ldrh	r2, [r0, #4]
    2e7a:	811a      	strh	r2, [r3, #8]
    left_margin=video_params[mode].left_margin;
    2e7c:	88c2      	ldrh	r2, [r0, #6]
    2e7e:	805a      	strh	r2, [r3, #2]
    byte_per_row=video_params[mode].bpr;
    2e80:	7a02      	ldrb	r2, [r0, #8]
    2e82:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    2e84:	7a42      	ldrb	r2, [r0, #9]
    2e86:	705a      	strb	r2, [r3, #1]
    pixel_delay=video_params[mode].pdly;
    2e88:	7a82      	ldrb	r2, [r0, #10]
    2e8a:	711a      	strb	r2, [r3, #4]
    hres=video_params[mode].hres;
    vres=video_params[mode].vres;
    gfx_cls();
    2e8c:	f7fe fba6 	bl	15dc <gfx_cls>
    2e90:	bd10      	pop	{r4, pc}
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    2e92:	2202      	movs	r2, #2
    2e94:	4b02      	ldr	r3, [pc, #8]	; (2ea0 <set_video_mode+0x48>)
    2e96:	701a      	strb	r2, [r3, #0]
    2e98:	e7e8      	b.n	2e6c <set_video_mode+0x14>
    2e9a:	bf00      	nop
    2e9c:	20000680 	.word	0x20000680
    2ea0:	20000190 	.word	0x20000190
    2ea4:	200001ec 	.word	0x200001ec
    2ea8:	000036e4 	.word	0x000036e4

00002eac <get_video_params>:
}

vmode_params_t* get_video_params(){
    return (vmode_params_t*)&video_params[video_mode];
    2eac:	4b02      	ldr	r3, [pc, #8]	; (2eb8 <get_video_params+0xc>)
    2eae:	7a18      	ldrb	r0, [r3, #8]
}
    2eb0:	4b02      	ldr	r3, [pc, #8]	; (2ebc <get_video_params+0x10>)
    2eb2:	eb03 1000 	add.w	r0, r3, r0, lsl #4
    2eb6:	4770      	bx	lr
    2eb8:	20000680 	.word	0x20000680
    2ebc:	000036e4 	.word	0x000036e4

00002ec0 <game_pause>:

void game_pause(uint16_t frame_count){
    game_timer=frame_count;
    2ec0:	4b03      	ldr	r3, [pc, #12]	; (2ed0 <game_pause+0x10>)
    2ec2:	8018      	strh	r0, [r3, #0]
    while (game_timer);
    2ec4:	461a      	mov	r2, r3
    2ec6:	8813      	ldrh	r3, [r2, #0]
    2ec8:	b29b      	uxth	r3, r3
    2eca:	2b00      	cmp	r3, #0
    2ecc:	d1fb      	bne.n	2ec6 <game_pause+0x6>
}
    2ece:	4770      	bx	lr
    2ed0:	20004e30 	.word	0x20004e30

00002ed4 <micro_pause>:
// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    uint32_t t0;
    t0=ntsc_ticks+count;
    2ed4:	4b03      	ldr	r3, [pc, #12]	; (2ee4 <micro_pause+0x10>)
    2ed6:	681b      	ldr	r3, [r3, #0]
    2ed8:	4418      	add	r0, r3
    while (ntsc_ticks<t0);
    2eda:	4a02      	ldr	r2, [pc, #8]	; (2ee4 <micro_pause+0x10>)
    2edc:	6813      	ldr	r3, [r2, #0]
    2ede:	4298      	cmp	r0, r3
    2ee0:	d8fc      	bhi.n	2edc <micro_pause+0x8>
}
    2ee2:	4770      	bx	lr
    2ee4:	20004e34 	.word	0x20004e34

00002ee8 <usart_config_port>:
static uint8_t head;
static uint8_t tail;

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    2ee8:	4b3b      	ldr	r3, [pc, #236]	; (2fd8 <usart_config_port+0xf0>)
    2eea:	4298      	cmp	r0, r3
    2eec:	d057      	beq.n	2f9e <usart_config_port+0xb6>
    2eee:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    2ef2:	4298      	cmp	r0, r3
    2ef4:	d004      	beq.n	2f00 <usart_config_port+0x18>
    2ef6:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    2efa:	4298      	cmp	r0, r3
    2efc:	d032      	beq.n	2f64 <usart_config_port+0x7c>
    2efe:	4770      	bx	lr
	case (uint32_t)USART1:
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    2f00:	4836      	ldr	r0, [pc, #216]	; (2fdc <usart_config_port+0xf4>)
    2f02:	6983      	ldr	r3, [r0, #24]
    2f04:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2f08:	f043 0304 	orr.w	r3, r3, #4
    2f0c:	6183      	str	r3, [r0, #24]
		if (flow_ctrl==FLOW_HARD){
    2f0e:	2a01      	cmp	r2, #1
    2f10:	d016      	beq.n	2f40 <usart_config_port+0x58>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
		}
		if (port==USART1_PORT){
    2f12:	4b33      	ldr	r3, [pc, #204]	; (2fe0 <usart_config_port+0xf8>)
    2f14:	4299      	cmp	r1, r3
    2f16:	d01c      	beq.n	2f52 <usart_config_port+0x6a>
			// PA11 -> CTS input (floating)
			// PA12 -> RTS output (push-pull)
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
		}else{//USART1_ALT_PORT
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    2f18:	4a32      	ldr	r2, [pc, #200]	; (2fe4 <usart_config_port+0xfc>)
    2f1a:	6853      	ldr	r3, [r2, #4]
    2f1c:	f043 0304 	orr.w	r3, r3, #4
    2f20:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2f22:	f502 3288 	add.w	r2, r2, #69632	; 0x11000
    2f26:	6993      	ldr	r3, [r2, #24]
    2f28:	f043 0308 	orr.w	r3, r3, #8
    2f2c:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    2f2e:	680b      	ldr	r3, [r1, #0]
    2f30:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
    2f34:	600b      	str	r3, [r1, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    2f36:	680b      	ldr	r3, [r1, #0]
    2f38:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
    2f3c:	600b      	str	r3, [r1, #0]
    2f3e:	4770      	bx	lr
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    2f40:	684b      	ldr	r3, [r1, #4]
    2f42:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    2f46:	604b      	str	r3, [r1, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    2f48:	684b      	ldr	r3, [r1, #4]
    2f4a:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    2f4e:	604b      	str	r3, [r1, #4]
    2f50:	e7df      	b.n	2f12 <usart_config_port+0x2a>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    2f52:	685a      	ldr	r2, [r3, #4]
    2f54:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
    2f58:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    2f5a:	685a      	ldr	r2, [r3, #4]
    2f5c:	f042 02a0 	orr.w	r2, r2, #160	; 0xa0
    2f60:	605a      	str	r2, [r3, #4]
    2f62:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART2:
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    2f64:	4b1d      	ldr	r3, [pc, #116]	; (2fdc <usart_config_port+0xf4>)
    2f66:	69d8      	ldr	r0, [r3, #28]
    2f68:	f440 3000 	orr.w	r0, r0, #131072	; 0x20000
    2f6c:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2f6e:	6998      	ldr	r0, [r3, #24]
    2f70:	f040 0004 	orr.w	r0, r0, #4
    2f74:	6198      	str	r0, [r3, #24]
		// PA0 -> CTS input   (floating)
		// PA1 -> RTS output  (push-pull)
		// PA2 -> TX  output (push-pull)
		// PA3 -> RX input (floating)
		if (flow_ctrl==FLOW_HARD){
    2f76:	2a01      	cmp	r2, #1
    2f78:	d008      	beq.n	2f8c <usart_config_port+0xa4>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
		}else{
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    2f7a:	680b      	ldr	r3, [r1, #0]
    2f7c:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    2f80:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    2f82:	680b      	ldr	r3, [r1, #0]
    2f84:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    2f88:	600b      	str	r3, [r1, #0]
    2f8a:	4770      	bx	lr
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    2f8c:	680b      	ldr	r3, [r1, #0]
    2f8e:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
    2f92:	600b      	str	r3, [r1, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    2f94:	680b      	ldr	r3, [r1, #0]
    2f96:	f443 632a 	orr.w	r3, r3, #2720	; 0xaa0
    2f9a:	600b      	str	r3, [r1, #0]
    2f9c:	4770      	bx	lr
		}
		break;
	case (uint32_t)USART3:
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    2f9e:	4b0f      	ldr	r3, [pc, #60]	; (2fdc <usart_config_port+0xf4>)
    2fa0:	69d8      	ldr	r0, [r3, #28]
    2fa2:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
    2fa6:	61d8      	str	r0, [r3, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2fa8:	6998      	ldr	r0, [r3, #24]
    2faa:	f040 0008 	orr.w	r0, r0, #8
    2fae:	6198      	str	r0, [r3, #24]
		//PB10 -> TX output (push-pull)
		//PB11 -> RX input (floating)
		//PB13 -> CTS input (floating)
		//PB14 -> RTS output (push-pull)
		if (flow_ctrl==FLOW_HARD){
    2fb0:	2a01      	cmp	r2, #1
    2fb2:	d008      	beq.n	2fc6 <usart_config_port+0xde>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
		}else{
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    2fb4:	684b      	ldr	r3, [r1, #4]
    2fb6:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
    2fba:	604b      	str	r3, [r1, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    2fbc:	684b      	ldr	r3, [r1, #4]
    2fbe:	f443 6320 	orr.w	r3, r3, #2560	; 0xa00
    2fc2:	604b      	str	r3, [r1, #4]
		}
		break;
	}
}
    2fc4:	e79b      	b.n	2efe <usart_config_port+0x16>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    2fc6:	684b      	ldr	r3, [r1, #4]
    2fc8:	f023 230f 	bic.w	r3, r3, #251662080	; 0xf000f00
    2fcc:	604b      	str	r3, [r1, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    2fce:	684b      	ldr	r3, [r1, #4]
    2fd0:	f043 230a 	orr.w	r3, r3, #167774720	; 0xa000a00
    2fd4:	604b      	str	r3, [r1, #4]
    2fd6:	4770      	bx	lr
    2fd8:	40004800 	.word	0x40004800
    2fdc:	40021000 	.word	0x40021000
    2fe0:	40010800 	.word	0x40010800
    2fe4:	40010000 	.word	0x40010000

00002fe8 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    2fe8:	4b04      	ldr	r3, [pc, #16]	; (2ffc <usart_set_baud+0x14>)
    2fea:	4298      	cmp	r0, r3
		rate=(FAPB2/baud/16)<<4;
		rate|=(FAPB2/baud)%16;
    2fec:	bf0c      	ite	eq
    2fee:	4b04      	ldreq	r3, [pc, #16]	; (3000 <usart_set_baud+0x18>)
	}else{
		rate=(FAPB1/baud/16)<<4;
		rate|=(FAPB1/baud)%16;
    2ff0:	4b04      	ldrne	r3, [pc, #16]	; (3004 <usart_set_baud+0x1c>)
    2ff2:	fbb3 f1f1 	udiv	r1, r3, r1
	}
	channel->BRR=rate;
    2ff6:	6081      	str	r1, [r0, #8]
    2ff8:	4770      	bx	lr
    2ffa:	bf00      	nop
    2ffc:	40013800 	.word	0x40013800
    3000:	044463f4 	.word	0x044463f4
    3004:	022231fa 	.word	0x022231fa

00003008 <usart_comm_dir>:
}

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
	channel->CR1&=USART_CR1_DIR_MASK;
    3008:	68c3      	ldr	r3, [r0, #12]
    300a:	f023 030c 	bic.w	r3, r3, #12
    300e:	60c3      	str	r3, [r0, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    3010:	68c3      	ldr	r3, [r0, #12]
    3012:	ea43 0181 	orr.w	r1, r3, r1, lsl #2
    3016:	60c1      	str	r1, [r0, #12]
    3018:	4770      	bx	lr

0000301a <usart_open_channel>:
}


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    301a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    301e:	4604      	mov	r4, r0
    3020:	460f      	mov	r7, r1
    3022:	4615      	mov	r5, r2
    3024:	4698      	mov	r8, r3
    3026:	9e07      	ldr	r6, [sp, #28]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    3028:	4b2e      	ldr	r3, [pc, #184]	; (30e4 <usart_open_channel+0xca>)
    302a:	4298      	cmp	r0, r3
    302c:	d03e      	beq.n	30ac <usart_open_channel+0x92>
    302e:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3032:	4298      	cmp	r0, r3
    3034:	d01b      	beq.n	306e <usart_open_channel+0x54>
    3036:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    303a:	4298      	cmp	r0, r3
    303c:	d02a      	beq.n	3094 <usart_open_channel+0x7a>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
		set_int_priority(IRQ_USART3,7);
		enable_interrupt(IRQ_USART3);
		break;
	}
	if (flow_ctrl==FLOW_HARD){
    303e:	2e01      	cmp	r6, #1
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    3040:	bf04      	itt	eq
    3042:	f44f 7340 	moveq.w	r3, #768	; 0x300
    3046:	6163      	streq	r3, [r4, #20]
	}
	usart_comm_dir(channel,dir);
    3048:	4641      	mov	r1, r8
    304a:	4620      	mov	r0, r4
    304c:	f7ff ffdc 	bl	3008 <usart_comm_dir>
	switch (parity){
    3050:	2d01      	cmp	r5, #1
    3052:	d03c      	beq.n	30ce <usart_open_channel+0xb4>
    3054:	b3b5      	cbz	r5, 30c4 <usart_open_channel+0xaa>
    3056:	2d02      	cmp	r5, #2
    3058:	d03e      	beq.n	30d8 <usart_open_channel+0xbe>
		break;
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
		break;
    }
	usart_set_baud(channel,baud);
    305a:	4639      	mov	r1, r7
    305c:	4620      	mov	r0, r4
    305e:	f7ff ffc3 	bl	2fe8 <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    3062:	68e3      	ldr	r3, [r4, #12]
    3064:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3068:	60e3      	str	r3, [r4, #12]
    306a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	  if (port==STD_PORT){
    306e:	9b06      	ldr	r3, [sp, #24]
    3070:	b95b      	cbnz	r3, 308a <usart_open_channel+0x70>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    3072:	4632      	mov	r2, r6
    3074:	491c      	ldr	r1, [pc, #112]	; (30e8 <usart_open_channel+0xce>)
    3076:	f7ff ff37 	bl	2ee8 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    307a:	2107      	movs	r1, #7
    307c:	2025      	movs	r0, #37	; 0x25
    307e:	f7fe fd5b 	bl	1b38 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    3082:	2025      	movs	r0, #37	; 0x25
    3084:	f7fe fcf8 	bl	1a78 <enable_interrupt>
		break;
    3088:	e7d9      	b.n	303e <usart_open_channel+0x24>
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    308a:	4632      	mov	r2, r6
    308c:	4917      	ldr	r1, [pc, #92]	; (30ec <usart_open_channel+0xd2>)
    308e:	f7ff ff2b 	bl	2ee8 <usart_config_port>
    3092:	e7f2      	b.n	307a <usart_open_channel+0x60>
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    3094:	4632      	mov	r2, r6
    3096:	4914      	ldr	r1, [pc, #80]	; (30e8 <usart_open_channel+0xce>)
    3098:	f7ff ff26 	bl	2ee8 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    309c:	2107      	movs	r1, #7
    309e:	2026      	movs	r0, #38	; 0x26
    30a0:	f7fe fd4a 	bl	1b38 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    30a4:	2026      	movs	r0, #38	; 0x26
    30a6:	f7fe fce7 	bl	1a78 <enable_interrupt>
		break;
    30aa:	e7c8      	b.n	303e <usart_open_channel+0x24>
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    30ac:	4632      	mov	r2, r6
    30ae:	490f      	ldr	r1, [pc, #60]	; (30ec <usart_open_channel+0xd2>)
    30b0:	f7ff ff1a 	bl	2ee8 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    30b4:	2107      	movs	r1, #7
    30b6:	2027      	movs	r0, #39	; 0x27
    30b8:	f7fe fd3e 	bl	1b38 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    30bc:	2027      	movs	r0, #39	; 0x27
    30be:	f7fe fcdb 	bl	1a78 <enable_interrupt>
		break;
    30c2:	e7bc      	b.n	303e <usart_open_channel+0x24>
		channel->CR1|=USART_CR1_RXNEIE;
    30c4:	68e3      	ldr	r3, [r4, #12]
    30c6:	f043 0320 	orr.w	r3, r3, #32
    30ca:	60e3      	str	r3, [r4, #12]
		break;
    30cc:	e7c5      	b.n	305a <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    30ce:	68e3      	ldr	r3, [r4, #12]
    30d0:	f443 63e4 	orr.w	r3, r3, #1824	; 0x720
    30d4:	60e3      	str	r3, [r4, #12]
		break;
    30d6:	e7c0      	b.n	305a <usart_open_channel+0x40>
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    30d8:	68e3      	ldr	r3, [r4, #12]
    30da:	f443 63a4 	orr.w	r3, r3, #1312	; 0x520
    30de:	60e3      	str	r3, [r4, #12]
		break;
    30e0:	e7bb      	b.n	305a <usart_open_channel+0x40>
    30e2:	bf00      	nop
    30e4:	40004800 	.word	0x40004800
    30e8:	40010800 	.word	0x40010800
    30ec:	40010c00 	.word	0x40010c00

000030f0 <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
	return channel->SR&USART_SR_RXNE;
    30f0:	6800      	ldr	r0, [r0, #0]
}
    30f2:	f000 0020 	and.w	r0, r0, #32
    30f6:	4770      	bx	lr

000030f8 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
	char c;
	if (head!=tail){
    30f8:	4a07      	ldr	r2, [pc, #28]	; (3118 <usart_getc+0x20>)
    30fa:	7813      	ldrb	r3, [r2, #0]
    30fc:	7852      	ldrb	r2, [r2, #1]
    30fe:	429a      	cmp	r2, r3
    3100:	d007      	beq.n	3112 <usart_getc+0x1a>
		c=rx_queue[head++];
    3102:	4a05      	ldr	r2, [pc, #20]	; (3118 <usart_getc+0x20>)
    3104:	18d1      	adds	r1, r2, r3
    3106:	7908      	ldrb	r0, [r1, #4]
    3108:	3301      	adds	r3, #1
		head&=(RX_QUEUE_SIZE-1);
    310a:	f003 030f 	and.w	r3, r3, #15
    310e:	7013      	strb	r3, [r2, #0]
		return c;
    3110:	4770      	bx	lr
	}else{
		return 0;
    3112:	2000      	movs	r0, #0
	}
		
}
    3114:	4770      	bx	lr
    3116:	bf00      	nop
    3118:	2000068c 	.word	0x2000068c

0000311c <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
    311c:	b410      	push	{r4}
	unsigned t0=ntsc_ticks+dly;
    311e:	4b0d      	ldr	r3, [pc, #52]	; (3154 <usart_getc_dly+0x38>)
    3120:	681b      	ldr	r3, [r3, #0]
    3122:	4419      	add	r1, r3
	char c;

	while ((ntsc_ticks<t0) && !(head==tail));
    3124:	4b0c      	ldr	r3, [pc, #48]	; (3158 <usart_getc_dly+0x3c>)
    3126:	781a      	ldrb	r2, [r3, #0]
    3128:	785c      	ldrb	r4, [r3, #1]
    312a:	480a      	ldr	r0, [pc, #40]	; (3154 <usart_getc_dly+0x38>)
    312c:	6803      	ldr	r3, [r0, #0]
    312e:	4299      	cmp	r1, r3
    3130:	d901      	bls.n	3136 <usart_getc_dly+0x1a>
    3132:	42a2      	cmp	r2, r4
    3134:	d1fa      	bne.n	312c <usart_getc_dly+0x10>
	if (ntsc_ticks<t0){
    3136:	4b07      	ldr	r3, [pc, #28]	; (3154 <usart_getc_dly+0x38>)
    3138:	681b      	ldr	r3, [r3, #0]
    313a:	4299      	cmp	r1, r3
    313c:	d908      	bls.n	3150 <usart_getc_dly+0x34>
			c=rx_queue[head++];
    313e:	4b06      	ldr	r3, [pc, #24]	; (3158 <usart_getc_dly+0x3c>)
    3140:	1899      	adds	r1, r3, r2
    3142:	7908      	ldrb	r0, [r1, #4]
    3144:	3201      	adds	r2, #1
			head&=(RX_QUEUE_SIZE-1);
    3146:	f002 020f 	and.w	r2, r2, #15
    314a:	701a      	strb	r2, [r3, #0]
			return c;
	}else return 0;
}
    314c:	bc10      	pop	{r4}
    314e:	4770      	bx	lr
	}else return 0;
    3150:	2000      	movs	r0, #0
    3152:	e7fb      	b.n	314c <usart_getc_dly+0x30>
    3154:	20004e34 	.word	0x20004e34
    3158:	2000068c 	.word	0x2000068c

0000315c <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    315c:	6803      	ldr	r3, [r0, #0]
    315e:	f013 0f80 	tst.w	r3, #128	; 0x80
    3162:	d0fb      	beq.n	315c <usart_putc>
	channel->DR=c;
    3164:	6041      	str	r1, [r0, #4]
    3166:	4770      	bx	lr

00003168 <usart_cts>:
}


int usart_cts(usart_t* channel){
	int cts;
	switch ((uint32_t)channel){
    3168:	4b0d      	ldr	r3, [pc, #52]	; (31a0 <usart_cts+0x38>)
    316a:	4298      	cmp	r0, r3
    316c:	d013      	beq.n	3196 <usart_cts+0x2e>
    316e:	f503 4370 	add.w	r3, r3, #61440	; 0xf000
    3172:	4298      	cmp	r0, r3
    3174:	d005      	beq.n	3182 <usart_cts+0x1a>
    3176:	f5a3 4374 	sub.w	r3, r3, #62464	; 0xf400
    317a:	4298      	cmp	r0, r3
    317c:	d006      	beq.n	318c <usart_cts+0x24>
    317e:	2000      	movs	r0, #0
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
			break;
	}
	return cts;
}
    3180:	4770      	bx	lr
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    3182:	4b08      	ldr	r3, [pc, #32]	; (31a4 <usart_cts+0x3c>)
    3184:	6898      	ldr	r0, [r3, #8]
    3186:	f400 6000 	and.w	r0, r0, #2048	; 0x800
			break;
    318a:	4770      	bx	lr
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    318c:	4b05      	ldr	r3, [pc, #20]	; (31a4 <usart_cts+0x3c>)
    318e:	6898      	ldr	r0, [r3, #8]
    3190:	f000 0001 	and.w	r0, r0, #1
			break;
    3194:	4770      	bx	lr
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    3196:	4b04      	ldr	r3, [pc, #16]	; (31a8 <usart_cts+0x40>)
    3198:	6898      	ldr	r0, [r3, #8]
    319a:	f400 5000 	and.w	r0, r0, #8192	; 0x2000
			break;
    319e:	4770      	bx	lr
    31a0:	40004800 	.word	0x40004800
    31a4:	40010800 	.word	0x40010800
    31a8:	40010c00 	.word	0x40010c00

000031ac <usart_print>:

void usart_print(usart_t* channel, const char *str){
    31ac:	b538      	push	{r3, r4, r5, lr}
    31ae:	4605      	mov	r5, r0
    31b0:	460c      	mov	r4, r1
	 while (*str) usart_putc(channel,*str++);
    31b2:	7809      	ldrb	r1, [r1, #0]
    31b4:	b131      	cbz	r1, 31c4 <usart_print+0x18>
    31b6:	4628      	mov	r0, r5
    31b8:	f7ff ffd0 	bl	315c <usart_putc>
    31bc:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    31c0:	2900      	cmp	r1, #0
    31c2:	d1f8      	bne.n	31b6 <usart_print+0xa>
    31c4:	bd38      	pop	{r3, r4, r5, pc}

000031c6 <USART1_handler>:
}


void __attribute__((__interrupt__))USART1_handler(){
    31c6:	4668      	mov	r0, sp
    31c8:	f020 0107 	bic.w	r1, r0, #7
    31cc:	468d      	mov	sp, r1
    31ce:	b401      	push	{r0}
		if (USART1->SR&USART_SR_RXNE){
    31d0:	4b08      	ldr	r3, [pc, #32]	; (31f4 <USART1_handler+0x2e>)
    31d2:	681b      	ldr	r3, [r3, #0]
    31d4:	f013 0f20 	tst.w	r3, #32
    31d8:	d009      	beq.n	31ee <USART1_handler+0x28>
				rx_queue[tail++]=USART1->DR;
    31da:	4a07      	ldr	r2, [pc, #28]	; (31f8 <USART1_handler+0x32>)
    31dc:	7853      	ldrb	r3, [r2, #1]
    31de:	4905      	ldr	r1, [pc, #20]	; (31f4 <USART1_handler+0x2e>)
    31e0:	6848      	ldr	r0, [r1, #4]
    31e2:	18d1      	adds	r1, r2, r3
    31e4:	7108      	strb	r0, [r1, #4]
    31e6:	3301      	adds	r3, #1
				tail&=(RX_QUEUE_SIZE-1);
    31e8:	f003 030f 	and.w	r3, r3, #15
    31ec:	7053      	strb	r3, [r2, #1]
		}
}
    31ee:	bc01      	pop	{r0}
    31f0:	4685      	mov	sp, r0
    31f2:	4770      	bx	lr
    31f4:	40013800 	.word	0x40013800
    31f8:	2000068c 	.word	0x2000068c
