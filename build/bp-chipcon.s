
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 15 4a 00 00     .P. 1...=....J..
      10:	15 4a 00 00 15 4a 00 00 15 4a 00 00 15 4a 00 00     .J...J...J...J..
      20:	15 4a 00 00 15 4a 00 00 15 4a 00 00 55 02 00 00     .J...J...J..U...
      30:	15 4a 00 00 15 4a 00 00 5b 02 00 00 61 02 00 00     .J...J..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 4d 44 00 00     g...m...y...MD..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 15 4a 00 00 15 4a 00 00 b5 02 00 00     .....J...J......
      80:	15 4a 00 00 15 4a 00 00 15 4a 00 00 15 4a 00 00     .J...J...J...J..
      90:	15 4a 00 00 15 4a 00 00 15 4a 00 00 bb 02 00 00     .J...J...J......
      a0:	15 4a 00 00 fd 52 00 00 15 4a 00 00 fd 51 00 00     .J...R...J...Q..
      b0:	ed 46 00 00 cd 02 00 00 d3 02 00 00 15 4a 00 00     .F...........J..
      c0:	15 4a 00 00 15 4a 00 00 15 4a 00 00 15 4a 00 00     .J...J...J...J..
      d0:	15 4a 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .J..............
      e0:	15 4a 00 00 15 4a 00 00 15 4a 00 00 15 4a 00 00     .J...J...J...J..
      f0:	15 4a 00 00 15 4a 00 00 15 4a 00 00 15 4a 00 00     .J...J...J...J..
     100:	15 4a 00 00 15 4a 00 00 15 4a 00 00 15 4a 00 00     .J...J...J...J..
     110:	15 4a 00 00 15 4a 00 00 15 4a 00 00 15 4a 00 00     .J...J...J...J..
     120:	15 4a 00 00 15 4a 00 00 15 4a 00 00 15 4a 00 00     .J...J...J...J..

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
     18e:	f003 fa04 	bl	359a <main>
}
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000210 	.word	0x20000210
     1a0:	20004e4a 	.word	0x20004e4a
     1a4:	0000b788 	.word	0x0000b788
     1a8:	20000000 	.word	0x20000000
     1ac:	20000210 	.word	0x20000210
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
     1dc:	f004 fc22 	bl	4a24 <print_fault>
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
     1f4:	f004 fc16 	bl	4a24 <print_fault>
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
     20c:	f004 fc0a 	bl	4a24 <print_fault>
}
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
		print_fault("hard fault  ",adr);
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f004 fc05 	bl	4a24 <print_fault>
}
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00006220 	.word	0x00006220
     230:	00006238 	.word	0x00006238
     234:	00006244 	.word	0x00006244
     238:	00006254 	.word	0x00006254

0000023c <NMI_handler>:
_default_handler(NMI_handler) // 2
     23c:	f004 fbea 	bl	4a14 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     242:	f004 fbe7 	bl	4a14 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     248:	f004 fbe4 	bl	4a14 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     24e:	f004 fbe1 	bl	4a14 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
_default_handler(SVC_handler) // 11
     254:	f004 fbde 	bl	4a14 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     25a:	f004 fbdb 	bl	4a14 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
_default_handler(STK_handler) // 15
     260:	f004 fbd8 	bl	4a14 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     266:	f004 fbd5 	bl	4a14 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
_default_handler(PVD_handler) // 1
     26c:	f004 fbd2 	bl	4a14 <reset_mcu>
     270:	bf00      	nop
_default_handler(RTC_handler) // 2
     272:	f004 fbcf 	bl	4a14 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     278:	f004 fbcc 	bl	4a14 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     27e:	f004 fbc9 	bl	4a14 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
_default_handler(RCC_handler) // 5
     284:	f004 fbc6 	bl	4a14 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     28a:	f004 fbc3 	bl	4a14 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     290:	f004 fbc0 	bl	4a14 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     296:	f004 fbbd 	bl	4a14 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     29c:	f004 fbba 	bl	4a14 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     2a2:	f004 fbb7 	bl	4a14 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     2a8:	f004 fbb4 	bl	4a14 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     2ae:	f004 fbb1 	bl	4a14 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     2b4:	f004 fbae 	bl	4a14 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     2ba:	f004 fbab 	bl	4a14 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     2c0:	f004 fba8 	bl	4a14 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     2c6:	f004 fba5 	bl	4a14 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     2cc:	f004 fba2 	bl	4a14 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     2d2:	f004 fb9f 	bl	4a14 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
_default_handler(USART1_handler) // 37
     2d8:	f004 fb9c 	bl	4a14 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
_default_handler(USART2_handler) // 38
     2de:	f004 fb99 	bl	4a14 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
_default_handler(USART3_handler) // 39
     2e4:	f004 fb96 	bl	4a14 <reset_mcu>
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
// stockage temporaire
static uint8_t block[32];

uint8_t game_ram[GAME_SPACE];

void print_vms(const char *msg){
     3c0:	b580      	push	{r7, lr}
     3c2:	b084      	sub	sp, #16
     3c4:	af00      	add	r7, sp, #0
     3c6:	6078      	str	r0, [r7, #4]
	new_line();
     3c8:	f004 fba4 	bl	4b14 <new_line>
	select_font(FONT_ASCII);
     3cc:	2002      	movs	r0, #2
     3ce:	f004 fb91 	bl	4af4 <select_font>
	print(msg);
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f004 fcea 	bl	4dac <print>
	print("PC:");
     3d8:	4824      	ldr	r0, [pc, #144]	; (46c <print_vms+0xac>)
     3da:	f004 fce7 	bl	4dac <print>
	print_hex(vms.pc-2);
     3de:	4b24      	ldr	r3, [pc, #144]	; (470 <print_vms+0xb0>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f004 fd10 	bl	4e0c <print_int>
	print_hex(vms.b2);
     3ec:	4b20      	ldr	r3, [pc, #128]	; (470 <print_vms+0xb0>)
     3ee:	7ddb      	ldrb	r3, [r3, #23]
     3f0:	2110      	movs	r1, #16
     3f2:	4618      	mov	r0, r3
     3f4:	f004 fd0a 	bl	4e0c <print_int>
	print_hex(vms.b1);
     3f8:	4b1d      	ldr	r3, [pc, #116]	; (470 <print_vms+0xb0>)
     3fa:	7d9b      	ldrb	r3, [r3, #22]
     3fc:	2110      	movs	r1, #16
     3fe:	4618      	mov	r0, r3
     400:	f004 fd04 	bl	4e0c <print_int>
	new_line();
     404:	f004 fb86 	bl	4b14 <new_line>
	print("I:");
     408:	481a      	ldr	r0, [pc, #104]	; (474 <print_vms+0xb4>)
     40a:	f004 fccf 	bl	4dac <print>
	print_hex(vms.ix);
     40e:	4b18      	ldr	r3, [pc, #96]	; (470 <print_vms+0xb0>)
     410:	885b      	ldrh	r3, [r3, #2]
     412:	2110      	movs	r1, #16
     414:	4618      	mov	r0, r3
     416:	f004 fcf9 	bl	4e0c <print_int>
	print(" SP:");
     41a:	4817      	ldr	r0, [pc, #92]	; (478 <print_vms+0xb8>)
     41c:	f004 fcc6 	bl	4dac <print>
	print_hex(vms.sp);
     420:	4b13      	ldr	r3, [pc, #76]	; (470 <print_vms+0xb0>)
     422:	791b      	ldrb	r3, [r3, #4]
     424:	2110      	movs	r1, #16
     426:	4618      	mov	r0, r3
     428:	f004 fcf0 	bl	4e0c <print_int>
	new_line();
     42c:	f004 fb72 	bl	4b14 <new_line>
	print("var[]:");
     430:	4812      	ldr	r0, [pc, #72]	; (47c <print_vms+0xbc>)
     432:	f004 fcbb 	bl	4dac <print>
	for (int i=0;i<16;i++){
     436:	2300      	movs	r3, #0
     438:	60fb      	str	r3, [r7, #12]
     43a:	e00b      	b.n	454 <print_vms+0x94>
		print_hex(vms.var[i]);
     43c:	4a0c      	ldr	r2, [pc, #48]	; (470 <print_vms+0xb0>)
     43e:	68fb      	ldr	r3, [r7, #12]
     440:	4413      	add	r3, r2
     442:	3306      	adds	r3, #6
     444:	781b      	ldrb	r3, [r3, #0]
     446:	2110      	movs	r1, #16
     448:	4618      	mov	r0, r3
     44a:	f004 fcdf 	bl	4e0c <print_int>
	for (int i=0;i<16;i++){
     44e:	68fb      	ldr	r3, [r7, #12]
     450:	3301      	adds	r3, #1
     452:	60fb      	str	r3, [r7, #12]
     454:	68fb      	ldr	r3, [r7, #12]
     456:	2b0f      	cmp	r3, #15
     458:	ddf0      	ble.n	43c <print_vms+0x7c>
	}
	new_line();
     45a:	f004 fb5b 	bl	4b14 <new_line>
	prompt_btn();
     45e:	f004 fdf5 	bl	504c <prompt_btn>
}
     462:	bf00      	nop
     464:	3710      	adds	r7, #16
     466:	46bd      	mov	sp, r7
     468:	bd80      	pop	{r7, pc}
     46a:	bf00      	nop
     46c:	00005bec 	.word	0x00005bec
     470:	20000210 	.word	0x20000210
     474:	00005bf0 	.word	0x00005bf0
     478:	00005bf4 	.word	0x00005bf4
     47c:	00005bfc 	.word	0x00005bfc

00000480 <srand>:

}
*/
static uint32_t state=1;

void srand(unsigned n){
     480:	b480      	push	{r7}
     482:	b083      	sub	sp, #12
     484:	af00      	add	r7, sp, #0
     486:	6078      	str	r0, [r7, #4]
	state=n;
     488:	4a03      	ldr	r2, [pc, #12]	; (498 <srand+0x18>)
     48a:	687b      	ldr	r3, [r7, #4]
     48c:	6013      	str	r3, [r2, #0]
}
     48e:	bf00      	nop
     490:	370c      	adds	r7, #12
     492:	46bd      	mov	sp, r7
     494:	bc80      	pop	{r7}
     496:	4770      	bx	lr
     498:	20000004 	.word	0x20000004

0000049c <rand>:

int rand(){
     49c:	b480      	push	{r7}
     49e:	b083      	sub	sp, #12
     4a0:	af00      	add	r7, sp, #0
	uint32_t x;
	x=state;
     4a2:	4b0e      	ldr	r3, [pc, #56]	; (4dc <rand+0x40>)
     4a4:	681b      	ldr	r3, [r3, #0]
     4a6:	607b      	str	r3, [r7, #4]
	x^=x<<13;
     4a8:	687b      	ldr	r3, [r7, #4]
     4aa:	035b      	lsls	r3, r3, #13
     4ac:	687a      	ldr	r2, [r7, #4]
     4ae:	4053      	eors	r3, r2
     4b0:	607b      	str	r3, [r7, #4]
	x^=x>>17;
     4b2:	687b      	ldr	r3, [r7, #4]
     4b4:	0c5b      	lsrs	r3, r3, #17
     4b6:	687a      	ldr	r2, [r7, #4]
     4b8:	4053      	eors	r3, r2
     4ba:	607b      	str	r3, [r7, #4]
	x^=x<<5;
     4bc:	687b      	ldr	r3, [r7, #4]
     4be:	015b      	lsls	r3, r3, #5
     4c0:	687a      	ldr	r2, [r7, #4]
     4c2:	4053      	eors	r3, r2
     4c4:	607b      	str	r3, [r7, #4]
	state=x;
     4c6:	4a05      	ldr	r2, [pc, #20]	; (4dc <rand+0x40>)
     4c8:	687b      	ldr	r3, [r7, #4]
     4ca:	6013      	str	r3, [r2, #0]
	return x&0x7fffffff; 
     4cc:	687b      	ldr	r3, [r7, #4]
     4ce:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
}
     4d2:	4618      	mov	r0, r3
     4d4:	370c      	adds	r7, #12
     4d6:	46bd      	mov	sp, r7
     4d8:	bc80      	pop	{r7}
     4da:	4770      	bx	lr
     4dc:	20000004 	.word	0x20000004

000004e0 <chip_vm>:


//  CHIP8/SCHIP/XOCHIP  virtual machine
uint8_t chip_vm(uint16_t program_address, int debug){
     4e0:	b590      	push	{r4, r7, lr}
     4e2:	b08f      	sub	sp, #60	; 0x3c
     4e4:	af02      	add	r7, sp, #8
     4e6:	4603      	mov	r3, r0
     4e8:	6039      	str	r1, [r7, #0]
     4ea:	80fb      	strh	r3, [r7, #6]
	uint8_t x,y,n;
	uint16_t code;
	char buffer[24];
	vms.pc=program_address;
     4ec:	4ab6      	ldr	r2, [pc, #728]	; (7c8 <chip_vm+0x2e8>)
     4ee:	88fb      	ldrh	r3, [r7, #6]
     4f0:	8013      	strh	r3, [r2, #0]
	vms.sp=0;
     4f2:	4bb5      	ldr	r3, [pc, #724]	; (7c8 <chip_vm+0x2e8>)
     4f4:	2200      	movs	r2, #0
     4f6:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     4f8:	4bb3      	ldr	r3, [pc, #716]	; (7c8 <chip_vm+0x2e8>)
     4fa:	2200      	movs	r2, #0
     4fc:	805a      	strh	r2, [r3, #2]
 	while (1){
		//if (joystick_break()) return CHIP_EXIT_OK;
		_get_opcode(vms.pc);
     4fe:	4bb2      	ldr	r3, [pc, #712]	; (7c8 <chip_vm+0x2e8>)
     500:	881b      	ldrh	r3, [r3, #0]
     502:	461a      	mov	r2, r3
     504:	4bb1      	ldr	r3, [pc, #708]	; (7cc <chip_vm+0x2ec>)
     506:	5c9a      	ldrb	r2, [r3, r2]
     508:	4baf      	ldr	r3, [pc, #700]	; (7c8 <chip_vm+0x2e8>)
     50a:	759a      	strb	r2, [r3, #22]
     50c:	4bae      	ldr	r3, [pc, #696]	; (7c8 <chip_vm+0x2e8>)
     50e:	881b      	ldrh	r3, [r3, #0]
     510:	3301      	adds	r3, #1
     512:	4aae      	ldr	r2, [pc, #696]	; (7cc <chip_vm+0x2ec>)
     514:	5cd2      	ldrb	r2, [r2, r3]
     516:	4bac      	ldr	r3, [pc, #688]	; (7c8 <chip_vm+0x2e8>)
     518:	75da      	strb	r2, [r3, #23]
		if (debug){
     51a:	683b      	ldr	r3, [r7, #0]
     51c:	2b00      	cmp	r3, #0
     51e:	d022      	beq.n	566 <chip_vm+0x86>
			debug_print(itoa(vms.pc,buffer,16));
     520:	4ba9      	ldr	r3, [pc, #676]	; (7c8 <chip_vm+0x2e8>)
     522:	881b      	ldrh	r3, [r3, #0]
     524:	4618      	mov	r0, r3
     526:	f107 030c 	add.w	r3, r7, #12
     52a:	2210      	movs	r2, #16
     52c:	4619      	mov	r1, r3
     52e:	f001 fe25 	bl	217c <itoa>
     532:	4603      	mov	r3, r0
     534:	4619      	mov	r1, r3
     536:	48a6      	ldr	r0, [pc, #664]	; (7d0 <chip_vm+0x2f0>)
     538:	f005 fb3e 	bl	5bb8 <usart_print>
			debug_print(itoa((vms.b1<<8)+vms.b2,buffer,16));
     53c:	4ba2      	ldr	r3, [pc, #648]	; (7c8 <chip_vm+0x2e8>)
     53e:	7d9b      	ldrb	r3, [r3, #22]
     540:	021b      	lsls	r3, r3, #8
     542:	4aa1      	ldr	r2, [pc, #644]	; (7c8 <chip_vm+0x2e8>)
     544:	7dd2      	ldrb	r2, [r2, #23]
     546:	4413      	add	r3, r2
     548:	f107 010c 	add.w	r1, r7, #12
     54c:	2210      	movs	r2, #16
     54e:	4618      	mov	r0, r3
     550:	f001 fe14 	bl	217c <itoa>
     554:	4603      	mov	r3, r0
     556:	4619      	mov	r1, r3
     558:	489d      	ldr	r0, [pc, #628]	; (7d0 <chip_vm+0x2f0>)
     55a:	f005 fb2d 	bl	5bb8 <usart_print>
			debug_print("\n");
     55e:	499d      	ldr	r1, [pc, #628]	; (7d4 <chip_vm+0x2f4>)
     560:	489b      	ldr	r0, [pc, #620]	; (7d0 <chip_vm+0x2f0>)
     562:	f005 fb29 	bl	5bb8 <usart_print>
		}
		vms.pc+=2;
     566:	4b98      	ldr	r3, [pc, #608]	; (7c8 <chip_vm+0x2e8>)
     568:	881b      	ldrh	r3, [r3, #0]
     56a:	3302      	adds	r3, #2
     56c:	b29a      	uxth	r2, r3
     56e:	4b96      	ldr	r3, [pc, #600]	; (7c8 <chip_vm+0x2e8>)
     570:	801a      	strh	r2, [r3, #0]
		x=rx(vms.b1);
     572:	4b95      	ldr	r3, [pc, #596]	; (7c8 <chip_vm+0x2e8>)
     574:	7d9b      	ldrb	r3, [r3, #22]
     576:	f003 030f 	and.w	r3, r3, #15
     57a:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
		y=ry(vms.b2);
     57e:	4b92      	ldr	r3, [pc, #584]	; (7c8 <chip_vm+0x2e8>)
     580:	7ddb      	ldrb	r3, [r3, #23]
     582:	091b      	lsrs	r3, r3, #4
     584:	f887 302e 	strb.w	r3, [r7, #46]	; 0x2e
	    switch (vms.b1>>4){
     588:	4b8f      	ldr	r3, [pc, #572]	; (7c8 <chip_vm+0x2e8>)
     58a:	7d9b      	ldrb	r3, [r3, #22]
     58c:	091b      	lsrs	r3, r3, #4
     58e:	b2db      	uxtb	r3, r3
     590:	2b0f      	cmp	r3, #15
     592:	d8b4      	bhi.n	4fe <chip_vm+0x1e>
     594:	a201      	add	r2, pc, #4	; (adr r2, 59c <chip_vm+0xbc>)
     596:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     59a:	bf00      	nop
     59c:	000005dd 	.word	0x000005dd
     5a0:	00000713 	.word	0x00000713
     5a4:	0000074b 	.word	0x0000074b
     5a8:	000007a3 	.word	0x000007a3
     5ac:	000007dd 	.word	0x000007dd
     5b0:	00000801 	.word	0x00000801
     5b4:	000008c5 	.word	0x000008c5
     5b8:	000008d9 	.word	0x000008d9
     5bc:	00000923 	.word	0x00000923
     5c0:	00000b6f 	.word	0x00000b6f
     5c4:	00000e5f 	.word	0x00000e5f
     5c8:	00000e99 	.word	0x00000e99
     5cc:	00000edd 	.word	0x00000edd
     5d0:	00000efd 	.word	0x00000efd
     5d4:	00001005 	.word	0x00001005
     5d8:	00001075 	.word	0x00001075
		case 0:
		    if ((vms.b1|vms.b2)==0){
     5dc:	4b7a      	ldr	r3, [pc, #488]	; (7c8 <chip_vm+0x2e8>)
     5de:	7d9a      	ldrb	r2, [r3, #22]
     5e0:	4b79      	ldr	r3, [pc, #484]	; (7c8 <chip_vm+0x2e8>)
     5e2:	7ddb      	ldrb	r3, [r3, #23]
     5e4:	4313      	orrs	r3, r2
     5e6:	b2db      	uxtb	r3, r3
     5e8:	2b00      	cmp	r3, #0
     5ea:	f000 8749 	beq.w	1480 <chip_vm+0xfa0>
				//NOP 
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     5ee:	4b76      	ldr	r3, [pc, #472]	; (7c8 <chip_vm+0x2e8>)
     5f0:	7ddb      	ldrb	r3, [r3, #23]
     5f2:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     5f6:	2bc0      	cmp	r3, #192	; 0xc0
     5f8:	d109      	bne.n	60e <chip_vm+0x12e>
				gfx_scroll_down(vms.b2&0xf); 
     5fa:	4b73      	ldr	r3, [pc, #460]	; (7c8 <chip_vm+0x2e8>)
     5fc:	7ddb      	ldrb	r3, [r3, #23]
     5fe:	f003 030f 	and.w	r3, r3, #15
     602:	b2db      	uxtb	r3, r3
     604:	4618      	mov	r0, r3
     606:	f002 f82d 	bl	2664 <gfx_scroll_down>
					set_video_mode(VM_BPCHIP);
					break;
				default:
					return CHIP_BAD_OPCODE;
			}//switch(b2)
			break;
     60a:	f000 bf39 	b.w	1480 <chip_vm+0xfa0>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; XO-CHIP, BP-CHIP
     60e:	4b6e      	ldr	r3, [pc, #440]	; (7c8 <chip_vm+0x2e8>)
     610:	7ddb      	ldrb	r3, [r3, #23]
     612:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     616:	2bd0      	cmp	r3, #208	; 0xd0
     618:	d109      	bne.n	62e <chip_vm+0x14e>
				gfx_scroll_up(vms.b2&0xf);					
     61a:	4b6b      	ldr	r3, [pc, #428]	; (7c8 <chip_vm+0x2e8>)
     61c:	7ddb      	ldrb	r3, [r3, #23]
     61e:	f003 030f 	and.w	r3, r3, #15
     622:	b2db      	uxtb	r3, r3
     624:	4618      	mov	r0, r3
     626:	f001 ffe3 	bl	25f0 <gfx_scroll_up>
			break;
     62a:	f000 bf29 	b.w	1480 <chip_vm+0xfa0>
			}else switch(vms.b2){
     62e:	4b66      	ldr	r3, [pc, #408]	; (7c8 <chip_vm+0x2e8>)
     630:	7ddb      	ldrb	r3, [r3, #23]
     632:	3be0      	subs	r3, #224	; 0xe0
     634:	2b1f      	cmp	r3, #31
     636:	d866      	bhi.n	706 <chip_vm+0x226>
     638:	a201      	add	r2, pc, #4	; (adr r2, 640 <chip_vm+0x160>)
     63a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     63e:	bf00      	nop
     640:	000006c1 	.word	0x000006c1
     644:	00000707 	.word	0x00000707
     648:	00000707 	.word	0x00000707
     64c:	00000707 	.word	0x00000707
     650:	00000707 	.word	0x00000707
     654:	00000707 	.word	0x00000707
     658:	00000707 	.word	0x00000707
     65c:	00000707 	.word	0x00000707
     660:	00000707 	.word	0x00000707
     664:	00000707 	.word	0x00000707
     668:	00000707 	.word	0x00000707
     66c:	00000707 	.word	0x00000707
     670:	00000707 	.word	0x00000707
     674:	00000707 	.word	0x00000707
     678:	000006c7 	.word	0x000006c7
     67c:	00000707 	.word	0x00000707
     680:	00000707 	.word	0x00000707
     684:	00000707 	.word	0x00000707
     688:	00000707 	.word	0x00000707
     68c:	00000707 	.word	0x00000707
     690:	00000707 	.word	0x00000707
     694:	00000707 	.word	0x00000707
     698:	00000707 	.word	0x00000707
     69c:	00000707 	.word	0x00000707
     6a0:	00000707 	.word	0x00000707
     6a4:	00000707 	.word	0x00000707
     6a8:	000006ff 	.word	0x000006ff
     6ac:	000006e1 	.word	0x000006e1
     6b0:	000006e9 	.word	0x000006e9
     6b4:	000006f1 	.word	0x000006f1
     6b8:	0000070d 	.word	0x0000070d
     6bc:	000006f7 	.word	0x000006f7
					gfx_cls();
     6c0:	f001 ff3a 	bl	2538 <gfx_cls>
					break;
     6c4:	e023      	b.n	70e <chip_vm+0x22e>
					vms.pc=vms.stack[vms.sp--];
     6c6:	4b40      	ldr	r3, [pc, #256]	; (7c8 <chip_vm+0x2e8>)
     6c8:	791b      	ldrb	r3, [r3, #4]
     6ca:	1e5a      	subs	r2, r3, #1
     6cc:	b2d1      	uxtb	r1, r2
     6ce:	4a3e      	ldr	r2, [pc, #248]	; (7c8 <chip_vm+0x2e8>)
     6d0:	7111      	strb	r1, [r2, #4]
     6d2:	4a3d      	ldr	r2, [pc, #244]	; (7c8 <chip_vm+0x2e8>)
     6d4:	330c      	adds	r3, #12
     6d6:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     6da:	4b3b      	ldr	r3, [pc, #236]	; (7c8 <chip_vm+0x2e8>)
     6dc:	801a      	strh	r2, [r3, #0]
					break;
     6de:	e016      	b.n	70e <chip_vm+0x22e>
					gfx_scroll_right(4);
     6e0:	2004      	movs	r0, #4
     6e2:	f002 f849 	bl	2778 <gfx_scroll_right>
					break;
     6e6:	e012      	b.n	70e <chip_vm+0x22e>
					gfx_scroll_left(4);
     6e8:	2004      	movs	r0, #4
     6ea:	f002 f803 	bl	26f4 <gfx_scroll_left>
					break;
     6ee:	e00e      	b.n	70e <chip_vm+0x22e>
					return CHIP_EXIT_OK;
     6f0:	2301      	movs	r3, #1
     6f2:	f000 bed7 	b.w	14a4 <chip_vm+0xfc4>
					set_video_mode(VM_SCHIP);
     6f6:	2001      	movs	r0, #1
     6f8:	f004 ff70 	bl	55dc <set_video_mode>
					break; 
     6fc:	e007      	b.n	70e <chip_vm+0x22e>
					set_video_mode(VM_BPCHIP);
     6fe:	2000      	movs	r0, #0
     700:	f004 ff6c 	bl	55dc <set_video_mode>
					break;
     704:	e003      	b.n	70e <chip_vm+0x22e>
					return CHIP_BAD_OPCODE;
     706:	2302      	movs	r3, #2
     708:	f000 becc 	b.w	14a4 <chip_vm+0xfc4>
					break; 
     70c:	bf00      	nop
			break;
     70e:	f000 beb7 	b.w	1480 <chip_vm+0xfa0>
		case 0x1: // 1NNN JP label  ;saut vers 'label'  adresse=2*NNN
			vms.pc=caddr(vms.b1,vms.b2);
     712:	4b2d      	ldr	r3, [pc, #180]	; (7c8 <chip_vm+0x2e8>)
     714:	7d9b      	ldrb	r3, [r3, #22]
     716:	021b      	lsls	r3, r3, #8
     718:	b21a      	sxth	r2, r3
     71a:	4b2b      	ldr	r3, [pc, #172]	; (7c8 <chip_vm+0x2e8>)
     71c:	7ddb      	ldrb	r3, [r3, #23]
     71e:	b21b      	sxth	r3, r3
     720:	4313      	orrs	r3, r2
     722:	b21b      	sxth	r3, r3
     724:	b29b      	uxth	r3, r3
     726:	f3c3 030b 	ubfx	r3, r3, #0, #12
     72a:	b29a      	uxth	r2, r3
     72c:	4b26      	ldr	r3, [pc, #152]	; (7c8 <chip_vm+0x2e8>)
     72e:	801a      	strh	r2, [r3, #0]
			if (video_mode==VM_BPCHIP){
     730:	4b29      	ldr	r3, [pc, #164]	; (7d8 <chip_vm+0x2f8>)
     732:	781b      	ldrb	r3, [r3, #0]
     734:	2b00      	cmp	r3, #0
     736:	f040 86a6 	bne.w	1486 <chip_vm+0xfa6>
				vms.pc<<=1;
     73a:	4b23      	ldr	r3, [pc, #140]	; (7c8 <chip_vm+0x2e8>)
     73c:	881b      	ldrh	r3, [r3, #0]
     73e:	005b      	lsls	r3, r3, #1
     740:	b29a      	uxth	r2, r3
     742:	4b21      	ldr	r3, [pc, #132]	; (7c8 <chip_vm+0x2e8>)
     744:	801a      	strh	r2, [r3, #0]
			}
			break;
     746:	f000 be9e 	b.w	1486 <chip_vm+0xfa6>
		case 0x2: // 2NNN  CALL label  ; appelle la sous-routine 'label' adresse=2*NNN
			vms.stack[++vms.sp]=vms.pc;
     74a:	4b1f      	ldr	r3, [pc, #124]	; (7c8 <chip_vm+0x2e8>)
     74c:	791b      	ldrb	r3, [r3, #4]
     74e:	3301      	adds	r3, #1
     750:	b2da      	uxtb	r2, r3
     752:	4b1d      	ldr	r3, [pc, #116]	; (7c8 <chip_vm+0x2e8>)
     754:	711a      	strb	r2, [r3, #4]
     756:	4b1c      	ldr	r3, [pc, #112]	; (7c8 <chip_vm+0x2e8>)
     758:	791b      	ldrb	r3, [r3, #4]
     75a:	4618      	mov	r0, r3
     75c:	4b1a      	ldr	r3, [pc, #104]	; (7c8 <chip_vm+0x2e8>)
     75e:	8819      	ldrh	r1, [r3, #0]
     760:	4a19      	ldr	r2, [pc, #100]	; (7c8 <chip_vm+0x2e8>)
     762:	f100 030c 	add.w	r3, r0, #12
     766:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     76a:	4b17      	ldr	r3, [pc, #92]	; (7c8 <chip_vm+0x2e8>)
     76c:	7d9b      	ldrb	r3, [r3, #22]
     76e:	021b      	lsls	r3, r3, #8
     770:	b21a      	sxth	r2, r3
     772:	4b15      	ldr	r3, [pc, #84]	; (7c8 <chip_vm+0x2e8>)
     774:	7ddb      	ldrb	r3, [r3, #23]
     776:	b21b      	sxth	r3, r3
     778:	4313      	orrs	r3, r2
     77a:	b21b      	sxth	r3, r3
     77c:	b29b      	uxth	r3, r3
     77e:	f3c3 030b 	ubfx	r3, r3, #0, #12
     782:	b29a      	uxth	r2, r3
     784:	4b10      	ldr	r3, [pc, #64]	; (7c8 <chip_vm+0x2e8>)
     786:	801a      	strh	r2, [r3, #0]
			if (video_mode==VM_BPCHIP){
     788:	4b13      	ldr	r3, [pc, #76]	; (7d8 <chip_vm+0x2f8>)
     78a:	781b      	ldrb	r3, [r3, #0]
     78c:	2b00      	cmp	r3, #0
     78e:	f040 867d 	bne.w	148c <chip_vm+0xfac>
				vms.pc<<=1;
     792:	4b0d      	ldr	r3, [pc, #52]	; (7c8 <chip_vm+0x2e8>)
     794:	881b      	ldrh	r3, [r3, #0]
     796:	005b      	lsls	r3, r3, #1
     798:	b29a      	uxth	r2, r3
     79a:	4b0b      	ldr	r3, [pc, #44]	; (7c8 <chip_vm+0x2e8>)
     79c:	801a      	strh	r2, [r3, #0]
			}
			break;
     79e:	f000 be75 	b.w	148c <chip_vm+0xfac>
		case 0x3: // 3XKK   SE VX, KK  ;saute l'instruction suivante si VX == KK
			if (vms.var[x]==vms.b2) vms.pc+=2;
     7a2:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     7a6:	4a08      	ldr	r2, [pc, #32]	; (7c8 <chip_vm+0x2e8>)
     7a8:	4413      	add	r3, r2
     7aa:	799a      	ldrb	r2, [r3, #6]
     7ac:	4b06      	ldr	r3, [pc, #24]	; (7c8 <chip_vm+0x2e8>)
     7ae:	7ddb      	ldrb	r3, [r3, #23]
     7b0:	429a      	cmp	r2, r3
     7b2:	f040 866e 	bne.w	1492 <chip_vm+0xfb2>
     7b6:	4b04      	ldr	r3, [pc, #16]	; (7c8 <chip_vm+0x2e8>)
     7b8:	881b      	ldrh	r3, [r3, #0]
     7ba:	3302      	adds	r3, #2
     7bc:	b29a      	uxth	r2, r3
     7be:	4b02      	ldr	r3, [pc, #8]	; (7c8 <chip_vm+0x2e8>)
     7c0:	801a      	strh	r2, [r3, #0]
			break;
     7c2:	f000 be66 	b.w	1492 <chip_vm+0xfb2>
     7c6:	bf00      	nop
     7c8:	20000210 	.word	0x20000210
     7cc:	200006b4 	.word	0x200006b4
     7d0:	40013800 	.word	0x40013800
     7d4:	00005c04 	.word	0x00005c04
     7d8:	200006b0 	.word	0x200006b0
		case 0x4: // 4XKK  SNE VX,VY  ;Saute l'instruction suivante si VX <> KK
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     7dc:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     7e0:	4abd      	ldr	r2, [pc, #756]	; (ad8 <chip_vm+0x5f8>)
     7e2:	4413      	add	r3, r2
     7e4:	799a      	ldrb	r2, [r3, #6]
     7e6:	4bbc      	ldr	r3, [pc, #752]	; (ad8 <chip_vm+0x5f8>)
     7e8:	7ddb      	ldrb	r3, [r3, #23]
     7ea:	429a      	cmp	r2, r3
     7ec:	f000 8654 	beq.w	1498 <chip_vm+0xfb8>
     7f0:	4bb9      	ldr	r3, [pc, #740]	; (ad8 <chip_vm+0x5f8>)
     7f2:	881b      	ldrh	r3, [r3, #0]
     7f4:	3302      	adds	r3, #2
     7f6:	b29a      	uxth	r2, r3
     7f8:	4bb7      	ldr	r3, [pc, #732]	; (ad8 <chip_vm+0x5f8>)
     7fa:	801a      	strh	r2, [r3, #0]
			break;
     7fc:	f000 be4c 	b.w	1498 <chip_vm+0xfb8>
		case 0x5:
			switch(vms.b2&0xf){
     800:	4bb5      	ldr	r3, [pc, #724]	; (ad8 <chip_vm+0x5f8>)
     802:	7ddb      	ldrb	r3, [r3, #23]
     804:	f003 030f 	and.w	r3, r3, #15
     808:	2b02      	cmp	r3, #2
     80a:	d018      	beq.n	83e <chip_vm+0x35e>
     80c:	2b03      	cmp	r3, #3
     80e:	d036      	beq.n	87e <chip_vm+0x39e>
     810:	2b00      	cmp	r3, #0
     812:	d001      	beq.n	818 <chip_vm+0x338>
				break;
			case 3: // 5XY3   load VX..VY from adress pointed by I, I not incremented ; XO-CHIP, BP-CHIP
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
				break;
			}
			break;
     814:	f000 be44 	b.w	14a0 <chip_vm+0xfc0>
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     818:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     81c:	4aae      	ldr	r2, [pc, #696]	; (ad8 <chip_vm+0x5f8>)
     81e:	4413      	add	r3, r2
     820:	799a      	ldrb	r2, [r3, #6]
     822:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     826:	49ac      	ldr	r1, [pc, #688]	; (ad8 <chip_vm+0x5f8>)
     828:	440b      	add	r3, r1
     82a:	799b      	ldrb	r3, [r3, #6]
     82c:	429a      	cmp	r2, r3
     82e:	d146      	bne.n	8be <chip_vm+0x3de>
     830:	4ba9      	ldr	r3, [pc, #676]	; (ad8 <chip_vm+0x5f8>)
     832:	881b      	ldrh	r3, [r3, #0]
     834:	3302      	adds	r3, #2
     836:	b29a      	uxth	r2, r3
     838:	4ba7      	ldr	r3, [pc, #668]	; (ad8 <chip_vm+0x5f8>)
     83a:	801a      	strh	r2, [r3, #0]
				break;
     83c:	e03f      	b.n	8be <chip_vm+0x3de>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     83e:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     842:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     846:	429a      	cmp	r2, r3
     848:	d202      	bcs.n	850 <chip_vm+0x370>
     84a:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     84e:	e001      	b.n	854 <chip_vm+0x374>
     850:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     854:	4aa0      	ldr	r2, [pc, #640]	; (ad8 <chip_vm+0x5f8>)
     856:	4413      	add	r3, r2
     858:	1d98      	adds	r0, r3, #6
     85a:	4b9f      	ldr	r3, [pc, #636]	; (ad8 <chip_vm+0x5f8>)
     85c:	885b      	ldrh	r3, [r3, #2]
     85e:	461a      	mov	r2, r3
     860:	4b9e      	ldr	r3, [pc, #632]	; (adc <chip_vm+0x5fc>)
     862:	18d1      	adds	r1, r2, r3
     864:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     868:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     86c:	1ad3      	subs	r3, r2, r3
     86e:	2b00      	cmp	r3, #0
     870:	bfb8      	it	lt
     872:	425b      	neglt	r3, r3
     874:	3301      	adds	r3, #1
     876:	461a      	mov	r2, r3
     878:	f001 fb93 	bl	1fa2 <move>
				break;
     87c:	e020      	b.n	8c0 <chip_vm+0x3e0>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     87e:	4b96      	ldr	r3, [pc, #600]	; (ad8 <chip_vm+0x5f8>)
     880:	885b      	ldrh	r3, [r3, #2]
     882:	461a      	mov	r2, r3
     884:	4b95      	ldr	r3, [pc, #596]	; (adc <chip_vm+0x5fc>)
     886:	18d0      	adds	r0, r2, r3
     888:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     88c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     890:	429a      	cmp	r2, r3
     892:	d202      	bcs.n	89a <chip_vm+0x3ba>
     894:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     898:	e001      	b.n	89e <chip_vm+0x3be>
     89a:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     89e:	4a8e      	ldr	r2, [pc, #568]	; (ad8 <chip_vm+0x5f8>)
     8a0:	4413      	add	r3, r2
     8a2:	1d99      	adds	r1, r3, #6
     8a4:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     8a8:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     8ac:	1ad3      	subs	r3, r2, r3
     8ae:	2b00      	cmp	r3, #0
     8b0:	bfb8      	it	lt
     8b2:	425b      	neglt	r3, r3
     8b4:	3301      	adds	r3, #1
     8b6:	461a      	mov	r2, r3
     8b8:	f001 fb73 	bl	1fa2 <move>
				break;
     8bc:	e000      	b.n	8c0 <chip_vm+0x3e0>
				break;
     8be:	bf00      	nop
			break;
     8c0:	f000 bdee 	b.w	14a0 <chip_vm+0xfc0>
		case 0x6: // 6XKK   LD VX,KK  ; VX := KK
			vms.var[x]=vms.b2;
     8c4:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     8c8:	4a83      	ldr	r2, [pc, #524]	; (ad8 <chip_vm+0x5f8>)
     8ca:	7dd1      	ldrb	r1, [r2, #23]
     8cc:	4a82      	ldr	r2, [pc, #520]	; (ad8 <chip_vm+0x5f8>)
     8ce:	4413      	add	r3, r2
     8d0:	460a      	mov	r2, r1
     8d2:	719a      	strb	r2, [r3, #6]
			break;
     8d4:	f000 bde4 	b.w	14a0 <chip_vm+0xfc0>
		case 0x7: // 7XKK   ADD VX,KK  ; VX := VX + KK
		    n=(vms.var[x]+vms.b2)>255;
     8d8:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     8dc:	4a7e      	ldr	r2, [pc, #504]	; (ad8 <chip_vm+0x5f8>)
     8de:	4413      	add	r3, r2
     8e0:	799b      	ldrb	r3, [r3, #6]
     8e2:	461a      	mov	r2, r3
     8e4:	4b7c      	ldr	r3, [pc, #496]	; (ad8 <chip_vm+0x5f8>)
     8e6:	7ddb      	ldrb	r3, [r3, #23]
     8e8:	4413      	add	r3, r2
     8ea:	2bff      	cmp	r3, #255	; 0xff
     8ec:	bfcc      	ite	gt
     8ee:	2301      	movgt	r3, #1
     8f0:	2300      	movle	r3, #0
     8f2:	b2db      	uxtb	r3, r3
     8f4:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
			vms.var[x]+=vms.b2;
     8f8:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     8fc:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     900:	4975      	ldr	r1, [pc, #468]	; (ad8 <chip_vm+0x5f8>)
     902:	440a      	add	r2, r1
     904:	7991      	ldrb	r1, [r2, #6]
     906:	4a74      	ldr	r2, [pc, #464]	; (ad8 <chip_vm+0x5f8>)
     908:	7dd2      	ldrb	r2, [r2, #23]
     90a:	440a      	add	r2, r1
     90c:	b2d1      	uxtb	r1, r2
     90e:	4a72      	ldr	r2, [pc, #456]	; (ad8 <chip_vm+0x5f8>)
     910:	4413      	add	r3, r2
     912:	460a      	mov	r2, r1
     914:	719a      	strb	r2, [r3, #6]
			vms.var[15]=n;
     916:	4a70      	ldr	r2, [pc, #448]	; (ad8 <chip_vm+0x5f8>)
     918:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     91c:	7553      	strb	r3, [r2, #21]
			break;
     91e:	f000 bdbf 	b.w	14a0 <chip_vm+0xfc0>
		case 0x8: 
			switch(vms.b2&0xf){
     922:	4b6d      	ldr	r3, [pc, #436]	; (ad8 <chip_vm+0x5f8>)
     924:	7ddb      	ldrb	r3, [r3, #23]
     926:	f003 030f 	and.w	r3, r3, #15
     92a:	2b0e      	cmp	r3, #14
     92c:	f200 811a 	bhi.w	b64 <chip_vm+0x684>
     930:	a201      	add	r2, pc, #4	; (adr r2, 938 <chip_vm+0x458>)
     932:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     936:	bf00      	nop
     938:	00000975 	.word	0x00000975
     93c:	0000098d 	.word	0x0000098d
     940:	000009b3 	.word	0x000009b3
     944:	000009d9 	.word	0x000009d9
     948:	000009ff 	.word	0x000009ff
     94c:	00000a53 	.word	0x00000a53
     950:	00000aa3 	.word	0x00000aa3
     954:	00000ae1 	.word	0x00000ae1
     958:	00000b65 	.word	0x00000b65
     95c:	00000b65 	.word	0x00000b65
     960:	00000b65 	.word	0x00000b65
     964:	00000b65 	.word	0x00000b65
     968:	00000b65 	.word	0x00000b65
     96c:	00000b65 	.word	0x00000b65
     970:	00000b31 	.word	0x00000b31
			case 0: // 8XY0   LD VX, VY  ; VX := VY
				vms.var[x]=vms.var[y];
     974:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     978:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     97c:	4956      	ldr	r1, [pc, #344]	; (ad8 <chip_vm+0x5f8>)
     97e:	440a      	add	r2, r1
     980:	7991      	ldrb	r1, [r2, #6]
     982:	4a55      	ldr	r2, [pc, #340]	; (ad8 <chip_vm+0x5f8>)
     984:	4413      	add	r3, r2
     986:	460a      	mov	r2, r1
     988:	719a      	strb	r2, [r3, #6]
				break;
     98a:	e0ee      	b.n	b6a <chip_vm+0x68a>
			case 1: // 8XY1  OR VX, VY  ; VX := VX OR VY
				vms.var[x]|=vms.var[y];
     98c:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     990:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     994:	4950      	ldr	r1, [pc, #320]	; (ad8 <chip_vm+0x5f8>)
     996:	440a      	add	r2, r1
     998:	7991      	ldrb	r1, [r2, #6]
     99a:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     99e:	484e      	ldr	r0, [pc, #312]	; (ad8 <chip_vm+0x5f8>)
     9a0:	4402      	add	r2, r0
     9a2:	7992      	ldrb	r2, [r2, #6]
     9a4:	430a      	orrs	r2, r1
     9a6:	b2d1      	uxtb	r1, r2
     9a8:	4a4b      	ldr	r2, [pc, #300]	; (ad8 <chip_vm+0x5f8>)
     9aa:	4413      	add	r3, r2
     9ac:	460a      	mov	r2, r1
     9ae:	719a      	strb	r2, [r3, #6]
				break;
     9b0:	e0db      	b.n	b6a <chip_vm+0x68a>
			case 0x2: // 8XY2  AND VX,VY  ; VX := VX AND VY
				vms.var[x]&=vms.var[y];
     9b2:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     9b6:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     9ba:	4947      	ldr	r1, [pc, #284]	; (ad8 <chip_vm+0x5f8>)
     9bc:	440a      	add	r2, r1
     9be:	7991      	ldrb	r1, [r2, #6]
     9c0:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     9c4:	4844      	ldr	r0, [pc, #272]	; (ad8 <chip_vm+0x5f8>)
     9c6:	4402      	add	r2, r0
     9c8:	7992      	ldrb	r2, [r2, #6]
     9ca:	400a      	ands	r2, r1
     9cc:	b2d1      	uxtb	r1, r2
     9ce:	4a42      	ldr	r2, [pc, #264]	; (ad8 <chip_vm+0x5f8>)
     9d0:	4413      	add	r3, r2
     9d2:	460a      	mov	r2, r1
     9d4:	719a      	strb	r2, [r3, #6]
				break;
     9d6:	e0c8      	b.n	b6a <chip_vm+0x68a>
			case 0x3: // 8XY3  XOR VX,VY  ; VX := VX XOR VY
				vms.var[x]^=vms.var[y];
     9d8:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     9dc:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     9e0:	493d      	ldr	r1, [pc, #244]	; (ad8 <chip_vm+0x5f8>)
     9e2:	440a      	add	r2, r1
     9e4:	7991      	ldrb	r1, [r2, #6]
     9e6:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     9ea:	483b      	ldr	r0, [pc, #236]	; (ad8 <chip_vm+0x5f8>)
     9ec:	4402      	add	r2, r0
     9ee:	7992      	ldrb	r2, [r2, #6]
     9f0:	404a      	eors	r2, r1
     9f2:	b2d1      	uxtb	r1, r2
     9f4:	4a38      	ldr	r2, [pc, #224]	; (ad8 <chip_vm+0x5f8>)
     9f6:	4413      	add	r3, r2
     9f8:	460a      	mov	r2, r1
     9fa:	719a      	strb	r2, [r3, #6]
				break;
     9fc:	e0b5      	b.n	b6a <chip_vm+0x68a>
			case 0x4: // 8XY4  ADD VX,VY  ; VX := VX + VY, VF := carry
				n=(vms.var[x]+vms.var[y])>255;
     9fe:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     a02:	4a35      	ldr	r2, [pc, #212]	; (ad8 <chip_vm+0x5f8>)
     a04:	4413      	add	r3, r2
     a06:	799b      	ldrb	r3, [r3, #6]
     a08:	4619      	mov	r1, r3
     a0a:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     a0e:	4a32      	ldr	r2, [pc, #200]	; (ad8 <chip_vm+0x5f8>)
     a10:	4413      	add	r3, r2
     a12:	799b      	ldrb	r3, [r3, #6]
     a14:	440b      	add	r3, r1
     a16:	2bff      	cmp	r3, #255	; 0xff
     a18:	bfcc      	ite	gt
     a1a:	2301      	movgt	r3, #1
     a1c:	2300      	movle	r3, #0
     a1e:	b2db      	uxtb	r3, r3
     a20:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
				vms.var[x]+=vms.var[y];
     a24:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     a28:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     a2c:	492a      	ldr	r1, [pc, #168]	; (ad8 <chip_vm+0x5f8>)
     a2e:	440a      	add	r2, r1
     a30:	7991      	ldrb	r1, [r2, #6]
     a32:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     a36:	4828      	ldr	r0, [pc, #160]	; (ad8 <chip_vm+0x5f8>)
     a38:	4402      	add	r2, r0
     a3a:	7992      	ldrb	r2, [r2, #6]
     a3c:	440a      	add	r2, r1
     a3e:	b2d1      	uxtb	r1, r2
     a40:	4a25      	ldr	r2, [pc, #148]	; (ad8 <chip_vm+0x5f8>)
     a42:	4413      	add	r3, r2
     a44:	460a      	mov	r2, r1
     a46:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     a48:	4a23      	ldr	r2, [pc, #140]	; (ad8 <chip_vm+0x5f8>)
     a4a:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     a4e:	7553      	strb	r3, [r2, #21]
				break;
     a50:	e08b      	b.n	b6a <chip_vm+0x68a>
			case 0x5: // 8XY5  SUB VX,VY  ; VX := VX - VY, VF := not borrow
				n=vms.var[x]>=vms.var[y];
     a52:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     a56:	4a20      	ldr	r2, [pc, #128]	; (ad8 <chip_vm+0x5f8>)
     a58:	4413      	add	r3, r2
     a5a:	799a      	ldrb	r2, [r3, #6]
     a5c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     a60:	491d      	ldr	r1, [pc, #116]	; (ad8 <chip_vm+0x5f8>)
     a62:	440b      	add	r3, r1
     a64:	799b      	ldrb	r3, [r3, #6]
     a66:	429a      	cmp	r2, r3
     a68:	bf2c      	ite	cs
     a6a:	2301      	movcs	r3, #1
     a6c:	2300      	movcc	r3, #0
     a6e:	b2db      	uxtb	r3, r3
     a70:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
				vms.var[x]-=vms.var[y];
     a74:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     a78:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     a7c:	4916      	ldr	r1, [pc, #88]	; (ad8 <chip_vm+0x5f8>)
     a7e:	440a      	add	r2, r1
     a80:	7991      	ldrb	r1, [r2, #6]
     a82:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     a86:	4814      	ldr	r0, [pc, #80]	; (ad8 <chip_vm+0x5f8>)
     a88:	4402      	add	r2, r0
     a8a:	7992      	ldrb	r2, [r2, #6]
     a8c:	1a8a      	subs	r2, r1, r2
     a8e:	b2d1      	uxtb	r1, r2
     a90:	4a11      	ldr	r2, [pc, #68]	; (ad8 <chip_vm+0x5f8>)
     a92:	4413      	add	r3, r2
     a94:	460a      	mov	r2, r1
     a96:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     a98:	4a0f      	ldr	r2, [pc, #60]	; (ad8 <chip_vm+0x5f8>)
     a9a:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     a9e:	7553      	strb	r3, [r2, #21]
				break;
     aa0:	e063      	b.n	b6a <chip_vm+0x68a>
			case 0x6: // 8XY6  SHR VX  ; VX := VX shr 1, VF := carry
				n=(vms.var[x]&1u);
     aa2:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     aa6:	4a0c      	ldr	r2, [pc, #48]	; (ad8 <chip_vm+0x5f8>)
     aa8:	4413      	add	r3, r2
     aaa:	799b      	ldrb	r3, [r3, #6]
     aac:	f003 0301 	and.w	r3, r3, #1
     ab0:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
				vms.var[x]>>=1;
     ab4:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     ab8:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     abc:	4906      	ldr	r1, [pc, #24]	; (ad8 <chip_vm+0x5f8>)
     abe:	440a      	add	r2, r1
     ac0:	7992      	ldrb	r2, [r2, #6]
     ac2:	0852      	lsrs	r2, r2, #1
     ac4:	b2d1      	uxtb	r1, r2
     ac6:	4a04      	ldr	r2, [pc, #16]	; (ad8 <chip_vm+0x5f8>)
     ac8:	4413      	add	r3, r2
     aca:	460a      	mov	r2, r1
     acc:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     ace:	4a02      	ldr	r2, [pc, #8]	; (ad8 <chip_vm+0x5f8>)
     ad0:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     ad4:	7553      	strb	r3, [r2, #21]
				break;
     ad6:	e048      	b.n	b6a <chip_vm+0x68a>
     ad8:	20000210 	.word	0x20000210
     adc:	200006b4 	.word	0x200006b4
			case 0x7: // 8XY7  SUBN VX,VY  ; VX := VY - VX, VF := not borrow
				n=vms.var[y]>=vms.var[x];
     ae0:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     ae4:	4aba      	ldr	r2, [pc, #744]	; (dd0 <chip_vm+0x8f0>)
     ae6:	4413      	add	r3, r2
     ae8:	799a      	ldrb	r2, [r3, #6]
     aea:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     aee:	49b8      	ldr	r1, [pc, #736]	; (dd0 <chip_vm+0x8f0>)
     af0:	440b      	add	r3, r1
     af2:	799b      	ldrb	r3, [r3, #6]
     af4:	429a      	cmp	r2, r3
     af6:	bf2c      	ite	cs
     af8:	2301      	movcs	r3, #1
     afa:	2300      	movcc	r3, #0
     afc:	b2db      	uxtb	r3, r3
     afe:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
				vms.var[x]=vms.var[y]-vms.var[x];
     b02:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     b06:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     b0a:	49b1      	ldr	r1, [pc, #708]	; (dd0 <chip_vm+0x8f0>)
     b0c:	440a      	add	r2, r1
     b0e:	7991      	ldrb	r1, [r2, #6]
     b10:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     b14:	48ae      	ldr	r0, [pc, #696]	; (dd0 <chip_vm+0x8f0>)
     b16:	4402      	add	r2, r0
     b18:	7992      	ldrb	r2, [r2, #6]
     b1a:	1a8a      	subs	r2, r1, r2
     b1c:	b2d1      	uxtb	r1, r2
     b1e:	4aac      	ldr	r2, [pc, #688]	; (dd0 <chip_vm+0x8f0>)
     b20:	4413      	add	r3, r2
     b22:	460a      	mov	r2, r1
     b24:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     b26:	4aaa      	ldr	r2, [pc, #680]	; (dd0 <chip_vm+0x8f0>)
     b28:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     b2c:	7553      	strb	r3, [r2, #21]
				break;
     b2e:	e01c      	b.n	b6a <chip_vm+0x68a>
			case 0xe: // 8XYE  SHL VX  ; VX := VX shl 1, VF := carry
				n=(vms.var[x]&128)>>7;
     b30:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     b34:	4aa6      	ldr	r2, [pc, #664]	; (dd0 <chip_vm+0x8f0>)
     b36:	4413      	add	r3, r2
     b38:	799b      	ldrb	r3, [r3, #6]
     b3a:	09db      	lsrs	r3, r3, #7
     b3c:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
				vms.var[x]<<=1;
     b40:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     b44:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     b48:	49a1      	ldr	r1, [pc, #644]	; (dd0 <chip_vm+0x8f0>)
     b4a:	440a      	add	r2, r1
     b4c:	7992      	ldrb	r2, [r2, #6]
     b4e:	0052      	lsls	r2, r2, #1
     b50:	b2d1      	uxtb	r1, r2
     b52:	4a9f      	ldr	r2, [pc, #636]	; (dd0 <chip_vm+0x8f0>)
     b54:	4413      	add	r3, r2
     b56:	460a      	mov	r2, r1
     b58:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     b5a:	4a9d      	ldr	r2, [pc, #628]	; (dd0 <chip_vm+0x8f0>)
     b5c:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     b60:	7553      	strb	r3, [r2, #21]
				break;
     b62:	e002      	b.n	b6a <chip_vm+0x68a>
			default:
				return CHIP_BAD_OPCODE;
     b64:	2302      	movs	r3, #2
     b66:	f000 bc9d 	b.w	14a4 <chip_vm+0xfc4>
			}//switch(vms.b2&0xf)
			break;
     b6a:	f000 bc99 	b.w	14a0 <chip_vm+0xfc0>
		case 0x9:
			switch (vms.b2&0xf){
     b6e:	4b98      	ldr	r3, [pc, #608]	; (dd0 <chip_vm+0x8f0>)
     b70:	7ddb      	ldrb	r3, [r3, #23]
     b72:	f003 030f 	and.w	r3, r3, #15
     b76:	2b0f      	cmp	r3, #15
     b78:	f200 8169 	bhi.w	e4e <chip_vm+0x96e>
     b7c:	a201      	add	r2, pc, #4	; (adr r2, b84 <chip_vm+0x6a4>)
     b7e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     b82:	bf00      	nop
     b84:	00000bc5 	.word	0x00000bc5
     b88:	00000bed 	.word	0x00000bed
     b8c:	00000c0d 	.word	0x00000c0d
     b90:	00000c63 	.word	0x00000c63
     b94:	00000c85 	.word	0x00000c85
     b98:	00000c99 	.word	0x00000c99
     b9c:	00000cbb 	.word	0x00000cbb
     ba0:	00000ce5 	.word	0x00000ce5
     ba4:	00000d09 	.word	0x00000d09
     ba8:	00000d23 	.word	0x00000d23
     bac:	00000d3d 	.word	0x00000d3d
     bb0:	00000d6d 	.word	0x00000d6d
     bb4:	00000da1 	.word	0x00000da1
     bb8:	00000dd9 	.word	0x00000dd9
     bbc:	00000e07 	.word	0x00000e07
     bc0:	00000e35 	.word	0x00000e35
			case 0x0: // 9XY0  SNE VX,VY  ; skip if VX <> VY
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     bc4:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     bc8:	4a81      	ldr	r2, [pc, #516]	; (dd0 <chip_vm+0x8f0>)
     bca:	4413      	add	r3, r2
     bcc:	799a      	ldrb	r2, [r3, #6]
     bce:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     bd2:	497f      	ldr	r1, [pc, #508]	; (dd0 <chip_vm+0x8f0>)
     bd4:	440b      	add	r3, r1
     bd6:	799b      	ldrb	r3, [r3, #6]
     bd8:	429a      	cmp	r2, r3
     bda:	f000 813a 	beq.w	e52 <chip_vm+0x972>
     bde:	4b7c      	ldr	r3, [pc, #496]	; (dd0 <chip_vm+0x8f0>)
     be0:	881b      	ldrh	r3, [r3, #0]
     be2:	3302      	adds	r3, #2
     be4:	b29a      	uxth	r2, r3
     be6:	4b7a      	ldr	r3, [pc, #488]	; (dd0 <chip_vm+0x8f0>)
     be8:	801a      	strh	r2, [r3, #0]
				break;
     bea:	e132      	b.n	e52 <chip_vm+0x972>
			case 0x1: // 9XY1  TONE VX, VY ; play a tempered scale note. VX=note, VY=length
				key_tone(vms.var[x],vms.var[y],false);
     bec:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     bf0:	4a77      	ldr	r2, [pc, #476]	; (dd0 <chip_vm+0x8f0>)
     bf2:	4413      	add	r3, r2
     bf4:	799b      	ldrb	r3, [r3, #6]
     bf6:	4618      	mov	r0, r3
     bf8:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     bfc:	4a74      	ldr	r2, [pc, #464]	; (dd0 <chip_vm+0x8f0>)
     bfe:	4413      	add	r3, r2
     c00:	799b      	ldrb	r3, [r3, #6]
     c02:	2200      	movs	r2, #0
     c04:	4619      	mov	r1, r3
     c06:	f003 fd27 	bl	4658 <key_tone>
				break;
     c0a:	e127      	b.n	e5c <chip_vm+0x97c>
			case 0x2: // 9XY2  PRT VX, VY ; print text pointed by I at position x,y. I is incremented ; BP-CHIP
				select_font(FONT_ASCII);
     c0c:	2002      	movs	r0, #2
     c0e:	f003 ff71 	bl	4af4 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     c12:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     c16:	4a6e      	ldr	r2, [pc, #440]	; (dd0 <chip_vm+0x8f0>)
     c18:	4413      	add	r3, r2
     c1a:	7998      	ldrb	r0, [r3, #6]
     c1c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     c20:	4a6b      	ldr	r2, [pc, #428]	; (dd0 <chip_vm+0x8f0>)
     c22:	4413      	add	r3, r2
     c24:	799b      	ldrb	r3, [r3, #6]
     c26:	4619      	mov	r1, r3
     c28:	f004 f894 	bl	4d54 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     c2c:	4b68      	ldr	r3, [pc, #416]	; (dd0 <chip_vm+0x8f0>)
     c2e:	885b      	ldrh	r3, [r3, #2]
     c30:	461a      	mov	r2, r3
     c32:	4b68      	ldr	r3, [pc, #416]	; (dd4 <chip_vm+0x8f4>)
     c34:	4413      	add	r3, r2
     c36:	4618      	mov	r0, r3
     c38:	f004 f8b8 	bl	4dac <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     c3c:	4b64      	ldr	r3, [pc, #400]	; (dd0 <chip_vm+0x8f0>)
     c3e:	885c      	ldrh	r4, [r3, #2]
     c40:	4b63      	ldr	r3, [pc, #396]	; (dd0 <chip_vm+0x8f0>)
     c42:	885b      	ldrh	r3, [r3, #2]
     c44:	461a      	mov	r2, r3
     c46:	4b63      	ldr	r3, [pc, #396]	; (dd4 <chip_vm+0x8f4>)
     c48:	4413      	add	r3, r2
     c4a:	4618      	mov	r0, r3
     c4c:	f001 f9c3 	bl	1fd6 <strlen>
     c50:	4603      	mov	r3, r0
     c52:	b29b      	uxth	r3, r3
     c54:	4423      	add	r3, r4
     c56:	b29b      	uxth	r3, r3
     c58:	3301      	adds	r3, #1
     c5a:	b29a      	uxth	r2, r3
     c5c:	4b5c      	ldr	r3, [pc, #368]	; (dd0 <chip_vm+0x8f0>)
     c5e:	805a      	strh	r2, [r3, #2]
				//while (game_ram[vms.ix++]);
				break;
     c60:	e0fc      	b.n	e5c <chip_vm+0x97c>
			case 0x3: // 9XY3 PIXI VX, VY  ; invert pixel at coordinates VX,VY
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     c62:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     c66:	4a5a      	ldr	r2, [pc, #360]	; (dd0 <chip_vm+0x8f0>)
     c68:	4413      	add	r3, r2
     c6a:	799b      	ldrb	r3, [r3, #6]
     c6c:	4618      	mov	r0, r3
     c6e:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     c72:	4a57      	ldr	r2, [pc, #348]	; (dd0 <chip_vm+0x8f0>)
     c74:	4413      	add	r3, r2
     c76:	799b      	ldrb	r3, [r3, #6]
     c78:	4619      	mov	r1, r3
     c7a:	2303      	movs	r3, #3
     c7c:	2200      	movs	r2, #0
     c7e:	f001 fb8b 	bl	2398 <gfx_blit>
				break;
     c82:	e0eb      	b.n	e5c <chip_vm+0x97c>
			case 0x4: // 9NN4  NOISE NN ; noise length NN
				noise((x<<4)+y);
     c84:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     c88:	011a      	lsls	r2, r3, #4
     c8a:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     c8e:	4413      	add	r3, r2
     c90:	4618      	mov	r0, r3
     c92:	f003 fd03 	bl	469c <noise>
				break;
     c96:	e0e1      	b.n	e5c <chip_vm+0x97c>
			case 0x5: // 9XY5 TONE VX, VY, WAIT ; play tempered scale note, wait end. VX=note, VY=length ; BP-CHIP
				key_tone(vms.var[x],vms.var[y],true);
     c98:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     c9c:	4a4c      	ldr	r2, [pc, #304]	; (dd0 <chip_vm+0x8f0>)
     c9e:	4413      	add	r3, r2
     ca0:	799b      	ldrb	r3, [r3, #6]
     ca2:	4618      	mov	r0, r3
     ca4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     ca8:	4a49      	ldr	r2, [pc, #292]	; (dd0 <chip_vm+0x8f0>)
     caa:	4413      	add	r3, r2
     cac:	799b      	ldrb	r3, [r3, #6]
     cae:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     cb2:	4619      	mov	r1, r3
     cb4:	f003 fcd0 	bl	4658 <key_tone>
				break;
     cb8:	e0d0      	b.n	e5c <chip_vm+0x97c>
			case 0x6: // 9X06, PUSH VX  ; push VX on stack ; BP-CHIP
				vms.stack[++vms.sp]=vms.var[x];
     cba:	4b45      	ldr	r3, [pc, #276]	; (dd0 <chip_vm+0x8f0>)
     cbc:	791b      	ldrb	r3, [r3, #4]
     cbe:	3301      	adds	r3, #1
     cc0:	b2da      	uxtb	r2, r3
     cc2:	4b43      	ldr	r3, [pc, #268]	; (dd0 <chip_vm+0x8f0>)
     cc4:	711a      	strb	r2, [r3, #4]
     cc6:	4b42      	ldr	r3, [pc, #264]	; (dd0 <chip_vm+0x8f0>)
     cc8:	791b      	ldrb	r3, [r3, #4]
     cca:	4618      	mov	r0, r3
     ccc:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     cd0:	4a3f      	ldr	r2, [pc, #252]	; (dd0 <chip_vm+0x8f0>)
     cd2:	4413      	add	r3, r2
     cd4:	799b      	ldrb	r3, [r3, #6]
     cd6:	b299      	uxth	r1, r3
     cd8:	4a3d      	ldr	r2, [pc, #244]	; (dd0 <chip_vm+0x8f0>)
     cda:	f100 030c 	add.w	r3, r0, #12
     cde:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
				break;
     ce2:	e0bb      	b.n	e5c <chip_vm+0x97c>
			case 0x7: // 9X07, POP VX  ; pop VX from stack ; BP-CHIP
				vms.var[x]=vms.stack[vms.sp--];
     ce4:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     ce8:	4b39      	ldr	r3, [pc, #228]	; (dd0 <chip_vm+0x8f0>)
     cea:	791b      	ldrb	r3, [r3, #4]
     cec:	1e59      	subs	r1, r3, #1
     cee:	b2c8      	uxtb	r0, r1
     cf0:	4937      	ldr	r1, [pc, #220]	; (dd0 <chip_vm+0x8f0>)
     cf2:	7108      	strb	r0, [r1, #4]
     cf4:	4936      	ldr	r1, [pc, #216]	; (dd0 <chip_vm+0x8f0>)
     cf6:	330c      	adds	r3, #12
     cf8:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     cfc:	b2d9      	uxtb	r1, r3
     cfe:	4b34      	ldr	r3, [pc, #208]	; (dd0 <chip_vm+0x8f0>)
     d00:	4413      	add	r3, r2
     d02:	460a      	mov	r2, r1
     d04:	719a      	strb	r2, [r3, #6]
				break;
     d06:	e0a9      	b.n	e5c <chip_vm+0x97c>
			case 0x8: // 9X08, SCRX  ;  VX=HRES screen width in pixels.
				{ 	vmode_params_t *vparams=get_video_params();
     d08:	f004 fd00 	bl	570c <get_video_params>
     d0c:	62b8      	str	r0, [r7, #40]	; 0x28
					vms.var[x]=vparams->hres;
     d0e:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     d12:	6aba      	ldr	r2, [r7, #40]	; 0x28
     d14:	8992      	ldrh	r2, [r2, #12]
     d16:	b2d1      	uxtb	r1, r2
     d18:	4a2d      	ldr	r2, [pc, #180]	; (dd0 <chip_vm+0x8f0>)
     d1a:	4413      	add	r3, r2
     d1c:	460a      	mov	r2, r1
     d1e:	719a      	strb	r2, [r3, #6]
				}
				break;
     d20:	e09c      	b.n	e5c <chip_vm+0x97c>
			case 0x9: // 9X09, SCRY  ; VX=VRES  screen height in pixels
				{
					vmode_params_t *vparams=get_video_params();
     d22:	f004 fcf3 	bl	570c <get_video_params>
     d26:	6278      	str	r0, [r7, #36]	; 0x24
					vms.var[x]=vparams->vres;
     d28:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     d2c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
     d2e:	89d2      	ldrh	r2, [r2, #14]
     d30:	b2d1      	uxtb	r1, r2
     d32:	4a27      	ldr	r2, [pc, #156]	; (dd0 <chip_vm+0x8f0>)
     d34:	4413      	add	r3, r2
     d36:	460a      	mov	r2, r1
     d38:	719a      	strb	r2, [r3, #6]
				}
				break;
     d3a:	e08f      	b.n	e5c <chip_vm+0x97c>
			case 0xA: // 9XNA, BSET VX,N  ; set VX bit N
			    vms.var[x] |= (1<<(y&0x7));
     d3c:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     d40:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     d44:	4922      	ldr	r1, [pc, #136]	; (dd0 <chip_vm+0x8f0>)
     d46:	440a      	add	r2, r1
     d48:	7992      	ldrb	r2, [r2, #6]
     d4a:	b251      	sxtb	r1, r2
     d4c:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     d50:	f002 0207 	and.w	r2, r2, #7
     d54:	2001      	movs	r0, #1
     d56:	fa00 f202 	lsl.w	r2, r0, r2
     d5a:	b252      	sxtb	r2, r2
     d5c:	430a      	orrs	r2, r1
     d5e:	b252      	sxtb	r2, r2
     d60:	b2d1      	uxtb	r1, r2
     d62:	4a1b      	ldr	r2, [pc, #108]	; (dd0 <chip_vm+0x8f0>)
     d64:	4413      	add	r3, r2
     d66:	460a      	mov	r2, r1
     d68:	719a      	strb	r2, [r3, #6]
			    break;
     d6a:	e077      	b.n	e5c <chip_vm+0x97c>
		    case 0xB: // 9XNB  BCLR VX,N  ; clear VX bit N
			    vms.var[x] &= ~(1<<(y&0x7));
     d6c:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     d70:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     d74:	4916      	ldr	r1, [pc, #88]	; (dd0 <chip_vm+0x8f0>)
     d76:	440a      	add	r2, r1
     d78:	7992      	ldrb	r2, [r2, #6]
     d7a:	b251      	sxtb	r1, r2
     d7c:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     d80:	f002 0207 	and.w	r2, r2, #7
     d84:	2001      	movs	r0, #1
     d86:	fa00 f202 	lsl.w	r2, r0, r2
     d8a:	b252      	sxtb	r2, r2
     d8c:	43d2      	mvns	r2, r2
     d8e:	b252      	sxtb	r2, r2
     d90:	400a      	ands	r2, r1
     d92:	b252      	sxtb	r2, r2
     d94:	b2d1      	uxtb	r1, r2
     d96:	4a0e      	ldr	r2, [pc, #56]	; (dd0 <chip_vm+0x8f0>)
     d98:	4413      	add	r3, r2
     d9a:	460a      	mov	r2, r1
     d9c:	719a      	strb	r2, [r3, #6]
			    break;
     d9e:	e05d      	b.n	e5c <chip_vm+0x97c>
			case 0xC: // 9XNC  BINV VX,N  ; invert VX bit N
   			    vms.var[x] ^= (1<<(y&0x7));
     da0:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     da4:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
     da8:	4909      	ldr	r1, [pc, #36]	; (dd0 <chip_vm+0x8f0>)
     daa:	440a      	add	r2, r1
     dac:	7992      	ldrb	r2, [r2, #6]
     dae:	b251      	sxtb	r1, r2
     db0:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     db4:	f002 0207 	and.w	r2, r2, #7
     db8:	2001      	movs	r0, #1
     dba:	fa00 f202 	lsl.w	r2, r0, r2
     dbe:	b252      	sxtb	r2, r2
     dc0:	404a      	eors	r2, r1
     dc2:	b252      	sxtb	r2, r2
     dc4:	b2d1      	uxtb	r1, r2
     dc6:	4a02      	ldr	r2, [pc, #8]	; (dd0 <chip_vm+0x8f0>)
     dc8:	4413      	add	r3, r2
     dca:	460a      	mov	r2, r1
     dcc:	719a      	strb	r2, [r3, #6]
				break;
     dce:	e045      	b.n	e5c <chip_vm+0x97c>
     dd0:	20000210 	.word	0x20000210
     dd4:	200006b4 	.word	0x200006b4
			case 0xD: // 9XND  BTSS VX,N  ; skip if VX bit N==1
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     dd8:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     ddc:	4aa2      	ldr	r2, [pc, #648]	; (1068 <chip_vm+0xb88>)
     dde:	4413      	add	r3, r2
     de0:	799b      	ldrb	r3, [r3, #6]
     de2:	461a      	mov	r2, r3
     de4:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     de8:	f003 0307 	and.w	r3, r3, #7
     dec:	fa42 f303 	asr.w	r3, r2, r3
     df0:	f003 0301 	and.w	r3, r3, #1
     df4:	2b00      	cmp	r3, #0
     df6:	d02e      	beq.n	e56 <chip_vm+0x976>
     df8:	4b9b      	ldr	r3, [pc, #620]	; (1068 <chip_vm+0xb88>)
     dfa:	881b      	ldrh	r3, [r3, #0]
     dfc:	3302      	adds	r3, #2
     dfe:	b29a      	uxth	r2, r3
     e00:	4b99      	ldr	r3, [pc, #612]	; (1068 <chip_vm+0xb88>)
     e02:	801a      	strh	r2, [r3, #0]
				break;
     e04:	e027      	b.n	e56 <chip_vm+0x976>
			case 0xE: // 9XNE  BTSC VX,N  ; skip if VX bit N==0
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     e06:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     e0a:	4a97      	ldr	r2, [pc, #604]	; (1068 <chip_vm+0xb88>)
     e0c:	4413      	add	r3, r2
     e0e:	799b      	ldrb	r3, [r3, #6]
     e10:	461a      	mov	r2, r3
     e12:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     e16:	f003 0307 	and.w	r3, r3, #7
     e1a:	fa42 f303 	asr.w	r3, r2, r3
     e1e:	f003 0301 	and.w	r3, r3, #1
     e22:	2b00      	cmp	r3, #0
     e24:	d119      	bne.n	e5a <chip_vm+0x97a>
     e26:	4b90      	ldr	r3, [pc, #576]	; (1068 <chip_vm+0xb88>)
     e28:	881b      	ldrh	r3, [r3, #0]
     e2a:	3302      	adds	r3, #2
     e2c:	b29a      	uxth	r2, r3
     e2e:	4b8e      	ldr	r3, [pc, #568]	; (1068 <chip_vm+0xb88>)
     e30:	801a      	strh	r2, [r3, #0]
				break;
     e32:	e012      	b.n	e5a <chip_vm+0x97a>
			case 0xF: // 9XYF GPIX,  VF=pixel((vx),(vy))
			    vms.var[15]=gfx_get_pixel(x,y);
     e34:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     e38:	f897 202e 	ldrb.w	r2, [r7, #46]	; 0x2e
     e3c:	4611      	mov	r1, r2
     e3e:	4618      	mov	r0, r3
     e40:	f001 fce2 	bl	2808 <gfx_get_pixel>
     e44:	4603      	mov	r3, r0
     e46:	461a      	mov	r2, r3
     e48:	4b87      	ldr	r3, [pc, #540]	; (1068 <chip_vm+0xb88>)
     e4a:	755a      	strb	r2, [r3, #21]
				break;  	
     e4c:	e006      	b.n	e5c <chip_vm+0x97c>
			default:
				return CHIP_BAD_OPCODE;
     e4e:	2302      	movs	r3, #2
     e50:	e328      	b.n	14a4 <chip_vm+0xfc4>
				break;
     e52:	bf00      	nop
     e54:	e324      	b.n	14a0 <chip_vm+0xfc0>
				break;
     e56:	bf00      	nop
     e58:	e322      	b.n	14a0 <chip_vm+0xfc0>
				break;
     e5a:	bf00      	nop
			}//switch(vms.b2&0xf)
			break;
     e5c:	e320      	b.n	14a0 <chip_vm+0xfc0>
		case 0xa: // ANNN    LD I, NNN  ; I := 2*NNN
			vms.ix=caddr(vms.b1,vms.b2);
     e5e:	4b82      	ldr	r3, [pc, #520]	; (1068 <chip_vm+0xb88>)
     e60:	7d9b      	ldrb	r3, [r3, #22]
     e62:	021b      	lsls	r3, r3, #8
     e64:	b21a      	sxth	r2, r3
     e66:	4b80      	ldr	r3, [pc, #512]	; (1068 <chip_vm+0xb88>)
     e68:	7ddb      	ldrb	r3, [r3, #23]
     e6a:	b21b      	sxth	r3, r3
     e6c:	4313      	orrs	r3, r2
     e6e:	b21b      	sxth	r3, r3
     e70:	b29b      	uxth	r3, r3
     e72:	f3c3 030b 	ubfx	r3, r3, #0, #12
     e76:	b29a      	uxth	r2, r3
     e78:	4b7b      	ldr	r3, [pc, #492]	; (1068 <chip_vm+0xb88>)
     e7a:	805a      	strh	r2, [r3, #2]
			if (video_mode==VM_BPCHIP){
     e7c:	4b7b      	ldr	r3, [pc, #492]	; (106c <chip_vm+0xb8c>)
     e7e:	781b      	ldrb	r3, [r3, #0]
     e80:	2b00      	cmp	r3, #0
     e82:	d105      	bne.n	e90 <chip_vm+0x9b0>
				vms.ix<<=1;
     e84:	4b78      	ldr	r3, [pc, #480]	; (1068 <chip_vm+0xb88>)
     e86:	885b      	ldrh	r3, [r3, #2]
     e88:	005b      	lsls	r3, r3, #1
     e8a:	b29a      	uxth	r2, r3
     e8c:	4b76      	ldr	r3, [pc, #472]	; (1068 <chip_vm+0xb88>)
     e8e:	805a      	strh	r2, [r3, #2]
			}
			vms.sprite_mem=RAM_MEM;
     e90:	4b75      	ldr	r3, [pc, #468]	; (1068 <chip_vm+0xb88>)
     e92:	2200      	movs	r2, #0
     e94:	715a      	strb	r2, [r3, #5]
			break;
     e96:	e303      	b.n	14a0 <chip_vm+0xfc0>
		case 0xb: // BNNN     JP V0, NNN  ;  skip to 2*(NNN+V0)
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     e98:	4b73      	ldr	r3, [pc, #460]	; (1068 <chip_vm+0xb88>)
     e9a:	799b      	ldrb	r3, [r3, #6]
     e9c:	b29b      	uxth	r3, r3
     e9e:	005b      	lsls	r3, r3, #1
     ea0:	b29a      	uxth	r2, r3
     ea2:	4b71      	ldr	r3, [pc, #452]	; (1068 <chip_vm+0xb88>)
     ea4:	7d9b      	ldrb	r3, [r3, #22]
     ea6:	021b      	lsls	r3, r3, #8
     ea8:	b219      	sxth	r1, r3
     eaa:	4b6f      	ldr	r3, [pc, #444]	; (1068 <chip_vm+0xb88>)
     eac:	7ddb      	ldrb	r3, [r3, #23]
     eae:	b21b      	sxth	r3, r3
     eb0:	430b      	orrs	r3, r1
     eb2:	b21b      	sxth	r3, r3
     eb4:	b29b      	uxth	r3, r3
     eb6:	f3c3 030b 	ubfx	r3, r3, #0, #12
     eba:	b29b      	uxth	r3, r3
     ebc:	4413      	add	r3, r2
     ebe:	b29a      	uxth	r2, r3
     ec0:	4b69      	ldr	r3, [pc, #420]	; (1068 <chip_vm+0xb88>)
     ec2:	801a      	strh	r2, [r3, #0]
			if (video_mode==VM_BPCHIP){
     ec4:	4b69      	ldr	r3, [pc, #420]	; (106c <chip_vm+0xb8c>)
     ec6:	781b      	ldrb	r3, [r3, #0]
     ec8:	2b00      	cmp	r3, #0
     eca:	f040 82e8 	bne.w	149e <chip_vm+0xfbe>
				vms.pc<<=1;
     ece:	4b66      	ldr	r3, [pc, #408]	; (1068 <chip_vm+0xb88>)
     ed0:	881b      	ldrh	r3, [r3, #0]
     ed2:	005b      	lsls	r3, r3, #1
     ed4:	b29a      	uxth	r2, r3
     ed6:	4b64      	ldr	r3, [pc, #400]	; (1068 <chip_vm+0xb88>)
     ed8:	801a      	strh	r2, [r3, #0]
			}
			break;
     eda:	e2e0      	b.n	149e <chip_vm+0xfbe>
		case 0xc: //CXKK  RND VX,KK  ; VX=random_number&KK
			vms.var[x]=rand()&vms.b2;
     edc:	f897 402f 	ldrb.w	r4, [r7, #47]	; 0x2f
     ee0:	f7ff fadc 	bl	49c <rand>
     ee4:	4603      	mov	r3, r0
     ee6:	b25a      	sxtb	r2, r3
     ee8:	4b5f      	ldr	r3, [pc, #380]	; (1068 <chip_vm+0xb88>)
     eea:	7ddb      	ldrb	r3, [r3, #23]
     eec:	b25b      	sxtb	r3, r3
     eee:	4013      	ands	r3, r2
     ef0:	b25b      	sxtb	r3, r3
     ef2:	b2da      	uxtb	r2, r3
     ef4:	4b5c      	ldr	r3, [pc, #368]	; (1068 <chip_vm+0xb88>)
     ef6:	4423      	add	r3, r4
     ef8:	719a      	strb	r2, [r3, #6]
			break;
     efa:	e2d1      	b.n	14a0 <chip_vm+0xfc0>
		case 0xd: //DXYN DRW VX,VY   draw a sprite, SCHIP and BP-CHIP can draw 16x16 sprites
			n=vms.b2&0xf;
     efc:	4b5a      	ldr	r3, [pc, #360]	; (1068 <chip_vm+0xb88>)
     efe:	7ddb      	ldrb	r3, [r3, #23]
     f00:	f003 030f 	and.w	r3, r3, #15
     f04:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
			if (!n){
     f08:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     f0c:	2b00      	cmp	r3, #0
     f0e:	d13a      	bne.n	f86 <chip_vm+0xaa6>
				if (vms.sprite_mem==RAM_MEM){
     f10:	4b55      	ldr	r3, [pc, #340]	; (1068 <chip_vm+0xb88>)
     f12:	795b      	ldrb	r3, [r3, #5]
     f14:	2b00      	cmp	r3, #0
     f16:	d11c      	bne.n	f52 <chip_vm+0xa72>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     f18:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     f1c:	4a52      	ldr	r2, [pc, #328]	; (1068 <chip_vm+0xb88>)
     f1e:	4413      	add	r3, r2
     f20:	799b      	ldrb	r3, [r3, #6]
     f22:	b25b      	sxtb	r3, r3
     f24:	4618      	mov	r0, r3
     f26:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     f2a:	4a4f      	ldr	r2, [pc, #316]	; (1068 <chip_vm+0xb88>)
     f2c:	4413      	add	r3, r2
     f2e:	799b      	ldrb	r3, [r3, #6]
     f30:	b25b      	sxtb	r3, r3
     f32:	4619      	mov	r1, r3
     f34:	4b4c      	ldr	r3, [pc, #304]	; (1068 <chip_vm+0xb88>)
     f36:	885b      	ldrh	r3, [r3, #2]
     f38:	461a      	mov	r2, r3
     f3a:	4b4d      	ldr	r3, [pc, #308]	; (1070 <chip_vm+0xb90>)
     f3c:	4413      	add	r3, r2
     f3e:	9300      	str	r3, [sp, #0]
     f40:	2310      	movs	r3, #16
     f42:	2210      	movs	r2, #16
     f44:	f001 fc98 	bl	2878 <gfx_sprite>
     f48:	4603      	mov	r3, r0
     f4a:	b2da      	uxtb	r2, r3
     f4c:	4b46      	ldr	r3, [pc, #280]	; (1068 <chip_vm+0xb88>)
     f4e:	755a      	strb	r2, [r3, #21]
				}else{
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
				}
			}
			
			break;
     f50:	e2a6      	b.n	14a0 <chip_vm+0xfc0>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     f52:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     f56:	4a44      	ldr	r2, [pc, #272]	; (1068 <chip_vm+0xb88>)
     f58:	4413      	add	r3, r2
     f5a:	799b      	ldrb	r3, [r3, #6]
     f5c:	b25b      	sxtb	r3, r3
     f5e:	4618      	mov	r0, r3
     f60:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     f64:	4a40      	ldr	r2, [pc, #256]	; (1068 <chip_vm+0xb88>)
     f66:	4413      	add	r3, r2
     f68:	799b      	ldrb	r3, [r3, #6]
     f6a:	b25b      	sxtb	r3, r3
     f6c:	4619      	mov	r1, r3
     f6e:	4b3e      	ldr	r3, [pc, #248]	; (1068 <chip_vm+0xb88>)
     f70:	885b      	ldrh	r3, [r3, #2]
     f72:	9300      	str	r3, [sp, #0]
     f74:	2310      	movs	r3, #16
     f76:	2210      	movs	r2, #16
     f78:	f001 fc7e 	bl	2878 <gfx_sprite>
     f7c:	4603      	mov	r3, r0
     f7e:	b2da      	uxtb	r2, r3
     f80:	4b39      	ldr	r3, [pc, #228]	; (1068 <chip_vm+0xb88>)
     f82:	755a      	strb	r2, [r3, #21]
			break;
     f84:	e28c      	b.n	14a0 <chip_vm+0xfc0>
				if (vms.sprite_mem==RAM_MEM){
     f86:	4b38      	ldr	r3, [pc, #224]	; (1068 <chip_vm+0xb88>)
     f88:	795b      	ldrb	r3, [r3, #5]
     f8a:	2b00      	cmp	r3, #0
     f8c:	d11e      	bne.n	fcc <chip_vm+0xaec>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     f8e:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     f92:	4a35      	ldr	r2, [pc, #212]	; (1068 <chip_vm+0xb88>)
     f94:	4413      	add	r3, r2
     f96:	799b      	ldrb	r3, [r3, #6]
     f98:	b25b      	sxtb	r3, r3
     f9a:	4618      	mov	r0, r3
     f9c:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     fa0:	4a31      	ldr	r2, [pc, #196]	; (1068 <chip_vm+0xb88>)
     fa2:	4413      	add	r3, r2
     fa4:	799b      	ldrb	r3, [r3, #6]
     fa6:	b25b      	sxtb	r3, r3
     fa8:	4619      	mov	r1, r3
     faa:	4b2f      	ldr	r3, [pc, #188]	; (1068 <chip_vm+0xb88>)
     fac:	885b      	ldrh	r3, [r3, #2]
     fae:	461a      	mov	r2, r3
     fb0:	4b2f      	ldr	r3, [pc, #188]	; (1070 <chip_vm+0xb90>)
     fb2:	4413      	add	r3, r2
     fb4:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
     fb8:	9300      	str	r3, [sp, #0]
     fba:	4613      	mov	r3, r2
     fbc:	2208      	movs	r2, #8
     fbe:	f001 fc5b 	bl	2878 <gfx_sprite>
     fc2:	4603      	mov	r3, r0
     fc4:	b2da      	uxtb	r2, r3
     fc6:	4b28      	ldr	r3, [pc, #160]	; (1068 <chip_vm+0xb88>)
     fc8:	755a      	strb	r2, [r3, #21]
			break;
     fca:	e269      	b.n	14a0 <chip_vm+0xfc0>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     fcc:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
     fd0:	4a25      	ldr	r2, [pc, #148]	; (1068 <chip_vm+0xb88>)
     fd2:	4413      	add	r3, r2
     fd4:	799b      	ldrb	r3, [r3, #6]
     fd6:	b25b      	sxtb	r3, r3
     fd8:	4618      	mov	r0, r3
     fda:	f897 302e 	ldrb.w	r3, [r7, #46]	; 0x2e
     fde:	4a22      	ldr	r2, [pc, #136]	; (1068 <chip_vm+0xb88>)
     fe0:	4413      	add	r3, r2
     fe2:	799b      	ldrb	r3, [r3, #6]
     fe4:	b25b      	sxtb	r3, r3
     fe6:	4619      	mov	r1, r3
     fe8:	4b1f      	ldr	r3, [pc, #124]	; (1068 <chip_vm+0xb88>)
     fea:	885b      	ldrh	r3, [r3, #2]
     fec:	461a      	mov	r2, r3
     fee:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
     ff2:	9200      	str	r2, [sp, #0]
     ff4:	2208      	movs	r2, #8
     ff6:	f001 fc3f 	bl	2878 <gfx_sprite>
     ffa:	4603      	mov	r3, r0
     ffc:	b2da      	uxtb	r2, r3
     ffe:	4b1a      	ldr	r3, [pc, #104]	; (1068 <chip_vm+0xb88>)
    1000:	755a      	strb	r2, [r3, #21]
			break;
    1002:	e24d      	b.n	14a0 <chip_vm+0xfc0>
		case 0xe:
				switch(vms.b2){
    1004:	4b18      	ldr	r3, [pc, #96]	; (1068 <chip_vm+0xb88>)
    1006:	7ddb      	ldrb	r3, [r3, #23]
    1008:	2b9e      	cmp	r3, #158	; 0x9e
    100a:	d002      	beq.n	1012 <chip_vm+0xb32>
    100c:	2ba1      	cmp	r3, #161	; 0xa1
    100e:	d012      	beq.n	1036 <chip_vm+0xb56>
    1010:	e023      	b.n	105a <chip_vm+0xb7a>
				case 0x9e: //EX9E, SKP VX   ; skip if VX key is down
					if (btn_query_down(vms.var[x])) vms.pc+=2;
    1012:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    1016:	4a14      	ldr	r2, [pc, #80]	; (1068 <chip_vm+0xb88>)
    1018:	4413      	add	r3, r2
    101a:	799b      	ldrb	r3, [r3, #6]
    101c:	4618      	mov	r0, r3
    101e:	f000 fdc9 	bl	1bb4 <btn_query_down>
    1022:	4603      	mov	r3, r0
    1024:	2b00      	cmp	r3, #0
    1026:	d01a      	beq.n	105e <chip_vm+0xb7e>
    1028:	4b0f      	ldr	r3, [pc, #60]	; (1068 <chip_vm+0xb88>)
    102a:	881b      	ldrh	r3, [r3, #0]
    102c:	3302      	adds	r3, #2
    102e:	b29a      	uxth	r2, r3
    1030:	4b0d      	ldr	r3, [pc, #52]	; (1068 <chip_vm+0xb88>)
    1032:	801a      	strh	r2, [r3, #0]
					break;
    1034:	e013      	b.n	105e <chip_vm+0xb7e>
				case 0xa1: //EXA1, SKNP VX  ; skip if VX key is up
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
    1036:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    103a:	4a0b      	ldr	r2, [pc, #44]	; (1068 <chip_vm+0xb88>)
    103c:	4413      	add	r3, r2
    103e:	799b      	ldrb	r3, [r3, #6]
    1040:	4618      	mov	r0, r3
    1042:	f000 fdb7 	bl	1bb4 <btn_query_down>
    1046:	4603      	mov	r3, r0
    1048:	2b00      	cmp	r3, #0
    104a:	d10a      	bne.n	1062 <chip_vm+0xb82>
    104c:	4b06      	ldr	r3, [pc, #24]	; (1068 <chip_vm+0xb88>)
    104e:	881b      	ldrh	r3, [r3, #0]
    1050:	3302      	adds	r3, #2
    1052:	b29a      	uxth	r2, r3
    1054:	4b04      	ldr	r3, [pc, #16]	; (1068 <chip_vm+0xb88>)
    1056:	801a      	strh	r2, [r3, #0]
					break;
    1058:	e003      	b.n	1062 <chip_vm+0xb82>
				default:
					return CHIP_BAD_OPCODE;
    105a:	2302      	movs	r3, #2
    105c:	e222      	b.n	14a4 <chip_vm+0xfc4>
					break;
    105e:	bf00      	nop
    1060:	e21e      	b.n	14a0 <chip_vm+0xfc0>
					break;
    1062:	bf00      	nop
				}//switch(vms.b2)
				break;
    1064:	e21c      	b.n	14a0 <chip_vm+0xfc0>
    1066:	bf00      	nop
    1068:	20000210 	.word	0x20000210
    106c:	200006b0 	.word	0x200006b0
    1070:	200006b4 	.word	0x200006b4
		case 0xf:
			switch(vms.b2){
    1074:	4bc5      	ldr	r3, [pc, #788]	; (138c <chip_vm+0xeac>)
    1076:	7ddb      	ldrb	r3, [r3, #23]
    1078:	3b01      	subs	r3, #1
    107a:	2b84      	cmp	r3, #132	; 0x84
    107c:	f200 81fd 	bhi.w	147a <chip_vm+0xf9a>
    1080:	a201      	add	r2, pc, #4	; (adr r2, 1088 <chip_vm+0xba8>)
    1082:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1086:	bf00      	nop
    1088:	0000129d 	.word	0x0000129d
    108c:	000012ad 	.word	0x000012ad
    1090:	0000147b 	.word	0x0000147b
    1094:	0000147b 	.word	0x0000147b
    1098:	0000147b 	.word	0x0000147b
    109c:	0000147b 	.word	0x0000147b
    10a0:	000012bf 	.word	0x000012bf
    10a4:	0000147b 	.word	0x0000147b
    10a8:	0000147b 	.word	0x0000147b
    10ac:	000012d5 	.word	0x000012d5
    10b0:	0000147b 	.word	0x0000147b
    10b4:	0000147b 	.word	0x0000147b
    10b8:	0000147b 	.word	0x0000147b
    10bc:	0000147b 	.word	0x0000147b
    10c0:	0000147b 	.word	0x0000147b
    10c4:	0000147b 	.word	0x0000147b
    10c8:	0000147b 	.word	0x0000147b
    10cc:	0000147b 	.word	0x0000147b
    10d0:	0000147b 	.word	0x0000147b
    10d4:	0000147b 	.word	0x0000147b
    10d8:	000012e9 	.word	0x000012e9
    10dc:	0000147b 	.word	0x0000147b
    10e0:	0000147b 	.word	0x0000147b
    10e4:	000012fb 	.word	0x000012fb
    10e8:	0000147b 	.word	0x0000147b
    10ec:	0000147b 	.word	0x0000147b
    10f0:	0000147b 	.word	0x0000147b
    10f4:	0000147b 	.word	0x0000147b
    10f8:	0000147b 	.word	0x0000147b
    10fc:	00001313 	.word	0x00001313
    1100:	0000147b 	.word	0x0000147b
    1104:	0000147b 	.word	0x0000147b
    1108:	0000147b 	.word	0x0000147b
    110c:	0000147b 	.word	0x0000147b
    1110:	0000147b 	.word	0x0000147b
    1114:	0000147b 	.word	0x0000147b
    1118:	0000147b 	.word	0x0000147b
    111c:	0000147b 	.word	0x0000147b
    1120:	0000147b 	.word	0x0000147b
    1124:	0000147b 	.word	0x0000147b
    1128:	0000132d 	.word	0x0000132d
    112c:	0000147b 	.word	0x0000147b
    1130:	0000147b 	.word	0x0000147b
    1134:	0000147b 	.word	0x0000147b
    1138:	0000147b 	.word	0x0000147b
    113c:	0000147b 	.word	0x0000147b
    1140:	0000147b 	.word	0x0000147b
    1144:	0000135d 	.word	0x0000135d
    1148:	0000147b 	.word	0x0000147b
    114c:	0000147b 	.word	0x0000147b
    1150:	000013a5 	.word	0x000013a5
    1154:	0000147b 	.word	0x0000147b
    1158:	0000147b 	.word	0x0000147b
    115c:	0000147b 	.word	0x0000147b
    1160:	0000147b 	.word	0x0000147b
    1164:	0000147b 	.word	0x0000147b
    1168:	0000147b 	.word	0x0000147b
    116c:	0000147b 	.word	0x0000147b
    1170:	0000147b 	.word	0x0000147b
    1174:	0000147b 	.word	0x0000147b
    1178:	0000147b 	.word	0x0000147b
    117c:	0000147b 	.word	0x0000147b
    1180:	0000147b 	.word	0x0000147b
    1184:	0000147b 	.word	0x0000147b
    1188:	0000147b 	.word	0x0000147b
    118c:	0000147b 	.word	0x0000147b
    1190:	0000147b 	.word	0x0000147b
    1194:	0000147b 	.word	0x0000147b
    1198:	0000147b 	.word	0x0000147b
    119c:	0000147b 	.word	0x0000147b
    11a0:	0000147b 	.word	0x0000147b
    11a4:	0000147b 	.word	0x0000147b
    11a8:	0000147b 	.word	0x0000147b
    11ac:	0000147b 	.word	0x0000147b
    11b0:	0000147b 	.word	0x0000147b
    11b4:	0000147b 	.word	0x0000147b
    11b8:	0000147b 	.word	0x0000147b
    11bc:	0000147b 	.word	0x0000147b
    11c0:	0000147b 	.word	0x0000147b
    11c4:	0000147b 	.word	0x0000147b
    11c8:	0000147b 	.word	0x0000147b
    11cc:	0000147b 	.word	0x0000147b
    11d0:	0000147b 	.word	0x0000147b
    11d4:	0000147b 	.word	0x0000147b
    11d8:	00001423 	.word	0x00001423
    11dc:	0000147b 	.word	0x0000147b
    11e0:	0000147b 	.word	0x0000147b
    11e4:	0000147b 	.word	0x0000147b
    11e8:	0000147b 	.word	0x0000147b
    11ec:	0000147b 	.word	0x0000147b
    11f0:	0000147b 	.word	0x0000147b
    11f4:	0000147b 	.word	0x0000147b
    11f8:	0000147b 	.word	0x0000147b
    11fc:	0000147b 	.word	0x0000147b
    1200:	0000147b 	.word	0x0000147b
    1204:	0000147b 	.word	0x0000147b
    1208:	0000147b 	.word	0x0000147b
    120c:	0000147b 	.word	0x0000147b
    1210:	0000147b 	.word	0x0000147b
    1214:	0000147b 	.word	0x0000147b
    1218:	0000143d 	.word	0x0000143d
    121c:	0000147b 	.word	0x0000147b
    1220:	0000147b 	.word	0x0000147b
    1224:	0000147b 	.word	0x0000147b
    1228:	0000147b 	.word	0x0000147b
    122c:	0000147b 	.word	0x0000147b
    1230:	0000147b 	.word	0x0000147b
    1234:	0000147b 	.word	0x0000147b
    1238:	0000147b 	.word	0x0000147b
    123c:	0000147b 	.word	0x0000147b
    1240:	0000147b 	.word	0x0000147b
    1244:	0000147b 	.word	0x0000147b
    1248:	0000147b 	.word	0x0000147b
    124c:	0000147b 	.word	0x0000147b
    1250:	0000147b 	.word	0x0000147b
    1254:	0000147b 	.word	0x0000147b
    1258:	00001457 	.word	0x00001457
    125c:	0000147b 	.word	0x0000147b
    1260:	0000147b 	.word	0x0000147b
    1264:	0000147b 	.word	0x0000147b
    1268:	0000147b 	.word	0x0000147b
    126c:	0000147b 	.word	0x0000147b
    1270:	0000147b 	.word	0x0000147b
    1274:	0000147b 	.word	0x0000147b
    1278:	0000147b 	.word	0x0000147b
    127c:	0000147b 	.word	0x0000147b
    1280:	0000147b 	.word	0x0000147b
    1284:	0000147b 	.word	0x0000147b
    1288:	0000147b 	.word	0x0000147b
    128c:	0000147b 	.word	0x0000147b
    1290:	0000147b 	.word	0x0000147b
    1294:	0000147b 	.word	0x0000147b
    1298:	00001469 	.word	0x00001469
//			case 0: // F000 NNNN  load i with a 16-bit address, XO-CHIP
//				break;
			case 1: // FN01  set sprite bitS  per pixels 1,2,4
				sprite_bpp=vms.b1&0x3;
    129c:	4b3b      	ldr	r3, [pc, #236]	; (138c <chip_vm+0xeac>)
    129e:	7d9b      	ldrb	r3, [r3, #22]
    12a0:	f003 0303 	and.w	r3, r3, #3
    12a4:	b2da      	uxtb	r2, r3
    12a6:	4b3a      	ldr	r3, [pc, #232]	; (1390 <chip_vm+0xeb0>)
    12a8:	701a      	strb	r2, [r3, #0]
				break;
    12aa:	e0e8      	b.n	147e <chip_vm+0xf9e>
			case 2: // FN02   store 16 bytes starting at i in the audio pattern buffer, XO-CHIP and BP-CHIPCON
				load_sound_buffer(&game_ram[vms.ix]);
    12ac:	4b37      	ldr	r3, [pc, #220]	; (138c <chip_vm+0xeac>)
    12ae:	885b      	ldrh	r3, [r3, #2]
    12b0:	461a      	mov	r2, r3
    12b2:	4b38      	ldr	r3, [pc, #224]	; (1394 <chip_vm+0xeb4>)
    12b4:	4413      	add	r3, r2
    12b6:	4618      	mov	r0, r3
    12b8:	f003 f957 	bl	456a <load_sound_buffer>
				break;	
    12bc:	e0df      	b.n	147e <chip_vm+0xf9e>
			case 0x07: // FX07  LD VX, DT   VX := game_timer
				vms.var[x]=game_timer;
    12be:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    12c2:	4a35      	ldr	r2, [pc, #212]	; (1398 <chip_vm+0xeb8>)
    12c4:	8812      	ldrh	r2, [r2, #0]
    12c6:	b292      	uxth	r2, r2
    12c8:	b2d1      	uxtb	r1, r2
    12ca:	4a30      	ldr	r2, [pc, #192]	; (138c <chip_vm+0xeac>)
    12cc:	4413      	add	r3, r2
    12ce:	460a      	mov	r2, r1
    12d0:	719a      	strb	r2, [r3, #6]
				break;
    12d2:	e0d4      	b.n	147e <chip_vm+0xf9e>
			case 0x0a: // FX0A  LD VX, K  ; wait for key down and put it in VX.
				vms.var[x]=btn_wait_any();
    12d4:	f897 402f 	ldrb.w	r4, [r7, #47]	; 0x2f
    12d8:	f000 fcd8 	bl	1c8c <btn_wait_any>
    12dc:	4603      	mov	r3, r0
    12de:	461a      	mov	r2, r3
    12e0:	4b2a      	ldr	r3, [pc, #168]	; (138c <chip_vm+0xeac>)
    12e2:	4423      	add	r3, r4
    12e4:	719a      	strb	r2, [r3, #6]
				break;
    12e6:	e0ca      	b.n	147e <chip_vm+0xf9e>
			case 0x15: // FX15  LD DT, VX  ; initialize game_timer with value in VX.
				game_timer=vms.var[x];
    12e8:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    12ec:	4a27      	ldr	r2, [pc, #156]	; (138c <chip_vm+0xeac>)
    12ee:	4413      	add	r3, r2
    12f0:	799b      	ldrb	r3, [r3, #6]
    12f2:	b29a      	uxth	r2, r3
    12f4:	4b28      	ldr	r3, [pc, #160]	; (1398 <chip_vm+0xeb8>)
    12f6:	801a      	strh	r2, [r3, #0]
				break;
    12f8:	e0c1      	b.n	147e <chip_vm+0xf9e>
			case 0x18: // FX18  LD ST, VX  ; beep sound of length VX (multiple de 16.7 msec)
				tone(523,vms.var[x]);
    12fa:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    12fe:	4a23      	ldr	r2, [pc, #140]	; (138c <chip_vm+0xeac>)
    1300:	4413      	add	r3, r2
    1302:	799b      	ldrb	r3, [r3, #6]
    1304:	b29b      	uxth	r3, r3
    1306:	4619      	mov	r1, r3
    1308:	f240 200b 	movw	r0, #523	; 0x20b
    130c:	f003 f8d8 	bl	44c0 <tone>
				break;
    1310:	e0b5      	b.n	147e <chip_vm+0xf9e>
			case 0x1e: // FX1E  ADD I, VX  ;  I := I + VX
				vms.ix += vms.var[x];
    1312:	4b1e      	ldr	r3, [pc, #120]	; (138c <chip_vm+0xeac>)
    1314:	885a      	ldrh	r2, [r3, #2]
    1316:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    131a:	491c      	ldr	r1, [pc, #112]	; (138c <chip_vm+0xeac>)
    131c:	440b      	add	r3, r1
    131e:	799b      	ldrb	r3, [r3, #6]
    1320:	b29b      	uxth	r3, r3
    1322:	4413      	add	r3, r2
    1324:	b29a      	uxth	r2, r3
    1326:	4b19      	ldr	r3, [pc, #100]	; (138c <chip_vm+0xeac>)
    1328:	805a      	strh	r2, [r3, #2]
				break;
    132a:	e0a8      	b.n	147e <chip_vm+0xf9e>
			case 0x29: // FX29  LD F,VX   ; set I to point to character VX in FONT_SHEX table.
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
    132c:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    1330:	4a16      	ldr	r2, [pc, #88]	; (138c <chip_vm+0xeac>)
    1332:	4413      	add	r3, r2
    1334:	799b      	ldrb	r3, [r3, #6]
    1336:	b29b      	uxth	r3, r3
    1338:	461a      	mov	r2, r3
    133a:	0052      	lsls	r2, r2, #1
    133c:	4413      	add	r3, r2
    133e:	005b      	lsls	r3, r3, #1
    1340:	b29a      	uxth	r2, r3
    1342:	4b16      	ldr	r3, [pc, #88]	; (139c <chip_vm+0xebc>)
    1344:	b29b      	uxth	r3, r3
    1346:	4413      	add	r3, r2
    1348:	b29a      	uxth	r2, r3
    134a:	4b10      	ldr	r3, [pc, #64]	; (138c <chip_vm+0xeac>)
    134c:	805a      	strh	r2, [r3, #2]
				vms.sprite_mem=FLASH_MEM;
    134e:	4b0f      	ldr	r3, [pc, #60]	; (138c <chip_vm+0xeac>)
    1350:	2201      	movs	r2, #1
    1352:	715a      	strb	r2, [r3, #5]
				select_font(FONT_SHEX);
    1354:	2000      	movs	r0, #0
    1356:	f003 fbcd 	bl	4af4 <select_font>
				break;
    135a:	e090      	b.n	147e <chip_vm+0xf9e>
			case 0x30: // FX30 LD LF,VX  set I to point to character VX in FONT_LHEX table
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
    135c:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    1360:	4a0a      	ldr	r2, [pc, #40]	; (138c <chip_vm+0xeac>)
    1362:	4413      	add	r3, r2
    1364:	799b      	ldrb	r3, [r3, #6]
    1366:	b29b      	uxth	r3, r3
    1368:	461a      	mov	r2, r3
    136a:	0092      	lsls	r2, r2, #2
    136c:	4413      	add	r3, r2
    136e:	005b      	lsls	r3, r3, #1
    1370:	b29a      	uxth	r2, r3
    1372:	4b0b      	ldr	r3, [pc, #44]	; (13a0 <chip_vm+0xec0>)
    1374:	b29b      	uxth	r3, r3
    1376:	4413      	add	r3, r2
    1378:	b29a      	uxth	r2, r3
    137a:	4b04      	ldr	r3, [pc, #16]	; (138c <chip_vm+0xeac>)
    137c:	805a      	strh	r2, [r3, #2]
				vms.sprite_mem=FLASH_MEM;
    137e:	4b03      	ldr	r3, [pc, #12]	; (138c <chip_vm+0xeac>)
    1380:	2201      	movs	r2, #1
    1382:	715a      	strb	r2, [r3, #5]
				select_font(FONT_LHEX);
    1384:	2001      	movs	r0, #1
    1386:	f003 fbb5 	bl	4af4 <select_font>
				break;
    138a:	e078      	b.n	147e <chip_vm+0xf9e>
    138c:	20000210 	.word	0x20000210
    1390:	20000190 	.word	0x20000190
    1394:	200006b4 	.word	0x200006b4
    1398:	20004e40 	.word	0x20004e40
    139c:	00005c08 	.word	0x00005c08
    13a0:	00005c68 	.word	0x00005c68
			case 0x33: // FX33 LD B, VX  ;  set I to point BCD value of VX, i.e. M[I]..M[I+2]
				n=vms.var[x];
    13a4:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    13a8:	4a40      	ldr	r2, [pc, #256]	; (14ac <chip_vm+0xfcc>)
    13aa:	4413      	add	r3, r2
    13ac:	799b      	ldrb	r3, [r3, #6]
    13ae:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
				block[2]=n%10;
    13b2:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
    13b6:	4b3e      	ldr	r3, [pc, #248]	; (14b0 <chip_vm+0xfd0>)
    13b8:	fba3 1302 	umull	r1, r3, r3, r2
    13bc:	08d9      	lsrs	r1, r3, #3
    13be:	460b      	mov	r3, r1
    13c0:	009b      	lsls	r3, r3, #2
    13c2:	440b      	add	r3, r1
    13c4:	005b      	lsls	r3, r3, #1
    13c6:	1ad3      	subs	r3, r2, r3
    13c8:	b2da      	uxtb	r2, r3
    13ca:	4b3a      	ldr	r3, [pc, #232]	; (14b4 <chip_vm+0xfd4>)
    13cc:	709a      	strb	r2, [r3, #2]
				n /=10;
    13ce:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
    13d2:	4a37      	ldr	r2, [pc, #220]	; (14b0 <chip_vm+0xfd0>)
    13d4:	fba2 2303 	umull	r2, r3, r2, r3
    13d8:	08db      	lsrs	r3, r3, #3
    13da:	f887 302d 	strb.w	r3, [r7, #45]	; 0x2d
				block[1]=n%10;
    13de:	f897 202d 	ldrb.w	r2, [r7, #45]	; 0x2d
    13e2:	4b33      	ldr	r3, [pc, #204]	; (14b0 <chip_vm+0xfd0>)
    13e4:	fba3 1302 	umull	r1, r3, r3, r2
    13e8:	08d9      	lsrs	r1, r3, #3
    13ea:	460b      	mov	r3, r1
    13ec:	009b      	lsls	r3, r3, #2
    13ee:	440b      	add	r3, r1
    13f0:	005b      	lsls	r3, r3, #1
    13f2:	1ad3      	subs	r3, r2, r3
    13f4:	b2da      	uxtb	r2, r3
    13f6:	4b2f      	ldr	r3, [pc, #188]	; (14b4 <chip_vm+0xfd4>)
    13f8:	705a      	strb	r2, [r3, #1]
				block[0]=n/10;
    13fa:	f897 302d 	ldrb.w	r3, [r7, #45]	; 0x2d
    13fe:	4a2c      	ldr	r2, [pc, #176]	; (14b0 <chip_vm+0xfd0>)
    1400:	fba2 2303 	umull	r2, r3, r2, r3
    1404:	08db      	lsrs	r3, r3, #3
    1406:	b2da      	uxtb	r2, r3
    1408:	4b2a      	ldr	r3, [pc, #168]	; (14b4 <chip_vm+0xfd4>)
    140a:	701a      	strb	r2, [r3, #0]
				//store_block(vms.ix,3,block);
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
    140c:	4b27      	ldr	r3, [pc, #156]	; (14ac <chip_vm+0xfcc>)
    140e:	885b      	ldrh	r3, [r3, #2]
    1410:	461a      	mov	r2, r3
    1412:	4b29      	ldr	r3, [pc, #164]	; (14b8 <chip_vm+0xfd8>)
    1414:	4413      	add	r3, r2
    1416:	2203      	movs	r2, #3
    1418:	4619      	mov	r1, r3
    141a:	4826      	ldr	r0, [pc, #152]	; (14b4 <chip_vm+0xfd4>)
    141c:	f000 fdc1 	bl	1fa2 <move>
				break;
    1420:	e02d      	b.n	147e <chip_vm+0xf9e>
			case 0x55: // FX55  LD [I], VX  save registers V0..VX in ram pointed by I
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
    1422:	4b22      	ldr	r3, [pc, #136]	; (14ac <chip_vm+0xfcc>)
    1424:	885b      	ldrh	r3, [r3, #2]
    1426:	461a      	mov	r2, r3
    1428:	4b23      	ldr	r3, [pc, #140]	; (14b8 <chip_vm+0xfd8>)
    142a:	18d1      	adds	r1, r2, r3
    142c:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    1430:	3301      	adds	r3, #1
    1432:	461a      	mov	r2, r3
    1434:	4821      	ldr	r0, [pc, #132]	; (14bc <chip_vm+0xfdc>)
    1436:	f000 fdb4 	bl	1fa2 <move>
				//vms.ix+=x+1;
				//store_block(vms.ix,x+1,vms.var);
				break;
    143a:	e020      	b.n	147e <chip_vm+0xf9e>
			case 0x65: // FX65 LD VX,[I]  load registers V0-VX from ram pointed by I
				//load_block(vms.ix,x+1,vms.var);
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
    143c:	4b1b      	ldr	r3, [pc, #108]	; (14ac <chip_vm+0xfcc>)
    143e:	885b      	ldrh	r3, [r3, #2]
    1440:	461a      	mov	r2, r3
    1442:	4b1d      	ldr	r3, [pc, #116]	; (14b8 <chip_vm+0xfd8>)
    1444:	18d0      	adds	r0, r2, r3
    1446:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    144a:	3301      	adds	r3, #1
    144c:	461a      	mov	r2, r3
    144e:	491b      	ldr	r1, [pc, #108]	; (14bc <chip_vm+0xfdc>)
    1450:	f000 fda7 	bl	1fa2 <move>
				//vms.ix+=x+1;
				break;
    1454:	e013      	b.n	147e <chip_vm+0xf9e>
			case 0x75: // FX75 LD R,VX  ; save registers V0-VX in mcu flash  ; SCHIP
				//flash_write_block(PERSIST_STORE,vms.var,x+1);
				move((const uint8_t*)vms.var,block,x+1);
    1456:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    145a:	3301      	adds	r3, #1
    145c:	461a      	mov	r2, r3
    145e:	4915      	ldr	r1, [pc, #84]	; (14b4 <chip_vm+0xfd4>)
    1460:	4816      	ldr	r0, [pc, #88]	; (14bc <chip_vm+0xfdc>)
    1462:	f000 fd9e 	bl	1fa2 <move>
				break;
    1466:	e00a      	b.n	147e <chip_vm+0xf9e>
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash
				//flash_read_block((const uint8_t*)PERSIST_STORE,vms.var,x+1);
				move((const uint8_t*)block,vms.var,x+1);
    1468:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    146c:	3301      	adds	r3, #1
    146e:	461a      	mov	r2, r3
    1470:	4912      	ldr	r1, [pc, #72]	; (14bc <chip_vm+0xfdc>)
    1472:	4810      	ldr	r0, [pc, #64]	; (14b4 <chip_vm+0xfd4>)
    1474:	f000 fd95 	bl	1fa2 <move>
				break;
    1478:	e001      	b.n	147e <chip_vm+0xf9e>
			default:
				return CHIP_BAD_OPCODE;
    147a:	2302      	movs	r3, #2
    147c:	e012      	b.n	14a4 <chip_vm+0xfc4>
				
			}//switch(vms.b2)
			break;	
    147e:	e00f      	b.n	14a0 <chip_vm+0xfc0>
			break;
    1480:	bf00      	nop
    1482:	f7ff b83c 	b.w	4fe <chip_vm+0x1e>
			break;
    1486:	bf00      	nop
    1488:	f7ff b839 	b.w	4fe <chip_vm+0x1e>
			break;
    148c:	bf00      	nop
    148e:	f7ff b836 	b.w	4fe <chip_vm+0x1e>
			break;
    1492:	bf00      	nop
    1494:	f7ff b833 	b.w	4fe <chip_vm+0x1e>
			break;
    1498:	bf00      	nop
    149a:	f7ff b830 	b.w	4fe <chip_vm+0x1e>
			break;
    149e:	bf00      	nop
		_get_opcode(vms.pc);
    14a0:	f7ff b82d 	b.w	4fe <chip_vm+0x1e>
		}//switch (vms.b1>>4)
	}//while(1)
}//schipp()
    14a4:	4618      	mov	r0, r3
    14a6:	3734      	adds	r7, #52	; 0x34
    14a8:	46bd      	mov	sp, r7
    14aa:	bd90      	pop	{r4, r7, pc}
    14ac:	20000210 	.word	0x20000210
    14b0:	cccccccd 	.word	0xcccccccd
    14b4:	20000268 	.word	0x20000268
    14b8:	200006b4 	.word	0x200006b4
    14bc:	20000216 	.word	0x20000216

000014c0 <flash_enable>:
extern uint32_t _FLASH_FREE;
#define ffa  ((void*)_FLASH_FREE)

// activation interface de programmation
//mémoire flash du mcu
int flash_enable(){
    14c0:	b480      	push	{r7}
    14c2:	af00      	add	r7, sp, #0
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
    14c4:	4b14      	ldr	r3, [pc, #80]	; (1518 <flash_enable+0x58>)
    14c6:	2200      	movs	r2, #0
    14c8:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
    14ca:	4b14      	ldr	r3, [pc, #80]	; (151c <flash_enable+0x5c>)
    14cc:	681b      	ldr	r3, [r3, #0]
    14ce:	f003 0301 	and.w	r3, r3, #1
    14d2:	2b00      	cmp	r3, #0
    14d4:	d10c      	bne.n	14f0 <flash_enable+0x30>
		RCC->CR|=RCC_CR_HSION;
    14d6:	4a11      	ldr	r2, [pc, #68]	; (151c <flash_enable+0x5c>)
    14d8:	4b10      	ldr	r3, [pc, #64]	; (151c <flash_enable+0x5c>)
    14da:	681b      	ldr	r3, [r3, #0]
    14dc:	f043 0301 	orr.w	r3, r3, #1
    14e0:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
    14e2:	bf00      	nop
    14e4:	4b0d      	ldr	r3, [pc, #52]	; (151c <flash_enable+0x5c>)
    14e6:	681b      	ldr	r3, [r3, #0]
    14e8:	f003 0302 	and.w	r3, r3, #2
    14ec:	2b00      	cmp	r3, #0
    14ee:	d0f9      	beq.n	14e4 <flash_enable+0x24>
	}
	FLASH->KEYR=0x45670123;
    14f0:	4b0b      	ldr	r3, [pc, #44]	; (1520 <flash_enable+0x60>)
    14f2:	4a0c      	ldr	r2, [pc, #48]	; (1524 <flash_enable+0x64>)
    14f4:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
    14f6:	4b0a      	ldr	r3, [pc, #40]	; (1520 <flash_enable+0x60>)
    14f8:	4a0b      	ldr	r2, [pc, #44]	; (1528 <flash_enable+0x68>)
    14fa:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
    14fc:	4b08      	ldr	r3, [pc, #32]	; (1520 <flash_enable+0x60>)
    14fe:	691b      	ldr	r3, [r3, #16]
    1500:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1504:	2b00      	cmp	r3, #0
    1506:	bf0c      	ite	eq
    1508:	2301      	moveq	r3, #1
    150a:	2300      	movne	r3, #0
    150c:	b2db      	uxtb	r3, r3
}
    150e:	4618      	mov	r0, r3
    1510:	46bd      	mov	sp, r7
    1512:	bc80      	pop	{r7}
    1514:	4770      	bx	lr
    1516:	bf00      	nop
    1518:	20000288 	.word	0x20000288
    151c:	40021000 	.word	0x40021000
    1520:	40022000 	.word	0x40022000
    1524:	45670123 	.word	0x45670123
    1528:	cdef89ab 	.word	0xcdef89ab

0000152c <read_byte>:
// accède le tampon si 'address' est déjà dans le tampon.
// arguments:
//		address   adresse de la mémoire flash à lire
// retourne:
//		valeur lue à cette adresse
static uint8_t read_byte(const uint8_t *address){
    152c:	b480      	push	{r7}
    152e:	b085      	sub	sp, #20
    1530:	af00      	add	r7, sp, #0
    1532:	6078      	str	r0, [r7, #4]
		uint32_t i;
		if (_addr2row(address)==row_buff.row){
    1534:	687b      	ldr	r3, [r7, #4]
    1536:	0a9b      	lsrs	r3, r3, #10
    1538:	4a0a      	ldr	r2, [pc, #40]	; (1564 <read_byte+0x38>)
    153a:	7852      	ldrb	r2, [r2, #1]
    153c:	4293      	cmp	r3, r2
    153e:	d109      	bne.n	1554 <read_byte+0x28>
			i=((uint32_t)address&FLASH_ROW_MASK);
    1540:	687b      	ldr	r3, [r7, #4]
    1542:	f3c3 0309 	ubfx	r3, r3, #0, #10
    1546:	60fb      	str	r3, [r7, #12]
			return row_buff.data[i];
    1548:	4a06      	ldr	r2, [pc, #24]	; (1564 <read_byte+0x38>)
    154a:	68fb      	ldr	r3, [r7, #12]
    154c:	4413      	add	r3, r2
    154e:	3302      	adds	r3, #2
    1550:	781b      	ldrb	r3, [r3, #0]
    1552:	e001      	b.n	1558 <read_byte+0x2c>
		}else{
			return *address;
    1554:	687b      	ldr	r3, [r7, #4]
    1556:	781b      	ldrb	r3, [r3, #0]
		}
}
    1558:	4618      	mov	r0, r3
    155a:	3714      	adds	r7, #20
    155c:	46bd      	mov	sp, r7
    155e:	bc80      	pop	{r7}
    1560:	4770      	bx	lr
    1562:	bf00      	nop
    1564:	20000288 	.word	0x20000288

00001568 <flash_write_hword>:
}


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
    1568:	b480      	push	{r7}
    156a:	b083      	sub	sp, #12
    156c:	af00      	add	r7, sp, #0
    156e:	6078      	str	r0, [r7, #4]
    1570:	460b      	mov	r3, r1
    1572:	807b      	strh	r3, [r7, #2]
	while (_flash_busy);
    1574:	bf00      	nop
    1576:	4b16      	ldr	r3, [pc, #88]	; (15d0 <flash_write_hword+0x68>)
    1578:	68db      	ldr	r3, [r3, #12]
    157a:	f003 0301 	and.w	r3, r3, #1
    157e:	2b00      	cmp	r3, #0
    1580:	d1f9      	bne.n	1576 <flash_write_hword+0xe>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
    1582:	4a13      	ldr	r2, [pc, #76]	; (15d0 <flash_write_hword+0x68>)
    1584:	4b12      	ldr	r3, [pc, #72]	; (15d0 <flash_write_hword+0x68>)
    1586:	68db      	ldr	r3, [r3, #12]
    1588:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    158c:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PG;
    158e:	4b10      	ldr	r3, [pc, #64]	; (15d0 <flash_write_hword+0x68>)
    1590:	2201      	movs	r2, #1
    1592:	611a      	str	r2, [r3, #16]
	*address=hword;
    1594:	687b      	ldr	r3, [r7, #4]
    1596:	887a      	ldrh	r2, [r7, #2]
    1598:	801a      	strh	r2, [r3, #0]
	while (_flash_busy && ! _flash_eop);
    159a:	bf00      	nop
    159c:	4b0c      	ldr	r3, [pc, #48]	; (15d0 <flash_write_hword+0x68>)
    159e:	68db      	ldr	r3, [r3, #12]
    15a0:	f003 0301 	and.w	r3, r3, #1
    15a4:	2b00      	cmp	r3, #0
    15a6:	d005      	beq.n	15b4 <flash_write_hword+0x4c>
    15a8:	4b09      	ldr	r3, [pc, #36]	; (15d0 <flash_write_hword+0x68>)
    15aa:	68db      	ldr	r3, [r3, #12]
    15ac:	f003 0320 	and.w	r3, r3, #32
    15b0:	2b00      	cmp	r3, #0
    15b2:	d0f3      	beq.n	159c <flash_write_hword+0x34>
	return *address==hword;
    15b4:	687b      	ldr	r3, [r7, #4]
    15b6:	881b      	ldrh	r3, [r3, #0]
    15b8:	887a      	ldrh	r2, [r7, #2]
    15ba:	429a      	cmp	r2, r3
    15bc:	bf0c      	ite	eq
    15be:	2301      	moveq	r3, #1
    15c0:	2300      	movne	r3, #0
    15c2:	b2db      	uxtb	r3, r3
}
    15c4:	4618      	mov	r0, r3
    15c6:	370c      	adds	r7, #12
    15c8:	46bd      	mov	sp, r7
    15ca:	bc80      	pop	{r7}
    15cc:	4770      	bx	lr
    15ce:	bf00      	nop
    15d0:	40022000 	.word	0x40022000

000015d4 <write_back_buffer>:

// met à jour la mémoire flash du mcu à partir du tampon 'row_buff.data'
static int write_back_buffer(){
    15d4:	b580      	push	{r7, lr}
    15d6:	b084      	sub	sp, #16
    15d8:	af00      	add	r7, sp, #0
	int i;
	uint16_t *dest, *src;
	
	dest=_row2addr(row_buff.row);
    15da:	4b1e      	ldr	r3, [pc, #120]	; (1654 <write_back_buffer+0x80>)
    15dc:	785b      	ldrb	r3, [r3, #1]
    15de:	029b      	lsls	r3, r3, #10
    15e0:	60bb      	str	r3, [r7, #8]
	src=(uint16_t*)row_buff.data;
    15e2:	4b1d      	ldr	r3, [pc, #116]	; (1658 <write_back_buffer+0x84>)
    15e4:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    15e6:	2300      	movs	r3, #0
    15e8:	60fb      	str	r3, [r7, #12]
    15ea:	e017      	b.n	161c <write_back_buffer+0x48>
		if (*src!=(uint16_t)FLASH_ERASED){
    15ec:	687b      	ldr	r3, [r7, #4]
    15ee:	881b      	ldrh	r3, [r3, #0]
    15f0:	f64f 72ff 	movw	r2, #65535	; 0xffff
    15f4:	4293      	cmp	r3, r2
    15f6:	d008      	beq.n	160a <write_back_buffer+0x36>
			if (!flash_write_hword(dest,*src)) break;
    15f8:	687b      	ldr	r3, [r7, #4]
    15fa:	881b      	ldrh	r3, [r3, #0]
    15fc:	4619      	mov	r1, r3
    15fe:	68b8      	ldr	r0, [r7, #8]
    1600:	f7ff ffb2 	bl	1568 <flash_write_hword>
    1604:	4603      	mov	r3, r0
    1606:	2b00      	cmp	r3, #0
    1608:	d00d      	beq.n	1626 <write_back_buffer+0x52>
		}
		dest++;
    160a:	68bb      	ldr	r3, [r7, #8]
    160c:	3302      	adds	r3, #2
    160e:	60bb      	str	r3, [r7, #8]
		src++;
    1610:	687b      	ldr	r3, [r7, #4]
    1612:	3302      	adds	r3, #2
    1614:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1616:	68fb      	ldr	r3, [r7, #12]
    1618:	3301      	adds	r3, #1
    161a:	60fb      	str	r3, [r7, #12]
    161c:	68fb      	ldr	r3, [r7, #12]
    161e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1622:	dbe3      	blt.n	15ec <write_back_buffer+0x18>
    1624:	e000      	b.n	1628 <write_back_buffer+0x54>
			if (!flash_write_hword(dest,*src)) break;
    1626:	bf00      	nop
	}
	if (i>0) row_buff.flags&=~F_ERASED;
    1628:	68fb      	ldr	r3, [r7, #12]
    162a:	2b00      	cmp	r3, #0
    162c:	dd06      	ble.n	163c <write_back_buffer+0x68>
    162e:	4b09      	ldr	r3, [pc, #36]	; (1654 <write_back_buffer+0x80>)
    1630:	781b      	ldrb	r3, [r3, #0]
    1632:	f023 0304 	bic.w	r3, r3, #4
    1636:	b2da      	uxtb	r2, r3
    1638:	4b06      	ldr	r3, [pc, #24]	; (1654 <write_back_buffer+0x80>)
    163a:	701a      	strb	r2, [r3, #0]
	if (i==FLASH_ROW_SIZE_HWORD) return 1;
    163c:	68fb      	ldr	r3, [r7, #12]
    163e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1642:	d101      	bne.n	1648 <write_back_buffer+0x74>
    1644:	2301      	movs	r3, #1
    1646:	e000      	b.n	164a <write_back_buffer+0x76>
	return 0;
    1648:	2300      	movs	r3, #0
}
    164a:	4618      	mov	r0, r3
    164c:	3710      	adds	r7, #16
    164e:	46bd      	mov	sp, r7
    1650:	bd80      	pop	{r7, pc}
    1652:	bf00      	nop
    1654:	20000288 	.word	0x20000288
    1658:	2000028a 	.word	0x2000028a

0000165c <load_row>:

// charge le tampon de ligne avec le contenu de la mémoire flash
// argument:
//		r   numéro de la ligne à charger.
static void load_row(unsigned int r){
    165c:	b480      	push	{r7}
    165e:	b087      	sub	sp, #28
    1660:	af00      	add	r7, sp, #0
    1662:	6078      	str	r0, [r7, #4]
	uint16_t *src, *dest;
	int i;
	src=(uint16_t*)_row2addr(r);
    1664:	687b      	ldr	r3, [r7, #4]
    1666:	029b      	lsls	r3, r3, #10
    1668:	617b      	str	r3, [r7, #20]
	dest=(uint16_t*)row_buff.data;
    166a:	4b15      	ldr	r3, [pc, #84]	; (16c0 <load_row+0x64>)
    166c:	613b      	str	r3, [r7, #16]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    166e:	2300      	movs	r3, #0
    1670:	60fb      	str	r3, [r7, #12]
    1672:	e00a      	b.n	168a <load_row+0x2e>
		*dest++=*src++;
    1674:	693b      	ldr	r3, [r7, #16]
    1676:	1c9a      	adds	r2, r3, #2
    1678:	613a      	str	r2, [r7, #16]
    167a:	697a      	ldr	r2, [r7, #20]
    167c:	1c91      	adds	r1, r2, #2
    167e:	6179      	str	r1, [r7, #20]
    1680:	8812      	ldrh	r2, [r2, #0]
    1682:	801a      	strh	r2, [r3, #0]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1684:	68fb      	ldr	r3, [r7, #12]
    1686:	3301      	adds	r3, #1
    1688:	60fb      	str	r3, [r7, #12]
    168a:	68fb      	ldr	r3, [r7, #12]
    168c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1690:	dbf0      	blt.n	1674 <load_row+0x18>
	}
	row_buff.row=r;
    1692:	687b      	ldr	r3, [r7, #4]
    1694:	b2da      	uxtb	r2, r3
    1696:	4b0b      	ldr	r3, [pc, #44]	; (16c4 <load_row+0x68>)
    1698:	705a      	strb	r2, [r3, #1]
	row_buff.flags&=~(F_MODIFIED);
    169a:	4b0a      	ldr	r3, [pc, #40]	; (16c4 <load_row+0x68>)
    169c:	781b      	ldrb	r3, [r3, #0]
    169e:	f023 0301 	bic.w	r3, r3, #1
    16a2:	b2da      	uxtb	r2, r3
    16a4:	4b07      	ldr	r3, [pc, #28]	; (16c4 <load_row+0x68>)
    16a6:	701a      	strb	r2, [r3, #0]
	row_buff.flags|=F_LOADED;
    16a8:	4b06      	ldr	r3, [pc, #24]	; (16c4 <load_row+0x68>)
    16aa:	781b      	ldrb	r3, [r3, #0]
    16ac:	f043 0302 	orr.w	r3, r3, #2
    16b0:	b2da      	uxtb	r2, r3
    16b2:	4b04      	ldr	r3, [pc, #16]	; (16c4 <load_row+0x68>)
    16b4:	701a      	strb	r2, [r3, #0]
}
    16b6:	bf00      	nop
    16b8:	371c      	adds	r7, #28
    16ba:	46bd      	mov	sp, r7
    16bc:	bc80      	pop	{r7}
    16be:	4770      	bx	lr
    16c0:	2000028a 	.word	0x2000028a
    16c4:	20000288 	.word	0x20000288

000016c8 <is_erased>:

// vérifie si une ligne est effacée
// c.à.d. ne contient que des 0xffff
static bool is_erased(unsigned row){
    16c8:	b480      	push	{r7}
    16ca:	b085      	sub	sp, #20
    16cc:	af00      	add	r7, sp, #0
    16ce:	6078      	str	r0, [r7, #4]
	uint16_t* addr;
	int i;
	
	addr=_row2addr(row);
    16d0:	687b      	ldr	r3, [r7, #4]
    16d2:	029b      	lsls	r3, r3, #10
    16d4:	60fb      	str	r3, [r7, #12]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    16d6:	2300      	movs	r3, #0
    16d8:	60bb      	str	r3, [r7, #8]
    16da:	e00c      	b.n	16f6 <is_erased+0x2e>
		if (*addr++!=FLASH_ERASED) return false;
    16dc:	68fb      	ldr	r3, [r7, #12]
    16de:	1c9a      	adds	r2, r3, #2
    16e0:	60fa      	str	r2, [r7, #12]
    16e2:	881b      	ldrh	r3, [r3, #0]
    16e4:	f64f 72ff 	movw	r2, #65535	; 0xffff
    16e8:	4293      	cmp	r3, r2
    16ea:	d001      	beq.n	16f0 <is_erased+0x28>
    16ec:	2300      	movs	r3, #0
    16ee:	e008      	b.n	1702 <is_erased+0x3a>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    16f0:	68bb      	ldr	r3, [r7, #8]
    16f2:	3301      	adds	r3, #1
    16f4:	60bb      	str	r3, [r7, #8]
    16f6:	68bb      	ldr	r3, [r7, #8]
    16f8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    16fc:	dbee      	blt.n	16dc <is_erased+0x14>
	}
	return true;
    16fe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
}
    1702:	4618      	mov	r0, r3
    1704:	3714      	adds	r7, #20
    1706:	46bd      	mov	sp, r7
    1708:	bc80      	pop	{r7}
    170a:	4770      	bx	lr

0000170c <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
    170c:	b580      	push	{r7, lr}
    170e:	b086      	sub	sp, #24
    1710:	af00      	add	r7, sp, #0
    1712:	6078      	str	r0, [r7, #4]
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
    1714:	687b      	ldr	r3, [r7, #4]
    1716:	2b3f      	cmp	r3, #63	; 0x3f
    1718:	d801      	bhi.n	171e <flash_erase_row+0x12>
    171a:	2300      	movs	r3, #0
    171c:	e052      	b.n	17c4 <flash_erase_row+0xb8>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
    171e:	6878      	ldr	r0, [r7, #4]
    1720:	f7ff ffd2 	bl	16c8 <is_erased>
    1724:	4603      	mov	r3, r0
    1726:	2b00      	cmp	r3, #0
    1728:	d001      	beq.n	172e <flash_erase_row+0x22>
    172a:	2301      	movs	r3, #1
    172c:	e04a      	b.n	17c4 <flash_erase_row+0xb8>
	addr=_row2addr(row_nbr);
    172e:	687b      	ldr	r3, [r7, #4]
    1730:	029b      	lsls	r3, r3, #10
    1732:	617b      	str	r3, [r7, #20]
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
    1734:	4b25      	ldr	r3, [pc, #148]	; (17cc <flash_erase_row+0xc0>)
    1736:	691b      	ldr	r3, [r3, #16]
    1738:	f003 0380 	and.w	r3, r3, #128	; 0x80
    173c:	2b00      	cmp	r3, #0
    173e:	d001      	beq.n	1744 <flash_erase_row+0x38>
    1740:	2300      	movs	r3, #0
    1742:	e03f      	b.n	17c4 <flash_erase_row+0xb8>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
    1744:	4a21      	ldr	r2, [pc, #132]	; (17cc <flash_erase_row+0xc0>)
    1746:	4b21      	ldr	r3, [pc, #132]	; (17cc <flash_erase_row+0xc0>)
    1748:	68db      	ldr	r3, [r3, #12]
    174a:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    174e:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PER;
    1750:	4b1e      	ldr	r3, [pc, #120]	; (17cc <flash_erase_row+0xc0>)
    1752:	2202      	movs	r2, #2
    1754:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
    1756:	4a1d      	ldr	r2, [pc, #116]	; (17cc <flash_erase_row+0xc0>)
    1758:	697b      	ldr	r3, [r7, #20]
    175a:	6153      	str	r3, [r2, #20]
	FLASH->CR|=FLASH_CR_STRT;
    175c:	4a1b      	ldr	r2, [pc, #108]	; (17cc <flash_erase_row+0xc0>)
    175e:	4b1b      	ldr	r3, [pc, #108]	; (17cc <flash_erase_row+0xc0>)
    1760:	691b      	ldr	r3, [r3, #16]
    1762:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1766:	6113      	str	r3, [r2, #16]
	while (_flash_busy && ! _flash_eop);
    1768:	bf00      	nop
    176a:	4b18      	ldr	r3, [pc, #96]	; (17cc <flash_erase_row+0xc0>)
    176c:	68db      	ldr	r3, [r3, #12]
    176e:	f003 0301 	and.w	r3, r3, #1
    1772:	2b00      	cmp	r3, #0
    1774:	d005      	beq.n	1782 <flash_erase_row+0x76>
    1776:	4b15      	ldr	r3, [pc, #84]	; (17cc <flash_erase_row+0xc0>)
    1778:	68db      	ldr	r3, [r3, #12]
    177a:	f003 0320 	and.w	r3, r3, #32
    177e:	2b00      	cmp	r3, #0
    1780:	d0f3      	beq.n	176a <flash_erase_row+0x5e>
	addr=_row2addr(row_nbr);
    1782:	687b      	ldr	r3, [r7, #4]
    1784:	029b      	lsls	r3, r3, #10
    1786:	617b      	str	r3, [r7, #20]
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1788:	2300      	movs	r3, #0
    178a:	60fb      	str	r3, [r7, #12]
    178c:	e00c      	b.n	17a8 <flash_erase_row+0x9c>
		u16=*addr++;
    178e:	697b      	ldr	r3, [r7, #20]
    1790:	1c9a      	adds	r2, r3, #2
    1792:	617a      	str	r2, [r7, #20]
    1794:	881b      	ldrh	r3, [r3, #0]
    1796:	827b      	strh	r3, [r7, #18]
		if (u16!=FLASH_ERASED) break;
    1798:	8a7b      	ldrh	r3, [r7, #18]
    179a:	f64f 72ff 	movw	r2, #65535	; 0xffff
    179e:	4293      	cmp	r3, r2
    17a0:	d107      	bne.n	17b2 <flash_erase_row+0xa6>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    17a2:	68fb      	ldr	r3, [r7, #12]
    17a4:	3301      	adds	r3, #1
    17a6:	60fb      	str	r3, [r7, #12]
    17a8:	68fb      	ldr	r3, [r7, #12]
    17aa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    17ae:	dbee      	blt.n	178e <flash_erase_row+0x82>
    17b0:	e000      	b.n	17b4 <flash_erase_row+0xa8>
		if (u16!=FLASH_ERASED) break;
    17b2:	bf00      	nop
	}
	return u16==FLASH_ERASED;
    17b4:	8a7b      	ldrh	r3, [r7, #18]
    17b6:	f64f 72ff 	movw	r2, #65535	; 0xffff
    17ba:	4293      	cmp	r3, r2
    17bc:	bf0c      	ite	eq
    17be:	2301      	moveq	r3, #1
    17c0:	2300      	movne	r3, #0
    17c2:	b2db      	uxtb	r3, r3
}
    17c4:	4618      	mov	r0, r3
    17c6:	3718      	adds	r7, #24
    17c8:	46bd      	mov	sp, r7
    17ca:	bd80      	pop	{r7, pc}
    17cc:	40022000 	.word	0x40022000

000017d0 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
    17d0:	b580      	push	{r7, lr}
    17d2:	af00      	add	r7, sp, #0
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
    17d4:	4b10      	ldr	r3, [pc, #64]	; (1818 <flash_sync+0x48>)
    17d6:	781b      	ldrb	r3, [r3, #0]
    17d8:	f003 0301 	and.w	r3, r3, #1
    17dc:	2b00      	cmp	r3, #0
    17de:	d017      	beq.n	1810 <flash_sync+0x40>
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
    17e0:	4b0d      	ldr	r3, [pc, #52]	; (1818 <flash_sync+0x48>)
    17e2:	785b      	ldrb	r3, [r3, #1]
    17e4:	4618      	mov	r0, r3
    17e6:	f7ff ff91 	bl	170c <flash_erase_row>
    17ea:	4603      	mov	r3, r0
    17ec:	2b00      	cmp	r3, #0
    17ee:	d00d      	beq.n	180c <flash_sync+0x3c>
    17f0:	f7ff fef0 	bl	15d4 <write_back_buffer>
    17f4:	4603      	mov	r3, r0
    17f6:	2b00      	cmp	r3, #0
    17f8:	d008      	beq.n	180c <flash_sync+0x3c>
			row_buff.flags&=~F_MODIFIED;
    17fa:	4b07      	ldr	r3, [pc, #28]	; (1818 <flash_sync+0x48>)
    17fc:	781b      	ldrb	r3, [r3, #0]
    17fe:	f023 0301 	bic.w	r3, r3, #1
    1802:	b2da      	uxtb	r2, r3
    1804:	4b04      	ldr	r3, [pc, #16]	; (1818 <flash_sync+0x48>)
    1806:	701a      	strb	r2, [r3, #0]
			return 1;
    1808:	2301      	movs	r3, #1
    180a:	e002      	b.n	1812 <flash_sync+0x42>
		}
		return 0;
    180c:	2300      	movs	r3, #0
    180e:	e000      	b.n	1812 <flash_sync+0x42>
	}
	return 1;
    1810:	2301      	movs	r3, #1
}
    1812:	4618      	mov	r0, r3
    1814:	bd80      	pop	{r7, pc}
    1816:	bf00      	nop
    1818:	20000288 	.word	0x20000288

0000181c <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
    181c:	b480      	push	{r7}
    181e:	af00      	add	r7, sp, #0
	row_buff.flags=0;
    1820:	4b03      	ldr	r3, [pc, #12]	; (1830 <flash_flush+0x14>)
    1822:	2200      	movs	r2, #0
    1824:	701a      	strb	r2, [r3, #0]
}
    1826:	bf00      	nop
    1828:	46bd      	mov	sp, r7
    182a:	bc80      	pop	{r7}
    182c:	4770      	bx	lr
    182e:	bf00      	nop
    1830:	20000288 	.word	0x20000288

00001834 <flash_disable>:


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
    1834:	b580      	push	{r7, lr}
    1836:	af00      	add	r7, sp, #0
	flash_sync();
    1838:	f7ff ffca 	bl	17d0 <flash_sync>
	row_buff.flags=0;
    183c:	4b05      	ldr	r3, [pc, #20]	; (1854 <flash_disable+0x20>)
    183e:	2200      	movs	r2, #0
    1840:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
    1842:	4a05      	ldr	r2, [pc, #20]	; (1858 <flash_disable+0x24>)
    1844:	4b04      	ldr	r3, [pc, #16]	; (1858 <flash_disable+0x24>)
    1846:	691b      	ldr	r3, [r3, #16]
    1848:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    184c:	6113      	str	r3, [r2, #16]
}
    184e:	bf00      	nop
    1850:	bd80      	pop	{r7, pc}
    1852:	bf00      	nop
    1854:	20000288 	.word	0x20000288
    1858:	40022000 	.word	0x40022000

0000185c <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
    185c:	b580      	push	{r7, lr}
    185e:	b084      	sub	sp, #16
    1860:	af00      	add	r7, sp, #0
    1862:	6078      	str	r0, [r7, #4]
    1864:	460b      	mov	r3, r1
    1866:	70fb      	strb	r3, [r7, #3]
	uint32_t offset, row;
	
	row=_addr2row(address);
    1868:	687b      	ldr	r3, [r7, #4]
    186a:	0a9b      	lsrs	r3, r3, #10
    186c:	60fb      	str	r3, [r7, #12]
	if (row<FIRST_WRITABLE_ROW) return 0;
    186e:	68fb      	ldr	r3, [r7, #12]
    1870:	2b3f      	cmp	r3, #63	; 0x3f
    1872:	d801      	bhi.n	1878 <flash_write_byte+0x1c>
    1874:	2300      	movs	r3, #0
    1876:	e021      	b.n	18bc <flash_write_byte+0x60>
	if (row!=row_buff.row){
    1878:	4b12      	ldr	r3, [pc, #72]	; (18c4 <flash_write_byte+0x68>)
    187a:	785b      	ldrb	r3, [r3, #1]
    187c:	461a      	mov	r2, r3
    187e:	68fb      	ldr	r3, [r7, #12]
    1880:	429a      	cmp	r2, r3
    1882:	d009      	beq.n	1898 <flash_write_byte+0x3c>
		if (!flash_sync()) return 0;
    1884:	f7ff ffa4 	bl	17d0 <flash_sync>
    1888:	4603      	mov	r3, r0
    188a:	2b00      	cmp	r3, #0
    188c:	d101      	bne.n	1892 <flash_write_byte+0x36>
    188e:	2300      	movs	r3, #0
    1890:	e014      	b.n	18bc <flash_write_byte+0x60>
		load_row(row);
    1892:	68f8      	ldr	r0, [r7, #12]
    1894:	f7ff fee2 	bl	165c <load_row>
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
    1898:	687b      	ldr	r3, [r7, #4]
    189a:	f3c3 0309 	ubfx	r3, r3, #0, #10
    189e:	60bb      	str	r3, [r7, #8]
	row_buff.data[offset]=b;
    18a0:	4a08      	ldr	r2, [pc, #32]	; (18c4 <flash_write_byte+0x68>)
    18a2:	68bb      	ldr	r3, [r7, #8]
    18a4:	4413      	add	r3, r2
    18a6:	3302      	adds	r3, #2
    18a8:	78fa      	ldrb	r2, [r7, #3]
    18aa:	701a      	strb	r2, [r3, #0]
	row_buff.flags|=F_MODIFIED;
    18ac:	4b05      	ldr	r3, [pc, #20]	; (18c4 <flash_write_byte+0x68>)
    18ae:	781b      	ldrb	r3, [r3, #0]
    18b0:	f043 0301 	orr.w	r3, r3, #1
    18b4:	b2da      	uxtb	r2, r3
    18b6:	4b03      	ldr	r3, [pc, #12]	; (18c4 <flash_write_byte+0x68>)
    18b8:	701a      	strb	r2, [r3, #0]
	return 1;
    18ba:	2301      	movs	r3, #1
}
    18bc:	4618      	mov	r0, r3
    18be:	3710      	adds	r7, #16
    18c0:	46bd      	mov	sp, r7
    18c2:	bd80      	pop	{r7, pc}
    18c4:	20000288 	.word	0x20000288

000018c8 <flash_read_block>:
// arguments:
//		address,  adresse de début du bloc.
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
    18c8:	b590      	push	{r4, r7, lr}
    18ca:	b087      	sub	sp, #28
    18cc:	af00      	add	r7, sp, #0
    18ce:	60f8      	str	r0, [r7, #12]
    18d0:	60b9      	str	r1, [r7, #8]
    18d2:	607a      	str	r2, [r7, #4]
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    18d4:	2300      	movs	r3, #0
    18d6:	617b      	str	r3, [r7, #20]
    18d8:	e00d      	b.n	18f6 <flash_read_block+0x2e>
    18da:	68bc      	ldr	r4, [r7, #8]
    18dc:	1c63      	adds	r3, r4, #1
    18de:	60bb      	str	r3, [r7, #8]
    18e0:	68fb      	ldr	r3, [r7, #12]
    18e2:	1c5a      	adds	r2, r3, #1
    18e4:	60fa      	str	r2, [r7, #12]
    18e6:	4618      	mov	r0, r3
    18e8:	f7ff fe20 	bl	152c <read_byte>
    18ec:	4603      	mov	r3, r0
    18ee:	7023      	strb	r3, [r4, #0]
    18f0:	697b      	ldr	r3, [r7, #20]
    18f2:	3301      	adds	r3, #1
    18f4:	617b      	str	r3, [r7, #20]
    18f6:	697a      	ldr	r2, [r7, #20]
    18f8:	687b      	ldr	r3, [r7, #4]
    18fa:	429a      	cmp	r2, r3
    18fc:	dbed      	blt.n	18da <flash_read_block+0x12>
}
    18fe:	bf00      	nop
    1900:	371c      	adds	r7, #28
    1902:	46bd      	mov	sp, r7
    1904:	bd90      	pop	{r4, r7, pc}

00001906 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    1906:	b580      	push	{r7, lr}
    1908:	b086      	sub	sp, #24
    190a:	af00      	add	r7, sp, #0
    190c:	60f8      	str	r0, [r7, #12]
    190e:	60b9      	str	r1, [r7, #8]
    1910:	607a      	str	r2, [r7, #4]
	int i;
	if ((void*)address<ffa) return 0;
    1912:	4b18      	ldr	r3, [pc, #96]	; (1974 <flash_write_block+0x6e>)
    1914:	681b      	ldr	r3, [r3, #0]
    1916:	461a      	mov	r2, r3
    1918:	68fb      	ldr	r3, [r7, #12]
    191a:	4293      	cmp	r3, r2
    191c:	d201      	bcs.n	1922 <flash_write_block+0x1c>
    191e:	2300      	movs	r3, #0
    1920:	e023      	b.n	196a <flash_write_block+0x64>
	if (!flash_enable()) return 0;	
    1922:	f7ff fdcd 	bl	14c0 <flash_enable>
    1926:	4603      	mov	r3, r0
    1928:	2b00      	cmp	r3, #0
    192a:	d101      	bne.n	1930 <flash_write_block+0x2a>
    192c:	2300      	movs	r3, #0
    192e:	e01c      	b.n	196a <flash_write_block+0x64>
	for (i=0;i<size;i++){
    1930:	2300      	movs	r3, #0
    1932:	617b      	str	r3, [r7, #20]
    1934:	e012      	b.n	195c <flash_write_block+0x56>
		if (!flash_write_byte(address++,*buffer++)){
    1936:	68fa      	ldr	r2, [r7, #12]
    1938:	1c53      	adds	r3, r2, #1
    193a:	60fb      	str	r3, [r7, #12]
    193c:	68bb      	ldr	r3, [r7, #8]
    193e:	1c59      	adds	r1, r3, #1
    1940:	60b9      	str	r1, [r7, #8]
    1942:	781b      	ldrb	r3, [r3, #0]
    1944:	4619      	mov	r1, r3
    1946:	4610      	mov	r0, r2
    1948:	f7ff ff88 	bl	185c <flash_write_byte>
    194c:	4603      	mov	r3, r0
    194e:	2b00      	cmp	r3, #0
    1950:	d101      	bne.n	1956 <flash_write_block+0x50>
			return 0;
    1952:	2300      	movs	r3, #0
    1954:	e009      	b.n	196a <flash_write_block+0x64>
	for (i=0;i<size;i++){
    1956:	697b      	ldr	r3, [r7, #20]
    1958:	3301      	adds	r3, #1
    195a:	617b      	str	r3, [r7, #20]
    195c:	697a      	ldr	r2, [r7, #20]
    195e:	687b      	ldr	r3, [r7, #4]
    1960:	429a      	cmp	r2, r3
    1962:	dbe8      	blt.n	1936 <flash_write_block+0x30>
		}
	}
	flash_disable();
    1964:	f7ff ff66 	bl	1834 <flash_disable>
	return 1;
    1968:	2301      	movs	r3, #1
}
    196a:	4618      	mov	r0, r3
    196c:	3718      	adds	r7, #24
    196e:	46bd      	mov	sp, r7
    1970:	bd80      	pop	{r7, pc}
    1972:	bf00      	nop
    1974:	00006400 	.word	0x00006400

00001978 <btn_idx>:
// à partir de sont bitmask
// input:
//      mask masque binaire du bouton
// output:
//      idx  index dans la table
static uint8_t btn_idx(uint8_t mask){
    1978:	b480      	push	{r7}
    197a:	b085      	sub	sp, #20
    197c:	af00      	add	r7, sp, #0
    197e:	4603      	mov	r3, r0
    1980:	71fb      	strb	r3, [r7, #7]
    uint8_t idx=0;
    1982:	2300      	movs	r3, #0
    1984:	73fb      	strb	r3, [r7, #15]
    mask>>=1;
    1986:	79fb      	ldrb	r3, [r7, #7]
    1988:	085b      	lsrs	r3, r3, #1
    198a:	71fb      	strb	r3, [r7, #7]
    while(mask){idx++; mask>>=1;}
    198c:	e005      	b.n	199a <btn_idx+0x22>
    198e:	7bfb      	ldrb	r3, [r7, #15]
    1990:	3301      	adds	r3, #1
    1992:	73fb      	strb	r3, [r7, #15]
    1994:	79fb      	ldrb	r3, [r7, #7]
    1996:	085b      	lsrs	r3, r3, #1
    1998:	71fb      	strb	r3, [r7, #7]
    199a:	79fb      	ldrb	r3, [r7, #7]
    199c:	2b00      	cmp	r3, #0
    199e:	d1f6      	bne.n	198e <btn_idx+0x16>
    return idx;
    19a0:	7bfb      	ldrb	r3, [r7, #15]
}
    19a2:	4618      	mov	r0, r3
    19a4:	3714      	adds	r7, #20
    19a6:	46bd      	mov	sp, r7
    19a8:	bc80      	pop	{r7}
    19aa:	4770      	bx	lr

000019ac <btn_mask>:
// retourne la mask du bouton à partir de sa valeur hexadécimal
// input:
//      btn_value   valeur hexadécimal du bouton inscrite dans la table buttons[]
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    19ac:	b480      	push	{r7}
    19ae:	b085      	sub	sp, #20
    19b0:	af00      	add	r7, sp, #0
    19b2:	4603      	mov	r3, r0
    19b4:	71fb      	strb	r3, [r7, #7]
    int i;
    for (i=0;i<8;i++){
    19b6:	2300      	movs	r3, #0
    19b8:	60fb      	str	r3, [r7, #12]
    19ba:	e00f      	b.n	19dc <btn_mask+0x30>
        if (buttons[i]==btn_value) return 1<<i;
    19bc:	4a0c      	ldr	r2, [pc, #48]	; (19f0 <btn_mask+0x44>)
    19be:	68fb      	ldr	r3, [r7, #12]
    19c0:	4413      	add	r3, r2
    19c2:	781b      	ldrb	r3, [r3, #0]
    19c4:	79fa      	ldrb	r2, [r7, #7]
    19c6:	429a      	cmp	r2, r3
    19c8:	d105      	bne.n	19d6 <btn_mask+0x2a>
    19ca:	2201      	movs	r2, #1
    19cc:	68fb      	ldr	r3, [r7, #12]
    19ce:	fa02 f303 	lsl.w	r3, r2, r3
    19d2:	b2db      	uxtb	r3, r3
    19d4:	e006      	b.n	19e4 <btn_mask+0x38>
    for (i=0;i<8;i++){
    19d6:	68fb      	ldr	r3, [r7, #12]
    19d8:	3301      	adds	r3, #1
    19da:	60fb      	str	r3, [r7, #12]
    19dc:	68fb      	ldr	r3, [r7, #12]
    19de:	2b07      	cmp	r3, #7
    19e0:	ddec      	ble.n	19bc <btn_mask+0x10>
    }
    return 255;
    19e2:	23ff      	movs	r3, #255	; 0xff
}
    19e4:	4618      	mov	r0, r3
    19e6:	3714      	adds	r7, #20
    19e8:	46bd      	mov	sp, r7
    19ea:	bc80      	pop	{r7}
    19ec:	4770      	bx	lr
    19ee:	bf00      	nop
    19f0:	2000068c 	.word	0x2000068c

000019f4 <set_keymap>:

// set buttons map
void set_keymap(const uint8_t *kmap){
    19f4:	b480      	push	{r7}
    19f6:	b085      	sub	sp, #20
    19f8:	af00      	add	r7, sp, #0
    19fa:	6078      	str	r0, [r7, #4]
    int i;
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    19fc:	2300      	movs	r3, #0
    19fe:	60fb      	str	r3, [r7, #12]
    1a00:	e00b      	b.n	1a1a <set_keymap+0x26>
    1a02:	68fb      	ldr	r3, [r7, #12]
    1a04:	687a      	ldr	r2, [r7, #4]
    1a06:	4413      	add	r3, r2
    1a08:	7819      	ldrb	r1, [r3, #0]
    1a0a:	4a08      	ldr	r2, [pc, #32]	; (1a2c <set_keymap+0x38>)
    1a0c:	68fb      	ldr	r3, [r7, #12]
    1a0e:	4413      	add	r3, r2
    1a10:	460a      	mov	r2, r1
    1a12:	701a      	strb	r2, [r3, #0]
    1a14:	68fb      	ldr	r3, [r7, #12]
    1a16:	3301      	adds	r3, #1
    1a18:	60fb      	str	r3, [r7, #12]
    1a1a:	68fb      	ldr	r3, [r7, #12]
    1a1c:	2b07      	cmp	r3, #7
    1a1e:	ddf0      	ble.n	1a02 <set_keymap+0xe>
}
    1a20:	bf00      	nop
    1a22:	3714      	adds	r7, #20
    1a24:	46bd      	mov	sp, r7
    1a26:	bc80      	pop	{r7}
    1a28:	4770      	bx	lr
    1a2a:	bf00      	nop
    1a2c:	2000068c 	.word	0x2000068c

00001a30 <gamepad_init>:

// initialisation matérielle.
void gamepad_init(){
    1a30:	b580      	push	{r7, lr}
    1a32:	af00      	add	r7, sp, #0
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    1a34:	2202      	movs	r2, #2
    1a36:	210f      	movs	r1, #15
    1a38:	480a      	ldr	r0, [pc, #40]	; (1a64 <gamepad_init+0x34>)
    1a3a:	f000 fc19 	bl	2270 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    1a3e:	2202      	movs	r2, #2
    1a40:	210d      	movs	r1, #13
    1a42:	4808      	ldr	r0, [pc, #32]	; (1a64 <gamepad_init+0x34>)
    1a44:	f000 fc14 	bl	2270 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    1a48:	2208      	movs	r2, #8
    1a4a:	210e      	movs	r1, #14
    1a4c:	4805      	ldr	r0, [pc, #20]	; (1a64 <gamepad_init+0x34>)
    1a4e:	f000 fc0f 	bl	2270 <config_pin>
    btn_state=0xff;
    1a52:	4b05      	ldr	r3, [pc, #20]	; (1a68 <gamepad_init+0x38>)
    1a54:	22ff      	movs	r2, #255	; 0xff
    1a56:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1a58:	4804      	ldr	r0, [pc, #16]	; (1a6c <gamepad_init+0x3c>)
    1a5a:	f7ff ffcb 	bl	19f4 <set_keymap>
}
    1a5e:	bf00      	nop
    1a60:	bd80      	pop	{r7, pc}
    1a62:	bf00      	nop
    1a64:	40010c00 	.word	0x40010c00
    1a68:	200026b4 	.word	0x200026b4
    1a6c:	00006030 	.word	0x00006030

00001a70 <count_zeros>:

static int count_zeros(uint8_t u8){
    1a70:	b480      	push	{r7}
    1a72:	b085      	sub	sp, #20
    1a74:	af00      	add	r7, sp, #0
    1a76:	4603      	mov	r3, r0
    1a78:	71fb      	strb	r3, [r7, #7]
    int count=0;
    1a7a:	2300      	movs	r3, #0
    1a7c:	60fb      	str	r3, [r7, #12]
    while (u8){
    1a7e:	e00a      	b.n	1a96 <count_zeros+0x26>
        if (!(u8&1)) count++;
    1a80:	79fb      	ldrb	r3, [r7, #7]
    1a82:	f003 0301 	and.w	r3, r3, #1
    1a86:	2b00      	cmp	r3, #0
    1a88:	d102      	bne.n	1a90 <count_zeros+0x20>
    1a8a:	68fb      	ldr	r3, [r7, #12]
    1a8c:	3301      	adds	r3, #1
    1a8e:	60fb      	str	r3, [r7, #12]
        u8>>=1;
    1a90:	79fb      	ldrb	r3, [r7, #7]
    1a92:	085b      	lsrs	r3, r3, #1
    1a94:	71fb      	strb	r3, [r7, #7]
    while (u8){
    1a96:	79fb      	ldrb	r3, [r7, #7]
    1a98:	2b00      	cmp	r3, #0
    1a9a:	d1f1      	bne.n	1a80 <count_zeros+0x10>
    }
    return count;
    1a9c:	68fb      	ldr	r3, [r7, #12]
}
    1a9e:	4618      	mov	r0, r3
    1aa0:	3714      	adds	r7, #20
    1aa2:	46bd      	mov	sp, r7
    1aa4:	bc80      	pop	{r7}
    1aa6:	4770      	bx	lr

00001aa8 <shift_out>:

static uint8_t shift_out(uint8_t byte){
    1aa8:	b480      	push	{r7}
    1aaa:	b085      	sub	sp, #20
    1aac:	af00      	add	r7, sp, #0
    1aae:	4603      	mov	r3, r0
    1ab0:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=1,rx_byte=0;
    1ab2:	2301      	movs	r3, #1
    1ab4:	73fb      	strb	r3, [r7, #15]
    1ab6:	2300      	movs	r3, #0
    1ab8:	73bb      	strb	r3, [r7, #14]

#define _clk_delay()  asm volatile("nop\n\tnop\n\tnop\n\t")

    while (mask){
    1aba:	e033      	b.n	1b24 <shift_out+0x7c>
        if (byte&mask){
    1abc:	79fa      	ldrb	r2, [r7, #7]
    1abe:	7bfb      	ldrb	r3, [r7, #15]
    1ac0:	4013      	ands	r3, r2
    1ac2:	b2db      	uxtb	r3, r3
    1ac4:	2b00      	cmp	r3, #0
    1ac6:	d006      	beq.n	1ad6 <shift_out+0x2e>
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    1ac8:	4a25      	ldr	r2, [pc, #148]	; (1b60 <shift_out+0xb8>)
    1aca:	4b25      	ldr	r3, [pc, #148]	; (1b60 <shift_out+0xb8>)
    1acc:	68db      	ldr	r3, [r3, #12]
    1ace:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    1ad2:	60d3      	str	r3, [r2, #12]
    1ad4:	e005      	b.n	1ae2 <shift_out+0x3a>
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    1ad6:	4a22      	ldr	r2, [pc, #136]	; (1b60 <shift_out+0xb8>)
    1ad8:	4b21      	ldr	r3, [pc, #132]	; (1b60 <shift_out+0xb8>)
    1ada:	68db      	ldr	r3, [r3, #12]
    1adc:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    1ae0:	60d3      	str	r3, [r2, #12]
        }
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    1ae2:	4a1f      	ldr	r2, [pc, #124]	; (1b60 <shift_out+0xb8>)
    1ae4:	4b1e      	ldr	r3, [pc, #120]	; (1b60 <shift_out+0xb8>)
    1ae6:	68db      	ldr	r3, [r3, #12]
    1ae8:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1aec:	60d3      	str	r3, [r2, #12]
        _clk_delay();
    1aee:	bf00      	nop
    1af0:	bf00      	nop
    1af2:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    1af4:	4a1a      	ldr	r2, [pc, #104]	; (1b60 <shift_out+0xb8>)
    1af6:	4b1a      	ldr	r3, [pc, #104]	; (1b60 <shift_out+0xb8>)
    1af8:	68db      	ldr	r3, [r3, #12]
    1afa:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    1afe:	60d3      	str	r3, [r2, #12]
        rx_byte>>=1;
    1b00:	7bbb      	ldrb	r3, [r7, #14]
    1b02:	085b      	lsrs	r3, r3, #1
    1b04:	73bb      	strb	r3, [r7, #14]
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
    1b06:	4a16      	ldr	r2, [pc, #88]	; (1b60 <shift_out+0xb8>)
    1b08:	4b15      	ldr	r3, [pc, #84]	; (1b60 <shift_out+0xb8>)
    1b0a:	689b      	ldr	r3, [r3, #8]
    1b0c:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
    1b10:	6093      	str	r3, [r2, #8]
    1b12:	2b00      	cmp	r3, #0
    1b14:	d003      	beq.n	1b1e <shift_out+0x76>
    1b16:	7bbb      	ldrb	r3, [r7, #14]
    1b18:	f063 037f 	orn	r3, r3, #127	; 0x7f
    1b1c:	73bb      	strb	r3, [r7, #14]
        mask<<=1;
    1b1e:	7bfb      	ldrb	r3, [r7, #15]
    1b20:	005b      	lsls	r3, r3, #1
    1b22:	73fb      	strb	r3, [r7, #15]
    while (mask){
    1b24:	7bfb      	ldrb	r3, [r7, #15]
    1b26:	2b00      	cmp	r3, #0
    1b28:	d1c8      	bne.n	1abc <shift_out+0x14>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    1b2a:	4a0d      	ldr	r2, [pc, #52]	; (1b60 <shift_out+0xb8>)
    1b2c:	4b0c      	ldr	r3, [pc, #48]	; (1b60 <shift_out+0xb8>)
    1b2e:	68db      	ldr	r3, [r3, #12]
    1b30:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    1b34:	60d3      	str	r3, [r2, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    1b36:	4a0a      	ldr	r2, [pc, #40]	; (1b60 <shift_out+0xb8>)
    1b38:	4b09      	ldr	r3, [pc, #36]	; (1b60 <shift_out+0xb8>)
    1b3a:	68db      	ldr	r3, [r3, #12]
    1b3c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1b40:	60d3      	str	r3, [r2, #12]
    _clk_delay();
    1b42:	bf00      	nop
    1b44:	bf00      	nop
    1b46:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    1b48:	4a05      	ldr	r2, [pc, #20]	; (1b60 <shift_out+0xb8>)
    1b4a:	4b05      	ldr	r3, [pc, #20]	; (1b60 <shift_out+0xb8>)
    1b4c:	68db      	ldr	r3, [r3, #12]
    1b4e:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    1b52:	60d3      	str	r3, [r2, #12]
    return rx_byte;
    1b54:	7bbb      	ldrb	r3, [r7, #14]
}
    1b56:	4618      	mov	r0, r3
    1b58:	3714      	adds	r7, #20
    1b5a:	46bd      	mov	sp, r7
    1b5c:	bc80      	pop	{r7}
    1b5e:	4770      	bx	lr
    1b60:	40010c00 	.word	0x40010c00

00001b64 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1b64:	b580      	push	{r7, lr}
    1b66:	af00      	add	r7, sp, #0
    btn_state=shift_out(0xfe);
    1b68:	20fe      	movs	r0, #254	; 0xfe
    1b6a:	f7ff ff9d 	bl	1aa8 <shift_out>
    1b6e:	4603      	mov	r3, r0
    1b70:	461a      	mov	r2, r3
    1b72:	4b0d      	ldr	r3, [pc, #52]	; (1ba8 <read_gamepad+0x44>)
    1b74:	701a      	strb	r2, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0){
    1b76:	4b0c      	ldr	r3, [pc, #48]	; (1ba8 <read_gamepad+0x44>)
    1b78:	781b      	ldrb	r3, [r3, #0]
    1b7a:	b2db      	uxtb	r3, r3
    1b7c:	f003 0312 	and.w	r3, r3, #18
    1b80:	2b00      	cmp	r3, #0
    1b82:	d10f      	bne.n	1ba4 <read_gamepad+0x40>
        while (btn_state!=0xff){
    1b84:	e006      	b.n	1b94 <read_gamepad+0x30>
            btn_state=shift_out(0xfe);
    1b86:	20fe      	movs	r0, #254	; 0xfe
    1b88:	f7ff ff8e 	bl	1aa8 <shift_out>
    1b8c:	4603      	mov	r3, r0
    1b8e:	461a      	mov	r2, r3
    1b90:	4b05      	ldr	r3, [pc, #20]	; (1ba8 <read_gamepad+0x44>)
    1b92:	701a      	strb	r2, [r3, #0]
        while (btn_state!=0xff){
    1b94:	4b04      	ldr	r3, [pc, #16]	; (1ba8 <read_gamepad+0x44>)
    1b96:	781b      	ldrb	r3, [r3, #0]
    1b98:	b2db      	uxtb	r3, r3
    1b9a:	2bff      	cmp	r3, #255	; 0xff
    1b9c:	d1f3      	bne.n	1b86 <read_gamepad+0x22>
        };
        _reset_mcu();
    1b9e:	4b03      	ldr	r3, [pc, #12]	; (1bac <read_gamepad+0x48>)
    1ba0:	4a03      	ldr	r2, [pc, #12]	; (1bb0 <read_gamepad+0x4c>)
    1ba2:	601a      	str	r2, [r3, #0]
    }
}
    1ba4:	bf00      	nop
    1ba6:	bd80      	pop	{r7, pc}
    1ba8:	200026b4 	.word	0x200026b4
    1bac:	e000ed0c 	.word	0xe000ed0c
    1bb0:	05fa0004 	.word	0x05fa0004

00001bb4 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    1bb4:	b580      	push	{r7, lr}
    1bb6:	b084      	sub	sp, #16
    1bb8:	af00      	add	r7, sp, #0
    1bba:	4603      	mov	r3, r0
    1bbc:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1bbe:	79fb      	ldrb	r3, [r7, #7]
    1bc0:	4618      	mov	r0, r3
    1bc2:	f7ff fef3 	bl	19ac <btn_mask>
    1bc6:	4603      	mov	r3, r0
    1bc8:	73fb      	strb	r3, [r7, #15]
    return !(btn_state&mask);
    1bca:	4b07      	ldr	r3, [pc, #28]	; (1be8 <btn_query_down+0x34>)
    1bcc:	781b      	ldrb	r3, [r3, #0]
    1bce:	b2da      	uxtb	r2, r3
    1bd0:	7bfb      	ldrb	r3, [r7, #15]
    1bd2:	4013      	ands	r3, r2
    1bd4:	b2db      	uxtb	r3, r3
    1bd6:	2b00      	cmp	r3, #0
    1bd8:	bf0c      	ite	eq
    1bda:	2301      	moveq	r3, #1
    1bdc:	2300      	movne	r3, #0
    1bde:	b2db      	uxtb	r3, r3
}
    1be0:	4618      	mov	r0, r3
    1be2:	3710      	adds	r7, #16
    1be4:	46bd      	mov	sp, r7
    1be6:	bd80      	pop	{r7, pc}
    1be8:	200026b4 	.word	0x200026b4

00001bec <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    1bec:	b580      	push	{r7, lr}
    1bee:	b084      	sub	sp, #16
    1bf0:	af00      	add	r7, sp, #0
    1bf2:	4603      	mov	r3, r0
    1bf4:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1bf6:	79fb      	ldrb	r3, [r7, #7]
    1bf8:	4618      	mov	r0, r3
    1bfa:	f7ff fed7 	bl	19ac <btn_mask>
    1bfe:	4603      	mov	r3, r0
    1c00:	72fb      	strb	r3, [r7, #11]
    int frame_count=0;
    1c02:	2300      	movs	r3, #0
    1c04:	60fb      	str	r3, [r7, #12]
    while (frame_count<4){
    1c06:	e00f      	b.n	1c28 <btn_wait_down+0x3c>
        frame_sync();
    1c08:	f003 fcc8 	bl	559c <frame_sync>
        if (!(btn_state&mask)){
    1c0c:	4b0a      	ldr	r3, [pc, #40]	; (1c38 <btn_wait_down+0x4c>)
    1c0e:	781b      	ldrb	r3, [r3, #0]
    1c10:	b2da      	uxtb	r2, r3
    1c12:	7afb      	ldrb	r3, [r7, #11]
    1c14:	4013      	ands	r3, r2
    1c16:	b2db      	uxtb	r3, r3
    1c18:	2b00      	cmp	r3, #0
    1c1a:	d103      	bne.n	1c24 <btn_wait_down+0x38>
            frame_count++;
    1c1c:	68fb      	ldr	r3, [r7, #12]
    1c1e:	3301      	adds	r3, #1
    1c20:	60fb      	str	r3, [r7, #12]
    1c22:	e001      	b.n	1c28 <btn_wait_down+0x3c>
        }else{
            frame_count=0;
    1c24:	2300      	movs	r3, #0
    1c26:	60fb      	str	r3, [r7, #12]
    while (frame_count<4){
    1c28:	68fb      	ldr	r3, [r7, #12]
    1c2a:	2b03      	cmp	r3, #3
    1c2c:	ddec      	ble.n	1c08 <btn_wait_down+0x1c>
        }
    }
}
    1c2e:	bf00      	nop
    1c30:	3710      	adds	r7, #16
    1c32:	46bd      	mov	sp, r7
    1c34:	bd80      	pop	{r7, pc}
    1c36:	bf00      	nop
    1c38:	200026b4 	.word	0x200026b4

00001c3c <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1c3c:	b580      	push	{r7, lr}
    1c3e:	b084      	sub	sp, #16
    1c40:	af00      	add	r7, sp, #0
    1c42:	4603      	mov	r3, r0
    1c44:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1c46:	79fb      	ldrb	r3, [r7, #7]
    1c48:	4618      	mov	r0, r3
    1c4a:	f7ff feaf 	bl	19ac <btn_mask>
    1c4e:	4603      	mov	r3, r0
    1c50:	72fb      	strb	r3, [r7, #11]
    int frame_count=0;
    1c52:	2300      	movs	r3, #0
    1c54:	60fb      	str	r3, [r7, #12]
    while (frame_count<3){
    1c56:	e00f      	b.n	1c78 <btn_wait_up+0x3c>
        frame_sync();
    1c58:	f003 fca0 	bl	559c <frame_sync>
        if ((btn_state&mask)){
    1c5c:	4b0a      	ldr	r3, [pc, #40]	; (1c88 <btn_wait_up+0x4c>)
    1c5e:	781b      	ldrb	r3, [r3, #0]
    1c60:	b2da      	uxtb	r2, r3
    1c62:	7afb      	ldrb	r3, [r7, #11]
    1c64:	4013      	ands	r3, r2
    1c66:	b2db      	uxtb	r3, r3
    1c68:	2b00      	cmp	r3, #0
    1c6a:	d003      	beq.n	1c74 <btn_wait_up+0x38>
            frame_count++;
    1c6c:	68fb      	ldr	r3, [r7, #12]
    1c6e:	3301      	adds	r3, #1
    1c70:	60fb      	str	r3, [r7, #12]
    1c72:	e001      	b.n	1c78 <btn_wait_up+0x3c>
        }else{
            frame_count=0;
    1c74:	2300      	movs	r3, #0
    1c76:	60fb      	str	r3, [r7, #12]
    while (frame_count<3){
    1c78:	68fb      	ldr	r3, [r7, #12]
    1c7a:	2b02      	cmp	r3, #2
    1c7c:	ddec      	ble.n	1c58 <btn_wait_up+0x1c>
        }
    }
}
    1c7e:	bf00      	nop
    1c80:	3710      	adds	r7, #16
    1c82:	46bd      	mov	sp, r7
    1c84:	bd80      	pop	{r7, pc}
    1c86:	bf00      	nop
    1c88:	200026b4 	.word	0x200026b4

00001c8c <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1c8c:	b580      	push	{r7, lr}
    1c8e:	b082      	sub	sp, #8
    1c90:	af00      	add	r7, sp, #0
    uint8_t last_state=btn_state;
    1c92:	4b16      	ldr	r3, [pc, #88]	; (1cec <btn_wait_any+0x60>)
    1c94:	781b      	ldrb	r3, [r3, #0]
    1c96:	71fb      	strb	r3, [r7, #7]
    int frame_count=0;
    1c98:	2300      	movs	r3, #0
    1c9a:	603b      	str	r3, [r7, #0]
    while (frame_count<3){
    1c9c:	e015      	b.n	1cca <btn_wait_any+0x3e>
        frame_sync();
    1c9e:	f003 fc7d 	bl	559c <frame_sync>
        if (last_state!=btn_state){
    1ca2:	4b12      	ldr	r3, [pc, #72]	; (1cec <btn_wait_any+0x60>)
    1ca4:	781b      	ldrb	r3, [r3, #0]
    1ca6:	b2db      	uxtb	r3, r3
    1ca8:	79fa      	ldrb	r2, [r7, #7]
    1caa:	429a      	cmp	r2, r3
    1cac:	d005      	beq.n	1cba <btn_wait_any+0x2e>
            frame_count=0;
    1cae:	2300      	movs	r3, #0
    1cb0:	603b      	str	r3, [r7, #0]
            last_state=btn_state;
    1cb2:	4b0e      	ldr	r3, [pc, #56]	; (1cec <btn_wait_any+0x60>)
    1cb4:	781b      	ldrb	r3, [r3, #0]
    1cb6:	71fb      	strb	r3, [r7, #7]
    1cb8:	e007      	b.n	1cca <btn_wait_any+0x3e>
        }else if(btn_state!=0xff){
    1cba:	4b0c      	ldr	r3, [pc, #48]	; (1cec <btn_wait_any+0x60>)
    1cbc:	781b      	ldrb	r3, [r3, #0]
    1cbe:	b2db      	uxtb	r3, r3
    1cc0:	2bff      	cmp	r3, #255	; 0xff
    1cc2:	d002      	beq.n	1cca <btn_wait_any+0x3e>
            frame_count++;
    1cc4:	683b      	ldr	r3, [r7, #0]
    1cc6:	3301      	adds	r3, #1
    1cc8:	603b      	str	r3, [r7, #0]
    while (frame_count<3){
    1cca:	683b      	ldr	r3, [r7, #0]
    1ccc:	2b02      	cmp	r3, #2
    1cce:	dde6      	ble.n	1c9e <btn_wait_any+0x12>
        }       
    }
    return buttons[btn_idx(last_state^0xff)];
    1cd0:	79fb      	ldrb	r3, [r7, #7]
    1cd2:	43db      	mvns	r3, r3
    1cd4:	b2db      	uxtb	r3, r3
    1cd6:	4618      	mov	r0, r3
    1cd8:	f7ff fe4e 	bl	1978 <btn_idx>
    1cdc:	4603      	mov	r3, r0
    1cde:	461a      	mov	r2, r3
    1ce0:	4b03      	ldr	r3, [pc, #12]	; (1cf0 <btn_wait_any+0x64>)
    1ce2:	5c9b      	ldrb	r3, [r3, r2]
}
    1ce4:	4618      	mov	r0, r3
    1ce6:	3708      	adds	r7, #8
    1ce8:	46bd      	mov	sp, r7
    1cea:	bd80      	pop	{r7, pc}
    1cec:	200026b4 	.word	0x200026b4
    1cf0:	2000068c 	.word	0x2000068c

00001cf4 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    1cf4:	b480      	push	{r7}
    1cf6:	b083      	sub	sp, #12
    1cf8:	af00      	add	r7, sp, #0
    1cfa:	4603      	mov	r3, r0
    1cfc:	460a      	mov	r2, r1
    1cfe:	71fb      	strb	r3, [r7, #7]
    1d00:	4613      	mov	r3, r2
    1d02:	71bb      	strb	r3, [r7, #6]
    buttons[idx]=value;
    1d04:	79fb      	ldrb	r3, [r7, #7]
    1d06:	4904      	ldr	r1, [pc, #16]	; (1d18 <btn_set_value+0x24>)
    1d08:	79ba      	ldrb	r2, [r7, #6]
    1d0a:	54ca      	strb	r2, [r1, r3]
}
    1d0c:	bf00      	nop
    1d0e:	370c      	adds	r7, #12
    1d10:	46bd      	mov	sp, r7
    1d12:	bc80      	pop	{r7}
    1d14:	4770      	bx	lr
    1d16:	bf00      	nop
    1d18:	2000068c 	.word	0x2000068c

00001d1c <get_keymap>:

// retourne la table buttons
uint8_t* get_keymap(){
    1d1c:	b480      	push	{r7}
    1d1e:	af00      	add	r7, sp, #0
    return buttons;
    1d20:	4b02      	ldr	r3, [pc, #8]	; (1d2c <get_keymap+0x10>)
}
    1d22:	4618      	mov	r0, r3
    1d24:	46bd      	mov	sp, r7
    1d26:	bc80      	pop	{r7}
    1d28:	4770      	bx	lr
    1d2a:	bf00      	nop
    1d2c:	2000068c 	.word	0x2000068c

00001d30 <games_count>:
    {VM_SCHIP,"spacefig",SPACEFIG_SIZE,spacefig,default_kmap},
    {0,"",0,NULL}
};


unsigned games_count(){
    1d30:	b480      	push	{r7}
    1d32:	b083      	sub	sp, #12
    1d34:	af00      	add	r7, sp, #0
    unsigned i;
    for (i=0;;i++){
    1d36:	2300      	movs	r3, #0
    1d38:	607b      	str	r3, [r7, #4]
        if (!games_list[i].size) break;
    1d3a:	490b      	ldr	r1, [pc, #44]	; (1d68 <games_count+0x38>)
    1d3c:	687a      	ldr	r2, [r7, #4]
    1d3e:	4613      	mov	r3, r2
    1d40:	00db      	lsls	r3, r3, #3
    1d42:	1a9b      	subs	r3, r3, r2
    1d44:	009b      	lsls	r3, r3, #2
    1d46:	440b      	add	r3, r1
    1d48:	3310      	adds	r3, #16
    1d4a:	681b      	ldr	r3, [r3, #0]
    1d4c:	2b00      	cmp	r3, #0
    1d4e:	d003      	beq.n	1d58 <games_count+0x28>
    for (i=0;;i++){
    1d50:	687b      	ldr	r3, [r7, #4]
    1d52:	3301      	adds	r3, #1
    1d54:	607b      	str	r3, [r7, #4]
        if (!games_list[i].size) break;
    1d56:	e7f0      	b.n	1d3a <games_count+0xa>
    1d58:	bf00      	nop
    }
    return i;
    1d5a:	687b      	ldr	r3, [r7, #4]
}
    1d5c:	4618      	mov	r0, r3
    1d5e:	370c      	adds	r7, #12
    1d60:	46bd      	mov	sp, r7
    1d62:	bc80      	pop	{r7}
    1d64:	4770      	bx	lr
    1d66:	bf00      	nop
    1d68:	20000008 	.word	0x20000008

00001d6c <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    1d6c:	b480      	push	{r7}
    1d6e:	b085      	sub	sp, #20
    1d70:	af00      	add	r7, sp, #0
    1d72:	6078      	str	r0, [r7, #4]
    1d74:	6039      	str	r1, [r7, #0]
	int result=0;
    1d76:	2300      	movs	r3, #0
    1d78:	60fb      	str	r3, [r7, #12]
	while (*s1 && *s2){
    1d7a:	e018      	b.n	1dae <strcmp+0x42>
		if (*s1<*s2){
    1d7c:	687b      	ldr	r3, [r7, #4]
    1d7e:	781a      	ldrb	r2, [r3, #0]
    1d80:	683b      	ldr	r3, [r7, #0]
    1d82:	781b      	ldrb	r3, [r3, #0]
    1d84:	429a      	cmp	r2, r3
    1d86:	d203      	bcs.n	1d90 <strcmp+0x24>
			result=-1;
    1d88:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1d8c:	60fb      	str	r3, [r7, #12]
			break;
    1d8e:	e016      	b.n	1dbe <strcmp+0x52>
		}else if (*s1>*s2){
    1d90:	687b      	ldr	r3, [r7, #4]
    1d92:	781a      	ldrb	r2, [r3, #0]
    1d94:	683b      	ldr	r3, [r7, #0]
    1d96:	781b      	ldrb	r3, [r3, #0]
    1d98:	429a      	cmp	r2, r3
    1d9a:	d902      	bls.n	1da2 <strcmp+0x36>
			result=1;
    1d9c:	2301      	movs	r3, #1
    1d9e:	60fb      	str	r3, [r7, #12]
			break;
    1da0:	e00d      	b.n	1dbe <strcmp+0x52>
		}
		s1++;
    1da2:	687b      	ldr	r3, [r7, #4]
    1da4:	3301      	adds	r3, #1
    1da6:	607b      	str	r3, [r7, #4]
		s2++;
    1da8:	683b      	ldr	r3, [r7, #0]
    1daa:	3301      	adds	r3, #1
    1dac:	603b      	str	r3, [r7, #0]
	while (*s1 && *s2){
    1dae:	687b      	ldr	r3, [r7, #4]
    1db0:	781b      	ldrb	r3, [r3, #0]
    1db2:	2b00      	cmp	r3, #0
    1db4:	d003      	beq.n	1dbe <strcmp+0x52>
    1db6:	683b      	ldr	r3, [r7, #0]
    1db8:	781b      	ldrb	r3, [r3, #0]
    1dba:	2b00      	cmp	r3, #0
    1dbc:	d1de      	bne.n	1d7c <strcmp+0x10>
	}
	if (!result){
    1dbe:	68fb      	ldr	r3, [r7, #12]
    1dc0:	2b00      	cmp	r3, #0
    1dc2:	d115      	bne.n	1df0 <strcmp+0x84>
		if (!*s1 && *s2){
    1dc4:	687b      	ldr	r3, [r7, #4]
    1dc6:	781b      	ldrb	r3, [r3, #0]
    1dc8:	2b00      	cmp	r3, #0
    1dca:	d107      	bne.n	1ddc <strcmp+0x70>
    1dcc:	683b      	ldr	r3, [r7, #0]
    1dce:	781b      	ldrb	r3, [r3, #0]
    1dd0:	2b00      	cmp	r3, #0
    1dd2:	d003      	beq.n	1ddc <strcmp+0x70>
			result=-1;
    1dd4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1dd8:	60fb      	str	r3, [r7, #12]
    1dda:	e009      	b.n	1df0 <strcmp+0x84>
		}else if (*s1 && !*s2) {
    1ddc:	687b      	ldr	r3, [r7, #4]
    1dde:	781b      	ldrb	r3, [r3, #0]
    1de0:	2b00      	cmp	r3, #0
    1de2:	d005      	beq.n	1df0 <strcmp+0x84>
    1de4:	683b      	ldr	r3, [r7, #0]
    1de6:	781b      	ldrb	r3, [r3, #0]
    1de8:	2b00      	cmp	r3, #0
    1dea:	d101      	bne.n	1df0 <strcmp+0x84>
			result=1;
    1dec:	2301      	movs	r3, #1
    1dee:	60fb      	str	r3, [r7, #12]
		}
	}
	return result;
    1df0:	68fb      	ldr	r3, [r7, #12]
}
    1df2:	4618      	mov	r0, r3
    1df4:	3714      	adds	r7, #20
    1df6:	46bd      	mov	sp, r7
    1df8:	bc80      	pop	{r7}
    1dfa:	4770      	bx	lr

00001dfc <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
    1dfc:	b480      	push	{r7}
    1dfe:	b083      	sub	sp, #12
    1e00:	af00      	add	r7, sp, #0
    1e02:	4603      	mov	r3, r0
    1e04:	71fb      	strb	r3, [r7, #7]
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1e06:	79fb      	ldrb	r3, [r7, #7]
    1e08:	2b60      	cmp	r3, #96	; 0x60
    1e0a:	d902      	bls.n	1e12 <alpha+0x16>
    1e0c:	79fb      	ldrb	r3, [r7, #7]
    1e0e:	2b7a      	cmp	r3, #122	; 0x7a
    1e10:	d905      	bls.n	1e1e <alpha+0x22>
    1e12:	79fb      	ldrb	r3, [r7, #7]
    1e14:	2b40      	cmp	r3, #64	; 0x40
    1e16:	d904      	bls.n	1e22 <alpha+0x26>
    1e18:	79fb      	ldrb	r3, [r7, #7]
    1e1a:	2b5a      	cmp	r3, #90	; 0x5a
    1e1c:	d801      	bhi.n	1e22 <alpha+0x26>
    1e1e:	2301      	movs	r3, #1
    1e20:	e000      	b.n	1e24 <alpha+0x28>
    1e22:	2300      	movs	r3, #0
}
    1e24:	4618      	mov	r0, r3
    1e26:	370c      	adds	r7, #12
    1e28:	46bd      	mov	sp, r7
    1e2a:	bc80      	pop	{r7}
    1e2c:	4770      	bx	lr

00001e2e <digit>:

int digit(char c){
    1e2e:	b480      	push	{r7}
    1e30:	b083      	sub	sp, #12
    1e32:	af00      	add	r7, sp, #0
    1e34:	4603      	mov	r3, r0
    1e36:	71fb      	strb	r3, [r7, #7]
   return ((c>='0') && (c<='9'));
    1e38:	79fb      	ldrb	r3, [r7, #7]
    1e3a:	2b2f      	cmp	r3, #47	; 0x2f
    1e3c:	d904      	bls.n	1e48 <digit+0x1a>
    1e3e:	79fb      	ldrb	r3, [r7, #7]
    1e40:	2b39      	cmp	r3, #57	; 0x39
    1e42:	d801      	bhi.n	1e48 <digit+0x1a>
    1e44:	2301      	movs	r3, #1
    1e46:	e000      	b.n	1e4a <digit+0x1c>
    1e48:	2300      	movs	r3, #0
}
    1e4a:	4618      	mov	r0, r3
    1e4c:	370c      	adds	r7, #12
    1e4e:	46bd      	mov	sp, r7
    1e50:	bc80      	pop	{r7}
    1e52:	4770      	bx	lr

00001e54 <hexdigit>:

int hexdigit(char c){
    1e54:	b580      	push	{r7, lr}
    1e56:	b082      	sub	sp, #8
    1e58:	af00      	add	r7, sp, #0
    1e5a:	4603      	mov	r3, r0
    1e5c:	71fb      	strb	r3, [r7, #7]
	if (c>='a') c-=32;
    1e5e:	79fb      	ldrb	r3, [r7, #7]
    1e60:	2b60      	cmp	r3, #96	; 0x60
    1e62:	d902      	bls.n	1e6a <hexdigit+0x16>
    1e64:	79fb      	ldrb	r3, [r7, #7]
    1e66:	3b20      	subs	r3, #32
    1e68:	71fb      	strb	r3, [r7, #7]
	return (digit(c) || (c>='A' && c<='F'));
    1e6a:	79fb      	ldrb	r3, [r7, #7]
    1e6c:	4618      	mov	r0, r3
    1e6e:	f7ff ffde 	bl	1e2e <digit>
    1e72:	4603      	mov	r3, r0
    1e74:	2b00      	cmp	r3, #0
    1e76:	d105      	bne.n	1e84 <hexdigit+0x30>
    1e78:	79fb      	ldrb	r3, [r7, #7]
    1e7a:	2b40      	cmp	r3, #64	; 0x40
    1e7c:	d904      	bls.n	1e88 <hexdigit+0x34>
    1e7e:	79fb      	ldrb	r3, [r7, #7]
    1e80:	2b46      	cmp	r3, #70	; 0x46
    1e82:	d801      	bhi.n	1e88 <hexdigit+0x34>
    1e84:	2301      	movs	r3, #1
    1e86:	e000      	b.n	1e8a <hexdigit+0x36>
    1e88:	2300      	movs	r3, #0
}
    1e8a:	4618      	mov	r0, r3
    1e8c:	3708      	adds	r7, #8
    1e8e:	46bd      	mov	sp, r7
    1e90:	bd80      	pop	{r7, pc}

00001e92 <atoi>:

int atoi(const char *str){
    1e92:	b580      	push	{r7, lr}
    1e94:	b086      	sub	sp, #24
    1e96:	af00      	add	r7, sp, #0
    1e98:	6078      	str	r0, [r7, #4]
	int n=0,sign=1,base=10;
    1e9a:	2300      	movs	r3, #0
    1e9c:	617b      	str	r3, [r7, #20]
    1e9e:	2301      	movs	r3, #1
    1ea0:	613b      	str	r3, [r7, #16]
    1ea2:	230a      	movs	r3, #10
    1ea4:	60fb      	str	r3, [r7, #12]
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1ea6:	e002      	b.n	1eae <atoi+0x1c>
    1ea8:	687b      	ldr	r3, [r7, #4]
    1eaa:	3301      	adds	r3, #1
    1eac:	607b      	str	r3, [r7, #4]
    1eae:	687b      	ldr	r3, [r7, #4]
    1eb0:	781b      	ldrb	r3, [r3, #0]
    1eb2:	2b00      	cmp	r3, #0
    1eb4:	d003      	beq.n	1ebe <atoi+0x2c>
    1eb6:	687b      	ldr	r3, [r7, #4]
    1eb8:	781b      	ldrb	r3, [r3, #0]
    1eba:	2b20      	cmp	r3, #32
    1ebc:	d0f4      	beq.n	1ea8 <atoi+0x16>
	if (*str=='-'){
    1ebe:	687b      	ldr	r3, [r7, #4]
    1ec0:	781b      	ldrb	r3, [r3, #0]
    1ec2:	2b2d      	cmp	r3, #45	; 0x2d
    1ec4:	d105      	bne.n	1ed2 <atoi+0x40>
		sign=-1;
    1ec6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1eca:	613b      	str	r3, [r7, #16]
		str++;
    1ecc:	687b      	ldr	r3, [r7, #4]
    1ece:	3301      	adds	r3, #1
    1ed0:	607b      	str	r3, [r7, #4]
	}
	if (*str=='$' && hexdigit(*(str+1))){
    1ed2:	687b      	ldr	r3, [r7, #4]
    1ed4:	781b      	ldrb	r3, [r3, #0]
    1ed6:	2b24      	cmp	r3, #36	; 0x24
    1ed8:	d10e      	bne.n	1ef8 <atoi+0x66>
    1eda:	687b      	ldr	r3, [r7, #4]
    1edc:	3301      	adds	r3, #1
    1ede:	781b      	ldrb	r3, [r3, #0]
    1ee0:	4618      	mov	r0, r3
    1ee2:	f7ff ffb7 	bl	1e54 <hexdigit>
    1ee6:	4603      	mov	r3, r0
    1ee8:	2b00      	cmp	r3, #0
    1eea:	d005      	beq.n	1ef8 <atoi+0x66>
		base=16;
    1eec:	2310      	movs	r3, #16
    1eee:	60fb      	str	r3, [r7, #12]
		str++;
    1ef0:	687b      	ldr	r3, [r7, #4]
    1ef2:	3301      	adds	r3, #1
    1ef4:	607b      	str	r3, [r7, #4]
    1ef6:	e012      	b.n	1f1e <atoi+0x8c>
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1ef8:	687b      	ldr	r3, [r7, #4]
    1efa:	781b      	ldrb	r3, [r3, #0]
    1efc:	2b30      	cmp	r3, #48	; 0x30
    1efe:	d128      	bne.n	1f52 <atoi+0xc0>
    1f00:	687b      	ldr	r3, [r7, #4]
    1f02:	3301      	adds	r3, #1
    1f04:	781b      	ldrb	r3, [r3, #0]
    1f06:	2b78      	cmp	r3, #120	; 0x78
    1f08:	d004      	beq.n	1f14 <atoi+0x82>
    1f0a:	687b      	ldr	r3, [r7, #4]
    1f0c:	3301      	adds	r3, #1
    1f0e:	781b      	ldrb	r3, [r3, #0]
    1f10:	2b58      	cmp	r3, #88	; 0x58
    1f12:	d11e      	bne.n	1f52 <atoi+0xc0>
		base=16;
    1f14:	2310      	movs	r3, #16
    1f16:	60fb      	str	r3, [r7, #12]
		str+=2;
    1f18:	687b      	ldr	r3, [r7, #4]
    1f1a:	3302      	adds	r3, #2
    1f1c:	607b      	str	r3, [r7, #4]
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1f1e:	e018      	b.n	1f52 <atoi+0xc0>
		if (c>='a'){c-=32;}
    1f20:	7afb      	ldrb	r3, [r7, #11]
    1f22:	2b60      	cmp	r3, #96	; 0x60
    1f24:	d902      	bls.n	1f2c <atoi+0x9a>
    1f26:	7afb      	ldrb	r3, [r7, #11]
    1f28:	3b20      	subs	r3, #32
    1f2a:	72fb      	strb	r3, [r7, #11]
		c-='0';
    1f2c:	7afb      	ldrb	r3, [r7, #11]
    1f2e:	3b30      	subs	r3, #48	; 0x30
    1f30:	72fb      	strb	r3, [r7, #11]
		if (c>9){c-=7;}
    1f32:	7afb      	ldrb	r3, [r7, #11]
    1f34:	2b09      	cmp	r3, #9
    1f36:	d902      	bls.n	1f3e <atoi+0xac>
    1f38:	7afb      	ldrb	r3, [r7, #11]
    1f3a:	3b07      	subs	r3, #7
    1f3c:	72fb      	strb	r3, [r7, #11]
		n=n*base+c;
    1f3e:	697b      	ldr	r3, [r7, #20]
    1f40:	68fa      	ldr	r2, [r7, #12]
    1f42:	fb02 f203 	mul.w	r2, r2, r3
    1f46:	7afb      	ldrb	r3, [r7, #11]
    1f48:	4413      	add	r3, r2
    1f4a:	617b      	str	r3, [r7, #20]
		str++;
    1f4c:	687b      	ldr	r3, [r7, #4]
    1f4e:	3301      	adds	r3, #1
    1f50:	607b      	str	r3, [r7, #4]
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1f52:	687b      	ldr	r3, [r7, #4]
    1f54:	781b      	ldrb	r3, [r3, #0]
    1f56:	72fb      	strb	r3, [r7, #11]
    1f58:	7afb      	ldrb	r3, [r7, #11]
    1f5a:	2b00      	cmp	r3, #0
    1f5c:	d00d      	beq.n	1f7a <atoi+0xe8>
    1f5e:	68fb      	ldr	r3, [r7, #12]
    1f60:	2b0a      	cmp	r3, #10
    1f62:	d10a      	bne.n	1f7a <atoi+0xe8>
    1f64:	7afb      	ldrb	r3, [r7, #11]
    1f66:	4618      	mov	r0, r3
    1f68:	f7ff ff61 	bl	1e2e <digit>
    1f6c:	4603      	mov	r3, r0
    1f6e:	2b00      	cmp	r3, #0
    1f70:	bf14      	ite	ne
    1f72:	2301      	movne	r3, #1
    1f74:	2300      	moveq	r3, #0
    1f76:	b2db      	uxtb	r3, r3
    1f78:	e009      	b.n	1f8e <atoi+0xfc>
    1f7a:	7afb      	ldrb	r3, [r7, #11]
    1f7c:	4618      	mov	r0, r3
    1f7e:	f7ff ff69 	bl	1e54 <hexdigit>
    1f82:	4603      	mov	r3, r0
    1f84:	2b00      	cmp	r3, #0
    1f86:	bf14      	ite	ne
    1f88:	2301      	movne	r3, #1
    1f8a:	2300      	moveq	r3, #0
    1f8c:	b2db      	uxtb	r3, r3
    1f8e:	2b00      	cmp	r3, #0
    1f90:	d1c6      	bne.n	1f20 <atoi+0x8e>
	}
	return sign*n;
    1f92:	693b      	ldr	r3, [r7, #16]
    1f94:	697a      	ldr	r2, [r7, #20]
    1f96:	fb02 f303 	mul.w	r3, r2, r3
}
    1f9a:	4618      	mov	r0, r3
    1f9c:	3718      	adds	r7, #24
    1f9e:	46bd      	mov	sp, r7
    1fa0:	bd80      	pop	{r7, pc}

00001fa2 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
    1fa2:	b480      	push	{r7}
    1fa4:	b085      	sub	sp, #20
    1fa6:	af00      	add	r7, sp, #0
    1fa8:	60f8      	str	r0, [r7, #12]
    1faa:	60b9      	str	r1, [r7, #8]
    1fac:	607a      	str	r2, [r7, #4]
	while (len){
    1fae:	e00a      	b.n	1fc6 <move+0x24>
		*dest++=*src++;
    1fb0:	68bb      	ldr	r3, [r7, #8]
    1fb2:	1c5a      	adds	r2, r3, #1
    1fb4:	60ba      	str	r2, [r7, #8]
    1fb6:	68fa      	ldr	r2, [r7, #12]
    1fb8:	1c51      	adds	r1, r2, #1
    1fba:	60f9      	str	r1, [r7, #12]
    1fbc:	7812      	ldrb	r2, [r2, #0]
    1fbe:	701a      	strb	r2, [r3, #0]
		len--;
    1fc0:	687b      	ldr	r3, [r7, #4]
    1fc2:	3b01      	subs	r3, #1
    1fc4:	607b      	str	r3, [r7, #4]
	while (len){
    1fc6:	687b      	ldr	r3, [r7, #4]
    1fc8:	2b00      	cmp	r3, #0
    1fca:	d1f1      	bne.n	1fb0 <move+0xe>
	}
}
    1fcc:	bf00      	nop
    1fce:	3714      	adds	r7, #20
    1fd0:	46bd      	mov	sp, r7
    1fd2:	bc80      	pop	{r7}
    1fd4:	4770      	bx	lr

00001fd6 <strlen>:

int strlen(const char* str){
    1fd6:	b480      	push	{r7}
    1fd8:	b085      	sub	sp, #20
    1fda:	af00      	add	r7, sp, #0
    1fdc:	6078      	str	r0, [r7, #4]
	int ll=0;
    1fde:	2300      	movs	r3, #0
    1fe0:	60fb      	str	r3, [r7, #12]
	while (str[ll]){ll++;}
    1fe2:	e002      	b.n	1fea <strlen+0x14>
    1fe4:	68fb      	ldr	r3, [r7, #12]
    1fe6:	3301      	adds	r3, #1
    1fe8:	60fb      	str	r3, [r7, #12]
    1fea:	68fb      	ldr	r3, [r7, #12]
    1fec:	687a      	ldr	r2, [r7, #4]
    1fee:	4413      	add	r3, r2
    1ff0:	781b      	ldrb	r3, [r3, #0]
    1ff2:	2b00      	cmp	r3, #0
    1ff4:	d1f6      	bne.n	1fe4 <strlen+0xe>
	return ll;
    1ff6:	68fb      	ldr	r3, [r7, #12]
}
    1ff8:	4618      	mov	r0, r3
    1ffa:	3714      	adds	r7, #20
    1ffc:	46bd      	mov	sp, r7
    1ffe:	bc80      	pop	{r7}
    2000:	4770      	bx	lr

00002002 <fill>:

void fill(void *buffer, unsigned int size, char c){
    2002:	b480      	push	{r7}
    2004:	b087      	sub	sp, #28
    2006:	af00      	add	r7, sp, #0
    2008:	60f8      	str	r0, [r7, #12]
    200a:	60b9      	str	r1, [r7, #8]
    200c:	4613      	mov	r3, r2
    200e:	71fb      	strb	r3, [r7, #7]
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    2010:	2300      	movs	r3, #0
    2012:	617b      	str	r3, [r7, #20]
    2014:	e007      	b.n	2026 <fill+0x24>
    2016:	68fb      	ldr	r3, [r7, #12]
    2018:	1c5a      	adds	r2, r3, #1
    201a:	60fa      	str	r2, [r7, #12]
    201c:	79fa      	ldrb	r2, [r7, #7]
    201e:	701a      	strb	r2, [r3, #0]
    2020:	697b      	ldr	r3, [r7, #20]
    2022:	3301      	adds	r3, #1
    2024:	617b      	str	r3, [r7, #20]
    2026:	697a      	ldr	r2, [r7, #20]
    2028:	68bb      	ldr	r3, [r7, #8]
    202a:	429a      	cmp	r2, r3
    202c:	d3f3      	bcc.n	2016 <fill+0x14>
}
    202e:	bf00      	nop
    2030:	371c      	adds	r7, #28
    2032:	46bd      	mov	sp, r7
    2034:	bc80      	pop	{r7}
    2036:	4770      	bx	lr

00002038 <is_lower>:

//retourne vrai si caractère en minuscule
int is_lower(char c){
    2038:	b480      	push	{r7}
    203a:	b083      	sub	sp, #12
    203c:	af00      	add	r7, sp, #0
    203e:	4603      	mov	r3, r0
    2040:	71fb      	strb	r3, [r7, #7]
	return (c>='a') && (c<='z');
    2042:	79fb      	ldrb	r3, [r7, #7]
    2044:	2b60      	cmp	r3, #96	; 0x60
    2046:	d904      	bls.n	2052 <is_lower+0x1a>
    2048:	79fb      	ldrb	r3, [r7, #7]
    204a:	2b7a      	cmp	r3, #122	; 0x7a
    204c:	d801      	bhi.n	2052 <is_lower+0x1a>
    204e:	2301      	movs	r3, #1
    2050:	e000      	b.n	2054 <is_lower+0x1c>
    2052:	2300      	movs	r3, #0
}
    2054:	4618      	mov	r0, r3
    2056:	370c      	adds	r7, #12
    2058:	46bd      	mov	sp, r7
    205a:	bc80      	pop	{r7}
    205c:	4770      	bx	lr

0000205e <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
    205e:	b480      	push	{r7}
    2060:	b083      	sub	sp, #12
    2062:	af00      	add	r7, sp, #0
    2064:	4603      	mov	r3, r0
    2066:	71fb      	strb	r3, [r7, #7]
	return (c>='A') && (c<='Z');
    2068:	79fb      	ldrb	r3, [r7, #7]
    206a:	2b40      	cmp	r3, #64	; 0x40
    206c:	d904      	bls.n	2078 <is_upper+0x1a>
    206e:	79fb      	ldrb	r3, [r7, #7]
    2070:	2b5a      	cmp	r3, #90	; 0x5a
    2072:	d801      	bhi.n	2078 <is_upper+0x1a>
    2074:	2301      	movs	r3, #1
    2076:	e000      	b.n	207a <is_upper+0x1c>
    2078:	2300      	movs	r3, #0
}
    207a:	4618      	mov	r0, r3
    207c:	370c      	adds	r7, #12
    207e:	46bd      	mov	sp, r7
    2080:	bc80      	pop	{r7}
    2082:	4770      	bx	lr

00002084 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
    2084:	b580      	push	{r7, lr}
    2086:	b082      	sub	sp, #8
    2088:	af00      	add	r7, sp, #0
    208a:	6078      	str	r0, [r7, #4]
	while (*buffer){
    208c:	e010      	b.n	20b0 <uppercase+0x2c>
		if (is_lower(*buffer)){*buffer-=32;}
    208e:	687b      	ldr	r3, [r7, #4]
    2090:	781b      	ldrb	r3, [r3, #0]
    2092:	4618      	mov	r0, r3
    2094:	f7ff ffd0 	bl	2038 <is_lower>
    2098:	4603      	mov	r3, r0
    209a:	2b00      	cmp	r3, #0
    209c:	d005      	beq.n	20aa <uppercase+0x26>
    209e:	687b      	ldr	r3, [r7, #4]
    20a0:	781b      	ldrb	r3, [r3, #0]
    20a2:	3b20      	subs	r3, #32
    20a4:	b2da      	uxtb	r2, r3
    20a6:	687b      	ldr	r3, [r7, #4]
    20a8:	701a      	strb	r2, [r3, #0]
		buffer++;
    20aa:	687b      	ldr	r3, [r7, #4]
    20ac:	3301      	adds	r3, #1
    20ae:	607b      	str	r3, [r7, #4]
	while (*buffer){
    20b0:	687b      	ldr	r3, [r7, #4]
    20b2:	781b      	ldrb	r3, [r3, #0]
    20b4:	2b00      	cmp	r3, #0
    20b6:	d1ea      	bne.n	208e <uppercase+0xa>
	}
}
    20b8:	bf00      	nop
    20ba:	3708      	adds	r7, #8
    20bc:	46bd      	mov	sp, r7
    20be:	bd80      	pop	{r7, pc}

000020c0 <scan>:

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    20c0:	b480      	push	{r7}
    20c2:	b085      	sub	sp, #20
    20c4:	af00      	add	r7, sp, #0
    20c6:	60f8      	str	r0, [r7, #12]
    20c8:	60b9      	str	r1, [r7, #8]
    20ca:	4613      	mov	r3, r2
    20cc:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]!=c) start++;
    20ce:	e002      	b.n	20d6 <scan+0x16>
    20d0:	68bb      	ldr	r3, [r7, #8]
    20d2:	3301      	adds	r3, #1
    20d4:	60bb      	str	r3, [r7, #8]
    20d6:	68bb      	ldr	r3, [r7, #8]
    20d8:	68fa      	ldr	r2, [r7, #12]
    20da:	4413      	add	r3, r2
    20dc:	781b      	ldrb	r3, [r3, #0]
    20de:	2b00      	cmp	r3, #0
    20e0:	d006      	beq.n	20f0 <scan+0x30>
    20e2:	68bb      	ldr	r3, [r7, #8]
    20e4:	68fa      	ldr	r2, [r7, #12]
    20e6:	4413      	add	r3, r2
    20e8:	781b      	ldrb	r3, [r3, #0]
    20ea:	79fa      	ldrb	r2, [r7, #7]
    20ec:	429a      	cmp	r2, r3
    20ee:	d1ef      	bne.n	20d0 <scan+0x10>
	return start;
    20f0:	68bb      	ldr	r3, [r7, #8]
}
    20f2:	4618      	mov	r0, r3
    20f4:	3714      	adds	r7, #20
    20f6:	46bd      	mov	sp, r7
    20f8:	bc80      	pop	{r7}
    20fa:	4770      	bx	lr

000020fc <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    20fc:	b480      	push	{r7}
    20fe:	b085      	sub	sp, #20
    2100:	af00      	add	r7, sp, #0
    2102:	60f8      	str	r0, [r7, #12]
    2104:	60b9      	str	r1, [r7, #8]
    2106:	4613      	mov	r3, r2
    2108:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]==c) start++;
    210a:	e002      	b.n	2112 <skip+0x16>
    210c:	68bb      	ldr	r3, [r7, #8]
    210e:	3301      	adds	r3, #1
    2110:	60bb      	str	r3, [r7, #8]
    2112:	68bb      	ldr	r3, [r7, #8]
    2114:	68fa      	ldr	r2, [r7, #12]
    2116:	4413      	add	r3, r2
    2118:	781b      	ldrb	r3, [r3, #0]
    211a:	2b00      	cmp	r3, #0
    211c:	d006      	beq.n	212c <skip+0x30>
    211e:	68bb      	ldr	r3, [r7, #8]
    2120:	68fa      	ldr	r2, [r7, #12]
    2122:	4413      	add	r3, r2
    2124:	781b      	ldrb	r3, [r3, #0]
    2126:	79fa      	ldrb	r2, [r7, #7]
    2128:	429a      	cmp	r2, r3
    212a:	d0ef      	beq.n	210c <skip+0x10>
	return start;
    212c:	68bb      	ldr	r3, [r7, #8]
}
    212e:	4618      	mov	r0, r3
    2130:	3714      	adds	r7, #20
    2132:	46bd      	mov	sp, r7
    2134:	bc80      	pop	{r7}
    2136:	4770      	bx	lr

00002138 <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    2138:	b580      	push	{r7, lr}
    213a:	b082      	sub	sp, #8
    213c:	af00      	add	r7, sp, #0
    213e:	6078      	str	r0, [r7, #4]
    2140:	6039      	str	r1, [r7, #0]
	s1+=strlen(s1);
    2142:	6878      	ldr	r0, [r7, #4]
    2144:	f7ff ff47 	bl	1fd6 <strlen>
    2148:	4603      	mov	r3, r0
    214a:	461a      	mov	r2, r3
    214c:	687b      	ldr	r3, [r7, #4]
    214e:	4413      	add	r3, r2
    2150:	607b      	str	r3, [r7, #4]
	while (*s2){
    2152:	e007      	b.n	2164 <strcat+0x2c>
		*s1++=*s2++;
    2154:	687b      	ldr	r3, [r7, #4]
    2156:	1c5a      	adds	r2, r3, #1
    2158:	607a      	str	r2, [r7, #4]
    215a:	683a      	ldr	r2, [r7, #0]
    215c:	1c51      	adds	r1, r2, #1
    215e:	6039      	str	r1, [r7, #0]
    2160:	7812      	ldrb	r2, [r2, #0]
    2162:	701a      	strb	r2, [r3, #0]
	while (*s2){
    2164:	683b      	ldr	r3, [r7, #0]
    2166:	781b      	ldrb	r3, [r3, #0]
    2168:	2b00      	cmp	r3, #0
    216a:	d1f3      	bne.n	2154 <strcat+0x1c>
	}
	*s1=0;
    216c:	687b      	ldr	r3, [r7, #4]
    216e:	2200      	movs	r2, #0
    2170:	701a      	strb	r2, [r3, #0]
	return s1;
    2172:	687b      	ldr	r3, [r7, #4]
}
    2174:	4618      	mov	r0, r3
    2176:	3708      	adds	r7, #8
    2178:	46bd      	mov	sp, r7
    217a:	bd80      	pop	{r7, pc}

0000217c <itoa>:

char *itoa(int n,char *buffer,int base){
    217c:	b580      	push	{r7, lr}
    217e:	b08c      	sub	sp, #48	; 0x30
    2180:	af00      	add	r7, sp, #0
    2182:	60f8      	str	r0, [r7, #12]
    2184:	60b9      	str	r1, [r7, #8]
    2186:	607a      	str	r2, [r7, #4]
	char d,fmt[16];
	int i=14,sign=0;
    2188:	230e      	movs	r3, #14
    218a:	62bb      	str	r3, [r7, #40]	; 0x28
    218c:	2300      	movs	r3, #0
    218e:	627b      	str	r3, [r7, #36]	; 0x24
	if ((base==10) && (n<0)){
    2190:	687b      	ldr	r3, [r7, #4]
    2192:	2b0a      	cmp	r3, #10
    2194:	d107      	bne.n	21a6 <itoa+0x2a>
    2196:	68fb      	ldr	r3, [r7, #12]
    2198:	2b00      	cmp	r3, #0
    219a:	da04      	bge.n	21a6 <itoa+0x2a>
		sign=1;
    219c:	2301      	movs	r3, #1
    219e:	627b      	str	r3, [r7, #36]	; 0x24
		n=-n;
    21a0:	68fb      	ldr	r3, [r7, #12]
    21a2:	425b      	negs	r3, r3
    21a4:	60fb      	str	r3, [r7, #12]
	}
	fmt[15]=0;
    21a6:	2300      	movs	r3, #0
    21a8:	f887 3023 	strb.w	r3, [r7, #35]	; 0x23
	fmt[14]=' ';
    21ac:	2320      	movs	r3, #32
    21ae:	f887 3022 	strb.w	r3, [r7, #34]	; 0x22
	while (n){
    21b2:	e023      	b.n	21fc <itoa+0x80>
		d=n%base+'0';
    21b4:	68fb      	ldr	r3, [r7, #12]
    21b6:	687a      	ldr	r2, [r7, #4]
    21b8:	fb93 f2f2 	sdiv	r2, r3, r2
    21bc:	6879      	ldr	r1, [r7, #4]
    21be:	fb01 f202 	mul.w	r2, r1, r2
    21c2:	1a9b      	subs	r3, r3, r2
    21c4:	b2db      	uxtb	r3, r3
    21c6:	3330      	adds	r3, #48	; 0x30
    21c8:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
		if (d>'9') d+=7;
    21cc:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    21d0:	2b39      	cmp	r3, #57	; 0x39
    21d2:	d904      	bls.n	21de <itoa+0x62>
    21d4:	f897 302f 	ldrb.w	r3, [r7, #47]	; 0x2f
    21d8:	3307      	adds	r3, #7
    21da:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
		n/=base;
    21de:	68fa      	ldr	r2, [r7, #12]
    21e0:	687b      	ldr	r3, [r7, #4]
    21e2:	fb92 f3f3 	sdiv	r3, r2, r3
    21e6:	60fb      	str	r3, [r7, #12]
		fmt[--i]=d;
    21e8:	6abb      	ldr	r3, [r7, #40]	; 0x28
    21ea:	3b01      	subs	r3, #1
    21ec:	62bb      	str	r3, [r7, #40]	; 0x28
    21ee:	f107 0214 	add.w	r2, r7, #20
    21f2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    21f4:	4413      	add	r3, r2
    21f6:	f897 202f 	ldrb.w	r2, [r7, #47]	; 0x2f
    21fa:	701a      	strb	r2, [r3, #0]
	while (n){
    21fc:	68fb      	ldr	r3, [r7, #12]
    21fe:	2b00      	cmp	r3, #0
    2200:	d1d8      	bne.n	21b4 <itoa+0x38>
	}
	if (i==14) fmt[--i]='0';
    2202:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2204:	2b0e      	cmp	r3, #14
    2206:	d108      	bne.n	221a <itoa+0x9e>
    2208:	6abb      	ldr	r3, [r7, #40]	; 0x28
    220a:	3b01      	subs	r3, #1
    220c:	62bb      	str	r3, [r7, #40]	; 0x28
    220e:	f107 0214 	add.w	r2, r7, #20
    2212:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2214:	4413      	add	r3, r2
    2216:	2230      	movs	r2, #48	; 0x30
    2218:	701a      	strb	r2, [r3, #0]
	if ((base==10) && sign) fmt[--i]='-';
    221a:	687b      	ldr	r3, [r7, #4]
    221c:	2b0a      	cmp	r3, #10
    221e:	d10b      	bne.n	2238 <itoa+0xbc>
    2220:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    2222:	2b00      	cmp	r3, #0
    2224:	d008      	beq.n	2238 <itoa+0xbc>
    2226:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2228:	3b01      	subs	r3, #1
    222a:	62bb      	str	r3, [r7, #40]	; 0x28
    222c:	f107 0214 	add.w	r2, r7, #20
    2230:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2232:	4413      	add	r3, r2
    2234:	222d      	movs	r2, #45	; 0x2d
    2236:	701a      	strb	r2, [r3, #0]
	if (base==16) fmt[--i]='$';
    2238:	687b      	ldr	r3, [r7, #4]
    223a:	2b10      	cmp	r3, #16
    223c:	d108      	bne.n	2250 <itoa+0xd4>
    223e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2240:	3b01      	subs	r3, #1
    2242:	62bb      	str	r3, [r7, #40]	; 0x28
    2244:	f107 0214 	add.w	r2, r7, #20
    2248:	6abb      	ldr	r3, [r7, #40]	; 0x28
    224a:	4413      	add	r3, r2
    224c:	2224      	movs	r2, #36	; 0x24
    224e:	701a      	strb	r2, [r3, #0]
	move((const char*)&fmt[i],buffer,16-i);
    2250:	f107 0214 	add.w	r2, r7, #20
    2254:	6abb      	ldr	r3, [r7, #40]	; 0x28
    2256:	18d0      	adds	r0, r2, r3
    2258:	6abb      	ldr	r3, [r7, #40]	; 0x28
    225a:	f1c3 0310 	rsb	r3, r3, #16
    225e:	461a      	mov	r2, r3
    2260:	68b9      	ldr	r1, [r7, #8]
    2262:	f7ff fe9e 	bl	1fa2 <move>
	return buffer;
    2266:	68bb      	ldr	r3, [r7, #8]
    2268:	4618      	mov	r0, r3
    226a:	3730      	adds	r7, #48	; 0x30
    226c:	46bd      	mov	sp, r7
    226e:	bd80      	pop	{r7, pc}

00002270 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    2270:	b480      	push	{r7}
    2272:	b087      	sub	sp, #28
    2274:	af00      	add	r7, sp, #0
    2276:	60f8      	str	r0, [r7, #12]
    2278:	60b9      	str	r1, [r7, #8]
    227a:	607a      	str	r2, [r7, #4]
	uint8_t shift;
	shift=(pin&7)<<2;
    227c:	68bb      	ldr	r3, [r7, #8]
    227e:	b2db      	uxtb	r3, r3
    2280:	009b      	lsls	r3, r3, #2
    2282:	b2db      	uxtb	r3, r3
    2284:	f003 031c 	and.w	r3, r3, #28
    2288:	75fb      	strb	r3, [r7, #23]
	port->CR[pin>>3]&=~(15<<shift);
    228a:	68bb      	ldr	r3, [r7, #8]
    228c:	08da      	lsrs	r2, r3, #3
    228e:	68bb      	ldr	r3, [r7, #8]
    2290:	08d9      	lsrs	r1, r3, #3
    2292:	68fb      	ldr	r3, [r7, #12]
    2294:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    2298:	7df9      	ldrb	r1, [r7, #23]
    229a:	200f      	movs	r0, #15
    229c:	fa00 f101 	lsl.w	r1, r0, r1
    22a0:	43c9      	mvns	r1, r1
    22a2:	4019      	ands	r1, r3
    22a4:	68fb      	ldr	r3, [r7, #12]
    22a6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    22aa:	68bb      	ldr	r3, [r7, #8]
    22ac:	08da      	lsrs	r2, r3, #3
    22ae:	68bb      	ldr	r3, [r7, #8]
    22b0:	08d9      	lsrs	r1, r3, #3
    22b2:	68fb      	ldr	r3, [r7, #12]
    22b4:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    22b8:	7dfb      	ldrb	r3, [r7, #23]
    22ba:	6878      	ldr	r0, [r7, #4]
    22bc:	fa00 f303 	lsl.w	r3, r0, r3
    22c0:	4319      	orrs	r1, r3
    22c2:	68fb      	ldr	r3, [r7, #12]
    22c4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
    22c8:	bf00      	nop
    22ca:	371c      	adds	r7, #28
    22cc:	46bd      	mov	sp, r7
    22ce:	bc80      	pop	{r7}
    22d0:	4770      	bx	lr

000022d2 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
    22d2:	b480      	push	{r7}
    22d4:	b083      	sub	sp, #12
    22d6:	af00      	add	r7, sp, #0
    22d8:	6078      	str	r0, [r7, #4]
    22da:	6039      	str	r1, [r7, #0]
	return port->IDR&(1<<pin);
    22dc:	687b      	ldr	r3, [r7, #4]
    22de:	689b      	ldr	r3, [r3, #8]
    22e0:	2101      	movs	r1, #1
    22e2:	683a      	ldr	r2, [r7, #0]
    22e4:	fa01 f202 	lsl.w	r2, r1, r2
    22e8:	4013      	ands	r3, r2
}
    22ea:	4618      	mov	r0, r3
    22ec:	370c      	adds	r7, #12
    22ee:	46bd      	mov	sp, r7
    22f0:	bc80      	pop	{r7}
    22f2:	4770      	bx	lr

000022f4 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
    22f4:	b480      	push	{r7}
    22f6:	b085      	sub	sp, #20
    22f8:	af00      	add	r7, sp, #0
    22fa:	60f8      	str	r0, [r7, #12]
    22fc:	60b9      	str	r1, [r7, #8]
    22fe:	607a      	str	r2, [r7, #4]
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    2300:	687b      	ldr	r3, [r7, #4]
    2302:	2b00      	cmp	r3, #0
    2304:	d009      	beq.n	231a <write_pin+0x26>
    2306:	68fb      	ldr	r3, [r7, #12]
    2308:	68db      	ldr	r3, [r3, #12]
    230a:	2101      	movs	r1, #1
    230c:	68ba      	ldr	r2, [r7, #8]
    230e:	fa01 f202 	lsl.w	r2, r1, r2
    2312:	431a      	orrs	r2, r3
    2314:	68fb      	ldr	r3, [r7, #12]
    2316:	60da      	str	r2, [r3, #12]
}
    2318:	e009      	b.n	232e <write_pin+0x3a>
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    231a:	68fb      	ldr	r3, [r7, #12]
    231c:	68db      	ldr	r3, [r3, #12]
    231e:	2101      	movs	r1, #1
    2320:	68ba      	ldr	r2, [r7, #8]
    2322:	fa01 f202 	lsl.w	r2, r1, r2
    2326:	43d2      	mvns	r2, r2
    2328:	401a      	ands	r2, r3
    232a:	68fb      	ldr	r3, [r7, #12]
    232c:	60da      	str	r2, [r3, #12]
}
    232e:	bf00      	nop
    2330:	3714      	adds	r7, #20
    2332:	46bd      	mov	sp, r7
    2334:	bc80      	pop	{r7}
    2336:	4770      	bx	lr

00002338 <toggle_pin>:

inline void toggle_pin(gpio_t* port, unsigned pin){
    2338:	b480      	push	{r7}
    233a:	b083      	sub	sp, #12
    233c:	af00      	add	r7, sp, #0
    233e:	6078      	str	r0, [r7, #4]
    2340:	6039      	str	r1, [r7, #0]
	port->ODR^=(1<<pin);
    2342:	687b      	ldr	r3, [r7, #4]
    2344:	68db      	ldr	r3, [r3, #12]
    2346:	2101      	movs	r1, #1
    2348:	683a      	ldr	r2, [r7, #0]
    234a:	fa01 f202 	lsl.w	r2, r1, r2
    234e:	405a      	eors	r2, r3
    2350:	687b      	ldr	r3, [r7, #4]
    2352:	60da      	str	r2, [r3, #12]
}
    2354:	bf00      	nop
    2356:	370c      	adds	r7, #12
    2358:	46bd      	mov	sp, r7
    235a:	bc80      	pop	{r7}
    235c:	4770      	bx	lr
	...

00002360 <set_palette>:
uint8_t sprite_bpp=4;
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    2360:	b480      	push	{r7}
    2362:	b083      	sub	sp, #12
    2364:	af00      	add	r7, sp, #0
    2366:	6078      	str	r0, [r7, #4]
    palette[0]=new[0];
    2368:	687b      	ldr	r3, [r7, #4]
    236a:	781a      	ldrb	r2, [r3, #0]
    236c:	4b09      	ldr	r3, [pc, #36]	; (2394 <set_palette+0x34>)
    236e:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    2370:	687b      	ldr	r3, [r7, #4]
    2372:	785a      	ldrb	r2, [r3, #1]
    2374:	4b07      	ldr	r3, [pc, #28]	; (2394 <set_palette+0x34>)
    2376:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    2378:	687b      	ldr	r3, [r7, #4]
    237a:	789a      	ldrb	r2, [r3, #2]
    237c:	4b05      	ldr	r3, [pc, #20]	; (2394 <set_palette+0x34>)
    237e:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    2380:	687b      	ldr	r3, [r7, #4]
    2382:	78da      	ldrb	r2, [r3, #3]
    2384:	4b03      	ldr	r3, [pc, #12]	; (2394 <set_palette+0x34>)
    2386:	70da      	strb	r2, [r3, #3]
}
    2388:	bf00      	nop
    238a:	370c      	adds	r7, #12
    238c:	46bd      	mov	sp, r7
    238e:	bc80      	pop	{r7}
    2390:	4770      	bx	lr
    2392:	bf00      	nop
    2394:	20000194 	.word	0x20000194

00002398 <gfx_blit>:

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    2398:	b5f0      	push	{r4, r5, r6, r7, lr}
    239a:	b087      	sub	sp, #28
    239c:	af00      	add	r7, sp, #0
    239e:	60f8      	str	r0, [r7, #12]
    23a0:	60b9      	str	r1, [r7, #8]
    23a2:	4611      	mov	r1, r2
    23a4:	461a      	mov	r2, r3
    23a6:	460b      	mov	r3, r1
    23a8:	71fb      	strb	r3, [r7, #7]
    23aa:	4613      	mov	r3, r2
    23ac:	71bb      	strb	r3, [r7, #6]
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    23ae:	f003 f9ad 	bl	570c <get_video_params>
    23b2:	6178      	str	r0, [r7, #20]
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    23b4:	68fb      	ldr	r3, [r7, #12]
    23b6:	2b00      	cmp	r3, #0
    23b8:	db0e      	blt.n	23d8 <gfx_blit+0x40>
    23ba:	697b      	ldr	r3, [r7, #20]
    23bc:	899b      	ldrh	r3, [r3, #12]
    23be:	461a      	mov	r2, r3
    23c0:	68fb      	ldr	r3, [r7, #12]
    23c2:	429a      	cmp	r2, r3
    23c4:	dd08      	ble.n	23d8 <gfx_blit+0x40>
    23c6:	68bb      	ldr	r3, [r7, #8]
    23c8:	2b00      	cmp	r3, #0
    23ca:	db05      	blt.n	23d8 <gfx_blit+0x40>
    23cc:	697b      	ldr	r3, [r7, #20]
    23ce:	89db      	ldrh	r3, [r3, #14]
    23d0:	461a      	mov	r2, r3
    23d2:	68bb      	ldr	r3, [r7, #8]
    23d4:	429a      	cmp	r2, r3
    23d6:	dc01      	bgt.n	23dc <gfx_blit+0x44>
    23d8:	2300      	movs	r3, #0
    23da:	e058      	b.n	248e <gfx_blit+0xf6>
    idx=y*vparams->bpr+x/2;
    23dc:	697b      	ldr	r3, [r7, #20]
    23de:	7a1b      	ldrb	r3, [r3, #8]
    23e0:	461a      	mov	r2, r3
    23e2:	68bb      	ldr	r3, [r7, #8]
    23e4:	fb03 f202 	mul.w	r2, r3, r2
    23e8:	68fb      	ldr	r3, [r7, #12]
    23ea:	0fd9      	lsrs	r1, r3, #31
    23ec:	440b      	add	r3, r1
    23ee:	105b      	asrs	r3, r3, #1
    23f0:	18d6      	adds	r6, r2, r3
    color&=0xf;
    23f2:	79fb      	ldrb	r3, [r7, #7]
    23f4:	f003 030f 	and.w	r3, r3, #15
    23f8:	71fb      	strb	r3, [r7, #7]
    mask=0xf0;
    23fa:	25f0      	movs	r5, #240	; 0xf0
    if (!(x&1)){
    23fc:	68fb      	ldr	r3, [r7, #12]
    23fe:	f003 0301 	and.w	r3, r3, #1
    2402:	2b00      	cmp	r3, #0
    2404:	d103      	bne.n	240e <gfx_blit+0x76>
         color<<=4;
    2406:	79fb      	ldrb	r3, [r7, #7]
    2408:	011b      	lsls	r3, r3, #4
    240a:	71fb      	strb	r3, [r7, #7]
         mask=0x0f;
    240c:	250f      	movs	r5, #15
    }
    byte=video_buffer[idx];
    240e:	4b22      	ldr	r3, [pc, #136]	; (2498 <gfx_blit+0x100>)
    2410:	5d9c      	ldrb	r4, [r3, r6]
    switch (op){
    2412:	79bb      	ldrb	r3, [r7, #6]
    2414:	2b04      	cmp	r3, #4
    2416:	d828      	bhi.n	246a <gfx_blit+0xd2>
    2418:	a201      	add	r2, pc, #4	; (adr r2, 2420 <gfx_blit+0x88>)
    241a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    241e:	bf00      	nop
    2420:	00002435 	.word	0x00002435
    2424:	0000243d 	.word	0x0000243d
    2428:	00002445 	.word	0x00002445
    242c:	0000244d 	.word	0x0000244d
    2430:	0000245d 	.word	0x0000245d
    case BIT_OR:
        byte|=color;
    2434:	79fb      	ldrb	r3, [r7, #7]
    2436:	4323      	orrs	r3, r4
    2438:	b2dc      	uxtb	r4, r3
        break;
    243a:	e016      	b.n	246a <gfx_blit+0xd2>
    case BIT_AND:
        byte&=color;
    243c:	79fb      	ldrb	r3, [r7, #7]
    243e:	4023      	ands	r3, r4
    2440:	b2dc      	uxtb	r4, r3
        break;
    2442:	e012      	b.n	246a <gfx_blit+0xd2>
    case BIT_XOR:
        byte^=color;
    2444:	79fb      	ldrb	r3, [r7, #7]
    2446:	4063      	eors	r3, r4
    2448:	b2dc      	uxtb	r4, r3
        break;
    244a:	e00e      	b.n	246a <gfx_blit+0xd2>
    case BIT_INVERT:
        byte^=~mask;
    244c:	b26b      	sxtb	r3, r5
    244e:	43db      	mvns	r3, r3
    2450:	b25a      	sxtb	r2, r3
    2452:	b263      	sxtb	r3, r4
    2454:	4053      	eors	r3, r2
    2456:	b25b      	sxtb	r3, r3
    2458:	b2dc      	uxtb	r4, r3
        break;
    245a:	e006      	b.n	246a <gfx_blit+0xd2>
    case BIT_SET:
        byte &=mask;
    245c:	ea04 0305 	and.w	r3, r4, r5
    2460:	b2dc      	uxtb	r4, r3
        byte|=color;
    2462:	79fb      	ldrb	r3, [r7, #7]
    2464:	4323      	orrs	r3, r4
    2466:	b2dc      	uxtb	r4, r3
        break;
    2468:	bf00      	nop
    }//switch (op)
    video_buffer[idx]=byte;
    246a:	4b0b      	ldr	r3, [pc, #44]	; (2498 <gfx_blit+0x100>)
    246c:	4622      	mov	r2, r4
    246e:	559a      	strb	r2, [r3, r6]
    return !((byte&~mask)^color==0);
    2470:	4622      	mov	r2, r4
    2472:	462b      	mov	r3, r5
    2474:	43db      	mvns	r3, r3
    2476:	4013      	ands	r3, r2
    2478:	79fa      	ldrb	r2, [r7, #7]
    247a:	2a00      	cmp	r2, #0
    247c:	bf0c      	ite	eq
    247e:	2201      	moveq	r2, #1
    2480:	2200      	movne	r2, #0
    2482:	b2d2      	uxtb	r2, r2
    2484:	4293      	cmp	r3, r2
    2486:	bf0c      	ite	eq
    2488:	2301      	moveq	r3, #1
    248a:	2300      	movne	r3, #0
    248c:	b2db      	uxtb	r3, r3
}
    248e:	4618      	mov	r0, r3
    2490:	371c      	adds	r7, #28
    2492:	46bd      	mov	sp, r7
    2494:	bdf0      	pop	{r4, r5, r6, r7, pc}
    2496:	bf00      	nop
    2498:	200026e0 	.word	0x200026e0

0000249c <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    249c:	b5b0      	push	{r4, r5, r7, lr}
    249e:	b086      	sub	sp, #24
    24a0:	af00      	add	r7, sp, #0
    24a2:	60f8      	str	r0, [r7, #12]
    24a4:	60b9      	str	r1, [r7, #8]
    24a6:	4613      	mov	r3, r2
    24a8:	71fb      	strb	r3, [r7, #7]
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    24aa:	f003 f92f 	bl	570c <get_video_params>
    24ae:	6178      	str	r0, [r7, #20]
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    24b0:	68fb      	ldr	r3, [r7, #12]
    24b2:	2b00      	cmp	r3, #0
    24b4:	db39      	blt.n	252a <gfx_plot+0x8e>
    24b6:	697b      	ldr	r3, [r7, #20]
    24b8:	899b      	ldrh	r3, [r3, #12]
    24ba:	461a      	mov	r2, r3
    24bc:	68fb      	ldr	r3, [r7, #12]
    24be:	429a      	cmp	r2, r3
    24c0:	dd33      	ble.n	252a <gfx_plot+0x8e>
    24c2:	68bb      	ldr	r3, [r7, #8]
    24c4:	2b00      	cmp	r3, #0
    24c6:	db30      	blt.n	252a <gfx_plot+0x8e>
    24c8:	697b      	ldr	r3, [r7, #20]
    24ca:	89db      	ldrh	r3, [r3, #14]
    24cc:	461a      	mov	r2, r3
    24ce:	68bb      	ldr	r3, [r7, #8]
    24d0:	429a      	cmp	r2, r3
    24d2:	dd2a      	ble.n	252a <gfx_plot+0x8e>
    idx=y*vparams->bpr+x/2;
    24d4:	697b      	ldr	r3, [r7, #20]
    24d6:	7a1b      	ldrb	r3, [r3, #8]
    24d8:	461a      	mov	r2, r3
    24da:	68bb      	ldr	r3, [r7, #8]
    24dc:	fb03 f202 	mul.w	r2, r3, r2
    24e0:	68fb      	ldr	r3, [r7, #12]
    24e2:	0fd9      	lsrs	r1, r3, #31
    24e4:	440b      	add	r3, r1
    24e6:	105b      	asrs	r3, r3, #1
    24e8:	18d5      	adds	r5, r2, r3
    color&=0xf;
    24ea:	79fb      	ldrb	r3, [r7, #7]
    24ec:	f003 030f 	and.w	r3, r3, #15
    24f0:	71fb      	strb	r3, [r7, #7]
    byte=video_buffer[idx];
    24f2:	4b10      	ldr	r3, [pc, #64]	; (2534 <gfx_plot+0x98>)
    24f4:	5d5c      	ldrb	r4, [r3, r5]
    if (x&1){
    24f6:	68fb      	ldr	r3, [r7, #12]
    24f8:	f003 0301 	and.w	r3, r3, #1
    24fc:	2b00      	cmp	r3, #0
    24fe:	d006      	beq.n	250e <gfx_plot+0x72>
        byte&=0xf0;
    2500:	f024 030f 	bic.w	r3, r4, #15
    2504:	b2dc      	uxtb	r4, r3
        byte|=color;
    2506:	79fb      	ldrb	r3, [r7, #7]
    2508:	4323      	orrs	r3, r4
    250a:	b2dc      	uxtb	r4, r3
    250c:	e009      	b.n	2522 <gfx_plot+0x86>
    }else{
        byte&=0xf;
    250e:	f004 030f 	and.w	r3, r4, #15
    2512:	b2dc      	uxtb	r4, r3
        byte|=color<<4;
    2514:	79fb      	ldrb	r3, [r7, #7]
    2516:	011b      	lsls	r3, r3, #4
    2518:	b25a      	sxtb	r2, r3
    251a:	b263      	sxtb	r3, r4
    251c:	4313      	orrs	r3, r2
    251e:	b25b      	sxtb	r3, r3
    2520:	b2dc      	uxtb	r4, r3
    }
    video_buffer[idx]=byte;
    2522:	4b04      	ldr	r3, [pc, #16]	; (2534 <gfx_plot+0x98>)
    2524:	4622      	mov	r2, r4
    2526:	555a      	strb	r2, [r3, r5]
    2528:	e000      	b.n	252c <gfx_plot+0x90>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    252a:	bf00      	nop
}
    252c:	3718      	adds	r7, #24
    252e:	46bd      	mov	sp, r7
    2530:	bdb0      	pop	{r4, r5, r7, pc}
    2532:	bf00      	nop
    2534:	200026e0 	.word	0x200026e0

00002538 <gfx_cls>:

void gfx_cls(){
    2538:	b580      	push	{r7, lr}
    253a:	b082      	sub	sp, #8
    253c:	af00      	add	r7, sp, #0
	int x;
    vmode_params_t *vparams=get_video_params();
    253e:	f003 f8e5 	bl	570c <get_video_params>
    2542:	6038      	str	r0, [r7, #0]
	for (x=0;x<vparams->vres*vparams->bpr;x++) video_buffer[x]=0;
    2544:	2300      	movs	r3, #0
    2546:	607b      	str	r3, [r7, #4]
    2548:	e007      	b.n	255a <gfx_cls+0x22>
    254a:	4a0d      	ldr	r2, [pc, #52]	; (2580 <gfx_cls+0x48>)
    254c:	687b      	ldr	r3, [r7, #4]
    254e:	4413      	add	r3, r2
    2550:	2200      	movs	r2, #0
    2552:	701a      	strb	r2, [r3, #0]
    2554:	687b      	ldr	r3, [r7, #4]
    2556:	3301      	adds	r3, #1
    2558:	607b      	str	r3, [r7, #4]
    255a:	683b      	ldr	r3, [r7, #0]
    255c:	89db      	ldrh	r3, [r3, #14]
    255e:	461a      	mov	r2, r3
    2560:	683b      	ldr	r3, [r7, #0]
    2562:	7a1b      	ldrb	r3, [r3, #8]
    2564:	fb03 f202 	mul.w	r2, r3, r2
    2568:	687b      	ldr	r3, [r7, #4]
    256a:	429a      	cmp	r2, r3
    256c:	dced      	bgt.n	254a <gfx_cls+0x12>
    set_cursor(0,0);
    256e:	2100      	movs	r1, #0
    2570:	2000      	movs	r0, #0
    2572:	f002 fbef 	bl	4d54 <set_cursor>
}
    2576:	bf00      	nop
    2578:	3708      	adds	r7, #8
    257a:	46bd      	mov	sp, r7
    257c:	bd80      	pop	{r7, pc}
    257e:	bf00      	nop
    2580:	200026e0 	.word	0x200026e0

00002584 <move_up>:

static uint8_t* move_up(uint8_t* src, uint8_t* dest, int size){
    2584:	b480      	push	{r7}
    2586:	b085      	sub	sp, #20
    2588:	af00      	add	r7, sp, #0
    258a:	60f8      	str	r0, [r7, #12]
    258c:	60b9      	str	r1, [r7, #8]
    258e:	607a      	str	r2, [r7, #4]
    while (size--) *--dest=*--src;
    2590:	e009      	b.n	25a6 <move_up+0x22>
    2592:	68bb      	ldr	r3, [r7, #8]
    2594:	3b01      	subs	r3, #1
    2596:	60bb      	str	r3, [r7, #8]
    2598:	68fb      	ldr	r3, [r7, #12]
    259a:	3b01      	subs	r3, #1
    259c:	60fb      	str	r3, [r7, #12]
    259e:	68fb      	ldr	r3, [r7, #12]
    25a0:	781a      	ldrb	r2, [r3, #0]
    25a2:	68bb      	ldr	r3, [r7, #8]
    25a4:	701a      	strb	r2, [r3, #0]
    25a6:	687b      	ldr	r3, [r7, #4]
    25a8:	1e5a      	subs	r2, r3, #1
    25aa:	607a      	str	r2, [r7, #4]
    25ac:	2b00      	cmp	r3, #0
    25ae:	d1f0      	bne.n	2592 <move_up+0xe>
    return dest;
    25b0:	68bb      	ldr	r3, [r7, #8]
}
    25b2:	4618      	mov	r0, r3
    25b4:	3714      	adds	r7, #20
    25b6:	46bd      	mov	sp, r7
    25b8:	bc80      	pop	{r7}
    25ba:	4770      	bx	lr

000025bc <move_down>:

static uint8_t* move_down(uint8_t* src, uint8_t* dest, int size){
    25bc:	b480      	push	{r7}
    25be:	b085      	sub	sp, #20
    25c0:	af00      	add	r7, sp, #0
    25c2:	60f8      	str	r0, [r7, #12]
    25c4:	60b9      	str	r1, [r7, #8]
    25c6:	607a      	str	r2, [r7, #4]
    while (size--) *dest++=*src++;
    25c8:	e007      	b.n	25da <move_down+0x1e>
    25ca:	68bb      	ldr	r3, [r7, #8]
    25cc:	1c5a      	adds	r2, r3, #1
    25ce:	60ba      	str	r2, [r7, #8]
    25d0:	68fa      	ldr	r2, [r7, #12]
    25d2:	1c51      	adds	r1, r2, #1
    25d4:	60f9      	str	r1, [r7, #12]
    25d6:	7812      	ldrb	r2, [r2, #0]
    25d8:	701a      	strb	r2, [r3, #0]
    25da:	687b      	ldr	r3, [r7, #4]
    25dc:	1e5a      	subs	r2, r3, #1
    25de:	607a      	str	r2, [r7, #4]
    25e0:	2b00      	cmp	r3, #0
    25e2:	d1f2      	bne.n	25ca <move_down+0xe>
    return dest;
    25e4:	68bb      	ldr	r3, [r7, #8]
}
    25e6:	4618      	mov	r0, r3
    25e8:	3714      	adds	r7, #20
    25ea:	46bd      	mov	sp, r7
    25ec:	bc80      	pop	{r7}
    25ee:	4770      	bx	lr

000025f0 <gfx_scroll_up>:


void gfx_scroll_up(uint8_t n){
    25f0:	b580      	push	{r7, lr}
    25f2:	b086      	sub	sp, #24
    25f4:	af00      	add	r7, sp, #0
    25f6:	4603      	mov	r3, r0
    25f8:	71fb      	strb	r3, [r7, #7]
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    25fa:	f003 f887 	bl	570c <get_video_params>
    25fe:	60f8      	str	r0, [r7, #12]
    src=&video_buffer[n*vparams->bpr];
    2600:	79fb      	ldrb	r3, [r7, #7]
    2602:	68fa      	ldr	r2, [r7, #12]
    2604:	7a12      	ldrb	r2, [r2, #8]
    2606:	fb02 f303 	mul.w	r3, r2, r3
    260a:	4a15      	ldr	r2, [pc, #84]	; (2660 <gfx_scroll_up+0x70>)
    260c:	4413      	add	r3, r2
    260e:	60bb      	str	r3, [r7, #8]
    dest=video_buffer;
    2610:	4b13      	ldr	r3, [pc, #76]	; (2660 <gfx_scroll_up+0x70>)
    2612:	617b      	str	r3, [r7, #20]
    size = (vparams->vres-n)*vparams->bpr;
    2614:	68fb      	ldr	r3, [r7, #12]
    2616:	89db      	ldrh	r3, [r3, #14]
    2618:	461a      	mov	r2, r3
    261a:	79fb      	ldrb	r3, [r7, #7]
    261c:	1ad3      	subs	r3, r2, r3
    261e:	68fa      	ldr	r2, [r7, #12]
    2620:	7a12      	ldrb	r2, [r2, #8]
    2622:	fb02 f303 	mul.w	r3, r2, r3
    2626:	613b      	str	r3, [r7, #16]
    dest=move_down(src,dest,size);
    2628:	693a      	ldr	r2, [r7, #16]
    262a:	6979      	ldr	r1, [r7, #20]
    262c:	68b8      	ldr	r0, [r7, #8]
    262e:	f7ff ffc5 	bl	25bc <move_down>
    2632:	6178      	str	r0, [r7, #20]
    size=vparams->bpr*n;
    2634:	68fb      	ldr	r3, [r7, #12]
    2636:	7a1b      	ldrb	r3, [r3, #8]
    2638:	461a      	mov	r2, r3
    263a:	79fb      	ldrb	r3, [r7, #7]
    263c:	fb03 f302 	mul.w	r3, r3, r2
    2640:	613b      	str	r3, [r7, #16]
    while (size--) *dest++=0;
    2642:	e004      	b.n	264e <gfx_scroll_up+0x5e>
    2644:	697b      	ldr	r3, [r7, #20]
    2646:	1c5a      	adds	r2, r3, #1
    2648:	617a      	str	r2, [r7, #20]
    264a:	2200      	movs	r2, #0
    264c:	701a      	strb	r2, [r3, #0]
    264e:	693b      	ldr	r3, [r7, #16]
    2650:	1e5a      	subs	r2, r3, #1
    2652:	613a      	str	r2, [r7, #16]
    2654:	2b00      	cmp	r3, #0
    2656:	d1f5      	bne.n	2644 <gfx_scroll_up+0x54>
}
    2658:	bf00      	nop
    265a:	3718      	adds	r7, #24
    265c:	46bd      	mov	sp, r7
    265e:	bd80      	pop	{r7, pc}
    2660:	200026e0 	.word	0x200026e0

00002664 <gfx_scroll_down>:

void gfx_scroll_down(uint8_t n){
    2664:	b580      	push	{r7, lr}
    2666:	b086      	sub	sp, #24
    2668:	af00      	add	r7, sp, #0
    266a:	4603      	mov	r3, r0
    266c:	71fb      	strb	r3, [r7, #7]
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    266e:	f003 f84d 	bl	570c <get_video_params>
    2672:	60f8      	str	r0, [r7, #12]
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    2674:	68fb      	ldr	r3, [r7, #12]
    2676:	89db      	ldrh	r3, [r3, #14]
    2678:	461a      	mov	r2, r3
    267a:	79fb      	ldrb	r3, [r7, #7]
    267c:	1ad3      	subs	r3, r2, r3
    267e:	68fa      	ldr	r2, [r7, #12]
    2680:	7a12      	ldrb	r2, [r2, #8]
    2682:	fb02 f303 	mul.w	r3, r2, r3
    2686:	4a1a      	ldr	r2, [pc, #104]	; (26f0 <gfx_scroll_down+0x8c>)
    2688:	4413      	add	r3, r2
    268a:	60bb      	str	r3, [r7, #8]
    dest=&video_buffer[vparams->vres*vparams->bpr];
    268c:	68fb      	ldr	r3, [r7, #12]
    268e:	89db      	ldrh	r3, [r3, #14]
    2690:	461a      	mov	r2, r3
    2692:	68fb      	ldr	r3, [r7, #12]
    2694:	7a1b      	ldrb	r3, [r3, #8]
    2696:	fb03 f302 	mul.w	r3, r3, r2
    269a:	4a15      	ldr	r2, [pc, #84]	; (26f0 <gfx_scroll_down+0x8c>)
    269c:	4413      	add	r3, r2
    269e:	617b      	str	r3, [r7, #20]
    size = (vparams->vres-n)*vparams->bpr;
    26a0:	68fb      	ldr	r3, [r7, #12]
    26a2:	89db      	ldrh	r3, [r3, #14]
    26a4:	461a      	mov	r2, r3
    26a6:	79fb      	ldrb	r3, [r7, #7]
    26a8:	1ad3      	subs	r3, r2, r3
    26aa:	68fa      	ldr	r2, [r7, #12]
    26ac:	7a12      	ldrb	r2, [r2, #8]
    26ae:	fb02 f303 	mul.w	r3, r2, r3
    26b2:	613b      	str	r3, [r7, #16]
    dest=move_up(src,dest,size);
    26b4:	693a      	ldr	r2, [r7, #16]
    26b6:	6979      	ldr	r1, [r7, #20]
    26b8:	68b8      	ldr	r0, [r7, #8]
    26ba:	f7ff ff63 	bl	2584 <move_up>
    26be:	6178      	str	r0, [r7, #20]
    size=vparams->bpr*n;
    26c0:	68fb      	ldr	r3, [r7, #12]
    26c2:	7a1b      	ldrb	r3, [r3, #8]
    26c4:	461a      	mov	r2, r3
    26c6:	79fb      	ldrb	r3, [r7, #7]
    26c8:	fb03 f302 	mul.w	r3, r3, r2
    26cc:	613b      	str	r3, [r7, #16]
    while (size--) *--dest=0;
    26ce:	e005      	b.n	26dc <gfx_scroll_down+0x78>
    26d0:	697b      	ldr	r3, [r7, #20]
    26d2:	3b01      	subs	r3, #1
    26d4:	617b      	str	r3, [r7, #20]
    26d6:	697b      	ldr	r3, [r7, #20]
    26d8:	2200      	movs	r2, #0
    26da:	701a      	strb	r2, [r3, #0]
    26dc:	693b      	ldr	r3, [r7, #16]
    26de:	1e5a      	subs	r2, r3, #1
    26e0:	613a      	str	r2, [r7, #16]
    26e2:	2b00      	cmp	r3, #0
    26e4:	d1f4      	bne.n	26d0 <gfx_scroll_down+0x6c>
}
    26e6:	bf00      	nop
    26e8:	3718      	adds	r7, #24
    26ea:	46bd      	mov	sp, r7
    26ec:	bd80      	pop	{r7, pc}
    26ee:	bf00      	nop
    26f0:	200026e0 	.word	0x200026e0

000026f4 <gfx_scroll_left>:

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    26f4:	b580      	push	{r7, lr}
    26f6:	b088      	sub	sp, #32
    26f8:	af00      	add	r7, sp, #0
    26fa:	4603      	mov	r3, r0
    26fc:	71fb      	strb	r3, [r7, #7]
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    26fe:	f003 f805 	bl	570c <get_video_params>
    2702:	6138      	str	r0, [r7, #16]
    for (y=0;y<vparams->vres;y++){
    2704:	2300      	movs	r3, #0
    2706:	61fb      	str	r3, [r7, #28]
    2708:	e02a      	b.n	2760 <gfx_scroll_left+0x6c>
        dest=&video_buffer[y*vparams->bpr];
    270a:	693b      	ldr	r3, [r7, #16]
    270c:	7a1b      	ldrb	r3, [r3, #8]
    270e:	461a      	mov	r2, r3
    2710:	69fb      	ldr	r3, [r7, #28]
    2712:	fb03 f302 	mul.w	r3, r3, r2
    2716:	4a17      	ldr	r2, [pc, #92]	; (2774 <gfx_scroll_left+0x80>)
    2718:	4413      	add	r3, r2
    271a:	617b      	str	r3, [r7, #20]
        src=dest+n;
    271c:	79fb      	ldrb	r3, [r7, #7]
    271e:	697a      	ldr	r2, [r7, #20]
    2720:	4413      	add	r3, r2
    2722:	60fb      	str	r3, [r7, #12]
        size=vparams->hres/2-n;
    2724:	693b      	ldr	r3, [r7, #16]
    2726:	899b      	ldrh	r3, [r3, #12]
    2728:	085b      	lsrs	r3, r3, #1
    272a:	b29b      	uxth	r3, r3
    272c:	461a      	mov	r2, r3
    272e:	79fb      	ldrb	r3, [r7, #7]
    2730:	1ad3      	subs	r3, r2, r3
    2732:	61bb      	str	r3, [r7, #24]
        dest=move_down(src,dest,size);
    2734:	69ba      	ldr	r2, [r7, #24]
    2736:	6979      	ldr	r1, [r7, #20]
    2738:	68f8      	ldr	r0, [r7, #12]
    273a:	f7ff ff3f 	bl	25bc <move_down>
    273e:	6178      	str	r0, [r7, #20]
        size=n;
    2740:	79fb      	ldrb	r3, [r7, #7]
    2742:	61bb      	str	r3, [r7, #24]
        while (size--) *dest++=0;
    2744:	e004      	b.n	2750 <gfx_scroll_left+0x5c>
    2746:	697b      	ldr	r3, [r7, #20]
    2748:	1c5a      	adds	r2, r3, #1
    274a:	617a      	str	r2, [r7, #20]
    274c:	2200      	movs	r2, #0
    274e:	701a      	strb	r2, [r3, #0]
    2750:	69bb      	ldr	r3, [r7, #24]
    2752:	1e5a      	subs	r2, r3, #1
    2754:	61ba      	str	r2, [r7, #24]
    2756:	2b00      	cmp	r3, #0
    2758:	d1f5      	bne.n	2746 <gfx_scroll_left+0x52>
    for (y=0;y<vparams->vres;y++){
    275a:	69fb      	ldr	r3, [r7, #28]
    275c:	3301      	adds	r3, #1
    275e:	61fb      	str	r3, [r7, #28]
    2760:	693b      	ldr	r3, [r7, #16]
    2762:	89db      	ldrh	r3, [r3, #14]
    2764:	461a      	mov	r2, r3
    2766:	69fb      	ldr	r3, [r7, #28]
    2768:	429a      	cmp	r2, r3
    276a:	dcce      	bgt.n	270a <gfx_scroll_left+0x16>
    }
}
    276c:	bf00      	nop
    276e:	3720      	adds	r7, #32
    2770:	46bd      	mov	sp, r7
    2772:	bd80      	pop	{r7, pc}
    2774:	200026e0 	.word	0x200026e0

00002778 <gfx_scroll_right>:

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    2778:	b580      	push	{r7, lr}
    277a:	b088      	sub	sp, #32
    277c:	af00      	add	r7, sp, #0
    277e:	4603      	mov	r3, r0
    2780:	71fb      	strb	r3, [r7, #7]
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    2782:	f002 ffc3 	bl	570c <get_video_params>
    2786:	6138      	str	r0, [r7, #16]
    for (y=0;y<vparams->vres;y++){
    2788:	2300      	movs	r3, #0
    278a:	61fb      	str	r3, [r7, #28]
    278c:	e02f      	b.n	27ee <gfx_scroll_right+0x76>
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    278e:	693b      	ldr	r3, [r7, #16]
    2790:	7a1b      	ldrb	r3, [r3, #8]
    2792:	461a      	mov	r2, r3
    2794:	69fb      	ldr	r3, [r7, #28]
    2796:	fb03 f302 	mul.w	r3, r3, r2
    279a:	4a1a      	ldr	r2, [pc, #104]	; (2804 <gfx_scroll_right+0x8c>)
    279c:	4413      	add	r3, r2
    279e:	693a      	ldr	r2, [r7, #16]
    27a0:	7a12      	ldrb	r2, [r2, #8]
    27a2:	4413      	add	r3, r2
    27a4:	617b      	str	r3, [r7, #20]
        src=dest-n;
    27a6:	79fb      	ldrb	r3, [r7, #7]
    27a8:	425b      	negs	r3, r3
    27aa:	697a      	ldr	r2, [r7, #20]
    27ac:	4413      	add	r3, r2
    27ae:	60fb      	str	r3, [r7, #12]
        size=vparams->hres/2-n;
    27b0:	693b      	ldr	r3, [r7, #16]
    27b2:	899b      	ldrh	r3, [r3, #12]
    27b4:	085b      	lsrs	r3, r3, #1
    27b6:	b29b      	uxth	r3, r3
    27b8:	461a      	mov	r2, r3
    27ba:	79fb      	ldrb	r3, [r7, #7]
    27bc:	1ad3      	subs	r3, r2, r3
    27be:	61bb      	str	r3, [r7, #24]
        dest=move_up(src,dest,size);
    27c0:	69ba      	ldr	r2, [r7, #24]
    27c2:	6979      	ldr	r1, [r7, #20]
    27c4:	68f8      	ldr	r0, [r7, #12]
    27c6:	f7ff fedd 	bl	2584 <move_up>
    27ca:	6178      	str	r0, [r7, #20]
        size=n;
    27cc:	79fb      	ldrb	r3, [r7, #7]
    27ce:	61bb      	str	r3, [r7, #24]
        while (size--) *--dest=0;
    27d0:	e005      	b.n	27de <gfx_scroll_right+0x66>
    27d2:	697b      	ldr	r3, [r7, #20]
    27d4:	3b01      	subs	r3, #1
    27d6:	617b      	str	r3, [r7, #20]
    27d8:	697b      	ldr	r3, [r7, #20]
    27da:	2200      	movs	r2, #0
    27dc:	701a      	strb	r2, [r3, #0]
    27de:	69bb      	ldr	r3, [r7, #24]
    27e0:	1e5a      	subs	r2, r3, #1
    27e2:	61ba      	str	r2, [r7, #24]
    27e4:	2b00      	cmp	r3, #0
    27e6:	d1f4      	bne.n	27d2 <gfx_scroll_right+0x5a>
    for (y=0;y<vparams->vres;y++){
    27e8:	69fb      	ldr	r3, [r7, #28]
    27ea:	3301      	adds	r3, #1
    27ec:	61fb      	str	r3, [r7, #28]
    27ee:	693b      	ldr	r3, [r7, #16]
    27f0:	89db      	ldrh	r3, [r3, #14]
    27f2:	461a      	mov	r2, r3
    27f4:	69fb      	ldr	r3, [r7, #28]
    27f6:	429a      	cmp	r2, r3
    27f8:	dcc9      	bgt.n	278e <gfx_scroll_right+0x16>
    }
}
    27fa:	bf00      	nop
    27fc:	3720      	adds	r7, #32
    27fe:	46bd      	mov	sp, r7
    2800:	bd80      	pop	{r7, pc}
    2802:	bf00      	nop
    2804:	200026e0 	.word	0x200026e0

00002808 <gfx_get_pixel>:


uint8_t gfx_get_pixel(int x, int y){
    2808:	b590      	push	{r4, r7, lr}
    280a:	b085      	sub	sp, #20
    280c:	af00      	add	r7, sp, #0
    280e:	6078      	str	r0, [r7, #4]
    2810:	6039      	str	r1, [r7, #0]
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    2812:	f002 ff7b 	bl	570c <get_video_params>
    2816:	60f8      	str	r0, [r7, #12]
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    2818:	687b      	ldr	r3, [r7, #4]
    281a:	2b00      	cmp	r3, #0
    281c:	db0e      	blt.n	283c <gfx_get_pixel+0x34>
    281e:	68fb      	ldr	r3, [r7, #12]
    2820:	899b      	ldrh	r3, [r3, #12]
    2822:	461a      	mov	r2, r3
    2824:	687b      	ldr	r3, [r7, #4]
    2826:	429a      	cmp	r2, r3
    2828:	dd08      	ble.n	283c <gfx_get_pixel+0x34>
    282a:	683b      	ldr	r3, [r7, #0]
    282c:	2b00      	cmp	r3, #0
    282e:	db05      	blt.n	283c <gfx_get_pixel+0x34>
    2830:	68fb      	ldr	r3, [r7, #12]
    2832:	89db      	ldrh	r3, [r3, #14]
    2834:	461a      	mov	r2, r3
    2836:	683b      	ldr	r3, [r7, #0]
    2838:	429a      	cmp	r2, r3
    283a:	dc01      	bgt.n	2840 <gfx_get_pixel+0x38>
    283c:	23ff      	movs	r3, #255	; 0xff
    283e:	e014      	b.n	286a <gfx_get_pixel+0x62>
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    2840:	68fb      	ldr	r3, [r7, #12]
    2842:	7a1b      	ldrb	r3, [r3, #8]
    2844:	461a      	mov	r2, r3
    2846:	683b      	ldr	r3, [r7, #0]
    2848:	fb03 f202 	mul.w	r2, r3, r2
    284c:	687b      	ldr	r3, [r7, #4]
    284e:	105b      	asrs	r3, r3, #1
    2850:	4413      	add	r3, r2
    2852:	4a08      	ldr	r2, [pc, #32]	; (2874 <gfx_get_pixel+0x6c>)
    2854:	5cd4      	ldrb	r4, [r2, r3]
    if (!(x&1)) byte>>=4;
    2856:	687b      	ldr	r3, [r7, #4]
    2858:	f003 0301 	and.w	r3, r3, #1
    285c:	2b00      	cmp	r3, #0
    285e:	d101      	bne.n	2864 <gfx_get_pixel+0x5c>
    2860:	0923      	lsrs	r3, r4, #4
    2862:	b2dc      	uxtb	r4, r3
    return byte&0xf;
    2864:	f004 030f 	and.w	r3, r4, #15
    2868:	b2db      	uxtb	r3, r3
}
    286a:	4618      	mov	r0, r3
    286c:	3714      	adds	r7, #20
    286e:	46bd      	mov	sp, r7
    2870:	bd90      	pop	{r4, r7, pc}
    2872:	bf00      	nop
    2874:	200026e0 	.word	0x200026e0

00002878 <gfx_sprite>:

static const uint8_t bit_mask[5]={0,128,0xc0,0,0xf0};
static const uint8_t bit_shift[5]={0,7,6,0,4};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    2878:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    287c:	b086      	sub	sp, #24
    287e:	af00      	add	r7, sp, #0
    2880:	60f8      	str	r0, [r7, #12]
    2882:	60b9      	str	r1, [r7, #8]
    2884:	4611      	mov	r1, r2
    2886:	461a      	mov	r2, r3
    2888:	460b      	mov	r3, r1
    288a:	71fb      	strb	r3, [r7, #7]
    288c:	4613      	mov	r3, r2
    288e:	71bb      	strb	r3, [r7, #6]
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    2890:	2300      	movs	r3, #0
    2892:	617b      	str	r3, [r7, #20]

    shift=bit_shift[sprite_bpp];
    2894:	4b34      	ldr	r3, [pc, #208]	; (2968 <gfx_sprite+0xf0>)
    2896:	781b      	ldrb	r3, [r3, #0]
    2898:	461a      	mov	r2, r3
    289a:	4b34      	ldr	r3, [pc, #208]	; (296c <gfx_sprite+0xf4>)
    289c:	f813 a002 	ldrb.w	sl, [r3, r2]
    bmp_byte=*sprite++;
    28a0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    28a2:	1c5a      	adds	r2, r3, #1
    28a4:	63ba      	str	r2, [r7, #56]	; 0x38
    28a6:	781c      	ldrb	r4, [r3, #0]
    mask=bit_mask[sprite_bpp];
    28a8:	4b2f      	ldr	r3, [pc, #188]	; (2968 <gfx_sprite+0xf0>)
    28aa:	781b      	ldrb	r3, [r3, #0]
    28ac:	461a      	mov	r2, r3
    28ae:	4b30      	ldr	r3, [pc, #192]	; (2970 <gfx_sprite+0xf8>)
    28b0:	f813 8002 	ldrb.w	r8, [r3, r2]
    ppb=8/sprite_bpp;
    28b4:	4b2c      	ldr	r3, [pc, #176]	; (2968 <gfx_sprite+0xf0>)
    28b6:	781b      	ldrb	r3, [r3, #0]
    28b8:	461a      	mov	r2, r3
    28ba:	2308      	movs	r3, #8
    28bc:	fb93 f3f2 	sdiv	r3, r3, r2
    28c0:	b2de      	uxtb	r6, r3
    for (y0=y;y0<(y+height);y0++){
    28c2:	68bd      	ldr	r5, [r7, #8]
    28c4:	e045      	b.n	2952 <gfx_sprite+0xda>
        for(x0=x;x0<(x+width);x0++){
    28c6:	68fb      	ldr	r3, [r7, #12]
    28c8:	603b      	str	r3, [r7, #0]
    28ca:	e03b      	b.n	2944 <gfx_sprite+0xcc>
            if (sprite_bpp<4){
    28cc:	4b26      	ldr	r3, [pc, #152]	; (2968 <gfx_sprite+0xf0>)
    28ce:	781b      	ldrb	r3, [r3, #0]
    28d0:	2b03      	cmp	r3, #3
    28d2:	d80a      	bhi.n	28ea <gfx_sprite+0x72>
                color=palette[(bmp_byte&mask)>>shift];
    28d4:	ea04 0308 	and.w	r3, r4, r8
    28d8:	b2db      	uxtb	r3, r3
    28da:	461a      	mov	r2, r3
    28dc:	4653      	mov	r3, sl
    28de:	fa42 f303 	asr.w	r3, r2, r3
    28e2:	4a24      	ldr	r2, [pc, #144]	; (2974 <gfx_sprite+0xfc>)
    28e4:	f812 9003 	ldrb.w	r9, [r2, r3]
    28e8:	e008      	b.n	28fc <gfx_sprite+0x84>
            }else{
                color=(bmp_byte&mask)>>shift;
    28ea:	ea04 0308 	and.w	r3, r4, r8
    28ee:	b2db      	uxtb	r3, r3
    28f0:	461a      	mov	r2, r3
    28f2:	4653      	mov	r3, sl
    28f4:	fa42 f303 	asr.w	r3, r2, r3
    28f8:	fa5f f983 	uxtb.w	r9, r3
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    28fc:	2302      	movs	r3, #2
    28fe:	464a      	mov	r2, r9
    2900:	4629      	mov	r1, r5
    2902:	6838      	ldr	r0, [r7, #0]
    2904:	f7ff fd48 	bl	2398 <gfx_blit>
    2908:	4602      	mov	r2, r0
    290a:	697b      	ldr	r3, [r7, #20]
    290c:	4313      	orrs	r3, r2
    290e:	617b      	str	r3, [r7, #20]
            bmp_byte<<=(8-shift);
    2910:	4622      	mov	r2, r4
    2912:	4653      	mov	r3, sl
    2914:	f1c3 0308 	rsb	r3, r3, #8
    2918:	fa02 f303 	lsl.w	r3, r2, r3
    291c:	b2dc      	uxtb	r4, r3
            ppb--;
    291e:	4633      	mov	r3, r6
    2920:	3b01      	subs	r3, #1
    2922:	b2de      	uxtb	r6, r3
            if (!ppb){
    2924:	2e00      	cmp	r6, #0
    2926:	d10a      	bne.n	293e <gfx_sprite+0xc6>
                bmp_byte=*sprite++;
    2928:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    292a:	1c5a      	adds	r2, r3, #1
    292c:	63ba      	str	r2, [r7, #56]	; 0x38
    292e:	781c      	ldrb	r4, [r3, #0]
                ppb=8/sprite_bpp;
    2930:	4b0d      	ldr	r3, [pc, #52]	; (2968 <gfx_sprite+0xf0>)
    2932:	781b      	ldrb	r3, [r3, #0]
    2934:	461a      	mov	r2, r3
    2936:	2308      	movs	r3, #8
    2938:	fb93 f3f2 	sdiv	r3, r3, r2
    293c:	b2de      	uxtb	r6, r3
        for(x0=x;x0<(x+width);x0++){
    293e:	683b      	ldr	r3, [r7, #0]
    2940:	3301      	adds	r3, #1
    2942:	603b      	str	r3, [r7, #0]
    2944:	79fa      	ldrb	r2, [r7, #7]
    2946:	68fb      	ldr	r3, [r7, #12]
    2948:	4413      	add	r3, r2
    294a:	683a      	ldr	r2, [r7, #0]
    294c:	4293      	cmp	r3, r2
    294e:	dcbd      	bgt.n	28cc <gfx_sprite+0x54>
    for (y0=y;y0<(y+height);y0++){
    2950:	3501      	adds	r5, #1
    2952:	79ba      	ldrb	r2, [r7, #6]
    2954:	68bb      	ldr	r3, [r7, #8]
    2956:	4413      	add	r3, r2
    2958:	42ab      	cmp	r3, r5
    295a:	dcb4      	bgt.n	28c6 <gfx_sprite+0x4e>
            }
        }
    }
    return collision;
    295c:	697b      	ldr	r3, [r7, #20]
}
    295e:	4618      	mov	r0, r3
    2960:	3718      	adds	r7, #24
    2962:	46bd      	mov	sp, r7
    2964:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    2968:	20000190 	.word	0x20000190
    296c:	00006040 	.word	0x00006040
    2970:	00006038 	.word	0x00006038
    2974:	20000194 	.word	0x20000194

00002978 <set_sysclock>:
//void* ffa;


// configure SYSCLK à la fréquence maximale de 72 Mhz
// en utilisant le cristal externe (HSE) et le PLL
static void set_sysclock(){
    2978:	b480      	push	{r7}
    297a:	af00      	add	r7, sp, #0
	 // active l'oscillateur externe
	RCC->CR|=RCC_CR_HSEON;
    297c:	4a18      	ldr	r2, [pc, #96]	; (29e0 <set_sysclock+0x68>)
    297e:	4b18      	ldr	r3, [pc, #96]	; (29e0 <set_sysclock+0x68>)
    2980:	681b      	ldr	r3, [r3, #0]
    2982:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2986:	6013      	str	r3, [r2, #0]
	 // attend que l'oscillateur soit prêt
   while (!(RCC->CR&RCC_CR_HSERDY));
    2988:	bf00      	nop
    298a:	4b15      	ldr	r3, [pc, #84]	; (29e0 <set_sysclock+0x68>)
    298c:	681b      	ldr	r3, [r3, #0]
    298e:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    2992:	2b00      	cmp	r3, #0
    2994:	d0f9      	beq.n	298a <set_sysclock+0x12>
     // sélection PREDIV1 pour la source du PLL
     // multiplie la fréquence HSE par 5 
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    2996:	4a12      	ldr	r2, [pc, #72]	; (29e0 <set_sysclock+0x68>)
    2998:	4b11      	ldr	r3, [pc, #68]	; (29e0 <set_sysclock+0x68>)
    299a:	685b      	ldr	r3, [r3, #4]
    299c:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    29a0:	6053      	str	r3, [r2, #4]
    // active le PLL
    RCC->CR|=RCC_CR_PLLON;
    29a2:	4a0f      	ldr	r2, [pc, #60]	; (29e0 <set_sysclock+0x68>)
    29a4:	4b0e      	ldr	r3, [pc, #56]	; (29e0 <set_sysclock+0x68>)
    29a6:	681b      	ldr	r3, [r3, #0]
    29a8:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    29ac:	6013      	str	r3, [r2, #0]
    // Attend que le PLL soit prêt
    while (!(RCC->CR&RCC_CR_PLLRDY));
    29ae:	bf00      	nop
    29b0:	4b0b      	ldr	r3, [pc, #44]	; (29e0 <set_sysclock+0x68>)
    29b2:	681b      	ldr	r3, [r3, #0]
    29b4:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    29b8:	2b00      	cmp	r3, #0
    29ba:	d0f9      	beq.n	29b0 <set_sysclock+0x38>
    // ajoute délais d'accès à la mémoire flash
    // active le prefetch buffer
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    29bc:	4a09      	ldr	r2, [pc, #36]	; (29e4 <set_sysclock+0x6c>)
    29be:	4b09      	ldr	r3, [pc, #36]	; (29e4 <set_sysclock+0x6c>)
    29c0:	681b      	ldr	r3, [r3, #0]
    29c2:	f043 0312 	orr.w	r3, r3, #18
    29c6:	6013      	str	r3, [r2, #0]
	// La fréquence maximale pour APB1 doit-être de <=36 Mhz
	// donc divise SYSCLK/2
    // Sélectionne le PLL comme source pour SYSCLK dans CR
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    29c8:	4a05      	ldr	r2, [pc, #20]	; (29e0 <set_sysclock+0x68>)
    29ca:	4b05      	ldr	r3, [pc, #20]	; (29e0 <set_sysclock+0x68>)
    29cc:	685b      	ldr	r3, [r3, #4]
    29ce:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    29d2:	f043 0302 	orr.w	r3, r3, #2
    29d6:	6053      	str	r3, [r2, #4]
}
    29d8:	bf00      	nop
    29da:	46bd      	mov	sp, r7
    29dc:	bc80      	pop	{r7}
    29de:	4770      	bx	lr
    29e0:	40021000 	.word	0x40021000
    29e4:	40022000 	.word	0x40022000

000029e8 <draw_balls>:
}ball_t;

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

void draw_balls(){
    29e8:	b590      	push	{r4, r7, lr}
    29ea:	b085      	sub	sp, #20
    29ec:	af02      	add	r7, sp, #8
	int i;
	frame_sync();
    29ee:	f002 fdd5 	bl	559c <frame_sync>
	for (i=0;i<BALL_COUNT;i++){
    29f2:	2300      	movs	r3, #0
    29f4:	607b      	str	r3, [r7, #4]
    29f6:	e022      	b.n	2a3e <draw_balls+0x56>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    29f8:	4915      	ldr	r1, [pc, #84]	; (2a50 <draw_balls+0x68>)
    29fa:	687a      	ldr	r2, [r7, #4]
    29fc:	4613      	mov	r3, r2
    29fe:	009b      	lsls	r3, r3, #2
    2a00:	4413      	add	r3, r2
    2a02:	009b      	lsls	r3, r3, #2
    2a04:	440b      	add	r3, r1
    2a06:	6818      	ldr	r0, [r3, #0]
    2a08:	4911      	ldr	r1, [pc, #68]	; (2a50 <draw_balls+0x68>)
    2a0a:	687a      	ldr	r2, [r7, #4]
    2a0c:	4613      	mov	r3, r2
    2a0e:	009b      	lsls	r3, r3, #2
    2a10:	4413      	add	r3, r2
    2a12:	009b      	lsls	r3, r3, #2
    2a14:	440b      	add	r3, r1
    2a16:	3304      	adds	r3, #4
    2a18:	681c      	ldr	r4, [r3, #0]
    2a1a:	490d      	ldr	r1, [pc, #52]	; (2a50 <draw_balls+0x68>)
    2a1c:	687a      	ldr	r2, [r7, #4]
    2a1e:	4613      	mov	r3, r2
    2a20:	009b      	lsls	r3, r3, #2
    2a22:	4413      	add	r3, r2
    2a24:	009b      	lsls	r3, r3, #2
    2a26:	440b      	add	r3, r1
    2a28:	3310      	adds	r3, #16
    2a2a:	681b      	ldr	r3, [r3, #0]
    2a2c:	9300      	str	r3, [sp, #0]
    2a2e:	2308      	movs	r3, #8
    2a30:	2208      	movs	r2, #8
    2a32:	4621      	mov	r1, r4
    2a34:	f7ff ff20 	bl	2878 <gfx_sprite>
	for (i=0;i<BALL_COUNT;i++){
    2a38:	687b      	ldr	r3, [r7, #4]
    2a3a:	3301      	adds	r3, #1
    2a3c:	607b      	str	r3, [r7, #4]
    2a3e:	687b      	ldr	r3, [r7, #4]
    2a40:	2b01      	cmp	r3, #1
    2a42:	ddd9      	ble.n	29f8 <draw_balls+0x10>
	}
	wait_sync_end();
    2a44:	f002 fdba 	bl	55bc <wait_sync_end>
}
    2a48:	bf00      	nop
    2a4a:	370c      	adds	r7, #12
    2a4c:	46bd      	mov	sp, r7
    2a4e:	bd90      	pop	{r4, r7, pc}
    2a50:	200026b8 	.word	0x200026b8

00002a54 <isqrt>:

//REF: https://en.wikipedia.org/wiki/Integer_square_root
int isqrt(int n){
    2a54:	b580      	push	{r7, lr}
    2a56:	b084      	sub	sp, #16
    2a58:	af00      	add	r7, sp, #0
    2a5a:	6078      	str	r0, [r7, #4]
	int small, large;
	if (n<2) return n;
    2a5c:	687b      	ldr	r3, [r7, #4]
    2a5e:	2b01      	cmp	r3, #1
    2a60:	dc01      	bgt.n	2a66 <isqrt+0x12>
    2a62:	687b      	ldr	r3, [r7, #4]
    2a64:	e014      	b.n	2a90 <isqrt+0x3c>
  	small = isqrt(n >> 2) << 1;
    2a66:	687b      	ldr	r3, [r7, #4]
    2a68:	109b      	asrs	r3, r3, #2
    2a6a:	4618      	mov	r0, r3
    2a6c:	f7ff fff2 	bl	2a54 <isqrt>
    2a70:	4603      	mov	r3, r0
    2a72:	005b      	lsls	r3, r3, #1
    2a74:	60fb      	str	r3, [r7, #12]
	large = small + 1;
    2a76:	68fb      	ldr	r3, [r7, #12]
    2a78:	3301      	adds	r3, #1
    2a7a:	60bb      	str	r3, [r7, #8]
	if (large*large > n)
    2a7c:	68bb      	ldr	r3, [r7, #8]
    2a7e:	68ba      	ldr	r2, [r7, #8]
    2a80:	fb02 f203 	mul.w	r2, r2, r3
    2a84:	687b      	ldr	r3, [r7, #4]
    2a86:	429a      	cmp	r2, r3
    2a88:	dd01      	ble.n	2a8e <isqrt+0x3a>
		return small;
    2a8a:	68fb      	ldr	r3, [r7, #12]
    2a8c:	e000      	b.n	2a90 <isqrt+0x3c>
	else
		return large;	
    2a8e:	68bb      	ldr	r3, [r7, #8]
}
    2a90:	4618      	mov	r0, r3
    2a92:	3710      	adds	r7, #16
    2a94:	46bd      	mov	sp, r7
    2a96:	bd80      	pop	{r7, pc}

00002a98 <distance>:

unsigned distance(ball_t *ball1, ball_t *ball2){
    2a98:	b580      	push	{r7, lr}
    2a9a:	b082      	sub	sp, #8
    2a9c:	af00      	add	r7, sp, #0
    2a9e:	6078      	str	r0, [r7, #4]
    2aa0:	6039      	str	r1, [r7, #0]
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    2aa2:	687b      	ldr	r3, [r7, #4]
    2aa4:	681b      	ldr	r3, [r3, #0]
    2aa6:	683a      	ldr	r2, [r7, #0]
    2aa8:	6812      	ldr	r2, [r2, #0]
    2aaa:	fb02 f203 	mul.w	r2, r2, r3
    2aae:	687b      	ldr	r3, [r7, #4]
    2ab0:	685b      	ldr	r3, [r3, #4]
    2ab2:	6839      	ldr	r1, [r7, #0]
    2ab4:	6849      	ldr	r1, [r1, #4]
    2ab6:	fb01 f303 	mul.w	r3, r1, r3
    2aba:	4413      	add	r3, r2
    2abc:	2b00      	cmp	r3, #0
    2abe:	bfb8      	it	lt
    2ac0:	425b      	neglt	r3, r3
    2ac2:	4618      	mov	r0, r3
    2ac4:	f7ff ffc6 	bl	2a54 <isqrt>
    2ac8:	4603      	mov	r3, r0
}
    2aca:	4618      	mov	r0, r3
    2acc:	3708      	adds	r7, #8
    2ace:	46bd      	mov	sp, r7
    2ad0:	bd80      	pop	{r7, pc}

00002ad2 <move_balls>:

void move_balls(){
    2ad2:	b580      	push	{r7, lr}
    2ad4:	b082      	sub	sp, #8
    2ad6:	af00      	add	r7, sp, #0
	int i;
	vmode_params_t *vparams=get_video_params();
    2ad8:	f002 fe18 	bl	570c <get_video_params>
    2adc:	6038      	str	r0, [r7, #0]
	for (i=0;i<BALL_COUNT;i++){
    2ade:	2300      	movs	r3, #0
    2ae0:	607b      	str	r3, [r7, #4]
    2ae2:	e0c3      	b.n	2c6c <move_balls+0x19a>
		balls[i].x+=balls[i].dx;
    2ae4:	4979      	ldr	r1, [pc, #484]	; (2ccc <move_balls+0x1fa>)
    2ae6:	687a      	ldr	r2, [r7, #4]
    2ae8:	4613      	mov	r3, r2
    2aea:	009b      	lsls	r3, r3, #2
    2aec:	4413      	add	r3, r2
    2aee:	009b      	lsls	r3, r3, #2
    2af0:	440b      	add	r3, r1
    2af2:	6819      	ldr	r1, [r3, #0]
    2af4:	4875      	ldr	r0, [pc, #468]	; (2ccc <move_balls+0x1fa>)
    2af6:	687a      	ldr	r2, [r7, #4]
    2af8:	4613      	mov	r3, r2
    2afa:	009b      	lsls	r3, r3, #2
    2afc:	4413      	add	r3, r2
    2afe:	009b      	lsls	r3, r3, #2
    2b00:	4403      	add	r3, r0
    2b02:	3308      	adds	r3, #8
    2b04:	681b      	ldr	r3, [r3, #0]
    2b06:	4419      	add	r1, r3
    2b08:	4870      	ldr	r0, [pc, #448]	; (2ccc <move_balls+0x1fa>)
    2b0a:	687a      	ldr	r2, [r7, #4]
    2b0c:	4613      	mov	r3, r2
    2b0e:	009b      	lsls	r3, r3, #2
    2b10:	4413      	add	r3, r2
    2b12:	009b      	lsls	r3, r3, #2
    2b14:	4403      	add	r3, r0
    2b16:	6019      	str	r1, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    2b18:	496c      	ldr	r1, [pc, #432]	; (2ccc <move_balls+0x1fa>)
    2b1a:	687a      	ldr	r2, [r7, #4]
    2b1c:	4613      	mov	r3, r2
    2b1e:	009b      	lsls	r3, r3, #2
    2b20:	4413      	add	r3, r2
    2b22:	009b      	lsls	r3, r3, #2
    2b24:	440b      	add	r3, r1
    2b26:	681b      	ldr	r3, [r3, #0]
    2b28:	f113 0f07 	cmn.w	r3, #7
    2b2c:	db0b      	blt.n	2b46 <move_balls+0x74>
    2b2e:	4967      	ldr	r1, [pc, #412]	; (2ccc <move_balls+0x1fa>)
    2b30:	687a      	ldr	r2, [r7, #4]
    2b32:	4613      	mov	r3, r2
    2b34:	009b      	lsls	r3, r3, #2
    2b36:	4413      	add	r3, r2
    2b38:	009b      	lsls	r3, r3, #2
    2b3a:	440b      	add	r3, r1
    2b3c:	681b      	ldr	r3, [r3, #0]
    2b3e:	683a      	ldr	r2, [r7, #0]
    2b40:	8992      	ldrh	r2, [r2, #12]
    2b42:	4293      	cmp	r3, r2
    2b44:	db2c      	blt.n	2ba0 <move_balls+0xce>
			balls[i].dx=-balls[i].dx;
    2b46:	4961      	ldr	r1, [pc, #388]	; (2ccc <move_balls+0x1fa>)
    2b48:	687a      	ldr	r2, [r7, #4]
    2b4a:	4613      	mov	r3, r2
    2b4c:	009b      	lsls	r3, r3, #2
    2b4e:	4413      	add	r3, r2
    2b50:	009b      	lsls	r3, r3, #2
    2b52:	440b      	add	r3, r1
    2b54:	3308      	adds	r3, #8
    2b56:	681b      	ldr	r3, [r3, #0]
    2b58:	4259      	negs	r1, r3
    2b5a:	485c      	ldr	r0, [pc, #368]	; (2ccc <move_balls+0x1fa>)
    2b5c:	687a      	ldr	r2, [r7, #4]
    2b5e:	4613      	mov	r3, r2
    2b60:	009b      	lsls	r3, r3, #2
    2b62:	4413      	add	r3, r2
    2b64:	009b      	lsls	r3, r3, #2
    2b66:	4403      	add	r3, r0
    2b68:	3308      	adds	r3, #8
    2b6a:	6019      	str	r1, [r3, #0]
			balls[i].x+=balls[i].dx;
    2b6c:	4957      	ldr	r1, [pc, #348]	; (2ccc <move_balls+0x1fa>)
    2b6e:	687a      	ldr	r2, [r7, #4]
    2b70:	4613      	mov	r3, r2
    2b72:	009b      	lsls	r3, r3, #2
    2b74:	4413      	add	r3, r2
    2b76:	009b      	lsls	r3, r3, #2
    2b78:	440b      	add	r3, r1
    2b7a:	6819      	ldr	r1, [r3, #0]
    2b7c:	4853      	ldr	r0, [pc, #332]	; (2ccc <move_balls+0x1fa>)
    2b7e:	687a      	ldr	r2, [r7, #4]
    2b80:	4613      	mov	r3, r2
    2b82:	009b      	lsls	r3, r3, #2
    2b84:	4413      	add	r3, r2
    2b86:	009b      	lsls	r3, r3, #2
    2b88:	4403      	add	r3, r0
    2b8a:	3308      	adds	r3, #8
    2b8c:	681b      	ldr	r3, [r3, #0]
    2b8e:	4419      	add	r1, r3
    2b90:	484e      	ldr	r0, [pc, #312]	; (2ccc <move_balls+0x1fa>)
    2b92:	687a      	ldr	r2, [r7, #4]
    2b94:	4613      	mov	r3, r2
    2b96:	009b      	lsls	r3, r3, #2
    2b98:	4413      	add	r3, r2
    2b9a:	009b      	lsls	r3, r3, #2
    2b9c:	4403      	add	r3, r0
    2b9e:	6019      	str	r1, [r3, #0]
		}
		balls[i].y+=balls[i].dy;
    2ba0:	494a      	ldr	r1, [pc, #296]	; (2ccc <move_balls+0x1fa>)
    2ba2:	687a      	ldr	r2, [r7, #4]
    2ba4:	4613      	mov	r3, r2
    2ba6:	009b      	lsls	r3, r3, #2
    2ba8:	4413      	add	r3, r2
    2baa:	009b      	lsls	r3, r3, #2
    2bac:	440b      	add	r3, r1
    2bae:	3304      	adds	r3, #4
    2bb0:	6819      	ldr	r1, [r3, #0]
    2bb2:	4846      	ldr	r0, [pc, #280]	; (2ccc <move_balls+0x1fa>)
    2bb4:	687a      	ldr	r2, [r7, #4]
    2bb6:	4613      	mov	r3, r2
    2bb8:	009b      	lsls	r3, r3, #2
    2bba:	4413      	add	r3, r2
    2bbc:	009b      	lsls	r3, r3, #2
    2bbe:	4403      	add	r3, r0
    2bc0:	330c      	adds	r3, #12
    2bc2:	681b      	ldr	r3, [r3, #0]
    2bc4:	4419      	add	r1, r3
    2bc6:	4841      	ldr	r0, [pc, #260]	; (2ccc <move_balls+0x1fa>)
    2bc8:	687a      	ldr	r2, [r7, #4]
    2bca:	4613      	mov	r3, r2
    2bcc:	009b      	lsls	r3, r3, #2
    2bce:	4413      	add	r3, r2
    2bd0:	009b      	lsls	r3, r3, #2
    2bd2:	4403      	add	r3, r0
    2bd4:	3304      	adds	r3, #4
    2bd6:	6019      	str	r1, [r3, #0]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    2bd8:	493c      	ldr	r1, [pc, #240]	; (2ccc <move_balls+0x1fa>)
    2bda:	687a      	ldr	r2, [r7, #4]
    2bdc:	4613      	mov	r3, r2
    2bde:	009b      	lsls	r3, r3, #2
    2be0:	4413      	add	r3, r2
    2be2:	009b      	lsls	r3, r3, #2
    2be4:	440b      	add	r3, r1
    2be6:	3304      	adds	r3, #4
    2be8:	681b      	ldr	r3, [r3, #0]
    2bea:	2b0f      	cmp	r3, #15
    2bec:	dd0c      	ble.n	2c08 <move_balls+0x136>
    2bee:	4937      	ldr	r1, [pc, #220]	; (2ccc <move_balls+0x1fa>)
    2bf0:	687a      	ldr	r2, [r7, #4]
    2bf2:	4613      	mov	r3, r2
    2bf4:	009b      	lsls	r3, r3, #2
    2bf6:	4413      	add	r3, r2
    2bf8:	009b      	lsls	r3, r3, #2
    2bfa:	440b      	add	r3, r1
    2bfc:	3304      	adds	r3, #4
    2bfe:	681b      	ldr	r3, [r3, #0]
    2c00:	683a      	ldr	r2, [r7, #0]
    2c02:	89d2      	ldrh	r2, [r2, #14]
    2c04:	4293      	cmp	r3, r2
    2c06:	db2e      	blt.n	2c66 <move_balls+0x194>
			balls[i].dy=-balls[i].dy;
    2c08:	4930      	ldr	r1, [pc, #192]	; (2ccc <move_balls+0x1fa>)
    2c0a:	687a      	ldr	r2, [r7, #4]
    2c0c:	4613      	mov	r3, r2
    2c0e:	009b      	lsls	r3, r3, #2
    2c10:	4413      	add	r3, r2
    2c12:	009b      	lsls	r3, r3, #2
    2c14:	440b      	add	r3, r1
    2c16:	330c      	adds	r3, #12
    2c18:	681b      	ldr	r3, [r3, #0]
    2c1a:	4259      	negs	r1, r3
    2c1c:	482b      	ldr	r0, [pc, #172]	; (2ccc <move_balls+0x1fa>)
    2c1e:	687a      	ldr	r2, [r7, #4]
    2c20:	4613      	mov	r3, r2
    2c22:	009b      	lsls	r3, r3, #2
    2c24:	4413      	add	r3, r2
    2c26:	009b      	lsls	r3, r3, #2
    2c28:	4403      	add	r3, r0
    2c2a:	330c      	adds	r3, #12
    2c2c:	6019      	str	r1, [r3, #0]
			balls[i].y+=balls[i].dy;
    2c2e:	4927      	ldr	r1, [pc, #156]	; (2ccc <move_balls+0x1fa>)
    2c30:	687a      	ldr	r2, [r7, #4]
    2c32:	4613      	mov	r3, r2
    2c34:	009b      	lsls	r3, r3, #2
    2c36:	4413      	add	r3, r2
    2c38:	009b      	lsls	r3, r3, #2
    2c3a:	440b      	add	r3, r1
    2c3c:	3304      	adds	r3, #4
    2c3e:	6819      	ldr	r1, [r3, #0]
    2c40:	4822      	ldr	r0, [pc, #136]	; (2ccc <move_balls+0x1fa>)
    2c42:	687a      	ldr	r2, [r7, #4]
    2c44:	4613      	mov	r3, r2
    2c46:	009b      	lsls	r3, r3, #2
    2c48:	4413      	add	r3, r2
    2c4a:	009b      	lsls	r3, r3, #2
    2c4c:	4403      	add	r3, r0
    2c4e:	330c      	adds	r3, #12
    2c50:	681b      	ldr	r3, [r3, #0]
    2c52:	4419      	add	r1, r3
    2c54:	481d      	ldr	r0, [pc, #116]	; (2ccc <move_balls+0x1fa>)
    2c56:	687a      	ldr	r2, [r7, #4]
    2c58:	4613      	mov	r3, r2
    2c5a:	009b      	lsls	r3, r3, #2
    2c5c:	4413      	add	r3, r2
    2c5e:	009b      	lsls	r3, r3, #2
    2c60:	4403      	add	r3, r0
    2c62:	3304      	adds	r3, #4
    2c64:	6019      	str	r1, [r3, #0]
	for (i=0;i<BALL_COUNT;i++){
    2c66:	687b      	ldr	r3, [r7, #4]
    2c68:	3301      	adds	r3, #1
    2c6a:	607b      	str	r3, [r7, #4]
    2c6c:	687b      	ldr	r3, [r7, #4]
    2c6e:	2b01      	cmp	r3, #1
    2c70:	f77f af38 	ble.w	2ae4 <move_balls+0x12>
		} 
	}
	// collision between balls
	if (distance(&balls[0],&balls[1])<8){
    2c74:	4916      	ldr	r1, [pc, #88]	; (2cd0 <move_balls+0x1fe>)
    2c76:	4815      	ldr	r0, [pc, #84]	; (2ccc <move_balls+0x1fa>)
    2c78:	f7ff ff0e 	bl	2a98 <distance>
    2c7c:	4603      	mov	r3, r0
    2c7e:	2b07      	cmp	r3, #7
    2c80:	d81f      	bhi.n	2cc2 <move_balls+0x1f0>
		if (balls[0].dx!=balls[1].dx){
    2c82:	4b12      	ldr	r3, [pc, #72]	; (2ccc <move_balls+0x1fa>)
    2c84:	689a      	ldr	r2, [r3, #8]
    2c86:	4b11      	ldr	r3, [pc, #68]	; (2ccc <move_balls+0x1fa>)
    2c88:	69db      	ldr	r3, [r3, #28]
    2c8a:	429a      	cmp	r2, r3
    2c8c:	d009      	beq.n	2ca2 <move_balls+0x1d0>
			i=balls[0].dx;
    2c8e:	4b0f      	ldr	r3, [pc, #60]	; (2ccc <move_balls+0x1fa>)
    2c90:	689b      	ldr	r3, [r3, #8]
    2c92:	607b      	str	r3, [r7, #4]
			balls[0].dx=balls[1].dx;
    2c94:	4b0d      	ldr	r3, [pc, #52]	; (2ccc <move_balls+0x1fa>)
    2c96:	69db      	ldr	r3, [r3, #28]
    2c98:	4a0c      	ldr	r2, [pc, #48]	; (2ccc <move_balls+0x1fa>)
    2c9a:	6093      	str	r3, [r2, #8]
			balls[1].dx=i;
    2c9c:	4a0b      	ldr	r2, [pc, #44]	; (2ccc <move_balls+0x1fa>)
    2c9e:	687b      	ldr	r3, [r7, #4]
    2ca0:	61d3      	str	r3, [r2, #28]
		}
		if (balls[0].dy!=balls[1].dy){
    2ca2:	4b0a      	ldr	r3, [pc, #40]	; (2ccc <move_balls+0x1fa>)
    2ca4:	68da      	ldr	r2, [r3, #12]
    2ca6:	4b09      	ldr	r3, [pc, #36]	; (2ccc <move_balls+0x1fa>)
    2ca8:	6a1b      	ldr	r3, [r3, #32]
    2caa:	429a      	cmp	r2, r3
    2cac:	d009      	beq.n	2cc2 <move_balls+0x1f0>
			i=balls[0].dy;
    2cae:	4b07      	ldr	r3, [pc, #28]	; (2ccc <move_balls+0x1fa>)
    2cb0:	68db      	ldr	r3, [r3, #12]
    2cb2:	607b      	str	r3, [r7, #4]
			balls[0].dy=balls[1].dy;
    2cb4:	4b05      	ldr	r3, [pc, #20]	; (2ccc <move_balls+0x1fa>)
    2cb6:	6a1b      	ldr	r3, [r3, #32]
    2cb8:	4a04      	ldr	r2, [pc, #16]	; (2ccc <move_balls+0x1fa>)
    2cba:	60d3      	str	r3, [r2, #12]
			balls[1].dy=i;
    2cbc:	4a03      	ldr	r2, [pc, #12]	; (2ccc <move_balls+0x1fa>)
    2cbe:	687b      	ldr	r3, [r7, #4]
    2cc0:	6213      	str	r3, [r2, #32]
		}
	}
}
    2cc2:	bf00      	nop
    2cc4:	3708      	adds	r7, #8
    2cc6:	46bd      	mov	sp, r7
    2cc8:	bd80      	pop	{r7, pc}
    2cca:	bf00      	nop
    2ccc:	200026b8 	.word	0x200026b8
    2cd0:	200026cc 	.word	0x200026cc

00002cd4 <init_balls>:


void init_balls(){
    2cd4:	b580      	push	{r7, lr}
    2cd6:	b082      	sub	sp, #8
    2cd8:	af00      	add	r7, sp, #0
	int i;
	vmode_params_t *vparams=get_video_params();
    2cda:	f002 fd17 	bl	570c <get_video_params>
    2cde:	6038      	str	r0, [r7, #0]
	srand(ntsc_ticks);
    2ce0:	4b33      	ldr	r3, [pc, #204]	; (2db0 <init_balls+0xdc>)
    2ce2:	681b      	ldr	r3, [r3, #0]
    2ce4:	4618      	mov	r0, r3
    2ce6:	f7fd fbcb 	bl	480 <srand>
	for (i=0;i<BALL_COUNT;i++){
    2cea:	2300      	movs	r3, #0
    2cec:	607b      	str	r3, [r7, #4]
    2cee:	e057      	b.n	2da0 <init_balls+0xcc>
		balls[i].x=rand()%vparams->hres;
    2cf0:	f7fd fbd4 	bl	49c <rand>
    2cf4:	4603      	mov	r3, r0
    2cf6:	683a      	ldr	r2, [r7, #0]
    2cf8:	8992      	ldrh	r2, [r2, #12]
    2cfa:	fb93 f1f2 	sdiv	r1, r3, r2
    2cfe:	fb02 f201 	mul.w	r2, r2, r1
    2d02:	1a99      	subs	r1, r3, r2
    2d04:	482b      	ldr	r0, [pc, #172]	; (2db4 <init_balls+0xe0>)
    2d06:	687a      	ldr	r2, [r7, #4]
    2d08:	4613      	mov	r3, r2
    2d0a:	009b      	lsls	r3, r3, #2
    2d0c:	4413      	add	r3, r2
    2d0e:	009b      	lsls	r3, r3, #2
    2d10:	4403      	add	r3, r0
    2d12:	6019      	str	r1, [r3, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    2d14:	f7fd fbc2 	bl	49c <rand>
    2d18:	4602      	mov	r2, r0
    2d1a:	683b      	ldr	r3, [r7, #0]
    2d1c:	89db      	ldrh	r3, [r3, #14]
    2d1e:	3b10      	subs	r3, #16
    2d20:	fb92 f1f3 	sdiv	r1, r2, r3
    2d24:	fb03 f301 	mul.w	r3, r3, r1
    2d28:	1ad3      	subs	r3, r2, r3
    2d2a:	f103 0110 	add.w	r1, r3, #16
    2d2e:	4821      	ldr	r0, [pc, #132]	; (2db4 <init_balls+0xe0>)
    2d30:	687a      	ldr	r2, [r7, #4]
    2d32:	4613      	mov	r3, r2
    2d34:	009b      	lsls	r3, r3, #2
    2d36:	4413      	add	r3, r2
    2d38:	009b      	lsls	r3, r3, #2
    2d3a:	4403      	add	r3, r0
    2d3c:	3304      	adds	r3, #4
    2d3e:	6019      	str	r1, [r3, #0]
		balls[i].dx=1;
    2d40:	491c      	ldr	r1, [pc, #112]	; (2db4 <init_balls+0xe0>)
    2d42:	687a      	ldr	r2, [r7, #4]
    2d44:	4613      	mov	r3, r2
    2d46:	009b      	lsls	r3, r3, #2
    2d48:	4413      	add	r3, r2
    2d4a:	009b      	lsls	r3, r3, #2
    2d4c:	440b      	add	r3, r1
    2d4e:	3308      	adds	r3, #8
    2d50:	2201      	movs	r2, #1
    2d52:	601a      	str	r2, [r3, #0]
		balls[i].dy=1;
    2d54:	4917      	ldr	r1, [pc, #92]	; (2db4 <init_balls+0xe0>)
    2d56:	687a      	ldr	r2, [r7, #4]
    2d58:	4613      	mov	r3, r2
    2d5a:	009b      	lsls	r3, r3, #2
    2d5c:	4413      	add	r3, r2
    2d5e:	009b      	lsls	r3, r3, #2
    2d60:	440b      	add	r3, r1
    2d62:	330c      	adds	r3, #12
    2d64:	2201      	movs	r2, #1
    2d66:	601a      	str	r2, [r3, #0]
		if (vparams->mode==VM_BPCHIP){
    2d68:	683b      	ldr	r3, [r7, #0]
    2d6a:	781b      	ldrb	r3, [r3, #0]
    2d6c:	2b00      	cmp	r3, #0
    2d6e:	d10a      	bne.n	2d86 <init_balls+0xb2>
			balls[i].ball_sprite=ball8x8;
    2d70:	4910      	ldr	r1, [pc, #64]	; (2db4 <init_balls+0xe0>)
    2d72:	687a      	ldr	r2, [r7, #4]
    2d74:	4613      	mov	r3, r2
    2d76:	009b      	lsls	r3, r3, #2
    2d78:	4413      	add	r3, r2
    2d7a:	009b      	lsls	r3, r3, #2
    2d7c:	440b      	add	r3, r1
    2d7e:	3310      	adds	r3, #16
    2d80:	4a0d      	ldr	r2, [pc, #52]	; (2db8 <init_balls+0xe4>)
    2d82:	601a      	str	r2, [r3, #0]
    2d84:	e009      	b.n	2d9a <init_balls+0xc6>
		}else{
			balls[i].ball_sprite=ball8x8_1bpp;
    2d86:	490b      	ldr	r1, [pc, #44]	; (2db4 <init_balls+0xe0>)
    2d88:	687a      	ldr	r2, [r7, #4]
    2d8a:	4613      	mov	r3, r2
    2d8c:	009b      	lsls	r3, r3, #2
    2d8e:	4413      	add	r3, r2
    2d90:	009b      	lsls	r3, r3, #2
    2d92:	440b      	add	r3, r1
    2d94:	3310      	adds	r3, #16
    2d96:	4a09      	ldr	r2, [pc, #36]	; (2dbc <init_balls+0xe8>)
    2d98:	601a      	str	r2, [r3, #0]
	for (i=0;i<BALL_COUNT;i++){
    2d9a:	687b      	ldr	r3, [r7, #4]
    2d9c:	3301      	adds	r3, #1
    2d9e:	607b      	str	r3, [r7, #4]
    2da0:	687b      	ldr	r3, [r7, #4]
    2da2:	2b01      	cmp	r3, #1
    2da4:	dda4      	ble.n	2cf0 <init_balls+0x1c>
		}
	}
}
    2da6:	bf00      	nop
    2da8:	3708      	adds	r7, #8
    2daa:	46bd      	mov	sp, r7
    2dac:	bd80      	pop	{r7, pc}
    2dae:	bf00      	nop
    2db0:	20004e44 	.word	0x20004e44
    2db4:	200026b8 	.word	0x200026b8
    2db8:	00006050 	.word	0x00006050
    2dbc:	00006070 	.word	0x00006070

00002dc0 <color_bars>:

static void color_bars(){
    2dc0:	b580      	push	{r7, lr}
    2dc2:	b084      	sub	sp, #16
    2dc4:	af00      	add	r7, sp, #0
	int x,y;
	uint8_t c=0;
    2dc6:	2300      	movs	r3, #0
    2dc8:	71fb      	strb	r3, [r7, #7]
	vmode_params_t* vparams=get_video_params();
    2dca:	f002 fc9f 	bl	570c <get_video_params>
    2dce:	6038      	str	r0, [r7, #0]
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    2dd0:	683b      	ldr	r3, [r7, #0]
    2dd2:	89db      	ldrh	r3, [r3, #14]
    2dd4:	089b      	lsrs	r3, r3, #2
    2dd6:	b29b      	uxth	r3, r3
    2dd8:	461a      	mov	r2, r3
    2dda:	4613      	mov	r3, r2
    2ddc:	005b      	lsls	r3, r3, #1
    2dde:	4413      	add	r3, r2
    2de0:	60bb      	str	r3, [r7, #8]
    2de2:	e01b      	b.n	2e1c <color_bars+0x5c>
		c=0x10;
    2de4:	2310      	movs	r3, #16
    2de6:	71fb      	strb	r3, [r7, #7]
		for (x=0;x<128;x++){
    2de8:	2300      	movs	r3, #0
    2dea:	60fb      	str	r3, [r7, #12]
    2dec:	e010      	b.n	2e10 <color_bars+0x50>
			if (x%8==0){
    2dee:	68fb      	ldr	r3, [r7, #12]
    2df0:	f003 0307 	and.w	r3, r3, #7
    2df4:	2b00      	cmp	r3, #0
    2df6:	d102      	bne.n	2dfe <color_bars+0x3e>
				c--;
    2df8:	79fb      	ldrb	r3, [r7, #7]
    2dfa:	3b01      	subs	r3, #1
    2dfc:	71fb      	strb	r3, [r7, #7]
			}
			gfx_plot(x,y,c);
    2dfe:	79fb      	ldrb	r3, [r7, #7]
    2e00:	461a      	mov	r2, r3
    2e02:	68b9      	ldr	r1, [r7, #8]
    2e04:	68f8      	ldr	r0, [r7, #12]
    2e06:	f7ff fb49 	bl	249c <gfx_plot>
		for (x=0;x<128;x++){
    2e0a:	68fb      	ldr	r3, [r7, #12]
    2e0c:	3301      	adds	r3, #1
    2e0e:	60fb      	str	r3, [r7, #12]
    2e10:	68fb      	ldr	r3, [r7, #12]
    2e12:	2b7f      	cmp	r3, #127	; 0x7f
    2e14:	ddeb      	ble.n	2dee <color_bars+0x2e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    2e16:	68bb      	ldr	r3, [r7, #8]
    2e18:	3301      	adds	r3, #1
    2e1a:	60bb      	str	r3, [r7, #8]
    2e1c:	683b      	ldr	r3, [r7, #0]
    2e1e:	89db      	ldrh	r3, [r3, #14]
    2e20:	461a      	mov	r2, r3
    2e22:	68bb      	ldr	r3, [r7, #8]
    2e24:	429a      	cmp	r2, r3
    2e26:	dcdd      	bgt.n	2de4 <color_bars+0x24>
		}
	}
		

}
    2e28:	bf00      	nop
    2e2a:	3710      	adds	r7, #16
    2e2c:	46bd      	mov	sp, r7
    2e2e:	bd80      	pop	{r7, pc}

00002e30 <vertical_bars>:

static void vertical_bars(){
    2e30:	b580      	push	{r7, lr}
    2e32:	b082      	sub	sp, #8
    2e34:	af00      	add	r7, sp, #0
	int y;
	vmode_params_t* vparams=get_video_params();
    2e36:	f002 fc69 	bl	570c <get_video_params>
    2e3a:	6038      	str	r0, [r7, #0]
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    2e3c:	2310      	movs	r3, #16
    2e3e:	607b      	str	r3, [r7, #4]
    2e40:	e00f      	b.n	2e62 <vertical_bars+0x32>
		gfx_plot(0,y,15);
    2e42:	220f      	movs	r2, #15
    2e44:	6879      	ldr	r1, [r7, #4]
    2e46:	2000      	movs	r0, #0
    2e48:	f7ff fb28 	bl	249c <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    2e4c:	683b      	ldr	r3, [r7, #0]
    2e4e:	899b      	ldrh	r3, [r3, #12]
    2e50:	3b01      	subs	r3, #1
    2e52:	220f      	movs	r2, #15
    2e54:	6879      	ldr	r1, [r7, #4]
    2e56:	4618      	mov	r0, r3
    2e58:	f7ff fb20 	bl	249c <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    2e5c:	687b      	ldr	r3, [r7, #4]
    2e5e:	3301      	adds	r3, #1
    2e60:	607b      	str	r3, [r7, #4]
    2e62:	683b      	ldr	r3, [r7, #0]
    2e64:	89db      	ldrh	r3, [r3, #14]
    2e66:	461a      	mov	r2, r3
    2e68:	687b      	ldr	r3, [r7, #4]
    2e6a:	429a      	cmp	r2, r3
    2e6c:	dce9      	bgt.n	2e42 <vertical_bars+0x12>
	}
}
    2e6e:	bf00      	nop
    2e70:	3708      	adds	r7, #8
    2e72:	46bd      	mov	sp, r7
    2e74:	bd80      	pop	{r7, pc}

00002e76 <horiz_bars>:

static void horiz_bars(){
    2e76:	b580      	push	{r7, lr}
    2e78:	b082      	sub	sp, #8
    2e7a:	af00      	add	r7, sp, #0
	int x;
	vmode_params_t* vparams=get_video_params();
    2e7c:	f002 fc46 	bl	570c <get_video_params>
    2e80:	6038      	str	r0, [r7, #0]
	for (x=0;x<vparams->hres;x++){
    2e82:	2300      	movs	r3, #0
    2e84:	607b      	str	r3, [r7, #4]
    2e86:	e00f      	b.n	2ea8 <horiz_bars+0x32>
		gfx_plot(x,0,15);
    2e88:	220f      	movs	r2, #15
    2e8a:	2100      	movs	r1, #0
    2e8c:	6878      	ldr	r0, [r7, #4]
    2e8e:	f7ff fb05 	bl	249c <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    2e92:	683b      	ldr	r3, [r7, #0]
    2e94:	89db      	ldrh	r3, [r3, #14]
    2e96:	3b01      	subs	r3, #1
    2e98:	220f      	movs	r2, #15
    2e9a:	4619      	mov	r1, r3
    2e9c:	6878      	ldr	r0, [r7, #4]
    2e9e:	f7ff fafd 	bl	249c <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    2ea2:	687b      	ldr	r3, [r7, #4]
    2ea4:	3301      	adds	r3, #1
    2ea6:	607b      	str	r3, [r7, #4]
    2ea8:	683b      	ldr	r3, [r7, #0]
    2eaa:	899b      	ldrh	r3, [r3, #12]
    2eac:	461a      	mov	r2, r3
    2eae:	687b      	ldr	r3, [r7, #4]
    2eb0:	429a      	cmp	r2, r3
    2eb2:	dce9      	bgt.n	2e88 <horiz_bars+0x12>
	}
}
    2eb4:	bf00      	nop
    2eb6:	3708      	adds	r7, #8
    2eb8:	46bd      	mov	sp, r7
    2eba:	bd80      	pop	{r7, pc}

00002ebc <video_test>:

static void video_test(){
    2ebc:	b580      	push	{r7, lr}
    2ebe:	b082      	sub	sp, #8
    2ec0:	af00      	add	r7, sp, #0
	int x,y,sx,sy,dx,dy;
	uint8_t c,p=0;
    2ec2:	2300      	movs	r3, #0
    2ec4:	71fb      	strb	r3, [r7, #7]

	set_video_mode(p);
    2ec6:	79fb      	ldrb	r3, [r7, #7]
    2ec8:	4618      	mov	r0, r3
    2eca:	f002 fb87 	bl	55dc <set_video_mode>
	color_bars();
    2ece:	f7ff ff77 	bl	2dc0 <color_bars>
	vertical_bars();
    2ed2:	f7ff ffad 	bl	2e30 <vertical_bars>
	horiz_bars();
    2ed6:	f7ff ffce 	bl	2e76 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    2eda:	4b2d      	ldr	r3, [pc, #180]	; (2f90 <video_test+0xd4>)
    2edc:	2110      	movs	r1, #16
    2ede:	4618      	mov	r0, r3
    2ee0:	f001 ff94 	bl	4e0c <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    2ee4:	4b2b      	ldr	r3, [pc, #172]	; (2f94 <video_test+0xd8>)
    2ee6:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    2eea:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    2eee:	210a      	movs	r1, #10
    2ef0:	4618      	mov	r0, r3
    2ef2:	f001 ff8b 	bl	4e0c <print_int>
	init_balls();
    2ef6:	f7ff feed 	bl	2cd4 <init_balls>
	p=0;
    2efa:	2300      	movs	r3, #0
    2efc:	71fb      	strb	r3, [r7, #7]
	while(1){
		draw_balls();
    2efe:	f7ff fd73 	bl	29e8 <draw_balls>
		//game_pause(1);
		draw_balls();
    2f02:	f7ff fd71 	bl	29e8 <draw_balls>
		move_balls();
    2f06:	f7ff fde4 	bl	2ad2 <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    2f0a:	2010      	movs	r0, #16
    2f0c:	f7fe fe52 	bl	1bb4 <btn_query_down>
    2f10:	4603      	mov	r3, r0
    2f12:	2b00      	cmp	r3, #0
    2f14:	d02a      	beq.n	2f6c <video_test+0xb0>
			p=++p%3;
    2f16:	79fb      	ldrb	r3, [r7, #7]
    2f18:	3301      	adds	r3, #1
    2f1a:	71fb      	strb	r3, [r7, #7]
    2f1c:	79fa      	ldrb	r2, [r7, #7]
    2f1e:	4b1e      	ldr	r3, [pc, #120]	; (2f98 <video_test+0xdc>)
    2f20:	fba3 1302 	umull	r1, r3, r3, r2
    2f24:	0859      	lsrs	r1, r3, #1
    2f26:	460b      	mov	r3, r1
    2f28:	005b      	lsls	r3, r3, #1
    2f2a:	440b      	add	r3, r1
    2f2c:	1ad3      	subs	r3, r2, r3
    2f2e:	71fb      	strb	r3, [r7, #7]
			set_video_mode(p);
    2f30:	79fb      	ldrb	r3, [r7, #7]
    2f32:	4618      	mov	r0, r3
    2f34:	f002 fb52 	bl	55dc <set_video_mode>
			switch(p){
    2f38:	79fb      	ldrb	r3, [r7, #7]
    2f3a:	2b00      	cmp	r3, #0
    2f3c:	d002      	beq.n	2f44 <video_test+0x88>
    2f3e:	2b01      	cmp	r3, #1
    2f40:	d006      	beq.n	2f50 <video_test+0x94>
    2f42:	e009      	b.n	2f58 <video_test+0x9c>
			case VM_BPCHIP:
				print("BPCHIP mode\n180x112 16 colors");
    2f44:	4815      	ldr	r0, [pc, #84]	; (2f9c <video_test+0xe0>)
    2f46:	f001 ff31 	bl	4dac <print>
				color_bars();
    2f4a:	f7ff ff39 	bl	2dc0 <color_bars>
				break;
    2f4e:	e003      	b.n	2f58 <video_test+0x9c>
			case VM_SCHIP:
				print("SCHIP mode\n128x64 mono");
    2f50:	4813      	ldr	r0, [pc, #76]	; (2fa0 <video_test+0xe4>)
    2f52:	f001 ff2b 	bl	4dac <print>
				break;
    2f56:	bf00      	nop
//			case VM_CHIP8:
//				print("CHIP8 mode\n64x32 mono");
//				break;
			}
			vertical_bars();
    2f58:	f7ff ff6a 	bl	2e30 <vertical_bars>
			horiz_bars();
    2f5c:	f7ff ff8b 	bl	2e76 <horiz_bars>
			init_balls();
    2f60:	f7ff feb8 	bl	2cd4 <init_balls>
			btn_wait_up(KEY_RIGHT);
    2f64:	2010      	movs	r0, #16
    2f66:	f7fe fe69 	bl	1c3c <btn_wait_up>
    2f6a:	e7c8      	b.n	2efe <video_test+0x42>
		}else if (btn_query_down(KEY_B)){
    2f6c:	2020      	movs	r0, #32
    2f6e:	f7fe fe21 	bl	1bb4 <btn_query_down>
    2f72:	4603      	mov	r3, r0
    2f74:	2b00      	cmp	r3, #0
    2f76:	d0c2      	beq.n	2efe <video_test+0x42>
			btn_wait_up(KEY_B);
    2f78:	2020      	movs	r0, #32
    2f7a:	f7fe fe5f 	bl	1c3c <btn_wait_up>
			break;
    2f7e:	bf00      	nop
		}
	}//while(1)
	set_video_mode(VM_BPCHIP);
    2f80:	2000      	movs	r0, #0
    2f82:	f002 fb2b 	bl	55dc <set_video_mode>
}
    2f86:	bf00      	nop
    2f88:	3708      	adds	r7, #8
    2f8a:	46bd      	mov	sp, r7
    2f8c:	bd80      	pop	{r7, pc}
    2f8e:	bf00      	nop
    2f90:	00006400 	.word	0x00006400
    2f94:	20004e50 	.word	0x20004e50
    2f98:	aaaaaaab 	.word	0xaaaaaaab
    2f9c:	00006078 	.word	0x00006078
    2fa0:	00006098 	.word	0x00006098

00002fa4 <sound_test>:

static void sound_test(){
    2fa4:	b580      	push	{r7, lr}
    2fa6:	b082      	sub	sp, #8
    2fa8:	af00      	add	r7, sp, #0
	uint8_t key=255;
    2faa:	23ff      	movs	r3, #255	; 0xff
    2fac:	71fb      	strb	r3, [r7, #7]
	uint16_t freq;
	gfx_cls();
    2fae:	f7ff fac3 	bl	2538 <gfx_cls>
	print("press buttons\n");
    2fb2:	4829      	ldr	r0, [pc, #164]	; (3058 <sound_test+0xb4>)
    2fb4:	f001 fefa 	bl	4dac <print>
	while (key!=KEY_B){
    2fb8:	e040      	b.n	303c <sound_test+0x98>
		key=btn_wait_any();
    2fba:	f7fe fe67 	bl	1c8c <btn_wait_any>
    2fbe:	4603      	mov	r3, r0
    2fc0:	71fb      	strb	r3, [r7, #7]
		switch(key){
    2fc2:	79fb      	ldrb	r3, [r7, #7]
    2fc4:	2b08      	cmp	r3, #8
    2fc6:	d01c      	beq.n	3002 <sound_test+0x5e>
    2fc8:	2b08      	cmp	r3, #8
    2fca:	dc06      	bgt.n	2fda <sound_test+0x36>
    2fcc:	2b02      	cmp	r3, #2
    2fce:	d010      	beq.n	2ff2 <sound_test+0x4e>
    2fd0:	2b04      	cmp	r3, #4
    2fd2:	d012      	beq.n	2ffa <sound_test+0x56>
    2fd4:	2b01      	cmp	r3, #1
    2fd6:	d01c      	beq.n	3012 <sound_test+0x6e>
    2fd8:	e02b      	b.n	3032 <sound_test+0x8e>
    2fda:	2b20      	cmp	r3, #32
    2fdc:	d01d      	beq.n	301a <sound_test+0x76>
    2fde:	2b20      	cmp	r3, #32
    2fe0:	dc02      	bgt.n	2fe8 <sound_test+0x44>
    2fe2:	2b10      	cmp	r3, #16
    2fe4:	d011      	beq.n	300a <sound_test+0x66>
    2fe6:	e024      	b.n	3032 <sound_test+0x8e>
    2fe8:	2b40      	cmp	r3, #64	; 0x40
    2fea:	d01a      	beq.n	3022 <sound_test+0x7e>
    2fec:	2b80      	cmp	r3, #128	; 0x80
    2fee:	d01c      	beq.n	302a <sound_test+0x86>
    2ff0:	e01f      	b.n	3032 <sound_test+0x8e>
		case KEY_UP:
			freq=440;
    2ff2:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2ff6:	80bb      	strh	r3, [r7, #4]
			break;
    2ff8:	e01b      	b.n	3032 <sound_test+0x8e>
		case KEY_DOWN:
			freq=466;
    2ffa:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2ffe:	80bb      	strh	r3, [r7, #4]
			break;
    3000:	e017      	b.n	3032 <sound_test+0x8e>
		case KEY_LEFT:
			freq=493;
    3002:	f240 13ed 	movw	r3, #493	; 0x1ed
    3006:	80bb      	strh	r3, [r7, #4]
			break;
    3008:	e013      	b.n	3032 <sound_test+0x8e>
		case KEY_RIGHT:
			freq=523;
    300a:	f240 230b 	movw	r3, #523	; 0x20b
    300e:	80bb      	strh	r3, [r7, #4]
			break;
    3010:	e00f      	b.n	3032 <sound_test+0x8e>
		case KEY_A:
			freq=554;
    3012:	f240 232a 	movw	r3, #554	; 0x22a
    3016:	80bb      	strh	r3, [r7, #4]
			break;
    3018:	e00b      	b.n	3032 <sound_test+0x8e>
		case KEY_B:
			freq=587;
    301a:	f240 234b 	movw	r3, #587	; 0x24b
    301e:	80bb      	strh	r3, [r7, #4]
			break;
    3020:	e007      	b.n	3032 <sound_test+0x8e>
		case KEY_C:
			freq=622;
    3022:	f240 236e 	movw	r3, #622	; 0x26e
    3026:	80bb      	strh	r3, [r7, #4]
			break;
    3028:	e003      	b.n	3032 <sound_test+0x8e>
		case KEY_D:
			freq=659;
    302a:	f240 2393 	movw	r3, #659	; 0x293
    302e:	80bb      	strh	r3, [r7, #4]
			break;
    3030:	bf00      	nop
		}//swtich
		tone(freq,3);
    3032:	88bb      	ldrh	r3, [r7, #4]
    3034:	2103      	movs	r1, #3
    3036:	4618      	mov	r0, r3
    3038:	f001 fa42 	bl	44c0 <tone>
	while (key!=KEY_B){
    303c:	79fb      	ldrb	r3, [r7, #7]
    303e:	2b20      	cmp	r3, #32
    3040:	d1bb      	bne.n	2fba <sound_test+0x16>
		//btn_wait_up(key);
	}
	btn_wait_up(key);
    3042:	79fb      	ldrb	r3, [r7, #7]
    3044:	4618      	mov	r0, r3
    3046:	f7fe fdf9 	bl	1c3c <btn_wait_up>
	sound_sampler(60);
    304a:	203c      	movs	r0, #60	; 0x3c
    304c:	f001 faaa 	bl	45a4 <sound_sampler>
}
    3050:	bf00      	nop
    3052:	3708      	adds	r7, #8
    3054:	46bd      	mov	sp, r7
    3056:	bd80      	pop	{r7, pc}
    3058:	000060b0 	.word	0x000060b0

0000305c <display_keymap>:

static void display_keymap(uint8_t*map){
    305c:	b580      	push	{r7, lr}
    305e:	b084      	sub	sp, #16
    3060:	af00      	add	r7, sp, #0
    3062:	6078      	str	r0, [r7, #4]
	int i;
	set_cursor(0,CHAR_HEIGHT);
    3064:	2108      	movs	r1, #8
    3066:	2000      	movs	r0, #0
    3068:	f001 fe74 	bl	4d54 <set_cursor>
	for (i=0;i<8;i++) print_int(map[i],16);
    306c:	2300      	movs	r3, #0
    306e:	60fb      	str	r3, [r7, #12]
    3070:	e00a      	b.n	3088 <display_keymap+0x2c>
    3072:	68fb      	ldr	r3, [r7, #12]
    3074:	687a      	ldr	r2, [r7, #4]
    3076:	4413      	add	r3, r2
    3078:	781b      	ldrb	r3, [r3, #0]
    307a:	2110      	movs	r1, #16
    307c:	4618      	mov	r0, r3
    307e:	f001 fec5 	bl	4e0c <print_int>
    3082:	68fb      	ldr	r3, [r7, #12]
    3084:	3301      	adds	r3, #1
    3086:	60fb      	str	r3, [r7, #12]
    3088:	68fb      	ldr	r3, [r7, #12]
    308a:	2b07      	cmp	r3, #7
    308c:	ddf1      	ble.n	3072 <display_keymap+0x16>
}
    308e:	bf00      	nop
    3090:	3710      	adds	r7, #16
    3092:	46bd      	mov	sp, r7
    3094:	bd80      	pop	{r7, pc}

00003096 <buttons_map>:

static void buttons_map(){
    3096:	b580      	push	{r7, lr}
    3098:	b086      	sub	sp, #24
    309a:	af00      	add	r7, sp, #0
	int i;
	uint8_t btn=255,key;
    309c:	23ff      	movs	r3, #255	; 0xff
    309e:	74fb      	strb	r3, [r7, #19]
	uint8_t* keymap=get_keymap(),newmap[8];
    30a0:	f7fe fe3c 	bl	1d1c <get_keymap>
    30a4:	60f8      	str	r0, [r7, #12]
	gfx_cls();
    30a6:	f7ff fa47 	bl	2538 <gfx_cls>
	println("buttons map table");
    30aa:	487d      	ldr	r0, [pc, #500]	; (32a0 <buttons_map+0x20a>)
    30ac:	f001 fea1 	bl	4df2 <println>
	for (i=0;i<8;i++){
    30b0:	2300      	movs	r3, #0
    30b2:	617b      	str	r3, [r7, #20]
    30b4:	e00b      	b.n	30ce <buttons_map+0x38>
		newmap[i]=keymap[i];
    30b6:	697b      	ldr	r3, [r7, #20]
    30b8:	68fa      	ldr	r2, [r7, #12]
    30ba:	4413      	add	r3, r2
    30bc:	7819      	ldrb	r1, [r3, #0]
    30be:	1d3a      	adds	r2, r7, #4
    30c0:	697b      	ldr	r3, [r7, #20]
    30c2:	4413      	add	r3, r2
    30c4:	460a      	mov	r2, r1
    30c6:	701a      	strb	r2, [r3, #0]
	for (i=0;i<8;i++){
    30c8:	697b      	ldr	r3, [r7, #20]
    30ca:	3301      	adds	r3, #1
    30cc:	617b      	str	r3, [r7, #20]
    30ce:	697b      	ldr	r3, [r7, #20]
    30d0:	2b07      	cmp	r3, #7
    30d2:	ddf0      	ble.n	30b6 <buttons_map+0x20>
	}
	display_keymap(newmap);
    30d4:	1d3b      	adds	r3, r7, #4
    30d6:	4618      	mov	r0, r3
    30d8:	f7ff ffc0 	bl	305c <display_keymap>
	set_cursor(0,CHAR_HEIGHT);
    30dc:	2108      	movs	r1, #8
    30de:	2000      	movs	r0, #0
    30e0:	f001 fe38 	bl	4d54 <set_cursor>
	show_cursor(1);
    30e4:	2001      	movs	r0, #1
    30e6:	f001 ffcb 	bl	5080 <show_cursor>
	i=0;
    30ea:	2300      	movs	r3, #0
    30ec:	617b      	str	r3, [r7, #20]
	key=newmap[i];
    30ee:	1d3a      	adds	r2, r7, #4
    30f0:	697b      	ldr	r3, [r7, #20]
    30f2:	4413      	add	r3, r2
    30f4:	781b      	ldrb	r3, [r3, #0]
    30f6:	74bb      	strb	r3, [r7, #18]
	while(btn!=KEY_B){
    30f8:	e0b8      	b.n	326c <buttons_map+0x1d6>
		btn=btn_wait_any();
    30fa:	f7fe fdc7 	bl	1c8c <btn_wait_any>
    30fe:	4603      	mov	r3, r0
    3100:	74fb      	strb	r3, [r7, #19]
		switch(btn){
    3102:	7cfb      	ldrb	r3, [r7, #19]
    3104:	2b08      	cmp	r3, #8
    3106:	d00b      	beq.n	3120 <buttons_map+0x8a>
    3108:	2b08      	cmp	r3, #8
    310a:	dc04      	bgt.n	3116 <buttons_map+0x80>
    310c:	2b02      	cmp	r3, #2
    310e:	d042      	beq.n	3196 <buttons_map+0x100>
    3110:	2b04      	cmp	r3, #4
    3112:	d05f      	beq.n	31d4 <buttons_map+0x13e>
    3114:	e0a6      	b.n	3264 <buttons_map+0x1ce>
    3116:	2b10      	cmp	r3, #16
    3118:	d020      	beq.n	315c <buttons_map+0xc6>
    311a:	2b40      	cmp	r3, #64	; 0x40
    311c:	d079      	beq.n	3212 <buttons_map+0x17c>
    311e:	e0a1      	b.n	3264 <buttons_map+0x1ce>
		case KEY_LEFT:
			if (i){
    3120:	697b      	ldr	r3, [r7, #20]
    3122:	2b00      	cmp	r3, #0
    3124:	f000 8097 	beq.w	3256 <buttons_map+0x1c0>
				show_cursor(0);
    3128:	2000      	movs	r0, #0
    312a:	f001 ffa9 	bl	5080 <show_cursor>
				i--;
    312e:	697b      	ldr	r3, [r7, #20]
    3130:	3b01      	subs	r3, #1
    3132:	617b      	str	r3, [r7, #20]
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
    3134:	697b      	ldr	r3, [r7, #20]
    3136:	b2db      	uxtb	r3, r3
    3138:	461a      	mov	r2, r3
    313a:	00d2      	lsls	r2, r2, #3
    313c:	4413      	add	r3, r2
    313e:	005b      	lsls	r3, r3, #1
    3140:	b2db      	uxtb	r3, r3
    3142:	2108      	movs	r1, #8
    3144:	4618      	mov	r0, r3
    3146:	f001 fe05 	bl	4d54 <set_cursor>
				show_cursor(1);
    314a:	2001      	movs	r0, #1
    314c:	f001 ff98 	bl	5080 <show_cursor>
				key=newmap[i];
    3150:	1d3a      	adds	r2, r7, #4
    3152:	697b      	ldr	r3, [r7, #20]
    3154:	4413      	add	r3, r2
    3156:	781b      	ldrb	r3, [r3, #0]
    3158:	74bb      	strb	r3, [r7, #18]
			}
			break;
    315a:	e07c      	b.n	3256 <buttons_map+0x1c0>
		case KEY_RIGHT:
			if (i<7){
    315c:	697b      	ldr	r3, [r7, #20]
    315e:	2b06      	cmp	r3, #6
    3160:	dc7b      	bgt.n	325a <buttons_map+0x1c4>
				show_cursor(0);
    3162:	2000      	movs	r0, #0
    3164:	f001 ff8c 	bl	5080 <show_cursor>
				i++;
    3168:	697b      	ldr	r3, [r7, #20]
    316a:	3301      	adds	r3, #1
    316c:	617b      	str	r3, [r7, #20]
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
    316e:	697b      	ldr	r3, [r7, #20]
    3170:	b2db      	uxtb	r3, r3
    3172:	461a      	mov	r2, r3
    3174:	00d2      	lsls	r2, r2, #3
    3176:	4413      	add	r3, r2
    3178:	005b      	lsls	r3, r3, #1
    317a:	b2db      	uxtb	r3, r3
    317c:	2108      	movs	r1, #8
    317e:	4618      	mov	r0, r3
    3180:	f001 fde8 	bl	4d54 <set_cursor>
				show_cursor(1);
    3184:	2001      	movs	r0, #1
    3186:	f001 ff7b 	bl	5080 <show_cursor>
				key=newmap[i];
    318a:	1d3a      	adds	r2, r7, #4
    318c:	697b      	ldr	r3, [r7, #20]
    318e:	4413      	add	r3, r2
    3190:	781b      	ldrb	r3, [r3, #0]
    3192:	74bb      	strb	r3, [r7, #18]
			}
			break;
    3194:	e061      	b.n	325a <buttons_map+0x1c4>
		case KEY_UP:
			if (key<15){
    3196:	7cbb      	ldrb	r3, [r7, #18]
    3198:	2b0e      	cmp	r3, #14
    319a:	d860      	bhi.n	325e <buttons_map+0x1c8>
				key++;
    319c:	7cbb      	ldrb	r3, [r7, #18]
    319e:	3301      	adds	r3, #1
    31a0:	74bb      	strb	r3, [r7, #18]
				newmap[i]=key;
    31a2:	1d3a      	adds	r2, r7, #4
    31a4:	697b      	ldr	r3, [r7, #20]
    31a6:	4413      	add	r3, r2
    31a8:	7cba      	ldrb	r2, [r7, #18]
    31aa:	701a      	strb	r2, [r3, #0]
				print_int(key,16);
    31ac:	7cbb      	ldrb	r3, [r7, #18]
    31ae:	2110      	movs	r1, #16
    31b0:	4618      	mov	r0, r3
    31b2:	f001 fe2b 	bl	4e0c <print_int>
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
    31b6:	697b      	ldr	r3, [r7, #20]
    31b8:	b2db      	uxtb	r3, r3
    31ba:	461a      	mov	r2, r3
    31bc:	00d2      	lsls	r2, r2, #3
    31be:	4413      	add	r3, r2
    31c0:	005b      	lsls	r3, r3, #1
    31c2:	b2db      	uxtb	r3, r3
    31c4:	2108      	movs	r1, #8
    31c6:	4618      	mov	r0, r3
    31c8:	f001 fdc4 	bl	4d54 <set_cursor>
				show_cursor(1);
    31cc:	2001      	movs	r0, #1
    31ce:	f001 ff57 	bl	5080 <show_cursor>
			}
			break;
    31d2:	e044      	b.n	325e <buttons_map+0x1c8>
		case KEY_DOWN:
			if (key){
    31d4:	7cbb      	ldrb	r3, [r7, #18]
    31d6:	2b00      	cmp	r3, #0
    31d8:	d043      	beq.n	3262 <buttons_map+0x1cc>
				key--;
    31da:	7cbb      	ldrb	r3, [r7, #18]
    31dc:	3b01      	subs	r3, #1
    31de:	74bb      	strb	r3, [r7, #18]
				newmap[i]=key;
    31e0:	1d3a      	adds	r2, r7, #4
    31e2:	697b      	ldr	r3, [r7, #20]
    31e4:	4413      	add	r3, r2
    31e6:	7cba      	ldrb	r2, [r7, #18]
    31e8:	701a      	strb	r2, [r3, #0]
				print_int(key,16);
    31ea:	7cbb      	ldrb	r3, [r7, #18]
    31ec:	2110      	movs	r1, #16
    31ee:	4618      	mov	r0, r3
    31f0:	f001 fe0c 	bl	4e0c <print_int>
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
    31f4:	697b      	ldr	r3, [r7, #20]
    31f6:	b2db      	uxtb	r3, r3
    31f8:	461a      	mov	r2, r3
    31fa:	00d2      	lsls	r2, r2, #3
    31fc:	4413      	add	r3, r2
    31fe:	005b      	lsls	r3, r3, #1
    3200:	b2db      	uxtb	r3, r3
    3202:	2108      	movs	r1, #8
    3204:	4618      	mov	r0, r3
    3206:	f001 fda5 	bl	4d54 <set_cursor>
				show_cursor(1);
    320a:	2001      	movs	r0, #1
    320c:	f001 ff38 	bl	5080 <show_cursor>
			}
			break;
    3210:	e027      	b.n	3262 <buttons_map+0x1cc>
		case KEY_C:
			for (i=0;i<8;i++)newmap[i]=keymap[i];
    3212:	2300      	movs	r3, #0
    3214:	617b      	str	r3, [r7, #20]
    3216:	e00b      	b.n	3230 <buttons_map+0x19a>
    3218:	697b      	ldr	r3, [r7, #20]
    321a:	68fa      	ldr	r2, [r7, #12]
    321c:	4413      	add	r3, r2
    321e:	7819      	ldrb	r1, [r3, #0]
    3220:	1d3a      	adds	r2, r7, #4
    3222:	697b      	ldr	r3, [r7, #20]
    3224:	4413      	add	r3, r2
    3226:	460a      	mov	r2, r1
    3228:	701a      	strb	r2, [r3, #0]
    322a:	697b      	ldr	r3, [r7, #20]
    322c:	3301      	adds	r3, #1
    322e:	617b      	str	r3, [r7, #20]
    3230:	697b      	ldr	r3, [r7, #20]
    3232:	2b07      	cmp	r3, #7
    3234:	ddf0      	ble.n	3218 <buttons_map+0x182>
			display_keymap(newmap);
    3236:	1d3b      	adds	r3, r7, #4
    3238:	4618      	mov	r0, r3
    323a:	f7ff ff0f 	bl	305c <display_keymap>
			set_cursor(0,CHAR_HEIGHT);
    323e:	2108      	movs	r1, #8
    3240:	2000      	movs	r0, #0
    3242:	f001 fd87 	bl	4d54 <set_cursor>
			i=0;
    3246:	2300      	movs	r3, #0
    3248:	617b      	str	r3, [r7, #20]
			key=newmap[i];
    324a:	1d3a      	adds	r2, r7, #4
    324c:	697b      	ldr	r3, [r7, #20]
    324e:	4413      	add	r3, r2
    3250:	781b      	ldrb	r3, [r3, #0]
    3252:	74bb      	strb	r3, [r7, #18]
			break;	
    3254:	e006      	b.n	3264 <buttons_map+0x1ce>
			break;
    3256:	bf00      	nop
    3258:	e004      	b.n	3264 <buttons_map+0x1ce>
			break;
    325a:	bf00      	nop
    325c:	e002      	b.n	3264 <buttons_map+0x1ce>
			break;
    325e:	bf00      	nop
    3260:	e000      	b.n	3264 <buttons_map+0x1ce>
			break;
    3262:	bf00      	nop
		}//switch
		btn_wait_up(btn);
    3264:	7cfb      	ldrb	r3, [r7, #19]
    3266:	4618      	mov	r0, r3
    3268:	f7fe fce8 	bl	1c3c <btn_wait_up>
	while(btn!=KEY_B){
    326c:	7cfb      	ldrb	r3, [r7, #19]
    326e:	2b20      	cmp	r3, #32
    3270:	f47f af43 	bne.w	30fa <buttons_map+0x64>
	}
	for (i=0;i<8;i++)keymap[i]=newmap[i];
    3274:	2300      	movs	r3, #0
    3276:	617b      	str	r3, [r7, #20]
    3278:	e00a      	b.n	3290 <buttons_map+0x1fa>
    327a:	697b      	ldr	r3, [r7, #20]
    327c:	68fa      	ldr	r2, [r7, #12]
    327e:	4413      	add	r3, r2
    3280:	1d39      	adds	r1, r7, #4
    3282:	697a      	ldr	r2, [r7, #20]
    3284:	440a      	add	r2, r1
    3286:	7812      	ldrb	r2, [r2, #0]
    3288:	701a      	strb	r2, [r3, #0]
    328a:	697b      	ldr	r3, [r7, #20]
    328c:	3301      	adds	r3, #1
    328e:	617b      	str	r3, [r7, #20]
    3290:	697b      	ldr	r3, [r7, #20]
    3292:	2b07      	cmp	r3, #7
    3294:	ddf1      	ble.n	327a <buttons_map+0x1e4>
}
    3296:	bf00      	nop
    3298:	3718      	adds	r7, #24
    329a:	46bd      	mov	sp, r7
    329c:	bd80      	pop	{r7, pc}
    329e:	bf00      	nop
    32a0:	000060c0 	.word	0x000060c0

000032a4 <print_games_list>:

static void print_games_list(unsigned first, unsigned rows){
    32a4:	b580      	push	{r7, lr}
    32a6:	b084      	sub	sp, #16
    32a8:	af00      	add	r7, sp, #0
    32aa:	6078      	str	r0, [r7, #4]
    32ac:	6039      	str	r1, [r7, #0]
	int r=1;
    32ae:	2301      	movs	r3, #1
    32b0:	60fb      	str	r3, [r7, #12]

	set_cursor(0,0);
    32b2:	2100      	movs	r1, #0
    32b4:	2000      	movs	r0, #0
    32b6:	f001 fd4d 	bl	4d54 <set_cursor>
	print("**** GAMES ****");
    32ba:	4815      	ldr	r0, [pc, #84]	; (3310 <print_games_list+0x6c>)
    32bc:	f001 fd76 	bl	4dac <print>
	while ((r<rows) && games_list[first].size){
    32c0:	e012      	b.n	32e8 <print_games_list+0x44>
		new_line();
    32c2:	f001 fc27 	bl	4b14 <new_line>
		put_char(' ');
    32c6:	2020      	movs	r0, #32
    32c8:	f001 fcb8 	bl	4c3c <put_char>
		print(games_list[first].name);
    32cc:	687a      	ldr	r2, [r7, #4]
    32ce:	4613      	mov	r3, r2
    32d0:	00db      	lsls	r3, r3, #3
    32d2:	1a9b      	subs	r3, r3, r2
    32d4:	009b      	lsls	r3, r3, #2
    32d6:	4a0f      	ldr	r2, [pc, #60]	; (3314 <print_games_list+0x70>)
    32d8:	4413      	add	r3, r2
    32da:	3301      	adds	r3, #1
    32dc:	4618      	mov	r0, r3
    32de:	f001 fd65 	bl	4dac <print>
		first++;
    32e2:	687b      	ldr	r3, [r7, #4]
    32e4:	3301      	adds	r3, #1
    32e6:	607b      	str	r3, [r7, #4]
	while ((r<rows) && games_list[first].size){
    32e8:	68fa      	ldr	r2, [r7, #12]
    32ea:	683b      	ldr	r3, [r7, #0]
    32ec:	429a      	cmp	r2, r3
    32ee:	d20a      	bcs.n	3306 <print_games_list+0x62>
    32f0:	4908      	ldr	r1, [pc, #32]	; (3314 <print_games_list+0x70>)
    32f2:	687a      	ldr	r2, [r7, #4]
    32f4:	4613      	mov	r3, r2
    32f6:	00db      	lsls	r3, r3, #3
    32f8:	1a9b      	subs	r3, r3, r2
    32fa:	009b      	lsls	r3, r3, #2
    32fc:	440b      	add	r3, r1
    32fe:	3310      	adds	r3, #16
    3300:	681b      	ldr	r3, [r3, #0]
    3302:	2b00      	cmp	r3, #0
    3304:	d1dd      	bne.n	32c2 <print_games_list+0x1e>
	}
}
    3306:	bf00      	nop
    3308:	3710      	adds	r7, #16
    330a:	46bd      	mov	sp, r7
    330c:	bd80      	pop	{r7, pc}
    330e:	bf00      	nop
    3310:	000060d4 	.word	0x000060d4
    3314:	20000008 	.word	0x20000008

00003318 <run_game>:

static void run_game(unsigned idx){
    3318:	b590      	push	{r4, r7, lr}
    331a:	b085      	sub	sp, #20
    331c:	af00      	add	r7, sp, #0
    331e:	6078      	str	r0, [r7, #4]
	int i;
	uint16_t addr=0;
    3320:	2300      	movs	r3, #0
    3322:	81fb      	strh	r3, [r7, #14]
	if (games_list[idx].vmode==VM_SCHIP){
    3324:	4924      	ldr	r1, [pc, #144]	; (33b8 <run_game+0xa0>)
    3326:	687a      	ldr	r2, [r7, #4]
    3328:	4613      	mov	r3, r2
    332a:	00db      	lsls	r3, r3, #3
    332c:	1a9b      	subs	r3, r3, r2
    332e:	009b      	lsls	r3, r3, #2
    3330:	440b      	add	r3, r1
    3332:	781b      	ldrb	r3, [r3, #0]
    3334:	2b01      	cmp	r3, #1
    3336:	d102      	bne.n	333e <run_game+0x26>
		addr=512;
    3338:	f44f 7300 	mov.w	r3, #512	; 0x200
    333c:	81fb      	strh	r3, [r7, #14]
	}
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    333e:	491e      	ldr	r1, [pc, #120]	; (33b8 <run_game+0xa0>)
    3340:	687a      	ldr	r2, [r7, #4]
    3342:	4613      	mov	r3, r2
    3344:	00db      	lsls	r3, r3, #3
    3346:	1a9b      	subs	r3, r3, r2
    3348:	009b      	lsls	r3, r3, #2
    334a:	440b      	add	r3, r1
    334c:	3314      	adds	r3, #20
    334e:	6818      	ldr	r0, [r3, #0]
    3350:	89fb      	ldrh	r3, [r7, #14]
    3352:	4a1a      	ldr	r2, [pc, #104]	; (33bc <run_game+0xa4>)
    3354:	189c      	adds	r4, r3, r2
    3356:	4918      	ldr	r1, [pc, #96]	; (33b8 <run_game+0xa0>)
    3358:	687a      	ldr	r2, [r7, #4]
    335a:	4613      	mov	r3, r2
    335c:	00db      	lsls	r3, r3, #3
    335e:	1a9b      	subs	r3, r3, r2
    3360:	009b      	lsls	r3, r3, #2
    3362:	440b      	add	r3, r1
    3364:	3310      	adds	r3, #16
    3366:	681b      	ldr	r3, [r3, #0]
    3368:	461a      	mov	r2, r3
    336a:	4621      	mov	r1, r4
    336c:	f7fe fe19 	bl	1fa2 <move>
	set_keymap(games_list[idx].keymap);
    3370:	4911      	ldr	r1, [pc, #68]	; (33b8 <run_game+0xa0>)
    3372:	687a      	ldr	r2, [r7, #4]
    3374:	4613      	mov	r3, r2
    3376:	00db      	lsls	r3, r3, #3
    3378:	1a9b      	subs	r3, r3, r2
    337a:	009b      	lsls	r3, r3, #2
    337c:	440b      	add	r3, r1
    337e:	3318      	adds	r3, #24
    3380:	681b      	ldr	r3, [r3, #0]
    3382:	4618      	mov	r0, r3
    3384:	f7fe fb36 	bl	19f4 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    3388:	490b      	ldr	r1, [pc, #44]	; (33b8 <run_game+0xa0>)
    338a:	687a      	ldr	r2, [r7, #4]
    338c:	4613      	mov	r3, r2
    338e:	00db      	lsls	r3, r3, #3
    3390:	1a9b      	subs	r3, r3, r2
    3392:	009b      	lsls	r3, r3, #2
    3394:	440b      	add	r3, r1
    3396:	781b      	ldrb	r3, [r3, #0]
    3398:	4618      	mov	r0, r3
    339a:	f002 f91f 	bl	55dc <set_video_mode>
	chip_vm(addr,0);
    339e:	89fb      	ldrh	r3, [r7, #14]
    33a0:	2100      	movs	r1, #0
    33a2:	4618      	mov	r0, r3
    33a4:	f7fd f89c 	bl	4e0 <chip_vm>
	set_video_mode(VM_BPCHIP);
    33a8:	2000      	movs	r0, #0
    33aa:	f002 f917 	bl	55dc <set_video_mode>
}
    33ae:	bf00      	nop
    33b0:	3714      	adds	r7, #20
    33b2:	46bd      	mov	sp, r7
    33b4:	bd90      	pop	{r4, r7, pc}
    33b6:	bf00      	nop
    33b8:	20000008 	.word	0x20000008
    33bc:	200006b4 	.word	0x200006b4

000033c0 <select_game>:

static void select_game(){
    33c0:	b580      	push	{r7, lr}
    33c2:	b088      	sub	sp, #32
    33c4:	af00      	add	r7, sp, #0
	int i=0,first=0,count,rows,selected=1;
    33c6:	2300      	movs	r3, #0
    33c8:	613b      	str	r3, [r7, #16]
    33ca:	2300      	movs	r3, #0
    33cc:	61fb      	str	r3, [r7, #28]
    33ce:	2301      	movs	r3, #1
    33d0:	61bb      	str	r3, [r7, #24]
	int loop=1;
    33d2:	2301      	movs	r3, #1
    33d4:	617b      	str	r3, [r7, #20]
	uint8_t btn;
	vmode_params_t *vparams;
	count=games_count();
    33d6:	f7fe fcab 	bl	1d30 <games_count>
    33da:	4603      	mov	r3, r0
    33dc:	60fb      	str	r3, [r7, #12]
	set_video_mode(VM_BPCHIP);
    33de:	2000      	movs	r0, #0
    33e0:	f002 f8fc 	bl	55dc <set_video_mode>
	vparams=get_video_params();
    33e4:	f002 f992 	bl	570c <get_video_params>
    33e8:	60b8      	str	r0, [r7, #8]
	rows=vparams->vres/CHAR_HEIGHT;
    33ea:	68bb      	ldr	r3, [r7, #8]
    33ec:	89db      	ldrh	r3, [r3, #14]
    33ee:	08db      	lsrs	r3, r3, #3
    33f0:	b29b      	uxth	r3, r3
    33f2:	607b      	str	r3, [r7, #4]
	while(loop){
    33f4:	e048      	b.n	3488 <select_game+0xc8>
		print_games_list(first,rows);
    33f6:	69fb      	ldr	r3, [r7, #28]
    33f8:	687a      	ldr	r2, [r7, #4]
    33fa:	4611      	mov	r1, r2
    33fc:	4618      	mov	r0, r3
    33fe:	f7ff ff51 	bl	32a4 <print_games_list>
		set_cursor(0,selected*CHAR_HEIGHT);
    3402:	69bb      	ldr	r3, [r7, #24]
    3404:	b2db      	uxtb	r3, r3
    3406:	00db      	lsls	r3, r3, #3
    3408:	b2db      	uxtb	r3, r3
    340a:	4619      	mov	r1, r3
    340c:	2000      	movs	r0, #0
    340e:	f001 fca1 	bl	4d54 <set_cursor>
		put_char('>');
    3412:	203e      	movs	r0, #62	; 0x3e
    3414:	f001 fc12 	bl	4c3c <put_char>
		btn=btn_wait_any();
    3418:	f7fe fc38 	bl	1c8c <btn_wait_any>
    341c:	4603      	mov	r3, r0
    341e:	70fb      	strb	r3, [r7, #3]
		btn_wait_up(btn);
    3420:	78fb      	ldrb	r3, [r7, #3]
    3422:	4618      	mov	r0, r3
    3424:	f7fe fc0a 	bl	1c3c <btn_wait_up>
		switch(btn){
    3428:	78fb      	ldrb	r3, [r7, #3]
    342a:	2b04      	cmp	r3, #4
    342c:	d016      	beq.n	345c <select_game+0x9c>
    342e:	2b04      	cmp	r3, #4
    3430:	dc02      	bgt.n	3438 <select_game+0x78>
    3432:	2b02      	cmp	r3, #2
    3434:	d005      	beq.n	3442 <select_game+0x82>
    3436:	e027      	b.n	3488 <select_game+0xc8>
    3438:	2b20      	cmp	r3, #32
    343a:	d022      	beq.n	3482 <select_game+0xc2>
    343c:	2b40      	cmp	r3, #64	; 0x40
    343e:	d02e      	beq.n	349e <select_game+0xde>
    3440:	e022      	b.n	3488 <select_game+0xc8>
		case KEY_UP:
			if (first) first--;
    3442:	69fb      	ldr	r3, [r7, #28]
    3444:	2b00      	cmp	r3, #0
    3446:	d002      	beq.n	344e <select_game+0x8e>
    3448:	69fb      	ldr	r3, [r7, #28]
    344a:	3b01      	subs	r3, #1
    344c:	61fb      	str	r3, [r7, #28]
			if (selected>1) selected--;
    344e:	69bb      	ldr	r3, [r7, #24]
    3450:	2b01      	cmp	r3, #1
    3452:	dd19      	ble.n	3488 <select_game+0xc8>
    3454:	69bb      	ldr	r3, [r7, #24]
    3456:	3b01      	subs	r3, #1
    3458:	61bb      	str	r3, [r7, #24]
			break;
    345a:	e015      	b.n	3488 <select_game+0xc8>
		case KEY_DOWN:
			if ((first+selected-1)<(count-1)){
    345c:	69fa      	ldr	r2, [r7, #28]
    345e:	69bb      	ldr	r3, [r7, #24]
    3460:	4413      	add	r3, r2
    3462:	1e5a      	subs	r2, r3, #1
    3464:	68fb      	ldr	r3, [r7, #12]
    3466:	3b01      	subs	r3, #1
    3468:	429a      	cmp	r2, r3
    346a:	da0d      	bge.n	3488 <select_game+0xc8>
				selected++;
    346c:	69bb      	ldr	r3, [r7, #24]
    346e:	3301      	adds	r3, #1
    3470:	61bb      	str	r3, [r7, #24]
				if (selected>=rows) first++;
    3472:	69ba      	ldr	r2, [r7, #24]
    3474:	687b      	ldr	r3, [r7, #4]
    3476:	429a      	cmp	r2, r3
    3478:	db06      	blt.n	3488 <select_game+0xc8>
    347a:	69fb      	ldr	r3, [r7, #28]
    347c:	3301      	adds	r3, #1
    347e:	61fb      	str	r3, [r7, #28]
			}
			break;
    3480:	e002      	b.n	3488 <select_game+0xc8>
		case KEY_B:
			loop=false;
    3482:	2300      	movs	r3, #0
    3484:	617b      	str	r3, [r7, #20]
			break;	
    3486:	bf00      	nop
	while(loop){
    3488:	697b      	ldr	r3, [r7, #20]
    348a:	2b00      	cmp	r3, #0
    348c:	d1b3      	bne.n	33f6 <select_game+0x36>
		case KEY_C:
			return;	
		}
	}
	run_game(first+selected-1);
    348e:	69fa      	ldr	r2, [r7, #28]
    3490:	69bb      	ldr	r3, [r7, #24]
    3492:	4413      	add	r3, r2
    3494:	3b01      	subs	r3, #1
    3496:	4618      	mov	r0, r3
    3498:	f7ff ff3e 	bl	3318 <run_game>
    349c:	e000      	b.n	34a0 <select_game+0xe0>
			return;	
    349e:	bf00      	nop
}
    34a0:	3720      	adds	r7, #32
    34a2:	46bd      	mov	sp, r7
    34a4:	bd80      	pop	{r7, pc}

000034a6 <display_menu>:
	" Games list",
	" Video test",
	" Sound test",
};

static void display_menu(){
    34a6:	b580      	push	{r7, lr}
    34a8:	b082      	sub	sp, #8
    34aa:	af00      	add	r7, sp, #0
	int i;
	gfx_cls();
    34ac:	f7ff f844 	bl	2538 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
    34b0:	2300      	movs	r3, #0
    34b2:	607b      	str	r3, [r7, #4]
    34b4:	e009      	b.n	34ca <display_menu+0x24>
		println(menu_list[i]);
    34b6:	4a08      	ldr	r2, [pc, #32]	; (34d8 <display_menu+0x32>)
    34b8:	687b      	ldr	r3, [r7, #4]
    34ba:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    34be:	4618      	mov	r0, r3
    34c0:	f001 fc97 	bl	4df2 <println>
	for (i=0;i<MENU_ITEMS;i++){
    34c4:	687b      	ldr	r3, [r7, #4]
    34c6:	3301      	adds	r3, #1
    34c8:	607b      	str	r3, [r7, #4]
    34ca:	687b      	ldr	r3, [r7, #4]
    34cc:	2b03      	cmp	r3, #3
    34ce:	ddf2      	ble.n	34b6 <display_menu+0x10>
	}
}
    34d0:	bf00      	nop
    34d2:	3708      	adds	r7, #8
    34d4:	46bd      	mov	sp, r7
    34d6:	bd80      	pop	{r7, pc}
    34d8:	20000198 	.word	0x20000198

000034dc <menu>:

static void menu(){
    34dc:	b580      	push	{r7, lr}
    34de:	b084      	sub	sp, #16
    34e0:	af00      	add	r7, sp, #0
	int i=0;
    34e2:	2300      	movs	r3, #0
    34e4:	60fb      	str	r3, [r7, #12]
	uint8_t btn;
	vmode_params_t* vparams=get_video_params();
    34e6:	f002 f911 	bl	570c <get_video_params>
    34ea:	60b8      	str	r0, [r7, #8]
	display_menu();
    34ec:	f7ff ffdb 	bl	34a6 <display_menu>
	while (1){
		set_cursor(0,i*CHAR_HEIGHT);
    34f0:	68fb      	ldr	r3, [r7, #12]
    34f2:	b2db      	uxtb	r3, r3
    34f4:	00db      	lsls	r3, r3, #3
    34f6:	b2db      	uxtb	r3, r3
    34f8:	4619      	mov	r1, r3
    34fa:	2000      	movs	r0, #0
    34fc:	f001 fc2a 	bl	4d54 <set_cursor>
		put_char('>');
    3500:	203e      	movs	r0, #62	; 0x3e
    3502:	f001 fb9b 	bl	4c3c <put_char>
		btn=btn_wait_any();
    3506:	f7fe fbc1 	bl	1c8c <btn_wait_any>
    350a:	4603      	mov	r3, r0
    350c:	71fb      	strb	r3, [r7, #7]
		btn_wait_up(btn);
    350e:	79fb      	ldrb	r3, [r7, #7]
    3510:	4618      	mov	r0, r3
    3512:	f7fe fb93 	bl	1c3c <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    3516:	68fb      	ldr	r3, [r7, #12]
    3518:	b2db      	uxtb	r3, r3
    351a:	00db      	lsls	r3, r3, #3
    351c:	b2db      	uxtb	r3, r3
    351e:	4619      	mov	r1, r3
    3520:	2000      	movs	r0, #0
    3522:	f001 fc17 	bl	4d54 <set_cursor>
		put_char(' ');
    3526:	2020      	movs	r0, #32
    3528:	f001 fb88 	bl	4c3c <put_char>
		switch(btn){
    352c:	79fb      	ldrb	r3, [r7, #7]
    352e:	2b04      	cmp	r3, #4
    3530:	d00a      	beq.n	3548 <menu+0x6c>
    3532:	2b20      	cmp	r3, #32
    3534:	d00f      	beq.n	3556 <menu+0x7a>
    3536:	2b02      	cmp	r3, #2
    3538:	d12e      	bne.n	3598 <menu+0xbc>
		case KEY_UP:
			if (i) i--;
    353a:	68fb      	ldr	r3, [r7, #12]
    353c:	2b00      	cmp	r3, #0
    353e:	d028      	beq.n	3592 <menu+0xb6>
    3540:	68fb      	ldr	r3, [r7, #12]
    3542:	3b01      	subs	r3, #1
    3544:	60fb      	str	r3, [r7, #12]
			break;
    3546:	e024      	b.n	3592 <menu+0xb6>
		case KEY_DOWN:
			if (i<(MENU_ITEMS-1)) i++;
    3548:	68fb      	ldr	r3, [r7, #12]
    354a:	2b02      	cmp	r3, #2
    354c:	dc23      	bgt.n	3596 <menu+0xba>
    354e:	68fb      	ldr	r3, [r7, #12]
    3550:	3301      	adds	r3, #1
    3552:	60fb      	str	r3, [r7, #12]
			break;
    3554:	e01f      	b.n	3596 <menu+0xba>
		case KEY_B:
			switch(i){
    3556:	68fb      	ldr	r3, [r7, #12]
    3558:	2b03      	cmp	r3, #3
    355a:	d817      	bhi.n	358c <menu+0xb0>
    355c:	a201      	add	r2, pc, #4	; (adr r2, 3564 <menu+0x88>)
    355e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    3562:	bf00      	nop
    3564:	00003575 	.word	0x00003575
    3568:	0000357b 	.word	0x0000357b
    356c:	00003581 	.word	0x00003581
    3570:	00003587 	.word	0x00003587
			case 0:
				buttons_map();
    3574:	f7ff fd8f 	bl	3096 <buttons_map>
				break;
    3578:	e008      	b.n	358c <menu+0xb0>
			case 1:
				select_game();
    357a:	f7ff ff21 	bl	33c0 <select_game>
				break;
    357e:	e005      	b.n	358c <menu+0xb0>
			case 2:
				video_test();
    3580:	f7ff fc9c 	bl	2ebc <video_test>
				break;
    3584:	e002      	b.n	358c <menu+0xb0>
			case 3:
				sound_test();
    3586:	f7ff fd0d 	bl	2fa4 <sound_test>
				break;	
    358a:	bf00      	nop
			}
			//set_video_mode(VM_BPCHIP);
			display_menu();
    358c:	f7ff ff8b 	bl	34a6 <display_menu>
			break;	
    3590:	e002      	b.n	3598 <menu+0xbc>
			break;
    3592:	bf00      	nop
    3594:	e7ac      	b.n	34f0 <menu+0x14>
			break;
    3596:	bf00      	nop
		set_cursor(0,i*CHAR_HEIGHT);
    3598:	e7aa      	b.n	34f0 <menu+0x14>

0000359a <main>:
		}
	}//while
}

//const uint8_t sample[16]={0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
void main(void){
    359a:	b580      	push	{r7, lr}
    359c:	b088      	sub	sp, #32
    359e:	af02      	add	r7, sp, #8
	set_sysclock();
    35a0:	f7ff f9ea 	bl	2978 <set_sysclock>
//	config_systicks();
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    35a4:	4b1e      	ldr	r3, [pc, #120]	; (3620 <main+0x86>)
    35a6:	f640 021d 	movw	r2, #2077	; 0x81d
    35aa:	619a      	str	r2, [r3, #24]
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    35ac:	2206      	movs	r2, #6
    35ae:	210d      	movs	r1, #13
    35b0:	481c      	ldr	r0, [pc, #112]	; (3624 <main+0x8a>)
    35b2:	f7fe fe5d 	bl	2270 <config_pin>
	_led_off();
    35b6:	4a1b      	ldr	r2, [pc, #108]	; (3624 <main+0x8a>)
    35b8:	4b1a      	ldr	r3, [pc, #104]	; (3624 <main+0x8a>)
    35ba:	68db      	ldr	r3, [r3, #12]
    35bc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    35c0:	60d3      	str	r3, [r2, #12]
	usart_open_channel(USART1,115200,PARITY_NONE,USART_DIR_TX,ALT_PORT,FLOW_SOFT);
    35c2:	2300      	movs	r3, #0
    35c4:	9301      	str	r3, [sp, #4]
    35c6:	2301      	movs	r3, #1
    35c8:	9300      	str	r3, [sp, #0]
    35ca:	2302      	movs	r3, #2
    35cc:	2200      	movs	r2, #0
    35ce:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    35d2:	4815      	ldr	r0, [pc, #84]	; (3628 <main+0x8e>)
    35d4:	f002 f9df 	bl	5996 <usart_open_channel>
	gamepad_init();
    35d8:	f7fe fa2a 	bl	1a30 <gamepad_init>
	tvout_init();
    35dc:	f001 fd78 	bl	50d0 <tvout_init>
	sound_init();
    35e0:	f000 ff4e 	bl	4480 <sound_init>
	uint8_t sample[16];
	int i;
	for (i=0;i<16;i++)sample[i]=rand()&255;
    35e4:	2300      	movs	r3, #0
    35e6:	617b      	str	r3, [r7, #20]
    35e8:	e00b      	b.n	3602 <main+0x68>
    35ea:	f7fc ff57 	bl	49c <rand>
    35ee:	4603      	mov	r3, r0
    35f0:	b2d9      	uxtb	r1, r3
    35f2:	1d3a      	adds	r2, r7, #4
    35f4:	697b      	ldr	r3, [r7, #20]
    35f6:	4413      	add	r3, r2
    35f8:	460a      	mov	r2, r1
    35fa:	701a      	strb	r2, [r3, #0]
    35fc:	697b      	ldr	r3, [r7, #20]
    35fe:	3301      	adds	r3, #1
    3600:	617b      	str	r3, [r7, #20]
    3602:	697b      	ldr	r3, [r7, #20]
    3604:	2b0f      	cmp	r3, #15
    3606:	ddf0      	ble.n	35ea <main+0x50>
	load_sound_buffer((const uint8_t*)sample);
    3608:	1d3b      	adds	r3, r7, #4
    360a:	4618      	mov	r0, r3
    360c:	f000 ffad 	bl	456a <load_sound_buffer>
	gfx_cls();
    3610:	f7fe ff92 	bl	2538 <gfx_cls>
	menu();
    3614:	f7ff ff62 	bl	34dc <menu>
}
    3618:	bf00      	nop
    361a:	3718      	adds	r7, #24
    361c:	46bd      	mov	sp, r7
    361e:	bd80      	pop	{r7, pc}
    3620:	40021000 	.word	0x40021000
    3624:	40011000 	.word	0x40011000
    3628:	40013800 	.word	0x40013800

0000362c <enable_interrupt>:

#include "../include/blue_pill.h"



void enable_interrupt(int irq){
    362c:	b480      	push	{r7}
    362e:	b083      	sub	sp, #12
    3630:	af00      	add	r7, sp, #0
    3632:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    3634:	687b      	ldr	r3, [r7, #4]
    3636:	2b3b      	cmp	r3, #59	; 0x3b
    3638:	dc17      	bgt.n	366a <enable_interrupt+0x3e>
	ISER[irq>>5]|=1<<(irq&0x1f);
    363a:	687b      	ldr	r3, [r7, #4]
    363c:	115b      	asrs	r3, r3, #5
    363e:	009b      	lsls	r3, r3, #2
    3640:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3644:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    3648:	687a      	ldr	r2, [r7, #4]
    364a:	1152      	asrs	r2, r2, #5
    364c:	0092      	lsls	r2, r2, #2
    364e:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    3652:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    3656:	6812      	ldr	r2, [r2, #0]
    3658:	6879      	ldr	r1, [r7, #4]
    365a:	f001 011f 	and.w	r1, r1, #31
    365e:	2001      	movs	r0, #1
    3660:	fa00 f101 	lsl.w	r1, r0, r1
    3664:	430a      	orrs	r2, r1
    3666:	601a      	str	r2, [r3, #0]
    3668:	e000      	b.n	366c <enable_interrupt+0x40>
	if (irq>LAST_IRQ) return ;
    366a:	bf00      	nop
}
    366c:	370c      	adds	r7, #12
    366e:	46bd      	mov	sp, r7
    3670:	bc80      	pop	{r7}
    3672:	4770      	bx	lr

00003674 <disable_interrupt>:


void disable_interrupt(int irq){
    3674:	b480      	push	{r7}
    3676:	b083      	sub	sp, #12
    3678:	af00      	add	r7, sp, #0
    367a:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    367c:	687b      	ldr	r3, [r7, #4]
    367e:	2b3b      	cmp	r3, #59	; 0x3b
    3680:	dc0c      	bgt.n	369c <disable_interrupt+0x28>
	ICER[irq>>5]=(1<<(irq&0x1f));
    3682:	687b      	ldr	r3, [r7, #4]
    3684:	115b      	asrs	r3, r3, #5
    3686:	009a      	lsls	r2, r3, #2
    3688:	4b07      	ldr	r3, [pc, #28]	; (36a8 <disable_interrupt+0x34>)
    368a:	4413      	add	r3, r2
    368c:	687a      	ldr	r2, [r7, #4]
    368e:	f002 021f 	and.w	r2, r2, #31
    3692:	2101      	movs	r1, #1
    3694:	fa01 f202 	lsl.w	r2, r1, r2
    3698:	601a      	str	r2, [r3, #0]
    369a:	e000      	b.n	369e <disable_interrupt+0x2a>
	if (irq>LAST_IRQ) return ;
    369c:	bf00      	nop
}
    369e:	370c      	adds	r7, #12
    36a0:	46bd      	mov	sp, r7
    36a2:	bc80      	pop	{r7}
    36a4:	4770      	bx	lr
    36a6:	bf00      	nop
    36a8:	e000e180 	.word	0xe000e180

000036ac <get_pending>:

unsigned get_pending(int irq){
    36ac:	b480      	push	{r7}
    36ae:	b083      	sub	sp, #12
    36b0:	af00      	add	r7, sp, #0
    36b2:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    36b4:	687b      	ldr	r3, [r7, #4]
    36b6:	2b3b      	cmp	r3, #59	; 0x3b
    36b8:	dd01      	ble.n	36be <get_pending+0x12>
    36ba:	2300      	movs	r3, #0
    36bc:	e00c      	b.n	36d8 <get_pending+0x2c>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    36be:	687b      	ldr	r3, [r7, #4]
    36c0:	115b      	asrs	r3, r3, #5
    36c2:	009a      	lsls	r2, r3, #2
    36c4:	4b07      	ldr	r3, [pc, #28]	; (36e4 <get_pending+0x38>)
    36c6:	4413      	add	r3, r2
    36c8:	681b      	ldr	r3, [r3, #0]
    36ca:	687a      	ldr	r2, [r7, #4]
    36cc:	f002 021f 	and.w	r2, r2, #31
    36d0:	2101      	movs	r1, #1
    36d2:	fa01 f202 	lsl.w	r2, r1, r2
    36d6:	4013      	ands	r3, r2
}
    36d8:	4618      	mov	r0, r3
    36da:	370c      	adds	r7, #12
    36dc:	46bd      	mov	sp, r7
    36de:	bc80      	pop	{r7}
    36e0:	4770      	bx	lr
    36e2:	bf00      	nop
    36e4:	e000e280 	.word	0xe000e280

000036e8 <get_active>:

unsigned get_active(int irq){
    36e8:	b480      	push	{r7}
    36ea:	b083      	sub	sp, #12
    36ec:	af00      	add	r7, sp, #0
    36ee:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    36f0:	687b      	ldr	r3, [r7, #4]
    36f2:	2b3b      	cmp	r3, #59	; 0x3b
    36f4:	dd01      	ble.n	36fa <get_active+0x12>
    36f6:	2300      	movs	r3, #0
    36f8:	e00e      	b.n	3718 <get_active+0x30>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    36fa:	687b      	ldr	r3, [r7, #4]
    36fc:	115b      	asrs	r3, r3, #5
    36fe:	009b      	lsls	r3, r3, #2
    3700:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3704:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    3708:	681b      	ldr	r3, [r3, #0]
    370a:	687a      	ldr	r2, [r7, #4]
    370c:	f002 021f 	and.w	r2, r2, #31
    3710:	2101      	movs	r1, #1
    3712:	fa01 f202 	lsl.w	r2, r1, r2
    3716:	4013      	ands	r3, r2
}
    3718:	4618      	mov	r0, r3
    371a:	370c      	adds	r7, #12
    371c:	46bd      	mov	sp, r7
    371e:	bc80      	pop	{r7}
    3720:	4770      	bx	lr

00003722 <set_pending>:

void set_pending(int irq){
    3722:	b480      	push	{r7}
    3724:	b083      	sub	sp, #12
    3726:	af00      	add	r7, sp, #0
    3728:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    372a:	687b      	ldr	r3, [r7, #4]
    372c:	2b3b      	cmp	r3, #59	; 0x3b
    372e:	dc17      	bgt.n	3760 <set_pending+0x3e>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    3730:	687b      	ldr	r3, [r7, #4]
    3732:	115b      	asrs	r3, r3, #5
    3734:	009b      	lsls	r3, r3, #2
    3736:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    373a:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    373e:	687a      	ldr	r2, [r7, #4]
    3740:	1152      	asrs	r2, r2, #5
    3742:	0092      	lsls	r2, r2, #2
    3744:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    3748:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    374c:	6812      	ldr	r2, [r2, #0]
    374e:	6879      	ldr	r1, [r7, #4]
    3750:	f001 011f 	and.w	r1, r1, #31
    3754:	2001      	movs	r0, #1
    3756:	fa00 f101 	lsl.w	r1, r0, r1
    375a:	430a      	orrs	r2, r1
    375c:	601a      	str	r2, [r3, #0]
    375e:	e000      	b.n	3762 <set_pending+0x40>
	if (irq>LAST_IRQ) return;
    3760:	bf00      	nop
}
    3762:	370c      	adds	r7, #12
    3764:	46bd      	mov	sp, r7
    3766:	bc80      	pop	{r7}
    3768:	4770      	bx	lr

0000376a <clear_pending>:

void clear_pending(int irq){
    376a:	b480      	push	{r7}
    376c:	b083      	sub	sp, #12
    376e:	af00      	add	r7, sp, #0
    3770:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    3772:	687b      	ldr	r3, [r7, #4]
    3774:	2b3b      	cmp	r3, #59	; 0x3b
    3776:	dc0c      	bgt.n	3792 <clear_pending+0x28>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    3778:	687b      	ldr	r3, [r7, #4]
    377a:	115b      	asrs	r3, r3, #5
    377c:	009a      	lsls	r2, r3, #2
    377e:	4b07      	ldr	r3, [pc, #28]	; (379c <clear_pending+0x32>)
    3780:	4413      	add	r3, r2
    3782:	687a      	ldr	r2, [r7, #4]
    3784:	f002 021f 	and.w	r2, r2, #31
    3788:	2101      	movs	r1, #1
    378a:	fa01 f202 	lsl.w	r2, r1, r2
    378e:	601a      	str	r2, [r3, #0]
    3790:	e000      	b.n	3794 <clear_pending+0x2a>
	if (irq>LAST_IRQ) return;
    3792:	bf00      	nop
}
    3794:	370c      	adds	r7, #12
    3796:	46bd      	mov	sp, r7
    3798:	bc80      	pop	{r7}
    379a:	4770      	bx	lr
    379c:	e000e280 	.word	0xe000e280

000037a0 <set_int_priority>:

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
    37a0:	b480      	push	{r7}
    37a2:	b083      	sub	sp, #12
    37a4:	af00      	add	r7, sp, #0
    37a6:	6078      	str	r0, [r7, #4]
    37a8:	6039      	str	r1, [r7, #0]
	if ((irq>=0) && (irq<=LAST_IRQ)){
    37aa:	687b      	ldr	r3, [r7, #4]
    37ac:	2b00      	cmp	r3, #0
    37ae:	db0d      	blt.n	37cc <set_int_priority+0x2c>
    37b0:	687b      	ldr	r3, [r7, #4]
    37b2:	2b3b      	cmp	r3, #59	; 0x3b
    37b4:	dc0a      	bgt.n	37cc <set_int_priority+0x2c>
		IPR[irq]=(uint8_t)((priority&15)<<4);
    37b6:	687b      	ldr	r3, [r7, #4]
    37b8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    37bc:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    37c0:	683a      	ldr	r2, [r7, #0]
    37c2:	b2d2      	uxtb	r2, r2
    37c4:	0112      	lsls	r2, r2, #4
    37c6:	b2d2      	uxtb	r2, r2
    37c8:	701a      	strb	r2, [r3, #0]
	}else if ((irq<0) && (irq>-16)){
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
	}
}
    37ca:	e012      	b.n	37f2 <set_int_priority+0x52>
	}else if ((irq<0) && (irq>-16)){
    37cc:	687b      	ldr	r3, [r7, #4]
    37ce:	2b00      	cmp	r3, #0
    37d0:	da0f      	bge.n	37f2 <set_int_priority+0x52>
    37d2:	687b      	ldr	r3, [r7, #4]
    37d4:	f113 0f0f 	cmn.w	r3, #15
    37d8:	db0b      	blt.n	37f2 <set_int_priority+0x52>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    37da:	687a      	ldr	r2, [r7, #4]
    37dc:	f06f 0303 	mvn.w	r3, #3
    37e0:	1a9b      	subs	r3, r3, r2
    37e2:	461a      	mov	r2, r3
    37e4:	4b05      	ldr	r3, [pc, #20]	; (37fc <set_int_priority+0x5c>)
    37e6:	4413      	add	r3, r2
    37e8:	683a      	ldr	r2, [r7, #0]
    37ea:	b2d2      	uxtb	r2, r2
    37ec:	0112      	lsls	r2, r2, #4
    37ee:	b2d2      	uxtb	r2, r2
    37f0:	701a      	strb	r2, [r3, #0]
}
    37f2:	bf00      	nop
    37f4:	370c      	adds	r7, #12
    37f6:	46bd      	mov	sp, r7
    37f8:	bc80      	pop	{r7}
    37fa:	4770      	bx	lr
    37fc:	e000ed18 	.word	0xe000ed18

00003800 <leap_year>:
#define RTC_ACCESS_CODE 0xAA55

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
    3800:	b480      	push	{r7}
    3802:	b083      	sub	sp, #12
    3804:	af00      	add	r7, sp, #0
    3806:	6078      	str	r0, [r7, #4]
	if (!(y&3)){
    3808:	687b      	ldr	r3, [r7, #4]
    380a:	f003 0303 	and.w	r3, r3, #3
    380e:	2b00      	cmp	r3, #0
    3810:	d11a      	bne.n	3848 <leap_year+0x48>
		if ((y%100==0) && (y%400)){
    3812:	687a      	ldr	r2, [r7, #4]
    3814:	4b0f      	ldr	r3, [pc, #60]	; (3854 <leap_year+0x54>)
    3816:	fba3 1302 	umull	r1, r3, r3, r2
    381a:	095b      	lsrs	r3, r3, #5
    381c:	2164      	movs	r1, #100	; 0x64
    381e:	fb01 f303 	mul.w	r3, r1, r3
    3822:	1ad3      	subs	r3, r2, r3
    3824:	2b00      	cmp	r3, #0
    3826:	d10d      	bne.n	3844 <leap_year+0x44>
    3828:	687a      	ldr	r2, [r7, #4]
    382a:	4b0a      	ldr	r3, [pc, #40]	; (3854 <leap_year+0x54>)
    382c:	fba3 1302 	umull	r1, r3, r3, r2
    3830:	09db      	lsrs	r3, r3, #7
    3832:	f44f 71c8 	mov.w	r1, #400	; 0x190
    3836:	fb01 f303 	mul.w	r3, r1, r3
    383a:	1ad3      	subs	r3, r2, r3
    383c:	2b00      	cmp	r3, #0
    383e:	d001      	beq.n	3844 <leap_year+0x44>
			return 0;
    3840:	2300      	movs	r3, #0
    3842:	e002      	b.n	384a <leap_year+0x4a>
		}
		return 1;
    3844:	2301      	movs	r3, #1
    3846:	e000      	b.n	384a <leap_year+0x4a>
	}
	return 0;
    3848:	2300      	movs	r3, #0
}
    384a:	4618      	mov	r0, r3
    384c:	370c      	adds	r7, #12
    384e:	46bd      	mov	sp, r7
    3850:	bc80      	pop	{r7}
    3852:	4770      	bx	lr
    3854:	51eb851f 	.word	0x51eb851f

00003858 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
    3858:	b480      	push	{r7}
    385a:	b085      	sub	sp, #20
    385c:	af00      	add	r7, sp, #0
    385e:	6078      	str	r0, [r7, #4]
    3860:	6039      	str	r1, [r7, #0]
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    3862:	4a0d      	ldr	r2, [pc, #52]	; (3898 <sec_per_month+0x40>)
    3864:	683b      	ldr	r3, [r7, #0]
    3866:	4413      	add	r3, r2
    3868:	781b      	ldrb	r3, [r3, #0]
    386a:	461a      	mov	r2, r3
    386c:	4b0b      	ldr	r3, [pc, #44]	; (389c <sec_per_month+0x44>)
    386e:	fb03 f302 	mul.w	r3, r3, r2
    3872:	60fb      	str	r3, [r7, #12]
	if (month==2 && leap){
    3874:	683b      	ldr	r3, [r7, #0]
    3876:	2b02      	cmp	r3, #2
    3878:	d108      	bne.n	388c <sec_per_month+0x34>
    387a:	687b      	ldr	r3, [r7, #4]
    387c:	2b00      	cmp	r3, #0
    387e:	d005      	beq.n	388c <sec_per_month+0x34>
		sec+=SEC_PER_DAY;
    3880:	68fb      	ldr	r3, [r7, #12]
    3882:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    3886:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    388a:	60fb      	str	r3, [r7, #12]
	}
	return sec;
    388c:	68fb      	ldr	r3, [r7, #12]
}
    388e:	4618      	mov	r0, r3
    3890:	3714      	adds	r7, #20
    3892:	46bd      	mov	sp, r7
    3894:	bc80      	pop	{r7}
    3896:	4770      	bx	lr
    3898:	000061c8 	.word	0x000061c8
    389c:	00015180 	.word	0x00015180

000038a0 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    38a0:	b580      	push	{r7, lr}
    38a2:	b086      	sub	sp, #24
    38a4:	af00      	add	r7, sp, #0
    38a6:	6078      	str	r0, [r7, #4]
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    38a8:	4b66      	ldr	r3, [pc, #408]	; (3a44 <get_date_time+0x1a4>)
    38aa:	699b      	ldr	r3, [r3, #24]
    38ac:	041a      	lsls	r2, r3, #16
    38ae:	4b65      	ldr	r3, [pc, #404]	; (3a44 <get_date_time+0x1a4>)
    38b0:	69db      	ldr	r3, [r3, #28]
    38b2:	4413      	add	r3, r2
    38b4:	617b      	str	r3, [r7, #20]
	dt->year=EPOCH_YEAR;
    38b6:	687b      	ldr	r3, [r7, #4]
    38b8:	f240 72b2 	movw	r2, #1970	; 0x7b2
    38bc:	811a      	strh	r2, [r3, #8]
	leap=leap_year(EPOCH_YEAR);
    38be:	f240 70b2 	movw	r0, #1970	; 0x7b2
    38c2:	f7ff ff9d 	bl	3800 <leap_year>
    38c6:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    38c8:	e019      	b.n	38fe <get_date_time+0x5e>
		if (leap){
    38ca:	693b      	ldr	r3, [r7, #16]
    38cc:	2b00      	cmp	r3, #0
    38ce:	d006      	beq.n	38de <get_date_time+0x3e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    38d0:	697b      	ldr	r3, [r7, #20]
    38d2:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    38d6:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    38da:	617b      	str	r3, [r7, #20]
    38dc:	e003      	b.n	38e6 <get_date_time+0x46>
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    38de:	697a      	ldr	r2, [r7, #20]
    38e0:	4b59      	ldr	r3, [pc, #356]	; (3a48 <get_date_time+0x1a8>)
    38e2:	4413      	add	r3, r2
    38e4:	617b      	str	r3, [r7, #20]
		}
		dt->year++;
    38e6:	687b      	ldr	r3, [r7, #4]
    38e8:	891b      	ldrh	r3, [r3, #8]
    38ea:	3301      	adds	r3, #1
    38ec:	b29a      	uxth	r2, r3
    38ee:	687b      	ldr	r3, [r7, #4]
    38f0:	811a      	strh	r2, [r3, #8]
		leap=leap_year(dt->year);
    38f2:	687b      	ldr	r3, [r7, #4]
    38f4:	891b      	ldrh	r3, [r3, #8]
    38f6:	4618      	mov	r0, r3
    38f8:	f7ff ff82 	bl	3800 <leap_year>
    38fc:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    38fe:	693b      	ldr	r3, [r7, #16]
    3900:	2b00      	cmp	r3, #0
    3902:	d103      	bne.n	390c <get_date_time+0x6c>
    3904:	697b      	ldr	r3, [r7, #20]
    3906:	4a51      	ldr	r2, [pc, #324]	; (3a4c <get_date_time+0x1ac>)
    3908:	4293      	cmp	r3, r2
    390a:	d8de      	bhi.n	38ca <get_date_time+0x2a>
    390c:	693b      	ldr	r3, [r7, #16]
    390e:	2b00      	cmp	r3, #0
    3910:	d003      	beq.n	391a <get_date_time+0x7a>
    3912:	697b      	ldr	r3, [r7, #20]
    3914:	4a4e      	ldr	r2, [pc, #312]	; (3a50 <get_date_time+0x1b0>)
    3916:	4293      	cmp	r3, r2
    3918:	d8d7      	bhi.n	38ca <get_date_time+0x2a>
	}//while
	dt->month=1;
    391a:	687a      	ldr	r2, [r7, #4]
    391c:	8853      	ldrh	r3, [r2, #2]
    391e:	2101      	movs	r1, #1
    3920:	f361 1389 	bfi	r3, r1, #6, #4
    3924:	8053      	strh	r3, [r2, #2]
	dt->day=1;
    3926:	687a      	ldr	r2, [r7, #4]
    3928:	7893      	ldrb	r3, [r2, #2]
    392a:	2101      	movs	r1, #1
    392c:	f361 0345 	bfi	r3, r1, #1, #5
    3930:	7093      	strb	r3, [r2, #2]
	dt->hour=0;
    3932:	687a      	ldr	r2, [r7, #4]
    3934:	6813      	ldr	r3, [r2, #0]
    3936:	f36f 3310 	bfc	r3, #12, #5
    393a:	6013      	str	r3, [r2, #0]
	dt->minute=0;
    393c:	687a      	ldr	r2, [r7, #4]
    393e:	8813      	ldrh	r3, [r2, #0]
    3940:	f36f 138b 	bfc	r3, #6, #6
    3944:	8013      	strh	r3, [r2, #0]
	dt->second=0;
    3946:	687a      	ldr	r2, [r7, #4]
    3948:	7813      	ldrb	r3, [r2, #0]
    394a:	f36f 0305 	bfc	r3, #0, #6
    394e:	7013      	strb	r3, [r2, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    3950:	e011      	b.n	3976 <get_date_time+0xd6>
		dt->month++;
    3952:	687b      	ldr	r3, [r7, #4]
    3954:	885b      	ldrh	r3, [r3, #2]
    3956:	f3c3 1383 	ubfx	r3, r3, #6, #4
    395a:	b2db      	uxtb	r3, r3
    395c:	3301      	adds	r3, #1
    395e:	f003 030f 	and.w	r3, r3, #15
    3962:	b2d9      	uxtb	r1, r3
    3964:	687a      	ldr	r2, [r7, #4]
    3966:	8853      	ldrh	r3, [r2, #2]
    3968:	f361 1389 	bfi	r3, r1, #6, #4
    396c:	8053      	strh	r3, [r2, #2]
		rtc_cntr-=sec;
    396e:	697a      	ldr	r2, [r7, #20]
    3970:	68fb      	ldr	r3, [r7, #12]
    3972:	1ad3      	subs	r3, r2, r3
    3974:	617b      	str	r3, [r7, #20]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    3976:	687b      	ldr	r3, [r7, #4]
    3978:	885b      	ldrh	r3, [r3, #2]
    397a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    397e:	b2db      	uxtb	r3, r3
    3980:	4619      	mov	r1, r3
    3982:	6938      	ldr	r0, [r7, #16]
    3984:	f7ff ff68 	bl	3858 <sec_per_month>
    3988:	60f8      	str	r0, [r7, #12]
    398a:	68fa      	ldr	r2, [r7, #12]
    398c:	697b      	ldr	r3, [r7, #20]
    398e:	429a      	cmp	r2, r3
    3990:	d3df      	bcc.n	3952 <get_date_time+0xb2>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    3992:	697b      	ldr	r3, [r7, #20]
    3994:	4a2f      	ldr	r2, [pc, #188]	; (3a54 <get_date_time+0x1b4>)
    3996:	fba2 2303 	umull	r2, r3, r2, r3
    399a:	0c1b      	lsrs	r3, r3, #16
    399c:	b2db      	uxtb	r3, r3
    399e:	3301      	adds	r3, #1
    39a0:	b2db      	uxtb	r3, r3
    39a2:	f003 031f 	and.w	r3, r3, #31
    39a6:	b2d9      	uxtb	r1, r3
    39a8:	687a      	ldr	r2, [r7, #4]
    39aa:	7893      	ldrb	r3, [r2, #2]
    39ac:	f361 0345 	bfi	r3, r1, #1, #5
    39b0:	7093      	strb	r3, [r2, #2]
	rtc_cntr%=SEC_PER_DAY;
    39b2:	697b      	ldr	r3, [r7, #20]
    39b4:	4a27      	ldr	r2, [pc, #156]	; (3a54 <get_date_time+0x1b4>)
    39b6:	fba2 1203 	umull	r1, r2, r2, r3
    39ba:	0c12      	lsrs	r2, r2, #16
    39bc:	4926      	ldr	r1, [pc, #152]	; (3a58 <get_date_time+0x1b8>)
    39be:	fb01 f202 	mul.w	r2, r1, r2
    39c2:	1a9b      	subs	r3, r3, r2
    39c4:	617b      	str	r3, [r7, #20]
	dt->hour=rtc_cntr/SEC_PER_HR;
    39c6:	697b      	ldr	r3, [r7, #20]
    39c8:	4a24      	ldr	r2, [pc, #144]	; (3a5c <get_date_time+0x1bc>)
    39ca:	fba2 2303 	umull	r2, r3, r2, r3
    39ce:	0adb      	lsrs	r3, r3, #11
    39d0:	b2db      	uxtb	r3, r3
    39d2:	f003 031f 	and.w	r3, r3, #31
    39d6:	b2d9      	uxtb	r1, r3
    39d8:	687a      	ldr	r2, [r7, #4]
    39da:	6813      	ldr	r3, [r2, #0]
    39dc:	f361 3310 	bfi	r3, r1, #12, #5
    39e0:	6013      	str	r3, [r2, #0]
	rtc_cntr%=SEC_PER_HR;
    39e2:	697b      	ldr	r3, [r7, #20]
    39e4:	4a1d      	ldr	r2, [pc, #116]	; (3a5c <get_date_time+0x1bc>)
    39e6:	fba2 1203 	umull	r1, r2, r2, r3
    39ea:	0ad2      	lsrs	r2, r2, #11
    39ec:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    39f0:	fb01 f202 	mul.w	r2, r1, r2
    39f4:	1a9b      	subs	r3, r3, r2
    39f6:	617b      	str	r3, [r7, #20]
	dt->minute=rtc_cntr/SEC_PER_MIN;
    39f8:	697b      	ldr	r3, [r7, #20]
    39fa:	4a19      	ldr	r2, [pc, #100]	; (3a60 <get_date_time+0x1c0>)
    39fc:	fba2 2303 	umull	r2, r3, r2, r3
    3a00:	095b      	lsrs	r3, r3, #5
    3a02:	b2db      	uxtb	r3, r3
    3a04:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3a08:	b2d9      	uxtb	r1, r3
    3a0a:	687a      	ldr	r2, [r7, #4]
    3a0c:	8813      	ldrh	r3, [r2, #0]
    3a0e:	f361 138b 	bfi	r3, r1, #6, #6
    3a12:	8013      	strh	r3, [r2, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    3a14:	6979      	ldr	r1, [r7, #20]
    3a16:	4b12      	ldr	r3, [pc, #72]	; (3a60 <get_date_time+0x1c0>)
    3a18:	fba3 2301 	umull	r2, r3, r3, r1
    3a1c:	095a      	lsrs	r2, r3, #5
    3a1e:	4613      	mov	r3, r2
    3a20:	011b      	lsls	r3, r3, #4
    3a22:	1a9b      	subs	r3, r3, r2
    3a24:	009b      	lsls	r3, r3, #2
    3a26:	1aca      	subs	r2, r1, r3
    3a28:	b2d3      	uxtb	r3, r2
    3a2a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3a2e:	b2d9      	uxtb	r1, r3
    3a30:	687a      	ldr	r2, [r7, #4]
    3a32:	7813      	ldrb	r3, [r2, #0]
    3a34:	f361 0305 	bfi	r3, r1, #0, #6
    3a38:	7013      	strb	r3, [r2, #0]
}
    3a3a:	bf00      	nop
    3a3c:	3718      	adds	r7, #24
    3a3e:	46bd      	mov	sp, r7
    3a40:	bd80      	pop	{r7, pc}
    3a42:	bf00      	nop
    3a44:	40002800 	.word	0x40002800
    3a48:	fe1ecc80 	.word	0xfe1ecc80
    3a4c:	01e1337f 	.word	0x01e1337f
    3a50:	01e284ff 	.word	0x01e284ff
    3a54:	c22e4507 	.word	0xc22e4507
    3a58:	00015180 	.word	0x00015180
    3a5c:	91a2b3c5 	.word	0x91a2b3c5
    3a60:	88888889 	.word	0x88888889

00003a64 <set_date_time>:

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    3a64:	b580      	push	{r7, lr}
    3a66:	b086      	sub	sp, #24
    3a68:	af00      	add	r7, sp, #0
    3a6a:	6078      	str	r0, [r7, #4]
	uint32_t i,rtc_cntr=0;
    3a6c:	2300      	movs	r3, #0
    3a6e:	613b      	str	r3, [r7, #16]
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    3a70:	687b      	ldr	r3, [r7, #4]
    3a72:	891b      	ldrh	r3, [r3, #8]
    3a74:	f240 72b1 	movw	r2, #1969	; 0x7b1
    3a78:	4293      	cmp	r3, r2
    3a7a:	d803      	bhi.n	3a84 <set_date_time+0x20>
    3a7c:	687b      	ldr	r3, [r7, #4]
    3a7e:	f240 72b2 	movw	r2, #1970	; 0x7b2
    3a82:	811a      	strh	r2, [r3, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    3a84:	687b      	ldr	r3, [r7, #4]
    3a86:	891b      	ldrh	r3, [r3, #8]
    3a88:	f640 023a 	movw	r2, #2106	; 0x83a
    3a8c:	4293      	cmp	r3, r2
    3a8e:	d903      	bls.n	3a98 <set_date_time+0x34>
    3a90:	687b      	ldr	r3, [r7, #4]
    3a92:	f640 023a 	movw	r2, #2106	; 0x83a
    3a96:	811a      	strh	r2, [r3, #8]
	leap=leap_year(dt->year);
    3a98:	687b      	ldr	r3, [r7, #4]
    3a9a:	891b      	ldrh	r3, [r3, #8]
    3a9c:	4618      	mov	r0, r3
    3a9e:	f7ff feaf 	bl	3800 <leap_year>
    3aa2:	60f8      	str	r0, [r7, #12]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    3aa4:	f240 73b2 	movw	r3, #1970	; 0x7b2
    3aa8:	617b      	str	r3, [r7, #20]
    3aaa:	e013      	b.n	3ad4 <set_date_time+0x70>
		if (leap_year(i)){
    3aac:	6978      	ldr	r0, [r7, #20]
    3aae:	f7ff fea7 	bl	3800 <leap_year>
    3ab2:	4603      	mov	r3, r0
    3ab4:	2b00      	cmp	r3, #0
    3ab6:	d006      	beq.n	3ac6 <set_date_time+0x62>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    3ab8:	693b      	ldr	r3, [r7, #16]
    3aba:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    3abe:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    3ac2:	613b      	str	r3, [r7, #16]
    3ac4:	e003      	b.n	3ace <set_date_time+0x6a>
		}else{
			rtc_cntr+=SEC_PER_YEAR;
    3ac6:	693a      	ldr	r2, [r7, #16]
    3ac8:	4b42      	ldr	r3, [pc, #264]	; (3bd4 <set_date_time+0x170>)
    3aca:	4413      	add	r3, r2
    3acc:	613b      	str	r3, [r7, #16]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    3ace:	697b      	ldr	r3, [r7, #20]
    3ad0:	3301      	adds	r3, #1
    3ad2:	617b      	str	r3, [r7, #20]
    3ad4:	687b      	ldr	r3, [r7, #4]
    3ad6:	891b      	ldrh	r3, [r3, #8]
    3ad8:	461a      	mov	r2, r3
    3ada:	697b      	ldr	r3, [r7, #20]
    3adc:	429a      	cmp	r2, r3
    3ade:	d8e5      	bhi.n	3aac <set_date_time+0x48>
		}
	}
	for (i=1;i<dt->month;i++){
    3ae0:	2301      	movs	r3, #1
    3ae2:	617b      	str	r3, [r7, #20]
    3ae4:	e00a      	b.n	3afc <set_date_time+0x98>
		rtc_cntr+=sec_per_month(leap,i);
    3ae6:	6979      	ldr	r1, [r7, #20]
    3ae8:	68f8      	ldr	r0, [r7, #12]
    3aea:	f7ff feb5 	bl	3858 <sec_per_month>
    3aee:	4602      	mov	r2, r0
    3af0:	693b      	ldr	r3, [r7, #16]
    3af2:	4413      	add	r3, r2
    3af4:	613b      	str	r3, [r7, #16]
	for (i=1;i<dt->month;i++){
    3af6:	697b      	ldr	r3, [r7, #20]
    3af8:	3301      	adds	r3, #1
    3afa:	617b      	str	r3, [r7, #20]
    3afc:	687b      	ldr	r3, [r7, #4]
    3afe:	885b      	ldrh	r3, [r3, #2]
    3b00:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3b04:	b2db      	uxtb	r3, r3
    3b06:	461a      	mov	r2, r3
    3b08:	697b      	ldr	r3, [r7, #20]
    3b0a:	429a      	cmp	r2, r3
    3b0c:	d8eb      	bhi.n	3ae6 <set_date_time+0x82>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    3b0e:	687b      	ldr	r3, [r7, #4]
    3b10:	789b      	ldrb	r3, [r3, #2]
    3b12:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3b16:	b2db      	uxtb	r3, r3
    3b18:	3b01      	subs	r3, #1
    3b1a:	4a2f      	ldr	r2, [pc, #188]	; (3bd8 <set_date_time+0x174>)
    3b1c:	fb02 f303 	mul.w	r3, r2, r3
    3b20:	461a      	mov	r2, r3
    3b22:	693b      	ldr	r3, [r7, #16]
    3b24:	4413      	add	r3, r2
    3b26:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    3b28:	687b      	ldr	r3, [r7, #4]
    3b2a:	681b      	ldr	r3, [r3, #0]
    3b2c:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3b30:	b2db      	uxtb	r3, r3
    3b32:	461a      	mov	r2, r3
    3b34:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    3b38:	fb03 f302 	mul.w	r3, r3, r2
    3b3c:	461a      	mov	r2, r3
    3b3e:	693b      	ldr	r3, [r7, #16]
    3b40:	4413      	add	r3, r2
    3b42:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    3b44:	687b      	ldr	r3, [r7, #4]
    3b46:	881b      	ldrh	r3, [r3, #0]
    3b48:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3b4c:	b2db      	uxtb	r3, r3
    3b4e:	461a      	mov	r2, r3
    3b50:	4613      	mov	r3, r2
    3b52:	011b      	lsls	r3, r3, #4
    3b54:	1a9b      	subs	r3, r3, r2
    3b56:	009b      	lsls	r3, r3, #2
    3b58:	461a      	mov	r2, r3
    3b5a:	693b      	ldr	r3, [r7, #16]
    3b5c:	4413      	add	r3, r2
    3b5e:	613b      	str	r3, [r7, #16]
	rtc_cntr+=dt->second;
    3b60:	687b      	ldr	r3, [r7, #4]
    3b62:	781b      	ldrb	r3, [r3, #0]
    3b64:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3b68:	b2db      	uxtb	r3, r3
    3b6a:	461a      	mov	r2, r3
    3b6c:	693b      	ldr	r3, [r7, #16]
    3b6e:	4413      	add	r3, r2
    3b70:	613b      	str	r3, [r7, #16]
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3b72:	4a1a      	ldr	r2, [pc, #104]	; (3bdc <set_date_time+0x178>)
    3b74:	4b19      	ldr	r3, [pc, #100]	; (3bdc <set_date_time+0x178>)
    3b76:	69db      	ldr	r3, [r3, #28]
    3b78:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3b7c:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    3b7e:	4a18      	ldr	r2, [pc, #96]	; (3be0 <set_date_time+0x17c>)
    3b80:	4b17      	ldr	r3, [pc, #92]	; (3be0 <set_date_time+0x17c>)
    3b82:	681b      	ldr	r3, [r3, #0]
    3b84:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3b88:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    3b8a:	4a16      	ldr	r2, [pc, #88]	; (3be4 <set_date_time+0x180>)
    3b8c:	4b15      	ldr	r3, [pc, #84]	; (3be4 <set_date_time+0x180>)
    3b8e:	685b      	ldr	r3, [r3, #4]
    3b90:	f043 0310 	orr.w	r3, r3, #16
    3b94:	6053      	str	r3, [r2, #4]
	RTC->CNTH=rtc_cntr>>16;
    3b96:	4a13      	ldr	r2, [pc, #76]	; (3be4 <set_date_time+0x180>)
    3b98:	693b      	ldr	r3, [r7, #16]
    3b9a:	0c1b      	lsrs	r3, r3, #16
    3b9c:	6193      	str	r3, [r2, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    3b9e:	4a11      	ldr	r2, [pc, #68]	; (3be4 <set_date_time+0x180>)
    3ba0:	693b      	ldr	r3, [r7, #16]
    3ba2:	b29b      	uxth	r3, r3
    3ba4:	61d3      	str	r3, [r2, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    3ba6:	4a0f      	ldr	r2, [pc, #60]	; (3be4 <set_date_time+0x180>)
    3ba8:	4b0e      	ldr	r3, [pc, #56]	; (3be4 <set_date_time+0x180>)
    3baa:	685b      	ldr	r3, [r3, #4]
    3bac:	f023 0310 	bic.w	r3, r3, #16
    3bb0:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    3bb2:	bf00      	nop
    3bb4:	4b0b      	ldr	r3, [pc, #44]	; (3be4 <set_date_time+0x180>)
    3bb6:	685b      	ldr	r3, [r3, #4]
    3bb8:	f003 0320 	and.w	r3, r3, #32
    3bbc:	2b00      	cmp	r3, #0
    3bbe:	d0f9      	beq.n	3bb4 <set_date_time+0x150>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    3bc0:	4a07      	ldr	r2, [pc, #28]	; (3be0 <set_date_time+0x17c>)
    3bc2:	4b07      	ldr	r3, [pc, #28]	; (3be0 <set_date_time+0x17c>)
    3bc4:	681b      	ldr	r3, [r3, #0]
    3bc6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3bca:	6013      	str	r3, [r2, #0]
}
    3bcc:	bf00      	nop
    3bce:	3718      	adds	r7, #24
    3bd0:	46bd      	mov	sp, r7
    3bd2:	bd80      	pop	{r7, pc}
    3bd4:	01e13380 	.word	0x01e13380
    3bd8:	00015180 	.word	0x00015180
    3bdc:	40021000 	.word	0x40021000
    3be0:	40007000 	.word	0x40007000
    3be4:	40002800 	.word	0x40002800

00003be8 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    3be8:	b580      	push	{r7, lr}
    3bea:	b082      	sub	sp, #8
    3bec:	af00      	add	r7, sp, #0
    3bee:	6078      	str	r0, [r7, #4]
    3bf0:	6039      	str	r1, [r7, #0]
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    3bf2:	4b4a      	ldr	r3, [pc, #296]	; (3d1c <rtc_init+0x134>)
    3bf4:	685b      	ldr	r3, [r3, #4]
    3bf6:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3bfa:	4293      	cmp	r3, r2
    3bfc:	f000 8082 	beq.w	3d04 <rtc_init+0x11c>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3c00:	4a47      	ldr	r2, [pc, #284]	; (3d20 <rtc_init+0x138>)
    3c02:	4b47      	ldr	r3, [pc, #284]	; (3d20 <rtc_init+0x138>)
    3c04:	69db      	ldr	r3, [r3, #28]
    3c06:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3c0a:	61d3      	str	r3, [r2, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    3c0c:	4a45      	ldr	r2, [pc, #276]	; (3d24 <rtc_init+0x13c>)
    3c0e:	4b45      	ldr	r3, [pc, #276]	; (3d24 <rtc_init+0x13c>)
    3c10:	681b      	ldr	r3, [r3, #0]
    3c12:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3c16:	6013      	str	r3, [r2, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    3c18:	4a41      	ldr	r2, [pc, #260]	; (3d20 <rtc_init+0x138>)
    3c1a:	4b41      	ldr	r3, [pc, #260]	; (3d20 <rtc_init+0x138>)
    3c1c:	6a1b      	ldr	r3, [r3, #32]
    3c1e:	f043 0301 	orr.w	r3, r3, #1
    3c22:	6213      	str	r3, [r2, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    3c24:	bf00      	nop
    3c26:	4b3e      	ldr	r3, [pc, #248]	; (3d20 <rtc_init+0x138>)
    3c28:	6a1b      	ldr	r3, [r3, #32]
    3c2a:	f003 0302 	and.w	r3, r3, #2
    3c2e:	2b00      	cmp	r3, #0
    3c30:	d0f9      	beq.n	3c26 <rtc_init+0x3e>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    3c32:	4a3b      	ldr	r2, [pc, #236]	; (3d20 <rtc_init+0x138>)
    3c34:	4b3a      	ldr	r3, [pc, #232]	; (3d20 <rtc_init+0x138>)
    3c36:	6a1b      	ldr	r3, [r3, #32]
    3c38:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    3c3c:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    3c3e:	bf00      	nop
    3c40:	4b39      	ldr	r3, [pc, #228]	; (3d28 <rtc_init+0x140>)
    3c42:	685b      	ldr	r3, [r3, #4]
    3c44:	f003 0308 	and.w	r3, r3, #8
    3c48:	2b00      	cmp	r3, #0
    3c4a:	d0f9      	beq.n	3c40 <rtc_init+0x58>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    3c4c:	bf00      	nop
    3c4e:	4b36      	ldr	r3, [pc, #216]	; (3d28 <rtc_init+0x140>)
    3c50:	685b      	ldr	r3, [r3, #4]
    3c52:	f003 0320 	and.w	r3, r3, #32
    3c56:	2b00      	cmp	r3, #0
    3c58:	d0f9      	beq.n	3c4e <rtc_init+0x66>
		RTC->CRL|=RTC_CRL_CNF;
    3c5a:	4a33      	ldr	r2, [pc, #204]	; (3d28 <rtc_init+0x140>)
    3c5c:	4b32      	ldr	r3, [pc, #200]	; (3d28 <rtc_init+0x140>)
    3c5e:	685b      	ldr	r3, [r3, #4]
    3c60:	f043 0310 	orr.w	r3, r3, #16
    3c64:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    3c66:	bf00      	nop
    3c68:	4b2f      	ldr	r3, [pc, #188]	; (3d28 <rtc_init+0x140>)
    3c6a:	685b      	ldr	r3, [r3, #4]
    3c6c:	f003 0320 	and.w	r3, r3, #32
    3c70:	2b00      	cmp	r3, #0
    3c72:	d0f9      	beq.n	3c68 <rtc_init+0x80>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    3c74:	492c      	ldr	r1, [pc, #176]	; (3d28 <rtc_init+0x140>)
    3c76:	4b2c      	ldr	r3, [pc, #176]	; (3d28 <rtc_init+0x140>)
    3c78:	681a      	ldr	r2, [r3, #0]
    3c7a:	683b      	ldr	r3, [r7, #0]
    3c7c:	4313      	orrs	r3, r2
    3c7e:	600b      	str	r3, [r1, #0]
		_wait_rtc_write();
    3c80:	bf00      	nop
    3c82:	4b29      	ldr	r3, [pc, #164]	; (3d28 <rtc_init+0x140>)
    3c84:	685b      	ldr	r3, [r3, #4]
    3c86:	f003 0320 	and.w	r3, r3, #32
    3c8a:	2b00      	cmp	r3, #0
    3c8c:	d0f9      	beq.n	3c82 <rtc_init+0x9a>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    3c8e:	4a26      	ldr	r2, [pc, #152]	; (3d28 <rtc_init+0x140>)
    3c90:	687b      	ldr	r3, [r7, #4]
    3c92:	03db      	lsls	r3, r3, #15
    3c94:	4925      	ldr	r1, [pc, #148]	; (3d2c <rtc_init+0x144>)
    3c96:	fba1 1303 	umull	r1, r3, r1, r3
    3c9a:	099b      	lsrs	r3, r3, #6
    3c9c:	3b01      	subs	r3, #1
    3c9e:	b29b      	uxth	r3, r3
    3ca0:	60d3      	str	r3, [r2, #12]
		_wait_rtc_write();
    3ca2:	bf00      	nop
    3ca4:	4b20      	ldr	r3, [pc, #128]	; (3d28 <rtc_init+0x140>)
    3ca6:	685b      	ldr	r3, [r3, #4]
    3ca8:	f003 0320 	and.w	r3, r3, #32
    3cac:	2b00      	cmp	r3, #0
    3cae:	d0f9      	beq.n	3ca4 <rtc_init+0xbc>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    3cb0:	4a1d      	ldr	r2, [pc, #116]	; (3d28 <rtc_init+0x140>)
    3cb2:	687b      	ldr	r3, [r7, #4]
    3cb4:	03db      	lsls	r3, r3, #15
    3cb6:	491d      	ldr	r1, [pc, #116]	; (3d2c <rtc_init+0x144>)
    3cb8:	fba1 1303 	umull	r1, r3, r1, r3
    3cbc:	099b      	lsrs	r3, r3, #6
    3cbe:	3b01      	subs	r3, #1
    3cc0:	0c1b      	lsrs	r3, r3, #16
    3cc2:	f003 030f 	and.w	r3, r3, #15
    3cc6:	6093      	str	r3, [r2, #8]
		_wait_rtc_write();
    3cc8:	bf00      	nop
    3cca:	4b17      	ldr	r3, [pc, #92]	; (3d28 <rtc_init+0x140>)
    3ccc:	685b      	ldr	r3, [r3, #4]
    3cce:	f003 0320 	and.w	r3, r3, #32
    3cd2:	2b00      	cmp	r3, #0
    3cd4:	d0f9      	beq.n	3cca <rtc_init+0xe2>
		BKP->DR[0]=RTC_ACCESS_CODE;
    3cd6:	4b11      	ldr	r3, [pc, #68]	; (3d1c <rtc_init+0x134>)
    3cd8:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3cdc:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    3cde:	4a12      	ldr	r2, [pc, #72]	; (3d28 <rtc_init+0x140>)
    3ce0:	4b11      	ldr	r3, [pc, #68]	; (3d28 <rtc_init+0x140>)
    3ce2:	685b      	ldr	r3, [r3, #4]
    3ce4:	f023 0310 	bic.w	r3, r3, #16
    3ce8:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    3cea:	bf00      	nop
    3cec:	4b0e      	ldr	r3, [pc, #56]	; (3d28 <rtc_init+0x140>)
    3cee:	685b      	ldr	r3, [r3, #4]
    3cf0:	f003 0320 	and.w	r3, r3, #32
    3cf4:	2b00      	cmp	r3, #0
    3cf6:	d0f9      	beq.n	3cec <rtc_init+0x104>
		PWR->CR&=~PWR_CR_DBP;
    3cf8:	4a0a      	ldr	r2, [pc, #40]	; (3d24 <rtc_init+0x13c>)
    3cfa:	4b0a      	ldr	r3, [pc, #40]	; (3d24 <rtc_init+0x13c>)
    3cfc:	681b      	ldr	r3, [r3, #0]
    3cfe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3d02:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    3d04:	210f      	movs	r1, #15
    3d06:	2003      	movs	r0, #3
    3d08:	f7ff fd4a 	bl	37a0 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    3d0c:	2003      	movs	r0, #3
    3d0e:	f7ff fc8d 	bl	362c <enable_interrupt>
}
    3d12:	bf00      	nop
    3d14:	3708      	adds	r7, #8
    3d16:	46bd      	mov	sp, r7
    3d18:	bd80      	pop	{r7, pc}
    3d1a:	bf00      	nop
    3d1c:	40006c00 	.word	0x40006c00
    3d20:	40021000 	.word	0x40021000
    3d24:	40007000 	.word	0x40007000
    3d28:	40002800 	.word	0x40002800
    3d2c:	10624dd3 	.word	0x10624dd3

00003d30 <reset_backup_domain>:

// réinitialise le backup domain
inline void reset_backup_domain(){
    3d30:	b480      	push	{r7}
    3d32:	af00      	add	r7, sp, #0
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3d34:	4a0a      	ldr	r2, [pc, #40]	; (3d60 <reset_backup_domain+0x30>)
    3d36:	4b0a      	ldr	r3, [pc, #40]	; (3d60 <reset_backup_domain+0x30>)
    3d38:	69db      	ldr	r3, [r3, #28]
    3d3a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3d3e:	61d3      	str	r3, [r2, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    3d40:	4a07      	ldr	r2, [pc, #28]	; (3d60 <reset_backup_domain+0x30>)
    3d42:	4b07      	ldr	r3, [pc, #28]	; (3d60 <reset_backup_domain+0x30>)
    3d44:	6a1b      	ldr	r3, [r3, #32]
    3d46:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    3d4a:	6213      	str	r3, [r2, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    3d4c:	4a04      	ldr	r2, [pc, #16]	; (3d60 <reset_backup_domain+0x30>)
    3d4e:	4b04      	ldr	r3, [pc, #16]	; (3d60 <reset_backup_domain+0x30>)
    3d50:	6a1b      	ldr	r3, [r3, #32]
    3d52:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    3d56:	6213      	str	r3, [r2, #32]
}
    3d58:	bf00      	nop
    3d5a:	46bd      	mov	sp, r7
    3d5c:	bc80      	pop	{r7}
    3d5e:	4770      	bx	lr
    3d60:	40021000 	.word	0x40021000

00003d64 <rtc_clock_trim>:

// ajustement de la fréquence du clock RTC pour améliorer
// la précision.
void rtc_clock_trim(int trim){
    3d64:	b480      	push	{r7}
    3d66:	b083      	sub	sp, #12
    3d68:	af00      	add	r7, sp, #0
    3d6a:	6078      	str	r0, [r7, #4]
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3d6c:	4a34      	ldr	r2, [pc, #208]	; (3e40 <rtc_clock_trim+0xdc>)
    3d6e:	4b34      	ldr	r3, [pc, #208]	; (3e40 <rtc_clock_trim+0xdc>)
    3d70:	69db      	ldr	r3, [r3, #28]
    3d72:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3d76:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    3d78:	bf00      	nop
    3d7a:	4b32      	ldr	r3, [pc, #200]	; (3e44 <rtc_clock_trim+0xe0>)
    3d7c:	685b      	ldr	r3, [r3, #4]
    3d7e:	f003 0308 	and.w	r3, r3, #8
    3d82:	2b00      	cmp	r3, #0
    3d84:	d0f9      	beq.n	3d7a <rtc_clock_trim+0x16>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    3d86:	4a30      	ldr	r2, [pc, #192]	; (3e48 <rtc_clock_trim+0xe4>)
    3d88:	4b2f      	ldr	r3, [pc, #188]	; (3e48 <rtc_clock_trim+0xe4>)
    3d8a:	681b      	ldr	r3, [r3, #0]
    3d8c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3d90:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    3d92:	4a2c      	ldr	r2, [pc, #176]	; (3e44 <rtc_clock_trim+0xe0>)
    3d94:	4b2b      	ldr	r3, [pc, #172]	; (3e44 <rtc_clock_trim+0xe0>)
    3d96:	685b      	ldr	r3, [r3, #4]
    3d98:	f043 0310 	orr.w	r3, r3, #16
    3d9c:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    3d9e:	4a2b      	ldr	r2, [pc, #172]	; (3e4c <rtc_clock_trim+0xe8>)
    3da0:	4b2a      	ldr	r3, [pc, #168]	; (3e4c <rtc_clock_trim+0xe8>)
    3da2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3da4:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    3da8:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    3daa:	687b      	ldr	r3, [r7, #4]
    3dac:	2b00      	cmp	r3, #0
    3dae:	d10a      	bne.n	3dc6 <rtc_clock_trim+0x62>
		BKP->RTCCR=0;
    3db0:	4b26      	ldr	r3, [pc, #152]	; (3e4c <rtc_clock_trim+0xe8>)
    3db2:	2200      	movs	r2, #0
    3db4:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    3db6:	4b23      	ldr	r3, [pc, #140]	; (3e44 <rtc_clock_trim+0xe0>)
    3db8:	f647 72ff 	movw	r2, #32767	; 0x7fff
    3dbc:	60da      	str	r2, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    3dbe:	4b21      	ldr	r3, [pc, #132]	; (3e44 <rtc_clock_trim+0xe0>)
    3dc0:	2200      	movs	r2, #0
    3dc2:	609a      	str	r2, [r3, #8]
    3dc4:	e023      	b.n	3e0e <rtc_clock_trim+0xaa>
	}else if (trim>0){// trop rapide on ralentie
    3dc6:	687b      	ldr	r3, [r7, #4]
    3dc8:	2b00      	cmp	r3, #0
    3dca:	dd0a      	ble.n	3de2 <rtc_clock_trim+0x7e>
		trim&=0x7f;
    3dcc:	687b      	ldr	r3, [r7, #4]
    3dce:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3dd2:	607b      	str	r3, [r7, #4]
		BKP->RTCCR|=trim;
    3dd4:	491d      	ldr	r1, [pc, #116]	; (3e4c <rtc_clock_trim+0xe8>)
    3dd6:	4b1d      	ldr	r3, [pc, #116]	; (3e4c <rtc_clock_trim+0xe8>)
    3dd8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    3dda:	687b      	ldr	r3, [r7, #4]
    3ddc:	4313      	orrs	r3, r2
    3dde:	62cb      	str	r3, [r1, #44]	; 0x2c
    3de0:	e015      	b.n	3e0e <rtc_clock_trim+0xaa>
	}else{// trop lent on accélère.
		trim=-trim;
    3de2:	687b      	ldr	r3, [r7, #4]
    3de4:	425b      	negs	r3, r3
    3de6:	607b      	str	r3, [r7, #4]
		if (trim>0x7f) {trim=0x7f;}
    3de8:	687b      	ldr	r3, [r7, #4]
    3dea:	2b7f      	cmp	r3, #127	; 0x7f
    3dec:	dd01      	ble.n	3df2 <rtc_clock_trim+0x8e>
    3dee:	237f      	movs	r3, #127	; 0x7f
    3df0:	607b      	str	r3, [r7, #4]
		BKP->RTCCR=0;
    3df2:	4b16      	ldr	r3, [pc, #88]	; (3e4c <rtc_clock_trim+0xe8>)
    3df4:	2200      	movs	r2, #0
    3df6:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    3df8:	4a12      	ldr	r2, [pc, #72]	; (3e44 <rtc_clock_trim+0xe0>)
    3dfa:	687b      	ldr	r3, [r7, #4]
    3dfc:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    3e00:	33ff      	adds	r3, #255	; 0xff
    3e02:	f3c3 030e 	ubfx	r3, r3, #0, #15
    3e06:	60d3      	str	r3, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    3e08:	4b0e      	ldr	r3, [pc, #56]	; (3e44 <rtc_clock_trim+0xe0>)
    3e0a:	2200      	movs	r2, #0
    3e0c:	609a      	str	r2, [r3, #8]
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    3e0e:	4a0d      	ldr	r2, [pc, #52]	; (3e44 <rtc_clock_trim+0xe0>)
    3e10:	4b0c      	ldr	r3, [pc, #48]	; (3e44 <rtc_clock_trim+0xe0>)
    3e12:	685b      	ldr	r3, [r3, #4]
    3e14:	f023 0310 	bic.w	r3, r3, #16
    3e18:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    3e1a:	bf00      	nop
    3e1c:	4b09      	ldr	r3, [pc, #36]	; (3e44 <rtc_clock_trim+0xe0>)
    3e1e:	685b      	ldr	r3, [r3, #4]
    3e20:	f003 0320 	and.w	r3, r3, #32
    3e24:	2b00      	cmp	r3, #0
    3e26:	d0f9      	beq.n	3e1c <rtc_clock_trim+0xb8>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    3e28:	4a07      	ldr	r2, [pc, #28]	; (3e48 <rtc_clock_trim+0xe4>)
    3e2a:	4b07      	ldr	r3, [pc, #28]	; (3e48 <rtc_clock_trim+0xe4>)
    3e2c:	681b      	ldr	r3, [r3, #0]
    3e2e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3e32:	6013      	str	r3, [r2, #0]
}
    3e34:	bf00      	nop
    3e36:	370c      	adds	r7, #12
    3e38:	46bd      	mov	sp, r7
    3e3a:	bc80      	pop	{r7}
    3e3c:	4770      	bx	lr
    3e3e:	bf00      	nop
    3e40:	40021000 	.word	0x40021000
    3e44:	40002800 	.word	0x40002800
    3e48:	40007000 	.word	0x40007000
    3e4c:	40006c00 	.word	0x40006c00

00003e50 <rtc_set_alarm>:

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    3e50:	b480      	push	{r7}
    3e52:	b083      	sub	sp, #12
    3e54:	af00      	add	r7, sp, #0
    3e56:	6078      	str	r0, [r7, #4]
}
    3e58:	bf00      	nop
    3e5a:	370c      	adds	r7, #12
    3e5c:	46bd      	mov	sp, r7
    3e5e:	bc80      	pop	{r7}
    3e60:	4770      	bx	lr

00003e62 <str_to_date>:

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    3e62:	b580      	push	{r7, lr}
    3e64:	b084      	sub	sp, #16
    3e66:	af00      	add	r7, sp, #0
    3e68:	6078      	str	r0, [r7, #4]
    3e6a:	6039      	str	r1, [r7, #0]
	int i,n;
	
	i=0;
    3e6c:	2300      	movs	r3, #0
    3e6e:	60fb      	str	r3, [r7, #12]
	n=0;
    3e70:	2300      	movs	r3, #0
    3e72:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3e74:	e00f      	b.n	3e96 <str_to_date+0x34>
		n=n*10+date[i++]-'0';
    3e76:	68ba      	ldr	r2, [r7, #8]
    3e78:	4613      	mov	r3, r2
    3e7a:	009b      	lsls	r3, r3, #2
    3e7c:	4413      	add	r3, r2
    3e7e:	005b      	lsls	r3, r3, #1
    3e80:	4619      	mov	r1, r3
    3e82:	68fb      	ldr	r3, [r7, #12]
    3e84:	1c5a      	adds	r2, r3, #1
    3e86:	60fa      	str	r2, [r7, #12]
    3e88:	461a      	mov	r2, r3
    3e8a:	687b      	ldr	r3, [r7, #4]
    3e8c:	4413      	add	r3, r2
    3e8e:	781b      	ldrb	r3, [r3, #0]
    3e90:	440b      	add	r3, r1
    3e92:	3b30      	subs	r3, #48	; 0x30
    3e94:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3e96:	68fb      	ldr	r3, [r7, #12]
    3e98:	687a      	ldr	r2, [r7, #4]
    3e9a:	4413      	add	r3, r2
    3e9c:	781b      	ldrb	r3, [r3, #0]
    3e9e:	4618      	mov	r0, r3
    3ea0:	f7fd ffc5 	bl	1e2e <digit>
    3ea4:	4603      	mov	r3, r0
    3ea6:	2b00      	cmp	r3, #0
    3ea8:	d1e5      	bne.n	3e76 <str_to_date+0x14>
	}
	if ((i<4) || date[i]!='/') return 0;
    3eaa:	68fb      	ldr	r3, [r7, #12]
    3eac:	2b03      	cmp	r3, #3
    3eae:	dd05      	ble.n	3ebc <str_to_date+0x5a>
    3eb0:	68fb      	ldr	r3, [r7, #12]
    3eb2:	687a      	ldr	r2, [r7, #4]
    3eb4:	4413      	add	r3, r2
    3eb6:	781b      	ldrb	r3, [r3, #0]
    3eb8:	2b2f      	cmp	r3, #47	; 0x2f
    3eba:	d001      	beq.n	3ec0 <str_to_date+0x5e>
    3ebc:	2300      	movs	r3, #0
    3ebe:	e068      	b.n	3f92 <str_to_date+0x130>
	dt->year=n;
    3ec0:	68bb      	ldr	r3, [r7, #8]
    3ec2:	b29a      	uxth	r2, r3
    3ec4:	683b      	ldr	r3, [r7, #0]
    3ec6:	811a      	strh	r2, [r3, #8]
	i++;
    3ec8:	68fb      	ldr	r3, [r7, #12]
    3eca:	3301      	adds	r3, #1
    3ecc:	60fb      	str	r3, [r7, #12]
	n=0;
    3ece:	2300      	movs	r3, #0
    3ed0:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3ed2:	e00f      	b.n	3ef4 <str_to_date+0x92>
		n=n*10+date[i++]-'0';
    3ed4:	68ba      	ldr	r2, [r7, #8]
    3ed6:	4613      	mov	r3, r2
    3ed8:	009b      	lsls	r3, r3, #2
    3eda:	4413      	add	r3, r2
    3edc:	005b      	lsls	r3, r3, #1
    3ede:	4619      	mov	r1, r3
    3ee0:	68fb      	ldr	r3, [r7, #12]
    3ee2:	1c5a      	adds	r2, r3, #1
    3ee4:	60fa      	str	r2, [r7, #12]
    3ee6:	461a      	mov	r2, r3
    3ee8:	687b      	ldr	r3, [r7, #4]
    3eea:	4413      	add	r3, r2
    3eec:	781b      	ldrb	r3, [r3, #0]
    3eee:	440b      	add	r3, r1
    3ef0:	3b30      	subs	r3, #48	; 0x30
    3ef2:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3ef4:	68fb      	ldr	r3, [r7, #12]
    3ef6:	687a      	ldr	r2, [r7, #4]
    3ef8:	4413      	add	r3, r2
    3efa:	781b      	ldrb	r3, [r3, #0]
    3efc:	4618      	mov	r0, r3
    3efe:	f7fd ff96 	bl	1e2e <digit>
    3f02:	4603      	mov	r3, r0
    3f04:	2b00      	cmp	r3, #0
    3f06:	d1e5      	bne.n	3ed4 <str_to_date+0x72>
	}
	if ((i<7) || date[i]!='/') return 0;
    3f08:	68fb      	ldr	r3, [r7, #12]
    3f0a:	2b06      	cmp	r3, #6
    3f0c:	dd05      	ble.n	3f1a <str_to_date+0xb8>
    3f0e:	68fb      	ldr	r3, [r7, #12]
    3f10:	687a      	ldr	r2, [r7, #4]
    3f12:	4413      	add	r3, r2
    3f14:	781b      	ldrb	r3, [r3, #0]
    3f16:	2b2f      	cmp	r3, #47	; 0x2f
    3f18:	d001      	beq.n	3f1e <str_to_date+0xbc>
    3f1a:	2300      	movs	r3, #0
    3f1c:	e039      	b.n	3f92 <str_to_date+0x130>
	dt->month=n;
    3f1e:	68bb      	ldr	r3, [r7, #8]
    3f20:	b2db      	uxtb	r3, r3
    3f22:	f003 030f 	and.w	r3, r3, #15
    3f26:	b2d9      	uxtb	r1, r3
    3f28:	683a      	ldr	r2, [r7, #0]
    3f2a:	8853      	ldrh	r3, [r2, #2]
    3f2c:	f361 1389 	bfi	r3, r1, #6, #4
    3f30:	8053      	strh	r3, [r2, #2]
	n=0;
    3f32:	2300      	movs	r3, #0
    3f34:	60bb      	str	r3, [r7, #8]
	i++;
    3f36:	68fb      	ldr	r3, [r7, #12]
    3f38:	3301      	adds	r3, #1
    3f3a:	60fb      	str	r3, [r7, #12]
	while (digit(date[i])){
    3f3c:	e00f      	b.n	3f5e <str_to_date+0xfc>
		n=n*10+date[i++]-'0';
    3f3e:	68ba      	ldr	r2, [r7, #8]
    3f40:	4613      	mov	r3, r2
    3f42:	009b      	lsls	r3, r3, #2
    3f44:	4413      	add	r3, r2
    3f46:	005b      	lsls	r3, r3, #1
    3f48:	4619      	mov	r1, r3
    3f4a:	68fb      	ldr	r3, [r7, #12]
    3f4c:	1c5a      	adds	r2, r3, #1
    3f4e:	60fa      	str	r2, [r7, #12]
    3f50:	461a      	mov	r2, r3
    3f52:	687b      	ldr	r3, [r7, #4]
    3f54:	4413      	add	r3, r2
    3f56:	781b      	ldrb	r3, [r3, #0]
    3f58:	440b      	add	r3, r1
    3f5a:	3b30      	subs	r3, #48	; 0x30
    3f5c:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3f5e:	68fb      	ldr	r3, [r7, #12]
    3f60:	687a      	ldr	r2, [r7, #4]
    3f62:	4413      	add	r3, r2
    3f64:	781b      	ldrb	r3, [r3, #0]
    3f66:	4618      	mov	r0, r3
    3f68:	f7fd ff61 	bl	1e2e <digit>
    3f6c:	4603      	mov	r3, r0
    3f6e:	2b00      	cmp	r3, #0
    3f70:	d1e5      	bne.n	3f3e <str_to_date+0xdc>
	}
	if (i<10) return 0;
    3f72:	68fb      	ldr	r3, [r7, #12]
    3f74:	2b09      	cmp	r3, #9
    3f76:	dc01      	bgt.n	3f7c <str_to_date+0x11a>
    3f78:	2300      	movs	r3, #0
    3f7a:	e00a      	b.n	3f92 <str_to_date+0x130>
	dt->day=n;
    3f7c:	68bb      	ldr	r3, [r7, #8]
    3f7e:	b2db      	uxtb	r3, r3
    3f80:	f003 031f 	and.w	r3, r3, #31
    3f84:	b2d9      	uxtb	r1, r3
    3f86:	683a      	ldr	r2, [r7, #0]
    3f88:	7893      	ldrb	r3, [r2, #2]
    3f8a:	f361 0345 	bfi	r3, r1, #1, #5
    3f8e:	7093      	strb	r3, [r2, #2]
	return 1;
    3f90:	2301      	movs	r3, #1
}
    3f92:	4618      	mov	r0, r3
    3f94:	3710      	adds	r7, #16
    3f96:	46bd      	mov	sp, r7
    3f98:	bd80      	pop	{r7, pc}

00003f9a <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    3f9a:	b580      	push	{r7, lr}
    3f9c:	b084      	sub	sp, #16
    3f9e:	af00      	add	r7, sp, #0
    3fa0:	6078      	str	r0, [r7, #4]
    3fa2:	6039      	str	r1, [r7, #0]
	int i;
	unsigned char n;
	
	i=0;
    3fa4:	2300      	movs	r3, #0
    3fa6:	60fb      	str	r3, [r7, #12]
	n=0;
    3fa8:	2300      	movs	r3, #0
    3faa:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3fac:	e010      	b.n	3fd0 <str_to_time+0x36>
		n=n*10+time[i++]-'0';
    3fae:	7afb      	ldrb	r3, [r7, #11]
    3fb0:	461a      	mov	r2, r3
    3fb2:	0092      	lsls	r2, r2, #2
    3fb4:	4413      	add	r3, r2
    3fb6:	005b      	lsls	r3, r3, #1
    3fb8:	b2da      	uxtb	r2, r3
    3fba:	68fb      	ldr	r3, [r7, #12]
    3fbc:	1c59      	adds	r1, r3, #1
    3fbe:	60f9      	str	r1, [r7, #12]
    3fc0:	4619      	mov	r1, r3
    3fc2:	687b      	ldr	r3, [r7, #4]
    3fc4:	440b      	add	r3, r1
    3fc6:	781b      	ldrb	r3, [r3, #0]
    3fc8:	4413      	add	r3, r2
    3fca:	b2db      	uxtb	r3, r3
    3fcc:	3b30      	subs	r3, #48	; 0x30
    3fce:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3fd0:	68fb      	ldr	r3, [r7, #12]
    3fd2:	687a      	ldr	r2, [r7, #4]
    3fd4:	4413      	add	r3, r2
    3fd6:	781b      	ldrb	r3, [r3, #0]
    3fd8:	4618      	mov	r0, r3
    3fda:	f7fd ff28 	bl	1e2e <digit>
    3fde:	4603      	mov	r3, r0
    3fe0:	2b00      	cmp	r3, #0
    3fe2:	d1e4      	bne.n	3fae <str_to_time+0x14>
	}
	if ((n>23) || time[i]!=':') return 0;
    3fe4:	7afb      	ldrb	r3, [r7, #11]
    3fe6:	2b17      	cmp	r3, #23
    3fe8:	d805      	bhi.n	3ff6 <str_to_time+0x5c>
    3fea:	68fb      	ldr	r3, [r7, #12]
    3fec:	687a      	ldr	r2, [r7, #4]
    3fee:	4413      	add	r3, r2
    3ff0:	781b      	ldrb	r3, [r3, #0]
    3ff2:	2b3a      	cmp	r3, #58	; 0x3a
    3ff4:	d001      	beq.n	3ffa <str_to_time+0x60>
    3ff6:	2300      	movs	r3, #0
    3ff8:	e06d      	b.n	40d6 <str_to_time+0x13c>
	dt->hour=n;
    3ffa:	7afb      	ldrb	r3, [r7, #11]
    3ffc:	f003 031f 	and.w	r3, r3, #31
    4000:	b2d9      	uxtb	r1, r3
    4002:	683a      	ldr	r2, [r7, #0]
    4004:	6813      	ldr	r3, [r2, #0]
    4006:	f361 3310 	bfi	r3, r1, #12, #5
    400a:	6013      	str	r3, [r2, #0]
	i++;
    400c:	68fb      	ldr	r3, [r7, #12]
    400e:	3301      	adds	r3, #1
    4010:	60fb      	str	r3, [r7, #12]
	n=0;
    4012:	2300      	movs	r3, #0
    4014:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    4016:	e010      	b.n	403a <str_to_time+0xa0>
		n=n*10+time[i++]-'0';
    4018:	7afb      	ldrb	r3, [r7, #11]
    401a:	461a      	mov	r2, r3
    401c:	0092      	lsls	r2, r2, #2
    401e:	4413      	add	r3, r2
    4020:	005b      	lsls	r3, r3, #1
    4022:	b2da      	uxtb	r2, r3
    4024:	68fb      	ldr	r3, [r7, #12]
    4026:	1c59      	adds	r1, r3, #1
    4028:	60f9      	str	r1, [r7, #12]
    402a:	4619      	mov	r1, r3
    402c:	687b      	ldr	r3, [r7, #4]
    402e:	440b      	add	r3, r1
    4030:	781b      	ldrb	r3, [r3, #0]
    4032:	4413      	add	r3, r2
    4034:	b2db      	uxtb	r3, r3
    4036:	3b30      	subs	r3, #48	; 0x30
    4038:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    403a:	68fb      	ldr	r3, [r7, #12]
    403c:	687a      	ldr	r2, [r7, #4]
    403e:	4413      	add	r3, r2
    4040:	781b      	ldrb	r3, [r3, #0]
    4042:	4618      	mov	r0, r3
    4044:	f7fd fef3 	bl	1e2e <digit>
    4048:	4603      	mov	r3, r0
    404a:	2b00      	cmp	r3, #0
    404c:	d1e4      	bne.n	4018 <str_to_time+0x7e>
	}
	if ((n>59) || time[i]!=':') return 0;
    404e:	7afb      	ldrb	r3, [r7, #11]
    4050:	2b3b      	cmp	r3, #59	; 0x3b
    4052:	d805      	bhi.n	4060 <str_to_time+0xc6>
    4054:	68fb      	ldr	r3, [r7, #12]
    4056:	687a      	ldr	r2, [r7, #4]
    4058:	4413      	add	r3, r2
    405a:	781b      	ldrb	r3, [r3, #0]
    405c:	2b3a      	cmp	r3, #58	; 0x3a
    405e:	d001      	beq.n	4064 <str_to_time+0xca>
    4060:	2300      	movs	r3, #0
    4062:	e038      	b.n	40d6 <str_to_time+0x13c>
	dt->minute=n;
    4064:	7afb      	ldrb	r3, [r7, #11]
    4066:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    406a:	b2d9      	uxtb	r1, r3
    406c:	683a      	ldr	r2, [r7, #0]
    406e:	8813      	ldrh	r3, [r2, #0]
    4070:	f361 138b 	bfi	r3, r1, #6, #6
    4074:	8013      	strh	r3, [r2, #0]
	n=0;
    4076:	2300      	movs	r3, #0
    4078:	72fb      	strb	r3, [r7, #11]
	i++;
    407a:	68fb      	ldr	r3, [r7, #12]
    407c:	3301      	adds	r3, #1
    407e:	60fb      	str	r3, [r7, #12]
	while (digit(time[i])){
    4080:	e010      	b.n	40a4 <str_to_time+0x10a>
		n=n*10+time[i++]-'0';
    4082:	7afb      	ldrb	r3, [r7, #11]
    4084:	461a      	mov	r2, r3
    4086:	0092      	lsls	r2, r2, #2
    4088:	4413      	add	r3, r2
    408a:	005b      	lsls	r3, r3, #1
    408c:	b2da      	uxtb	r2, r3
    408e:	68fb      	ldr	r3, [r7, #12]
    4090:	1c59      	adds	r1, r3, #1
    4092:	60f9      	str	r1, [r7, #12]
    4094:	4619      	mov	r1, r3
    4096:	687b      	ldr	r3, [r7, #4]
    4098:	440b      	add	r3, r1
    409a:	781b      	ldrb	r3, [r3, #0]
    409c:	4413      	add	r3, r2
    409e:	b2db      	uxtb	r3, r3
    40a0:	3b30      	subs	r3, #48	; 0x30
    40a2:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    40a4:	68fb      	ldr	r3, [r7, #12]
    40a6:	687a      	ldr	r2, [r7, #4]
    40a8:	4413      	add	r3, r2
    40aa:	781b      	ldrb	r3, [r3, #0]
    40ac:	4618      	mov	r0, r3
    40ae:	f7fd febe 	bl	1e2e <digit>
    40b2:	4603      	mov	r3, r0
    40b4:	2b00      	cmp	r3, #0
    40b6:	d1e4      	bne.n	4082 <str_to_time+0xe8>
	}
	if (n>59) return 0;
    40b8:	7afb      	ldrb	r3, [r7, #11]
    40ba:	2b3b      	cmp	r3, #59	; 0x3b
    40bc:	d901      	bls.n	40c2 <str_to_time+0x128>
    40be:	2300      	movs	r3, #0
    40c0:	e009      	b.n	40d6 <str_to_time+0x13c>
	dt->second=n;
    40c2:	7afb      	ldrb	r3, [r7, #11]
    40c4:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    40c8:	b2d9      	uxtb	r1, r3
    40ca:	683a      	ldr	r2, [r7, #0]
    40cc:	7813      	ldrb	r3, [r2, #0]
    40ce:	f361 0305 	bfi	r3, r1, #0, #6
    40d2:	7013      	strb	r3, [r2, #0]
	return 1;
    40d4:	2301      	movs	r3, #1
}
    40d6:	4618      	mov	r0, r3
    40d8:	3710      	adds	r7, #16
    40da:	46bd      	mov	sp, r7
    40dc:	bd80      	pop	{r7, pc}

000040de <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    40de:	b480      	push	{r7}
    40e0:	b085      	sub	sp, #20
    40e2:	af00      	add	r7, sp, #0
    40e4:	6078      	str	r0, [r7, #4]
    40e6:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    40e8:	2300      	movs	r3, #0
    40ea:	60fb      	str	r3, [r7, #12]
	
	n=dt->year;
    40ec:	687b      	ldr	r3, [r7, #4]
    40ee:	891b      	ldrh	r3, [r3, #8]
    40f0:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/1000+'0';
    40f2:	68fb      	ldr	r3, [r7, #12]
    40f4:	1c5a      	adds	r2, r3, #1
    40f6:	60fa      	str	r2, [r7, #12]
    40f8:	461a      	mov	r2, r3
    40fa:	683b      	ldr	r3, [r7, #0]
    40fc:	4413      	add	r3, r2
    40fe:	68ba      	ldr	r2, [r7, #8]
    4100:	495d      	ldr	r1, [pc, #372]	; (4278 <date_str+0x19a>)
    4102:	fba1 1202 	umull	r1, r2, r1, r2
    4106:	0992      	lsrs	r2, r2, #6
    4108:	b2d2      	uxtb	r2, r2
    410a:	3230      	adds	r2, #48	; 0x30
    410c:	b2d2      	uxtb	r2, r2
    410e:	701a      	strb	r2, [r3, #0]
	n%=1000;
    4110:	68bb      	ldr	r3, [r7, #8]
    4112:	4a59      	ldr	r2, [pc, #356]	; (4278 <date_str+0x19a>)
    4114:	fba2 1203 	umull	r1, r2, r2, r3
    4118:	0992      	lsrs	r2, r2, #6
    411a:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    411e:	fb01 f202 	mul.w	r2, r1, r2
    4122:	1a9b      	subs	r3, r3, r2
    4124:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/100+'0';
    4126:	68fb      	ldr	r3, [r7, #12]
    4128:	1c5a      	adds	r2, r3, #1
    412a:	60fa      	str	r2, [r7, #12]
    412c:	461a      	mov	r2, r3
    412e:	683b      	ldr	r3, [r7, #0]
    4130:	4413      	add	r3, r2
    4132:	68ba      	ldr	r2, [r7, #8]
    4134:	4951      	ldr	r1, [pc, #324]	; (427c <date_str+0x19e>)
    4136:	fba1 1202 	umull	r1, r2, r1, r2
    413a:	0952      	lsrs	r2, r2, #5
    413c:	b2d2      	uxtb	r2, r2
    413e:	3230      	adds	r2, #48	; 0x30
    4140:	b2d2      	uxtb	r2, r2
    4142:	701a      	strb	r2, [r3, #0]
	n%=100;
    4144:	68bb      	ldr	r3, [r7, #8]
    4146:	4a4d      	ldr	r2, [pc, #308]	; (427c <date_str+0x19e>)
    4148:	fba2 1203 	umull	r1, r2, r2, r3
    414c:	0952      	lsrs	r2, r2, #5
    414e:	2164      	movs	r1, #100	; 0x64
    4150:	fb01 f202 	mul.w	r2, r1, r2
    4154:	1a9b      	subs	r3, r3, r2
    4156:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    4158:	68fb      	ldr	r3, [r7, #12]
    415a:	1c5a      	adds	r2, r3, #1
    415c:	60fa      	str	r2, [r7, #12]
    415e:	461a      	mov	r2, r3
    4160:	683b      	ldr	r3, [r7, #0]
    4162:	4413      	add	r3, r2
    4164:	68ba      	ldr	r2, [r7, #8]
    4166:	4946      	ldr	r1, [pc, #280]	; (4280 <date_str+0x1a2>)
    4168:	fba1 1202 	umull	r1, r2, r1, r2
    416c:	08d2      	lsrs	r2, r2, #3
    416e:	b2d2      	uxtb	r2, r2
    4170:	3230      	adds	r2, #48	; 0x30
    4172:	b2d2      	uxtb	r2, r2
    4174:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    4176:	68fb      	ldr	r3, [r7, #12]
    4178:	1c5a      	adds	r2, r3, #1
    417a:	60fa      	str	r2, [r7, #12]
    417c:	461a      	mov	r2, r3
    417e:	683b      	ldr	r3, [r7, #0]
    4180:	1898      	adds	r0, r3, r2
    4182:	68b9      	ldr	r1, [r7, #8]
    4184:	4b3e      	ldr	r3, [pc, #248]	; (4280 <date_str+0x1a2>)
    4186:	fba3 2301 	umull	r2, r3, r3, r1
    418a:	08da      	lsrs	r2, r3, #3
    418c:	4613      	mov	r3, r2
    418e:	009b      	lsls	r3, r3, #2
    4190:	4413      	add	r3, r2
    4192:	005b      	lsls	r3, r3, #1
    4194:	1aca      	subs	r2, r1, r3
    4196:	b2d3      	uxtb	r3, r2
    4198:	3330      	adds	r3, #48	; 0x30
    419a:	b2db      	uxtb	r3, r3
    419c:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    419e:	68fb      	ldr	r3, [r7, #12]
    41a0:	1c5a      	adds	r2, r3, #1
    41a2:	60fa      	str	r2, [r7, #12]
    41a4:	461a      	mov	r2, r3
    41a6:	683b      	ldr	r3, [r7, #0]
    41a8:	4413      	add	r3, r2
    41aa:	222f      	movs	r2, #47	; 0x2f
    41ac:	701a      	strb	r2, [r3, #0]
	n=dt->month;
    41ae:	687b      	ldr	r3, [r7, #4]
    41b0:	885b      	ldrh	r3, [r3, #2]
    41b2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    41b6:	b2db      	uxtb	r3, r3
    41b8:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    41ba:	68fb      	ldr	r3, [r7, #12]
    41bc:	1c5a      	adds	r2, r3, #1
    41be:	60fa      	str	r2, [r7, #12]
    41c0:	461a      	mov	r2, r3
    41c2:	683b      	ldr	r3, [r7, #0]
    41c4:	4413      	add	r3, r2
    41c6:	68ba      	ldr	r2, [r7, #8]
    41c8:	492d      	ldr	r1, [pc, #180]	; (4280 <date_str+0x1a2>)
    41ca:	fba1 1202 	umull	r1, r2, r1, r2
    41ce:	08d2      	lsrs	r2, r2, #3
    41d0:	b2d2      	uxtb	r2, r2
    41d2:	3230      	adds	r2, #48	; 0x30
    41d4:	b2d2      	uxtb	r2, r2
    41d6:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    41d8:	68fb      	ldr	r3, [r7, #12]
    41da:	1c5a      	adds	r2, r3, #1
    41dc:	60fa      	str	r2, [r7, #12]
    41de:	461a      	mov	r2, r3
    41e0:	683b      	ldr	r3, [r7, #0]
    41e2:	1898      	adds	r0, r3, r2
    41e4:	68b9      	ldr	r1, [r7, #8]
    41e6:	4b26      	ldr	r3, [pc, #152]	; (4280 <date_str+0x1a2>)
    41e8:	fba3 2301 	umull	r2, r3, r3, r1
    41ec:	08da      	lsrs	r2, r3, #3
    41ee:	4613      	mov	r3, r2
    41f0:	009b      	lsls	r3, r3, #2
    41f2:	4413      	add	r3, r2
    41f4:	005b      	lsls	r3, r3, #1
    41f6:	1aca      	subs	r2, r1, r3
    41f8:	b2d3      	uxtb	r3, r2
    41fa:	3330      	adds	r3, #48	; 0x30
    41fc:	b2db      	uxtb	r3, r3
    41fe:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    4200:	68fb      	ldr	r3, [r7, #12]
    4202:	1c5a      	adds	r2, r3, #1
    4204:	60fa      	str	r2, [r7, #12]
    4206:	461a      	mov	r2, r3
    4208:	683b      	ldr	r3, [r7, #0]
    420a:	4413      	add	r3, r2
    420c:	222f      	movs	r2, #47	; 0x2f
    420e:	701a      	strb	r2, [r3, #0]
	n=dt->day;
    4210:	687b      	ldr	r3, [r7, #4]
    4212:	789b      	ldrb	r3, [r3, #2]
    4214:	f3c3 0344 	ubfx	r3, r3, #1, #5
    4218:	b2db      	uxtb	r3, r3
    421a:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    421c:	68fb      	ldr	r3, [r7, #12]
    421e:	1c5a      	adds	r2, r3, #1
    4220:	60fa      	str	r2, [r7, #12]
    4222:	461a      	mov	r2, r3
    4224:	683b      	ldr	r3, [r7, #0]
    4226:	4413      	add	r3, r2
    4228:	68ba      	ldr	r2, [r7, #8]
    422a:	4915      	ldr	r1, [pc, #84]	; (4280 <date_str+0x1a2>)
    422c:	fba1 1202 	umull	r1, r2, r1, r2
    4230:	08d2      	lsrs	r2, r2, #3
    4232:	b2d2      	uxtb	r2, r2
    4234:	3230      	adds	r2, #48	; 0x30
    4236:	b2d2      	uxtb	r2, r2
    4238:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    423a:	68fb      	ldr	r3, [r7, #12]
    423c:	1c5a      	adds	r2, r3, #1
    423e:	60fa      	str	r2, [r7, #12]
    4240:	461a      	mov	r2, r3
    4242:	683b      	ldr	r3, [r7, #0]
    4244:	1898      	adds	r0, r3, r2
    4246:	68b9      	ldr	r1, [r7, #8]
    4248:	4b0d      	ldr	r3, [pc, #52]	; (4280 <date_str+0x1a2>)
    424a:	fba3 2301 	umull	r2, r3, r3, r1
    424e:	08da      	lsrs	r2, r3, #3
    4250:	4613      	mov	r3, r2
    4252:	009b      	lsls	r3, r3, #2
    4254:	4413      	add	r3, r2
    4256:	005b      	lsls	r3, r3, #1
    4258:	1aca      	subs	r2, r1, r3
    425a:	b2d3      	uxtb	r3, r2
    425c:	3330      	adds	r3, #48	; 0x30
    425e:	b2db      	uxtb	r3, r3
    4260:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    4262:	68fb      	ldr	r3, [r7, #12]
    4264:	683a      	ldr	r2, [r7, #0]
    4266:	4413      	add	r3, r2
    4268:	2200      	movs	r2, #0
    426a:	701a      	strb	r2, [r3, #0]

}
    426c:	bf00      	nop
    426e:	3714      	adds	r7, #20
    4270:	46bd      	mov	sp, r7
    4272:	bc80      	pop	{r7}
    4274:	4770      	bx	lr
    4276:	bf00      	nop
    4278:	10624dd3 	.word	0x10624dd3
    427c:	51eb851f 	.word	0x51eb851f
    4280:	cccccccd 	.word	0xcccccccd

00004284 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    4284:	b480      	push	{r7}
    4286:	b085      	sub	sp, #20
    4288:	af00      	add	r7, sp, #0
    428a:	6078      	str	r0, [r7, #4]
    428c:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    428e:	2300      	movs	r3, #0
    4290:	60fb      	str	r3, [r7, #12]
	
	n=dt->hour;
    4292:	687b      	ldr	r3, [r7, #4]
    4294:	681b      	ldr	r3, [r3, #0]
    4296:	f3c3 3304 	ubfx	r3, r3, #12, #5
    429a:	b2db      	uxtb	r3, r3
    429c:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    429e:	68fb      	ldr	r3, [r7, #12]
    42a0:	1c5a      	adds	r2, r3, #1
    42a2:	60fa      	str	r2, [r7, #12]
    42a4:	461a      	mov	r2, r3
    42a6:	683b      	ldr	r3, [r7, #0]
    42a8:	4413      	add	r3, r2
    42aa:	68ba      	ldr	r2, [r7, #8]
    42ac:	4943      	ldr	r1, [pc, #268]	; (43bc <time_str+0x138>)
    42ae:	fba1 1202 	umull	r1, r2, r1, r2
    42b2:	08d2      	lsrs	r2, r2, #3
    42b4:	b2d2      	uxtb	r2, r2
    42b6:	3230      	adds	r2, #48	; 0x30
    42b8:	b2d2      	uxtb	r2, r2
    42ba:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    42bc:	68fb      	ldr	r3, [r7, #12]
    42be:	1c5a      	adds	r2, r3, #1
    42c0:	60fa      	str	r2, [r7, #12]
    42c2:	461a      	mov	r2, r3
    42c4:	683b      	ldr	r3, [r7, #0]
    42c6:	1898      	adds	r0, r3, r2
    42c8:	68b9      	ldr	r1, [r7, #8]
    42ca:	4b3c      	ldr	r3, [pc, #240]	; (43bc <time_str+0x138>)
    42cc:	fba3 2301 	umull	r2, r3, r3, r1
    42d0:	08da      	lsrs	r2, r3, #3
    42d2:	4613      	mov	r3, r2
    42d4:	009b      	lsls	r3, r3, #2
    42d6:	4413      	add	r3, r2
    42d8:	005b      	lsls	r3, r3, #1
    42da:	1aca      	subs	r2, r1, r3
    42dc:	b2d3      	uxtb	r3, r2
    42de:	3330      	adds	r3, #48	; 0x30
    42e0:	b2db      	uxtb	r3, r3
    42e2:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    42e4:	68fb      	ldr	r3, [r7, #12]
    42e6:	1c5a      	adds	r2, r3, #1
    42e8:	60fa      	str	r2, [r7, #12]
    42ea:	461a      	mov	r2, r3
    42ec:	683b      	ldr	r3, [r7, #0]
    42ee:	4413      	add	r3, r2
    42f0:	223a      	movs	r2, #58	; 0x3a
    42f2:	701a      	strb	r2, [r3, #0]
	n=dt->minute;
    42f4:	687b      	ldr	r3, [r7, #4]
    42f6:	881b      	ldrh	r3, [r3, #0]
    42f8:	f3c3 1385 	ubfx	r3, r3, #6, #6
    42fc:	b2db      	uxtb	r3, r3
    42fe:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    4300:	68fb      	ldr	r3, [r7, #12]
    4302:	1c5a      	adds	r2, r3, #1
    4304:	60fa      	str	r2, [r7, #12]
    4306:	461a      	mov	r2, r3
    4308:	683b      	ldr	r3, [r7, #0]
    430a:	4413      	add	r3, r2
    430c:	68ba      	ldr	r2, [r7, #8]
    430e:	492b      	ldr	r1, [pc, #172]	; (43bc <time_str+0x138>)
    4310:	fba1 1202 	umull	r1, r2, r1, r2
    4314:	08d2      	lsrs	r2, r2, #3
    4316:	b2d2      	uxtb	r2, r2
    4318:	3230      	adds	r2, #48	; 0x30
    431a:	b2d2      	uxtb	r2, r2
    431c:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    431e:	68fb      	ldr	r3, [r7, #12]
    4320:	1c5a      	adds	r2, r3, #1
    4322:	60fa      	str	r2, [r7, #12]
    4324:	461a      	mov	r2, r3
    4326:	683b      	ldr	r3, [r7, #0]
    4328:	1898      	adds	r0, r3, r2
    432a:	68b9      	ldr	r1, [r7, #8]
    432c:	4b23      	ldr	r3, [pc, #140]	; (43bc <time_str+0x138>)
    432e:	fba3 2301 	umull	r2, r3, r3, r1
    4332:	08da      	lsrs	r2, r3, #3
    4334:	4613      	mov	r3, r2
    4336:	009b      	lsls	r3, r3, #2
    4338:	4413      	add	r3, r2
    433a:	005b      	lsls	r3, r3, #1
    433c:	1aca      	subs	r2, r1, r3
    433e:	b2d3      	uxtb	r3, r2
    4340:	3330      	adds	r3, #48	; 0x30
    4342:	b2db      	uxtb	r3, r3
    4344:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    4346:	68fb      	ldr	r3, [r7, #12]
    4348:	1c5a      	adds	r2, r3, #1
    434a:	60fa      	str	r2, [r7, #12]
    434c:	461a      	mov	r2, r3
    434e:	683b      	ldr	r3, [r7, #0]
    4350:	4413      	add	r3, r2
    4352:	223a      	movs	r2, #58	; 0x3a
    4354:	701a      	strb	r2, [r3, #0]
	n=dt->second;
    4356:	687b      	ldr	r3, [r7, #4]
    4358:	781b      	ldrb	r3, [r3, #0]
    435a:	f3c3 0305 	ubfx	r3, r3, #0, #6
    435e:	b2db      	uxtb	r3, r3
    4360:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    4362:	68fb      	ldr	r3, [r7, #12]
    4364:	1c5a      	adds	r2, r3, #1
    4366:	60fa      	str	r2, [r7, #12]
    4368:	461a      	mov	r2, r3
    436a:	683b      	ldr	r3, [r7, #0]
    436c:	4413      	add	r3, r2
    436e:	68ba      	ldr	r2, [r7, #8]
    4370:	4912      	ldr	r1, [pc, #72]	; (43bc <time_str+0x138>)
    4372:	fba1 1202 	umull	r1, r2, r1, r2
    4376:	08d2      	lsrs	r2, r2, #3
    4378:	b2d2      	uxtb	r2, r2
    437a:	3230      	adds	r2, #48	; 0x30
    437c:	b2d2      	uxtb	r2, r2
    437e:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    4380:	68fb      	ldr	r3, [r7, #12]
    4382:	1c5a      	adds	r2, r3, #1
    4384:	60fa      	str	r2, [r7, #12]
    4386:	461a      	mov	r2, r3
    4388:	683b      	ldr	r3, [r7, #0]
    438a:	1898      	adds	r0, r3, r2
    438c:	68b9      	ldr	r1, [r7, #8]
    438e:	4b0b      	ldr	r3, [pc, #44]	; (43bc <time_str+0x138>)
    4390:	fba3 2301 	umull	r2, r3, r3, r1
    4394:	08da      	lsrs	r2, r3, #3
    4396:	4613      	mov	r3, r2
    4398:	009b      	lsls	r3, r3, #2
    439a:	4413      	add	r3, r2
    439c:	005b      	lsls	r3, r3, #1
    439e:	1aca      	subs	r2, r1, r3
    43a0:	b2d3      	uxtb	r3, r2
    43a2:	3330      	adds	r3, #48	; 0x30
    43a4:	b2db      	uxtb	r3, r3
    43a6:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    43a8:	68fb      	ldr	r3, [r7, #12]
    43aa:	683a      	ldr	r2, [r7, #0]
    43ac:	4413      	add	r3, r2
    43ae:	2200      	movs	r2, #0
    43b0:	701a      	strb	r2, [r3, #0]
}
    43b2:	bf00      	nop
    43b4:	3714      	adds	r7, #20
    43b6:	46bd      	mov	sp, r7
    43b8:	bc80      	pop	{r7}
    43ba:	4770      	bx	lr
    43bc:	cccccccd 	.word	0xcccccccd

000043c0 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    43c0:	b580      	push	{r7, lr}
    43c2:	b084      	sub	sp, #16
    43c4:	af00      	add	r7, sp, #0
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    43c6:	463b      	mov	r3, r7
    43c8:	4618      	mov	r0, r3
    43ca:	f7ff fa69 	bl	38a0 <get_date_time>
	t.fields.second=dt.second/2;
    43ce:	783b      	ldrb	r3, [r7, #0]
    43d0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    43d4:	b2db      	uxtb	r3, r3
    43d6:	0fda      	lsrs	r2, r3, #31
    43d8:	4413      	add	r3, r2
    43da:	105b      	asrs	r3, r3, #1
    43dc:	b2db      	uxtb	r3, r3
    43de:	f003 031f 	and.w	r3, r3, #31
    43e2:	b2da      	uxtb	r2, r3
    43e4:	7b3b      	ldrb	r3, [r7, #12]
    43e6:	f362 0304 	bfi	r3, r2, #0, #5
    43ea:	733b      	strb	r3, [r7, #12]
	t.fields.minute=dt.minute;
    43ec:	883b      	ldrh	r3, [r7, #0]
    43ee:	f3c3 1385 	ubfx	r3, r3, #6, #6
    43f2:	b2da      	uxtb	r2, r3
    43f4:	89bb      	ldrh	r3, [r7, #12]
    43f6:	f362 134a 	bfi	r3, r2, #5, #6
    43fa:	81bb      	strh	r3, [r7, #12]
	t.fields.hour=dt.hour;
    43fc:	683b      	ldr	r3, [r7, #0]
    43fe:	f3c3 3304 	ubfx	r3, r3, #12, #5
    4402:	b2da      	uxtb	r2, r3
    4404:	7b7b      	ldrb	r3, [r7, #13]
    4406:	f362 03c7 	bfi	r3, r2, #3, #5
    440a:	737b      	strb	r3, [r7, #13]
	t.fields.day=dt.day;
    440c:	78bb      	ldrb	r3, [r7, #2]
    440e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    4412:	b2da      	uxtb	r2, r3
    4414:	7bbb      	ldrb	r3, [r7, #14]
    4416:	f362 0304 	bfi	r3, r2, #0, #5
    441a:	73bb      	strb	r3, [r7, #14]
	t.fields.month=dt.month;
    441c:	887b      	ldrh	r3, [r7, #2]
    441e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    4422:	b2da      	uxtb	r2, r3
    4424:	89fb      	ldrh	r3, [r7, #14]
    4426:	f362 1348 	bfi	r3, r2, #5, #4
    442a:	81fb      	strh	r3, [r7, #14]
	t.fields.year=dt.year-1980;
    442c:	893b      	ldrh	r3, [r7, #8]
    442e:	b2db      	uxtb	r3, r3
    4430:	3344      	adds	r3, #68	; 0x44
    4432:	b2db      	uxtb	r3, r3
    4434:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    4438:	b2da      	uxtb	r2, r3
    443a:	7bfb      	ldrb	r3, [r7, #15]
    443c:	f362 0347 	bfi	r3, r2, #1, #7
    4440:	73fb      	strb	r3, [r7, #15]
	return t.u32;
    4442:	68fb      	ldr	r3, [r7, #12]
}
    4444:	4618      	mov	r0, r3
    4446:	3710      	adds	r7, #16
    4448:	46bd      	mov	sp, r7
    444a:	bd80      	pop	{r7, pc}

0000444c <RTC_handler>:


void RTC_handler(){
    444c:	b480      	push	{r7}
    444e:	b083      	sub	sp, #12
    4450:	af00      	add	r7, sp, #0
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    4452:	4b0a      	ldr	r3, [pc, #40]	; (447c <RTC_handler+0x30>)
    4454:	685b      	ldr	r3, [r3, #4]
    4456:	f003 0301 	and.w	r3, r3, #1
    445a:	2b00      	cmp	r3, #0
    445c:	d001      	beq.n	4462 <RTC_handler+0x16>
		RTC->CRL&~RTC_CRL_SECF;
    445e:	4b07      	ldr	r3, [pc, #28]	; (447c <RTC_handler+0x30>)
    4460:	685b      	ldr	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    4462:	4b06      	ldr	r3, [pc, #24]	; (447c <RTC_handler+0x30>)
    4464:	685b      	ldr	r3, [r3, #4]
    4466:	f003 0302 	and.w	r3, r3, #2
    446a:	2b00      	cmp	r3, #0
    446c:	d001      	beq.n	4472 <RTC_handler+0x26>
		RTC->CRL&~RTC_CRL_ALRF;
    446e:	4b03      	ldr	r3, [pc, #12]	; (447c <RTC_handler+0x30>)
    4470:	685b      	ldr	r3, [r3, #4]
	}// interruption alarme
}
    4472:	bf00      	nop
    4474:	370c      	adds	r7, #12
    4476:	46bd      	mov	sp, r7
    4478:	bc80      	pop	{r7}
    447a:	4770      	bx	lr
    447c:	40002800 	.word	0x40002800

00004480 <sound_init>:

#define SOUND_BUFFER_SIZE 16
static uint8_t sound_buffer[SOUND_BUFFER_SIZE];
static uint8_t bit_pos;

void sound_init(){
    4480:	b580      	push	{r7, lr}
    4482:	af00      	add	r7, sp, #0
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    4484:	4a0d      	ldr	r2, [pc, #52]	; (44bc <sound_init+0x3c>)
    4486:	4b0d      	ldr	r3, [pc, #52]	; (44bc <sound_init+0x3c>)
    4488:	69db      	ldr	r3, [r3, #28]
    448a:	f043 0301 	orr.w	r3, r3, #1
    448e:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    4490:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4494:	2278      	movs	r2, #120	; 0x78
    4496:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    4498:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    449c:	f44f 7280 	mov.w	r2, #256	; 0x100
    44a0:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    44a2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    44a6:	2209      	movs	r2, #9
    44a8:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    44aa:	2100      	movs	r1, #0
    44ac:	201c      	movs	r0, #28
    44ae:	f7ff f977 	bl	37a0 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    44b2:	201c      	movs	r0, #28
    44b4:	f7ff f8ba 	bl	362c <enable_interrupt>
}
    44b8:	bf00      	nop
    44ba:	bd80      	pop	{r7, pc}
    44bc:	40021000 	.word	0x40021000

000044c0 <tone>:

void tone(uint16_t freq, uint16_t duration){
    44c0:	b580      	push	{r7, lr}
    44c2:	b082      	sub	sp, #8
    44c4:	af00      	add	r7, sp, #0
    44c6:	4603      	mov	r3, r0
    44c8:	460a      	mov	r2, r1
    44ca:	80fb      	strh	r3, [r7, #6]
    44cc:	4613      	mov	r3, r2
    44ce:	80bb      	strh	r3, [r7, #4]
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    44d0:	4a1a      	ldr	r2, [pc, #104]	; (453c <tone+0x7c>)
    44d2:	4b1a      	ldr	r3, [pc, #104]	; (453c <tone+0x7c>)
    44d4:	685b      	ldr	r3, [r3, #4]
    44d6:	f403 7340 	and.w	r3, r3, #768	; 0x300
    44da:	6053      	str	r3, [r2, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    44dc:	4a17      	ldr	r2, [pc, #92]	; (453c <tone+0x7c>)
    44de:	4b17      	ldr	r3, [pc, #92]	; (453c <tone+0x7c>)
    44e0:	685b      	ldr	r3, [r3, #4]
    44e2:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    44e6:	6053      	str	r3, [r2, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    44e8:	220a      	movs	r2, #10
    44ea:	210a      	movs	r1, #10
    44ec:	4814      	ldr	r0, [pc, #80]	; (4540 <tone+0x80>)
    44ee:	f7fd febf 	bl	2270 <config_pin>
    TMR2->ARR=FCLK/10/freq;
    44f2:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    44f6:	88fb      	ldrh	r3, [r7, #6]
    44f8:	4912      	ldr	r1, [pc, #72]	; (4544 <tone+0x84>)
    44fa:	fbb1 f3f3 	udiv	r3, r1, r3
    44fe:	62d3      	str	r3, [r2, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    4500:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4504:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4508:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    450a:	085b      	lsrs	r3, r3, #1
    450c:	63d3      	str	r3, [r2, #60]	; 0x3c
    TMR2->DIER&=~TMR_DIER_CC3IE;
    450e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4512:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4516:	68db      	ldr	r3, [r3, #12]
    4518:	f023 0308 	bic.w	r3, r3, #8
    451c:	60d3      	str	r3, [r2, #12]
    TMR2->CR1|=TMR_CR1_CEN;
    451e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4522:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4526:	681b      	ldr	r3, [r3, #0]
    4528:	f043 0301 	orr.w	r3, r3, #1
    452c:	6013      	str	r3, [r2, #0]
    sound_timer=duration;
    452e:	4a06      	ldr	r2, [pc, #24]	; (4548 <tone+0x88>)
    4530:	88bb      	ldrh	r3, [r7, #4]
    4532:	8013      	strh	r3, [r2, #0]
}
    4534:	bf00      	nop
    4536:	3708      	adds	r7, #8
    4538:	46bd      	mov	sp, r7
    453a:	bd80      	pop	{r7, pc}
    453c:	40010000 	.word	0x40010000
    4540:	40010c00 	.word	0x40010c00
    4544:	006d3d32 	.word	0x006d3d32
    4548:	20004e48 	.word	0x20004e48

0000454c <beep>:

void beep(uint16_t duration){
    454c:	b580      	push	{r7, lr}
    454e:	b082      	sub	sp, #8
    4550:	af00      	add	r7, sp, #0
    4552:	4603      	mov	r3, r0
    4554:	80fb      	strh	r3, [r7, #6]
    tone(1000,duration);
    4556:	88fb      	ldrh	r3, [r7, #6]
    4558:	4619      	mov	r1, r3
    455a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    455e:	f7ff ffaf 	bl	44c0 <tone>
}
    4562:	bf00      	nop
    4564:	3708      	adds	r7, #8
    4566:	46bd      	mov	sp, r7
    4568:	bd80      	pop	{r7, pc}

0000456a <load_sound_buffer>:

void load_sound_buffer(const uint8_t* buffer){
    456a:	b480      	push	{r7}
    456c:	b085      	sub	sp, #20
    456e:	af00      	add	r7, sp, #0
    4570:	6078      	str	r0, [r7, #4]
    int i;
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
    4572:	2300      	movs	r3, #0
    4574:	60fb      	str	r3, [r7, #12]
    4576:	e00b      	b.n	4590 <load_sound_buffer+0x26>
        sound_buffer[i]=*buffer++;
    4578:	687b      	ldr	r3, [r7, #4]
    457a:	1c5a      	adds	r2, r3, #1
    457c:	607a      	str	r2, [r7, #4]
    457e:	7819      	ldrb	r1, [r3, #0]
    4580:	4a07      	ldr	r2, [pc, #28]	; (45a0 <load_sound_buffer+0x36>)
    4582:	68fb      	ldr	r3, [r7, #12]
    4584:	4413      	add	r3, r2
    4586:	460a      	mov	r2, r1
    4588:	701a      	strb	r2, [r3, #0]
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
    458a:	68fb      	ldr	r3, [r7, #12]
    458c:	3301      	adds	r3, #1
    458e:	60fb      	str	r3, [r7, #12]
    4590:	68fb      	ldr	r3, [r7, #12]
    4592:	2b0f      	cmp	r3, #15
    4594:	ddf0      	ble.n	4578 <load_sound_buffer+0xe>
    }
}
    4596:	bf00      	nop
    4598:	3714      	adds	r7, #20
    459a:	46bd      	mov	sp, r7
    459c:	bc80      	pop	{r7}
    459e:	4770      	bx	lr
    45a0:	20000694 	.word	0x20000694

000045a4 <sound_sampler>:

// configure son pour sortie buffer
void sound_sampler(uint16_t duration){
    45a4:	b580      	push	{r7, lr}
    45a6:	b082      	sub	sp, #8
    45a8:	af00      	add	r7, sp, #0
    45aa:	4603      	mov	r3, r0
    45ac:	80fb      	strh	r3, [r7, #6]
    bit_pos=0;
    45ae:	4b1b      	ldr	r3, [pc, #108]	; (461c <sound_sampler+0x78>)
    45b0:	2200      	movs	r2, #0
    45b2:	701a      	strb	r2, [r3, #0]
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    45b4:	4a1a      	ldr	r2, [pc, #104]	; (4620 <sound_sampler+0x7c>)
    45b6:	4b1a      	ldr	r3, [pc, #104]	; (4620 <sound_sampler+0x7c>)
    45b8:	685b      	ldr	r3, [r3, #4]
    45ba:	f403 7340 	and.w	r3, r3, #768	; 0x300
    45be:	6053      	str	r3, [r2, #4]
    PORTB->ODR&=~BIT10;
    45c0:	4a18      	ldr	r2, [pc, #96]	; (4624 <sound_sampler+0x80>)
    45c2:	4b18      	ldr	r3, [pc, #96]	; (4624 <sound_sampler+0x80>)
    45c4:	68db      	ldr	r3, [r3, #12]
    45c6:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    45ca:	60d3      	str	r3, [r2, #12]
    config_pin(PORTB,10,OUTPUT_PP_SLOW);
    45cc:	2202      	movs	r2, #2
    45ce:	210a      	movs	r1, #10
    45d0:	4814      	ldr	r0, [pc, #80]	; (4624 <sound_sampler+0x80>)
    45d2:	f7fd fe4d 	bl	2270 <config_pin>
    TMR2->DIER|=TMR_DIER_UIE;
    45d6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    45da:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    45de:	68db      	ldr	r3, [r3, #12]
    45e0:	f043 0301 	orr.w	r3, r3, #1
    45e4:	60d3      	str	r3, [r2, #12]
    TMR2->ARR=FCLK/10/4000;
    45e6:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    45ea:	f240 62fd 	movw	r2, #1789	; 0x6fd
    45ee:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR2->CCR2=TMR2->ARR;
    45f0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    45f4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    45f8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    45fa:	6393      	str	r3, [r2, #56]	; 0x38
    TMR2->CR1|=TMR_CR1_CEN;
    45fc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4600:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4604:	681b      	ldr	r3, [r3, #0]
    4606:	f043 0301 	orr.w	r3, r3, #1
    460a:	6013      	str	r3, [r2, #0]
    sound_timer=duration;
    460c:	4a06      	ldr	r2, [pc, #24]	; (4628 <sound_sampler+0x84>)
    460e:	88fb      	ldrh	r3, [r7, #6]
    4610:	8013      	strh	r3, [r2, #0]
}
    4612:	bf00      	nop
    4614:	3708      	adds	r7, #8
    4616:	46bd      	mov	sp, r7
    4618:	bd80      	pop	{r7, pc}
    461a:	bf00      	nop
    461c:	200006a4 	.word	0x200006a4
    4620:	40010000 	.word	0x40010000
    4624:	40010c00 	.word	0x40010c00
    4628:	20004e48 	.word	0x20004e48

0000462c <sound_stop>:

void sound_stop(){
    462c:	b480      	push	{r7}
    462e:	af00      	add	r7, sp, #0
    TMR2->CR1&=~TMR_CR1_CEN;
    4630:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4634:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4638:	681b      	ldr	r3, [r3, #0]
    463a:	f023 0301 	bic.w	r3, r3, #1
    463e:	6013      	str	r3, [r2, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    4640:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4644:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4648:	68db      	ldr	r3, [r3, #12]
    464a:	f023 0301 	bic.w	r3, r3, #1
    464e:	60d3      	str	r3, [r2, #12]
}
    4650:	bf00      	nop
    4652:	46bd      	mov	sp, r7
    4654:	bc80      	pop	{r7}
    4656:	4770      	bx	lr

00004658 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    4658:	b580      	push	{r7, lr}
    465a:	b084      	sub	sp, #16
    465c:	af00      	add	r7, sp, #0
    465e:	60f8      	str	r0, [r7, #12]
    4660:	60b9      	str	r1, [r7, #8]
    4662:	607a      	str	r2, [r7, #4]
    tone(tempered_scale[note],length);
    4664:	4a0b      	ldr	r2, [pc, #44]	; (4694 <key_tone+0x3c>)
    4666:	68fb      	ldr	r3, [r7, #12]
    4668:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
    466c:	68ba      	ldr	r2, [r7, #8]
    466e:	b292      	uxth	r2, r2
    4670:	4611      	mov	r1, r2
    4672:	4618      	mov	r0, r3
    4674:	f7ff ff24 	bl	44c0 <tone>
    if (wait_end) while (sound_timer);
    4678:	687b      	ldr	r3, [r7, #4]
    467a:	2b00      	cmp	r3, #0
    467c:	d005      	beq.n	468a <key_tone+0x32>
    467e:	bf00      	nop
    4680:	4b05      	ldr	r3, [pc, #20]	; (4698 <key_tone+0x40>)
    4682:	881b      	ldrh	r3, [r3, #0]
    4684:	b29b      	uxth	r3, r3
    4686:	2b00      	cmp	r3, #0
    4688:	d1fa      	bne.n	4680 <key_tone+0x28>
}
    468a:	bf00      	nop
    468c:	3710      	adds	r7, #16
    468e:	46bd      	mov	sp, r7
    4690:	bd80      	pop	{r7, pc}
    4692:	bf00      	nop
    4694:	000061d8 	.word	0x000061d8
    4698:	20004e48 	.word	0x20004e48

0000469c <noise>:

// produit un bruit 
void noise(int length){
    469c:	b580      	push	{r7, lr}
    469e:	b084      	sub	sp, #16
    46a0:	af00      	add	r7, sp, #0
    46a2:	6078      	str	r0, [r7, #4]
    int i;
    srand(ntsc_ticks);
    46a4:	4b0f      	ldr	r3, [pc, #60]	; (46e4 <noise+0x48>)
    46a6:	681b      	ldr	r3, [r3, #0]
    46a8:	4618      	mov	r0, r3
    46aa:	f7fb fee9 	bl	480 <srand>
    for (i=0;i<16;i++) sound_buffer[i]=rand()&0xff;
    46ae:	2300      	movs	r3, #0
    46b0:	60fb      	str	r3, [r7, #12]
    46b2:	e00b      	b.n	46cc <noise+0x30>
    46b4:	f7fb fef2 	bl	49c <rand>
    46b8:	4603      	mov	r3, r0
    46ba:	b2d9      	uxtb	r1, r3
    46bc:	4a0a      	ldr	r2, [pc, #40]	; (46e8 <noise+0x4c>)
    46be:	68fb      	ldr	r3, [r7, #12]
    46c0:	4413      	add	r3, r2
    46c2:	460a      	mov	r2, r1
    46c4:	701a      	strb	r2, [r3, #0]
    46c6:	68fb      	ldr	r3, [r7, #12]
    46c8:	3301      	adds	r3, #1
    46ca:	60fb      	str	r3, [r7, #12]
    46cc:	68fb      	ldr	r3, [r7, #12]
    46ce:	2b0f      	cmp	r3, #15
    46d0:	ddf0      	ble.n	46b4 <noise+0x18>
    sound_sampler(length);
    46d2:	687b      	ldr	r3, [r7, #4]
    46d4:	b29b      	uxth	r3, r3
    46d6:	4618      	mov	r0, r3
    46d8:	f7ff ff64 	bl	45a4 <sound_sampler>
}
    46dc:	bf00      	nop
    46de:	3710      	adds	r7, #16
    46e0:	46bd      	mov	sp, r7
    46e2:	bd80      	pop	{r7, pc}
    46e4:	20004e44 	.word	0x20004e44
    46e8:	20000694 	.word	0x20000694

000046ec <sound_handler>:

void __attribute__((__interrupt__)) sound_handler(){
    46ec:	4668      	mov	r0, sp
    46ee:	f020 0107 	bic.w	r1, r0, #7
    46f2:	468d      	mov	sp, r1
    46f4:	b481      	push	{r0, r7}
    46f6:	b082      	sub	sp, #8
    46f8:	af00      	add	r7, sp, #0
    uint8_t byte,mask;
    byte=bit_pos/8;
    46fa:	4b1e      	ldr	r3, [pc, #120]	; (4774 <sound_handler+0x88>)
    46fc:	781b      	ldrb	r3, [r3, #0]
    46fe:	08db      	lsrs	r3, r3, #3
    4700:	71fb      	strb	r3, [r7, #7]
    mask=1<<(7-bit_pos%8);
    4702:	4b1c      	ldr	r3, [pc, #112]	; (4774 <sound_handler+0x88>)
    4704:	781b      	ldrb	r3, [r3, #0]
    4706:	43db      	mvns	r3, r3
    4708:	f003 0307 	and.w	r3, r3, #7
    470c:	2201      	movs	r2, #1
    470e:	fa02 f303 	lsl.w	r3, r2, r3
    4712:	71bb      	strb	r3, [r7, #6]
    if (sound_buffer[byte]&mask){
    4714:	79fb      	ldrb	r3, [r7, #7]
    4716:	4a18      	ldr	r2, [pc, #96]	; (4778 <sound_handler+0x8c>)
    4718:	5cd2      	ldrb	r2, [r2, r3]
    471a:	79bb      	ldrb	r3, [r7, #6]
    471c:	4013      	ands	r3, r2
    471e:	b2db      	uxtb	r3, r3
    4720:	2b00      	cmp	r3, #0
    4722:	d006      	beq.n	4732 <sound_handler+0x46>
        PORTB->ODR|=BIT10;
    4724:	4a15      	ldr	r2, [pc, #84]	; (477c <sound_handler+0x90>)
    4726:	4b15      	ldr	r3, [pc, #84]	; (477c <sound_handler+0x90>)
    4728:	68db      	ldr	r3, [r3, #12]
    472a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    472e:	60d3      	str	r3, [r2, #12]
    4730:	e005      	b.n	473e <sound_handler+0x52>
    }else{
        PORTB->ODR&=~BIT10;
    4732:	4a12      	ldr	r2, [pc, #72]	; (477c <sound_handler+0x90>)
    4734:	4b11      	ldr	r3, [pc, #68]	; (477c <sound_handler+0x90>)
    4736:	68db      	ldr	r3, [r3, #12]
    4738:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    473c:	60d3      	str	r3, [r2, #12]
    }
    bit_pos++;
    473e:	4b0d      	ldr	r3, [pc, #52]	; (4774 <sound_handler+0x88>)
    4740:	781b      	ldrb	r3, [r3, #0]
    4742:	3301      	adds	r3, #1
    4744:	b2da      	uxtb	r2, r3
    4746:	4b0b      	ldr	r3, [pc, #44]	; (4774 <sound_handler+0x88>)
    4748:	701a      	strb	r2, [r3, #0]
    bit_pos%=SOUND_BUFFER_SIZE;
    474a:	4b0a      	ldr	r3, [pc, #40]	; (4774 <sound_handler+0x88>)
    474c:	781b      	ldrb	r3, [r3, #0]
    474e:	f003 030f 	and.w	r3, r3, #15
    4752:	b2da      	uxtb	r2, r3
    4754:	4b07      	ldr	r3, [pc, #28]	; (4774 <sound_handler+0x88>)
    4756:	701a      	strb	r2, [r3, #0]
    TMR2->SR&=~TMR_SR_UIF;
    4758:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    475c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4760:	691b      	ldr	r3, [r3, #16]
    4762:	f023 0301 	bic.w	r3, r3, #1
    4766:	6113      	str	r3, [r2, #16]
}
    4768:	bf00      	nop
    476a:	3708      	adds	r7, #8
    476c:	46bd      	mov	sp, r7
    476e:	bc81      	pop	{r0, r7}
    4770:	4685      	mov	sp, r0
    4772:	4770      	bx	lr
    4774:	200006a4 	.word	0x200006a4
    4778:	20000694 	.word	0x20000694
    477c:	40010c00 	.word	0x40010c00

00004780 <spi_baudrate>:
 */

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
    4780:	b480      	push	{r7}
    4782:	b083      	sub	sp, #12
    4784:	af00      	add	r7, sp, #0
    4786:	6078      	str	r0, [r7, #4]
    4788:	6039      	str	r1, [r7, #0]
	channel->CR1&=SPI_CR1_BR_MASK;
    478a:	687b      	ldr	r3, [r7, #4]
    478c:	681b      	ldr	r3, [r3, #0]
    478e:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    4792:	687b      	ldr	r3, [r7, #4]
    4794:	601a      	str	r2, [r3, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    4796:	687b      	ldr	r3, [r7, #4]
    4798:	681a      	ldr	r2, [r3, #0]
    479a:	683b      	ldr	r3, [r7, #0]
    479c:	00db      	lsls	r3, r3, #3
    479e:	431a      	orrs	r2, r3
    47a0:	687b      	ldr	r3, [r7, #4]
    47a2:	601a      	str	r2, [r3, #0]
}
    47a4:	bf00      	nop
    47a6:	370c      	adds	r7, #12
    47a8:	46bd      	mov	sp, r7
    47aa:	bc80      	pop	{r7}
    47ac:	4770      	bx	lr

000047ae <spi_config_port>:

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    47ae:	b580      	push	{r7, lr}
    47b0:	b082      	sub	sp, #8
    47b2:	af00      	add	r7, sp, #0
    47b4:	6078      	str	r0, [r7, #4]
    47b6:	6039      	str	r1, [r7, #0]
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    47b8:	4a33      	ldr	r2, [pc, #204]	; (4888 <spi_config_port+0xda>)
    47ba:	4b33      	ldr	r3, [pc, #204]	; (4888 <spi_config_port+0xda>)
    47bc:	699b      	ldr	r3, [r3, #24]
    47be:	f043 0301 	orr.w	r3, r3, #1
    47c2:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    47c4:	687b      	ldr	r3, [r7, #4]
    47c6:	4a31      	ldr	r2, [pc, #196]	; (488c <spi_config_port+0xde>)
    47c8:	4293      	cmp	r3, r2
    47ca:	d13e      	bne.n	484a <spi_config_port+0x9c>
		if (!afio_cfg){
    47cc:	683b      	ldr	r3, [r7, #0]
    47ce:	2b00      	cmp	r3, #0
    47d0:	d11a      	bne.n	4808 <spi_config_port+0x5a>
			// activation clock du port
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    47d2:	4a2d      	ldr	r2, [pc, #180]	; (4888 <spi_config_port+0xda>)
    47d4:	4b2c      	ldr	r3, [pc, #176]	; (4888 <spi_config_port+0xda>)
    47d6:	699b      	ldr	r3, [r3, #24]
    47d8:	f043 0304 	orr.w	r3, r3, #4
    47dc:	6193      	str	r3, [r2, #24]
			// configuration port
			// PA4 -> NSS output (push-pull)
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    47de:	2203      	movs	r2, #3
    47e0:	2104      	movs	r1, #4
    47e2:	482b      	ldr	r0, [pc, #172]	; (4890 <spi_config_port+0xe2>)
    47e4:	f7fd fd44 	bl	2270 <config_pin>
			// PA5 -> SCK output (push-pull)
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    47e8:	220b      	movs	r2, #11
    47ea:	2105      	movs	r1, #5
    47ec:	4828      	ldr	r0, [pc, #160]	; (4890 <spi_config_port+0xe2>)
    47ee:	f7fd fd3f 	bl	2270 <config_pin>
			// PA6 -> MISO input (floating)
			config_pin(PORTA,6,INPUT_FLOAT);
    47f2:	2204      	movs	r2, #4
    47f4:	2106      	movs	r1, #6
    47f6:	4826      	ldr	r0, [pc, #152]	; (4890 <spi_config_port+0xe2>)
    47f8:	f7fd fd3a 	bl	2270 <config_pin>
			// PA7 -> MOSI output (push-pull)
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    47fc:	220b      	movs	r2, #11
    47fe:	2107      	movs	r1, #7
    4800:	4823      	ldr	r0, [pc, #140]	; (4890 <spi_config_port+0xe2>)
    4802:	f7fd fd35 	bl	2270 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
	}
}
    4806:	e03a      	b.n	487e <spi_config_port+0xd0>
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    4808:	4a1f      	ldr	r2, [pc, #124]	; (4888 <spi_config_port+0xda>)
    480a:	4b1f      	ldr	r3, [pc, #124]	; (4888 <spi_config_port+0xda>)
    480c:	699b      	ldr	r3, [r3, #24]
    480e:	f043 030d 	orr.w	r3, r3, #13
    4812:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    4814:	4a1f      	ldr	r2, [pc, #124]	; (4894 <spi_config_port+0xe6>)
    4816:	4b1f      	ldr	r3, [pc, #124]	; (4894 <spi_config_port+0xe6>)
    4818:	685b      	ldr	r3, [r3, #4]
    481a:	f043 0301 	orr.w	r3, r3, #1
    481e:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    4820:	2203      	movs	r2, #3
    4822:	210f      	movs	r1, #15
    4824:	481a      	ldr	r0, [pc, #104]	; (4890 <spi_config_port+0xe2>)
    4826:	f7fd fd23 	bl	2270 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    482a:	220b      	movs	r2, #11
    482c:	2103      	movs	r1, #3
    482e:	481a      	ldr	r0, [pc, #104]	; (4898 <spi_config_port+0xea>)
    4830:	f7fd fd1e 	bl	2270 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    4834:	2204      	movs	r2, #4
    4836:	2104      	movs	r1, #4
    4838:	4817      	ldr	r0, [pc, #92]	; (4898 <spi_config_port+0xea>)
    483a:	f7fd fd19 	bl	2270 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    483e:	220b      	movs	r2, #11
    4840:	2105      	movs	r1, #5
    4842:	4815      	ldr	r0, [pc, #84]	; (4898 <spi_config_port+0xea>)
    4844:	f7fd fd14 	bl	2270 <config_pin>
}
    4848:	e019      	b.n	487e <spi_config_port+0xd0>
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    484a:	4a0f      	ldr	r2, [pc, #60]	; (4888 <spi_config_port+0xda>)
    484c:	4b0e      	ldr	r3, [pc, #56]	; (4888 <spi_config_port+0xda>)
    484e:	699b      	ldr	r3, [r3, #24]
    4850:	f043 0308 	orr.w	r3, r3, #8
    4854:	6193      	str	r3, [r2, #24]
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    4856:	2203      	movs	r2, #3
    4858:	2102      	movs	r1, #2
    485a:	480f      	ldr	r0, [pc, #60]	; (4898 <spi_config_port+0xea>)
    485c:	f7fd fd08 	bl	2270 <config_pin>
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    4860:	220b      	movs	r2, #11
    4862:	210d      	movs	r1, #13
    4864:	480c      	ldr	r0, [pc, #48]	; (4898 <spi_config_port+0xea>)
    4866:	f7fd fd03 	bl	2270 <config_pin>
		config_pin(PORTB,14,INPUT_FLOAT);
    486a:	2204      	movs	r2, #4
    486c:	210e      	movs	r1, #14
    486e:	480a      	ldr	r0, [pc, #40]	; (4898 <spi_config_port+0xea>)
    4870:	f7fd fcfe 	bl	2270 <config_pin>
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    4874:	220b      	movs	r2, #11
    4876:	210f      	movs	r1, #15
    4878:	4807      	ldr	r0, [pc, #28]	; (4898 <spi_config_port+0xea>)
    487a:	f7fd fcf9 	bl	2270 <config_pin>
}
    487e:	bf00      	nop
    4880:	3708      	adds	r7, #8
    4882:	46bd      	mov	sp, r7
    4884:	bd80      	pop	{r7, pc}
    4886:	bf00      	nop
    4888:	40021000 	.word	0x40021000
    488c:	40013000 	.word	0x40013000
    4890:	40010800 	.word	0x40010800
    4894:	40010000 	.word	0x40010000
    4898:	40010c00 	.word	0x40010c00

0000489c <spi_init>:

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    489c:	b580      	push	{r7, lr}
    489e:	b084      	sub	sp, #16
    48a0:	af00      	add	r7, sp, #0
    48a2:	60f8      	str	r0, [r7, #12]
    48a4:	60b9      	str	r1, [r7, #8]
    48a6:	607a      	str	r2, [r7, #4]
    48a8:	603b      	str	r3, [r7, #0]
	spi_config_port(channel,afio_cfg);
    48aa:	6839      	ldr	r1, [r7, #0]
    48ac:	68f8      	ldr	r0, [r7, #12]
    48ae:	f7ff ff7e 	bl	47ae <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    48b2:	68fb      	ldr	r3, [r7, #12]
    48b4:	4a10      	ldr	r2, [pc, #64]	; (48f8 <spi_init+0x5c>)
    48b6:	4293      	cmp	r3, r2
    48b8:	d106      	bne.n	48c8 <spi_init+0x2c>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    48ba:	4a10      	ldr	r2, [pc, #64]	; (48fc <spi_init+0x60>)
    48bc:	4b0f      	ldr	r3, [pc, #60]	; (48fc <spi_init+0x60>)
    48be:	699b      	ldr	r3, [r3, #24]
    48c0:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    48c4:	6193      	str	r3, [r2, #24]
    48c6:	e005      	b.n	48d4 <spi_init+0x38>
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    48c8:	4a0c      	ldr	r2, [pc, #48]	; (48fc <spi_init+0x60>)
    48ca:	4b0c      	ldr	r3, [pc, #48]	; (48fc <spi_init+0x60>)
    48cc:	69db      	ldr	r3, [r3, #28]
    48ce:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    48d2:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    48d4:	68fb      	ldr	r3, [r7, #12]
    48d6:	687a      	ldr	r2, [r7, #4]
    48d8:	601a      	str	r2, [r3, #0]
	spi_baudrate(channel,baud);
    48da:	68b9      	ldr	r1, [r7, #8]
    48dc:	68f8      	ldr	r0, [r7, #12]
    48de:	f7ff ff4f 	bl	4780 <spi_baudrate>
	_spi_enable(channel);
    48e2:	68fb      	ldr	r3, [r7, #12]
    48e4:	681b      	ldr	r3, [r3, #0]
    48e6:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    48ea:	68fb      	ldr	r3, [r7, #12]
    48ec:	601a      	str	r2, [r3, #0]
}
    48ee:	bf00      	nop
    48f0:	3710      	adds	r7, #16
    48f2:	46bd      	mov	sp, r7
    48f4:	bd80      	pop	{r7, pc}
    48f6:	bf00      	nop
    48f8:	40013000 	.word	0x40013000
    48fc:	40021000 	.word	0x40021000

00004900 <spi_send>:


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
    4900:	b480      	push	{r7}
    4902:	b083      	sub	sp, #12
    4904:	af00      	add	r7, sp, #0
    4906:	6078      	str	r0, [r7, #4]
    4908:	460b      	mov	r3, r1
    490a:	70fb      	strb	r3, [r7, #3]
	while (!(channel->SR&SPI_SR_TXE));
    490c:	bf00      	nop
    490e:	687b      	ldr	r3, [r7, #4]
    4910:	689b      	ldr	r3, [r3, #8]
    4912:	f003 0302 	and.w	r3, r3, #2
    4916:	2b00      	cmp	r3, #0
    4918:	d0f9      	beq.n	490e <spi_send+0xe>
	channel->DR=b;
    491a:	78fa      	ldrb	r2, [r7, #3]
    491c:	687b      	ldr	r3, [r7, #4]
    491e:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    4920:	bf00      	nop
    4922:	687b      	ldr	r3, [r7, #4]
    4924:	689b      	ldr	r3, [r3, #8]
    4926:	f003 0301 	and.w	r3, r3, #1
    492a:	2b00      	cmp	r3, #0
    492c:	d0f9      	beq.n	4922 <spi_send+0x22>
	return (uint8_t)channel->DR;
    492e:	687b      	ldr	r3, [r7, #4]
    4930:	68db      	ldr	r3, [r3, #12]
    4932:	b2db      	uxtb	r3, r3
}
    4934:	4618      	mov	r0, r3
    4936:	370c      	adds	r7, #12
    4938:	46bd      	mov	sp, r7
    493a:	bc80      	pop	{r7}
    493c:	4770      	bx	lr

0000493e <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
    493e:	b480      	push	{r7}
    4940:	b085      	sub	sp, #20
    4942:	af00      	add	r7, sp, #0
    4944:	6078      	str	r0, [r7, #4]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    4946:	bf00      	nop
    4948:	687b      	ldr	r3, [r7, #4]
    494a:	689b      	ldr	r3, [r3, #8]
    494c:	f003 0302 	and.w	r3, r3, #2
    4950:	2b00      	cmp	r3, #0
    4952:	d0f9      	beq.n	4948 <spi_receive+0xa>
	channel->DR=255;
    4954:	687b      	ldr	r3, [r7, #4]
    4956:	22ff      	movs	r2, #255	; 0xff
    4958:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    495a:	bf00      	nop
    495c:	687b      	ldr	r3, [r7, #4]
    495e:	689b      	ldr	r3, [r3, #8]
    4960:	f003 0301 	and.w	r3, r3, #1
    4964:	2b00      	cmp	r3, #0
    4966:	d0f9      	beq.n	495c <spi_receive+0x1e>
	rx=(uint8_t)channel->DR;
    4968:	687b      	ldr	r3, [r7, #4]
    496a:	68db      	ldr	r3, [r3, #12]
    496c:	73fb      	strb	r3, [r7, #15]
	return rx;
    496e:	7bfb      	ldrb	r3, [r7, #15]
}
    4970:	4618      	mov	r0, r3
    4972:	3714      	adds	r7, #20
    4974:	46bd      	mov	sp, r7
    4976:	bc80      	pop	{r7}
    4978:	4770      	bx	lr

0000497a <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
    497a:	b480      	push	{r7}
    497c:	b087      	sub	sp, #28
    497e:	af00      	add	r7, sp, #0
    4980:	60f8      	str	r0, [r7, #12]
    4982:	60b9      	str	r1, [r7, #8]
    4984:	607a      	str	r2, [r7, #4]
	uint8_t rx;
	while (count){
    4986:	e010      	b.n	49aa <spi_send_block+0x30>
		channel->DR=*buffer++;
    4988:	68bb      	ldr	r3, [r7, #8]
    498a:	1c5a      	adds	r2, r3, #1
    498c:	60ba      	str	r2, [r7, #8]
    498e:	781b      	ldrb	r3, [r3, #0]
    4990:	461a      	mov	r2, r3
    4992:	68fb      	ldr	r3, [r7, #12]
    4994:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_TXE));
    4996:	bf00      	nop
    4998:	68fb      	ldr	r3, [r7, #12]
    499a:	689b      	ldr	r3, [r3, #8]
    499c:	f003 0302 	and.w	r3, r3, #2
    49a0:	2b00      	cmp	r3, #0
    49a2:	d0f9      	beq.n	4998 <spi_send_block+0x1e>
		count--;
    49a4:	687b      	ldr	r3, [r7, #4]
    49a6:	3b01      	subs	r3, #1
    49a8:	607b      	str	r3, [r7, #4]
	while (count){
    49aa:	687b      	ldr	r3, [r7, #4]
    49ac:	2b00      	cmp	r3, #0
    49ae:	d1eb      	bne.n	4988 <spi_send_block+0xe>
	}
	while (channel->SR&SPI_SR_BSY);
    49b0:	bf00      	nop
    49b2:	68fb      	ldr	r3, [r7, #12]
    49b4:	689b      	ldr	r3, [r3, #8]
    49b6:	f003 0380 	and.w	r3, r3, #128	; 0x80
    49ba:	2b00      	cmp	r3, #0
    49bc:	d1f9      	bne.n	49b2 <spi_send_block+0x38>
	rx=(uint8_t)channel->DR;
    49be:	68fb      	ldr	r3, [r7, #12]
    49c0:	68db      	ldr	r3, [r3, #12]
    49c2:	75fb      	strb	r3, [r7, #23]
}
    49c4:	bf00      	nop
    49c6:	371c      	adds	r7, #28
    49c8:	46bd      	mov	sp, r7
    49ca:	bc80      	pop	{r7}
    49cc:	4770      	bx	lr

000049ce <spi_receive_block>:

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    49ce:	b480      	push	{r7}
    49d0:	b085      	sub	sp, #20
    49d2:	af00      	add	r7, sp, #0
    49d4:	60f8      	str	r0, [r7, #12]
    49d6:	60b9      	str	r1, [r7, #8]
    49d8:	607a      	str	r2, [r7, #4]
	while (count){
    49da:	e013      	b.n	4a04 <spi_receive_block+0x36>
		channel->DR=0;
    49dc:	68fb      	ldr	r3, [r7, #12]
    49de:	2200      	movs	r2, #0
    49e0:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    49e2:	bf00      	nop
    49e4:	68fb      	ldr	r3, [r7, #12]
    49e6:	689b      	ldr	r3, [r3, #8]
    49e8:	f003 0301 	and.w	r3, r3, #1
    49ec:	2b00      	cmp	r3, #0
    49ee:	d0f9      	beq.n	49e4 <spi_receive_block+0x16>
		*buffer++=(uint8_t)channel->DR;
    49f0:	68bb      	ldr	r3, [r7, #8]
    49f2:	1c5a      	adds	r2, r3, #1
    49f4:	60ba      	str	r2, [r7, #8]
    49f6:	68fa      	ldr	r2, [r7, #12]
    49f8:	68d2      	ldr	r2, [r2, #12]
    49fa:	b2d2      	uxtb	r2, r2
    49fc:	701a      	strb	r2, [r3, #0]
		count--;
    49fe:	687b      	ldr	r3, [r7, #4]
    4a00:	3b01      	subs	r3, #1
    4a02:	607b      	str	r3, [r7, #4]
	while (count){
    4a04:	687b      	ldr	r3, [r7, #4]
    4a06:	2b00      	cmp	r3, #0
    4a08:	d1e8      	bne.n	49dc <spi_receive_block+0xe>
	}
}
    4a0a:	bf00      	nop
    4a0c:	3714      	adds	r7, #20
    4a0e:	46bd      	mov	sp, r7
    4a10:	bc80      	pop	{r7}
    4a12:	4770      	bx	lr

00004a14 <reset_mcu>:
	_reset_mcu();
    4a14:	4b01      	ldr	r3, [pc, #4]	; (4a1c <reset_mcu+0x8>)
    4a16:	4a02      	ldr	r2, [pc, #8]	; (4a20 <reset_mcu+0xc>)
    4a18:	601a      	str	r2, [r3, #0]
}
    4a1a:	bf00      	nop
    4a1c:	e000ed0c 	.word	0xe000ed0c
    4a20:	05fa0004 	.word	0x05fa0004

00004a24 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    4a24:	b580      	push	{r7, lr}
    4a26:	b082      	sub	sp, #8
    4a28:	af00      	add	r7, sp, #0
    4a2a:	6078      	str	r0, [r7, #4]
    4a2c:	6039      	str	r1, [r7, #0]
	print(msg);
    4a2e:	6878      	ldr	r0, [r7, #4]
    4a30:	f000 f9bc 	bl	4dac <print>
	print("\nat address ");
    4a34:	4818      	ldr	r0, [pc, #96]	; (4a98 <print_fault+0x74>)
    4a36:	f000 f9b9 	bl	4dac <print>
	if (adr) {
    4a3a:	683b      	ldr	r3, [r7, #0]
    4a3c:	2b00      	cmp	r3, #0
    4a3e:	d004      	beq.n	4a4a <print_fault+0x26>
		print_int(adr,16);
    4a40:	683b      	ldr	r3, [r7, #0]
    4a42:	2110      	movs	r1, #16
    4a44:	4618      	mov	r0, r3
    4a46:	f000 f9e1 	bl	4e0c <print_int>
	put_char(CR);
    4a4a:	200d      	movs	r0, #13
    4a4c:	f000 f8f6 	bl	4c3c <put_char>
	print("\nUFSR=");
    4a50:	4812      	ldr	r0, [pc, #72]	; (4a9c <print_fault+0x78>)
    4a52:	f000 f9ab 	bl	4dac <print>
	print_int(CFSR->fsr.usageFalt,16);
    4a56:	4b12      	ldr	r3, [pc, #72]	; (4aa0 <print_fault+0x7c>)
    4a58:	681b      	ldr	r3, [r3, #0]
    4a5a:	f3c3 430f 	ubfx	r3, r3, #16, #16
    4a5e:	b29b      	uxth	r3, r3
    4a60:	2110      	movs	r1, #16
    4a62:	4618      	mov	r0, r3
    4a64:	f000 f9d2 	bl	4e0c <print_int>
	print("\nBFSR=");
    4a68:	480e      	ldr	r0, [pc, #56]	; (4aa4 <print_fault+0x80>)
    4a6a:	f000 f99f 	bl	4dac <print>
	print_int(CFSR->fsr.busFault,16);
    4a6e:	4b0c      	ldr	r3, [pc, #48]	; (4aa0 <print_fault+0x7c>)
    4a70:	681b      	ldr	r3, [r3, #0]
    4a72:	f3c3 2307 	ubfx	r3, r3, #8, #8
    4a76:	b2db      	uxtb	r3, r3
    4a78:	2110      	movs	r1, #16
    4a7a:	4618      	mov	r0, r3
    4a7c:	f000 f9c6 	bl	4e0c <print_int>
	print("\nMMFSR=");
    4a80:	4809      	ldr	r0, [pc, #36]	; (4aa8 <print_fault+0x84>)
    4a82:	f000 f993 	bl	4dac <print>
	print_int(CFSR->fsr.mmFault,16);
    4a86:	4b06      	ldr	r3, [pc, #24]	; (4aa0 <print_fault+0x7c>)
    4a88:	681b      	ldr	r3, [r3, #0]
    4a8a:	b2db      	uxtb	r3, r3
    4a8c:	2110      	movs	r1, #16
    4a8e:	4618      	mov	r0, r3
    4a90:	f000 f9bc 	bl	4e0c <print_int>
	while(1);
    4a94:	e7fe      	b.n	4a94 <print_fault+0x70>
    4a96:	bf00      	nop
    4a98:	000061f8 	.word	0x000061f8
    4a9c:	00006208 	.word	0x00006208
    4aa0:	e000ed28 	.word	0xe000ed28
    4aa4:	00006210 	.word	0x00006210
    4aa8:	00006218 	.word	0x00006218

00004aac <font_color>:
#define BG 0 // background
#define FG 1 // foreground
static uint8_t text_colors[2]={0,15};


void font_color(uint8_t color){
    4aac:	b480      	push	{r7}
    4aae:	b083      	sub	sp, #12
    4ab0:	af00      	add	r7, sp, #0
    4ab2:	4603      	mov	r3, r0
    4ab4:	71fb      	strb	r3, [r7, #7]
	text_colors[FG]=color&0xf;
    4ab6:	79fb      	ldrb	r3, [r7, #7]
    4ab8:	f003 030f 	and.w	r3, r3, #15
    4abc:	b2da      	uxtb	r2, r3
    4abe:	4b03      	ldr	r3, [pc, #12]	; (4acc <font_color+0x20>)
    4ac0:	705a      	strb	r2, [r3, #1]
}
    4ac2:	bf00      	nop
    4ac4:	370c      	adds	r7, #12
    4ac6:	46bd      	mov	sp, r7
    4ac8:	bc80      	pop	{r7}
    4aca:	4770      	bx	lr
    4acc:	20000200 	.word	0x20000200

00004ad0 <bg_color>:

void bg_color(uint8_t color){
    4ad0:	b480      	push	{r7}
    4ad2:	b083      	sub	sp, #12
    4ad4:	af00      	add	r7, sp, #0
    4ad6:	4603      	mov	r3, r0
    4ad8:	71fb      	strb	r3, [r7, #7]
	text_colors[BG]=color&0xf;
    4ada:	79fb      	ldrb	r3, [r7, #7]
    4adc:	f003 030f 	and.w	r3, r3, #15
    4ae0:	b2da      	uxtb	r2, r3
    4ae2:	4b03      	ldr	r3, [pc, #12]	; (4af0 <bg_color+0x20>)
    4ae4:	701a      	strb	r2, [r3, #0]
}
    4ae6:	bf00      	nop
    4ae8:	370c      	adds	r7, #12
    4aea:	46bd      	mov	sp, r7
    4aec:	bc80      	pop	{r7}
    4aee:	4770      	bx	lr
    4af0:	20000200 	.word	0x20000200

00004af4 <select_font>:

void select_font(uint8_t font_id){
    4af4:	b480      	push	{r7}
    4af6:	b083      	sub	sp, #12
    4af8:	af00      	add	r7, sp, #0
    4afa:	4603      	mov	r3, r0
    4afc:	71fb      	strb	r3, [r7, #7]
	font=font_id;
    4afe:	4a04      	ldr	r2, [pc, #16]	; (4b10 <select_font+0x1c>)
    4b00:	79fb      	ldrb	r3, [r7, #7]
    4b02:	7013      	strb	r3, [r2, #0]
}
    4b04:	bf00      	nop
    4b06:	370c      	adds	r7, #12
    4b08:	46bd      	mov	sp, r7
    4b0a:	bc80      	pop	{r7}
    4b0c:	4770      	bx	lr
    4b0e:	bf00      	nop
    4b10:	200001fc 	.word	0x200001fc

00004b14 <new_line>:


void new_line(){
    4b14:	b580      	push	{r7, lr}
    4b16:	b082      	sub	sp, #8
    4b18:	af00      	add	r7, sp, #0
	xpos=0;
    4b1a:	4b27      	ldr	r3, [pc, #156]	; (4bb8 <new_line+0xa4>)
    4b1c:	2200      	movs	r2, #0
    4b1e:	701a      	strb	r2, [r3, #0]
	vmode_params_t *vparams=get_video_params();	
    4b20:	f000 fdf4 	bl	570c <get_video_params>
    4b24:	6078      	str	r0, [r7, #4]
	switch (font){
    4b26:	4b25      	ldr	r3, [pc, #148]	; (4bbc <new_line+0xa8>)
    4b28:	781b      	ldrb	r3, [r3, #0]
    4b2a:	2b01      	cmp	r3, #1
    4b2c:	d017      	beq.n	4b5e <new_line+0x4a>
    4b2e:	2b02      	cmp	r3, #2
    4b30:	d029      	beq.n	4b86 <new_line+0x72>
    4b32:	2b00      	cmp	r3, #0
    4b34:	d000      	beq.n	4b38 <new_line+0x24>
			gfx_scroll_up(CHAR_HEIGHT);
		}
		break;	
	}//swtich

}
    4b36:	e03a      	b.n	4bae <new_line+0x9a>
		if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    4b38:	4b21      	ldr	r3, [pc, #132]	; (4bc0 <new_line+0xac>)
    4b3a:	781b      	ldrb	r3, [r3, #0]
    4b3c:	1d9a      	adds	r2, r3, #6
    4b3e:	687b      	ldr	r3, [r7, #4]
    4b40:	89db      	ldrh	r3, [r3, #14]
    4b42:	3b05      	subs	r3, #5
    4b44:	429a      	cmp	r2, r3
    4b46:	dc06      	bgt.n	4b56 <new_line+0x42>
			ypos+=SHEX_HEIGHT;
    4b48:	4b1d      	ldr	r3, [pc, #116]	; (4bc0 <new_line+0xac>)
    4b4a:	781b      	ldrb	r3, [r3, #0]
    4b4c:	3306      	adds	r3, #6
    4b4e:	b2da      	uxtb	r2, r3
    4b50:	4b1b      	ldr	r3, [pc, #108]	; (4bc0 <new_line+0xac>)
    4b52:	701a      	strb	r2, [r3, #0]
		break;
    4b54:	e02b      	b.n	4bae <new_line+0x9a>
			gfx_scroll_up(SHEX_HEIGHT);
    4b56:	2006      	movs	r0, #6
    4b58:	f7fd fd4a 	bl	25f0 <gfx_scroll_up>
		break;
    4b5c:	e027      	b.n	4bae <new_line+0x9a>
		if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    4b5e:	4b18      	ldr	r3, [pc, #96]	; (4bc0 <new_line+0xac>)
    4b60:	781b      	ldrb	r3, [r3, #0]
    4b62:	f103 020a 	add.w	r2, r3, #10
    4b66:	687b      	ldr	r3, [r7, #4]
    4b68:	89db      	ldrh	r3, [r3, #14]
    4b6a:	3b09      	subs	r3, #9
    4b6c:	429a      	cmp	r2, r3
    4b6e:	dc06      	bgt.n	4b7e <new_line+0x6a>
			ypos+=LHEX_HEIGHT;
    4b70:	4b13      	ldr	r3, [pc, #76]	; (4bc0 <new_line+0xac>)
    4b72:	781b      	ldrb	r3, [r3, #0]
    4b74:	330a      	adds	r3, #10
    4b76:	b2da      	uxtb	r2, r3
    4b78:	4b11      	ldr	r3, [pc, #68]	; (4bc0 <new_line+0xac>)
    4b7a:	701a      	strb	r2, [r3, #0]
		break;
    4b7c:	e017      	b.n	4bae <new_line+0x9a>
			gfx_scroll_up(LHEX_HEIGHT);
    4b7e:	200a      	movs	r0, #10
    4b80:	f7fd fd36 	bl	25f0 <gfx_scroll_up>
		break;
    4b84:	e013      	b.n	4bae <new_line+0x9a>
		if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    4b86:	4b0e      	ldr	r3, [pc, #56]	; (4bc0 <new_line+0xac>)
    4b88:	781b      	ldrb	r3, [r3, #0]
    4b8a:	f103 0208 	add.w	r2, r3, #8
    4b8e:	687b      	ldr	r3, [r7, #4]
    4b90:	89db      	ldrh	r3, [r3, #14]
    4b92:	3b07      	subs	r3, #7
    4b94:	429a      	cmp	r2, r3
    4b96:	dc06      	bgt.n	4ba6 <new_line+0x92>
			ypos+=CHAR_HEIGHT;
    4b98:	4b09      	ldr	r3, [pc, #36]	; (4bc0 <new_line+0xac>)
    4b9a:	781b      	ldrb	r3, [r3, #0]
    4b9c:	3308      	adds	r3, #8
    4b9e:	b2da      	uxtb	r2, r3
    4ba0:	4b07      	ldr	r3, [pc, #28]	; (4bc0 <new_line+0xac>)
    4ba2:	701a      	strb	r2, [r3, #0]
		break;	
    4ba4:	e002      	b.n	4bac <new_line+0x98>
			gfx_scroll_up(CHAR_HEIGHT);
    4ba6:	2008      	movs	r0, #8
    4ba8:	f7fd fd22 	bl	25f0 <gfx_scroll_up>
		break;	
    4bac:	bf00      	nop
}
    4bae:	bf00      	nop
    4bb0:	3708      	adds	r7, #8
    4bb2:	46bd      	mov	sp, r7
    4bb4:	bd80      	pop	{r7, pc}
    4bb6:	bf00      	nop
    4bb8:	200006a5 	.word	0x200006a5
    4bbc:	200001fc 	.word	0x200001fc
    4bc0:	200006a6 	.word	0x200006a6

00004bc4 <draw_char>:

static void draw_char(int x,int y,int w, int h, const char* glyph){
    4bc4:	b5b0      	push	{r4, r5, r7, lr}
    4bc6:	b086      	sub	sp, #24
    4bc8:	af00      	add	r7, sp, #0
    4bca:	60f8      	str	r0, [r7, #12]
    4bcc:	60b9      	str	r1, [r7, #8]
    4bce:	607a      	str	r2, [r7, #4]
    4bd0:	603b      	str	r3, [r7, #0]
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    4bd2:	68bc      	ldr	r4, [r7, #8]
    4bd4:	e026      	b.n	4c24 <draw_char+0x60>
		byte=*glyph++;
    4bd6:	6abb      	ldr	r3, [r7, #40]	; 0x28
    4bd8:	1c5a      	adds	r2, r3, #1
    4bda:	62ba      	str	r2, [r7, #40]	; 0x28
    4bdc:	781b      	ldrb	r3, [r3, #0]
    4bde:	757b      	strb	r3, [r7, #21]
		mask=128;
    4be0:	2380      	movs	r3, #128	; 0x80
    4be2:	75bb      	strb	r3, [r7, #22]
		for (x0=x;x0<(x+w);x0++){
    4be4:	68fd      	ldr	r5, [r7, #12]
    4be6:	e017      	b.n	4c18 <draw_char+0x54>
			bit=byte&mask;
    4be8:	7d7a      	ldrb	r2, [r7, #21]
    4bea:	7dbb      	ldrb	r3, [r7, #22]
    4bec:	4013      	ands	r3, r2
    4bee:	753b      	strb	r3, [r7, #20]
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    4bf0:	7d3b      	ldrb	r3, [r7, #20]
    4bf2:	2b00      	cmp	r3, #0
    4bf4:	d003      	beq.n	4bfe <draw_char+0x3a>
    4bf6:	4b10      	ldr	r3, [pc, #64]	; (4c38 <draw_char+0x74>)
    4bf8:	785b      	ldrb	r3, [r3, #1]
    4bfa:	75fb      	strb	r3, [r7, #23]
    4bfc:	e002      	b.n	4c04 <draw_char+0x40>
    4bfe:	4b0e      	ldr	r3, [pc, #56]	; (4c38 <draw_char+0x74>)
    4c00:	781b      	ldrb	r3, [r3, #0]
    4c02:	75fb      	strb	r3, [r7, #23]
			gfx_plot(x0,y0,c);
    4c04:	7dfb      	ldrb	r3, [r7, #23]
    4c06:	461a      	mov	r2, r3
    4c08:	4621      	mov	r1, r4
    4c0a:	4628      	mov	r0, r5
    4c0c:	f7fd fc46 	bl	249c <gfx_plot>
			mask>>=1;
    4c10:	7dbb      	ldrb	r3, [r7, #22]
    4c12:	085b      	lsrs	r3, r3, #1
    4c14:	75bb      	strb	r3, [r7, #22]
		for (x0=x;x0<(x+w);x0++){
    4c16:	3501      	adds	r5, #1
    4c18:	68fa      	ldr	r2, [r7, #12]
    4c1a:	687b      	ldr	r3, [r7, #4]
    4c1c:	4413      	add	r3, r2
    4c1e:	42ab      	cmp	r3, r5
    4c20:	dce2      	bgt.n	4be8 <draw_char+0x24>
	for (y0=y;y0<(y+h);y0++){
    4c22:	3401      	adds	r4, #1
    4c24:	68ba      	ldr	r2, [r7, #8]
    4c26:	683b      	ldr	r3, [r7, #0]
    4c28:	4413      	add	r3, r2
    4c2a:	42a3      	cmp	r3, r4
    4c2c:	dcd3      	bgt.n	4bd6 <draw_char+0x12>
		}
	}
}
    4c2e:	bf00      	nop
    4c30:	3718      	adds	r7, #24
    4c32:	46bd      	mov	sp, r7
    4c34:	bdb0      	pop	{r4, r5, r7, pc}
    4c36:	bf00      	nop
    4c38:	20000200 	.word	0x20000200

00004c3c <put_char>:

void put_char(uint8_t c){
    4c3c:	b580      	push	{r7, lr}
    4c3e:	b084      	sub	sp, #16
    4c40:	af02      	add	r7, sp, #8
    4c42:	4603      	mov	r3, r0
    4c44:	71fb      	strb	r3, [r7, #7]
	switch(font){
    4c46:	4b3d      	ldr	r3, [pc, #244]	; (4d3c <put_char+0x100>)
    4c48:	781b      	ldrb	r3, [r3, #0]
    4c4a:	2b01      	cmp	r3, #1
    4c4c:	d027      	beq.n	4c9e <put_char+0x62>
    4c4e:	2b02      	cmp	r3, #2
    4c50:	d048      	beq.n	4ce4 <put_char+0xa8>
    4c52:	2b00      	cmp	r3, #0
    4c54:	d000      	beq.n	4c58 <put_char+0x1c>
				new_line();
			}
		}
		break;		
	}
}
    4c56:	e06d      	b.n	4d34 <put_char+0xf8>
		if (c<16){
    4c58:	79fb      	ldrb	r3, [r7, #7]
    4c5a:	2b0f      	cmp	r3, #15
    4c5c:	d865      	bhi.n	4d2a <put_char+0xee>
			draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    4c5e:	4b38      	ldr	r3, [pc, #224]	; (4d40 <put_char+0x104>)
    4c60:	781b      	ldrb	r3, [r3, #0]
    4c62:	4618      	mov	r0, r3
    4c64:	4b37      	ldr	r3, [pc, #220]	; (4d44 <put_char+0x108>)
    4c66:	781b      	ldrb	r3, [r3, #0]
    4c68:	4619      	mov	r1, r3
    4c6a:	79fa      	ldrb	r2, [r7, #7]
    4c6c:	4613      	mov	r3, r2
    4c6e:	005b      	lsls	r3, r3, #1
    4c70:	4413      	add	r3, r2
    4c72:	005b      	lsls	r3, r3, #1
    4c74:	461a      	mov	r2, r3
    4c76:	4b34      	ldr	r3, [pc, #208]	; (4d48 <put_char+0x10c>)
    4c78:	4413      	add	r3, r2
    4c7a:	9300      	str	r3, [sp, #0]
    4c7c:	2306      	movs	r3, #6
    4c7e:	2204      	movs	r2, #4
    4c80:	f7ff ffa0 	bl	4bc4 <draw_char>
			xpos+=SHEX_WIDTH;
    4c84:	4b2e      	ldr	r3, [pc, #184]	; (4d40 <put_char+0x104>)
    4c86:	781b      	ldrb	r3, [r3, #0]
    4c88:	3304      	adds	r3, #4
    4c8a:	b2da      	uxtb	r2, r3
    4c8c:	4b2c      	ldr	r3, [pc, #176]	; (4d40 <put_char+0x104>)
    4c8e:	701a      	strb	r2, [r3, #0]
			if (xpos>(HRES-SHEX_WIDTH+1)){
    4c90:	4b2b      	ldr	r3, [pc, #172]	; (4d40 <put_char+0x104>)
    4c92:	781b      	ldrb	r3, [r3, #0]
    4c94:	2bb1      	cmp	r3, #177	; 0xb1
    4c96:	d948      	bls.n	4d2a <put_char+0xee>
				new_line();
    4c98:	f7ff ff3c 	bl	4b14 <new_line>
		break;
    4c9c:	e045      	b.n	4d2a <put_char+0xee>
		if (c<16){
    4c9e:	79fb      	ldrb	r3, [r7, #7]
    4ca0:	2b0f      	cmp	r3, #15
    4ca2:	d844      	bhi.n	4d2e <put_char+0xf2>
			draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    4ca4:	4b26      	ldr	r3, [pc, #152]	; (4d40 <put_char+0x104>)
    4ca6:	781b      	ldrb	r3, [r3, #0]
    4ca8:	4618      	mov	r0, r3
    4caa:	4b26      	ldr	r3, [pc, #152]	; (4d44 <put_char+0x108>)
    4cac:	781b      	ldrb	r3, [r3, #0]
    4cae:	4619      	mov	r1, r3
    4cb0:	79fa      	ldrb	r2, [r7, #7]
    4cb2:	4613      	mov	r3, r2
    4cb4:	009b      	lsls	r3, r3, #2
    4cb6:	4413      	add	r3, r2
    4cb8:	005b      	lsls	r3, r3, #1
    4cba:	461a      	mov	r2, r3
    4cbc:	4b23      	ldr	r3, [pc, #140]	; (4d4c <put_char+0x110>)
    4cbe:	4413      	add	r3, r2
    4cc0:	9300      	str	r3, [sp, #0]
    4cc2:	230a      	movs	r3, #10
    4cc4:	2208      	movs	r2, #8
    4cc6:	f7ff ff7d 	bl	4bc4 <draw_char>
			xpos+=LHEX_WIDTH;
    4cca:	4b1d      	ldr	r3, [pc, #116]	; (4d40 <put_char+0x104>)
    4ccc:	781b      	ldrb	r3, [r3, #0]
    4cce:	3308      	adds	r3, #8
    4cd0:	b2da      	uxtb	r2, r3
    4cd2:	4b1b      	ldr	r3, [pc, #108]	; (4d40 <put_char+0x104>)
    4cd4:	701a      	strb	r2, [r3, #0]
			if (xpos>(HRES-LHEX_WIDTH+1)){
    4cd6:	4b1a      	ldr	r3, [pc, #104]	; (4d40 <put_char+0x104>)
    4cd8:	781b      	ldrb	r3, [r3, #0]
    4cda:	2bad      	cmp	r3, #173	; 0xad
    4cdc:	d927      	bls.n	4d2e <put_char+0xf2>
				new_line();
    4cde:	f7ff ff19 	bl	4b14 <new_line>
		break;
    4ce2:	e024      	b.n	4d2e <put_char+0xf2>
		if ((c>31) && (c<(FONT_SIZE+32))){
    4ce4:	79fb      	ldrb	r3, [r7, #7]
    4ce6:	2b1f      	cmp	r3, #31
    4ce8:	d923      	bls.n	4d32 <put_char+0xf6>
    4cea:	79fb      	ldrb	r3, [r7, #7]
    4cec:	2b84      	cmp	r3, #132	; 0x84
    4cee:	d820      	bhi.n	4d32 <put_char+0xf6>
			draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    4cf0:	4b13      	ldr	r3, [pc, #76]	; (4d40 <put_char+0x104>)
    4cf2:	781b      	ldrb	r3, [r3, #0]
    4cf4:	4618      	mov	r0, r3
    4cf6:	4b13      	ldr	r3, [pc, #76]	; (4d44 <put_char+0x108>)
    4cf8:	781b      	ldrb	r3, [r3, #0]
    4cfa:	4619      	mov	r1, r3
    4cfc:	79fb      	ldrb	r3, [r7, #7]
    4cfe:	3b20      	subs	r3, #32
    4d00:	00db      	lsls	r3, r3, #3
    4d02:	4a13      	ldr	r2, [pc, #76]	; (4d50 <put_char+0x114>)
    4d04:	4413      	add	r3, r2
    4d06:	9300      	str	r3, [sp, #0]
    4d08:	2308      	movs	r3, #8
    4d0a:	2206      	movs	r2, #6
    4d0c:	f7ff ff5a 	bl	4bc4 <draw_char>
			xpos+=CHAR_WIDTH;
    4d10:	4b0b      	ldr	r3, [pc, #44]	; (4d40 <put_char+0x104>)
    4d12:	781b      	ldrb	r3, [r3, #0]
    4d14:	3306      	adds	r3, #6
    4d16:	b2da      	uxtb	r2, r3
    4d18:	4b09      	ldr	r3, [pc, #36]	; (4d40 <put_char+0x104>)
    4d1a:	701a      	strb	r2, [r3, #0]
			if (xpos>(HRES-CHAR_WIDTH+1)){
    4d1c:	4b08      	ldr	r3, [pc, #32]	; (4d40 <put_char+0x104>)
    4d1e:	781b      	ldrb	r3, [r3, #0]
    4d20:	2baf      	cmp	r3, #175	; 0xaf
    4d22:	d906      	bls.n	4d32 <put_char+0xf6>
				new_line();
    4d24:	f7ff fef6 	bl	4b14 <new_line>
		break;		
    4d28:	e003      	b.n	4d32 <put_char+0xf6>
		break;
    4d2a:	bf00      	nop
    4d2c:	e002      	b.n	4d34 <put_char+0xf8>
		break;
    4d2e:	bf00      	nop
    4d30:	e000      	b.n	4d34 <put_char+0xf8>
		break;		
    4d32:	bf00      	nop
}
    4d34:	bf00      	nop
    4d36:	3708      	adds	r7, #8
    4d38:	46bd      	mov	sp, r7
    4d3a:	bd80      	pop	{r7, pc}
    4d3c:	200001fc 	.word	0x200001fc
    4d40:	200006a5 	.word	0x200006a5
    4d44:	200006a6 	.word	0x200006a6
    4d48:	00005c08 	.word	0x00005c08
    4d4c:	00005c68 	.word	0x00005c68
    4d50:	00005d08 	.word	0x00005d08

00004d54 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
    4d54:	b480      	push	{r7}
    4d56:	b083      	sub	sp, #12
    4d58:	af00      	add	r7, sp, #0
    4d5a:	4603      	mov	r3, r0
    4d5c:	460a      	mov	r2, r1
    4d5e:	71fb      	strb	r3, [r7, #7]
    4d60:	4613      	mov	r3, r2
    4d62:	71bb      	strb	r3, [r7, #6]
	xpos=x;
    4d64:	4a05      	ldr	r2, [pc, #20]	; (4d7c <set_cursor+0x28>)
    4d66:	79fb      	ldrb	r3, [r7, #7]
    4d68:	7013      	strb	r3, [r2, #0]
	ypos=y;
    4d6a:	4a05      	ldr	r2, [pc, #20]	; (4d80 <set_cursor+0x2c>)
    4d6c:	79bb      	ldrb	r3, [r7, #6]
    4d6e:	7013      	strb	r3, [r2, #0]
}
    4d70:	bf00      	nop
    4d72:	370c      	adds	r7, #12
    4d74:	46bd      	mov	sp, r7
    4d76:	bc80      	pop	{r7}
    4d78:	4770      	bx	lr
    4d7a:	bf00      	nop
    4d7c:	200006a5 	.word	0x200006a5
    4d80:	200006a6 	.word	0x200006a6

00004d84 <get_cursor>:

uint16_t get_cursor(){
    4d84:	b480      	push	{r7}
    4d86:	af00      	add	r7, sp, #0
	return (xpos<<8)+ypos;
    4d88:	4b06      	ldr	r3, [pc, #24]	; (4da4 <get_cursor+0x20>)
    4d8a:	781b      	ldrb	r3, [r3, #0]
    4d8c:	b29b      	uxth	r3, r3
    4d8e:	021b      	lsls	r3, r3, #8
    4d90:	b29a      	uxth	r2, r3
    4d92:	4b05      	ldr	r3, [pc, #20]	; (4da8 <get_cursor+0x24>)
    4d94:	781b      	ldrb	r3, [r3, #0]
    4d96:	b29b      	uxth	r3, r3
    4d98:	4413      	add	r3, r2
    4d9a:	b29b      	uxth	r3, r3
}
    4d9c:	4618      	mov	r0, r3
    4d9e:	46bd      	mov	sp, r7
    4da0:	bc80      	pop	{r7}
    4da2:	4770      	bx	lr
    4da4:	200006a5 	.word	0x200006a5
    4da8:	200006a6 	.word	0x200006a6

00004dac <print>:

void print(const char* str){
    4dac:	b580      	push	{r7, lr}
    4dae:	b084      	sub	sp, #16
    4db0:	af00      	add	r7, sp, #0
    4db2:	6078      	str	r0, [r7, #4]
    char c;
    while ((c=*str++)){
    4db4:	e011      	b.n	4dda <print+0x2e>
        switch(c){
    4db6:	7bfb      	ldrb	r3, [r7, #15]
    4db8:	2b0a      	cmp	r3, #10
    4dba:	d004      	beq.n	4dc6 <print+0x1a>
    4dbc:	2b0d      	cmp	r3, #13
    4dbe:	d002      	beq.n	4dc6 <print+0x1a>
    4dc0:	2b08      	cmp	r3, #8
    4dc2:	d003      	beq.n	4dcc <print+0x20>
    4dc4:	e005      	b.n	4dd2 <print+0x26>
        case LF:
        case CR:
            new_line();
    4dc6:	f7ff fea5 	bl	4b14 <new_line>
            break;
    4dca:	e006      	b.n	4dda <print+0x2e>
        case BS:
            cursor_left();    
    4dcc:	f000 f892 	bl	4ef4 <cursor_left>
            break;
    4dd0:	e003      	b.n	4dda <print+0x2e>
        default:
            put_char(c);
    4dd2:	7bfb      	ldrb	r3, [r7, #15]
    4dd4:	4618      	mov	r0, r3
    4dd6:	f7ff ff31 	bl	4c3c <put_char>
    while ((c=*str++)){
    4dda:	687b      	ldr	r3, [r7, #4]
    4ddc:	1c5a      	adds	r2, r3, #1
    4dde:	607a      	str	r2, [r7, #4]
    4de0:	781b      	ldrb	r3, [r3, #0]
    4de2:	73fb      	strb	r3, [r7, #15]
    4de4:	7bfb      	ldrb	r3, [r7, #15]
    4de6:	2b00      	cmp	r3, #0
    4de8:	d1e5      	bne.n	4db6 <print+0xa>
        }
    }
}
    4dea:	bf00      	nop
    4dec:	3710      	adds	r7, #16
    4dee:	46bd      	mov	sp, r7
    4df0:	bd80      	pop	{r7, pc}

00004df2 <println>:

// print text and do crlf()
void println(const char *text){
    4df2:	b580      	push	{r7, lr}
    4df4:	b082      	sub	sp, #8
    4df6:	af00      	add	r7, sp, #0
    4df8:	6078      	str	r0, [r7, #4]
	print(text);
    4dfa:	6878      	ldr	r0, [r7, #4]
    4dfc:	f7ff ffd6 	bl	4dac <print>
	new_line();
    4e00:	f7ff fe88 	bl	4b14 <new_line>
}
    4e04:	bf00      	nop
    4e06:	3708      	adds	r7, #8
    4e08:	46bd      	mov	sp, r7
    4e0a:	bd80      	pop	{r7, pc}

00004e0c <print_int>:

void print_int(int i,uint8_t base){
    4e0c:	b580      	push	{r7, lr}
    4e0e:	b08a      	sub	sp, #40	; 0x28
    4e10:	af00      	add	r7, sp, #0
    4e12:	6078      	str	r0, [r7, #4]
    4e14:	460b      	mov	r3, r1
    4e16:	70fb      	strb	r3, [r7, #3]
    char fmt[16],sign=0;
    4e18:	2300      	movs	r3, #0
    4e1a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    int idx,d;

    fmt[15]=0;
    4e1e:	2300      	movs	r3, #0
    4e20:	76fb      	strb	r3, [r7, #27]
    fmt[14]=' ';
    4e22:	2320      	movs	r3, #32
    4e24:	76bb      	strb	r3, [r7, #26]
    idx=14;
    4e26:	230e      	movs	r3, #14
    4e28:	623b      	str	r3, [r7, #32]
    if (i<0){
    4e2a:	687b      	ldr	r3, [r7, #4]
    4e2c:	2b00      	cmp	r3, #0
    4e2e:	da27      	bge.n	4e80 <print_int+0x74>
        sign=1;
    4e30:	2301      	movs	r3, #1
    4e32:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
        i=-i;
    4e36:	687b      	ldr	r3, [r7, #4]
    4e38:	425b      	negs	r3, r3
    4e3a:	607b      	str	r3, [r7, #4]
    }
    while (idx>1 && i){
    4e3c:	e020      	b.n	4e80 <print_int+0x74>
        d=i%base;
    4e3e:	78fa      	ldrb	r2, [r7, #3]
    4e40:	687b      	ldr	r3, [r7, #4]
    4e42:	fb93 f1f2 	sdiv	r1, r3, r2
    4e46:	fb02 f201 	mul.w	r2, r2, r1
    4e4a:	1a9b      	subs	r3, r3, r2
    4e4c:	61fb      	str	r3, [r7, #28]
        if (d>9) d+=7;
    4e4e:	69fb      	ldr	r3, [r7, #28]
    4e50:	2b09      	cmp	r3, #9
    4e52:	dd02      	ble.n	4e5a <print_int+0x4e>
    4e54:	69fb      	ldr	r3, [r7, #28]
    4e56:	3307      	adds	r3, #7
    4e58:	61fb      	str	r3, [r7, #28]
        fmt[--idx]=d+='0';
    4e5a:	6a3b      	ldr	r3, [r7, #32]
    4e5c:	3b01      	subs	r3, #1
    4e5e:	623b      	str	r3, [r7, #32]
    4e60:	69fb      	ldr	r3, [r7, #28]
    4e62:	3330      	adds	r3, #48	; 0x30
    4e64:	61fb      	str	r3, [r7, #28]
    4e66:	69fb      	ldr	r3, [r7, #28]
    4e68:	b2d9      	uxtb	r1, r3
    4e6a:	f107 020c 	add.w	r2, r7, #12
    4e6e:	6a3b      	ldr	r3, [r7, #32]
    4e70:	4413      	add	r3, r2
    4e72:	460a      	mov	r2, r1
    4e74:	701a      	strb	r2, [r3, #0]
        i/=base;
    4e76:	78fb      	ldrb	r3, [r7, #3]
    4e78:	687a      	ldr	r2, [r7, #4]
    4e7a:	fb92 f3f3 	sdiv	r3, r2, r3
    4e7e:	607b      	str	r3, [r7, #4]
    while (idx>1 && i){
    4e80:	6a3b      	ldr	r3, [r7, #32]
    4e82:	2b01      	cmp	r3, #1
    4e84:	dd02      	ble.n	4e8c <print_int+0x80>
    4e86:	687b      	ldr	r3, [r7, #4]
    4e88:	2b00      	cmp	r3, #0
    4e8a:	d1d8      	bne.n	4e3e <print_int+0x32>
    }
    if (idx==14)fmt[--idx]='0';
    4e8c:	6a3b      	ldr	r3, [r7, #32]
    4e8e:	2b0e      	cmp	r3, #14
    4e90:	d108      	bne.n	4ea4 <print_int+0x98>
    4e92:	6a3b      	ldr	r3, [r7, #32]
    4e94:	3b01      	subs	r3, #1
    4e96:	623b      	str	r3, [r7, #32]
    4e98:	f107 020c 	add.w	r2, r7, #12
    4e9c:	6a3b      	ldr	r3, [r7, #32]
    4e9e:	4413      	add	r3, r2
    4ea0:	2230      	movs	r2, #48	; 0x30
    4ea2:	701a      	strb	r2, [r3, #0]
    if (base==10 && sign){
    4ea4:	78fb      	ldrb	r3, [r7, #3]
    4ea6:	2b0a      	cmp	r3, #10
    4ea8:	d10d      	bne.n	4ec6 <print_int+0xba>
    4eaa:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    4eae:	2b00      	cmp	r3, #0
    4eb0:	d009      	beq.n	4ec6 <print_int+0xba>
        fmt[--idx]='-';
    4eb2:	6a3b      	ldr	r3, [r7, #32]
    4eb4:	3b01      	subs	r3, #1
    4eb6:	623b      	str	r3, [r7, #32]
    4eb8:	f107 020c 	add.w	r2, r7, #12
    4ebc:	6a3b      	ldr	r3, [r7, #32]
    4ebe:	4413      	add	r3, r2
    4ec0:	222d      	movs	r2, #45	; 0x2d
    4ec2:	701a      	strb	r2, [r3, #0]
    4ec4:	e00b      	b.n	4ede <print_int+0xd2>
    }else if (base==16){
    4ec6:	78fb      	ldrb	r3, [r7, #3]
    4ec8:	2b10      	cmp	r3, #16
    4eca:	d108      	bne.n	4ede <print_int+0xd2>
        fmt[--idx]='$';
    4ecc:	6a3b      	ldr	r3, [r7, #32]
    4ece:	3b01      	subs	r3, #1
    4ed0:	623b      	str	r3, [r7, #32]
    4ed2:	f107 020c 	add.w	r2, r7, #12
    4ed6:	6a3b      	ldr	r3, [r7, #32]
    4ed8:	4413      	add	r3, r2
    4eda:	2224      	movs	r2, #36	; 0x24
    4edc:	701a      	strb	r2, [r3, #0]
    }
    print(&fmt[idx]);
    4ede:	f107 020c 	add.w	r2, r7, #12
    4ee2:	6a3b      	ldr	r3, [r7, #32]
    4ee4:	4413      	add	r3, r2
    4ee6:	4618      	mov	r0, r3
    4ee8:	f7ff ff60 	bl	4dac <print>
}
    4eec:	bf00      	nop
    4eee:	3728      	adds	r7, #40	; 0x28
    4ef0:	46bd      	mov	sp, r7
    4ef2:	bd80      	pop	{r7, pc}

00004ef4 <cursor_left>:

void cursor_left(){
    4ef4:	b480      	push	{r7}
    4ef6:	af00      	add	r7, sp, #0
	switch(font){
    4ef8:	4b1a      	ldr	r3, [pc, #104]	; (4f64 <cursor_left+0x70>)
    4efa:	781b      	ldrb	r3, [r3, #0]
    4efc:	2b01      	cmp	r3, #1
    4efe:	d010      	beq.n	4f22 <cursor_left+0x2e>
    4f00:	2b02      	cmp	r3, #2
    4f02:	d01a      	beq.n	4f3a <cursor_left+0x46>
    4f04:	2b00      	cmp	r3, #0
    4f06:	d000      	beq.n	4f0a <cursor_left+0x16>
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
		break;	
	}
}
    4f08:	e028      	b.n	4f5c <cursor_left+0x68>
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    4f0a:	4b17      	ldr	r3, [pc, #92]	; (4f68 <cursor_left+0x74>)
    4f0c:	781b      	ldrb	r3, [r3, #0]
    4f0e:	3b04      	subs	r3, #4
    4f10:	2b00      	cmp	r3, #0
    4f12:	db1e      	blt.n	4f52 <cursor_left+0x5e>
    4f14:	4b14      	ldr	r3, [pc, #80]	; (4f68 <cursor_left+0x74>)
    4f16:	781b      	ldrb	r3, [r3, #0]
    4f18:	3b04      	subs	r3, #4
    4f1a:	b2da      	uxtb	r2, r3
    4f1c:	4b12      	ldr	r3, [pc, #72]	; (4f68 <cursor_left+0x74>)
    4f1e:	701a      	strb	r2, [r3, #0]
		break;
    4f20:	e017      	b.n	4f52 <cursor_left+0x5e>
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    4f22:	4b11      	ldr	r3, [pc, #68]	; (4f68 <cursor_left+0x74>)
    4f24:	781b      	ldrb	r3, [r3, #0]
    4f26:	3b08      	subs	r3, #8
    4f28:	2b00      	cmp	r3, #0
    4f2a:	db14      	blt.n	4f56 <cursor_left+0x62>
    4f2c:	4b0e      	ldr	r3, [pc, #56]	; (4f68 <cursor_left+0x74>)
    4f2e:	781b      	ldrb	r3, [r3, #0]
    4f30:	3b08      	subs	r3, #8
    4f32:	b2da      	uxtb	r2, r3
    4f34:	4b0c      	ldr	r3, [pc, #48]	; (4f68 <cursor_left+0x74>)
    4f36:	701a      	strb	r2, [r3, #0]
		break;
    4f38:	e00d      	b.n	4f56 <cursor_left+0x62>
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    4f3a:	4b0b      	ldr	r3, [pc, #44]	; (4f68 <cursor_left+0x74>)
    4f3c:	781b      	ldrb	r3, [r3, #0]
    4f3e:	3b06      	subs	r3, #6
    4f40:	2b00      	cmp	r3, #0
    4f42:	db0a      	blt.n	4f5a <cursor_left+0x66>
    4f44:	4b08      	ldr	r3, [pc, #32]	; (4f68 <cursor_left+0x74>)
    4f46:	781b      	ldrb	r3, [r3, #0]
    4f48:	3b06      	subs	r3, #6
    4f4a:	b2da      	uxtb	r2, r3
    4f4c:	4b06      	ldr	r3, [pc, #24]	; (4f68 <cursor_left+0x74>)
    4f4e:	701a      	strb	r2, [r3, #0]
		break;	
    4f50:	e003      	b.n	4f5a <cursor_left+0x66>
		break;
    4f52:	bf00      	nop
    4f54:	e002      	b.n	4f5c <cursor_left+0x68>
		break;
    4f56:	bf00      	nop
    4f58:	e000      	b.n	4f5c <cursor_left+0x68>
		break;	
    4f5a:	bf00      	nop
}
    4f5c:	bf00      	nop
    4f5e:	46bd      	mov	sp, r7
    4f60:	bc80      	pop	{r7}
    4f62:	4770      	bx	lr
    4f64:	200001fc 	.word	0x200001fc
    4f68:	200006a5 	.word	0x200006a5

00004f6c <text_scroller>:

void text_scroller(const uint8_t *text, uint8_t speed){
    4f6c:	b580      	push	{r7, lr}
    4f6e:	b084      	sub	sp, #16
    4f70:	af00      	add	r7, sp, #0
    4f72:	6078      	str	r0, [r7, #4]
    4f74:	460b      	mov	r3, r1
    4f76:	70fb      	strb	r3, [r7, #3]
	uint8_t c,j;

	gfx_cls();
    4f78:	f7fd fade 	bl	2538 <gfx_cls>
	select_font(FONT_ASCII);
    4f7c:	2002      	movs	r0, #2
    4f7e:	f7ff fdb9 	bl	4af4 <select_font>
	c=*text++;
    4f82:	687b      	ldr	r3, [r7, #4]
    4f84:	1c5a      	adds	r2, r3, #1
    4f86:	607a      	str	r2, [r7, #4]
    4f88:	781b      	ldrb	r3, [r3, #0]
    4f8a:	73fb      	strb	r3, [r7, #15]
	while (c){
    4f8c:	e035      	b.n	4ffa <text_scroller+0x8e>
		set_cursor(0,4*CHAR_HEIGHT);
    4f8e:	2120      	movs	r1, #32
    4f90:	2000      	movs	r0, #0
    4f92:	f7ff fedf 	bl	4d54 <set_cursor>
		while (c && c!='\n'){
    4f96:	e00e      	b.n	4fb6 <text_scroller+0x4a>
			put_char(c);
    4f98:	7bfb      	ldrb	r3, [r7, #15]
    4f9a:	4618      	mov	r0, r3
    4f9c:	f7ff fe4e 	bl	4c3c <put_char>
			c=*text++;
    4fa0:	687b      	ldr	r3, [r7, #4]
    4fa2:	1c5a      	adds	r2, r3, #1
    4fa4:	607a      	str	r2, [r7, #4]
    4fa6:	781b      	ldrb	r3, [r3, #0]
    4fa8:	73fb      	strb	r3, [r7, #15]
			if (btn_query_down(KEY_B)) {goto break_out;}
    4faa:	2020      	movs	r0, #32
    4fac:	f7fc fe02 	bl	1bb4 <btn_query_down>
    4fb0:	4603      	mov	r3, r0
    4fb2:	2b00      	cmp	r3, #0
    4fb4:	d13c      	bne.n	5030 <text_scroller+0xc4>
		while (c && c!='\n'){
    4fb6:	7bfb      	ldrb	r3, [r7, #15]
    4fb8:	2b00      	cmp	r3, #0
    4fba:	d002      	beq.n	4fc2 <text_scroller+0x56>
    4fbc:	7bfb      	ldrb	r3, [r7, #15]
    4fbe:	2b0a      	cmp	r3, #10
    4fc0:	d1ea      	bne.n	4f98 <text_scroller+0x2c>
		}
		for (j=0;j<CHAR_HEIGHT;j++){
    4fc2:	2300      	movs	r3, #0
    4fc4:	73bb      	strb	r3, [r7, #14]
    4fc6:	e010      	b.n	4fea <text_scroller+0x7e>
			game_pause(speed);
    4fc8:	78fb      	ldrb	r3, [r7, #3]
    4fca:	b29b      	uxth	r3, r3
    4fcc:	4618      	mov	r0, r3
    4fce:	f000 fbb1 	bl	5734 <game_pause>
			gfx_scroll_up(1);
    4fd2:	2001      	movs	r0, #1
    4fd4:	f7fd fb0c 	bl	25f0 <gfx_scroll_up>
			if (btn_query_down(KEY_B)) {goto break_out;}
    4fd8:	2020      	movs	r0, #32
    4fda:	f7fc fdeb 	bl	1bb4 <btn_query_down>
    4fde:	4603      	mov	r3, r0
    4fe0:	2b00      	cmp	r3, #0
    4fe2:	d127      	bne.n	5034 <text_scroller+0xc8>
		for (j=0;j<CHAR_HEIGHT;j++){
    4fe4:	7bbb      	ldrb	r3, [r7, #14]
    4fe6:	3301      	adds	r3, #1
    4fe8:	73bb      	strb	r3, [r7, #14]
    4fea:	7bbb      	ldrb	r3, [r7, #14]
    4fec:	2b07      	cmp	r3, #7
    4fee:	d9eb      	bls.n	4fc8 <text_scroller+0x5c>
		}
		c=*text++;
    4ff0:	687b      	ldr	r3, [r7, #4]
    4ff2:	1c5a      	adds	r2, r3, #1
    4ff4:	607a      	str	r2, [r7, #4]
    4ff6:	781b      	ldrb	r3, [r3, #0]
    4ff8:	73fb      	strb	r3, [r7, #15]
	while (c){
    4ffa:	7bfb      	ldrb	r3, [r7, #15]
    4ffc:	2b00      	cmp	r3, #0
    4ffe:	d1c6      	bne.n	4f8e <text_scroller+0x22>
	}//while
	for (c=0;c<4*CHAR_HEIGHT;c++){
    5000:	2300      	movs	r3, #0
    5002:	73fb      	strb	r3, [r7, #15]
    5004:	e010      	b.n	5028 <text_scroller+0xbc>
		game_pause(speed);
    5006:	78fb      	ldrb	r3, [r7, #3]
    5008:	b29b      	uxth	r3, r3
    500a:	4618      	mov	r0, r3
    500c:	f000 fb92 	bl	5734 <game_pause>
		gfx_scroll_up(1);
    5010:	2001      	movs	r0, #1
    5012:	f7fd faed 	bl	25f0 <gfx_scroll_up>
		if (btn_query_down(KEY_B)) { break;}
    5016:	2020      	movs	r0, #32
    5018:	f7fc fdcc 	bl	1bb4 <btn_query_down>
    501c:	4603      	mov	r3, r0
    501e:	2b00      	cmp	r3, #0
    5020:	d10a      	bne.n	5038 <text_scroller+0xcc>
	for (c=0;c<4*CHAR_HEIGHT;c++){
    5022:	7bfb      	ldrb	r3, [r7, #15]
    5024:	3301      	adds	r3, #1
    5026:	73fb      	strb	r3, [r7, #15]
    5028:	7bfb      	ldrb	r3, [r7, #15]
    502a:	2b1f      	cmp	r3, #31
    502c:	d9eb      	bls.n	5006 <text_scroller+0x9a>
    502e:	e004      	b.n	503a <text_scroller+0xce>
			if (btn_query_down(KEY_B)) {goto break_out;}
    5030:	bf00      	nop
    5032:	e002      	b.n	503a <text_scroller+0xce>
			if (btn_query_down(KEY_B)) {goto break_out;}
    5034:	bf00      	nop
    5036:	e000      	b.n	503a <text_scroller+0xce>
		if (btn_query_down(KEY_B)) { break;}
    5038:	bf00      	nop
	}//for
break_out:	
	gfx_cls();
    503a:	f7fd fa7d 	bl	2538 <gfx_cls>
	btn_wait_up(KEY_B); 
    503e:	2020      	movs	r0, #32
    5040:	f7fc fdfc 	bl	1c3c <btn_wait_up>
}
    5044:	bf00      	nop
    5046:	3710      	adds	r7, #16
    5048:	46bd      	mov	sp, r7
    504a:	bd80      	pop	{r7, pc}

0000504c <prompt_btn>:

void prompt_btn(){
    504c:	b580      	push	{r7, lr}
    504e:	af00      	add	r7, sp, #0
	print("press button");
    5050:	4802      	ldr	r0, [pc, #8]	; (505c <prompt_btn+0x10>)
    5052:	f7ff feab 	bl	4dac <print>
}
    5056:	bf00      	nop
    5058:	bd80      	pop	{r7, pc}
    505a:	bf00      	nop
    505c:	0000626c 	.word	0x0000626c

00005060 <clear_screen>:

void clear_screen(){
    5060:	b580      	push	{r7, lr}
    5062:	af00      	add	r7, sp, #0
	gfx_cls();
    5064:	f7fd fa68 	bl	2538 <gfx_cls>
	xpos=0;
    5068:	4b03      	ldr	r3, [pc, #12]	; (5078 <clear_screen+0x18>)
    506a:	2200      	movs	r2, #0
    506c:	701a      	strb	r2, [r3, #0]
	ypos=0;
    506e:	4b03      	ldr	r3, [pc, #12]	; (507c <clear_screen+0x1c>)
    5070:	2200      	movs	r2, #0
    5072:	701a      	strb	r2, [r3, #0]
}
    5074:	bf00      	nop
    5076:	bd80      	pop	{r7, pc}
    5078:	200006a5 	.word	0x200006a5
    507c:	200006a6 	.word	0x200006a6

00005080 <show_cursor>:

// affiche un curseur texte
void show_cursor(int show){
    5080:	b580      	push	{r7, lr}
    5082:	b084      	sub	sp, #16
    5084:	af00      	add	r7, sp, #0
    5086:	6078      	str	r0, [r7, #4]
	int x,y;
	uint8_t color=show?15:0;
    5088:	687b      	ldr	r3, [r7, #4]
    508a:	2b00      	cmp	r3, #0
    508c:	d001      	beq.n	5092 <show_cursor+0x12>
    508e:	230f      	movs	r3, #15
    5090:	e000      	b.n	5094 <show_cursor+0x14>
    5092:	2300      	movs	r3, #0
    5094:	72fb      	strb	r3, [r7, #11]
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    5096:	4b0c      	ldr	r3, [pc, #48]	; (50c8 <show_cursor+0x48>)
    5098:	781b      	ldrb	r3, [r3, #0]
    509a:	60fb      	str	r3, [r7, #12]
    509c:	e00a      	b.n	50b4 <show_cursor+0x34>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    509e:	4b0b      	ldr	r3, [pc, #44]	; (50cc <show_cursor+0x4c>)
    50a0:	781b      	ldrb	r3, [r3, #0]
    50a2:	3307      	adds	r3, #7
    50a4:	7afa      	ldrb	r2, [r7, #11]
    50a6:	4619      	mov	r1, r3
    50a8:	68f8      	ldr	r0, [r7, #12]
    50aa:	f7fd f9f7 	bl	249c <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    50ae:	68fb      	ldr	r3, [r7, #12]
    50b0:	3301      	adds	r3, #1
    50b2:	60fb      	str	r3, [r7, #12]
    50b4:	4b04      	ldr	r3, [pc, #16]	; (50c8 <show_cursor+0x48>)
    50b6:	781b      	ldrb	r3, [r3, #0]
    50b8:	1d9a      	adds	r2, r3, #6
    50ba:	68fb      	ldr	r3, [r7, #12]
    50bc:	429a      	cmp	r2, r3
    50be:	dcee      	bgt.n	509e <show_cursor+0x1e>
		}
}
    50c0:	bf00      	nop
    50c2:	3710      	adds	r7, #16
    50c4:	46bd      	mov	sp, r7
    50c6:	bd80      	pop	{r7, pc}
    50c8:	200006a5 	.word	0x200006a5
    50cc:	200006a6 	.word	0x200006a6

000050d0 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    50d0:	b580      	push	{r7, lr}
    50d2:	af00      	add	r7, sp, #0
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    50d4:	4b41      	ldr	r3, [pc, #260]	; (51dc <tvout_init+0x10c>)
    50d6:	4a42      	ldr	r2, [pc, #264]	; (51e0 <tvout_init+0x110>)
    50d8:	601a      	str	r2, [r3, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    50da:	4b42      	ldr	r3, [pc, #264]	; (51e4 <tvout_init+0x114>)
    50dc:	4a42      	ldr	r2, [pc, #264]	; (51e8 <tvout_init+0x118>)
    50de:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    50e0:	220a      	movs	r2, #10
    50e2:	2108      	movs	r1, #8
    50e4:	483d      	ldr	r0, [pc, #244]	; (51dc <tvout_init+0x10c>)
    50e6:	f7fd f8c3 	bl	2270 <config_pin>
    PORTA->ODR=0;
    50ea:	4b3c      	ldr	r3, [pc, #240]	; (51dc <tvout_init+0x10c>)
    50ec:	2200      	movs	r2, #0
    50ee:	60da      	str	r2, [r3, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    50f0:	4a3e      	ldr	r2, [pc, #248]	; (51ec <tvout_init+0x11c>)
    50f2:	4b3e      	ldr	r3, [pc, #248]	; (51ec <tvout_init+0x11c>)
    50f4:	699b      	ldr	r3, [r3, #24]
    50f6:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    50fa:	6193      	str	r3, [r2, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    50fc:	4b3c      	ldr	r3, [pc, #240]	; (51f0 <tvout_init+0x120>)
    50fe:	2278      	movs	r2, #120	; 0x78
    5100:	619a      	str	r2, [r3, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    5102:	4b3b      	ldr	r3, [pc, #236]	; (51f0 <tvout_init+0x120>)
    5104:	2201      	movs	r2, #1
    5106:	621a      	str	r2, [r3, #32]
    TMR1->CCER&=~TMR_CCER_CC2E;
    5108:	4a39      	ldr	r2, [pc, #228]	; (51f0 <tvout_init+0x120>)
    510a:	4b39      	ldr	r3, [pc, #228]	; (51f0 <tvout_init+0x120>)
    510c:	6a1b      	ldr	r3, [r3, #32]
    510e:	f023 0310 	bic.w	r3, r3, #16
    5112:	6213      	str	r3, [r2, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    5114:	4b36      	ldr	r3, [pc, #216]	; (51f0 <tvout_init+0x120>)
    5116:	2284      	movs	r2, #132	; 0x84
    5118:	601a      	str	r2, [r3, #0]
    TMR1->ARR=HPERIOD;
    511a:	4b35      	ldr	r3, [pc, #212]	; (51f0 <tvout_init+0x120>)
    511c:	f241 12c5 	movw	r2, #4549	; 0x11c5
    5120:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    5122:	4b33      	ldr	r3, [pc, #204]	; (51f0 <tvout_init+0x120>)
    5124:	f44f 72a8 	mov.w	r2, #336	; 0x150
    5128:	635a      	str	r2, [r3, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    512a:	4b31      	ldr	r3, [pc, #196]	; (51f0 <tvout_init+0x120>)
    512c:	f240 1265 	movw	r2, #357	; 0x165
    5130:	639a      	str	r2, [r3, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    5132:	4a2f      	ldr	r2, [pc, #188]	; (51f0 <tvout_init+0x120>)
    5134:	4b2e      	ldr	r3, [pc, #184]	; (51f0 <tvout_init+0x120>)
    5136:	695b      	ldr	r3, [r3, #20]
    5138:	f043 0301 	orr.w	r3, r3, #1
    513c:	6153      	str	r3, [r2, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    513e:	4b2c      	ldr	r3, [pc, #176]	; (51f0 <tvout_init+0x120>)
    5140:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    5144:	645a      	str	r2, [r3, #68]	; 0x44
    TMR1->SR=0;
    5146:	4b2a      	ldr	r3, [pc, #168]	; (51f0 <tvout_init+0x120>)
    5148:	2200      	movs	r2, #0
    514a:	611a      	str	r2, [r3, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    514c:	4a28      	ldr	r2, [pc, #160]	; (51f0 <tvout_init+0x120>)
    514e:	4b28      	ldr	r3, [pc, #160]	; (51f0 <tvout_init+0x120>)
    5150:	68db      	ldr	r3, [r3, #12]
    5152:	f043 0301 	orr.w	r3, r3, #1
    5156:	60d3      	str	r3, [r2, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    5158:	2100      	movs	r1, #0
    515a:	2019      	movs	r0, #25
    515c:	f7fe fb20 	bl	37a0 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    5160:	2100      	movs	r1, #0
    5162:	201b      	movs	r0, #27
    5164:	f7fe fb1c 	bl	37a0 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    5168:	2019      	movs	r0, #25
    516a:	f7fe fa5f 	bl	362c <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    516e:	201b      	movs	r0, #27
    5170:	f7fe fa5c 	bl	362c <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    5174:	4a1e      	ldr	r2, [pc, #120]	; (51f0 <tvout_init+0x120>)
    5176:	4b1e      	ldr	r3, [pc, #120]	; (51f0 <tvout_init+0x120>)
    5178:	681b      	ldr	r3, [r3, #0]
    517a:	f043 0301 	orr.w	r3, r3, #1
    517e:	6013      	str	r3, [r2, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    5180:	220a      	movs	r2, #10
    5182:	2100      	movs	r1, #0
    5184:	481b      	ldr	r0, [pc, #108]	; (51f4 <tvout_init+0x124>)
    5186:	f7fd f873 	bl	2270 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    518a:	4a18      	ldr	r2, [pc, #96]	; (51ec <tvout_init+0x11c>)
    518c:	4b17      	ldr	r3, [pc, #92]	; (51ec <tvout_init+0x11c>)
    518e:	69db      	ldr	r3, [r3, #28]
    5190:	f043 0302 	orr.w	r3, r3, #2
    5194:	61d3      	str	r3, [r2, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    5196:	4b18      	ldr	r3, [pc, #96]	; (51f8 <tvout_init+0x128>)
    5198:	2278      	movs	r2, #120	; 0x78
    519a:	61da      	str	r2, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    519c:	4b16      	ldr	r3, [pc, #88]	; (51f8 <tvout_init+0x128>)
    519e:	2284      	movs	r2, #132	; 0x84
    51a0:	601a      	str	r2, [r3, #0]
    TMR3->ARR=19; 
    51a2:	4b15      	ldr	r3, [pc, #84]	; (51f8 <tvout_init+0x128>)
    51a4:	2213      	movs	r2, #19
    51a6:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    51a8:	4b13      	ldr	r3, [pc, #76]	; (51f8 <tvout_init+0x128>)
    51aa:	220a      	movs	r2, #10
    51ac:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    51ae:	4a12      	ldr	r2, [pc, #72]	; (51f8 <tvout_init+0x128>)
    51b0:	4b11      	ldr	r3, [pc, #68]	; (51f8 <tvout_init+0x128>)
    51b2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    51b4:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    51b8:	6453      	str	r3, [r2, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    51ba:	4a0f      	ldr	r2, [pc, #60]	; (51f8 <tvout_init+0x128>)
    51bc:	4b0e      	ldr	r3, [pc, #56]	; (51f8 <tvout_init+0x128>)
    51be:	695b      	ldr	r3, [r3, #20]
    51c0:	f043 0301 	orr.w	r3, r3, #1
    51c4:	6153      	str	r3, [r2, #20]
    TMR3->SR=0;
    51c6:	4b0c      	ldr	r3, [pc, #48]	; (51f8 <tvout_init+0x128>)
    51c8:	2200      	movs	r2, #0
    51ca:	611a      	str	r2, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    51cc:	4a0a      	ldr	r2, [pc, #40]	; (51f8 <tvout_init+0x128>)
    51ce:	4b0a      	ldr	r3, [pc, #40]	; (51f8 <tvout_init+0x128>)
    51d0:	681b      	ldr	r3, [r3, #0]
    51d2:	f043 0301 	orr.w	r3, r3, #1
    51d6:	6013      	str	r3, [r2, #0]
}
    51d8:	bf00      	nop
    51da:	bd80      	pop	{r7, pc}
    51dc:	40010800 	.word	0x40010800
    51e0:	88883333 	.word	0x88883333
    51e4:	40010804 	.word	0x40010804
    51e8:	84484444 	.word	0x84484444
    51ec:	40021000 	.word	0x40021000
    51f0:	40012c00 	.word	0x40012c00
    51f4:	40010c00 	.word	0x40010c00
    51f8:	40000400 	.word	0x40000400

000051fc <TV_OUT_handler>:
                              "mov r2,%0\n"\
                              "1: subs r2,#1\n\t"\
                              "bne.n 1b\n\t"\
                              ::"r" (dly):"r2")

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    51fc:	4668      	mov	r0, sp
    51fe:	f020 0107 	bic.w	r1, r0, #7
    5202:	468d      	mov	sp, r1
    5204:	b471      	push	{r0, r4, r5, r6}
    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
//    if (video_mode<VM_SCHIP){
        TMR3->CCER|=TMR_CCER_CC3E;
    5206:	4a31      	ldr	r2, [pc, #196]	; (52cc <TV_OUT_handler+0xd0>)
    5208:	6a13      	ldr	r3, [r2, #32]
    520a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    520e:	6213      	str	r3, [r2, #32]
        while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    5210:	492f      	ldr	r1, [pc, #188]	; (52d0 <TV_OUT_handler+0xd4>)
    5212:	f240 2209 	movw	r2, #521	; 0x209
    5216:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    5218:	4293      	cmp	r3, r2
    521a:	d9fc      	bls.n	5216 <TV_OUT_handler+0x1a>
        //_wait_tmr1_cnt();
        TMR3->CCER&=~TMR_CCER_CC3E;
    521c:	4a2b      	ldr	r2, [pc, #172]	; (52cc <TV_OUT_handler+0xd0>)
    521e:	6a13      	ldr	r3, [r2, #32]
    5220:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    5224:	6213      	str	r3, [r2, #32]
//    }
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    5226:	4b2b      	ldr	r3, [pc, #172]	; (52d4 <TV_OUT_handler+0xd8>)
    5228:	881d      	ldrh	r5, [r3, #0]
    522a:	b2ad      	uxth	r5, r5
    522c:	4b2a      	ldr	r3, [pc, #168]	; (52d8 <TV_OUT_handler+0xdc>)
    522e:	7818      	ldrb	r0, [r3, #0]
    5230:	4b2a      	ldr	r3, [pc, #168]	; (52dc <TV_OUT_handler+0xe0>)
    5232:	781b      	ldrb	r3, [r3, #0]
    5234:	fb95 f5f3 	sdiv	r5, r5, r3
    5238:	4b29      	ldr	r3, [pc, #164]	; (52e0 <TV_OUT_handler+0xe4>)
    523a:	fb00 3505 	mla	r5, r0, r5, r3
    while(TMR1->CNT<left_margin);
    523e:	4b29      	ldr	r3, [pc, #164]	; (52e4 <TV_OUT_handler+0xe8>)
    5240:	881a      	ldrh	r2, [r3, #0]
    5242:	4923      	ldr	r1, [pc, #140]	; (52d0 <TV_OUT_handler+0xd4>)
    5244:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    5246:	4293      	cmp	r3, r2
    5248:	d3fc      	bcc.n	5244 <TV_OUT_handler+0x48>
    _jitter_cancel();
    524a:	4b27      	ldr	r3, [pc, #156]	; (52e8 <TV_OUT_handler+0xec>)
    524c:	461a      	mov	r2, r3
    524e:	6812      	ldr	r2, [r2, #0]
    5250:	f002 0207 	and.w	r2, r2, #7
    5254:	ea4f 0242 	mov.w	r2, r2, lsl #1
    5258:	4497      	add	pc, r2
    525a:	bf00      	nop
    525c:	bf00      	nop
    525e:	bf00      	nop
    5260:	bf00      	nop
    5262:	bf00      	nop
    5264:	bf00      	nop
    5266:	bf00      	nop
    5268:	bf00      	nop
    TMR3->CCER|=chroma_cfg;
    526a:	4a18      	ldr	r2, [pc, #96]	; (52cc <TV_OUT_handler+0xd0>)
    526c:	6a11      	ldr	r1, [r2, #32]
    526e:	4b1f      	ldr	r3, [pc, #124]	; (52ec <TV_OUT_handler+0xf0>)
    5270:	881b      	ldrh	r3, [r3, #0]
    5272:	430b      	orrs	r3, r1
    5274:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    5276:	b1b8      	cbz	r0, 52a8 <TV_OUT_handler+0xac>
    5278:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    527a:	481d      	ldr	r0, [pc, #116]	; (52f0 <TV_OUT_handler+0xf4>)
        _pixel_delay(pixel_delay);
    527c:	491d      	ldr	r1, [pc, #116]	; (52f4 <TV_OUT_handler+0xf8>)
    for (i=0;i<byte_per_row;i++){
    527e:	4e16      	ldr	r6, [pc, #88]	; (52d8 <TV_OUT_handler+0xdc>)
        *video_port=(*video_data)>>4;
    5280:	781a      	ldrb	r2, [r3, #0]
    5282:	0912      	lsrs	r2, r2, #4
    5284:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    5286:	780c      	ldrb	r4, [r1, #0]
    5288:	4622      	mov	r2, r4
    528a:	3a01      	subs	r2, #1
    528c:	d1fd      	bne.n	528a <TV_OUT_handler+0x8e>
        *video_port=(*video_data++)&0xf;
    528e:	f813 2b01 	ldrb.w	r2, [r3], #1
    5292:	f002 020f 	and.w	r2, r2, #15
    5296:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    5298:	780c      	ldrb	r4, [r1, #0]
    529a:	4622      	mov	r2, r4
    529c:	3a01      	subs	r2, #1
    529e:	d1fd      	bne.n	529c <TV_OUT_handler+0xa0>
    for (i=0;i<byte_per_row;i++){
    52a0:	1b5c      	subs	r4, r3, r5
    52a2:	7832      	ldrb	r2, [r6, #0]
    52a4:	4294      	cmp	r4, r2
    52a6:	d3eb      	bcc.n	5280 <TV_OUT_handler+0x84>
    }
    PORTA->ODR=0;
    52a8:	2200      	movs	r2, #0
    52aa:	4b13      	ldr	r3, [pc, #76]	; (52f8 <TV_OUT_handler+0xfc>)
    52ac:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    52ae:	4a07      	ldr	r2, [pc, #28]	; (52cc <TV_OUT_handler+0xd0>)
    52b0:	6a13      	ldr	r3, [r2, #32]
    52b2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    52b6:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    52b8:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    52bc:	6913      	ldr	r3, [r2, #16]
    52be:	f023 0304 	bic.w	r3, r3, #4
    52c2:	6113      	str	r3, [r2, #16]
}
    52c4:	bc71      	pop	{r0, r4, r5, r6}
    52c6:	4685      	mov	sp, r0
    52c8:	4770      	bx	lr
    52ca:	bf00      	nop
    52cc:	40000400 	.word	0x40000400
    52d0:	40012c00 	.word	0x40012c00
    52d4:	200006ac 	.word	0x200006ac
    52d8:	20000208 	.word	0x20000208
    52dc:	20000209 	.word	0x20000209
    52e0:	200026e0 	.word	0x200026e0
    52e4:	20000206 	.word	0x20000206
    52e8:	40012c24 	.word	0x40012c24
    52ec:	2000020e 	.word	0x2000020e
    52f0:	4001080c 	.word	0x4001080c
    52f4:	2000020a 	.word	0x2000020a
    52f8:	40010800 	.word	0x40010800

000052fc <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    52fc:	4668      	mov	r0, sp
    52fe:	f020 0107 	bic.w	r1, r0, #7
    5302:	468d      	mov	sp, r1
    5304:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    5306:	4a84      	ldr	r2, [pc, #528]	; (5518 <TV_SYNC_handler+0x21c>)
    5308:	8813      	ldrh	r3, [r2, #0]
    530a:	3301      	adds	r3, #1
    530c:	b29b      	uxth	r3, r3
    530e:	8013      	strh	r3, [r2, #0]
    ntsc_ticks++;
    5310:	4a82      	ldr	r2, [pc, #520]	; (551c <TV_SYNC_handler+0x220>)
    5312:	6813      	ldr	r3, [r2, #0]
    5314:	3301      	adds	r3, #1
    5316:	6013      	str	r3, [r2, #0]
    switch (task){
    5318:	4b81      	ldr	r3, [pc, #516]	; (5520 <TV_SYNC_handler+0x224>)
    531a:	881b      	ldrh	r3, [r3, #0]
    531c:	b29b      	uxth	r3, r3
    531e:	2b09      	cmp	r3, #9
    5320:	f200 8088 	bhi.w	5434 <TV_SYNC_handler+0x138>
    5324:	e8df f013 	tbh	[pc, r3, lsl #1]
    5328:	002c000a 	.word	0x002c000a
    532c:	006e004c 	.word	0x006e004c
    5330:	0097008f 	.word	0x0097008f
    5334:	00bb00ac 	.word	0x00bb00ac
    5338:	010c00da 	.word	0x010c00da
    case PRE_SYNC:
        if (!slice){
    533c:	4b79      	ldr	r3, [pc, #484]	; (5524 <TV_SYNC_handler+0x228>)
    533e:	881b      	ldrh	r3, [r3, #0]
    5340:	b29b      	uxth	r3, r3
    5342:	b18b      	cbz	r3, 5368 <TV_SYNC_handler+0x6c>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    5344:	4a77      	ldr	r2, [pc, #476]	; (5524 <TV_SYNC_handler+0x228>)
    5346:	8813      	ldrh	r3, [r2, #0]
    5348:	3301      	adds	r3, #1
    534a:	b29b      	uxth	r3, r3
    534c:	8013      	strh	r3, [r2, #0]
    534e:	8813      	ldrh	r3, [r2, #0]
    5350:	b29b      	uxth	r3, r3
    5352:	2b06      	cmp	r3, #6
    5354:	d16e      	bne.n	5434 <TV_SYNC_handler+0x138>
    5356:	2200      	movs	r2, #0
    5358:	4b72      	ldr	r3, [pc, #456]	; (5524 <TV_SYNC_handler+0x228>)
    535a:	801a      	strh	r2, [r3, #0]
    535c:	4a70      	ldr	r2, [pc, #448]	; (5520 <TV_SYNC_handler+0x224>)
    535e:	8813      	ldrh	r3, [r2, #0]
    5360:	3301      	adds	r3, #1
    5362:	b29b      	uxth	r3, r3
    5364:	8013      	strh	r3, [r2, #0]
    5366:	e065      	b.n	5434 <TV_SYNC_handler+0x138>
            TMR1->ARR=SYNC_LINE;
    5368:	4b6f      	ldr	r3, [pc, #444]	; (5528 <TV_SYNC_handler+0x22c>)
    536a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    536e:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    5370:	22a4      	movs	r2, #164	; 0xa4
    5372:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    5374:	4a6b      	ldr	r2, [pc, #428]	; (5524 <TV_SYNC_handler+0x228>)
    5376:	8813      	ldrh	r3, [r2, #0]
    5378:	3301      	adds	r3, #1
    537a:	b29b      	uxth	r3, r3
    537c:	8013      	strh	r3, [r2, #0]
    537e:	e059      	b.n	5434 <TV_SYNC_handler+0x138>
        }
        break;
    case VSYNC:
        if (!slice){
    5380:	4b68      	ldr	r3, [pc, #416]	; (5524 <TV_SYNC_handler+0x228>)
    5382:	881b      	ldrh	r3, [r3, #0]
    5384:	b29b      	uxth	r3, r3
    5386:	b18b      	cbz	r3, 53ac <TV_SYNC_handler+0xb0>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    5388:	4a66      	ldr	r2, [pc, #408]	; (5524 <TV_SYNC_handler+0x228>)
    538a:	8813      	ldrh	r3, [r2, #0]
    538c:	3301      	adds	r3, #1
    538e:	b29b      	uxth	r3, r3
    5390:	8013      	strh	r3, [r2, #0]
    5392:	8813      	ldrh	r3, [r2, #0]
    5394:	b29b      	uxth	r3, r3
    5396:	2b06      	cmp	r3, #6
    5398:	d14c      	bne.n	5434 <TV_SYNC_handler+0x138>
    539a:	2200      	movs	r2, #0
    539c:	4b61      	ldr	r3, [pc, #388]	; (5524 <TV_SYNC_handler+0x228>)
    539e:	801a      	strh	r2, [r3, #0]
    53a0:	4a5f      	ldr	r2, [pc, #380]	; (5520 <TV_SYNC_handler+0x224>)
    53a2:	8813      	ldrh	r3, [r2, #0]
    53a4:	3301      	adds	r3, #1
    53a6:	b29b      	uxth	r3, r3
    53a8:	8013      	strh	r3, [r2, #0]
    53aa:	e043      	b.n	5434 <TV_SYNC_handler+0x138>
            TMR1->CCR1=SYNC_PULSE;
    53ac:	f240 7294 	movw	r2, #1940	; 0x794
    53b0:	4b5d      	ldr	r3, [pc, #372]	; (5528 <TV_SYNC_handler+0x22c>)
    53b2:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    53b4:	4a5b      	ldr	r2, [pc, #364]	; (5524 <TV_SYNC_handler+0x228>)
    53b6:	8813      	ldrh	r3, [r2, #0]
    53b8:	3301      	adds	r3, #1
    53ba:	b29b      	uxth	r3, r3
    53bc:	8013      	strh	r3, [r2, #0]
    53be:	e039      	b.n	5434 <TV_SYNC_handler+0x138>
        }
        break;
    case POST_SYNC:
        if (!slice){
    53c0:	4b58      	ldr	r3, [pc, #352]	; (5524 <TV_SYNC_handler+0x228>)
    53c2:	881b      	ldrh	r3, [r3, #0]
    53c4:	b29b      	uxth	r3, r3
    53c6:	b153      	cbz	r3, 53de <TV_SYNC_handler+0xe2>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    53c8:	4b56      	ldr	r3, [pc, #344]	; (5524 <TV_SYNC_handler+0x228>)
    53ca:	881b      	ldrh	r3, [r3, #0]
    53cc:	b29b      	uxth	r3, r3
    53ce:	2b06      	cmp	r3, #6
    53d0:	d00e      	beq.n	53f0 <TV_SYNC_handler+0xf4>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    53d2:	4a54      	ldr	r2, [pc, #336]	; (5524 <TV_SYNC_handler+0x228>)
    53d4:	8813      	ldrh	r3, [r2, #0]
    53d6:	3301      	adds	r3, #1
    53d8:	b29b      	uxth	r3, r3
    53da:	8013      	strh	r3, [r2, #0]
            break;
    53dc:	e02a      	b.n	5434 <TV_SYNC_handler+0x138>
            TMR1->CCR1=SERRATION;    
    53de:	22a4      	movs	r2, #164	; 0xa4
    53e0:	4b51      	ldr	r3, [pc, #324]	; (5528 <TV_SYNC_handler+0x22c>)
    53e2:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    53e4:	4a4f      	ldr	r2, [pc, #316]	; (5524 <TV_SYNC_handler+0x228>)
    53e6:	8813      	ldrh	r3, [r2, #0]
    53e8:	3301      	adds	r3, #1
    53ea:	b29b      	uxth	r3, r3
    53ec:	8013      	strh	r3, [r2, #0]
            break;
    53ee:	e021      	b.n	5434 <TV_SYNC_handler+0x138>
            task++;
    53f0:	4a4b      	ldr	r2, [pc, #300]	; (5520 <TV_SYNC_handler+0x224>)
    53f2:	8813      	ldrh	r3, [r2, #0]
    53f4:	3301      	adds	r3, #1
    53f6:	b29b      	uxth	r3, r3
    53f8:	8013      	strh	r3, [r2, #0]
            if (!(flags&F_EVEN)){
    53fa:	4b4c      	ldr	r3, [pc, #304]	; (552c <TV_SYNC_handler+0x230>)
    53fc:	881b      	ldrh	r3, [r3, #0]
    53fe:	f013 0f01 	tst.w	r3, #1
    5402:	d017      	beq.n	5434 <TV_SYNC_handler+0x138>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    5404:	4b48      	ldr	r3, [pc, #288]	; (5528 <TV_SYNC_handler+0x22c>)
    5406:	f241 12c5 	movw	r2, #4549	; 0x11c5
    540a:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    540c:	f44f 72a8 	mov.w	r2, #336	; 0x150
    5410:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    5412:	4a46      	ldr	r2, [pc, #280]	; (552c <TV_SYNC_handler+0x230>)
    5414:	8813      	ldrh	r3, [r2, #0]
    5416:	f023 0302 	bic.w	r3, r3, #2
    541a:	041b      	lsls	r3, r3, #16
    541c:	0c1b      	lsrs	r3, r3, #16
    541e:	8013      	strh	r3, [r2, #0]
        scan_line>>=2;
    5420:	4a3d      	ldr	r2, [pc, #244]	; (5518 <TV_SYNC_handler+0x21c>)
    5422:	8813      	ldrh	r3, [r2, #0]
    5424:	f3c3 038d 	ubfx	r3, r3, #2, #14
    5428:	8013      	strh	r3, [r2, #0]
        task++;
    542a:	4a3d      	ldr	r2, [pc, #244]	; (5520 <TV_SYNC_handler+0x224>)
    542c:	8813      	ldrh	r3, [r2, #0]
    542e:	3301      	adds	r3, #1
    5430:	b29b      	uxth	r3, r3
    5432:	8013      	strh	r3, [r2, #0]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    5434:	4a3c      	ldr	r2, [pc, #240]	; (5528 <TV_SYNC_handler+0x22c>)
    5436:	6913      	ldr	r3, [r2, #16]
    5438:	f023 0301 	bic.w	r3, r3, #1
    543c:	6113      	str	r3, [r2, #16]
}
    543e:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    5442:	4685      	mov	sp, r0
    5444:	4770      	bx	lr
        read_gamepad();
    5446:	f7fc fb8d 	bl	1b64 <read_gamepad>
        task++;
    544a:	4a35      	ldr	r2, [pc, #212]	; (5520 <TV_SYNC_handler+0x224>)
    544c:	8813      	ldrh	r3, [r2, #0]
    544e:	3301      	adds	r3, #1
    5450:	b29b      	uxth	r3, r3
    5452:	8013      	strh	r3, [r2, #0]
        break;    
    5454:	e7ee      	b.n	5434 <TV_SYNC_handler+0x138>
        if (sound_timer){
    5456:	4b36      	ldr	r3, [pc, #216]	; (5530 <TV_SYNC_handler+0x234>)
    5458:	881b      	ldrh	r3, [r3, #0]
    545a:	b29b      	uxth	r3, r3
    545c:	b13b      	cbz	r3, 546e <TV_SYNC_handler+0x172>
            sound_timer--;
    545e:	4a34      	ldr	r2, [pc, #208]	; (5530 <TV_SYNC_handler+0x234>)
    5460:	8813      	ldrh	r3, [r2, #0]
    5462:	3b01      	subs	r3, #1
    5464:	b29b      	uxth	r3, r3
    5466:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    5468:	8813      	ldrh	r3, [r2, #0]
    546a:	b29b      	uxth	r3, r3
    546c:	b12b      	cbz	r3, 547a <TV_SYNC_handler+0x17e>
        task++;
    546e:	4a2c      	ldr	r2, [pc, #176]	; (5520 <TV_SYNC_handler+0x224>)
    5470:	8813      	ldrh	r3, [r2, #0]
    5472:	3301      	adds	r3, #1
    5474:	b29b      	uxth	r3, r3
    5476:	8013      	strh	r3, [r2, #0]
        break;    
    5478:	e7dc      	b.n	5434 <TV_SYNC_handler+0x138>
                sound_stop();
    547a:	f7ff f8d7 	bl	462c <sound_stop>
    547e:	e7f6      	b.n	546e <TV_SYNC_handler+0x172>
        if (game_timer){
    5480:	4b2c      	ldr	r3, [pc, #176]	; (5534 <TV_SYNC_handler+0x238>)
    5482:	881b      	ldrh	r3, [r3, #0]
    5484:	b29b      	uxth	r3, r3
    5486:	b123      	cbz	r3, 5492 <TV_SYNC_handler+0x196>
            game_timer--;
    5488:	4a2a      	ldr	r2, [pc, #168]	; (5534 <TV_SYNC_handler+0x238>)
    548a:	8813      	ldrh	r3, [r2, #0]
    548c:	3b01      	subs	r3, #1
    548e:	b29b      	uxth	r3, r3
    5490:	8013      	strh	r3, [r2, #0]
        task++;
    5492:	4a23      	ldr	r2, [pc, #140]	; (5520 <TV_SYNC_handler+0x224>)
    5494:	8813      	ldrh	r3, [r2, #0]
    5496:	3301      	adds	r3, #1
    5498:	b29b      	uxth	r3, r3
    549a:	8013      	strh	r3, [r2, #0]
        break;
    549c:	e7ca      	b.n	5434 <TV_SYNC_handler+0x138>
        if (scan_line==video_start){
    549e:	4b1e      	ldr	r3, [pc, #120]	; (5518 <TV_SYNC_handler+0x21c>)
    54a0:	881b      	ldrh	r3, [r3, #0]
    54a2:	b29b      	uxth	r3, r3
    54a4:	4a24      	ldr	r2, [pc, #144]	; (5538 <TV_SYNC_handler+0x23c>)
    54a6:	8812      	ldrh	r2, [r2, #0]
    54a8:	429a      	cmp	r2, r3
    54aa:	d1c3      	bne.n	5434 <TV_SYNC_handler+0x138>
            TMR1->SR&=~TMR_SR_CC2IF;
    54ac:	4b1e      	ldr	r3, [pc, #120]	; (5528 <TV_SYNC_handler+0x22c>)
    54ae:	691a      	ldr	r2, [r3, #16]
    54b0:	f022 0204 	bic.w	r2, r2, #4
    54b4:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    54b6:	68da      	ldr	r2, [r3, #12]
    54b8:	f042 0204 	orr.w	r2, r2, #4
    54bc:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    54be:	4a1b      	ldr	r2, [pc, #108]	; (552c <TV_SYNC_handler+0x230>)
    54c0:	8813      	ldrh	r3, [r2, #0]
    54c2:	b29b      	uxth	r3, r3
    54c4:	f043 0304 	orr.w	r3, r3, #4
    54c8:	8013      	strh	r3, [r2, #0]
            task++;
    54ca:	4a15      	ldr	r2, [pc, #84]	; (5520 <TV_SYNC_handler+0x224>)
    54cc:	8813      	ldrh	r3, [r2, #0]
    54ce:	3301      	adds	r3, #1
    54d0:	b29b      	uxth	r3, r3
    54d2:	8013      	strh	r3, [r2, #0]
            slice=0;
    54d4:	2200      	movs	r2, #0
    54d6:	4b13      	ldr	r3, [pc, #76]	; (5524 <TV_SYNC_handler+0x228>)
    54d8:	801a      	strh	r2, [r3, #0]
    54da:	e7ab      	b.n	5434 <TV_SYNC_handler+0x138>
        slice++;
    54dc:	4a11      	ldr	r2, [pc, #68]	; (5524 <TV_SYNC_handler+0x228>)
    54de:	8813      	ldrh	r3, [r2, #0]
    54e0:	3301      	adds	r3, #1
    54e2:	b29b      	uxth	r3, r3
    54e4:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    54e6:	4b0c      	ldr	r3, [pc, #48]	; (5518 <TV_SYNC_handler+0x21c>)
    54e8:	881b      	ldrh	r3, [r3, #0]
    54ea:	b29b      	uxth	r3, r3
    54ec:	4a13      	ldr	r2, [pc, #76]	; (553c <TV_SYNC_handler+0x240>)
    54ee:	8812      	ldrh	r2, [r2, #0]
    54f0:	429a      	cmp	r2, r3
    54f2:	d19f      	bne.n	5434 <TV_SYNC_handler+0x138>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    54f4:	4a0c      	ldr	r2, [pc, #48]	; (5528 <TV_SYNC_handler+0x22c>)
    54f6:	68d3      	ldr	r3, [r2, #12]
    54f8:	f023 0304 	bic.w	r3, r3, #4
    54fc:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    54fe:	4a0b      	ldr	r2, [pc, #44]	; (552c <TV_SYNC_handler+0x230>)
    5500:	8813      	ldrh	r3, [r2, #0]
    5502:	f023 0304 	bic.w	r3, r3, #4
    5506:	041b      	lsls	r3, r3, #16
    5508:	0c1b      	lsrs	r3, r3, #16
    550a:	8013      	strh	r3, [r2, #0]
            task++;
    550c:	4a04      	ldr	r2, [pc, #16]	; (5520 <TV_SYNC_handler+0x224>)
    550e:	8813      	ldrh	r3, [r2, #0]
    5510:	3301      	adds	r3, #1
    5512:	b29b      	uxth	r3, r3
    5514:	8013      	strh	r3, [r2, #0]
    5516:	e78d      	b.n	5434 <TV_SYNC_handler+0x138>
    5518:	200006ae 	.word	0x200006ae
    551c:	20004e44 	.word	0x20004e44
    5520:	200006a8 	.word	0x200006a8
    5524:	200006ac 	.word	0x200006ac
    5528:	40012c00 	.word	0x40012c00
    552c:	200006aa 	.word	0x200006aa
    5530:	20004e48 	.word	0x20004e48
    5534:	20004e40 	.word	0x20004e40
    5538:	20000202 	.word	0x20000202
    553c:	20000204 	.word	0x20000204
        if (scan_line==263){
    5540:	4b11      	ldr	r3, [pc, #68]	; (5588 <TV_SYNC_handler+0x28c>)
    5542:	881b      	ldrh	r3, [r3, #0]
    5544:	b29b      	uxth	r3, r3
    5546:	f240 1207 	movw	r2, #263	; 0x107
    554a:	4293      	cmp	r3, r2
    554c:	f47f af72 	bne.w	5434 <TV_SYNC_handler+0x138>
            if (flags&F_EVEN){ // half length
    5550:	4b0e      	ldr	r3, [pc, #56]	; (558c <TV_SYNC_handler+0x290>)
    5552:	881b      	ldrh	r3, [r3, #0]
    5554:	f013 0f01 	tst.w	r3, #1
    5558:	d003      	beq.n	5562 <TV_SYNC_handler+0x266>
                TMR1->ARR=SYNC_LINE;
    555a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    555e:	4b0c      	ldr	r3, [pc, #48]	; (5590 <TV_SYNC_handler+0x294>)
    5560:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    5562:	4a0a      	ldr	r2, [pc, #40]	; (558c <TV_SYNC_handler+0x290>)
    5564:	8813      	ldrh	r3, [r2, #0]
    5566:	b29b      	uxth	r3, r3
    5568:	f083 0301 	eor.w	r3, r3, #1
    556c:	8013      	strh	r3, [r2, #0]
            flags|=F_VSYNC;
    556e:	8813      	ldrh	r3, [r2, #0]
    5570:	b29b      	uxth	r3, r3
    5572:	f043 0302 	orr.w	r3, r3, #2
    5576:	8013      	strh	r3, [r2, #0]
            scan_line=0;
    5578:	2300      	movs	r3, #0
    557a:	4a03      	ldr	r2, [pc, #12]	; (5588 <TV_SYNC_handler+0x28c>)
    557c:	8013      	strh	r3, [r2, #0]
            slice=0;
    557e:	4a05      	ldr	r2, [pc, #20]	; (5594 <TV_SYNC_handler+0x298>)
    5580:	8013      	strh	r3, [r2, #0]
            task=0;
    5582:	4a05      	ldr	r2, [pc, #20]	; (5598 <TV_SYNC_handler+0x29c>)
    5584:	8013      	strh	r3, [r2, #0]
    5586:	e755      	b.n	5434 <TV_SYNC_handler+0x138>
    5588:	200006ae 	.word	0x200006ae
    558c:	200006aa 	.word	0x200006aa
    5590:	40012c00 	.word	0x40012c00
    5594:	200006ac 	.word	0x200006ac
    5598:	200006a8 	.word	0x200006a8

0000559c <frame_sync>:

void frame_sync(){
    559c:	b480      	push	{r7}
    559e:	af00      	add	r7, sp, #0
    while (!(flags&F_VSYNC));
    55a0:	bf00      	nop
    55a2:	4b05      	ldr	r3, [pc, #20]	; (55b8 <frame_sync+0x1c>)
    55a4:	881b      	ldrh	r3, [r3, #0]
    55a6:	b29b      	uxth	r3, r3
    55a8:	f003 0302 	and.w	r3, r3, #2
    55ac:	2b00      	cmp	r3, #0
    55ae:	d0f8      	beq.n	55a2 <frame_sync+0x6>
}
    55b0:	bf00      	nop
    55b2:	46bd      	mov	sp, r7
    55b4:	bc80      	pop	{r7}
    55b6:	4770      	bx	lr
    55b8:	200006aa 	.word	0x200006aa

000055bc <wait_sync_end>:

void wait_sync_end(){
    55bc:	b480      	push	{r7}
    55be:	af00      	add	r7, sp, #0
    while (flags&F_VSYNC);
    55c0:	bf00      	nop
    55c2:	4b05      	ldr	r3, [pc, #20]	; (55d8 <wait_sync_end+0x1c>)
    55c4:	881b      	ldrh	r3, [r3, #0]
    55c6:	b29b      	uxth	r3, r3
    55c8:	f003 0302 	and.w	r3, r3, #2
    55cc:	2b00      	cmp	r3, #0
    55ce:	d1f8      	bne.n	55c2 <wait_sync_end+0x6>
}
    55d0:	bf00      	nop
    55d2:	46bd      	mov	sp, r7
    55d4:	bc80      	pop	{r7}
    55d6:	4770      	bx	lr
    55d8:	200006aa 	.word	0x200006aa

000055dc <set_video_mode>:

void set_video_mode(vmode_t mode){
    55dc:	b580      	push	{r7, lr}
    55de:	b082      	sub	sp, #8
    55e0:	af00      	add	r7, sp, #0
    55e2:	4603      	mov	r3, r0
    55e4:	71fb      	strb	r3, [r7, #7]
    frame_sync();
    55e6:	f7ff ffd9 	bl	559c <frame_sync>
    video_mode=mode;
    55ea:	4a3c      	ldr	r2, [pc, #240]	; (56dc <set_video_mode+0x100>)
    55ec:	79fb      	ldrb	r3, [r7, #7]
    55ee:	7013      	strb	r3, [r2, #0]
    if (mode==VM_BPCHIP) sprite_bpp=4;else sprite_bpp=1;
    55f0:	79fb      	ldrb	r3, [r7, #7]
    55f2:	2b00      	cmp	r3, #0
    55f4:	d103      	bne.n	55fe <set_video_mode+0x22>
    55f6:	4b3a      	ldr	r3, [pc, #232]	; (56e0 <set_video_mode+0x104>)
    55f8:	2204      	movs	r2, #4
    55fa:	701a      	strb	r2, [r3, #0]
    55fc:	e002      	b.n	5604 <set_video_mode+0x28>
    55fe:	4b38      	ldr	r3, [pc, #224]	; (56e0 <set_video_mode+0x104>)
    5600:	2201      	movs	r2, #1
    5602:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    5604:	79fa      	ldrb	r2, [r7, #7]
    5606:	4937      	ldr	r1, [pc, #220]	; (56e4 <set_video_mode+0x108>)
    5608:	4613      	mov	r3, r2
    560a:	00db      	lsls	r3, r3, #3
    560c:	4413      	add	r3, r2
    560e:	005b      	lsls	r3, r3, #1
    5610:	440b      	add	r3, r1
    5612:	3302      	adds	r3, #2
    5614:	881a      	ldrh	r2, [r3, #0]
    5616:	4b34      	ldr	r3, [pc, #208]	; (56e8 <set_video_mode+0x10c>)
    5618:	801a      	strh	r2, [r3, #0]
    video_end=video_params[mode].video_end;
    561a:	79fa      	ldrb	r2, [r7, #7]
    561c:	4931      	ldr	r1, [pc, #196]	; (56e4 <set_video_mode+0x108>)
    561e:	4613      	mov	r3, r2
    5620:	00db      	lsls	r3, r3, #3
    5622:	4413      	add	r3, r2
    5624:	005b      	lsls	r3, r3, #1
    5626:	440b      	add	r3, r1
    5628:	3304      	adds	r3, #4
    562a:	881a      	ldrh	r2, [r3, #0]
    562c:	4b2f      	ldr	r3, [pc, #188]	; (56ec <set_video_mode+0x110>)
    562e:	801a      	strh	r2, [r3, #0]
    left_margin=video_params[mode].left_margin;
    5630:	79fa      	ldrb	r2, [r7, #7]
    5632:	492c      	ldr	r1, [pc, #176]	; (56e4 <set_video_mode+0x108>)
    5634:	4613      	mov	r3, r2
    5636:	00db      	lsls	r3, r3, #3
    5638:	4413      	add	r3, r2
    563a:	005b      	lsls	r3, r3, #1
    563c:	440b      	add	r3, r1
    563e:	3306      	adds	r3, #6
    5640:	881a      	ldrh	r2, [r3, #0]
    5642:	4b2b      	ldr	r3, [pc, #172]	; (56f0 <set_video_mode+0x114>)
    5644:	801a      	strh	r2, [r3, #0]
    byte_per_row=video_params[mode].bpr;
    5646:	79fa      	ldrb	r2, [r7, #7]
    5648:	4926      	ldr	r1, [pc, #152]	; (56e4 <set_video_mode+0x108>)
    564a:	4613      	mov	r3, r2
    564c:	00db      	lsls	r3, r3, #3
    564e:	4413      	add	r3, r2
    5650:	005b      	lsls	r3, r3, #1
    5652:	440b      	add	r3, r1
    5654:	3308      	adds	r3, #8
    5656:	781a      	ldrb	r2, [r3, #0]
    5658:	4b26      	ldr	r3, [pc, #152]	; (56f4 <set_video_mode+0x118>)
    565a:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    565c:	79fa      	ldrb	r2, [r7, #7]
    565e:	4921      	ldr	r1, [pc, #132]	; (56e4 <set_video_mode+0x108>)
    5660:	4613      	mov	r3, r2
    5662:	00db      	lsls	r3, r3, #3
    5664:	4413      	add	r3, r2
    5666:	005b      	lsls	r3, r3, #1
    5668:	440b      	add	r3, r1
    566a:	3309      	adds	r3, #9
    566c:	781a      	ldrb	r2, [r3, #0]
    566e:	4b22      	ldr	r3, [pc, #136]	; (56f8 <set_video_mode+0x11c>)
    5670:	701a      	strb	r2, [r3, #0]
    pixel_delay=video_params[mode].pdly;
    5672:	79fa      	ldrb	r2, [r7, #7]
    5674:	491b      	ldr	r1, [pc, #108]	; (56e4 <set_video_mode+0x108>)
    5676:	4613      	mov	r3, r2
    5678:	00db      	lsls	r3, r3, #3
    567a:	4413      	add	r3, r2
    567c:	005b      	lsls	r3, r3, #1
    567e:	440b      	add	r3, r1
    5680:	330a      	adds	r3, #10
    5682:	781a      	ldrb	r2, [r3, #0]
    5684:	4b1d      	ldr	r3, [pc, #116]	; (56fc <set_video_mode+0x120>)
    5686:	701a      	strb	r2, [r3, #0]
    hres=video_params[mode].hres;
    5688:	79fa      	ldrb	r2, [r7, #7]
    568a:	4916      	ldr	r1, [pc, #88]	; (56e4 <set_video_mode+0x108>)
    568c:	4613      	mov	r3, r2
    568e:	00db      	lsls	r3, r3, #3
    5690:	4413      	add	r3, r2
    5692:	005b      	lsls	r3, r3, #1
    5694:	440b      	add	r3, r1
    5696:	330c      	adds	r3, #12
    5698:	881b      	ldrh	r3, [r3, #0]
    569a:	b2da      	uxtb	r2, r3
    569c:	4b18      	ldr	r3, [pc, #96]	; (5700 <set_video_mode+0x124>)
    569e:	701a      	strb	r2, [r3, #0]
    vres=video_params[mode].vres;
    56a0:	79fa      	ldrb	r2, [r7, #7]
    56a2:	4910      	ldr	r1, [pc, #64]	; (56e4 <set_video_mode+0x108>)
    56a4:	4613      	mov	r3, r2
    56a6:	00db      	lsls	r3, r3, #3
    56a8:	4413      	add	r3, r2
    56aa:	005b      	lsls	r3, r3, #1
    56ac:	440b      	add	r3, r1
    56ae:	330e      	adds	r3, #14
    56b0:	881b      	ldrh	r3, [r3, #0]
    56b2:	b2da      	uxtb	r2, r3
    56b4:	4b13      	ldr	r3, [pc, #76]	; (5704 <set_video_mode+0x128>)
    56b6:	701a      	strb	r2, [r3, #0]
    chroma_cfg=video_params[mode].chroma_cfg;
    56b8:	79fa      	ldrb	r2, [r7, #7]
    56ba:	490a      	ldr	r1, [pc, #40]	; (56e4 <set_video_mode+0x108>)
    56bc:	4613      	mov	r3, r2
    56be:	00db      	lsls	r3, r3, #3
    56c0:	4413      	add	r3, r2
    56c2:	005b      	lsls	r3, r3, #1
    56c4:	440b      	add	r3, r1
    56c6:	3310      	adds	r3, #16
    56c8:	881a      	ldrh	r2, [r3, #0]
    56ca:	4b0f      	ldr	r3, [pc, #60]	; (5708 <set_video_mode+0x12c>)
    56cc:	801a      	strh	r2, [r3, #0]
    gfx_cls();
    56ce:	f7fc ff33 	bl	2538 <gfx_cls>
}
    56d2:	bf00      	nop
    56d4:	3708      	adds	r7, #8
    56d6:	46bd      	mov	sp, r7
    56d8:	bd80      	pop	{r7, pc}
    56da:	bf00      	nop
    56dc:	200006b0 	.word	0x200006b0
    56e0:	20000190 	.word	0x20000190
    56e4:	0000627c 	.word	0x0000627c
    56e8:	20000202 	.word	0x20000202
    56ec:	20000204 	.word	0x20000204
    56f0:	20000206 	.word	0x20000206
    56f4:	20000208 	.word	0x20000208
    56f8:	20000209 	.word	0x20000209
    56fc:	2000020a 	.word	0x2000020a
    5700:	2000020b 	.word	0x2000020b
    5704:	2000020c 	.word	0x2000020c
    5708:	2000020e 	.word	0x2000020e

0000570c <get_video_params>:

vmode_params_t* get_video_params(){
    570c:	b480      	push	{r7}
    570e:	af00      	add	r7, sp, #0
    return (vmode_params_t*)&video_params[video_mode];
    5710:	4b06      	ldr	r3, [pc, #24]	; (572c <get_video_params+0x20>)
    5712:	781b      	ldrb	r3, [r3, #0]
    5714:	461a      	mov	r2, r3
    5716:	4613      	mov	r3, r2
    5718:	00db      	lsls	r3, r3, #3
    571a:	4413      	add	r3, r2
    571c:	005b      	lsls	r3, r3, #1
    571e:	4a04      	ldr	r2, [pc, #16]	; (5730 <get_video_params+0x24>)
    5720:	4413      	add	r3, r2
}
    5722:	4618      	mov	r0, r3
    5724:	46bd      	mov	sp, r7
    5726:	bc80      	pop	{r7}
    5728:	4770      	bx	lr
    572a:	bf00      	nop
    572c:	200006b0 	.word	0x200006b0
    5730:	0000627c 	.word	0x0000627c

00005734 <game_pause>:

void game_pause(uint16_t frame_count){
    5734:	b480      	push	{r7}
    5736:	b083      	sub	sp, #12
    5738:	af00      	add	r7, sp, #0
    573a:	4603      	mov	r3, r0
    573c:	80fb      	strh	r3, [r7, #6]
    game_timer=frame_count;
    573e:	4a07      	ldr	r2, [pc, #28]	; (575c <game_pause+0x28>)
    5740:	88fb      	ldrh	r3, [r7, #6]
    5742:	8013      	strh	r3, [r2, #0]
    while (game_timer);
    5744:	bf00      	nop
    5746:	4b05      	ldr	r3, [pc, #20]	; (575c <game_pause+0x28>)
    5748:	881b      	ldrh	r3, [r3, #0]
    574a:	b29b      	uxth	r3, r3
    574c:	2b00      	cmp	r3, #0
    574e:	d1fa      	bne.n	5746 <game_pause+0x12>
}
    5750:	bf00      	nop
    5752:	370c      	adds	r7, #12
    5754:	46bd      	mov	sp, r7
    5756:	bc80      	pop	{r7}
    5758:	4770      	bx	lr
    575a:	bf00      	nop
    575c:	20004e40 	.word	0x20004e40

00005760 <micro_pause>:

// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    5760:	b480      	push	{r7}
    5762:	b085      	sub	sp, #20
    5764:	af00      	add	r7, sp, #0
    5766:	6078      	str	r0, [r7, #4]
    uint32_t t0;
    t0=ntsc_ticks+count;
    5768:	4b07      	ldr	r3, [pc, #28]	; (5788 <micro_pause+0x28>)
    576a:	681a      	ldr	r2, [r3, #0]
    576c:	687b      	ldr	r3, [r7, #4]
    576e:	4413      	add	r3, r2
    5770:	60fb      	str	r3, [r7, #12]
    while (ntsc_ticks<t0);
    5772:	bf00      	nop
    5774:	4b04      	ldr	r3, [pc, #16]	; (5788 <micro_pause+0x28>)
    5776:	681a      	ldr	r2, [r3, #0]
    5778:	68fb      	ldr	r3, [r7, #12]
    577a:	429a      	cmp	r2, r3
    577c:	d3fa      	bcc.n	5774 <micro_pause+0x14>
}
    577e:	bf00      	nop
    5780:	3714      	adds	r7, #20
    5782:	46bd      	mov	sp, r7
    5784:	bc80      	pop	{r7}
    5786:	4770      	bx	lr
    5788:	20004e44 	.word	0x20004e44

0000578c <usart_config_port>:

#define _usart_select(n)  USART##n_
#define _usart_sfr_sel(n,s) USART##n_##s 

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
    578c:	b480      	push	{r7}
    578e:	b085      	sub	sp, #20
    5790:	af00      	add	r7, sp, #0
    5792:	60f8      	str	r0, [r7, #12]
    5794:	60b9      	str	r1, [r7, #8]
    5796:	607a      	str	r2, [r7, #4]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    5798:	68fb      	ldr	r3, [r7, #12]
    579a:	4a51      	ldr	r2, [pc, #324]	; (58e0 <usart_config_port+0x154>)
    579c:	4293      	cmp	r3, r2
    579e:	d070      	beq.n	5882 <usart_config_port+0xf6>
    57a0:	4a50      	ldr	r2, [pc, #320]	; (58e4 <usart_config_port+0x158>)
    57a2:	4293      	cmp	r3, r2
    57a4:	d003      	beq.n	57ae <usart_config_port+0x22>
    57a6:	4a50      	ldr	r2, [pc, #320]	; (58e8 <usart_config_port+0x15c>)
    57a8:	4293      	cmp	r3, r2
    57aa:	d041      	beq.n	5830 <usart_config_port+0xa4>
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
		}
		break;
	}
}
    57ac:	e092      	b.n	58d4 <usart_config_port+0x148>
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    57ae:	4a4f      	ldr	r2, [pc, #316]	; (58ec <usart_config_port+0x160>)
    57b0:	4b4e      	ldr	r3, [pc, #312]	; (58ec <usart_config_port+0x160>)
    57b2:	699b      	ldr	r3, [r3, #24]
    57b4:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    57b8:	f043 0304 	orr.w	r3, r3, #4
    57bc:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    57be:	687b      	ldr	r3, [r7, #4]
    57c0:	2b01      	cmp	r3, #1
    57c2:	d10b      	bne.n	57dc <usart_config_port+0x50>
				port->CR[1]&=~(15<<((USART1_RTS_PIN-8)*4));
    57c4:	68bb      	ldr	r3, [r7, #8]
    57c6:	685b      	ldr	r3, [r3, #4]
    57c8:	f423 2270 	bic.w	r2, r3, #983040	; 0xf0000
    57cc:	68bb      	ldr	r3, [r7, #8]
    57ce:	605a      	str	r2, [r3, #4]
				port->CR[1]|=(0xA<<((USART1_RTS_PIN-8)*4));
    57d0:	68bb      	ldr	r3, [r7, #8]
    57d2:	685b      	ldr	r3, [r3, #4]
    57d4:	f443 2220 	orr.w	r2, r3, #655360	; 0xa0000
    57d8:	68bb      	ldr	r3, [r7, #8]
    57da:	605a      	str	r2, [r3, #4]
		if (port==USART1_PORT){
    57dc:	68bb      	ldr	r3, [r7, #8]
    57de:	4a44      	ldr	r2, [pc, #272]	; (58f0 <usart_config_port+0x164>)
    57e0:	4293      	cmp	r3, r2
    57e2:	d10c      	bne.n	57fe <usart_config_port+0x72>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    57e4:	68bb      	ldr	r3, [r7, #8]
    57e6:	685b      	ldr	r3, [r3, #4]
    57e8:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
    57ec:	68bb      	ldr	r3, [r7, #8]
    57ee:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    57f0:	68bb      	ldr	r3, [r7, #8]
    57f2:	685b      	ldr	r3, [r3, #4]
    57f4:	f043 02a0 	orr.w	r2, r3, #160	; 0xa0
    57f8:	68bb      	ldr	r3, [r7, #8]
    57fa:	605a      	str	r2, [r3, #4]
		break;
    57fc:	e06a      	b.n	58d4 <usart_config_port+0x148>
			AFIO->MAPR|=AFIO_MAPR_USART1_REMAP;
    57fe:	4a3d      	ldr	r2, [pc, #244]	; (58f4 <usart_config_port+0x168>)
    5800:	4b3c      	ldr	r3, [pc, #240]	; (58f4 <usart_config_port+0x168>)
    5802:	685b      	ldr	r3, [r3, #4]
    5804:	f043 0304 	orr.w	r3, r3, #4
    5808:	6053      	str	r3, [r2, #4]
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    580a:	4a38      	ldr	r2, [pc, #224]	; (58ec <usart_config_port+0x160>)
    580c:	4b37      	ldr	r3, [pc, #220]	; (58ec <usart_config_port+0x160>)
    580e:	699b      	ldr	r3, [r3, #24]
    5810:	f043 0308 	orr.w	r3, r3, #8
    5814:	6193      	str	r3, [r2, #24]
			port->CR[0]&=~(15<<(USART1_ALT_TX_PIN*4));
    5816:	68bb      	ldr	r3, [r7, #8]
    5818:	681b      	ldr	r3, [r3, #0]
    581a:	f023 6270 	bic.w	r2, r3, #251658240	; 0xf000000
    581e:	68bb      	ldr	r3, [r7, #8]
    5820:	601a      	str	r2, [r3, #0]
			port->CR[0]|=0xA<<(USART1_ALT_TX_PIN*4);
    5822:	68bb      	ldr	r3, [r7, #8]
    5824:	681b      	ldr	r3, [r3, #0]
    5826:	f043 6220 	orr.w	r2, r3, #167772160	; 0xa000000
    582a:	68bb      	ldr	r3, [r7, #8]
    582c:	601a      	str	r2, [r3, #0]
		break;
    582e:	e051      	b.n	58d4 <usart_config_port+0x148>
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    5830:	4a2e      	ldr	r2, [pc, #184]	; (58ec <usart_config_port+0x160>)
    5832:	4b2e      	ldr	r3, [pc, #184]	; (58ec <usart_config_port+0x160>)
    5834:	69db      	ldr	r3, [r3, #28]
    5836:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
    583a:	61d3      	str	r3, [r2, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    583c:	4a2b      	ldr	r2, [pc, #172]	; (58ec <usart_config_port+0x160>)
    583e:	4b2b      	ldr	r3, [pc, #172]	; (58ec <usart_config_port+0x160>)
    5840:	699b      	ldr	r3, [r3, #24]
    5842:	f043 0304 	orr.w	r3, r3, #4
    5846:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    5848:	687b      	ldr	r3, [r7, #4]
    584a:	2b01      	cmp	r3, #1
    584c:	d10c      	bne.n	5868 <usart_config_port+0xdc>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    584e:	68bb      	ldr	r3, [r7, #8]
    5850:	681b      	ldr	r3, [r3, #0]
    5852:	f423 627f 	bic.w	r2, r3, #4080	; 0xff0
    5856:	68bb      	ldr	r3, [r7, #8]
    5858:	601a      	str	r2, [r3, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    585a:	68bb      	ldr	r3, [r7, #8]
    585c:	681b      	ldr	r3, [r3, #0]
    585e:	f443 622a 	orr.w	r2, r3, #2720	; 0xaa0
    5862:	68bb      	ldr	r3, [r7, #8]
    5864:	601a      	str	r2, [r3, #0]
		break;
    5866:	e035      	b.n	58d4 <usart_config_port+0x148>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    5868:	68bb      	ldr	r3, [r7, #8]
    586a:	681b      	ldr	r3, [r3, #0]
    586c:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    5870:	68bb      	ldr	r3, [r7, #8]
    5872:	601a      	str	r2, [r3, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    5874:	68bb      	ldr	r3, [r7, #8]
    5876:	681b      	ldr	r3, [r3, #0]
    5878:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    587c:	68bb      	ldr	r3, [r7, #8]
    587e:	601a      	str	r2, [r3, #0]
		break;
    5880:	e028      	b.n	58d4 <usart_config_port+0x148>
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    5882:	4a1a      	ldr	r2, [pc, #104]	; (58ec <usart_config_port+0x160>)
    5884:	4b19      	ldr	r3, [pc, #100]	; (58ec <usart_config_port+0x160>)
    5886:	69db      	ldr	r3, [r3, #28]
    5888:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
    588c:	61d3      	str	r3, [r2, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    588e:	4a17      	ldr	r2, [pc, #92]	; (58ec <usart_config_port+0x160>)
    5890:	4b16      	ldr	r3, [pc, #88]	; (58ec <usart_config_port+0x160>)
    5892:	699b      	ldr	r3, [r3, #24]
    5894:	f043 0308 	orr.w	r3, r3, #8
    5898:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    589a:	687b      	ldr	r3, [r7, #4]
    589c:	2b01      	cmp	r3, #1
    589e:	d10c      	bne.n	58ba <usart_config_port+0x12e>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    58a0:	68bb      	ldr	r3, [r7, #8]
    58a2:	685b      	ldr	r3, [r3, #4]
    58a4:	f023 220f 	bic.w	r2, r3, #251662080	; 0xf000f00
    58a8:	68bb      	ldr	r3, [r7, #8]
    58aa:	605a      	str	r2, [r3, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    58ac:	68bb      	ldr	r3, [r7, #8]
    58ae:	685b      	ldr	r3, [r3, #4]
    58b0:	f043 220a 	orr.w	r2, r3, #167774720	; 0xa000a00
    58b4:	68bb      	ldr	r3, [r7, #8]
    58b6:	605a      	str	r2, [r3, #4]
		break;
    58b8:	e00b      	b.n	58d2 <usart_config_port+0x146>
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    58ba:	68bb      	ldr	r3, [r7, #8]
    58bc:	685b      	ldr	r3, [r3, #4]
    58be:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    58c2:	68bb      	ldr	r3, [r7, #8]
    58c4:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    58c6:	68bb      	ldr	r3, [r7, #8]
    58c8:	685b      	ldr	r3, [r3, #4]
    58ca:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    58ce:	68bb      	ldr	r3, [r7, #8]
    58d0:	605a      	str	r2, [r3, #4]
		break;
    58d2:	bf00      	nop
}
    58d4:	bf00      	nop
    58d6:	3714      	adds	r7, #20
    58d8:	46bd      	mov	sp, r7
    58da:	bc80      	pop	{r7}
    58dc:	4770      	bx	lr
    58de:	bf00      	nop
    58e0:	40004800 	.word	0x40004800
    58e4:	40013800 	.word	0x40013800
    58e8:	40004400 	.word	0x40004400
    58ec:	40021000 	.word	0x40021000
    58f0:	40010800 	.word	0x40010800
    58f4:	40010000 	.word	0x40010000

000058f8 <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
    58f8:	b480      	push	{r7}
    58fa:	b085      	sub	sp, #20
    58fc:	af00      	add	r7, sp, #0
    58fe:	6078      	str	r0, [r7, #4]
    5900:	6039      	str	r1, [r7, #0]
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    5902:	687b      	ldr	r3, [r7, #4]
    5904:	4a15      	ldr	r2, [pc, #84]	; (595c <usart_set_baud+0x64>)
    5906:	4293      	cmp	r3, r2
    5908:	d110      	bne.n	592c <usart_set_baud+0x34>
		rate=(FAPB2/baud/16)<<4;
    590a:	4a15      	ldr	r2, [pc, #84]	; (5960 <usart_set_baud+0x68>)
    590c:	683b      	ldr	r3, [r7, #0]
    590e:	fbb2 f3f3 	udiv	r3, r2, r3
    5912:	091b      	lsrs	r3, r3, #4
    5914:	011b      	lsls	r3, r3, #4
    5916:	60fb      	str	r3, [r7, #12]
		rate|=(FAPB2/baud)%16;
    5918:	4a11      	ldr	r2, [pc, #68]	; (5960 <usart_set_baud+0x68>)
    591a:	683b      	ldr	r3, [r7, #0]
    591c:	fbb2 f3f3 	udiv	r3, r2, r3
    5920:	f003 030f 	and.w	r3, r3, #15
    5924:	68fa      	ldr	r2, [r7, #12]
    5926:	4313      	orrs	r3, r2
    5928:	60fb      	str	r3, [r7, #12]
    592a:	e00f      	b.n	594c <usart_set_baud+0x54>
	}else{
		rate=(FAPB1/baud/16)<<4;
    592c:	4a0d      	ldr	r2, [pc, #52]	; (5964 <usart_set_baud+0x6c>)
    592e:	683b      	ldr	r3, [r7, #0]
    5930:	fbb2 f3f3 	udiv	r3, r2, r3
    5934:	091b      	lsrs	r3, r3, #4
    5936:	011b      	lsls	r3, r3, #4
    5938:	60fb      	str	r3, [r7, #12]
		rate|=(FAPB1/baud)%16;
    593a:	4a0a      	ldr	r2, [pc, #40]	; (5964 <usart_set_baud+0x6c>)
    593c:	683b      	ldr	r3, [r7, #0]
    593e:	fbb2 f3f3 	udiv	r3, r2, r3
    5942:	f003 030f 	and.w	r3, r3, #15
    5946:	68fa      	ldr	r2, [r7, #12]
    5948:	4313      	orrs	r3, r2
    594a:	60fb      	str	r3, [r7, #12]
	}
	channel->BRR=rate;
    594c:	687b      	ldr	r3, [r7, #4]
    594e:	68fa      	ldr	r2, [r7, #12]
    5950:	609a      	str	r2, [r3, #8]
}
    5952:	bf00      	nop
    5954:	3714      	adds	r7, #20
    5956:	46bd      	mov	sp, r7
    5958:	bc80      	pop	{r7}
    595a:	4770      	bx	lr
    595c:	40013800 	.word	0x40013800
    5960:	044463f4 	.word	0x044463f4
    5964:	022231fa 	.word	0x022231fa

00005968 <usart_comm_dir>:

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
    5968:	b480      	push	{r7}
    596a:	b083      	sub	sp, #12
    596c:	af00      	add	r7, sp, #0
    596e:	6078      	str	r0, [r7, #4]
    5970:	6039      	str	r1, [r7, #0]
	channel->CR1&=USART_CR1_DIR_MASK;
    5972:	687b      	ldr	r3, [r7, #4]
    5974:	68db      	ldr	r3, [r3, #12]
    5976:	f023 020c 	bic.w	r2, r3, #12
    597a:	687b      	ldr	r3, [r7, #4]
    597c:	60da      	str	r2, [r3, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    597e:	687b      	ldr	r3, [r7, #4]
    5980:	68da      	ldr	r2, [r3, #12]
    5982:	683b      	ldr	r3, [r7, #0]
    5984:	009b      	lsls	r3, r3, #2
    5986:	431a      	orrs	r2, r3
    5988:	687b      	ldr	r3, [r7, #4]
    598a:	60da      	str	r2, [r3, #12]
}
    598c:	bf00      	nop
    598e:	370c      	adds	r7, #12
    5990:	46bd      	mov	sp, r7
    5992:	bc80      	pop	{r7}
    5994:	4770      	bx	lr

00005996 <usart_open_channel>:


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, int port, unsigned flow_ctrl){
    5996:	b580      	push	{r7, lr}
    5998:	b084      	sub	sp, #16
    599a:	af00      	add	r7, sp, #0
    599c:	60f8      	str	r0, [r7, #12]
    599e:	60b9      	str	r1, [r7, #8]
    59a0:	607a      	str	r2, [r7, #4]
    59a2:	603b      	str	r3, [r7, #0]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    59a4:	68fb      	ldr	r3, [r7, #12]
    59a6:	4a38      	ldr	r2, [pc, #224]	; (5a88 <usart_open_channel+0xf2>)
    59a8:	4293      	cmp	r3, r2
    59aa:	d029      	beq.n	5a00 <usart_open_channel+0x6a>
    59ac:	4a37      	ldr	r2, [pc, #220]	; (5a8c <usart_open_channel+0xf6>)
    59ae:	4293      	cmp	r3, r2
    59b0:	d003      	beq.n	59ba <usart_open_channel+0x24>
    59b2:	4a37      	ldr	r2, [pc, #220]	; (5a90 <usart_open_channel+0xfa>)
    59b4:	4293      	cmp	r3, r2
    59b6:	d016      	beq.n	59e6 <usart_open_channel+0x50>
    59b8:	e02f      	b.n	5a1a <usart_open_channel+0x84>
	case (uint32_t)USART1:
	  if (port==STD_PORT){
    59ba:	69bb      	ldr	r3, [r7, #24]
    59bc:	2b00      	cmp	r3, #0
    59be:	d105      	bne.n	59cc <usart_open_channel+0x36>
			usart_config_port(channel,USART1_PORT,flow_ctrl);
    59c0:	69fa      	ldr	r2, [r7, #28]
    59c2:	4934      	ldr	r1, [pc, #208]	; (5a94 <usart_open_channel+0xfe>)
    59c4:	68f8      	ldr	r0, [r7, #12]
    59c6:	f7ff fee1 	bl	578c <usart_config_port>
    59ca:	e004      	b.n	59d6 <usart_open_channel+0x40>
		}else{
			usart_config_port(channel,USART1_ALT_PORT,flow_ctrl);
    59cc:	69fa      	ldr	r2, [r7, #28]
    59ce:	4932      	ldr	r1, [pc, #200]	; (5a98 <usart_open_channel+0x102>)
    59d0:	68f8      	ldr	r0, [r7, #12]
    59d2:	f7ff fedb 	bl	578c <usart_config_port>
		}
		set_int_priority(IRQ_USART1,7);
    59d6:	2107      	movs	r1, #7
    59d8:	2025      	movs	r0, #37	; 0x25
    59da:	f7fd fee1 	bl	37a0 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    59de:	2025      	movs	r0, #37	; 0x25
    59e0:	f7fd fe24 	bl	362c <enable_interrupt>
		break;
    59e4:	e019      	b.n	5a1a <usart_open_channel+0x84>
	case (uint32_t)USART2:
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    59e6:	69fa      	ldr	r2, [r7, #28]
    59e8:	492a      	ldr	r1, [pc, #168]	; (5a94 <usart_open_channel+0xfe>)
    59ea:	68f8      	ldr	r0, [r7, #12]
    59ec:	f7ff fece 	bl	578c <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    59f0:	2107      	movs	r1, #7
    59f2:	2026      	movs	r0, #38	; 0x26
    59f4:	f7fd fed4 	bl	37a0 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    59f8:	2026      	movs	r0, #38	; 0x26
    59fa:	f7fd fe17 	bl	362c <enable_interrupt>
		break;
    59fe:	e00c      	b.n	5a1a <usart_open_channel+0x84>
	case (uint32_t)USART3:
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    5a00:	69fa      	ldr	r2, [r7, #28]
    5a02:	4925      	ldr	r1, [pc, #148]	; (5a98 <usart_open_channel+0x102>)
    5a04:	68f8      	ldr	r0, [r7, #12]
    5a06:	f7ff fec1 	bl	578c <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    5a0a:	2107      	movs	r1, #7
    5a0c:	2027      	movs	r0, #39	; 0x27
    5a0e:	f7fd fec7 	bl	37a0 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    5a12:	2027      	movs	r0, #39	; 0x27
    5a14:	f7fd fe0a 	bl	362c <enable_interrupt>
		break;
    5a18:	bf00      	nop
	}
	if (flow_ctrl==FLOW_HARD){
    5a1a:	69fb      	ldr	r3, [r7, #28]
    5a1c:	2b01      	cmp	r3, #1
    5a1e:	d103      	bne.n	5a28 <usart_open_channel+0x92>
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    5a20:	68fb      	ldr	r3, [r7, #12]
    5a22:	f44f 7240 	mov.w	r2, #768	; 0x300
    5a26:	615a      	str	r2, [r3, #20]
	}
	usart_comm_dir(channel,dir);
    5a28:	6839      	ldr	r1, [r7, #0]
    5a2a:	68f8      	ldr	r0, [r7, #12]
    5a2c:	f7ff ff9c 	bl	5968 <usart_comm_dir>
	switch (parity){
    5a30:	687b      	ldr	r3, [r7, #4]
    5a32:	2b01      	cmp	r3, #1
    5a34:	d00b      	beq.n	5a4e <usart_open_channel+0xb8>
    5a36:	2b01      	cmp	r3, #1
    5a38:	d302      	bcc.n	5a40 <usart_open_channel+0xaa>
    5a3a:	2b02      	cmp	r3, #2
    5a3c:	d00e      	beq.n	5a5c <usart_open_channel+0xc6>
    5a3e:	e014      	b.n	5a6a <usart_open_channel+0xd4>
	case PARITY_NONE:
		channel->CR1|=USART_CR1_RXNEIE;
    5a40:	68fb      	ldr	r3, [r7, #12]
    5a42:	68db      	ldr	r3, [r3, #12]
    5a44:	f043 0220 	orr.w	r2, r3, #32
    5a48:	68fb      	ldr	r3, [r7, #12]
    5a4a:	60da      	str	r2, [r3, #12]
		break;
    5a4c:	e00d      	b.n	5a6a <usart_open_channel+0xd4>
	case PARITY_ODD:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    5a4e:	68fb      	ldr	r3, [r7, #12]
    5a50:	68db      	ldr	r3, [r3, #12]
    5a52:	f443 62e4 	orr.w	r2, r3, #1824	; 0x720
    5a56:	68fb      	ldr	r3, [r7, #12]
    5a58:	60da      	str	r2, [r3, #12]
		break;
    5a5a:	e006      	b.n	5a6a <usart_open_channel+0xd4>
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    5a5c:	68fb      	ldr	r3, [r7, #12]
    5a5e:	68db      	ldr	r3, [r3, #12]
    5a60:	f443 62a4 	orr.w	r2, r3, #1312	; 0x520
    5a64:	68fb      	ldr	r3, [r7, #12]
    5a66:	60da      	str	r2, [r3, #12]
		break;
    5a68:	bf00      	nop
    }
	usart_set_baud(channel,baud);
    5a6a:	68b9      	ldr	r1, [r7, #8]
    5a6c:	68f8      	ldr	r0, [r7, #12]
    5a6e:	f7ff ff43 	bl	58f8 <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    5a72:	68fb      	ldr	r3, [r7, #12]
    5a74:	68db      	ldr	r3, [r3, #12]
    5a76:	f443 5200 	orr.w	r2, r3, #8192	; 0x2000
    5a7a:	68fb      	ldr	r3, [r7, #12]
    5a7c:	60da      	str	r2, [r3, #12]
}
    5a7e:	bf00      	nop
    5a80:	3710      	adds	r7, #16
    5a82:	46bd      	mov	sp, r7
    5a84:	bd80      	pop	{r7, pc}
    5a86:	bf00      	nop
    5a88:	40004800 	.word	0x40004800
    5a8c:	40013800 	.word	0x40013800
    5a90:	40004400 	.word	0x40004400
    5a94:	40010800 	.word	0x40010800
    5a98:	40010c00 	.word	0x40010c00

00005a9c <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
    5a9c:	b480      	push	{r7}
    5a9e:	b083      	sub	sp, #12
    5aa0:	af00      	add	r7, sp, #0
    5aa2:	6078      	str	r0, [r7, #4]
	return channel->SR&USART_SR_RXNE;
    5aa4:	687b      	ldr	r3, [r7, #4]
    5aa6:	681b      	ldr	r3, [r3, #0]
    5aa8:	f003 0320 	and.w	r3, r3, #32
}
    5aac:	4618      	mov	r0, r3
    5aae:	370c      	adds	r7, #12
    5ab0:	46bd      	mov	sp, r7
    5ab2:	bc80      	pop	{r7}
    5ab4:	4770      	bx	lr

00005ab6 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
    5ab6:	b480      	push	{r7}
    5ab8:	b083      	sub	sp, #12
    5aba:	af00      	add	r7, sp, #0
    5abc:	6078      	str	r0, [r7, #4]
	if (channel->SR&USART_SR_RXNE){
    5abe:	687b      	ldr	r3, [r7, #4]
    5ac0:	681b      	ldr	r3, [r3, #0]
    5ac2:	f003 0320 	and.w	r3, r3, #32
    5ac6:	2b00      	cmp	r3, #0
    5ac8:	d003      	beq.n	5ad2 <usart_getc+0x1c>
		return channel->DR;
    5aca:	687b      	ldr	r3, [r7, #4]
    5acc:	685b      	ldr	r3, [r3, #4]
    5ace:	b2db      	uxtb	r3, r3
    5ad0:	e000      	b.n	5ad4 <usart_getc+0x1e>
	}else{
		return 0;
    5ad2:	2300      	movs	r3, #0
	}
		
}
    5ad4:	4618      	mov	r0, r3
    5ad6:	370c      	adds	r7, #12
    5ad8:	46bd      	mov	sp, r7
    5ada:	bc80      	pop	{r7}
    5adc:	4770      	bx	lr

00005ade <usart_getc_dly>:

#include "../tvout.h"
// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
    5ade:	b480      	push	{r7}
    5ae0:	b085      	sub	sp, #20
    5ae2:	af00      	add	r7, sp, #0
    5ae4:	6078      	str	r0, [r7, #4]
    5ae6:	6039      	str	r1, [r7, #0]
	unsigned t0=ntsc_ticks+dly;
    5ae8:	4b0f      	ldr	r3, [pc, #60]	; (5b28 <usart_getc_dly+0x4a>)
    5aea:	681a      	ldr	r2, [r3, #0]
    5aec:	683b      	ldr	r3, [r7, #0]
    5aee:	4413      	add	r3, r2
    5af0:	60fb      	str	r3, [r7, #12]
	
	while ((ntsc_ticks<t0) && !(channel->SR&USART_SR_RXNE));
    5af2:	bf00      	nop
    5af4:	4b0c      	ldr	r3, [pc, #48]	; (5b28 <usart_getc_dly+0x4a>)
    5af6:	681a      	ldr	r2, [r3, #0]
    5af8:	68fb      	ldr	r3, [r7, #12]
    5afa:	429a      	cmp	r2, r3
    5afc:	d205      	bcs.n	5b0a <usart_getc_dly+0x2c>
    5afe:	687b      	ldr	r3, [r7, #4]
    5b00:	681b      	ldr	r3, [r3, #0]
    5b02:	f003 0320 	and.w	r3, r3, #32
    5b06:	2b00      	cmp	r3, #0
    5b08:	d0f4      	beq.n	5af4 <usart_getc_dly+0x16>
	if (ntsc_ticks<t0) return channel->DR; else return 0;
    5b0a:	4b07      	ldr	r3, [pc, #28]	; (5b28 <usart_getc_dly+0x4a>)
    5b0c:	681a      	ldr	r2, [r3, #0]
    5b0e:	68fb      	ldr	r3, [r7, #12]
    5b10:	429a      	cmp	r2, r3
    5b12:	d203      	bcs.n	5b1c <usart_getc_dly+0x3e>
    5b14:	687b      	ldr	r3, [r7, #4]
    5b16:	685b      	ldr	r3, [r3, #4]
    5b18:	b2db      	uxtb	r3, r3
    5b1a:	e000      	b.n	5b1e <usart_getc_dly+0x40>
    5b1c:	2300      	movs	r3, #0
}
    5b1e:	4618      	mov	r0, r3
    5b20:	3714      	adds	r7, #20
    5b22:	46bd      	mov	sp, r7
    5b24:	bc80      	pop	{r7}
    5b26:	4770      	bx	lr
    5b28:	20004e44 	.word	0x20004e44

00005b2c <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
    5b2c:	b480      	push	{r7}
    5b2e:	b083      	sub	sp, #12
    5b30:	af00      	add	r7, sp, #0
    5b32:	6078      	str	r0, [r7, #4]
    5b34:	460b      	mov	r3, r1
    5b36:	70fb      	strb	r3, [r7, #3]
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    5b38:	bf00      	nop
    5b3a:	687b      	ldr	r3, [r7, #4]
    5b3c:	681b      	ldr	r3, [r3, #0]
    5b3e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    5b42:	2b00      	cmp	r3, #0
    5b44:	d0f9      	beq.n	5b3a <usart_putc+0xe>
	channel->DR=c;
    5b46:	78fa      	ldrb	r2, [r7, #3]
    5b48:	687b      	ldr	r3, [r7, #4]
    5b4a:	605a      	str	r2, [r3, #4]
}
    5b4c:	bf00      	nop
    5b4e:	370c      	adds	r7, #12
    5b50:	46bd      	mov	sp, r7
    5b52:	bc80      	pop	{r7}
    5b54:	4770      	bx	lr

00005b56 <usart_cts>:


int usart_cts(usart_t* channel){
    5b56:	b480      	push	{r7}
    5b58:	b085      	sub	sp, #20
    5b5a:	af00      	add	r7, sp, #0
    5b5c:	6078      	str	r0, [r7, #4]
	int cts;
	switch ((uint32_t)channel){
    5b5e:	687b      	ldr	r3, [r7, #4]
    5b60:	4a10      	ldr	r2, [pc, #64]	; (5ba4 <usart_cts+0x4e>)
    5b62:	4293      	cmp	r3, r2
    5b64:	d012      	beq.n	5b8c <usart_cts+0x36>
    5b66:	4a10      	ldr	r2, [pc, #64]	; (5ba8 <usart_cts+0x52>)
    5b68:	4293      	cmp	r3, r2
    5b6a:	d003      	beq.n	5b74 <usart_cts+0x1e>
    5b6c:	4a0f      	ldr	r2, [pc, #60]	; (5bac <usart_cts+0x56>)
    5b6e:	4293      	cmp	r3, r2
    5b70:	d006      	beq.n	5b80 <usart_cts+0x2a>
    5b72:	e011      	b.n	5b98 <usart_cts+0x42>
		case (uint32_t)USART1:
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    5b74:	4b0e      	ldr	r3, [pc, #56]	; (5bb0 <usart_cts+0x5a>)
    5b76:	689b      	ldr	r3, [r3, #8]
    5b78:	f403 6300 	and.w	r3, r3, #2048	; 0x800
    5b7c:	60fb      	str	r3, [r7, #12]
			break;
    5b7e:	e00b      	b.n	5b98 <usart_cts+0x42>
		case (uint32_t)USART2:
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    5b80:	4b0b      	ldr	r3, [pc, #44]	; (5bb0 <usart_cts+0x5a>)
    5b82:	689b      	ldr	r3, [r3, #8]
    5b84:	f003 0301 	and.w	r3, r3, #1
    5b88:	60fb      	str	r3, [r7, #12]
			break;
    5b8a:	e005      	b.n	5b98 <usart_cts+0x42>
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    5b8c:	4b09      	ldr	r3, [pc, #36]	; (5bb4 <usart_cts+0x5e>)
    5b8e:	689b      	ldr	r3, [r3, #8]
    5b90:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
    5b94:	60fb      	str	r3, [r7, #12]
			break;
    5b96:	bf00      	nop
	}
	return cts;
    5b98:	68fb      	ldr	r3, [r7, #12]
}
    5b9a:	4618      	mov	r0, r3
    5b9c:	3714      	adds	r7, #20
    5b9e:	46bd      	mov	sp, r7
    5ba0:	bc80      	pop	{r7}
    5ba2:	4770      	bx	lr
    5ba4:	40004800 	.word	0x40004800
    5ba8:	40013800 	.word	0x40013800
    5bac:	40004400 	.word	0x40004400
    5bb0:	40010800 	.word	0x40010800
    5bb4:	40010c00 	.word	0x40010c00

00005bb8 <usart_print>:

void usart_print(usart_t* channel, const char *str){
    5bb8:	b580      	push	{r7, lr}
    5bba:	b082      	sub	sp, #8
    5bbc:	af00      	add	r7, sp, #0
    5bbe:	6078      	str	r0, [r7, #4]
    5bc0:	6039      	str	r1, [r7, #0]
	 while (*str) usart_putc(channel,*str++);
    5bc2:	e007      	b.n	5bd4 <usart_print+0x1c>
    5bc4:	683b      	ldr	r3, [r7, #0]
    5bc6:	1c5a      	adds	r2, r3, #1
    5bc8:	603a      	str	r2, [r7, #0]
    5bca:	781b      	ldrb	r3, [r3, #0]
    5bcc:	4619      	mov	r1, r3
    5bce:	6878      	ldr	r0, [r7, #4]
    5bd0:	f7ff ffac 	bl	5b2c <usart_putc>
    5bd4:	683b      	ldr	r3, [r7, #0]
    5bd6:	781b      	ldrb	r3, [r3, #0]
    5bd8:	2b00      	cmp	r3, #0
    5bda:	d1f3      	bne.n	5bc4 <usart_print+0xc>
}
    5bdc:	bf00      	nop
    5bde:	3708      	adds	r7, #8
    5be0:	46bd      	mov	sp, r7
    5be2:	bd80      	pop	{r7, pc}
