
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 d9 48 00 00     .P. 1...=....H..
      10:	d9 48 00 00 d9 48 00 00 d9 48 00 00 d9 48 00 00     .H...H...H...H..
      20:	d9 48 00 00 d9 48 00 00 d9 48 00 00 55 02 00 00     .H...H...H..U...
      30:	d9 48 00 00 d9 48 00 00 5b 02 00 00 61 02 00 00     .H...H..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 31 44 00 00     g...m...y...1D..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 d9 48 00 00 d9 48 00 00 b5 02 00 00     .....H...H......
      80:	d9 48 00 00 d9 48 00 00 d9 48 00 00 d9 48 00 00     .H...H...H...H..
      90:	d9 48 00 00 d9 48 00 00 d9 48 00 00 bb 02 00 00     .H...H...H......
      a0:	d9 48 00 00 01 52 00 00 d9 48 00 00 09 51 00 00     .H...R...H...Q..
      b0:	ed 45 00 00 cd 02 00 00 d3 02 00 00 d9 48 00 00     .E...........H..
      c0:	d9 48 00 00 d9 48 00 00 d9 48 00 00 d9 48 00 00     .H...H...H...H..
      d0:	d9 48 00 00 d1 5a 00 00 25 5b 00 00 7d 5b 00 00     .H...Z..%[..}[..
      e0:	d9 48 00 00 d9 48 00 00 d9 48 00 00 d9 48 00 00     .H...H...H...H..
      f0:	d9 48 00 00 d9 48 00 00 d9 48 00 00 d9 48 00 00     .H...H...H...H..
     100:	d9 48 00 00 d9 48 00 00 d9 48 00 00 d9 48 00 00     .H...H...H...H..
     110:	d9 48 00 00 d9 48 00 00 d9 48 00 00 d9 48 00 00     .H...H...H...H..
     120:	d9 48 00 00 d9 48 00 00 d9 48 00 00 d9 48 00 00     .H...H...H...H..

00000130 <startup>:
    (unsigned int *)  reset_mcu, // 59 DMA2CH4_5
};


 __attribute__((section(".text.startup"))) void startup()
{
     130:	b580      	push	{r7, lr}
     132:	b086      	sub	sp, #24
     134:	af00      	add	r7, sp, #0
    /* Set memory in bss segment to zeros */
    unsigned int * bss_start_p = &_BSS_START; 
     136:	4b19      	ldr	r3, [pc, #100]	; (19c <startup+0x6c>)
     138:	617b      	str	r3, [r7, #20]
    unsigned int * bss_end_p = &_BSS_END;
     13a:	4b19      	ldr	r3, [pc, #100]	; (1a0 <startup+0x70>)
     13c:	60bb      	str	r3, [r7, #8]

    while(bss_start_p < bss_end_p)
     13e:	e005      	b.n	14c <startup+0x1c>
    {
        *bss_start_p = 0;
     140:	697b      	ldr	r3, [r7, #20]
     142:	2200      	movs	r2, #0
     144:	601a      	str	r2, [r3, #0]
        bss_start_p++;
     146:	697b      	ldr	r3, [r7, #20]
     148:	3304      	adds	r3, #4
     14a:	617b      	str	r3, [r7, #20]
    while(bss_start_p < bss_end_p)
     14c:	697a      	ldr	r2, [r7, #20]
     14e:	68bb      	ldr	r3, [r7, #8]
     150:	429a      	cmp	r2, r3
     152:	d3f5      	bcc.n	140 <startup+0x10>
    }

    /* Copy memory in data segment from its position
     * in the flash image to its position in the
     * read/write memory */
    unsigned int * data_rom_start_p = &_DATA_ROM_START;
     154:	4b13      	ldr	r3, [pc, #76]	; (1a4 <startup+0x74>)
     156:	613b      	str	r3, [r7, #16]
    unsigned int * data_ram_start_p = &_DATA_RAM_START;
     158:	4b13      	ldr	r3, [pc, #76]	; (1a8 <startup+0x78>)
     15a:	60fb      	str	r3, [r7, #12]
    unsigned int * data_ram_end_p = &_DATA_RAM_END;
     15c:	4b13      	ldr	r3, [pc, #76]	; (1ac <startup+0x7c>)
     15e:	607b      	str	r3, [r7, #4]

    while(data_ram_start_p < data_ram_end_p)
     160:	e009      	b.n	176 <startup+0x46>
    {
        *data_ram_start_p = *data_rom_start_p;
     162:	693b      	ldr	r3, [r7, #16]
     164:	681a      	ldr	r2, [r3, #0]
     166:	68fb      	ldr	r3, [r7, #12]
     168:	601a      	str	r2, [r3, #0]
        data_ram_start_p++;
     16a:	68fb      	ldr	r3, [r7, #12]
     16c:	3304      	adds	r3, #4
     16e:	60fb      	str	r3, [r7, #12]
        data_rom_start_p++;
     170:	693b      	ldr	r3, [r7, #16]
     172:	3304      	adds	r3, #4
     174:	613b      	str	r3, [r7, #16]
    while(data_ram_start_p < data_ram_end_p)
     176:	68fa      	ldr	r2, [r7, #12]
     178:	687b      	ldr	r3, [r7, #4]
     17a:	429a      	cmp	r2, r3
     17c:	d3f1      	bcc.n	162 <startup+0x32>
//	here=(void*)&_TPA_START;
//	ffa=(uint16_t*)&_FLASH_FREE;
	// active les interruptions et les fault handler
	//SCB_CCR->fld_ccr.unalign_trp=1;
	//SCB_CCR->fld_ccr.div_0_trp=1;
	CCR->ccr|=1|(1<<3)|(1<<4);
     17e:	4a0c      	ldr	r2, [pc, #48]	; (1b0 <startup+0x80>)
     180:	4b0b      	ldr	r3, [pc, #44]	; (1b0 <startup+0x80>)
     182:	681b      	ldr	r3, [r3, #0]
     184:	f043 0319 	orr.w	r3, r3, #25
     188:	6013      	str	r3, [r2, #0]
    __enable_irq();
     18a:	b662      	cpsie	i
    __enable_fault_irq();
     18c:	b661      	cpsie	f
    "isb\n"
    :: [psp_top] "r" (PSP_TOP)
    );
*/    
    /* Now we are ready to start the main function */
    main();
     18e:	f003 fa0e 	bl	35ae <main>
}
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000250 	.word	0x20000250
     1a0:	20004eba 	.word	0x20004eba
     1a4:	0000bfdc 	.word	0x0000bfdc
     1a8:	20000000 	.word	0x20000000
     1ac:	20000250 	.word	0x20000250
     1b0:	e000ed14 	.word	0xe000ed14

000001b4 <HARD_FAULT_handler>:
_exception(HARD_FAULT_handler){
     1b4:	4668      	mov	r0, sp
     1b6:	f020 0107 	bic.w	r1, r0, #7
     1ba:	468d      	mov	sp, r1
     1bc:	b581      	push	{r0, r7, lr}
     1be:	b083      	sub	sp, #12
     1c0:	af00      	add	r7, sp, #0
		asm volatile (
     1c2:	f3ef 8009 	mrs	r0, PSP
     1c6:	6983      	ldr	r3, [r0, #24]
     1c8:	607b      	str	r3, [r7, #4]
	if ((CFSR->fsr.mmFault)&0x7f){
     1ca:	4b17      	ldr	r3, [pc, #92]	; (228 <HARD_FAULT_handler+0x74>)
     1cc:	681b      	ldr	r3, [r3, #0]
     1ce:	b2db      	uxtb	r3, r3
     1d0:	f003 037f 	and.w	r3, r3, #127	; 0x7f
     1d4:	2b00      	cmp	r3, #0
     1d6:	d004      	beq.n	1e2 <HARD_FAULT_handler+0x2e>
		print_fault("memory manager fault ",adr);
     1d8:	6879      	ldr	r1, [r7, #4]
     1da:	4814      	ldr	r0, [pc, #80]	; (22c <HARD_FAULT_handler+0x78>)
     1dc:	f004 fb84 	bl	48e8 <print_fault>
}
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
	}else if ((CFSR->fsr.busFault)&0xff){
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
		print_fault("bus fault ",adr);
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f004 fb78 	bl	48e8 <print_fault>
}
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
	}else if ((CFSR->fsr.usageFalt)&0xffff){
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
		print_fault("usage fault ",adr);
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f004 fb6c 	bl	48e8 <print_fault>
}
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
		print_fault("hard fault  ",adr);
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f004 fb67 	bl	48e8 <print_fault>
}
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00006380 	.word	0x00006380
     230:	00006398 	.word	0x00006398
     234:	000063a4 	.word	0x000063a4
     238:	000063b4 	.word	0x000063b4

0000023c <NMI_handler>:
_default_handler(NMI_handler) // 2
     23c:	f004 fb4c 	bl	48d8 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     242:	f004 fb49 	bl	48d8 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     248:	f004 fb46 	bl	48d8 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     24e:	f004 fb43 	bl	48d8 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
_default_handler(SVC_handler) // 11
     254:	f004 fb40 	bl	48d8 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     25a:	f004 fb3d 	bl	48d8 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
_default_handler(STK_handler) // 15
     260:	f004 fb3a 	bl	48d8 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     266:	f004 fb37 	bl	48d8 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
_default_handler(PVD_handler) // 1
     26c:	f004 fb34 	bl	48d8 <reset_mcu>
     270:	bf00      	nop
_default_handler(RTC_handler) // 2
     272:	f004 fb31 	bl	48d8 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     278:	f004 fb2e 	bl	48d8 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     27e:	f004 fb2b 	bl	48d8 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
_default_handler(RCC_handler) // 5
     284:	f004 fb28 	bl	48d8 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     28a:	f004 fb25 	bl	48d8 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     290:	f004 fb22 	bl	48d8 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     296:	f004 fb1f 	bl	48d8 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     29c:	f004 fb1c 	bl	48d8 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     2a2:	f004 fb19 	bl	48d8 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     2a8:	f004 fb16 	bl	48d8 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     2ae:	f004 fb13 	bl	48d8 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     2b4:	f004 fb10 	bl	48d8 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     2ba:	f004 fb0d 	bl	48d8 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     2c0:	f004 fb0a 	bl	48d8 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     2c6:	f004 fb07 	bl	48d8 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     2cc:	f004 fb04 	bl	48d8 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     2d2:	f004 fb01 	bl	48d8 <reset_mcu>
     2d6:	bf00      	nop
_default_handler(USART1_handler) // 37
     2d8:	f004 fafe 	bl	48d8 <reset_mcu>
     2dc:	bf00      	nop
_default_handler(USART2_handler) // 38
     2de:	f004 fafb 	bl	48d8 <reset_mcu>
     2e2:	bf00      	nop
_default_handler(USART3_handler) // 39
     2e4:	f004 faf8 	bl	48d8 <reset_mcu>
     2e8:	bf00      	nop
	...

000002ec <bkp_read_register>:

#include "../include/stm32f103c8.h"

// lecture d'un registre BKP->DR[]
// r->{0..9}
uint16_t bkp_read_register(int r){
     2ec:	b480      	push	{r7}
     2ee:	b083      	sub	sp, #12
     2f0:	af00      	add	r7, sp, #0
     2f2:	6078      	str	r0, [r7, #4]
	return BKP->DR[r%10];
     2f4:	480a      	ldr	r0, [pc, #40]	; (320 <bkp_read_register+0x34>)
     2f6:	6879      	ldr	r1, [r7, #4]
     2f8:	4b0a      	ldr	r3, [pc, #40]	; (324 <bkp_read_register+0x38>)
     2fa:	fb83 2301 	smull	r2, r3, r3, r1
     2fe:	109a      	asrs	r2, r3, #2
     300:	17cb      	asrs	r3, r1, #31
     302:	1ad2      	subs	r2, r2, r3
     304:	4613      	mov	r3, r2
     306:	009b      	lsls	r3, r3, #2
     308:	4413      	add	r3, r2
     30a:	005b      	lsls	r3, r3, #1
     30c:	1aca      	subs	r2, r1, r3
     30e:	0093      	lsls	r3, r2, #2
     310:	4403      	add	r3, r0
     312:	685b      	ldr	r3, [r3, #4]
     314:	b29b      	uxth	r3, r3
}
     316:	4618      	mov	r0, r3
     318:	370c      	adds	r7, #12
     31a:	46bd      	mov	sp, r7
     31c:	bc80      	pop	{r7}
     31e:	4770      	bx	lr
     320:	40006c00 	.word	0x40006c00
     324:	66666667 	.word	0x66666667

00000328 <bkp_write_register>:

// écriture d'un registre BKP->DR[]
// r->{0..9}
void bkp_write_register(int r, uint16_t value){
     328:	b480      	push	{r7}
     32a:	b083      	sub	sp, #12
     32c:	af00      	add	r7, sp, #0
     32e:	6078      	str	r0, [r7, #4]
     330:	460b      	mov	r3, r1
     332:	807b      	strh	r3, [r7, #2]
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
     334:	4a1d      	ldr	r2, [pc, #116]	; (3ac <bkp_write_register+0x84>)
     336:	4b1d      	ldr	r3, [pc, #116]	; (3ac <bkp_write_register+0x84>)
     338:	69db      	ldr	r3, [r3, #28]
     33a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
     33e:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
     340:	4a1b      	ldr	r2, [pc, #108]	; (3b0 <bkp_write_register+0x88>)
     342:	4b1b      	ldr	r3, [pc, #108]	; (3b0 <bkp_write_register+0x88>)
     344:	681b      	ldr	r3, [r3, #0]
     346:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     34a:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
     34c:	4a19      	ldr	r2, [pc, #100]	; (3b4 <bkp_write_register+0x8c>)
     34e:	4b19      	ldr	r3, [pc, #100]	; (3b4 <bkp_write_register+0x8c>)
     350:	685b      	ldr	r3, [r3, #4]
     352:	f043 0310 	orr.w	r3, r3, #16
     356:	6053      	str	r3, [r2, #4]
	BKP->DR[r%10]=value;
     358:	4817      	ldr	r0, [pc, #92]	; (3b8 <bkp_write_register+0x90>)
     35a:	6879      	ldr	r1, [r7, #4]
     35c:	4b17      	ldr	r3, [pc, #92]	; (3bc <bkp_write_register+0x94>)
     35e:	fb83 2301 	smull	r2, r3, r3, r1
     362:	109a      	asrs	r2, r3, #2
     364:	17cb      	asrs	r3, r1, #31
     366:	1ad2      	subs	r2, r2, r3
     368:	4613      	mov	r3, r2
     36a:	009b      	lsls	r3, r3, #2
     36c:	4413      	add	r3, r2
     36e:	005b      	lsls	r3, r3, #1
     370:	1aca      	subs	r2, r1, r3
     372:	8879      	ldrh	r1, [r7, #2]
     374:	0093      	lsls	r3, r2, #2
     376:	4403      	add	r3, r0
     378:	6059      	str	r1, [r3, #4]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
     37a:	4a0e      	ldr	r2, [pc, #56]	; (3b4 <bkp_write_register+0x8c>)
     37c:	4b0d      	ldr	r3, [pc, #52]	; (3b4 <bkp_write_register+0x8c>)
     37e:	685b      	ldr	r3, [r3, #4]
     380:	f023 0310 	bic.w	r3, r3, #16
     384:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
     386:	bf00      	nop
     388:	4b0a      	ldr	r3, [pc, #40]	; (3b4 <bkp_write_register+0x8c>)
     38a:	685b      	ldr	r3, [r3, #4]
     38c:	f003 0320 	and.w	r3, r3, #32
     390:	2b00      	cmp	r3, #0
     392:	d0f9      	beq.n	388 <bkp_write_register+0x60>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
     394:	4a06      	ldr	r2, [pc, #24]	; (3b0 <bkp_write_register+0x88>)
     396:	4b06      	ldr	r3, [pc, #24]	; (3b0 <bkp_write_register+0x88>)
     398:	681b      	ldr	r3, [r3, #0]
     39a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
     39e:	6013      	str	r3, [r2, #0]
}
     3a0:	bf00      	nop
     3a2:	370c      	adds	r7, #12
     3a4:	46bd      	mov	sp, r7
     3a6:	bc80      	pop	{r7}
     3a8:	4770      	bx	lr
     3aa:	bf00      	nop
     3ac:	40021000 	.word	0x40021000
     3b0:	40007000 	.word	0x40007000
     3b4:	40002800 	.word	0x40002800
     3b8:	40006c00 	.word	0x40006c00
     3bc:	66666667 	.word	0x66666667

000003c0 <print_vms>:
static uint8_t block[32];

uint8_t game_ram[GAME_SPACE];

// print virtual machine states
void print_vms(const char *msg,uint8_t error_code){
     3c0:	b580      	push	{r7, lr}
     3c2:	b084      	sub	sp, #16
     3c4:	af00      	add	r7, sp, #0
     3c6:	6078      	str	r0, [r7, #4]
     3c8:	460b      	mov	r3, r1
     3ca:	70fb      	strb	r3, [r7, #3]
	uint8_t orig_font;
	orig_font=get_font();
     3cc:	f004 fb04 	bl	49d8 <get_font>
     3d0:	4603      	mov	r3, r0
     3d2:	72fb      	strb	r3, [r7, #11]
	select_font(FONT_ASCII);
     3d4:	2002      	movs	r0, #2
     3d6:	f004 faef 	bl	49b8 <select_font>
	new_line();
     3da:	f004 fb07 	bl	49ec <new_line>
	print(msg);
     3de:	6878      	ldr	r0, [r7, #4]
     3e0:	f004 fc6a 	bl	4cb8 <print>
	switch(error_code){
     3e4:	78fb      	ldrb	r3, [r7, #3]
     3e6:	2b02      	cmp	r3, #2
     3e8:	d005      	beq.n	3f6 <print_vms+0x36>
     3ea:	2b03      	cmp	r3, #3
     3ec:	d107      	bne.n	3fe <print_vms+0x3e>
	case CHIP_BAD_ADDR:
		print("CHIP BAD ADDRESS\n");
     3ee:	4828      	ldr	r0, [pc, #160]	; (490 <print_vms+0xd0>)
     3f0:	f004 fc62 	bl	4cb8 <print>
		break;
     3f4:	e003      	b.n	3fe <print_vms+0x3e>
	case CHIP_BAD_OPCODE:
		print("CHIP BAD OPCODE\n");
     3f6:	4827      	ldr	r0, [pc, #156]	; (494 <print_vms+0xd4>)
     3f8:	f004 fc5e 	bl	4cb8 <print>
		break;
     3fc:	bf00      	nop
	}
	print("PC:");
     3fe:	4826      	ldr	r0, [pc, #152]	; (498 <print_vms+0xd8>)
     400:	f004 fc5a 	bl	4cb8 <print>
	print_hex(vms.pc-2);
     404:	4b25      	ldr	r3, [pc, #148]	; (49c <print_vms+0xdc>)
     406:	881b      	ldrh	r3, [r3, #0]
     408:	3b02      	subs	r3, #2
     40a:	2110      	movs	r1, #16
     40c:	4618      	mov	r0, r3
     40e:	f004 fc83 	bl	4d18 <print_int>
	print_hex((vms.b1<<8)+vms.b2);
     412:	4b22      	ldr	r3, [pc, #136]	; (49c <print_vms+0xdc>)
     414:	7e1b      	ldrb	r3, [r3, #24]
     416:	021b      	lsls	r3, r3, #8
     418:	4a20      	ldr	r2, [pc, #128]	; (49c <print_vms+0xdc>)
     41a:	7e52      	ldrb	r2, [r2, #25]
     41c:	4413      	add	r3, r2
     41e:	2110      	movs	r1, #16
     420:	4618      	mov	r0, r3
     422:	f004 fc79 	bl	4d18 <print_int>
	new_line();
     426:	f004 fae1 	bl	49ec <new_line>
	print("I:");
     42a:	481d      	ldr	r0, [pc, #116]	; (4a0 <print_vms+0xe0>)
     42c:	f004 fc44 	bl	4cb8 <print>
	print_hex(vms.ix);
     430:	4b1a      	ldr	r3, [pc, #104]	; (49c <print_vms+0xdc>)
     432:	885b      	ldrh	r3, [r3, #2]
     434:	2110      	movs	r1, #16
     436:	4618      	mov	r0, r3
     438:	f004 fc6e 	bl	4d18 <print_int>
	print(" SP:");
     43c:	4819      	ldr	r0, [pc, #100]	; (4a4 <print_vms+0xe4>)
     43e:	f004 fc3b 	bl	4cb8 <print>
	print_hex(vms.sp);
     442:	4b16      	ldr	r3, [pc, #88]	; (49c <print_vms+0xdc>)
     444:	791b      	ldrb	r3, [r3, #4]
     446:	2110      	movs	r1, #16
     448:	4618      	mov	r0, r3
     44a:	f004 fc65 	bl	4d18 <print_int>
	new_line();
     44e:	f004 facd 	bl	49ec <new_line>
	print("var[]:");
     452:	4815      	ldr	r0, [pc, #84]	; (4a8 <print_vms+0xe8>)
     454:	f004 fc30 	bl	4cb8 <print>
	for (int i=0;i<16;i++){
     458:	2300      	movs	r3, #0
     45a:	60fb      	str	r3, [r7, #12]
     45c:	e00b      	b.n	476 <print_vms+0xb6>
		print_hex(vms.var[i]);
     45e:	4a0f      	ldr	r2, [pc, #60]	; (49c <print_vms+0xdc>)
     460:	68fb      	ldr	r3, [r7, #12]
     462:	4413      	add	r3, r2
     464:	3306      	adds	r3, #6
     466:	781b      	ldrb	r3, [r3, #0]
     468:	2110      	movs	r1, #16
     46a:	4618      	mov	r0, r3
     46c:	f004 fc54 	bl	4d18 <print_int>
	for (int i=0;i<16;i++){
     470:	68fb      	ldr	r3, [r7, #12]
     472:	3301      	adds	r3, #1
     474:	60fb      	str	r3, [r7, #12]
     476:	68fb      	ldr	r3, [r7, #12]
     478:	2b0f      	cmp	r3, #15
     47a:	ddf0      	ble.n	45e <print_vms+0x9e>
	}
	new_line();
     47c:	f004 fab6 	bl	49ec <new_line>
	select_font(orig_font);
     480:	7afb      	ldrb	r3, [r7, #11]
     482:	4618      	mov	r0, r3
     484:	f004 fa98 	bl	49b8 <select_font>
}
     488:	bf00      	nop
     48a:	3710      	adds	r7, #16
     48c:	46bd      	mov	sp, r7
     48e:	bd80      	pop	{r7, pc}
     490:	00005bf8 	.word	0x00005bf8
     494:	00005c0c 	.word	0x00005c0c
     498:	00005c20 	.word	0x00005c20
     49c:	20000250 	.word	0x20000250
     4a0:	00005c24 	.word	0x00005c24
     4a4:	00005c28 	.word	0x00005c28
     4a8:	00005c30 	.word	0x00005c30

000004ac <srand>:

static uint32_t state=1;

void srand(unsigned n){
     4ac:	b480      	push	{r7}
     4ae:	b083      	sub	sp, #12
     4b0:	af00      	add	r7, sp, #0
     4b2:	6078      	str	r0, [r7, #4]
	state=n;
     4b4:	4a03      	ldr	r2, [pc, #12]	; (4c4 <srand+0x18>)
     4b6:	687b      	ldr	r3, [r7, #4]
     4b8:	6013      	str	r3, [r2, #0]
}
     4ba:	bf00      	nop
     4bc:	370c      	adds	r7, #12
     4be:	46bd      	mov	sp, r7
     4c0:	bc80      	pop	{r7}
     4c2:	4770      	bx	lr
     4c4:	20000000 	.word	0x20000000

000004c8 <rand>:

int rand(){
     4c8:	b480      	push	{r7}
     4ca:	b083      	sub	sp, #12
     4cc:	af00      	add	r7, sp, #0
	uint32_t x;
	x=state;
     4ce:	4b0e      	ldr	r3, [pc, #56]	; (508 <rand+0x40>)
     4d0:	681b      	ldr	r3, [r3, #0]
     4d2:	607b      	str	r3, [r7, #4]
	x^=x<<13;
     4d4:	687b      	ldr	r3, [r7, #4]
     4d6:	035b      	lsls	r3, r3, #13
     4d8:	687a      	ldr	r2, [r7, #4]
     4da:	4053      	eors	r3, r2
     4dc:	607b      	str	r3, [r7, #4]
	x^=x>>17;
     4de:	687b      	ldr	r3, [r7, #4]
     4e0:	0c5b      	lsrs	r3, r3, #17
     4e2:	687a      	ldr	r2, [r7, #4]
     4e4:	4053      	eors	r3, r2
     4e6:	607b      	str	r3, [r7, #4]
	x^=x<<5;
     4e8:	687b      	ldr	r3, [r7, #4]
     4ea:	015b      	lsls	r3, r3, #5
     4ec:	687a      	ldr	r2, [r7, #4]
     4ee:	4053      	eors	r3, r2
     4f0:	607b      	str	r3, [r7, #4]
	state=x;
     4f2:	4a05      	ldr	r2, [pc, #20]	; (508 <rand+0x40>)
     4f4:	687b      	ldr	r3, [r7, #4]
     4f6:	6013      	str	r3, [r2, #0]
	return x&0x7fffffff; 
     4f8:	687b      	ldr	r3, [r7, #4]
     4fa:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
}
     4fe:	4618      	mov	r0, r3
     500:	370c      	adds	r7, #12
     502:	46bd      	mov	sp, r7
     504:	bc80      	pop	{r7}
     506:	4770      	bx	lr
     508:	20000000 	.word	0x20000000

0000050c <chip_vm>:


//  SCHIP/BPCHIP  virtual machine
vm_exit_code_t chip_vm(uint16_t program_address, vm_debug_t dbg_level){
     50c:	b590      	push	{r4, r7, lr}
     50e:	b08f      	sub	sp, #60	; 0x3c
     510:	af02      	add	r7, sp, #8
     512:	4603      	mov	r3, r0
     514:	460a      	mov	r2, r1
     516:	80fb      	strh	r3, [r7, #6]
     518:	4613      	mov	r3, r2
     51a:	717b      	strb	r3, [r7, #5]
#define SLOW_DOWN 5
	uint8_t x,y,n,exit_code=CHIP_CONTINUE;
     51c:	2300      	movs	r3, #0
     51e:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
	char buffer[24];

	vms.pc=program_address;
     522:	4aba      	ldr	r2, [pc, #744]	; (80c <chip_vm+0x300>)
     524:	88fb      	ldrh	r3, [r7, #6]
     526:	8013      	strh	r3, [r2, #0]
	vms.sp=0;
     528:	4bb8      	ldr	r3, [pc, #736]	; (80c <chip_vm+0x300>)
     52a:	2200      	movs	r2, #0
     52c:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     52e:	4bb7      	ldr	r3, [pc, #732]	; (80c <chip_vm+0x300>)
     530:	2200      	movs	r2, #0
     532:	805a      	strh	r2, [r3, #2]
	vms.s=0;
     534:	4bb5      	ldr	r3, [pc, #724]	; (80c <chip_vm+0x300>)
     536:	2200      	movs	r2, #0
     538:	82da      	strh	r2, [r3, #22]
 	while (exit_code==CHIP_CONTINUE){
     53a:	f001 b836 	b.w	15aa <chip_vm+0x109e>
		if (vms.pc>=GAME_SPACE){
     53e:	4bb3      	ldr	r3, [pc, #716]	; (80c <chip_vm+0x300>)
     540:	881b      	ldrh	r3, [r3, #0]
     542:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
     546:	d304      	bcc.n	552 <chip_vm+0x46>
			exit_code=CHIP_BAD_ADDR;
     548:	2303      	movs	r3, #3
     54a:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
			break;
     54e:	f001 b831 	b.w	15b4 <chip_vm+0x10a8>
		} 
		if ((video_mode==VM_SCHIP) && !dbg_level)  micro_pause(SLOW_DOWN);
     552:	4baf      	ldr	r3, [pc, #700]	; (810 <chip_vm+0x304>)
     554:	781b      	ldrb	r3, [r3, #0]
     556:	2b01      	cmp	r3, #1
     558:	d105      	bne.n	566 <chip_vm+0x5a>
     55a:	797b      	ldrb	r3, [r7, #5]
     55c:	2b00      	cmp	r3, #0
     55e:	d102      	bne.n	566 <chip_vm+0x5a>
     560:	2005      	movs	r0, #5
     562:	f005 f809 	bl	5578 <micro_pause>
		_get_opcode(vms.pc);
     566:	4ba9      	ldr	r3, [pc, #676]	; (80c <chip_vm+0x300>)
     568:	881b      	ldrh	r3, [r3, #0]
     56a:	461a      	mov	r2, r3
     56c:	4ba9      	ldr	r3, [pc, #676]	; (814 <chip_vm+0x308>)
     56e:	5c9a      	ldrb	r2, [r3, r2]
     570:	4ba6      	ldr	r3, [pc, #664]	; (80c <chip_vm+0x300>)
     572:	761a      	strb	r2, [r3, #24]
     574:	4ba5      	ldr	r3, [pc, #660]	; (80c <chip_vm+0x300>)
     576:	881b      	ldrh	r3, [r3, #0]
     578:	3301      	adds	r3, #1
     57a:	4aa6      	ldr	r2, [pc, #664]	; (814 <chip_vm+0x308>)
     57c:	5cd2      	ldrb	r2, [r2, r3]
     57e:	4ba3      	ldr	r3, [pc, #652]	; (80c <chip_vm+0x300>)
     580:	765a      	strb	r2, [r3, #25]
		vms.pc+=2;
     582:	4ba2      	ldr	r3, [pc, #648]	; (80c <chip_vm+0x300>)
     584:	881b      	ldrh	r3, [r3, #0]
     586:	3302      	adds	r3, #2
     588:	b29a      	uxth	r2, r3
     58a:	4ba0      	ldr	r3, [pc, #640]	; (80c <chip_vm+0x300>)
     58c:	801a      	strh	r2, [r3, #0]
		switch(dbg_level){
     58e:	797b      	ldrb	r3, [r7, #5]
     590:	2b02      	cmp	r3, #2
     592:	d027      	beq.n	5e4 <chip_vm+0xd8>
     594:	2b03      	cmp	r3, #3
     596:	d030      	beq.n	5fa <chip_vm+0xee>
     598:	2b01      	cmp	r3, #1
     59a:	d13e      	bne.n	61a <chip_vm+0x10e>
		case DEBUG_PC_CODE: // print PC and OPCODE
			_debug_print(itoa(vms.pc-2,buffer,16));
     59c:	4b9b      	ldr	r3, [pc, #620]	; (80c <chip_vm+0x300>)
     59e:	881b      	ldrh	r3, [r3, #0]
     5a0:	3b02      	subs	r3, #2
     5a2:	f107 010c 	add.w	r1, r7, #12
     5a6:	2210      	movs	r2, #16
     5a8:	4618      	mov	r0, r3
     5aa:	f001 fea1 	bl	22f0 <itoa>
     5ae:	4603      	mov	r3, r0
     5b0:	4619      	mov	r1, r3
     5b2:	2000      	movs	r0, #0
     5b4:	f005 fa74 	bl	5aa0 <usart_print>
			_debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     5b8:	4b94      	ldr	r3, [pc, #592]	; (80c <chip_vm+0x300>)
     5ba:	7e1b      	ldrb	r3, [r3, #24]
     5bc:	021b      	lsls	r3, r3, #8
     5be:	4a93      	ldr	r2, [pc, #588]	; (80c <chip_vm+0x300>)
     5c0:	7e52      	ldrb	r2, [r2, #25]
     5c2:	4413      	add	r3, r2
     5c4:	f107 010c 	add.w	r1, r7, #12
     5c8:	2210      	movs	r2, #16
     5ca:	4618      	mov	r0, r3
     5cc:	f001 fe90 	bl	22f0 <itoa>
     5d0:	4603      	mov	r3, r0
     5d2:	4619      	mov	r1, r3
     5d4:	2000      	movs	r0, #0
     5d6:	f005 fa63 	bl	5aa0 <usart_print>
			_debug_print("\n");
     5da:	498f      	ldr	r1, [pc, #572]	; (818 <chip_vm+0x30c>)
     5dc:	2000      	movs	r0, #0
     5de:	f005 fa5f 	bl	5aa0 <usart_print>
			break;
     5e2:	e01a      	b.n	61a <chip_vm+0x10e>
		case DEBUG_VM_STATE: // print all vm states.
			select_console(SERIAL);
     5e4:	2001      	movs	r0, #1
     5e6:	f004 fccf 	bl	4f88 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     5ea:	2100      	movs	r1, #0
     5ec:	488b      	ldr	r0, [pc, #556]	; (81c <chip_vm+0x310>)
     5ee:	f7ff fee7 	bl	3c0 <print_vms>
			select_console(LOCAL);
     5f2:	2000      	movs	r0, #0
     5f4:	f004 fcc8 	bl	4f88 <select_console>
			break;
     5f8:	e00f      	b.n	61a <chip_vm+0x10e>
		case DEBUG_SSTEP:	// single step, print all vm_states and pause.
			select_console(SERIAL);
     5fa:	2001      	movs	r0, #1
     5fc:	f004 fcc4 	bl	4f88 <select_console>
			print_vms("actual vm state\n",CHIP_CONTINUE);
     600:	2100      	movs	r1, #0
     602:	4886      	ldr	r0, [pc, #536]	; (81c <chip_vm+0x310>)
     604:	f7ff fedc 	bl	3c0 <print_vms>
			print("vt100 keyboard to continue\n");
     608:	4885      	ldr	r0, [pc, #532]	; (820 <chip_vm+0x314>)
     60a:	f004 fb55 	bl	4cb8 <print>
			get_char();
     60e:	f004 fccb 	bl	4fa8 <get_char>
			select_console(LOCAL);
     612:	2000      	movs	r0, #0
     614:	f004 fcb8 	bl	4f88 <select_console>
			break;
     618:	bf00      	nop
		}//switch(dbg_level)
		x=rx(vms.b1);
     61a:	4b7c      	ldr	r3, [pc, #496]	; (80c <chip_vm+0x300>)
     61c:	7e1b      	ldrb	r3, [r3, #24]
     61e:	f003 030f 	and.w	r3, r3, #15
     622:	f887 302e 	strb.w	r3, [r7, #46]	; 0x2e
		y=ry(vms.b2);
     626:	4b79      	ldr	r3, [pc, #484]	; (80c <chip_vm+0x300>)
     628:	7e5b      	ldrb	r3, [r3, #25]
     62a:	091b      	lsrs	r3, r3, #4
     62c:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
	    switch (vms.b1>>4){
     630:	4b76      	ldr	r3, [pc, #472]	; (80c <chip_vm+0x300>)
     632:	7e1b      	ldrb	r3, [r3, #24]
     634:	091b      	lsrs	r3, r3, #4
     636:	b2db      	uxtb	r3, r3
     638:	2b0f      	cmp	r3, #15
     63a:	f200 87b6 	bhi.w	15aa <chip_vm+0x109e>
     63e:	a201      	add	r2, pc, #4	; (adr r2, 644 <chip_vm+0x138>)
     640:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     644:	00000685 	.word	0x00000685
     648:	000007d5 	.word	0x000007d5
     64c:	00000825 	.word	0x00000825
     650:	00000881 	.word	0x00000881
     654:	000008a5 	.word	0x000008a5
     658:	000008c9 	.word	0x000008c9
     65c:	00000989 	.word	0x00000989
     660:	0000099d 	.word	0x0000099d
     664:	000009e7 	.word	0x000009e7
     668:	00000c39 	.word	0x00000c39
     66c:	00000f31 	.word	0x00000f31
     670:	00000f6b 	.word	0x00000f6b
     674:	00000faf 	.word	0x00000faf
     678:	00000fd1 	.word	0x00000fd1
     67c:	000010e7 	.word	0x000010e7
     680:	00001149 	.word	0x00001149
		case 0:
		    if ((vms.b1|vms.b2)==0){
     684:	4b61      	ldr	r3, [pc, #388]	; (80c <chip_vm+0x300>)
     686:	7e1a      	ldrb	r2, [r3, #24]
     688:	4b60      	ldr	r3, [pc, #384]	; (80c <chip_vm+0x300>)
     68a:	7e5b      	ldrb	r3, [r3, #25]
     68c:	4313      	orrs	r3, r2
     68e:	b2db      	uxtb	r3, r3
     690:	2b00      	cmp	r3, #0
     692:	f000 878a 	beq.w	15aa <chip_vm+0x109e>
				//NOP 
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     696:	4b5d      	ldr	r3, [pc, #372]	; (80c <chip_vm+0x300>)
     698:	7e5b      	ldrb	r3, [r3, #25]
     69a:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     69e:	2bc0      	cmp	r3, #192	; 0xc0
     6a0:	d109      	bne.n	6b6 <chip_vm+0x1aa>
				gfx_scroll_down(vms.b2&0xf); 
     6a2:	4b5a      	ldr	r3, [pc, #360]	; (80c <chip_vm+0x300>)
     6a4:	7e5b      	ldrb	r3, [r3, #25]
     6a6:	f003 030f 	and.w	r3, r3, #15
     6aa:	b2db      	uxtb	r3, r3
     6ac:	4618      	mov	r0, r3
     6ae:	f002 f83f 	bl	2730 <gfx_scroll_down>
     6b2:	f000 bf7a 	b.w	15aa <chip_vm+0x109e>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; BP-CHIP
     6b6:	4b55      	ldr	r3, [pc, #340]	; (80c <chip_vm+0x300>)
     6b8:	7e5b      	ldrb	r3, [r3, #25]
     6ba:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     6be:	2bd0      	cmp	r3, #208	; 0xd0
     6c0:	d109      	bne.n	6d6 <chip_vm+0x1ca>
				gfx_scroll_up(vms.b2&0xf);					
     6c2:	4b52      	ldr	r3, [pc, #328]	; (80c <chip_vm+0x300>)
     6c4:	7e5b      	ldrb	r3, [r3, #25]
     6c6:	f003 030f 	and.w	r3, r3, #15
     6ca:	b2db      	uxtb	r3, r3
     6cc:	4618      	mov	r0, r3
     6ce:	f001 fff5 	bl	26bc <gfx_scroll_up>
     6d2:	f000 bf6a 	b.w	15aa <chip_vm+0x109e>
			}else switch(vms.b2){
     6d6:	4b4d      	ldr	r3, [pc, #308]	; (80c <chip_vm+0x300>)
     6d8:	7e5b      	ldrb	r3, [r3, #25]
     6da:	3be0      	subs	r3, #224	; 0xe0
     6dc:	2b1f      	cmp	r3, #31
     6de:	d871      	bhi.n	7c4 <chip_vm+0x2b8>
     6e0:	a201      	add	r2, pc, #4	; (adr r2, 6e8 <chip_vm+0x1dc>)
     6e2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     6e6:	bf00      	nop
     6e8:	00000769 	.word	0x00000769
     6ec:	000007c5 	.word	0x000007c5
     6f0:	000007c5 	.word	0x000007c5
     6f4:	000007c5 	.word	0x000007c5
     6f8:	000007c5 	.word	0x000007c5
     6fc:	000007c5 	.word	0x000007c5
     700:	000007c5 	.word	0x000007c5
     704:	000007c5 	.word	0x000007c5
     708:	000007c5 	.word	0x000007c5
     70c:	000007c5 	.word	0x000007c5
     710:	000007c5 	.word	0x000007c5
     714:	000007c5 	.word	0x000007c5
     718:	000007c5 	.word	0x000007c5
     71c:	000007c5 	.word	0x000007c5
     720:	0000076f 	.word	0x0000076f
     724:	000007c5 	.word	0x000007c5
     728:	000007c5 	.word	0x000007c5
     72c:	000007c5 	.word	0x000007c5
     730:	000007c5 	.word	0x000007c5
     734:	000007c5 	.word	0x000007c5
     738:	000007c5 	.word	0x000007c5
     73c:	000007c5 	.word	0x000007c5
     740:	000007c5 	.word	0x000007c5
     744:	000007c5 	.word	0x000007c5
     748:	000007c5 	.word	0x000007c5
     74c:	000007b3 	.word	0x000007b3
     750:	000007ab 	.word	0x000007ab
     754:	0000078b 	.word	0x0000078b
     758:	00000793 	.word	0x00000793
     75c:	0000079b 	.word	0x0000079b
     760:	000007cf 	.word	0x000007cf
     764:	000007a3 	.word	0x000007a3
				case 0xe0: // 00E0, CLS   clear screen  ; CHIP-8
					gfx_cls();
     768:	f001 ff52 	bl	2610 <gfx_cls>
					break;
     76c:	e030      	b.n	7d0 <chip_vm+0x2c4>
				case 0xee: // 00EE, RET   sub-routine exit ; CHIP-8
					vms.pc=vms.stack[vms.sp--];
     76e:	4b27      	ldr	r3, [pc, #156]	; (80c <chip_vm+0x300>)
     770:	791b      	ldrb	r3, [r3, #4]
     772:	1e5a      	subs	r2, r3, #1
     774:	b2d1      	uxtb	r1, r2
     776:	4a25      	ldr	r2, [pc, #148]	; (80c <chip_vm+0x300>)
     778:	7111      	strb	r1, [r2, #4]
     77a:	4a24      	ldr	r2, [pc, #144]	; (80c <chip_vm+0x300>)
     77c:	330c      	adds	r3, #12
     77e:	005b      	lsls	r3, r3, #1
     780:	4413      	add	r3, r2
     782:	885a      	ldrh	r2, [r3, #2]
     784:	4b21      	ldr	r3, [pc, #132]	; (80c <chip_vm+0x300>)
     786:	801a      	strh	r2, [r3, #0]
					break;
     788:	e022      	b.n	7d0 <chip_vm+0x2c4>
				case 0xfb: // 00FB, SCR   scroll screen right 4 pixels ; SCHIP
					gfx_scroll_right(4);
     78a:	2004      	movs	r0, #4
     78c:	f002 f85a 	bl	2844 <gfx_scroll_right>
					break;
     790:	e01e      	b.n	7d0 <chip_vm+0x2c4>
				case 0xfc: // 00FC, SCL   scroll screen left 4 pixels ; SCHIP
					gfx_scroll_left(4);
     792:	2004      	movs	r0, #4
     794:	f002 f814 	bl	27c0 <gfx_scroll_left>
					break;
     798:	e01a      	b.n	7d0 <chip_vm+0x2c4>
				case 0xfd:// 00FD, EXIT   exit interpreter and go back to BP_CHIPCON monitor; SCHIP
					exit_code=CHIP_EXIT_OK;
     79a:	2301      	movs	r3, #1
     79c:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
					break;
     7a0:	e016      	b.n	7d0 <chip_vm+0x2c4>
				case 0xfe: //00FE,  LOW   switch to CHIP-8 64x32 graphic mode ; SCHIP
					//set_video_mode(VM_CHIP8);
					break; 
				case 0xff:  //00FF, HIGH  switch to SCHIP 128x64 graphic mode ; SCHIP
					set_video_mode(VM_SCHIP);
     7a2:	2001      	movs	r0, #1
     7a4:	f004 fe50 	bl	5448 <set_video_mode>
					break; 
     7a8:	e012      	b.n	7d0 <chip_vm+0x2c4>
				case 0xfa: // 00FA BPRES  switch to BPCHIP 180x112 graphic mode; BPCHIP
					set_video_mode(VM_BPCHIP);
     7aa:	2000      	movs	r0, #0
     7ac:	f004 fe4c 	bl	5448 <set_video_mode>
					break;
     7b0:	e00e      	b.n	7d0 <chip_vm+0x2c4>
				case 0xf9: // 00F9 PALET load palette with color pointed by I
					set_palette((const uint8_t*)&game_ram[vms.ix]);
     7b2:	4b16      	ldr	r3, [pc, #88]	; (80c <chip_vm+0x300>)
     7b4:	885b      	ldrh	r3, [r3, #2]
     7b6:	461a      	mov	r2, r3
     7b8:	4b16      	ldr	r3, [pc, #88]	; (814 <chip_vm+0x308>)
     7ba:	4413      	add	r3, r2
     7bc:	4618      	mov	r0, r3
     7be:	f001 fe89 	bl	24d4 <set_palette>
					break;	
     7c2:	e005      	b.n	7d0 <chip_vm+0x2c4>
				default:
					exit_code=CHIP_BAD_OPCODE;
     7c4:	2302      	movs	r3, #2
     7c6:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
     7ca:	f000 beee 	b.w	15aa <chip_vm+0x109e>
					break; 
     7ce:	bf00      	nop
			}//switch(b2)
			break;
     7d0:	f000 beeb 	b.w	15aa <chip_vm+0x109e>
		case 0x1: // 1NNN JP label  ;saut vers 'label'  adresse=2*NNN
			vms.pc=caddr(vms.b1,vms.b2);
     7d4:	4b0d      	ldr	r3, [pc, #52]	; (80c <chip_vm+0x300>)
     7d6:	7e1b      	ldrb	r3, [r3, #24]
     7d8:	021b      	lsls	r3, r3, #8
     7da:	b21a      	sxth	r2, r3
     7dc:	4b0b      	ldr	r3, [pc, #44]	; (80c <chip_vm+0x300>)
     7de:	7e5b      	ldrb	r3, [r3, #25]
     7e0:	b21b      	sxth	r3, r3
     7e2:	4313      	orrs	r3, r2
     7e4:	b21b      	sxth	r3, r3
     7e6:	b29b      	uxth	r3, r3
     7e8:	f3c3 030b 	ubfx	r3, r3, #0, #12
     7ec:	b29a      	uxth	r2, r3
     7ee:	4b07      	ldr	r3, [pc, #28]	; (80c <chip_vm+0x300>)
     7f0:	801a      	strh	r2, [r3, #0]
			if (video_mode==VM_BPCHIP){
     7f2:	4b07      	ldr	r3, [pc, #28]	; (810 <chip_vm+0x304>)
     7f4:	781b      	ldrb	r3, [r3, #0]
     7f6:	2b00      	cmp	r3, #0
     7f8:	f040 86d7 	bne.w	15aa <chip_vm+0x109e>
				vms.pc<<=1;
     7fc:	4b03      	ldr	r3, [pc, #12]	; (80c <chip_vm+0x300>)
     7fe:	881b      	ldrh	r3, [r3, #0]
     800:	005b      	lsls	r3, r3, #1
     802:	b29a      	uxth	r2, r3
     804:	4b01      	ldr	r3, [pc, #4]	; (80c <chip_vm+0x300>)
     806:	801a      	strh	r2, [r3, #0]
			}
			break;
     808:	f000 becf 	b.w	15aa <chip_vm+0x109e>
     80c:	20000250 	.word	0x20000250
     810:	200006e4 	.word	0x200006e4
     814:	20000720 	.word	0x20000720
     818:	00005c38 	.word	0x00005c38
     81c:	00005c3c 	.word	0x00005c3c
     820:	00005c50 	.word	0x00005c50
		case 0x2: // 2NNN  CALL label  ; appelle la sous-routine 'label' adresse=2*NNN
			vms.stack[++vms.sp]=vms.pc;
     824:	4ba7      	ldr	r3, [pc, #668]	; (ac4 <chip_vm+0x5b8>)
     826:	791b      	ldrb	r3, [r3, #4]
     828:	3301      	adds	r3, #1
     82a:	b2da      	uxtb	r2, r3
     82c:	4ba5      	ldr	r3, [pc, #660]	; (ac4 <chip_vm+0x5b8>)
     82e:	711a      	strb	r2, [r3, #4]
     830:	4ba4      	ldr	r3, [pc, #656]	; (ac4 <chip_vm+0x5b8>)
     832:	791b      	ldrb	r3, [r3, #4]
     834:	4618      	mov	r0, r3
     836:	4ba3      	ldr	r3, [pc, #652]	; (ac4 <chip_vm+0x5b8>)
     838:	8819      	ldrh	r1, [r3, #0]
     83a:	4aa2      	ldr	r2, [pc, #648]	; (ac4 <chip_vm+0x5b8>)
     83c:	f100 030c 	add.w	r3, r0, #12
     840:	005b      	lsls	r3, r3, #1
     842:	4413      	add	r3, r2
     844:	460a      	mov	r2, r1
     846:	805a      	strh	r2, [r3, #2]
			vms.pc=caddr(vms.b1,vms.b2);
     848:	4b9e      	ldr	r3, [pc, #632]	; (ac4 <chip_vm+0x5b8>)
     84a:	7e1b      	ldrb	r3, [r3, #24]
     84c:	021b      	lsls	r3, r3, #8
     84e:	b21a      	sxth	r2, r3
     850:	4b9c      	ldr	r3, [pc, #624]	; (ac4 <chip_vm+0x5b8>)
     852:	7e5b      	ldrb	r3, [r3, #25]
     854:	b21b      	sxth	r3, r3
     856:	4313      	orrs	r3, r2
     858:	b21b      	sxth	r3, r3
     85a:	b29b      	uxth	r3, r3
     85c:	f3c3 030b 	ubfx	r3, r3, #0, #12
     860:	b29a      	uxth	r2, r3
     862:	4b98      	ldr	r3, [pc, #608]	; (ac4 <chip_vm+0x5b8>)
     864:	801a      	strh	r2, [r3, #0]
			if (video_mode==VM_BPCHIP){
     866:	4b98      	ldr	r3, [pc, #608]	; (ac8 <chip_vm+0x5bc>)
     868:	781b      	ldrb	r3, [r3, #0]
     86a:	2b00      	cmp	r3, #0
     86c:	f040 869d 	bne.w	15aa <chip_vm+0x109e>
				vms.pc<<=1;
     870:	4b94      	ldr	r3, [pc, #592]	; (ac4 <chip_vm+0x5b8>)
     872:	881b      	ldrh	r3, [r3, #0]
     874:	005b      	lsls	r3, r3, #1
     876:	b29a      	uxth	r2, r3
     878:	4b92      	ldr	r3, [pc, #584]	; (ac4 <chip_vm+0x5b8>)
     87a:	801a      	strh	r2, [r3, #0]
			}
			break;
     87c:	f000 be95 	b.w	15aa <chip_vm+0x109e>
		case 0x3: // 3XKK   SE VX, KK  ;saute l'instruction suivante si VX == KK
			if (vms.var[x]==vms.b2) vms.pc+=2;
     880:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     884:	4a8f      	ldr	r2, [pc, #572]	; (ac4 <chip_vm+0x5b8>)
     886:	4413      	add	r3, r2
     888:	799a      	ldrb	r2, [r3, #6]
     88a:	4b8e      	ldr	r3, [pc, #568]	; (ac4 <chip_vm+0x5b8>)
     88c:	7e5b      	ldrb	r3, [r3, #25]
     88e:	429a      	cmp	r2, r3
     890:	f040 868b 	bne.w	15aa <chip_vm+0x109e>
     894:	4b8b      	ldr	r3, [pc, #556]	; (ac4 <chip_vm+0x5b8>)
     896:	881b      	ldrh	r3, [r3, #0]
     898:	3302      	adds	r3, #2
     89a:	b29a      	uxth	r2, r3
     89c:	4b89      	ldr	r3, [pc, #548]	; (ac4 <chip_vm+0x5b8>)
     89e:	801a      	strh	r2, [r3, #0]
			break;
     8a0:	f000 be83 	b.w	15aa <chip_vm+0x109e>
		case 0x4: // 4XKK  SNE VX,VY  ;Saute l'instruction suivante si VX <> KK
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     8a4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     8a8:	4a86      	ldr	r2, [pc, #536]	; (ac4 <chip_vm+0x5b8>)
     8aa:	4413      	add	r3, r2
     8ac:	799a      	ldrb	r2, [r3, #6]
     8ae:	4b85      	ldr	r3, [pc, #532]	; (ac4 <chip_vm+0x5b8>)
     8b0:	7e5b      	ldrb	r3, [r3, #25]
     8b2:	429a      	cmp	r2, r3
     8b4:	f000 8679 	beq.w	15aa <chip_vm+0x109e>
     8b8:	4b82      	ldr	r3, [pc, #520]	; (ac4 <chip_vm+0x5b8>)
     8ba:	881b      	ldrh	r3, [r3, #0]
     8bc:	3302      	adds	r3, #2
     8be:	b29a      	uxth	r2, r3
     8c0:	4b80      	ldr	r3, [pc, #512]	; (ac4 <chip_vm+0x5b8>)
     8c2:	801a      	strh	r2, [r3, #0]
			break;
     8c4:	f000 be71 	b.w	15aa <chip_vm+0x109e>
		case 0x5:
			switch(vms.b2&0xf){
     8c8:	4b7e      	ldr	r3, [pc, #504]	; (ac4 <chip_vm+0x5b8>)
     8ca:	7e5b      	ldrb	r3, [r3, #25]
     8cc:	f003 030f 	and.w	r3, r3, #15
     8d0:	2b02      	cmp	r3, #2
     8d2:	d016      	beq.n	902 <chip_vm+0x3f6>
     8d4:	2b03      	cmp	r3, #3
     8d6:	d034      	beq.n	942 <chip_vm+0x436>
     8d8:	2b00      	cmp	r3, #0
     8da:	d153      	bne.n	984 <chip_vm+0x478>
			case 0:  // 5XY0  SE VX,VY   ;Saute l'instruction suivante si VX == VY ; CHIP-8
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     8dc:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     8e0:	4a78      	ldr	r2, [pc, #480]	; (ac4 <chip_vm+0x5b8>)
     8e2:	4413      	add	r3, r2
     8e4:	799a      	ldrb	r2, [r3, #6]
     8e6:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     8ea:	4976      	ldr	r1, [pc, #472]	; (ac4 <chip_vm+0x5b8>)
     8ec:	440b      	add	r3, r1
     8ee:	799b      	ldrb	r3, [r3, #6]
     8f0:	429a      	cmp	r2, r3
     8f2:	d146      	bne.n	982 <chip_vm+0x476>
     8f4:	4b73      	ldr	r3, [pc, #460]	; (ac4 <chip_vm+0x5b8>)
     8f6:	881b      	ldrh	r3, [r3, #0]
     8f8:	3302      	adds	r3, #2
     8fa:	b29a      	uxth	r2, r3
     8fc:	4b71      	ldr	r3, [pc, #452]	; (ac4 <chip_vm+0x5b8>)
     8fe:	801a      	strh	r2, [r3, #0]
				break;
     900:	e03f      	b.n	982 <chip_vm+0x476>
			case 2:  // 5XY2  save VX..VY at address pointed by I, I not incremented  ; BP-CHIP
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     902:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     906:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     90a:	429a      	cmp	r2, r3
     90c:	d202      	bcs.n	914 <chip_vm+0x408>
     90e:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     912:	e001      	b.n	918 <chip_vm+0x40c>
     914:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     918:	4a6a      	ldr	r2, [pc, #424]	; (ac4 <chip_vm+0x5b8>)
     91a:	4413      	add	r3, r2
     91c:	1d98      	adds	r0, r3, #6
     91e:	4b69      	ldr	r3, [pc, #420]	; (ac4 <chip_vm+0x5b8>)
     920:	885b      	ldrh	r3, [r3, #2]
     922:	461a      	mov	r2, r3
     924:	4b69      	ldr	r3, [pc, #420]	; (acc <chip_vm+0x5c0>)
     926:	18d1      	adds	r1, r2, r3
     928:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     92c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     930:	1ad3      	subs	r3, r2, r3
     932:	2b00      	cmp	r3, #0
     934:	bfb8      	it	lt
     936:	425b      	neglt	r3, r3
     938:	3301      	adds	r3, #1
     93a:	461a      	mov	r2, r3
     93c:	f001 fbeb 	bl	2116 <move>
				break;
     940:	e020      	b.n	984 <chip_vm+0x478>
			case 3: // 5XY3   load VX..VY from adress pointed by I, I not incremented ; BP-CHIP
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     942:	4b60      	ldr	r3, [pc, #384]	; (ac4 <chip_vm+0x5b8>)
     944:	885b      	ldrh	r3, [r3, #2]
     946:	461a      	mov	r2, r3
     948:	4b60      	ldr	r3, [pc, #384]	; (acc <chip_vm+0x5c0>)
     94a:	18d0      	adds	r0, r2, r3
     94c:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     950:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     954:	429a      	cmp	r2, r3
     956:	d202      	bcs.n	95e <chip_vm+0x452>
     958:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     95c:	e001      	b.n	962 <chip_vm+0x456>
     95e:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     962:	4a58      	ldr	r2, [pc, #352]	; (ac4 <chip_vm+0x5b8>)
     964:	4413      	add	r3, r2
     966:	1d99      	adds	r1, r3, #6
     968:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     96c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     970:	1ad3      	subs	r3, r2, r3
     972:	2b00      	cmp	r3, #0
     974:	bfb8      	it	lt
     976:	425b      	neglt	r3, r3
     978:	3301      	adds	r3, #1
     97a:	461a      	mov	r2, r3
     97c:	f001 fbcb 	bl	2116 <move>
				break;
     980:	e000      	b.n	984 <chip_vm+0x478>
				break;
     982:	bf00      	nop
			}
			break;
     984:	f000 be11 	b.w	15aa <chip_vm+0x109e>
		case 0x6: // 6XKK   LD VX,KK  ; VX := KK
			vms.var[x]=vms.b2;
     988:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     98c:	4a4d      	ldr	r2, [pc, #308]	; (ac4 <chip_vm+0x5b8>)
     98e:	7e51      	ldrb	r1, [r2, #25]
     990:	4a4c      	ldr	r2, [pc, #304]	; (ac4 <chip_vm+0x5b8>)
     992:	4413      	add	r3, r2
     994:	460a      	mov	r2, r1
     996:	719a      	strb	r2, [r3, #6]
			break;
     998:	f000 be07 	b.w	15aa <chip_vm+0x109e>
		case 0x7: // 7XKK   ADD VX,KK  ; VX := VX + KK
		    n=(vms.var[x]+vms.b2)>255;
     99c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     9a0:	4a48      	ldr	r2, [pc, #288]	; (ac4 <chip_vm+0x5b8>)
     9a2:	4413      	add	r3, r2
     9a4:	799b      	ldrb	r3, [r3, #6]
     9a6:	461a      	mov	r2, r3
     9a8:	4b46      	ldr	r3, [pc, #280]	; (ac4 <chip_vm+0x5b8>)
     9aa:	7e5b      	ldrb	r3, [r3, #25]
     9ac:	4413      	add	r3, r2
     9ae:	2bff      	cmp	r3, #255	; 0xff
     9b0:	bfcc      	ite	gt
     9b2:	2301      	movgt	r3, #1
     9b4:	2300      	movle	r3, #0
     9b6:	b2db      	uxtb	r3, r3
     9b8:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
			vms.var[x]+=vms.b2;
     9bc:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     9c0:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     9c4:	493f      	ldr	r1, [pc, #252]	; (ac4 <chip_vm+0x5b8>)
     9c6:	440a      	add	r2, r1
     9c8:	7991      	ldrb	r1, [r2, #6]
     9ca:	4a3e      	ldr	r2, [pc, #248]	; (ac4 <chip_vm+0x5b8>)
     9cc:	7e52      	ldrb	r2, [r2, #25]
     9ce:	440a      	add	r2, r1
     9d0:	b2d1      	uxtb	r1, r2
     9d2:	4a3c      	ldr	r2, [pc, #240]	; (ac4 <chip_vm+0x5b8>)
     9d4:	4413      	add	r3, r2
     9d6:	460a      	mov	r2, r1
     9d8:	719a      	strb	r2, [r3, #6]
			vms.var[15]=n;
     9da:	4a3a      	ldr	r2, [pc, #232]	; (ac4 <chip_vm+0x5b8>)
     9dc:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
     9e0:	7553      	strb	r3, [r2, #21]
			break;
     9e2:	f000 bde2 	b.w	15aa <chip_vm+0x109e>
		case 0x8: 
			switch(vms.b2&0xf){
     9e6:	4b37      	ldr	r3, [pc, #220]	; (ac4 <chip_vm+0x5b8>)
     9e8:	7e5b      	ldrb	r3, [r3, #25]
     9ea:	f003 030f 	and.w	r3, r3, #15
     9ee:	2b0e      	cmp	r3, #14
     9f0:	f200 811d 	bhi.w	c2e <chip_vm+0x722>
     9f4:	a201      	add	r2, pc, #4	; (adr r2, 9fc <chip_vm+0x4f0>)
     9f6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     9fa:	bf00      	nop
     9fc:	00000a39 	.word	0x00000a39
     a00:	00000a51 	.word	0x00000a51
     a04:	00000a77 	.word	0x00000a77
     a08:	00000a9d 	.word	0x00000a9d
     a0c:	00000ad1 	.word	0x00000ad1
     a10:	00000b25 	.word	0x00000b25
     a14:	00000b75 	.word	0x00000b75
     a18:	00000bab 	.word	0x00000bab
     a1c:	00000c2f 	.word	0x00000c2f
     a20:	00000c2f 	.word	0x00000c2f
     a24:	00000c2f 	.word	0x00000c2f
     a28:	00000c2f 	.word	0x00000c2f
     a2c:	00000c2f 	.word	0x00000c2f
     a30:	00000c2f 	.word	0x00000c2f
     a34:	00000bfb 	.word	0x00000bfb
			case 0: // 8XY0   LD VX, VY  ; VX := VY
				vms.var[x]=vms.var[y];
     a38:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     a3c:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     a40:	4920      	ldr	r1, [pc, #128]	; (ac4 <chip_vm+0x5b8>)
     a42:	440a      	add	r2, r1
     a44:	7991      	ldrb	r1, [r2, #6]
     a46:	4a1f      	ldr	r2, [pc, #124]	; (ac4 <chip_vm+0x5b8>)
     a48:	4413      	add	r3, r2
     a4a:	460a      	mov	r2, r1
     a4c:	719a      	strb	r2, [r3, #6]
				break;
     a4e:	e0f1      	b.n	c34 <chip_vm+0x728>
			case 1: // 8XY1  OR VX, VY  ; VX := VX OR VY
				vms.var[x]|=vms.var[y];
     a50:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     a54:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     a58:	491a      	ldr	r1, [pc, #104]	; (ac4 <chip_vm+0x5b8>)
     a5a:	440a      	add	r2, r1
     a5c:	7991      	ldrb	r1, [r2, #6]
     a5e:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     a62:	4818      	ldr	r0, [pc, #96]	; (ac4 <chip_vm+0x5b8>)
     a64:	4402      	add	r2, r0
     a66:	7992      	ldrb	r2, [r2, #6]
     a68:	430a      	orrs	r2, r1
     a6a:	b2d1      	uxtb	r1, r2
     a6c:	4a15      	ldr	r2, [pc, #84]	; (ac4 <chip_vm+0x5b8>)
     a6e:	4413      	add	r3, r2
     a70:	460a      	mov	r2, r1
     a72:	719a      	strb	r2, [r3, #6]
				break;
     a74:	e0de      	b.n	c34 <chip_vm+0x728>
			case 0x2: // 8XY2  AND VX,VY  ; VX := VX AND VY
				vms.var[x]&=vms.var[y];
     a76:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     a7a:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     a7e:	4911      	ldr	r1, [pc, #68]	; (ac4 <chip_vm+0x5b8>)
     a80:	440a      	add	r2, r1
     a82:	7991      	ldrb	r1, [r2, #6]
     a84:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     a88:	480e      	ldr	r0, [pc, #56]	; (ac4 <chip_vm+0x5b8>)
     a8a:	4402      	add	r2, r0
     a8c:	7992      	ldrb	r2, [r2, #6]
     a8e:	400a      	ands	r2, r1
     a90:	b2d1      	uxtb	r1, r2
     a92:	4a0c      	ldr	r2, [pc, #48]	; (ac4 <chip_vm+0x5b8>)
     a94:	4413      	add	r3, r2
     a96:	460a      	mov	r2, r1
     a98:	719a      	strb	r2, [r3, #6]
				break;
     a9a:	e0cb      	b.n	c34 <chip_vm+0x728>
			case 0x3: // 8XY3  XOR VX,VY  ; VX := VX XOR VY
				vms.var[x]^=vms.var[y];
     a9c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     aa0:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     aa4:	4907      	ldr	r1, [pc, #28]	; (ac4 <chip_vm+0x5b8>)
     aa6:	440a      	add	r2, r1
     aa8:	7991      	ldrb	r1, [r2, #6]
     aaa:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     aae:	4805      	ldr	r0, [pc, #20]	; (ac4 <chip_vm+0x5b8>)
     ab0:	4402      	add	r2, r0
     ab2:	7992      	ldrb	r2, [r2, #6]
     ab4:	404a      	eors	r2, r1
     ab6:	b2d1      	uxtb	r1, r2
     ab8:	4a02      	ldr	r2, [pc, #8]	; (ac4 <chip_vm+0x5b8>)
     aba:	4413      	add	r3, r2
     abc:	460a      	mov	r2, r1
     abe:	719a      	strb	r2, [r3, #6]
				break;
     ac0:	e0b8      	b.n	c34 <chip_vm+0x728>
     ac2:	bf00      	nop
     ac4:	20000250 	.word	0x20000250
     ac8:	200006e4 	.word	0x200006e4
     acc:	20000720 	.word	0x20000720
			case 0x4: // 8XY4  ADD VX,VY  ; VX := VX + VY, VF := carry
				n=(vms.var[x]+vms.var[y])>255;
     ad0:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     ad4:	4ab6      	ldr	r2, [pc, #728]	; (db0 <chip_vm+0x8a4>)
     ad6:	4413      	add	r3, r2
     ad8:	799b      	ldrb	r3, [r3, #6]
     ada:	4619      	mov	r1, r3
     adc:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     ae0:	4ab3      	ldr	r2, [pc, #716]	; (db0 <chip_vm+0x8a4>)
     ae2:	4413      	add	r3, r2
     ae4:	799b      	ldrb	r3, [r3, #6]
     ae6:	440b      	add	r3, r1
     ae8:	2bff      	cmp	r3, #255	; 0xff
     aea:	bfcc      	ite	gt
     aec:	2301      	movgt	r3, #1
     aee:	2300      	movle	r3, #0
     af0:	b2db      	uxtb	r3, r3
     af2:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
				vms.var[x]+=vms.var[y];
     af6:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     afa:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     afe:	49ac      	ldr	r1, [pc, #688]	; (db0 <chip_vm+0x8a4>)
     b00:	440a      	add	r2, r1
     b02:	7991      	ldrb	r1, [r2, #6]
     b04:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     b08:	48a9      	ldr	r0, [pc, #676]	; (db0 <chip_vm+0x8a4>)
     b0a:	4402      	add	r2, r0
     b0c:	7992      	ldrb	r2, [r2, #6]
     b0e:	440a      	add	r2, r1
     b10:	b2d1      	uxtb	r1, r2
     b12:	4aa7      	ldr	r2, [pc, #668]	; (db0 <chip_vm+0x8a4>)
     b14:	4413      	add	r3, r2
     b16:	460a      	mov	r2, r1
     b18:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     b1a:	4aa5      	ldr	r2, [pc, #660]	; (db0 <chip_vm+0x8a4>)
     b1c:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
     b20:	7553      	strb	r3, [r2, #21]
				break;
     b22:	e087      	b.n	c34 <chip_vm+0x728>
			case 0x5: // 8XY5  SUB VX,VY  ; VX := VX - VY, VF := not borrow
				n=vms.var[x]>=vms.var[y];
     b24:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     b28:	4aa1      	ldr	r2, [pc, #644]	; (db0 <chip_vm+0x8a4>)
     b2a:	4413      	add	r3, r2
     b2c:	799a      	ldrb	r2, [r3, #6]
     b2e:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     b32:	499f      	ldr	r1, [pc, #636]	; (db0 <chip_vm+0x8a4>)
     b34:	440b      	add	r3, r1
     b36:	799b      	ldrb	r3, [r3, #6]
     b38:	429a      	cmp	r2, r3
     b3a:	bf2c      	ite	cs
     b3c:	2301      	movcs	r3, #1
     b3e:	2300      	movcc	r3, #0
     b40:	b2db      	uxtb	r3, r3
     b42:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
				vms.var[x]-=vms.var[y];
     b46:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     b4a:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     b4e:	4998      	ldr	r1, [pc, #608]	; (db0 <chip_vm+0x8a4>)
     b50:	440a      	add	r2, r1
     b52:	7991      	ldrb	r1, [r2, #6]
     b54:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     b58:	4895      	ldr	r0, [pc, #596]	; (db0 <chip_vm+0x8a4>)
     b5a:	4402      	add	r2, r0
     b5c:	7992      	ldrb	r2, [r2, #6]
     b5e:	1a8a      	subs	r2, r1, r2
     b60:	b2d1      	uxtb	r1, r2
     b62:	4a93      	ldr	r2, [pc, #588]	; (db0 <chip_vm+0x8a4>)
     b64:	4413      	add	r3, r2
     b66:	460a      	mov	r2, r1
     b68:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     b6a:	4a91      	ldr	r2, [pc, #580]	; (db0 <chip_vm+0x8a4>)
     b6c:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
     b70:	7553      	strb	r3, [r2, #21]
				break;
     b72:	e05f      	b.n	c34 <chip_vm+0x728>
			case 0x6: // 8XY6  SHR VX  ; VX := VX shr 1, VF := carry
				n=(vms.var[x]&1u);
     b74:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     b78:	4a8d      	ldr	r2, [pc, #564]	; (db0 <chip_vm+0x8a4>)
     b7a:	4413      	add	r3, r2
     b7c:	799b      	ldrb	r3, [r3, #6]
     b7e:	f003 0301 	and.w	r3, r3, #1
     b82:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
				vms.var[x]>>=1;
     b86:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     b8a:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     b8e:	4988      	ldr	r1, [pc, #544]	; (db0 <chip_vm+0x8a4>)
     b90:	440a      	add	r2, r1
     b92:	7992      	ldrb	r2, [r2, #6]
     b94:	0852      	lsrs	r2, r2, #1
     b96:	b2d1      	uxtb	r1, r2
     b98:	4a85      	ldr	r2, [pc, #532]	; (db0 <chip_vm+0x8a4>)
     b9a:	4413      	add	r3, r2
     b9c:	460a      	mov	r2, r1
     b9e:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     ba0:	4a83      	ldr	r2, [pc, #524]	; (db0 <chip_vm+0x8a4>)
     ba2:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
     ba6:	7553      	strb	r3, [r2, #21]
				break;
     ba8:	e044      	b.n	c34 <chip_vm+0x728>
			case 0x7: // 8XY7  SUBN VX,VY  ; VX := VY - VX, VF := not borrow
				n=vms.var[y]>=vms.var[x];
     baa:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     bae:	4a80      	ldr	r2, [pc, #512]	; (db0 <chip_vm+0x8a4>)
     bb0:	4413      	add	r3, r2
     bb2:	799a      	ldrb	r2, [r3, #6]
     bb4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     bb8:	497d      	ldr	r1, [pc, #500]	; (db0 <chip_vm+0x8a4>)
     bba:	440b      	add	r3, r1
     bbc:	799b      	ldrb	r3, [r3, #6]
     bbe:	429a      	cmp	r2, r3
     bc0:	bf2c      	ite	cs
     bc2:	2301      	movcs	r3, #1
     bc4:	2300      	movcc	r3, #0
     bc6:	b2db      	uxtb	r3, r3
     bc8:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
				vms.var[x]=vms.var[y]-vms.var[x];
     bcc:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     bd0:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     bd4:	4976      	ldr	r1, [pc, #472]	; (db0 <chip_vm+0x8a4>)
     bd6:	440a      	add	r2, r1
     bd8:	7991      	ldrb	r1, [r2, #6]
     bda:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     bde:	4874      	ldr	r0, [pc, #464]	; (db0 <chip_vm+0x8a4>)
     be0:	4402      	add	r2, r0
     be2:	7992      	ldrb	r2, [r2, #6]
     be4:	1a8a      	subs	r2, r1, r2
     be6:	b2d1      	uxtb	r1, r2
     be8:	4a71      	ldr	r2, [pc, #452]	; (db0 <chip_vm+0x8a4>)
     bea:	4413      	add	r3, r2
     bec:	460a      	mov	r2, r1
     bee:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     bf0:	4a6f      	ldr	r2, [pc, #444]	; (db0 <chip_vm+0x8a4>)
     bf2:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
     bf6:	7553      	strb	r3, [r2, #21]
				break;
     bf8:	e01c      	b.n	c34 <chip_vm+0x728>
			case 0xe: // 8XYE  SHL VX  ; VX := VX shl 1, VF := carry
				n=(vms.var[x]&128)>>7;
     bfa:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     bfe:	4a6c      	ldr	r2, [pc, #432]	; (db0 <chip_vm+0x8a4>)
     c00:	4413      	add	r3, r2
     c02:	799b      	ldrb	r3, [r3, #6]
     c04:	09db      	lsrs	r3, r3, #7
     c06:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
				vms.var[x]<<=1;
     c0a:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     c0e:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     c12:	4967      	ldr	r1, [pc, #412]	; (db0 <chip_vm+0x8a4>)
     c14:	440a      	add	r2, r1
     c16:	7992      	ldrb	r2, [r2, #6]
     c18:	0052      	lsls	r2, r2, #1
     c1a:	b2d1      	uxtb	r1, r2
     c1c:	4a64      	ldr	r2, [pc, #400]	; (db0 <chip_vm+0x8a4>)
     c1e:	4413      	add	r3, r2
     c20:	460a      	mov	r2, r1
     c22:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     c24:	4a62      	ldr	r2, [pc, #392]	; (db0 <chip_vm+0x8a4>)
     c26:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
     c2a:	7553      	strb	r3, [r2, #21]
				break;
     c2c:	e002      	b.n	c34 <chip_vm+0x728>
			default:
				exit_code=CHIP_BAD_OPCODE;
     c2e:	2302      	movs	r3, #2
     c30:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
			}//switch(vms.b2&0xf)
			break;
     c34:	f000 bcb9 	b.w	15aa <chip_vm+0x109e>
		case 0x9:
			switch (vms.b2&0xf){
     c38:	4b5d      	ldr	r3, [pc, #372]	; (db0 <chip_vm+0x8a4>)
     c3a:	7e5b      	ldrb	r3, [r3, #25]
     c3c:	f003 030f 	and.w	r3, r3, #15
     c40:	2b0f      	cmp	r3, #15
     c42:	f200 816b 	bhi.w	f1c <chip_vm+0xa10>
     c46:	a201      	add	r2, pc, #4	; (adr r2, c4c <chip_vm+0x740>)
     c48:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     c4c:	00000c8d 	.word	0x00000c8d
     c50:	00000cb5 	.word	0x00000cb5
     c54:	00000cd5 	.word	0x00000cd5
     c58:	00000d2b 	.word	0x00000d2b
     c5c:	00000d4d 	.word	0x00000d4d
     c60:	00000d61 	.word	0x00000d61
     c64:	00000d83 	.word	0x00000d83
     c68:	00000db9 	.word	0x00000db9
     c6c:	00000ddf 	.word	0x00000ddf
     c70:	00000df9 	.word	0x00000df9
     c74:	00000e13 	.word	0x00000e13
     c78:	00000e43 	.word	0x00000e43
     c7c:	00000e77 	.word	0x00000e77
     c80:	00000ea7 	.word	0x00000ea7
     c84:	00000ed5 	.word	0x00000ed5
     c88:	00000f03 	.word	0x00000f03
			case 0x0: // 9XY0  SNE VX,VY  ; skip if VX <> VY
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     c8c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     c90:	4a47      	ldr	r2, [pc, #284]	; (db0 <chip_vm+0x8a4>)
     c92:	4413      	add	r3, r2
     c94:	799a      	ldrb	r2, [r3, #6]
     c96:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     c9a:	4945      	ldr	r1, [pc, #276]	; (db0 <chip_vm+0x8a4>)
     c9c:	440b      	add	r3, r1
     c9e:	799b      	ldrb	r3, [r3, #6]
     ca0:	429a      	cmp	r2, r3
     ca2:	f000 813f 	beq.w	f24 <chip_vm+0xa18>
     ca6:	4b42      	ldr	r3, [pc, #264]	; (db0 <chip_vm+0x8a4>)
     ca8:	881b      	ldrh	r3, [r3, #0]
     caa:	3302      	adds	r3, #2
     cac:	b29a      	uxth	r2, r3
     cae:	4b40      	ldr	r3, [pc, #256]	; (db0 <chip_vm+0x8a4>)
     cb0:	801a      	strh	r2, [r3, #0]
				break;
     cb2:	e137      	b.n	f24 <chip_vm+0xa18>
			case 0x1: // 9XY1  TONE VX, VY ; play a tempered scale note. VX=note, VY=length; BP-CHIP
				key_tone(vms.var[x],vms.var[y],false);
     cb4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     cb8:	4a3d      	ldr	r2, [pc, #244]	; (db0 <chip_vm+0x8a4>)
     cba:	4413      	add	r3, r2
     cbc:	799b      	ldrb	r3, [r3, #6]
     cbe:	4618      	mov	r0, r3
     cc0:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     cc4:	4a3a      	ldr	r2, [pc, #232]	; (db0 <chip_vm+0x8a4>)
     cc6:	4413      	add	r3, r2
     cc8:	799b      	ldrb	r3, [r3, #6]
     cca:	2200      	movs	r2, #0
     ccc:	4619      	mov	r1, r3
     cce:	f003 fc4e 	bl	456e <key_tone>
				break;
     cd2:	e12c      	b.n	f2e <chip_vm+0xa22>
			case 0x2: // 9XY2  PRT VX, VY ; print text pointed by I at position x,y. I is incremented ; BP-CHIP
				select_font(FONT_ASCII);
     cd4:	2002      	movs	r0, #2
     cd6:	f003 fe6f 	bl	49b8 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     cda:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     cde:	4a34      	ldr	r2, [pc, #208]	; (db0 <chip_vm+0x8a4>)
     ce0:	4413      	add	r3, r2
     ce2:	7998      	ldrb	r0, [r3, #6]
     ce4:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     ce8:	4a31      	ldr	r2, [pc, #196]	; (db0 <chip_vm+0x8a4>)
     cea:	4413      	add	r3, r2
     cec:	799b      	ldrb	r3, [r3, #6]
     cee:	4619      	mov	r1, r3
     cf0:	f003 ffb6 	bl	4c60 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     cf4:	4b2e      	ldr	r3, [pc, #184]	; (db0 <chip_vm+0x8a4>)
     cf6:	885b      	ldrh	r3, [r3, #2]
     cf8:	461a      	mov	r2, r3
     cfa:	4b2e      	ldr	r3, [pc, #184]	; (db4 <chip_vm+0x8a8>)
     cfc:	4413      	add	r3, r2
     cfe:	4618      	mov	r0, r3
     d00:	f003 ffda 	bl	4cb8 <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     d04:	4b2a      	ldr	r3, [pc, #168]	; (db0 <chip_vm+0x8a4>)
     d06:	885c      	ldrh	r4, [r3, #2]
     d08:	4b29      	ldr	r3, [pc, #164]	; (db0 <chip_vm+0x8a4>)
     d0a:	885b      	ldrh	r3, [r3, #2]
     d0c:	461a      	mov	r2, r3
     d0e:	4b29      	ldr	r3, [pc, #164]	; (db4 <chip_vm+0x8a8>)
     d10:	4413      	add	r3, r2
     d12:	4618      	mov	r0, r3
     d14:	f001 fa19 	bl	214a <strlen>
     d18:	4603      	mov	r3, r0
     d1a:	b29b      	uxth	r3, r3
     d1c:	4423      	add	r3, r4
     d1e:	b29b      	uxth	r3, r3
     d20:	3301      	adds	r3, #1
     d22:	b29a      	uxth	r2, r3
     d24:	4b22      	ldr	r3, [pc, #136]	; (db0 <chip_vm+0x8a4>)
     d26:	805a      	strh	r2, [r3, #2]
				//while (game_ram[vms.ix++]);
				break;
     d28:	e101      	b.n	f2e <chip_vm+0xa22>
			case 0x3: // 9XY3 PIXI VX, VY  ; invert pixel at coordinates VX,VY; BP-CHIP
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     d2a:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     d2e:	4a20      	ldr	r2, [pc, #128]	; (db0 <chip_vm+0x8a4>)
     d30:	4413      	add	r3, r2
     d32:	799b      	ldrb	r3, [r3, #6]
     d34:	4618      	mov	r0, r3
     d36:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     d3a:	4a1d      	ldr	r2, [pc, #116]	; (db0 <chip_vm+0x8a4>)
     d3c:	4413      	add	r3, r2
     d3e:	799b      	ldrb	r3, [r3, #6]
     d40:	4619      	mov	r1, r3
     d42:	2303      	movs	r3, #3
     d44:	2200      	movs	r2, #0
     d46:	f001 fbe1 	bl	250c <gfx_blit>
				break;
     d4a:	e0f0      	b.n	f2e <chip_vm+0xa22>
			case 0x4: // 9NN4  NOISE NN ; noise length NN ; BP-CHIP
				noise((x<<4)+y);
     d4c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     d50:	011a      	lsls	r2, r3, #4
     d52:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     d56:	4413      	add	r3, r2
     d58:	4618      	mov	r0, r3
     d5a:	f003 fc29 	bl	45b0 <noise>
				break;
     d5e:	e0e6      	b.n	f2e <chip_vm+0xa22>
			case 0x5: // 9XY5 TONE VX, VY, WAIT ; play tempered scale note, wait end. VX=note, VY=length ; BP-CHIP
				key_tone(vms.var[x],vms.var[y],true);
     d60:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     d64:	4a12      	ldr	r2, [pc, #72]	; (db0 <chip_vm+0x8a4>)
     d66:	4413      	add	r3, r2
     d68:	799b      	ldrb	r3, [r3, #6]
     d6a:	4618      	mov	r0, r3
     d6c:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     d70:	4a0f      	ldr	r2, [pc, #60]	; (db0 <chip_vm+0x8a4>)
     d72:	4413      	add	r3, r2
     d74:	799b      	ldrb	r3, [r3, #6]
     d76:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     d7a:	4619      	mov	r1, r3
     d7c:	f003 fbf7 	bl	456e <key_tone>
				break;
     d80:	e0d5      	b.n	f2e <chip_vm+0xa22>
			case 0x6: // 9X06, PUSH VX  ; push VX on stack ; BP-CHIP
				vms.stack[++vms.sp]=vms.var[x];
     d82:	4b0b      	ldr	r3, [pc, #44]	; (db0 <chip_vm+0x8a4>)
     d84:	791b      	ldrb	r3, [r3, #4]
     d86:	3301      	adds	r3, #1
     d88:	b2da      	uxtb	r2, r3
     d8a:	4b09      	ldr	r3, [pc, #36]	; (db0 <chip_vm+0x8a4>)
     d8c:	711a      	strb	r2, [r3, #4]
     d8e:	4b08      	ldr	r3, [pc, #32]	; (db0 <chip_vm+0x8a4>)
     d90:	791b      	ldrb	r3, [r3, #4]
     d92:	4618      	mov	r0, r3
     d94:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     d98:	4a05      	ldr	r2, [pc, #20]	; (db0 <chip_vm+0x8a4>)
     d9a:	4413      	add	r3, r2
     d9c:	799b      	ldrb	r3, [r3, #6]
     d9e:	b299      	uxth	r1, r3
     da0:	4a03      	ldr	r2, [pc, #12]	; (db0 <chip_vm+0x8a4>)
     da2:	f100 030c 	add.w	r3, r0, #12
     da6:	005b      	lsls	r3, r3, #1
     da8:	4413      	add	r3, r2
     daa:	460a      	mov	r2, r1
     dac:	805a      	strh	r2, [r3, #2]
				break;
     dae:	e0be      	b.n	f2e <chip_vm+0xa22>
     db0:	20000250 	.word	0x20000250
     db4:	20000720 	.word	0x20000720
			case 0x7: // 9X07, POP VX  ; pop VX from stack ; BP-CHIP
				vms.var[x]=vms.stack[vms.sp--];
     db8:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     dbc:	4ba7      	ldr	r3, [pc, #668]	; (105c <chip_vm+0xb50>)
     dbe:	791b      	ldrb	r3, [r3, #4]
     dc0:	1e59      	subs	r1, r3, #1
     dc2:	b2c8      	uxtb	r0, r1
     dc4:	49a5      	ldr	r1, [pc, #660]	; (105c <chip_vm+0xb50>)
     dc6:	7108      	strb	r0, [r1, #4]
     dc8:	49a4      	ldr	r1, [pc, #656]	; (105c <chip_vm+0xb50>)
     dca:	330c      	adds	r3, #12
     dcc:	005b      	lsls	r3, r3, #1
     dce:	440b      	add	r3, r1
     dd0:	885b      	ldrh	r3, [r3, #2]
     dd2:	b2d9      	uxtb	r1, r3
     dd4:	4ba1      	ldr	r3, [pc, #644]	; (105c <chip_vm+0xb50>)
     dd6:	4413      	add	r3, r2
     dd8:	460a      	mov	r2, r1
     dda:	719a      	strb	r2, [r3, #6]
				break;
     ddc:	e0a7      	b.n	f2e <chip_vm+0xa22>
			case 0x8: // 9X08, SCRX  ;  VX=HRES screen width in pixels. ; BP-CHIP
				{ 	vmode_params_t *vparams=get_video_params();
     dde:	f004 fba5 	bl	552c <get_video_params>
     de2:	62b8      	str	r0, [r7, #40]	; 0x28
					vms.var[x]=vparams->hres;
     de4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     de8:	6aba      	ldr	r2, [r7, #40]	; 0x28
     dea:	8992      	ldrh	r2, [r2, #12]
     dec:	b2d1      	uxtb	r1, r2
     dee:	4a9b      	ldr	r2, [pc, #620]	; (105c <chip_vm+0xb50>)
     df0:	4413      	add	r3, r2
     df2:	460a      	mov	r2, r1
     df4:	719a      	strb	r2, [r3, #6]
				}
				break;
     df6:	e09a      	b.n	f2e <chip_vm+0xa22>
			case 0x9: // 9X09, SCRY  ; VX=VRES  screen height in pixels  ; BP-CHIP
				{
					vmode_params_t *vparams=get_video_params();
     df8:	f004 fb98 	bl	552c <get_video_params>
     dfc:	6278      	str	r0, [r7, #36]	; 0x24
					vms.var[x]=vparams->vres;
     dfe:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     e02:	6a7a      	ldr	r2, [r7, #36]	; 0x24
     e04:	89d2      	ldrh	r2, [r2, #14]
     e06:	b2d1      	uxtb	r1, r2
     e08:	4a94      	ldr	r2, [pc, #592]	; (105c <chip_vm+0xb50>)
     e0a:	4413      	add	r3, r2
     e0c:	460a      	mov	r2, r1
     e0e:	719a      	strb	r2, [r3, #6]
				}
				break;
     e10:	e08d      	b.n	f2e <chip_vm+0xa22>
			case 0xA: // 9XNA, BSET VX,N  ; set VX bit N  ; BP-CHIP
			    vms.var[x] |= (1<<(y&0x7));
     e12:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     e16:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     e1a:	4990      	ldr	r1, [pc, #576]	; (105c <chip_vm+0xb50>)
     e1c:	440a      	add	r2, r1
     e1e:	7992      	ldrb	r2, [r2, #6]
     e20:	b251      	sxtb	r1, r2
     e22:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     e26:	f002 0207 	and.w	r2, r2, #7
     e2a:	2001      	movs	r0, #1
     e2c:	fa00 f202 	lsl.w	r2, r0, r2
     e30:	b252      	sxtb	r2, r2
     e32:	430a      	orrs	r2, r1
     e34:	b252      	sxtb	r2, r2
     e36:	b2d1      	uxtb	r1, r2
     e38:	4a88      	ldr	r2, [pc, #544]	; (105c <chip_vm+0xb50>)
     e3a:	4413      	add	r3, r2
     e3c:	460a      	mov	r2, r1
     e3e:	719a      	strb	r2, [r3, #6]
			    break;
     e40:	e075      	b.n	f2e <chip_vm+0xa22>
		    case 0xB: // 9XNB  BCLR VX,N  ; clear VX bit N  ; BP-CHIP
			    vms.var[x] &= ~(1<<(y&0x7));
     e42:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     e46:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     e4a:	4984      	ldr	r1, [pc, #528]	; (105c <chip_vm+0xb50>)
     e4c:	440a      	add	r2, r1
     e4e:	7992      	ldrb	r2, [r2, #6]
     e50:	b251      	sxtb	r1, r2
     e52:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     e56:	f002 0207 	and.w	r2, r2, #7
     e5a:	2001      	movs	r0, #1
     e5c:	fa00 f202 	lsl.w	r2, r0, r2
     e60:	b252      	sxtb	r2, r2
     e62:	43d2      	mvns	r2, r2
     e64:	b252      	sxtb	r2, r2
     e66:	400a      	ands	r2, r1
     e68:	b252      	sxtb	r2, r2
     e6a:	b2d1      	uxtb	r1, r2
     e6c:	4a7b      	ldr	r2, [pc, #492]	; (105c <chip_vm+0xb50>)
     e6e:	4413      	add	r3, r2
     e70:	460a      	mov	r2, r1
     e72:	719a      	strb	r2, [r3, #6]
			    break;
     e74:	e05b      	b.n	f2e <chip_vm+0xa22>
			case 0xC: // 9XNC  BINV VX,N  ; invert VX bit N ; BP-CHIP
   			    vms.var[x] ^= (1<<(y&0x7));
     e76:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     e7a:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     e7e:	4977      	ldr	r1, [pc, #476]	; (105c <chip_vm+0xb50>)
     e80:	440a      	add	r2, r1
     e82:	7992      	ldrb	r2, [r2, #6]
     e84:	b251      	sxtb	r1, r2
     e86:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     e8a:	f002 0207 	and.w	r2, r2, #7
     e8e:	2001      	movs	r0, #1
     e90:	fa00 f202 	lsl.w	r2, r0, r2
     e94:	b252      	sxtb	r2, r2
     e96:	404a      	eors	r2, r1
     e98:	b252      	sxtb	r2, r2
     e9a:	b2d1      	uxtb	r1, r2
     e9c:	4a6f      	ldr	r2, [pc, #444]	; (105c <chip_vm+0xb50>)
     e9e:	4413      	add	r3, r2
     ea0:	460a      	mov	r2, r1
     ea2:	719a      	strb	r2, [r3, #6]
				break;
     ea4:	e043      	b.n	f2e <chip_vm+0xa22>
			case 0xD: // 9XND  BTSS VX,N  ; skip if VX bit N==1 ; BP-CHIP
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     ea6:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     eaa:	4a6c      	ldr	r2, [pc, #432]	; (105c <chip_vm+0xb50>)
     eac:	4413      	add	r3, r2
     eae:	799b      	ldrb	r3, [r3, #6]
     eb0:	461a      	mov	r2, r3
     eb2:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     eb6:	f003 0307 	and.w	r3, r3, #7
     eba:	fa42 f303 	asr.w	r3, r2, r3
     ebe:	f003 0301 	and.w	r3, r3, #1
     ec2:	2b00      	cmp	r3, #0
     ec4:	d030      	beq.n	f28 <chip_vm+0xa1c>
     ec6:	4b65      	ldr	r3, [pc, #404]	; (105c <chip_vm+0xb50>)
     ec8:	881b      	ldrh	r3, [r3, #0]
     eca:	3302      	adds	r3, #2
     ecc:	b29a      	uxth	r2, r3
     ece:	4b63      	ldr	r3, [pc, #396]	; (105c <chip_vm+0xb50>)
     ed0:	801a      	strh	r2, [r3, #0]
				break;
     ed2:	e029      	b.n	f28 <chip_vm+0xa1c>
			case 0xE: // 9XNE  BTSC VX,N  ; skip if VX bit N==0 ; BP-CHIP
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     ed4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     ed8:	4a60      	ldr	r2, [pc, #384]	; (105c <chip_vm+0xb50>)
     eda:	4413      	add	r3, r2
     edc:	799b      	ldrb	r3, [r3, #6]
     ede:	461a      	mov	r2, r3
     ee0:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     ee4:	f003 0307 	and.w	r3, r3, #7
     ee8:	fa42 f303 	asr.w	r3, r2, r3
     eec:	f003 0301 	and.w	r3, r3, #1
     ef0:	2b00      	cmp	r3, #0
     ef2:	d11b      	bne.n	f2c <chip_vm+0xa20>
     ef4:	4b59      	ldr	r3, [pc, #356]	; (105c <chip_vm+0xb50>)
     ef6:	881b      	ldrh	r3, [r3, #0]
     ef8:	3302      	adds	r3, #2
     efa:	b29a      	uxth	r2, r3
     efc:	4b57      	ldr	r3, [pc, #348]	; (105c <chip_vm+0xb50>)
     efe:	801a      	strh	r2, [r3, #0]
				break;
     f00:	e014      	b.n	f2c <chip_vm+0xa20>
			case 0xF: // 9XYF GPIX,  VF=pixel((vx),(vy))  ; BP-CHIP
			    vms.var[15]=gfx_get_pixel(x,y);
     f02:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     f06:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     f0a:	4611      	mov	r1, r2
     f0c:	4618      	mov	r0, r3
     f0e:	f001 fce1 	bl	28d4 <gfx_get_pixel>
     f12:	4603      	mov	r3, r0
     f14:	461a      	mov	r2, r3
     f16:	4b51      	ldr	r3, [pc, #324]	; (105c <chip_vm+0xb50>)
     f18:	755a      	strb	r2, [r3, #21]
				break;  	
     f1a:	e008      	b.n	f2e <chip_vm+0xa22>
			default:
				exit_code=CHIP_BAD_OPCODE;
     f1c:	2302      	movs	r3, #2
     f1e:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
     f22:	e342      	b.n	15aa <chip_vm+0x109e>
				break;
     f24:	bf00      	nop
     f26:	e340      	b.n	15aa <chip_vm+0x109e>
				break;
     f28:	bf00      	nop
     f2a:	e33e      	b.n	15aa <chip_vm+0x109e>
				break;
     f2c:	bf00      	nop
			}//switch(vms.b2&0xf)
			break;
     f2e:	e33c      	b.n	15aa <chip_vm+0x109e>
		case 0xa: // ANNN    LD I, NNN  ; I := NNN ; BP-CHIP I=2*NNN
			vms.ix=caddr(vms.b1,vms.b2);
     f30:	4b4a      	ldr	r3, [pc, #296]	; (105c <chip_vm+0xb50>)
     f32:	7e1b      	ldrb	r3, [r3, #24]
     f34:	021b      	lsls	r3, r3, #8
     f36:	b21a      	sxth	r2, r3
     f38:	4b48      	ldr	r3, [pc, #288]	; (105c <chip_vm+0xb50>)
     f3a:	7e5b      	ldrb	r3, [r3, #25]
     f3c:	b21b      	sxth	r3, r3
     f3e:	4313      	orrs	r3, r2
     f40:	b21b      	sxth	r3, r3
     f42:	b29b      	uxth	r3, r3
     f44:	f3c3 030b 	ubfx	r3, r3, #0, #12
     f48:	b29a      	uxth	r2, r3
     f4a:	4b44      	ldr	r3, [pc, #272]	; (105c <chip_vm+0xb50>)
     f4c:	805a      	strh	r2, [r3, #2]
			if (video_mode==VM_BPCHIP){
     f4e:	4b44      	ldr	r3, [pc, #272]	; (1060 <chip_vm+0xb54>)
     f50:	781b      	ldrb	r3, [r3, #0]
     f52:	2b00      	cmp	r3, #0
     f54:	d105      	bne.n	f62 <chip_vm+0xa56>
				vms.ix<<=1;
     f56:	4b41      	ldr	r3, [pc, #260]	; (105c <chip_vm+0xb50>)
     f58:	885b      	ldrh	r3, [r3, #2]
     f5a:	005b      	lsls	r3, r3, #1
     f5c:	b29a      	uxth	r2, r3
     f5e:	4b3f      	ldr	r3, [pc, #252]	; (105c <chip_vm+0xb50>)
     f60:	805a      	strh	r2, [r3, #2]
			}
			vms.sprite_mem=RAM_MEM;
     f62:	4b3e      	ldr	r3, [pc, #248]	; (105c <chip_vm+0xb50>)
     f64:	2200      	movs	r2, #0
     f66:	715a      	strb	r2, [r3, #5]
			break;
     f68:	e31f      	b.n	15aa <chip_vm+0x109e>
		case 0xb: // BNNN     JP V0, NNN  ;  skip to (NNN+V0) ; BP-CHIP  destination= 2*(NNN+V0)
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     f6a:	4b3c      	ldr	r3, [pc, #240]	; (105c <chip_vm+0xb50>)
     f6c:	799b      	ldrb	r3, [r3, #6]
     f6e:	b29b      	uxth	r3, r3
     f70:	005b      	lsls	r3, r3, #1
     f72:	b29a      	uxth	r2, r3
     f74:	4b39      	ldr	r3, [pc, #228]	; (105c <chip_vm+0xb50>)
     f76:	7e1b      	ldrb	r3, [r3, #24]
     f78:	021b      	lsls	r3, r3, #8
     f7a:	b219      	sxth	r1, r3
     f7c:	4b37      	ldr	r3, [pc, #220]	; (105c <chip_vm+0xb50>)
     f7e:	7e5b      	ldrb	r3, [r3, #25]
     f80:	b21b      	sxth	r3, r3
     f82:	430b      	orrs	r3, r1
     f84:	b21b      	sxth	r3, r3
     f86:	b29b      	uxth	r3, r3
     f88:	f3c3 030b 	ubfx	r3, r3, #0, #12
     f8c:	b29b      	uxth	r3, r3
     f8e:	4413      	add	r3, r2
     f90:	b29a      	uxth	r2, r3
     f92:	4b32      	ldr	r3, [pc, #200]	; (105c <chip_vm+0xb50>)
     f94:	801a      	strh	r2, [r3, #0]
			if (video_mode==VM_BPCHIP){
     f96:	4b32      	ldr	r3, [pc, #200]	; (1060 <chip_vm+0xb54>)
     f98:	781b      	ldrb	r3, [r3, #0]
     f9a:	2b00      	cmp	r3, #0
     f9c:	f040 8305 	bne.w	15aa <chip_vm+0x109e>
				vms.pc<<=1;
     fa0:	4b2e      	ldr	r3, [pc, #184]	; (105c <chip_vm+0xb50>)
     fa2:	881b      	ldrh	r3, [r3, #0]
     fa4:	005b      	lsls	r3, r3, #1
     fa6:	b29a      	uxth	r2, r3
     fa8:	4b2c      	ldr	r3, [pc, #176]	; (105c <chip_vm+0xb50>)
     faa:	801a      	strh	r2, [r3, #0]
			}
			break;
     fac:	e2fd      	b.n	15aa <chip_vm+0x109e>
		case 0xc: //CXKK  RND VX,KK  ; VX=random_number&KK
			vms.var[x]=rand()%vms.b2;
     fae:	f897 402e 	ldrb.w	r4, [r7, #46]	; 0x2e
     fb2:	f7ff fa89 	bl	4c8 <rand>
     fb6:	4603      	mov	r3, r0
     fb8:	4a28      	ldr	r2, [pc, #160]	; (105c <chip_vm+0xb50>)
     fba:	7e52      	ldrb	r2, [r2, #25]
     fbc:	fb93 f1f2 	sdiv	r1, r3, r2
     fc0:	fb02 f201 	mul.w	r2, r2, r1
     fc4:	1a9b      	subs	r3, r3, r2
     fc6:	b2da      	uxtb	r2, r3
     fc8:	4b24      	ldr	r3, [pc, #144]	; (105c <chip_vm+0xb50>)
     fca:	4423      	add	r3, r4
     fcc:	719a      	strb	r2, [r3, #6]
			break;
     fce:	e2ec      	b.n	15aa <chip_vm+0x109e>
		case 0xd: //DXYN DRW VX,VY,N   draw a sprite, SCHIP and BP-CHIP can draw 16x16 sprites
			n=vms.b2&0xf;
     fd0:	4b22      	ldr	r3, [pc, #136]	; (105c <chip_vm+0xb50>)
     fd2:	7e5b      	ldrb	r3, [r3, #25]
     fd4:	f003 030f 	and.w	r3, r3, #15
     fd8:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
			if (!n){
     fdc:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
     fe0:	2b00      	cmp	r3, #0
     fe2:	d141      	bne.n	1068 <chip_vm+0xb5c>
				if (vms.sprite_mem==RAM_MEM){
     fe4:	4b1d      	ldr	r3, [pc, #116]	; (105c <chip_vm+0xb50>)
     fe6:	795b      	ldrb	r3, [r3, #5]
     fe8:	2b00      	cmp	r3, #0
     fea:	d11c      	bne.n	1026 <chip_vm+0xb1a>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     fec:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     ff0:	4a1a      	ldr	r2, [pc, #104]	; (105c <chip_vm+0xb50>)
     ff2:	4413      	add	r3, r2
     ff4:	799b      	ldrb	r3, [r3, #6]
     ff6:	b25b      	sxtb	r3, r3
     ff8:	4618      	mov	r0, r3
     ffa:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     ffe:	4a17      	ldr	r2, [pc, #92]	; (105c <chip_vm+0xb50>)
    1000:	4413      	add	r3, r2
    1002:	799b      	ldrb	r3, [r3, #6]
    1004:	b25b      	sxtb	r3, r3
    1006:	4619      	mov	r1, r3
    1008:	4b14      	ldr	r3, [pc, #80]	; (105c <chip_vm+0xb50>)
    100a:	885b      	ldrh	r3, [r3, #2]
    100c:	461a      	mov	r2, r3
    100e:	4b15      	ldr	r3, [pc, #84]	; (1064 <chip_vm+0xb58>)
    1010:	4413      	add	r3, r2
    1012:	9300      	str	r3, [sp, #0]
    1014:	2310      	movs	r3, #16
    1016:	2210      	movs	r2, #16
    1018:	f001 fc94 	bl	2944 <gfx_sprite>
    101c:	4603      	mov	r3, r0
    101e:	b2da      	uxtb	r2, r3
    1020:	4b0e      	ldr	r3, [pc, #56]	; (105c <chip_vm+0xb50>)
    1022:	755a      	strb	r2, [r3, #21]
    1024:	e2c1      	b.n	15aa <chip_vm+0x109e>
				}else{
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
    1026:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    102a:	4a0c      	ldr	r2, [pc, #48]	; (105c <chip_vm+0xb50>)
    102c:	4413      	add	r3, r2
    102e:	799b      	ldrb	r3, [r3, #6]
    1030:	b25b      	sxtb	r3, r3
    1032:	4618      	mov	r0, r3
    1034:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
    1038:	4a08      	ldr	r2, [pc, #32]	; (105c <chip_vm+0xb50>)
    103a:	4413      	add	r3, r2
    103c:	799b      	ldrb	r3, [r3, #6]
    103e:	b25b      	sxtb	r3, r3
    1040:	4619      	mov	r1, r3
    1042:	4b06      	ldr	r3, [pc, #24]	; (105c <chip_vm+0xb50>)
    1044:	885b      	ldrh	r3, [r3, #2]
    1046:	9300      	str	r3, [sp, #0]
    1048:	2310      	movs	r3, #16
    104a:	2210      	movs	r2, #16
    104c:	f001 fc7a 	bl	2944 <gfx_sprite>
    1050:	4603      	mov	r3, r0
    1052:	b2da      	uxtb	r2, r3
    1054:	4b01      	ldr	r3, [pc, #4]	; (105c <chip_vm+0xb50>)
    1056:	755a      	strb	r2, [r3, #21]
    1058:	e2a7      	b.n	15aa <chip_vm+0x109e>
    105a:	bf00      	nop
    105c:	20000250 	.word	0x20000250
    1060:	200006e4 	.word	0x200006e4
    1064:	20000720 	.word	0x20000720
				}

			}else{
				if (vms.sprite_mem==RAM_MEM){
    1068:	4bd6      	ldr	r3, [pc, #856]	; (13c4 <chip_vm+0xeb8>)
    106a:	795b      	ldrb	r3, [r3, #5]
    106c:	2b00      	cmp	r3, #0
    106e:	d11e      	bne.n	10ae <chip_vm+0xba2>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
    1070:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    1074:	4ad3      	ldr	r2, [pc, #844]	; (13c4 <chip_vm+0xeb8>)
    1076:	4413      	add	r3, r2
    1078:	799b      	ldrb	r3, [r3, #6]
    107a:	b25b      	sxtb	r3, r3
    107c:	4618      	mov	r0, r3
    107e:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
    1082:	4ad0      	ldr	r2, [pc, #832]	; (13c4 <chip_vm+0xeb8>)
    1084:	4413      	add	r3, r2
    1086:	799b      	ldrb	r3, [r3, #6]
    1088:	b25b      	sxtb	r3, r3
    108a:	4619      	mov	r1, r3
    108c:	4bcd      	ldr	r3, [pc, #820]	; (13c4 <chip_vm+0xeb8>)
    108e:	885b      	ldrh	r3, [r3, #2]
    1090:	461a      	mov	r2, r3
    1092:	4bcd      	ldr	r3, [pc, #820]	; (13c8 <chip_vm+0xebc>)
    1094:	4413      	add	r3, r2
    1096:	f897 202c 	ldrb.w	r2, [r7, #44]	; 0x2c
    109a:	9300      	str	r3, [sp, #0]
    109c:	4613      	mov	r3, r2
    109e:	2208      	movs	r2, #8
    10a0:	f001 fc50 	bl	2944 <gfx_sprite>
    10a4:	4603      	mov	r3, r0
    10a6:	b2da      	uxtb	r2, r3
    10a8:	4bc6      	ldr	r3, [pc, #792]	; (13c4 <chip_vm+0xeb8>)
    10aa:	755a      	strb	r2, [r3, #21]
    10ac:	e27d      	b.n	15aa <chip_vm+0x109e>
				}else{
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
    10ae:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    10b2:	4ac4      	ldr	r2, [pc, #784]	; (13c4 <chip_vm+0xeb8>)
    10b4:	4413      	add	r3, r2
    10b6:	799b      	ldrb	r3, [r3, #6]
    10b8:	b25b      	sxtb	r3, r3
    10ba:	4618      	mov	r0, r3
    10bc:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
    10c0:	4ac0      	ldr	r2, [pc, #768]	; (13c4 <chip_vm+0xeb8>)
    10c2:	4413      	add	r3, r2
    10c4:	799b      	ldrb	r3, [r3, #6]
    10c6:	b25b      	sxtb	r3, r3
    10c8:	4619      	mov	r1, r3
    10ca:	4bbe      	ldr	r3, [pc, #760]	; (13c4 <chip_vm+0xeb8>)
    10cc:	885b      	ldrh	r3, [r3, #2]
    10ce:	461a      	mov	r2, r3
    10d0:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
    10d4:	9200      	str	r2, [sp, #0]
    10d6:	2208      	movs	r2, #8
    10d8:	f001 fc34 	bl	2944 <gfx_sprite>
    10dc:	4603      	mov	r3, r0
    10de:	b2da      	uxtb	r2, r3
    10e0:	4bb8      	ldr	r3, [pc, #736]	; (13c4 <chip_vm+0xeb8>)
    10e2:	755a      	strb	r2, [r3, #21]
				}
			}
			
			break;
    10e4:	e261      	b.n	15aa <chip_vm+0x109e>
		case 0xe:
				switch(vms.b2){
    10e6:	4bb7      	ldr	r3, [pc, #732]	; (13c4 <chip_vm+0xeb8>)
    10e8:	7e5b      	ldrb	r3, [r3, #25]
    10ea:	2b9e      	cmp	r3, #158	; 0x9e
    10ec:	d002      	beq.n	10f4 <chip_vm+0xbe8>
    10ee:	2ba1      	cmp	r3, #161	; 0xa1
    10f0:	d012      	beq.n	1118 <chip_vm+0xc0c>
    10f2:	e023      	b.n	113c <chip_vm+0xc30>
				case 0x9e: //EX9E, SKP VX   ; skip if VX key is down
					if (btn_query_down(vms.var[x])) vms.pc+=2;
    10f4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    10f8:	4ab2      	ldr	r2, [pc, #712]	; (13c4 <chip_vm+0xeb8>)
    10fa:	4413      	add	r3, r2
    10fc:	799b      	ldrb	r3, [r3, #6]
    10fe:	4618      	mov	r0, r3
    1100:	f000 fdf2 	bl	1ce8 <btn_query_down>
    1104:	4603      	mov	r3, r0
    1106:	2b00      	cmp	r3, #0
    1108:	d01a      	beq.n	1140 <chip_vm+0xc34>
    110a:	4bae      	ldr	r3, [pc, #696]	; (13c4 <chip_vm+0xeb8>)
    110c:	881b      	ldrh	r3, [r3, #0]
    110e:	3302      	adds	r3, #2
    1110:	b29a      	uxth	r2, r3
    1112:	4bac      	ldr	r3, [pc, #688]	; (13c4 <chip_vm+0xeb8>)
    1114:	801a      	strh	r2, [r3, #0]
					break;
    1116:	e013      	b.n	1140 <chip_vm+0xc34>
				case 0xa1: //EXA1, SKNP VX  ; skip if VX key is up
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
    1118:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    111c:	4aa9      	ldr	r2, [pc, #676]	; (13c4 <chip_vm+0xeb8>)
    111e:	4413      	add	r3, r2
    1120:	799b      	ldrb	r3, [r3, #6]
    1122:	4618      	mov	r0, r3
    1124:	f000 fde0 	bl	1ce8 <btn_query_down>
    1128:	4603      	mov	r3, r0
    112a:	2b00      	cmp	r3, #0
    112c:	d10a      	bne.n	1144 <chip_vm+0xc38>
    112e:	4ba5      	ldr	r3, [pc, #660]	; (13c4 <chip_vm+0xeb8>)
    1130:	881b      	ldrh	r3, [r3, #0]
    1132:	3302      	adds	r3, #2
    1134:	b29a      	uxth	r2, r3
    1136:	4ba3      	ldr	r3, [pc, #652]	; (13c4 <chip_vm+0xeb8>)
    1138:	801a      	strh	r2, [r3, #0]
					break;
    113a:	e003      	b.n	1144 <chip_vm+0xc38>
				default:
					return CHIP_BAD_OPCODE;
    113c:	2302      	movs	r3, #2
    113e:	e244      	b.n	15ca <chip_vm+0x10be>
					break;
    1140:	bf00      	nop
    1142:	e232      	b.n	15aa <chip_vm+0x109e>
					break;
    1144:	bf00      	nop
				}//switch(vms.b2)
				break;
    1146:	e230      	b.n	15aa <chip_vm+0x109e>
		case 0xf:
			switch(vms.b2){
    1148:	4b9e      	ldr	r3, [pc, #632]	; (13c4 <chip_vm+0xeb8>)
    114a:	7e5b      	ldrb	r3, [r3, #25]
    114c:	3b01      	subs	r3, #1
    114e:	2b84      	cmp	r3, #132	; 0x84
    1150:	f200 8227 	bhi.w	15a2 <chip_vm+0x1096>
    1154:	a201      	add	r2, pc, #4	; (adr r2, 115c <chip_vm+0xc50>)
    1156:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    115a:	bf00      	nop
    115c:	00001371 	.word	0x00001371
    1160:	000015a3 	.word	0x000015a3
    1164:	000015a3 	.word	0x000015a3
    1168:	000015a3 	.word	0x000015a3
    116c:	000015a3 	.word	0x000015a3
    1170:	000015a3 	.word	0x000015a3
    1174:	00001387 	.word	0x00001387
    1178:	000015a3 	.word	0x000015a3
    117c:	000015a3 	.word	0x000015a3
    1180:	0000139d 	.word	0x0000139d
    1184:	000015a3 	.word	0x000015a3
    1188:	000015a3 	.word	0x000015a3
    118c:	000015a3 	.word	0x000015a3
    1190:	000015a3 	.word	0x000015a3
    1194:	000015a3 	.word	0x000015a3
    1198:	000015a3 	.word	0x000015a3
    119c:	000015a3 	.word	0x000015a3
    11a0:	000015a3 	.word	0x000015a3
    11a4:	000015a3 	.word	0x000015a3
    11a8:	000015a3 	.word	0x000015a3
    11ac:	000013b1 	.word	0x000013b1
    11b0:	000015a3 	.word	0x000015a3
    11b4:	000015a3 	.word	0x000015a3
    11b8:	000013d5 	.word	0x000013d5
    11bc:	000015a3 	.word	0x000015a3
    11c0:	000015a3 	.word	0x000015a3
    11c4:	000015a3 	.word	0x000015a3
    11c8:	000015a3 	.word	0x000015a3
    11cc:	000015a3 	.word	0x000015a3
    11d0:	000013ed 	.word	0x000013ed
    11d4:	000015a3 	.word	0x000015a3
    11d8:	000015a3 	.word	0x000015a3
    11dc:	000015a3 	.word	0x000015a3
    11e0:	000015a3 	.word	0x000015a3
    11e4:	000015a3 	.word	0x000015a3
    11e8:	000015a3 	.word	0x000015a3
    11ec:	000015a3 	.word	0x000015a3
    11f0:	000015a3 	.word	0x000015a3
    11f4:	000015a3 	.word	0x000015a3
    11f8:	000015a3 	.word	0x000015a3
    11fc:	00001407 	.word	0x00001407
    1200:	000015a3 	.word	0x000015a3
    1204:	000015a3 	.word	0x000015a3
    1208:	000015a3 	.word	0x000015a3
    120c:	000015a3 	.word	0x000015a3
    1210:	000015a3 	.word	0x000015a3
    1214:	000015a3 	.word	0x000015a3
    1218:	00001437 	.word	0x00001437
    121c:	000015a3 	.word	0x000015a3
    1220:	000015a3 	.word	0x000015a3
    1224:	00001467 	.word	0x00001467
    1228:	000015a3 	.word	0x000015a3
    122c:	000015a3 	.word	0x000015a3
    1230:	000015a3 	.word	0x000015a3
    1234:	000015a3 	.word	0x000015a3
    1238:	000015a3 	.word	0x000015a3
    123c:	000015a3 	.word	0x000015a3
    1240:	000015a3 	.word	0x000015a3
    1244:	000015a3 	.word	0x000015a3
    1248:	000015a3 	.word	0x000015a3
    124c:	000015a3 	.word	0x000015a3
    1250:	000015a3 	.word	0x000015a3
    1254:	000015a3 	.word	0x000015a3
    1258:	000015a3 	.word	0x000015a3
    125c:	000015a3 	.word	0x000015a3
    1260:	000015a3 	.word	0x000015a3
    1264:	000015a3 	.word	0x000015a3
    1268:	000015a3 	.word	0x000015a3
    126c:	000015a3 	.word	0x000015a3
    1270:	000015a3 	.word	0x000015a3
    1274:	000015a3 	.word	0x000015a3
    1278:	000015a3 	.word	0x000015a3
    127c:	000015a3 	.word	0x000015a3
    1280:	000015a3 	.word	0x000015a3
    1284:	000015a3 	.word	0x000015a3
    1288:	000015a3 	.word	0x000015a3
    128c:	000015a3 	.word	0x000015a3
    1290:	000015a3 	.word	0x000015a3
    1294:	000015a3 	.word	0x000015a3
    1298:	000015a3 	.word	0x000015a3
    129c:	000015a3 	.word	0x000015a3
    12a0:	000015a3 	.word	0x000015a3
    12a4:	000015a3 	.word	0x000015a3
    12a8:	000015a3 	.word	0x000015a3
    12ac:	000014e5 	.word	0x000014e5
    12b0:	000015a3 	.word	0x000015a3
    12b4:	000015a3 	.word	0x000015a3
    12b8:	000015a3 	.word	0x000015a3
    12bc:	000015a3 	.word	0x000015a3
    12c0:	000015a3 	.word	0x000015a3
    12c4:	000015a3 	.word	0x000015a3
    12c8:	000015a3 	.word	0x000015a3
    12cc:	000015a3 	.word	0x000015a3
    12d0:	000015a3 	.word	0x000015a3
    12d4:	000015a3 	.word	0x000015a3
    12d8:	000015a3 	.word	0x000015a3
    12dc:	000015a3 	.word	0x000015a3
    12e0:	000015a3 	.word	0x000015a3
    12e4:	000015a3 	.word	0x000015a3
    12e8:	000015a3 	.word	0x000015a3
    12ec:	000014ff 	.word	0x000014ff
    12f0:	000015a3 	.word	0x000015a3
    12f4:	000015a3 	.word	0x000015a3
    12f8:	000015a3 	.word	0x000015a3
    12fc:	000015a3 	.word	0x000015a3
    1300:	000015a3 	.word	0x000015a3
    1304:	000015a3 	.word	0x000015a3
    1308:	000015a3 	.word	0x000015a3
    130c:	000015a3 	.word	0x000015a3
    1310:	000015a3 	.word	0x000015a3
    1314:	000015a3 	.word	0x000015a3
    1318:	000015a3 	.word	0x000015a3
    131c:	000015a3 	.word	0x000015a3
    1320:	000015a3 	.word	0x000015a3
    1324:	000015a3 	.word	0x000015a3
    1328:	00001519 	.word	0x00001519
    132c:	0000152f 	.word	0x0000152f
    1330:	000015a3 	.word	0x000015a3
    1334:	000015a3 	.word	0x000015a3
    1338:	000015a3 	.word	0x000015a3
    133c:	000015a3 	.word	0x000015a3
    1340:	000015a3 	.word	0x000015a3
    1344:	000015a3 	.word	0x000015a3
    1348:	000015a3 	.word	0x000015a3
    134c:	000015a3 	.word	0x000015a3
    1350:	000015a3 	.word	0x000015a3
    1354:	000015a3 	.word	0x000015a3
    1358:	000015a3 	.word	0x000015a3
    135c:	000015a3 	.word	0x000015a3
    1360:	000015a3 	.word	0x000015a3
    1364:	000015a3 	.word	0x000015a3
    1368:	000015a3 	.word	0x000015a3
    136c:	00001569 	.word	0x00001569
			case 1: // FN01 BPP N set sprite bitS  per pixels 1,2,4
				sprite_bpp=(vms.b1&0xf)/2; 
    1370:	4b14      	ldr	r3, [pc, #80]	; (13c4 <chip_vm+0xeb8>)
    1372:	7e1b      	ldrb	r3, [r3, #24]
    1374:	f003 030f 	and.w	r3, r3, #15
    1378:	0fda      	lsrs	r2, r3, #31
    137a:	4413      	add	r3, r2
    137c:	105b      	asrs	r3, r3, #1
    137e:	b2da      	uxtb	r2, r3
    1380:	4b12      	ldr	r3, [pc, #72]	; (13cc <chip_vm+0xec0>)
    1382:	701a      	strb	r2, [r3, #0]
				break;
    1384:	e110      	b.n	15a8 <chip_vm+0x109c>
			case 0x07: // FX07  LD VX, DT   VX := game_timer
				vms.var[x]=game_timer;
    1386:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    138a:	4a11      	ldr	r2, [pc, #68]	; (13d0 <chip_vm+0xec4>)
    138c:	8812      	ldrh	r2, [r2, #0]
    138e:	b292      	uxth	r2, r2
    1390:	b2d1      	uxtb	r1, r2
    1392:	4a0c      	ldr	r2, [pc, #48]	; (13c4 <chip_vm+0xeb8>)
    1394:	4413      	add	r3, r2
    1396:	460a      	mov	r2, r1
    1398:	719a      	strb	r2, [r3, #6]
				break;
    139a:	e105      	b.n	15a8 <chip_vm+0x109c>
			case 0x0a: // FX0A  LD VX, K  ; wait for key down and put it in VX.
				vms.var[x]=btn_wait_any();
    139c:	f897 402e 	ldrb.w	r4, [r7, #46]	; 0x2e
    13a0:	f000 fd0e 	bl	1dc0 <btn_wait_any>
    13a4:	4603      	mov	r3, r0
    13a6:	461a      	mov	r2, r3
    13a8:	4b06      	ldr	r3, [pc, #24]	; (13c4 <chip_vm+0xeb8>)
    13aa:	4423      	add	r3, r4
    13ac:	719a      	strb	r2, [r3, #6]
				break;
    13ae:	e0fb      	b.n	15a8 <chip_vm+0x109c>
			case 0x15: // FX15  LD DT, VX  ; initialize game_timer with value in VX.
				game_timer=vms.var[x];
    13b0:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    13b4:	4a03      	ldr	r2, [pc, #12]	; (13c4 <chip_vm+0xeb8>)
    13b6:	4413      	add	r3, r2
    13b8:	799b      	ldrb	r3, [r3, #6]
    13ba:	b29a      	uxth	r2, r3
    13bc:	4b04      	ldr	r3, [pc, #16]	; (13d0 <chip_vm+0xec4>)
    13be:	801a      	strh	r2, [r3, #0]
				break;
    13c0:	e0f2      	b.n	15a8 <chip_vm+0x109c>
    13c2:	bf00      	nop
    13c4:	20000250 	.word	0x20000250
    13c8:	20000720 	.word	0x20000720
    13cc:	200001c4 	.word	0x200001c4
    13d0:	20004eb0 	.word	0x20004eb0
			case 0x18: // FX18  LD ST, VX  ; beep sound of length VX (multiple de 16.7 msec)
				tone(523,vms.var[x]);
    13d4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    13d8:	4a7e      	ldr	r2, [pc, #504]	; (15d4 <chip_vm+0x10c8>)
    13da:	4413      	add	r3, r2
    13dc:	799b      	ldrb	r3, [r3, #6]
    13de:	b29b      	uxth	r3, r3
    13e0:	4619      	mov	r1, r3
    13e2:	f240 200b 	movw	r0, #523	; 0x20b
    13e6:	f003 f873 	bl	44d0 <tone>
				break;
    13ea:	e0dd      	b.n	15a8 <chip_vm+0x109c>
			case 0x1e: // FX1E  ADD I, VX  ;  I := I + VX
				vms.ix += vms.var[x];
    13ec:	4b79      	ldr	r3, [pc, #484]	; (15d4 <chip_vm+0x10c8>)
    13ee:	885a      	ldrh	r2, [r3, #2]
    13f0:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    13f4:	4977      	ldr	r1, [pc, #476]	; (15d4 <chip_vm+0x10c8>)
    13f6:	440b      	add	r3, r1
    13f8:	799b      	ldrb	r3, [r3, #6]
    13fa:	b29b      	uxth	r3, r3
    13fc:	4413      	add	r3, r2
    13fe:	b29a      	uxth	r2, r3
    1400:	4b74      	ldr	r3, [pc, #464]	; (15d4 <chip_vm+0x10c8>)
    1402:	805a      	strh	r2, [r3, #2]
				break;
    1404:	e0d0      	b.n	15a8 <chip_vm+0x109c>
			case 0x29: // FX29  LD F,VX   ; set I to point to character VX in FONT_SHEX table.
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
    1406:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    140a:	4a72      	ldr	r2, [pc, #456]	; (15d4 <chip_vm+0x10c8>)
    140c:	4413      	add	r3, r2
    140e:	799b      	ldrb	r3, [r3, #6]
    1410:	b29b      	uxth	r3, r3
    1412:	461a      	mov	r2, r3
    1414:	0052      	lsls	r2, r2, #1
    1416:	4413      	add	r3, r2
    1418:	005b      	lsls	r3, r3, #1
    141a:	b29a      	uxth	r2, r3
    141c:	4b6e      	ldr	r3, [pc, #440]	; (15d8 <chip_vm+0x10cc>)
    141e:	b29b      	uxth	r3, r3
    1420:	4413      	add	r3, r2
    1422:	b29a      	uxth	r2, r3
    1424:	4b6b      	ldr	r3, [pc, #428]	; (15d4 <chip_vm+0x10c8>)
    1426:	805a      	strh	r2, [r3, #2]
				vms.sprite_mem=FLASH_MEM;
    1428:	4b6a      	ldr	r3, [pc, #424]	; (15d4 <chip_vm+0x10c8>)
    142a:	2201      	movs	r2, #1
    142c:	715a      	strb	r2, [r3, #5]
				select_font(FONT_SHEX);
    142e:	2000      	movs	r0, #0
    1430:	f003 fac2 	bl	49b8 <select_font>
				break;
    1434:	e0b8      	b.n	15a8 <chip_vm+0x109c>
			case 0x30: // FX30 LD LF,VX  set I to point to character VX in FONT_LHEX table
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
    1436:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    143a:	4a66      	ldr	r2, [pc, #408]	; (15d4 <chip_vm+0x10c8>)
    143c:	4413      	add	r3, r2
    143e:	799b      	ldrb	r3, [r3, #6]
    1440:	b29b      	uxth	r3, r3
    1442:	461a      	mov	r2, r3
    1444:	0092      	lsls	r2, r2, #2
    1446:	4413      	add	r3, r2
    1448:	005b      	lsls	r3, r3, #1
    144a:	b29a      	uxth	r2, r3
    144c:	4b63      	ldr	r3, [pc, #396]	; (15dc <chip_vm+0x10d0>)
    144e:	b29b      	uxth	r3, r3
    1450:	4413      	add	r3, r2
    1452:	b29a      	uxth	r2, r3
    1454:	4b5f      	ldr	r3, [pc, #380]	; (15d4 <chip_vm+0x10c8>)
    1456:	805a      	strh	r2, [r3, #2]
				vms.sprite_mem=FLASH_MEM;
    1458:	4b5e      	ldr	r3, [pc, #376]	; (15d4 <chip_vm+0x10c8>)
    145a:	2201      	movs	r2, #1
    145c:	715a      	strb	r2, [r3, #5]
				select_font(FONT_LHEX);
    145e:	2001      	movs	r0, #1
    1460:	f003 faaa 	bl	49b8 <select_font>
				break;
    1464:	e0a0      	b.n	15a8 <chip_vm+0x109c>
			case 0x33: // FX33 LD B, VX  ;  set I to point BCD value of VX, i.e. M[I]..M[I+2]
				n=vms.var[x];
    1466:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    146a:	4a5a      	ldr	r2, [pc, #360]	; (15d4 <chip_vm+0x10c8>)
    146c:	4413      	add	r3, r2
    146e:	799b      	ldrb	r3, [r3, #6]
    1470:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
				block[2]=n%10;
    1474:	f897 202c 	ldrb.w	r2, [r7, #44]	; 0x2c
    1478:	4b59      	ldr	r3, [pc, #356]	; (15e0 <chip_vm+0x10d4>)
    147a:	fba3 1302 	umull	r1, r3, r3, r2
    147e:	08d9      	lsrs	r1, r3, #3
    1480:	460b      	mov	r3, r1
    1482:	009b      	lsls	r3, r3, #2
    1484:	440b      	add	r3, r1
    1486:	005b      	lsls	r3, r3, #1
    1488:	1ad3      	subs	r3, r2, r3
    148a:	b2da      	uxtb	r2, r3
    148c:	4b55      	ldr	r3, [pc, #340]	; (15e4 <chip_vm+0x10d8>)
    148e:	709a      	strb	r2, [r3, #2]
				n /=10;
    1490:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
    1494:	4a52      	ldr	r2, [pc, #328]	; (15e0 <chip_vm+0x10d4>)
    1496:	fba2 2303 	umull	r2, r3, r2, r3
    149a:	08db      	lsrs	r3, r3, #3
    149c:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
				block[1]=n%10;
    14a0:	f897 202c 	ldrb.w	r2, [r7, #44]	; 0x2c
    14a4:	4b4e      	ldr	r3, [pc, #312]	; (15e0 <chip_vm+0x10d4>)
    14a6:	fba3 1302 	umull	r1, r3, r3, r2
    14aa:	08d9      	lsrs	r1, r3, #3
    14ac:	460b      	mov	r3, r1
    14ae:	009b      	lsls	r3, r3, #2
    14b0:	440b      	add	r3, r1
    14b2:	005b      	lsls	r3, r3, #1
    14b4:	1ad3      	subs	r3, r2, r3
    14b6:	b2da      	uxtb	r2, r3
    14b8:	4b4a      	ldr	r3, [pc, #296]	; (15e4 <chip_vm+0x10d8>)
    14ba:	705a      	strb	r2, [r3, #1]
				block[0]=n/10;
    14bc:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
    14c0:	4a47      	ldr	r2, [pc, #284]	; (15e0 <chip_vm+0x10d4>)
    14c2:	fba2 2303 	umull	r2, r3, r2, r3
    14c6:	08db      	lsrs	r3, r3, #3
    14c8:	b2da      	uxtb	r2, r3
    14ca:	4b46      	ldr	r3, [pc, #280]	; (15e4 <chip_vm+0x10d8>)
    14cc:	701a      	strb	r2, [r3, #0]
				//store_block(vms.ix,3,block);
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
    14ce:	4b41      	ldr	r3, [pc, #260]	; (15d4 <chip_vm+0x10c8>)
    14d0:	885b      	ldrh	r3, [r3, #2]
    14d2:	461a      	mov	r2, r3
    14d4:	4b44      	ldr	r3, [pc, #272]	; (15e8 <chip_vm+0x10dc>)
    14d6:	4413      	add	r3, r2
    14d8:	2203      	movs	r2, #3
    14da:	4619      	mov	r1, r3
    14dc:	4841      	ldr	r0, [pc, #260]	; (15e4 <chip_vm+0x10d8>)
    14de:	f000 fe1a 	bl	2116 <move>
				break;
    14e2:	e061      	b.n	15a8 <chip_vm+0x109c>
			case 0x55: // FX55  LD [I], VX  save registers V0..VX in ram pointed by I
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
    14e4:	4b3b      	ldr	r3, [pc, #236]	; (15d4 <chip_vm+0x10c8>)
    14e6:	885b      	ldrh	r3, [r3, #2]
    14e8:	461a      	mov	r2, r3
    14ea:	4b3f      	ldr	r3, [pc, #252]	; (15e8 <chip_vm+0x10dc>)
    14ec:	18d1      	adds	r1, r2, r3
    14ee:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    14f2:	3301      	adds	r3, #1
    14f4:	461a      	mov	r2, r3
    14f6:	483d      	ldr	r0, [pc, #244]	; (15ec <chip_vm+0x10e0>)
    14f8:	f000 fe0d 	bl	2116 <move>
				break;
    14fc:	e054      	b.n	15a8 <chip_vm+0x109c>
			case 0x65: // FX65 LD VX,[I]  load registers V0-VX from ram pointed by I
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
    14fe:	4b35      	ldr	r3, [pc, #212]	; (15d4 <chip_vm+0x10c8>)
    1500:	885b      	ldrh	r3, [r3, #2]
    1502:	461a      	mov	r2, r3
    1504:	4b38      	ldr	r3, [pc, #224]	; (15e8 <chip_vm+0x10dc>)
    1506:	18d0      	adds	r0, r2, r3
    1508:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    150c:	3301      	adds	r3, #1
    150e:	461a      	mov	r2, r3
    1510:	4936      	ldr	r1, [pc, #216]	; (15ec <chip_vm+0x10e0>)
    1512:	f000 fe00 	bl	2116 <move>
				break;
    1516:	e047      	b.n	15a8 <chip_vm+0x109c>
			case 0x74: // FX74 LD FS, N	; load flash sector register ; BPCHIP
				vms.s=(x&0x7)*FLASH_SECTOR_SIZE; // flash sector {0..7}
    1518:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    151c:	b29b      	uxth	r3, r3
    151e:	f003 0307 	and.w	r3, r3, #7
    1522:	b29b      	uxth	r3, r3
    1524:	035b      	lsls	r3, r3, #13
    1526:	b29a      	uxth	r2, r3
    1528:	4b2a      	ldr	r3, [pc, #168]	; (15d4 <chip_vm+0x10c8>)
    152a:	82da      	strh	r2, [r3, #22]
				break;			
    152c:	e03c      	b.n	15a8 <chip_vm+0x109c>
			case 0x75: // FX75 LD R,VX  ; save registers V0-VX in mcu flash  ; SCHIP, BPCHIP
				if (video_mode==VM_BPCHIP){
    152e:	4b30      	ldr	r3, [pc, #192]	; (15f0 <chip_vm+0x10e4>)
    1530:	781b      	ldrb	r3, [r3, #0]
    1532:	2b00      	cmp	r3, #0
    1534:	d10f      	bne.n	1556 <chip_vm+0x104a>
					flash_write_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
    1536:	4b27      	ldr	r3, [pc, #156]	; (15d4 <chip_vm+0x10c8>)
    1538:	8adb      	ldrh	r3, [r3, #22]
    153a:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
    153e:	4a25      	ldr	r2, [pc, #148]	; (15d4 <chip_vm+0x10c8>)
    1540:	8852      	ldrh	r2, [r2, #2]
    1542:	4413      	add	r3, r2
    1544:	4618      	mov	r0, r3
    1546:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    154a:	3301      	adds	r3, #1
    154c:	461a      	mov	r2, r3
    154e:	4927      	ldr	r1, [pc, #156]	; (15ec <chip_vm+0x10e0>)
    1550:	f000 fa7f 	bl	1a52 <flash_write_block>
				}else{
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
				}
				break;	
    1554:	e028      	b.n	15a8 <chip_vm+0x109c>
					flash_write_block((uint8_t*)(R_STORE),vms.var,x+1);
    1556:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    155a:	3301      	adds	r3, #1
    155c:	461a      	mov	r2, r3
    155e:	4923      	ldr	r1, [pc, #140]	; (15ec <chip_vm+0x10e0>)
    1560:	4824      	ldr	r0, [pc, #144]	; (15f4 <chip_vm+0x10e8>)
    1562:	f000 fa76 	bl	1a52 <flash_write_block>
				break;	
    1566:	e01f      	b.n	15a8 <chip_vm+0x109c>
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash ; SCHIP, BPCHIP
				if (video_mode==VM_BPCHIP){
    1568:	4b21      	ldr	r3, [pc, #132]	; (15f0 <chip_vm+0x10e4>)
    156a:	781b      	ldrb	r3, [r3, #0]
    156c:	2b00      	cmp	r3, #0
    156e:	d10f      	bne.n	1590 <chip_vm+0x1084>
					flash_read_block((uint8_t*)(PERSIST_STORE+vms.s+vms.ix),vms.var,x+1);
    1570:	4b18      	ldr	r3, [pc, #96]	; (15d4 <chip_vm+0x10c8>)
    1572:	8adb      	ldrh	r3, [r3, #22]
    1574:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
    1578:	4a16      	ldr	r2, [pc, #88]	; (15d4 <chip_vm+0x10c8>)
    157a:	8852      	ldrh	r2, [r2, #2]
    157c:	4413      	add	r3, r2
    157e:	4618      	mov	r0, r3
    1580:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    1584:	3301      	adds	r3, #1
    1586:	461a      	mov	r2, r3
    1588:	4918      	ldr	r1, [pc, #96]	; (15ec <chip_vm+0x10e0>)
    158a:	f000 fa43 	bl	1a14 <flash_read_block>
				}else{
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
				}
				break;
    158e:	e00b      	b.n	15a8 <chip_vm+0x109c>
					flash_read_block((uint8_t*)(R_STORE),vms.var,x+1);
    1590:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
    1594:	3301      	adds	r3, #1
    1596:	461a      	mov	r2, r3
    1598:	4914      	ldr	r1, [pc, #80]	; (15ec <chip_vm+0x10e0>)
    159a:	4816      	ldr	r0, [pc, #88]	; (15f4 <chip_vm+0x10e8>)
    159c:	f000 fa3a 	bl	1a14 <flash_read_block>
				break;
    15a0:	e002      	b.n	15a8 <chip_vm+0x109c>
			default:
				exit_code=CHIP_BAD_OPCODE;
    15a2:	2302      	movs	r3, #2
    15a4:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
			}//switch(vms.b2)
			break;	
    15a8:	bf00      	nop
 	while (exit_code==CHIP_CONTINUE){
    15aa:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    15ae:	2b00      	cmp	r3, #0
    15b0:	f43e afc5 	beq.w	53e <chip_vm+0x32>
		}//switch (vms.b1>>4)
	}//while(1)
	select_font(FONT_ASCII);
    15b4:	2002      	movs	r0, #2
    15b6:	f003 f9ff 	bl	49b8 <select_font>
	set_keymap(default_kmap);
    15ba:	480f      	ldr	r0, [pc, #60]	; (15f8 <chip_vm+0x10ec>)
    15bc:	f000 fabc 	bl	1b38 <set_keymap>
	set_video_mode(VM_BPCHIP);
    15c0:	2000      	movs	r0, #0
    15c2:	f003 ff41 	bl	5448 <set_video_mode>
	return exit_code;
    15c6:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
}//schipp()
    15ca:	4618      	mov	r0, r3
    15cc:	3734      	adds	r7, #52	; 0x34
    15ce:	46bd      	mov	sp, r7
    15d0:	bd90      	pop	{r4, r7, pc}
    15d2:	bf00      	nop
    15d4:	20000250 	.word	0x20000250
    15d8:	00005c7c 	.word	0x00005c7c
    15dc:	00005cdc 	.word	0x00005cdc
    15e0:	cccccccd 	.word	0xcccccccd
    15e4:	200002ac 	.word	0x200002ac
    15e8:	20000720 	.word	0x20000720
    15ec:	20000256 	.word	0x20000256
    15f0:	200006e4 	.word	0x200006e4
    15f4:	0001fff0 	.word	0x0001fff0
    15f8:	000060a4 	.word	0x000060a4

000015fc <flash_enable>:
extern uint32_t _FLASH_FREE;
#define ffa  ((void*)_FLASH_FREE)

// activation interface de programmation
//mémoire flash du mcu
int flash_enable(){
    15fc:	b480      	push	{r7}
    15fe:	af00      	add	r7, sp, #0
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
    1600:	4b14      	ldr	r3, [pc, #80]	; (1654 <flash_enable+0x58>)
    1602:	2200      	movs	r2, #0
    1604:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
    1606:	4b14      	ldr	r3, [pc, #80]	; (1658 <flash_enable+0x5c>)
    1608:	681b      	ldr	r3, [r3, #0]
    160a:	f003 0301 	and.w	r3, r3, #1
    160e:	2b00      	cmp	r3, #0
    1610:	d10c      	bne.n	162c <flash_enable+0x30>
		RCC->CR|=RCC_CR_HSION;
    1612:	4a11      	ldr	r2, [pc, #68]	; (1658 <flash_enable+0x5c>)
    1614:	4b10      	ldr	r3, [pc, #64]	; (1658 <flash_enable+0x5c>)
    1616:	681b      	ldr	r3, [r3, #0]
    1618:	f043 0301 	orr.w	r3, r3, #1
    161c:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
    161e:	bf00      	nop
    1620:	4b0d      	ldr	r3, [pc, #52]	; (1658 <flash_enable+0x5c>)
    1622:	681b      	ldr	r3, [r3, #0]
    1624:	f003 0302 	and.w	r3, r3, #2
    1628:	2b00      	cmp	r3, #0
    162a:	d0f9      	beq.n	1620 <flash_enable+0x24>
	}
	FLASH->KEYR=0x45670123;
    162c:	4b0b      	ldr	r3, [pc, #44]	; (165c <flash_enable+0x60>)
    162e:	4a0c      	ldr	r2, [pc, #48]	; (1660 <flash_enable+0x64>)
    1630:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
    1632:	4b0a      	ldr	r3, [pc, #40]	; (165c <flash_enable+0x60>)
    1634:	4a0b      	ldr	r2, [pc, #44]	; (1664 <flash_enable+0x68>)
    1636:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
    1638:	4b08      	ldr	r3, [pc, #32]	; (165c <flash_enable+0x60>)
    163a:	691b      	ldr	r3, [r3, #16]
    163c:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1640:	2b00      	cmp	r3, #0
    1642:	bf0c      	ite	eq
    1644:	2301      	moveq	r3, #1
    1646:	2300      	movne	r3, #0
    1648:	b2db      	uxtb	r3, r3
}
    164a:	4618      	mov	r0, r3
    164c:	46bd      	mov	sp, r7
    164e:	bc80      	pop	{r7}
    1650:	4770      	bx	lr
    1652:	bf00      	nop
    1654:	200002cc 	.word	0x200002cc
    1658:	40021000 	.word	0x40021000
    165c:	40022000 	.word	0x40022000
    1660:	45670123 	.word	0x45670123
    1664:	cdef89ab 	.word	0xcdef89ab

00001668 <read_byte>:
// accède le tampon si 'address' est déjà dans le tampon.
// arguments:
//		address   adresse de la mémoire flash à lire
// retourne:
//		valeur lue à cette adresse
static uint8_t read_byte(const uint8_t *address){
    1668:	b480      	push	{r7}
    166a:	b085      	sub	sp, #20
    166c:	af00      	add	r7, sp, #0
    166e:	6078      	str	r0, [r7, #4]
		uint32_t i;
		if (_addr2row(address)==row_buff.row){
    1670:	687b      	ldr	r3, [r7, #4]
    1672:	0a9b      	lsrs	r3, r3, #10
    1674:	4a0a      	ldr	r2, [pc, #40]	; (16a0 <read_byte+0x38>)
    1676:	7852      	ldrb	r2, [r2, #1]
    1678:	4293      	cmp	r3, r2
    167a:	d109      	bne.n	1690 <read_byte+0x28>
			i=((uint32_t)address&FLASH_ROW_MASK);
    167c:	687b      	ldr	r3, [r7, #4]
    167e:	f3c3 0309 	ubfx	r3, r3, #0, #10
    1682:	60fb      	str	r3, [r7, #12]
			return row_buff.data[i];
    1684:	4a06      	ldr	r2, [pc, #24]	; (16a0 <read_byte+0x38>)
    1686:	68fb      	ldr	r3, [r7, #12]
    1688:	4413      	add	r3, r2
    168a:	3302      	adds	r3, #2
    168c:	781b      	ldrb	r3, [r3, #0]
    168e:	e001      	b.n	1694 <read_byte+0x2c>
		}else{
			return *address;
    1690:	687b      	ldr	r3, [r7, #4]
    1692:	781b      	ldrb	r3, [r3, #0]
		}
}
    1694:	4618      	mov	r0, r3
    1696:	3714      	adds	r7, #20
    1698:	46bd      	mov	sp, r7
    169a:	bc80      	pop	{r7}
    169c:	4770      	bx	lr
    169e:	bf00      	nop
    16a0:	200002cc 	.word	0x200002cc

000016a4 <flash_write_hword>:
}


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
    16a4:	b480      	push	{r7}
    16a6:	b083      	sub	sp, #12
    16a8:	af00      	add	r7, sp, #0
    16aa:	6078      	str	r0, [r7, #4]
    16ac:	460b      	mov	r3, r1
    16ae:	807b      	strh	r3, [r7, #2]
	while (_flash_busy);
    16b0:	bf00      	nop
    16b2:	4b16      	ldr	r3, [pc, #88]	; (170c <flash_write_hword+0x68>)
    16b4:	68db      	ldr	r3, [r3, #12]
    16b6:	f003 0301 	and.w	r3, r3, #1
    16ba:	2b00      	cmp	r3, #0
    16bc:	d1f9      	bne.n	16b2 <flash_write_hword+0xe>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
    16be:	4a13      	ldr	r2, [pc, #76]	; (170c <flash_write_hword+0x68>)
    16c0:	4b12      	ldr	r3, [pc, #72]	; (170c <flash_write_hword+0x68>)
    16c2:	68db      	ldr	r3, [r3, #12]
    16c4:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    16c8:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PG;
    16ca:	4b10      	ldr	r3, [pc, #64]	; (170c <flash_write_hword+0x68>)
    16cc:	2201      	movs	r2, #1
    16ce:	611a      	str	r2, [r3, #16]
	*address=hword;
    16d0:	687b      	ldr	r3, [r7, #4]
    16d2:	887a      	ldrh	r2, [r7, #2]
    16d4:	801a      	strh	r2, [r3, #0]
	while (_flash_busy && ! _flash_eop);
    16d6:	bf00      	nop
    16d8:	4b0c      	ldr	r3, [pc, #48]	; (170c <flash_write_hword+0x68>)
    16da:	68db      	ldr	r3, [r3, #12]
    16dc:	f003 0301 	and.w	r3, r3, #1
    16e0:	2b00      	cmp	r3, #0
    16e2:	d005      	beq.n	16f0 <flash_write_hword+0x4c>
    16e4:	4b09      	ldr	r3, [pc, #36]	; (170c <flash_write_hword+0x68>)
    16e6:	68db      	ldr	r3, [r3, #12]
    16e8:	f003 0320 	and.w	r3, r3, #32
    16ec:	2b00      	cmp	r3, #0
    16ee:	d0f3      	beq.n	16d8 <flash_write_hword+0x34>
	return *address==hword;
    16f0:	687b      	ldr	r3, [r7, #4]
    16f2:	881b      	ldrh	r3, [r3, #0]
    16f4:	887a      	ldrh	r2, [r7, #2]
    16f6:	429a      	cmp	r2, r3
    16f8:	bf0c      	ite	eq
    16fa:	2301      	moveq	r3, #1
    16fc:	2300      	movne	r3, #0
    16fe:	b2db      	uxtb	r3, r3
}
    1700:	4618      	mov	r0, r3
    1702:	370c      	adds	r7, #12
    1704:	46bd      	mov	sp, r7
    1706:	bc80      	pop	{r7}
    1708:	4770      	bx	lr
    170a:	bf00      	nop
    170c:	40022000 	.word	0x40022000

00001710 <write_back_buffer>:

// met à jour la mémoire flash du mcu à partir du tampon 'row_buff.data'
static int write_back_buffer(){
    1710:	b580      	push	{r7, lr}
    1712:	b084      	sub	sp, #16
    1714:	af00      	add	r7, sp, #0
	int i;
	uint16_t *dest, *src;
	
	dest=_row2addr(row_buff.row);
    1716:	4b1e      	ldr	r3, [pc, #120]	; (1790 <write_back_buffer+0x80>)
    1718:	785b      	ldrb	r3, [r3, #1]
    171a:	029b      	lsls	r3, r3, #10
    171c:	60bb      	str	r3, [r7, #8]
	src=(uint16_t*)row_buff.data;
    171e:	4b1d      	ldr	r3, [pc, #116]	; (1794 <write_back_buffer+0x84>)
    1720:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1722:	2300      	movs	r3, #0
    1724:	60fb      	str	r3, [r7, #12]
    1726:	e017      	b.n	1758 <write_back_buffer+0x48>
		if (*src!=(uint16_t)FLASH_ERASED){
    1728:	687b      	ldr	r3, [r7, #4]
    172a:	881b      	ldrh	r3, [r3, #0]
    172c:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1730:	4293      	cmp	r3, r2
    1732:	d008      	beq.n	1746 <write_back_buffer+0x36>
			if (!flash_write_hword(dest,*src)) break;
    1734:	687b      	ldr	r3, [r7, #4]
    1736:	881b      	ldrh	r3, [r3, #0]
    1738:	4619      	mov	r1, r3
    173a:	68b8      	ldr	r0, [r7, #8]
    173c:	f7ff ffb2 	bl	16a4 <flash_write_hword>
    1740:	4603      	mov	r3, r0
    1742:	2b00      	cmp	r3, #0
    1744:	d00d      	beq.n	1762 <write_back_buffer+0x52>
		}
		dest++;
    1746:	68bb      	ldr	r3, [r7, #8]
    1748:	3302      	adds	r3, #2
    174a:	60bb      	str	r3, [r7, #8]
		src++;
    174c:	687b      	ldr	r3, [r7, #4]
    174e:	3302      	adds	r3, #2
    1750:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1752:	68fb      	ldr	r3, [r7, #12]
    1754:	3301      	adds	r3, #1
    1756:	60fb      	str	r3, [r7, #12]
    1758:	68fb      	ldr	r3, [r7, #12]
    175a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    175e:	dbe3      	blt.n	1728 <write_back_buffer+0x18>
    1760:	e000      	b.n	1764 <write_back_buffer+0x54>
			if (!flash_write_hword(dest,*src)) break;
    1762:	bf00      	nop
	}
	if (i>0) row_buff.flags&=~F_ERASED;
    1764:	68fb      	ldr	r3, [r7, #12]
    1766:	2b00      	cmp	r3, #0
    1768:	dd06      	ble.n	1778 <write_back_buffer+0x68>
    176a:	4b09      	ldr	r3, [pc, #36]	; (1790 <write_back_buffer+0x80>)
    176c:	781b      	ldrb	r3, [r3, #0]
    176e:	f023 0304 	bic.w	r3, r3, #4
    1772:	b2da      	uxtb	r2, r3
    1774:	4b06      	ldr	r3, [pc, #24]	; (1790 <write_back_buffer+0x80>)
    1776:	701a      	strb	r2, [r3, #0]
	if (i==FLASH_ROW_SIZE_HWORD) return 1;
    1778:	68fb      	ldr	r3, [r7, #12]
    177a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    177e:	d101      	bne.n	1784 <write_back_buffer+0x74>
    1780:	2301      	movs	r3, #1
    1782:	e000      	b.n	1786 <write_back_buffer+0x76>
	return 0;
    1784:	2300      	movs	r3, #0
}
    1786:	4618      	mov	r0, r3
    1788:	3710      	adds	r7, #16
    178a:	46bd      	mov	sp, r7
    178c:	bd80      	pop	{r7, pc}
    178e:	bf00      	nop
    1790:	200002cc 	.word	0x200002cc
    1794:	200002ce 	.word	0x200002ce

00001798 <load_row>:

// charge le tampon de ligne avec le contenu de la mémoire flash
// argument:
//		r   numéro de la ligne à charger.
static void load_row(unsigned int r){
    1798:	b480      	push	{r7}
    179a:	b087      	sub	sp, #28
    179c:	af00      	add	r7, sp, #0
    179e:	6078      	str	r0, [r7, #4]
	uint16_t *src, *dest;
	int i;
	src=(uint16_t*)_row2addr(r);
    17a0:	687b      	ldr	r3, [r7, #4]
    17a2:	029b      	lsls	r3, r3, #10
    17a4:	617b      	str	r3, [r7, #20]
	dest=(uint16_t*)row_buff.data;
    17a6:	4b15      	ldr	r3, [pc, #84]	; (17fc <load_row+0x64>)
    17a8:	613b      	str	r3, [r7, #16]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    17aa:	2300      	movs	r3, #0
    17ac:	60fb      	str	r3, [r7, #12]
    17ae:	e00a      	b.n	17c6 <load_row+0x2e>
		*dest++=*src++;
    17b0:	693b      	ldr	r3, [r7, #16]
    17b2:	1c9a      	adds	r2, r3, #2
    17b4:	613a      	str	r2, [r7, #16]
    17b6:	697a      	ldr	r2, [r7, #20]
    17b8:	1c91      	adds	r1, r2, #2
    17ba:	6179      	str	r1, [r7, #20]
    17bc:	8812      	ldrh	r2, [r2, #0]
    17be:	801a      	strh	r2, [r3, #0]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    17c0:	68fb      	ldr	r3, [r7, #12]
    17c2:	3301      	adds	r3, #1
    17c4:	60fb      	str	r3, [r7, #12]
    17c6:	68fb      	ldr	r3, [r7, #12]
    17c8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    17cc:	dbf0      	blt.n	17b0 <load_row+0x18>
	}
	row_buff.row=r;
    17ce:	687b      	ldr	r3, [r7, #4]
    17d0:	b2da      	uxtb	r2, r3
    17d2:	4b0b      	ldr	r3, [pc, #44]	; (1800 <load_row+0x68>)
    17d4:	705a      	strb	r2, [r3, #1]
	row_buff.flags&=~(F_MODIFIED);
    17d6:	4b0a      	ldr	r3, [pc, #40]	; (1800 <load_row+0x68>)
    17d8:	781b      	ldrb	r3, [r3, #0]
    17da:	f023 0301 	bic.w	r3, r3, #1
    17de:	b2da      	uxtb	r2, r3
    17e0:	4b07      	ldr	r3, [pc, #28]	; (1800 <load_row+0x68>)
    17e2:	701a      	strb	r2, [r3, #0]
	row_buff.flags|=F_LOADED;
    17e4:	4b06      	ldr	r3, [pc, #24]	; (1800 <load_row+0x68>)
    17e6:	781b      	ldrb	r3, [r3, #0]
    17e8:	f043 0302 	orr.w	r3, r3, #2
    17ec:	b2da      	uxtb	r2, r3
    17ee:	4b04      	ldr	r3, [pc, #16]	; (1800 <load_row+0x68>)
    17f0:	701a      	strb	r2, [r3, #0]
}
    17f2:	bf00      	nop
    17f4:	371c      	adds	r7, #28
    17f6:	46bd      	mov	sp, r7
    17f8:	bc80      	pop	{r7}
    17fa:	4770      	bx	lr
    17fc:	200002ce 	.word	0x200002ce
    1800:	200002cc 	.word	0x200002cc

00001804 <is_erased>:

// vérifie si une ligne est effacée
// c.à.d. ne contient que des 0xffff
static bool is_erased(unsigned row){
    1804:	b480      	push	{r7}
    1806:	b085      	sub	sp, #20
    1808:	af00      	add	r7, sp, #0
    180a:	6078      	str	r0, [r7, #4]
	uint16_t* addr;
	int i;
	
	addr=_row2addr(row);
    180c:	687b      	ldr	r3, [r7, #4]
    180e:	029b      	lsls	r3, r3, #10
    1810:	60fb      	str	r3, [r7, #12]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1812:	2300      	movs	r3, #0
    1814:	60bb      	str	r3, [r7, #8]
    1816:	e00c      	b.n	1832 <is_erased+0x2e>
		if (*addr++!=FLASH_ERASED) return false;
    1818:	68fb      	ldr	r3, [r7, #12]
    181a:	1c9a      	adds	r2, r3, #2
    181c:	60fa      	str	r2, [r7, #12]
    181e:	881b      	ldrh	r3, [r3, #0]
    1820:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1824:	4293      	cmp	r3, r2
    1826:	d001      	beq.n	182c <is_erased+0x28>
    1828:	2300      	movs	r3, #0
    182a:	e008      	b.n	183e <is_erased+0x3a>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    182c:	68bb      	ldr	r3, [r7, #8]
    182e:	3301      	adds	r3, #1
    1830:	60bb      	str	r3, [r7, #8]
    1832:	68bb      	ldr	r3, [r7, #8]
    1834:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1838:	dbee      	blt.n	1818 <is_erased+0x14>
	}
	return true;
    183a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
}
    183e:	4618      	mov	r0, r3
    1840:	3714      	adds	r7, #20
    1842:	46bd      	mov	sp, r7
    1844:	bc80      	pop	{r7}
    1846:	4770      	bx	lr

00001848 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
    1848:	b580      	push	{r7, lr}
    184a:	b086      	sub	sp, #24
    184c:	af00      	add	r7, sp, #0
    184e:	6078      	str	r0, [r7, #4]
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
    1850:	687b      	ldr	r3, [r7, #4]
    1852:	2b3f      	cmp	r3, #63	; 0x3f
    1854:	d801      	bhi.n	185a <flash_erase_row+0x12>
    1856:	2300      	movs	r3, #0
    1858:	e052      	b.n	1900 <flash_erase_row+0xb8>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
    185a:	6878      	ldr	r0, [r7, #4]
    185c:	f7ff ffd2 	bl	1804 <is_erased>
    1860:	4603      	mov	r3, r0
    1862:	2b00      	cmp	r3, #0
    1864:	d001      	beq.n	186a <flash_erase_row+0x22>
    1866:	2301      	movs	r3, #1
    1868:	e04a      	b.n	1900 <flash_erase_row+0xb8>
	addr=_row2addr(row_nbr);
    186a:	687b      	ldr	r3, [r7, #4]
    186c:	029b      	lsls	r3, r3, #10
    186e:	617b      	str	r3, [r7, #20]
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
    1870:	4b25      	ldr	r3, [pc, #148]	; (1908 <flash_erase_row+0xc0>)
    1872:	691b      	ldr	r3, [r3, #16]
    1874:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1878:	2b00      	cmp	r3, #0
    187a:	d001      	beq.n	1880 <flash_erase_row+0x38>
    187c:	2300      	movs	r3, #0
    187e:	e03f      	b.n	1900 <flash_erase_row+0xb8>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
    1880:	4a21      	ldr	r2, [pc, #132]	; (1908 <flash_erase_row+0xc0>)
    1882:	4b21      	ldr	r3, [pc, #132]	; (1908 <flash_erase_row+0xc0>)
    1884:	68db      	ldr	r3, [r3, #12]
    1886:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    188a:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PER;
    188c:	4b1e      	ldr	r3, [pc, #120]	; (1908 <flash_erase_row+0xc0>)
    188e:	2202      	movs	r2, #2
    1890:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
    1892:	4a1d      	ldr	r2, [pc, #116]	; (1908 <flash_erase_row+0xc0>)
    1894:	697b      	ldr	r3, [r7, #20]
    1896:	6153      	str	r3, [r2, #20]
	FLASH->CR|=FLASH_CR_STRT;
    1898:	4a1b      	ldr	r2, [pc, #108]	; (1908 <flash_erase_row+0xc0>)
    189a:	4b1b      	ldr	r3, [pc, #108]	; (1908 <flash_erase_row+0xc0>)
    189c:	691b      	ldr	r3, [r3, #16]
    189e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    18a2:	6113      	str	r3, [r2, #16]
	while (_flash_busy && ! _flash_eop);
    18a4:	bf00      	nop
    18a6:	4b18      	ldr	r3, [pc, #96]	; (1908 <flash_erase_row+0xc0>)
    18a8:	68db      	ldr	r3, [r3, #12]
    18aa:	f003 0301 	and.w	r3, r3, #1
    18ae:	2b00      	cmp	r3, #0
    18b0:	d005      	beq.n	18be <flash_erase_row+0x76>
    18b2:	4b15      	ldr	r3, [pc, #84]	; (1908 <flash_erase_row+0xc0>)
    18b4:	68db      	ldr	r3, [r3, #12]
    18b6:	f003 0320 	and.w	r3, r3, #32
    18ba:	2b00      	cmp	r3, #0
    18bc:	d0f3      	beq.n	18a6 <flash_erase_row+0x5e>
	addr=_row2addr(row_nbr);
    18be:	687b      	ldr	r3, [r7, #4]
    18c0:	029b      	lsls	r3, r3, #10
    18c2:	617b      	str	r3, [r7, #20]
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    18c4:	2300      	movs	r3, #0
    18c6:	60fb      	str	r3, [r7, #12]
    18c8:	e00c      	b.n	18e4 <flash_erase_row+0x9c>
		u16=*addr++;
    18ca:	697b      	ldr	r3, [r7, #20]
    18cc:	1c9a      	adds	r2, r3, #2
    18ce:	617a      	str	r2, [r7, #20]
    18d0:	881b      	ldrh	r3, [r3, #0]
    18d2:	827b      	strh	r3, [r7, #18]
		if (u16!=FLASH_ERASED) break;
    18d4:	8a7b      	ldrh	r3, [r7, #18]
    18d6:	f64f 72ff 	movw	r2, #65535	; 0xffff
    18da:	4293      	cmp	r3, r2
    18dc:	d107      	bne.n	18ee <flash_erase_row+0xa6>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    18de:	68fb      	ldr	r3, [r7, #12]
    18e0:	3301      	adds	r3, #1
    18e2:	60fb      	str	r3, [r7, #12]
    18e4:	68fb      	ldr	r3, [r7, #12]
    18e6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    18ea:	dbee      	blt.n	18ca <flash_erase_row+0x82>
    18ec:	e000      	b.n	18f0 <flash_erase_row+0xa8>
		if (u16!=FLASH_ERASED) break;
    18ee:	bf00      	nop
	}
	return u16==FLASH_ERASED;
    18f0:	8a7b      	ldrh	r3, [r7, #18]
    18f2:	f64f 72ff 	movw	r2, #65535	; 0xffff
    18f6:	4293      	cmp	r3, r2
    18f8:	bf0c      	ite	eq
    18fa:	2301      	moveq	r3, #1
    18fc:	2300      	movne	r3, #0
    18fe:	b2db      	uxtb	r3, r3
}
    1900:	4618      	mov	r0, r3
    1902:	3718      	adds	r7, #24
    1904:	46bd      	mov	sp, r7
    1906:	bd80      	pop	{r7, pc}
    1908:	40022000 	.word	0x40022000

0000190c <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
    190c:	b580      	push	{r7, lr}
    190e:	af00      	add	r7, sp, #0
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
    1910:	4b10      	ldr	r3, [pc, #64]	; (1954 <flash_sync+0x48>)
    1912:	781b      	ldrb	r3, [r3, #0]
    1914:	f003 0301 	and.w	r3, r3, #1
    1918:	2b00      	cmp	r3, #0
    191a:	d017      	beq.n	194c <flash_sync+0x40>
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
    191c:	4b0d      	ldr	r3, [pc, #52]	; (1954 <flash_sync+0x48>)
    191e:	785b      	ldrb	r3, [r3, #1]
    1920:	4618      	mov	r0, r3
    1922:	f7ff ff91 	bl	1848 <flash_erase_row>
    1926:	4603      	mov	r3, r0
    1928:	2b00      	cmp	r3, #0
    192a:	d00d      	beq.n	1948 <flash_sync+0x3c>
    192c:	f7ff fef0 	bl	1710 <write_back_buffer>
    1930:	4603      	mov	r3, r0
    1932:	2b00      	cmp	r3, #0
    1934:	d008      	beq.n	1948 <flash_sync+0x3c>
			row_buff.flags&=~F_MODIFIED;
    1936:	4b07      	ldr	r3, [pc, #28]	; (1954 <flash_sync+0x48>)
    1938:	781b      	ldrb	r3, [r3, #0]
    193a:	f023 0301 	bic.w	r3, r3, #1
    193e:	b2da      	uxtb	r2, r3
    1940:	4b04      	ldr	r3, [pc, #16]	; (1954 <flash_sync+0x48>)
    1942:	701a      	strb	r2, [r3, #0]
			return 1;
    1944:	2301      	movs	r3, #1
    1946:	e002      	b.n	194e <flash_sync+0x42>
		}
		return 0;
    1948:	2300      	movs	r3, #0
    194a:	e000      	b.n	194e <flash_sync+0x42>
	}
	return 1;
    194c:	2301      	movs	r3, #1
}
    194e:	4618      	mov	r0, r3
    1950:	bd80      	pop	{r7, pc}
    1952:	bf00      	nop
    1954:	200002cc 	.word	0x200002cc

00001958 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
    1958:	b480      	push	{r7}
    195a:	af00      	add	r7, sp, #0
	row_buff.flags=0;
    195c:	4b03      	ldr	r3, [pc, #12]	; (196c <flash_flush+0x14>)
    195e:	2200      	movs	r2, #0
    1960:	701a      	strb	r2, [r3, #0]
}
    1962:	bf00      	nop
    1964:	46bd      	mov	sp, r7
    1966:	bc80      	pop	{r7}
    1968:	4770      	bx	lr
    196a:	bf00      	nop
    196c:	200002cc 	.word	0x200002cc

00001970 <flash_disable>:


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
    1970:	b580      	push	{r7, lr}
    1972:	af00      	add	r7, sp, #0
	flash_sync();
    1974:	f7ff ffca 	bl	190c <flash_sync>
	row_buff.flags=0;
    1978:	4b08      	ldr	r3, [pc, #32]	; (199c <flash_disable+0x2c>)
    197a:	2200      	movs	r2, #0
    197c:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
    197e:	4a08      	ldr	r2, [pc, #32]	; (19a0 <flash_disable+0x30>)
    1980:	4b07      	ldr	r3, [pc, #28]	; (19a0 <flash_disable+0x30>)
    1982:	691b      	ldr	r3, [r3, #16]
    1984:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    1988:	6113      	str	r3, [r2, #16]
	RCC->CR&=~RCC_CR_HSION;
    198a:	4a06      	ldr	r2, [pc, #24]	; (19a4 <flash_disable+0x34>)
    198c:	4b05      	ldr	r3, [pc, #20]	; (19a4 <flash_disable+0x34>)
    198e:	681b      	ldr	r3, [r3, #0]
    1990:	f023 0301 	bic.w	r3, r3, #1
    1994:	6013      	str	r3, [r2, #0]
}
    1996:	bf00      	nop
    1998:	bd80      	pop	{r7, pc}
    199a:	bf00      	nop
    199c:	200002cc 	.word	0x200002cc
    19a0:	40022000 	.word	0x40022000
    19a4:	40021000 	.word	0x40021000

000019a8 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
    19a8:	b580      	push	{r7, lr}
    19aa:	b084      	sub	sp, #16
    19ac:	af00      	add	r7, sp, #0
    19ae:	6078      	str	r0, [r7, #4]
    19b0:	460b      	mov	r3, r1
    19b2:	70fb      	strb	r3, [r7, #3]
	uint32_t offset, row;
	
	row=_addr2row(address);
    19b4:	687b      	ldr	r3, [r7, #4]
    19b6:	0a9b      	lsrs	r3, r3, #10
    19b8:	60fb      	str	r3, [r7, #12]
	if (row<FIRST_WRITABLE_ROW) return 0;
    19ba:	68fb      	ldr	r3, [r7, #12]
    19bc:	2b3f      	cmp	r3, #63	; 0x3f
    19be:	d801      	bhi.n	19c4 <flash_write_byte+0x1c>
    19c0:	2300      	movs	r3, #0
    19c2:	e021      	b.n	1a08 <flash_write_byte+0x60>
	if (row!=row_buff.row){
    19c4:	4b12      	ldr	r3, [pc, #72]	; (1a10 <flash_write_byte+0x68>)
    19c6:	785b      	ldrb	r3, [r3, #1]
    19c8:	461a      	mov	r2, r3
    19ca:	68fb      	ldr	r3, [r7, #12]
    19cc:	429a      	cmp	r2, r3
    19ce:	d009      	beq.n	19e4 <flash_write_byte+0x3c>
		if (!flash_sync()) return 0;
    19d0:	f7ff ff9c 	bl	190c <flash_sync>
    19d4:	4603      	mov	r3, r0
    19d6:	2b00      	cmp	r3, #0
    19d8:	d101      	bne.n	19de <flash_write_byte+0x36>
    19da:	2300      	movs	r3, #0
    19dc:	e014      	b.n	1a08 <flash_write_byte+0x60>
		load_row(row);
    19de:	68f8      	ldr	r0, [r7, #12]
    19e0:	f7ff feda 	bl	1798 <load_row>
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
    19e4:	687b      	ldr	r3, [r7, #4]
    19e6:	f3c3 0309 	ubfx	r3, r3, #0, #10
    19ea:	60bb      	str	r3, [r7, #8]
	row_buff.data[offset]=b;
    19ec:	4a08      	ldr	r2, [pc, #32]	; (1a10 <flash_write_byte+0x68>)
    19ee:	68bb      	ldr	r3, [r7, #8]
    19f0:	4413      	add	r3, r2
    19f2:	3302      	adds	r3, #2
    19f4:	78fa      	ldrb	r2, [r7, #3]
    19f6:	701a      	strb	r2, [r3, #0]
	row_buff.flags|=F_MODIFIED;
    19f8:	4b05      	ldr	r3, [pc, #20]	; (1a10 <flash_write_byte+0x68>)
    19fa:	781b      	ldrb	r3, [r3, #0]
    19fc:	f043 0301 	orr.w	r3, r3, #1
    1a00:	b2da      	uxtb	r2, r3
    1a02:	4b03      	ldr	r3, [pc, #12]	; (1a10 <flash_write_byte+0x68>)
    1a04:	701a      	strb	r2, [r3, #0]
	return 1;
    1a06:	2301      	movs	r3, #1
}
    1a08:	4618      	mov	r0, r3
    1a0a:	3710      	adds	r7, #16
    1a0c:	46bd      	mov	sp, r7
    1a0e:	bd80      	pop	{r7, pc}
    1a10:	200002cc 	.word	0x200002cc

00001a14 <flash_read_block>:
// arguments:
//		address,  adresse de début du bloc.
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
    1a14:	b590      	push	{r4, r7, lr}
    1a16:	b087      	sub	sp, #28
    1a18:	af00      	add	r7, sp, #0
    1a1a:	60f8      	str	r0, [r7, #12]
    1a1c:	60b9      	str	r1, [r7, #8]
    1a1e:	607a      	str	r2, [r7, #4]
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    1a20:	2300      	movs	r3, #0
    1a22:	617b      	str	r3, [r7, #20]
    1a24:	e00d      	b.n	1a42 <flash_read_block+0x2e>
    1a26:	68bc      	ldr	r4, [r7, #8]
    1a28:	1c63      	adds	r3, r4, #1
    1a2a:	60bb      	str	r3, [r7, #8]
    1a2c:	68fb      	ldr	r3, [r7, #12]
    1a2e:	1c5a      	adds	r2, r3, #1
    1a30:	60fa      	str	r2, [r7, #12]
    1a32:	4618      	mov	r0, r3
    1a34:	f7ff fe18 	bl	1668 <read_byte>
    1a38:	4603      	mov	r3, r0
    1a3a:	7023      	strb	r3, [r4, #0]
    1a3c:	697b      	ldr	r3, [r7, #20]
    1a3e:	3301      	adds	r3, #1
    1a40:	617b      	str	r3, [r7, #20]
    1a42:	697a      	ldr	r2, [r7, #20]
    1a44:	687b      	ldr	r3, [r7, #4]
    1a46:	429a      	cmp	r2, r3
    1a48:	dbed      	blt.n	1a26 <flash_read_block+0x12>
}
    1a4a:	bf00      	nop
    1a4c:	371c      	adds	r7, #28
    1a4e:	46bd      	mov	sp, r7
    1a50:	bd90      	pop	{r4, r7, pc}

00001a52 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    1a52:	b580      	push	{r7, lr}
    1a54:	b086      	sub	sp, #24
    1a56:	af00      	add	r7, sp, #0
    1a58:	60f8      	str	r0, [r7, #12]
    1a5a:	60b9      	str	r1, [r7, #8]
    1a5c:	607a      	str	r2, [r7, #4]
	int i;
	if ((void*)address<(void*)0x10000) return 0;
    1a5e:	68fb      	ldr	r3, [r7, #12]
    1a60:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
    1a64:	d201      	bcs.n	1a6a <flash_write_block+0x18>
    1a66:	2300      	movs	r3, #0
    1a68:	e023      	b.n	1ab2 <flash_write_block+0x60>
	if (!flash_enable()) return 0;	
    1a6a:	f7ff fdc7 	bl	15fc <flash_enable>
    1a6e:	4603      	mov	r3, r0
    1a70:	2b00      	cmp	r3, #0
    1a72:	d101      	bne.n	1a78 <flash_write_block+0x26>
    1a74:	2300      	movs	r3, #0
    1a76:	e01c      	b.n	1ab2 <flash_write_block+0x60>
	for (i=0;i<size;i++){
    1a78:	2300      	movs	r3, #0
    1a7a:	617b      	str	r3, [r7, #20]
    1a7c:	e012      	b.n	1aa4 <flash_write_block+0x52>
		if (!flash_write_byte(address++,*buffer++)){
    1a7e:	68fa      	ldr	r2, [r7, #12]
    1a80:	1c53      	adds	r3, r2, #1
    1a82:	60fb      	str	r3, [r7, #12]
    1a84:	68bb      	ldr	r3, [r7, #8]
    1a86:	1c59      	adds	r1, r3, #1
    1a88:	60b9      	str	r1, [r7, #8]
    1a8a:	781b      	ldrb	r3, [r3, #0]
    1a8c:	4619      	mov	r1, r3
    1a8e:	4610      	mov	r0, r2
    1a90:	f7ff ff8a 	bl	19a8 <flash_write_byte>
    1a94:	4603      	mov	r3, r0
    1a96:	2b00      	cmp	r3, #0
    1a98:	d101      	bne.n	1a9e <flash_write_block+0x4c>
			return 0;
    1a9a:	2300      	movs	r3, #0
    1a9c:	e009      	b.n	1ab2 <flash_write_block+0x60>
	for (i=0;i<size;i++){
    1a9e:	697b      	ldr	r3, [r7, #20]
    1aa0:	3301      	adds	r3, #1
    1aa2:	617b      	str	r3, [r7, #20]
    1aa4:	697a      	ldr	r2, [r7, #20]
    1aa6:	687b      	ldr	r3, [r7, #4]
    1aa8:	429a      	cmp	r2, r3
    1aaa:	dbe8      	blt.n	1a7e <flash_write_block+0x2c>
		}
	}
	flash_disable();
    1aac:	f7ff ff60 	bl	1970 <flash_disable>
	return 1;
    1ab0:	2301      	movs	r3, #1
}
    1ab2:	4618      	mov	r0, r3
    1ab4:	3718      	adds	r7, #24
    1ab6:	46bd      	mov	sp, r7
    1ab8:	bd80      	pop	{r7, pc}
    1aba:	bf00      	nop

00001abc <btn_idx>:
// à partir de sont bitmask
// input:
//      mask masque binaire du bouton
// output:
//      idx  index dans la table
static uint8_t btn_idx(uint8_t mask){
    1abc:	b480      	push	{r7}
    1abe:	b085      	sub	sp, #20
    1ac0:	af00      	add	r7, sp, #0
    1ac2:	4603      	mov	r3, r0
    1ac4:	71fb      	strb	r3, [r7, #7]
    uint8_t idx=0;
    1ac6:	2300      	movs	r3, #0
    1ac8:	73fb      	strb	r3, [r7, #15]
    mask>>=1;
    1aca:	79fb      	ldrb	r3, [r7, #7]
    1acc:	085b      	lsrs	r3, r3, #1
    1ace:	71fb      	strb	r3, [r7, #7]
    while(mask){idx++; mask>>=1;}
    1ad0:	e005      	b.n	1ade <btn_idx+0x22>
    1ad2:	7bfb      	ldrb	r3, [r7, #15]
    1ad4:	3301      	adds	r3, #1
    1ad6:	73fb      	strb	r3, [r7, #15]
    1ad8:	79fb      	ldrb	r3, [r7, #7]
    1ada:	085b      	lsrs	r3, r3, #1
    1adc:	71fb      	strb	r3, [r7, #7]
    1ade:	79fb      	ldrb	r3, [r7, #7]
    1ae0:	2b00      	cmp	r3, #0
    1ae2:	d1f6      	bne.n	1ad2 <btn_idx+0x16>
    return idx;
    1ae4:	7bfb      	ldrb	r3, [r7, #15]
}
    1ae6:	4618      	mov	r0, r3
    1ae8:	3714      	adds	r7, #20
    1aea:	46bd      	mov	sp, r7
    1aec:	bc80      	pop	{r7}
    1aee:	4770      	bx	lr

00001af0 <btn_mask>:
// retourne la mask du bouton à partir de sa valeur hexadécimal
// input:
//      btn_value   valeur hexadécimal du bouton inscrite dans la table buttons[]
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    1af0:	b480      	push	{r7}
    1af2:	b085      	sub	sp, #20
    1af4:	af00      	add	r7, sp, #0
    1af6:	4603      	mov	r3, r0
    1af8:	71fb      	strb	r3, [r7, #7]
    int i;
    for (i=0;i<8;i++){
    1afa:	2300      	movs	r3, #0
    1afc:	60fb      	str	r3, [r7, #12]
    1afe:	e00f      	b.n	1b20 <btn_mask+0x30>
        if (buttons[i]==btn_value) return 1<<i;
    1b00:	4a0c      	ldr	r2, [pc, #48]	; (1b34 <btn_mask+0x44>)
    1b02:	68fb      	ldr	r3, [r7, #12]
    1b04:	4413      	add	r3, r2
    1b06:	781b      	ldrb	r3, [r3, #0]
    1b08:	79fa      	ldrb	r2, [r7, #7]
    1b0a:	429a      	cmp	r2, r3
    1b0c:	d105      	bne.n	1b1a <btn_mask+0x2a>
    1b0e:	2201      	movs	r2, #1
    1b10:	68fb      	ldr	r3, [r7, #12]
    1b12:	fa02 f303 	lsl.w	r3, r2, r3
    1b16:	b2db      	uxtb	r3, r3
    1b18:	e006      	b.n	1b28 <btn_mask+0x38>
    for (i=0;i<8;i++){
    1b1a:	68fb      	ldr	r3, [r7, #12]
    1b1c:	3301      	adds	r3, #1
    1b1e:	60fb      	str	r3, [r7, #12]
    1b20:	68fb      	ldr	r3, [r7, #12]
    1b22:	2b07      	cmp	r3, #7
    1b24:	ddec      	ble.n	1b00 <btn_mask+0x10>
    }
    return 255;
    1b26:	23ff      	movs	r3, #255	; 0xff
}
    1b28:	4618      	mov	r0, r3
    1b2a:	3714      	adds	r7, #20
    1b2c:	46bd      	mov	sp, r7
    1b2e:	bc80      	pop	{r7}
    1b30:	4770      	bx	lr
    1b32:	bf00      	nop
    1b34:	200006d0 	.word	0x200006d0

00001b38 <set_keymap>:

// set buttons map
void set_keymap(const uint8_t *kmap){
    1b38:	b480      	push	{r7}
    1b3a:	b085      	sub	sp, #20
    1b3c:	af00      	add	r7, sp, #0
    1b3e:	6078      	str	r0, [r7, #4]
    int i;
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    1b40:	2300      	movs	r3, #0
    1b42:	60fb      	str	r3, [r7, #12]
    1b44:	e00b      	b.n	1b5e <set_keymap+0x26>
    1b46:	68fb      	ldr	r3, [r7, #12]
    1b48:	687a      	ldr	r2, [r7, #4]
    1b4a:	4413      	add	r3, r2
    1b4c:	7819      	ldrb	r1, [r3, #0]
    1b4e:	4a08      	ldr	r2, [pc, #32]	; (1b70 <set_keymap+0x38>)
    1b50:	68fb      	ldr	r3, [r7, #12]
    1b52:	4413      	add	r3, r2
    1b54:	460a      	mov	r2, r1
    1b56:	701a      	strb	r2, [r3, #0]
    1b58:	68fb      	ldr	r3, [r7, #12]
    1b5a:	3301      	adds	r3, #1
    1b5c:	60fb      	str	r3, [r7, #12]
    1b5e:	68fb      	ldr	r3, [r7, #12]
    1b60:	2b07      	cmp	r3, #7
    1b62:	ddf0      	ble.n	1b46 <set_keymap+0xe>
}
    1b64:	bf00      	nop
    1b66:	3714      	adds	r7, #20
    1b68:	46bd      	mov	sp, r7
    1b6a:	bc80      	pop	{r7}
    1b6c:	4770      	bx	lr
    1b6e:	bf00      	nop
    1b70:	200006d0 	.word	0x200006d0

00001b74 <gamepad_init>:

// initialisation matérielle.
void gamepad_init(){
    1b74:	b580      	push	{r7, lr}
    1b76:	af00      	add	r7, sp, #0
    config_pin(GAMEPAD_PORT,MOSI_PIN,OUTPUT_PP_SLOW);
    1b78:	2202      	movs	r2, #2
    1b7a:	210e      	movs	r1, #14
    1b7c:	4807      	ldr	r0, [pc, #28]	; (1b9c <gamepad_init+0x28>)
    1b7e:	f000 fc31 	bl	23e4 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    1b82:	2202      	movs	r2, #2
    1b84:	210d      	movs	r1, #13
    1b86:	4805      	ldr	r0, [pc, #20]	; (1b9c <gamepad_init+0x28>)
    1b88:	f000 fc2c 	bl	23e4 <config_pin>
//    config_pin(GAMEPAD_PORT,MISO_PIN,INPUT_PULL);
    btn_state=0xff;
    1b8c:	4b04      	ldr	r3, [pc, #16]	; (1ba0 <gamepad_init+0x2c>)
    1b8e:	22ff      	movs	r2, #255	; 0xff
    1b90:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1b92:	4804      	ldr	r0, [pc, #16]	; (1ba4 <gamepad_init+0x30>)
    1b94:	f7ff ffd0 	bl	1b38 <set_keymap>
}
    1b98:	bf00      	nop
    1b9a:	bd80      	pop	{r7, pc}
    1b9c:	40010c00 	.word	0x40010c00
    1ba0:	20002720 	.word	0x20002720
    1ba4:	000060a4 	.word	0x000060a4

00001ba8 <count_zeros>:

static int count_zeros(uint8_t u8){
    1ba8:	b480      	push	{r7}
    1baa:	b085      	sub	sp, #20
    1bac:	af00      	add	r7, sp, #0
    1bae:	4603      	mov	r3, r0
    1bb0:	71fb      	strb	r3, [r7, #7]
    int count=0;
    1bb2:	2300      	movs	r3, #0
    1bb4:	60fb      	str	r3, [r7, #12]
    while (u8){
    1bb6:	e00a      	b.n	1bce <count_zeros+0x26>
        if (!(u8&1)) count++;
    1bb8:	79fb      	ldrb	r3, [r7, #7]
    1bba:	f003 0301 	and.w	r3, r3, #1
    1bbe:	2b00      	cmp	r3, #0
    1bc0:	d102      	bne.n	1bc8 <count_zeros+0x20>
    1bc2:	68fb      	ldr	r3, [r7, #12]
    1bc4:	3301      	adds	r3, #1
    1bc6:	60fb      	str	r3, [r7, #12]
        u8>>=1;
    1bc8:	79fb      	ldrb	r3, [r7, #7]
    1bca:	085b      	lsrs	r3, r3, #1
    1bcc:	71fb      	strb	r3, [r7, #7]
    while (u8){
    1bce:	79fb      	ldrb	r3, [r7, #7]
    1bd0:	2b00      	cmp	r3, #0
    1bd2:	d1f1      	bne.n	1bb8 <count_zeros+0x10>
    }
    return count;
    1bd4:	68fb      	ldr	r3, [r7, #12]
}
    1bd6:	4618      	mov	r0, r3
    1bd8:	3714      	adds	r7, #20
    1bda:	46bd      	mov	sp, r7
    1bdc:	bc80      	pop	{r7}
    1bde:	4770      	bx	lr

00001be0 <shift_out>:

static uint8_t shift_out(uint8_t byte){
    1be0:	b480      	push	{r7}
    1be2:	b085      	sub	sp, #20
    1be4:	af00      	add	r7, sp, #0
    1be6:	4603      	mov	r3, r0
    1be8:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=1,rx_byte=0;
    1bea:	2301      	movs	r3, #1
    1bec:	73fb      	strb	r3, [r7, #15]
    1bee:	2300      	movs	r3, #0
    1bf0:	73bb      	strb	r3, [r7, #14]

#define _clk_delay()  asm volatile("nop\n\tnop\n\tnop\n\t")

    while (mask){
    1bf2:	e031      	b.n	1c58 <shift_out+0x78>
        if (byte&mask){
    1bf4:	79fa      	ldrb	r2, [r7, #7]
    1bf6:	7bfb      	ldrb	r3, [r7, #15]
    1bf8:	4013      	ands	r3, r2
    1bfa:	b2db      	uxtb	r3, r3
    1bfc:	2b00      	cmp	r3, #0
    1bfe:	d006      	beq.n	1c0e <shift_out+0x2e>
            GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
    1c00:	4a24      	ldr	r2, [pc, #144]	; (1c94 <shift_out+0xb4>)
    1c02:	4b24      	ldr	r3, [pc, #144]	; (1c94 <shift_out+0xb4>)
    1c04:	68db      	ldr	r3, [r3, #12]
    1c06:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    1c0a:	60d3      	str	r3, [r2, #12]
    1c0c:	e005      	b.n	1c1a <shift_out+0x3a>
        }else{
            GAMEPAD_PORT->ODR&=~(1<<MOSI_PIN);
    1c0e:	4a21      	ldr	r2, [pc, #132]	; (1c94 <shift_out+0xb4>)
    1c10:	4b20      	ldr	r3, [pc, #128]	; (1c94 <shift_out+0xb4>)
    1c12:	68db      	ldr	r3, [r3, #12]
    1c14:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
    1c18:	60d3      	str	r3, [r2, #12]
        }
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    1c1a:	4a1e      	ldr	r2, [pc, #120]	; (1c94 <shift_out+0xb4>)
    1c1c:	4b1d      	ldr	r3, [pc, #116]	; (1c94 <shift_out+0xb4>)
    1c1e:	68db      	ldr	r3, [r3, #12]
    1c20:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1c24:	60d3      	str	r3, [r2, #12]
        _clk_delay();
    1c26:	bf00      	nop
    1c28:	bf00      	nop
    1c2a:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    1c2c:	4a19      	ldr	r2, [pc, #100]	; (1c94 <shift_out+0xb4>)
    1c2e:	4b19      	ldr	r3, [pc, #100]	; (1c94 <shift_out+0xb4>)
    1c30:	68db      	ldr	r3, [r3, #12]
    1c32:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    1c36:	60d3      	str	r3, [r2, #12]
        rx_byte>>=1;
    1c38:	7bbb      	ldrb	r3, [r7, #14]
    1c3a:	085b      	lsrs	r3, r3, #1
    1c3c:	73bb      	strb	r3, [r7, #14]
        if (GAMEPAD_PORT->IDR&(1<<MISO_PIN)) rx_byte|=128;    
    1c3e:	4b15      	ldr	r3, [pc, #84]	; (1c94 <shift_out+0xb4>)
    1c40:	689b      	ldr	r3, [r3, #8]
    1c42:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
    1c46:	2b00      	cmp	r3, #0
    1c48:	d003      	beq.n	1c52 <shift_out+0x72>
    1c4a:	7bbb      	ldrb	r3, [r7, #14]
    1c4c:	f063 037f 	orn	r3, r3, #127	; 0x7f
    1c50:	73bb      	strb	r3, [r7, #14]
        mask<<=1;
    1c52:	7bfb      	ldrb	r3, [r7, #15]
    1c54:	005b      	lsls	r3, r3, #1
    1c56:	73fb      	strb	r3, [r7, #15]
    while (mask){
    1c58:	7bfb      	ldrb	r3, [r7, #15]
    1c5a:	2b00      	cmp	r3, #0
    1c5c:	d1ca      	bne.n	1bf4 <shift_out+0x14>
    }
    GAMEPAD_PORT->ODR|=(1<<MOSI_PIN);
    1c5e:	4a0d      	ldr	r2, [pc, #52]	; (1c94 <shift_out+0xb4>)
    1c60:	4b0c      	ldr	r3, [pc, #48]	; (1c94 <shift_out+0xb4>)
    1c62:	68db      	ldr	r3, [r3, #12]
    1c64:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    1c68:	60d3      	str	r3, [r2, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    1c6a:	4a0a      	ldr	r2, [pc, #40]	; (1c94 <shift_out+0xb4>)
    1c6c:	4b09      	ldr	r3, [pc, #36]	; (1c94 <shift_out+0xb4>)
    1c6e:	68db      	ldr	r3, [r3, #12]
    1c70:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1c74:	60d3      	str	r3, [r2, #12]
    _clk_delay();
    1c76:	bf00      	nop
    1c78:	bf00      	nop
    1c7a:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    1c7c:	4a05      	ldr	r2, [pc, #20]	; (1c94 <shift_out+0xb4>)
    1c7e:	4b05      	ldr	r3, [pc, #20]	; (1c94 <shift_out+0xb4>)
    1c80:	68db      	ldr	r3, [r3, #12]
    1c82:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    1c86:	60d3      	str	r3, [r2, #12]
    return rx_byte;
    1c88:	7bbb      	ldrb	r3, [r7, #14]
}
    1c8a:	4618      	mov	r0, r3
    1c8c:	3714      	adds	r7, #20
    1c8e:	46bd      	mov	sp, r7
    1c90:	bc80      	pop	{r7}
    1c92:	4770      	bx	lr
    1c94:	40010c00 	.word	0x40010c00

00001c98 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1c98:	b580      	push	{r7, lr}
    1c9a:	af00      	add	r7, sp, #0
    btn_state=shift_out(0xfe);
    1c9c:	20fe      	movs	r0, #254	; 0xfe
    1c9e:	f7ff ff9f 	bl	1be0 <shift_out>
    1ca2:	4603      	mov	r3, r0
    1ca4:	461a      	mov	r2, r3
    1ca6:	4b0d      	ldr	r3, [pc, #52]	; (1cdc <read_gamepad+0x44>)
    1ca8:	701a      	strb	r2, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1caa:	4b0c      	ldr	r3, [pc, #48]	; (1cdc <read_gamepad+0x44>)
    1cac:	781b      	ldrb	r3, [r3, #0]
    1cae:	b2db      	uxtb	r3, r3
    1cb0:	f003 0312 	and.w	r3, r3, #18
    1cb4:	2b00      	cmp	r3, #0
    1cb6:	d10f      	bne.n	1cd8 <read_gamepad+0x40>
        while (btn_state!=0xff){
    1cb8:	e006      	b.n	1cc8 <read_gamepad+0x30>
            btn_state=shift_out(0xfe);
    1cba:	20fe      	movs	r0, #254	; 0xfe
    1cbc:	f7ff ff90 	bl	1be0 <shift_out>
    1cc0:	4603      	mov	r3, r0
    1cc2:	461a      	mov	r2, r3
    1cc4:	4b05      	ldr	r3, [pc, #20]	; (1cdc <read_gamepad+0x44>)
    1cc6:	701a      	strb	r2, [r3, #0]
        while (btn_state!=0xff){
    1cc8:	4b04      	ldr	r3, [pc, #16]	; (1cdc <read_gamepad+0x44>)
    1cca:	781b      	ldrb	r3, [r3, #0]
    1ccc:	b2db      	uxtb	r3, r3
    1cce:	2bff      	cmp	r3, #255	; 0xff
    1cd0:	d1f3      	bne.n	1cba <read_gamepad+0x22>
        };
        _reset_mcu();
    1cd2:	4b03      	ldr	r3, [pc, #12]	; (1ce0 <read_gamepad+0x48>)
    1cd4:	4a03      	ldr	r2, [pc, #12]	; (1ce4 <read_gamepad+0x4c>)
    1cd6:	601a      	str	r2, [r3, #0]
    }
}
    1cd8:	bf00      	nop
    1cda:	bd80      	pop	{r7, pc}
    1cdc:	20002720 	.word	0x20002720
    1ce0:	e000ed0c 	.word	0xe000ed0c
    1ce4:	05fa0004 	.word	0x05fa0004

00001ce8 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    1ce8:	b580      	push	{r7, lr}
    1cea:	b084      	sub	sp, #16
    1cec:	af00      	add	r7, sp, #0
    1cee:	4603      	mov	r3, r0
    1cf0:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1cf2:	79fb      	ldrb	r3, [r7, #7]
    1cf4:	4618      	mov	r0, r3
    1cf6:	f7ff fefb 	bl	1af0 <btn_mask>
    1cfa:	4603      	mov	r3, r0
    1cfc:	73fb      	strb	r3, [r7, #15]
    return !(btn_state&mask);
    1cfe:	4b07      	ldr	r3, [pc, #28]	; (1d1c <btn_query_down+0x34>)
    1d00:	781b      	ldrb	r3, [r3, #0]
    1d02:	b2da      	uxtb	r2, r3
    1d04:	7bfb      	ldrb	r3, [r7, #15]
    1d06:	4013      	ands	r3, r2
    1d08:	b2db      	uxtb	r3, r3
    1d0a:	2b00      	cmp	r3, #0
    1d0c:	bf0c      	ite	eq
    1d0e:	2301      	moveq	r3, #1
    1d10:	2300      	movne	r3, #0
    1d12:	b2db      	uxtb	r3, r3
}
    1d14:	4618      	mov	r0, r3
    1d16:	3710      	adds	r7, #16
    1d18:	46bd      	mov	sp, r7
    1d1a:	bd80      	pop	{r7, pc}
    1d1c:	20002720 	.word	0x20002720

00001d20 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    1d20:	b580      	push	{r7, lr}
    1d22:	b084      	sub	sp, #16
    1d24:	af00      	add	r7, sp, #0
    1d26:	4603      	mov	r3, r0
    1d28:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1d2a:	79fb      	ldrb	r3, [r7, #7]
    1d2c:	4618      	mov	r0, r3
    1d2e:	f7ff fedf 	bl	1af0 <btn_mask>
    1d32:	4603      	mov	r3, r0
    1d34:	72fb      	strb	r3, [r7, #11]
    int frame_count=0;
    1d36:	2300      	movs	r3, #0
    1d38:	60fb      	str	r3, [r7, #12]
    while (frame_count<3){
    1d3a:	e00f      	b.n	1d5c <btn_wait_down+0x3c>
        frame_sync();
    1d3c:	f003 fb64 	bl	5408 <frame_sync>
        if (!(btn_state&mask)){
    1d40:	4b0a      	ldr	r3, [pc, #40]	; (1d6c <btn_wait_down+0x4c>)
    1d42:	781b      	ldrb	r3, [r3, #0]
    1d44:	b2da      	uxtb	r2, r3
    1d46:	7afb      	ldrb	r3, [r7, #11]
    1d48:	4013      	ands	r3, r2
    1d4a:	b2db      	uxtb	r3, r3
    1d4c:	2b00      	cmp	r3, #0
    1d4e:	d103      	bne.n	1d58 <btn_wait_down+0x38>
            frame_count++;
    1d50:	68fb      	ldr	r3, [r7, #12]
    1d52:	3301      	adds	r3, #1
    1d54:	60fb      	str	r3, [r7, #12]
    1d56:	e001      	b.n	1d5c <btn_wait_down+0x3c>
        }else{
            frame_count=0;
    1d58:	2300      	movs	r3, #0
    1d5a:	60fb      	str	r3, [r7, #12]
    while (frame_count<3){
    1d5c:	68fb      	ldr	r3, [r7, #12]
    1d5e:	2b02      	cmp	r3, #2
    1d60:	ddec      	ble.n	1d3c <btn_wait_down+0x1c>
        }
    }
}
    1d62:	bf00      	nop
    1d64:	3710      	adds	r7, #16
    1d66:	46bd      	mov	sp, r7
    1d68:	bd80      	pop	{r7, pc}
    1d6a:	bf00      	nop
    1d6c:	20002720 	.word	0x20002720

00001d70 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1d70:	b580      	push	{r7, lr}
    1d72:	b084      	sub	sp, #16
    1d74:	af00      	add	r7, sp, #0
    1d76:	4603      	mov	r3, r0
    1d78:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1d7a:	79fb      	ldrb	r3, [r7, #7]
    1d7c:	4618      	mov	r0, r3
    1d7e:	f7ff feb7 	bl	1af0 <btn_mask>
    1d82:	4603      	mov	r3, r0
    1d84:	72fb      	strb	r3, [r7, #11]
    int frame_count=0;
    1d86:	2300      	movs	r3, #0
    1d88:	60fb      	str	r3, [r7, #12]
    while (frame_count<3){
    1d8a:	e00f      	b.n	1dac <btn_wait_up+0x3c>
        frame_sync();
    1d8c:	f003 fb3c 	bl	5408 <frame_sync>
        if ((btn_state&mask)){
    1d90:	4b0a      	ldr	r3, [pc, #40]	; (1dbc <btn_wait_up+0x4c>)
    1d92:	781b      	ldrb	r3, [r3, #0]
    1d94:	b2da      	uxtb	r2, r3
    1d96:	7afb      	ldrb	r3, [r7, #11]
    1d98:	4013      	ands	r3, r2
    1d9a:	b2db      	uxtb	r3, r3
    1d9c:	2b00      	cmp	r3, #0
    1d9e:	d003      	beq.n	1da8 <btn_wait_up+0x38>
            frame_count++;
    1da0:	68fb      	ldr	r3, [r7, #12]
    1da2:	3301      	adds	r3, #1
    1da4:	60fb      	str	r3, [r7, #12]
    1da6:	e001      	b.n	1dac <btn_wait_up+0x3c>
        }else{
            frame_count=0;
    1da8:	2300      	movs	r3, #0
    1daa:	60fb      	str	r3, [r7, #12]
    while (frame_count<3){
    1dac:	68fb      	ldr	r3, [r7, #12]
    1dae:	2b02      	cmp	r3, #2
    1db0:	ddec      	ble.n	1d8c <btn_wait_up+0x1c>
        }
    }
}
    1db2:	bf00      	nop
    1db4:	3710      	adds	r7, #16
    1db6:	46bd      	mov	sp, r7
    1db8:	bd80      	pop	{r7, pc}
    1dba:	bf00      	nop
    1dbc:	20002720 	.word	0x20002720

00001dc0 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1dc0:	b580      	push	{r7, lr}
    1dc2:	b084      	sub	sp, #16
    1dc4:	af00      	add	r7, sp, #0
    uint8_t btn, last_state=btn_state;
    1dc6:	4b19      	ldr	r3, [pc, #100]	; (1e2c <btn_wait_any+0x6c>)
    1dc8:	781b      	ldrb	r3, [r3, #0]
    1dca:	73fb      	strb	r3, [r7, #15]
    int frame_count=0;
    1dcc:	2300      	movs	r3, #0
    1dce:	60bb      	str	r3, [r7, #8]
    while (frame_count<3){
    1dd0:	e015      	b.n	1dfe <btn_wait_any+0x3e>
        frame_sync();
    1dd2:	f003 fb19 	bl	5408 <frame_sync>
        if (last_state!=btn_state){
    1dd6:	4b15      	ldr	r3, [pc, #84]	; (1e2c <btn_wait_any+0x6c>)
    1dd8:	781b      	ldrb	r3, [r3, #0]
    1dda:	b2db      	uxtb	r3, r3
    1ddc:	7bfa      	ldrb	r2, [r7, #15]
    1dde:	429a      	cmp	r2, r3
    1de0:	d005      	beq.n	1dee <btn_wait_any+0x2e>
            frame_count=0;
    1de2:	2300      	movs	r3, #0
    1de4:	60bb      	str	r3, [r7, #8]
            last_state=btn_state;
    1de6:	4b11      	ldr	r3, [pc, #68]	; (1e2c <btn_wait_any+0x6c>)
    1de8:	781b      	ldrb	r3, [r3, #0]
    1dea:	73fb      	strb	r3, [r7, #15]
    1dec:	e007      	b.n	1dfe <btn_wait_any+0x3e>
        }else if(btn_state!=0xff){
    1dee:	4b0f      	ldr	r3, [pc, #60]	; (1e2c <btn_wait_any+0x6c>)
    1df0:	781b      	ldrb	r3, [r3, #0]
    1df2:	b2db      	uxtb	r3, r3
    1df4:	2bff      	cmp	r3, #255	; 0xff
    1df6:	d002      	beq.n	1dfe <btn_wait_any+0x3e>
            frame_count++;
    1df8:	68bb      	ldr	r3, [r7, #8]
    1dfa:	3301      	adds	r3, #1
    1dfc:	60bb      	str	r3, [r7, #8]
    while (frame_count<3){
    1dfe:	68bb      	ldr	r3, [r7, #8]
    1e00:	2b02      	cmp	r3, #2
    1e02:	dde6      	ble.n	1dd2 <btn_wait_any+0x12>
        }       
    }
    btn=buttons[btn_idx(last_state^0xff)];
    1e04:	7bfb      	ldrb	r3, [r7, #15]
    1e06:	43db      	mvns	r3, r3
    1e08:	b2db      	uxtb	r3, r3
    1e0a:	4618      	mov	r0, r3
    1e0c:	f7ff fe56 	bl	1abc <btn_idx>
    1e10:	4603      	mov	r3, r0
    1e12:	461a      	mov	r2, r3
    1e14:	4b06      	ldr	r3, [pc, #24]	; (1e30 <btn_wait_any+0x70>)
    1e16:	5c9b      	ldrb	r3, [r3, r2]
    1e18:	71fb      	strb	r3, [r7, #7]
    // wait button release
    btn_wait_up(btn);
    1e1a:	79fb      	ldrb	r3, [r7, #7]
    1e1c:	4618      	mov	r0, r3
    1e1e:	f7ff ffa7 	bl	1d70 <btn_wait_up>
    return btn;
    1e22:	79fb      	ldrb	r3, [r7, #7]
}
    1e24:	4618      	mov	r0, r3
    1e26:	3710      	adds	r7, #16
    1e28:	46bd      	mov	sp, r7
    1e2a:	bd80      	pop	{r7, pc}
    1e2c:	20002720 	.word	0x20002720
    1e30:	200006d0 	.word	0x200006d0

00001e34 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    1e34:	b480      	push	{r7}
    1e36:	b083      	sub	sp, #12
    1e38:	af00      	add	r7, sp, #0
    1e3a:	4603      	mov	r3, r0
    1e3c:	460a      	mov	r2, r1
    1e3e:	71fb      	strb	r3, [r7, #7]
    1e40:	4613      	mov	r3, r2
    1e42:	71bb      	strb	r3, [r7, #6]
    buttons[idx]=value;
    1e44:	79fb      	ldrb	r3, [r7, #7]
    1e46:	4904      	ldr	r1, [pc, #16]	; (1e58 <btn_set_value+0x24>)
    1e48:	79ba      	ldrb	r2, [r7, #6]
    1e4a:	54ca      	strb	r2, [r1, r3]
}
    1e4c:	bf00      	nop
    1e4e:	370c      	adds	r7, #12
    1e50:	46bd      	mov	sp, r7
    1e52:	bc80      	pop	{r7}
    1e54:	4770      	bx	lr
    1e56:	bf00      	nop
    1e58:	200006d0 	.word	0x200006d0

00001e5c <get_keymap>:

// retourne la table buttons
uint8_t* get_keymap(){
    1e5c:	b480      	push	{r7}
    1e5e:	af00      	add	r7, sp, #0
    return buttons;
    1e60:	4b02      	ldr	r3, [pc, #8]	; (1e6c <get_keymap+0x10>)
}
    1e62:	4618      	mov	r0, r3
    1e64:	46bd      	mov	sp, r7
    1e66:	bc80      	pop	{r7}
    1e68:	4770      	bx	lr
    1e6a:	bf00      	nop
    1e6c:	200006d0 	.word	0x200006d0

00001e70 <btn_any_down>:

// wait for any button to be down
uint8_t btn_any_down(){
    1e70:	b580      	push	{r7, lr}
    1e72:	af00      	add	r7, sp, #0
    while (btn_state==0xff);
    1e74:	bf00      	nop
    1e76:	4b09      	ldr	r3, [pc, #36]	; (1e9c <btn_any_down+0x2c>)
    1e78:	781b      	ldrb	r3, [r3, #0]
    1e7a:	b2db      	uxtb	r3, r3
    1e7c:	2bff      	cmp	r3, #255	; 0xff
    1e7e:	d0fa      	beq.n	1e76 <btn_any_down+0x6>
    return buttons[btn_idx(btn_state^0xff)];
    1e80:	4b06      	ldr	r3, [pc, #24]	; (1e9c <btn_any_down+0x2c>)
    1e82:	781b      	ldrb	r3, [r3, #0]
    1e84:	b2db      	uxtb	r3, r3
    1e86:	43db      	mvns	r3, r3
    1e88:	b2db      	uxtb	r3, r3
    1e8a:	4618      	mov	r0, r3
    1e8c:	f7ff fe16 	bl	1abc <btn_idx>
    1e90:	4603      	mov	r3, r0
    1e92:	461a      	mov	r2, r3
    1e94:	4b02      	ldr	r3, [pc, #8]	; (1ea0 <btn_any_down+0x30>)
    1e96:	5c9b      	ldrb	r3, [r3, r2]
    
    1e98:	4618      	mov	r0, r3
    1e9a:	bd80      	pop	{r7, pc}
    1e9c:	20002720 	.word	0x20002720
    1ea0:	200006d0 	.word	0x200006d0

00001ea4 <games_count>:
    {VM_SCHIP,"uboat",UBOAT_SIZE,uboat,uboat_kmap},
    {0,"",0,NULL}
};


unsigned games_count(){
    1ea4:	b480      	push	{r7}
    1ea6:	b083      	sub	sp, #12
    1ea8:	af00      	add	r7, sp, #0
    unsigned i;
    for (i=0;;i++){
    1eaa:	2300      	movs	r3, #0
    1eac:	607b      	str	r3, [r7, #4]
        if (!games_list[i].size) break;
    1eae:	490b      	ldr	r1, [pc, #44]	; (1edc <games_count+0x38>)
    1eb0:	687a      	ldr	r2, [r7, #4]
    1eb2:	4613      	mov	r3, r2
    1eb4:	00db      	lsls	r3, r3, #3
    1eb6:	1a9b      	subs	r3, r3, r2
    1eb8:	009b      	lsls	r3, r3, #2
    1eba:	440b      	add	r3, r1
    1ebc:	3310      	adds	r3, #16
    1ebe:	681b      	ldr	r3, [r3, #0]
    1ec0:	2b00      	cmp	r3, #0
    1ec2:	d003      	beq.n	1ecc <games_count+0x28>
    for (i=0;;i++){
    1ec4:	687b      	ldr	r3, [r7, #4]
    1ec6:	3301      	adds	r3, #1
    1ec8:	607b      	str	r3, [r7, #4]
        if (!games_list[i].size) break;
    1eca:	e7f0      	b.n	1eae <games_count+0xa>
    1ecc:	bf00      	nop
    }
    return i;
    1ece:	687b      	ldr	r3, [r7, #4]
}
    1ed0:	4618      	mov	r0, r3
    1ed2:	370c      	adds	r7, #12
    1ed4:	46bd      	mov	sp, r7
    1ed6:	bc80      	pop	{r7}
    1ed8:	4770      	bx	lr
    1eda:	bf00      	nop
    1edc:	20000004 	.word	0x20000004

00001ee0 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    1ee0:	b480      	push	{r7}
    1ee2:	b085      	sub	sp, #20
    1ee4:	af00      	add	r7, sp, #0
    1ee6:	6078      	str	r0, [r7, #4]
    1ee8:	6039      	str	r1, [r7, #0]
	int result=0;
    1eea:	2300      	movs	r3, #0
    1eec:	60fb      	str	r3, [r7, #12]
	while (*s1 && *s2){
    1eee:	e018      	b.n	1f22 <strcmp+0x42>
		if (*s1<*s2){
    1ef0:	687b      	ldr	r3, [r7, #4]
    1ef2:	781a      	ldrb	r2, [r3, #0]
    1ef4:	683b      	ldr	r3, [r7, #0]
    1ef6:	781b      	ldrb	r3, [r3, #0]
    1ef8:	429a      	cmp	r2, r3
    1efa:	d203      	bcs.n	1f04 <strcmp+0x24>
			result=-1;
    1efc:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1f00:	60fb      	str	r3, [r7, #12]
			break;
    1f02:	e016      	b.n	1f32 <strcmp+0x52>
		}else if (*s1>*s2){
    1f04:	687b      	ldr	r3, [r7, #4]
    1f06:	781a      	ldrb	r2, [r3, #0]
    1f08:	683b      	ldr	r3, [r7, #0]
    1f0a:	781b      	ldrb	r3, [r3, #0]
    1f0c:	429a      	cmp	r2, r3
    1f0e:	d902      	bls.n	1f16 <strcmp+0x36>
			result=1;
    1f10:	2301      	movs	r3, #1
    1f12:	60fb      	str	r3, [r7, #12]
			break;
    1f14:	e00d      	b.n	1f32 <strcmp+0x52>
		}
		s1++;
    1f16:	687b      	ldr	r3, [r7, #4]
    1f18:	3301      	adds	r3, #1
    1f1a:	607b      	str	r3, [r7, #4]
		s2++;
    1f1c:	683b      	ldr	r3, [r7, #0]
    1f1e:	3301      	adds	r3, #1
    1f20:	603b      	str	r3, [r7, #0]
	while (*s1 && *s2){
    1f22:	687b      	ldr	r3, [r7, #4]
    1f24:	781b      	ldrb	r3, [r3, #0]
    1f26:	2b00      	cmp	r3, #0
    1f28:	d003      	beq.n	1f32 <strcmp+0x52>
    1f2a:	683b      	ldr	r3, [r7, #0]
    1f2c:	781b      	ldrb	r3, [r3, #0]
    1f2e:	2b00      	cmp	r3, #0
    1f30:	d1de      	bne.n	1ef0 <strcmp+0x10>
	}
	if (!result){
    1f32:	68fb      	ldr	r3, [r7, #12]
    1f34:	2b00      	cmp	r3, #0
    1f36:	d115      	bne.n	1f64 <strcmp+0x84>
		if (!*s1 && *s2){
    1f38:	687b      	ldr	r3, [r7, #4]
    1f3a:	781b      	ldrb	r3, [r3, #0]
    1f3c:	2b00      	cmp	r3, #0
    1f3e:	d107      	bne.n	1f50 <strcmp+0x70>
    1f40:	683b      	ldr	r3, [r7, #0]
    1f42:	781b      	ldrb	r3, [r3, #0]
    1f44:	2b00      	cmp	r3, #0
    1f46:	d003      	beq.n	1f50 <strcmp+0x70>
			result=-1;
    1f48:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1f4c:	60fb      	str	r3, [r7, #12]
    1f4e:	e009      	b.n	1f64 <strcmp+0x84>
		}else if (*s1 && !*s2) {
    1f50:	687b      	ldr	r3, [r7, #4]
    1f52:	781b      	ldrb	r3, [r3, #0]
    1f54:	2b00      	cmp	r3, #0
    1f56:	d005      	beq.n	1f64 <strcmp+0x84>
    1f58:	683b      	ldr	r3, [r7, #0]
    1f5a:	781b      	ldrb	r3, [r3, #0]
    1f5c:	2b00      	cmp	r3, #0
    1f5e:	d101      	bne.n	1f64 <strcmp+0x84>
			result=1;
    1f60:	2301      	movs	r3, #1
    1f62:	60fb      	str	r3, [r7, #12]
		}
	}
	return result;
    1f64:	68fb      	ldr	r3, [r7, #12]
}
    1f66:	4618      	mov	r0, r3
    1f68:	3714      	adds	r7, #20
    1f6a:	46bd      	mov	sp, r7
    1f6c:	bc80      	pop	{r7}
    1f6e:	4770      	bx	lr

00001f70 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
    1f70:	b480      	push	{r7}
    1f72:	b083      	sub	sp, #12
    1f74:	af00      	add	r7, sp, #0
    1f76:	4603      	mov	r3, r0
    1f78:	71fb      	strb	r3, [r7, #7]
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1f7a:	79fb      	ldrb	r3, [r7, #7]
    1f7c:	2b60      	cmp	r3, #96	; 0x60
    1f7e:	d902      	bls.n	1f86 <alpha+0x16>
    1f80:	79fb      	ldrb	r3, [r7, #7]
    1f82:	2b7a      	cmp	r3, #122	; 0x7a
    1f84:	d905      	bls.n	1f92 <alpha+0x22>
    1f86:	79fb      	ldrb	r3, [r7, #7]
    1f88:	2b40      	cmp	r3, #64	; 0x40
    1f8a:	d904      	bls.n	1f96 <alpha+0x26>
    1f8c:	79fb      	ldrb	r3, [r7, #7]
    1f8e:	2b5a      	cmp	r3, #90	; 0x5a
    1f90:	d801      	bhi.n	1f96 <alpha+0x26>
    1f92:	2301      	movs	r3, #1
    1f94:	e000      	b.n	1f98 <alpha+0x28>
    1f96:	2300      	movs	r3, #0
}
    1f98:	4618      	mov	r0, r3
    1f9a:	370c      	adds	r7, #12
    1f9c:	46bd      	mov	sp, r7
    1f9e:	bc80      	pop	{r7}
    1fa0:	4770      	bx	lr

00001fa2 <digit>:

int digit(char c){
    1fa2:	b480      	push	{r7}
    1fa4:	b083      	sub	sp, #12
    1fa6:	af00      	add	r7, sp, #0
    1fa8:	4603      	mov	r3, r0
    1faa:	71fb      	strb	r3, [r7, #7]
   return ((c>='0') && (c<='9'));
    1fac:	79fb      	ldrb	r3, [r7, #7]
    1fae:	2b2f      	cmp	r3, #47	; 0x2f
    1fb0:	d904      	bls.n	1fbc <digit+0x1a>
    1fb2:	79fb      	ldrb	r3, [r7, #7]
    1fb4:	2b39      	cmp	r3, #57	; 0x39
    1fb6:	d801      	bhi.n	1fbc <digit+0x1a>
    1fb8:	2301      	movs	r3, #1
    1fba:	e000      	b.n	1fbe <digit+0x1c>
    1fbc:	2300      	movs	r3, #0
}
    1fbe:	4618      	mov	r0, r3
    1fc0:	370c      	adds	r7, #12
    1fc2:	46bd      	mov	sp, r7
    1fc4:	bc80      	pop	{r7}
    1fc6:	4770      	bx	lr

00001fc8 <hexdigit>:

int hexdigit(char c){
    1fc8:	b580      	push	{r7, lr}
    1fca:	b082      	sub	sp, #8
    1fcc:	af00      	add	r7, sp, #0
    1fce:	4603      	mov	r3, r0
    1fd0:	71fb      	strb	r3, [r7, #7]
	if (c>='a') c-=32;
    1fd2:	79fb      	ldrb	r3, [r7, #7]
    1fd4:	2b60      	cmp	r3, #96	; 0x60
    1fd6:	d902      	bls.n	1fde <hexdigit+0x16>
    1fd8:	79fb      	ldrb	r3, [r7, #7]
    1fda:	3b20      	subs	r3, #32
    1fdc:	71fb      	strb	r3, [r7, #7]
	return (digit(c) || (c>='A' && c<='F'));
    1fde:	79fb      	ldrb	r3, [r7, #7]
    1fe0:	4618      	mov	r0, r3
    1fe2:	f7ff ffde 	bl	1fa2 <digit>
    1fe6:	4603      	mov	r3, r0
    1fe8:	2b00      	cmp	r3, #0
    1fea:	d105      	bne.n	1ff8 <hexdigit+0x30>
    1fec:	79fb      	ldrb	r3, [r7, #7]
    1fee:	2b40      	cmp	r3, #64	; 0x40
    1ff0:	d904      	bls.n	1ffc <hexdigit+0x34>
    1ff2:	79fb      	ldrb	r3, [r7, #7]
    1ff4:	2b46      	cmp	r3, #70	; 0x46
    1ff6:	d801      	bhi.n	1ffc <hexdigit+0x34>
    1ff8:	2301      	movs	r3, #1
    1ffa:	e000      	b.n	1ffe <hexdigit+0x36>
    1ffc:	2300      	movs	r3, #0
}
    1ffe:	4618      	mov	r0, r3
    2000:	3708      	adds	r7, #8
    2002:	46bd      	mov	sp, r7
    2004:	bd80      	pop	{r7, pc}

00002006 <atoi>:

int atoi(const char *str){
    2006:	b580      	push	{r7, lr}
    2008:	b086      	sub	sp, #24
    200a:	af00      	add	r7, sp, #0
    200c:	6078      	str	r0, [r7, #4]
	int n=0,sign=1,base=10;
    200e:	2300      	movs	r3, #0
    2010:	617b      	str	r3, [r7, #20]
    2012:	2301      	movs	r3, #1
    2014:	613b      	str	r3, [r7, #16]
    2016:	230a      	movs	r3, #10
    2018:	60fb      	str	r3, [r7, #12]
    char c;
    
	while (*str && (*str==SPACE)) str++;
    201a:	e002      	b.n	2022 <atoi+0x1c>
    201c:	687b      	ldr	r3, [r7, #4]
    201e:	3301      	adds	r3, #1
    2020:	607b      	str	r3, [r7, #4]
    2022:	687b      	ldr	r3, [r7, #4]
    2024:	781b      	ldrb	r3, [r3, #0]
    2026:	2b00      	cmp	r3, #0
    2028:	d003      	beq.n	2032 <atoi+0x2c>
    202a:	687b      	ldr	r3, [r7, #4]
    202c:	781b      	ldrb	r3, [r3, #0]
    202e:	2b20      	cmp	r3, #32
    2030:	d0f4      	beq.n	201c <atoi+0x16>
	if (*str=='-'){
    2032:	687b      	ldr	r3, [r7, #4]
    2034:	781b      	ldrb	r3, [r3, #0]
    2036:	2b2d      	cmp	r3, #45	; 0x2d
    2038:	d105      	bne.n	2046 <atoi+0x40>
		sign=-1;
    203a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    203e:	613b      	str	r3, [r7, #16]
		str++;
    2040:	687b      	ldr	r3, [r7, #4]
    2042:	3301      	adds	r3, #1
    2044:	607b      	str	r3, [r7, #4]
	}
	if (*str=='$' && hexdigit(*(str+1))){
    2046:	687b      	ldr	r3, [r7, #4]
    2048:	781b      	ldrb	r3, [r3, #0]
    204a:	2b24      	cmp	r3, #36	; 0x24
    204c:	d10e      	bne.n	206c <atoi+0x66>
    204e:	687b      	ldr	r3, [r7, #4]
    2050:	3301      	adds	r3, #1
    2052:	781b      	ldrb	r3, [r3, #0]
    2054:	4618      	mov	r0, r3
    2056:	f7ff ffb7 	bl	1fc8 <hexdigit>
    205a:	4603      	mov	r3, r0
    205c:	2b00      	cmp	r3, #0
    205e:	d005      	beq.n	206c <atoi+0x66>
		base=16;
    2060:	2310      	movs	r3, #16
    2062:	60fb      	str	r3, [r7, #12]
		str++;
    2064:	687b      	ldr	r3, [r7, #4]
    2066:	3301      	adds	r3, #1
    2068:	607b      	str	r3, [r7, #4]
    206a:	e012      	b.n	2092 <atoi+0x8c>
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    206c:	687b      	ldr	r3, [r7, #4]
    206e:	781b      	ldrb	r3, [r3, #0]
    2070:	2b30      	cmp	r3, #48	; 0x30
    2072:	d128      	bne.n	20c6 <atoi+0xc0>
    2074:	687b      	ldr	r3, [r7, #4]
    2076:	3301      	adds	r3, #1
    2078:	781b      	ldrb	r3, [r3, #0]
    207a:	2b78      	cmp	r3, #120	; 0x78
    207c:	d004      	beq.n	2088 <atoi+0x82>
    207e:	687b      	ldr	r3, [r7, #4]
    2080:	3301      	adds	r3, #1
    2082:	781b      	ldrb	r3, [r3, #0]
    2084:	2b58      	cmp	r3, #88	; 0x58
    2086:	d11e      	bne.n	20c6 <atoi+0xc0>
		base=16;
    2088:	2310      	movs	r3, #16
    208a:	60fb      	str	r3, [r7, #12]
		str+=2;
    208c:	687b      	ldr	r3, [r7, #4]
    208e:	3302      	adds	r3, #2
    2090:	607b      	str	r3, [r7, #4]
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    2092:	e018      	b.n	20c6 <atoi+0xc0>
		if (c>='a'){c-=32;}
    2094:	7afb      	ldrb	r3, [r7, #11]
    2096:	2b60      	cmp	r3, #96	; 0x60
    2098:	d902      	bls.n	20a0 <atoi+0x9a>
    209a:	7afb      	ldrb	r3, [r7, #11]
    209c:	3b20      	subs	r3, #32
    209e:	72fb      	strb	r3, [r7, #11]
		c-='0';
    20a0:	7afb      	ldrb	r3, [r7, #11]
    20a2:	3b30      	subs	r3, #48	; 0x30
    20a4:	72fb      	strb	r3, [r7, #11]
		if (c>9){c-=7;}
    20a6:	7afb      	ldrb	r3, [r7, #11]
    20a8:	2b09      	cmp	r3, #9
    20aa:	d902      	bls.n	20b2 <atoi+0xac>
    20ac:	7afb      	ldrb	r3, [r7, #11]
    20ae:	3b07      	subs	r3, #7
    20b0:	72fb      	strb	r3, [r7, #11]
		n=n*base+c;
    20b2:	697b      	ldr	r3, [r7, #20]
    20b4:	68fa      	ldr	r2, [r7, #12]
    20b6:	fb02 f203 	mul.w	r2, r2, r3
    20ba:	7afb      	ldrb	r3, [r7, #11]
    20bc:	4413      	add	r3, r2
    20be:	617b      	str	r3, [r7, #20]
		str++;
    20c0:	687b      	ldr	r3, [r7, #4]
    20c2:	3301      	adds	r3, #1
    20c4:	607b      	str	r3, [r7, #4]
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    20c6:	687b      	ldr	r3, [r7, #4]
    20c8:	781b      	ldrb	r3, [r3, #0]
    20ca:	72fb      	strb	r3, [r7, #11]
    20cc:	7afb      	ldrb	r3, [r7, #11]
    20ce:	2b00      	cmp	r3, #0
    20d0:	d00d      	beq.n	20ee <atoi+0xe8>
    20d2:	68fb      	ldr	r3, [r7, #12]
    20d4:	2b0a      	cmp	r3, #10
    20d6:	d10a      	bne.n	20ee <atoi+0xe8>
    20d8:	7afb      	ldrb	r3, [r7, #11]
    20da:	4618      	mov	r0, r3
    20dc:	f7ff ff61 	bl	1fa2 <digit>
    20e0:	4603      	mov	r3, r0
    20e2:	2b00      	cmp	r3, #0
    20e4:	bf14      	ite	ne
    20e6:	2301      	movne	r3, #1
    20e8:	2300      	moveq	r3, #0
    20ea:	b2db      	uxtb	r3, r3
    20ec:	e009      	b.n	2102 <atoi+0xfc>
    20ee:	7afb      	ldrb	r3, [r7, #11]
    20f0:	4618      	mov	r0, r3
    20f2:	f7ff ff69 	bl	1fc8 <hexdigit>
    20f6:	4603      	mov	r3, r0
    20f8:	2b00      	cmp	r3, #0
    20fa:	bf14      	ite	ne
    20fc:	2301      	movne	r3, #1
    20fe:	2300      	moveq	r3, #0
    2100:	b2db      	uxtb	r3, r3
    2102:	2b00      	cmp	r3, #0
    2104:	d1c6      	bne.n	2094 <atoi+0x8e>
	}
	return sign*n;
    2106:	693b      	ldr	r3, [r7, #16]
    2108:	697a      	ldr	r2, [r7, #20]
    210a:	fb02 f303 	mul.w	r3, r2, r3
}
    210e:	4618      	mov	r0, r3
    2110:	3718      	adds	r7, #24
    2112:	46bd      	mov	sp, r7
    2114:	bd80      	pop	{r7, pc}

00002116 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
    2116:	b480      	push	{r7}
    2118:	b085      	sub	sp, #20
    211a:	af00      	add	r7, sp, #0
    211c:	60f8      	str	r0, [r7, #12]
    211e:	60b9      	str	r1, [r7, #8]
    2120:	607a      	str	r2, [r7, #4]
	while (len){
    2122:	e00a      	b.n	213a <move+0x24>
		*dest++=*src++;
    2124:	68bb      	ldr	r3, [r7, #8]
    2126:	1c5a      	adds	r2, r3, #1
    2128:	60ba      	str	r2, [r7, #8]
    212a:	68fa      	ldr	r2, [r7, #12]
    212c:	1c51      	adds	r1, r2, #1
    212e:	60f9      	str	r1, [r7, #12]
    2130:	7812      	ldrb	r2, [r2, #0]
    2132:	701a      	strb	r2, [r3, #0]
		len--;
    2134:	687b      	ldr	r3, [r7, #4]
    2136:	3b01      	subs	r3, #1
    2138:	607b      	str	r3, [r7, #4]
	while (len){
    213a:	687b      	ldr	r3, [r7, #4]
    213c:	2b00      	cmp	r3, #0
    213e:	d1f1      	bne.n	2124 <move+0xe>
	}
}
    2140:	bf00      	nop
    2142:	3714      	adds	r7, #20
    2144:	46bd      	mov	sp, r7
    2146:	bc80      	pop	{r7}
    2148:	4770      	bx	lr

0000214a <strlen>:

int strlen(const char* str){
    214a:	b480      	push	{r7}
    214c:	b085      	sub	sp, #20
    214e:	af00      	add	r7, sp, #0
    2150:	6078      	str	r0, [r7, #4]
	int ll=0;
    2152:	2300      	movs	r3, #0
    2154:	60fb      	str	r3, [r7, #12]
	while (str[ll]){ll++;}
    2156:	e002      	b.n	215e <strlen+0x14>
    2158:	68fb      	ldr	r3, [r7, #12]
    215a:	3301      	adds	r3, #1
    215c:	60fb      	str	r3, [r7, #12]
    215e:	68fb      	ldr	r3, [r7, #12]
    2160:	687a      	ldr	r2, [r7, #4]
    2162:	4413      	add	r3, r2
    2164:	781b      	ldrb	r3, [r3, #0]
    2166:	2b00      	cmp	r3, #0
    2168:	d1f6      	bne.n	2158 <strlen+0xe>
	return ll;
    216a:	68fb      	ldr	r3, [r7, #12]
}
    216c:	4618      	mov	r0, r3
    216e:	3714      	adds	r7, #20
    2170:	46bd      	mov	sp, r7
    2172:	bc80      	pop	{r7}
    2174:	4770      	bx	lr

00002176 <fill>:

void fill(void *buffer, unsigned int size, char c){
    2176:	b480      	push	{r7}
    2178:	b087      	sub	sp, #28
    217a:	af00      	add	r7, sp, #0
    217c:	60f8      	str	r0, [r7, #12]
    217e:	60b9      	str	r1, [r7, #8]
    2180:	4613      	mov	r3, r2
    2182:	71fb      	strb	r3, [r7, #7]
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    2184:	2300      	movs	r3, #0
    2186:	617b      	str	r3, [r7, #20]
    2188:	e007      	b.n	219a <fill+0x24>
    218a:	68fb      	ldr	r3, [r7, #12]
    218c:	1c5a      	adds	r2, r3, #1
    218e:	60fa      	str	r2, [r7, #12]
    2190:	79fa      	ldrb	r2, [r7, #7]
    2192:	701a      	strb	r2, [r3, #0]
    2194:	697b      	ldr	r3, [r7, #20]
    2196:	3301      	adds	r3, #1
    2198:	617b      	str	r3, [r7, #20]
    219a:	697a      	ldr	r2, [r7, #20]
    219c:	68bb      	ldr	r3, [r7, #8]
    219e:	429a      	cmp	r2, r3
    21a0:	d3f3      	bcc.n	218a <fill+0x14>
}
    21a2:	bf00      	nop
    21a4:	371c      	adds	r7, #28
    21a6:	46bd      	mov	sp, r7
    21a8:	bc80      	pop	{r7}
    21aa:	4770      	bx	lr

000021ac <is_lower>:

//retourne vrai si caractère en minuscule
int is_lower(char c){
    21ac:	b480      	push	{r7}
    21ae:	b083      	sub	sp, #12
    21b0:	af00      	add	r7, sp, #0
    21b2:	4603      	mov	r3, r0
    21b4:	71fb      	strb	r3, [r7, #7]
	return (c>='a') && (c<='z');
    21b6:	79fb      	ldrb	r3, [r7, #7]
    21b8:	2b60      	cmp	r3, #96	; 0x60
    21ba:	d904      	bls.n	21c6 <is_lower+0x1a>
    21bc:	79fb      	ldrb	r3, [r7, #7]
    21be:	2b7a      	cmp	r3, #122	; 0x7a
    21c0:	d801      	bhi.n	21c6 <is_lower+0x1a>
    21c2:	2301      	movs	r3, #1
    21c4:	e000      	b.n	21c8 <is_lower+0x1c>
    21c6:	2300      	movs	r3, #0
}
    21c8:	4618      	mov	r0, r3
    21ca:	370c      	adds	r7, #12
    21cc:	46bd      	mov	sp, r7
    21ce:	bc80      	pop	{r7}
    21d0:	4770      	bx	lr

000021d2 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
    21d2:	b480      	push	{r7}
    21d4:	b083      	sub	sp, #12
    21d6:	af00      	add	r7, sp, #0
    21d8:	4603      	mov	r3, r0
    21da:	71fb      	strb	r3, [r7, #7]
	return (c>='A') && (c<='Z');
    21dc:	79fb      	ldrb	r3, [r7, #7]
    21de:	2b40      	cmp	r3, #64	; 0x40
    21e0:	d904      	bls.n	21ec <is_upper+0x1a>
    21e2:	79fb      	ldrb	r3, [r7, #7]
    21e4:	2b5a      	cmp	r3, #90	; 0x5a
    21e6:	d801      	bhi.n	21ec <is_upper+0x1a>
    21e8:	2301      	movs	r3, #1
    21ea:	e000      	b.n	21ee <is_upper+0x1c>
    21ec:	2300      	movs	r3, #0
}
    21ee:	4618      	mov	r0, r3
    21f0:	370c      	adds	r7, #12
    21f2:	46bd      	mov	sp, r7
    21f4:	bc80      	pop	{r7}
    21f6:	4770      	bx	lr

000021f8 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
    21f8:	b580      	push	{r7, lr}
    21fa:	b082      	sub	sp, #8
    21fc:	af00      	add	r7, sp, #0
    21fe:	6078      	str	r0, [r7, #4]
	while (*buffer){
    2200:	e010      	b.n	2224 <uppercase+0x2c>
		if (is_lower(*buffer)){*buffer-=32;}
    2202:	687b      	ldr	r3, [r7, #4]
    2204:	781b      	ldrb	r3, [r3, #0]
    2206:	4618      	mov	r0, r3
    2208:	f7ff ffd0 	bl	21ac <is_lower>
    220c:	4603      	mov	r3, r0
    220e:	2b00      	cmp	r3, #0
    2210:	d005      	beq.n	221e <uppercase+0x26>
    2212:	687b      	ldr	r3, [r7, #4]
    2214:	781b      	ldrb	r3, [r3, #0]
    2216:	3b20      	subs	r3, #32
    2218:	b2da      	uxtb	r2, r3
    221a:	687b      	ldr	r3, [r7, #4]
    221c:	701a      	strb	r2, [r3, #0]
		buffer++;
    221e:	687b      	ldr	r3, [r7, #4]
    2220:	3301      	adds	r3, #1
    2222:	607b      	str	r3, [r7, #4]
	while (*buffer){
    2224:	687b      	ldr	r3, [r7, #4]
    2226:	781b      	ldrb	r3, [r3, #0]
    2228:	2b00      	cmp	r3, #0
    222a:	d1ea      	bne.n	2202 <uppercase+0xa>
	}
}
    222c:	bf00      	nop
    222e:	3708      	adds	r7, #8
    2230:	46bd      	mov	sp, r7
    2232:	bd80      	pop	{r7, pc}

00002234 <scan>:

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    2234:	b480      	push	{r7}
    2236:	b085      	sub	sp, #20
    2238:	af00      	add	r7, sp, #0
    223a:	60f8      	str	r0, [r7, #12]
    223c:	60b9      	str	r1, [r7, #8]
    223e:	4613      	mov	r3, r2
    2240:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]!=c) start++;
    2242:	e002      	b.n	224a <scan+0x16>
    2244:	68bb      	ldr	r3, [r7, #8]
    2246:	3301      	adds	r3, #1
    2248:	60bb      	str	r3, [r7, #8]
    224a:	68bb      	ldr	r3, [r7, #8]
    224c:	68fa      	ldr	r2, [r7, #12]
    224e:	4413      	add	r3, r2
    2250:	781b      	ldrb	r3, [r3, #0]
    2252:	2b00      	cmp	r3, #0
    2254:	d006      	beq.n	2264 <scan+0x30>
    2256:	68bb      	ldr	r3, [r7, #8]
    2258:	68fa      	ldr	r2, [r7, #12]
    225a:	4413      	add	r3, r2
    225c:	781b      	ldrb	r3, [r3, #0]
    225e:	79fa      	ldrb	r2, [r7, #7]
    2260:	429a      	cmp	r2, r3
    2262:	d1ef      	bne.n	2244 <scan+0x10>
	return start;
    2264:	68bb      	ldr	r3, [r7, #8]
}
    2266:	4618      	mov	r0, r3
    2268:	3714      	adds	r7, #20
    226a:	46bd      	mov	sp, r7
    226c:	bc80      	pop	{r7}
    226e:	4770      	bx	lr

00002270 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    2270:	b480      	push	{r7}
    2272:	b085      	sub	sp, #20
    2274:	af00      	add	r7, sp, #0
    2276:	60f8      	str	r0, [r7, #12]
    2278:	60b9      	str	r1, [r7, #8]
    227a:	4613      	mov	r3, r2
    227c:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]==c) start++;
    227e:	e002      	b.n	2286 <skip+0x16>
    2280:	68bb      	ldr	r3, [r7, #8]
    2282:	3301      	adds	r3, #1
    2284:	60bb      	str	r3, [r7, #8]
    2286:	68bb      	ldr	r3, [r7, #8]
    2288:	68fa      	ldr	r2, [r7, #12]
    228a:	4413      	add	r3, r2
    228c:	781b      	ldrb	r3, [r3, #0]
    228e:	2b00      	cmp	r3, #0
    2290:	d006      	beq.n	22a0 <skip+0x30>
    2292:	68bb      	ldr	r3, [r7, #8]
    2294:	68fa      	ldr	r2, [r7, #12]
    2296:	4413      	add	r3, r2
    2298:	781b      	ldrb	r3, [r3, #0]
    229a:	79fa      	ldrb	r2, [r7, #7]
    229c:	429a      	cmp	r2, r3
    229e:	d0ef      	beq.n	2280 <skip+0x10>
	return start;
    22a0:	68bb      	ldr	r3, [r7, #8]
}
    22a2:	4618      	mov	r0, r3
    22a4:	3714      	adds	r7, #20
    22a6:	46bd      	mov	sp, r7
    22a8:	bc80      	pop	{r7}
    22aa:	4770      	bx	lr

000022ac <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    22ac:	b580      	push	{r7, lr}
    22ae:	b082      	sub	sp, #8
    22b0:	af00      	add	r7, sp, #0
    22b2:	6078      	str	r0, [r7, #4]
    22b4:	6039      	str	r1, [r7, #0]
	s1+=strlen(s1);
    22b6:	6878      	ldr	r0, [r7, #4]
    22b8:	f7ff ff47 	bl	214a <strlen>
    22bc:	4603      	mov	r3, r0
    22be:	461a      	mov	r2, r3
    22c0:	687b      	ldr	r3, [r7, #4]
    22c2:	4413      	add	r3, r2
    22c4:	607b      	str	r3, [r7, #4]
	while (*s2){
    22c6:	e007      	b.n	22d8 <strcat+0x2c>
		*s1++=*s2++;
    22c8:	687b      	ldr	r3, [r7, #4]
    22ca:	1c5a      	adds	r2, r3, #1
    22cc:	607a      	str	r2, [r7, #4]
    22ce:	683a      	ldr	r2, [r7, #0]
    22d0:	1c51      	adds	r1, r2, #1
    22d2:	6039      	str	r1, [r7, #0]
    22d4:	7812      	ldrb	r2, [r2, #0]
    22d6:	701a      	strb	r2, [r3, #0]
	while (*s2){
    22d8:	683b      	ldr	r3, [r7, #0]
    22da:	781b      	ldrb	r3, [r3, #0]
    22dc:	2b00      	cmp	r3, #0
    22de:	d1f3      	bne.n	22c8 <strcat+0x1c>
	}
	*s1=0;
    22e0:	687b      	ldr	r3, [r7, #4]
    22e2:	2200      	movs	r2, #0
    22e4:	701a      	strb	r2, [r3, #0]
	return s1;
    22e6:	687b      	ldr	r3, [r7, #4]
}
    22e8:	4618      	mov	r0, r3
    22ea:	3708      	adds	r7, #8
    22ec:	46bd      	mov	sp, r7
    22ee:	bd80      	pop	{r7, pc}

000022f0 <itoa>:

char *itoa(int n,char *buffer,int base){
    22f0:	b580      	push	{r7, lr}
    22f2:	b08c      	sub	sp, #48	; 0x30
    22f4:	af00      	add	r7, sp, #0
    22f6:	60f8      	str	r0, [r7, #12]
    22f8:	60b9      	str	r1, [r7, #8]
    22fa:	607a      	str	r2, [r7, #4]
	char d,fmt[16];
	int i=14,sign=0;
    22fc:	230e      	movs	r3, #14
    22fe:	62bb      	str	r3, [r7, #40]	; 0x28
    2300:	2300      	movs	r3, #0
    2302:	627b      	str	r3, [r7, #36]	; 0x24
	if ((base==10) && (n<0)){
    2304:	687b      	ldr	r3, [r7, #4]
    2306:	2b0a      	cmp	r3, #10
    2308:	d107      	bne.n	231a <itoa+0x2a>
    230a:	68fb      	ldr	r3, [r7, #12]
    230c:	2b00      	cmp	r3, #0
    230e:	da04      	bge.n	231a <itoa+0x2a>
		sign=1;
    2310:	2301      	movs	r3, #1
    2312:	627b      	str	r3, [r7, #36]	; 0x24
		n=-n;
    2314:	68fb      	ldr	r3, [r7, #12]
    2316:	425b      	negs	r3, r3
    2318:	60fb      	str	r3, [r7, #12]
	}
	fmt[15]=0;
    231a:	2300      	movs	r3, #0
    231c:	f887 3023 	strb.w	r3, [r7, #35]	; 0x23
	fmt[14]=' ';
    2320:	2320      	movs	r3, #32
    2322:	f887 3022 	strb.w	r3, [r7, #34]	; 0x22
	while (n){
    2326:	e023      	b.n	2370 <itoa+0x80>
		d=n%base+'0';
    2328:	68fb      	ldr	r3, [r7, #12]
    232a:	687a      	ldr	r2, [r7, #4]
    232c:	fb93 f2f2 	sdiv	r2, r3, r2
    2330:	6879      	ldr	r1, [r7, #4]
    2332:	fb01 f202 	mul.w	r2, r1, r2
    2336:	1a9b      	subs	r3, r3, r2
    2338:	b2db      	uxtb	r3, r3
    233a:	3330      	adds	r3, #48	; 0x30
    233c:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
		if (d>'9') d+=7;
    2340:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    2344:	2b39      	cmp	r3, #57	; 0x39
    2346:	d904      	bls.n	2352 <itoa+0x62>
    2348:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    234c:	3307      	adds	r3, #7
    234e:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
		n/=base;
    2352:	68fa      	ldr	r2, [r7, #12]
    2354:	687b      	ldr	r3, [r7, #4]
    2356:	fb92 f3f3 	sdiv	r3, r2, r3
    235a:	60fb      	str	r3, [r7, #12]
		fmt[--i]=d;
    235c:	6abb      	ldr	r3, [r7, #40]	; 0x28
    235e:	3b01      	subs	r3, #1
    2360:	62bb      	str	r3, [r7, #40]	; 0x28
    2362:	f107 0214 	add.w	r2, r7, #20
    2366:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2368:	4413      	add	r3, r2
    236a:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
    236e:	701a      	strb	r2, [r3, #0]
	while (n){
    2370:	68fb      	ldr	r3, [r7, #12]
    2372:	2b00      	cmp	r3, #0
    2374:	d1d8      	bne.n	2328 <itoa+0x38>
	}
	if (i==14) fmt[--i]='0';
    2376:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2378:	2b0e      	cmp	r3, #14
    237a:	d108      	bne.n	238e <itoa+0x9e>
    237c:	6abb      	ldr	r3, [r7, #40]	; 0x28
    237e:	3b01      	subs	r3, #1
    2380:	62bb      	str	r3, [r7, #40]	; 0x28
    2382:	f107 0214 	add.w	r2, r7, #20
    2386:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2388:	4413      	add	r3, r2
    238a:	2230      	movs	r2, #48	; 0x30
    238c:	701a      	strb	r2, [r3, #0]
	if ((base==10) && sign) fmt[--i]='-';
    238e:	687b      	ldr	r3, [r7, #4]
    2390:	2b0a      	cmp	r3, #10
    2392:	d10b      	bne.n	23ac <itoa+0xbc>
    2394:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    2396:	2b00      	cmp	r3, #0
    2398:	d008      	beq.n	23ac <itoa+0xbc>
    239a:	6abb      	ldr	r3, [r7, #40]	; 0x28
    239c:	3b01      	subs	r3, #1
    239e:	62bb      	str	r3, [r7, #40]	; 0x28
    23a0:	f107 0214 	add.w	r2, r7, #20
    23a4:	6abb      	ldr	r3, [r7, #40]	; 0x28
    23a6:	4413      	add	r3, r2
    23a8:	222d      	movs	r2, #45	; 0x2d
    23aa:	701a      	strb	r2, [r3, #0]
	if (base==16) fmt[--i]='$';
    23ac:	687b      	ldr	r3, [r7, #4]
    23ae:	2b10      	cmp	r3, #16
    23b0:	d108      	bne.n	23c4 <itoa+0xd4>
    23b2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    23b4:	3b01      	subs	r3, #1
    23b6:	62bb      	str	r3, [r7, #40]	; 0x28
    23b8:	f107 0214 	add.w	r2, r7, #20
    23bc:	6abb      	ldr	r3, [r7, #40]	; 0x28
    23be:	4413      	add	r3, r2
    23c0:	2224      	movs	r2, #36	; 0x24
    23c2:	701a      	strb	r2, [r3, #0]
	move((const char*)&fmt[i],buffer,16-i);
    23c4:	f107 0214 	add.w	r2, r7, #20
    23c8:	6abb      	ldr	r3, [r7, #40]	; 0x28
    23ca:	18d0      	adds	r0, r2, r3
    23cc:	6abb      	ldr	r3, [r7, #40]	; 0x28
    23ce:	f1c3 0310 	rsb	r3, r3, #16
    23d2:	461a      	mov	r2, r3
    23d4:	68b9      	ldr	r1, [r7, #8]
    23d6:	f7ff fe9e 	bl	2116 <move>
	return buffer;
    23da:	68bb      	ldr	r3, [r7, #8]
    23dc:	4618      	mov	r0, r3
    23de:	3730      	adds	r7, #48	; 0x30
    23e0:	46bd      	mov	sp, r7
    23e2:	bd80      	pop	{r7, pc}

000023e4 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    23e4:	b480      	push	{r7}
    23e6:	b087      	sub	sp, #28
    23e8:	af00      	add	r7, sp, #0
    23ea:	60f8      	str	r0, [r7, #12]
    23ec:	60b9      	str	r1, [r7, #8]
    23ee:	607a      	str	r2, [r7, #4]
	uint8_t shift;
	shift=(pin&7)<<2;
    23f0:	68bb      	ldr	r3, [r7, #8]
    23f2:	b2db      	uxtb	r3, r3
    23f4:	009b      	lsls	r3, r3, #2
    23f6:	b2db      	uxtb	r3, r3
    23f8:	f003 031c 	and.w	r3, r3, #28
    23fc:	75fb      	strb	r3, [r7, #23]
	port->CR[pin>>3]&=~(15<<shift);
    23fe:	68bb      	ldr	r3, [r7, #8]
    2400:	08da      	lsrs	r2, r3, #3
    2402:	68bb      	ldr	r3, [r7, #8]
    2404:	08d9      	lsrs	r1, r3, #3
    2406:	68fb      	ldr	r3, [r7, #12]
    2408:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    240c:	7df9      	ldrb	r1, [r7, #23]
    240e:	200f      	movs	r0, #15
    2410:	fa00 f101 	lsl.w	r1, r0, r1
    2414:	43c9      	mvns	r1, r1
    2416:	4019      	ands	r1, r3
    2418:	68fb      	ldr	r3, [r7, #12]
    241a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    241e:	68bb      	ldr	r3, [r7, #8]
    2420:	08da      	lsrs	r2, r3, #3
    2422:	68bb      	ldr	r3, [r7, #8]
    2424:	08d9      	lsrs	r1, r3, #3
    2426:	68fb      	ldr	r3, [r7, #12]
    2428:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    242c:	7dfb      	ldrb	r3, [r7, #23]
    242e:	6878      	ldr	r0, [r7, #4]
    2430:	fa00 f303 	lsl.w	r3, r0, r3
    2434:	4319      	orrs	r1, r3
    2436:	68fb      	ldr	r3, [r7, #12]
    2438:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
    243c:	bf00      	nop
    243e:	371c      	adds	r7, #28
    2440:	46bd      	mov	sp, r7
    2442:	bc80      	pop	{r7}
    2444:	4770      	bx	lr

00002446 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
    2446:	b480      	push	{r7}
    2448:	b083      	sub	sp, #12
    244a:	af00      	add	r7, sp, #0
    244c:	6078      	str	r0, [r7, #4]
    244e:	6039      	str	r1, [r7, #0]
	return port->IDR&(1<<pin);
    2450:	687b      	ldr	r3, [r7, #4]
    2452:	689b      	ldr	r3, [r3, #8]
    2454:	2101      	movs	r1, #1
    2456:	683a      	ldr	r2, [r7, #0]
    2458:	fa01 f202 	lsl.w	r2, r1, r2
    245c:	4013      	ands	r3, r2
}
    245e:	4618      	mov	r0, r3
    2460:	370c      	adds	r7, #12
    2462:	46bd      	mov	sp, r7
    2464:	bc80      	pop	{r7}
    2466:	4770      	bx	lr

00002468 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
    2468:	b480      	push	{r7}
    246a:	b085      	sub	sp, #20
    246c:	af00      	add	r7, sp, #0
    246e:	60f8      	str	r0, [r7, #12]
    2470:	60b9      	str	r1, [r7, #8]
    2472:	607a      	str	r2, [r7, #4]
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    2474:	687b      	ldr	r3, [r7, #4]
    2476:	2b00      	cmp	r3, #0
    2478:	d009      	beq.n	248e <write_pin+0x26>
    247a:	68fb      	ldr	r3, [r7, #12]
    247c:	68db      	ldr	r3, [r3, #12]
    247e:	2101      	movs	r1, #1
    2480:	68ba      	ldr	r2, [r7, #8]
    2482:	fa01 f202 	lsl.w	r2, r1, r2
    2486:	431a      	orrs	r2, r3
    2488:	68fb      	ldr	r3, [r7, #12]
    248a:	60da      	str	r2, [r3, #12]
}
    248c:	e009      	b.n	24a2 <write_pin+0x3a>
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    248e:	68fb      	ldr	r3, [r7, #12]
    2490:	68db      	ldr	r3, [r3, #12]
    2492:	2101      	movs	r1, #1
    2494:	68ba      	ldr	r2, [r7, #8]
    2496:	fa01 f202 	lsl.w	r2, r1, r2
    249a:	43d2      	mvns	r2, r2
    249c:	401a      	ands	r2, r3
    249e:	68fb      	ldr	r3, [r7, #12]
    24a0:	60da      	str	r2, [r3, #12]
}
    24a2:	bf00      	nop
    24a4:	3714      	adds	r7, #20
    24a6:	46bd      	mov	sp, r7
    24a8:	bc80      	pop	{r7}
    24aa:	4770      	bx	lr

000024ac <toggle_pin>:

inline void toggle_pin(gpio_t* port, unsigned pin){
    24ac:	b480      	push	{r7}
    24ae:	b083      	sub	sp, #12
    24b0:	af00      	add	r7, sp, #0
    24b2:	6078      	str	r0, [r7, #4]
    24b4:	6039      	str	r1, [r7, #0]
	port->ODR^=(1<<pin);
    24b6:	687b      	ldr	r3, [r7, #4]
    24b8:	68db      	ldr	r3, [r3, #12]
    24ba:	2101      	movs	r1, #1
    24bc:	683a      	ldr	r2, [r7, #0]
    24be:	fa01 f202 	lsl.w	r2, r1, r2
    24c2:	405a      	eors	r2, r3
    24c4:	687b      	ldr	r3, [r7, #4]
    24c6:	60da      	str	r2, [r3, #12]
}
    24c8:	bf00      	nop
    24ca:	370c      	adds	r7, #12
    24cc:	46bd      	mov	sp, r7
    24ce:	bc80      	pop	{r7}
    24d0:	4770      	bx	lr
	...

000024d4 <set_palette>:
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};

const uint8_t DEFAULT_PALETTE[4]={0,15,3,5};

void set_palette(const uint8_t new[4]){
    24d4:	b480      	push	{r7}
    24d6:	b083      	sub	sp, #12
    24d8:	af00      	add	r7, sp, #0
    24da:	6078      	str	r0, [r7, #4]
    palette[0]=new[0];
    24dc:	687b      	ldr	r3, [r7, #4]
    24de:	781a      	ldrb	r2, [r3, #0]
    24e0:	4b09      	ldr	r3, [pc, #36]	; (2508 <set_palette+0x34>)
    24e2:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    24e4:	687b      	ldr	r3, [r7, #4]
    24e6:	785a      	ldrb	r2, [r3, #1]
    24e8:	4b07      	ldr	r3, [pc, #28]	; (2508 <set_palette+0x34>)
    24ea:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    24ec:	687b      	ldr	r3, [r7, #4]
    24ee:	789a      	ldrb	r2, [r3, #2]
    24f0:	4b05      	ldr	r3, [pc, #20]	; (2508 <set_palette+0x34>)
    24f2:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    24f4:	687b      	ldr	r3, [r7, #4]
    24f6:	78da      	ldrb	r2, [r3, #3]
    24f8:	4b03      	ldr	r3, [pc, #12]	; (2508 <set_palette+0x34>)
    24fa:	70da      	strb	r2, [r3, #3]
}
    24fc:	bf00      	nop
    24fe:	370c      	adds	r7, #12
    2500:	46bd      	mov	sp, r7
    2502:	bc80      	pop	{r7}
    2504:	4770      	bx	lr
    2506:	bf00      	nop
    2508:	200001c8 	.word	0x200001c8

0000250c <gfx_blit>:

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    250c:	b5f0      	push	{r4, r5, r6, r7, lr}
    250e:	b087      	sub	sp, #28
    2510:	af00      	add	r7, sp, #0
    2512:	60f8      	str	r0, [r7, #12]
    2514:	60b9      	str	r1, [r7, #8]
    2516:	4611      	mov	r1, r2
    2518:	461a      	mov	r2, r3
    251a:	460b      	mov	r3, r1
    251c:	71fb      	strb	r3, [r7, #7]
    251e:	4613      	mov	r3, r2
    2520:	71bb      	strb	r3, [r7, #6]
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    2522:	f003 f803 	bl	552c <get_video_params>
    2526:	6178      	str	r0, [r7, #20]
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    2528:	68fb      	ldr	r3, [r7, #12]
    252a:	2b00      	cmp	r3, #0
    252c:	db0e      	blt.n	254c <gfx_blit+0x40>
    252e:	697b      	ldr	r3, [r7, #20]
    2530:	899b      	ldrh	r3, [r3, #12]
    2532:	461a      	mov	r2, r3
    2534:	68fb      	ldr	r3, [r7, #12]
    2536:	429a      	cmp	r2, r3
    2538:	dd08      	ble.n	254c <gfx_blit+0x40>
    253a:	68bb      	ldr	r3, [r7, #8]
    253c:	2b00      	cmp	r3, #0
    253e:	db05      	blt.n	254c <gfx_blit+0x40>
    2540:	697b      	ldr	r3, [r7, #20]
    2542:	89db      	ldrh	r3, [r3, #14]
    2544:	461a      	mov	r2, r3
    2546:	68bb      	ldr	r3, [r7, #8]
    2548:	429a      	cmp	r2, r3
    254a:	dc01      	bgt.n	2550 <gfx_blit+0x44>
    254c:	2300      	movs	r3, #0
    254e:	e058      	b.n	2602 <gfx_blit+0xf6>
    idx=y*vparams->bpr+x/2;
    2550:	697b      	ldr	r3, [r7, #20]
    2552:	7a1b      	ldrb	r3, [r3, #8]
    2554:	461a      	mov	r2, r3
    2556:	68bb      	ldr	r3, [r7, #8]
    2558:	fb03 f202 	mul.w	r2, r3, r2
    255c:	68fb      	ldr	r3, [r7, #12]
    255e:	0fd9      	lsrs	r1, r3, #31
    2560:	440b      	add	r3, r1
    2562:	105b      	asrs	r3, r3, #1
    2564:	18d6      	adds	r6, r2, r3
    color&=0xf;
    2566:	79fb      	ldrb	r3, [r7, #7]
    2568:	f003 030f 	and.w	r3, r3, #15
    256c:	71fb      	strb	r3, [r7, #7]
    mask=0xf0;
    256e:	25f0      	movs	r5, #240	; 0xf0
    if (!(x&1)){
    2570:	68fb      	ldr	r3, [r7, #12]
    2572:	f003 0301 	and.w	r3, r3, #1
    2576:	2b00      	cmp	r3, #0
    2578:	d103      	bne.n	2582 <gfx_blit+0x76>
         color<<=4;
    257a:	79fb      	ldrb	r3, [r7, #7]
    257c:	011b      	lsls	r3, r3, #4
    257e:	71fb      	strb	r3, [r7, #7]
         mask=0x0f;
    2580:	250f      	movs	r5, #15
    }
    byte=video_buffer[idx];
    2582:	4b22      	ldr	r3, [pc, #136]	; (260c <gfx_blit+0x100>)
    2584:	5d9c      	ldrb	r4, [r3, r6]
    switch (op){
    2586:	79bb      	ldrb	r3, [r7, #6]
    2588:	2b04      	cmp	r3, #4
    258a:	d828      	bhi.n	25de <gfx_blit+0xd2>
    258c:	a201      	add	r2, pc, #4	; (adr r2, 2594 <gfx_blit+0x88>)
    258e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2592:	bf00      	nop
    2594:	000025a9 	.word	0x000025a9
    2598:	000025b1 	.word	0x000025b1
    259c:	000025b9 	.word	0x000025b9
    25a0:	000025c1 	.word	0x000025c1
    25a4:	000025d1 	.word	0x000025d1
    case BIT_OR:
        byte|=color;
    25a8:	79fb      	ldrb	r3, [r7, #7]
    25aa:	4323      	orrs	r3, r4
    25ac:	b2dc      	uxtb	r4, r3
        break;
    25ae:	e016      	b.n	25de <gfx_blit+0xd2>
    case BIT_AND:
        byte&=color;
    25b0:	79fb      	ldrb	r3, [r7, #7]
    25b2:	4023      	ands	r3, r4
    25b4:	b2dc      	uxtb	r4, r3
        break;
    25b6:	e012      	b.n	25de <gfx_blit+0xd2>
    case BIT_XOR:
        byte^=color;
    25b8:	79fb      	ldrb	r3, [r7, #7]
    25ba:	4063      	eors	r3, r4
    25bc:	b2dc      	uxtb	r4, r3
        break;
    25be:	e00e      	b.n	25de <gfx_blit+0xd2>
    case BIT_INVERT:
        byte^=~mask;
    25c0:	b26b      	sxtb	r3, r5
    25c2:	43db      	mvns	r3, r3
    25c4:	b25a      	sxtb	r2, r3
    25c6:	b263      	sxtb	r3, r4
    25c8:	4053      	eors	r3, r2
    25ca:	b25b      	sxtb	r3, r3
    25cc:	b2dc      	uxtb	r4, r3
        break;
    25ce:	e006      	b.n	25de <gfx_blit+0xd2>
    case BIT_SET:
        byte &=mask;
    25d0:	ea04 0305 	and.w	r3, r4, r5
    25d4:	b2dc      	uxtb	r4, r3
        byte|=color;
    25d6:	79fb      	ldrb	r3, [r7, #7]
    25d8:	4323      	orrs	r3, r4
    25da:	b2dc      	uxtb	r4, r3
        break;
    25dc:	bf00      	nop
    }//switch (op)
    video_buffer[idx]=byte;
    25de:	4b0b      	ldr	r3, [pc, #44]	; (260c <gfx_blit+0x100>)
    25e0:	4622      	mov	r2, r4
    25e2:	559a      	strb	r2, [r3, r6]
    return !((byte&~mask)^color==0);
    25e4:	4622      	mov	r2, r4
    25e6:	462b      	mov	r3, r5
    25e8:	43db      	mvns	r3, r3
    25ea:	4013      	ands	r3, r2
    25ec:	79fa      	ldrb	r2, [r7, #7]
    25ee:	2a00      	cmp	r2, #0
    25f0:	bf0c      	ite	eq
    25f2:	2201      	moveq	r2, #1
    25f4:	2200      	movne	r2, #0
    25f6:	b2d2      	uxtb	r2, r2
    25f8:	4293      	cmp	r3, r2
    25fa:	bf0c      	ite	eq
    25fc:	2301      	moveq	r3, #1
    25fe:	2300      	movne	r3, #0
    2600:	b2db      	uxtb	r3, r3
}
    2602:	4618      	mov	r0, r3
    2604:	371c      	adds	r7, #28
    2606:	46bd      	mov	sp, r7
    2608:	bdf0      	pop	{r4, r5, r6, r7, pc}
    260a:	bf00      	nop
    260c:	20002750 	.word	0x20002750

00002610 <gfx_cls>:
        byte|=color<<4;
    }
    video_buffer[idx]=byte;
}
*/
void gfx_cls(){
    2610:	b580      	push	{r7, lr}
    2612:	b082      	sub	sp, #8
    2614:	af00      	add	r7, sp, #0
	int x;
    vmode_params_t *vparams=get_video_params();
    2616:	f002 ff89 	bl	552c <get_video_params>
    261a:	6038      	str	r0, [r7, #0]
	for (x=0;x<VIDEO_BUFFER_SIZE;x++) video_buffer[x]=0;
    261c:	2300      	movs	r3, #0
    261e:	607b      	str	r3, [r7, #4]
    2620:	e007      	b.n	2632 <gfx_cls+0x22>
    2622:	4a0a      	ldr	r2, [pc, #40]	; (264c <gfx_cls+0x3c>)
    2624:	687b      	ldr	r3, [r7, #4]
    2626:	4413      	add	r3, r2
    2628:	2200      	movs	r2, #0
    262a:	701a      	strb	r2, [r3, #0]
    262c:	687b      	ldr	r3, [r7, #4]
    262e:	3301      	adds	r3, #1
    2630:	607b      	str	r3, [r7, #4]
    2632:	687b      	ldr	r3, [r7, #4]
    2634:	f242 725f 	movw	r2, #10079	; 0x275f
    2638:	4293      	cmp	r3, r2
    263a:	ddf2      	ble.n	2622 <gfx_cls+0x12>
    set_cursor(0,0);
    263c:	2100      	movs	r1, #0
    263e:	2000      	movs	r0, #0
    2640:	f002 fb0e 	bl	4c60 <set_cursor>
}
    2644:	bf00      	nop
    2646:	3708      	adds	r7, #8
    2648:	46bd      	mov	sp, r7
    264a:	bd80      	pop	{r7, pc}
    264c:	20002750 	.word	0x20002750

00002650 <move_up>:

static uint8_t* move_up(uint8_t* src, uint8_t* dest, int size){
    2650:	b480      	push	{r7}
    2652:	b085      	sub	sp, #20
    2654:	af00      	add	r7, sp, #0
    2656:	60f8      	str	r0, [r7, #12]
    2658:	60b9      	str	r1, [r7, #8]
    265a:	607a      	str	r2, [r7, #4]
    while (size--) *--dest=*--src;
    265c:	e009      	b.n	2672 <move_up+0x22>
    265e:	68bb      	ldr	r3, [r7, #8]
    2660:	3b01      	subs	r3, #1
    2662:	60bb      	str	r3, [r7, #8]
    2664:	68fb      	ldr	r3, [r7, #12]
    2666:	3b01      	subs	r3, #1
    2668:	60fb      	str	r3, [r7, #12]
    266a:	68fb      	ldr	r3, [r7, #12]
    266c:	781a      	ldrb	r2, [r3, #0]
    266e:	68bb      	ldr	r3, [r7, #8]
    2670:	701a      	strb	r2, [r3, #0]
    2672:	687b      	ldr	r3, [r7, #4]
    2674:	1e5a      	subs	r2, r3, #1
    2676:	607a      	str	r2, [r7, #4]
    2678:	2b00      	cmp	r3, #0
    267a:	d1f0      	bne.n	265e <move_up+0xe>
    return dest;
    267c:	68bb      	ldr	r3, [r7, #8]
}
    267e:	4618      	mov	r0, r3
    2680:	3714      	adds	r7, #20
    2682:	46bd      	mov	sp, r7
    2684:	bc80      	pop	{r7}
    2686:	4770      	bx	lr

00002688 <move_down>:

static uint8_t* move_down(uint8_t* src, uint8_t* dest, int size){
    2688:	b480      	push	{r7}
    268a:	b085      	sub	sp, #20
    268c:	af00      	add	r7, sp, #0
    268e:	60f8      	str	r0, [r7, #12]
    2690:	60b9      	str	r1, [r7, #8]
    2692:	607a      	str	r2, [r7, #4]
    while (size--) *dest++=*src++;
    2694:	e007      	b.n	26a6 <move_down+0x1e>
    2696:	68bb      	ldr	r3, [r7, #8]
    2698:	1c5a      	adds	r2, r3, #1
    269a:	60ba      	str	r2, [r7, #8]
    269c:	68fa      	ldr	r2, [r7, #12]
    269e:	1c51      	adds	r1, r2, #1
    26a0:	60f9      	str	r1, [r7, #12]
    26a2:	7812      	ldrb	r2, [r2, #0]
    26a4:	701a      	strb	r2, [r3, #0]
    26a6:	687b      	ldr	r3, [r7, #4]
    26a8:	1e5a      	subs	r2, r3, #1
    26aa:	607a      	str	r2, [r7, #4]
    26ac:	2b00      	cmp	r3, #0
    26ae:	d1f2      	bne.n	2696 <move_down+0xe>
    return dest;
    26b0:	68bb      	ldr	r3, [r7, #8]
}
    26b2:	4618      	mov	r0, r3
    26b4:	3714      	adds	r7, #20
    26b6:	46bd      	mov	sp, r7
    26b8:	bc80      	pop	{r7}
    26ba:	4770      	bx	lr

000026bc <gfx_scroll_up>:


void gfx_scroll_up(uint8_t n){
    26bc:	b580      	push	{r7, lr}
    26be:	b086      	sub	sp, #24
    26c0:	af00      	add	r7, sp, #0
    26c2:	4603      	mov	r3, r0
    26c4:	71fb      	strb	r3, [r7, #7]
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    26c6:	f002 ff31 	bl	552c <get_video_params>
    26ca:	60f8      	str	r0, [r7, #12]
    src=&video_buffer[n*vparams->bpr];
    26cc:	79fb      	ldrb	r3, [r7, #7]
    26ce:	68fa      	ldr	r2, [r7, #12]
    26d0:	7a12      	ldrb	r2, [r2, #8]
    26d2:	fb02 f303 	mul.w	r3, r2, r3
    26d6:	4a15      	ldr	r2, [pc, #84]	; (272c <gfx_scroll_up+0x70>)
    26d8:	4413      	add	r3, r2
    26da:	60bb      	str	r3, [r7, #8]
    dest=video_buffer;
    26dc:	4b13      	ldr	r3, [pc, #76]	; (272c <gfx_scroll_up+0x70>)
    26de:	617b      	str	r3, [r7, #20]
    size = (vparams->vres-n)*vparams->bpr;
    26e0:	68fb      	ldr	r3, [r7, #12]
    26e2:	89db      	ldrh	r3, [r3, #14]
    26e4:	461a      	mov	r2, r3
    26e6:	79fb      	ldrb	r3, [r7, #7]
    26e8:	1ad3      	subs	r3, r2, r3
    26ea:	68fa      	ldr	r2, [r7, #12]
    26ec:	7a12      	ldrb	r2, [r2, #8]
    26ee:	fb02 f303 	mul.w	r3, r2, r3
    26f2:	613b      	str	r3, [r7, #16]
    dest=move_down(src,dest,size);
    26f4:	693a      	ldr	r2, [r7, #16]
    26f6:	6979      	ldr	r1, [r7, #20]
    26f8:	68b8      	ldr	r0, [r7, #8]
    26fa:	f7ff ffc5 	bl	2688 <move_down>
    26fe:	6178      	str	r0, [r7, #20]
    size=vparams->bpr*n;
    2700:	68fb      	ldr	r3, [r7, #12]
    2702:	7a1b      	ldrb	r3, [r3, #8]
    2704:	461a      	mov	r2, r3
    2706:	79fb      	ldrb	r3, [r7, #7]
    2708:	fb03 f302 	mul.w	r3, r3, r2
    270c:	613b      	str	r3, [r7, #16]
    while (size--) *dest++=0;
    270e:	e004      	b.n	271a <gfx_scroll_up+0x5e>
    2710:	697b      	ldr	r3, [r7, #20]
    2712:	1c5a      	adds	r2, r3, #1
    2714:	617a      	str	r2, [r7, #20]
    2716:	2200      	movs	r2, #0
    2718:	701a      	strb	r2, [r3, #0]
    271a:	693b      	ldr	r3, [r7, #16]
    271c:	1e5a      	subs	r2, r3, #1
    271e:	613a      	str	r2, [r7, #16]
    2720:	2b00      	cmp	r3, #0
    2722:	d1f5      	bne.n	2710 <gfx_scroll_up+0x54>
}
    2724:	bf00      	nop
    2726:	3718      	adds	r7, #24
    2728:	46bd      	mov	sp, r7
    272a:	bd80      	pop	{r7, pc}
    272c:	20002750 	.word	0x20002750

00002730 <gfx_scroll_down>:

void gfx_scroll_down(uint8_t n){
    2730:	b580      	push	{r7, lr}
    2732:	b086      	sub	sp, #24
    2734:	af00      	add	r7, sp, #0
    2736:	4603      	mov	r3, r0
    2738:	71fb      	strb	r3, [r7, #7]
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    273a:	f002 fef7 	bl	552c <get_video_params>
    273e:	60f8      	str	r0, [r7, #12]
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    2740:	68fb      	ldr	r3, [r7, #12]
    2742:	89db      	ldrh	r3, [r3, #14]
    2744:	461a      	mov	r2, r3
    2746:	79fb      	ldrb	r3, [r7, #7]
    2748:	1ad3      	subs	r3, r2, r3
    274a:	68fa      	ldr	r2, [r7, #12]
    274c:	7a12      	ldrb	r2, [r2, #8]
    274e:	fb02 f303 	mul.w	r3, r2, r3
    2752:	4a1a      	ldr	r2, [pc, #104]	; (27bc <gfx_scroll_down+0x8c>)
    2754:	4413      	add	r3, r2
    2756:	60bb      	str	r3, [r7, #8]
    dest=&video_buffer[vparams->vres*vparams->bpr];
    2758:	68fb      	ldr	r3, [r7, #12]
    275a:	89db      	ldrh	r3, [r3, #14]
    275c:	461a      	mov	r2, r3
    275e:	68fb      	ldr	r3, [r7, #12]
    2760:	7a1b      	ldrb	r3, [r3, #8]
    2762:	fb03 f302 	mul.w	r3, r3, r2
    2766:	4a15      	ldr	r2, [pc, #84]	; (27bc <gfx_scroll_down+0x8c>)
    2768:	4413      	add	r3, r2
    276a:	617b      	str	r3, [r7, #20]
    size = (vparams->vres-n)*vparams->bpr;
    276c:	68fb      	ldr	r3, [r7, #12]
    276e:	89db      	ldrh	r3, [r3, #14]
    2770:	461a      	mov	r2, r3
    2772:	79fb      	ldrb	r3, [r7, #7]
    2774:	1ad3      	subs	r3, r2, r3
    2776:	68fa      	ldr	r2, [r7, #12]
    2778:	7a12      	ldrb	r2, [r2, #8]
    277a:	fb02 f303 	mul.w	r3, r2, r3
    277e:	613b      	str	r3, [r7, #16]
    dest=move_up(src,dest,size);
    2780:	693a      	ldr	r2, [r7, #16]
    2782:	6979      	ldr	r1, [r7, #20]
    2784:	68b8      	ldr	r0, [r7, #8]
    2786:	f7ff ff63 	bl	2650 <move_up>
    278a:	6178      	str	r0, [r7, #20]
    size=vparams->bpr*n;
    278c:	68fb      	ldr	r3, [r7, #12]
    278e:	7a1b      	ldrb	r3, [r3, #8]
    2790:	461a      	mov	r2, r3
    2792:	79fb      	ldrb	r3, [r7, #7]
    2794:	fb03 f302 	mul.w	r3, r3, r2
    2798:	613b      	str	r3, [r7, #16]
    while (size--) *--dest=0;
    279a:	e005      	b.n	27a8 <gfx_scroll_down+0x78>
    279c:	697b      	ldr	r3, [r7, #20]
    279e:	3b01      	subs	r3, #1
    27a0:	617b      	str	r3, [r7, #20]
    27a2:	697b      	ldr	r3, [r7, #20]
    27a4:	2200      	movs	r2, #0
    27a6:	701a      	strb	r2, [r3, #0]
    27a8:	693b      	ldr	r3, [r7, #16]
    27aa:	1e5a      	subs	r2, r3, #1
    27ac:	613a      	str	r2, [r7, #16]
    27ae:	2b00      	cmp	r3, #0
    27b0:	d1f4      	bne.n	279c <gfx_scroll_down+0x6c>
}
    27b2:	bf00      	nop
    27b4:	3718      	adds	r7, #24
    27b6:	46bd      	mov	sp, r7
    27b8:	bd80      	pop	{r7, pc}
    27ba:	bf00      	nop
    27bc:	20002750 	.word	0x20002750

000027c0 <gfx_scroll_left>:

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    27c0:	b580      	push	{r7, lr}
    27c2:	b088      	sub	sp, #32
    27c4:	af00      	add	r7, sp, #0
    27c6:	4603      	mov	r3, r0
    27c8:	71fb      	strb	r3, [r7, #7]
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    27ca:	f002 feaf 	bl	552c <get_video_params>
    27ce:	6138      	str	r0, [r7, #16]
    for (y=0;y<vparams->vres;y++){
    27d0:	2300      	movs	r3, #0
    27d2:	61fb      	str	r3, [r7, #28]
    27d4:	e02a      	b.n	282c <gfx_scroll_left+0x6c>
        dest=&video_buffer[y*vparams->bpr];
    27d6:	693b      	ldr	r3, [r7, #16]
    27d8:	7a1b      	ldrb	r3, [r3, #8]
    27da:	461a      	mov	r2, r3
    27dc:	69fb      	ldr	r3, [r7, #28]
    27de:	fb03 f302 	mul.w	r3, r3, r2
    27e2:	4a17      	ldr	r2, [pc, #92]	; (2840 <gfx_scroll_left+0x80>)
    27e4:	4413      	add	r3, r2
    27e6:	617b      	str	r3, [r7, #20]
        src=dest+n;
    27e8:	79fb      	ldrb	r3, [r7, #7]
    27ea:	697a      	ldr	r2, [r7, #20]
    27ec:	4413      	add	r3, r2
    27ee:	60fb      	str	r3, [r7, #12]
        size=vparams->hres/2-n;
    27f0:	693b      	ldr	r3, [r7, #16]
    27f2:	899b      	ldrh	r3, [r3, #12]
    27f4:	085b      	lsrs	r3, r3, #1
    27f6:	b29b      	uxth	r3, r3
    27f8:	461a      	mov	r2, r3
    27fa:	79fb      	ldrb	r3, [r7, #7]
    27fc:	1ad3      	subs	r3, r2, r3
    27fe:	61bb      	str	r3, [r7, #24]
        dest=move_down(src,dest,size);
    2800:	69ba      	ldr	r2, [r7, #24]
    2802:	6979      	ldr	r1, [r7, #20]
    2804:	68f8      	ldr	r0, [r7, #12]
    2806:	f7ff ff3f 	bl	2688 <move_down>
    280a:	6178      	str	r0, [r7, #20]
        size=n;
    280c:	79fb      	ldrb	r3, [r7, #7]
    280e:	61bb      	str	r3, [r7, #24]
        while (size--) *dest++=0;
    2810:	e004      	b.n	281c <gfx_scroll_left+0x5c>
    2812:	697b      	ldr	r3, [r7, #20]
    2814:	1c5a      	adds	r2, r3, #1
    2816:	617a      	str	r2, [r7, #20]
    2818:	2200      	movs	r2, #0
    281a:	701a      	strb	r2, [r3, #0]
    281c:	69bb      	ldr	r3, [r7, #24]
    281e:	1e5a      	subs	r2, r3, #1
    2820:	61ba      	str	r2, [r7, #24]
    2822:	2b00      	cmp	r3, #0
    2824:	d1f5      	bne.n	2812 <gfx_scroll_left+0x52>
    for (y=0;y<vparams->vres;y++){
    2826:	69fb      	ldr	r3, [r7, #28]
    2828:	3301      	adds	r3, #1
    282a:	61fb      	str	r3, [r7, #28]
    282c:	693b      	ldr	r3, [r7, #16]
    282e:	89db      	ldrh	r3, [r3, #14]
    2830:	461a      	mov	r2, r3
    2832:	69fb      	ldr	r3, [r7, #28]
    2834:	429a      	cmp	r2, r3
    2836:	dcce      	bgt.n	27d6 <gfx_scroll_left+0x16>
    }
}
    2838:	bf00      	nop
    283a:	3720      	adds	r7, #32
    283c:	46bd      	mov	sp, r7
    283e:	bd80      	pop	{r7, pc}
    2840:	20002750 	.word	0x20002750

00002844 <gfx_scroll_right>:

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    2844:	b580      	push	{r7, lr}
    2846:	b088      	sub	sp, #32
    2848:	af00      	add	r7, sp, #0
    284a:	4603      	mov	r3, r0
    284c:	71fb      	strb	r3, [r7, #7]
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    284e:	f002 fe6d 	bl	552c <get_video_params>
    2852:	6138      	str	r0, [r7, #16]
    for (y=0;y<vparams->vres;y++){
    2854:	2300      	movs	r3, #0
    2856:	61fb      	str	r3, [r7, #28]
    2858:	e02f      	b.n	28ba <gfx_scroll_right+0x76>
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    285a:	693b      	ldr	r3, [r7, #16]
    285c:	7a1b      	ldrb	r3, [r3, #8]
    285e:	461a      	mov	r2, r3
    2860:	69fb      	ldr	r3, [r7, #28]
    2862:	fb03 f302 	mul.w	r3, r3, r2
    2866:	4a1a      	ldr	r2, [pc, #104]	; (28d0 <gfx_scroll_right+0x8c>)
    2868:	4413      	add	r3, r2
    286a:	693a      	ldr	r2, [r7, #16]
    286c:	7a12      	ldrb	r2, [r2, #8]
    286e:	4413      	add	r3, r2
    2870:	617b      	str	r3, [r7, #20]
        src=dest-n;
    2872:	79fb      	ldrb	r3, [r7, #7]
    2874:	425b      	negs	r3, r3
    2876:	697a      	ldr	r2, [r7, #20]
    2878:	4413      	add	r3, r2
    287a:	60fb      	str	r3, [r7, #12]
        size=vparams->hres/2-n;
    287c:	693b      	ldr	r3, [r7, #16]
    287e:	899b      	ldrh	r3, [r3, #12]
    2880:	085b      	lsrs	r3, r3, #1
    2882:	b29b      	uxth	r3, r3
    2884:	461a      	mov	r2, r3
    2886:	79fb      	ldrb	r3, [r7, #7]
    2888:	1ad3      	subs	r3, r2, r3
    288a:	61bb      	str	r3, [r7, #24]
        dest=move_up(src,dest,size);
    288c:	69ba      	ldr	r2, [r7, #24]
    288e:	6979      	ldr	r1, [r7, #20]
    2890:	68f8      	ldr	r0, [r7, #12]
    2892:	f7ff fedd 	bl	2650 <move_up>
    2896:	6178      	str	r0, [r7, #20]
        size=n;
    2898:	79fb      	ldrb	r3, [r7, #7]
    289a:	61bb      	str	r3, [r7, #24]
        while (size--) *--dest=0;
    289c:	e005      	b.n	28aa <gfx_scroll_right+0x66>
    289e:	697b      	ldr	r3, [r7, #20]
    28a0:	3b01      	subs	r3, #1
    28a2:	617b      	str	r3, [r7, #20]
    28a4:	697b      	ldr	r3, [r7, #20]
    28a6:	2200      	movs	r2, #0
    28a8:	701a      	strb	r2, [r3, #0]
    28aa:	69bb      	ldr	r3, [r7, #24]
    28ac:	1e5a      	subs	r2, r3, #1
    28ae:	61ba      	str	r2, [r7, #24]
    28b0:	2b00      	cmp	r3, #0
    28b2:	d1f4      	bne.n	289e <gfx_scroll_right+0x5a>
    for (y=0;y<vparams->vres;y++){
    28b4:	69fb      	ldr	r3, [r7, #28]
    28b6:	3301      	adds	r3, #1
    28b8:	61fb      	str	r3, [r7, #28]
    28ba:	693b      	ldr	r3, [r7, #16]
    28bc:	89db      	ldrh	r3, [r3, #14]
    28be:	461a      	mov	r2, r3
    28c0:	69fb      	ldr	r3, [r7, #28]
    28c2:	429a      	cmp	r2, r3
    28c4:	dcc9      	bgt.n	285a <gfx_scroll_right+0x16>
    }
}
    28c6:	bf00      	nop
    28c8:	3720      	adds	r7, #32
    28ca:	46bd      	mov	sp, r7
    28cc:	bd80      	pop	{r7, pc}
    28ce:	bf00      	nop
    28d0:	20002750 	.word	0x20002750

000028d4 <gfx_get_pixel>:


uint8_t gfx_get_pixel(int x, int y){
    28d4:	b590      	push	{r4, r7, lr}
    28d6:	b085      	sub	sp, #20
    28d8:	af00      	add	r7, sp, #0
    28da:	6078      	str	r0, [r7, #4]
    28dc:	6039      	str	r1, [r7, #0]
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    28de:	f002 fe25 	bl	552c <get_video_params>
    28e2:	60f8      	str	r0, [r7, #12]
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    28e4:	687b      	ldr	r3, [r7, #4]
    28e6:	2b00      	cmp	r3, #0
    28e8:	db0e      	blt.n	2908 <gfx_get_pixel+0x34>
    28ea:	68fb      	ldr	r3, [r7, #12]
    28ec:	899b      	ldrh	r3, [r3, #12]
    28ee:	461a      	mov	r2, r3
    28f0:	687b      	ldr	r3, [r7, #4]
    28f2:	429a      	cmp	r2, r3
    28f4:	dd08      	ble.n	2908 <gfx_get_pixel+0x34>
    28f6:	683b      	ldr	r3, [r7, #0]
    28f8:	2b00      	cmp	r3, #0
    28fa:	db05      	blt.n	2908 <gfx_get_pixel+0x34>
    28fc:	68fb      	ldr	r3, [r7, #12]
    28fe:	89db      	ldrh	r3, [r3, #14]
    2900:	461a      	mov	r2, r3
    2902:	683b      	ldr	r3, [r7, #0]
    2904:	429a      	cmp	r2, r3
    2906:	dc01      	bgt.n	290c <gfx_get_pixel+0x38>
    2908:	23ff      	movs	r3, #255	; 0xff
    290a:	e014      	b.n	2936 <gfx_get_pixel+0x62>
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    290c:	68fb      	ldr	r3, [r7, #12]
    290e:	7a1b      	ldrb	r3, [r3, #8]
    2910:	461a      	mov	r2, r3
    2912:	683b      	ldr	r3, [r7, #0]
    2914:	fb03 f202 	mul.w	r2, r3, r2
    2918:	687b      	ldr	r3, [r7, #4]
    291a:	105b      	asrs	r3, r3, #1
    291c:	4413      	add	r3, r2
    291e:	4a08      	ldr	r2, [pc, #32]	; (2940 <gfx_get_pixel+0x6c>)
    2920:	5cd4      	ldrb	r4, [r2, r3]
    if (!(x&1)) byte>>=4;
    2922:	687b      	ldr	r3, [r7, #4]
    2924:	f003 0301 	and.w	r3, r3, #1
    2928:	2b00      	cmp	r3, #0
    292a:	d101      	bne.n	2930 <gfx_get_pixel+0x5c>
    292c:	0923      	lsrs	r3, r4, #4
    292e:	b2dc      	uxtb	r4, r3
    return byte&0xf;
    2930:	f004 030f 	and.w	r3, r4, #15
    2934:	b2db      	uxtb	r3, r3
}
    2936:	4618      	mov	r0, r3
    2938:	3714      	adds	r7, #20
    293a:	46bd      	mov	sp, r7
    293c:	bd90      	pop	{r4, r7, pc}
    293e:	bf00      	nop
    2940:	20002750 	.word	0x20002750

00002944 <gfx_sprite>:

static const uint8_t bit_mask[3]={0x80,0xc0,0xf0};
static const uint8_t bit_shift[3]={7,6,4};
static const uint8_t pixels_per_byte[3]={8,4,2};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    2944:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    2948:	b086      	sub	sp, #24
    294a:	af00      	add	r7, sp, #0
    294c:	60f8      	str	r0, [r7, #12]
    294e:	60b9      	str	r1, [r7, #8]
    2950:	4611      	mov	r1, r2
    2952:	461a      	mov	r2, r3
    2954:	460b      	mov	r3, r1
    2956:	71fb      	strb	r3, [r7, #7]
    2958:	4613      	mov	r3, r2
    295a:	71bb      	strb	r3, [r7, #6]
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    295c:	2300      	movs	r3, #0
    295e:	617b      	str	r3, [r7, #20]
    
    shift=bit_shift[sprite_bpp];
    2960:	4b2c      	ldr	r3, [pc, #176]	; (2a14 <gfx_sprite+0xd0>)
    2962:	781b      	ldrb	r3, [r3, #0]
    2964:	461a      	mov	r2, r3
    2966:	4b2c      	ldr	r3, [pc, #176]	; (2a18 <gfx_sprite+0xd4>)
    2968:	f813 a002 	ldrb.w	sl, [r3, r2]
    bmp_byte=*sprite++;
    296c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    296e:	1c5a      	adds	r2, r3, #1
    2970:	63ba      	str	r2, [r7, #56]	; 0x38
    2972:	f893 8000 	ldrb.w	r8, [r3]
    mask=bit_mask[sprite_bpp];
    ppb=pixels_per_byte[sprite_bpp];
    2976:	4b27      	ldr	r3, [pc, #156]	; (2a14 <gfx_sprite+0xd0>)
    2978:	781b      	ldrb	r3, [r3, #0]
    297a:	461a      	mov	r2, r3
    297c:	4b27      	ldr	r3, [pc, #156]	; (2a1c <gfx_sprite+0xd8>)
    297e:	5c9d      	ldrb	r5, [r3, r2]
    for (y0=y;y0<(y+height);y0++){ 
    2980:	68bc      	ldr	r4, [r7, #8]
    2982:	e03b      	b.n	29fc <gfx_sprite+0xb8>
        for(x0=x;x0<(x+width);x0++){
    2984:	68fe      	ldr	r6, [r7, #12]
    2986:	e033      	b.n	29f0 <gfx_sprite+0xac>
            if (sprite_bpp<FOUR_BPP){
    2988:	4b22      	ldr	r3, [pc, #136]	; (2a14 <gfx_sprite+0xd0>)
    298a:	781b      	ldrb	r3, [r3, #0]
    298c:	2b01      	cmp	r3, #1
    298e:	d807      	bhi.n	29a0 <gfx_sprite+0x5c>
                color=palette[bmp_byte>>shift];
    2990:	4642      	mov	r2, r8
    2992:	4653      	mov	r3, sl
    2994:	fa42 f303 	asr.w	r3, r2, r3
    2998:	4a21      	ldr	r2, [pc, #132]	; (2a20 <gfx_sprite+0xdc>)
    299a:	f812 9003 	ldrb.w	r9, [r2, r3]
    299e:	e005      	b.n	29ac <gfx_sprite+0x68>
            }else{
                color=bmp_byte>>shift;
    29a0:	4642      	mov	r2, r8
    29a2:	4653      	mov	r3, sl
    29a4:	fa42 f303 	asr.w	r3, r2, r3
    29a8:	fa5f f983 	uxtb.w	r9, r3
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    29ac:	2302      	movs	r3, #2
    29ae:	464a      	mov	r2, r9
    29b0:	4621      	mov	r1, r4
    29b2:	4630      	mov	r0, r6
    29b4:	f7ff fdaa 	bl	250c <gfx_blit>
    29b8:	4602      	mov	r2, r0
    29ba:	697b      	ldr	r3, [r7, #20]
    29bc:	4313      	orrs	r3, r2
    29be:	617b      	str	r3, [r7, #20]
            bmp_byte<<=(8-shift);
    29c0:	4642      	mov	r2, r8
    29c2:	4653      	mov	r3, sl
    29c4:	f1c3 0308 	rsb	r3, r3, #8
    29c8:	fa02 f303 	lsl.w	r3, r2, r3
    29cc:	fa5f f883 	uxtb.w	r8, r3
            ppb--;
    29d0:	462b      	mov	r3, r5
    29d2:	3b01      	subs	r3, #1
    29d4:	b2dd      	uxtb	r5, r3
            if (!ppb){
    29d6:	2d00      	cmp	r5, #0
    29d8:	d109      	bne.n	29ee <gfx_sprite+0xaa>
                bmp_byte=*sprite++;
    29da:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    29dc:	1c5a      	adds	r2, r3, #1
    29de:	63ba      	str	r2, [r7, #56]	; 0x38
    29e0:	f893 8000 	ldrb.w	r8, [r3]
                ppb=pixels_per_byte[sprite_bpp];
    29e4:	4b0b      	ldr	r3, [pc, #44]	; (2a14 <gfx_sprite+0xd0>)
    29e6:	781b      	ldrb	r3, [r3, #0]
    29e8:	461a      	mov	r2, r3
    29ea:	4b0c      	ldr	r3, [pc, #48]	; (2a1c <gfx_sprite+0xd8>)
    29ec:	5c9d      	ldrb	r5, [r3, r2]
        for(x0=x;x0<(x+width);x0++){
    29ee:	3601      	adds	r6, #1
    29f0:	79fa      	ldrb	r2, [r7, #7]
    29f2:	68fb      	ldr	r3, [r7, #12]
    29f4:	4413      	add	r3, r2
    29f6:	42b3      	cmp	r3, r6
    29f8:	dcc6      	bgt.n	2988 <gfx_sprite+0x44>
    for (y0=y;y0<(y+height);y0++){ 
    29fa:	3401      	adds	r4, #1
    29fc:	79ba      	ldrb	r2, [r7, #6]
    29fe:	68bb      	ldr	r3, [r7, #8]
    2a00:	4413      	add	r3, r2
    2a02:	42a3      	cmp	r3, r4
    2a04:	dcbe      	bgt.n	2984 <gfx_sprite+0x40>
            }
        }//for(x)
    }//for(y0)
    return collision;
    2a06:	697b      	ldr	r3, [r7, #20]
}
    2a08:	4618      	mov	r0, r3
    2a0a:	3718      	adds	r7, #24
    2a0c:	46bd      	mov	sp, r7
    2a0e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    2a12:	bf00      	nop
    2a14:	200001c4 	.word	0x200001c4
    2a18:	000060b4 	.word	0x000060b4
    2a1c:	000060b8 	.word	0x000060b8
    2a20:	200001c8 	.word	0x200001c8

00002a24 <set_sysclock>:
//void* ffa;


// configure SYSCLK à la fréquence maximale de 72 Mhz
// en utilisant le cristal externe (HSE) et le PLL
static void set_sysclock(){
    2a24:	b480      	push	{r7}
    2a26:	af00      	add	r7, sp, #0
	 // active l'oscillateur externe
	RCC->CR|=RCC_CR_HSEON;
    2a28:	4a18      	ldr	r2, [pc, #96]	; (2a8c <set_sysclock+0x68>)
    2a2a:	4b18      	ldr	r3, [pc, #96]	; (2a8c <set_sysclock+0x68>)
    2a2c:	681b      	ldr	r3, [r3, #0]
    2a2e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2a32:	6013      	str	r3, [r2, #0]
	 // attend que l'oscillateur soit prêt
   while (!(RCC->CR&RCC_CR_HSERDY));
    2a34:	bf00      	nop
    2a36:	4b15      	ldr	r3, [pc, #84]	; (2a8c <set_sysclock+0x68>)
    2a38:	681b      	ldr	r3, [r3, #0]
    2a3a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    2a3e:	2b00      	cmp	r3, #0
    2a40:	d0f9      	beq.n	2a36 <set_sysclock+0x12>
     // sélection PREDIV1 pour la source du PLL
     // multiplie la fréquence HSE par 5 
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    2a42:	4a12      	ldr	r2, [pc, #72]	; (2a8c <set_sysclock+0x68>)
    2a44:	4b11      	ldr	r3, [pc, #68]	; (2a8c <set_sysclock+0x68>)
    2a46:	685b      	ldr	r3, [r3, #4]
    2a48:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    2a4c:	6053      	str	r3, [r2, #4]
    // active le PLL
    RCC->CR|=RCC_CR_PLLON;
    2a4e:	4a0f      	ldr	r2, [pc, #60]	; (2a8c <set_sysclock+0x68>)
    2a50:	4b0e      	ldr	r3, [pc, #56]	; (2a8c <set_sysclock+0x68>)
    2a52:	681b      	ldr	r3, [r3, #0]
    2a54:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    2a58:	6013      	str	r3, [r2, #0]
    // Attend que le PLL soit prêt
    while (!(RCC->CR&RCC_CR_PLLRDY));
    2a5a:	bf00      	nop
    2a5c:	4b0b      	ldr	r3, [pc, #44]	; (2a8c <set_sysclock+0x68>)
    2a5e:	681b      	ldr	r3, [r3, #0]
    2a60:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    2a64:	2b00      	cmp	r3, #0
    2a66:	d0f9      	beq.n	2a5c <set_sysclock+0x38>
    // ajoute délais d'accès à la mémoire flash
    // active le prefetch buffer
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    2a68:	4a09      	ldr	r2, [pc, #36]	; (2a90 <set_sysclock+0x6c>)
    2a6a:	4b09      	ldr	r3, [pc, #36]	; (2a90 <set_sysclock+0x6c>)
    2a6c:	681b      	ldr	r3, [r3, #0]
    2a6e:	f043 0312 	orr.w	r3, r3, #18
    2a72:	6013      	str	r3, [r2, #0]
	// La fréquence maximale pour APB1 doit-être de <=36 Mhz
	// donc divise SYSCLK/2
    // Sélectionne le PLL comme source pour SYSCLK dans CR
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    2a74:	4a05      	ldr	r2, [pc, #20]	; (2a8c <set_sysclock+0x68>)
    2a76:	4b05      	ldr	r3, [pc, #20]	; (2a8c <set_sysclock+0x68>)
    2a78:	685b      	ldr	r3, [r3, #4]
    2a7a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    2a7e:	f043 0302 	orr.w	r3, r3, #2
    2a82:	6053      	str	r3, [r2, #4]
}
    2a84:	bf00      	nop
    2a86:	46bd      	mov	sp, r7
    2a88:	bc80      	pop	{r7}
    2a8a:	4770      	bx	lr
    2a8c:	40021000 	.word	0x40021000
    2a90:	40022000 	.word	0x40022000

00002a94 <draw_balls>:

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

static const uint8_t pal2[4]={0,9,2,10};
static void draw_balls(){
    2a94:	b590      	push	{r4, r7, lr}
    2a96:	b085      	sub	sp, #20
    2a98:	af02      	add	r7, sp, #8
	int i;
	frame_sync();
    2a9a:	f002 fcb5 	bl	5408 <frame_sync>
	for (i=0;i<BALL_COUNT;i++){
    2a9e:	2300      	movs	r3, #0
    2aa0:	607b      	str	r3, [r7, #4]
    2aa2:	e02c      	b.n	2afe <draw_balls+0x6a>
		if (!i) set_palette(DEFAULT_PALETTE);else set_palette(pal2);
    2aa4:	687b      	ldr	r3, [r7, #4]
    2aa6:	2b00      	cmp	r3, #0
    2aa8:	d103      	bne.n	2ab2 <draw_balls+0x1e>
    2aaa:	4819      	ldr	r0, [pc, #100]	; (2b10 <draw_balls+0x7c>)
    2aac:	f7ff fd12 	bl	24d4 <set_palette>
    2ab0:	e002      	b.n	2ab8 <draw_balls+0x24>
    2ab2:	4818      	ldr	r0, [pc, #96]	; (2b14 <draw_balls+0x80>)
    2ab4:	f7ff fd0e 	bl	24d4 <set_palette>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    2ab8:	4917      	ldr	r1, [pc, #92]	; (2b18 <draw_balls+0x84>)
    2aba:	687a      	ldr	r2, [r7, #4]
    2abc:	4613      	mov	r3, r2
    2abe:	009b      	lsls	r3, r3, #2
    2ac0:	4413      	add	r3, r2
    2ac2:	009b      	lsls	r3, r3, #2
    2ac4:	440b      	add	r3, r1
    2ac6:	6818      	ldr	r0, [r3, #0]
    2ac8:	4913      	ldr	r1, [pc, #76]	; (2b18 <draw_balls+0x84>)
    2aca:	687a      	ldr	r2, [r7, #4]
    2acc:	4613      	mov	r3, r2
    2ace:	009b      	lsls	r3, r3, #2
    2ad0:	4413      	add	r3, r2
    2ad2:	009b      	lsls	r3, r3, #2
    2ad4:	440b      	add	r3, r1
    2ad6:	3304      	adds	r3, #4
    2ad8:	681c      	ldr	r4, [r3, #0]
    2ada:	490f      	ldr	r1, [pc, #60]	; (2b18 <draw_balls+0x84>)
    2adc:	687a      	ldr	r2, [r7, #4]
    2ade:	4613      	mov	r3, r2
    2ae0:	009b      	lsls	r3, r3, #2
    2ae2:	4413      	add	r3, r2
    2ae4:	009b      	lsls	r3, r3, #2
    2ae6:	440b      	add	r3, r1
    2ae8:	3310      	adds	r3, #16
    2aea:	681b      	ldr	r3, [r3, #0]
    2aec:	9300      	str	r3, [sp, #0]
    2aee:	2308      	movs	r3, #8
    2af0:	2208      	movs	r2, #8
    2af2:	4621      	mov	r1, r4
    2af4:	f7ff ff26 	bl	2944 <gfx_sprite>
	for (i=0;i<BALL_COUNT;i++){
    2af8:	687b      	ldr	r3, [r7, #4]
    2afa:	3301      	adds	r3, #1
    2afc:	607b      	str	r3, [r7, #4]
    2afe:	687b      	ldr	r3, [r7, #4]
    2b00:	2b01      	cmp	r3, #1
    2b02:	ddcf      	ble.n	2aa4 <draw_balls+0x10>
	}
	wait_sync_end();
    2b04:	f002 fc90 	bl	5428 <wait_sync_end>
}
    2b08:	bf00      	nop
    2b0a:	370c      	adds	r7, #12
    2b0c:	46bd      	mov	sp, r7
    2b0e:	bd90      	pop	{r4, r7, pc}
    2b10:	000060ac 	.word	0x000060ac
    2b14:	00006104 	.word	0x00006104
    2b18:	20002728 	.word	0x20002728

00002b1c <isqrt>:

//REF: https://en.wikipedia.org/wiki/Integer_square_root
int isqrt(int n){
    2b1c:	b580      	push	{r7, lr}
    2b1e:	b084      	sub	sp, #16
    2b20:	af00      	add	r7, sp, #0
    2b22:	6078      	str	r0, [r7, #4]
	int small, large;
	if (n<2) return n;
    2b24:	687b      	ldr	r3, [r7, #4]
    2b26:	2b01      	cmp	r3, #1
    2b28:	dc01      	bgt.n	2b2e <isqrt+0x12>
    2b2a:	687b      	ldr	r3, [r7, #4]
    2b2c:	e014      	b.n	2b58 <isqrt+0x3c>
  	small = isqrt(n >> 2) << 1;
    2b2e:	687b      	ldr	r3, [r7, #4]
    2b30:	109b      	asrs	r3, r3, #2
    2b32:	4618      	mov	r0, r3
    2b34:	f7ff fff2 	bl	2b1c <isqrt>
    2b38:	4603      	mov	r3, r0
    2b3a:	005b      	lsls	r3, r3, #1
    2b3c:	60fb      	str	r3, [r7, #12]
	large = small + 1;
    2b3e:	68fb      	ldr	r3, [r7, #12]
    2b40:	3301      	adds	r3, #1
    2b42:	60bb      	str	r3, [r7, #8]
	if (large*large > n)
    2b44:	68bb      	ldr	r3, [r7, #8]
    2b46:	68ba      	ldr	r2, [r7, #8]
    2b48:	fb02 f203 	mul.w	r2, r2, r3
    2b4c:	687b      	ldr	r3, [r7, #4]
    2b4e:	429a      	cmp	r2, r3
    2b50:	dd01      	ble.n	2b56 <isqrt+0x3a>
		return small;
    2b52:	68fb      	ldr	r3, [r7, #12]
    2b54:	e000      	b.n	2b58 <isqrt+0x3c>
	else
		return large;	
    2b56:	68bb      	ldr	r3, [r7, #8]
}
    2b58:	4618      	mov	r0, r3
    2b5a:	3710      	adds	r7, #16
    2b5c:	46bd      	mov	sp, r7
    2b5e:	bd80      	pop	{r7, pc}

00002b60 <distance>:

unsigned distance(ball_t *ball1, ball_t *ball2){
    2b60:	b580      	push	{r7, lr}
    2b62:	b082      	sub	sp, #8
    2b64:	af00      	add	r7, sp, #0
    2b66:	6078      	str	r0, [r7, #4]
    2b68:	6039      	str	r1, [r7, #0]
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    2b6a:	687b      	ldr	r3, [r7, #4]
    2b6c:	681b      	ldr	r3, [r3, #0]
    2b6e:	683a      	ldr	r2, [r7, #0]
    2b70:	6812      	ldr	r2, [r2, #0]
    2b72:	fb02 f203 	mul.w	r2, r2, r3
    2b76:	687b      	ldr	r3, [r7, #4]
    2b78:	685b      	ldr	r3, [r3, #4]
    2b7a:	6839      	ldr	r1, [r7, #0]
    2b7c:	6849      	ldr	r1, [r1, #4]
    2b7e:	fb01 f303 	mul.w	r3, r1, r3
    2b82:	4413      	add	r3, r2
    2b84:	2b00      	cmp	r3, #0
    2b86:	bfb8      	it	lt
    2b88:	425b      	neglt	r3, r3
    2b8a:	4618      	mov	r0, r3
    2b8c:	f7ff ffc6 	bl	2b1c <isqrt>
    2b90:	4603      	mov	r3, r0
}
    2b92:	4618      	mov	r0, r3
    2b94:	3708      	adds	r7, #8
    2b96:	46bd      	mov	sp, r7
    2b98:	bd80      	pop	{r7, pc}

00002b9a <move_balls>:

static void move_balls(){
    2b9a:	b580      	push	{r7, lr}
    2b9c:	b082      	sub	sp, #8
    2b9e:	af00      	add	r7, sp, #0
	int i;
	vmode_params_t *vparams=get_video_params();
    2ba0:	f002 fcc4 	bl	552c <get_video_params>
    2ba4:	6038      	str	r0, [r7, #0]
	for (i=0;i<BALL_COUNT;i++){
    2ba6:	2300      	movs	r3, #0
    2ba8:	607b      	str	r3, [r7, #4]
    2baa:	e0c3      	b.n	2d34 <move_balls+0x19a>
		balls[i].x+=balls[i].dx;
    2bac:	4979      	ldr	r1, [pc, #484]	; (2d94 <move_balls+0x1fa>)
    2bae:	687a      	ldr	r2, [r7, #4]
    2bb0:	4613      	mov	r3, r2
    2bb2:	009b      	lsls	r3, r3, #2
    2bb4:	4413      	add	r3, r2
    2bb6:	009b      	lsls	r3, r3, #2
    2bb8:	440b      	add	r3, r1
    2bba:	6819      	ldr	r1, [r3, #0]
    2bbc:	4875      	ldr	r0, [pc, #468]	; (2d94 <move_balls+0x1fa>)
    2bbe:	687a      	ldr	r2, [r7, #4]
    2bc0:	4613      	mov	r3, r2
    2bc2:	009b      	lsls	r3, r3, #2
    2bc4:	4413      	add	r3, r2
    2bc6:	009b      	lsls	r3, r3, #2
    2bc8:	4403      	add	r3, r0
    2bca:	3308      	adds	r3, #8
    2bcc:	681b      	ldr	r3, [r3, #0]
    2bce:	4419      	add	r1, r3
    2bd0:	4870      	ldr	r0, [pc, #448]	; (2d94 <move_balls+0x1fa>)
    2bd2:	687a      	ldr	r2, [r7, #4]
    2bd4:	4613      	mov	r3, r2
    2bd6:	009b      	lsls	r3, r3, #2
    2bd8:	4413      	add	r3, r2
    2bda:	009b      	lsls	r3, r3, #2
    2bdc:	4403      	add	r3, r0
    2bde:	6019      	str	r1, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    2be0:	496c      	ldr	r1, [pc, #432]	; (2d94 <move_balls+0x1fa>)
    2be2:	687a      	ldr	r2, [r7, #4]
    2be4:	4613      	mov	r3, r2
    2be6:	009b      	lsls	r3, r3, #2
    2be8:	4413      	add	r3, r2
    2bea:	009b      	lsls	r3, r3, #2
    2bec:	440b      	add	r3, r1
    2bee:	681b      	ldr	r3, [r3, #0]
    2bf0:	f113 0f07 	cmn.w	r3, #7
    2bf4:	db0b      	blt.n	2c0e <move_balls+0x74>
    2bf6:	4967      	ldr	r1, [pc, #412]	; (2d94 <move_balls+0x1fa>)
    2bf8:	687a      	ldr	r2, [r7, #4]
    2bfa:	4613      	mov	r3, r2
    2bfc:	009b      	lsls	r3, r3, #2
    2bfe:	4413      	add	r3, r2
    2c00:	009b      	lsls	r3, r3, #2
    2c02:	440b      	add	r3, r1
    2c04:	681b      	ldr	r3, [r3, #0]
    2c06:	683a      	ldr	r2, [r7, #0]
    2c08:	8992      	ldrh	r2, [r2, #12]
    2c0a:	4293      	cmp	r3, r2
    2c0c:	db2c      	blt.n	2c68 <move_balls+0xce>
			balls[i].dx=-balls[i].dx;
    2c0e:	4961      	ldr	r1, [pc, #388]	; (2d94 <move_balls+0x1fa>)
    2c10:	687a      	ldr	r2, [r7, #4]
    2c12:	4613      	mov	r3, r2
    2c14:	009b      	lsls	r3, r3, #2
    2c16:	4413      	add	r3, r2
    2c18:	009b      	lsls	r3, r3, #2
    2c1a:	440b      	add	r3, r1
    2c1c:	3308      	adds	r3, #8
    2c1e:	681b      	ldr	r3, [r3, #0]
    2c20:	4259      	negs	r1, r3
    2c22:	485c      	ldr	r0, [pc, #368]	; (2d94 <move_balls+0x1fa>)
    2c24:	687a      	ldr	r2, [r7, #4]
    2c26:	4613      	mov	r3, r2
    2c28:	009b      	lsls	r3, r3, #2
    2c2a:	4413      	add	r3, r2
    2c2c:	009b      	lsls	r3, r3, #2
    2c2e:	4403      	add	r3, r0
    2c30:	3308      	adds	r3, #8
    2c32:	6019      	str	r1, [r3, #0]
			balls[i].x+=balls[i].dx;
    2c34:	4957      	ldr	r1, [pc, #348]	; (2d94 <move_balls+0x1fa>)
    2c36:	687a      	ldr	r2, [r7, #4]
    2c38:	4613      	mov	r3, r2
    2c3a:	009b      	lsls	r3, r3, #2
    2c3c:	4413      	add	r3, r2
    2c3e:	009b      	lsls	r3, r3, #2
    2c40:	440b      	add	r3, r1
    2c42:	6819      	ldr	r1, [r3, #0]
    2c44:	4853      	ldr	r0, [pc, #332]	; (2d94 <move_balls+0x1fa>)
    2c46:	687a      	ldr	r2, [r7, #4]
    2c48:	4613      	mov	r3, r2
    2c4a:	009b      	lsls	r3, r3, #2
    2c4c:	4413      	add	r3, r2
    2c4e:	009b      	lsls	r3, r3, #2
    2c50:	4403      	add	r3, r0
    2c52:	3308      	adds	r3, #8
    2c54:	681b      	ldr	r3, [r3, #0]
    2c56:	4419      	add	r1, r3
    2c58:	484e      	ldr	r0, [pc, #312]	; (2d94 <move_balls+0x1fa>)
    2c5a:	687a      	ldr	r2, [r7, #4]
    2c5c:	4613      	mov	r3, r2
    2c5e:	009b      	lsls	r3, r3, #2
    2c60:	4413      	add	r3, r2
    2c62:	009b      	lsls	r3, r3, #2
    2c64:	4403      	add	r3, r0
    2c66:	6019      	str	r1, [r3, #0]
		}
		balls[i].y+=balls[i].dy;
    2c68:	494a      	ldr	r1, [pc, #296]	; (2d94 <move_balls+0x1fa>)
    2c6a:	687a      	ldr	r2, [r7, #4]
    2c6c:	4613      	mov	r3, r2
    2c6e:	009b      	lsls	r3, r3, #2
    2c70:	4413      	add	r3, r2
    2c72:	009b      	lsls	r3, r3, #2
    2c74:	440b      	add	r3, r1
    2c76:	3304      	adds	r3, #4
    2c78:	6819      	ldr	r1, [r3, #0]
    2c7a:	4846      	ldr	r0, [pc, #280]	; (2d94 <move_balls+0x1fa>)
    2c7c:	687a      	ldr	r2, [r7, #4]
    2c7e:	4613      	mov	r3, r2
    2c80:	009b      	lsls	r3, r3, #2
    2c82:	4413      	add	r3, r2
    2c84:	009b      	lsls	r3, r3, #2
    2c86:	4403      	add	r3, r0
    2c88:	330c      	adds	r3, #12
    2c8a:	681b      	ldr	r3, [r3, #0]
    2c8c:	4419      	add	r1, r3
    2c8e:	4841      	ldr	r0, [pc, #260]	; (2d94 <move_balls+0x1fa>)
    2c90:	687a      	ldr	r2, [r7, #4]
    2c92:	4613      	mov	r3, r2
    2c94:	009b      	lsls	r3, r3, #2
    2c96:	4413      	add	r3, r2
    2c98:	009b      	lsls	r3, r3, #2
    2c9a:	4403      	add	r3, r0
    2c9c:	3304      	adds	r3, #4
    2c9e:	6019      	str	r1, [r3, #0]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    2ca0:	493c      	ldr	r1, [pc, #240]	; (2d94 <move_balls+0x1fa>)
    2ca2:	687a      	ldr	r2, [r7, #4]
    2ca4:	4613      	mov	r3, r2
    2ca6:	009b      	lsls	r3, r3, #2
    2ca8:	4413      	add	r3, r2
    2caa:	009b      	lsls	r3, r3, #2
    2cac:	440b      	add	r3, r1
    2cae:	3304      	adds	r3, #4
    2cb0:	681b      	ldr	r3, [r3, #0]
    2cb2:	2b0f      	cmp	r3, #15
    2cb4:	dd0c      	ble.n	2cd0 <move_balls+0x136>
    2cb6:	4937      	ldr	r1, [pc, #220]	; (2d94 <move_balls+0x1fa>)
    2cb8:	687a      	ldr	r2, [r7, #4]
    2cba:	4613      	mov	r3, r2
    2cbc:	009b      	lsls	r3, r3, #2
    2cbe:	4413      	add	r3, r2
    2cc0:	009b      	lsls	r3, r3, #2
    2cc2:	440b      	add	r3, r1
    2cc4:	3304      	adds	r3, #4
    2cc6:	681b      	ldr	r3, [r3, #0]
    2cc8:	683a      	ldr	r2, [r7, #0]
    2cca:	89d2      	ldrh	r2, [r2, #14]
    2ccc:	4293      	cmp	r3, r2
    2cce:	db2e      	blt.n	2d2e <move_balls+0x194>
			balls[i].dy=-balls[i].dy;
    2cd0:	4930      	ldr	r1, [pc, #192]	; (2d94 <move_balls+0x1fa>)
    2cd2:	687a      	ldr	r2, [r7, #4]
    2cd4:	4613      	mov	r3, r2
    2cd6:	009b      	lsls	r3, r3, #2
    2cd8:	4413      	add	r3, r2
    2cda:	009b      	lsls	r3, r3, #2
    2cdc:	440b      	add	r3, r1
    2cde:	330c      	adds	r3, #12
    2ce0:	681b      	ldr	r3, [r3, #0]
    2ce2:	4259      	negs	r1, r3
    2ce4:	482b      	ldr	r0, [pc, #172]	; (2d94 <move_balls+0x1fa>)
    2ce6:	687a      	ldr	r2, [r7, #4]
    2ce8:	4613      	mov	r3, r2
    2cea:	009b      	lsls	r3, r3, #2
    2cec:	4413      	add	r3, r2
    2cee:	009b      	lsls	r3, r3, #2
    2cf0:	4403      	add	r3, r0
    2cf2:	330c      	adds	r3, #12
    2cf4:	6019      	str	r1, [r3, #0]
			balls[i].y+=balls[i].dy;
    2cf6:	4927      	ldr	r1, [pc, #156]	; (2d94 <move_balls+0x1fa>)
    2cf8:	687a      	ldr	r2, [r7, #4]
    2cfa:	4613      	mov	r3, r2
    2cfc:	009b      	lsls	r3, r3, #2
    2cfe:	4413      	add	r3, r2
    2d00:	009b      	lsls	r3, r3, #2
    2d02:	440b      	add	r3, r1
    2d04:	3304      	adds	r3, #4
    2d06:	6819      	ldr	r1, [r3, #0]
    2d08:	4822      	ldr	r0, [pc, #136]	; (2d94 <move_balls+0x1fa>)
    2d0a:	687a      	ldr	r2, [r7, #4]
    2d0c:	4613      	mov	r3, r2
    2d0e:	009b      	lsls	r3, r3, #2
    2d10:	4413      	add	r3, r2
    2d12:	009b      	lsls	r3, r3, #2
    2d14:	4403      	add	r3, r0
    2d16:	330c      	adds	r3, #12
    2d18:	681b      	ldr	r3, [r3, #0]
    2d1a:	4419      	add	r1, r3
    2d1c:	481d      	ldr	r0, [pc, #116]	; (2d94 <move_balls+0x1fa>)
    2d1e:	687a      	ldr	r2, [r7, #4]
    2d20:	4613      	mov	r3, r2
    2d22:	009b      	lsls	r3, r3, #2
    2d24:	4413      	add	r3, r2
    2d26:	009b      	lsls	r3, r3, #2
    2d28:	4403      	add	r3, r0
    2d2a:	3304      	adds	r3, #4
    2d2c:	6019      	str	r1, [r3, #0]
	for (i=0;i<BALL_COUNT;i++){
    2d2e:	687b      	ldr	r3, [r7, #4]
    2d30:	3301      	adds	r3, #1
    2d32:	607b      	str	r3, [r7, #4]
    2d34:	687b      	ldr	r3, [r7, #4]
    2d36:	2b01      	cmp	r3, #1
    2d38:	f77f af38 	ble.w	2bac <move_balls+0x12>
		} 
	}
	// collision between balls
	if (distance(&balls[0],&balls[1])<8){
    2d3c:	4916      	ldr	r1, [pc, #88]	; (2d98 <move_balls+0x1fe>)
    2d3e:	4815      	ldr	r0, [pc, #84]	; (2d94 <move_balls+0x1fa>)
    2d40:	f7ff ff0e 	bl	2b60 <distance>
    2d44:	4603      	mov	r3, r0
    2d46:	2b07      	cmp	r3, #7
    2d48:	d81f      	bhi.n	2d8a <move_balls+0x1f0>
		if (balls[0].dx!=balls[1].dx){
    2d4a:	4b12      	ldr	r3, [pc, #72]	; (2d94 <move_balls+0x1fa>)
    2d4c:	689a      	ldr	r2, [r3, #8]
    2d4e:	4b11      	ldr	r3, [pc, #68]	; (2d94 <move_balls+0x1fa>)
    2d50:	69db      	ldr	r3, [r3, #28]
    2d52:	429a      	cmp	r2, r3
    2d54:	d009      	beq.n	2d6a <move_balls+0x1d0>
			i=balls[0].dx;
    2d56:	4b0f      	ldr	r3, [pc, #60]	; (2d94 <move_balls+0x1fa>)
    2d58:	689b      	ldr	r3, [r3, #8]
    2d5a:	607b      	str	r3, [r7, #4]
			balls[0].dx=balls[1].dx;
    2d5c:	4b0d      	ldr	r3, [pc, #52]	; (2d94 <move_balls+0x1fa>)
    2d5e:	69db      	ldr	r3, [r3, #28]
    2d60:	4a0c      	ldr	r2, [pc, #48]	; (2d94 <move_balls+0x1fa>)
    2d62:	6093      	str	r3, [r2, #8]
			balls[1].dx=i;
    2d64:	4a0b      	ldr	r2, [pc, #44]	; (2d94 <move_balls+0x1fa>)
    2d66:	687b      	ldr	r3, [r7, #4]
    2d68:	61d3      	str	r3, [r2, #28]
		}
		if (balls[0].dy!=balls[1].dy){
    2d6a:	4b0a      	ldr	r3, [pc, #40]	; (2d94 <move_balls+0x1fa>)
    2d6c:	68da      	ldr	r2, [r3, #12]
    2d6e:	4b09      	ldr	r3, [pc, #36]	; (2d94 <move_balls+0x1fa>)
    2d70:	6a1b      	ldr	r3, [r3, #32]
    2d72:	429a      	cmp	r2, r3
    2d74:	d009      	beq.n	2d8a <move_balls+0x1f0>
			i=balls[0].dy;
    2d76:	4b07      	ldr	r3, [pc, #28]	; (2d94 <move_balls+0x1fa>)
    2d78:	68db      	ldr	r3, [r3, #12]
    2d7a:	607b      	str	r3, [r7, #4]
			balls[0].dy=balls[1].dy;
    2d7c:	4b05      	ldr	r3, [pc, #20]	; (2d94 <move_balls+0x1fa>)
    2d7e:	6a1b      	ldr	r3, [r3, #32]
    2d80:	4a04      	ldr	r2, [pc, #16]	; (2d94 <move_balls+0x1fa>)
    2d82:	60d3      	str	r3, [r2, #12]
			balls[1].dy=i;
    2d84:	4a03      	ldr	r2, [pc, #12]	; (2d94 <move_balls+0x1fa>)
    2d86:	687b      	ldr	r3, [r7, #4]
    2d88:	6213      	str	r3, [r2, #32]
		}
	}
}
    2d8a:	bf00      	nop
    2d8c:	3708      	adds	r7, #8
    2d8e:	46bd      	mov	sp, r7
    2d90:	bd80      	pop	{r7, pc}
    2d92:	bf00      	nop
    2d94:	20002728 	.word	0x20002728
    2d98:	2000273c 	.word	0x2000273c

00002d9c <init_balls>:


static void init_balls(){
    2d9c:	b580      	push	{r7, lr}
    2d9e:	b082      	sub	sp, #8
    2da0:	af00      	add	r7, sp, #0
	int i;
	vmode_params_t *vparams=get_video_params();
    2da2:	f002 fbc3 	bl	552c <get_video_params>
    2da6:	6038      	str	r0, [r7, #0]
	srand(ntsc_ticks);
    2da8:	4b34      	ldr	r3, [pc, #208]	; (2e7c <init_balls+0xe0>)
    2daa:	681b      	ldr	r3, [r3, #0]
    2dac:	4618      	mov	r0, r3
    2dae:	f7fd fb7d 	bl	4ac <srand>
	for (i=0;i<BALL_COUNT;i++){
    2db2:	2300      	movs	r3, #0
    2db4:	607b      	str	r3, [r7, #4]
    2db6:	e05a      	b.n	2e6e <init_balls+0xd2>
		balls[i].x=rand()%vparams->hres;
    2db8:	f7fd fb86 	bl	4c8 <rand>
    2dbc:	4603      	mov	r3, r0
    2dbe:	683a      	ldr	r2, [r7, #0]
    2dc0:	8992      	ldrh	r2, [r2, #12]
    2dc2:	fb93 f1f2 	sdiv	r1, r3, r2
    2dc6:	fb02 f201 	mul.w	r2, r2, r1
    2dca:	1a99      	subs	r1, r3, r2
    2dcc:	482c      	ldr	r0, [pc, #176]	; (2e80 <init_balls+0xe4>)
    2dce:	687a      	ldr	r2, [r7, #4]
    2dd0:	4613      	mov	r3, r2
    2dd2:	009b      	lsls	r3, r3, #2
    2dd4:	4413      	add	r3, r2
    2dd6:	009b      	lsls	r3, r3, #2
    2dd8:	4403      	add	r3, r0
    2dda:	6019      	str	r1, [r3, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    2ddc:	f7fd fb74 	bl	4c8 <rand>
    2de0:	4602      	mov	r2, r0
    2de2:	683b      	ldr	r3, [r7, #0]
    2de4:	89db      	ldrh	r3, [r3, #14]
    2de6:	3b10      	subs	r3, #16
    2de8:	fb92 f1f3 	sdiv	r1, r2, r3
    2dec:	fb03 f301 	mul.w	r3, r3, r1
    2df0:	1ad3      	subs	r3, r2, r3
    2df2:	f103 0110 	add.w	r1, r3, #16
    2df6:	4822      	ldr	r0, [pc, #136]	; (2e80 <init_balls+0xe4>)
    2df8:	687a      	ldr	r2, [r7, #4]
    2dfa:	4613      	mov	r3, r2
    2dfc:	009b      	lsls	r3, r3, #2
    2dfe:	4413      	add	r3, r2
    2e00:	009b      	lsls	r3, r3, #2
    2e02:	4403      	add	r3, r0
    2e04:	3304      	adds	r3, #4
    2e06:	6019      	str	r1, [r3, #0]
		balls[i].dx=1;
    2e08:	491d      	ldr	r1, [pc, #116]	; (2e80 <init_balls+0xe4>)
    2e0a:	687a      	ldr	r2, [r7, #4]
    2e0c:	4613      	mov	r3, r2
    2e0e:	009b      	lsls	r3, r3, #2
    2e10:	4413      	add	r3, r2
    2e12:	009b      	lsls	r3, r3, #2
    2e14:	440b      	add	r3, r1
    2e16:	3308      	adds	r3, #8
    2e18:	2201      	movs	r2, #1
    2e1a:	601a      	str	r2, [r3, #0]
		balls[i].dy=1;
    2e1c:	4918      	ldr	r1, [pc, #96]	; (2e80 <init_balls+0xe4>)
    2e1e:	687a      	ldr	r2, [r7, #4]
    2e20:	4613      	mov	r3, r2
    2e22:	009b      	lsls	r3, r3, #2
    2e24:	4413      	add	r3, r2
    2e26:	009b      	lsls	r3, r3, #2
    2e28:	440b      	add	r3, r1
    2e2a:	330c      	adds	r3, #12
    2e2c:	2201      	movs	r2, #1
    2e2e:	601a      	str	r2, [r3, #0]
		if (vparams->mode==VM_BPCHIP){
    2e30:	683b      	ldr	r3, [r7, #0]
    2e32:	781b      	ldrb	r3, [r3, #0]
    2e34:	2b00      	cmp	r3, #0
    2e36:	d10d      	bne.n	2e54 <init_balls+0xb8>
			balls[i].ball_sprite=ball8x8_2bpp;//ball8x8;
    2e38:	4911      	ldr	r1, [pc, #68]	; (2e80 <init_balls+0xe4>)
    2e3a:	687a      	ldr	r2, [r7, #4]
    2e3c:	4613      	mov	r3, r2
    2e3e:	009b      	lsls	r3, r3, #2
    2e40:	4413      	add	r3, r2
    2e42:	009b      	lsls	r3, r3, #2
    2e44:	440b      	add	r3, r1
    2e46:	3310      	adds	r3, #16
    2e48:	4a0e      	ldr	r2, [pc, #56]	; (2e84 <init_balls+0xe8>)
    2e4a:	601a      	str	r2, [r3, #0]
			sprite_bpp=TWO_BPP;
    2e4c:	4b0e      	ldr	r3, [pc, #56]	; (2e88 <init_balls+0xec>)
    2e4e:	2201      	movs	r2, #1
    2e50:	701a      	strb	r2, [r3, #0]
    2e52:	e009      	b.n	2e68 <init_balls+0xcc>
		}else{
			balls[i].ball_sprite=ball8x8_1bpp;//ball8x8_1bpp;
    2e54:	490a      	ldr	r1, [pc, #40]	; (2e80 <init_balls+0xe4>)
    2e56:	687a      	ldr	r2, [r7, #4]
    2e58:	4613      	mov	r3, r2
    2e5a:	009b      	lsls	r3, r3, #2
    2e5c:	4413      	add	r3, r2
    2e5e:	009b      	lsls	r3, r3, #2
    2e60:	440b      	add	r3, r1
    2e62:	3310      	adds	r3, #16
    2e64:	4a09      	ldr	r2, [pc, #36]	; (2e8c <init_balls+0xf0>)
    2e66:	601a      	str	r2, [r3, #0]
	for (i=0;i<BALL_COUNT;i++){
    2e68:	687b      	ldr	r3, [r7, #4]
    2e6a:	3301      	adds	r3, #1
    2e6c:	607b      	str	r3, [r7, #4]
    2e6e:	687b      	ldr	r3, [r7, #4]
    2e70:	2b01      	cmp	r3, #1
    2e72:	dda1      	ble.n	2db8 <init_balls+0x1c>
		}
	}
}
    2e74:	bf00      	nop
    2e76:	3708      	adds	r7, #8
    2e78:	46bd      	mov	sp, r7
    2e7a:	bd80      	pop	{r7, pc}
    2e7c:	20004eb4 	.word	0x20004eb4
    2e80:	20002728 	.word	0x20002728
    2e84:	000060ec 	.word	0x000060ec
    2e88:	200001c4 	.word	0x200001c4
    2e8c:	000060fc 	.word	0x000060fc

00002e90 <color_bars>:

static void color_bars(){
    2e90:	b580      	push	{r7, lr}
    2e92:	b084      	sub	sp, #16
    2e94:	af00      	add	r7, sp, #0
	int x,y;
	uint8_t c=0;
    2e96:	2300      	movs	r3, #0
    2e98:	71fb      	strb	r3, [r7, #7]
	vmode_params_t* vparams=get_video_params();
    2e9a:	f002 fb47 	bl	552c <get_video_params>
    2e9e:	6038      	str	r0, [r7, #0]
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    2ea0:	683b      	ldr	r3, [r7, #0]
    2ea2:	89db      	ldrh	r3, [r3, #14]
    2ea4:	089b      	lsrs	r3, r3, #2
    2ea6:	b29b      	uxth	r3, r3
    2ea8:	461a      	mov	r2, r3
    2eaa:	4613      	mov	r3, r2
    2eac:	005b      	lsls	r3, r3, #1
    2eae:	4413      	add	r3, r2
    2eb0:	60bb      	str	r3, [r7, #8]
    2eb2:	e01b      	b.n	2eec <color_bars+0x5c>
		c=0x10;
    2eb4:	2310      	movs	r3, #16
    2eb6:	71fb      	strb	r3, [r7, #7]
		for (x=0;x<128;x++){
    2eb8:	2300      	movs	r3, #0
    2eba:	60fb      	str	r3, [r7, #12]
    2ebc:	e010      	b.n	2ee0 <color_bars+0x50>
			if (x%8==0){
    2ebe:	68fb      	ldr	r3, [r7, #12]
    2ec0:	f003 0307 	and.w	r3, r3, #7
    2ec4:	2b00      	cmp	r3, #0
    2ec6:	d102      	bne.n	2ece <color_bars+0x3e>
				c--;
    2ec8:	79fb      	ldrb	r3, [r7, #7]
    2eca:	3b01      	subs	r3, #1
    2ecc:	71fb      	strb	r3, [r7, #7]
			}
			gfx_blit(x,y,c,BIT_SET);
    2ece:	79fa      	ldrb	r2, [r7, #7]
    2ed0:	2304      	movs	r3, #4
    2ed2:	68b9      	ldr	r1, [r7, #8]
    2ed4:	68f8      	ldr	r0, [r7, #12]
    2ed6:	f7ff fb19 	bl	250c <gfx_blit>
		for (x=0;x<128;x++){
    2eda:	68fb      	ldr	r3, [r7, #12]
    2edc:	3301      	adds	r3, #1
    2ede:	60fb      	str	r3, [r7, #12]
    2ee0:	68fb      	ldr	r3, [r7, #12]
    2ee2:	2b7f      	cmp	r3, #127	; 0x7f
    2ee4:	ddeb      	ble.n	2ebe <color_bars+0x2e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    2ee6:	68bb      	ldr	r3, [r7, #8]
    2ee8:	3301      	adds	r3, #1
    2eea:	60bb      	str	r3, [r7, #8]
    2eec:	683b      	ldr	r3, [r7, #0]
    2eee:	89db      	ldrh	r3, [r3, #14]
    2ef0:	461a      	mov	r2, r3
    2ef2:	68bb      	ldr	r3, [r7, #8]
    2ef4:	429a      	cmp	r2, r3
    2ef6:	dcdd      	bgt.n	2eb4 <color_bars+0x24>
		}
	}
		

}
    2ef8:	bf00      	nop
    2efa:	3710      	adds	r7, #16
    2efc:	46bd      	mov	sp, r7
    2efe:	bd80      	pop	{r7, pc}

00002f00 <vertical_bars>:

static void vertical_bars(){
    2f00:	b580      	push	{r7, lr}
    2f02:	b082      	sub	sp, #8
    2f04:	af00      	add	r7, sp, #0
	int y;
	vmode_params_t* vparams=get_video_params();
    2f06:	f002 fb11 	bl	552c <get_video_params>
    2f0a:	6038      	str	r0, [r7, #0]
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    2f0c:	2310      	movs	r3, #16
    2f0e:	607b      	str	r3, [r7, #4]
    2f10:	e010      	b.n	2f34 <vertical_bars+0x34>
		gfx_blit(0,y,15,BIT_SET);
    2f12:	2304      	movs	r3, #4
    2f14:	220f      	movs	r2, #15
    2f16:	6879      	ldr	r1, [r7, #4]
    2f18:	2000      	movs	r0, #0
    2f1a:	f7ff faf7 	bl	250c <gfx_blit>
		gfx_blit(vparams->hres-1,y,15,BIT_SET);
    2f1e:	683b      	ldr	r3, [r7, #0]
    2f20:	899b      	ldrh	r3, [r3, #12]
    2f22:	1e58      	subs	r0, r3, #1
    2f24:	2304      	movs	r3, #4
    2f26:	220f      	movs	r2, #15
    2f28:	6879      	ldr	r1, [r7, #4]
    2f2a:	f7ff faef 	bl	250c <gfx_blit>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    2f2e:	687b      	ldr	r3, [r7, #4]
    2f30:	3301      	adds	r3, #1
    2f32:	607b      	str	r3, [r7, #4]
    2f34:	683b      	ldr	r3, [r7, #0]
    2f36:	89db      	ldrh	r3, [r3, #14]
    2f38:	461a      	mov	r2, r3
    2f3a:	687b      	ldr	r3, [r7, #4]
    2f3c:	429a      	cmp	r2, r3
    2f3e:	dce8      	bgt.n	2f12 <vertical_bars+0x12>
	}
}
    2f40:	bf00      	nop
    2f42:	3708      	adds	r7, #8
    2f44:	46bd      	mov	sp, r7
    2f46:	bd80      	pop	{r7, pc}

00002f48 <horiz_bars>:

static void horiz_bars(){
    2f48:	b580      	push	{r7, lr}
    2f4a:	b082      	sub	sp, #8
    2f4c:	af00      	add	r7, sp, #0
	int x;
	vmode_params_t* vparams=get_video_params();
    2f4e:	f002 faed 	bl	552c <get_video_params>
    2f52:	6038      	str	r0, [r7, #0]
	for (x=0;x<vparams->hres;x++){
    2f54:	2300      	movs	r3, #0
    2f56:	607b      	str	r3, [r7, #4]
    2f58:	e010      	b.n	2f7c <horiz_bars+0x34>
		gfx_blit(x,0,15,BIT_SET);
    2f5a:	2304      	movs	r3, #4
    2f5c:	220f      	movs	r2, #15
    2f5e:	2100      	movs	r1, #0
    2f60:	6878      	ldr	r0, [r7, #4]
    2f62:	f7ff fad3 	bl	250c <gfx_blit>
		gfx_blit(x,vparams->vres-1,15,BIT_SET);
    2f66:	683b      	ldr	r3, [r7, #0]
    2f68:	89db      	ldrh	r3, [r3, #14]
    2f6a:	1e59      	subs	r1, r3, #1
    2f6c:	2304      	movs	r3, #4
    2f6e:	220f      	movs	r2, #15
    2f70:	6878      	ldr	r0, [r7, #4]
    2f72:	f7ff facb 	bl	250c <gfx_blit>
	for (x=0;x<vparams->hres;x++){
    2f76:	687b      	ldr	r3, [r7, #4]
    2f78:	3301      	adds	r3, #1
    2f7a:	607b      	str	r3, [r7, #4]
    2f7c:	683b      	ldr	r3, [r7, #0]
    2f7e:	899b      	ldrh	r3, [r3, #12]
    2f80:	461a      	mov	r2, r3
    2f82:	687b      	ldr	r3, [r7, #4]
    2f84:	429a      	cmp	r2, r3
    2f86:	dce8      	bgt.n	2f5a <horiz_bars+0x12>
	}
}
    2f88:	bf00      	nop
    2f8a:	3708      	adds	r7, #8
    2f8c:	46bd      	mov	sp, r7
    2f8e:	bd80      	pop	{r7, pc}

00002f90 <video_test>:

static void video_test(){
    2f90:	b580      	push	{r7, lr}
    2f92:	b082      	sub	sp, #8
    2f94:	af00      	add	r7, sp, #0
	int x,y,sx,sy,dx,dy;
	uint8_t c,p=0;
    2f96:	2300      	movs	r3, #0
    2f98:	71fb      	strb	r3, [r7, #7]

	set_video_mode(p);
    2f9a:	79fb      	ldrb	r3, [r7, #7]
    2f9c:	4618      	mov	r0, r3
    2f9e:	f002 fa53 	bl	5448 <set_video_mode>
	color_bars();
    2fa2:	f7ff ff75 	bl	2e90 <color_bars>
	vertical_bars();
    2fa6:	f7ff ffab 	bl	2f00 <vertical_bars>
	horiz_bars();
    2faa:	f7ff ffcd 	bl	2f48 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    2fae:	4b2a      	ldr	r3, [pc, #168]	; (3058 <video_test+0xc8>)
    2fb0:	2110      	movs	r1, #16
    2fb2:	4618      	mov	r0, r3
    2fb4:	f001 feb0 	bl	4d18 <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    2fb8:	4b28      	ldr	r3, [pc, #160]	; (305c <video_test+0xcc>)
    2fba:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    2fbe:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    2fc2:	210a      	movs	r1, #10
    2fc4:	4618      	mov	r0, r3
    2fc6:	f001 fea7 	bl	4d18 <print_int>
	init_balls();
    2fca:	f7ff fee7 	bl	2d9c <init_balls>
	p=0;
    2fce:	2300      	movs	r3, #0
    2fd0:	71fb      	strb	r3, [r7, #7]
	while(1){
		draw_balls();
    2fd2:	f7ff fd5f 	bl	2a94 <draw_balls>
		//game_pause(1);
		draw_balls();
    2fd6:	f7ff fd5d 	bl	2a94 <draw_balls>
		move_balls();
    2fda:	f7ff fdde 	bl	2b9a <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    2fde:	2010      	movs	r0, #16
    2fe0:	f7fe fe82 	bl	1ce8 <btn_query_down>
    2fe4:	4603      	mov	r3, r0
    2fe6:	2b00      	cmp	r3, #0
    2fe8:	d024      	beq.n	3034 <video_test+0xa4>
			p^=1;
    2fea:	79fb      	ldrb	r3, [r7, #7]
    2fec:	f083 0301 	eor.w	r3, r3, #1
    2ff0:	71fb      	strb	r3, [r7, #7]
			set_video_mode(p);
    2ff2:	79fb      	ldrb	r3, [r7, #7]
    2ff4:	4618      	mov	r0, r3
    2ff6:	f002 fa27 	bl	5448 <set_video_mode>
			switch(p){
    2ffa:	79fb      	ldrb	r3, [r7, #7]
    2ffc:	2b00      	cmp	r3, #0
    2ffe:	d002      	beq.n	3006 <video_test+0x76>
    3000:	2b01      	cmp	r3, #1
    3002:	d009      	beq.n	3018 <video_test+0x88>
    3004:	e00c      	b.n	3020 <video_test+0x90>
			case VM_BPCHIP:
				print("BPCHIP mode\n180x112 16 colors");
    3006:	4816      	ldr	r0, [pc, #88]	; (3060 <video_test+0xd0>)
    3008:	f001 fe56 	bl	4cb8 <print>
				color_bars();
    300c:	f7ff ff40 	bl	2e90 <color_bars>
				sprite_bpp=TWO_BPP;
    3010:	4b14      	ldr	r3, [pc, #80]	; (3064 <video_test+0xd4>)
    3012:	2201      	movs	r2, #1
    3014:	701a      	strb	r2, [r3, #0]
				break;
    3016:	e003      	b.n	3020 <video_test+0x90>
			case VM_SCHIP:
				print("SCHIP mode\n128x64 mono");
    3018:	4813      	ldr	r0, [pc, #76]	; (3068 <video_test+0xd8>)
    301a:	f001 fe4d 	bl	4cb8 <print>
				break;
    301e:	bf00      	nop
			}
			vertical_bars();
    3020:	f7ff ff6e 	bl	2f00 <vertical_bars>
			horiz_bars();
    3024:	f7ff ff90 	bl	2f48 <horiz_bars>
			init_balls();
    3028:	f7ff feb8 	bl	2d9c <init_balls>
			btn_wait_up(KEY_RIGHT);
    302c:	2010      	movs	r0, #16
    302e:	f7fe fe9f 	bl	1d70 <btn_wait_up>
    3032:	e7ce      	b.n	2fd2 <video_test+0x42>
		}else if (btn_query_down(KEY_B)){
    3034:	2020      	movs	r0, #32
    3036:	f7fe fe57 	bl	1ce8 <btn_query_down>
    303a:	4603      	mov	r3, r0
    303c:	2b00      	cmp	r3, #0
    303e:	d0c8      	beq.n	2fd2 <video_test+0x42>
			btn_wait_up(KEY_B);
    3040:	2020      	movs	r0, #32
    3042:	f7fe fe95 	bl	1d70 <btn_wait_up>
			break;
    3046:	bf00      	nop
		}
	}//while(1)
	set_video_mode(VM_BPCHIP);
    3048:	2000      	movs	r0, #0
    304a:	f002 f9fd 	bl	5448 <set_video_mode>
}
    304e:	bf00      	nop
    3050:	3708      	adds	r7, #8
    3052:	46bd      	mov	sp, r7
    3054:	bd80      	pop	{r7, pc}
    3056:	bf00      	nop
    3058:	00006800 	.word	0x00006800
    305c:	20004ec0 	.word	0x20004ec0
    3060:	00006108 	.word	0x00006108
    3064:	200001c4 	.word	0x200001c4
    3068:	00006128 	.word	0x00006128

0000306c <sound_test>:

static void sound_test(){
    306c:	b580      	push	{r7, lr}
    306e:	b082      	sub	sp, #8
    3070:	af00      	add	r7, sp, #0
	uint8_t key=255;
    3072:	23ff      	movs	r3, #255	; 0xff
    3074:	71fb      	strb	r3, [r7, #7]
	uint16_t freq;
	gfx_cls();
    3076:	f7ff facb 	bl	2610 <gfx_cls>
	print("press buttons\n");
    307a:	482c      	ldr	r0, [pc, #176]	; (312c <sound_test+0xc0>)
    307c:	f001 fe1c 	bl	4cb8 <print>
	while (key!=KEY_B){
    3080:	e040      	b.n	3104 <sound_test+0x98>
		key=btn_any_down();
    3082:	f7fe fef5 	bl	1e70 <btn_any_down>
    3086:	4603      	mov	r3, r0
    3088:	71fb      	strb	r3, [r7, #7]
		switch(key){
    308a:	79fb      	ldrb	r3, [r7, #7]
    308c:	2b08      	cmp	r3, #8
    308e:	d01c      	beq.n	30ca <sound_test+0x5e>
    3090:	2b08      	cmp	r3, #8
    3092:	dc06      	bgt.n	30a2 <sound_test+0x36>
    3094:	2b02      	cmp	r3, #2
    3096:	d010      	beq.n	30ba <sound_test+0x4e>
    3098:	2b04      	cmp	r3, #4
    309a:	d012      	beq.n	30c2 <sound_test+0x56>
    309c:	2b01      	cmp	r3, #1
    309e:	d01c      	beq.n	30da <sound_test+0x6e>
    30a0:	e02b      	b.n	30fa <sound_test+0x8e>
    30a2:	2b20      	cmp	r3, #32
    30a4:	d01d      	beq.n	30e2 <sound_test+0x76>
    30a6:	2b20      	cmp	r3, #32
    30a8:	dc02      	bgt.n	30b0 <sound_test+0x44>
    30aa:	2b10      	cmp	r3, #16
    30ac:	d011      	beq.n	30d2 <sound_test+0x66>
    30ae:	e024      	b.n	30fa <sound_test+0x8e>
    30b0:	2b40      	cmp	r3, #64	; 0x40
    30b2:	d01a      	beq.n	30ea <sound_test+0x7e>
    30b4:	2b80      	cmp	r3, #128	; 0x80
    30b6:	d01c      	beq.n	30f2 <sound_test+0x86>
    30b8:	e01f      	b.n	30fa <sound_test+0x8e>
		case KEY_UP:
			freq=440;
    30ba:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    30be:	80bb      	strh	r3, [r7, #4]
			break;
    30c0:	e01b      	b.n	30fa <sound_test+0x8e>
		case KEY_DOWN:
			freq=466;
    30c2:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    30c6:	80bb      	strh	r3, [r7, #4]
			break;
    30c8:	e017      	b.n	30fa <sound_test+0x8e>
		case KEY_LEFT:
			freq=493;
    30ca:	f240 13ed 	movw	r3, #493	; 0x1ed
    30ce:	80bb      	strh	r3, [r7, #4]
			break;
    30d0:	e013      	b.n	30fa <sound_test+0x8e>
		case KEY_RIGHT:
			freq=523;
    30d2:	f240 230b 	movw	r3, #523	; 0x20b
    30d6:	80bb      	strh	r3, [r7, #4]
			break;
    30d8:	e00f      	b.n	30fa <sound_test+0x8e>
		case KEY_A:
			freq=554;
    30da:	f240 232a 	movw	r3, #554	; 0x22a
    30de:	80bb      	strh	r3, [r7, #4]
			break;
    30e0:	e00b      	b.n	30fa <sound_test+0x8e>
		case KEY_B:
			freq=587;
    30e2:	f240 234b 	movw	r3, #587	; 0x24b
    30e6:	80bb      	strh	r3, [r7, #4]
			break;
    30e8:	e007      	b.n	30fa <sound_test+0x8e>
		case KEY_C:
			freq=622;
    30ea:	f240 236e 	movw	r3, #622	; 0x26e
    30ee:	80bb      	strh	r3, [r7, #4]
			break;
    30f0:	e003      	b.n	30fa <sound_test+0x8e>
		case KEY_D:
			freq=659;
    30f2:	f240 2393 	movw	r3, #659	; 0x293
    30f6:	80bb      	strh	r3, [r7, #4]
			break;
    30f8:	bf00      	nop
		}//swtich
		tone(freq,3);
    30fa:	88bb      	ldrh	r3, [r7, #4]
    30fc:	2103      	movs	r1, #3
    30fe:	4618      	mov	r0, r3
    3100:	f001 f9e6 	bl	44d0 <tone>
	while (key!=KEY_B){
    3104:	79fb      	ldrb	r3, [r7, #7]
    3106:	2b20      	cmp	r3, #32
    3108:	d1bb      	bne.n	3082 <sound_test+0x16>
	}
	btn_wait_up(key);
    310a:	79fb      	ldrb	r3, [r7, #7]
    310c:	4618      	mov	r0, r3
    310e:	f7fe fe2f 	bl	1d70 <btn_wait_up>
	noise(30);
    3112:	201e      	movs	r0, #30
    3114:	f001 fa4c 	bl	45b0 <noise>
	while(sound_timer);
    3118:	bf00      	nop
    311a:	4b05      	ldr	r3, [pc, #20]	; (3130 <sound_test+0xc4>)
    311c:	881b      	ldrh	r3, [r3, #0]
    311e:	b29b      	uxth	r3, r3
    3120:	2b00      	cmp	r3, #0
    3122:	d1fa      	bne.n	311a <sound_test+0xae>
}
    3124:	bf00      	nop
    3126:	3708      	adds	r7, #8
    3128:	46bd      	mov	sp, r7
    312a:	bd80      	pop	{r7, pc}
    312c:	00006140 	.word	0x00006140
    3130:	20004eb8 	.word	0x20004eb8

00003134 <run_game>:

// niveau de support pour débogage.
vm_debug_t debug_level;

static void run_game(unsigned idx){
    3134:	b590      	push	{r4, r7, lr}
    3136:	b085      	sub	sp, #20
    3138:	af00      	add	r7, sp, #0
    313a:	6078      	str	r0, [r7, #4]
	int i;
	uint8_t exit_code;
	uint16_t addr=0;
    313c:	2300      	movs	r3, #0
    313e:	817b      	strh	r3, [r7, #10]
	if (games_list[idx].vmode==VM_SCHIP){
    3140:	4939      	ldr	r1, [pc, #228]	; (3228 <run_game+0xf4>)
    3142:	687a      	ldr	r2, [r7, #4]
    3144:	4613      	mov	r3, r2
    3146:	00db      	lsls	r3, r3, #3
    3148:	1a9b      	subs	r3, r3, r2
    314a:	009b      	lsls	r3, r3, #2
    314c:	440b      	add	r3, r1
    314e:	781b      	ldrb	r3, [r3, #0]
    3150:	2b01      	cmp	r3, #1
    3152:	d102      	bne.n	315a <run_game+0x26>
		addr=512;
    3154:	f44f 7300 	mov.w	r3, #512	; 0x200
    3158:	817b      	strh	r3, [r7, #10]
	}
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    315a:	4933      	ldr	r1, [pc, #204]	; (3228 <run_game+0xf4>)
    315c:	687a      	ldr	r2, [r7, #4]
    315e:	4613      	mov	r3, r2
    3160:	00db      	lsls	r3, r3, #3
    3162:	1a9b      	subs	r3, r3, r2
    3164:	009b      	lsls	r3, r3, #2
    3166:	440b      	add	r3, r1
    3168:	3314      	adds	r3, #20
    316a:	6818      	ldr	r0, [r3, #0]
    316c:	897b      	ldrh	r3, [r7, #10]
    316e:	4a2f      	ldr	r2, [pc, #188]	; (322c <run_game+0xf8>)
    3170:	189c      	adds	r4, r3, r2
    3172:	492d      	ldr	r1, [pc, #180]	; (3228 <run_game+0xf4>)
    3174:	687a      	ldr	r2, [r7, #4]
    3176:	4613      	mov	r3, r2
    3178:	00db      	lsls	r3, r3, #3
    317a:	1a9b      	subs	r3, r3, r2
    317c:	009b      	lsls	r3, r3, #2
    317e:	440b      	add	r3, r1
    3180:	3310      	adds	r3, #16
    3182:	681b      	ldr	r3, [r3, #0]
    3184:	461a      	mov	r2, r3
    3186:	4621      	mov	r1, r4
    3188:	f7fe ffc5 	bl	2116 <move>
	set_keymap(games_list[idx].keymap);
    318c:	4926      	ldr	r1, [pc, #152]	; (3228 <run_game+0xf4>)
    318e:	687a      	ldr	r2, [r7, #4]
    3190:	4613      	mov	r3, r2
    3192:	00db      	lsls	r3, r3, #3
    3194:	1a9b      	subs	r3, r3, r2
    3196:	009b      	lsls	r3, r3, #2
    3198:	440b      	add	r3, r1
    319a:	3318      	adds	r3, #24
    319c:	681b      	ldr	r3, [r3, #0]
    319e:	4618      	mov	r0, r3
    31a0:	f7fe fcca 	bl	1b38 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    31a4:	4920      	ldr	r1, [pc, #128]	; (3228 <run_game+0xf4>)
    31a6:	687a      	ldr	r2, [r7, #4]
    31a8:	4613      	mov	r3, r2
    31aa:	00db      	lsls	r3, r3, #3
    31ac:	1a9b      	subs	r3, r3, r2
    31ae:	009b      	lsls	r3, r3, #2
    31b0:	440b      	add	r3, r1
    31b2:	781b      	ldrb	r3, [r3, #0]
    31b4:	4618      	mov	r0, r3
    31b6:	f002 f947 	bl	5448 <set_video_mode>
	set_palette(DEFAULT_PALETTE);
    31ba:	481d      	ldr	r0, [pc, #116]	; (3230 <run_game+0xfc>)
    31bc:	f7ff f98a 	bl	24d4 <set_palette>
	exit_code=chip_vm(addr,debug_level);
    31c0:	4b1c      	ldr	r3, [pc, #112]	; (3234 <run_game+0x100>)
    31c2:	781a      	ldrb	r2, [r3, #0]
    31c4:	897b      	ldrh	r3, [r7, #10]
    31c6:	4611      	mov	r1, r2
    31c8:	4618      	mov	r0, r3
    31ca:	f7fd f99f 	bl	50c <chip_vm>
    31ce:	4603      	mov	r3, r0
    31d0:	727b      	strb	r3, [r7, #9]
	print("exit code: ");
    31d2:	4819      	ldr	r0, [pc, #100]	; (3238 <run_game+0x104>)
    31d4:	f001 fd70 	bl	4cb8 <print>
	switch(exit_code){
    31d8:	7a7b      	ldrb	r3, [r7, #9]
    31da:	2b01      	cmp	r3, #1
    31dc:	d004      	beq.n	31e8 <run_game+0xb4>
    31de:	2b01      	cmp	r3, #1
    31e0:	db18      	blt.n	3214 <run_game+0xe0>
    31e2:	2b03      	cmp	r3, #3
    31e4:	dc16      	bgt.n	3214 <run_game+0xe0>
    31e6:	e005      	b.n	31f4 <run_game+0xc0>
	case CHIP_EXIT_OK:
		print("CHIP EXIT OK");
    31e8:	4814      	ldr	r0, [pc, #80]	; (323c <run_game+0x108>)
    31ea:	f001 fd65 	bl	4cb8 <print>
		i=0;
    31ee:	2300      	movs	r3, #0
    31f0:	60fb      	str	r3, [r7, #12]
		break;
    31f2:	e00f      	b.n	3214 <run_game+0xe0>
	case CHIP_BAD_OPCODE:
	case CHIP_BAD_ADDR:
		select_console(SERIAL);
    31f4:	2001      	movs	r0, #1
    31f6:	f001 fec7 	bl	4f88 <select_console>
		print_vms("CHIP VM ERROR\n",exit_code);
    31fa:	7a7b      	ldrb	r3, [r7, #9]
    31fc:	4619      	mov	r1, r3
    31fe:	4810      	ldr	r0, [pc, #64]	; (3240 <run_game+0x10c>)
    3200:	f7fd f8de 	bl	3c0 <print_vms>
		select_console(LOCAL);
    3204:	2000      	movs	r0, #0
    3206:	f001 febf 	bl	4f88 <select_console>
		btn_wait_any();
    320a:	f7fe fdd9 	bl	1dc0 <btn_wait_any>
		i=1;
    320e:	2301      	movs	r3, #1
    3210:	60fb      	str	r3, [r7, #12]
		break;
    3212:	bf00      	nop
	}//switch
	game_pause(i);
    3214:	68fb      	ldr	r3, [r7, #12]
    3216:	b29b      	uxth	r3, r3
    3218:	4618      	mov	r0, r3
    321a:	f002 f997 	bl	554c <game_pause>
}
    321e:	bf00      	nop
    3220:	3714      	adds	r7, #20
    3222:	46bd      	mov	sp, r7
    3224:	bd90      	pop	{r4, r7, pc}
    3226:	bf00      	nop
    3228:	20000004 	.word	0x20000004
    322c:	20000720 	.word	0x20000720
    3230:	000060ac 	.word	0x000060ac
    3234:	20002724 	.word	0x20002724
    3238:	00006150 	.word	0x00006150
    323c:	0000615c 	.word	0x0000615c
    3240:	0000616c 	.word	0x0000616c

00003244 <print_games_list>:

static void print_games_list(unsigned first, unsigned rows){
    3244:	b580      	push	{r7, lr}
    3246:	b084      	sub	sp, #16
    3248:	af00      	add	r7, sp, #0
    324a:	6078      	str	r0, [r7, #4]
    324c:	6039      	str	r1, [r7, #0]
	int r=1;
    324e:	2301      	movs	r3, #1
    3250:	60fb      	str	r3, [r7, #12]
	uint16_t line;
	set_cursor(0,0);
    3252:	2100      	movs	r1, #0
    3254:	2000      	movs	r0, #0
    3256:	f001 fd03 	bl	4c60 <set_cursor>
	print(" ********** GAMES **********");
    325a:	4825      	ldr	r0, [pc, #148]	; (32f0 <print_games_list+0xac>)
    325c:	f001 fd2c 	bl	4cb8 <print>
	while ((r<rows) && games_list[first].size){
    3260:	e033      	b.n	32ca <print_games_list+0x86>
		new_line();
    3262:	f001 fbc3 	bl	49ec <new_line>
		clear_line();
    3266:	f001 fe65 	bl	4f34 <clear_line>
		put_char(' ');
    326a:	2020      	movs	r0, #32
    326c:	f001 fc5e 	bl	4b2c <put_char>
		print(games_list[first].name);
    3270:	687a      	ldr	r2, [r7, #4]
    3272:	4613      	mov	r3, r2
    3274:	00db      	lsls	r3, r3, #3
    3276:	1a9b      	subs	r3, r3, r2
    3278:	009b      	lsls	r3, r3, #2
    327a:	4a1e      	ldr	r2, [pc, #120]	; (32f4 <print_games_list+0xb0>)
    327c:	4413      	add	r3, r2
    327e:	3301      	adds	r3, #1
    3280:	4618      	mov	r0, r3
    3282:	f001 fd19 	bl	4cb8 <print>
		line=get_cursor()&0xff;
    3286:	f001 fd03 	bl	4c90 <get_cursor>
    328a:	4603      	mov	r3, r0
    328c:	b2db      	uxtb	r3, r3
    328e:	817b      	strh	r3, [r7, #10]
		set_cursor(90,line);
    3290:	897b      	ldrh	r3, [r7, #10]
    3292:	b2db      	uxtb	r3, r3
    3294:	4619      	mov	r1, r3
    3296:	205a      	movs	r0, #90	; 0x5a
    3298:	f001 fce2 	bl	4c60 <set_cursor>
		if (games_list[first].vmode==VM_SCHIP){
    329c:	4915      	ldr	r1, [pc, #84]	; (32f4 <print_games_list+0xb0>)
    329e:	687a      	ldr	r2, [r7, #4]
    32a0:	4613      	mov	r3, r2
    32a2:	00db      	lsls	r3, r3, #3
    32a4:	1a9b      	subs	r3, r3, r2
    32a6:	009b      	lsls	r3, r3, #2
    32a8:	440b      	add	r3, r1
    32aa:	781b      	ldrb	r3, [r3, #0]
    32ac:	2b01      	cmp	r3, #1
    32ae:	d103      	bne.n	32b8 <print_games_list+0x74>
			print("(SCHIP)");
    32b0:	4811      	ldr	r0, [pc, #68]	; (32f8 <print_games_list+0xb4>)
    32b2:	f001 fd01 	bl	4cb8 <print>
    32b6:	e002      	b.n	32be <print_games_list+0x7a>
		}else{
			print("(BPCHIP)");
    32b8:	4810      	ldr	r0, [pc, #64]	; (32fc <print_games_list+0xb8>)
    32ba:	f001 fcfd 	bl	4cb8 <print>
		}
		first++;
    32be:	687b      	ldr	r3, [r7, #4]
    32c0:	3301      	adds	r3, #1
    32c2:	607b      	str	r3, [r7, #4]
		r++;
    32c4:	68fb      	ldr	r3, [r7, #12]
    32c6:	3301      	adds	r3, #1
    32c8:	60fb      	str	r3, [r7, #12]
	while ((r<rows) && games_list[first].size){
    32ca:	68fa      	ldr	r2, [r7, #12]
    32cc:	683b      	ldr	r3, [r7, #0]
    32ce:	429a      	cmp	r2, r3
    32d0:	d20a      	bcs.n	32e8 <print_games_list+0xa4>
    32d2:	4908      	ldr	r1, [pc, #32]	; (32f4 <print_games_list+0xb0>)
    32d4:	687a      	ldr	r2, [r7, #4]
    32d6:	4613      	mov	r3, r2
    32d8:	00db      	lsls	r3, r3, #3
    32da:	1a9b      	subs	r3, r3, r2
    32dc:	009b      	lsls	r3, r3, #2
    32de:	440b      	add	r3, r1
    32e0:	3310      	adds	r3, #16
    32e2:	681b      	ldr	r3, [r3, #0]
    32e4:	2b00      	cmp	r3, #0
    32e6:	d1bc      	bne.n	3262 <print_games_list+0x1e>
	}
}
    32e8:	bf00      	nop
    32ea:	3710      	adds	r7, #16
    32ec:	46bd      	mov	sp, r7
    32ee:	bd80      	pop	{r7, pc}
    32f0:	0000617c 	.word	0x0000617c
    32f4:	20000004 	.word	0x20000004
    32f8:	0000619c 	.word	0x0000619c
    32fc:	000061a4 	.word	0x000061a4

00003300 <select_game>:


static void select_game(){
    3300:	b580      	push	{r7, lr}
    3302:	b088      	sub	sp, #32
    3304:	af00      	add	r7, sp, #0
	int i=0,first=0,count,rows,selected=1;
    3306:	2300      	movs	r3, #0
    3308:	613b      	str	r3, [r7, #16]
    330a:	2300      	movs	r3, #0
    330c:	61fb      	str	r3, [r7, #28]
    330e:	2301      	movs	r3, #1
    3310:	61bb      	str	r3, [r7, #24]
	int loop=1;
    3312:	2301      	movs	r3, #1
    3314:	617b      	str	r3, [r7, #20]
	uint8_t btn;
	vmode_params_t *vparams;
	count=games_count();
    3316:	f7fe fdc5 	bl	1ea4 <games_count>
    331a:	4603      	mov	r3, r0
    331c:	60fb      	str	r3, [r7, #12]
	set_video_mode(VM_BPCHIP);
    331e:	2000      	movs	r0, #0
    3320:	f002 f892 	bl	5448 <set_video_mode>
	vparams=get_video_params();
    3324:	f002 f902 	bl	552c <get_video_params>
    3328:	60b8      	str	r0, [r7, #8]
	rows=vparams->vres/CHAR_HEIGHT;
    332a:	68bb      	ldr	r3, [r7, #8]
    332c:	89db      	ldrh	r3, [r3, #14]
    332e:	08db      	lsrs	r3, r3, #3
    3330:	b29b      	uxth	r3, r3
    3332:	607b      	str	r3, [r7, #4]
	while(loop){
    3334:	e04f      	b.n	33d6 <select_game+0xd6>
		if (selected<rows) first=0;else first=selected-rows+1;
    3336:	69ba      	ldr	r2, [r7, #24]
    3338:	687b      	ldr	r3, [r7, #4]
    333a:	429a      	cmp	r2, r3
    333c:	da02      	bge.n	3344 <select_game+0x44>
    333e:	2300      	movs	r3, #0
    3340:	61fb      	str	r3, [r7, #28]
    3342:	e004      	b.n	334e <select_game+0x4e>
    3344:	69ba      	ldr	r2, [r7, #24]
    3346:	687b      	ldr	r3, [r7, #4]
    3348:	1ad3      	subs	r3, r2, r3
    334a:	3301      	adds	r3, #1
    334c:	61fb      	str	r3, [r7, #28]
		print_games_list(first,rows);
    334e:	69fb      	ldr	r3, [r7, #28]
    3350:	687a      	ldr	r2, [r7, #4]
    3352:	4611      	mov	r1, r2
    3354:	4618      	mov	r0, r3
    3356:	f7ff ff75 	bl	3244 <print_games_list>
		set_cursor(0,(selected-first)*CHAR_HEIGHT);
    335a:	69ba      	ldr	r2, [r7, #24]
    335c:	69fb      	ldr	r3, [r7, #28]
    335e:	1ad3      	subs	r3, r2, r3
    3360:	b2db      	uxtb	r3, r3
    3362:	00db      	lsls	r3, r3, #3
    3364:	b2db      	uxtb	r3, r3
    3366:	4619      	mov	r1, r3
    3368:	2000      	movs	r0, #0
    336a:	f001 fc79 	bl	4c60 <set_cursor>
		put_char('>');
    336e:	203e      	movs	r0, #62	; 0x3e
    3370:	f001 fbdc 	bl	4b2c <put_char>
		btn=btn_wait_any();
    3374:	f7fe fd24 	bl	1dc0 <btn_wait_any>
    3378:	4603      	mov	r3, r0
    337a:	70fb      	strb	r3, [r7, #3]
		btn_wait_up(btn);
    337c:	78fb      	ldrb	r3, [r7, #3]
    337e:	4618      	mov	r0, r3
    3380:	f7fe fcf6 	bl	1d70 <btn_wait_up>
		switch(btn){
    3384:	78fb      	ldrb	r3, [r7, #3]
    3386:	2b04      	cmp	r3, #4
    3388:	d014      	beq.n	33b4 <select_game+0xb4>
    338a:	2b04      	cmp	r3, #4
    338c:	dc04      	bgt.n	3398 <select_game+0x98>
    338e:	2b01      	cmp	r3, #1
    3390:	d018      	beq.n	33c4 <select_game+0xc4>
    3392:	2b02      	cmp	r3, #2
    3394:	d007      	beq.n	33a6 <select_game+0xa6>
    3396:	e01e      	b.n	33d6 <select_game+0xd6>
    3398:	2b40      	cmp	r3, #64	; 0x40
    339a:	d016      	beq.n	33ca <select_game+0xca>
    339c:	2b80      	cmp	r3, #128	; 0x80
    339e:	d023      	beq.n	33e8 <select_game+0xe8>
    33a0:	2b20      	cmp	r3, #32
    33a2:	d015      	beq.n	33d0 <select_game+0xd0>
    33a4:	e017      	b.n	33d6 <select_game+0xd6>
		case KEY_UP:
			if (selected>1) selected--;
    33a6:	69bb      	ldr	r3, [r7, #24]
    33a8:	2b01      	cmp	r3, #1
    33aa:	dd14      	ble.n	33d6 <select_game+0xd6>
    33ac:	69bb      	ldr	r3, [r7, #24]
    33ae:	3b01      	subs	r3, #1
    33b0:	61bb      	str	r3, [r7, #24]
			break;
    33b2:	e010      	b.n	33d6 <select_game+0xd6>
		case KEY_DOWN:
			if (selected<count){
    33b4:	69ba      	ldr	r2, [r7, #24]
    33b6:	68fb      	ldr	r3, [r7, #12]
    33b8:	429a      	cmp	r2, r3
    33ba:	da0c      	bge.n	33d6 <select_game+0xd6>
				selected++;
    33bc:	69bb      	ldr	r3, [r7, #24]
    33be:	3301      	adds	r3, #1
    33c0:	61bb      	str	r3, [r7, #24]
			}
			break;
    33c2:	e008      	b.n	33d6 <select_game+0xd6>
		case KEY_A:
			selected=1;
    33c4:	2301      	movs	r3, #1
    33c6:	61bb      	str	r3, [r7, #24]
			break;
    33c8:	e005      	b.n	33d6 <select_game+0xd6>
		case KEY_C:
			selected=count;
    33ca:	68fb      	ldr	r3, [r7, #12]
    33cc:	61bb      	str	r3, [r7, #24]
			break;				
    33ce:	e002      	b.n	33d6 <select_game+0xd6>
		case KEY_B:
			loop=false;
    33d0:	2300      	movs	r3, #0
    33d2:	617b      	str	r3, [r7, #20]
			break;	
    33d4:	bf00      	nop
	while(loop){
    33d6:	697b      	ldr	r3, [r7, #20]
    33d8:	2b00      	cmp	r3, #0
    33da:	d1ac      	bne.n	3336 <select_game+0x36>
		case KEY_D:
			return;	
		}
	}
	run_game(selected-1);
    33dc:	69bb      	ldr	r3, [r7, #24]
    33de:	3b01      	subs	r3, #1
    33e0:	4618      	mov	r0, r3
    33e2:	f7ff fea7 	bl	3134 <run_game>
    33e6:	e000      	b.n	33ea <select_game+0xea>
			return;	
    33e8:	bf00      	nop
}
    33ea:	3720      	adds	r7, #32
    33ec:	46bd      	mov	sp, r7
    33ee:	bd80      	pop	{r7, pc}

000033f0 <select_debug_level>:

static void select_debug_level(){
    33f0:	b580      	push	{r7, lr}
    33f2:	b082      	sub	sp, #8
    33f4:	af00      	add	r7, sp, #0
	uint8_t btn;
	gfx_cls();
    33f6:	f7ff f90b 	bl	2610 <gfx_cls>
	print(" **** VM debug support ****\n");
    33fa:	4829      	ldr	r0, [pc, #164]	; (34a0 <select_debug_level+0xb0>)
    33fc:	f001 fc5c 	bl	4cb8 <print>
	print(" No debug support\n");
    3400:	4828      	ldr	r0, [pc, #160]	; (34a4 <select_debug_level+0xb4>)
    3402:	f001 fc59 	bl	4cb8 <print>
	print(" Print PC and OPCODE\n");
    3406:	4828      	ldr	r0, [pc, #160]	; (34a8 <select_debug_level+0xb8>)
    3408:	f001 fc56 	bl	4cb8 <print>
	print(" Print all VM states.\n");
    340c:	4827      	ldr	r0, [pc, #156]	; (34ac <select_debug_level+0xbc>)
    340e:	f001 fc53 	bl	4cb8 <print>
	print(" Single step\n");
    3412:	4827      	ldr	r0, [pc, #156]	; (34b0 <select_debug_level+0xc0>)
    3414:	f001 fc50 	bl	4cb8 <print>
	while (1){
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    3418:	4b26      	ldr	r3, [pc, #152]	; (34b4 <select_debug_level+0xc4>)
    341a:	781b      	ldrb	r3, [r3, #0]
    341c:	3301      	adds	r3, #1
    341e:	b2db      	uxtb	r3, r3
    3420:	00db      	lsls	r3, r3, #3
    3422:	b2db      	uxtb	r3, r3
    3424:	4619      	mov	r1, r3
    3426:	2000      	movs	r0, #0
    3428:	f001 fc1a 	bl	4c60 <set_cursor>
		put_char('*');
    342c:	202a      	movs	r0, #42	; 0x2a
    342e:	f001 fb7d 	bl	4b2c <put_char>
		btn=btn_wait_any();
    3432:	f7fe fcc5 	bl	1dc0 <btn_wait_any>
    3436:	4603      	mov	r3, r0
    3438:	71fb      	strb	r3, [r7, #7]
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    343a:	4b1e      	ldr	r3, [pc, #120]	; (34b4 <select_debug_level+0xc4>)
    343c:	781b      	ldrb	r3, [r3, #0]
    343e:	3301      	adds	r3, #1
    3440:	b2db      	uxtb	r3, r3
    3442:	00db      	lsls	r3, r3, #3
    3444:	b2db      	uxtb	r3, r3
    3446:	4619      	mov	r1, r3
    3448:	2000      	movs	r0, #0
    344a:	f001 fc09 	bl	4c60 <set_cursor>
		put_char(' ');
    344e:	2020      	movs	r0, #32
    3450:	f001 fb6c 	bl	4b2c <put_char>
		switch(btn){
    3454:	79fb      	ldrb	r3, [r7, #7]
    3456:	2b04      	cmp	r3, #4
    3458:	d00e      	beq.n	3478 <select_debug_level+0x88>
    345a:	2b20      	cmp	r3, #32
    345c:	d01b      	beq.n	3496 <select_debug_level+0xa6>
    345e:	2b02      	cmp	r3, #2
    3460:	d118      	bne.n	3494 <select_debug_level+0xa4>
		case KEY_UP:
			if (debug_level) debug_level--;
    3462:	4b14      	ldr	r3, [pc, #80]	; (34b4 <select_debug_level+0xc4>)
    3464:	781b      	ldrb	r3, [r3, #0]
    3466:	2b00      	cmp	r3, #0
    3468:	d011      	beq.n	348e <select_debug_level+0x9e>
    346a:	4b12      	ldr	r3, [pc, #72]	; (34b4 <select_debug_level+0xc4>)
    346c:	781b      	ldrb	r3, [r3, #0]
    346e:	3b01      	subs	r3, #1
    3470:	b2da      	uxtb	r2, r3
    3472:	4b10      	ldr	r3, [pc, #64]	; (34b4 <select_debug_level+0xc4>)
    3474:	701a      	strb	r2, [r3, #0]
			break;
    3476:	e00a      	b.n	348e <select_debug_level+0x9e>
		case KEY_DOWN:
			if (debug_level<DEBUG_SSTEP) debug_level++;
    3478:	4b0e      	ldr	r3, [pc, #56]	; (34b4 <select_debug_level+0xc4>)
    347a:	781b      	ldrb	r3, [r3, #0]
    347c:	2b02      	cmp	r3, #2
    347e:	d808      	bhi.n	3492 <select_debug_level+0xa2>
    3480:	4b0c      	ldr	r3, [pc, #48]	; (34b4 <select_debug_level+0xc4>)
    3482:	781b      	ldrb	r3, [r3, #0]
    3484:	3301      	adds	r3, #1
    3486:	b2da      	uxtb	r2, r3
    3488:	4b0a      	ldr	r3, [pc, #40]	; (34b4 <select_debug_level+0xc4>)
    348a:	701a      	strb	r2, [r3, #0]
			break;
    348c:	e001      	b.n	3492 <select_debug_level+0xa2>
			break;
    348e:	bf00      	nop
    3490:	e7c2      	b.n	3418 <select_debug_level+0x28>
			break;
    3492:	bf00      	nop
		set_cursor(0,CHAR_HEIGHT*(debug_level+1));
    3494:	e7c0      	b.n	3418 <select_debug_level+0x28>
		case KEY_B:
			return;	
    3496:	bf00      	nop
		}//swtich
	}
}
    3498:	3708      	adds	r7, #8
    349a:	46bd      	mov	sp, r7
    349c:	bd80      	pop	{r7, pc}
    349e:	bf00      	nop
    34a0:	000061b0 	.word	0x000061b0
    34a4:	000061d0 	.word	0x000061d0
    34a8:	000061e4 	.word	0x000061e4
    34ac:	000061fc 	.word	0x000061fc
    34b0:	00006214 	.word	0x00006214
    34b4:	20002724 	.word	0x20002724

000034b8 <display_menu>:
	" Debug support",
	" Video test",
	" Sound test",
};

static void display_menu(){
    34b8:	b580      	push	{r7, lr}
    34ba:	b082      	sub	sp, #8
    34bc:	af00      	add	r7, sp, #0
	int i;
	gfx_cls();
    34be:	f7ff f8a7 	bl	2610 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
    34c2:	2300      	movs	r3, #0
    34c4:	607b      	str	r3, [r7, #4]
    34c6:	e009      	b.n	34dc <display_menu+0x24>
		println(menu_list[i]);
    34c8:	4a08      	ldr	r2, [pc, #32]	; (34ec <display_menu+0x34>)
    34ca:	687b      	ldr	r3, [r7, #4]
    34cc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    34d0:	4618      	mov	r0, r3
    34d2:	f001 fc14 	bl	4cfe <println>
	for (i=0;i<MENU_ITEMS;i++){
    34d6:	687b      	ldr	r3, [r7, #4]
    34d8:	3301      	adds	r3, #1
    34da:	607b      	str	r3, [r7, #4]
    34dc:	687b      	ldr	r3, [r7, #4]
    34de:	2b03      	cmp	r3, #3
    34e0:	ddf2      	ble.n	34c8 <display_menu+0x10>
	}
}
    34e2:	bf00      	nop
    34e4:	3708      	adds	r7, #8
    34e6:	46bd      	mov	sp, r7
    34e8:	bd80      	pop	{r7, pc}
    34ea:	bf00      	nop
    34ec:	200001cc 	.word	0x200001cc

000034f0 <menu>:

static void menu(){
    34f0:	b580      	push	{r7, lr}
    34f2:	b084      	sub	sp, #16
    34f4:	af00      	add	r7, sp, #0
	int i=0;
    34f6:	2300      	movs	r3, #0
    34f8:	60fb      	str	r3, [r7, #12]
	uint8_t btn;
	vmode_params_t* vparams=get_video_params();
    34fa:	f002 f817 	bl	552c <get_video_params>
    34fe:	60b8      	str	r0, [r7, #8]
	display_menu();
    3500:	f7ff ffda 	bl	34b8 <display_menu>
	while (1){
		set_cursor(0,i*CHAR_HEIGHT);
    3504:	68fb      	ldr	r3, [r7, #12]
    3506:	b2db      	uxtb	r3, r3
    3508:	00db      	lsls	r3, r3, #3
    350a:	b2db      	uxtb	r3, r3
    350c:	4619      	mov	r1, r3
    350e:	2000      	movs	r0, #0
    3510:	f001 fba6 	bl	4c60 <set_cursor>
		put_char('>');
    3514:	203e      	movs	r0, #62	; 0x3e
    3516:	f001 fb09 	bl	4b2c <put_char>
		btn=btn_wait_any();
    351a:	f7fe fc51 	bl	1dc0 <btn_wait_any>
    351e:	4603      	mov	r3, r0
    3520:	71fb      	strb	r3, [r7, #7]
		btn_wait_up(btn);
    3522:	79fb      	ldrb	r3, [r7, #7]
    3524:	4618      	mov	r0, r3
    3526:	f7fe fc23 	bl	1d70 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    352a:	68fb      	ldr	r3, [r7, #12]
    352c:	b2db      	uxtb	r3, r3
    352e:	00db      	lsls	r3, r3, #3
    3530:	b2db      	uxtb	r3, r3
    3532:	4619      	mov	r1, r3
    3534:	2000      	movs	r0, #0
    3536:	f001 fb93 	bl	4c60 <set_cursor>
		put_char(' ');
    353a:	2020      	movs	r0, #32
    353c:	f001 faf6 	bl	4b2c <put_char>
		switch(btn){
    3540:	79fb      	ldrb	r3, [r7, #7]
    3542:	2b04      	cmp	r3, #4
    3544:	d00a      	beq.n	355c <menu+0x6c>
    3546:	2b20      	cmp	r3, #32
    3548:	d00f      	beq.n	356a <menu+0x7a>
    354a:	2b02      	cmp	r3, #2
    354c:	d12e      	bne.n	35ac <menu+0xbc>
		case KEY_UP:
			if (i) i--;
    354e:	68fb      	ldr	r3, [r7, #12]
    3550:	2b00      	cmp	r3, #0
    3552:	d028      	beq.n	35a6 <menu+0xb6>
    3554:	68fb      	ldr	r3, [r7, #12]
    3556:	3b01      	subs	r3, #1
    3558:	60fb      	str	r3, [r7, #12]
			break;
    355a:	e024      	b.n	35a6 <menu+0xb6>
		case KEY_DOWN:
			if (i<(MENU_ITEMS-1)) i++;
    355c:	68fb      	ldr	r3, [r7, #12]
    355e:	2b02      	cmp	r3, #2
    3560:	dc23      	bgt.n	35aa <menu+0xba>
    3562:	68fb      	ldr	r3, [r7, #12]
    3564:	3301      	adds	r3, #1
    3566:	60fb      	str	r3, [r7, #12]
			break;
    3568:	e01f      	b.n	35aa <menu+0xba>
		case KEY_B:
			switch(i){
    356a:	68fb      	ldr	r3, [r7, #12]
    356c:	2b03      	cmp	r3, #3
    356e:	d817      	bhi.n	35a0 <menu+0xb0>
    3570:	a201      	add	r2, pc, #4	; (adr r2, 3578 <menu+0x88>)
    3572:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    3576:	bf00      	nop
    3578:	00003589 	.word	0x00003589
    357c:	0000358f 	.word	0x0000358f
    3580:	00003595 	.word	0x00003595
    3584:	0000359b 	.word	0x0000359b
			case 0:
				select_game();
    3588:	f7ff feba 	bl	3300 <select_game>
				break;
    358c:	e008      	b.n	35a0 <menu+0xb0>
			case 1:
				select_debug_level();
    358e:	f7ff ff2f 	bl	33f0 <select_debug_level>
				break;	
    3592:	e005      	b.n	35a0 <menu+0xb0>
			case 2:
				video_test();
    3594:	f7ff fcfc 	bl	2f90 <video_test>
				break;
    3598:	e002      	b.n	35a0 <menu+0xb0>
			case 3:
				sound_test();
    359a:	f7ff fd67 	bl	306c <sound_test>
				break;	
    359e:	bf00      	nop
			}
			//set_video_mode(VM_BPCHIP);
			display_menu();
    35a0:	f7ff ff8a 	bl	34b8 <display_menu>
			break;	
    35a4:	e002      	b.n	35ac <menu+0xbc>
			break;
    35a6:	bf00      	nop
    35a8:	e7ac      	b.n	3504 <menu+0x14>
			break;
    35aa:	bf00      	nop
		set_cursor(0,i*CHAR_HEIGHT);
    35ac:	e7aa      	b.n	3504 <menu+0x14>

000035ae <main>:
		}
	}//while
}

void main(void){
    35ae:	b580      	push	{r7, lr}
    35b0:	b082      	sub	sp, #8
    35b2:	af02      	add	r7, sp, #8
	set_sysclock();
    35b4:	f7ff fa36 	bl	2a24 <set_sysclock>
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    35b8:	4b13      	ldr	r3, [pc, #76]	; (3608 <main+0x5a>)
    35ba:	f640 021d 	movw	r2, #2077	; 0x81d
    35be:	619a      	str	r2, [r3, #24]
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    35c0:	2206      	movs	r2, #6
    35c2:	210d      	movs	r1, #13
    35c4:	4811      	ldr	r0, [pc, #68]	; (360c <main+0x5e>)
    35c6:	f7fe ff0d 	bl	23e4 <config_pin>
	_led_off();
    35ca:	4a10      	ldr	r2, [pc, #64]	; (360c <main+0x5e>)
    35cc:	4b0f      	ldr	r3, [pc, #60]	; (360c <main+0x5e>)
    35ce:	68db      	ldr	r3, [r3, #12]
    35d0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    35d4:	60d3      	str	r3, [r2, #12]
	tvout_init();
    35d6:	f001 fcf7 	bl	4fc8 <tvout_init>
	usart_open_channel(CHN1,115200,PARITY_NONE,USART_DIR_BIDI,ALT_PORT,FLOW_SOFT);
    35da:	2300      	movs	r3, #0
    35dc:	9301      	str	r3, [sp, #4]
    35de:	2301      	movs	r3, #1
    35e0:	9300      	str	r3, [sp, #0]
    35e2:	2303      	movs	r3, #3
    35e4:	2200      	movs	r2, #0
    35e6:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    35ea:	2000      	movs	r0, #0
    35ec:	f002 f8ea 	bl	57c4 <usart_open_channel>
	gamepad_init();
    35f0:	f7fe fac0 	bl	1b74 <gamepad_init>
	sound_init();
    35f4:	f000 ff36 	bl	4464 <sound_init>
	gfx_cls();
    35f8:	f7ff f80a 	bl	2610 <gfx_cls>
	menu();
    35fc:	f7ff ff78 	bl	34f0 <menu>
}
    3600:	bf00      	nop
    3602:	46bd      	mov	sp, r7
    3604:	bd80      	pop	{r7, pc}
    3606:	bf00      	nop
    3608:	40021000 	.word	0x40021000
    360c:	40011000 	.word	0x40011000

00003610 <enable_interrupt>:

#include "../include/blue_pill.h"



void enable_interrupt(int irq){
    3610:	b480      	push	{r7}
    3612:	b083      	sub	sp, #12
    3614:	af00      	add	r7, sp, #0
    3616:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    3618:	687b      	ldr	r3, [r7, #4]
    361a:	2b3b      	cmp	r3, #59	; 0x3b
    361c:	dc17      	bgt.n	364e <enable_interrupt+0x3e>
	ISER[irq>>5]|=1<<(irq&0x1f);
    361e:	687b      	ldr	r3, [r7, #4]
    3620:	115b      	asrs	r3, r3, #5
    3622:	009b      	lsls	r3, r3, #2
    3624:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3628:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    362c:	687a      	ldr	r2, [r7, #4]
    362e:	1152      	asrs	r2, r2, #5
    3630:	0092      	lsls	r2, r2, #2
    3632:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    3636:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    363a:	6812      	ldr	r2, [r2, #0]
    363c:	6879      	ldr	r1, [r7, #4]
    363e:	f001 011f 	and.w	r1, r1, #31
    3642:	2001      	movs	r0, #1
    3644:	fa00 f101 	lsl.w	r1, r0, r1
    3648:	430a      	orrs	r2, r1
    364a:	601a      	str	r2, [r3, #0]
    364c:	e000      	b.n	3650 <enable_interrupt+0x40>
	if (irq>LAST_IRQ) return ;
    364e:	bf00      	nop
}
    3650:	370c      	adds	r7, #12
    3652:	46bd      	mov	sp, r7
    3654:	bc80      	pop	{r7}
    3656:	4770      	bx	lr

00003658 <disable_interrupt>:


void disable_interrupt(int irq){
    3658:	b480      	push	{r7}
    365a:	b083      	sub	sp, #12
    365c:	af00      	add	r7, sp, #0
    365e:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    3660:	687b      	ldr	r3, [r7, #4]
    3662:	2b3b      	cmp	r3, #59	; 0x3b
    3664:	dc0c      	bgt.n	3680 <disable_interrupt+0x28>
	ICER[irq>>5]=(1<<(irq&0x1f));
    3666:	687b      	ldr	r3, [r7, #4]
    3668:	115b      	asrs	r3, r3, #5
    366a:	009a      	lsls	r2, r3, #2
    366c:	4b07      	ldr	r3, [pc, #28]	; (368c <disable_interrupt+0x34>)
    366e:	4413      	add	r3, r2
    3670:	687a      	ldr	r2, [r7, #4]
    3672:	f002 021f 	and.w	r2, r2, #31
    3676:	2101      	movs	r1, #1
    3678:	fa01 f202 	lsl.w	r2, r1, r2
    367c:	601a      	str	r2, [r3, #0]
    367e:	e000      	b.n	3682 <disable_interrupt+0x2a>
	if (irq>LAST_IRQ) return ;
    3680:	bf00      	nop
}
    3682:	370c      	adds	r7, #12
    3684:	46bd      	mov	sp, r7
    3686:	bc80      	pop	{r7}
    3688:	4770      	bx	lr
    368a:	bf00      	nop
    368c:	e000e180 	.word	0xe000e180

00003690 <get_pending>:

unsigned get_pending(int irq){
    3690:	b480      	push	{r7}
    3692:	b083      	sub	sp, #12
    3694:	af00      	add	r7, sp, #0
    3696:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    3698:	687b      	ldr	r3, [r7, #4]
    369a:	2b3b      	cmp	r3, #59	; 0x3b
    369c:	dd01      	ble.n	36a2 <get_pending+0x12>
    369e:	2300      	movs	r3, #0
    36a0:	e00c      	b.n	36bc <get_pending+0x2c>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    36a2:	687b      	ldr	r3, [r7, #4]
    36a4:	115b      	asrs	r3, r3, #5
    36a6:	009a      	lsls	r2, r3, #2
    36a8:	4b07      	ldr	r3, [pc, #28]	; (36c8 <get_pending+0x38>)
    36aa:	4413      	add	r3, r2
    36ac:	681b      	ldr	r3, [r3, #0]
    36ae:	687a      	ldr	r2, [r7, #4]
    36b0:	f002 021f 	and.w	r2, r2, #31
    36b4:	2101      	movs	r1, #1
    36b6:	fa01 f202 	lsl.w	r2, r1, r2
    36ba:	4013      	ands	r3, r2
}
    36bc:	4618      	mov	r0, r3
    36be:	370c      	adds	r7, #12
    36c0:	46bd      	mov	sp, r7
    36c2:	bc80      	pop	{r7}
    36c4:	4770      	bx	lr
    36c6:	bf00      	nop
    36c8:	e000e280 	.word	0xe000e280

000036cc <get_active>:

unsigned get_active(int irq){
    36cc:	b480      	push	{r7}
    36ce:	b083      	sub	sp, #12
    36d0:	af00      	add	r7, sp, #0
    36d2:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    36d4:	687b      	ldr	r3, [r7, #4]
    36d6:	2b3b      	cmp	r3, #59	; 0x3b
    36d8:	dd01      	ble.n	36de <get_active+0x12>
    36da:	2300      	movs	r3, #0
    36dc:	e00e      	b.n	36fc <get_active+0x30>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    36de:	687b      	ldr	r3, [r7, #4]
    36e0:	115b      	asrs	r3, r3, #5
    36e2:	009b      	lsls	r3, r3, #2
    36e4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    36e8:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    36ec:	681b      	ldr	r3, [r3, #0]
    36ee:	687a      	ldr	r2, [r7, #4]
    36f0:	f002 021f 	and.w	r2, r2, #31
    36f4:	2101      	movs	r1, #1
    36f6:	fa01 f202 	lsl.w	r2, r1, r2
    36fa:	4013      	ands	r3, r2
}
    36fc:	4618      	mov	r0, r3
    36fe:	370c      	adds	r7, #12
    3700:	46bd      	mov	sp, r7
    3702:	bc80      	pop	{r7}
    3704:	4770      	bx	lr

00003706 <set_pending>:

void set_pending(int irq){
    3706:	b480      	push	{r7}
    3708:	b083      	sub	sp, #12
    370a:	af00      	add	r7, sp, #0
    370c:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    370e:	687b      	ldr	r3, [r7, #4]
    3710:	2b3b      	cmp	r3, #59	; 0x3b
    3712:	dc17      	bgt.n	3744 <set_pending+0x3e>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    3714:	687b      	ldr	r3, [r7, #4]
    3716:	115b      	asrs	r3, r3, #5
    3718:	009b      	lsls	r3, r3, #2
    371a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    371e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    3722:	687a      	ldr	r2, [r7, #4]
    3724:	1152      	asrs	r2, r2, #5
    3726:	0092      	lsls	r2, r2, #2
    3728:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    372c:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    3730:	6812      	ldr	r2, [r2, #0]
    3732:	6879      	ldr	r1, [r7, #4]
    3734:	f001 011f 	and.w	r1, r1, #31
    3738:	2001      	movs	r0, #1
    373a:	fa00 f101 	lsl.w	r1, r0, r1
    373e:	430a      	orrs	r2, r1
    3740:	601a      	str	r2, [r3, #0]
    3742:	e000      	b.n	3746 <set_pending+0x40>
	if (irq>LAST_IRQ) return;
    3744:	bf00      	nop
}
    3746:	370c      	adds	r7, #12
    3748:	46bd      	mov	sp, r7
    374a:	bc80      	pop	{r7}
    374c:	4770      	bx	lr

0000374e <clear_pending>:

void clear_pending(int irq){
    374e:	b480      	push	{r7}
    3750:	b083      	sub	sp, #12
    3752:	af00      	add	r7, sp, #0
    3754:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    3756:	687b      	ldr	r3, [r7, #4]
    3758:	2b3b      	cmp	r3, #59	; 0x3b
    375a:	dc0c      	bgt.n	3776 <clear_pending+0x28>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    375c:	687b      	ldr	r3, [r7, #4]
    375e:	115b      	asrs	r3, r3, #5
    3760:	009a      	lsls	r2, r3, #2
    3762:	4b07      	ldr	r3, [pc, #28]	; (3780 <clear_pending+0x32>)
    3764:	4413      	add	r3, r2
    3766:	687a      	ldr	r2, [r7, #4]
    3768:	f002 021f 	and.w	r2, r2, #31
    376c:	2101      	movs	r1, #1
    376e:	fa01 f202 	lsl.w	r2, r1, r2
    3772:	601a      	str	r2, [r3, #0]
    3774:	e000      	b.n	3778 <clear_pending+0x2a>
	if (irq>LAST_IRQ) return;
    3776:	bf00      	nop
}
    3778:	370c      	adds	r7, #12
    377a:	46bd      	mov	sp, r7
    377c:	bc80      	pop	{r7}
    377e:	4770      	bx	lr
    3780:	e000e280 	.word	0xe000e280

00003784 <set_int_priority>:

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
    3784:	b480      	push	{r7}
    3786:	b083      	sub	sp, #12
    3788:	af00      	add	r7, sp, #0
    378a:	6078      	str	r0, [r7, #4]
    378c:	6039      	str	r1, [r7, #0]
	if ((irq>=0) && (irq<=LAST_IRQ)){
    378e:	687b      	ldr	r3, [r7, #4]
    3790:	2b00      	cmp	r3, #0
    3792:	db0d      	blt.n	37b0 <set_int_priority+0x2c>
    3794:	687b      	ldr	r3, [r7, #4]
    3796:	2b3b      	cmp	r3, #59	; 0x3b
    3798:	dc0a      	bgt.n	37b0 <set_int_priority+0x2c>
		IPR[irq]=(uint8_t)((priority&15)<<4);
    379a:	687b      	ldr	r3, [r7, #4]
    379c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    37a0:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    37a4:	683a      	ldr	r2, [r7, #0]
    37a6:	b2d2      	uxtb	r2, r2
    37a8:	0112      	lsls	r2, r2, #4
    37aa:	b2d2      	uxtb	r2, r2
    37ac:	701a      	strb	r2, [r3, #0]
	}else if ((irq<0) && (irq>-16)){
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
	}
}
    37ae:	e012      	b.n	37d6 <set_int_priority+0x52>
	}else if ((irq<0) && (irq>-16)){
    37b0:	687b      	ldr	r3, [r7, #4]
    37b2:	2b00      	cmp	r3, #0
    37b4:	da0f      	bge.n	37d6 <set_int_priority+0x52>
    37b6:	687b      	ldr	r3, [r7, #4]
    37b8:	f113 0f0f 	cmn.w	r3, #15
    37bc:	db0b      	blt.n	37d6 <set_int_priority+0x52>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    37be:	687a      	ldr	r2, [r7, #4]
    37c0:	f06f 0303 	mvn.w	r3, #3
    37c4:	1a9b      	subs	r3, r3, r2
    37c6:	461a      	mov	r2, r3
    37c8:	4b05      	ldr	r3, [pc, #20]	; (37e0 <set_int_priority+0x5c>)
    37ca:	4413      	add	r3, r2
    37cc:	683a      	ldr	r2, [r7, #0]
    37ce:	b2d2      	uxtb	r2, r2
    37d0:	0112      	lsls	r2, r2, #4
    37d2:	b2d2      	uxtb	r2, r2
    37d4:	701a      	strb	r2, [r3, #0]
}
    37d6:	bf00      	nop
    37d8:	370c      	adds	r7, #12
    37da:	46bd      	mov	sp, r7
    37dc:	bc80      	pop	{r7}
    37de:	4770      	bx	lr
    37e0:	e000ed18 	.word	0xe000ed18

000037e4 <leap_year>:
#define RTC_ACCESS_CODE 0xAA55

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
    37e4:	b480      	push	{r7}
    37e6:	b083      	sub	sp, #12
    37e8:	af00      	add	r7, sp, #0
    37ea:	6078      	str	r0, [r7, #4]
	if (!(y&3)){
    37ec:	687b      	ldr	r3, [r7, #4]
    37ee:	f003 0303 	and.w	r3, r3, #3
    37f2:	2b00      	cmp	r3, #0
    37f4:	d11a      	bne.n	382c <leap_year+0x48>
		if ((y%100==0) && (y%400)){
    37f6:	687a      	ldr	r2, [r7, #4]
    37f8:	4b0f      	ldr	r3, [pc, #60]	; (3838 <leap_year+0x54>)
    37fa:	fba3 1302 	umull	r1, r3, r3, r2
    37fe:	095b      	lsrs	r3, r3, #5
    3800:	2164      	movs	r1, #100	; 0x64
    3802:	fb01 f303 	mul.w	r3, r1, r3
    3806:	1ad3      	subs	r3, r2, r3
    3808:	2b00      	cmp	r3, #0
    380a:	d10d      	bne.n	3828 <leap_year+0x44>
    380c:	687a      	ldr	r2, [r7, #4]
    380e:	4b0a      	ldr	r3, [pc, #40]	; (3838 <leap_year+0x54>)
    3810:	fba3 1302 	umull	r1, r3, r3, r2
    3814:	09db      	lsrs	r3, r3, #7
    3816:	f44f 71c8 	mov.w	r1, #400	; 0x190
    381a:	fb01 f303 	mul.w	r3, r1, r3
    381e:	1ad3      	subs	r3, r2, r3
    3820:	2b00      	cmp	r3, #0
    3822:	d001      	beq.n	3828 <leap_year+0x44>
			return 0;
    3824:	2300      	movs	r3, #0
    3826:	e002      	b.n	382e <leap_year+0x4a>
		}
		return 1;
    3828:	2301      	movs	r3, #1
    382a:	e000      	b.n	382e <leap_year+0x4a>
	}
	return 0;
    382c:	2300      	movs	r3, #0
}
    382e:	4618      	mov	r0, r3
    3830:	370c      	adds	r7, #12
    3832:	46bd      	mov	sp, r7
    3834:	bc80      	pop	{r7}
    3836:	4770      	bx	lr
    3838:	51eb851f 	.word	0x51eb851f

0000383c <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
    383c:	b480      	push	{r7}
    383e:	b085      	sub	sp, #20
    3840:	af00      	add	r7, sp, #0
    3842:	6078      	str	r0, [r7, #4]
    3844:	6039      	str	r1, [r7, #0]
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    3846:	4a0d      	ldr	r2, [pc, #52]	; (387c <sec_per_month+0x40>)
    3848:	683b      	ldr	r3, [r7, #0]
    384a:	4413      	add	r3, r2
    384c:	781b      	ldrb	r3, [r3, #0]
    384e:	461a      	mov	r2, r3
    3850:	4b0b      	ldr	r3, [pc, #44]	; (3880 <sec_per_month+0x44>)
    3852:	fb03 f302 	mul.w	r3, r3, r2
    3856:	60fb      	str	r3, [r7, #12]
	if (month==2 && leap){
    3858:	683b      	ldr	r3, [r7, #0]
    385a:	2b02      	cmp	r3, #2
    385c:	d108      	bne.n	3870 <sec_per_month+0x34>
    385e:	687b      	ldr	r3, [r7, #4]
    3860:	2b00      	cmp	r3, #0
    3862:	d005      	beq.n	3870 <sec_per_month+0x34>
		sec+=SEC_PER_DAY;
    3864:	68fb      	ldr	r3, [r7, #12]
    3866:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    386a:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    386e:	60fb      	str	r3, [r7, #12]
	}
	return sec;
    3870:	68fb      	ldr	r3, [r7, #12]
}
    3872:	4618      	mov	r0, r3
    3874:	3714      	adds	r7, #20
    3876:	46bd      	mov	sp, r7
    3878:	bc80      	pop	{r7}
    387a:	4770      	bx	lr
    387c:	00006318 	.word	0x00006318
    3880:	00015180 	.word	0x00015180

00003884 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    3884:	b580      	push	{r7, lr}
    3886:	b086      	sub	sp, #24
    3888:	af00      	add	r7, sp, #0
    388a:	6078      	str	r0, [r7, #4]
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    388c:	4b66      	ldr	r3, [pc, #408]	; (3a28 <get_date_time+0x1a4>)
    388e:	699b      	ldr	r3, [r3, #24]
    3890:	041a      	lsls	r2, r3, #16
    3892:	4b65      	ldr	r3, [pc, #404]	; (3a28 <get_date_time+0x1a4>)
    3894:	69db      	ldr	r3, [r3, #28]
    3896:	4413      	add	r3, r2
    3898:	617b      	str	r3, [r7, #20]
	dt->year=EPOCH_YEAR;
    389a:	687b      	ldr	r3, [r7, #4]
    389c:	f240 72b2 	movw	r2, #1970	; 0x7b2
    38a0:	811a      	strh	r2, [r3, #8]
	leap=leap_year(EPOCH_YEAR);
    38a2:	f240 70b2 	movw	r0, #1970	; 0x7b2
    38a6:	f7ff ff9d 	bl	37e4 <leap_year>
    38aa:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    38ac:	e019      	b.n	38e2 <get_date_time+0x5e>
		if (leap){
    38ae:	693b      	ldr	r3, [r7, #16]
    38b0:	2b00      	cmp	r3, #0
    38b2:	d006      	beq.n	38c2 <get_date_time+0x3e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    38b4:	697b      	ldr	r3, [r7, #20]
    38b6:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    38ba:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    38be:	617b      	str	r3, [r7, #20]
    38c0:	e003      	b.n	38ca <get_date_time+0x46>
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    38c2:	697a      	ldr	r2, [r7, #20]
    38c4:	4b59      	ldr	r3, [pc, #356]	; (3a2c <get_date_time+0x1a8>)
    38c6:	4413      	add	r3, r2
    38c8:	617b      	str	r3, [r7, #20]
		}
		dt->year++;
    38ca:	687b      	ldr	r3, [r7, #4]
    38cc:	891b      	ldrh	r3, [r3, #8]
    38ce:	3301      	adds	r3, #1
    38d0:	b29a      	uxth	r2, r3
    38d2:	687b      	ldr	r3, [r7, #4]
    38d4:	811a      	strh	r2, [r3, #8]
		leap=leap_year(dt->year);
    38d6:	687b      	ldr	r3, [r7, #4]
    38d8:	891b      	ldrh	r3, [r3, #8]
    38da:	4618      	mov	r0, r3
    38dc:	f7ff ff82 	bl	37e4 <leap_year>
    38e0:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    38e2:	693b      	ldr	r3, [r7, #16]
    38e4:	2b00      	cmp	r3, #0
    38e6:	d103      	bne.n	38f0 <get_date_time+0x6c>
    38e8:	697b      	ldr	r3, [r7, #20]
    38ea:	4a51      	ldr	r2, [pc, #324]	; (3a30 <get_date_time+0x1ac>)
    38ec:	4293      	cmp	r3, r2
    38ee:	d8de      	bhi.n	38ae <get_date_time+0x2a>
    38f0:	693b      	ldr	r3, [r7, #16]
    38f2:	2b00      	cmp	r3, #0
    38f4:	d003      	beq.n	38fe <get_date_time+0x7a>
    38f6:	697b      	ldr	r3, [r7, #20]
    38f8:	4a4e      	ldr	r2, [pc, #312]	; (3a34 <get_date_time+0x1b0>)
    38fa:	4293      	cmp	r3, r2
    38fc:	d8d7      	bhi.n	38ae <get_date_time+0x2a>
	}//while
	dt->month=1;
    38fe:	687a      	ldr	r2, [r7, #4]
    3900:	8853      	ldrh	r3, [r2, #2]
    3902:	2101      	movs	r1, #1
    3904:	f361 1389 	bfi	r3, r1, #6, #4
    3908:	8053      	strh	r3, [r2, #2]
	dt->day=1;
    390a:	687a      	ldr	r2, [r7, #4]
    390c:	7893      	ldrb	r3, [r2, #2]
    390e:	2101      	movs	r1, #1
    3910:	f361 0345 	bfi	r3, r1, #1, #5
    3914:	7093      	strb	r3, [r2, #2]
	dt->hour=0;
    3916:	687a      	ldr	r2, [r7, #4]
    3918:	6813      	ldr	r3, [r2, #0]
    391a:	f36f 3310 	bfc	r3, #12, #5
    391e:	6013      	str	r3, [r2, #0]
	dt->minute=0;
    3920:	687a      	ldr	r2, [r7, #4]
    3922:	8813      	ldrh	r3, [r2, #0]
    3924:	f36f 138b 	bfc	r3, #6, #6
    3928:	8013      	strh	r3, [r2, #0]
	dt->second=0;
    392a:	687a      	ldr	r2, [r7, #4]
    392c:	7813      	ldrb	r3, [r2, #0]
    392e:	f36f 0305 	bfc	r3, #0, #6
    3932:	7013      	strb	r3, [r2, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    3934:	e011      	b.n	395a <get_date_time+0xd6>
		dt->month++;
    3936:	687b      	ldr	r3, [r7, #4]
    3938:	885b      	ldrh	r3, [r3, #2]
    393a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    393e:	b2db      	uxtb	r3, r3
    3940:	3301      	adds	r3, #1
    3942:	f003 030f 	and.w	r3, r3, #15
    3946:	b2d9      	uxtb	r1, r3
    3948:	687a      	ldr	r2, [r7, #4]
    394a:	8853      	ldrh	r3, [r2, #2]
    394c:	f361 1389 	bfi	r3, r1, #6, #4
    3950:	8053      	strh	r3, [r2, #2]
		rtc_cntr-=sec;
    3952:	697a      	ldr	r2, [r7, #20]
    3954:	68fb      	ldr	r3, [r7, #12]
    3956:	1ad3      	subs	r3, r2, r3
    3958:	617b      	str	r3, [r7, #20]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    395a:	687b      	ldr	r3, [r7, #4]
    395c:	885b      	ldrh	r3, [r3, #2]
    395e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3962:	b2db      	uxtb	r3, r3
    3964:	4619      	mov	r1, r3
    3966:	6938      	ldr	r0, [r7, #16]
    3968:	f7ff ff68 	bl	383c <sec_per_month>
    396c:	60f8      	str	r0, [r7, #12]
    396e:	68fa      	ldr	r2, [r7, #12]
    3970:	697b      	ldr	r3, [r7, #20]
    3972:	429a      	cmp	r2, r3
    3974:	d3df      	bcc.n	3936 <get_date_time+0xb2>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    3976:	697b      	ldr	r3, [r7, #20]
    3978:	4a2f      	ldr	r2, [pc, #188]	; (3a38 <get_date_time+0x1b4>)
    397a:	fba2 2303 	umull	r2, r3, r2, r3
    397e:	0c1b      	lsrs	r3, r3, #16
    3980:	b2db      	uxtb	r3, r3
    3982:	3301      	adds	r3, #1
    3984:	b2db      	uxtb	r3, r3
    3986:	f003 031f 	and.w	r3, r3, #31
    398a:	b2d9      	uxtb	r1, r3
    398c:	687a      	ldr	r2, [r7, #4]
    398e:	7893      	ldrb	r3, [r2, #2]
    3990:	f361 0345 	bfi	r3, r1, #1, #5
    3994:	7093      	strb	r3, [r2, #2]
	rtc_cntr%=SEC_PER_DAY;
    3996:	697b      	ldr	r3, [r7, #20]
    3998:	4a27      	ldr	r2, [pc, #156]	; (3a38 <get_date_time+0x1b4>)
    399a:	fba2 1203 	umull	r1, r2, r2, r3
    399e:	0c12      	lsrs	r2, r2, #16
    39a0:	4926      	ldr	r1, [pc, #152]	; (3a3c <get_date_time+0x1b8>)
    39a2:	fb01 f202 	mul.w	r2, r1, r2
    39a6:	1a9b      	subs	r3, r3, r2
    39a8:	617b      	str	r3, [r7, #20]
	dt->hour=rtc_cntr/SEC_PER_HR;
    39aa:	697b      	ldr	r3, [r7, #20]
    39ac:	4a24      	ldr	r2, [pc, #144]	; (3a40 <get_date_time+0x1bc>)
    39ae:	fba2 2303 	umull	r2, r3, r2, r3
    39b2:	0adb      	lsrs	r3, r3, #11
    39b4:	b2db      	uxtb	r3, r3
    39b6:	f003 031f 	and.w	r3, r3, #31
    39ba:	b2d9      	uxtb	r1, r3
    39bc:	687a      	ldr	r2, [r7, #4]
    39be:	6813      	ldr	r3, [r2, #0]
    39c0:	f361 3310 	bfi	r3, r1, #12, #5
    39c4:	6013      	str	r3, [r2, #0]
	rtc_cntr%=SEC_PER_HR;
    39c6:	697b      	ldr	r3, [r7, #20]
    39c8:	4a1d      	ldr	r2, [pc, #116]	; (3a40 <get_date_time+0x1bc>)
    39ca:	fba2 1203 	umull	r1, r2, r2, r3
    39ce:	0ad2      	lsrs	r2, r2, #11
    39d0:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    39d4:	fb01 f202 	mul.w	r2, r1, r2
    39d8:	1a9b      	subs	r3, r3, r2
    39da:	617b      	str	r3, [r7, #20]
	dt->minute=rtc_cntr/SEC_PER_MIN;
    39dc:	697b      	ldr	r3, [r7, #20]
    39de:	4a19      	ldr	r2, [pc, #100]	; (3a44 <get_date_time+0x1c0>)
    39e0:	fba2 2303 	umull	r2, r3, r2, r3
    39e4:	095b      	lsrs	r3, r3, #5
    39e6:	b2db      	uxtb	r3, r3
    39e8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    39ec:	b2d9      	uxtb	r1, r3
    39ee:	687a      	ldr	r2, [r7, #4]
    39f0:	8813      	ldrh	r3, [r2, #0]
    39f2:	f361 138b 	bfi	r3, r1, #6, #6
    39f6:	8013      	strh	r3, [r2, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    39f8:	6979      	ldr	r1, [r7, #20]
    39fa:	4b12      	ldr	r3, [pc, #72]	; (3a44 <get_date_time+0x1c0>)
    39fc:	fba3 2301 	umull	r2, r3, r3, r1
    3a00:	095a      	lsrs	r2, r3, #5
    3a02:	4613      	mov	r3, r2
    3a04:	011b      	lsls	r3, r3, #4
    3a06:	1a9b      	subs	r3, r3, r2
    3a08:	009b      	lsls	r3, r3, #2
    3a0a:	1aca      	subs	r2, r1, r3
    3a0c:	b2d3      	uxtb	r3, r2
    3a0e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3a12:	b2d9      	uxtb	r1, r3
    3a14:	687a      	ldr	r2, [r7, #4]
    3a16:	7813      	ldrb	r3, [r2, #0]
    3a18:	f361 0305 	bfi	r3, r1, #0, #6
    3a1c:	7013      	strb	r3, [r2, #0]
}
    3a1e:	bf00      	nop
    3a20:	3718      	adds	r7, #24
    3a22:	46bd      	mov	sp, r7
    3a24:	bd80      	pop	{r7, pc}
    3a26:	bf00      	nop
    3a28:	40002800 	.word	0x40002800
    3a2c:	fe1ecc80 	.word	0xfe1ecc80
    3a30:	01e1337f 	.word	0x01e1337f
    3a34:	01e284ff 	.word	0x01e284ff
    3a38:	c22e4507 	.word	0xc22e4507
    3a3c:	00015180 	.word	0x00015180
    3a40:	91a2b3c5 	.word	0x91a2b3c5
    3a44:	88888889 	.word	0x88888889

00003a48 <set_date_time>:

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    3a48:	b580      	push	{r7, lr}
    3a4a:	b086      	sub	sp, #24
    3a4c:	af00      	add	r7, sp, #0
    3a4e:	6078      	str	r0, [r7, #4]
	uint32_t i,rtc_cntr=0;
    3a50:	2300      	movs	r3, #0
    3a52:	613b      	str	r3, [r7, #16]
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    3a54:	687b      	ldr	r3, [r7, #4]
    3a56:	891b      	ldrh	r3, [r3, #8]
    3a58:	f240 72b1 	movw	r2, #1969	; 0x7b1
    3a5c:	4293      	cmp	r3, r2
    3a5e:	d803      	bhi.n	3a68 <set_date_time+0x20>
    3a60:	687b      	ldr	r3, [r7, #4]
    3a62:	f240 72b2 	movw	r2, #1970	; 0x7b2
    3a66:	811a      	strh	r2, [r3, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    3a68:	687b      	ldr	r3, [r7, #4]
    3a6a:	891b      	ldrh	r3, [r3, #8]
    3a6c:	f640 023a 	movw	r2, #2106	; 0x83a
    3a70:	4293      	cmp	r3, r2
    3a72:	d903      	bls.n	3a7c <set_date_time+0x34>
    3a74:	687b      	ldr	r3, [r7, #4]
    3a76:	f640 023a 	movw	r2, #2106	; 0x83a
    3a7a:	811a      	strh	r2, [r3, #8]
	leap=leap_year(dt->year);
    3a7c:	687b      	ldr	r3, [r7, #4]
    3a7e:	891b      	ldrh	r3, [r3, #8]
    3a80:	4618      	mov	r0, r3
    3a82:	f7ff feaf 	bl	37e4 <leap_year>
    3a86:	60f8      	str	r0, [r7, #12]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    3a88:	f240 73b2 	movw	r3, #1970	; 0x7b2
    3a8c:	617b      	str	r3, [r7, #20]
    3a8e:	e013      	b.n	3ab8 <set_date_time+0x70>
		if (leap_year(i)){
    3a90:	6978      	ldr	r0, [r7, #20]
    3a92:	f7ff fea7 	bl	37e4 <leap_year>
    3a96:	4603      	mov	r3, r0
    3a98:	2b00      	cmp	r3, #0
    3a9a:	d006      	beq.n	3aaa <set_date_time+0x62>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    3a9c:	693b      	ldr	r3, [r7, #16]
    3a9e:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    3aa2:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    3aa6:	613b      	str	r3, [r7, #16]
    3aa8:	e003      	b.n	3ab2 <set_date_time+0x6a>
		}else{
			rtc_cntr+=SEC_PER_YEAR;
    3aaa:	693a      	ldr	r2, [r7, #16]
    3aac:	4b42      	ldr	r3, [pc, #264]	; (3bb8 <set_date_time+0x170>)
    3aae:	4413      	add	r3, r2
    3ab0:	613b      	str	r3, [r7, #16]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    3ab2:	697b      	ldr	r3, [r7, #20]
    3ab4:	3301      	adds	r3, #1
    3ab6:	617b      	str	r3, [r7, #20]
    3ab8:	687b      	ldr	r3, [r7, #4]
    3aba:	891b      	ldrh	r3, [r3, #8]
    3abc:	461a      	mov	r2, r3
    3abe:	697b      	ldr	r3, [r7, #20]
    3ac0:	429a      	cmp	r2, r3
    3ac2:	d8e5      	bhi.n	3a90 <set_date_time+0x48>
		}
	}
	for (i=1;i<dt->month;i++){
    3ac4:	2301      	movs	r3, #1
    3ac6:	617b      	str	r3, [r7, #20]
    3ac8:	e00a      	b.n	3ae0 <set_date_time+0x98>
		rtc_cntr+=sec_per_month(leap,i);
    3aca:	6979      	ldr	r1, [r7, #20]
    3acc:	68f8      	ldr	r0, [r7, #12]
    3ace:	f7ff feb5 	bl	383c <sec_per_month>
    3ad2:	4602      	mov	r2, r0
    3ad4:	693b      	ldr	r3, [r7, #16]
    3ad6:	4413      	add	r3, r2
    3ad8:	613b      	str	r3, [r7, #16]
	for (i=1;i<dt->month;i++){
    3ada:	697b      	ldr	r3, [r7, #20]
    3adc:	3301      	adds	r3, #1
    3ade:	617b      	str	r3, [r7, #20]
    3ae0:	687b      	ldr	r3, [r7, #4]
    3ae2:	885b      	ldrh	r3, [r3, #2]
    3ae4:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3ae8:	b2db      	uxtb	r3, r3
    3aea:	461a      	mov	r2, r3
    3aec:	697b      	ldr	r3, [r7, #20]
    3aee:	429a      	cmp	r2, r3
    3af0:	d8eb      	bhi.n	3aca <set_date_time+0x82>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    3af2:	687b      	ldr	r3, [r7, #4]
    3af4:	789b      	ldrb	r3, [r3, #2]
    3af6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3afa:	b2db      	uxtb	r3, r3
    3afc:	3b01      	subs	r3, #1
    3afe:	4a2f      	ldr	r2, [pc, #188]	; (3bbc <set_date_time+0x174>)
    3b00:	fb02 f303 	mul.w	r3, r2, r3
    3b04:	461a      	mov	r2, r3
    3b06:	693b      	ldr	r3, [r7, #16]
    3b08:	4413      	add	r3, r2
    3b0a:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    3b0c:	687b      	ldr	r3, [r7, #4]
    3b0e:	681b      	ldr	r3, [r3, #0]
    3b10:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3b14:	b2db      	uxtb	r3, r3
    3b16:	461a      	mov	r2, r3
    3b18:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    3b1c:	fb03 f302 	mul.w	r3, r3, r2
    3b20:	461a      	mov	r2, r3
    3b22:	693b      	ldr	r3, [r7, #16]
    3b24:	4413      	add	r3, r2
    3b26:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    3b28:	687b      	ldr	r3, [r7, #4]
    3b2a:	881b      	ldrh	r3, [r3, #0]
    3b2c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3b30:	b2db      	uxtb	r3, r3
    3b32:	461a      	mov	r2, r3
    3b34:	4613      	mov	r3, r2
    3b36:	011b      	lsls	r3, r3, #4
    3b38:	1a9b      	subs	r3, r3, r2
    3b3a:	009b      	lsls	r3, r3, #2
    3b3c:	461a      	mov	r2, r3
    3b3e:	693b      	ldr	r3, [r7, #16]
    3b40:	4413      	add	r3, r2
    3b42:	613b      	str	r3, [r7, #16]
	rtc_cntr+=dt->second;
    3b44:	687b      	ldr	r3, [r7, #4]
    3b46:	781b      	ldrb	r3, [r3, #0]
    3b48:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3b4c:	b2db      	uxtb	r3, r3
    3b4e:	461a      	mov	r2, r3
    3b50:	693b      	ldr	r3, [r7, #16]
    3b52:	4413      	add	r3, r2
    3b54:	613b      	str	r3, [r7, #16]
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3b56:	4a1a      	ldr	r2, [pc, #104]	; (3bc0 <set_date_time+0x178>)
    3b58:	4b19      	ldr	r3, [pc, #100]	; (3bc0 <set_date_time+0x178>)
    3b5a:	69db      	ldr	r3, [r3, #28]
    3b5c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3b60:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    3b62:	4a18      	ldr	r2, [pc, #96]	; (3bc4 <set_date_time+0x17c>)
    3b64:	4b17      	ldr	r3, [pc, #92]	; (3bc4 <set_date_time+0x17c>)
    3b66:	681b      	ldr	r3, [r3, #0]
    3b68:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3b6c:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    3b6e:	4a16      	ldr	r2, [pc, #88]	; (3bc8 <set_date_time+0x180>)
    3b70:	4b15      	ldr	r3, [pc, #84]	; (3bc8 <set_date_time+0x180>)
    3b72:	685b      	ldr	r3, [r3, #4]
    3b74:	f043 0310 	orr.w	r3, r3, #16
    3b78:	6053      	str	r3, [r2, #4]
	RTC->CNTH=rtc_cntr>>16;
    3b7a:	4a13      	ldr	r2, [pc, #76]	; (3bc8 <set_date_time+0x180>)
    3b7c:	693b      	ldr	r3, [r7, #16]
    3b7e:	0c1b      	lsrs	r3, r3, #16
    3b80:	6193      	str	r3, [r2, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    3b82:	4a11      	ldr	r2, [pc, #68]	; (3bc8 <set_date_time+0x180>)
    3b84:	693b      	ldr	r3, [r7, #16]
    3b86:	b29b      	uxth	r3, r3
    3b88:	61d3      	str	r3, [r2, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    3b8a:	4a0f      	ldr	r2, [pc, #60]	; (3bc8 <set_date_time+0x180>)
    3b8c:	4b0e      	ldr	r3, [pc, #56]	; (3bc8 <set_date_time+0x180>)
    3b8e:	685b      	ldr	r3, [r3, #4]
    3b90:	f023 0310 	bic.w	r3, r3, #16
    3b94:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    3b96:	bf00      	nop
    3b98:	4b0b      	ldr	r3, [pc, #44]	; (3bc8 <set_date_time+0x180>)
    3b9a:	685b      	ldr	r3, [r3, #4]
    3b9c:	f003 0320 	and.w	r3, r3, #32
    3ba0:	2b00      	cmp	r3, #0
    3ba2:	d0f9      	beq.n	3b98 <set_date_time+0x150>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    3ba4:	4a07      	ldr	r2, [pc, #28]	; (3bc4 <set_date_time+0x17c>)
    3ba6:	4b07      	ldr	r3, [pc, #28]	; (3bc4 <set_date_time+0x17c>)
    3ba8:	681b      	ldr	r3, [r3, #0]
    3baa:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3bae:	6013      	str	r3, [r2, #0]
}
    3bb0:	bf00      	nop
    3bb2:	3718      	adds	r7, #24
    3bb4:	46bd      	mov	sp, r7
    3bb6:	bd80      	pop	{r7, pc}
    3bb8:	01e13380 	.word	0x01e13380
    3bbc:	00015180 	.word	0x00015180
    3bc0:	40021000 	.word	0x40021000
    3bc4:	40007000 	.word	0x40007000
    3bc8:	40002800 	.word	0x40002800

00003bcc <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    3bcc:	b580      	push	{r7, lr}
    3bce:	b082      	sub	sp, #8
    3bd0:	af00      	add	r7, sp, #0
    3bd2:	6078      	str	r0, [r7, #4]
    3bd4:	6039      	str	r1, [r7, #0]
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    3bd6:	4b4a      	ldr	r3, [pc, #296]	; (3d00 <rtc_init+0x134>)
    3bd8:	685b      	ldr	r3, [r3, #4]
    3bda:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3bde:	4293      	cmp	r3, r2
    3be0:	f000 8082 	beq.w	3ce8 <rtc_init+0x11c>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3be4:	4a47      	ldr	r2, [pc, #284]	; (3d04 <rtc_init+0x138>)
    3be6:	4b47      	ldr	r3, [pc, #284]	; (3d04 <rtc_init+0x138>)
    3be8:	69db      	ldr	r3, [r3, #28]
    3bea:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3bee:	61d3      	str	r3, [r2, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    3bf0:	4a45      	ldr	r2, [pc, #276]	; (3d08 <rtc_init+0x13c>)
    3bf2:	4b45      	ldr	r3, [pc, #276]	; (3d08 <rtc_init+0x13c>)
    3bf4:	681b      	ldr	r3, [r3, #0]
    3bf6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3bfa:	6013      	str	r3, [r2, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    3bfc:	4a41      	ldr	r2, [pc, #260]	; (3d04 <rtc_init+0x138>)
    3bfe:	4b41      	ldr	r3, [pc, #260]	; (3d04 <rtc_init+0x138>)
    3c00:	6a1b      	ldr	r3, [r3, #32]
    3c02:	f043 0301 	orr.w	r3, r3, #1
    3c06:	6213      	str	r3, [r2, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    3c08:	bf00      	nop
    3c0a:	4b3e      	ldr	r3, [pc, #248]	; (3d04 <rtc_init+0x138>)
    3c0c:	6a1b      	ldr	r3, [r3, #32]
    3c0e:	f003 0302 	and.w	r3, r3, #2
    3c12:	2b00      	cmp	r3, #0
    3c14:	d0f9      	beq.n	3c0a <rtc_init+0x3e>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    3c16:	4a3b      	ldr	r2, [pc, #236]	; (3d04 <rtc_init+0x138>)
    3c18:	4b3a      	ldr	r3, [pc, #232]	; (3d04 <rtc_init+0x138>)
    3c1a:	6a1b      	ldr	r3, [r3, #32]
    3c1c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    3c20:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    3c22:	bf00      	nop
    3c24:	4b39      	ldr	r3, [pc, #228]	; (3d0c <rtc_init+0x140>)
    3c26:	685b      	ldr	r3, [r3, #4]
    3c28:	f003 0308 	and.w	r3, r3, #8
    3c2c:	2b00      	cmp	r3, #0
    3c2e:	d0f9      	beq.n	3c24 <rtc_init+0x58>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    3c30:	bf00      	nop
    3c32:	4b36      	ldr	r3, [pc, #216]	; (3d0c <rtc_init+0x140>)
    3c34:	685b      	ldr	r3, [r3, #4]
    3c36:	f003 0320 	and.w	r3, r3, #32
    3c3a:	2b00      	cmp	r3, #0
    3c3c:	d0f9      	beq.n	3c32 <rtc_init+0x66>
		RTC->CRL|=RTC_CRL_CNF;
    3c3e:	4a33      	ldr	r2, [pc, #204]	; (3d0c <rtc_init+0x140>)
    3c40:	4b32      	ldr	r3, [pc, #200]	; (3d0c <rtc_init+0x140>)
    3c42:	685b      	ldr	r3, [r3, #4]
    3c44:	f043 0310 	orr.w	r3, r3, #16
    3c48:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    3c4a:	bf00      	nop
    3c4c:	4b2f      	ldr	r3, [pc, #188]	; (3d0c <rtc_init+0x140>)
    3c4e:	685b      	ldr	r3, [r3, #4]
    3c50:	f003 0320 	and.w	r3, r3, #32
    3c54:	2b00      	cmp	r3, #0
    3c56:	d0f9      	beq.n	3c4c <rtc_init+0x80>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    3c58:	492c      	ldr	r1, [pc, #176]	; (3d0c <rtc_init+0x140>)
    3c5a:	4b2c      	ldr	r3, [pc, #176]	; (3d0c <rtc_init+0x140>)
    3c5c:	681a      	ldr	r2, [r3, #0]
    3c5e:	683b      	ldr	r3, [r7, #0]
    3c60:	4313      	orrs	r3, r2
    3c62:	600b      	str	r3, [r1, #0]
		_wait_rtc_write();
    3c64:	bf00      	nop
    3c66:	4b29      	ldr	r3, [pc, #164]	; (3d0c <rtc_init+0x140>)
    3c68:	685b      	ldr	r3, [r3, #4]
    3c6a:	f003 0320 	and.w	r3, r3, #32
    3c6e:	2b00      	cmp	r3, #0
    3c70:	d0f9      	beq.n	3c66 <rtc_init+0x9a>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    3c72:	4a26      	ldr	r2, [pc, #152]	; (3d0c <rtc_init+0x140>)
    3c74:	687b      	ldr	r3, [r7, #4]
    3c76:	03db      	lsls	r3, r3, #15
    3c78:	4925      	ldr	r1, [pc, #148]	; (3d10 <rtc_init+0x144>)
    3c7a:	fba1 1303 	umull	r1, r3, r1, r3
    3c7e:	099b      	lsrs	r3, r3, #6
    3c80:	3b01      	subs	r3, #1
    3c82:	b29b      	uxth	r3, r3
    3c84:	60d3      	str	r3, [r2, #12]
		_wait_rtc_write();
    3c86:	bf00      	nop
    3c88:	4b20      	ldr	r3, [pc, #128]	; (3d0c <rtc_init+0x140>)
    3c8a:	685b      	ldr	r3, [r3, #4]
    3c8c:	f003 0320 	and.w	r3, r3, #32
    3c90:	2b00      	cmp	r3, #0
    3c92:	d0f9      	beq.n	3c88 <rtc_init+0xbc>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    3c94:	4a1d      	ldr	r2, [pc, #116]	; (3d0c <rtc_init+0x140>)
    3c96:	687b      	ldr	r3, [r7, #4]
    3c98:	03db      	lsls	r3, r3, #15
    3c9a:	491d      	ldr	r1, [pc, #116]	; (3d10 <rtc_init+0x144>)
    3c9c:	fba1 1303 	umull	r1, r3, r1, r3
    3ca0:	099b      	lsrs	r3, r3, #6
    3ca2:	3b01      	subs	r3, #1
    3ca4:	0c1b      	lsrs	r3, r3, #16
    3ca6:	f003 030f 	and.w	r3, r3, #15
    3caa:	6093      	str	r3, [r2, #8]
		_wait_rtc_write();
    3cac:	bf00      	nop
    3cae:	4b17      	ldr	r3, [pc, #92]	; (3d0c <rtc_init+0x140>)
    3cb0:	685b      	ldr	r3, [r3, #4]
    3cb2:	f003 0320 	and.w	r3, r3, #32
    3cb6:	2b00      	cmp	r3, #0
    3cb8:	d0f9      	beq.n	3cae <rtc_init+0xe2>
		BKP->DR[0]=RTC_ACCESS_CODE;
    3cba:	4b11      	ldr	r3, [pc, #68]	; (3d00 <rtc_init+0x134>)
    3cbc:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3cc0:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    3cc2:	4a12      	ldr	r2, [pc, #72]	; (3d0c <rtc_init+0x140>)
    3cc4:	4b11      	ldr	r3, [pc, #68]	; (3d0c <rtc_init+0x140>)
    3cc6:	685b      	ldr	r3, [r3, #4]
    3cc8:	f023 0310 	bic.w	r3, r3, #16
    3ccc:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    3cce:	bf00      	nop
    3cd0:	4b0e      	ldr	r3, [pc, #56]	; (3d0c <rtc_init+0x140>)
    3cd2:	685b      	ldr	r3, [r3, #4]
    3cd4:	f003 0320 	and.w	r3, r3, #32
    3cd8:	2b00      	cmp	r3, #0
    3cda:	d0f9      	beq.n	3cd0 <rtc_init+0x104>
		PWR->CR&=~PWR_CR_DBP;
    3cdc:	4a0a      	ldr	r2, [pc, #40]	; (3d08 <rtc_init+0x13c>)
    3cde:	4b0a      	ldr	r3, [pc, #40]	; (3d08 <rtc_init+0x13c>)
    3ce0:	681b      	ldr	r3, [r3, #0]
    3ce2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3ce6:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    3ce8:	210f      	movs	r1, #15
    3cea:	2003      	movs	r0, #3
    3cec:	f7ff fd4a 	bl	3784 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    3cf0:	2003      	movs	r0, #3
    3cf2:	f7ff fc8d 	bl	3610 <enable_interrupt>
}
    3cf6:	bf00      	nop
    3cf8:	3708      	adds	r7, #8
    3cfa:	46bd      	mov	sp, r7
    3cfc:	bd80      	pop	{r7, pc}
    3cfe:	bf00      	nop
    3d00:	40006c00 	.word	0x40006c00
    3d04:	40021000 	.word	0x40021000
    3d08:	40007000 	.word	0x40007000
    3d0c:	40002800 	.word	0x40002800
    3d10:	10624dd3 	.word	0x10624dd3

00003d14 <reset_backup_domain>:

// réinitialise le backup domain
inline void reset_backup_domain(){
    3d14:	b480      	push	{r7}
    3d16:	af00      	add	r7, sp, #0
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3d18:	4a0a      	ldr	r2, [pc, #40]	; (3d44 <reset_backup_domain+0x30>)
    3d1a:	4b0a      	ldr	r3, [pc, #40]	; (3d44 <reset_backup_domain+0x30>)
    3d1c:	69db      	ldr	r3, [r3, #28]
    3d1e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3d22:	61d3      	str	r3, [r2, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    3d24:	4a07      	ldr	r2, [pc, #28]	; (3d44 <reset_backup_domain+0x30>)
    3d26:	4b07      	ldr	r3, [pc, #28]	; (3d44 <reset_backup_domain+0x30>)
    3d28:	6a1b      	ldr	r3, [r3, #32]
    3d2a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    3d2e:	6213      	str	r3, [r2, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    3d30:	4a04      	ldr	r2, [pc, #16]	; (3d44 <reset_backup_domain+0x30>)
    3d32:	4b04      	ldr	r3, [pc, #16]	; (3d44 <reset_backup_domain+0x30>)
    3d34:	6a1b      	ldr	r3, [r3, #32]
    3d36:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    3d3a:	6213      	str	r3, [r2, #32]
}
    3d3c:	bf00      	nop
    3d3e:	46bd      	mov	sp, r7
    3d40:	bc80      	pop	{r7}
    3d42:	4770      	bx	lr
    3d44:	40021000 	.word	0x40021000

00003d48 <rtc_clock_trim>:

// ajustement de la fréquence du clock RTC pour améliorer
// la précision.
void rtc_clock_trim(int trim){
    3d48:	b480      	push	{r7}
    3d4a:	b083      	sub	sp, #12
    3d4c:	af00      	add	r7, sp, #0
    3d4e:	6078      	str	r0, [r7, #4]
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3d50:	4a34      	ldr	r2, [pc, #208]	; (3e24 <rtc_clock_trim+0xdc>)
    3d52:	4b34      	ldr	r3, [pc, #208]	; (3e24 <rtc_clock_trim+0xdc>)
    3d54:	69db      	ldr	r3, [r3, #28]
    3d56:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3d5a:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    3d5c:	bf00      	nop
    3d5e:	4b32      	ldr	r3, [pc, #200]	; (3e28 <rtc_clock_trim+0xe0>)
    3d60:	685b      	ldr	r3, [r3, #4]
    3d62:	f003 0308 	and.w	r3, r3, #8
    3d66:	2b00      	cmp	r3, #0
    3d68:	d0f9      	beq.n	3d5e <rtc_clock_trim+0x16>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    3d6a:	4a30      	ldr	r2, [pc, #192]	; (3e2c <rtc_clock_trim+0xe4>)
    3d6c:	4b2f      	ldr	r3, [pc, #188]	; (3e2c <rtc_clock_trim+0xe4>)
    3d6e:	681b      	ldr	r3, [r3, #0]
    3d70:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3d74:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    3d76:	4a2c      	ldr	r2, [pc, #176]	; (3e28 <rtc_clock_trim+0xe0>)
    3d78:	4b2b      	ldr	r3, [pc, #172]	; (3e28 <rtc_clock_trim+0xe0>)
    3d7a:	685b      	ldr	r3, [r3, #4]
    3d7c:	f043 0310 	orr.w	r3, r3, #16
    3d80:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    3d82:	4a2b      	ldr	r2, [pc, #172]	; (3e30 <rtc_clock_trim+0xe8>)
    3d84:	4b2a      	ldr	r3, [pc, #168]	; (3e30 <rtc_clock_trim+0xe8>)
    3d86:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3d88:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    3d8c:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    3d8e:	687b      	ldr	r3, [r7, #4]
    3d90:	2b00      	cmp	r3, #0
    3d92:	d10a      	bne.n	3daa <rtc_clock_trim+0x62>
		BKP->RTCCR=0;
    3d94:	4b26      	ldr	r3, [pc, #152]	; (3e30 <rtc_clock_trim+0xe8>)
    3d96:	2200      	movs	r2, #0
    3d98:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    3d9a:	4b23      	ldr	r3, [pc, #140]	; (3e28 <rtc_clock_trim+0xe0>)
    3d9c:	f647 72ff 	movw	r2, #32767	; 0x7fff
    3da0:	60da      	str	r2, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    3da2:	4b21      	ldr	r3, [pc, #132]	; (3e28 <rtc_clock_trim+0xe0>)
    3da4:	2200      	movs	r2, #0
    3da6:	609a      	str	r2, [r3, #8]
    3da8:	e023      	b.n	3df2 <rtc_clock_trim+0xaa>
	}else if (trim>0){// trop rapide on ralentie
    3daa:	687b      	ldr	r3, [r7, #4]
    3dac:	2b00      	cmp	r3, #0
    3dae:	dd0a      	ble.n	3dc6 <rtc_clock_trim+0x7e>
		trim&=0x7f;
    3db0:	687b      	ldr	r3, [r7, #4]
    3db2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3db6:	607b      	str	r3, [r7, #4]
		BKP->RTCCR|=trim;
    3db8:	491d      	ldr	r1, [pc, #116]	; (3e30 <rtc_clock_trim+0xe8>)
    3dba:	4b1d      	ldr	r3, [pc, #116]	; (3e30 <rtc_clock_trim+0xe8>)
    3dbc:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    3dbe:	687b      	ldr	r3, [r7, #4]
    3dc0:	4313      	orrs	r3, r2
    3dc2:	62cb      	str	r3, [r1, #44]	; 0x2c
    3dc4:	e015      	b.n	3df2 <rtc_clock_trim+0xaa>
	}else{// trop lent on accélère.
		trim=-trim;
    3dc6:	687b      	ldr	r3, [r7, #4]
    3dc8:	425b      	negs	r3, r3
    3dca:	607b      	str	r3, [r7, #4]
		if (trim>0x7f) {trim=0x7f;}
    3dcc:	687b      	ldr	r3, [r7, #4]
    3dce:	2b7f      	cmp	r3, #127	; 0x7f
    3dd0:	dd01      	ble.n	3dd6 <rtc_clock_trim+0x8e>
    3dd2:	237f      	movs	r3, #127	; 0x7f
    3dd4:	607b      	str	r3, [r7, #4]
		BKP->RTCCR=0;
    3dd6:	4b16      	ldr	r3, [pc, #88]	; (3e30 <rtc_clock_trim+0xe8>)
    3dd8:	2200      	movs	r2, #0
    3dda:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    3ddc:	4a12      	ldr	r2, [pc, #72]	; (3e28 <rtc_clock_trim+0xe0>)
    3dde:	687b      	ldr	r3, [r7, #4]
    3de0:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    3de4:	33ff      	adds	r3, #255	; 0xff
    3de6:	f3c3 030e 	ubfx	r3, r3, #0, #15
    3dea:	60d3      	str	r3, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    3dec:	4b0e      	ldr	r3, [pc, #56]	; (3e28 <rtc_clock_trim+0xe0>)
    3dee:	2200      	movs	r2, #0
    3df0:	609a      	str	r2, [r3, #8]
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    3df2:	4a0d      	ldr	r2, [pc, #52]	; (3e28 <rtc_clock_trim+0xe0>)
    3df4:	4b0c      	ldr	r3, [pc, #48]	; (3e28 <rtc_clock_trim+0xe0>)
    3df6:	685b      	ldr	r3, [r3, #4]
    3df8:	f023 0310 	bic.w	r3, r3, #16
    3dfc:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    3dfe:	bf00      	nop
    3e00:	4b09      	ldr	r3, [pc, #36]	; (3e28 <rtc_clock_trim+0xe0>)
    3e02:	685b      	ldr	r3, [r3, #4]
    3e04:	f003 0320 	and.w	r3, r3, #32
    3e08:	2b00      	cmp	r3, #0
    3e0a:	d0f9      	beq.n	3e00 <rtc_clock_trim+0xb8>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    3e0c:	4a07      	ldr	r2, [pc, #28]	; (3e2c <rtc_clock_trim+0xe4>)
    3e0e:	4b07      	ldr	r3, [pc, #28]	; (3e2c <rtc_clock_trim+0xe4>)
    3e10:	681b      	ldr	r3, [r3, #0]
    3e12:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3e16:	6013      	str	r3, [r2, #0]
}
    3e18:	bf00      	nop
    3e1a:	370c      	adds	r7, #12
    3e1c:	46bd      	mov	sp, r7
    3e1e:	bc80      	pop	{r7}
    3e20:	4770      	bx	lr
    3e22:	bf00      	nop
    3e24:	40021000 	.word	0x40021000
    3e28:	40002800 	.word	0x40002800
    3e2c:	40007000 	.word	0x40007000
    3e30:	40006c00 	.word	0x40006c00

00003e34 <rtc_set_alarm>:

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    3e34:	b480      	push	{r7}
    3e36:	b083      	sub	sp, #12
    3e38:	af00      	add	r7, sp, #0
    3e3a:	6078      	str	r0, [r7, #4]
}
    3e3c:	bf00      	nop
    3e3e:	370c      	adds	r7, #12
    3e40:	46bd      	mov	sp, r7
    3e42:	bc80      	pop	{r7}
    3e44:	4770      	bx	lr

00003e46 <str_to_date>:

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    3e46:	b580      	push	{r7, lr}
    3e48:	b084      	sub	sp, #16
    3e4a:	af00      	add	r7, sp, #0
    3e4c:	6078      	str	r0, [r7, #4]
    3e4e:	6039      	str	r1, [r7, #0]
	int i,n;
	
	i=0;
    3e50:	2300      	movs	r3, #0
    3e52:	60fb      	str	r3, [r7, #12]
	n=0;
    3e54:	2300      	movs	r3, #0
    3e56:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3e58:	e00f      	b.n	3e7a <str_to_date+0x34>
		n=n*10+date[i++]-'0';
    3e5a:	68ba      	ldr	r2, [r7, #8]
    3e5c:	4613      	mov	r3, r2
    3e5e:	009b      	lsls	r3, r3, #2
    3e60:	4413      	add	r3, r2
    3e62:	005b      	lsls	r3, r3, #1
    3e64:	4619      	mov	r1, r3
    3e66:	68fb      	ldr	r3, [r7, #12]
    3e68:	1c5a      	adds	r2, r3, #1
    3e6a:	60fa      	str	r2, [r7, #12]
    3e6c:	461a      	mov	r2, r3
    3e6e:	687b      	ldr	r3, [r7, #4]
    3e70:	4413      	add	r3, r2
    3e72:	781b      	ldrb	r3, [r3, #0]
    3e74:	440b      	add	r3, r1
    3e76:	3b30      	subs	r3, #48	; 0x30
    3e78:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3e7a:	68fb      	ldr	r3, [r7, #12]
    3e7c:	687a      	ldr	r2, [r7, #4]
    3e7e:	4413      	add	r3, r2
    3e80:	781b      	ldrb	r3, [r3, #0]
    3e82:	4618      	mov	r0, r3
    3e84:	f7fe f88d 	bl	1fa2 <digit>
    3e88:	4603      	mov	r3, r0
    3e8a:	2b00      	cmp	r3, #0
    3e8c:	d1e5      	bne.n	3e5a <str_to_date+0x14>
	}
	if ((i<4) || date[i]!='/') return 0;
    3e8e:	68fb      	ldr	r3, [r7, #12]
    3e90:	2b03      	cmp	r3, #3
    3e92:	dd05      	ble.n	3ea0 <str_to_date+0x5a>
    3e94:	68fb      	ldr	r3, [r7, #12]
    3e96:	687a      	ldr	r2, [r7, #4]
    3e98:	4413      	add	r3, r2
    3e9a:	781b      	ldrb	r3, [r3, #0]
    3e9c:	2b2f      	cmp	r3, #47	; 0x2f
    3e9e:	d001      	beq.n	3ea4 <str_to_date+0x5e>
    3ea0:	2300      	movs	r3, #0
    3ea2:	e068      	b.n	3f76 <str_to_date+0x130>
	dt->year=n;
    3ea4:	68bb      	ldr	r3, [r7, #8]
    3ea6:	b29a      	uxth	r2, r3
    3ea8:	683b      	ldr	r3, [r7, #0]
    3eaa:	811a      	strh	r2, [r3, #8]
	i++;
    3eac:	68fb      	ldr	r3, [r7, #12]
    3eae:	3301      	adds	r3, #1
    3eb0:	60fb      	str	r3, [r7, #12]
	n=0;
    3eb2:	2300      	movs	r3, #0
    3eb4:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3eb6:	e00f      	b.n	3ed8 <str_to_date+0x92>
		n=n*10+date[i++]-'0';
    3eb8:	68ba      	ldr	r2, [r7, #8]
    3eba:	4613      	mov	r3, r2
    3ebc:	009b      	lsls	r3, r3, #2
    3ebe:	4413      	add	r3, r2
    3ec0:	005b      	lsls	r3, r3, #1
    3ec2:	4619      	mov	r1, r3
    3ec4:	68fb      	ldr	r3, [r7, #12]
    3ec6:	1c5a      	adds	r2, r3, #1
    3ec8:	60fa      	str	r2, [r7, #12]
    3eca:	461a      	mov	r2, r3
    3ecc:	687b      	ldr	r3, [r7, #4]
    3ece:	4413      	add	r3, r2
    3ed0:	781b      	ldrb	r3, [r3, #0]
    3ed2:	440b      	add	r3, r1
    3ed4:	3b30      	subs	r3, #48	; 0x30
    3ed6:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3ed8:	68fb      	ldr	r3, [r7, #12]
    3eda:	687a      	ldr	r2, [r7, #4]
    3edc:	4413      	add	r3, r2
    3ede:	781b      	ldrb	r3, [r3, #0]
    3ee0:	4618      	mov	r0, r3
    3ee2:	f7fe f85e 	bl	1fa2 <digit>
    3ee6:	4603      	mov	r3, r0
    3ee8:	2b00      	cmp	r3, #0
    3eea:	d1e5      	bne.n	3eb8 <str_to_date+0x72>
	}
	if ((i<7) || date[i]!='/') return 0;
    3eec:	68fb      	ldr	r3, [r7, #12]
    3eee:	2b06      	cmp	r3, #6
    3ef0:	dd05      	ble.n	3efe <str_to_date+0xb8>
    3ef2:	68fb      	ldr	r3, [r7, #12]
    3ef4:	687a      	ldr	r2, [r7, #4]
    3ef6:	4413      	add	r3, r2
    3ef8:	781b      	ldrb	r3, [r3, #0]
    3efa:	2b2f      	cmp	r3, #47	; 0x2f
    3efc:	d001      	beq.n	3f02 <str_to_date+0xbc>
    3efe:	2300      	movs	r3, #0
    3f00:	e039      	b.n	3f76 <str_to_date+0x130>
	dt->month=n;
    3f02:	68bb      	ldr	r3, [r7, #8]
    3f04:	b2db      	uxtb	r3, r3
    3f06:	f003 030f 	and.w	r3, r3, #15
    3f0a:	b2d9      	uxtb	r1, r3
    3f0c:	683a      	ldr	r2, [r7, #0]
    3f0e:	8853      	ldrh	r3, [r2, #2]
    3f10:	f361 1389 	bfi	r3, r1, #6, #4
    3f14:	8053      	strh	r3, [r2, #2]
	n=0;
    3f16:	2300      	movs	r3, #0
    3f18:	60bb      	str	r3, [r7, #8]
	i++;
    3f1a:	68fb      	ldr	r3, [r7, #12]
    3f1c:	3301      	adds	r3, #1
    3f1e:	60fb      	str	r3, [r7, #12]
	while (digit(date[i])){
    3f20:	e00f      	b.n	3f42 <str_to_date+0xfc>
		n=n*10+date[i++]-'0';
    3f22:	68ba      	ldr	r2, [r7, #8]
    3f24:	4613      	mov	r3, r2
    3f26:	009b      	lsls	r3, r3, #2
    3f28:	4413      	add	r3, r2
    3f2a:	005b      	lsls	r3, r3, #1
    3f2c:	4619      	mov	r1, r3
    3f2e:	68fb      	ldr	r3, [r7, #12]
    3f30:	1c5a      	adds	r2, r3, #1
    3f32:	60fa      	str	r2, [r7, #12]
    3f34:	461a      	mov	r2, r3
    3f36:	687b      	ldr	r3, [r7, #4]
    3f38:	4413      	add	r3, r2
    3f3a:	781b      	ldrb	r3, [r3, #0]
    3f3c:	440b      	add	r3, r1
    3f3e:	3b30      	subs	r3, #48	; 0x30
    3f40:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3f42:	68fb      	ldr	r3, [r7, #12]
    3f44:	687a      	ldr	r2, [r7, #4]
    3f46:	4413      	add	r3, r2
    3f48:	781b      	ldrb	r3, [r3, #0]
    3f4a:	4618      	mov	r0, r3
    3f4c:	f7fe f829 	bl	1fa2 <digit>
    3f50:	4603      	mov	r3, r0
    3f52:	2b00      	cmp	r3, #0
    3f54:	d1e5      	bne.n	3f22 <str_to_date+0xdc>
	}
	if (i<10) return 0;
    3f56:	68fb      	ldr	r3, [r7, #12]
    3f58:	2b09      	cmp	r3, #9
    3f5a:	dc01      	bgt.n	3f60 <str_to_date+0x11a>
    3f5c:	2300      	movs	r3, #0
    3f5e:	e00a      	b.n	3f76 <str_to_date+0x130>
	dt->day=n;
    3f60:	68bb      	ldr	r3, [r7, #8]
    3f62:	b2db      	uxtb	r3, r3
    3f64:	f003 031f 	and.w	r3, r3, #31
    3f68:	b2d9      	uxtb	r1, r3
    3f6a:	683a      	ldr	r2, [r7, #0]
    3f6c:	7893      	ldrb	r3, [r2, #2]
    3f6e:	f361 0345 	bfi	r3, r1, #1, #5
    3f72:	7093      	strb	r3, [r2, #2]
	return 1;
    3f74:	2301      	movs	r3, #1
}
    3f76:	4618      	mov	r0, r3
    3f78:	3710      	adds	r7, #16
    3f7a:	46bd      	mov	sp, r7
    3f7c:	bd80      	pop	{r7, pc}

00003f7e <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    3f7e:	b580      	push	{r7, lr}
    3f80:	b084      	sub	sp, #16
    3f82:	af00      	add	r7, sp, #0
    3f84:	6078      	str	r0, [r7, #4]
    3f86:	6039      	str	r1, [r7, #0]
	int i;
	unsigned char n;
	
	i=0;
    3f88:	2300      	movs	r3, #0
    3f8a:	60fb      	str	r3, [r7, #12]
	n=0;
    3f8c:	2300      	movs	r3, #0
    3f8e:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3f90:	e010      	b.n	3fb4 <str_to_time+0x36>
		n=n*10+time[i++]-'0';
    3f92:	7afb      	ldrb	r3, [r7, #11]
    3f94:	461a      	mov	r2, r3
    3f96:	0092      	lsls	r2, r2, #2
    3f98:	4413      	add	r3, r2
    3f9a:	005b      	lsls	r3, r3, #1
    3f9c:	b2da      	uxtb	r2, r3
    3f9e:	68fb      	ldr	r3, [r7, #12]
    3fa0:	1c59      	adds	r1, r3, #1
    3fa2:	60f9      	str	r1, [r7, #12]
    3fa4:	4619      	mov	r1, r3
    3fa6:	687b      	ldr	r3, [r7, #4]
    3fa8:	440b      	add	r3, r1
    3faa:	781b      	ldrb	r3, [r3, #0]
    3fac:	4413      	add	r3, r2
    3fae:	b2db      	uxtb	r3, r3
    3fb0:	3b30      	subs	r3, #48	; 0x30
    3fb2:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3fb4:	68fb      	ldr	r3, [r7, #12]
    3fb6:	687a      	ldr	r2, [r7, #4]
    3fb8:	4413      	add	r3, r2
    3fba:	781b      	ldrb	r3, [r3, #0]
    3fbc:	4618      	mov	r0, r3
    3fbe:	f7fd fff0 	bl	1fa2 <digit>
    3fc2:	4603      	mov	r3, r0
    3fc4:	2b00      	cmp	r3, #0
    3fc6:	d1e4      	bne.n	3f92 <str_to_time+0x14>
	}
	if ((n>23) || time[i]!=':') return 0;
    3fc8:	7afb      	ldrb	r3, [r7, #11]
    3fca:	2b17      	cmp	r3, #23
    3fcc:	d805      	bhi.n	3fda <str_to_time+0x5c>
    3fce:	68fb      	ldr	r3, [r7, #12]
    3fd0:	687a      	ldr	r2, [r7, #4]
    3fd2:	4413      	add	r3, r2
    3fd4:	781b      	ldrb	r3, [r3, #0]
    3fd6:	2b3a      	cmp	r3, #58	; 0x3a
    3fd8:	d001      	beq.n	3fde <str_to_time+0x60>
    3fda:	2300      	movs	r3, #0
    3fdc:	e06d      	b.n	40ba <str_to_time+0x13c>
	dt->hour=n;
    3fde:	7afb      	ldrb	r3, [r7, #11]
    3fe0:	f003 031f 	and.w	r3, r3, #31
    3fe4:	b2d9      	uxtb	r1, r3
    3fe6:	683a      	ldr	r2, [r7, #0]
    3fe8:	6813      	ldr	r3, [r2, #0]
    3fea:	f361 3310 	bfi	r3, r1, #12, #5
    3fee:	6013      	str	r3, [r2, #0]
	i++;
    3ff0:	68fb      	ldr	r3, [r7, #12]
    3ff2:	3301      	adds	r3, #1
    3ff4:	60fb      	str	r3, [r7, #12]
	n=0;
    3ff6:	2300      	movs	r3, #0
    3ff8:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3ffa:	e010      	b.n	401e <str_to_time+0xa0>
		n=n*10+time[i++]-'0';
    3ffc:	7afb      	ldrb	r3, [r7, #11]
    3ffe:	461a      	mov	r2, r3
    4000:	0092      	lsls	r2, r2, #2
    4002:	4413      	add	r3, r2
    4004:	005b      	lsls	r3, r3, #1
    4006:	b2da      	uxtb	r2, r3
    4008:	68fb      	ldr	r3, [r7, #12]
    400a:	1c59      	adds	r1, r3, #1
    400c:	60f9      	str	r1, [r7, #12]
    400e:	4619      	mov	r1, r3
    4010:	687b      	ldr	r3, [r7, #4]
    4012:	440b      	add	r3, r1
    4014:	781b      	ldrb	r3, [r3, #0]
    4016:	4413      	add	r3, r2
    4018:	b2db      	uxtb	r3, r3
    401a:	3b30      	subs	r3, #48	; 0x30
    401c:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    401e:	68fb      	ldr	r3, [r7, #12]
    4020:	687a      	ldr	r2, [r7, #4]
    4022:	4413      	add	r3, r2
    4024:	781b      	ldrb	r3, [r3, #0]
    4026:	4618      	mov	r0, r3
    4028:	f7fd ffbb 	bl	1fa2 <digit>
    402c:	4603      	mov	r3, r0
    402e:	2b00      	cmp	r3, #0
    4030:	d1e4      	bne.n	3ffc <str_to_time+0x7e>
	}
	if ((n>59) || time[i]!=':') return 0;
    4032:	7afb      	ldrb	r3, [r7, #11]
    4034:	2b3b      	cmp	r3, #59	; 0x3b
    4036:	d805      	bhi.n	4044 <str_to_time+0xc6>
    4038:	68fb      	ldr	r3, [r7, #12]
    403a:	687a      	ldr	r2, [r7, #4]
    403c:	4413      	add	r3, r2
    403e:	781b      	ldrb	r3, [r3, #0]
    4040:	2b3a      	cmp	r3, #58	; 0x3a
    4042:	d001      	beq.n	4048 <str_to_time+0xca>
    4044:	2300      	movs	r3, #0
    4046:	e038      	b.n	40ba <str_to_time+0x13c>
	dt->minute=n;
    4048:	7afb      	ldrb	r3, [r7, #11]
    404a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    404e:	b2d9      	uxtb	r1, r3
    4050:	683a      	ldr	r2, [r7, #0]
    4052:	8813      	ldrh	r3, [r2, #0]
    4054:	f361 138b 	bfi	r3, r1, #6, #6
    4058:	8013      	strh	r3, [r2, #0]
	n=0;
    405a:	2300      	movs	r3, #0
    405c:	72fb      	strb	r3, [r7, #11]
	i++;
    405e:	68fb      	ldr	r3, [r7, #12]
    4060:	3301      	adds	r3, #1
    4062:	60fb      	str	r3, [r7, #12]
	while (digit(time[i])){
    4064:	e010      	b.n	4088 <str_to_time+0x10a>
		n=n*10+time[i++]-'0';
    4066:	7afb      	ldrb	r3, [r7, #11]
    4068:	461a      	mov	r2, r3
    406a:	0092      	lsls	r2, r2, #2
    406c:	4413      	add	r3, r2
    406e:	005b      	lsls	r3, r3, #1
    4070:	b2da      	uxtb	r2, r3
    4072:	68fb      	ldr	r3, [r7, #12]
    4074:	1c59      	adds	r1, r3, #1
    4076:	60f9      	str	r1, [r7, #12]
    4078:	4619      	mov	r1, r3
    407a:	687b      	ldr	r3, [r7, #4]
    407c:	440b      	add	r3, r1
    407e:	781b      	ldrb	r3, [r3, #0]
    4080:	4413      	add	r3, r2
    4082:	b2db      	uxtb	r3, r3
    4084:	3b30      	subs	r3, #48	; 0x30
    4086:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    4088:	68fb      	ldr	r3, [r7, #12]
    408a:	687a      	ldr	r2, [r7, #4]
    408c:	4413      	add	r3, r2
    408e:	781b      	ldrb	r3, [r3, #0]
    4090:	4618      	mov	r0, r3
    4092:	f7fd ff86 	bl	1fa2 <digit>
    4096:	4603      	mov	r3, r0
    4098:	2b00      	cmp	r3, #0
    409a:	d1e4      	bne.n	4066 <str_to_time+0xe8>
	}
	if (n>59) return 0;
    409c:	7afb      	ldrb	r3, [r7, #11]
    409e:	2b3b      	cmp	r3, #59	; 0x3b
    40a0:	d901      	bls.n	40a6 <str_to_time+0x128>
    40a2:	2300      	movs	r3, #0
    40a4:	e009      	b.n	40ba <str_to_time+0x13c>
	dt->second=n;
    40a6:	7afb      	ldrb	r3, [r7, #11]
    40a8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    40ac:	b2d9      	uxtb	r1, r3
    40ae:	683a      	ldr	r2, [r7, #0]
    40b0:	7813      	ldrb	r3, [r2, #0]
    40b2:	f361 0305 	bfi	r3, r1, #0, #6
    40b6:	7013      	strb	r3, [r2, #0]
	return 1;
    40b8:	2301      	movs	r3, #1
}
    40ba:	4618      	mov	r0, r3
    40bc:	3710      	adds	r7, #16
    40be:	46bd      	mov	sp, r7
    40c0:	bd80      	pop	{r7, pc}

000040c2 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    40c2:	b480      	push	{r7}
    40c4:	b085      	sub	sp, #20
    40c6:	af00      	add	r7, sp, #0
    40c8:	6078      	str	r0, [r7, #4]
    40ca:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    40cc:	2300      	movs	r3, #0
    40ce:	60fb      	str	r3, [r7, #12]
	
	n=dt->year;
    40d0:	687b      	ldr	r3, [r7, #4]
    40d2:	891b      	ldrh	r3, [r3, #8]
    40d4:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/1000+'0';
    40d6:	68fb      	ldr	r3, [r7, #12]
    40d8:	1c5a      	adds	r2, r3, #1
    40da:	60fa      	str	r2, [r7, #12]
    40dc:	461a      	mov	r2, r3
    40de:	683b      	ldr	r3, [r7, #0]
    40e0:	4413      	add	r3, r2
    40e2:	68ba      	ldr	r2, [r7, #8]
    40e4:	495d      	ldr	r1, [pc, #372]	; (425c <date_str+0x19a>)
    40e6:	fba1 1202 	umull	r1, r2, r1, r2
    40ea:	0992      	lsrs	r2, r2, #6
    40ec:	b2d2      	uxtb	r2, r2
    40ee:	3230      	adds	r2, #48	; 0x30
    40f0:	b2d2      	uxtb	r2, r2
    40f2:	701a      	strb	r2, [r3, #0]
	n%=1000;
    40f4:	68bb      	ldr	r3, [r7, #8]
    40f6:	4a59      	ldr	r2, [pc, #356]	; (425c <date_str+0x19a>)
    40f8:	fba2 1203 	umull	r1, r2, r2, r3
    40fc:	0992      	lsrs	r2, r2, #6
    40fe:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    4102:	fb01 f202 	mul.w	r2, r1, r2
    4106:	1a9b      	subs	r3, r3, r2
    4108:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/100+'0';
    410a:	68fb      	ldr	r3, [r7, #12]
    410c:	1c5a      	adds	r2, r3, #1
    410e:	60fa      	str	r2, [r7, #12]
    4110:	461a      	mov	r2, r3
    4112:	683b      	ldr	r3, [r7, #0]
    4114:	4413      	add	r3, r2
    4116:	68ba      	ldr	r2, [r7, #8]
    4118:	4951      	ldr	r1, [pc, #324]	; (4260 <date_str+0x19e>)
    411a:	fba1 1202 	umull	r1, r2, r1, r2
    411e:	0952      	lsrs	r2, r2, #5
    4120:	b2d2      	uxtb	r2, r2
    4122:	3230      	adds	r2, #48	; 0x30
    4124:	b2d2      	uxtb	r2, r2
    4126:	701a      	strb	r2, [r3, #0]
	n%=100;
    4128:	68bb      	ldr	r3, [r7, #8]
    412a:	4a4d      	ldr	r2, [pc, #308]	; (4260 <date_str+0x19e>)
    412c:	fba2 1203 	umull	r1, r2, r2, r3
    4130:	0952      	lsrs	r2, r2, #5
    4132:	2164      	movs	r1, #100	; 0x64
    4134:	fb01 f202 	mul.w	r2, r1, r2
    4138:	1a9b      	subs	r3, r3, r2
    413a:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    413c:	68fb      	ldr	r3, [r7, #12]
    413e:	1c5a      	adds	r2, r3, #1
    4140:	60fa      	str	r2, [r7, #12]
    4142:	461a      	mov	r2, r3
    4144:	683b      	ldr	r3, [r7, #0]
    4146:	4413      	add	r3, r2
    4148:	68ba      	ldr	r2, [r7, #8]
    414a:	4946      	ldr	r1, [pc, #280]	; (4264 <date_str+0x1a2>)
    414c:	fba1 1202 	umull	r1, r2, r1, r2
    4150:	08d2      	lsrs	r2, r2, #3
    4152:	b2d2      	uxtb	r2, r2
    4154:	3230      	adds	r2, #48	; 0x30
    4156:	b2d2      	uxtb	r2, r2
    4158:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    415a:	68fb      	ldr	r3, [r7, #12]
    415c:	1c5a      	adds	r2, r3, #1
    415e:	60fa      	str	r2, [r7, #12]
    4160:	461a      	mov	r2, r3
    4162:	683b      	ldr	r3, [r7, #0]
    4164:	1898      	adds	r0, r3, r2
    4166:	68b9      	ldr	r1, [r7, #8]
    4168:	4b3e      	ldr	r3, [pc, #248]	; (4264 <date_str+0x1a2>)
    416a:	fba3 2301 	umull	r2, r3, r3, r1
    416e:	08da      	lsrs	r2, r3, #3
    4170:	4613      	mov	r3, r2
    4172:	009b      	lsls	r3, r3, #2
    4174:	4413      	add	r3, r2
    4176:	005b      	lsls	r3, r3, #1
    4178:	1aca      	subs	r2, r1, r3
    417a:	b2d3      	uxtb	r3, r2
    417c:	3330      	adds	r3, #48	; 0x30
    417e:	b2db      	uxtb	r3, r3
    4180:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    4182:	68fb      	ldr	r3, [r7, #12]
    4184:	1c5a      	adds	r2, r3, #1
    4186:	60fa      	str	r2, [r7, #12]
    4188:	461a      	mov	r2, r3
    418a:	683b      	ldr	r3, [r7, #0]
    418c:	4413      	add	r3, r2
    418e:	222f      	movs	r2, #47	; 0x2f
    4190:	701a      	strb	r2, [r3, #0]
	n=dt->month;
    4192:	687b      	ldr	r3, [r7, #4]
    4194:	885b      	ldrh	r3, [r3, #2]
    4196:	f3c3 1383 	ubfx	r3, r3, #6, #4
    419a:	b2db      	uxtb	r3, r3
    419c:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    419e:	68fb      	ldr	r3, [r7, #12]
    41a0:	1c5a      	adds	r2, r3, #1
    41a2:	60fa      	str	r2, [r7, #12]
    41a4:	461a      	mov	r2, r3
    41a6:	683b      	ldr	r3, [r7, #0]
    41a8:	4413      	add	r3, r2
    41aa:	68ba      	ldr	r2, [r7, #8]
    41ac:	492d      	ldr	r1, [pc, #180]	; (4264 <date_str+0x1a2>)
    41ae:	fba1 1202 	umull	r1, r2, r1, r2
    41b2:	08d2      	lsrs	r2, r2, #3
    41b4:	b2d2      	uxtb	r2, r2
    41b6:	3230      	adds	r2, #48	; 0x30
    41b8:	b2d2      	uxtb	r2, r2
    41ba:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    41bc:	68fb      	ldr	r3, [r7, #12]
    41be:	1c5a      	adds	r2, r3, #1
    41c0:	60fa      	str	r2, [r7, #12]
    41c2:	461a      	mov	r2, r3
    41c4:	683b      	ldr	r3, [r7, #0]
    41c6:	1898      	adds	r0, r3, r2
    41c8:	68b9      	ldr	r1, [r7, #8]
    41ca:	4b26      	ldr	r3, [pc, #152]	; (4264 <date_str+0x1a2>)
    41cc:	fba3 2301 	umull	r2, r3, r3, r1
    41d0:	08da      	lsrs	r2, r3, #3
    41d2:	4613      	mov	r3, r2
    41d4:	009b      	lsls	r3, r3, #2
    41d6:	4413      	add	r3, r2
    41d8:	005b      	lsls	r3, r3, #1
    41da:	1aca      	subs	r2, r1, r3
    41dc:	b2d3      	uxtb	r3, r2
    41de:	3330      	adds	r3, #48	; 0x30
    41e0:	b2db      	uxtb	r3, r3
    41e2:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    41e4:	68fb      	ldr	r3, [r7, #12]
    41e6:	1c5a      	adds	r2, r3, #1
    41e8:	60fa      	str	r2, [r7, #12]
    41ea:	461a      	mov	r2, r3
    41ec:	683b      	ldr	r3, [r7, #0]
    41ee:	4413      	add	r3, r2
    41f0:	222f      	movs	r2, #47	; 0x2f
    41f2:	701a      	strb	r2, [r3, #0]
	n=dt->day;
    41f4:	687b      	ldr	r3, [r7, #4]
    41f6:	789b      	ldrb	r3, [r3, #2]
    41f8:	f3c3 0344 	ubfx	r3, r3, #1, #5
    41fc:	b2db      	uxtb	r3, r3
    41fe:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    4200:	68fb      	ldr	r3, [r7, #12]
    4202:	1c5a      	adds	r2, r3, #1
    4204:	60fa      	str	r2, [r7, #12]
    4206:	461a      	mov	r2, r3
    4208:	683b      	ldr	r3, [r7, #0]
    420a:	4413      	add	r3, r2
    420c:	68ba      	ldr	r2, [r7, #8]
    420e:	4915      	ldr	r1, [pc, #84]	; (4264 <date_str+0x1a2>)
    4210:	fba1 1202 	umull	r1, r2, r1, r2
    4214:	08d2      	lsrs	r2, r2, #3
    4216:	b2d2      	uxtb	r2, r2
    4218:	3230      	adds	r2, #48	; 0x30
    421a:	b2d2      	uxtb	r2, r2
    421c:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    421e:	68fb      	ldr	r3, [r7, #12]
    4220:	1c5a      	adds	r2, r3, #1
    4222:	60fa      	str	r2, [r7, #12]
    4224:	461a      	mov	r2, r3
    4226:	683b      	ldr	r3, [r7, #0]
    4228:	1898      	adds	r0, r3, r2
    422a:	68b9      	ldr	r1, [r7, #8]
    422c:	4b0d      	ldr	r3, [pc, #52]	; (4264 <date_str+0x1a2>)
    422e:	fba3 2301 	umull	r2, r3, r3, r1
    4232:	08da      	lsrs	r2, r3, #3
    4234:	4613      	mov	r3, r2
    4236:	009b      	lsls	r3, r3, #2
    4238:	4413      	add	r3, r2
    423a:	005b      	lsls	r3, r3, #1
    423c:	1aca      	subs	r2, r1, r3
    423e:	b2d3      	uxtb	r3, r2
    4240:	3330      	adds	r3, #48	; 0x30
    4242:	b2db      	uxtb	r3, r3
    4244:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    4246:	68fb      	ldr	r3, [r7, #12]
    4248:	683a      	ldr	r2, [r7, #0]
    424a:	4413      	add	r3, r2
    424c:	2200      	movs	r2, #0
    424e:	701a      	strb	r2, [r3, #0]

}
    4250:	bf00      	nop
    4252:	3714      	adds	r7, #20
    4254:	46bd      	mov	sp, r7
    4256:	bc80      	pop	{r7}
    4258:	4770      	bx	lr
    425a:	bf00      	nop
    425c:	10624dd3 	.word	0x10624dd3
    4260:	51eb851f 	.word	0x51eb851f
    4264:	cccccccd 	.word	0xcccccccd

00004268 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    4268:	b480      	push	{r7}
    426a:	b085      	sub	sp, #20
    426c:	af00      	add	r7, sp, #0
    426e:	6078      	str	r0, [r7, #4]
    4270:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    4272:	2300      	movs	r3, #0
    4274:	60fb      	str	r3, [r7, #12]
	
	n=dt->hour;
    4276:	687b      	ldr	r3, [r7, #4]
    4278:	681b      	ldr	r3, [r3, #0]
    427a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    427e:	b2db      	uxtb	r3, r3
    4280:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    4282:	68fb      	ldr	r3, [r7, #12]
    4284:	1c5a      	adds	r2, r3, #1
    4286:	60fa      	str	r2, [r7, #12]
    4288:	461a      	mov	r2, r3
    428a:	683b      	ldr	r3, [r7, #0]
    428c:	4413      	add	r3, r2
    428e:	68ba      	ldr	r2, [r7, #8]
    4290:	4943      	ldr	r1, [pc, #268]	; (43a0 <time_str+0x138>)
    4292:	fba1 1202 	umull	r1, r2, r1, r2
    4296:	08d2      	lsrs	r2, r2, #3
    4298:	b2d2      	uxtb	r2, r2
    429a:	3230      	adds	r2, #48	; 0x30
    429c:	b2d2      	uxtb	r2, r2
    429e:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    42a0:	68fb      	ldr	r3, [r7, #12]
    42a2:	1c5a      	adds	r2, r3, #1
    42a4:	60fa      	str	r2, [r7, #12]
    42a6:	461a      	mov	r2, r3
    42a8:	683b      	ldr	r3, [r7, #0]
    42aa:	1898      	adds	r0, r3, r2
    42ac:	68b9      	ldr	r1, [r7, #8]
    42ae:	4b3c      	ldr	r3, [pc, #240]	; (43a0 <time_str+0x138>)
    42b0:	fba3 2301 	umull	r2, r3, r3, r1
    42b4:	08da      	lsrs	r2, r3, #3
    42b6:	4613      	mov	r3, r2
    42b8:	009b      	lsls	r3, r3, #2
    42ba:	4413      	add	r3, r2
    42bc:	005b      	lsls	r3, r3, #1
    42be:	1aca      	subs	r2, r1, r3
    42c0:	b2d3      	uxtb	r3, r2
    42c2:	3330      	adds	r3, #48	; 0x30
    42c4:	b2db      	uxtb	r3, r3
    42c6:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    42c8:	68fb      	ldr	r3, [r7, #12]
    42ca:	1c5a      	adds	r2, r3, #1
    42cc:	60fa      	str	r2, [r7, #12]
    42ce:	461a      	mov	r2, r3
    42d0:	683b      	ldr	r3, [r7, #0]
    42d2:	4413      	add	r3, r2
    42d4:	223a      	movs	r2, #58	; 0x3a
    42d6:	701a      	strb	r2, [r3, #0]
	n=dt->minute;
    42d8:	687b      	ldr	r3, [r7, #4]
    42da:	881b      	ldrh	r3, [r3, #0]
    42dc:	f3c3 1385 	ubfx	r3, r3, #6, #6
    42e0:	b2db      	uxtb	r3, r3
    42e2:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    42e4:	68fb      	ldr	r3, [r7, #12]
    42e6:	1c5a      	adds	r2, r3, #1
    42e8:	60fa      	str	r2, [r7, #12]
    42ea:	461a      	mov	r2, r3
    42ec:	683b      	ldr	r3, [r7, #0]
    42ee:	4413      	add	r3, r2
    42f0:	68ba      	ldr	r2, [r7, #8]
    42f2:	492b      	ldr	r1, [pc, #172]	; (43a0 <time_str+0x138>)
    42f4:	fba1 1202 	umull	r1, r2, r1, r2
    42f8:	08d2      	lsrs	r2, r2, #3
    42fa:	b2d2      	uxtb	r2, r2
    42fc:	3230      	adds	r2, #48	; 0x30
    42fe:	b2d2      	uxtb	r2, r2
    4300:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    4302:	68fb      	ldr	r3, [r7, #12]
    4304:	1c5a      	adds	r2, r3, #1
    4306:	60fa      	str	r2, [r7, #12]
    4308:	461a      	mov	r2, r3
    430a:	683b      	ldr	r3, [r7, #0]
    430c:	1898      	adds	r0, r3, r2
    430e:	68b9      	ldr	r1, [r7, #8]
    4310:	4b23      	ldr	r3, [pc, #140]	; (43a0 <time_str+0x138>)
    4312:	fba3 2301 	umull	r2, r3, r3, r1
    4316:	08da      	lsrs	r2, r3, #3
    4318:	4613      	mov	r3, r2
    431a:	009b      	lsls	r3, r3, #2
    431c:	4413      	add	r3, r2
    431e:	005b      	lsls	r3, r3, #1
    4320:	1aca      	subs	r2, r1, r3
    4322:	b2d3      	uxtb	r3, r2
    4324:	3330      	adds	r3, #48	; 0x30
    4326:	b2db      	uxtb	r3, r3
    4328:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    432a:	68fb      	ldr	r3, [r7, #12]
    432c:	1c5a      	adds	r2, r3, #1
    432e:	60fa      	str	r2, [r7, #12]
    4330:	461a      	mov	r2, r3
    4332:	683b      	ldr	r3, [r7, #0]
    4334:	4413      	add	r3, r2
    4336:	223a      	movs	r2, #58	; 0x3a
    4338:	701a      	strb	r2, [r3, #0]
	n=dt->second;
    433a:	687b      	ldr	r3, [r7, #4]
    433c:	781b      	ldrb	r3, [r3, #0]
    433e:	f3c3 0305 	ubfx	r3, r3, #0, #6
    4342:	b2db      	uxtb	r3, r3
    4344:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    4346:	68fb      	ldr	r3, [r7, #12]
    4348:	1c5a      	adds	r2, r3, #1
    434a:	60fa      	str	r2, [r7, #12]
    434c:	461a      	mov	r2, r3
    434e:	683b      	ldr	r3, [r7, #0]
    4350:	4413      	add	r3, r2
    4352:	68ba      	ldr	r2, [r7, #8]
    4354:	4912      	ldr	r1, [pc, #72]	; (43a0 <time_str+0x138>)
    4356:	fba1 1202 	umull	r1, r2, r1, r2
    435a:	08d2      	lsrs	r2, r2, #3
    435c:	b2d2      	uxtb	r2, r2
    435e:	3230      	adds	r2, #48	; 0x30
    4360:	b2d2      	uxtb	r2, r2
    4362:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    4364:	68fb      	ldr	r3, [r7, #12]
    4366:	1c5a      	adds	r2, r3, #1
    4368:	60fa      	str	r2, [r7, #12]
    436a:	461a      	mov	r2, r3
    436c:	683b      	ldr	r3, [r7, #0]
    436e:	1898      	adds	r0, r3, r2
    4370:	68b9      	ldr	r1, [r7, #8]
    4372:	4b0b      	ldr	r3, [pc, #44]	; (43a0 <time_str+0x138>)
    4374:	fba3 2301 	umull	r2, r3, r3, r1
    4378:	08da      	lsrs	r2, r3, #3
    437a:	4613      	mov	r3, r2
    437c:	009b      	lsls	r3, r3, #2
    437e:	4413      	add	r3, r2
    4380:	005b      	lsls	r3, r3, #1
    4382:	1aca      	subs	r2, r1, r3
    4384:	b2d3      	uxtb	r3, r2
    4386:	3330      	adds	r3, #48	; 0x30
    4388:	b2db      	uxtb	r3, r3
    438a:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    438c:	68fb      	ldr	r3, [r7, #12]
    438e:	683a      	ldr	r2, [r7, #0]
    4390:	4413      	add	r3, r2
    4392:	2200      	movs	r2, #0
    4394:	701a      	strb	r2, [r3, #0]
}
    4396:	bf00      	nop
    4398:	3714      	adds	r7, #20
    439a:	46bd      	mov	sp, r7
    439c:	bc80      	pop	{r7}
    439e:	4770      	bx	lr
    43a0:	cccccccd 	.word	0xcccccccd

000043a4 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    43a4:	b580      	push	{r7, lr}
    43a6:	b084      	sub	sp, #16
    43a8:	af00      	add	r7, sp, #0
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    43aa:	463b      	mov	r3, r7
    43ac:	4618      	mov	r0, r3
    43ae:	f7ff fa69 	bl	3884 <get_date_time>
	t.fields.second=dt.second/2;
    43b2:	783b      	ldrb	r3, [r7, #0]
    43b4:	f3c3 0305 	ubfx	r3, r3, #0, #6
    43b8:	b2db      	uxtb	r3, r3
    43ba:	0fda      	lsrs	r2, r3, #31
    43bc:	4413      	add	r3, r2
    43be:	105b      	asrs	r3, r3, #1
    43c0:	b2db      	uxtb	r3, r3
    43c2:	f003 031f 	and.w	r3, r3, #31
    43c6:	b2da      	uxtb	r2, r3
    43c8:	7b3b      	ldrb	r3, [r7, #12]
    43ca:	f362 0304 	bfi	r3, r2, #0, #5
    43ce:	733b      	strb	r3, [r7, #12]
	t.fields.minute=dt.minute;
    43d0:	883b      	ldrh	r3, [r7, #0]
    43d2:	f3c3 1385 	ubfx	r3, r3, #6, #6
    43d6:	b2da      	uxtb	r2, r3
    43d8:	89bb      	ldrh	r3, [r7, #12]
    43da:	f362 134a 	bfi	r3, r2, #5, #6
    43de:	81bb      	strh	r3, [r7, #12]
	t.fields.hour=dt.hour;
    43e0:	683b      	ldr	r3, [r7, #0]
    43e2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    43e6:	b2da      	uxtb	r2, r3
    43e8:	7b7b      	ldrb	r3, [r7, #13]
    43ea:	f362 03c7 	bfi	r3, r2, #3, #5
    43ee:	737b      	strb	r3, [r7, #13]
	t.fields.day=dt.day;
    43f0:	78bb      	ldrb	r3, [r7, #2]
    43f2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    43f6:	b2da      	uxtb	r2, r3
    43f8:	7bbb      	ldrb	r3, [r7, #14]
    43fa:	f362 0304 	bfi	r3, r2, #0, #5
    43fe:	73bb      	strb	r3, [r7, #14]
	t.fields.month=dt.month;
    4400:	887b      	ldrh	r3, [r7, #2]
    4402:	f3c3 1383 	ubfx	r3, r3, #6, #4
    4406:	b2da      	uxtb	r2, r3
    4408:	89fb      	ldrh	r3, [r7, #14]
    440a:	f362 1348 	bfi	r3, r2, #5, #4
    440e:	81fb      	strh	r3, [r7, #14]
	t.fields.year=dt.year-1980;
    4410:	893b      	ldrh	r3, [r7, #8]
    4412:	b2db      	uxtb	r3, r3
    4414:	3344      	adds	r3, #68	; 0x44
    4416:	b2db      	uxtb	r3, r3
    4418:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    441c:	b2da      	uxtb	r2, r3
    441e:	7bfb      	ldrb	r3, [r7, #15]
    4420:	f362 0347 	bfi	r3, r2, #1, #7
    4424:	73fb      	strb	r3, [r7, #15]
	return t.u32;
    4426:	68fb      	ldr	r3, [r7, #12]
}
    4428:	4618      	mov	r0, r3
    442a:	3710      	adds	r7, #16
    442c:	46bd      	mov	sp, r7
    442e:	bd80      	pop	{r7, pc}

00004430 <RTC_handler>:


void RTC_handler(){
    4430:	b480      	push	{r7}
    4432:	b083      	sub	sp, #12
    4434:	af00      	add	r7, sp, #0
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    4436:	4b0a      	ldr	r3, [pc, #40]	; (4460 <RTC_handler+0x30>)
    4438:	685b      	ldr	r3, [r3, #4]
    443a:	f003 0301 	and.w	r3, r3, #1
    443e:	2b00      	cmp	r3, #0
    4440:	d001      	beq.n	4446 <RTC_handler+0x16>
		RTC->CRL&~RTC_CRL_SECF;
    4442:	4b07      	ldr	r3, [pc, #28]	; (4460 <RTC_handler+0x30>)
    4444:	685b      	ldr	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    4446:	4b06      	ldr	r3, [pc, #24]	; (4460 <RTC_handler+0x30>)
    4448:	685b      	ldr	r3, [r3, #4]
    444a:	f003 0302 	and.w	r3, r3, #2
    444e:	2b00      	cmp	r3, #0
    4450:	d001      	beq.n	4456 <RTC_handler+0x26>
		RTC->CRL&~RTC_CRL_ALRF;
    4452:	4b03      	ldr	r3, [pc, #12]	; (4460 <RTC_handler+0x30>)
    4454:	685b      	ldr	r3, [r3, #4]
	}// interruption alarme
}
    4456:	bf00      	nop
    4458:	370c      	adds	r7, #12
    445a:	46bd      	mov	sp, r7
    445c:	bc80      	pop	{r7}
    445e:	4770      	bx	lr
    4460:	40002800 	.word	0x40002800

00004464 <sound_init>:

#include "sound.h"
#include "tvout.h"
#include "chipcon_vm.h"

void sound_init(){
    4464:	b580      	push	{r7, lr}
    4466:	af00      	add	r7, sp, #0
    AFIO->MAPR&=AFIO_MAPR_TIM2_REMAP_MASK;
    4468:	4a16      	ldr	r2, [pc, #88]	; (44c4 <sound_init+0x60>)
    446a:	4b16      	ldr	r3, [pc, #88]	; (44c4 <sound_init+0x60>)
    446c:	685b      	ldr	r3, [r3, #4]
    446e:	f423 7340 	bic.w	r3, r3, #768	; 0x300
    4472:	6053      	str	r3, [r2, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    4474:	4a13      	ldr	r2, [pc, #76]	; (44c4 <sound_init+0x60>)
    4476:	4b13      	ldr	r3, [pc, #76]	; (44c4 <sound_init+0x60>)
    4478:	685b      	ldr	r3, [r3, #4]
    447a:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    447e:	6053      	str	r3, [r2, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    4480:	220a      	movs	r2, #10
    4482:	210a      	movs	r1, #10
    4484:	4810      	ldr	r0, [pc, #64]	; (44c8 <sound_init+0x64>)
    4486:	f7fd ffad 	bl	23e4 <config_pin>
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    448a:	4a10      	ldr	r2, [pc, #64]	; (44cc <sound_init+0x68>)
    448c:	4b0f      	ldr	r3, [pc, #60]	; (44cc <sound_init+0x68>)
    448e:	69db      	ldr	r3, [r3, #28]
    4490:	f043 0301 	orr.w	r3, r3, #1
    4494:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    4496:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    449a:	2278      	movs	r2, #120	; 0x78
    449c:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    449e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    44a2:	f44f 7280 	mov.w	r2, #256	; 0x100
    44a6:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    44a8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    44ac:	2209      	movs	r2, #9
    44ae:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    44b0:	2100      	movs	r1, #0
    44b2:	201c      	movs	r0, #28
    44b4:	f7ff f966 	bl	3784 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    44b8:	201c      	movs	r0, #28
    44ba:	f7ff f8a9 	bl	3610 <enable_interrupt>
}
    44be:	bf00      	nop
    44c0:	bd80      	pop	{r7, pc}
    44c2:	bf00      	nop
    44c4:	40010000 	.word	0x40010000
    44c8:	40010c00 	.word	0x40010c00
    44cc:	40021000 	.word	0x40021000

000044d0 <tone>:

void tone(uint16_t freq, uint16_t duration){
    44d0:	b480      	push	{r7}
    44d2:	b083      	sub	sp, #12
    44d4:	af00      	add	r7, sp, #0
    44d6:	4603      	mov	r3, r0
    44d8:	460a      	mov	r2, r1
    44da:	80fb      	strh	r3, [r7, #6]
    44dc:	4613      	mov	r3, r2
    44de:	80bb      	strh	r3, [r7, #4]
    TMR2->ARR=FCLK/10/freq;
    44e0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    44e4:	88fb      	ldrh	r3, [r7, #6]
    44e6:	490d      	ldr	r1, [pc, #52]	; (451c <tone+0x4c>)
    44e8:	fbb1 f3f3 	udiv	r3, r1, r3
    44ec:	62d3      	str	r3, [r2, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    44ee:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    44f2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    44f6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    44f8:	085b      	lsrs	r3, r3, #1
    44fa:	63d3      	str	r3, [r2, #60]	; 0x3c
    TMR2->CR1|=TMR_CR1_CEN;
    44fc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4500:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4504:	681b      	ldr	r3, [r3, #0]
    4506:	f043 0301 	orr.w	r3, r3, #1
    450a:	6013      	str	r3, [r2, #0]
    sound_timer=duration;
    450c:	4a04      	ldr	r2, [pc, #16]	; (4520 <tone+0x50>)
    450e:	88bb      	ldrh	r3, [r7, #4]
    4510:	8013      	strh	r3, [r2, #0]
}
    4512:	bf00      	nop
    4514:	370c      	adds	r7, #12
    4516:	46bd      	mov	sp, r7
    4518:	bc80      	pop	{r7}
    451a:	4770      	bx	lr
    451c:	006d3d32 	.word	0x006d3d32
    4520:	20004eb8 	.word	0x20004eb8

00004524 <beep>:

void beep(uint16_t duration){
    4524:	b580      	push	{r7, lr}
    4526:	b082      	sub	sp, #8
    4528:	af00      	add	r7, sp, #0
    452a:	4603      	mov	r3, r0
    452c:	80fb      	strh	r3, [r7, #6]
    tone(1000,duration);
    452e:	88fb      	ldrh	r3, [r7, #6]
    4530:	4619      	mov	r1, r3
    4532:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    4536:	f7ff ffcb 	bl	44d0 <tone>
}
    453a:	bf00      	nop
    453c:	3708      	adds	r7, #8
    453e:	46bd      	mov	sp, r7
    4540:	bd80      	pop	{r7, pc}

00004542 <sound_stop>:

void sound_stop(){
    4542:	b480      	push	{r7}
    4544:	af00      	add	r7, sp, #0
    TMR2->CR1&=~TMR_CR1_CEN;
    4546:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    454a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    454e:	681b      	ldr	r3, [r3, #0]
    4550:	f023 0301 	bic.w	r3, r3, #1
    4554:	6013      	str	r3, [r2, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    4556:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    455a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    455e:	68db      	ldr	r3, [r3, #12]
    4560:	f023 0301 	bic.w	r3, r3, #1
    4564:	60d3      	str	r3, [r2, #12]
}
    4566:	bf00      	nop
    4568:	46bd      	mov	sp, r7
    456a:	bc80      	pop	{r7}
    456c:	4770      	bx	lr

0000456e <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    456e:	b580      	push	{r7, lr}
    4570:	b084      	sub	sp, #16
    4572:	af00      	add	r7, sp, #0
    4574:	60f8      	str	r0, [r7, #12]
    4576:	60b9      	str	r1, [r7, #8]
    4578:	607a      	str	r2, [r7, #4]
    tone(tempered_scale[note],length);
    457a:	4a0b      	ldr	r2, [pc, #44]	; (45a8 <key_tone+0x3a>)
    457c:	68fb      	ldr	r3, [r7, #12]
    457e:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
    4582:	68ba      	ldr	r2, [r7, #8]
    4584:	b292      	uxth	r2, r2
    4586:	4611      	mov	r1, r2
    4588:	4618      	mov	r0, r3
    458a:	f7ff ffa1 	bl	44d0 <tone>
    if (wait_end) while (sound_timer);
    458e:	687b      	ldr	r3, [r7, #4]
    4590:	2b00      	cmp	r3, #0
    4592:	d005      	beq.n	45a0 <key_tone+0x32>
    4594:	bf00      	nop
    4596:	4b05      	ldr	r3, [pc, #20]	; (45ac <key_tone+0x3e>)
    4598:	881b      	ldrh	r3, [r3, #0]
    459a:	b29b      	uxth	r3, r3
    459c:	2b00      	cmp	r3, #0
    459e:	d1fa      	bne.n	4596 <key_tone+0x28>
}
    45a0:	bf00      	nop
    45a2:	3710      	adds	r7, #16
    45a4:	46bd      	mov	sp, r7
    45a6:	bd80      	pop	{r7, pc}
    45a8:	00006328 	.word	0x00006328
    45ac:	20004eb8 	.word	0x20004eb8

000045b0 <noise>:

// produit un bruit 
void noise(int length){
    45b0:	b580      	push	{r7, lr}
    45b2:	b082      	sub	sp, #8
    45b4:	af00      	add	r7, sp, #0
    45b6:	6078      	str	r0, [r7, #4]
    srand(ntsc_ticks);
    45b8:	4b0b      	ldr	r3, [pc, #44]	; (45e8 <noise+0x38>)
    45ba:	681b      	ldr	r3, [r3, #0]
    45bc:	4618      	mov	r0, r3
    45be:	f7fb ff75 	bl	4ac <srand>
    tone(6000,length);
    45c2:	687b      	ldr	r3, [r7, #4]
    45c4:	b29b      	uxth	r3, r3
    45c6:	4619      	mov	r1, r3
    45c8:	f241 7070 	movw	r0, #6000	; 0x1770
    45cc:	f7ff ff80 	bl	44d0 <tone>
    TMR2->DIER|=TMR_DIER_UIE;
    45d0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    45d4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    45d8:	68db      	ldr	r3, [r3, #12]
    45da:	f043 0301 	orr.w	r3, r3, #1
    45de:	60d3      	str	r3, [r2, #12]
}
    45e0:	bf00      	nop
    45e2:	3708      	adds	r7, #8
    45e4:	46bd      	mov	sp, r7
    45e6:	bd80      	pop	{r7, pc}
    45e8:	20004eb4 	.word	0x20004eb4

000045ec <sound_handler>:

void __attribute__((__interrupt__)) sound_handler(){
    45ec:	4668      	mov	r0, sp
    45ee:	f020 0107 	bic.w	r1, r0, #7
    45f2:	468d      	mov	sp, r1
    45f4:	b589      	push	{r0, r3, r7, lr}
    45f6:	af00      	add	r7, sp, #0
    uint8_t byte,mask;
    if (rand()&1){
    45f8:	f7fb ff66 	bl	4c8 <rand>
    45fc:	4603      	mov	r3, r0
    45fe:	f003 0301 	and.w	r3, r3, #1
    4602:	2b00      	cmp	r3, #0
    4604:	d008      	beq.n	4618 <sound_handler+0x2c>
        TMR2->CCER|=TMR_CCER_CC3P;
    4606:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    460a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    460e:	6a1b      	ldr	r3, [r3, #32]
    4610:	f443 7300 	orr.w	r3, r3, #512	; 0x200
    4614:	6213      	str	r3, [r2, #32]
    4616:	e007      	b.n	4628 <sound_handler+0x3c>
    }else{
        TMR2->CCER&=~TMR_CCER_CC3P;
    4618:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    461c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4620:	6a1b      	ldr	r3, [r3, #32]
    4622:	f423 7300 	bic.w	r3, r3, #512	; 0x200
    4626:	6213      	str	r3, [r2, #32]

    }
    TMR2->SR&=~TMR_SR_UIF;
    4628:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    462c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4630:	691b      	ldr	r3, [r3, #16]
    4632:	f023 0301 	bic.w	r3, r3, #1
    4636:	6113      	str	r3, [r2, #16]
}
    4638:	bf00      	nop
    463a:	46bd      	mov	sp, r7
    463c:	e8bd 4089 	ldmia.w	sp!, {r0, r3, r7, lr}
    4640:	4685      	mov	sp, r0
    4642:	4770      	bx	lr

00004644 <spi_baudrate>:
 */

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
    4644:	b480      	push	{r7}
    4646:	b083      	sub	sp, #12
    4648:	af00      	add	r7, sp, #0
    464a:	6078      	str	r0, [r7, #4]
    464c:	6039      	str	r1, [r7, #0]
	channel->CR1&=SPI_CR1_BR_MASK;
    464e:	687b      	ldr	r3, [r7, #4]
    4650:	681b      	ldr	r3, [r3, #0]
    4652:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    4656:	687b      	ldr	r3, [r7, #4]
    4658:	601a      	str	r2, [r3, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    465a:	687b      	ldr	r3, [r7, #4]
    465c:	681a      	ldr	r2, [r3, #0]
    465e:	683b      	ldr	r3, [r7, #0]
    4660:	00db      	lsls	r3, r3, #3
    4662:	431a      	orrs	r2, r3
    4664:	687b      	ldr	r3, [r7, #4]
    4666:	601a      	str	r2, [r3, #0]
}
    4668:	bf00      	nop
    466a:	370c      	adds	r7, #12
    466c:	46bd      	mov	sp, r7
    466e:	bc80      	pop	{r7}
    4670:	4770      	bx	lr

00004672 <spi_config_port>:

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    4672:	b580      	push	{r7, lr}
    4674:	b082      	sub	sp, #8
    4676:	af00      	add	r7, sp, #0
    4678:	6078      	str	r0, [r7, #4]
    467a:	6039      	str	r1, [r7, #0]
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    467c:	4a33      	ldr	r2, [pc, #204]	; (474c <spi_config_port+0xda>)
    467e:	4b33      	ldr	r3, [pc, #204]	; (474c <spi_config_port+0xda>)
    4680:	699b      	ldr	r3, [r3, #24]
    4682:	f043 0301 	orr.w	r3, r3, #1
    4686:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    4688:	687b      	ldr	r3, [r7, #4]
    468a:	4a31      	ldr	r2, [pc, #196]	; (4750 <spi_config_port+0xde>)
    468c:	4293      	cmp	r3, r2
    468e:	d13e      	bne.n	470e <spi_config_port+0x9c>
		if (!afio_cfg){
    4690:	683b      	ldr	r3, [r7, #0]
    4692:	2b00      	cmp	r3, #0
    4694:	d11a      	bne.n	46cc <spi_config_port+0x5a>
			// activation clock du port
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    4696:	4a2d      	ldr	r2, [pc, #180]	; (474c <spi_config_port+0xda>)
    4698:	4b2c      	ldr	r3, [pc, #176]	; (474c <spi_config_port+0xda>)
    469a:	699b      	ldr	r3, [r3, #24]
    469c:	f043 0304 	orr.w	r3, r3, #4
    46a0:	6193      	str	r3, [r2, #24]
			// configuration port
			// PA4 -> NSS output (push-pull)
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    46a2:	2203      	movs	r2, #3
    46a4:	2104      	movs	r1, #4
    46a6:	482b      	ldr	r0, [pc, #172]	; (4754 <spi_config_port+0xe2>)
    46a8:	f7fd fe9c 	bl	23e4 <config_pin>
			// PA5 -> SCK output (push-pull)
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    46ac:	220b      	movs	r2, #11
    46ae:	2105      	movs	r1, #5
    46b0:	4828      	ldr	r0, [pc, #160]	; (4754 <spi_config_port+0xe2>)
    46b2:	f7fd fe97 	bl	23e4 <config_pin>
			// PA6 -> MISO input (floating)
			config_pin(PORTA,6,INPUT_FLOAT);
    46b6:	2204      	movs	r2, #4
    46b8:	2106      	movs	r1, #6
    46ba:	4826      	ldr	r0, [pc, #152]	; (4754 <spi_config_port+0xe2>)
    46bc:	f7fd fe92 	bl	23e4 <config_pin>
			// PA7 -> MOSI output (push-pull)
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    46c0:	220b      	movs	r2, #11
    46c2:	2107      	movs	r1, #7
    46c4:	4823      	ldr	r0, [pc, #140]	; (4754 <spi_config_port+0xe2>)
    46c6:	f7fd fe8d 	bl	23e4 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
	}
}
    46ca:	e03a      	b.n	4742 <spi_config_port+0xd0>
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    46cc:	4a1f      	ldr	r2, [pc, #124]	; (474c <spi_config_port+0xda>)
    46ce:	4b1f      	ldr	r3, [pc, #124]	; (474c <spi_config_port+0xda>)
    46d0:	699b      	ldr	r3, [r3, #24]
    46d2:	f043 030d 	orr.w	r3, r3, #13
    46d6:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    46d8:	4a1f      	ldr	r2, [pc, #124]	; (4758 <spi_config_port+0xe6>)
    46da:	4b1f      	ldr	r3, [pc, #124]	; (4758 <spi_config_port+0xe6>)
    46dc:	685b      	ldr	r3, [r3, #4]
    46de:	f043 0301 	orr.w	r3, r3, #1
    46e2:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    46e4:	2203      	movs	r2, #3
    46e6:	210f      	movs	r1, #15
    46e8:	481a      	ldr	r0, [pc, #104]	; (4754 <spi_config_port+0xe2>)
    46ea:	f7fd fe7b 	bl	23e4 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    46ee:	220b      	movs	r2, #11
    46f0:	2103      	movs	r1, #3
    46f2:	481a      	ldr	r0, [pc, #104]	; (475c <spi_config_port+0xea>)
    46f4:	f7fd fe76 	bl	23e4 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    46f8:	2204      	movs	r2, #4
    46fa:	2104      	movs	r1, #4
    46fc:	4817      	ldr	r0, [pc, #92]	; (475c <spi_config_port+0xea>)
    46fe:	f7fd fe71 	bl	23e4 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    4702:	220b      	movs	r2, #11
    4704:	2105      	movs	r1, #5
    4706:	4815      	ldr	r0, [pc, #84]	; (475c <spi_config_port+0xea>)
    4708:	f7fd fe6c 	bl	23e4 <config_pin>
}
    470c:	e019      	b.n	4742 <spi_config_port+0xd0>
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    470e:	4a0f      	ldr	r2, [pc, #60]	; (474c <spi_config_port+0xda>)
    4710:	4b0e      	ldr	r3, [pc, #56]	; (474c <spi_config_port+0xda>)
    4712:	699b      	ldr	r3, [r3, #24]
    4714:	f043 0308 	orr.w	r3, r3, #8
    4718:	6193      	str	r3, [r2, #24]
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    471a:	2203      	movs	r2, #3
    471c:	2102      	movs	r1, #2
    471e:	480f      	ldr	r0, [pc, #60]	; (475c <spi_config_port+0xea>)
    4720:	f7fd fe60 	bl	23e4 <config_pin>
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    4724:	220b      	movs	r2, #11
    4726:	210d      	movs	r1, #13
    4728:	480c      	ldr	r0, [pc, #48]	; (475c <spi_config_port+0xea>)
    472a:	f7fd fe5b 	bl	23e4 <config_pin>
		config_pin(PORTB,14,INPUT_FLOAT);
    472e:	2204      	movs	r2, #4
    4730:	210e      	movs	r1, #14
    4732:	480a      	ldr	r0, [pc, #40]	; (475c <spi_config_port+0xea>)
    4734:	f7fd fe56 	bl	23e4 <config_pin>
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    4738:	220b      	movs	r2, #11
    473a:	210f      	movs	r1, #15
    473c:	4807      	ldr	r0, [pc, #28]	; (475c <spi_config_port+0xea>)
    473e:	f7fd fe51 	bl	23e4 <config_pin>
}
    4742:	bf00      	nop
    4744:	3708      	adds	r7, #8
    4746:	46bd      	mov	sp, r7
    4748:	bd80      	pop	{r7, pc}
    474a:	bf00      	nop
    474c:	40021000 	.word	0x40021000
    4750:	40013000 	.word	0x40013000
    4754:	40010800 	.word	0x40010800
    4758:	40010000 	.word	0x40010000
    475c:	40010c00 	.word	0x40010c00

00004760 <spi_init>:

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    4760:	b580      	push	{r7, lr}
    4762:	b084      	sub	sp, #16
    4764:	af00      	add	r7, sp, #0
    4766:	60f8      	str	r0, [r7, #12]
    4768:	60b9      	str	r1, [r7, #8]
    476a:	607a      	str	r2, [r7, #4]
    476c:	603b      	str	r3, [r7, #0]
	spi_config_port(channel,afio_cfg);
    476e:	6839      	ldr	r1, [r7, #0]
    4770:	68f8      	ldr	r0, [r7, #12]
    4772:	f7ff ff7e 	bl	4672 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    4776:	68fb      	ldr	r3, [r7, #12]
    4778:	4a10      	ldr	r2, [pc, #64]	; (47bc <spi_init+0x5c>)
    477a:	4293      	cmp	r3, r2
    477c:	d106      	bne.n	478c <spi_init+0x2c>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    477e:	4a10      	ldr	r2, [pc, #64]	; (47c0 <spi_init+0x60>)
    4780:	4b0f      	ldr	r3, [pc, #60]	; (47c0 <spi_init+0x60>)
    4782:	699b      	ldr	r3, [r3, #24]
    4784:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    4788:	6193      	str	r3, [r2, #24]
    478a:	e005      	b.n	4798 <spi_init+0x38>
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    478c:	4a0c      	ldr	r2, [pc, #48]	; (47c0 <spi_init+0x60>)
    478e:	4b0c      	ldr	r3, [pc, #48]	; (47c0 <spi_init+0x60>)
    4790:	69db      	ldr	r3, [r3, #28]
    4792:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    4796:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    4798:	68fb      	ldr	r3, [r7, #12]
    479a:	687a      	ldr	r2, [r7, #4]
    479c:	601a      	str	r2, [r3, #0]
	spi_baudrate(channel,baud);
    479e:	68b9      	ldr	r1, [r7, #8]
    47a0:	68f8      	ldr	r0, [r7, #12]
    47a2:	f7ff ff4f 	bl	4644 <spi_baudrate>
	_spi_enable(channel);
    47a6:	68fb      	ldr	r3, [r7, #12]
    47a8:	681b      	ldr	r3, [r3, #0]
    47aa:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    47ae:	68fb      	ldr	r3, [r7, #12]
    47b0:	601a      	str	r2, [r3, #0]
}
    47b2:	bf00      	nop
    47b4:	3710      	adds	r7, #16
    47b6:	46bd      	mov	sp, r7
    47b8:	bd80      	pop	{r7, pc}
    47ba:	bf00      	nop
    47bc:	40013000 	.word	0x40013000
    47c0:	40021000 	.word	0x40021000

000047c4 <spi_send>:


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
    47c4:	b480      	push	{r7}
    47c6:	b083      	sub	sp, #12
    47c8:	af00      	add	r7, sp, #0
    47ca:	6078      	str	r0, [r7, #4]
    47cc:	460b      	mov	r3, r1
    47ce:	70fb      	strb	r3, [r7, #3]
	while (!(channel->SR&SPI_SR_TXE));
    47d0:	bf00      	nop
    47d2:	687b      	ldr	r3, [r7, #4]
    47d4:	689b      	ldr	r3, [r3, #8]
    47d6:	f003 0302 	and.w	r3, r3, #2
    47da:	2b00      	cmp	r3, #0
    47dc:	d0f9      	beq.n	47d2 <spi_send+0xe>
	channel->DR=b;
    47de:	78fa      	ldrb	r2, [r7, #3]
    47e0:	687b      	ldr	r3, [r7, #4]
    47e2:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    47e4:	bf00      	nop
    47e6:	687b      	ldr	r3, [r7, #4]
    47e8:	689b      	ldr	r3, [r3, #8]
    47ea:	f003 0301 	and.w	r3, r3, #1
    47ee:	2b00      	cmp	r3, #0
    47f0:	d0f9      	beq.n	47e6 <spi_send+0x22>
	return (uint8_t)channel->DR;
    47f2:	687b      	ldr	r3, [r7, #4]
    47f4:	68db      	ldr	r3, [r3, #12]
    47f6:	b2db      	uxtb	r3, r3
}
    47f8:	4618      	mov	r0, r3
    47fa:	370c      	adds	r7, #12
    47fc:	46bd      	mov	sp, r7
    47fe:	bc80      	pop	{r7}
    4800:	4770      	bx	lr

00004802 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
    4802:	b480      	push	{r7}
    4804:	b085      	sub	sp, #20
    4806:	af00      	add	r7, sp, #0
    4808:	6078      	str	r0, [r7, #4]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    480a:	bf00      	nop
    480c:	687b      	ldr	r3, [r7, #4]
    480e:	689b      	ldr	r3, [r3, #8]
    4810:	f003 0302 	and.w	r3, r3, #2
    4814:	2b00      	cmp	r3, #0
    4816:	d0f9      	beq.n	480c <spi_receive+0xa>
	channel->DR=255;
    4818:	687b      	ldr	r3, [r7, #4]
    481a:	22ff      	movs	r2, #255	; 0xff
    481c:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    481e:	bf00      	nop
    4820:	687b      	ldr	r3, [r7, #4]
    4822:	689b      	ldr	r3, [r3, #8]
    4824:	f003 0301 	and.w	r3, r3, #1
    4828:	2b00      	cmp	r3, #0
    482a:	d0f9      	beq.n	4820 <spi_receive+0x1e>
	rx=(uint8_t)channel->DR;
    482c:	687b      	ldr	r3, [r7, #4]
    482e:	68db      	ldr	r3, [r3, #12]
    4830:	73fb      	strb	r3, [r7, #15]
	return rx;
    4832:	7bfb      	ldrb	r3, [r7, #15]
}
    4834:	4618      	mov	r0, r3
    4836:	3714      	adds	r7, #20
    4838:	46bd      	mov	sp, r7
    483a:	bc80      	pop	{r7}
    483c:	4770      	bx	lr

0000483e <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
    483e:	b480      	push	{r7}
    4840:	b087      	sub	sp, #28
    4842:	af00      	add	r7, sp, #0
    4844:	60f8      	str	r0, [r7, #12]
    4846:	60b9      	str	r1, [r7, #8]
    4848:	607a      	str	r2, [r7, #4]
	uint8_t rx;
	while (count){
    484a:	e010      	b.n	486e <spi_send_block+0x30>
		channel->DR=*buffer++;
    484c:	68bb      	ldr	r3, [r7, #8]
    484e:	1c5a      	adds	r2, r3, #1
    4850:	60ba      	str	r2, [r7, #8]
    4852:	781b      	ldrb	r3, [r3, #0]
    4854:	461a      	mov	r2, r3
    4856:	68fb      	ldr	r3, [r7, #12]
    4858:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_TXE));
    485a:	bf00      	nop
    485c:	68fb      	ldr	r3, [r7, #12]
    485e:	689b      	ldr	r3, [r3, #8]
    4860:	f003 0302 	and.w	r3, r3, #2
    4864:	2b00      	cmp	r3, #0
    4866:	d0f9      	beq.n	485c <spi_send_block+0x1e>
		count--;
    4868:	687b      	ldr	r3, [r7, #4]
    486a:	3b01      	subs	r3, #1
    486c:	607b      	str	r3, [r7, #4]
	while (count){
    486e:	687b      	ldr	r3, [r7, #4]
    4870:	2b00      	cmp	r3, #0
    4872:	d1eb      	bne.n	484c <spi_send_block+0xe>
	}
	while (channel->SR&SPI_SR_BSY);
    4874:	bf00      	nop
    4876:	68fb      	ldr	r3, [r7, #12]
    4878:	689b      	ldr	r3, [r3, #8]
    487a:	f003 0380 	and.w	r3, r3, #128	; 0x80
    487e:	2b00      	cmp	r3, #0
    4880:	d1f9      	bne.n	4876 <spi_send_block+0x38>
	rx=(uint8_t)channel->DR;
    4882:	68fb      	ldr	r3, [r7, #12]
    4884:	68db      	ldr	r3, [r3, #12]
    4886:	75fb      	strb	r3, [r7, #23]
}
    4888:	bf00      	nop
    488a:	371c      	adds	r7, #28
    488c:	46bd      	mov	sp, r7
    488e:	bc80      	pop	{r7}
    4890:	4770      	bx	lr

00004892 <spi_receive_block>:

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    4892:	b480      	push	{r7}
    4894:	b085      	sub	sp, #20
    4896:	af00      	add	r7, sp, #0
    4898:	60f8      	str	r0, [r7, #12]
    489a:	60b9      	str	r1, [r7, #8]
    489c:	607a      	str	r2, [r7, #4]
	while (count){
    489e:	e013      	b.n	48c8 <spi_receive_block+0x36>
		channel->DR=0;
    48a0:	68fb      	ldr	r3, [r7, #12]
    48a2:	2200      	movs	r2, #0
    48a4:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    48a6:	bf00      	nop
    48a8:	68fb      	ldr	r3, [r7, #12]
    48aa:	689b      	ldr	r3, [r3, #8]
    48ac:	f003 0301 	and.w	r3, r3, #1
    48b0:	2b00      	cmp	r3, #0
    48b2:	d0f9      	beq.n	48a8 <spi_receive_block+0x16>
		*buffer++=(uint8_t)channel->DR;
    48b4:	68bb      	ldr	r3, [r7, #8]
    48b6:	1c5a      	adds	r2, r3, #1
    48b8:	60ba      	str	r2, [r7, #8]
    48ba:	68fa      	ldr	r2, [r7, #12]
    48bc:	68d2      	ldr	r2, [r2, #12]
    48be:	b2d2      	uxtb	r2, r2
    48c0:	701a      	strb	r2, [r3, #0]
		count--;
    48c2:	687b      	ldr	r3, [r7, #4]
    48c4:	3b01      	subs	r3, #1
    48c6:	607b      	str	r3, [r7, #4]
	while (count){
    48c8:	687b      	ldr	r3, [r7, #4]
    48ca:	2b00      	cmp	r3, #0
    48cc:	d1e8      	bne.n	48a0 <spi_receive_block+0xe>
	}
}
    48ce:	bf00      	nop
    48d0:	3714      	adds	r7, #20
    48d2:	46bd      	mov	sp, r7
    48d4:	bc80      	pop	{r7}
    48d6:	4770      	bx	lr

000048d8 <reset_mcu>:
	_reset_mcu();
    48d8:	4b01      	ldr	r3, [pc, #4]	; (48e0 <reset_mcu+0x8>)
    48da:	4a02      	ldr	r2, [pc, #8]	; (48e4 <reset_mcu+0xc>)
    48dc:	601a      	str	r2, [r3, #0]
}
    48de:	bf00      	nop
    48e0:	e000ed0c 	.word	0xe000ed0c
    48e4:	05fa0004 	.word	0x05fa0004

000048e8 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    48e8:	b580      	push	{r7, lr}
    48ea:	b082      	sub	sp, #8
    48ec:	af00      	add	r7, sp, #0
    48ee:	6078      	str	r0, [r7, #4]
    48f0:	6039      	str	r1, [r7, #0]
	print(msg);
    48f2:	6878      	ldr	r0, [r7, #4]
    48f4:	f000 f9e0 	bl	4cb8 <print>
	print("\nat address ");
    48f8:	4818      	ldr	r0, [pc, #96]	; (495c <print_fault+0x74>)
    48fa:	f000 f9dd 	bl	4cb8 <print>
	if (adr) {
    48fe:	683b      	ldr	r3, [r7, #0]
    4900:	2b00      	cmp	r3, #0
    4902:	d004      	beq.n	490e <print_fault+0x26>
		print_int(adr,16);
    4904:	683b      	ldr	r3, [r7, #0]
    4906:	2110      	movs	r1, #16
    4908:	4618      	mov	r0, r3
    490a:	f000 fa05 	bl	4d18 <print_int>
	put_char(CR);
    490e:	200d      	movs	r0, #13
    4910:	f000 f90c 	bl	4b2c <put_char>
	print("\nUFSR=");
    4914:	4812      	ldr	r0, [pc, #72]	; (4960 <print_fault+0x78>)
    4916:	f000 f9cf 	bl	4cb8 <print>
	print_int(CFSR->fsr.usageFalt,16);
    491a:	4b12      	ldr	r3, [pc, #72]	; (4964 <print_fault+0x7c>)
    491c:	681b      	ldr	r3, [r3, #0]
    491e:	f3c3 430f 	ubfx	r3, r3, #16, #16
    4922:	b29b      	uxth	r3, r3
    4924:	2110      	movs	r1, #16
    4926:	4618      	mov	r0, r3
    4928:	f000 f9f6 	bl	4d18 <print_int>
	print("\nBFSR=");
    492c:	480e      	ldr	r0, [pc, #56]	; (4968 <print_fault+0x80>)
    492e:	f000 f9c3 	bl	4cb8 <print>
	print_int(CFSR->fsr.busFault,16);
    4932:	4b0c      	ldr	r3, [pc, #48]	; (4964 <print_fault+0x7c>)
    4934:	681b      	ldr	r3, [r3, #0]
    4936:	f3c3 2307 	ubfx	r3, r3, #8, #8
    493a:	b2db      	uxtb	r3, r3
    493c:	2110      	movs	r1, #16
    493e:	4618      	mov	r0, r3
    4940:	f000 f9ea 	bl	4d18 <print_int>
	print("\nMMFSR=");
    4944:	4809      	ldr	r0, [pc, #36]	; (496c <print_fault+0x84>)
    4946:	f000 f9b7 	bl	4cb8 <print>
	print_int(CFSR->fsr.mmFault,16);
    494a:	4b06      	ldr	r3, [pc, #24]	; (4964 <print_fault+0x7c>)
    494c:	681b      	ldr	r3, [r3, #0]
    494e:	b2db      	uxtb	r3, r3
    4950:	2110      	movs	r1, #16
    4952:	4618      	mov	r0, r3
    4954:	f000 f9e0 	bl	4d18 <print_int>
	while(1);
    4958:	e7fe      	b.n	4958 <print_fault+0x70>
    495a:	bf00      	nop
    495c:	00006358 	.word	0x00006358
    4960:	00006368 	.word	0x00006368
    4964:	e000ed28 	.word	0xe000ed28
    4968:	00006370 	.word	0x00006370
    496c:	00006378 	.word	0x00006378

00004970 <font_color>:
#define BG 0 // background
#define FG 1 // foreground
static uint8_t text_colors[2]={0,15};


void font_color(uint8_t color){
    4970:	b480      	push	{r7}
    4972:	b083      	sub	sp, #12
    4974:	af00      	add	r7, sp, #0
    4976:	4603      	mov	r3, r0
    4978:	71fb      	strb	r3, [r7, #7]
	text_colors[FG]=color&0xf;
    497a:	79fb      	ldrb	r3, [r7, #7]
    497c:	f003 030f 	and.w	r3, r3, #15
    4980:	b2da      	uxtb	r2, r3
    4982:	4b03      	ldr	r3, [pc, #12]	; (4990 <font_color+0x20>)
    4984:	705a      	strb	r2, [r3, #1]
}
    4986:	bf00      	nop
    4988:	370c      	adds	r7, #12
    498a:	46bd      	mov	sp, r7
    498c:	bc80      	pop	{r7}
    498e:	4770      	bx	lr
    4990:	20000234 	.word	0x20000234

00004994 <bg_color>:

void bg_color(uint8_t color){
    4994:	b480      	push	{r7}
    4996:	b083      	sub	sp, #12
    4998:	af00      	add	r7, sp, #0
    499a:	4603      	mov	r3, r0
    499c:	71fb      	strb	r3, [r7, #7]
	text_colors[BG]=color&0xf;
    499e:	79fb      	ldrb	r3, [r7, #7]
    49a0:	f003 030f 	and.w	r3, r3, #15
    49a4:	b2da      	uxtb	r2, r3
    49a6:	4b03      	ldr	r3, [pc, #12]	; (49b4 <bg_color+0x20>)
    49a8:	701a      	strb	r2, [r3, #0]
}
    49aa:	bf00      	nop
    49ac:	370c      	adds	r7, #12
    49ae:	46bd      	mov	sp, r7
    49b0:	bc80      	pop	{r7}
    49b2:	4770      	bx	lr
    49b4:	20000234 	.word	0x20000234

000049b8 <select_font>:

void select_font(uint8_t font_id){
    49b8:	b480      	push	{r7}
    49ba:	b083      	sub	sp, #12
    49bc:	af00      	add	r7, sp, #0
    49be:	4603      	mov	r3, r0
    49c0:	71fb      	strb	r3, [r7, #7]
	font=font_id;
    49c2:	4a04      	ldr	r2, [pc, #16]	; (49d4 <select_font+0x1c>)
    49c4:	79fb      	ldrb	r3, [r7, #7]
    49c6:	7013      	strb	r3, [r2, #0]
}
    49c8:	bf00      	nop
    49ca:	370c      	adds	r7, #12
    49cc:	46bd      	mov	sp, r7
    49ce:	bc80      	pop	{r7}
    49d0:	4770      	bx	lr
    49d2:	bf00      	nop
    49d4:	20000230 	.word	0x20000230

000049d8 <get_font>:

// get current font id
uint8_t get_font(){
    49d8:	b480      	push	{r7}
    49da:	af00      	add	r7, sp, #0
	return font;
    49dc:	4b02      	ldr	r3, [pc, #8]	; (49e8 <get_font+0x10>)
    49de:	781b      	ldrb	r3, [r3, #0]
}
    49e0:	4618      	mov	r0, r3
    49e2:	46bd      	mov	sp, r7
    49e4:	bc80      	pop	{r7}
    49e6:	4770      	bx	lr
    49e8:	20000230 	.word	0x20000230

000049ec <new_line>:


void new_line(){
    49ec:	b580      	push	{r7, lr}
    49ee:	b082      	sub	sp, #8
    49f0:	af00      	add	r7, sp, #0
	if (console==LOCAL){
    49f2:	4b2c      	ldr	r3, [pc, #176]	; (4aa4 <new_line+0xb8>)
    49f4:	781b      	ldrb	r3, [r3, #0]
    49f6:	2b00      	cmp	r3, #0
    49f8:	d14a      	bne.n	4a90 <new_line+0xa4>
		xpos=0;
    49fa:	4b2b      	ldr	r3, [pc, #172]	; (4aa8 <new_line+0xbc>)
    49fc:	2200      	movs	r2, #0
    49fe:	701a      	strb	r2, [r3, #0]
		vmode_params_t *vparams=get_video_params();	
    4a00:	f000 fd94 	bl	552c <get_video_params>
    4a04:	6078      	str	r0, [r7, #4]
		switch (font){
    4a06:	4b29      	ldr	r3, [pc, #164]	; (4aac <new_line+0xc0>)
    4a08:	781b      	ldrb	r3, [r3, #0]
    4a0a:	2b01      	cmp	r3, #1
    4a0c:	d017      	beq.n	4a3e <new_line+0x52>
    4a0e:	2b02      	cmp	r3, #2
    4a10:	d029      	beq.n	4a66 <new_line+0x7a>
    4a12:	2b00      	cmp	r3, #0
    4a14:	d000      	beq.n	4a18 <new_line+0x2c>
			break;	
		}//swtich
	}else{
		usart_putc(CHN1,'\n');
	}
}
    4a16:	e040      	b.n	4a9a <new_line+0xae>
			if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    4a18:	4b25      	ldr	r3, [pc, #148]	; (4ab0 <new_line+0xc4>)
    4a1a:	781b      	ldrb	r3, [r3, #0]
    4a1c:	1d9a      	adds	r2, r3, #6
    4a1e:	687b      	ldr	r3, [r7, #4]
    4a20:	89db      	ldrh	r3, [r3, #14]
    4a22:	3b05      	subs	r3, #5
    4a24:	429a      	cmp	r2, r3
    4a26:	dc06      	bgt.n	4a36 <new_line+0x4a>
				ypos+=SHEX_HEIGHT;
    4a28:	4b21      	ldr	r3, [pc, #132]	; (4ab0 <new_line+0xc4>)
    4a2a:	781b      	ldrb	r3, [r3, #0]
    4a2c:	3306      	adds	r3, #6
    4a2e:	b2da      	uxtb	r2, r3
    4a30:	4b1f      	ldr	r3, [pc, #124]	; (4ab0 <new_line+0xc4>)
    4a32:	701a      	strb	r2, [r3, #0]
			break;
    4a34:	e031      	b.n	4a9a <new_line+0xae>
				gfx_scroll_up(SHEX_HEIGHT);
    4a36:	2006      	movs	r0, #6
    4a38:	f7fd fe40 	bl	26bc <gfx_scroll_up>
			break;
    4a3c:	e02d      	b.n	4a9a <new_line+0xae>
			if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    4a3e:	4b1c      	ldr	r3, [pc, #112]	; (4ab0 <new_line+0xc4>)
    4a40:	781b      	ldrb	r3, [r3, #0]
    4a42:	f103 020a 	add.w	r2, r3, #10
    4a46:	687b      	ldr	r3, [r7, #4]
    4a48:	89db      	ldrh	r3, [r3, #14]
    4a4a:	3b09      	subs	r3, #9
    4a4c:	429a      	cmp	r2, r3
    4a4e:	dc06      	bgt.n	4a5e <new_line+0x72>
				ypos+=LHEX_HEIGHT;
    4a50:	4b17      	ldr	r3, [pc, #92]	; (4ab0 <new_line+0xc4>)
    4a52:	781b      	ldrb	r3, [r3, #0]
    4a54:	330a      	adds	r3, #10
    4a56:	b2da      	uxtb	r2, r3
    4a58:	4b15      	ldr	r3, [pc, #84]	; (4ab0 <new_line+0xc4>)
    4a5a:	701a      	strb	r2, [r3, #0]
			break;
    4a5c:	e01d      	b.n	4a9a <new_line+0xae>
				gfx_scroll_up(LHEX_HEIGHT);
    4a5e:	200a      	movs	r0, #10
    4a60:	f7fd fe2c 	bl	26bc <gfx_scroll_up>
			break;
    4a64:	e019      	b.n	4a9a <new_line+0xae>
			if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    4a66:	4b12      	ldr	r3, [pc, #72]	; (4ab0 <new_line+0xc4>)
    4a68:	781b      	ldrb	r3, [r3, #0]
    4a6a:	f103 0208 	add.w	r2, r3, #8
    4a6e:	687b      	ldr	r3, [r7, #4]
    4a70:	89db      	ldrh	r3, [r3, #14]
    4a72:	3b07      	subs	r3, #7
    4a74:	429a      	cmp	r2, r3
    4a76:	dc06      	bgt.n	4a86 <new_line+0x9a>
				ypos+=CHAR_HEIGHT;
    4a78:	4b0d      	ldr	r3, [pc, #52]	; (4ab0 <new_line+0xc4>)
    4a7a:	781b      	ldrb	r3, [r3, #0]
    4a7c:	3308      	adds	r3, #8
    4a7e:	b2da      	uxtb	r2, r3
    4a80:	4b0b      	ldr	r3, [pc, #44]	; (4ab0 <new_line+0xc4>)
    4a82:	701a      	strb	r2, [r3, #0]
			break;	
    4a84:	e009      	b.n	4a9a <new_line+0xae>
				gfx_scroll_up(CHAR_HEIGHT);
    4a86:	2008      	movs	r0, #8
    4a88:	f7fd fe18 	bl	26bc <gfx_scroll_up>
			break;	
    4a8c:	bf00      	nop
    4a8e:	e004      	b.n	4a9a <new_line+0xae>
		usart_putc(CHN1,'\n');
    4a90:	210a      	movs	r1, #10
    4a92:	2000      	movs	r0, #0
    4a94:	f000 ffbc 	bl	5a10 <usart_putc>
}
    4a98:	e7ff      	b.n	4a9a <new_line+0xae>
    4a9a:	bf00      	nop
    4a9c:	3708      	adds	r7, #8
    4a9e:	46bd      	mov	sp, r7
    4aa0:	bd80      	pop	{r7, pc}
    4aa2:	bf00      	nop
    4aa4:	200006da 	.word	0x200006da
    4aa8:	200006d8 	.word	0x200006d8
    4aac:	20000230 	.word	0x20000230
    4ab0:	200006d9 	.word	0x200006d9

00004ab4 <draw_char>:

static void draw_char(int x,int y,int w, int h, const char* glyph){
    4ab4:	b5b0      	push	{r4, r5, r7, lr}
    4ab6:	b086      	sub	sp, #24
    4ab8:	af00      	add	r7, sp, #0
    4aba:	60f8      	str	r0, [r7, #12]
    4abc:	60b9      	str	r1, [r7, #8]
    4abe:	607a      	str	r2, [r7, #4]
    4ac0:	603b      	str	r3, [r7, #0]
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    4ac2:	68bc      	ldr	r4, [r7, #8]
    4ac4:	e026      	b.n	4b14 <draw_char+0x60>
		byte=*glyph++;
    4ac6:	6abb      	ldr	r3, [r7, #40]	; 0x28
    4ac8:	1c5a      	adds	r2, r3, #1
    4aca:	62ba      	str	r2, [r7, #40]	; 0x28
    4acc:	781b      	ldrb	r3, [r3, #0]
    4ace:	757b      	strb	r3, [r7, #21]
		mask=128;
    4ad0:	2380      	movs	r3, #128	; 0x80
    4ad2:	75bb      	strb	r3, [r7, #22]
		for (x0=x;x0<(x+w);x0++){
    4ad4:	68fd      	ldr	r5, [r7, #12]
    4ad6:	e017      	b.n	4b08 <draw_char+0x54>
			bit=byte&mask;
    4ad8:	7d7a      	ldrb	r2, [r7, #21]
    4ada:	7dbb      	ldrb	r3, [r7, #22]
    4adc:	4013      	ands	r3, r2
    4ade:	753b      	strb	r3, [r7, #20]
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    4ae0:	7d3b      	ldrb	r3, [r7, #20]
    4ae2:	2b00      	cmp	r3, #0
    4ae4:	d003      	beq.n	4aee <draw_char+0x3a>
    4ae6:	4b10      	ldr	r3, [pc, #64]	; (4b28 <draw_char+0x74>)
    4ae8:	785b      	ldrb	r3, [r3, #1]
    4aea:	75fb      	strb	r3, [r7, #23]
    4aec:	e002      	b.n	4af4 <draw_char+0x40>
    4aee:	4b0e      	ldr	r3, [pc, #56]	; (4b28 <draw_char+0x74>)
    4af0:	781b      	ldrb	r3, [r3, #0]
    4af2:	75fb      	strb	r3, [r7, #23]
			gfx_blit(x0,y0,c,BIT_SET);
    4af4:	7dfa      	ldrb	r2, [r7, #23]
    4af6:	2304      	movs	r3, #4
    4af8:	4621      	mov	r1, r4
    4afa:	4628      	mov	r0, r5
    4afc:	f7fd fd06 	bl	250c <gfx_blit>
			mask>>=1;
    4b00:	7dbb      	ldrb	r3, [r7, #22]
    4b02:	085b      	lsrs	r3, r3, #1
    4b04:	75bb      	strb	r3, [r7, #22]
		for (x0=x;x0<(x+w);x0++){
    4b06:	3501      	adds	r5, #1
    4b08:	68fa      	ldr	r2, [r7, #12]
    4b0a:	687b      	ldr	r3, [r7, #4]
    4b0c:	4413      	add	r3, r2
    4b0e:	42ab      	cmp	r3, r5
    4b10:	dce2      	bgt.n	4ad8 <draw_char+0x24>
	for (y0=y;y0<(y+h);y0++){
    4b12:	3401      	adds	r4, #1
    4b14:	68ba      	ldr	r2, [r7, #8]
    4b16:	683b      	ldr	r3, [r7, #0]
    4b18:	4413      	add	r3, r2
    4b1a:	42a3      	cmp	r3, r4
    4b1c:	dcd3      	bgt.n	4ac6 <draw_char+0x12>
		}
	}
}
    4b1e:	bf00      	nop
    4b20:	3718      	adds	r7, #24
    4b22:	46bd      	mov	sp, r7
    4b24:	bdb0      	pop	{r4, r5, r7, pc}
    4b26:	bf00      	nop
    4b28:	20000234 	.word	0x20000234

00004b2c <put_char>:

void put_char(uint8_t c){
    4b2c:	b580      	push	{r7, lr}
    4b2e:	b084      	sub	sp, #16
    4b30:	af02      	add	r7, sp, #8
    4b32:	4603      	mov	r3, r0
    4b34:	71fb      	strb	r3, [r7, #7]
	if (console==LOCAL){
    4b36:	4b43      	ldr	r3, [pc, #268]	; (4c44 <put_char+0x118>)
    4b38:	781b      	ldrb	r3, [r3, #0]
    4b3a:	2b00      	cmp	r3, #0
    4b3c:	d172      	bne.n	4c24 <put_char+0xf8>
		switch(font){
    4b3e:	4b42      	ldr	r3, [pc, #264]	; (4c48 <put_char+0x11c>)
    4b40:	781b      	ldrb	r3, [r3, #0]
    4b42:	2b01      	cmp	r3, #1
    4b44:	d027      	beq.n	4b96 <put_char+0x6a>
    4b46:	2b02      	cmp	r3, #2
    4b48:	d048      	beq.n	4bdc <put_char+0xb0>
    4b4a:	2b00      	cmp	r3, #0
    4b4c:	d000      	beq.n	4b50 <put_char+0x24>
			break;		
		}
	}else{
		usart_putc(CHN1,c);
	}
}
    4b4e:	e074      	b.n	4c3a <put_char+0x10e>
			if (c<16){
    4b50:	79fb      	ldrb	r3, [r7, #7]
    4b52:	2b0f      	cmp	r3, #15
    4b54:	d86c      	bhi.n	4c30 <put_char+0x104>
				draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    4b56:	4b3d      	ldr	r3, [pc, #244]	; (4c4c <put_char+0x120>)
    4b58:	781b      	ldrb	r3, [r3, #0]
    4b5a:	4618      	mov	r0, r3
    4b5c:	4b3c      	ldr	r3, [pc, #240]	; (4c50 <put_char+0x124>)
    4b5e:	781b      	ldrb	r3, [r3, #0]
    4b60:	4619      	mov	r1, r3
    4b62:	79fa      	ldrb	r2, [r7, #7]
    4b64:	4613      	mov	r3, r2
    4b66:	005b      	lsls	r3, r3, #1
    4b68:	4413      	add	r3, r2
    4b6a:	005b      	lsls	r3, r3, #1
    4b6c:	461a      	mov	r2, r3
    4b6e:	4b39      	ldr	r3, [pc, #228]	; (4c54 <put_char+0x128>)
    4b70:	4413      	add	r3, r2
    4b72:	9300      	str	r3, [sp, #0]
    4b74:	2306      	movs	r3, #6
    4b76:	2204      	movs	r2, #4
    4b78:	f7ff ff9c 	bl	4ab4 <draw_char>
				xpos+=SHEX_WIDTH;
    4b7c:	4b33      	ldr	r3, [pc, #204]	; (4c4c <put_char+0x120>)
    4b7e:	781b      	ldrb	r3, [r3, #0]
    4b80:	3304      	adds	r3, #4
    4b82:	b2da      	uxtb	r2, r3
    4b84:	4b31      	ldr	r3, [pc, #196]	; (4c4c <put_char+0x120>)
    4b86:	701a      	strb	r2, [r3, #0]
				if (xpos>(HRES-SHEX_WIDTH+1)){
    4b88:	4b30      	ldr	r3, [pc, #192]	; (4c4c <put_char+0x120>)
    4b8a:	781b      	ldrb	r3, [r3, #0]
    4b8c:	2bb1      	cmp	r3, #177	; 0xb1
    4b8e:	d94f      	bls.n	4c30 <put_char+0x104>
					new_line();
    4b90:	f7ff ff2c 	bl	49ec <new_line>
			break;
    4b94:	e04c      	b.n	4c30 <put_char+0x104>
			if (c<16){
    4b96:	79fb      	ldrb	r3, [r7, #7]
    4b98:	2b0f      	cmp	r3, #15
    4b9a:	d84b      	bhi.n	4c34 <put_char+0x108>
				draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    4b9c:	4b2b      	ldr	r3, [pc, #172]	; (4c4c <put_char+0x120>)
    4b9e:	781b      	ldrb	r3, [r3, #0]
    4ba0:	4618      	mov	r0, r3
    4ba2:	4b2b      	ldr	r3, [pc, #172]	; (4c50 <put_char+0x124>)
    4ba4:	781b      	ldrb	r3, [r3, #0]
    4ba6:	4619      	mov	r1, r3
    4ba8:	79fa      	ldrb	r2, [r7, #7]
    4baa:	4613      	mov	r3, r2
    4bac:	009b      	lsls	r3, r3, #2
    4bae:	4413      	add	r3, r2
    4bb0:	005b      	lsls	r3, r3, #1
    4bb2:	461a      	mov	r2, r3
    4bb4:	4b28      	ldr	r3, [pc, #160]	; (4c58 <put_char+0x12c>)
    4bb6:	4413      	add	r3, r2
    4bb8:	9300      	str	r3, [sp, #0]
    4bba:	230a      	movs	r3, #10
    4bbc:	2208      	movs	r2, #8
    4bbe:	f7ff ff79 	bl	4ab4 <draw_char>
				xpos+=LHEX_WIDTH;
    4bc2:	4b22      	ldr	r3, [pc, #136]	; (4c4c <put_char+0x120>)
    4bc4:	781b      	ldrb	r3, [r3, #0]
    4bc6:	3308      	adds	r3, #8
    4bc8:	b2da      	uxtb	r2, r3
    4bca:	4b20      	ldr	r3, [pc, #128]	; (4c4c <put_char+0x120>)
    4bcc:	701a      	strb	r2, [r3, #0]
				if (xpos>(HRES-LHEX_WIDTH+1)){
    4bce:	4b1f      	ldr	r3, [pc, #124]	; (4c4c <put_char+0x120>)
    4bd0:	781b      	ldrb	r3, [r3, #0]
    4bd2:	2bad      	cmp	r3, #173	; 0xad
    4bd4:	d92e      	bls.n	4c34 <put_char+0x108>
					new_line();
    4bd6:	f7ff ff09 	bl	49ec <new_line>
			break;
    4bda:	e02b      	b.n	4c34 <put_char+0x108>
			if ((c>31) && (c<(FONT_SIZE+32))){
    4bdc:	79fb      	ldrb	r3, [r7, #7]
    4bde:	2b1f      	cmp	r3, #31
    4be0:	d92a      	bls.n	4c38 <put_char+0x10c>
    4be2:	79fb      	ldrb	r3, [r7, #7]
    4be4:	2b84      	cmp	r3, #132	; 0x84
    4be6:	d827      	bhi.n	4c38 <put_char+0x10c>
				draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    4be8:	4b18      	ldr	r3, [pc, #96]	; (4c4c <put_char+0x120>)
    4bea:	781b      	ldrb	r3, [r3, #0]
    4bec:	4618      	mov	r0, r3
    4bee:	4b18      	ldr	r3, [pc, #96]	; (4c50 <put_char+0x124>)
    4bf0:	781b      	ldrb	r3, [r3, #0]
    4bf2:	4619      	mov	r1, r3
    4bf4:	79fb      	ldrb	r3, [r7, #7]
    4bf6:	3b20      	subs	r3, #32
    4bf8:	00db      	lsls	r3, r3, #3
    4bfa:	4a18      	ldr	r2, [pc, #96]	; (4c5c <put_char+0x130>)
    4bfc:	4413      	add	r3, r2
    4bfe:	9300      	str	r3, [sp, #0]
    4c00:	2308      	movs	r3, #8
    4c02:	2206      	movs	r2, #6
    4c04:	f7ff ff56 	bl	4ab4 <draw_char>
				xpos+=CHAR_WIDTH;
    4c08:	4b10      	ldr	r3, [pc, #64]	; (4c4c <put_char+0x120>)
    4c0a:	781b      	ldrb	r3, [r3, #0]
    4c0c:	3306      	adds	r3, #6
    4c0e:	b2da      	uxtb	r2, r3
    4c10:	4b0e      	ldr	r3, [pc, #56]	; (4c4c <put_char+0x120>)
    4c12:	701a      	strb	r2, [r3, #0]
				if (xpos>(HRES-CHAR_WIDTH+1)){
    4c14:	4b0d      	ldr	r3, [pc, #52]	; (4c4c <put_char+0x120>)
    4c16:	781b      	ldrb	r3, [r3, #0]
    4c18:	2baf      	cmp	r3, #175	; 0xaf
    4c1a:	d90d      	bls.n	4c38 <put_char+0x10c>
					new_line();
    4c1c:	f7ff fee6 	bl	49ec <new_line>
			break;		
    4c20:	bf00      	nop
    4c22:	e009      	b.n	4c38 <put_char+0x10c>
		usart_putc(CHN1,c);
    4c24:	79fb      	ldrb	r3, [r7, #7]
    4c26:	4619      	mov	r1, r3
    4c28:	2000      	movs	r0, #0
    4c2a:	f000 fef1 	bl	5a10 <usart_putc>
}
    4c2e:	e004      	b.n	4c3a <put_char+0x10e>
			break;
    4c30:	bf00      	nop
    4c32:	e002      	b.n	4c3a <put_char+0x10e>
			break;
    4c34:	bf00      	nop
    4c36:	e000      	b.n	4c3a <put_char+0x10e>
			break;		
    4c38:	bf00      	nop
}
    4c3a:	bf00      	nop
    4c3c:	3708      	adds	r7, #8
    4c3e:	46bd      	mov	sp, r7
    4c40:	bd80      	pop	{r7, pc}
    4c42:	bf00      	nop
    4c44:	200006da 	.word	0x200006da
    4c48:	20000230 	.word	0x20000230
    4c4c:	200006d8 	.word	0x200006d8
    4c50:	200006d9 	.word	0x200006d9
    4c54:	00005c7c 	.word	0x00005c7c
    4c58:	00005cdc 	.word	0x00005cdc
    4c5c:	00005d7c 	.word	0x00005d7c

00004c60 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
    4c60:	b480      	push	{r7}
    4c62:	b083      	sub	sp, #12
    4c64:	af00      	add	r7, sp, #0
    4c66:	4603      	mov	r3, r0
    4c68:	460a      	mov	r2, r1
    4c6a:	71fb      	strb	r3, [r7, #7]
    4c6c:	4613      	mov	r3, r2
    4c6e:	71bb      	strb	r3, [r7, #6]
	xpos=x;
    4c70:	4a05      	ldr	r2, [pc, #20]	; (4c88 <set_cursor+0x28>)
    4c72:	79fb      	ldrb	r3, [r7, #7]
    4c74:	7013      	strb	r3, [r2, #0]
	ypos=y;
    4c76:	4a05      	ldr	r2, [pc, #20]	; (4c8c <set_cursor+0x2c>)
    4c78:	79bb      	ldrb	r3, [r7, #6]
    4c7a:	7013      	strb	r3, [r2, #0]
}
    4c7c:	bf00      	nop
    4c7e:	370c      	adds	r7, #12
    4c80:	46bd      	mov	sp, r7
    4c82:	bc80      	pop	{r7}
    4c84:	4770      	bx	lr
    4c86:	bf00      	nop
    4c88:	200006d8 	.word	0x200006d8
    4c8c:	200006d9 	.word	0x200006d9

00004c90 <get_cursor>:

uint16_t get_cursor(){
    4c90:	b480      	push	{r7}
    4c92:	af00      	add	r7, sp, #0
	return (xpos<<8)+ypos;
    4c94:	4b06      	ldr	r3, [pc, #24]	; (4cb0 <get_cursor+0x20>)
    4c96:	781b      	ldrb	r3, [r3, #0]
    4c98:	b29b      	uxth	r3, r3
    4c9a:	021b      	lsls	r3, r3, #8
    4c9c:	b29a      	uxth	r2, r3
    4c9e:	4b05      	ldr	r3, [pc, #20]	; (4cb4 <get_cursor+0x24>)
    4ca0:	781b      	ldrb	r3, [r3, #0]
    4ca2:	b29b      	uxth	r3, r3
    4ca4:	4413      	add	r3, r2
    4ca6:	b29b      	uxth	r3, r3
}
    4ca8:	4618      	mov	r0, r3
    4caa:	46bd      	mov	sp, r7
    4cac:	bc80      	pop	{r7}
    4cae:	4770      	bx	lr
    4cb0:	200006d8 	.word	0x200006d8
    4cb4:	200006d9 	.word	0x200006d9

00004cb8 <print>:

void print(const char* str){
    4cb8:	b580      	push	{r7, lr}
    4cba:	b084      	sub	sp, #16
    4cbc:	af00      	add	r7, sp, #0
    4cbe:	6078      	str	r0, [r7, #4]
    char c;
    while ((c=*str++)){
    4cc0:	e011      	b.n	4ce6 <print+0x2e>
        switch(c){
    4cc2:	7bfb      	ldrb	r3, [r7, #15]
    4cc4:	2b0a      	cmp	r3, #10
    4cc6:	d004      	beq.n	4cd2 <print+0x1a>
    4cc8:	2b0d      	cmp	r3, #13
    4cca:	d002      	beq.n	4cd2 <print+0x1a>
    4ccc:	2b08      	cmp	r3, #8
    4cce:	d003      	beq.n	4cd8 <print+0x20>
    4cd0:	e005      	b.n	4cde <print+0x26>
        case LF:
        case CR:
            new_line();
    4cd2:	f7ff fe8b 	bl	49ec <new_line>
            break;
    4cd6:	e006      	b.n	4ce6 <print+0x2e>
        case BS:
            cursor_left();    
    4cd8:	f000 f8a1 	bl	4e1e <cursor_left>
            break;
    4cdc:	e003      	b.n	4ce6 <print+0x2e>
        default:
            put_char(c);
    4cde:	7bfb      	ldrb	r3, [r7, #15]
    4ce0:	4618      	mov	r0, r3
    4ce2:	f7ff ff23 	bl	4b2c <put_char>
    while ((c=*str++)){
    4ce6:	687b      	ldr	r3, [r7, #4]
    4ce8:	1c5a      	adds	r2, r3, #1
    4cea:	607a      	str	r2, [r7, #4]
    4cec:	781b      	ldrb	r3, [r3, #0]
    4cee:	73fb      	strb	r3, [r7, #15]
    4cf0:	7bfb      	ldrb	r3, [r7, #15]
    4cf2:	2b00      	cmp	r3, #0
    4cf4:	d1e5      	bne.n	4cc2 <print+0xa>
        }
    }
}
    4cf6:	bf00      	nop
    4cf8:	3710      	adds	r7, #16
    4cfa:	46bd      	mov	sp, r7
    4cfc:	bd80      	pop	{r7, pc}

00004cfe <println>:

// print text and do crlf()
void println(const char *text){
    4cfe:	b580      	push	{r7, lr}
    4d00:	b082      	sub	sp, #8
    4d02:	af00      	add	r7, sp, #0
    4d04:	6078      	str	r0, [r7, #4]
	print(text);
    4d06:	6878      	ldr	r0, [r7, #4]
    4d08:	f7ff ffd6 	bl	4cb8 <print>
	new_line();
    4d0c:	f7ff fe6e 	bl	49ec <new_line>
}
    4d10:	bf00      	nop
    4d12:	3708      	adds	r7, #8
    4d14:	46bd      	mov	sp, r7
    4d16:	bd80      	pop	{r7, pc}

00004d18 <print_int>:

void print_int(int i,uint8_t base){
    4d18:	b580      	push	{r7, lr}
    4d1a:	b08a      	sub	sp, #40	; 0x28
    4d1c:	af00      	add	r7, sp, #0
    4d1e:	6078      	str	r0, [r7, #4]
    4d20:	460b      	mov	r3, r1
    4d22:	70fb      	strb	r3, [r7, #3]
    char fmt[16],sign=0;
    4d24:	2300      	movs	r3, #0
    4d26:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    int idx,d;

    fmt[15]=0;
    4d2a:	2300      	movs	r3, #0
    4d2c:	76fb      	strb	r3, [r7, #27]
    fmt[14]=' ';
    4d2e:	2320      	movs	r3, #32
    4d30:	76bb      	strb	r3, [r7, #26]
    idx=14;
    4d32:	230e      	movs	r3, #14
    4d34:	623b      	str	r3, [r7, #32]
    if (i<0){
    4d36:	687b      	ldr	r3, [r7, #4]
    4d38:	2b00      	cmp	r3, #0
    4d3a:	da27      	bge.n	4d8c <print_int+0x74>
        sign=1;
    4d3c:	2301      	movs	r3, #1
    4d3e:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
        i=-i;
    4d42:	687b      	ldr	r3, [r7, #4]
    4d44:	425b      	negs	r3, r3
    4d46:	607b      	str	r3, [r7, #4]
    }
    while (idx>1 && i){
    4d48:	e020      	b.n	4d8c <print_int+0x74>
        d=i%base;
    4d4a:	78fa      	ldrb	r2, [r7, #3]
    4d4c:	687b      	ldr	r3, [r7, #4]
    4d4e:	fb93 f1f2 	sdiv	r1, r3, r2
    4d52:	fb02 f201 	mul.w	r2, r2, r1
    4d56:	1a9b      	subs	r3, r3, r2
    4d58:	61fb      	str	r3, [r7, #28]
        if (d>9) d+=7;
    4d5a:	69fb      	ldr	r3, [r7, #28]
    4d5c:	2b09      	cmp	r3, #9
    4d5e:	dd02      	ble.n	4d66 <print_int+0x4e>
    4d60:	69fb      	ldr	r3, [r7, #28]
    4d62:	3307      	adds	r3, #7
    4d64:	61fb      	str	r3, [r7, #28]
        fmt[--idx]=d+='0';
    4d66:	6a3b      	ldr	r3, [r7, #32]
    4d68:	3b01      	subs	r3, #1
    4d6a:	623b      	str	r3, [r7, #32]
    4d6c:	69fb      	ldr	r3, [r7, #28]
    4d6e:	3330      	adds	r3, #48	; 0x30
    4d70:	61fb      	str	r3, [r7, #28]
    4d72:	69fb      	ldr	r3, [r7, #28]
    4d74:	b2d9      	uxtb	r1, r3
    4d76:	f107 020c 	add.w	r2, r7, #12
    4d7a:	6a3b      	ldr	r3, [r7, #32]
    4d7c:	4413      	add	r3, r2
    4d7e:	460a      	mov	r2, r1
    4d80:	701a      	strb	r2, [r3, #0]
        i/=base;
    4d82:	78fb      	ldrb	r3, [r7, #3]
    4d84:	687a      	ldr	r2, [r7, #4]
    4d86:	fb92 f3f3 	sdiv	r3, r2, r3
    4d8a:	607b      	str	r3, [r7, #4]
    while (idx>1 && i){
    4d8c:	6a3b      	ldr	r3, [r7, #32]
    4d8e:	2b01      	cmp	r3, #1
    4d90:	dd02      	ble.n	4d98 <print_int+0x80>
    4d92:	687b      	ldr	r3, [r7, #4]
    4d94:	2b00      	cmp	r3, #0
    4d96:	d1d8      	bne.n	4d4a <print_int+0x32>
    }
    if (idx==14)fmt[--idx]='0';
    4d98:	6a3b      	ldr	r3, [r7, #32]
    4d9a:	2b0e      	cmp	r3, #14
    4d9c:	d108      	bne.n	4db0 <print_int+0x98>
    4d9e:	6a3b      	ldr	r3, [r7, #32]
    4da0:	3b01      	subs	r3, #1
    4da2:	623b      	str	r3, [r7, #32]
    4da4:	f107 020c 	add.w	r2, r7, #12
    4da8:	6a3b      	ldr	r3, [r7, #32]
    4daa:	4413      	add	r3, r2
    4dac:	2230      	movs	r2, #48	; 0x30
    4dae:	701a      	strb	r2, [r3, #0]
    if (base==10 && sign){
    4db0:	78fb      	ldrb	r3, [r7, #3]
    4db2:	2b0a      	cmp	r3, #10
    4db4:	d10d      	bne.n	4dd2 <print_int+0xba>
    4db6:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    4dba:	2b00      	cmp	r3, #0
    4dbc:	d009      	beq.n	4dd2 <print_int+0xba>
        fmt[--idx]='-';
    4dbe:	6a3b      	ldr	r3, [r7, #32]
    4dc0:	3b01      	subs	r3, #1
    4dc2:	623b      	str	r3, [r7, #32]
    4dc4:	f107 020c 	add.w	r2, r7, #12
    4dc8:	6a3b      	ldr	r3, [r7, #32]
    4dca:	4413      	add	r3, r2
    4dcc:	222d      	movs	r2, #45	; 0x2d
    4dce:	701a      	strb	r2, [r3, #0]
    4dd0:	e01a      	b.n	4e08 <print_int+0xf0>
    }else if (base==16){
    4dd2:	78fb      	ldrb	r3, [r7, #3]
    4dd4:	2b10      	cmp	r3, #16
    4dd6:	d117      	bne.n	4e08 <print_int+0xf0>
        if((16-idx&1))fmt[--idx]='0';
    4dd8:	6a3b      	ldr	r3, [r7, #32]
    4dda:	425b      	negs	r3, r3
    4ddc:	f003 0301 	and.w	r3, r3, #1
    4de0:	2b00      	cmp	r3, #0
    4de2:	d008      	beq.n	4df6 <print_int+0xde>
    4de4:	6a3b      	ldr	r3, [r7, #32]
    4de6:	3b01      	subs	r3, #1
    4de8:	623b      	str	r3, [r7, #32]
    4dea:	f107 020c 	add.w	r2, r7, #12
    4dee:	6a3b      	ldr	r3, [r7, #32]
    4df0:	4413      	add	r3, r2
    4df2:	2230      	movs	r2, #48	; 0x30
    4df4:	701a      	strb	r2, [r3, #0]
		fmt[--idx]='$';
    4df6:	6a3b      	ldr	r3, [r7, #32]
    4df8:	3b01      	subs	r3, #1
    4dfa:	623b      	str	r3, [r7, #32]
    4dfc:	f107 020c 	add.w	r2, r7, #12
    4e00:	6a3b      	ldr	r3, [r7, #32]
    4e02:	4413      	add	r3, r2
    4e04:	2224      	movs	r2, #36	; 0x24
    4e06:	701a      	strb	r2, [r3, #0]
    }
    print(&fmt[idx]);
    4e08:	f107 020c 	add.w	r2, r7, #12
    4e0c:	6a3b      	ldr	r3, [r7, #32]
    4e0e:	4413      	add	r3, r2
    4e10:	4618      	mov	r0, r3
    4e12:	f7ff ff51 	bl	4cb8 <print>
}
    4e16:	bf00      	nop
    4e18:	3728      	adds	r7, #40	; 0x28
    4e1a:	46bd      	mov	sp, r7
    4e1c:	bd80      	pop	{r7, pc}

00004e1e <cursor_left>:

void cursor_left(){
    4e1e:	b480      	push	{r7}
    4e20:	af00      	add	r7, sp, #0
	switch(font){
    4e22:	4b1b      	ldr	r3, [pc, #108]	; (4e90 <cursor_left+0x72>)
    4e24:	781b      	ldrb	r3, [r3, #0]
    4e26:	2b01      	cmp	r3, #1
    4e28:	d010      	beq.n	4e4c <cursor_left+0x2e>
    4e2a:	2b02      	cmp	r3, #2
    4e2c:	d01a      	beq.n	4e64 <cursor_left+0x46>
    4e2e:	2b00      	cmp	r3, #0
    4e30:	d000      	beq.n	4e34 <cursor_left+0x16>
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
		break;	
	}
}
    4e32:	e028      	b.n	4e86 <cursor_left+0x68>
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    4e34:	4b17      	ldr	r3, [pc, #92]	; (4e94 <cursor_left+0x76>)
    4e36:	781b      	ldrb	r3, [r3, #0]
    4e38:	3b04      	subs	r3, #4
    4e3a:	2b00      	cmp	r3, #0
    4e3c:	db1e      	blt.n	4e7c <cursor_left+0x5e>
    4e3e:	4b15      	ldr	r3, [pc, #84]	; (4e94 <cursor_left+0x76>)
    4e40:	781b      	ldrb	r3, [r3, #0]
    4e42:	3b04      	subs	r3, #4
    4e44:	b2da      	uxtb	r2, r3
    4e46:	4b13      	ldr	r3, [pc, #76]	; (4e94 <cursor_left+0x76>)
    4e48:	701a      	strb	r2, [r3, #0]
		break;
    4e4a:	e017      	b.n	4e7c <cursor_left+0x5e>
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    4e4c:	4b11      	ldr	r3, [pc, #68]	; (4e94 <cursor_left+0x76>)
    4e4e:	781b      	ldrb	r3, [r3, #0]
    4e50:	3b08      	subs	r3, #8
    4e52:	2b00      	cmp	r3, #0
    4e54:	db14      	blt.n	4e80 <cursor_left+0x62>
    4e56:	4b0f      	ldr	r3, [pc, #60]	; (4e94 <cursor_left+0x76>)
    4e58:	781b      	ldrb	r3, [r3, #0]
    4e5a:	3b08      	subs	r3, #8
    4e5c:	b2da      	uxtb	r2, r3
    4e5e:	4b0d      	ldr	r3, [pc, #52]	; (4e94 <cursor_left+0x76>)
    4e60:	701a      	strb	r2, [r3, #0]
		break;
    4e62:	e00d      	b.n	4e80 <cursor_left+0x62>
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    4e64:	4b0b      	ldr	r3, [pc, #44]	; (4e94 <cursor_left+0x76>)
    4e66:	781b      	ldrb	r3, [r3, #0]
    4e68:	3b06      	subs	r3, #6
    4e6a:	2b00      	cmp	r3, #0
    4e6c:	db0a      	blt.n	4e84 <cursor_left+0x66>
    4e6e:	4b09      	ldr	r3, [pc, #36]	; (4e94 <cursor_left+0x76>)
    4e70:	781b      	ldrb	r3, [r3, #0]
    4e72:	3b06      	subs	r3, #6
    4e74:	b2da      	uxtb	r2, r3
    4e76:	4b07      	ldr	r3, [pc, #28]	; (4e94 <cursor_left+0x76>)
    4e78:	701a      	strb	r2, [r3, #0]
		break;	
    4e7a:	e003      	b.n	4e84 <cursor_left+0x66>
		break;
    4e7c:	bf00      	nop
    4e7e:	e002      	b.n	4e86 <cursor_left+0x68>
		break;
    4e80:	bf00      	nop
    4e82:	e000      	b.n	4e86 <cursor_left+0x68>
		break;	
    4e84:	bf00      	nop
}
    4e86:	bf00      	nop
    4e88:	46bd      	mov	sp, r7
    4e8a:	bc80      	pop	{r7}
    4e8c:	4770      	bx	lr
    4e8e:	bf00      	nop
    4e90:	20000230 	.word	0x20000230
    4e94:	200006d8 	.word	0x200006d8

00004e98 <prompt_btn>:

void prompt_btn(){
    4e98:	b580      	push	{r7, lr}
    4e9a:	af00      	add	r7, sp, #0
	print("press button");
    4e9c:	4802      	ldr	r0, [pc, #8]	; (4ea8 <prompt_btn+0x10>)
    4e9e:	f7ff ff0b 	bl	4cb8 <print>
}
    4ea2:	bf00      	nop
    4ea4:	bd80      	pop	{r7, pc}
    4ea6:	bf00      	nop
    4ea8:	000063cc 	.word	0x000063cc

00004eac <clear_screen>:

void clear_screen(){
    4eac:	b580      	push	{r7, lr}
    4eae:	af00      	add	r7, sp, #0
	if (console==LOCAL){
    4eb0:	4b09      	ldr	r3, [pc, #36]	; (4ed8 <clear_screen+0x2c>)
    4eb2:	781b      	ldrb	r3, [r3, #0]
    4eb4:	2b00      	cmp	r3, #0
    4eb6:	d108      	bne.n	4eca <clear_screen+0x1e>
		gfx_cls();
    4eb8:	f7fd fbaa 	bl	2610 <gfx_cls>
		xpos=0;
    4ebc:	4b07      	ldr	r3, [pc, #28]	; (4edc <clear_screen+0x30>)
    4ebe:	2200      	movs	r2, #0
    4ec0:	701a      	strb	r2, [r3, #0]
		ypos=0;
    4ec2:	4b07      	ldr	r3, [pc, #28]	; (4ee0 <clear_screen+0x34>)
    4ec4:	2200      	movs	r2, #0
    4ec6:	701a      	strb	r2, [r3, #0]
	}else{
		usart_putc(CHN1,FF);
	}
}
    4ec8:	e003      	b.n	4ed2 <clear_screen+0x26>
		usart_putc(CHN1,FF);
    4eca:	210c      	movs	r1, #12
    4ecc:	2000      	movs	r0, #0
    4ece:	f000 fd9f 	bl	5a10 <usart_putc>
}
    4ed2:	bf00      	nop
    4ed4:	bd80      	pop	{r7, pc}
    4ed6:	bf00      	nop
    4ed8:	200006da 	.word	0x200006da
    4edc:	200006d8 	.word	0x200006d8
    4ee0:	200006d9 	.word	0x200006d9

00004ee4 <show_cursor>:

// affiche un curseur texte
void show_cursor(int show){
    4ee4:	b580      	push	{r7, lr}
    4ee6:	b084      	sub	sp, #16
    4ee8:	af00      	add	r7, sp, #0
    4eea:	6078      	str	r0, [r7, #4]
	int x,y;
	uint8_t color=show?15:0;
    4eec:	687b      	ldr	r3, [r7, #4]
    4eee:	2b00      	cmp	r3, #0
    4ef0:	d001      	beq.n	4ef6 <show_cursor+0x12>
    4ef2:	230f      	movs	r3, #15
    4ef4:	e000      	b.n	4ef8 <show_cursor+0x14>
    4ef6:	2300      	movs	r3, #0
    4ef8:	72fb      	strb	r3, [r7, #11]
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    4efa:	4b0c      	ldr	r3, [pc, #48]	; (4f2c <show_cursor+0x48>)
    4efc:	781b      	ldrb	r3, [r3, #0]
    4efe:	60fb      	str	r3, [r7, #12]
    4f00:	e00a      	b.n	4f18 <show_cursor+0x34>
			gfx_blit(x,ypos+CHAR_HEIGHT-1,color,BIT_SET);
    4f02:	4b0b      	ldr	r3, [pc, #44]	; (4f30 <show_cursor+0x4c>)
    4f04:	781b      	ldrb	r3, [r3, #0]
    4f06:	1dd9      	adds	r1, r3, #7
    4f08:	7afa      	ldrb	r2, [r7, #11]
    4f0a:	2304      	movs	r3, #4
    4f0c:	68f8      	ldr	r0, [r7, #12]
    4f0e:	f7fd fafd 	bl	250c <gfx_blit>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    4f12:	68fb      	ldr	r3, [r7, #12]
    4f14:	3301      	adds	r3, #1
    4f16:	60fb      	str	r3, [r7, #12]
    4f18:	4b04      	ldr	r3, [pc, #16]	; (4f2c <show_cursor+0x48>)
    4f1a:	781b      	ldrb	r3, [r3, #0]
    4f1c:	1d9a      	adds	r2, r3, #6
    4f1e:	68fb      	ldr	r3, [r7, #12]
    4f20:	429a      	cmp	r2, r3
    4f22:	dcee      	bgt.n	4f02 <show_cursor+0x1e>
		}
}
    4f24:	bf00      	nop
    4f26:	3710      	adds	r7, #16
    4f28:	46bd      	mov	sp, r7
    4f2a:	bd80      	pop	{r7, pc}
    4f2c:	200006d8 	.word	0x200006d8
    4f30:	200006d9 	.word	0x200006d9

00004f34 <clear_line>:

// efface la ligne où est le curseur texte
void clear_line(){
    4f34:	b580      	push	{r7, lr}
    4f36:	b082      	sub	sp, #8
    4f38:	af00      	add	r7, sp, #0
	int y;
	vmode_params_t *vparams=get_video_params();
    4f3a:	f000 faf7 	bl	552c <get_video_params>
    4f3e:	6038      	str	r0, [r7, #0]
//	set_cursor(0,ypos);
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    4f40:	4b0f      	ldr	r3, [pc, #60]	; (4f80 <clear_line+0x4c>)
    4f42:	781b      	ldrb	r3, [r3, #0]
    4f44:	607b      	str	r3, [r7, #4]
    4f46:	e010      	b.n	4f6a <clear_line+0x36>
		fill(&video_buffer[y*vparams->bpr],vparams->bpr,0);
    4f48:	683b      	ldr	r3, [r7, #0]
    4f4a:	7a1b      	ldrb	r3, [r3, #8]
    4f4c:	461a      	mov	r2, r3
    4f4e:	687b      	ldr	r3, [r7, #4]
    4f50:	fb03 f302 	mul.w	r3, r3, r2
    4f54:	4a0b      	ldr	r2, [pc, #44]	; (4f84 <clear_line+0x50>)
    4f56:	1898      	adds	r0, r3, r2
    4f58:	683b      	ldr	r3, [r7, #0]
    4f5a:	7a1b      	ldrb	r3, [r3, #8]
    4f5c:	2200      	movs	r2, #0
    4f5e:	4619      	mov	r1, r3
    4f60:	f7fd f909 	bl	2176 <fill>
	for (y=ypos;y<ypos+CHAR_HEIGHT;y++)
    4f64:	687b      	ldr	r3, [r7, #4]
    4f66:	3301      	adds	r3, #1
    4f68:	607b      	str	r3, [r7, #4]
    4f6a:	4b05      	ldr	r3, [pc, #20]	; (4f80 <clear_line+0x4c>)
    4f6c:	781b      	ldrb	r3, [r3, #0]
    4f6e:	f103 0208 	add.w	r2, r3, #8
    4f72:	687b      	ldr	r3, [r7, #4]
    4f74:	429a      	cmp	r2, r3
    4f76:	dce7      	bgt.n	4f48 <clear_line+0x14>
//	while (xpos<(vparams->hres-CHAR_WIDTH))put_char(' ');
//	set_cursor(0,ypos-CHAR_HEIGHT);
}
    4f78:	bf00      	nop
    4f7a:	3708      	adds	r7, #8
    4f7c:	46bd      	mov	sp, r7
    4f7e:	bd80      	pop	{r7, pc}
    4f80:	200006d9 	.word	0x200006d9
    4f84:	20002750 	.word	0x20002750

00004f88 <select_console>:

// select text output console
// serial console usefull for debugging
void select_console(console_t con){
    4f88:	b480      	push	{r7}
    4f8a:	b083      	sub	sp, #12
    4f8c:	af00      	add	r7, sp, #0
    4f8e:	4603      	mov	r3, r0
    4f90:	71fb      	strb	r3, [r7, #7]
	console=con;
    4f92:	4a04      	ldr	r2, [pc, #16]	; (4fa4 <select_console+0x1c>)
    4f94:	79fb      	ldrb	r3, [r7, #7]
    4f96:	7013      	strb	r3, [r2, #0]
}
    4f98:	bf00      	nop
    4f9a:	370c      	adds	r7, #12
    4f9c:	46bd      	mov	sp, r7
    4f9e:	bc80      	pop	{r7}
    4fa0:	4770      	bx	lr
    4fa2:	bf00      	nop
    4fa4:	200006da 	.word	0x200006da

00004fa8 <get_char>:

//read a character from serial port
char get_char(){
    4fa8:	b580      	push	{r7, lr}
    4faa:	b082      	sub	sp, #8
    4fac:	af00      	add	r7, sp, #0
	char c;
	while (!(c=usart_getc(CHN1)));
    4fae:	2000      	movs	r0, #0
    4fb0:	f000 fcb8 	bl	5924 <usart_getc>
    4fb4:	4603      	mov	r3, r0
    4fb6:	71fb      	strb	r3, [r7, #7]
    4fb8:	79fb      	ldrb	r3, [r7, #7]
    4fba:	2b00      	cmp	r3, #0
    4fbc:	d0f7      	beq.n	4fae <get_char+0x6>
	return c;
    4fbe:	79fb      	ldrb	r3, [r7, #7]
}
    4fc0:	4618      	mov	r0, r3
    4fc2:	3708      	adds	r7, #8
    4fc4:	46bd      	mov	sp, r7
    4fc6:	bd80      	pop	{r7, pc}

00004fc8 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    4fc8:	b580      	push	{r7, lr}
    4fca:	af00      	add	r7, sp, #0
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    4fcc:	4b44      	ldr	r3, [pc, #272]	; (50e0 <tvout_init+0x118>)
    4fce:	4a45      	ldr	r2, [pc, #276]	; (50e4 <tvout_init+0x11c>)
    4fd0:	601a      	str	r2, [r3, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    4fd2:	4b45      	ldr	r3, [pc, #276]	; (50e8 <tvout_init+0x120>)
    4fd4:	4a45      	ldr	r2, [pc, #276]	; (50ec <tvout_init+0x124>)
    4fd6:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    4fd8:	220a      	movs	r2, #10
    4fda:	2108      	movs	r1, #8
    4fdc:	4840      	ldr	r0, [pc, #256]	; (50e0 <tvout_init+0x118>)
    4fde:	f7fd fa01 	bl	23e4 <config_pin>
    PORTA->ODR=0;
    4fe2:	4b3f      	ldr	r3, [pc, #252]	; (50e0 <tvout_init+0x118>)
    4fe4:	2200      	movs	r2, #0
    4fe6:	60da      	str	r2, [r3, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    4fe8:	4a41      	ldr	r2, [pc, #260]	; (50f0 <tvout_init+0x128>)
    4fea:	4b41      	ldr	r3, [pc, #260]	; (50f0 <tvout_init+0x128>)
    4fec:	699b      	ldr	r3, [r3, #24]
    4fee:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    4ff2:	6193      	str	r3, [r2, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    4ff4:	4b3f      	ldr	r3, [pc, #252]	; (50f4 <tvout_init+0x12c>)
    4ff6:	2278      	movs	r2, #120	; 0x78
    4ff8:	619a      	str	r2, [r3, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    4ffa:	4b3e      	ldr	r3, [pc, #248]	; (50f4 <tvout_init+0x12c>)
    4ffc:	2201      	movs	r2, #1
    4ffe:	621a      	str	r2, [r3, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    5000:	4b3c      	ldr	r3, [pc, #240]	; (50f4 <tvout_init+0x12c>)
    5002:	2284      	movs	r2, #132	; 0x84
    5004:	601a      	str	r2, [r3, #0]
    TMR1->ARR=HPERIOD;
    5006:	4b3b      	ldr	r3, [pc, #236]	; (50f4 <tvout_init+0x12c>)
    5008:	f241 12c5 	movw	r2, #4549	; 0x11c5
    500c:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    500e:	4b39      	ldr	r3, [pc, #228]	; (50f4 <tvout_init+0x12c>)
    5010:	f44f 72a8 	mov.w	r2, #336	; 0x150
    5014:	635a      	str	r2, [r3, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    5016:	4b37      	ldr	r3, [pc, #220]	; (50f4 <tvout_init+0x12c>)
    5018:	f240 1265 	movw	r2, #357	; 0x165
    501c:	639a      	str	r2, [r3, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    501e:	4a35      	ldr	r2, [pc, #212]	; (50f4 <tvout_init+0x12c>)
    5020:	4b34      	ldr	r3, [pc, #208]	; (50f4 <tvout_init+0x12c>)
    5022:	695b      	ldr	r3, [r3, #20]
    5024:	f043 0301 	orr.w	r3, r3, #1
    5028:	6153      	str	r3, [r2, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    502a:	4b32      	ldr	r3, [pc, #200]	; (50f4 <tvout_init+0x12c>)
    502c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    5030:	645a      	str	r2, [r3, #68]	; 0x44
    TMR1->SR=0;
    5032:	4b30      	ldr	r3, [pc, #192]	; (50f4 <tvout_init+0x12c>)
    5034:	2200      	movs	r2, #0
    5036:	611a      	str	r2, [r3, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    5038:	4a2e      	ldr	r2, [pc, #184]	; (50f4 <tvout_init+0x12c>)
    503a:	4b2e      	ldr	r3, [pc, #184]	; (50f4 <tvout_init+0x12c>)
    503c:	68db      	ldr	r3, [r3, #12]
    503e:	f043 0301 	orr.w	r3, r3, #1
    5042:	60d3      	str	r3, [r2, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    5044:	2100      	movs	r1, #0
    5046:	2019      	movs	r0, #25
    5048:	f7fe fb9c 	bl	3784 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    504c:	2100      	movs	r1, #0
    504e:	201b      	movs	r0, #27
    5050:	f7fe fb98 	bl	3784 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    5054:	2019      	movs	r0, #25
    5056:	f7fe fadb 	bl	3610 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    505a:	201b      	movs	r0, #27
    505c:	f7fe fad8 	bl	3610 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    5060:	4a24      	ldr	r2, [pc, #144]	; (50f4 <tvout_init+0x12c>)
    5062:	4b24      	ldr	r3, [pc, #144]	; (50f4 <tvout_init+0x12c>)
    5064:	681b      	ldr	r3, [r3, #0]
    5066:	f043 0301 	orr.w	r3, r3, #1
    506a:	6013      	str	r3, [r2, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    506c:	220a      	movs	r2, #10
    506e:	2100      	movs	r1, #0
    5070:	4821      	ldr	r0, [pc, #132]	; (50f8 <tvout_init+0x130>)
    5072:	f7fd f9b7 	bl	23e4 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    5076:	4a1e      	ldr	r2, [pc, #120]	; (50f0 <tvout_init+0x128>)
    5078:	4b1d      	ldr	r3, [pc, #116]	; (50f0 <tvout_init+0x128>)
    507a:	69db      	ldr	r3, [r3, #28]
    507c:	f043 0302 	orr.w	r3, r3, #2
    5080:	61d3      	str	r3, [r2, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    5082:	4b1e      	ldr	r3, [pc, #120]	; (50fc <tvout_init+0x134>)
    5084:	2278      	movs	r2, #120	; 0x78
    5086:	61da      	str	r2, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    5088:	4b1c      	ldr	r3, [pc, #112]	; (50fc <tvout_init+0x134>)
    508a:	2284      	movs	r2, #132	; 0x84
    508c:	601a      	str	r2, [r3, #0]
    TMR3->ARR=19; 
    508e:	4b1b      	ldr	r3, [pc, #108]	; (50fc <tvout_init+0x134>)
    5090:	2213      	movs	r2, #19
    5092:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    5094:	4b19      	ldr	r3, [pc, #100]	; (50fc <tvout_init+0x134>)
    5096:	220a      	movs	r2, #10
    5098:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    509a:	4a18      	ldr	r2, [pc, #96]	; (50fc <tvout_init+0x134>)
    509c:	4b17      	ldr	r3, [pc, #92]	; (50fc <tvout_init+0x134>)
    509e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    50a0:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    50a4:	6453      	str	r3, [r2, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    50a6:	4a15      	ldr	r2, [pc, #84]	; (50fc <tvout_init+0x134>)
    50a8:	4b14      	ldr	r3, [pc, #80]	; (50fc <tvout_init+0x134>)
    50aa:	695b      	ldr	r3, [r3, #20]
    50ac:	f043 0301 	orr.w	r3, r3, #1
    50b0:	6153      	str	r3, [r2, #20]
    TMR3->SR=0;
    50b2:	4b12      	ldr	r3, [pc, #72]	; (50fc <tvout_init+0x134>)
    50b4:	2200      	movs	r2, #0
    50b6:	611a      	str	r2, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN;
    50b8:	4a10      	ldr	r2, [pc, #64]	; (50fc <tvout_init+0x134>)
    50ba:	4b10      	ldr	r3, [pc, #64]	; (50fc <tvout_init+0x134>)
    50bc:	681b      	ldr	r3, [r3, #0]
    50be:	f043 0301 	orr.w	r3, r3, #1
    50c2:	6013      	str	r3, [r2, #0]
    flags|=F_EVEN;
    50c4:	4b0e      	ldr	r3, [pc, #56]	; (5100 <tvout_init+0x138>)
    50c6:	881b      	ldrh	r3, [r3, #0]
    50c8:	b29b      	uxth	r3, r3
    50ca:	f043 0301 	orr.w	r3, r3, #1
    50ce:	b29a      	uxth	r2, r3
    50d0:	4b0b      	ldr	r3, [pc, #44]	; (5100 <tvout_init+0x138>)
    50d2:	801a      	strh	r2, [r3, #0]
    scan_line=0; 
    50d4:	4b0b      	ldr	r3, [pc, #44]	; (5104 <tvout_init+0x13c>)
    50d6:	2200      	movs	r2, #0
    50d8:	801a      	strh	r2, [r3, #0]
}
    50da:	bf00      	nop
    50dc:	bd80      	pop	{r7, pc}
    50de:	bf00      	nop
    50e0:	40010800 	.word	0x40010800
    50e4:	88883333 	.word	0x88883333
    50e8:	40010804 	.word	0x40010804
    50ec:	84484444 	.word	0x84484444
    50f0:	40021000 	.word	0x40021000
    50f4:	40012c00 	.word	0x40012c00
    50f8:	40010c00 	.word	0x40010c00
    50fc:	40000400 	.word	0x40000400
    5100:	200006de 	.word	0x200006de
    5104:	200006e2 	.word	0x200006e2

00005108 <TV_OUT_handler>:

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    5108:	4668      	mov	r0, sp
    510a:	f020 0107 	bic.w	r1, r0, #7
    510e:	468d      	mov	sp, r1
    5110:	b471      	push	{r0, r4, r5, r6}
                              ::"r" (dly):"r2")

    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
    TMR3->CCER|=CHROMA_CFG;
    5112:	4a30      	ldr	r2, [pc, #192]	; (51d4 <TV_OUT_handler+0xcc>)
    5114:	6a13      	ldr	r3, [r2, #32]
    5116:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    511a:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    511c:	492e      	ldr	r1, [pc, #184]	; (51d8 <TV_OUT_handler+0xd0>)
    511e:	f240 2209 	movw	r2, #521	; 0x209
    5122:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    5124:	4293      	cmp	r3, r2
    5126:	d9fc      	bls.n	5122 <TV_OUT_handler+0x1a>
    TMR3->CCER&=~CHROMA_CFG;
    5128:	4a2a      	ldr	r2, [pc, #168]	; (51d4 <TV_OUT_handler+0xcc>)
    512a:	6a13      	ldr	r3, [r2, #32]
    512c:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    5130:	6213      	str	r3, [r2, #32]
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    5132:	4b2a      	ldr	r3, [pc, #168]	; (51dc <TV_OUT_handler+0xd4>)
    5134:	881d      	ldrh	r5, [r3, #0]
    5136:	b2ad      	uxth	r5, r5
    5138:	4b29      	ldr	r3, [pc, #164]	; (51e0 <TV_OUT_handler+0xd8>)
    513a:	7818      	ldrb	r0, [r3, #0]
    513c:	4b29      	ldr	r3, [pc, #164]	; (51e4 <TV_OUT_handler+0xdc>)
    513e:	781b      	ldrb	r3, [r3, #0]
    5140:	fb95 f5f3 	sdiv	r5, r5, r3
    5144:	4b28      	ldr	r3, [pc, #160]	; (51e8 <TV_OUT_handler+0xe0>)
    5146:	fb00 3505 	mla	r5, r0, r5, r3
    while(TMR1->CNT<left_margin);
    514a:	4b28      	ldr	r3, [pc, #160]	; (51ec <TV_OUT_handler+0xe4>)
    514c:	881a      	ldrh	r2, [r3, #0]
    514e:	4922      	ldr	r1, [pc, #136]	; (51d8 <TV_OUT_handler+0xd0>)
    5150:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    5152:	4293      	cmp	r3, r2
    5154:	d3fc      	bcc.n	5150 <TV_OUT_handler+0x48>
    _jitter_cancel();
    5156:	4b26      	ldr	r3, [pc, #152]	; (51f0 <TV_OUT_handler+0xe8>)
    5158:	461a      	mov	r2, r3
    515a:	6812      	ldr	r2, [r2, #0]
    515c:	f002 0207 	and.w	r2, r2, #7
    5160:	ea4f 0242 	mov.w	r2, r2, lsl #1
    5164:	4497      	add	pc, r2
    5166:	bf00      	nop
    5168:	bf00      	nop
    516a:	bf00      	nop
    516c:	bf00      	nop
    516e:	bf00      	nop
    5170:	bf00      	nop
    5172:	bf00      	nop
    5174:	bf00      	nop
    TMR3->CCER|=CHROMA_CFG;
    5176:	4a17      	ldr	r2, [pc, #92]	; (51d4 <TV_OUT_handler+0xcc>)
    5178:	6a13      	ldr	r3, [r2, #32]
    517a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    517e:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    5180:	b1b8      	cbz	r0, 51b2 <TV_OUT_handler+0xaa>
    5182:	462b      	mov	r3, r5
        _pixel_delay(pixel_delay);
    5184:	481b      	ldr	r0, [pc, #108]	; (51f4 <TV_OUT_handler+0xec>)
        *video_port=(*video_data)>>4;
    5186:	491c      	ldr	r1, [pc, #112]	; (51f8 <TV_OUT_handler+0xf0>)
    for (i=0;i<byte_per_row;i++){
    5188:	4e15      	ldr	r6, [pc, #84]	; (51e0 <TV_OUT_handler+0xd8>)
        _pixel_delay(pixel_delay);
    518a:	7804      	ldrb	r4, [r0, #0]
    518c:	4622      	mov	r2, r4
    518e:	3a01      	subs	r2, #1
    5190:	d1fd      	bne.n	518e <TV_OUT_handler+0x86>
        *video_port=(*video_data)>>4;
    5192:	781a      	ldrb	r2, [r3, #0]
    5194:	0912      	lsrs	r2, r2, #4
    5196:	800a      	strh	r2, [r1, #0]
        _pixel_delay(pixel_delay);
    5198:	7804      	ldrb	r4, [r0, #0]
    519a:	4622      	mov	r2, r4
    519c:	3a01      	subs	r2, #1
    519e:	d1fd      	bne.n	519c <TV_OUT_handler+0x94>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
        *video_port=(*video_data++)&0xf;
    51a0:	f813 2b01 	ldrb.w	r2, [r3], #1
    51a4:	f002 020f 	and.w	r2, r2, #15
    51a8:	800a      	strh	r2, [r1, #0]
    for (i=0;i<byte_per_row;i++){
    51aa:	1b5c      	subs	r4, r3, r5
    51ac:	7832      	ldrb	r2, [r6, #0]
    51ae:	4294      	cmp	r4, r2
    51b0:	d3eb      	bcc.n	518a <TV_OUT_handler+0x82>
        //__asm__ volatile("nop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\tnop\n\t");
    }
    PORTA->ODR=0;
    51b2:	2200      	movs	r2, #0
    51b4:	4b11      	ldr	r3, [pc, #68]	; (51fc <TV_OUT_handler+0xf4>)
    51b6:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    51b8:	4a06      	ldr	r2, [pc, #24]	; (51d4 <TV_OUT_handler+0xcc>)
    51ba:	6a13      	ldr	r3, [r2, #32]
    51bc:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    51c0:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    51c2:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    51c6:	6913      	ldr	r3, [r2, #16]
    51c8:	f023 0304 	bic.w	r3, r3, #4
    51cc:	6113      	str	r3, [r2, #16]
}
    51ce:	bc71      	pop	{r0, r4, r5, r6}
    51d0:	4685      	mov	sp, r0
    51d2:	4770      	bx	lr
    51d4:	40000400 	.word	0x40000400
    51d8:	40012c00 	.word	0x40012c00
    51dc:	200006e0 	.word	0x200006e0
    51e0:	2000023c 	.word	0x2000023c
    51e4:	2000023d 	.word	0x2000023d
    51e8:	20002750 	.word	0x20002750
    51ec:	2000023a 	.word	0x2000023a
    51f0:	40012c24 	.word	0x40012c24
    51f4:	2000023e 	.word	0x2000023e
    51f8:	4001080c 	.word	0x4001080c
    51fc:	40010800 	.word	0x40010800

00005200 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    5200:	4668      	mov	r0, sp
    5202:	f020 0107 	bic.w	r1, r0, #7
    5206:	468d      	mov	sp, r1
    5208:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    520a:	4a75      	ldr	r2, [pc, #468]	; (53e0 <TV_SYNC_handler+0x1e0>)
    520c:	8813      	ldrh	r3, [r2, #0]
    520e:	3301      	adds	r3, #1
    5210:	b21b      	sxth	r3, r3
    5212:	8013      	strh	r3, [r2, #0]
    ntsc_ticks++;
    5214:	4a73      	ldr	r2, [pc, #460]	; (53e4 <TV_SYNC_handler+0x1e4>)
    5216:	6813      	ldr	r3, [r2, #0]
    5218:	3301      	adds	r3, #1
    521a:	6013      	str	r3, [r2, #0]
    switch (task){
    521c:	4b72      	ldr	r3, [pc, #456]	; (53e8 <TV_SYNC_handler+0x1e8>)
    521e:	881b      	ldrh	r3, [r3, #0]
    5220:	b29b      	uxth	r3, r3
    5222:	2b06      	cmp	r3, #6
    5224:	d84a      	bhi.n	52bc <TV_SYNC_handler+0xbc>
    5226:	e8df f013 	tbh	[pc, r3, lsl #1]
    522a:	0007      	.short	0x0007
    522c:	00520042 	.word	0x00520042
    5230:	00760067 	.word	0x00760067
    5234:	00b30095 	.word	0x00b30095
    case VSYNC:
        switch(scan_line){
    5238:	4b69      	ldr	r3, [pc, #420]	; (53e0 <TV_SYNC_handler+0x1e0>)
    523a:	881b      	ldrh	r3, [r3, #0]
    523c:	b21b      	sxth	r3, r3
    523e:	3b01      	subs	r3, #1
    5240:	2b12      	cmp	r3, #18
    5242:	d83b      	bhi.n	52bc <TV_SYNC_handler+0xbc>
    5244:	e8df f003 	tbb	[pc, r3]
    5248:	3a3a3a0a 	.word	0x3a3a3a0a
    524c:	3a113a3a 	.word	0x3a113a3a
    5250:	3a3a3a3a 	.word	0x3a3a3a3a
    5254:	3a3a3a16 	.word	0x3a3a3a16
    5258:	1a3a      	.short	0x1a3a
    525a:	1f          	.byte	0x1f
    525b:	00          	.byte	0x00
        case 1:
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
    525c:	4b63      	ldr	r3, [pc, #396]	; (53ec <TV_SYNC_handler+0x1ec>)
    525e:	f640 02e2 	movw	r2, #2274	; 0x8e2
    5262:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    5264:	22a4      	movs	r2, #164	; 0xa4
    5266:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    5268:	e028      	b.n	52bc <TV_SYNC_handler+0xbc>
        case 7:
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
    526a:	f240 7294 	movw	r2, #1940	; 0x794
    526e:	4b5f      	ldr	r3, [pc, #380]	; (53ec <TV_SYNC_handler+0x1ec>)
    5270:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    5272:	e023      	b.n	52bc <TV_SYNC_handler+0xbc>
        case 13:
            // set post-sync pulse    
            TMR1->CCR1=SERRATION;
    5274:	22a4      	movs	r2, #164	; 0xa4
    5276:	4b5d      	ldr	r3, [pc, #372]	; (53ec <TV_SYNC_handler+0x1ec>)
    5278:	635a      	str	r2, [r3, #52]	; 0x34
            break;
    527a:	e01f      	b.n	52bc <TV_SYNC_handler+0xbc>
        case 18:
            if (!(flags&F_EVEN)){
    527c:	4b5c      	ldr	r3, [pc, #368]	; (53f0 <TV_SYNC_handler+0x1f0>)
    527e:	881b      	ldrh	r3, [r3, #0]
    5280:	f013 0f01 	tst.w	r3, #1
    5284:	d11a      	bne.n	52bc <TV_SYNC_handler+0xbc>
sync_end:                
                TMR1->ARR=HPERIOD;
    5286:	4b59      	ldr	r3, [pc, #356]	; (53ec <TV_SYNC_handler+0x1ec>)
    5288:	f241 12c5 	movw	r2, #4549	; 0x11c5
    528c:	62da      	str	r2, [r3, #44]	; 0x2c
                TMR1->CCR1=HPULSE;
    528e:	f44f 72a8 	mov.w	r2, #336	; 0x150
    5292:	635a      	str	r2, [r3, #52]	; 0x34
                flags&=~F_VSYNC;
    5294:	4a56      	ldr	r2, [pc, #344]	; (53f0 <TV_SYNC_handler+0x1f0>)
    5296:	8813      	ldrh	r3, [r2, #0]
    5298:	f023 0302 	bic.w	r3, r3, #2
    529c:	041b      	lsls	r3, r3, #16
    529e:	0c1b      	lsrs	r3, r3, #16
    52a0:	8013      	strh	r3, [r2, #0]
                task++;
    52a2:	4a51      	ldr	r2, [pc, #324]	; (53e8 <TV_SYNC_handler+0x1e8>)
    52a4:	8813      	ldrh	r3, [r2, #0]
    52a6:	3301      	adds	r3, #1
    52a8:	b29b      	uxth	r3, r3
    52aa:	8013      	strh	r3, [r2, #0]
    52ac:	e006      	b.n	52bc <TV_SYNC_handler+0xbc>
            goto sync_end;
            break;
        }//switch(scan_line)
        break;
    case READ_PAD:
        read_gamepad();
    52ae:	f7fc fcf3 	bl	1c98 <read_gamepad>
        task++;
    52b2:	4a4d      	ldr	r2, [pc, #308]	; (53e8 <TV_SYNC_handler+0x1e8>)
    52b4:	8813      	ldrh	r3, [r2, #0]
    52b6:	3301      	adds	r3, #1
    52b8:	b29b      	uxth	r3, r3
    52ba:	8013      	strh	r3, [r2, #0]
                scan_line=0;
            }
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    52bc:	4a4b      	ldr	r2, [pc, #300]	; (53ec <TV_SYNC_handler+0x1ec>)
    52be:	6913      	ldr	r3, [r2, #16]
    52c0:	f023 0301 	bic.w	r3, r3, #1
    52c4:	6113      	str	r3, [r2, #16]
}
    52c6:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    52ca:	4685      	mov	sp, r0
    52cc:	4770      	bx	lr
        if (sound_timer){
    52ce:	4b49      	ldr	r3, [pc, #292]	; (53f4 <TV_SYNC_handler+0x1f4>)
    52d0:	881b      	ldrh	r3, [r3, #0]
    52d2:	b29b      	uxth	r3, r3
    52d4:	b13b      	cbz	r3, 52e6 <TV_SYNC_handler+0xe6>
            sound_timer--;
    52d6:	4a47      	ldr	r2, [pc, #284]	; (53f4 <TV_SYNC_handler+0x1f4>)
    52d8:	8813      	ldrh	r3, [r2, #0]
    52da:	3b01      	subs	r3, #1
    52dc:	b29b      	uxth	r3, r3
    52de:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    52e0:	8813      	ldrh	r3, [r2, #0]
    52e2:	b29b      	uxth	r3, r3
    52e4:	b12b      	cbz	r3, 52f2 <TV_SYNC_handler+0xf2>
        task++;
    52e6:	4a40      	ldr	r2, [pc, #256]	; (53e8 <TV_SYNC_handler+0x1e8>)
    52e8:	8813      	ldrh	r3, [r2, #0]
    52ea:	3301      	adds	r3, #1
    52ec:	b29b      	uxth	r3, r3
    52ee:	8013      	strh	r3, [r2, #0]
        break;    
    52f0:	e7e4      	b.n	52bc <TV_SYNC_handler+0xbc>
                sound_stop();
    52f2:	f7ff f926 	bl	4542 <sound_stop>
    52f6:	e7f6      	b.n	52e6 <TV_SYNC_handler+0xe6>
        if (game_timer){
    52f8:	4b3f      	ldr	r3, [pc, #252]	; (53f8 <TV_SYNC_handler+0x1f8>)
    52fa:	881b      	ldrh	r3, [r3, #0]
    52fc:	b29b      	uxth	r3, r3
    52fe:	b123      	cbz	r3, 530a <TV_SYNC_handler+0x10a>
            game_timer--;
    5300:	4a3d      	ldr	r2, [pc, #244]	; (53f8 <TV_SYNC_handler+0x1f8>)
    5302:	8813      	ldrh	r3, [r2, #0]
    5304:	3b01      	subs	r3, #1
    5306:	b29b      	uxth	r3, r3
    5308:	8013      	strh	r3, [r2, #0]
        task++;
    530a:	4a37      	ldr	r2, [pc, #220]	; (53e8 <TV_SYNC_handler+0x1e8>)
    530c:	8813      	ldrh	r3, [r2, #0]
    530e:	3301      	adds	r3, #1
    5310:	b29b      	uxth	r3, r3
    5312:	8013      	strh	r3, [r2, #0]
        break;
    5314:	e7d2      	b.n	52bc <TV_SYNC_handler+0xbc>
        if (scan_line==video_start){
    5316:	4b32      	ldr	r3, [pc, #200]	; (53e0 <TV_SYNC_handler+0x1e0>)
    5318:	881b      	ldrh	r3, [r3, #0]
    531a:	b21b      	sxth	r3, r3
    531c:	4a37      	ldr	r2, [pc, #220]	; (53fc <TV_SYNC_handler+0x1fc>)
    531e:	8812      	ldrh	r2, [r2, #0]
    5320:	4293      	cmp	r3, r2
    5322:	d1cb      	bne.n	52bc <TV_SYNC_handler+0xbc>
            TMR1->SR&=~TMR_SR_CC2IF;
    5324:	4b31      	ldr	r3, [pc, #196]	; (53ec <TV_SYNC_handler+0x1ec>)
    5326:	691a      	ldr	r2, [r3, #16]
    5328:	f022 0204 	bic.w	r2, r2, #4
    532c:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    532e:	68da      	ldr	r2, [r3, #12]
    5330:	f042 0204 	orr.w	r2, r2, #4
    5334:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    5336:	4a2e      	ldr	r2, [pc, #184]	; (53f0 <TV_SYNC_handler+0x1f0>)
    5338:	8813      	ldrh	r3, [r2, #0]
    533a:	b29b      	uxth	r3, r3
    533c:	f043 0304 	orr.w	r3, r3, #4
    5340:	8013      	strh	r3, [r2, #0]
            task++;
    5342:	4a29      	ldr	r2, [pc, #164]	; (53e8 <TV_SYNC_handler+0x1e8>)
    5344:	8813      	ldrh	r3, [r2, #0]
    5346:	3301      	adds	r3, #1
    5348:	b29b      	uxth	r3, r3
    534a:	8013      	strh	r3, [r2, #0]
            slice=0;
    534c:	2200      	movs	r2, #0
    534e:	4b2c      	ldr	r3, [pc, #176]	; (5400 <TV_SYNC_handler+0x200>)
    5350:	801a      	strh	r2, [r3, #0]
    5352:	e7b3      	b.n	52bc <TV_SYNC_handler+0xbc>
        slice++;
    5354:	4a2a      	ldr	r2, [pc, #168]	; (5400 <TV_SYNC_handler+0x200>)
    5356:	8813      	ldrh	r3, [r2, #0]
    5358:	3301      	adds	r3, #1
    535a:	b29b      	uxth	r3, r3
    535c:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    535e:	4b20      	ldr	r3, [pc, #128]	; (53e0 <TV_SYNC_handler+0x1e0>)
    5360:	881b      	ldrh	r3, [r3, #0]
    5362:	b21b      	sxth	r3, r3
    5364:	4a27      	ldr	r2, [pc, #156]	; (5404 <TV_SYNC_handler+0x204>)
    5366:	8812      	ldrh	r2, [r2, #0]
    5368:	4293      	cmp	r3, r2
    536a:	d1a7      	bne.n	52bc <TV_SYNC_handler+0xbc>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    536c:	4a1f      	ldr	r2, [pc, #124]	; (53ec <TV_SYNC_handler+0x1ec>)
    536e:	68d3      	ldr	r3, [r2, #12]
    5370:	f023 0304 	bic.w	r3, r3, #4
    5374:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    5376:	4a1e      	ldr	r2, [pc, #120]	; (53f0 <TV_SYNC_handler+0x1f0>)
    5378:	8813      	ldrh	r3, [r2, #0]
    537a:	f023 0304 	bic.w	r3, r3, #4
    537e:	041b      	lsls	r3, r3, #16
    5380:	0c1b      	lsrs	r3, r3, #16
    5382:	8013      	strh	r3, [r2, #0]
            task++;
    5384:	4a18      	ldr	r2, [pc, #96]	; (53e8 <TV_SYNC_handler+0x1e8>)
    5386:	8813      	ldrh	r3, [r2, #0]
    5388:	3301      	adds	r3, #1
    538a:	b29b      	uxth	r3, r3
    538c:	8013      	strh	r3, [r2, #0]
    538e:	e795      	b.n	52bc <TV_SYNC_handler+0xbc>
        if (scan_line==271 && !(flags&F_EVEN)){
    5390:	4b13      	ldr	r3, [pc, #76]	; (53e0 <TV_SYNC_handler+0x1e0>)
    5392:	881b      	ldrh	r3, [r3, #0]
    5394:	b21b      	sxth	r3, r3
    5396:	f240 120f 	movw	r2, #271	; 0x10f
    539a:	4293      	cmp	r3, r2
    539c:	d01a      	beq.n	53d4 <TV_SYNC_handler+0x1d4>
            if (scan_line==272){
    539e:	4b10      	ldr	r3, [pc, #64]	; (53e0 <TV_SYNC_handler+0x1e0>)
    53a0:	881b      	ldrh	r3, [r3, #0]
    53a2:	b21b      	sxth	r3, r3
    53a4:	f5b3 7f88 	cmp.w	r3, #272	; 0x110
    53a8:	d188      	bne.n	52bc <TV_SYNC_handler+0xbc>
                TMR1->ARR=SYNC_LINE;
    53aa:	f640 02e2 	movw	r2, #2274	; 0x8e2
    53ae:	4b0f      	ldr	r3, [pc, #60]	; (53ec <TV_SYNC_handler+0x1ec>)
    53b0:	62da      	str	r2, [r3, #44]	; 0x2c
                flags^=F_EVEN;
    53b2:	4a0f      	ldr	r2, [pc, #60]	; (53f0 <TV_SYNC_handler+0x1f0>)
    53b4:	8813      	ldrh	r3, [r2, #0]
    53b6:	b29b      	uxth	r3, r3
    53b8:	f083 0301 	eor.w	r3, r3, #1
    53bc:	8013      	strh	r3, [r2, #0]
                flags|=F_VSYNC;
    53be:	8813      	ldrh	r3, [r2, #0]
    53c0:	b29b      	uxth	r3, r3
    53c2:	f043 0302 	orr.w	r3, r3, #2
    53c6:	8013      	strh	r3, [r2, #0]
                task=VSYNC;
    53c8:	2300      	movs	r3, #0
    53ca:	4a07      	ldr	r2, [pc, #28]	; (53e8 <TV_SYNC_handler+0x1e8>)
    53cc:	8013      	strh	r3, [r2, #0]
                scan_line=0;
    53ce:	4a04      	ldr	r2, [pc, #16]	; (53e0 <TV_SYNC_handler+0x1e0>)
    53d0:	8013      	strh	r3, [r2, #0]
    53d2:	e773      	b.n	52bc <TV_SYNC_handler+0xbc>
        if (scan_line==271 && !(flags&F_EVEN)){
    53d4:	4b06      	ldr	r3, [pc, #24]	; (53f0 <TV_SYNC_handler+0x1f0>)
    53d6:	881b      	ldrh	r3, [r3, #0]
    53d8:	f013 0f01 	tst.w	r3, #1
    53dc:	d0e9      	beq.n	53b2 <TV_SYNC_handler+0x1b2>
    53de:	e7de      	b.n	539e <TV_SYNC_handler+0x19e>
    53e0:	200006e2 	.word	0x200006e2
    53e4:	20004eb4 	.word	0x20004eb4
    53e8:	200006dc 	.word	0x200006dc
    53ec:	40012c00 	.word	0x40012c00
    53f0:	200006de 	.word	0x200006de
    53f4:	20004eb8 	.word	0x20004eb8
    53f8:	20004eb0 	.word	0x20004eb0
    53fc:	20000236 	.word	0x20000236
    5400:	200006e0 	.word	0x200006e0
    5404:	20000238 	.word	0x20000238

00005408 <frame_sync>:

void frame_sync(){
    5408:	b480      	push	{r7}
    540a:	af00      	add	r7, sp, #0
    while (!(flags&F_VSYNC));
    540c:	bf00      	nop
    540e:	4b05      	ldr	r3, [pc, #20]	; (5424 <frame_sync+0x1c>)
    5410:	881b      	ldrh	r3, [r3, #0]
    5412:	b29b      	uxth	r3, r3
    5414:	f003 0302 	and.w	r3, r3, #2
    5418:	2b00      	cmp	r3, #0
    541a:	d0f8      	beq.n	540e <frame_sync+0x6>
}
    541c:	bf00      	nop
    541e:	46bd      	mov	sp, r7
    5420:	bc80      	pop	{r7}
    5422:	4770      	bx	lr
    5424:	200006de 	.word	0x200006de

00005428 <wait_sync_end>:

void wait_sync_end(){
    5428:	b480      	push	{r7}
    542a:	af00      	add	r7, sp, #0
    while (flags&F_VSYNC);
    542c:	bf00      	nop
    542e:	4b05      	ldr	r3, [pc, #20]	; (5444 <wait_sync_end+0x1c>)
    5430:	881b      	ldrh	r3, [r3, #0]
    5432:	b29b      	uxth	r3, r3
    5434:	f003 0302 	and.w	r3, r3, #2
    5438:	2b00      	cmp	r3, #0
    543a:	d1f8      	bne.n	542e <wait_sync_end+0x6>
}
    543c:	bf00      	nop
    543e:	46bd      	mov	sp, r7
    5440:	bc80      	pop	{r7}
    5442:	4770      	bx	lr
    5444:	200006de 	.word	0x200006de

00005448 <set_video_mode>:

void set_video_mode(vmode_t mode){
    5448:	b580      	push	{r7, lr}
    544a:	b082      	sub	sp, #8
    544c:	af00      	add	r7, sp, #0
    544e:	4603      	mov	r3, r0
    5450:	71fb      	strb	r3, [r7, #7]
    frame_sync();
    5452:	f7ff ffd9 	bl	5408 <frame_sync>
    video_mode=mode;
    5456:	4a2a      	ldr	r2, [pc, #168]	; (5500 <set_video_mode+0xb8>)
    5458:	79fb      	ldrb	r3, [r7, #7]
    545a:	7013      	strb	r3, [r2, #0]
    if (mode==VM_BPCHIP) sprite_bpp=FOUR_BPP;else sprite_bpp=ONE_BPP;
    545c:	79fb      	ldrb	r3, [r7, #7]
    545e:	2b00      	cmp	r3, #0
    5460:	d103      	bne.n	546a <set_video_mode+0x22>
    5462:	4b28      	ldr	r3, [pc, #160]	; (5504 <set_video_mode+0xbc>)
    5464:	2202      	movs	r2, #2
    5466:	701a      	strb	r2, [r3, #0]
    5468:	e002      	b.n	5470 <set_video_mode+0x28>
    546a:	4b26      	ldr	r3, [pc, #152]	; (5504 <set_video_mode+0xbc>)
    546c:	2200      	movs	r2, #0
    546e:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    5470:	79fb      	ldrb	r3, [r7, #7]
    5472:	4a25      	ldr	r2, [pc, #148]	; (5508 <set_video_mode+0xc0>)
    5474:	011b      	lsls	r3, r3, #4
    5476:	4413      	add	r3, r2
    5478:	3302      	adds	r3, #2
    547a:	881a      	ldrh	r2, [r3, #0]
    547c:	4b23      	ldr	r3, [pc, #140]	; (550c <set_video_mode+0xc4>)
    547e:	801a      	strh	r2, [r3, #0]
    video_end=video_params[mode].video_end;
    5480:	79fb      	ldrb	r3, [r7, #7]
    5482:	4a21      	ldr	r2, [pc, #132]	; (5508 <set_video_mode+0xc0>)
    5484:	011b      	lsls	r3, r3, #4
    5486:	4413      	add	r3, r2
    5488:	3304      	adds	r3, #4
    548a:	881a      	ldrh	r2, [r3, #0]
    548c:	4b20      	ldr	r3, [pc, #128]	; (5510 <set_video_mode+0xc8>)
    548e:	801a      	strh	r2, [r3, #0]
    left_margin=video_params[mode].left_margin;
    5490:	79fb      	ldrb	r3, [r7, #7]
    5492:	4a1d      	ldr	r2, [pc, #116]	; (5508 <set_video_mode+0xc0>)
    5494:	011b      	lsls	r3, r3, #4
    5496:	4413      	add	r3, r2
    5498:	3306      	adds	r3, #6
    549a:	881a      	ldrh	r2, [r3, #0]
    549c:	4b1d      	ldr	r3, [pc, #116]	; (5514 <set_video_mode+0xcc>)
    549e:	801a      	strh	r2, [r3, #0]
    byte_per_row=video_params[mode].bpr;
    54a0:	79fb      	ldrb	r3, [r7, #7]
    54a2:	4a19      	ldr	r2, [pc, #100]	; (5508 <set_video_mode+0xc0>)
    54a4:	011b      	lsls	r3, r3, #4
    54a6:	4413      	add	r3, r2
    54a8:	3308      	adds	r3, #8
    54aa:	781a      	ldrb	r2, [r3, #0]
    54ac:	4b1a      	ldr	r3, [pc, #104]	; (5518 <set_video_mode+0xd0>)
    54ae:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    54b0:	79fb      	ldrb	r3, [r7, #7]
    54b2:	4a15      	ldr	r2, [pc, #84]	; (5508 <set_video_mode+0xc0>)
    54b4:	011b      	lsls	r3, r3, #4
    54b6:	4413      	add	r3, r2
    54b8:	3309      	adds	r3, #9
    54ba:	781a      	ldrb	r2, [r3, #0]
    54bc:	4b17      	ldr	r3, [pc, #92]	; (551c <set_video_mode+0xd4>)
    54be:	701a      	strb	r2, [r3, #0]
    pixel_delay=video_params[mode].pdly;
    54c0:	79fb      	ldrb	r3, [r7, #7]
    54c2:	4a11      	ldr	r2, [pc, #68]	; (5508 <set_video_mode+0xc0>)
    54c4:	011b      	lsls	r3, r3, #4
    54c6:	4413      	add	r3, r2
    54c8:	330a      	adds	r3, #10
    54ca:	781a      	ldrb	r2, [r3, #0]
    54cc:	4b14      	ldr	r3, [pc, #80]	; (5520 <set_video_mode+0xd8>)
    54ce:	701a      	strb	r2, [r3, #0]
    hres=video_params[mode].hres;
    54d0:	79fb      	ldrb	r3, [r7, #7]
    54d2:	4a0d      	ldr	r2, [pc, #52]	; (5508 <set_video_mode+0xc0>)
    54d4:	011b      	lsls	r3, r3, #4
    54d6:	4413      	add	r3, r2
    54d8:	330c      	adds	r3, #12
    54da:	881b      	ldrh	r3, [r3, #0]
    54dc:	b2da      	uxtb	r2, r3
    54de:	4b11      	ldr	r3, [pc, #68]	; (5524 <set_video_mode+0xdc>)
    54e0:	701a      	strb	r2, [r3, #0]
    vres=video_params[mode].vres;
    54e2:	79fb      	ldrb	r3, [r7, #7]
    54e4:	4a08      	ldr	r2, [pc, #32]	; (5508 <set_video_mode+0xc0>)
    54e6:	011b      	lsls	r3, r3, #4
    54e8:	4413      	add	r3, r2
    54ea:	330e      	adds	r3, #14
    54ec:	881b      	ldrh	r3, [r3, #0]
    54ee:	b2da      	uxtb	r2, r3
    54f0:	4b0d      	ldr	r3, [pc, #52]	; (5528 <set_video_mode+0xe0>)
    54f2:	701a      	strb	r2, [r3, #0]
    gfx_cls();
    54f4:	f7fd f88c 	bl	2610 <gfx_cls>
}
    54f8:	bf00      	nop
    54fa:	3708      	adds	r7, #8
    54fc:	46bd      	mov	sp, r7
    54fe:	bd80      	pop	{r7, pc}
    5500:	200006e4 	.word	0x200006e4
    5504:	200001c4 	.word	0x200001c4
    5508:	000063dc 	.word	0x000063dc
    550c:	20000236 	.word	0x20000236
    5510:	20000238 	.word	0x20000238
    5514:	2000023a 	.word	0x2000023a
    5518:	2000023c 	.word	0x2000023c
    551c:	2000023d 	.word	0x2000023d
    5520:	2000023e 	.word	0x2000023e
    5524:	2000023f 	.word	0x2000023f
    5528:	20000240 	.word	0x20000240

0000552c <get_video_params>:

vmode_params_t* get_video_params(){
    552c:	b480      	push	{r7}
    552e:	af00      	add	r7, sp, #0
    return (vmode_params_t*)&video_params[video_mode];
    5530:	4b04      	ldr	r3, [pc, #16]	; (5544 <get_video_params+0x18>)
    5532:	781b      	ldrb	r3, [r3, #0]
    5534:	011b      	lsls	r3, r3, #4
    5536:	4a04      	ldr	r2, [pc, #16]	; (5548 <get_video_params+0x1c>)
    5538:	4413      	add	r3, r2
}
    553a:	4618      	mov	r0, r3
    553c:	46bd      	mov	sp, r7
    553e:	bc80      	pop	{r7}
    5540:	4770      	bx	lr
    5542:	bf00      	nop
    5544:	200006e4 	.word	0x200006e4
    5548:	000063dc 	.word	0x000063dc

0000554c <game_pause>:

void game_pause(uint16_t frame_count){
    554c:	b480      	push	{r7}
    554e:	b083      	sub	sp, #12
    5550:	af00      	add	r7, sp, #0
    5552:	4603      	mov	r3, r0
    5554:	80fb      	strh	r3, [r7, #6]
    game_timer=frame_count;
    5556:	4a07      	ldr	r2, [pc, #28]	; (5574 <game_pause+0x28>)
    5558:	88fb      	ldrh	r3, [r7, #6]
    555a:	8013      	strh	r3, [r2, #0]
    while (game_timer);
    555c:	bf00      	nop
    555e:	4b05      	ldr	r3, [pc, #20]	; (5574 <game_pause+0x28>)
    5560:	881b      	ldrh	r3, [r3, #0]
    5562:	b29b      	uxth	r3, r3
    5564:	2b00      	cmp	r3, #0
    5566:	d1fa      	bne.n	555e <game_pause+0x12>
}
    5568:	bf00      	nop
    556a:	370c      	adds	r7, #12
    556c:	46bd      	mov	sp, r7
    556e:	bc80      	pop	{r7}
    5570:	4770      	bx	lr
    5572:	bf00      	nop
    5574:	20004eb0 	.word	0x20004eb0

00005578 <micro_pause>:

// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    5578:	b480      	push	{r7}
    557a:	b085      	sub	sp, #20
    557c:	af00      	add	r7, sp, #0
    557e:	6078      	str	r0, [r7, #4]
    uint32_t t0;
    t0=ntsc_ticks+count;
    5580:	4b07      	ldr	r3, [pc, #28]	; (55a0 <micro_pause+0x28>)
    5582:	681a      	ldr	r2, [r3, #0]
    5584:	687b      	ldr	r3, [r7, #4]
    5586:	4413      	add	r3, r2
    5588:	60fb      	str	r3, [r7, #12]
    while (ntsc_ticks<t0);
    558a:	bf00      	nop
    558c:	4b04      	ldr	r3, [pc, #16]	; (55a0 <micro_pause+0x28>)
    558e:	681a      	ldr	r2, [r3, #0]
    5590:	68fb      	ldr	r3, [r7, #12]
    5592:	429a      	cmp	r2, r3
    5594:	d3fa      	bcc.n	558c <micro_pause+0x14>
}
    5596:	bf00      	nop
    5598:	3714      	adds	r7, #20
    559a:	46bd      	mov	sp, r7
    559c:	bc80      	pop	{r7}
    559e:	4770      	bx	lr
    55a0:	20004eb4 	.word	0x20004eb4

000055a4 <usart_config_port>:
static usart_queue_t usart_queue[USART_COUNT];

static usart_t* channels[USART_COUNT]={USART1,USART2,USART3};

// configuration dse broches
void usart_config_port(usart_channel_t channel, gpio_t *port, unsigned flow_ctrl){
    55a4:	b480      	push	{r7}
    55a6:	b085      	sub	sp, #20
    55a8:	af00      	add	r7, sp, #0
    55aa:	4603      	mov	r3, r0
    55ac:	60b9      	str	r1, [r7, #8]
    55ae:	607a      	str	r2, [r7, #4]
    55b0:	73fb      	strb	r3, [r7, #15]
	switch(channel){ // activation du périphérique USART et du PORT
    55b2:	7bfb      	ldrb	r3, [r7, #15]
    55b4:	2b01      	cmp	r3, #1
    55b6:	d045      	beq.n	5644 <usart_config_port+0xa0>
    55b8:	2b02      	cmp	r3, #2
    55ba:	d06c      	beq.n	5696 <usart_config_port+0xf2>
    55bc:	2b00      	cmp	r3, #0
    55be:	d000      	beq.n	55c2 <usart_config_port+0x1e>
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
		}
		break;
	}
}
    55c0:	e092      	b.n	56e8 <usart_config_port+0x144>
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    55c2:	4a4c      	ldr	r2, [pc, #304]	; (56f4 <usart_config_port+0x150>)
    55c4:	4b4b      	ldr	r3, [pc, #300]	; (56f4 <usart_config_port+0x150>)
    55c6:	699b      	ldr	r3, [r3, #24]
    55c8:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    55cc:	f043 0304 	orr.w	r3, r3, #4
    55d0:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    55d2:	687b      	ldr	r3, [r7, #4]
    55d4:	2b01      	cmp	r3, #1
    55d6:	d10b      	bne.n	55f0 <usart_config_port+0x4c>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    55d8:	68bb      	ldr	r3, [r7, #8]
    55da:	685b      	ldr	r3, [r3, #4]
    55dc:	f423 2270 	bic.w	r2, r3, #983040	; 0xf0000
    55e0:	68bb      	ldr	r3, [r7, #8]
    55e2:	605a      	str	r2, [r3, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    55e4:	68bb      	ldr	r3, [r7, #8]
    55e6:	685b      	ldr	r3, [r3, #4]
    55e8:	f443 2220 	orr.w	r2, r3, #655360	; 0xa0000
    55ec:	68bb      	ldr	r3, [r7, #8]
    55ee:	605a      	str	r2, [r3, #4]
		if (port==USART1_PORT){
    55f0:	68bb      	ldr	r3, [r7, #8]
    55f2:	4a41      	ldr	r2, [pc, #260]	; (56f8 <usart_config_port+0x154>)
    55f4:	4293      	cmp	r3, r2
    55f6:	d10c      	bne.n	5612 <usart_config_port+0x6e>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    55f8:	68bb      	ldr	r3, [r7, #8]
    55fa:	685b      	ldr	r3, [r3, #4]
    55fc:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
    5600:	68bb      	ldr	r3, [r7, #8]
    5602:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    5604:	68bb      	ldr	r3, [r7, #8]
    5606:	685b      	ldr	r3, [r3, #4]
    5608:	f043 02a0 	orr.w	r2, r3, #160	; 0xa0
    560c:	68bb      	ldr	r3, [r7, #8]
    560e:	605a      	str	r2, [r3, #4]
		break;
    5610:	e06a      	b.n	56e8 <usart_config_port+0x144>
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    5612:	4a3a      	ldr	r2, [pc, #232]	; (56fc <usart_config_port+0x158>)
    5614:	4b39      	ldr	r3, [pc, #228]	; (56fc <usart_config_port+0x158>)
    5616:	685b      	ldr	r3, [r3, #4]
    5618:	f043 0304 	orr.w	r3, r3, #4
    561c:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    561e:	4a35      	ldr	r2, [pc, #212]	; (56f4 <usart_config_port+0x150>)
    5620:	4b34      	ldr	r3, [pc, #208]	; (56f4 <usart_config_port+0x150>)
    5622:	699b      	ldr	r3, [r3, #24]
    5624:	f043 0308 	orr.w	r3, r3, #8
    5628:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    562a:	68bb      	ldr	r3, [r7, #8]
    562c:	681b      	ldr	r3, [r3, #0]
    562e:	f023 6270 	bic.w	r2, r3, #251658240	; 0xf000000
    5632:	68bb      	ldr	r3, [r7, #8]
    5634:	601a      	str	r2, [r3, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    5636:	68bb      	ldr	r3, [r7, #8]
    5638:	681b      	ldr	r3, [r3, #0]
    563a:	f043 6220 	orr.w	r2, r3, #167772160	; 0xa000000
    563e:	68bb      	ldr	r3, [r7, #8]
    5640:	601a      	str	r2, [r3, #0]
		break;
    5642:	e051      	b.n	56e8 <usart_config_port+0x144>
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    5644:	4a2b      	ldr	r2, [pc, #172]	; (56f4 <usart_config_port+0x150>)
    5646:	4b2b      	ldr	r3, [pc, #172]	; (56f4 <usart_config_port+0x150>)
    5648:	69db      	ldr	r3, [r3, #28]
    564a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
    564e:	61d3      	str	r3, [r2, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    5650:	4a28      	ldr	r2, [pc, #160]	; (56f4 <usart_config_port+0x150>)
    5652:	4b28      	ldr	r3, [pc, #160]	; (56f4 <usart_config_port+0x150>)
    5654:	699b      	ldr	r3, [r3, #24]
    5656:	f043 0304 	orr.w	r3, r3, #4
    565a:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    565c:	687b      	ldr	r3, [r7, #4]
    565e:	2b01      	cmp	r3, #1
    5660:	d10c      	bne.n	567c <usart_config_port+0xd8>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    5662:	68bb      	ldr	r3, [r7, #8]
    5664:	681b      	ldr	r3, [r3, #0]
    5666:	f423 627f 	bic.w	r2, r3, #4080	; 0xff0
    566a:	68bb      	ldr	r3, [r7, #8]
    566c:	601a      	str	r2, [r3, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    566e:	68bb      	ldr	r3, [r7, #8]
    5670:	681b      	ldr	r3, [r3, #0]
    5672:	f443 622a 	orr.w	r2, r3, #2720	; 0xaa0
    5676:	68bb      	ldr	r3, [r7, #8]
    5678:	601a      	str	r2, [r3, #0]
		break;
    567a:	e035      	b.n	56e8 <usart_config_port+0x144>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    567c:	68bb      	ldr	r3, [r7, #8]
    567e:	681b      	ldr	r3, [r3, #0]
    5680:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    5684:	68bb      	ldr	r3, [r7, #8]
    5686:	601a      	str	r2, [r3, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    5688:	68bb      	ldr	r3, [r7, #8]
    568a:	681b      	ldr	r3, [r3, #0]
    568c:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    5690:	68bb      	ldr	r3, [r7, #8]
    5692:	601a      	str	r2, [r3, #0]
		break;
    5694:	e028      	b.n	56e8 <usart_config_port+0x144>
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    5696:	4a17      	ldr	r2, [pc, #92]	; (56f4 <usart_config_port+0x150>)
    5698:	4b16      	ldr	r3, [pc, #88]	; (56f4 <usart_config_port+0x150>)
    569a:	69db      	ldr	r3, [r3, #28]
    569c:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
    56a0:	61d3      	str	r3, [r2, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    56a2:	4a14      	ldr	r2, [pc, #80]	; (56f4 <usart_config_port+0x150>)
    56a4:	4b13      	ldr	r3, [pc, #76]	; (56f4 <usart_config_port+0x150>)
    56a6:	699b      	ldr	r3, [r3, #24]
    56a8:	f043 0308 	orr.w	r3, r3, #8
    56ac:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    56ae:	687b      	ldr	r3, [r7, #4]
    56b0:	2b01      	cmp	r3, #1
    56b2:	d10c      	bne.n	56ce <usart_config_port+0x12a>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    56b4:	68bb      	ldr	r3, [r7, #8]
    56b6:	685b      	ldr	r3, [r3, #4]
    56b8:	f023 220f 	bic.w	r2, r3, #251662080	; 0xf000f00
    56bc:	68bb      	ldr	r3, [r7, #8]
    56be:	605a      	str	r2, [r3, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    56c0:	68bb      	ldr	r3, [r7, #8]
    56c2:	685b      	ldr	r3, [r3, #4]
    56c4:	f043 220a 	orr.w	r2, r3, #167774720	; 0xa000a00
    56c8:	68bb      	ldr	r3, [r7, #8]
    56ca:	605a      	str	r2, [r3, #4]
		break;
    56cc:	e00b      	b.n	56e6 <usart_config_port+0x142>
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    56ce:	68bb      	ldr	r3, [r7, #8]
    56d0:	685b      	ldr	r3, [r3, #4]
    56d2:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    56d6:	68bb      	ldr	r3, [r7, #8]
    56d8:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    56da:	68bb      	ldr	r3, [r7, #8]
    56dc:	685b      	ldr	r3, [r3, #4]
    56de:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    56e2:	68bb      	ldr	r3, [r7, #8]
    56e4:	605a      	str	r2, [r3, #4]
		break;
    56e6:	bf00      	nop
}
    56e8:	bf00      	nop
    56ea:	3714      	adds	r7, #20
    56ec:	46bd      	mov	sp, r7
    56ee:	bc80      	pop	{r7}
    56f0:	4770      	bx	lr
    56f2:	bf00      	nop
    56f4:	40021000 	.word	0x40021000
    56f8:	40010800 	.word	0x40010800
    56fc:	40010000 	.word	0x40010000

00005700 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_channel_t channel, unsigned baud){
    5700:	b480      	push	{r7}
    5702:	b085      	sub	sp, #20
    5704:	af00      	add	r7, sp, #0
    5706:	4603      	mov	r3, r0
    5708:	6039      	str	r1, [r7, #0]
    570a:	71fb      	strb	r3, [r7, #7]
	uint32_t rate;
    if (channel==CHN1){
    570c:	79fb      	ldrb	r3, [r7, #7]
    570e:	2b00      	cmp	r3, #0
    5710:	d110      	bne.n	5734 <usart_set_baud+0x34>
		rate=(FAPB2/baud/16)<<4;
    5712:	4a16      	ldr	r2, [pc, #88]	; (576c <usart_set_baud+0x6c>)
    5714:	683b      	ldr	r3, [r7, #0]
    5716:	fbb2 f3f3 	udiv	r3, r2, r3
    571a:	091b      	lsrs	r3, r3, #4
    571c:	011b      	lsls	r3, r3, #4
    571e:	60fb      	str	r3, [r7, #12]
		rate|=(FAPB2/baud)%16;
    5720:	4a12      	ldr	r2, [pc, #72]	; (576c <usart_set_baud+0x6c>)
    5722:	683b      	ldr	r3, [r7, #0]
    5724:	fbb2 f3f3 	udiv	r3, r2, r3
    5728:	f003 030f 	and.w	r3, r3, #15
    572c:	68fa      	ldr	r2, [r7, #12]
    572e:	4313      	orrs	r3, r2
    5730:	60fb      	str	r3, [r7, #12]
    5732:	e00f      	b.n	5754 <usart_set_baud+0x54>
	}else{
		rate=(FAPB1/baud/16)<<4;
    5734:	4a0e      	ldr	r2, [pc, #56]	; (5770 <usart_set_baud+0x70>)
    5736:	683b      	ldr	r3, [r7, #0]
    5738:	fbb2 f3f3 	udiv	r3, r2, r3
    573c:	091b      	lsrs	r3, r3, #4
    573e:	011b      	lsls	r3, r3, #4
    5740:	60fb      	str	r3, [r7, #12]
		rate|=(FAPB1/baud)%16;
    5742:	4a0b      	ldr	r2, [pc, #44]	; (5770 <usart_set_baud+0x70>)
    5744:	683b      	ldr	r3, [r7, #0]
    5746:	fbb2 f3f3 	udiv	r3, r2, r3
    574a:	f003 030f 	and.w	r3, r3, #15
    574e:	68fa      	ldr	r2, [r7, #12]
    5750:	4313      	orrs	r3, r2
    5752:	60fb      	str	r3, [r7, #12]
	}
	channels[channel]->BRR=rate;
    5754:	79fb      	ldrb	r3, [r7, #7]
    5756:	4a07      	ldr	r2, [pc, #28]	; (5774 <usart_set_baud+0x74>)
    5758:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    575c:	68fa      	ldr	r2, [r7, #12]
    575e:	609a      	str	r2, [r3, #8]
}
    5760:	bf00      	nop
    5762:	3714      	adds	r7, #20
    5764:	46bd      	mov	sp, r7
    5766:	bc80      	pop	{r7}
    5768:	4770      	bx	lr
    576a:	bf00      	nop
    576c:	044463f4 	.word	0x044463f4
    5770:	022231fa 	.word	0x022231fa
    5774:	20000244 	.word	0x20000244

00005778 <usart_comm_dir>:

// direction communication 
void usart_comm_dir(usart_channel_t channel, unsigned direction){
    5778:	b480      	push	{r7}
    577a:	b083      	sub	sp, #12
    577c:	af00      	add	r7, sp, #0
    577e:	4603      	mov	r3, r0
    5780:	6039      	str	r1, [r7, #0]
    5782:	71fb      	strb	r3, [r7, #7]
	channels[channel]->CR1&=USART_CR1_DIR_MASK;
    5784:	79fb      	ldrb	r3, [r7, #7]
    5786:	4a0e      	ldr	r2, [pc, #56]	; (57c0 <usart_comm_dir+0x48>)
    5788:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    578c:	79fa      	ldrb	r2, [r7, #7]
    578e:	490c      	ldr	r1, [pc, #48]	; (57c0 <usart_comm_dir+0x48>)
    5790:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
    5794:	68d2      	ldr	r2, [r2, #12]
    5796:	f022 020c 	bic.w	r2, r2, #12
    579a:	60da      	str	r2, [r3, #12]
	channels[channel]->CR1|=direction<<USART_CR1_DIR_POS;
    579c:	79fb      	ldrb	r3, [r7, #7]
    579e:	4a08      	ldr	r2, [pc, #32]	; (57c0 <usart_comm_dir+0x48>)
    57a0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    57a4:	79fa      	ldrb	r2, [r7, #7]
    57a6:	4906      	ldr	r1, [pc, #24]	; (57c0 <usart_comm_dir+0x48>)
    57a8:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
    57ac:	68d1      	ldr	r1, [r2, #12]
    57ae:	683a      	ldr	r2, [r7, #0]
    57b0:	0092      	lsls	r2, r2, #2
    57b2:	430a      	orrs	r2, r1
    57b4:	60da      	str	r2, [r3, #12]
}
    57b6:	bf00      	nop
    57b8:	370c      	adds	r7, #12
    57ba:	46bd      	mov	sp, r7
    57bc:	bc80      	pop	{r7}
    57be:	4770      	bx	lr
    57c0:	20000244 	.word	0x20000244

000057c4 <usart_open_channel>:


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_channel_t channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    57c4:	b580      	push	{r7, lr}
    57c6:	b084      	sub	sp, #16
    57c8:	af00      	add	r7, sp, #0
    57ca:	60b9      	str	r1, [r7, #8]
    57cc:	607a      	str	r2, [r7, #4]
    57ce:	603b      	str	r3, [r7, #0]
    57d0:	4603      	mov	r3, r0
    57d2:	73fb      	strb	r3, [r7, #15]
	switch(channel){ // activation du périphérique USART et du PORT
    57d4:	7bfb      	ldrb	r3, [r7, #15]
    57d6:	2b01      	cmp	r3, #1
    57d8:	d01b      	beq.n	5812 <usart_open_channel+0x4e>
    57da:	2b02      	cmp	r3, #2
    57dc:	d027      	beq.n	582e <usart_open_channel+0x6a>
    57de:	2b00      	cmp	r3, #0
    57e0:	d133      	bne.n	584a <usart_open_channel+0x86>
	case CHN1:
	  if (port==STD_PORT){
    57e2:	69bb      	ldr	r3, [r7, #24]
    57e4:	2b00      	cmp	r3, #0
    57e6:	d106      	bne.n	57f6 <usart_open_channel+0x32>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    57e8:	7bfb      	ldrb	r3, [r7, #15]
    57ea:	69fa      	ldr	r2, [r7, #28]
    57ec:	4940      	ldr	r1, [pc, #256]	; (58f0 <usart_open_channel+0x12c>)
    57ee:	4618      	mov	r0, r3
    57f0:	f7ff fed8 	bl	55a4 <usart_config_port>
    57f4:	e005      	b.n	5802 <usart_open_channel+0x3e>
		}else{
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    57f6:	7bfb      	ldrb	r3, [r7, #15]
    57f8:	69fa      	ldr	r2, [r7, #28]
    57fa:	493e      	ldr	r1, [pc, #248]	; (58f4 <usart_open_channel+0x130>)
    57fc:	4618      	mov	r0, r3
    57fe:	f7ff fed1 	bl	55a4 <usart_config_port>
		}
		set_int_priority(IRQ_USART1,7);
    5802:	2107      	movs	r1, #7
    5804:	2025      	movs	r0, #37	; 0x25
    5806:	f7fd ffbd 	bl	3784 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    580a:	2025      	movs	r0, #37	; 0x25
    580c:	f7fd ff00 	bl	3610 <enable_interrupt>
		break;
    5810:	e01b      	b.n	584a <usart_open_channel+0x86>
	case CHN2:
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    5812:	7bfb      	ldrb	r3, [r7, #15]
    5814:	69fa      	ldr	r2, [r7, #28]
    5816:	4936      	ldr	r1, [pc, #216]	; (58f0 <usart_open_channel+0x12c>)
    5818:	4618      	mov	r0, r3
    581a:	f7ff fec3 	bl	55a4 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    581e:	2107      	movs	r1, #7
    5820:	2026      	movs	r0, #38	; 0x26
    5822:	f7fd ffaf 	bl	3784 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    5826:	2026      	movs	r0, #38	; 0x26
    5828:	f7fd fef2 	bl	3610 <enable_interrupt>
		break;
    582c:	e00d      	b.n	584a <usart_open_channel+0x86>
	case CHN3:
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    582e:	7bfb      	ldrb	r3, [r7, #15]
    5830:	69fa      	ldr	r2, [r7, #28]
    5832:	4930      	ldr	r1, [pc, #192]	; (58f4 <usart_open_channel+0x130>)
    5834:	4618      	mov	r0, r3
    5836:	f7ff feb5 	bl	55a4 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    583a:	2107      	movs	r1, #7
    583c:	2027      	movs	r0, #39	; 0x27
    583e:	f7fd ffa1 	bl	3784 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    5842:	2027      	movs	r0, #39	; 0x27
    5844:	f7fd fee4 	bl	3610 <enable_interrupt>
		break;
    5848:	bf00      	nop
	}
	if (flow_ctrl==FLOW_HARD){
    584a:	69fb      	ldr	r3, [r7, #28]
    584c:	2b01      	cmp	r3, #1
    584e:	d106      	bne.n	585e <usart_open_channel+0x9a>
		channels[channel]->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    5850:	7bfb      	ldrb	r3, [r7, #15]
    5852:	4a29      	ldr	r2, [pc, #164]	; (58f8 <usart_open_channel+0x134>)
    5854:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    5858:	f44f 7240 	mov.w	r2, #768	; 0x300
    585c:	615a      	str	r2, [r3, #20]
	}
	usart_comm_dir(channel,dir);
    585e:	7bfb      	ldrb	r3, [r7, #15]
    5860:	6839      	ldr	r1, [r7, #0]
    5862:	4618      	mov	r0, r3
    5864:	f7ff ff88 	bl	5778 <usart_comm_dir>
	switch (parity){
    5868:	687b      	ldr	r3, [r7, #4]
    586a:	2b01      	cmp	r3, #1
    586c:	d011      	beq.n	5892 <usart_open_channel+0xce>
    586e:	2b01      	cmp	r3, #1
    5870:	d302      	bcc.n	5878 <usart_open_channel+0xb4>
    5872:	2b02      	cmp	r3, #2
    5874:	d01a      	beq.n	58ac <usart_open_channel+0xe8>
    5876:	e026      	b.n	58c6 <usart_open_channel+0x102>
	case PARITY_NONE:
		channels[channel]->CR1|=USART_CR1_RXNEIE;
    5878:	7bfb      	ldrb	r3, [r7, #15]
    587a:	4a1f      	ldr	r2, [pc, #124]	; (58f8 <usart_open_channel+0x134>)
    587c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    5880:	7bfa      	ldrb	r2, [r7, #15]
    5882:	491d      	ldr	r1, [pc, #116]	; (58f8 <usart_open_channel+0x134>)
    5884:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
    5888:	68d2      	ldr	r2, [r2, #12]
    588a:	f042 0220 	orr.w	r2, r2, #32
    588e:	60da      	str	r2, [r3, #12]
		break;
    5890:	e019      	b.n	58c6 <usart_open_channel+0x102>
	case PARITY_ODD:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    5892:	7bfb      	ldrb	r3, [r7, #15]
    5894:	4a18      	ldr	r2, [pc, #96]	; (58f8 <usart_open_channel+0x134>)
    5896:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    589a:	7bfa      	ldrb	r2, [r7, #15]
    589c:	4916      	ldr	r1, [pc, #88]	; (58f8 <usart_open_channel+0x134>)
    589e:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
    58a2:	68d2      	ldr	r2, [r2, #12]
    58a4:	f442 62e4 	orr.w	r2, r2, #1824	; 0x720
    58a8:	60da      	str	r2, [r3, #12]
		break;
    58aa:	e00c      	b.n	58c6 <usart_open_channel+0x102>
	case PARITY_EVEN:
		channels[channel]->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    58ac:	7bfb      	ldrb	r3, [r7, #15]
    58ae:	4a12      	ldr	r2, [pc, #72]	; (58f8 <usart_open_channel+0x134>)
    58b0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    58b4:	7bfa      	ldrb	r2, [r7, #15]
    58b6:	4910      	ldr	r1, [pc, #64]	; (58f8 <usart_open_channel+0x134>)
    58b8:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
    58bc:	68d2      	ldr	r2, [r2, #12]
    58be:	f442 62a4 	orr.w	r2, r2, #1312	; 0x520
    58c2:	60da      	str	r2, [r3, #12]
		break;
    58c4:	bf00      	nop
    }
	usart_set_baud(channel,baud);
    58c6:	7bfb      	ldrb	r3, [r7, #15]
    58c8:	68b9      	ldr	r1, [r7, #8]
    58ca:	4618      	mov	r0, r3
    58cc:	f7ff ff18 	bl	5700 <usart_set_baud>
    channels[channel]->CR1|=USART_CR1_UE;
    58d0:	7bfb      	ldrb	r3, [r7, #15]
    58d2:	4a09      	ldr	r2, [pc, #36]	; (58f8 <usart_open_channel+0x134>)
    58d4:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    58d8:	7bfa      	ldrb	r2, [r7, #15]
    58da:	4907      	ldr	r1, [pc, #28]	; (58f8 <usart_open_channel+0x134>)
    58dc:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
    58e0:	68d2      	ldr	r2, [r2, #12]
    58e2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    58e6:	60da      	str	r2, [r3, #12]
}
    58e8:	bf00      	nop
    58ea:	3710      	adds	r7, #16
    58ec:	46bd      	mov	sp, r7
    58ee:	bd80      	pop	{r7, pc}
    58f0:	40010800 	.word	0x40010800
    58f4:	40010c00 	.word	0x40010c00
    58f8:	20000244 	.word	0x20000244

000058fc <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_channel_t channel){
    58fc:	b480      	push	{r7}
    58fe:	b083      	sub	sp, #12
    5900:	af00      	add	r7, sp, #0
    5902:	4603      	mov	r3, r0
    5904:	71fb      	strb	r3, [r7, #7]
	return channels[channel]->SR&USART_SR_RXNE;
    5906:	79fb      	ldrb	r3, [r7, #7]
    5908:	4a05      	ldr	r2, [pc, #20]	; (5920 <usart_stat+0x24>)
    590a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    590e:	681b      	ldr	r3, [r3, #0]
    5910:	f003 0320 	and.w	r3, r3, #32
}
    5914:	4618      	mov	r0, r3
    5916:	370c      	adds	r7, #12
    5918:	46bd      	mov	sp, r7
    591a:	bc80      	pop	{r7}
    591c:	4770      	bx	lr
    591e:	bf00      	nop
    5920:	20000244 	.word	0x20000244

00005924 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_channel_t channel){
    5924:	b4b0      	push	{r4, r5, r7}
    5926:	b085      	sub	sp, #20
    5928:	af00      	add	r7, sp, #0
    592a:	4603      	mov	r3, r0
    592c:	71fb      	strb	r3, [r7, #7]
	char c;
	if (usart_queue[channel].head!=usart_queue[channel].tail){
    592e:	79fa      	ldrb	r2, [r7, #7]
    5930:	4925      	ldr	r1, [pc, #148]	; (59c8 <usart_getc+0xa4>)
    5932:	4613      	mov	r3, r2
    5934:	00db      	lsls	r3, r3, #3
    5936:	4413      	add	r3, r2
    5938:	005b      	lsls	r3, r3, #1
    593a:	440b      	add	r3, r1
    593c:	7819      	ldrb	r1, [r3, #0]
    593e:	79fa      	ldrb	r2, [r7, #7]
    5940:	4821      	ldr	r0, [pc, #132]	; (59c8 <usart_getc+0xa4>)
    5942:	4613      	mov	r3, r2
    5944:	00db      	lsls	r3, r3, #3
    5946:	4413      	add	r3, r2
    5948:	005b      	lsls	r3, r3, #1
    594a:	4403      	add	r3, r0
    594c:	3301      	adds	r3, #1
    594e:	781b      	ldrb	r3, [r3, #0]
    5950:	4299      	cmp	r1, r3
    5952:	d032      	beq.n	59ba <usart_getc+0x96>
		c=usart_queue[channel].queue[usart_queue[channel].head++];
    5954:	79f9      	ldrb	r1, [r7, #7]
    5956:	79fa      	ldrb	r2, [r7, #7]
    5958:	481b      	ldr	r0, [pc, #108]	; (59c8 <usart_getc+0xa4>)
    595a:	4613      	mov	r3, r2
    595c:	00db      	lsls	r3, r3, #3
    595e:	4413      	add	r3, r2
    5960:	005b      	lsls	r3, r3, #1
    5962:	4403      	add	r3, r0
    5964:	7818      	ldrb	r0, [r3, #0]
    5966:	1c43      	adds	r3, r0, #1
    5968:	b2dd      	uxtb	r5, r3
    596a:	4c17      	ldr	r4, [pc, #92]	; (59c8 <usart_getc+0xa4>)
    596c:	4613      	mov	r3, r2
    596e:	00db      	lsls	r3, r3, #3
    5970:	4413      	add	r3, r2
    5972:	005b      	lsls	r3, r3, #1
    5974:	4423      	add	r3, r4
    5976:	462a      	mov	r2, r5
    5978:	701a      	strb	r2, [r3, #0]
    597a:	4a13      	ldr	r2, [pc, #76]	; (59c8 <usart_getc+0xa4>)
    597c:	460b      	mov	r3, r1
    597e:	00db      	lsls	r3, r3, #3
    5980:	440b      	add	r3, r1
    5982:	005b      	lsls	r3, r3, #1
    5984:	4413      	add	r3, r2
    5986:	4403      	add	r3, r0
    5988:	3302      	adds	r3, #2
    598a:	781b      	ldrb	r3, [r3, #0]
    598c:	73fb      	strb	r3, [r7, #15]
		usart_queue[channel].head&=QUEUE_MASK;
    598e:	79fa      	ldrb	r2, [r7, #7]
    5990:	79f9      	ldrb	r1, [r7, #7]
    5992:	480d      	ldr	r0, [pc, #52]	; (59c8 <usart_getc+0xa4>)
    5994:	460b      	mov	r3, r1
    5996:	00db      	lsls	r3, r3, #3
    5998:	440b      	add	r3, r1
    599a:	005b      	lsls	r3, r3, #1
    599c:	4403      	add	r3, r0
    599e:	781b      	ldrb	r3, [r3, #0]
    59a0:	f003 030f 	and.w	r3, r3, #15
    59a4:	b2d8      	uxtb	r0, r3
    59a6:	4908      	ldr	r1, [pc, #32]	; (59c8 <usart_getc+0xa4>)
    59a8:	4613      	mov	r3, r2
    59aa:	00db      	lsls	r3, r3, #3
    59ac:	4413      	add	r3, r2
    59ae:	005b      	lsls	r3, r3, #1
    59b0:	440b      	add	r3, r1
    59b2:	4602      	mov	r2, r0
    59b4:	701a      	strb	r2, [r3, #0]
		return c;
    59b6:	7bfb      	ldrb	r3, [r7, #15]
    59b8:	e000      	b.n	59bc <usart_getc+0x98>
	}else{
		return 0;
    59ba:	2300      	movs	r3, #0
	}
		
}
    59bc:	4618      	mov	r0, r3
    59be:	3714      	adds	r7, #20
    59c0:	46bd      	mov	sp, r7
    59c2:	bcb0      	pop	{r4, r5, r7}
    59c4:	4770      	bx	lr
    59c6:	bf00      	nop
    59c8:	200006e8 	.word	0x200006e8

000059cc <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_channel_t channel,unsigned dly){
    59cc:	b580      	push	{r7, lr}
    59ce:	b084      	sub	sp, #16
    59d0:	af00      	add	r7, sp, #0
    59d2:	4603      	mov	r3, r0
    59d4:	6039      	str	r1, [r7, #0]
    59d6:	71fb      	strb	r3, [r7, #7]
	unsigned t0=ntsc_ticks+dly;
    59d8:	4b0c      	ldr	r3, [pc, #48]	; (5a0c <usart_getc_dly+0x40>)
    59da:	681a      	ldr	r2, [r3, #0]
    59dc:	683b      	ldr	r3, [r7, #0]
    59de:	4413      	add	r3, r2
    59e0:	60bb      	str	r3, [r7, #8]
	char c;

	while ((ntsc_ticks<t0) && !(c=usart_getc(channel)));
    59e2:	bf00      	nop
    59e4:	4b09      	ldr	r3, [pc, #36]	; (5a0c <usart_getc_dly+0x40>)
    59e6:	681a      	ldr	r2, [r3, #0]
    59e8:	68bb      	ldr	r3, [r7, #8]
    59ea:	429a      	cmp	r2, r3
    59ec:	d208      	bcs.n	5a00 <usart_getc_dly+0x34>
    59ee:	79fb      	ldrb	r3, [r7, #7]
    59f0:	4618      	mov	r0, r3
    59f2:	f7ff ff97 	bl	5924 <usart_getc>
    59f6:	4603      	mov	r3, r0
    59f8:	73fb      	strb	r3, [r7, #15]
    59fa:	7bfb      	ldrb	r3, [r7, #15]
    59fc:	2b00      	cmp	r3, #0
    59fe:	d0f1      	beq.n	59e4 <usart_getc_dly+0x18>
	return c;
    5a00:	7bfb      	ldrb	r3, [r7, #15]
}
    5a02:	4618      	mov	r0, r3
    5a04:	3710      	adds	r7, #16
    5a06:	46bd      	mov	sp, r7
    5a08:	bd80      	pop	{r7, pc}
    5a0a:	bf00      	nop
    5a0c:	20004eb4 	.word	0x20004eb4

00005a10 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_channel_t channel, char c){
    5a10:	b480      	push	{r7}
    5a12:	b083      	sub	sp, #12
    5a14:	af00      	add	r7, sp, #0
    5a16:	4603      	mov	r3, r0
    5a18:	460a      	mov	r2, r1
    5a1a:	71fb      	strb	r3, [r7, #7]
    5a1c:	4613      	mov	r3, r2
    5a1e:	71bb      	strb	r3, [r7, #6]
	//attend que dr soit vide
	while (!(channels[channel]->SR&USART_SR_TXE));
    5a20:	bf00      	nop
    5a22:	79fb      	ldrb	r3, [r7, #7]
    5a24:	4a09      	ldr	r2, [pc, #36]	; (5a4c <usart_putc+0x3c>)
    5a26:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    5a2a:	681b      	ldr	r3, [r3, #0]
    5a2c:	f003 0380 	and.w	r3, r3, #128	; 0x80
    5a30:	2b00      	cmp	r3, #0
    5a32:	d0f6      	beq.n	5a22 <usart_putc+0x12>
	channels[channel]->DR=c;
    5a34:	79fb      	ldrb	r3, [r7, #7]
    5a36:	4a05      	ldr	r2, [pc, #20]	; (5a4c <usart_putc+0x3c>)
    5a38:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    5a3c:	79ba      	ldrb	r2, [r7, #6]
    5a3e:	605a      	str	r2, [r3, #4]
}
    5a40:	bf00      	nop
    5a42:	370c      	adds	r7, #12
    5a44:	46bd      	mov	sp, r7
    5a46:	bc80      	pop	{r7}
    5a48:	4770      	bx	lr
    5a4a:	bf00      	nop
    5a4c:	20000244 	.word	0x20000244

00005a50 <usart_cts>:


int usart_cts(usart_channel_t channel){
    5a50:	b480      	push	{r7}
    5a52:	b085      	sub	sp, #20
    5a54:	af00      	add	r7, sp, #0
    5a56:	4603      	mov	r3, r0
    5a58:	71fb      	strb	r3, [r7, #7]
	int cts;
	switch (channel){
    5a5a:	79fb      	ldrb	r3, [r7, #7]
    5a5c:	2b01      	cmp	r3, #1
    5a5e:	d009      	beq.n	5a74 <usart_cts+0x24>
    5a60:	2b02      	cmp	r3, #2
    5a62:	d00d      	beq.n	5a80 <usart_cts+0x30>
    5a64:	2b00      	cmp	r3, #0
    5a66:	d111      	bne.n	5a8c <usart_cts+0x3c>
		case CHN1:
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    5a68:	4b0b      	ldr	r3, [pc, #44]	; (5a98 <usart_cts+0x48>)
    5a6a:	689b      	ldr	r3, [r3, #8]
    5a6c:	f403 6300 	and.w	r3, r3, #2048	; 0x800
    5a70:	60fb      	str	r3, [r7, #12]
			break;
    5a72:	e00b      	b.n	5a8c <usart_cts+0x3c>
		case CHN2:
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    5a74:	4b08      	ldr	r3, [pc, #32]	; (5a98 <usart_cts+0x48>)
    5a76:	689b      	ldr	r3, [r3, #8]
    5a78:	f003 0301 	and.w	r3, r3, #1
    5a7c:	60fb      	str	r3, [r7, #12]
			break;
    5a7e:	e005      	b.n	5a8c <usart_cts+0x3c>
		case CHN3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    5a80:	4b06      	ldr	r3, [pc, #24]	; (5a9c <usart_cts+0x4c>)
    5a82:	689b      	ldr	r3, [r3, #8]
    5a84:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
    5a88:	60fb      	str	r3, [r7, #12]
			break;
    5a8a:	bf00      	nop
	}
	return cts;
    5a8c:	68fb      	ldr	r3, [r7, #12]
}
    5a8e:	4618      	mov	r0, r3
    5a90:	3714      	adds	r7, #20
    5a92:	46bd      	mov	sp, r7
    5a94:	bc80      	pop	{r7}
    5a96:	4770      	bx	lr
    5a98:	40010800 	.word	0x40010800
    5a9c:	40010c00 	.word	0x40010c00

00005aa0 <usart_print>:

void usart_print(usart_channel_t channel, const char *str){
    5aa0:	b580      	push	{r7, lr}
    5aa2:	b082      	sub	sp, #8
    5aa4:	af00      	add	r7, sp, #0
    5aa6:	4603      	mov	r3, r0
    5aa8:	6039      	str	r1, [r7, #0]
    5aaa:	71fb      	strb	r3, [r7, #7]
	 while (*str) usart_putc(channel,*str++);
    5aac:	e008      	b.n	5ac0 <usart_print+0x20>
    5aae:	683b      	ldr	r3, [r7, #0]
    5ab0:	1c5a      	adds	r2, r3, #1
    5ab2:	603a      	str	r2, [r7, #0]
    5ab4:	781a      	ldrb	r2, [r3, #0]
    5ab6:	79fb      	ldrb	r3, [r7, #7]
    5ab8:	4611      	mov	r1, r2
    5aba:	4618      	mov	r0, r3
    5abc:	f7ff ffa8 	bl	5a10 <usart_putc>
    5ac0:	683b      	ldr	r3, [r7, #0]
    5ac2:	781b      	ldrb	r3, [r3, #0]
    5ac4:	2b00      	cmp	r3, #0
    5ac6:	d1f2      	bne.n	5aae <usart_print+0xe>
}
    5ac8:	bf00      	nop
    5aca:	3708      	adds	r7, #8
    5acc:	46bd      	mov	sp, r7
    5ace:	bd80      	pop	{r7, pc}

00005ad0 <USART1_handler>:


void __attribute__((__interrupt__))USART1_handler(){
    5ad0:	4668      	mov	r0, sp
    5ad2:	f020 0107 	bic.w	r1, r0, #7
    5ad6:	468d      	mov	sp, r1
    5ad8:	b481      	push	{r0, r7}
    5ada:	af00      	add	r7, sp, #0
		if (USART1->SR&USART_SR_RXNE){
    5adc:	4b0f      	ldr	r3, [pc, #60]	; (5b1c <USART1_handler+0x4c>)
    5ade:	681b      	ldr	r3, [r3, #0]
    5ae0:	f003 0320 	and.w	r3, r3, #32
    5ae4:	2b00      	cmp	r3, #0
    5ae6:	d013      	beq.n	5b10 <USART1_handler+0x40>
				usart_queue[CHN1].queue[usart_queue[CHN1].tail++]=USART1->DR;
    5ae8:	4b0d      	ldr	r3, [pc, #52]	; (5b20 <USART1_handler+0x50>)
    5aea:	785b      	ldrb	r3, [r3, #1]
    5aec:	1c5a      	adds	r2, r3, #1
    5aee:	b2d1      	uxtb	r1, r2
    5af0:	4a0b      	ldr	r2, [pc, #44]	; (5b20 <USART1_handler+0x50>)
    5af2:	7051      	strb	r1, [r2, #1]
    5af4:	4619      	mov	r1, r3
    5af6:	4b09      	ldr	r3, [pc, #36]	; (5b1c <USART1_handler+0x4c>)
    5af8:	685b      	ldr	r3, [r3, #4]
    5afa:	b2da      	uxtb	r2, r3
    5afc:	4b08      	ldr	r3, [pc, #32]	; (5b20 <USART1_handler+0x50>)
    5afe:	440b      	add	r3, r1
    5b00:	709a      	strb	r2, [r3, #2]
				usart_queue[CHN1].tail&=QUEUE_MASK;
    5b02:	4b07      	ldr	r3, [pc, #28]	; (5b20 <USART1_handler+0x50>)
    5b04:	785b      	ldrb	r3, [r3, #1]
    5b06:	f003 030f 	and.w	r3, r3, #15
    5b0a:	b2da      	uxtb	r2, r3
    5b0c:	4b04      	ldr	r3, [pc, #16]	; (5b20 <USART1_handler+0x50>)
    5b0e:	705a      	strb	r2, [r3, #1]
		}
}
    5b10:	bf00      	nop
    5b12:	46bd      	mov	sp, r7
    5b14:	bc81      	pop	{r0, r7}
    5b16:	4685      	mov	sp, r0
    5b18:	4770      	bx	lr
    5b1a:	bf00      	nop
    5b1c:	40013800 	.word	0x40013800
    5b20:	200006e8 	.word	0x200006e8

00005b24 <USART2_handler>:

void __attribute__((__interrupt__))USART2_handler(){
    5b24:	4668      	mov	r0, sp
    5b26:	f020 0107 	bic.w	r1, r0, #7
    5b2a:	468d      	mov	sp, r1
    5b2c:	b481      	push	{r0, r7}
    5b2e:	af00      	add	r7, sp, #0
		if (USART1->SR&USART_SR_RXNE){
    5b30:	4b0f      	ldr	r3, [pc, #60]	; (5b70 <USART2_handler+0x4c>)
    5b32:	681b      	ldr	r3, [r3, #0]
    5b34:	f003 0320 	and.w	r3, r3, #32
    5b38:	2b00      	cmp	r3, #0
    5b3a:	d013      	beq.n	5b64 <USART2_handler+0x40>
				usart_queue[CHN2].queue[usart_queue[CHN2].tail++]=USART2->DR;
    5b3c:	4b0d      	ldr	r3, [pc, #52]	; (5b74 <USART2_handler+0x50>)
    5b3e:	7cdb      	ldrb	r3, [r3, #19]
    5b40:	1c5a      	adds	r2, r3, #1
    5b42:	b2d1      	uxtb	r1, r2
    5b44:	4a0b      	ldr	r2, [pc, #44]	; (5b74 <USART2_handler+0x50>)
    5b46:	74d1      	strb	r1, [r2, #19]
    5b48:	4619      	mov	r1, r3
    5b4a:	4b0b      	ldr	r3, [pc, #44]	; (5b78 <USART2_handler+0x54>)
    5b4c:	685b      	ldr	r3, [r3, #4]
    5b4e:	b2da      	uxtb	r2, r3
    5b50:	4b08      	ldr	r3, [pc, #32]	; (5b74 <USART2_handler+0x50>)
    5b52:	440b      	add	r3, r1
    5b54:	751a      	strb	r2, [r3, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    5b56:	4b07      	ldr	r3, [pc, #28]	; (5b74 <USART2_handler+0x50>)
    5b58:	7cdb      	ldrb	r3, [r3, #19]
    5b5a:	f003 030f 	and.w	r3, r3, #15
    5b5e:	b2da      	uxtb	r2, r3
    5b60:	4b04      	ldr	r3, [pc, #16]	; (5b74 <USART2_handler+0x50>)
    5b62:	74da      	strb	r2, [r3, #19]
		}
}
    5b64:	bf00      	nop
    5b66:	46bd      	mov	sp, r7
    5b68:	bc81      	pop	{r0, r7}
    5b6a:	4685      	mov	sp, r0
    5b6c:	4770      	bx	lr
    5b6e:	bf00      	nop
    5b70:	40013800 	.word	0x40013800
    5b74:	200006e8 	.word	0x200006e8
    5b78:	40004400 	.word	0x40004400

00005b7c <USART3_handler>:

void __attribute__((__interrupt__))USART3_handler(){
    5b7c:	4668      	mov	r0, sp
    5b7e:	f020 0107 	bic.w	r1, r0, #7
    5b82:	468d      	mov	sp, r1
    5b84:	b481      	push	{r0, r7}
    5b86:	af00      	add	r7, sp, #0
		if (USART1->SR&USART_SR_RXNE){
    5b88:	4b10      	ldr	r3, [pc, #64]	; (5bcc <USART3_handler+0x50>)
    5b8a:	681b      	ldr	r3, [r3, #0]
    5b8c:	f003 0320 	and.w	r3, r3, #32
    5b90:	2b00      	cmp	r3, #0
    5b92:	d015      	beq.n	5bc0 <USART3_handler+0x44>
				usart_queue[CHN2].queue[usart_queue[CHN3].tail++]=USART3->DR;
    5b94:	4b0e      	ldr	r3, [pc, #56]	; (5bd0 <USART3_handler+0x54>)
    5b96:	f893 3025 	ldrb.w	r3, [r3, #37]	; 0x25
    5b9a:	1c5a      	adds	r2, r3, #1
    5b9c:	b2d1      	uxtb	r1, r2
    5b9e:	4a0c      	ldr	r2, [pc, #48]	; (5bd0 <USART3_handler+0x54>)
    5ba0:	f882 1025 	strb.w	r1, [r2, #37]	; 0x25
    5ba4:	4619      	mov	r1, r3
    5ba6:	4b0b      	ldr	r3, [pc, #44]	; (5bd4 <USART3_handler+0x58>)
    5ba8:	685b      	ldr	r3, [r3, #4]
    5baa:	b2da      	uxtb	r2, r3
    5bac:	4b08      	ldr	r3, [pc, #32]	; (5bd0 <USART3_handler+0x54>)
    5bae:	440b      	add	r3, r1
    5bb0:	751a      	strb	r2, [r3, #20]
				usart_queue[CHN2].tail&=QUEUE_MASK;
    5bb2:	4b07      	ldr	r3, [pc, #28]	; (5bd0 <USART3_handler+0x54>)
    5bb4:	7cdb      	ldrb	r3, [r3, #19]
    5bb6:	f003 030f 	and.w	r3, r3, #15
    5bba:	b2da      	uxtb	r2, r3
    5bbc:	4b04      	ldr	r3, [pc, #16]	; (5bd0 <USART3_handler+0x54>)
    5bbe:	74da      	strb	r2, [r3, #19]
		}
}
    5bc0:	bf00      	nop
    5bc2:	46bd      	mov	sp, r7
    5bc4:	bc81      	pop	{r0, r7}
    5bc6:	4685      	mov	sp, r0
    5bc8:	4770      	bx	lr
    5bca:	bf00      	nop
    5bcc:	40013800 	.word	0x40013800
    5bd0:	200006e8 	.word	0x200006e8
    5bd4:	40004800 	.word	0x40004800
