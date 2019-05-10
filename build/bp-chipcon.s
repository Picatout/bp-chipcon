
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 09 25 00 00     C...I...O....%..
      20:	09 25 00 00 09 25 00 00 09 25 00 00 55 02 00 00     .%...%...%..U...
      30:	09 25 00 00 09 25 00 00 5b 02 00 00 f1 25 00 00     .%...%..[....%..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 41 22 00 00     g...m...y...A"..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 09 25 00 00 09 25 00 00 b5 02 00 00     .....%...%......
      80:	09 25 00 00 09 25 00 00 09 25 00 00 09 25 00 00     .%...%...%...%..
      90:	09 25 00 00 09 25 00 00 09 25 00 00 bb 02 00 00     .%...%...%......
      a0:	09 25 00 00 5d 28 00 00 09 25 00 00 71 27 00 00     .%..](...%..q'..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 09 25 00 00     .............%..
      c0:	09 25 00 00 09 25 00 00 09 25 00 00 09 25 00 00     .%...%...%...%..
      d0:	09 25 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .%..............
      e0:	09 25 00 00 09 25 00 00 09 25 00 00 09 25 00 00     .%...%...%...%..
      f0:	09 25 00 00 09 25 00 00 09 25 00 00 09 25 00 00     .%...%...%...%..
     100:	09 25 00 00 09 25 00 00 09 25 00 00 09 25 00 00     .%...%...%...%..
     110:	09 25 00 00 09 25 00 00 09 25 00 00 09 25 00 00     .%...%...%...%..
     120:	09 25 00 00 09 25 00 00 09 25 00 00 09 25 00 00     .%...%...%...%..

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
     18e:	f001 f8c3 	bl	1318 <main>
}
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000058 	.word	0x20000058
     1a0:	20002c3c 	.word	0x20002c3c
     1a4:	00003000 	.word	0x00003000
     1a8:	20000000 	.word	0x20000000
     1ac:	20000058 	.word	0x20000058
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
     1dc:	f002 f99c 	bl	2518 <print_fault>
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
     1f4:	f002 f990 	bl	2518 <print_fault>
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
     20c:	f002 f984 	bl	2518 <print_fault>
}
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
		print_fault("hard fault  ",adr);
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 f97f 	bl	2518 <print_fault>
}
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00002e70 	.word	0x00002e70
     230:	00002e88 	.word	0x00002e88
     234:	00002e94 	.word	0x00002e94
     238:	00002ea4 	.word	0x00002ea4

0000023c <NMI_handler>:
_default_handler(NMI_handler) // 2
     23c:	f002 f964 	bl	2508 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     242:	f002 f961 	bl	2508 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     248:	f002 f95e 	bl	2508 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     24e:	f002 f95b 	bl	2508 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
_default_handler(SVC_handler) // 11
     254:	f002 f958 	bl	2508 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     25a:	f002 f955 	bl	2508 <reset_mcu>
     25e:	bf00      	nop
_default_handler(STK_handler) // 15
     260:	f002 f952 	bl	2508 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     266:	f002 f94f 	bl	2508 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
_default_handler(PVD_handler) // 1
     26c:	f002 f94c 	bl	2508 <reset_mcu>
     270:	bf00      	nop
_default_handler(RTC_handler) // 2
     272:	f002 f949 	bl	2508 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     278:	f002 f946 	bl	2508 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     27e:	f002 f943 	bl	2508 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
_default_handler(RCC_handler) // 5
     284:	f002 f940 	bl	2508 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     28a:	f002 f93d 	bl	2508 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     290:	f002 f93a 	bl	2508 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     296:	f002 f937 	bl	2508 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     29c:	f002 f934 	bl	2508 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     2a2:	f002 f931 	bl	2508 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     2a8:	f002 f92e 	bl	2508 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     2ae:	f002 f92b 	bl	2508 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     2b4:	f002 f928 	bl	2508 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     2ba:	f002 f925 	bl	2508 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     2c0:	f002 f922 	bl	2508 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     2c6:	f002 f91f 	bl	2508 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     2cc:	f002 f91c 	bl	2508 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     2d2:	f002 f919 	bl	2508 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
_default_handler(USART1_handler) // 37
     2d8:	f002 f916 	bl	2508 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
_default_handler(USART2_handler) // 38
     2de:	f002 f913 	bl	2508 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
_default_handler(USART3_handler) // 39
     2e4:	f002 f910 	bl	2508 <reset_mcu>
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

000003c0 <flash_enable>:
static row_buffer_t row_buff;


// activation interface de programmation
//mémoire flash du mcu
int flash_enable(){
     3c0:	b480      	push	{r7}
     3c2:	af00      	add	r7, sp, #0
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     3c4:	4b14      	ldr	r3, [pc, #80]	; (418 <flash_enable+0x58>)
     3c6:	2200      	movs	r2, #0
     3c8:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     3ca:	4b14      	ldr	r3, [pc, #80]	; (41c <flash_enable+0x5c>)
     3cc:	681b      	ldr	r3, [r3, #0]
     3ce:	f003 0301 	and.w	r3, r3, #1
     3d2:	2b00      	cmp	r3, #0
     3d4:	d10c      	bne.n	3f0 <flash_enable+0x30>
		RCC->CR|=RCC_CR_HSION;
     3d6:	4a11      	ldr	r2, [pc, #68]	; (41c <flash_enable+0x5c>)
     3d8:	4b10      	ldr	r3, [pc, #64]	; (41c <flash_enable+0x5c>)
     3da:	681b      	ldr	r3, [r3, #0]
     3dc:	f043 0301 	orr.w	r3, r3, #1
     3e0:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     3e2:	bf00      	nop
     3e4:	4b0d      	ldr	r3, [pc, #52]	; (41c <flash_enable+0x5c>)
     3e6:	681b      	ldr	r3, [r3, #0]
     3e8:	f003 0302 	and.w	r3, r3, #2
     3ec:	2b00      	cmp	r3, #0
     3ee:	d0f9      	beq.n	3e4 <flash_enable+0x24>
	}
	FLASH->KEYR=0x45670123;
     3f0:	4b0b      	ldr	r3, [pc, #44]	; (420 <flash_enable+0x60>)
     3f2:	4a0c      	ldr	r2, [pc, #48]	; (424 <flash_enable+0x64>)
     3f4:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     3f6:	4b0a      	ldr	r3, [pc, #40]	; (420 <flash_enable+0x60>)
     3f8:	4a0b      	ldr	r2, [pc, #44]	; (428 <flash_enable+0x68>)
     3fa:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     3fc:	4b08      	ldr	r3, [pc, #32]	; (420 <flash_enable+0x60>)
     3fe:	691b      	ldr	r3, [r3, #16]
     400:	f003 0380 	and.w	r3, r3, #128	; 0x80
     404:	2b00      	cmp	r3, #0
     406:	bf0c      	ite	eq
     408:	2301      	moveq	r3, #1
     40a:	2300      	movne	r3, #0
     40c:	b2db      	uxtb	r3, r3
}
     40e:	4618      	mov	r0, r3
     410:	46bd      	mov	sp, r7
     412:	bc80      	pop	{r7}
     414:	4770      	bx	lr
     416:	bf00      	nop
     418:	20000058 	.word	0x20000058
     41c:	40021000 	.word	0x40021000
     420:	40022000 	.word	0x40022000
     424:	45670123 	.word	0x45670123
     428:	cdef89ab 	.word	0xcdef89ab

0000042c <flash_write_hword>:
}
*/

// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
     42c:	b480      	push	{r7}
     42e:	b083      	sub	sp, #12
     430:	af00      	add	r7, sp, #0
     432:	6078      	str	r0, [r7, #4]
     434:	460b      	mov	r3, r1
     436:	807b      	strh	r3, [r7, #2]
	while (_flash_busy);
     438:	bf00      	nop
     43a:	4b16      	ldr	r3, [pc, #88]	; (494 <flash_write_hword+0x68>)
     43c:	68db      	ldr	r3, [r3, #12]
     43e:	f003 0301 	and.w	r3, r3, #1
     442:	2b00      	cmp	r3, #0
     444:	d1f9      	bne.n	43a <flash_write_hword+0xe>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     446:	4a13      	ldr	r2, [pc, #76]	; (494 <flash_write_hword+0x68>)
     448:	4b12      	ldr	r3, [pc, #72]	; (494 <flash_write_hword+0x68>)
     44a:	68db      	ldr	r3, [r3, #12]
     44c:	f043 0334 	orr.w	r3, r3, #52	; 0x34
     450:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PG;
     452:	4b10      	ldr	r3, [pc, #64]	; (494 <flash_write_hword+0x68>)
     454:	2201      	movs	r2, #1
     456:	611a      	str	r2, [r3, #16]
	*address=hword;
     458:	687b      	ldr	r3, [r7, #4]
     45a:	887a      	ldrh	r2, [r7, #2]
     45c:	801a      	strh	r2, [r3, #0]
	while (_flash_busy && ! _flash_eop);
     45e:	bf00      	nop
     460:	4b0c      	ldr	r3, [pc, #48]	; (494 <flash_write_hword+0x68>)
     462:	68db      	ldr	r3, [r3, #12]
     464:	f003 0301 	and.w	r3, r3, #1
     468:	2b00      	cmp	r3, #0
     46a:	d005      	beq.n	478 <flash_write_hword+0x4c>
     46c:	4b09      	ldr	r3, [pc, #36]	; (494 <flash_write_hword+0x68>)
     46e:	68db      	ldr	r3, [r3, #12]
     470:	f003 0320 	and.w	r3, r3, #32
     474:	2b00      	cmp	r3, #0
     476:	d0f3      	beq.n	460 <flash_write_hword+0x34>
	return *address==hword;
     478:	687b      	ldr	r3, [r7, #4]
     47a:	881b      	ldrh	r3, [r3, #0]
     47c:	887a      	ldrh	r2, [r7, #2]
     47e:	429a      	cmp	r2, r3
     480:	bf0c      	ite	eq
     482:	2301      	moveq	r3, #1
     484:	2300      	movne	r3, #0
     486:	b2db      	uxtb	r3, r3
}
     488:	4618      	mov	r0, r3
     48a:	370c      	adds	r7, #12
     48c:	46bd      	mov	sp, r7
     48e:	bc80      	pop	{r7}
     490:	4770      	bx	lr
     492:	bf00      	nop
     494:	40022000 	.word	0x40022000

00000498 <write_back_buffer>:

// met à jour la mémoire flash du mcu à partir du tampon 'row_buff.data'
static int write_back_buffer(){
     498:	b580      	push	{r7, lr}
     49a:	b084      	sub	sp, #16
     49c:	af00      	add	r7, sp, #0
	int i;
	uint16_t *dest, *src;
	
	dest=_row2addr(row_buff.row);
     49e:	4b1e      	ldr	r3, [pc, #120]	; (518 <write_back_buffer+0x80>)
     4a0:	785b      	ldrb	r3, [r3, #1]
     4a2:	029b      	lsls	r3, r3, #10
     4a4:	60bb      	str	r3, [r7, #8]
	src=(uint16_t*)row_buff.data;
     4a6:	4b1d      	ldr	r3, [pc, #116]	; (51c <write_back_buffer+0x84>)
     4a8:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     4aa:	2300      	movs	r3, #0
     4ac:	60fb      	str	r3, [r7, #12]
     4ae:	e017      	b.n	4e0 <write_back_buffer+0x48>
		if (*src!=(uint16_t)FLASH_ERASED){
     4b0:	687b      	ldr	r3, [r7, #4]
     4b2:	881b      	ldrh	r3, [r3, #0]
     4b4:	f64f 72ff 	movw	r2, #65535	; 0xffff
     4b8:	4293      	cmp	r3, r2
     4ba:	d008      	beq.n	4ce <write_back_buffer+0x36>
			if (!flash_write_hword(dest,*src)) break;
     4bc:	687b      	ldr	r3, [r7, #4]
     4be:	881b      	ldrh	r3, [r3, #0]
     4c0:	4619      	mov	r1, r3
     4c2:	68b8      	ldr	r0, [r7, #8]
     4c4:	f7ff ffb2 	bl	42c <flash_write_hword>
     4c8:	4603      	mov	r3, r0
     4ca:	2b00      	cmp	r3, #0
     4cc:	d00d      	beq.n	4ea <write_back_buffer+0x52>
		}
		dest++;
     4ce:	68bb      	ldr	r3, [r7, #8]
     4d0:	3302      	adds	r3, #2
     4d2:	60bb      	str	r3, [r7, #8]
		src++;
     4d4:	687b      	ldr	r3, [r7, #4]
     4d6:	3302      	adds	r3, #2
     4d8:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     4da:	68fb      	ldr	r3, [r7, #12]
     4dc:	3301      	adds	r3, #1
     4de:	60fb      	str	r3, [r7, #12]
     4e0:	68fb      	ldr	r3, [r7, #12]
     4e2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     4e6:	dbe3      	blt.n	4b0 <write_back_buffer+0x18>
     4e8:	e000      	b.n	4ec <write_back_buffer+0x54>
			if (!flash_write_hword(dest,*src)) break;
     4ea:	bf00      	nop
	}
	if (i>0) row_buff.flags&=~F_ERASED;
     4ec:	68fb      	ldr	r3, [r7, #12]
     4ee:	2b00      	cmp	r3, #0
     4f0:	dd06      	ble.n	500 <write_back_buffer+0x68>
     4f2:	4b09      	ldr	r3, [pc, #36]	; (518 <write_back_buffer+0x80>)
     4f4:	781b      	ldrb	r3, [r3, #0]
     4f6:	f023 0304 	bic.w	r3, r3, #4
     4fa:	b2da      	uxtb	r2, r3
     4fc:	4b06      	ldr	r3, [pc, #24]	; (518 <write_back_buffer+0x80>)
     4fe:	701a      	strb	r2, [r3, #0]
	if (i==FLASH_ROW_SIZE_HWORD) return 1;
     500:	68fb      	ldr	r3, [r7, #12]
     502:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     506:	d101      	bne.n	50c <write_back_buffer+0x74>
     508:	2301      	movs	r3, #1
     50a:	e000      	b.n	50e <write_back_buffer+0x76>
	return 0;
     50c:	2300      	movs	r3, #0
}
     50e:	4618      	mov	r0, r3
     510:	3710      	adds	r7, #16
     512:	46bd      	mov	sp, r7
     514:	bd80      	pop	{r7, pc}
     516:	bf00      	nop
     518:	20000058 	.word	0x20000058
     51c:	2000005a 	.word	0x2000005a

00000520 <load_row>:

// charge le tampon de ligne avec le contenu de la mémoire flash
// argument:
//		r   numéro de la ligne à charger.
static void load_row(unsigned int r){
     520:	b480      	push	{r7}
     522:	b087      	sub	sp, #28
     524:	af00      	add	r7, sp, #0
     526:	6078      	str	r0, [r7, #4]
	uint16_t *src, *dest;
	int i;
	src=(uint16_t*)_row2addr(r);
     528:	687b      	ldr	r3, [r7, #4]
     52a:	029b      	lsls	r3, r3, #10
     52c:	617b      	str	r3, [r7, #20]
	dest=(uint16_t*)row_buff.data;
     52e:	4b15      	ldr	r3, [pc, #84]	; (584 <load_row+0x64>)
     530:	613b      	str	r3, [r7, #16]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     532:	2300      	movs	r3, #0
     534:	60fb      	str	r3, [r7, #12]
     536:	e00a      	b.n	54e <load_row+0x2e>
		*dest++=*src++;
     538:	693b      	ldr	r3, [r7, #16]
     53a:	1c9a      	adds	r2, r3, #2
     53c:	613a      	str	r2, [r7, #16]
     53e:	697a      	ldr	r2, [r7, #20]
     540:	1c91      	adds	r1, r2, #2
     542:	6179      	str	r1, [r7, #20]
     544:	8812      	ldrh	r2, [r2, #0]
     546:	801a      	strh	r2, [r3, #0]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     548:	68fb      	ldr	r3, [r7, #12]
     54a:	3301      	adds	r3, #1
     54c:	60fb      	str	r3, [r7, #12]
     54e:	68fb      	ldr	r3, [r7, #12]
     550:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     554:	dbf0      	blt.n	538 <load_row+0x18>
	}
	row_buff.row=r;
     556:	687b      	ldr	r3, [r7, #4]
     558:	b2da      	uxtb	r2, r3
     55a:	4b0b      	ldr	r3, [pc, #44]	; (588 <load_row+0x68>)
     55c:	705a      	strb	r2, [r3, #1]
	row_buff.flags&=~(F_MODIFIED);
     55e:	4b0a      	ldr	r3, [pc, #40]	; (588 <load_row+0x68>)
     560:	781b      	ldrb	r3, [r3, #0]
     562:	f023 0301 	bic.w	r3, r3, #1
     566:	b2da      	uxtb	r2, r3
     568:	4b07      	ldr	r3, [pc, #28]	; (588 <load_row+0x68>)
     56a:	701a      	strb	r2, [r3, #0]
	row_buff.flags|=F_LOADED;
     56c:	4b06      	ldr	r3, [pc, #24]	; (588 <load_row+0x68>)
     56e:	781b      	ldrb	r3, [r3, #0]
     570:	f043 0302 	orr.w	r3, r3, #2
     574:	b2da      	uxtb	r2, r3
     576:	4b04      	ldr	r3, [pc, #16]	; (588 <load_row+0x68>)
     578:	701a      	strb	r2, [r3, #0]
}
     57a:	bf00      	nop
     57c:	371c      	adds	r7, #28
     57e:	46bd      	mov	sp, r7
     580:	bc80      	pop	{r7}
     582:	4770      	bx	lr
     584:	2000005a 	.word	0x2000005a
     588:	20000058 	.word	0x20000058

0000058c <is_erased>:

// vérifie si une ligne est effacée
// c.à.d. ne contient que des 0xffff
static bool is_erased(unsigned row){
     58c:	b480      	push	{r7}
     58e:	b085      	sub	sp, #20
     590:	af00      	add	r7, sp, #0
     592:	6078      	str	r0, [r7, #4]
	uint16_t* addr;
	int i;
	
	addr=_row2addr(row);
     594:	687b      	ldr	r3, [r7, #4]
     596:	029b      	lsls	r3, r3, #10
     598:	60fb      	str	r3, [r7, #12]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     59a:	2300      	movs	r3, #0
     59c:	60bb      	str	r3, [r7, #8]
     59e:	e00c      	b.n	5ba <is_erased+0x2e>
		if (*addr++!=FLASH_ERASED) return false;
     5a0:	68fb      	ldr	r3, [r7, #12]
     5a2:	1c9a      	adds	r2, r3, #2
     5a4:	60fa      	str	r2, [r7, #12]
     5a6:	881b      	ldrh	r3, [r3, #0]
     5a8:	f64f 72ff 	movw	r2, #65535	; 0xffff
     5ac:	4293      	cmp	r3, r2
     5ae:	d001      	beq.n	5b4 <is_erased+0x28>
     5b0:	2300      	movs	r3, #0
     5b2:	e008      	b.n	5c6 <is_erased+0x3a>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     5b4:	68bb      	ldr	r3, [r7, #8]
     5b6:	3301      	adds	r3, #1
     5b8:	60bb      	str	r3, [r7, #8]
     5ba:	68bb      	ldr	r3, [r7, #8]
     5bc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     5c0:	dbee      	blt.n	5a0 <is_erased+0x14>
	}
	return true;
     5c2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
}
     5c6:	4618      	mov	r0, r3
     5c8:	3714      	adds	r7, #20
     5ca:	46bd      	mov	sp, r7
     5cc:	bc80      	pop	{r7}
     5ce:	4770      	bx	lr

000005d0 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
     5d0:	b580      	push	{r7, lr}
     5d2:	b086      	sub	sp, #24
     5d4:	af00      	add	r7, sp, #0
     5d6:	6078      	str	r0, [r7, #4]
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     5d8:	687b      	ldr	r3, [r7, #4]
     5da:	2b3f      	cmp	r3, #63	; 0x3f
     5dc:	d801      	bhi.n	5e2 <flash_erase_row+0x12>
     5de:	2300      	movs	r3, #0
     5e0:	e052      	b.n	688 <flash_erase_row+0xb8>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     5e2:	6878      	ldr	r0, [r7, #4]
     5e4:	f7ff ffd2 	bl	58c <is_erased>
     5e8:	4603      	mov	r3, r0
     5ea:	2b00      	cmp	r3, #0
     5ec:	d001      	beq.n	5f2 <flash_erase_row+0x22>
     5ee:	2301      	movs	r3, #1
     5f0:	e04a      	b.n	688 <flash_erase_row+0xb8>
	addr=_row2addr(row_nbr);
     5f2:	687b      	ldr	r3, [r7, #4]
     5f4:	029b      	lsls	r3, r3, #10
     5f6:	617b      	str	r3, [r7, #20]
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     5f8:	4b25      	ldr	r3, [pc, #148]	; (690 <flash_erase_row+0xc0>)
     5fa:	691b      	ldr	r3, [r3, #16]
     5fc:	f003 0380 	and.w	r3, r3, #128	; 0x80
     600:	2b00      	cmp	r3, #0
     602:	d001      	beq.n	608 <flash_erase_row+0x38>
     604:	2300      	movs	r3, #0
     606:	e03f      	b.n	688 <flash_erase_row+0xb8>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     608:	4a21      	ldr	r2, [pc, #132]	; (690 <flash_erase_row+0xc0>)
     60a:	4b21      	ldr	r3, [pc, #132]	; (690 <flash_erase_row+0xc0>)
     60c:	68db      	ldr	r3, [r3, #12]
     60e:	f043 0334 	orr.w	r3, r3, #52	; 0x34
     612:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PER;
     614:	4b1e      	ldr	r3, [pc, #120]	; (690 <flash_erase_row+0xc0>)
     616:	2202      	movs	r2, #2
     618:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     61a:	4a1d      	ldr	r2, [pc, #116]	; (690 <flash_erase_row+0xc0>)
     61c:	697b      	ldr	r3, [r7, #20]
     61e:	6153      	str	r3, [r2, #20]
	FLASH->CR|=FLASH_CR_STRT;
     620:	4a1b      	ldr	r2, [pc, #108]	; (690 <flash_erase_row+0xc0>)
     622:	4b1b      	ldr	r3, [pc, #108]	; (690 <flash_erase_row+0xc0>)
     624:	691b      	ldr	r3, [r3, #16]
     626:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     62a:	6113      	str	r3, [r2, #16]
	while (_flash_busy && ! _flash_eop);
     62c:	bf00      	nop
     62e:	4b18      	ldr	r3, [pc, #96]	; (690 <flash_erase_row+0xc0>)
     630:	68db      	ldr	r3, [r3, #12]
     632:	f003 0301 	and.w	r3, r3, #1
     636:	2b00      	cmp	r3, #0
     638:	d005      	beq.n	646 <flash_erase_row+0x76>
     63a:	4b15      	ldr	r3, [pc, #84]	; (690 <flash_erase_row+0xc0>)
     63c:	68db      	ldr	r3, [r3, #12]
     63e:	f003 0320 	and.w	r3, r3, #32
     642:	2b00      	cmp	r3, #0
     644:	d0f3      	beq.n	62e <flash_erase_row+0x5e>
	addr=_row2addr(row_nbr);
     646:	687b      	ldr	r3, [r7, #4]
     648:	029b      	lsls	r3, r3, #10
     64a:	617b      	str	r3, [r7, #20]
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     64c:	2300      	movs	r3, #0
     64e:	60fb      	str	r3, [r7, #12]
     650:	e00c      	b.n	66c <flash_erase_row+0x9c>
		u16=*addr++;
     652:	697b      	ldr	r3, [r7, #20]
     654:	1c9a      	adds	r2, r3, #2
     656:	617a      	str	r2, [r7, #20]
     658:	881b      	ldrh	r3, [r3, #0]
     65a:	827b      	strh	r3, [r7, #18]
		if (u16!=FLASH_ERASED) break;
     65c:	8a7b      	ldrh	r3, [r7, #18]
     65e:	f64f 72ff 	movw	r2, #65535	; 0xffff
     662:	4293      	cmp	r3, r2
     664:	d107      	bne.n	676 <flash_erase_row+0xa6>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     666:	68fb      	ldr	r3, [r7, #12]
     668:	3301      	adds	r3, #1
     66a:	60fb      	str	r3, [r7, #12]
     66c:	68fb      	ldr	r3, [r7, #12]
     66e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     672:	dbee      	blt.n	652 <flash_erase_row+0x82>
     674:	e000      	b.n	678 <flash_erase_row+0xa8>
		if (u16!=FLASH_ERASED) break;
     676:	bf00      	nop
	}
	return u16==FLASH_ERASED;
     678:	8a7b      	ldrh	r3, [r7, #18]
     67a:	f64f 72ff 	movw	r2, #65535	; 0xffff
     67e:	4293      	cmp	r3, r2
     680:	bf0c      	ite	eq
     682:	2301      	moveq	r3, #1
     684:	2300      	movne	r3, #0
     686:	b2db      	uxtb	r3, r3
}
     688:	4618      	mov	r0, r3
     68a:	3718      	adds	r7, #24
     68c:	46bd      	mov	sp, r7
     68e:	bd80      	pop	{r7, pc}
     690:	40022000 	.word	0x40022000

00000694 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     694:	b580      	push	{r7, lr}
     696:	af00      	add	r7, sp, #0
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     698:	4b10      	ldr	r3, [pc, #64]	; (6dc <flash_sync+0x48>)
     69a:	781b      	ldrb	r3, [r3, #0]
     69c:	f003 0301 	and.w	r3, r3, #1
     6a0:	2b00      	cmp	r3, #0
     6a2:	d017      	beq.n	6d4 <flash_sync+0x40>
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
     6a4:	4b0d      	ldr	r3, [pc, #52]	; (6dc <flash_sync+0x48>)
     6a6:	785b      	ldrb	r3, [r3, #1]
     6a8:	4618      	mov	r0, r3
     6aa:	f7ff ff91 	bl	5d0 <flash_erase_row>
     6ae:	4603      	mov	r3, r0
     6b0:	2b00      	cmp	r3, #0
     6b2:	d00d      	beq.n	6d0 <flash_sync+0x3c>
     6b4:	f7ff fef0 	bl	498 <write_back_buffer>
     6b8:	4603      	mov	r3, r0
     6ba:	2b00      	cmp	r3, #0
     6bc:	d008      	beq.n	6d0 <flash_sync+0x3c>
			row_buff.flags&=~F_MODIFIED;
     6be:	4b07      	ldr	r3, [pc, #28]	; (6dc <flash_sync+0x48>)
     6c0:	781b      	ldrb	r3, [r3, #0]
     6c2:	f023 0301 	bic.w	r3, r3, #1
     6c6:	b2da      	uxtb	r2, r3
     6c8:	4b04      	ldr	r3, [pc, #16]	; (6dc <flash_sync+0x48>)
     6ca:	701a      	strb	r2, [r3, #0]
			return 1;
     6cc:	2301      	movs	r3, #1
     6ce:	e002      	b.n	6d6 <flash_sync+0x42>
		}
		return 0;
     6d0:	2300      	movs	r3, #0
     6d2:	e000      	b.n	6d6 <flash_sync+0x42>
	}
	return 1;
     6d4:	2301      	movs	r3, #1
}
     6d6:	4618      	mov	r0, r3
     6d8:	bd80      	pop	{r7, pc}
     6da:	bf00      	nop
     6dc:	20000058 	.word	0x20000058

000006e0 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
     6e0:	b480      	push	{r7}
     6e2:	af00      	add	r7, sp, #0
	row_buff.flags=0;
     6e4:	4b03      	ldr	r3, [pc, #12]	; (6f4 <flash_flush+0x14>)
     6e6:	2200      	movs	r2, #0
     6e8:	701a      	strb	r2, [r3, #0]
}
     6ea:	bf00      	nop
     6ec:	46bd      	mov	sp, r7
     6ee:	bc80      	pop	{r7}
     6f0:	4770      	bx	lr
     6f2:	bf00      	nop
     6f4:	20000058 	.word	0x20000058

000006f8 <flash_disable>:


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
     6f8:	b580      	push	{r7, lr}
     6fa:	af00      	add	r7, sp, #0
	flash_sync();
     6fc:	f7ff ffca 	bl	694 <flash_sync>
	row_buff.flags=0;
     700:	4b05      	ldr	r3, [pc, #20]	; (718 <flash_disable+0x20>)
     702:	2200      	movs	r2, #0
     704:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
     706:	4a05      	ldr	r2, [pc, #20]	; (71c <flash_disable+0x24>)
     708:	4b04      	ldr	r3, [pc, #16]	; (71c <flash_disable+0x24>)
     70a:	691b      	ldr	r3, [r3, #16]
     70c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     710:	6113      	str	r3, [r2, #16]
}
     712:	bf00      	nop
     714:	bd80      	pop	{r7, pc}
     716:	bf00      	nop
     718:	20000058 	.word	0x20000058
     71c:	40022000 	.word	0x40022000

00000720 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
     720:	b480      	push	{r7}
     722:	b085      	sub	sp, #20
     724:	af00      	add	r7, sp, #0
     726:	6078      	str	r0, [r7, #4]
     728:	6039      	str	r1, [r7, #0]
	int result=0;
     72a:	2300      	movs	r3, #0
     72c:	60fb      	str	r3, [r7, #12]
	while (*s1 && *s2){
     72e:	e018      	b.n	762 <strcmp+0x42>
		if (*s1<*s2){
     730:	687b      	ldr	r3, [r7, #4]
     732:	781a      	ldrb	r2, [r3, #0]
     734:	683b      	ldr	r3, [r7, #0]
     736:	781b      	ldrb	r3, [r3, #0]
     738:	429a      	cmp	r2, r3
     73a:	d203      	bcs.n	744 <strcmp+0x24>
			result=-1;
     73c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     740:	60fb      	str	r3, [r7, #12]
			break;
     742:	e016      	b.n	772 <strcmp+0x52>
		}else if (*s1>*s2){
     744:	687b      	ldr	r3, [r7, #4]
     746:	781a      	ldrb	r2, [r3, #0]
     748:	683b      	ldr	r3, [r7, #0]
     74a:	781b      	ldrb	r3, [r3, #0]
     74c:	429a      	cmp	r2, r3
     74e:	d902      	bls.n	756 <strcmp+0x36>
			result=1;
     750:	2301      	movs	r3, #1
     752:	60fb      	str	r3, [r7, #12]
			break;
     754:	e00d      	b.n	772 <strcmp+0x52>
		}
		s1++;
     756:	687b      	ldr	r3, [r7, #4]
     758:	3301      	adds	r3, #1
     75a:	607b      	str	r3, [r7, #4]
		s2++;
     75c:	683b      	ldr	r3, [r7, #0]
     75e:	3301      	adds	r3, #1
     760:	603b      	str	r3, [r7, #0]
	while (*s1 && *s2){
     762:	687b      	ldr	r3, [r7, #4]
     764:	781b      	ldrb	r3, [r3, #0]
     766:	2b00      	cmp	r3, #0
     768:	d003      	beq.n	772 <strcmp+0x52>
     76a:	683b      	ldr	r3, [r7, #0]
     76c:	781b      	ldrb	r3, [r3, #0]
     76e:	2b00      	cmp	r3, #0
     770:	d1de      	bne.n	730 <strcmp+0x10>
	}
	if (!result){
     772:	68fb      	ldr	r3, [r7, #12]
     774:	2b00      	cmp	r3, #0
     776:	d115      	bne.n	7a4 <strcmp+0x84>
		if (!*s1 && *s2){
     778:	687b      	ldr	r3, [r7, #4]
     77a:	781b      	ldrb	r3, [r3, #0]
     77c:	2b00      	cmp	r3, #0
     77e:	d107      	bne.n	790 <strcmp+0x70>
     780:	683b      	ldr	r3, [r7, #0]
     782:	781b      	ldrb	r3, [r3, #0]
     784:	2b00      	cmp	r3, #0
     786:	d003      	beq.n	790 <strcmp+0x70>
			result=-1;
     788:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     78c:	60fb      	str	r3, [r7, #12]
     78e:	e009      	b.n	7a4 <strcmp+0x84>
		}else if (*s1 && !*s2) {
     790:	687b      	ldr	r3, [r7, #4]
     792:	781b      	ldrb	r3, [r3, #0]
     794:	2b00      	cmp	r3, #0
     796:	d005      	beq.n	7a4 <strcmp+0x84>
     798:	683b      	ldr	r3, [r7, #0]
     79a:	781b      	ldrb	r3, [r3, #0]
     79c:	2b00      	cmp	r3, #0
     79e:	d101      	bne.n	7a4 <strcmp+0x84>
			result=1;
     7a0:	2301      	movs	r3, #1
     7a2:	60fb      	str	r3, [r7, #12]
		}
	}
	return result;
     7a4:	68fb      	ldr	r3, [r7, #12]
}
     7a6:	4618      	mov	r0, r3
     7a8:	3714      	adds	r7, #20
     7aa:	46bd      	mov	sp, r7
     7ac:	bc80      	pop	{r7}
     7ae:	4770      	bx	lr

000007b0 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
     7b0:	b480      	push	{r7}
     7b2:	b083      	sub	sp, #12
     7b4:	af00      	add	r7, sp, #0
     7b6:	4603      	mov	r3, r0
     7b8:	71fb      	strb	r3, [r7, #7]
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
     7ba:	79fb      	ldrb	r3, [r7, #7]
     7bc:	2b60      	cmp	r3, #96	; 0x60
     7be:	d902      	bls.n	7c6 <alpha+0x16>
     7c0:	79fb      	ldrb	r3, [r7, #7]
     7c2:	2b7a      	cmp	r3, #122	; 0x7a
     7c4:	d905      	bls.n	7d2 <alpha+0x22>
     7c6:	79fb      	ldrb	r3, [r7, #7]
     7c8:	2b40      	cmp	r3, #64	; 0x40
     7ca:	d904      	bls.n	7d6 <alpha+0x26>
     7cc:	79fb      	ldrb	r3, [r7, #7]
     7ce:	2b5a      	cmp	r3, #90	; 0x5a
     7d0:	d801      	bhi.n	7d6 <alpha+0x26>
     7d2:	2301      	movs	r3, #1
     7d4:	e000      	b.n	7d8 <alpha+0x28>
     7d6:	2300      	movs	r3, #0
}
     7d8:	4618      	mov	r0, r3
     7da:	370c      	adds	r7, #12
     7dc:	46bd      	mov	sp, r7
     7de:	bc80      	pop	{r7}
     7e0:	4770      	bx	lr

000007e2 <digit>:

int digit(char c){
     7e2:	b480      	push	{r7}
     7e4:	b083      	sub	sp, #12
     7e6:	af00      	add	r7, sp, #0
     7e8:	4603      	mov	r3, r0
     7ea:	71fb      	strb	r3, [r7, #7]
   return ((c>='0') && (c<='9'));
     7ec:	79fb      	ldrb	r3, [r7, #7]
     7ee:	2b2f      	cmp	r3, #47	; 0x2f
     7f0:	d904      	bls.n	7fc <digit+0x1a>
     7f2:	79fb      	ldrb	r3, [r7, #7]
     7f4:	2b39      	cmp	r3, #57	; 0x39
     7f6:	d801      	bhi.n	7fc <digit+0x1a>
     7f8:	2301      	movs	r3, #1
     7fa:	e000      	b.n	7fe <digit+0x1c>
     7fc:	2300      	movs	r3, #0
}
     7fe:	4618      	mov	r0, r3
     800:	370c      	adds	r7, #12
     802:	46bd      	mov	sp, r7
     804:	bc80      	pop	{r7}
     806:	4770      	bx	lr

00000808 <hexdigit>:

int hexdigit(char c){
     808:	b580      	push	{r7, lr}
     80a:	b082      	sub	sp, #8
     80c:	af00      	add	r7, sp, #0
     80e:	4603      	mov	r3, r0
     810:	71fb      	strb	r3, [r7, #7]
	if (c>='a') c-=32;
     812:	79fb      	ldrb	r3, [r7, #7]
     814:	2b60      	cmp	r3, #96	; 0x60
     816:	d902      	bls.n	81e <hexdigit+0x16>
     818:	79fb      	ldrb	r3, [r7, #7]
     81a:	3b20      	subs	r3, #32
     81c:	71fb      	strb	r3, [r7, #7]
	return (digit(c) || (c>='A' && c<='F'));
     81e:	79fb      	ldrb	r3, [r7, #7]
     820:	4618      	mov	r0, r3
     822:	f7ff ffde 	bl	7e2 <digit>
     826:	4603      	mov	r3, r0
     828:	2b00      	cmp	r3, #0
     82a:	d105      	bne.n	838 <hexdigit+0x30>
     82c:	79fb      	ldrb	r3, [r7, #7]
     82e:	2b40      	cmp	r3, #64	; 0x40
     830:	d904      	bls.n	83c <hexdigit+0x34>
     832:	79fb      	ldrb	r3, [r7, #7]
     834:	2b46      	cmp	r3, #70	; 0x46
     836:	d801      	bhi.n	83c <hexdigit+0x34>
     838:	2301      	movs	r3, #1
     83a:	e000      	b.n	83e <hexdigit+0x36>
     83c:	2300      	movs	r3, #0
}
     83e:	4618      	mov	r0, r3
     840:	3708      	adds	r7, #8
     842:	46bd      	mov	sp, r7
     844:	bd80      	pop	{r7, pc}

00000846 <atoi>:

int atoi(const char *str){
     846:	b580      	push	{r7, lr}
     848:	b086      	sub	sp, #24
     84a:	af00      	add	r7, sp, #0
     84c:	6078      	str	r0, [r7, #4]
	int n=0,sign=1,base=10;
     84e:	2300      	movs	r3, #0
     850:	617b      	str	r3, [r7, #20]
     852:	2301      	movs	r3, #1
     854:	613b      	str	r3, [r7, #16]
     856:	230a      	movs	r3, #10
     858:	60fb      	str	r3, [r7, #12]
    char c;
    
	while (*str && (*str==SPACE)) str++;
     85a:	e002      	b.n	862 <atoi+0x1c>
     85c:	687b      	ldr	r3, [r7, #4]
     85e:	3301      	adds	r3, #1
     860:	607b      	str	r3, [r7, #4]
     862:	687b      	ldr	r3, [r7, #4]
     864:	781b      	ldrb	r3, [r3, #0]
     866:	2b00      	cmp	r3, #0
     868:	d003      	beq.n	872 <atoi+0x2c>
     86a:	687b      	ldr	r3, [r7, #4]
     86c:	781b      	ldrb	r3, [r3, #0]
     86e:	2b20      	cmp	r3, #32
     870:	d0f4      	beq.n	85c <atoi+0x16>
	if (*str=='-'){
     872:	687b      	ldr	r3, [r7, #4]
     874:	781b      	ldrb	r3, [r3, #0]
     876:	2b2d      	cmp	r3, #45	; 0x2d
     878:	d105      	bne.n	886 <atoi+0x40>
		sign=-1;
     87a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     87e:	613b      	str	r3, [r7, #16]
		str++;
     880:	687b      	ldr	r3, [r7, #4]
     882:	3301      	adds	r3, #1
     884:	607b      	str	r3, [r7, #4]
	}
	if (*str=='$' && hexdigit(*(str+1))){
     886:	687b      	ldr	r3, [r7, #4]
     888:	781b      	ldrb	r3, [r3, #0]
     88a:	2b24      	cmp	r3, #36	; 0x24
     88c:	d10e      	bne.n	8ac <atoi+0x66>
     88e:	687b      	ldr	r3, [r7, #4]
     890:	3301      	adds	r3, #1
     892:	781b      	ldrb	r3, [r3, #0]
     894:	4618      	mov	r0, r3
     896:	f7ff ffb7 	bl	808 <hexdigit>
     89a:	4603      	mov	r3, r0
     89c:	2b00      	cmp	r3, #0
     89e:	d005      	beq.n	8ac <atoi+0x66>
		base=16;
     8a0:	2310      	movs	r3, #16
     8a2:	60fb      	str	r3, [r7, #12]
		str++;
     8a4:	687b      	ldr	r3, [r7, #4]
     8a6:	3301      	adds	r3, #1
     8a8:	607b      	str	r3, [r7, #4]
     8aa:	e012      	b.n	8d2 <atoi+0x8c>
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
     8ac:	687b      	ldr	r3, [r7, #4]
     8ae:	781b      	ldrb	r3, [r3, #0]
     8b0:	2b30      	cmp	r3, #48	; 0x30
     8b2:	d128      	bne.n	906 <atoi+0xc0>
     8b4:	687b      	ldr	r3, [r7, #4]
     8b6:	3301      	adds	r3, #1
     8b8:	781b      	ldrb	r3, [r3, #0]
     8ba:	2b78      	cmp	r3, #120	; 0x78
     8bc:	d004      	beq.n	8c8 <atoi+0x82>
     8be:	687b      	ldr	r3, [r7, #4]
     8c0:	3301      	adds	r3, #1
     8c2:	781b      	ldrb	r3, [r3, #0]
     8c4:	2b58      	cmp	r3, #88	; 0x58
     8c6:	d11e      	bne.n	906 <atoi+0xc0>
		base=16;
     8c8:	2310      	movs	r3, #16
     8ca:	60fb      	str	r3, [r7, #12]
		str+=2;
     8cc:	687b      	ldr	r3, [r7, #4]
     8ce:	3302      	adds	r3, #2
     8d0:	607b      	str	r3, [r7, #4]
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
     8d2:	e018      	b.n	906 <atoi+0xc0>
		if (c>='a'){c-=32;}
     8d4:	7afb      	ldrb	r3, [r7, #11]
     8d6:	2b60      	cmp	r3, #96	; 0x60
     8d8:	d902      	bls.n	8e0 <atoi+0x9a>
     8da:	7afb      	ldrb	r3, [r7, #11]
     8dc:	3b20      	subs	r3, #32
     8de:	72fb      	strb	r3, [r7, #11]
		c-='0';
     8e0:	7afb      	ldrb	r3, [r7, #11]
     8e2:	3b30      	subs	r3, #48	; 0x30
     8e4:	72fb      	strb	r3, [r7, #11]
		if (c>9){c-=7;}
     8e6:	7afb      	ldrb	r3, [r7, #11]
     8e8:	2b09      	cmp	r3, #9
     8ea:	d902      	bls.n	8f2 <atoi+0xac>
     8ec:	7afb      	ldrb	r3, [r7, #11]
     8ee:	3b07      	subs	r3, #7
     8f0:	72fb      	strb	r3, [r7, #11]
		n=n*base+c;
     8f2:	697b      	ldr	r3, [r7, #20]
     8f4:	68fa      	ldr	r2, [r7, #12]
     8f6:	fb02 f203 	mul.w	r2, r2, r3
     8fa:	7afb      	ldrb	r3, [r7, #11]
     8fc:	4413      	add	r3, r2
     8fe:	617b      	str	r3, [r7, #20]
		str++;
     900:	687b      	ldr	r3, [r7, #4]
     902:	3301      	adds	r3, #1
     904:	607b      	str	r3, [r7, #4]
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
     906:	687b      	ldr	r3, [r7, #4]
     908:	781b      	ldrb	r3, [r3, #0]
     90a:	72fb      	strb	r3, [r7, #11]
     90c:	7afb      	ldrb	r3, [r7, #11]
     90e:	2b00      	cmp	r3, #0
     910:	d00d      	beq.n	92e <atoi+0xe8>
     912:	68fb      	ldr	r3, [r7, #12]
     914:	2b0a      	cmp	r3, #10
     916:	d10a      	bne.n	92e <atoi+0xe8>
     918:	7afb      	ldrb	r3, [r7, #11]
     91a:	4618      	mov	r0, r3
     91c:	f7ff ff61 	bl	7e2 <digit>
     920:	4603      	mov	r3, r0
     922:	2b00      	cmp	r3, #0
     924:	bf14      	ite	ne
     926:	2301      	movne	r3, #1
     928:	2300      	moveq	r3, #0
     92a:	b2db      	uxtb	r3, r3
     92c:	e009      	b.n	942 <atoi+0xfc>
     92e:	7afb      	ldrb	r3, [r7, #11]
     930:	4618      	mov	r0, r3
     932:	f7ff ff69 	bl	808 <hexdigit>
     936:	4603      	mov	r3, r0
     938:	2b00      	cmp	r3, #0
     93a:	bf14      	ite	ne
     93c:	2301      	movne	r3, #1
     93e:	2300      	moveq	r3, #0
     940:	b2db      	uxtb	r3, r3
     942:	2b00      	cmp	r3, #0
     944:	d1c6      	bne.n	8d4 <atoi+0x8e>
	}
	return sign*n;
     946:	693b      	ldr	r3, [r7, #16]
     948:	697a      	ldr	r2, [r7, #20]
     94a:	fb02 f303 	mul.w	r3, r2, r3
}
     94e:	4618      	mov	r0, r3
     950:	3718      	adds	r7, #24
     952:	46bd      	mov	sp, r7
     954:	bd80      	pop	{r7, pc}

00000956 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
     956:	b480      	push	{r7}
     958:	b085      	sub	sp, #20
     95a:	af00      	add	r7, sp, #0
     95c:	60f8      	str	r0, [r7, #12]
     95e:	60b9      	str	r1, [r7, #8]
     960:	607a      	str	r2, [r7, #4]
	while (len){
     962:	e00a      	b.n	97a <move+0x24>
		*dest++=*src++;
     964:	68bb      	ldr	r3, [r7, #8]
     966:	1c5a      	adds	r2, r3, #1
     968:	60ba      	str	r2, [r7, #8]
     96a:	68fa      	ldr	r2, [r7, #12]
     96c:	1c51      	adds	r1, r2, #1
     96e:	60f9      	str	r1, [r7, #12]
     970:	7812      	ldrb	r2, [r2, #0]
     972:	701a      	strb	r2, [r3, #0]
		len--;
     974:	687b      	ldr	r3, [r7, #4]
     976:	3b01      	subs	r3, #1
     978:	607b      	str	r3, [r7, #4]
	while (len){
     97a:	687b      	ldr	r3, [r7, #4]
     97c:	2b00      	cmp	r3, #0
     97e:	d1f1      	bne.n	964 <move+0xe>
	}
}
     980:	bf00      	nop
     982:	3714      	adds	r7, #20
     984:	46bd      	mov	sp, r7
     986:	bc80      	pop	{r7}
     988:	4770      	bx	lr

0000098a <strlen>:

int strlen(const char* str){
     98a:	b480      	push	{r7}
     98c:	b085      	sub	sp, #20
     98e:	af00      	add	r7, sp, #0
     990:	6078      	str	r0, [r7, #4]
	int ll=0;
     992:	2300      	movs	r3, #0
     994:	60fb      	str	r3, [r7, #12]
	while (str[ll]){ll++;}
     996:	e002      	b.n	99e <strlen+0x14>
     998:	68fb      	ldr	r3, [r7, #12]
     99a:	3301      	adds	r3, #1
     99c:	60fb      	str	r3, [r7, #12]
     99e:	68fb      	ldr	r3, [r7, #12]
     9a0:	687a      	ldr	r2, [r7, #4]
     9a2:	4413      	add	r3, r2
     9a4:	781b      	ldrb	r3, [r3, #0]
     9a6:	2b00      	cmp	r3, #0
     9a8:	d1f6      	bne.n	998 <strlen+0xe>
	return ll;
     9aa:	68fb      	ldr	r3, [r7, #12]
}
     9ac:	4618      	mov	r0, r3
     9ae:	3714      	adds	r7, #20
     9b0:	46bd      	mov	sp, r7
     9b2:	bc80      	pop	{r7}
     9b4:	4770      	bx	lr

000009b6 <fill>:

void fill(void *buffer, unsigned int size, char c){
     9b6:	b480      	push	{r7}
     9b8:	b087      	sub	sp, #28
     9ba:	af00      	add	r7, sp, #0
     9bc:	60f8      	str	r0, [r7, #12]
     9be:	60b9      	str	r1, [r7, #8]
     9c0:	4613      	mov	r3, r2
     9c2:	71fb      	strb	r3, [r7, #7]
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
     9c4:	2300      	movs	r3, #0
     9c6:	617b      	str	r3, [r7, #20]
     9c8:	e007      	b.n	9da <fill+0x24>
     9ca:	68fb      	ldr	r3, [r7, #12]
     9cc:	1c5a      	adds	r2, r3, #1
     9ce:	60fa      	str	r2, [r7, #12]
     9d0:	79fa      	ldrb	r2, [r7, #7]
     9d2:	701a      	strb	r2, [r3, #0]
     9d4:	697b      	ldr	r3, [r7, #20]
     9d6:	3301      	adds	r3, #1
     9d8:	617b      	str	r3, [r7, #20]
     9da:	697a      	ldr	r2, [r7, #20]
     9dc:	68bb      	ldr	r3, [r7, #8]
     9de:	429a      	cmp	r2, r3
     9e0:	d3f3      	bcc.n	9ca <fill+0x14>
}
     9e2:	bf00      	nop
     9e4:	371c      	adds	r7, #28
     9e6:	46bd      	mov	sp, r7
     9e8:	bc80      	pop	{r7}
     9ea:	4770      	bx	lr

000009ec <is_lower>:

//retourne vrai si caractère en minuscule
int is_lower(char c){
     9ec:	b480      	push	{r7}
     9ee:	b083      	sub	sp, #12
     9f0:	af00      	add	r7, sp, #0
     9f2:	4603      	mov	r3, r0
     9f4:	71fb      	strb	r3, [r7, #7]
	return (c>='a') && (c<='z');
     9f6:	79fb      	ldrb	r3, [r7, #7]
     9f8:	2b60      	cmp	r3, #96	; 0x60
     9fa:	d904      	bls.n	a06 <is_lower+0x1a>
     9fc:	79fb      	ldrb	r3, [r7, #7]
     9fe:	2b7a      	cmp	r3, #122	; 0x7a
     a00:	d801      	bhi.n	a06 <is_lower+0x1a>
     a02:	2301      	movs	r3, #1
     a04:	e000      	b.n	a08 <is_lower+0x1c>
     a06:	2300      	movs	r3, #0
}
     a08:	4618      	mov	r0, r3
     a0a:	370c      	adds	r7, #12
     a0c:	46bd      	mov	sp, r7
     a0e:	bc80      	pop	{r7}
     a10:	4770      	bx	lr

00000a12 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
     a12:	b480      	push	{r7}
     a14:	b083      	sub	sp, #12
     a16:	af00      	add	r7, sp, #0
     a18:	4603      	mov	r3, r0
     a1a:	71fb      	strb	r3, [r7, #7]
	return (c>='A') && (c<='Z');
     a1c:	79fb      	ldrb	r3, [r7, #7]
     a1e:	2b40      	cmp	r3, #64	; 0x40
     a20:	d904      	bls.n	a2c <is_upper+0x1a>
     a22:	79fb      	ldrb	r3, [r7, #7]
     a24:	2b5a      	cmp	r3, #90	; 0x5a
     a26:	d801      	bhi.n	a2c <is_upper+0x1a>
     a28:	2301      	movs	r3, #1
     a2a:	e000      	b.n	a2e <is_upper+0x1c>
     a2c:	2300      	movs	r3, #0
}
     a2e:	4618      	mov	r0, r3
     a30:	370c      	adds	r7, #12
     a32:	46bd      	mov	sp, r7
     a34:	bc80      	pop	{r7}
     a36:	4770      	bx	lr

00000a38 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
     a38:	b580      	push	{r7, lr}
     a3a:	b082      	sub	sp, #8
     a3c:	af00      	add	r7, sp, #0
     a3e:	6078      	str	r0, [r7, #4]
	while (*buffer){
     a40:	e010      	b.n	a64 <uppercase+0x2c>
		if (is_lower(*buffer)){*buffer-=32;}
     a42:	687b      	ldr	r3, [r7, #4]
     a44:	781b      	ldrb	r3, [r3, #0]
     a46:	4618      	mov	r0, r3
     a48:	f7ff ffd0 	bl	9ec <is_lower>
     a4c:	4603      	mov	r3, r0
     a4e:	2b00      	cmp	r3, #0
     a50:	d005      	beq.n	a5e <uppercase+0x26>
     a52:	687b      	ldr	r3, [r7, #4]
     a54:	781b      	ldrb	r3, [r3, #0]
     a56:	3b20      	subs	r3, #32
     a58:	b2da      	uxtb	r2, r3
     a5a:	687b      	ldr	r3, [r7, #4]
     a5c:	701a      	strb	r2, [r3, #0]
		buffer++;
     a5e:	687b      	ldr	r3, [r7, #4]
     a60:	3301      	adds	r3, #1
     a62:	607b      	str	r3, [r7, #4]
	while (*buffer){
     a64:	687b      	ldr	r3, [r7, #4]
     a66:	781b      	ldrb	r3, [r3, #0]
     a68:	2b00      	cmp	r3, #0
     a6a:	d1ea      	bne.n	a42 <uppercase+0xa>
	}
}
     a6c:	bf00      	nop
     a6e:	3708      	adds	r7, #8
     a70:	46bd      	mov	sp, r7
     a72:	bd80      	pop	{r7, pc}

00000a74 <scan>:

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
     a74:	b480      	push	{r7}
     a76:	b085      	sub	sp, #20
     a78:	af00      	add	r7, sp, #0
     a7a:	60f8      	str	r0, [r7, #12]
     a7c:	60b9      	str	r1, [r7, #8]
     a7e:	4613      	mov	r3, r2
     a80:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]!=c) start++;
     a82:	e002      	b.n	a8a <scan+0x16>
     a84:	68bb      	ldr	r3, [r7, #8]
     a86:	3301      	adds	r3, #1
     a88:	60bb      	str	r3, [r7, #8]
     a8a:	68bb      	ldr	r3, [r7, #8]
     a8c:	68fa      	ldr	r2, [r7, #12]
     a8e:	4413      	add	r3, r2
     a90:	781b      	ldrb	r3, [r3, #0]
     a92:	2b00      	cmp	r3, #0
     a94:	d006      	beq.n	aa4 <scan+0x30>
     a96:	68bb      	ldr	r3, [r7, #8]
     a98:	68fa      	ldr	r2, [r7, #12]
     a9a:	4413      	add	r3, r2
     a9c:	781b      	ldrb	r3, [r3, #0]
     a9e:	79fa      	ldrb	r2, [r7, #7]
     aa0:	429a      	cmp	r2, r3
     aa2:	d1ef      	bne.n	a84 <scan+0x10>
	return start;
     aa4:	68bb      	ldr	r3, [r7, #8]
}
     aa6:	4618      	mov	r0, r3
     aa8:	3714      	adds	r7, #20
     aaa:	46bd      	mov	sp, r7
     aac:	bc80      	pop	{r7}
     aae:	4770      	bx	lr

00000ab0 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
     ab0:	b480      	push	{r7}
     ab2:	b085      	sub	sp, #20
     ab4:	af00      	add	r7, sp, #0
     ab6:	60f8      	str	r0, [r7, #12]
     ab8:	60b9      	str	r1, [r7, #8]
     aba:	4613      	mov	r3, r2
     abc:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]==c) start++;
     abe:	e002      	b.n	ac6 <skip+0x16>
     ac0:	68bb      	ldr	r3, [r7, #8]
     ac2:	3301      	adds	r3, #1
     ac4:	60bb      	str	r3, [r7, #8]
     ac6:	68bb      	ldr	r3, [r7, #8]
     ac8:	68fa      	ldr	r2, [r7, #12]
     aca:	4413      	add	r3, r2
     acc:	781b      	ldrb	r3, [r3, #0]
     ace:	2b00      	cmp	r3, #0
     ad0:	d006      	beq.n	ae0 <skip+0x30>
     ad2:	68bb      	ldr	r3, [r7, #8]
     ad4:	68fa      	ldr	r2, [r7, #12]
     ad6:	4413      	add	r3, r2
     ad8:	781b      	ldrb	r3, [r3, #0]
     ada:	79fa      	ldrb	r2, [r7, #7]
     adc:	429a      	cmp	r2, r3
     ade:	d0ef      	beq.n	ac0 <skip+0x10>
	return start;
     ae0:	68bb      	ldr	r3, [r7, #8]
}
     ae2:	4618      	mov	r0, r3
     ae4:	3714      	adds	r7, #20
     ae6:	46bd      	mov	sp, r7
     ae8:	bc80      	pop	{r7}
     aea:	4770      	bx	lr

00000aec <itoa>:

// converti un entier en chaîne.
char* itoa(int i, char *buff,int base,int width){
     aec:	b480      	push	{r7}
     aee:	b087      	sub	sp, #28
     af0:	af00      	add	r7, sp, #0
     af2:	60f8      	str	r0, [r7, #12]
     af4:	60b9      	str	r1, [r7, #8]
     af6:	607a      	str	r2, [r7, #4]
     af8:	603b      	str	r3, [r7, #0]
	int sign=0;
     afa:	2300      	movs	r3, #0
     afc:	617b      	str	r3, [r7, #20]
	char c;
	buff[width--]=0;
     afe:	683b      	ldr	r3, [r7, #0]
     b00:	1e5a      	subs	r2, r3, #1
     b02:	603a      	str	r2, [r7, #0]
     b04:	461a      	mov	r2, r3
     b06:	68bb      	ldr	r3, [r7, #8]
     b08:	4413      	add	r3, r2
     b0a:	2200      	movs	r2, #0
     b0c:	701a      	strb	r2, [r3, #0]
	if (i<0){i=-i;sign=-1;}
     b0e:	68fb      	ldr	r3, [r7, #12]
     b10:	2b00      	cmp	r3, #0
     b12:	da24      	bge.n	b5e <itoa+0x72>
     b14:	68fb      	ldr	r3, [r7, #12]
     b16:	425b      	negs	r3, r3
     b18:	60fb      	str	r3, [r7, #12]
     b1a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     b1e:	617b      	str	r3, [r7, #20]
	while (i && (width>=0)){
     b20:	e01d      	b.n	b5e <itoa+0x72>
		c=i%base+'0';
     b22:	68fb      	ldr	r3, [r7, #12]
     b24:	687a      	ldr	r2, [r7, #4]
     b26:	fb93 f2f2 	sdiv	r2, r3, r2
     b2a:	6879      	ldr	r1, [r7, #4]
     b2c:	fb01 f202 	mul.w	r2, r1, r2
     b30:	1a9b      	subs	r3, r3, r2
     b32:	b2db      	uxtb	r3, r3
     b34:	3330      	adds	r3, #48	; 0x30
     b36:	74fb      	strb	r3, [r7, #19]
		if (c>'9'){c+=7;}
     b38:	7cfb      	ldrb	r3, [r7, #19]
     b3a:	2b39      	cmp	r3, #57	; 0x39
     b3c:	d902      	bls.n	b44 <itoa+0x58>
     b3e:	7cfb      	ldrb	r3, [r7, #19]
     b40:	3307      	adds	r3, #7
     b42:	74fb      	strb	r3, [r7, #19]
		buff[width--]=c;
     b44:	683b      	ldr	r3, [r7, #0]
     b46:	1e5a      	subs	r2, r3, #1
     b48:	603a      	str	r2, [r7, #0]
     b4a:	461a      	mov	r2, r3
     b4c:	68bb      	ldr	r3, [r7, #8]
     b4e:	4413      	add	r3, r2
     b50:	7cfa      	ldrb	r2, [r7, #19]
     b52:	701a      	strb	r2, [r3, #0]
		i/=base;
     b54:	68fa      	ldr	r2, [r7, #12]
     b56:	687b      	ldr	r3, [r7, #4]
     b58:	fb92 f3f3 	sdiv	r3, r2, r3
     b5c:	60fb      	str	r3, [r7, #12]
	while (i && (width>=0)){
     b5e:	68fb      	ldr	r3, [r7, #12]
     b60:	2b00      	cmp	r3, #0
     b62:	d00b      	beq.n	b7c <itoa+0x90>
     b64:	683b      	ldr	r3, [r7, #0]
     b66:	2b00      	cmp	r3, #0
     b68:	dadb      	bge.n	b22 <itoa+0x36>
	}
	while(width>0) buff[width--]='0';
     b6a:	e007      	b.n	b7c <itoa+0x90>
     b6c:	683b      	ldr	r3, [r7, #0]
     b6e:	1e5a      	subs	r2, r3, #1
     b70:	603a      	str	r2, [r7, #0]
     b72:	461a      	mov	r2, r3
     b74:	68bb      	ldr	r3, [r7, #8]
     b76:	4413      	add	r3, r2
     b78:	2230      	movs	r2, #48	; 0x30
     b7a:	701a      	strb	r2, [r3, #0]
     b7c:	683b      	ldr	r3, [r7, #0]
     b7e:	2b00      	cmp	r3, #0
     b80:	dcf4      	bgt.n	b6c <itoa+0x80>
	if (sign && width==0) buff[0]='-';else if (width==0) buff[0]='0';
     b82:	697b      	ldr	r3, [r7, #20]
     b84:	2b00      	cmp	r3, #0
     b86:	d006      	beq.n	b96 <itoa+0xaa>
     b88:	683b      	ldr	r3, [r7, #0]
     b8a:	2b00      	cmp	r3, #0
     b8c:	d103      	bne.n	b96 <itoa+0xaa>
     b8e:	68bb      	ldr	r3, [r7, #8]
     b90:	222d      	movs	r2, #45	; 0x2d
     b92:	701a      	strb	r2, [r3, #0]
     b94:	e005      	b.n	ba2 <itoa+0xb6>
     b96:	683b      	ldr	r3, [r7, #0]
     b98:	2b00      	cmp	r3, #0
     b9a:	d102      	bne.n	ba2 <itoa+0xb6>
     b9c:	68bb      	ldr	r3, [r7, #8]
     b9e:	2230      	movs	r2, #48	; 0x30
     ba0:	701a      	strb	r2, [r3, #0]
	return buff;
     ba2:	68bb      	ldr	r3, [r7, #8]
}
     ba4:	4618      	mov	r0, r3
     ba6:	371c      	adds	r7, #28
     ba8:	46bd      	mov	sp, r7
     baa:	bc80      	pop	{r7}
     bac:	4770      	bx	lr

00000bae <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
     bae:	b580      	push	{r7, lr}
     bb0:	b082      	sub	sp, #8
     bb2:	af00      	add	r7, sp, #0
     bb4:	6078      	str	r0, [r7, #4]
     bb6:	6039      	str	r1, [r7, #0]
	s1+=strlen(s1);
     bb8:	6878      	ldr	r0, [r7, #4]
     bba:	f7ff fee6 	bl	98a <strlen>
     bbe:	4603      	mov	r3, r0
     bc0:	461a      	mov	r2, r3
     bc2:	687b      	ldr	r3, [r7, #4]
     bc4:	4413      	add	r3, r2
     bc6:	607b      	str	r3, [r7, #4]
	while (*s2){
     bc8:	e007      	b.n	bda <strcat+0x2c>
		*s1++=*s2++;
     bca:	687b      	ldr	r3, [r7, #4]
     bcc:	1c5a      	adds	r2, r3, #1
     bce:	607a      	str	r2, [r7, #4]
     bd0:	683a      	ldr	r2, [r7, #0]
     bd2:	1c51      	adds	r1, r2, #1
     bd4:	6039      	str	r1, [r7, #0]
     bd6:	7812      	ldrb	r2, [r2, #0]
     bd8:	701a      	strb	r2, [r3, #0]
	while (*s2){
     bda:	683b      	ldr	r3, [r7, #0]
     bdc:	781b      	ldrb	r3, [r3, #0]
     bde:	2b00      	cmp	r3, #0
     be0:	d1f3      	bne.n	bca <strcat+0x1c>
	}
	*s1=0;
     be2:	687b      	ldr	r3, [r7, #4]
     be4:	2200      	movs	r2, #0
     be6:	701a      	strb	r2, [r3, #0]
	return s1;
     be8:	687b      	ldr	r3, [r7, #4]
}
     bea:	4618      	mov	r0, r3
     bec:	3708      	adds	r7, #8
     bee:	46bd      	mov	sp, r7
     bf0:	bd80      	pop	{r7, pc}

00000bf2 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
     bf2:	b480      	push	{r7}
     bf4:	b087      	sub	sp, #28
     bf6:	af00      	add	r7, sp, #0
     bf8:	60f8      	str	r0, [r7, #12]
     bfa:	60b9      	str	r1, [r7, #8]
     bfc:	607a      	str	r2, [r7, #4]
	uint8_t shift;
	shift=(pin&7)<<2;
     bfe:	68bb      	ldr	r3, [r7, #8]
     c00:	b2db      	uxtb	r3, r3
     c02:	009b      	lsls	r3, r3, #2
     c04:	b2db      	uxtb	r3, r3
     c06:	f003 031c 	and.w	r3, r3, #28
     c0a:	75fb      	strb	r3, [r7, #23]
	port->CR[pin>>3]&=~(15<<shift);
     c0c:	68bb      	ldr	r3, [r7, #8]
     c0e:	08da      	lsrs	r2, r3, #3
     c10:	68bb      	ldr	r3, [r7, #8]
     c12:	08d9      	lsrs	r1, r3, #3
     c14:	68fb      	ldr	r3, [r7, #12]
     c16:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
     c1a:	7df9      	ldrb	r1, [r7, #23]
     c1c:	200f      	movs	r0, #15
     c1e:	fa00 f101 	lsl.w	r1, r0, r1
     c22:	43c9      	mvns	r1, r1
     c24:	4019      	ands	r1, r3
     c26:	68fb      	ldr	r3, [r7, #12]
     c28:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
	port->CR[pin>>3]|=config<<shift;
     c2c:	68bb      	ldr	r3, [r7, #8]
     c2e:	08da      	lsrs	r2, r3, #3
     c30:	68bb      	ldr	r3, [r7, #8]
     c32:	08d9      	lsrs	r1, r3, #3
     c34:	68fb      	ldr	r3, [r7, #12]
     c36:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
     c3a:	7dfb      	ldrb	r3, [r7, #23]
     c3c:	6878      	ldr	r0, [r7, #4]
     c3e:	fa00 f303 	lsl.w	r3, r0, r3
     c42:	4319      	orrs	r1, r3
     c44:	68fb      	ldr	r3, [r7, #12]
     c46:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
     c4a:	bf00      	nop
     c4c:	371c      	adds	r7, #28
     c4e:	46bd      	mov	sp, r7
     c50:	bc80      	pop	{r7}
     c52:	4770      	bx	lr

00000c54 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
     c54:	b480      	push	{r7}
     c56:	b083      	sub	sp, #12
     c58:	af00      	add	r7, sp, #0
     c5a:	6078      	str	r0, [r7, #4]
     c5c:	6039      	str	r1, [r7, #0]
	return port->IDR&(1<<pin);
     c5e:	687b      	ldr	r3, [r7, #4]
     c60:	689b      	ldr	r3, [r3, #8]
     c62:	2101      	movs	r1, #1
     c64:	683a      	ldr	r2, [r7, #0]
     c66:	fa01 f202 	lsl.w	r2, r1, r2
     c6a:	4013      	ands	r3, r2
}
     c6c:	4618      	mov	r0, r3
     c6e:	370c      	adds	r7, #12
     c70:	46bd      	mov	sp, r7
     c72:	bc80      	pop	{r7}
     c74:	4770      	bx	lr

00000c76 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
     c76:	b480      	push	{r7}
     c78:	b085      	sub	sp, #20
     c7a:	af00      	add	r7, sp, #0
     c7c:	60f8      	str	r0, [r7, #12]
     c7e:	60b9      	str	r1, [r7, #8]
     c80:	607a      	str	r2, [r7, #4]
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
     c82:	687b      	ldr	r3, [r7, #4]
     c84:	2b00      	cmp	r3, #0
     c86:	d009      	beq.n	c9c <write_pin+0x26>
     c88:	68fb      	ldr	r3, [r7, #12]
     c8a:	68db      	ldr	r3, [r3, #12]
     c8c:	2101      	movs	r1, #1
     c8e:	68ba      	ldr	r2, [r7, #8]
     c90:	fa01 f202 	lsl.w	r2, r1, r2
     c94:	431a      	orrs	r2, r3
     c96:	68fb      	ldr	r3, [r7, #12]
     c98:	60da      	str	r2, [r3, #12]
}
     c9a:	e009      	b.n	cb0 <write_pin+0x3a>
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
     c9c:	68fb      	ldr	r3, [r7, #12]
     c9e:	68db      	ldr	r3, [r3, #12]
     ca0:	2101      	movs	r1, #1
     ca2:	68ba      	ldr	r2, [r7, #8]
     ca4:	fa01 f202 	lsl.w	r2, r1, r2
     ca8:	43d2      	mvns	r2, r2
     caa:	401a      	ands	r2, r3
     cac:	68fb      	ldr	r3, [r7, #12]
     cae:	60da      	str	r2, [r3, #12]
}
     cb0:	bf00      	nop
     cb2:	3714      	adds	r7, #20
     cb4:	46bd      	mov	sp, r7
     cb6:	bc80      	pop	{r7}
     cb8:	4770      	bx	lr

00000cba <toggle_pin>:

inline void toggle_pin(gpio_t* port, unsigned pin){
     cba:	b480      	push	{r7}
     cbc:	b083      	sub	sp, #12
     cbe:	af00      	add	r7, sp, #0
     cc0:	6078      	str	r0, [r7, #4]
     cc2:	6039      	str	r1, [r7, #0]
	port->ODR^=(1<<pin);
     cc4:	687b      	ldr	r3, [r7, #4]
     cc6:	68db      	ldr	r3, [r3, #12]
     cc8:	2101      	movs	r1, #1
     cca:	683a      	ldr	r2, [r7, #0]
     ccc:	fa01 f202 	lsl.w	r2, r1, r2
     cd0:	405a      	eors	r2, r3
     cd2:	687b      	ldr	r3, [r7, #4]
     cd4:	60da      	str	r2, [r3, #12]
}
     cd6:	bf00      	nop
     cd8:	370c      	adds	r7, #12
     cda:	46bd      	mov	sp, r7
     cdc:	bc80      	pop	{r7}
     cde:	4770      	bx	lr

00000ce0 <gfx_crlf>:
static uint8_t cursor_x=0;
static uint8_t cursor_y=0;

static uint8_t text_colors[2]={2,4};

static void gfx_crlf(){
     ce0:	b580      	push	{r7, lr}
     ce2:	af00      	add	r7, sp, #0
    cursor_x=0;
     ce4:	4b0b      	ldr	r3, [pc, #44]	; (d14 <gfx_crlf+0x34>)
     ce6:	2200      	movs	r2, #0
     ce8:	701a      	strb	r2, [r3, #0]
    cursor_y+=CHAR_HEIGHT;
     cea:	4b0b      	ldr	r3, [pc, #44]	; (d18 <gfx_crlf+0x38>)
     cec:	781b      	ldrb	r3, [r3, #0]
     cee:	3308      	adds	r3, #8
     cf0:	b2da      	uxtb	r2, r3
     cf2:	4b09      	ldr	r3, [pc, #36]	; (d18 <gfx_crlf+0x38>)
     cf4:	701a      	strb	r2, [r3, #0]
    if (cursor_y>(VRES-CHAR_HEIGHT)){
     cf6:	4b08      	ldr	r3, [pc, #32]	; (d18 <gfx_crlf+0x38>)
     cf8:	781b      	ldrb	r3, [r3, #0]
     cfa:	2b68      	cmp	r3, #104	; 0x68
     cfc:	d908      	bls.n	d10 <gfx_crlf+0x30>
        cursor_y-=CHAR_HEIGHT;
     cfe:	4b06      	ldr	r3, [pc, #24]	; (d18 <gfx_crlf+0x38>)
     d00:	781b      	ldrb	r3, [r3, #0]
     d02:	3b08      	subs	r3, #8
     d04:	b2da      	uxtb	r2, r3
     d06:	4b04      	ldr	r3, [pc, #16]	; (d18 <gfx_crlf+0x38>)
     d08:	701a      	strb	r2, [r3, #0]
        gfx_scrollup(CHAR_HEIGHT);
     d0a:	2008      	movs	r0, #8
     d0c:	f000 fa54 	bl	11b8 <gfx_scrollup>
    }
}
     d10:	bf00      	nop
     d12:	bd80      	pop	{r7, pc}
     d14:	2000045a 	.word	0x2000045a
     d18:	2000045b 	.word	0x2000045b

00000d1c <gfx_cursor_left>:

static void gfx_cursor_left(){
     d1c:	b480      	push	{r7}
     d1e:	af00      	add	r7, sp, #0
    if (cursor_x>=CHAR_WIDTH){
     d20:	4b08      	ldr	r3, [pc, #32]	; (d44 <gfx_cursor_left+0x28>)
     d22:	781b      	ldrb	r3, [r3, #0]
     d24:	2b05      	cmp	r3, #5
     d26:	d906      	bls.n	d36 <gfx_cursor_left+0x1a>
        cursor_x-=CHAR_WIDTH;
     d28:	4b06      	ldr	r3, [pc, #24]	; (d44 <gfx_cursor_left+0x28>)
     d2a:	781b      	ldrb	r3, [r3, #0]
     d2c:	3b06      	subs	r3, #6
     d2e:	b2da      	uxtb	r2, r3
     d30:	4b04      	ldr	r3, [pc, #16]	; (d44 <gfx_cursor_left+0x28>)
     d32:	701a      	strb	r2, [r3, #0]
    }else{
        cursor_x=0;
    } 
}
     d34:	e002      	b.n	d3c <gfx_cursor_left+0x20>
        cursor_x=0;
     d36:	4b03      	ldr	r3, [pc, #12]	; (d44 <gfx_cursor_left+0x28>)
     d38:	2200      	movs	r2, #0
     d3a:	701a      	strb	r2, [r3, #0]
}
     d3c:	bf00      	nop
     d3e:	46bd      	mov	sp, r7
     d40:	bc80      	pop	{r7}
     d42:	4770      	bx	lr
     d44:	2000045a 	.word	0x2000045a

00000d48 <gfx_locate>:

void gfx_locate(uint8_t line,uint8_t colon){
     d48:	b480      	push	{r7}
     d4a:	b083      	sub	sp, #12
     d4c:	af00      	add	r7, sp, #0
     d4e:	4603      	mov	r3, r0
     d50:	460a      	mov	r2, r1
     d52:	71fb      	strb	r3, [r7, #7]
     d54:	4613      	mov	r3, r2
     d56:	71bb      	strb	r3, [r7, #6]
    if (colon>=CPL) colon=CPL-1;
     d58:	79bb      	ldrb	r3, [r7, #6]
     d5a:	2b1d      	cmp	r3, #29
     d5c:	d901      	bls.n	d62 <gfx_locate+0x1a>
     d5e:	231d      	movs	r3, #29
     d60:	71bb      	strb	r3, [r7, #6]
    if (line>LINES) line=LINES-1;
     d62:	79fb      	ldrb	r3, [r7, #7]
     d64:	2b0e      	cmp	r3, #14
     d66:	d901      	bls.n	d6c <gfx_locate+0x24>
     d68:	230d      	movs	r3, #13
     d6a:	71fb      	strb	r3, [r7, #7]
    cursor_x=colon*CHAR_WIDTH;
     d6c:	79bb      	ldrb	r3, [r7, #6]
     d6e:	461a      	mov	r2, r3
     d70:	0052      	lsls	r2, r2, #1
     d72:	4413      	add	r3, r2
     d74:	005b      	lsls	r3, r3, #1
     d76:	b2da      	uxtb	r2, r3
     d78:	4b05      	ldr	r3, [pc, #20]	; (d90 <gfx_locate+0x48>)
     d7a:	701a      	strb	r2, [r3, #0]
    cursor_y=line*CHAR_HEIGHT;
     d7c:	79fb      	ldrb	r3, [r7, #7]
     d7e:	00db      	lsls	r3, r3, #3
     d80:	b2da      	uxtb	r2, r3
     d82:	4b04      	ldr	r3, [pc, #16]	; (d94 <gfx_locate+0x4c>)
     d84:	701a      	strb	r2, [r3, #0]
}
     d86:	bf00      	nop
     d88:	370c      	adds	r7, #12
     d8a:	46bd      	mov	sp, r7
     d8c:	bc80      	pop	{r7}
     d8e:	4770      	bx	lr
     d90:	2000045a 	.word	0x2000045a
     d94:	2000045b 	.word	0x2000045b

00000d98 <gfx_putchar>:

void gfx_putchar(char c){
     d98:	b580      	push	{r7, lr}
     d9a:	b088      	sub	sp, #32
     d9c:	af00      	add	r7, sp, #0
     d9e:	4603      	mov	r3, r0
     da0:	71fb      	strb	r3, [r7, #7]
    int cx,cy,idx;
    uint8_t byte,bit,color;
    if ((c<32) || (c>=(FONT_SIZE+32))) return;  
     da2:	79fb      	ldrb	r3, [r7, #7]
     da4:	2b1f      	cmp	r3, #31
     da6:	d94b      	bls.n	e40 <gfx_putchar+0xa8>
     da8:	79fb      	ldrb	r3, [r7, #7]
     daa:	2b84      	cmp	r3, #132	; 0x84
     dac:	d848      	bhi.n	e40 <gfx_putchar+0xa8>
    idx=(c-32)*CHAR_HEIGHT;
     dae:	79fb      	ldrb	r3, [r7, #7]
     db0:	3b20      	subs	r3, #32
     db2:	00db      	lsls	r3, r3, #3
     db4:	613b      	str	r3, [r7, #16]
    for (cy=0;cy<CHAR_HEIGHT;cy++){
     db6:	2300      	movs	r3, #0
     db8:	61bb      	str	r3, [r7, #24]
     dba:	e031      	b.n	e20 <gfx_putchar+0x88>
        byte=font_6x8[idx+cy];
     dbc:	693a      	ldr	r2, [r7, #16]
     dbe:	69bb      	ldr	r3, [r7, #24]
     dc0:	4413      	add	r3, r2
     dc2:	4a21      	ldr	r2, [pc, #132]	; (e48 <gfx_putchar+0xb0>)
     dc4:	5cd3      	ldrb	r3, [r2, r3]
     dc6:	73fb      	strb	r3, [r7, #15]
        bit=(1<<7);
     dc8:	2380      	movs	r3, #128	; 0x80
     dca:	75fb      	strb	r3, [r7, #23]
        for (cx=0;cx<CHAR_WIDTH;cx++,bit>>=1){
     dcc:	2300      	movs	r3, #0
     dce:	61fb      	str	r3, [r7, #28]
     dd0:	e020      	b.n	e14 <gfx_putchar+0x7c>
            if (byte&bit) color=text_colors[1];else color=text_colors[0];
     dd2:	7bfa      	ldrb	r2, [r7, #15]
     dd4:	7dfb      	ldrb	r3, [r7, #23]
     dd6:	4013      	ands	r3, r2
     dd8:	b2db      	uxtb	r3, r3
     dda:	2b00      	cmp	r3, #0
     ddc:	d003      	beq.n	de6 <gfx_putchar+0x4e>
     dde:	4b1b      	ldr	r3, [pc, #108]	; (e4c <gfx_putchar+0xb4>)
     de0:	785b      	ldrb	r3, [r3, #1]
     de2:	75bb      	strb	r3, [r7, #22]
     de4:	e002      	b.n	dec <gfx_putchar+0x54>
     de6:	4b19      	ldr	r3, [pc, #100]	; (e4c <gfx_putchar+0xb4>)
     de8:	781b      	ldrb	r3, [r3, #0]
     dea:	75bb      	strb	r3, [r7, #22]
            gfx_plot(cursor_x+cx,cursor_y+cy,color);
     dec:	4b18      	ldr	r3, [pc, #96]	; (e50 <gfx_putchar+0xb8>)
     dee:	781b      	ldrb	r3, [r3, #0]
     df0:	461a      	mov	r2, r3
     df2:	69fb      	ldr	r3, [r7, #28]
     df4:	18d0      	adds	r0, r2, r3
     df6:	4b17      	ldr	r3, [pc, #92]	; (e54 <gfx_putchar+0xbc>)
     df8:	781b      	ldrb	r3, [r3, #0]
     dfa:	461a      	mov	r2, r3
     dfc:	69bb      	ldr	r3, [r7, #24]
     dfe:	4413      	add	r3, r2
     e00:	7dba      	ldrb	r2, [r7, #22]
     e02:	4619      	mov	r1, r3
     e04:	f000 f928 	bl	1058 <gfx_plot>
        for (cx=0;cx<CHAR_WIDTH;cx++,bit>>=1){
     e08:	69fb      	ldr	r3, [r7, #28]
     e0a:	3301      	adds	r3, #1
     e0c:	61fb      	str	r3, [r7, #28]
     e0e:	7dfb      	ldrb	r3, [r7, #23]
     e10:	085b      	lsrs	r3, r3, #1
     e12:	75fb      	strb	r3, [r7, #23]
     e14:	69fb      	ldr	r3, [r7, #28]
     e16:	2b05      	cmp	r3, #5
     e18:	dddb      	ble.n	dd2 <gfx_putchar+0x3a>
    for (cy=0;cy<CHAR_HEIGHT;cy++){
     e1a:	69bb      	ldr	r3, [r7, #24]
     e1c:	3301      	adds	r3, #1
     e1e:	61bb      	str	r3, [r7, #24]
     e20:	69bb      	ldr	r3, [r7, #24]
     e22:	2b07      	cmp	r3, #7
     e24:	ddca      	ble.n	dbc <gfx_putchar+0x24>
        }
    }
    cursor_x+=CHAR_WIDTH;
     e26:	4b0a      	ldr	r3, [pc, #40]	; (e50 <gfx_putchar+0xb8>)
     e28:	781b      	ldrb	r3, [r3, #0]
     e2a:	3306      	adds	r3, #6
     e2c:	b2da      	uxtb	r2, r3
     e2e:	4b08      	ldr	r3, [pc, #32]	; (e50 <gfx_putchar+0xb8>)
     e30:	701a      	strb	r2, [r3, #0]
    if (cursor_x>(HRES-CHAR_WIDTH)) gfx_crlf();
     e32:	4b07      	ldr	r3, [pc, #28]	; (e50 <gfx_putchar+0xb8>)
     e34:	781b      	ldrb	r3, [r3, #0]
     e36:	2bae      	cmp	r3, #174	; 0xae
     e38:	d903      	bls.n	e42 <gfx_putchar+0xaa>
     e3a:	f7ff ff51 	bl	ce0 <gfx_crlf>
     e3e:	e000      	b.n	e42 <gfx_putchar+0xaa>
    if ((c<32) || (c>=(FONT_SIZE+32))) return;  
     e40:	bf00      	nop
}
     e42:	3720      	adds	r7, #32
     e44:	46bd      	mov	sp, r7
     e46:	bd80      	pop	{r7, pc}
     e48:	00002a60 	.word	0x00002a60
     e4c:	20000000 	.word	0x20000000
     e50:	2000045a 	.word	0x2000045a
     e54:	2000045b 	.word	0x2000045b

00000e58 <gfx_print>:

void gfx_print(const char* str){
     e58:	b580      	push	{r7, lr}
     e5a:	b084      	sub	sp, #16
     e5c:	af00      	add	r7, sp, #0
     e5e:	6078      	str	r0, [r7, #4]
    char c;
    while ((c=*str++)){
     e60:	e011      	b.n	e86 <gfx_print+0x2e>
        switch(c){
     e62:	7bfb      	ldrb	r3, [r7, #15]
     e64:	2b0a      	cmp	r3, #10
     e66:	d004      	beq.n	e72 <gfx_print+0x1a>
     e68:	2b0d      	cmp	r3, #13
     e6a:	d002      	beq.n	e72 <gfx_print+0x1a>
     e6c:	2b08      	cmp	r3, #8
     e6e:	d003      	beq.n	e78 <gfx_print+0x20>
     e70:	e005      	b.n	e7e <gfx_print+0x26>
        case LF:
        case CR:
            gfx_crlf();
     e72:	f7ff ff35 	bl	ce0 <gfx_crlf>
            break;
     e76:	e006      	b.n	e86 <gfx_print+0x2e>
        case BS:
            gfx_cursor_left();    
     e78:	f7ff ff50 	bl	d1c <gfx_cursor_left>
            break;
     e7c:	e003      	b.n	e86 <gfx_print+0x2e>
        default:
            gfx_putchar(c);
     e7e:	7bfb      	ldrb	r3, [r7, #15]
     e80:	4618      	mov	r0, r3
     e82:	f7ff ff89 	bl	d98 <gfx_putchar>
    while ((c=*str++)){
     e86:	687b      	ldr	r3, [r7, #4]
     e88:	1c5a      	adds	r2, r3, #1
     e8a:	607a      	str	r2, [r7, #4]
     e8c:	781b      	ldrb	r3, [r3, #0]
     e8e:	73fb      	strb	r3, [r7, #15]
     e90:	7bfb      	ldrb	r3, [r7, #15]
     e92:	2b00      	cmp	r3, #0
     e94:	d1e5      	bne.n	e62 <gfx_print+0xa>
        }
    }
}
     e96:	bf00      	nop
     e98:	3710      	adds	r7, #16
     e9a:	46bd      	mov	sp, r7
     e9c:	bd80      	pop	{r7, pc}

00000e9e <gfx_print_int>:

void gfx_print_int(int i,uint8_t base){
     e9e:	b580      	push	{r7, lr}
     ea0:	b088      	sub	sp, #32
     ea2:	af00      	add	r7, sp, #0
     ea4:	6078      	str	r0, [r7, #4]
     ea6:	460b      	mov	r3, r1
     ea8:	70fb      	strb	r3, [r7, #3]
    char fmt[12],sign=0;
     eaa:	2300      	movs	r3, #0
     eac:	77fb      	strb	r3, [r7, #31]
    int idx,d;

    fmt[11]=0;
     eae:	2300      	movs	r3, #0
     eb0:	74fb      	strb	r3, [r7, #19]
    fmt[10]=' ';
     eb2:	2320      	movs	r3, #32
     eb4:	74bb      	strb	r3, [r7, #18]
    idx=10;
     eb6:	230a      	movs	r3, #10
     eb8:	61bb      	str	r3, [r7, #24]
    if (i<0){
     eba:	687b      	ldr	r3, [r7, #4]
     ebc:	2b00      	cmp	r3, #0
     ebe:	da26      	bge.n	f0e <gfx_print_int+0x70>
        sign=1;
     ec0:	2301      	movs	r3, #1
     ec2:	77fb      	strb	r3, [r7, #31]
        i=-i;
     ec4:	687b      	ldr	r3, [r7, #4]
     ec6:	425b      	negs	r3, r3
     ec8:	607b      	str	r3, [r7, #4]
    }
    while (i){
     eca:	e020      	b.n	f0e <gfx_print_int+0x70>
        d=i%base;
     ecc:	78fa      	ldrb	r2, [r7, #3]
     ece:	687b      	ldr	r3, [r7, #4]
     ed0:	fb93 f1f2 	sdiv	r1, r3, r2
     ed4:	fb02 f201 	mul.w	r2, r2, r1
     ed8:	1a9b      	subs	r3, r3, r2
     eda:	617b      	str	r3, [r7, #20]
        if (d>9) d+=7;
     edc:	697b      	ldr	r3, [r7, #20]
     ede:	2b09      	cmp	r3, #9
     ee0:	dd02      	ble.n	ee8 <gfx_print_int+0x4a>
     ee2:	697b      	ldr	r3, [r7, #20]
     ee4:	3307      	adds	r3, #7
     ee6:	617b      	str	r3, [r7, #20]
        fmt[--idx]=d+='0';
     ee8:	69bb      	ldr	r3, [r7, #24]
     eea:	3b01      	subs	r3, #1
     eec:	61bb      	str	r3, [r7, #24]
     eee:	697b      	ldr	r3, [r7, #20]
     ef0:	3330      	adds	r3, #48	; 0x30
     ef2:	617b      	str	r3, [r7, #20]
     ef4:	697b      	ldr	r3, [r7, #20]
     ef6:	b2d9      	uxtb	r1, r3
     ef8:	f107 0208 	add.w	r2, r7, #8
     efc:	69bb      	ldr	r3, [r7, #24]
     efe:	4413      	add	r3, r2
     f00:	460a      	mov	r2, r1
     f02:	701a      	strb	r2, [r3, #0]
        i/=base;
     f04:	78fb      	ldrb	r3, [r7, #3]
     f06:	687a      	ldr	r2, [r7, #4]
     f08:	fb92 f3f3 	sdiv	r3, r2, r3
     f0c:	607b      	str	r3, [r7, #4]
    while (i){
     f0e:	687b      	ldr	r3, [r7, #4]
     f10:	2b00      	cmp	r3, #0
     f12:	d1db      	bne.n	ecc <gfx_print_int+0x2e>
    }
    if (idx==10)fmt[--idx]='0';
     f14:	69bb      	ldr	r3, [r7, #24]
     f16:	2b0a      	cmp	r3, #10
     f18:	d108      	bne.n	f2c <gfx_print_int+0x8e>
     f1a:	69bb      	ldr	r3, [r7, #24]
     f1c:	3b01      	subs	r3, #1
     f1e:	61bb      	str	r3, [r7, #24]
     f20:	f107 0208 	add.w	r2, r7, #8
     f24:	69bb      	ldr	r3, [r7, #24]
     f26:	4413      	add	r3, r2
     f28:	2230      	movs	r2, #48	; 0x30
     f2a:	701a      	strb	r2, [r3, #0]
    if (base==10 && sign){
     f2c:	78fb      	ldrb	r3, [r7, #3]
     f2e:	2b0a      	cmp	r3, #10
     f30:	d10c      	bne.n	f4c <gfx_print_int+0xae>
     f32:	7ffb      	ldrb	r3, [r7, #31]
     f34:	2b00      	cmp	r3, #0
     f36:	d009      	beq.n	f4c <gfx_print_int+0xae>
        fmt[--idx]='-';
     f38:	69bb      	ldr	r3, [r7, #24]
     f3a:	3b01      	subs	r3, #1
     f3c:	61bb      	str	r3, [r7, #24]
     f3e:	f107 0208 	add.w	r2, r7, #8
     f42:	69bb      	ldr	r3, [r7, #24]
     f44:	4413      	add	r3, r2
     f46:	222d      	movs	r2, #45	; 0x2d
     f48:	701a      	strb	r2, [r3, #0]
     f4a:	e014      	b.n	f76 <gfx_print_int+0xd8>
    }else if (base==16){
     f4c:	78fb      	ldrb	r3, [r7, #3]
     f4e:	2b10      	cmp	r3, #16
     f50:	d111      	bne.n	f76 <gfx_print_int+0xd8>
        fmt[--idx]='x';
     f52:	69bb      	ldr	r3, [r7, #24]
     f54:	3b01      	subs	r3, #1
     f56:	61bb      	str	r3, [r7, #24]
     f58:	f107 0208 	add.w	r2, r7, #8
     f5c:	69bb      	ldr	r3, [r7, #24]
     f5e:	4413      	add	r3, r2
     f60:	2278      	movs	r2, #120	; 0x78
     f62:	701a      	strb	r2, [r3, #0]
        fmt[--idx]='0';
     f64:	69bb      	ldr	r3, [r7, #24]
     f66:	3b01      	subs	r3, #1
     f68:	61bb      	str	r3, [r7, #24]
     f6a:	f107 0208 	add.w	r2, r7, #8
     f6e:	69bb      	ldr	r3, [r7, #24]
     f70:	4413      	add	r3, r2
     f72:	2230      	movs	r2, #48	; 0x30
     f74:	701a      	strb	r2, [r3, #0]
    }
    gfx_print(&fmt[idx]);
     f76:	f107 0208 	add.w	r2, r7, #8
     f7a:	69bb      	ldr	r3, [r7, #24]
     f7c:	4413      	add	r3, r2
     f7e:	4618      	mov	r0, r3
     f80:	f7ff ff6a 	bl	e58 <gfx_print>
}
     f84:	bf00      	nop
     f86:	3720      	adds	r7, #32
     f88:	46bd      	mov	sp, r7
     f8a:	bd80      	pop	{r7, pc}

00000f8c <gfx_blit>:

void gfx_blit(int x, int y, uint8_t color, blit_op_t op){
     f8c:	b4f0      	push	{r4, r5, r6, r7}
     f8e:	b084      	sub	sp, #16
     f90:	af00      	add	r7, sp, #0
     f92:	60f8      	str	r0, [r7, #12]
     f94:	60b9      	str	r1, [r7, #8]
     f96:	4611      	mov	r1, r2
     f98:	461a      	mov	r2, r3
     f9a:	460b      	mov	r3, r1
     f9c:	71fb      	strb	r3, [r7, #7]
     f9e:	4613      	mov	r3, r2
     fa0:	71bb      	strb	r3, [r7, #6]
	register int idx;
    register uint8_t byte,mask;
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
     fa2:	68fb      	ldr	r3, [r7, #12]
     fa4:	2b00      	cmp	r3, #0
     fa6:	db50      	blt.n	104a <gfx_blit+0xbe>
     fa8:	68fb      	ldr	r3, [r7, #12]
     faa:	2bb3      	cmp	r3, #179	; 0xb3
     fac:	dc4d      	bgt.n	104a <gfx_blit+0xbe>
     fae:	68bb      	ldr	r3, [r7, #8]
     fb0:	2b00      	cmp	r3, #0
     fb2:	db4a      	blt.n	104a <gfx_blit+0xbe>
     fb4:	68bb      	ldr	r3, [r7, #8]
     fb6:	2b6f      	cmp	r3, #111	; 0x6f
     fb8:	dc47      	bgt.n	104a <gfx_blit+0xbe>
    idx=y*BPR+x/2;
     fba:	68bb      	ldr	r3, [r7, #8]
     fbc:	225a      	movs	r2, #90	; 0x5a
     fbe:	fb02 f203 	mul.w	r2, r2, r3
     fc2:	68fb      	ldr	r3, [r7, #12]
     fc4:	0fd9      	lsrs	r1, r3, #31
     fc6:	440b      	add	r3, r1
     fc8:	105b      	asrs	r3, r3, #1
     fca:	18d6      	adds	r6, r2, r3
    color&=0xf;
     fcc:	79fb      	ldrb	r3, [r7, #7]
     fce:	f003 030f 	and.w	r3, r3, #15
     fd2:	71fb      	strb	r3, [r7, #7]
    mask=0xf0;
     fd4:	25f0      	movs	r5, #240	; 0xf0
    if (!(x&1)){
     fd6:	68fb      	ldr	r3, [r7, #12]
     fd8:	f003 0301 	and.w	r3, r3, #1
     fdc:	2b00      	cmp	r3, #0
     fde:	d103      	bne.n	fe8 <gfx_blit+0x5c>
         color<<=4;
     fe0:	79fb      	ldrb	r3, [r7, #7]
     fe2:	011b      	lsls	r3, r3, #4
     fe4:	71fb      	strb	r3, [r7, #7]
         mask=0x0f;
     fe6:	250f      	movs	r5, #15
    }
    byte=video_buffer[idx];
     fe8:	4b1a      	ldr	r3, [pc, #104]	; (1054 <gfx_blit+0xc8>)
     fea:	5d9c      	ldrb	r4, [r3, r6]
    switch (op){
     fec:	79bb      	ldrb	r3, [r7, #6]
     fee:	2b04      	cmp	r3, #4
     ff0:	d827      	bhi.n	1042 <gfx_blit+0xb6>
     ff2:	a201      	add	r2, pc, #4	; (adr r2, ff8 <gfx_blit+0x6c>)
     ff4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     ff8:	0000100d 	.word	0x0000100d
     ffc:	00001015 	.word	0x00001015
    1000:	0000101d 	.word	0x0000101d
    1004:	00001025 	.word	0x00001025
    1008:	00001035 	.word	0x00001035
    case BIT_OR:
        byte|=color;
    100c:	79fb      	ldrb	r3, [r7, #7]
    100e:	4323      	orrs	r3, r4
    1010:	b2dc      	uxtb	r4, r3
        break;
    1012:	e016      	b.n	1042 <gfx_blit+0xb6>
    case BIT_AND:
        byte&=color;
    1014:	79fb      	ldrb	r3, [r7, #7]
    1016:	4023      	ands	r3, r4
    1018:	b2dc      	uxtb	r4, r3
        break;
    101a:	e012      	b.n	1042 <gfx_blit+0xb6>
    case BIT_XOR:
        byte^=color;
    101c:	79fb      	ldrb	r3, [r7, #7]
    101e:	4063      	eors	r3, r4
    1020:	b2dc      	uxtb	r4, r3
        break;
    1022:	e00e      	b.n	1042 <gfx_blit+0xb6>
    case BIT_INVERT:
        byte^=~mask;
    1024:	b26b      	sxtb	r3, r5
    1026:	43db      	mvns	r3, r3
    1028:	b25a      	sxtb	r2, r3
    102a:	b263      	sxtb	r3, r4
    102c:	4053      	eors	r3, r2
    102e:	b25b      	sxtb	r3, r3
    1030:	b2dc      	uxtb	r4, r3
        break;
    1032:	e006      	b.n	1042 <gfx_blit+0xb6>
    case BIT_SET:
        byte &=mask;
    1034:	ea04 0305 	and.w	r3, r4, r5
    1038:	b2dc      	uxtb	r4, r3
        byte|=color;
    103a:	79fb      	ldrb	r3, [r7, #7]
    103c:	4323      	orrs	r3, r4
    103e:	b2dc      	uxtb	r4, r3
        break;
    1040:	bf00      	nop
    }//switch (op)
    video_buffer[idx]=byte;
    1042:	4b04      	ldr	r3, [pc, #16]	; (1054 <gfx_blit+0xc8>)
    1044:	4622      	mov	r2, r4
    1046:	559a      	strb	r2, [r3, r6]
    1048:	e000      	b.n	104c <gfx_blit+0xc0>
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
    104a:	bf00      	nop
}
    104c:	3710      	adds	r7, #16
    104e:	46bd      	mov	sp, r7
    1050:	bcf0      	pop	{r4, r5, r6, r7}
    1052:	4770      	bx	lr
    1054:	2000046c 	.word	0x2000046c

00001058 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    1058:	b4b0      	push	{r4, r5, r7}
    105a:	b085      	sub	sp, #20
    105c:	af00      	add	r7, sp, #0
    105e:	60f8      	str	r0, [r7, #12]
    1060:	60b9      	str	r1, [r7, #8]
    1062:	4613      	mov	r3, r2
    1064:	71fb      	strb	r3, [r7, #7]
	register int idx;
    register uint8_t byte;
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
    1066:	68fb      	ldr	r3, [r7, #12]
    1068:	2b00      	cmp	r3, #0
    106a:	db31      	blt.n	10d0 <gfx_plot+0x78>
    106c:	68fb      	ldr	r3, [r7, #12]
    106e:	2bb3      	cmp	r3, #179	; 0xb3
    1070:	dc2e      	bgt.n	10d0 <gfx_plot+0x78>
    1072:	68bb      	ldr	r3, [r7, #8]
    1074:	2b00      	cmp	r3, #0
    1076:	db2b      	blt.n	10d0 <gfx_plot+0x78>
    1078:	68bb      	ldr	r3, [r7, #8]
    107a:	2b6f      	cmp	r3, #111	; 0x6f
    107c:	dc28      	bgt.n	10d0 <gfx_plot+0x78>
    idx=y*BPR+x/2;
    107e:	68bb      	ldr	r3, [r7, #8]
    1080:	225a      	movs	r2, #90	; 0x5a
    1082:	fb02 f203 	mul.w	r2, r2, r3
    1086:	68fb      	ldr	r3, [r7, #12]
    1088:	0fd9      	lsrs	r1, r3, #31
    108a:	440b      	add	r3, r1
    108c:	105b      	asrs	r3, r3, #1
    108e:	18d5      	adds	r5, r2, r3
    color&=0xf;
    1090:	79fb      	ldrb	r3, [r7, #7]
    1092:	f003 030f 	and.w	r3, r3, #15
    1096:	71fb      	strb	r3, [r7, #7]
    byte=video_buffer[idx];
    1098:	4b10      	ldr	r3, [pc, #64]	; (10dc <gfx_plot+0x84>)
    109a:	5d5c      	ldrb	r4, [r3, r5]
    if (x&1){
    109c:	68fb      	ldr	r3, [r7, #12]
    109e:	f003 0301 	and.w	r3, r3, #1
    10a2:	2b00      	cmp	r3, #0
    10a4:	d006      	beq.n	10b4 <gfx_plot+0x5c>
        byte&=0xf0;
    10a6:	f024 030f 	bic.w	r3, r4, #15
    10aa:	b2dc      	uxtb	r4, r3
        byte|=color;
    10ac:	79fb      	ldrb	r3, [r7, #7]
    10ae:	4323      	orrs	r3, r4
    10b0:	b2dc      	uxtb	r4, r3
    10b2:	e009      	b.n	10c8 <gfx_plot+0x70>
    }else{
        byte&=0xf;
    10b4:	f004 030f 	and.w	r3, r4, #15
    10b8:	b2dc      	uxtb	r4, r3
        byte|=color<<4;
    10ba:	79fb      	ldrb	r3, [r7, #7]
    10bc:	011b      	lsls	r3, r3, #4
    10be:	b25a      	sxtb	r2, r3
    10c0:	b263      	sxtb	r3, r4
    10c2:	4313      	orrs	r3, r2
    10c4:	b25b      	sxtb	r3, r3
    10c6:	b2dc      	uxtb	r4, r3
    }
    video_buffer[idx]=byte;
    10c8:	4b04      	ldr	r3, [pc, #16]	; (10dc <gfx_plot+0x84>)
    10ca:	4622      	mov	r2, r4
    10cc:	555a      	strb	r2, [r3, r5]
    10ce:	e000      	b.n	10d2 <gfx_plot+0x7a>
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
    10d0:	bf00      	nop
}
    10d2:	3714      	adds	r7, #20
    10d4:	46bd      	mov	sp, r7
    10d6:	bcb0      	pop	{r4, r5, r7}
    10d8:	4770      	bx	lr
    10da:	bf00      	nop
    10dc:	2000046c 	.word	0x2000046c

000010e0 <gfx_rectangle>:


void gfx_rectangle(int x0,int y0, int x1,int y1){
    10e0:	b580      	push	{r7, lr}
    10e2:	b086      	sub	sp, #24
    10e4:	af00      	add	r7, sp, #0
    10e6:	60f8      	str	r0, [r7, #12]
    10e8:	60b9      	str	r1, [r7, #8]
    10ea:	607a      	str	r2, [r7, #4]
    10ec:	603b      	str	r3, [r7, #0]
	int tmp;
	if (x0>x1){
    10ee:	68fa      	ldr	r2, [r7, #12]
    10f0:	687b      	ldr	r3, [r7, #4]
    10f2:	429a      	cmp	r2, r3
    10f4:	dd05      	ble.n	1102 <gfx_rectangle+0x22>
		tmp=x0;
    10f6:	68fb      	ldr	r3, [r7, #12]
    10f8:	617b      	str	r3, [r7, #20]
		x0=x1;
    10fa:	687b      	ldr	r3, [r7, #4]
    10fc:	60fb      	str	r3, [r7, #12]
		x1=tmp;
    10fe:	697b      	ldr	r3, [r7, #20]
    1100:	607b      	str	r3, [r7, #4]
	}
	if (y0>y1){
    1102:	68ba      	ldr	r2, [r7, #8]
    1104:	683b      	ldr	r3, [r7, #0]
    1106:	429a      	cmp	r2, r3
    1108:	dd05      	ble.n	1116 <gfx_rectangle+0x36>
		tmp=y0;
    110a:	68bb      	ldr	r3, [r7, #8]
    110c:	617b      	str	r3, [r7, #20]
		y0=y1;
    110e:	683b      	ldr	r3, [r7, #0]
    1110:	60bb      	str	r3, [r7, #8]
		y1=tmp;
    1112:	697b      	ldr	r3, [r7, #20]
    1114:	603b      	str	r3, [r7, #0]
	}
	for (tmp=x0;tmp<=x1;tmp++){
    1116:	68fb      	ldr	r3, [r7, #12]
    1118:	617b      	str	r3, [r7, #20]
    111a:	e00c      	b.n	1136 <gfx_rectangle+0x56>
		gfx_plot(tmp,y0,15);
    111c:	220f      	movs	r2, #15
    111e:	68b9      	ldr	r1, [r7, #8]
    1120:	6978      	ldr	r0, [r7, #20]
    1122:	f7ff ff99 	bl	1058 <gfx_plot>
		gfx_plot(tmp,y1,15);
    1126:	220f      	movs	r2, #15
    1128:	6839      	ldr	r1, [r7, #0]
    112a:	6978      	ldr	r0, [r7, #20]
    112c:	f7ff ff94 	bl	1058 <gfx_plot>
	for (tmp=x0;tmp<=x1;tmp++){
    1130:	697b      	ldr	r3, [r7, #20]
    1132:	3301      	adds	r3, #1
    1134:	617b      	str	r3, [r7, #20]
    1136:	697a      	ldr	r2, [r7, #20]
    1138:	687b      	ldr	r3, [r7, #4]
    113a:	429a      	cmp	r2, r3
    113c:	ddee      	ble.n	111c <gfx_rectangle+0x3c>
	}
	for (++y0;y0<y1;y0++){
    113e:	68bb      	ldr	r3, [r7, #8]
    1140:	3301      	adds	r3, #1
    1142:	60bb      	str	r3, [r7, #8]
    1144:	e00c      	b.n	1160 <gfx_rectangle+0x80>
		gfx_plot(x0,y0,15);
    1146:	220f      	movs	r2, #15
    1148:	68b9      	ldr	r1, [r7, #8]
    114a:	68f8      	ldr	r0, [r7, #12]
    114c:	f7ff ff84 	bl	1058 <gfx_plot>
		gfx_plot(x1,y0,15);
    1150:	220f      	movs	r2, #15
    1152:	68b9      	ldr	r1, [r7, #8]
    1154:	6878      	ldr	r0, [r7, #4]
    1156:	f7ff ff7f 	bl	1058 <gfx_plot>
	for (++y0;y0<y1;y0++){
    115a:	68bb      	ldr	r3, [r7, #8]
    115c:	3301      	adds	r3, #1
    115e:	60bb      	str	r3, [r7, #8]
    1160:	68ba      	ldr	r2, [r7, #8]
    1162:	683b      	ldr	r3, [r7, #0]
    1164:	429a      	cmp	r2, r3
    1166:	dbee      	blt.n	1146 <gfx_rectangle+0x66>
	}
}
    1168:	bf00      	nop
    116a:	3718      	adds	r7, #24
    116c:	46bd      	mov	sp, r7
    116e:	bd80      	pop	{r7, pc}

00001170 <gfx_cls>:

void gfx_cls(){
    1170:	b480      	push	{r7}
    1172:	b083      	sub	sp, #12
    1174:	af00      	add	r7, sp, #0
	int x;
	for (x=0;x<VRES*BPR;x++) video_buffer[x]=0;
    1176:	2300      	movs	r3, #0
    1178:	607b      	str	r3, [r7, #4]
    117a:	e007      	b.n	118c <gfx_cls+0x1c>
    117c:	4a0b      	ldr	r2, [pc, #44]	; (11ac <gfx_cls+0x3c>)
    117e:	687b      	ldr	r3, [r7, #4]
    1180:	4413      	add	r3, r2
    1182:	2200      	movs	r2, #0
    1184:	701a      	strb	r2, [r3, #0]
    1186:	687b      	ldr	r3, [r7, #4]
    1188:	3301      	adds	r3, #1
    118a:	607b      	str	r3, [r7, #4]
    118c:	687b      	ldr	r3, [r7, #4]
    118e:	f242 725f 	movw	r2, #10079	; 0x275f
    1192:	4293      	cmp	r3, r2
    1194:	ddf2      	ble.n	117c <gfx_cls+0xc>
    cursor_x=0;
    1196:	4b06      	ldr	r3, [pc, #24]	; (11b0 <gfx_cls+0x40>)
    1198:	2200      	movs	r2, #0
    119a:	701a      	strb	r2, [r3, #0]
    cursor_y=0;
    119c:	4b05      	ldr	r3, [pc, #20]	; (11b4 <gfx_cls+0x44>)
    119e:	2200      	movs	r2, #0
    11a0:	701a      	strb	r2, [r3, #0]
}
    11a2:	bf00      	nop
    11a4:	370c      	adds	r7, #12
    11a6:	46bd      	mov	sp, r7
    11a8:	bc80      	pop	{r7}
    11aa:	4770      	bx	lr
    11ac:	2000046c 	.word	0x2000046c
    11b0:	2000045a 	.word	0x2000045a
    11b4:	2000045b 	.word	0x2000045b

000011b8 <gfx_scrollup>:

void gfx_scrollup(uint8_t n){
    11b8:	b480      	push	{r7}
    11ba:	b087      	sub	sp, #28
    11bc:	af00      	add	r7, sp, #0
    11be:	4603      	mov	r3, r0
    11c0:	71fb      	strb	r3, [r7, #7]
    uint8_t *src,*dest;
    int size;

    src=&video_buffer[n*BPR];
    11c2:	79fb      	ldrb	r3, [r7, #7]
    11c4:	225a      	movs	r2, #90	; 0x5a
    11c6:	fb02 f303 	mul.w	r3, r2, r3
    11ca:	4a17      	ldr	r2, [pc, #92]	; (1228 <gfx_scrollup+0x70>)
    11cc:	4413      	add	r3, r2
    11ce:	617b      	str	r3, [r7, #20]
    dest=video_buffer;
    11d0:	4b15      	ldr	r3, [pc, #84]	; (1228 <gfx_scrollup+0x70>)
    11d2:	613b      	str	r3, [r7, #16]
    size = (VRES-n)*BPR;
    11d4:	79fb      	ldrb	r3, [r7, #7]
    11d6:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    11da:	225a      	movs	r2, #90	; 0x5a
    11dc:	fb02 f303 	mul.w	r3, r2, r3
    11e0:	60fb      	str	r3, [r7, #12]
    while (size--) *dest++=*src++;
    11e2:	e007      	b.n	11f4 <gfx_scrollup+0x3c>
    11e4:	693b      	ldr	r3, [r7, #16]
    11e6:	1c5a      	adds	r2, r3, #1
    11e8:	613a      	str	r2, [r7, #16]
    11ea:	697a      	ldr	r2, [r7, #20]
    11ec:	1c51      	adds	r1, r2, #1
    11ee:	6179      	str	r1, [r7, #20]
    11f0:	7812      	ldrb	r2, [r2, #0]
    11f2:	701a      	strb	r2, [r3, #0]
    11f4:	68fb      	ldr	r3, [r7, #12]
    11f6:	1e5a      	subs	r2, r3, #1
    11f8:	60fa      	str	r2, [r7, #12]
    11fa:	2b00      	cmp	r3, #0
    11fc:	d1f2      	bne.n	11e4 <gfx_scrollup+0x2c>
    size=BPR*n;
    11fe:	79fb      	ldrb	r3, [r7, #7]
    1200:	225a      	movs	r2, #90	; 0x5a
    1202:	fb02 f303 	mul.w	r3, r2, r3
    1206:	60fb      	str	r3, [r7, #12]
    while (size--) *dest++=0;
    1208:	e004      	b.n	1214 <gfx_scrollup+0x5c>
    120a:	693b      	ldr	r3, [r7, #16]
    120c:	1c5a      	adds	r2, r3, #1
    120e:	613a      	str	r2, [r7, #16]
    1210:	2200      	movs	r2, #0
    1212:	701a      	strb	r2, [r3, #0]
    1214:	68fb      	ldr	r3, [r7, #12]
    1216:	1e5a      	subs	r2, r3, #1
    1218:	60fa      	str	r2, [r7, #12]
    121a:	2b00      	cmp	r3, #0
    121c:	d1f5      	bne.n	120a <gfx_scrollup+0x52>
}
    121e:	bf00      	nop
    1220:	371c      	adds	r7, #28
    1222:	46bd      	mov	sp, r7
    1224:	bc80      	pop	{r7}
    1226:	4770      	bx	lr
    1228:	2000046c 	.word	0x2000046c

0000122c <gfx_get_pixel>:

uint8_t gfx_get_pixel(int x, int y){
    122c:	b490      	push	{r4, r7}
    122e:	b082      	sub	sp, #8
    1230:	af00      	add	r7, sp, #0
    1232:	6078      	str	r0, [r7, #4]
    1234:	6039      	str	r1, [r7, #0]
    register uint8_t byte;
    if (x<0 || x>=HRES || y<0 || y>=VRES) return 255;
    1236:	687b      	ldr	r3, [r7, #4]
    1238:	2b00      	cmp	r3, #0
    123a:	db08      	blt.n	124e <gfx_get_pixel+0x22>
    123c:	687b      	ldr	r3, [r7, #4]
    123e:	2bb3      	cmp	r3, #179	; 0xb3
    1240:	dc05      	bgt.n	124e <gfx_get_pixel+0x22>
    1242:	683b      	ldr	r3, [r7, #0]
    1244:	2b00      	cmp	r3, #0
    1246:	db02      	blt.n	124e <gfx_get_pixel+0x22>
    1248:	683b      	ldr	r3, [r7, #0]
    124a:	2b6f      	cmp	r3, #111	; 0x6f
    124c:	dd01      	ble.n	1252 <gfx_get_pixel+0x26>
    124e:	23ff      	movs	r3, #255	; 0xff
    1250:	e012      	b.n	1278 <gfx_get_pixel+0x4c>
    byte=video_buffer[y*BPR+(x>>1)];
    1252:	683b      	ldr	r3, [r7, #0]
    1254:	225a      	movs	r2, #90	; 0x5a
    1256:	fb02 f203 	mul.w	r2, r2, r3
    125a:	687b      	ldr	r3, [r7, #4]
    125c:	105b      	asrs	r3, r3, #1
    125e:	4413      	add	r3, r2
    1260:	4a08      	ldr	r2, [pc, #32]	; (1284 <gfx_get_pixel+0x58>)
    1262:	5cd4      	ldrb	r4, [r2, r3]
    if (!(x&1)) byte>>=4;
    1264:	687b      	ldr	r3, [r7, #4]
    1266:	f003 0301 	and.w	r3, r3, #1
    126a:	2b00      	cmp	r3, #0
    126c:	d101      	bne.n	1272 <gfx_get_pixel+0x46>
    126e:	0923      	lsrs	r3, r4, #4
    1270:	b2dc      	uxtb	r4, r3
    return byte&0xf;
    1272:	f004 030f 	and.w	r3, r4, #15
    1276:	b2db      	uxtb	r3, r3
}
    1278:	4618      	mov	r0, r3
    127a:	3708      	adds	r7, #8
    127c:	46bd      	mov	sp, r7
    127e:	bc90      	pop	{r4, r7}
    1280:	4770      	bx	lr
    1282:	bf00      	nop
    1284:	2000046c 	.word	0x2000046c

00001288 <gfx_sprite>:

// put sprite on screen using BIT_XOR
void gfx_sprite(int x, int y, uint8_t width, uint8_t height, uint8_t *sprite){
    1288:	b480      	push	{r7}
    128a:	b085      	sub	sp, #20
    128c:	af00      	add	r7, sp, #0
    128e:	60f8      	str	r0, [r7, #12]
    1290:	60b9      	str	r1, [r7, #8]
    1292:	4611      	mov	r1, r2
    1294:	461a      	mov	r2, r3
    1296:	460b      	mov	r3, r1
    1298:	71fb      	strb	r3, [r7, #7]
    129a:	4613      	mov	r3, r2
    129c:	71bb      	strb	r3, [r7, #6]
        for(xbm=0,x0=x;x0<(x+width));x0++){
            gfx_blit(x0,y,bmp_bit,BIT_XOR);
        }
    }
*/    
    129e:	bf00      	nop
    12a0:	3714      	adds	r7, #20
    12a2:	46bd      	mov	sp, r7
    12a4:	bc80      	pop	{r7}
    12a6:	4770      	bx	lr

000012a8 <set_sysclock>:
//void* ffa;


// configure SYSCLK à la fréquence maximale de 72 Mhz
// en utilisant le cristal externe (HSE) et le PLL
static void set_sysclock(){
    12a8:	b480      	push	{r7}
    12aa:	af00      	add	r7, sp, #0
	 // active l'oscillateur externe
	RCC->CR|=RCC_CR_HSEON;
    12ac:	4a18      	ldr	r2, [pc, #96]	; (1310 <set_sysclock+0x68>)
    12ae:	4b18      	ldr	r3, [pc, #96]	; (1310 <set_sysclock+0x68>)
    12b0:	681b      	ldr	r3, [r3, #0]
    12b2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    12b6:	6013      	str	r3, [r2, #0]
	 // attend que l'oscillateur soit prêt
   while (!(RCC->CR&RCC_CR_HSERDY));
    12b8:	bf00      	nop
    12ba:	4b15      	ldr	r3, [pc, #84]	; (1310 <set_sysclock+0x68>)
    12bc:	681b      	ldr	r3, [r3, #0]
    12be:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    12c2:	2b00      	cmp	r3, #0
    12c4:	d0f9      	beq.n	12ba <set_sysclock+0x12>
     // sélection PREDIV1 pour la source du PLL
     // multiplie la fréquence HSE par 5 
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    12c6:	4a12      	ldr	r2, [pc, #72]	; (1310 <set_sysclock+0x68>)
    12c8:	4b11      	ldr	r3, [pc, #68]	; (1310 <set_sysclock+0x68>)
    12ca:	685b      	ldr	r3, [r3, #4]
    12cc:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    12d0:	6053      	str	r3, [r2, #4]
    // active le PLL
    RCC->CR|=RCC_CR_PLLON;
    12d2:	4a0f      	ldr	r2, [pc, #60]	; (1310 <set_sysclock+0x68>)
    12d4:	4b0e      	ldr	r3, [pc, #56]	; (1310 <set_sysclock+0x68>)
    12d6:	681b      	ldr	r3, [r3, #0]
    12d8:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    12dc:	6013      	str	r3, [r2, #0]
    // Attend que le PLL soit prêt
    while (!(RCC->CR&RCC_CR_PLLRDY));
    12de:	bf00      	nop
    12e0:	4b0b      	ldr	r3, [pc, #44]	; (1310 <set_sysclock+0x68>)
    12e2:	681b      	ldr	r3, [r3, #0]
    12e4:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    12e8:	2b00      	cmp	r3, #0
    12ea:	d0f9      	beq.n	12e0 <set_sysclock+0x38>
    // ajoute délais d'accès à la mémoire flash
    // active le prefetch buffer
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    12ec:	4a09      	ldr	r2, [pc, #36]	; (1314 <set_sysclock+0x6c>)
    12ee:	4b09      	ldr	r3, [pc, #36]	; (1314 <set_sysclock+0x6c>)
    12f0:	681b      	ldr	r3, [r3, #0]
    12f2:	f043 0312 	orr.w	r3, r3, #18
    12f6:	6013      	str	r3, [r2, #0]
	// La fréquence maximale pour APB1 doit-être de <=36 Mhz
	// donc divise SYSCLK/2
    // Sélectionne le PLL comme source pour SYSCLK dans CR
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    12f8:	4a05      	ldr	r2, [pc, #20]	; (1310 <set_sysclock+0x68>)
    12fa:	4b05      	ldr	r3, [pc, #20]	; (1310 <set_sysclock+0x68>)
    12fc:	685b      	ldr	r3, [r3, #4]
    12fe:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1302:	f043 0302 	orr.w	r3, r3, #2
    1306:	6053      	str	r3, [r2, #4]
}
    1308:	bf00      	nop
    130a:	46bd      	mov	sp, r7
    130c:	bc80      	pop	{r7}
    130e:	4770      	bx	lr
    1310:	40021000 	.word	0x40021000
    1314:	40022000 	.word	0x40022000

00001318 <main>:
extern void print_fault(const char *msg, sfrp_t adr);

extern uint32_t _TPA_START;
extern uint32_t _DATA_RAM_START;

void main(void){
    1318:	b580      	push	{r7, lr}
    131a:	b084      	sub	sp, #16
    131c:	af00      	add	r7, sp, #0
	set_sysclock();
    131e:	f7ff ffc3 	bl	12a8 <set_sysclock>
	config_systicks();
    1322:	f001 f93d 	bl	25a0 <config_systicks>
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    1326:	4b38      	ldr	r3, [pc, #224]	; (1408 <main+0xf0>)
    1328:	f640 021d 	movw	r2, #2077	; 0x81d
    132c:	619a      	str	r2, [r3, #24]
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    132e:	2206      	movs	r2, #6
    1330:	210d      	movs	r1, #13
    1332:	4836      	ldr	r0, [pc, #216]	; (140c <main+0xf4>)
    1334:	f7ff fc5d 	bl	bf2 <config_pin>
	_led_off();
    1338:	4a34      	ldr	r2, [pc, #208]	; (140c <main+0xf4>)
    133a:	4b34      	ldr	r3, [pc, #208]	; (140c <main+0xf4>)
    133c:	68db      	ldr	r3, [r3, #12]
    133e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1342:	60d3      	str	r3, [r2, #12]
	tvout_init();
    1344:	f001 f96c 	bl	2620 <tvout_init>
	gfx_cls();
    1348:	f7ff ff12 	bl	1170 <gfx_cls>
	for (x=26,y=1;x<(HRES-26);x++,y++)
		{
			gfx_plot(x,y,5);
		}
	*/
	c=4;
    134c:	2304      	movs	r3, #4
    134e:	71fb      	strb	r3, [r7, #7]
	for (y=0;y<VRES;y++){
    1350:	2300      	movs	r3, #0
    1352:	60bb      	str	r3, [r7, #8]
    1354:	e01d      	b.n	1392 <main+0x7a>
		if (y%28==0) c--;
    1356:	68ba      	ldr	r2, [r7, #8]
    1358:	4b2d      	ldr	r3, [pc, #180]	; (1410 <main+0xf8>)
    135a:	fb83 1302 	smull	r1, r3, r3, r2
    135e:	4413      	add	r3, r2
    1360:	1119      	asrs	r1, r3, #4
    1362:	17d3      	asrs	r3, r2, #31
    1364:	1ac9      	subs	r1, r1, r3
    1366:	460b      	mov	r3, r1
    1368:	00db      	lsls	r3, r3, #3
    136a:	1a5b      	subs	r3, r3, r1
    136c:	009b      	lsls	r3, r3, #2
    136e:	1ad1      	subs	r1, r2, r3
    1370:	2900      	cmp	r1, #0
    1372:	d102      	bne.n	137a <main+0x62>
    1374:	79fb      	ldrb	r3, [r7, #7]
    1376:	3b01      	subs	r3, #1
    1378:	71fb      	strb	r3, [r7, #7]
		sl_palette[y]=c&3;
    137a:	79fb      	ldrb	r3, [r7, #7]
    137c:	f003 0303 	and.w	r3, r3, #3
    1380:	b2d9      	uxtb	r1, r3
    1382:	4a24      	ldr	r2, [pc, #144]	; (1414 <main+0xfc>)
    1384:	68bb      	ldr	r3, [r7, #8]
    1386:	4413      	add	r3, r2
    1388:	460a      	mov	r2, r1
    138a:	701a      	strb	r2, [r3, #0]
	for (y=0;y<VRES;y++){
    138c:	68bb      	ldr	r3, [r7, #8]
    138e:	3301      	adds	r3, #1
    1390:	60bb      	str	r3, [r7, #8]
    1392:	68bb      	ldr	r3, [r7, #8]
    1394:	2b6f      	cmp	r3, #111	; 0x6f
    1396:	ddde      	ble.n	1356 <main+0x3e>
	}
	for (y=0;y<VRES;y++){
    1398:	2300      	movs	r3, #0
    139a:	60bb      	str	r3, [r7, #8]
    139c:	e01b      	b.n	13d6 <main+0xbe>
		c=0xf;
    139e:	230f      	movs	r3, #15
    13a0:	71fb      	strb	r3, [r7, #7]
		for (x=0;x<HRES;x++){
    13a2:	2300      	movs	r3, #0
    13a4:	60fb      	str	r3, [r7, #12]
    13a6:	e010      	b.n	13ca <main+0xb2>
			gfx_plot(x,y,c);
    13a8:	79fb      	ldrb	r3, [r7, #7]
    13aa:	461a      	mov	r2, r3
    13ac:	68b9      	ldr	r1, [r7, #8]
    13ae:	68f8      	ldr	r0, [r7, #12]
    13b0:	f7ff fe52 	bl	1058 <gfx_plot>
			if (x%8==0){
    13b4:	68fb      	ldr	r3, [r7, #12]
    13b6:	f003 0307 	and.w	r3, r3, #7
    13ba:	2b00      	cmp	r3, #0
    13bc:	d102      	bne.n	13c4 <main+0xac>
				c--;
    13be:	79fb      	ldrb	r3, [r7, #7]
    13c0:	3b01      	subs	r3, #1
    13c2:	71fb      	strb	r3, [r7, #7]
		for (x=0;x<HRES;x++){
    13c4:	68fb      	ldr	r3, [r7, #12]
    13c6:	3301      	adds	r3, #1
    13c8:	60fb      	str	r3, [r7, #12]
    13ca:	68fb      	ldr	r3, [r7, #12]
    13cc:	2bb3      	cmp	r3, #179	; 0xb3
    13ce:	ddeb      	ble.n	13a8 <main+0x90>
	for (y=0;y<VRES;y++){
    13d0:	68bb      	ldr	r3, [r7, #8]
    13d2:	3301      	adds	r3, #1
    13d4:	60bb      	str	r3, [r7, #8]
    13d6:	68bb      	ldr	r3, [r7, #8]
    13d8:	2b6f      	cmp	r3, #111	; 0x6f
    13da:	dde0      	ble.n	139e <main+0x86>
			}
		}
	}	
//	gfx_print("012345678901234567890123456789");	
	gfx_print_int((int)(&_TPA_START)-0x20000000,10);
    13dc:	4b0e      	ldr	r3, [pc, #56]	; (1418 <main+0x100>)
    13de:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    13e2:	210a      	movs	r1, #10
    13e4:	4618      	mov	r0, r3
    13e6:	f7ff fd5a 	bl	e9e <gfx_print_int>
	while(1){
		x=0;
    13ea:	2300      	movs	r3, #0
    13ec:	60fb      	str	r3, [r7, #12]
		timer=1000;
    13ee:	4b0b      	ldr	r3, [pc, #44]	; (141c <main+0x104>)
    13f0:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
    13f4:	601a      	str	r2, [r3, #0]
		while(timer)x++;
    13f6:	e002      	b.n	13fe <main+0xe6>
    13f8:	68fb      	ldr	r3, [r7, #12]
    13fa:	3301      	adds	r3, #1
    13fc:	60fb      	str	r3, [r7, #12]
    13fe:	4b07      	ldr	r3, [pc, #28]	; (141c <main+0x104>)
    1400:	681b      	ldr	r3, [r3, #0]
    1402:	2b00      	cmp	r3, #0
    1404:	d1f8      	bne.n	13f8 <main+0xe0>
		x=0;
    1406:	e7f0      	b.n	13ea <main+0xd2>
    1408:	40021000 	.word	0x40021000
    140c:	40011000 	.word	0x40011000
    1410:	92492493 	.word	0x92492493
    1414:	20002bcc 	.word	0x20002bcc
    1418:	20002c40 	.word	0x20002c40
    141c:	20000460 	.word	0x20000460

00001420 <enable_interrupt>:

#include "../include/blue_pill.h"



void enable_interrupt(int irq){
    1420:	b480      	push	{r7}
    1422:	b083      	sub	sp, #12
    1424:	af00      	add	r7, sp, #0
    1426:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    1428:	687b      	ldr	r3, [r7, #4]
    142a:	2b3b      	cmp	r3, #59	; 0x3b
    142c:	dc17      	bgt.n	145e <enable_interrupt+0x3e>
	ISER[irq>>5]|=1<<(irq&0x1f);
    142e:	687b      	ldr	r3, [r7, #4]
    1430:	115b      	asrs	r3, r3, #5
    1432:	009b      	lsls	r3, r3, #2
    1434:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1438:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    143c:	687a      	ldr	r2, [r7, #4]
    143e:	1152      	asrs	r2, r2, #5
    1440:	0092      	lsls	r2, r2, #2
    1442:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1446:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    144a:	6812      	ldr	r2, [r2, #0]
    144c:	6879      	ldr	r1, [r7, #4]
    144e:	f001 011f 	and.w	r1, r1, #31
    1452:	2001      	movs	r0, #1
    1454:	fa00 f101 	lsl.w	r1, r0, r1
    1458:	430a      	orrs	r2, r1
    145a:	601a      	str	r2, [r3, #0]
    145c:	e000      	b.n	1460 <enable_interrupt+0x40>
	if (irq>LAST_IRQ) return ;
    145e:	bf00      	nop
}
    1460:	370c      	adds	r7, #12
    1462:	46bd      	mov	sp, r7
    1464:	bc80      	pop	{r7}
    1466:	4770      	bx	lr

00001468 <disable_interrupt>:


void disable_interrupt(int irq){
    1468:	b480      	push	{r7}
    146a:	b083      	sub	sp, #12
    146c:	af00      	add	r7, sp, #0
    146e:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    1470:	687b      	ldr	r3, [r7, #4]
    1472:	2b3b      	cmp	r3, #59	; 0x3b
    1474:	dc0c      	bgt.n	1490 <disable_interrupt+0x28>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1476:	687b      	ldr	r3, [r7, #4]
    1478:	115b      	asrs	r3, r3, #5
    147a:	009a      	lsls	r2, r3, #2
    147c:	4b07      	ldr	r3, [pc, #28]	; (149c <disable_interrupt+0x34>)
    147e:	4413      	add	r3, r2
    1480:	687a      	ldr	r2, [r7, #4]
    1482:	f002 021f 	and.w	r2, r2, #31
    1486:	2101      	movs	r1, #1
    1488:	fa01 f202 	lsl.w	r2, r1, r2
    148c:	601a      	str	r2, [r3, #0]
    148e:	e000      	b.n	1492 <disable_interrupt+0x2a>
	if (irq>LAST_IRQ) return ;
    1490:	bf00      	nop
}
    1492:	370c      	adds	r7, #12
    1494:	46bd      	mov	sp, r7
    1496:	bc80      	pop	{r7}
    1498:	4770      	bx	lr
    149a:	bf00      	nop
    149c:	e000e180 	.word	0xe000e180

000014a0 <get_pending>:

unsigned get_pending(int irq){
    14a0:	b480      	push	{r7}
    14a2:	b083      	sub	sp, #12
    14a4:	af00      	add	r7, sp, #0
    14a6:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    14a8:	687b      	ldr	r3, [r7, #4]
    14aa:	2b3b      	cmp	r3, #59	; 0x3b
    14ac:	dd01      	ble.n	14b2 <get_pending+0x12>
    14ae:	2300      	movs	r3, #0
    14b0:	e00c      	b.n	14cc <get_pending+0x2c>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    14b2:	687b      	ldr	r3, [r7, #4]
    14b4:	115b      	asrs	r3, r3, #5
    14b6:	009a      	lsls	r2, r3, #2
    14b8:	4b07      	ldr	r3, [pc, #28]	; (14d8 <get_pending+0x38>)
    14ba:	4413      	add	r3, r2
    14bc:	681b      	ldr	r3, [r3, #0]
    14be:	687a      	ldr	r2, [r7, #4]
    14c0:	f002 021f 	and.w	r2, r2, #31
    14c4:	2101      	movs	r1, #1
    14c6:	fa01 f202 	lsl.w	r2, r1, r2
    14ca:	4013      	ands	r3, r2
}
    14cc:	4618      	mov	r0, r3
    14ce:	370c      	adds	r7, #12
    14d0:	46bd      	mov	sp, r7
    14d2:	bc80      	pop	{r7}
    14d4:	4770      	bx	lr
    14d6:	bf00      	nop
    14d8:	e000e280 	.word	0xe000e280

000014dc <get_active>:

unsigned get_active(int irq){
    14dc:	b480      	push	{r7}
    14de:	b083      	sub	sp, #12
    14e0:	af00      	add	r7, sp, #0
    14e2:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    14e4:	687b      	ldr	r3, [r7, #4]
    14e6:	2b3b      	cmp	r3, #59	; 0x3b
    14e8:	dd01      	ble.n	14ee <get_active+0x12>
    14ea:	2300      	movs	r3, #0
    14ec:	e00e      	b.n	150c <get_active+0x30>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    14ee:	687b      	ldr	r3, [r7, #4]
    14f0:	115b      	asrs	r3, r3, #5
    14f2:	009b      	lsls	r3, r3, #2
    14f4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    14f8:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    14fc:	681b      	ldr	r3, [r3, #0]
    14fe:	687a      	ldr	r2, [r7, #4]
    1500:	f002 021f 	and.w	r2, r2, #31
    1504:	2101      	movs	r1, #1
    1506:	fa01 f202 	lsl.w	r2, r1, r2
    150a:	4013      	ands	r3, r2
}
    150c:	4618      	mov	r0, r3
    150e:	370c      	adds	r7, #12
    1510:	46bd      	mov	sp, r7
    1512:	bc80      	pop	{r7}
    1514:	4770      	bx	lr

00001516 <set_pending>:

void set_pending(int irq){
    1516:	b480      	push	{r7}
    1518:	b083      	sub	sp, #12
    151a:	af00      	add	r7, sp, #0
    151c:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    151e:	687b      	ldr	r3, [r7, #4]
    1520:	2b3b      	cmp	r3, #59	; 0x3b
    1522:	dc17      	bgt.n	1554 <set_pending+0x3e>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1524:	687b      	ldr	r3, [r7, #4]
    1526:	115b      	asrs	r3, r3, #5
    1528:	009b      	lsls	r3, r3, #2
    152a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    152e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1532:	687a      	ldr	r2, [r7, #4]
    1534:	1152      	asrs	r2, r2, #5
    1536:	0092      	lsls	r2, r2, #2
    1538:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    153c:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    1540:	6812      	ldr	r2, [r2, #0]
    1542:	6879      	ldr	r1, [r7, #4]
    1544:	f001 011f 	and.w	r1, r1, #31
    1548:	2001      	movs	r0, #1
    154a:	fa00 f101 	lsl.w	r1, r0, r1
    154e:	430a      	orrs	r2, r1
    1550:	601a      	str	r2, [r3, #0]
    1552:	e000      	b.n	1556 <set_pending+0x40>
	if (irq>LAST_IRQ) return;
    1554:	bf00      	nop
}
    1556:	370c      	adds	r7, #12
    1558:	46bd      	mov	sp, r7
    155a:	bc80      	pop	{r7}
    155c:	4770      	bx	lr

0000155e <clear_pending>:

void clear_pending(int irq){
    155e:	b480      	push	{r7}
    1560:	b083      	sub	sp, #12
    1562:	af00      	add	r7, sp, #0
    1564:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    1566:	687b      	ldr	r3, [r7, #4]
    1568:	2b3b      	cmp	r3, #59	; 0x3b
    156a:	dc0c      	bgt.n	1586 <clear_pending+0x28>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    156c:	687b      	ldr	r3, [r7, #4]
    156e:	115b      	asrs	r3, r3, #5
    1570:	009a      	lsls	r2, r3, #2
    1572:	4b07      	ldr	r3, [pc, #28]	; (1590 <clear_pending+0x32>)
    1574:	4413      	add	r3, r2
    1576:	687a      	ldr	r2, [r7, #4]
    1578:	f002 021f 	and.w	r2, r2, #31
    157c:	2101      	movs	r1, #1
    157e:	fa01 f202 	lsl.w	r2, r1, r2
    1582:	601a      	str	r2, [r3, #0]
    1584:	e000      	b.n	1588 <clear_pending+0x2a>
	if (irq>LAST_IRQ) return;
    1586:	bf00      	nop
}
    1588:	370c      	adds	r7, #12
    158a:	46bd      	mov	sp, r7
    158c:	bc80      	pop	{r7}
    158e:	4770      	bx	lr
    1590:	e000e280 	.word	0xe000e280

00001594 <set_int_priority>:

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
    1594:	b480      	push	{r7}
    1596:	b083      	sub	sp, #12
    1598:	af00      	add	r7, sp, #0
    159a:	6078      	str	r0, [r7, #4]
    159c:	6039      	str	r1, [r7, #0]
	if ((irq>=0) && (irq<=LAST_IRQ)){
    159e:	687b      	ldr	r3, [r7, #4]
    15a0:	2b00      	cmp	r3, #0
    15a2:	db0d      	blt.n	15c0 <set_int_priority+0x2c>
    15a4:	687b      	ldr	r3, [r7, #4]
    15a6:	2b3b      	cmp	r3, #59	; 0x3b
    15a8:	dc0a      	bgt.n	15c0 <set_int_priority+0x2c>
		IPR[irq]=(uint8_t)((priority&15)<<4);
    15aa:	687b      	ldr	r3, [r7, #4]
    15ac:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    15b0:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    15b4:	683a      	ldr	r2, [r7, #0]
    15b6:	b2d2      	uxtb	r2, r2
    15b8:	0112      	lsls	r2, r2, #4
    15ba:	b2d2      	uxtb	r2, r2
    15bc:	701a      	strb	r2, [r3, #0]
	}else if ((irq<0) && (irq>-16)){
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
	}
}
    15be:	e012      	b.n	15e6 <set_int_priority+0x52>
	}else if ((irq<0) && (irq>-16)){
    15c0:	687b      	ldr	r3, [r7, #4]
    15c2:	2b00      	cmp	r3, #0
    15c4:	da0f      	bge.n	15e6 <set_int_priority+0x52>
    15c6:	687b      	ldr	r3, [r7, #4]
    15c8:	f113 0f0f 	cmn.w	r3, #15
    15cc:	db0b      	blt.n	15e6 <set_int_priority+0x52>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    15ce:	687a      	ldr	r2, [r7, #4]
    15d0:	f06f 0303 	mvn.w	r3, #3
    15d4:	1a9b      	subs	r3, r3, r2
    15d6:	461a      	mov	r2, r3
    15d8:	4b05      	ldr	r3, [pc, #20]	; (15f0 <set_int_priority+0x5c>)
    15da:	4413      	add	r3, r2
    15dc:	683a      	ldr	r2, [r7, #0]
    15de:	b2d2      	uxtb	r2, r2
    15e0:	0112      	lsls	r2, r2, #4
    15e2:	b2d2      	uxtb	r2, r2
    15e4:	701a      	strb	r2, [r3, #0]
}
    15e6:	bf00      	nop
    15e8:	370c      	adds	r7, #12
    15ea:	46bd      	mov	sp, r7
    15ec:	bc80      	pop	{r7}
    15ee:	4770      	bx	lr
    15f0:	e000ed18 	.word	0xe000ed18

000015f4 <leap_year>:
#define RTC_ACCESS_CODE 0xAA55

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
    15f4:	b480      	push	{r7}
    15f6:	b083      	sub	sp, #12
    15f8:	af00      	add	r7, sp, #0
    15fa:	6078      	str	r0, [r7, #4]
	if (!(y&3)){
    15fc:	687b      	ldr	r3, [r7, #4]
    15fe:	f003 0303 	and.w	r3, r3, #3
    1602:	2b00      	cmp	r3, #0
    1604:	d11a      	bne.n	163c <leap_year+0x48>
		if ((y%100==0) && (y%400)){
    1606:	687a      	ldr	r2, [r7, #4]
    1608:	4b0f      	ldr	r3, [pc, #60]	; (1648 <leap_year+0x54>)
    160a:	fba3 1302 	umull	r1, r3, r3, r2
    160e:	095b      	lsrs	r3, r3, #5
    1610:	2164      	movs	r1, #100	; 0x64
    1612:	fb01 f303 	mul.w	r3, r1, r3
    1616:	1ad3      	subs	r3, r2, r3
    1618:	2b00      	cmp	r3, #0
    161a:	d10d      	bne.n	1638 <leap_year+0x44>
    161c:	687a      	ldr	r2, [r7, #4]
    161e:	4b0a      	ldr	r3, [pc, #40]	; (1648 <leap_year+0x54>)
    1620:	fba3 1302 	umull	r1, r3, r3, r2
    1624:	09db      	lsrs	r3, r3, #7
    1626:	f44f 71c8 	mov.w	r1, #400	; 0x190
    162a:	fb01 f303 	mul.w	r3, r1, r3
    162e:	1ad3      	subs	r3, r2, r3
    1630:	2b00      	cmp	r3, #0
    1632:	d001      	beq.n	1638 <leap_year+0x44>
			return 0;
    1634:	2300      	movs	r3, #0
    1636:	e002      	b.n	163e <leap_year+0x4a>
		}
		return 1;
    1638:	2301      	movs	r3, #1
    163a:	e000      	b.n	163e <leap_year+0x4a>
	}
	return 0;
    163c:	2300      	movs	r3, #0
}
    163e:	4618      	mov	r0, r3
    1640:	370c      	adds	r7, #12
    1642:	46bd      	mov	sp, r7
    1644:	bc80      	pop	{r7}
    1646:	4770      	bx	lr
    1648:	51eb851f 	.word	0x51eb851f

0000164c <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
    164c:	b480      	push	{r7}
    164e:	b085      	sub	sp, #20
    1650:	af00      	add	r7, sp, #0
    1652:	6078      	str	r0, [r7, #4]
    1654:	6039      	str	r1, [r7, #0]
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    1656:	4a0d      	ldr	r2, [pc, #52]	; (168c <sec_per_month+0x40>)
    1658:	683b      	ldr	r3, [r7, #0]
    165a:	4413      	add	r3, r2
    165c:	781b      	ldrb	r3, [r3, #0]
    165e:	461a      	mov	r2, r3
    1660:	4b0b      	ldr	r3, [pc, #44]	; (1690 <sec_per_month+0x44>)
    1662:	fb03 f302 	mul.w	r3, r3, r2
    1666:	60fb      	str	r3, [r7, #12]
	if (month==2 && leap){
    1668:	683b      	ldr	r3, [r7, #0]
    166a:	2b02      	cmp	r3, #2
    166c:	d108      	bne.n	1680 <sec_per_month+0x34>
    166e:	687b      	ldr	r3, [r7, #4]
    1670:	2b00      	cmp	r3, #0
    1672:	d005      	beq.n	1680 <sec_per_month+0x34>
		sec+=SEC_PER_DAY;
    1674:	68fb      	ldr	r3, [r7, #12]
    1676:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    167a:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    167e:	60fb      	str	r3, [r7, #12]
	}
	return sec;
    1680:	68fb      	ldr	r3, [r7, #12]
}
    1682:	4618      	mov	r0, r3
    1684:	3714      	adds	r7, #20
    1686:	46bd      	mov	sp, r7
    1688:	bc80      	pop	{r7}
    168a:	4770      	bx	lr
    168c:	00002e38 	.word	0x00002e38
    1690:	00015180 	.word	0x00015180

00001694 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    1694:	b580      	push	{r7, lr}
    1696:	b086      	sub	sp, #24
    1698:	af00      	add	r7, sp, #0
    169a:	6078      	str	r0, [r7, #4]
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    169c:	4b66      	ldr	r3, [pc, #408]	; (1838 <get_date_time+0x1a4>)
    169e:	699b      	ldr	r3, [r3, #24]
    16a0:	041a      	lsls	r2, r3, #16
    16a2:	4b65      	ldr	r3, [pc, #404]	; (1838 <get_date_time+0x1a4>)
    16a4:	69db      	ldr	r3, [r3, #28]
    16a6:	4413      	add	r3, r2
    16a8:	617b      	str	r3, [r7, #20]
	dt->year=EPOCH_YEAR;
    16aa:	687b      	ldr	r3, [r7, #4]
    16ac:	f240 72b2 	movw	r2, #1970	; 0x7b2
    16b0:	811a      	strh	r2, [r3, #8]
	leap=leap_year(EPOCH_YEAR);
    16b2:	f240 70b2 	movw	r0, #1970	; 0x7b2
    16b6:	f7ff ff9d 	bl	15f4 <leap_year>
    16ba:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    16bc:	e019      	b.n	16f2 <get_date_time+0x5e>
		if (leap){
    16be:	693b      	ldr	r3, [r7, #16]
    16c0:	2b00      	cmp	r3, #0
    16c2:	d006      	beq.n	16d2 <get_date_time+0x3e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    16c4:	697b      	ldr	r3, [r7, #20]
    16c6:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    16ca:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    16ce:	617b      	str	r3, [r7, #20]
    16d0:	e003      	b.n	16da <get_date_time+0x46>
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    16d2:	697a      	ldr	r2, [r7, #20]
    16d4:	4b59      	ldr	r3, [pc, #356]	; (183c <get_date_time+0x1a8>)
    16d6:	4413      	add	r3, r2
    16d8:	617b      	str	r3, [r7, #20]
		}
		dt->year++;
    16da:	687b      	ldr	r3, [r7, #4]
    16dc:	891b      	ldrh	r3, [r3, #8]
    16de:	3301      	adds	r3, #1
    16e0:	b29a      	uxth	r2, r3
    16e2:	687b      	ldr	r3, [r7, #4]
    16e4:	811a      	strh	r2, [r3, #8]
		leap=leap_year(dt->year);
    16e6:	687b      	ldr	r3, [r7, #4]
    16e8:	891b      	ldrh	r3, [r3, #8]
    16ea:	4618      	mov	r0, r3
    16ec:	f7ff ff82 	bl	15f4 <leap_year>
    16f0:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    16f2:	693b      	ldr	r3, [r7, #16]
    16f4:	2b00      	cmp	r3, #0
    16f6:	d103      	bne.n	1700 <get_date_time+0x6c>
    16f8:	697b      	ldr	r3, [r7, #20]
    16fa:	4a51      	ldr	r2, [pc, #324]	; (1840 <get_date_time+0x1ac>)
    16fc:	4293      	cmp	r3, r2
    16fe:	d8de      	bhi.n	16be <get_date_time+0x2a>
    1700:	693b      	ldr	r3, [r7, #16]
    1702:	2b00      	cmp	r3, #0
    1704:	d003      	beq.n	170e <get_date_time+0x7a>
    1706:	697b      	ldr	r3, [r7, #20]
    1708:	4a4e      	ldr	r2, [pc, #312]	; (1844 <get_date_time+0x1b0>)
    170a:	4293      	cmp	r3, r2
    170c:	d8d7      	bhi.n	16be <get_date_time+0x2a>
	}//while
	dt->month=1;
    170e:	687a      	ldr	r2, [r7, #4]
    1710:	8853      	ldrh	r3, [r2, #2]
    1712:	2101      	movs	r1, #1
    1714:	f361 1389 	bfi	r3, r1, #6, #4
    1718:	8053      	strh	r3, [r2, #2]
	dt->day=1;
    171a:	687a      	ldr	r2, [r7, #4]
    171c:	7893      	ldrb	r3, [r2, #2]
    171e:	2101      	movs	r1, #1
    1720:	f361 0345 	bfi	r3, r1, #1, #5
    1724:	7093      	strb	r3, [r2, #2]
	dt->hour=0;
    1726:	687a      	ldr	r2, [r7, #4]
    1728:	6813      	ldr	r3, [r2, #0]
    172a:	f36f 3310 	bfc	r3, #12, #5
    172e:	6013      	str	r3, [r2, #0]
	dt->minute=0;
    1730:	687a      	ldr	r2, [r7, #4]
    1732:	8813      	ldrh	r3, [r2, #0]
    1734:	f36f 138b 	bfc	r3, #6, #6
    1738:	8013      	strh	r3, [r2, #0]
	dt->second=0;
    173a:	687a      	ldr	r2, [r7, #4]
    173c:	7813      	ldrb	r3, [r2, #0]
    173e:	f36f 0305 	bfc	r3, #0, #6
    1742:	7013      	strb	r3, [r2, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1744:	e011      	b.n	176a <get_date_time+0xd6>
		dt->month++;
    1746:	687b      	ldr	r3, [r7, #4]
    1748:	885b      	ldrh	r3, [r3, #2]
    174a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    174e:	b2db      	uxtb	r3, r3
    1750:	3301      	adds	r3, #1
    1752:	f003 030f 	and.w	r3, r3, #15
    1756:	b2d9      	uxtb	r1, r3
    1758:	687a      	ldr	r2, [r7, #4]
    175a:	8853      	ldrh	r3, [r2, #2]
    175c:	f361 1389 	bfi	r3, r1, #6, #4
    1760:	8053      	strh	r3, [r2, #2]
		rtc_cntr-=sec;
    1762:	697a      	ldr	r2, [r7, #20]
    1764:	68fb      	ldr	r3, [r7, #12]
    1766:	1ad3      	subs	r3, r2, r3
    1768:	617b      	str	r3, [r7, #20]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    176a:	687b      	ldr	r3, [r7, #4]
    176c:	885b      	ldrh	r3, [r3, #2]
    176e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1772:	b2db      	uxtb	r3, r3
    1774:	4619      	mov	r1, r3
    1776:	6938      	ldr	r0, [r7, #16]
    1778:	f7ff ff68 	bl	164c <sec_per_month>
    177c:	60f8      	str	r0, [r7, #12]
    177e:	68fa      	ldr	r2, [r7, #12]
    1780:	697b      	ldr	r3, [r7, #20]
    1782:	429a      	cmp	r2, r3
    1784:	d3df      	bcc.n	1746 <get_date_time+0xb2>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    1786:	697b      	ldr	r3, [r7, #20]
    1788:	4a2f      	ldr	r2, [pc, #188]	; (1848 <get_date_time+0x1b4>)
    178a:	fba2 2303 	umull	r2, r3, r2, r3
    178e:	0c1b      	lsrs	r3, r3, #16
    1790:	b2db      	uxtb	r3, r3
    1792:	3301      	adds	r3, #1
    1794:	b2db      	uxtb	r3, r3
    1796:	f003 031f 	and.w	r3, r3, #31
    179a:	b2d9      	uxtb	r1, r3
    179c:	687a      	ldr	r2, [r7, #4]
    179e:	7893      	ldrb	r3, [r2, #2]
    17a0:	f361 0345 	bfi	r3, r1, #1, #5
    17a4:	7093      	strb	r3, [r2, #2]
	rtc_cntr%=SEC_PER_DAY;
    17a6:	697b      	ldr	r3, [r7, #20]
    17a8:	4a27      	ldr	r2, [pc, #156]	; (1848 <get_date_time+0x1b4>)
    17aa:	fba2 1203 	umull	r1, r2, r2, r3
    17ae:	0c12      	lsrs	r2, r2, #16
    17b0:	4926      	ldr	r1, [pc, #152]	; (184c <get_date_time+0x1b8>)
    17b2:	fb01 f202 	mul.w	r2, r1, r2
    17b6:	1a9b      	subs	r3, r3, r2
    17b8:	617b      	str	r3, [r7, #20]
	dt->hour=rtc_cntr/SEC_PER_HR;
    17ba:	697b      	ldr	r3, [r7, #20]
    17bc:	4a24      	ldr	r2, [pc, #144]	; (1850 <get_date_time+0x1bc>)
    17be:	fba2 2303 	umull	r2, r3, r2, r3
    17c2:	0adb      	lsrs	r3, r3, #11
    17c4:	b2db      	uxtb	r3, r3
    17c6:	f003 031f 	and.w	r3, r3, #31
    17ca:	b2d9      	uxtb	r1, r3
    17cc:	687a      	ldr	r2, [r7, #4]
    17ce:	6813      	ldr	r3, [r2, #0]
    17d0:	f361 3310 	bfi	r3, r1, #12, #5
    17d4:	6013      	str	r3, [r2, #0]
	rtc_cntr%=SEC_PER_HR;
    17d6:	697b      	ldr	r3, [r7, #20]
    17d8:	4a1d      	ldr	r2, [pc, #116]	; (1850 <get_date_time+0x1bc>)
    17da:	fba2 1203 	umull	r1, r2, r2, r3
    17de:	0ad2      	lsrs	r2, r2, #11
    17e0:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    17e4:	fb01 f202 	mul.w	r2, r1, r2
    17e8:	1a9b      	subs	r3, r3, r2
    17ea:	617b      	str	r3, [r7, #20]
	dt->minute=rtc_cntr/SEC_PER_MIN;
    17ec:	697b      	ldr	r3, [r7, #20]
    17ee:	4a19      	ldr	r2, [pc, #100]	; (1854 <get_date_time+0x1c0>)
    17f0:	fba2 2303 	umull	r2, r3, r2, r3
    17f4:	095b      	lsrs	r3, r3, #5
    17f6:	b2db      	uxtb	r3, r3
    17f8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    17fc:	b2d9      	uxtb	r1, r3
    17fe:	687a      	ldr	r2, [r7, #4]
    1800:	8813      	ldrh	r3, [r2, #0]
    1802:	f361 138b 	bfi	r3, r1, #6, #6
    1806:	8013      	strh	r3, [r2, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    1808:	6979      	ldr	r1, [r7, #20]
    180a:	4b12      	ldr	r3, [pc, #72]	; (1854 <get_date_time+0x1c0>)
    180c:	fba3 2301 	umull	r2, r3, r3, r1
    1810:	095a      	lsrs	r2, r3, #5
    1812:	4613      	mov	r3, r2
    1814:	011b      	lsls	r3, r3, #4
    1816:	1a9b      	subs	r3, r3, r2
    1818:	009b      	lsls	r3, r3, #2
    181a:	1aca      	subs	r2, r1, r3
    181c:	b2d3      	uxtb	r3, r2
    181e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1822:	b2d9      	uxtb	r1, r3
    1824:	687a      	ldr	r2, [r7, #4]
    1826:	7813      	ldrb	r3, [r2, #0]
    1828:	f361 0305 	bfi	r3, r1, #0, #6
    182c:	7013      	strb	r3, [r2, #0]
}
    182e:	bf00      	nop
    1830:	3718      	adds	r7, #24
    1832:	46bd      	mov	sp, r7
    1834:	bd80      	pop	{r7, pc}
    1836:	bf00      	nop
    1838:	40002800 	.word	0x40002800
    183c:	fe1ecc80 	.word	0xfe1ecc80
    1840:	01e1337f 	.word	0x01e1337f
    1844:	01e284ff 	.word	0x01e284ff
    1848:	c22e4507 	.word	0xc22e4507
    184c:	00015180 	.word	0x00015180
    1850:	91a2b3c5 	.word	0x91a2b3c5
    1854:	88888889 	.word	0x88888889

00001858 <set_date_time>:

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    1858:	b580      	push	{r7, lr}
    185a:	b086      	sub	sp, #24
    185c:	af00      	add	r7, sp, #0
    185e:	6078      	str	r0, [r7, #4]
	uint32_t i,rtc_cntr=0;
    1860:	2300      	movs	r3, #0
    1862:	613b      	str	r3, [r7, #16]
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    1864:	687b      	ldr	r3, [r7, #4]
    1866:	891b      	ldrh	r3, [r3, #8]
    1868:	f240 72b1 	movw	r2, #1969	; 0x7b1
    186c:	4293      	cmp	r3, r2
    186e:	d803      	bhi.n	1878 <set_date_time+0x20>
    1870:	687b      	ldr	r3, [r7, #4]
    1872:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1876:	811a      	strh	r2, [r3, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    1878:	687b      	ldr	r3, [r7, #4]
    187a:	891b      	ldrh	r3, [r3, #8]
    187c:	f640 023a 	movw	r2, #2106	; 0x83a
    1880:	4293      	cmp	r3, r2
    1882:	d903      	bls.n	188c <set_date_time+0x34>
    1884:	687b      	ldr	r3, [r7, #4]
    1886:	f640 023a 	movw	r2, #2106	; 0x83a
    188a:	811a      	strh	r2, [r3, #8]
	leap=leap_year(dt->year);
    188c:	687b      	ldr	r3, [r7, #4]
    188e:	891b      	ldrh	r3, [r3, #8]
    1890:	4618      	mov	r0, r3
    1892:	f7ff feaf 	bl	15f4 <leap_year>
    1896:	60f8      	str	r0, [r7, #12]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    1898:	f240 73b2 	movw	r3, #1970	; 0x7b2
    189c:	617b      	str	r3, [r7, #20]
    189e:	e013      	b.n	18c8 <set_date_time+0x70>
		if (leap_year(i)){
    18a0:	6978      	ldr	r0, [r7, #20]
    18a2:	f7ff fea7 	bl	15f4 <leap_year>
    18a6:	4603      	mov	r3, r0
    18a8:	2b00      	cmp	r3, #0
    18aa:	d006      	beq.n	18ba <set_date_time+0x62>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    18ac:	693b      	ldr	r3, [r7, #16]
    18ae:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    18b2:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    18b6:	613b      	str	r3, [r7, #16]
    18b8:	e003      	b.n	18c2 <set_date_time+0x6a>
		}else{
			rtc_cntr+=SEC_PER_YEAR;
    18ba:	693a      	ldr	r2, [r7, #16]
    18bc:	4b42      	ldr	r3, [pc, #264]	; (19c8 <set_date_time+0x170>)
    18be:	4413      	add	r3, r2
    18c0:	613b      	str	r3, [r7, #16]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    18c2:	697b      	ldr	r3, [r7, #20]
    18c4:	3301      	adds	r3, #1
    18c6:	617b      	str	r3, [r7, #20]
    18c8:	687b      	ldr	r3, [r7, #4]
    18ca:	891b      	ldrh	r3, [r3, #8]
    18cc:	461a      	mov	r2, r3
    18ce:	697b      	ldr	r3, [r7, #20]
    18d0:	429a      	cmp	r2, r3
    18d2:	d8e5      	bhi.n	18a0 <set_date_time+0x48>
		}
	}
	for (i=1;i<dt->month;i++){
    18d4:	2301      	movs	r3, #1
    18d6:	617b      	str	r3, [r7, #20]
    18d8:	e00a      	b.n	18f0 <set_date_time+0x98>
		rtc_cntr+=sec_per_month(leap,i);
    18da:	6979      	ldr	r1, [r7, #20]
    18dc:	68f8      	ldr	r0, [r7, #12]
    18de:	f7ff feb5 	bl	164c <sec_per_month>
    18e2:	4602      	mov	r2, r0
    18e4:	693b      	ldr	r3, [r7, #16]
    18e6:	4413      	add	r3, r2
    18e8:	613b      	str	r3, [r7, #16]
	for (i=1;i<dt->month;i++){
    18ea:	697b      	ldr	r3, [r7, #20]
    18ec:	3301      	adds	r3, #1
    18ee:	617b      	str	r3, [r7, #20]
    18f0:	687b      	ldr	r3, [r7, #4]
    18f2:	885b      	ldrh	r3, [r3, #2]
    18f4:	f3c3 1383 	ubfx	r3, r3, #6, #4
    18f8:	b2db      	uxtb	r3, r3
    18fa:	461a      	mov	r2, r3
    18fc:	697b      	ldr	r3, [r7, #20]
    18fe:	429a      	cmp	r2, r3
    1900:	d8eb      	bhi.n	18da <set_date_time+0x82>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    1902:	687b      	ldr	r3, [r7, #4]
    1904:	789b      	ldrb	r3, [r3, #2]
    1906:	f3c3 0344 	ubfx	r3, r3, #1, #5
    190a:	b2db      	uxtb	r3, r3
    190c:	3b01      	subs	r3, #1
    190e:	4a2f      	ldr	r2, [pc, #188]	; (19cc <set_date_time+0x174>)
    1910:	fb02 f303 	mul.w	r3, r2, r3
    1914:	461a      	mov	r2, r3
    1916:	693b      	ldr	r3, [r7, #16]
    1918:	4413      	add	r3, r2
    191a:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    191c:	687b      	ldr	r3, [r7, #4]
    191e:	681b      	ldr	r3, [r3, #0]
    1920:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1924:	b2db      	uxtb	r3, r3
    1926:	461a      	mov	r2, r3
    1928:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    192c:	fb03 f302 	mul.w	r3, r3, r2
    1930:	461a      	mov	r2, r3
    1932:	693b      	ldr	r3, [r7, #16]
    1934:	4413      	add	r3, r2
    1936:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    1938:	687b      	ldr	r3, [r7, #4]
    193a:	881b      	ldrh	r3, [r3, #0]
    193c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1940:	b2db      	uxtb	r3, r3
    1942:	461a      	mov	r2, r3
    1944:	4613      	mov	r3, r2
    1946:	011b      	lsls	r3, r3, #4
    1948:	1a9b      	subs	r3, r3, r2
    194a:	009b      	lsls	r3, r3, #2
    194c:	461a      	mov	r2, r3
    194e:	693b      	ldr	r3, [r7, #16]
    1950:	4413      	add	r3, r2
    1952:	613b      	str	r3, [r7, #16]
	rtc_cntr+=dt->second;
    1954:	687b      	ldr	r3, [r7, #4]
    1956:	781b      	ldrb	r3, [r3, #0]
    1958:	f3c3 0305 	ubfx	r3, r3, #0, #6
    195c:	b2db      	uxtb	r3, r3
    195e:	461a      	mov	r2, r3
    1960:	693b      	ldr	r3, [r7, #16]
    1962:	4413      	add	r3, r2
    1964:	613b      	str	r3, [r7, #16]
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1966:	4a1a      	ldr	r2, [pc, #104]	; (19d0 <set_date_time+0x178>)
    1968:	4b19      	ldr	r3, [pc, #100]	; (19d0 <set_date_time+0x178>)
    196a:	69db      	ldr	r3, [r3, #28]
    196c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1970:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1972:	4a18      	ldr	r2, [pc, #96]	; (19d4 <set_date_time+0x17c>)
    1974:	4b17      	ldr	r3, [pc, #92]	; (19d4 <set_date_time+0x17c>)
    1976:	681b      	ldr	r3, [r3, #0]
    1978:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    197c:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    197e:	4a16      	ldr	r2, [pc, #88]	; (19d8 <set_date_time+0x180>)
    1980:	4b15      	ldr	r3, [pc, #84]	; (19d8 <set_date_time+0x180>)
    1982:	685b      	ldr	r3, [r3, #4]
    1984:	f043 0310 	orr.w	r3, r3, #16
    1988:	6053      	str	r3, [r2, #4]
	RTC->CNTH=rtc_cntr>>16;
    198a:	4a13      	ldr	r2, [pc, #76]	; (19d8 <set_date_time+0x180>)
    198c:	693b      	ldr	r3, [r7, #16]
    198e:	0c1b      	lsrs	r3, r3, #16
    1990:	6193      	str	r3, [r2, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    1992:	4a11      	ldr	r2, [pc, #68]	; (19d8 <set_date_time+0x180>)
    1994:	693b      	ldr	r3, [r7, #16]
    1996:	b29b      	uxth	r3, r3
    1998:	61d3      	str	r3, [r2, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    199a:	4a0f      	ldr	r2, [pc, #60]	; (19d8 <set_date_time+0x180>)
    199c:	4b0e      	ldr	r3, [pc, #56]	; (19d8 <set_date_time+0x180>)
    199e:	685b      	ldr	r3, [r3, #4]
    19a0:	f023 0310 	bic.w	r3, r3, #16
    19a4:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    19a6:	bf00      	nop
    19a8:	4b0b      	ldr	r3, [pc, #44]	; (19d8 <set_date_time+0x180>)
    19aa:	685b      	ldr	r3, [r3, #4]
    19ac:	f003 0320 	and.w	r3, r3, #32
    19b0:	2b00      	cmp	r3, #0
    19b2:	d0f9      	beq.n	19a8 <set_date_time+0x150>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    19b4:	4a07      	ldr	r2, [pc, #28]	; (19d4 <set_date_time+0x17c>)
    19b6:	4b07      	ldr	r3, [pc, #28]	; (19d4 <set_date_time+0x17c>)
    19b8:	681b      	ldr	r3, [r3, #0]
    19ba:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    19be:	6013      	str	r3, [r2, #0]
}
    19c0:	bf00      	nop
    19c2:	3718      	adds	r7, #24
    19c4:	46bd      	mov	sp, r7
    19c6:	bd80      	pop	{r7, pc}
    19c8:	01e13380 	.word	0x01e13380
    19cc:	00015180 	.word	0x00015180
    19d0:	40021000 	.word	0x40021000
    19d4:	40007000 	.word	0x40007000
    19d8:	40002800 	.word	0x40002800

000019dc <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    19dc:	b580      	push	{r7, lr}
    19de:	b082      	sub	sp, #8
    19e0:	af00      	add	r7, sp, #0
    19e2:	6078      	str	r0, [r7, #4]
    19e4:	6039      	str	r1, [r7, #0]
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    19e6:	4b4a      	ldr	r3, [pc, #296]	; (1b10 <rtc_init+0x134>)
    19e8:	685b      	ldr	r3, [r3, #4]
    19ea:	f64a 2255 	movw	r2, #43605	; 0xaa55
    19ee:	4293      	cmp	r3, r2
    19f0:	f000 8082 	beq.w	1af8 <rtc_init+0x11c>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    19f4:	4a47      	ldr	r2, [pc, #284]	; (1b14 <rtc_init+0x138>)
    19f6:	4b47      	ldr	r3, [pc, #284]	; (1b14 <rtc_init+0x138>)
    19f8:	69db      	ldr	r3, [r3, #28]
    19fa:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    19fe:	61d3      	str	r3, [r2, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    1a00:	4a45      	ldr	r2, [pc, #276]	; (1b18 <rtc_init+0x13c>)
    1a02:	4b45      	ldr	r3, [pc, #276]	; (1b18 <rtc_init+0x13c>)
    1a04:	681b      	ldr	r3, [r3, #0]
    1a06:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1a0a:	6013      	str	r3, [r2, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    1a0c:	4a41      	ldr	r2, [pc, #260]	; (1b14 <rtc_init+0x138>)
    1a0e:	4b41      	ldr	r3, [pc, #260]	; (1b14 <rtc_init+0x138>)
    1a10:	6a1b      	ldr	r3, [r3, #32]
    1a12:	f043 0301 	orr.w	r3, r3, #1
    1a16:	6213      	str	r3, [r2, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    1a18:	bf00      	nop
    1a1a:	4b3e      	ldr	r3, [pc, #248]	; (1b14 <rtc_init+0x138>)
    1a1c:	6a1b      	ldr	r3, [r3, #32]
    1a1e:	f003 0302 	and.w	r3, r3, #2
    1a22:	2b00      	cmp	r3, #0
    1a24:	d0f9      	beq.n	1a1a <rtc_init+0x3e>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    1a26:	4a3b      	ldr	r2, [pc, #236]	; (1b14 <rtc_init+0x138>)
    1a28:	4b3a      	ldr	r3, [pc, #232]	; (1b14 <rtc_init+0x138>)
    1a2a:	6a1b      	ldr	r3, [r3, #32]
    1a2c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1a30:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    1a32:	bf00      	nop
    1a34:	4b39      	ldr	r3, [pc, #228]	; (1b1c <rtc_init+0x140>)
    1a36:	685b      	ldr	r3, [r3, #4]
    1a38:	f003 0308 	and.w	r3, r3, #8
    1a3c:	2b00      	cmp	r3, #0
    1a3e:	d0f9      	beq.n	1a34 <rtc_init+0x58>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    1a40:	bf00      	nop
    1a42:	4b36      	ldr	r3, [pc, #216]	; (1b1c <rtc_init+0x140>)
    1a44:	685b      	ldr	r3, [r3, #4]
    1a46:	f003 0320 	and.w	r3, r3, #32
    1a4a:	2b00      	cmp	r3, #0
    1a4c:	d0f9      	beq.n	1a42 <rtc_init+0x66>
		RTC->CRL|=RTC_CRL_CNF;
    1a4e:	4a33      	ldr	r2, [pc, #204]	; (1b1c <rtc_init+0x140>)
    1a50:	4b32      	ldr	r3, [pc, #200]	; (1b1c <rtc_init+0x140>)
    1a52:	685b      	ldr	r3, [r3, #4]
    1a54:	f043 0310 	orr.w	r3, r3, #16
    1a58:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    1a5a:	bf00      	nop
    1a5c:	4b2f      	ldr	r3, [pc, #188]	; (1b1c <rtc_init+0x140>)
    1a5e:	685b      	ldr	r3, [r3, #4]
    1a60:	f003 0320 	and.w	r3, r3, #32
    1a64:	2b00      	cmp	r3, #0
    1a66:	d0f9      	beq.n	1a5c <rtc_init+0x80>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    1a68:	492c      	ldr	r1, [pc, #176]	; (1b1c <rtc_init+0x140>)
    1a6a:	4b2c      	ldr	r3, [pc, #176]	; (1b1c <rtc_init+0x140>)
    1a6c:	681a      	ldr	r2, [r3, #0]
    1a6e:	683b      	ldr	r3, [r7, #0]
    1a70:	4313      	orrs	r3, r2
    1a72:	600b      	str	r3, [r1, #0]
		_wait_rtc_write();
    1a74:	bf00      	nop
    1a76:	4b29      	ldr	r3, [pc, #164]	; (1b1c <rtc_init+0x140>)
    1a78:	685b      	ldr	r3, [r3, #4]
    1a7a:	f003 0320 	and.w	r3, r3, #32
    1a7e:	2b00      	cmp	r3, #0
    1a80:	d0f9      	beq.n	1a76 <rtc_init+0x9a>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    1a82:	4a26      	ldr	r2, [pc, #152]	; (1b1c <rtc_init+0x140>)
    1a84:	687b      	ldr	r3, [r7, #4]
    1a86:	03db      	lsls	r3, r3, #15
    1a88:	4925      	ldr	r1, [pc, #148]	; (1b20 <rtc_init+0x144>)
    1a8a:	fba1 1303 	umull	r1, r3, r1, r3
    1a8e:	099b      	lsrs	r3, r3, #6
    1a90:	3b01      	subs	r3, #1
    1a92:	b29b      	uxth	r3, r3
    1a94:	60d3      	str	r3, [r2, #12]
		_wait_rtc_write();
    1a96:	bf00      	nop
    1a98:	4b20      	ldr	r3, [pc, #128]	; (1b1c <rtc_init+0x140>)
    1a9a:	685b      	ldr	r3, [r3, #4]
    1a9c:	f003 0320 	and.w	r3, r3, #32
    1aa0:	2b00      	cmp	r3, #0
    1aa2:	d0f9      	beq.n	1a98 <rtc_init+0xbc>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    1aa4:	4a1d      	ldr	r2, [pc, #116]	; (1b1c <rtc_init+0x140>)
    1aa6:	687b      	ldr	r3, [r7, #4]
    1aa8:	03db      	lsls	r3, r3, #15
    1aaa:	491d      	ldr	r1, [pc, #116]	; (1b20 <rtc_init+0x144>)
    1aac:	fba1 1303 	umull	r1, r3, r1, r3
    1ab0:	099b      	lsrs	r3, r3, #6
    1ab2:	3b01      	subs	r3, #1
    1ab4:	0c1b      	lsrs	r3, r3, #16
    1ab6:	f003 030f 	and.w	r3, r3, #15
    1aba:	6093      	str	r3, [r2, #8]
		_wait_rtc_write();
    1abc:	bf00      	nop
    1abe:	4b17      	ldr	r3, [pc, #92]	; (1b1c <rtc_init+0x140>)
    1ac0:	685b      	ldr	r3, [r3, #4]
    1ac2:	f003 0320 	and.w	r3, r3, #32
    1ac6:	2b00      	cmp	r3, #0
    1ac8:	d0f9      	beq.n	1abe <rtc_init+0xe2>
		BKP->DR[0]=RTC_ACCESS_CODE;
    1aca:	4b11      	ldr	r3, [pc, #68]	; (1b10 <rtc_init+0x134>)
    1acc:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1ad0:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    1ad2:	4a12      	ldr	r2, [pc, #72]	; (1b1c <rtc_init+0x140>)
    1ad4:	4b11      	ldr	r3, [pc, #68]	; (1b1c <rtc_init+0x140>)
    1ad6:	685b      	ldr	r3, [r3, #4]
    1ad8:	f023 0310 	bic.w	r3, r3, #16
    1adc:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    1ade:	bf00      	nop
    1ae0:	4b0e      	ldr	r3, [pc, #56]	; (1b1c <rtc_init+0x140>)
    1ae2:	685b      	ldr	r3, [r3, #4]
    1ae4:	f003 0320 	and.w	r3, r3, #32
    1ae8:	2b00      	cmp	r3, #0
    1aea:	d0f9      	beq.n	1ae0 <rtc_init+0x104>
		PWR->CR&=~PWR_CR_DBP;
    1aec:	4a0a      	ldr	r2, [pc, #40]	; (1b18 <rtc_init+0x13c>)
    1aee:	4b0a      	ldr	r3, [pc, #40]	; (1b18 <rtc_init+0x13c>)
    1af0:	681b      	ldr	r3, [r3, #0]
    1af2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1af6:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    1af8:	210f      	movs	r1, #15
    1afa:	2003      	movs	r0, #3
    1afc:	f7ff fd4a 	bl	1594 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    1b00:	2003      	movs	r0, #3
    1b02:	f7ff fc8d 	bl	1420 <enable_interrupt>
}
    1b06:	bf00      	nop
    1b08:	3708      	adds	r7, #8
    1b0a:	46bd      	mov	sp, r7
    1b0c:	bd80      	pop	{r7, pc}
    1b0e:	bf00      	nop
    1b10:	40006c00 	.word	0x40006c00
    1b14:	40021000 	.word	0x40021000
    1b18:	40007000 	.word	0x40007000
    1b1c:	40002800 	.word	0x40002800
    1b20:	10624dd3 	.word	0x10624dd3

00001b24 <reset_backup_domain>:

// réinitialise le backup domain
inline void reset_backup_domain(){
    1b24:	b480      	push	{r7}
    1b26:	af00      	add	r7, sp, #0
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1b28:	4a0a      	ldr	r2, [pc, #40]	; (1b54 <reset_backup_domain+0x30>)
    1b2a:	4b0a      	ldr	r3, [pc, #40]	; (1b54 <reset_backup_domain+0x30>)
    1b2c:	69db      	ldr	r3, [r3, #28]
    1b2e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1b32:	61d3      	str	r3, [r2, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    1b34:	4a07      	ldr	r2, [pc, #28]	; (1b54 <reset_backup_domain+0x30>)
    1b36:	4b07      	ldr	r3, [pc, #28]	; (1b54 <reset_backup_domain+0x30>)
    1b38:	6a1b      	ldr	r3, [r3, #32]
    1b3a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1b3e:	6213      	str	r3, [r2, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    1b40:	4a04      	ldr	r2, [pc, #16]	; (1b54 <reset_backup_domain+0x30>)
    1b42:	4b04      	ldr	r3, [pc, #16]	; (1b54 <reset_backup_domain+0x30>)
    1b44:	6a1b      	ldr	r3, [r3, #32]
    1b46:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    1b4a:	6213      	str	r3, [r2, #32]
}
    1b4c:	bf00      	nop
    1b4e:	46bd      	mov	sp, r7
    1b50:	bc80      	pop	{r7}
    1b52:	4770      	bx	lr
    1b54:	40021000 	.word	0x40021000

00001b58 <rtc_clock_trim>:

// ajustement de la fréquence du clock RTC pour améliorer
// la précision.
void rtc_clock_trim(int trim){
    1b58:	b480      	push	{r7}
    1b5a:	b083      	sub	sp, #12
    1b5c:	af00      	add	r7, sp, #0
    1b5e:	6078      	str	r0, [r7, #4]
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1b60:	4a34      	ldr	r2, [pc, #208]	; (1c34 <rtc_clock_trim+0xdc>)
    1b62:	4b34      	ldr	r3, [pc, #208]	; (1c34 <rtc_clock_trim+0xdc>)
    1b64:	69db      	ldr	r3, [r3, #28]
    1b66:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1b6a:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    1b6c:	bf00      	nop
    1b6e:	4b32      	ldr	r3, [pc, #200]	; (1c38 <rtc_clock_trim+0xe0>)
    1b70:	685b      	ldr	r3, [r3, #4]
    1b72:	f003 0308 	and.w	r3, r3, #8
    1b76:	2b00      	cmp	r3, #0
    1b78:	d0f9      	beq.n	1b6e <rtc_clock_trim+0x16>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1b7a:	4a30      	ldr	r2, [pc, #192]	; (1c3c <rtc_clock_trim+0xe4>)
    1b7c:	4b2f      	ldr	r3, [pc, #188]	; (1c3c <rtc_clock_trim+0xe4>)
    1b7e:	681b      	ldr	r3, [r3, #0]
    1b80:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1b84:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    1b86:	4a2c      	ldr	r2, [pc, #176]	; (1c38 <rtc_clock_trim+0xe0>)
    1b88:	4b2b      	ldr	r3, [pc, #172]	; (1c38 <rtc_clock_trim+0xe0>)
    1b8a:	685b      	ldr	r3, [r3, #4]
    1b8c:	f043 0310 	orr.w	r3, r3, #16
    1b90:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    1b92:	4a2b      	ldr	r2, [pc, #172]	; (1c40 <rtc_clock_trim+0xe8>)
    1b94:	4b2a      	ldr	r3, [pc, #168]	; (1c40 <rtc_clock_trim+0xe8>)
    1b96:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    1b98:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1b9c:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    1b9e:	687b      	ldr	r3, [r7, #4]
    1ba0:	2b00      	cmp	r3, #0
    1ba2:	d10a      	bne.n	1bba <rtc_clock_trim+0x62>
		BKP->RTCCR=0;
    1ba4:	4b26      	ldr	r3, [pc, #152]	; (1c40 <rtc_clock_trim+0xe8>)
    1ba6:	2200      	movs	r2, #0
    1ba8:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    1baa:	4b23      	ldr	r3, [pc, #140]	; (1c38 <rtc_clock_trim+0xe0>)
    1bac:	f647 72ff 	movw	r2, #32767	; 0x7fff
    1bb0:	60da      	str	r2, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    1bb2:	4b21      	ldr	r3, [pc, #132]	; (1c38 <rtc_clock_trim+0xe0>)
    1bb4:	2200      	movs	r2, #0
    1bb6:	609a      	str	r2, [r3, #8]
    1bb8:	e023      	b.n	1c02 <rtc_clock_trim+0xaa>
	}else if (trim>0){// trop rapide on ralentie
    1bba:	687b      	ldr	r3, [r7, #4]
    1bbc:	2b00      	cmp	r3, #0
    1bbe:	dd0a      	ble.n	1bd6 <rtc_clock_trim+0x7e>
		trim&=0x7f;
    1bc0:	687b      	ldr	r3, [r7, #4]
    1bc2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1bc6:	607b      	str	r3, [r7, #4]
		BKP->RTCCR|=trim;
    1bc8:	491d      	ldr	r1, [pc, #116]	; (1c40 <rtc_clock_trim+0xe8>)
    1bca:	4b1d      	ldr	r3, [pc, #116]	; (1c40 <rtc_clock_trim+0xe8>)
    1bcc:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    1bce:	687b      	ldr	r3, [r7, #4]
    1bd0:	4313      	orrs	r3, r2
    1bd2:	62cb      	str	r3, [r1, #44]	; 0x2c
    1bd4:	e015      	b.n	1c02 <rtc_clock_trim+0xaa>
	}else{// trop lent on accélère.
		trim=-trim;
    1bd6:	687b      	ldr	r3, [r7, #4]
    1bd8:	425b      	negs	r3, r3
    1bda:	607b      	str	r3, [r7, #4]
		if (trim>0x7f) {trim=0x7f;}
    1bdc:	687b      	ldr	r3, [r7, #4]
    1bde:	2b7f      	cmp	r3, #127	; 0x7f
    1be0:	dd01      	ble.n	1be6 <rtc_clock_trim+0x8e>
    1be2:	237f      	movs	r3, #127	; 0x7f
    1be4:	607b      	str	r3, [r7, #4]
		BKP->RTCCR=0;
    1be6:	4b16      	ldr	r3, [pc, #88]	; (1c40 <rtc_clock_trim+0xe8>)
    1be8:	2200      	movs	r2, #0
    1bea:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    1bec:	4a12      	ldr	r2, [pc, #72]	; (1c38 <rtc_clock_trim+0xe0>)
    1bee:	687b      	ldr	r3, [r7, #4]
    1bf0:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    1bf4:	33ff      	adds	r3, #255	; 0xff
    1bf6:	f3c3 030e 	ubfx	r3, r3, #0, #15
    1bfa:	60d3      	str	r3, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    1bfc:	4b0e      	ldr	r3, [pc, #56]	; (1c38 <rtc_clock_trim+0xe0>)
    1bfe:	2200      	movs	r2, #0
    1c00:	609a      	str	r2, [r3, #8]
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    1c02:	4a0d      	ldr	r2, [pc, #52]	; (1c38 <rtc_clock_trim+0xe0>)
    1c04:	4b0c      	ldr	r3, [pc, #48]	; (1c38 <rtc_clock_trim+0xe0>)
    1c06:	685b      	ldr	r3, [r3, #4]
    1c08:	f023 0310 	bic.w	r3, r3, #16
    1c0c:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    1c0e:	bf00      	nop
    1c10:	4b09      	ldr	r3, [pc, #36]	; (1c38 <rtc_clock_trim+0xe0>)
    1c12:	685b      	ldr	r3, [r3, #4]
    1c14:	f003 0320 	and.w	r3, r3, #32
    1c18:	2b00      	cmp	r3, #0
    1c1a:	d0f9      	beq.n	1c10 <rtc_clock_trim+0xb8>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    1c1c:	4a07      	ldr	r2, [pc, #28]	; (1c3c <rtc_clock_trim+0xe4>)
    1c1e:	4b07      	ldr	r3, [pc, #28]	; (1c3c <rtc_clock_trim+0xe4>)
    1c20:	681b      	ldr	r3, [r3, #0]
    1c22:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1c26:	6013      	str	r3, [r2, #0]
}
    1c28:	bf00      	nop
    1c2a:	370c      	adds	r7, #12
    1c2c:	46bd      	mov	sp, r7
    1c2e:	bc80      	pop	{r7}
    1c30:	4770      	bx	lr
    1c32:	bf00      	nop
    1c34:	40021000 	.word	0x40021000
    1c38:	40002800 	.word	0x40002800
    1c3c:	40007000 	.word	0x40007000
    1c40:	40006c00 	.word	0x40006c00

00001c44 <rtc_set_alarm>:

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    1c44:	b480      	push	{r7}
    1c46:	b083      	sub	sp, #12
    1c48:	af00      	add	r7, sp, #0
    1c4a:	6078      	str	r0, [r7, #4]
}
    1c4c:	bf00      	nop
    1c4e:	370c      	adds	r7, #12
    1c50:	46bd      	mov	sp, r7
    1c52:	bc80      	pop	{r7}
    1c54:	4770      	bx	lr

00001c56 <str_to_date>:

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    1c56:	b580      	push	{r7, lr}
    1c58:	b084      	sub	sp, #16
    1c5a:	af00      	add	r7, sp, #0
    1c5c:	6078      	str	r0, [r7, #4]
    1c5e:	6039      	str	r1, [r7, #0]
	int i,n;
	
	i=0;
    1c60:	2300      	movs	r3, #0
    1c62:	60fb      	str	r3, [r7, #12]
	n=0;
    1c64:	2300      	movs	r3, #0
    1c66:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1c68:	e00f      	b.n	1c8a <str_to_date+0x34>
		n=n*10+date[i++]-'0';
    1c6a:	68ba      	ldr	r2, [r7, #8]
    1c6c:	4613      	mov	r3, r2
    1c6e:	009b      	lsls	r3, r3, #2
    1c70:	4413      	add	r3, r2
    1c72:	005b      	lsls	r3, r3, #1
    1c74:	4619      	mov	r1, r3
    1c76:	68fb      	ldr	r3, [r7, #12]
    1c78:	1c5a      	adds	r2, r3, #1
    1c7a:	60fa      	str	r2, [r7, #12]
    1c7c:	461a      	mov	r2, r3
    1c7e:	687b      	ldr	r3, [r7, #4]
    1c80:	4413      	add	r3, r2
    1c82:	781b      	ldrb	r3, [r3, #0]
    1c84:	440b      	add	r3, r1
    1c86:	3b30      	subs	r3, #48	; 0x30
    1c88:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1c8a:	68fb      	ldr	r3, [r7, #12]
    1c8c:	687a      	ldr	r2, [r7, #4]
    1c8e:	4413      	add	r3, r2
    1c90:	781b      	ldrb	r3, [r3, #0]
    1c92:	4618      	mov	r0, r3
    1c94:	f7fe fda5 	bl	7e2 <digit>
    1c98:	4603      	mov	r3, r0
    1c9a:	2b00      	cmp	r3, #0
    1c9c:	d1e5      	bne.n	1c6a <str_to_date+0x14>
	}
	if ((i<4) || date[i]!='/') return 0;
    1c9e:	68fb      	ldr	r3, [r7, #12]
    1ca0:	2b03      	cmp	r3, #3
    1ca2:	dd05      	ble.n	1cb0 <str_to_date+0x5a>
    1ca4:	68fb      	ldr	r3, [r7, #12]
    1ca6:	687a      	ldr	r2, [r7, #4]
    1ca8:	4413      	add	r3, r2
    1caa:	781b      	ldrb	r3, [r3, #0]
    1cac:	2b2f      	cmp	r3, #47	; 0x2f
    1cae:	d001      	beq.n	1cb4 <str_to_date+0x5e>
    1cb0:	2300      	movs	r3, #0
    1cb2:	e068      	b.n	1d86 <str_to_date+0x130>
	dt->year=n;
    1cb4:	68bb      	ldr	r3, [r7, #8]
    1cb6:	b29a      	uxth	r2, r3
    1cb8:	683b      	ldr	r3, [r7, #0]
    1cba:	811a      	strh	r2, [r3, #8]
	i++;
    1cbc:	68fb      	ldr	r3, [r7, #12]
    1cbe:	3301      	adds	r3, #1
    1cc0:	60fb      	str	r3, [r7, #12]
	n=0;
    1cc2:	2300      	movs	r3, #0
    1cc4:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1cc6:	e00f      	b.n	1ce8 <str_to_date+0x92>
		n=n*10+date[i++]-'0';
    1cc8:	68ba      	ldr	r2, [r7, #8]
    1cca:	4613      	mov	r3, r2
    1ccc:	009b      	lsls	r3, r3, #2
    1cce:	4413      	add	r3, r2
    1cd0:	005b      	lsls	r3, r3, #1
    1cd2:	4619      	mov	r1, r3
    1cd4:	68fb      	ldr	r3, [r7, #12]
    1cd6:	1c5a      	adds	r2, r3, #1
    1cd8:	60fa      	str	r2, [r7, #12]
    1cda:	461a      	mov	r2, r3
    1cdc:	687b      	ldr	r3, [r7, #4]
    1cde:	4413      	add	r3, r2
    1ce0:	781b      	ldrb	r3, [r3, #0]
    1ce2:	440b      	add	r3, r1
    1ce4:	3b30      	subs	r3, #48	; 0x30
    1ce6:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1ce8:	68fb      	ldr	r3, [r7, #12]
    1cea:	687a      	ldr	r2, [r7, #4]
    1cec:	4413      	add	r3, r2
    1cee:	781b      	ldrb	r3, [r3, #0]
    1cf0:	4618      	mov	r0, r3
    1cf2:	f7fe fd76 	bl	7e2 <digit>
    1cf6:	4603      	mov	r3, r0
    1cf8:	2b00      	cmp	r3, #0
    1cfa:	d1e5      	bne.n	1cc8 <str_to_date+0x72>
	}
	if ((i<7) || date[i]!='/') return 0;
    1cfc:	68fb      	ldr	r3, [r7, #12]
    1cfe:	2b06      	cmp	r3, #6
    1d00:	dd05      	ble.n	1d0e <str_to_date+0xb8>
    1d02:	68fb      	ldr	r3, [r7, #12]
    1d04:	687a      	ldr	r2, [r7, #4]
    1d06:	4413      	add	r3, r2
    1d08:	781b      	ldrb	r3, [r3, #0]
    1d0a:	2b2f      	cmp	r3, #47	; 0x2f
    1d0c:	d001      	beq.n	1d12 <str_to_date+0xbc>
    1d0e:	2300      	movs	r3, #0
    1d10:	e039      	b.n	1d86 <str_to_date+0x130>
	dt->month=n;
    1d12:	68bb      	ldr	r3, [r7, #8]
    1d14:	b2db      	uxtb	r3, r3
    1d16:	f003 030f 	and.w	r3, r3, #15
    1d1a:	b2d9      	uxtb	r1, r3
    1d1c:	683a      	ldr	r2, [r7, #0]
    1d1e:	8853      	ldrh	r3, [r2, #2]
    1d20:	f361 1389 	bfi	r3, r1, #6, #4
    1d24:	8053      	strh	r3, [r2, #2]
	n=0;
    1d26:	2300      	movs	r3, #0
    1d28:	60bb      	str	r3, [r7, #8]
	i++;
    1d2a:	68fb      	ldr	r3, [r7, #12]
    1d2c:	3301      	adds	r3, #1
    1d2e:	60fb      	str	r3, [r7, #12]
	while (digit(date[i])){
    1d30:	e00f      	b.n	1d52 <str_to_date+0xfc>
		n=n*10+date[i++]-'0';
    1d32:	68ba      	ldr	r2, [r7, #8]
    1d34:	4613      	mov	r3, r2
    1d36:	009b      	lsls	r3, r3, #2
    1d38:	4413      	add	r3, r2
    1d3a:	005b      	lsls	r3, r3, #1
    1d3c:	4619      	mov	r1, r3
    1d3e:	68fb      	ldr	r3, [r7, #12]
    1d40:	1c5a      	adds	r2, r3, #1
    1d42:	60fa      	str	r2, [r7, #12]
    1d44:	461a      	mov	r2, r3
    1d46:	687b      	ldr	r3, [r7, #4]
    1d48:	4413      	add	r3, r2
    1d4a:	781b      	ldrb	r3, [r3, #0]
    1d4c:	440b      	add	r3, r1
    1d4e:	3b30      	subs	r3, #48	; 0x30
    1d50:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1d52:	68fb      	ldr	r3, [r7, #12]
    1d54:	687a      	ldr	r2, [r7, #4]
    1d56:	4413      	add	r3, r2
    1d58:	781b      	ldrb	r3, [r3, #0]
    1d5a:	4618      	mov	r0, r3
    1d5c:	f7fe fd41 	bl	7e2 <digit>
    1d60:	4603      	mov	r3, r0
    1d62:	2b00      	cmp	r3, #0
    1d64:	d1e5      	bne.n	1d32 <str_to_date+0xdc>
	}
	if (i<10) return 0;
    1d66:	68fb      	ldr	r3, [r7, #12]
    1d68:	2b09      	cmp	r3, #9
    1d6a:	dc01      	bgt.n	1d70 <str_to_date+0x11a>
    1d6c:	2300      	movs	r3, #0
    1d6e:	e00a      	b.n	1d86 <str_to_date+0x130>
	dt->day=n;
    1d70:	68bb      	ldr	r3, [r7, #8]
    1d72:	b2db      	uxtb	r3, r3
    1d74:	f003 031f 	and.w	r3, r3, #31
    1d78:	b2d9      	uxtb	r1, r3
    1d7a:	683a      	ldr	r2, [r7, #0]
    1d7c:	7893      	ldrb	r3, [r2, #2]
    1d7e:	f361 0345 	bfi	r3, r1, #1, #5
    1d82:	7093      	strb	r3, [r2, #2]
	return 1;
    1d84:	2301      	movs	r3, #1
}
    1d86:	4618      	mov	r0, r3
    1d88:	3710      	adds	r7, #16
    1d8a:	46bd      	mov	sp, r7
    1d8c:	bd80      	pop	{r7, pc}

00001d8e <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    1d8e:	b580      	push	{r7, lr}
    1d90:	b084      	sub	sp, #16
    1d92:	af00      	add	r7, sp, #0
    1d94:	6078      	str	r0, [r7, #4]
    1d96:	6039      	str	r1, [r7, #0]
	int i;
	unsigned char n;
	
	i=0;
    1d98:	2300      	movs	r3, #0
    1d9a:	60fb      	str	r3, [r7, #12]
	n=0;
    1d9c:	2300      	movs	r3, #0
    1d9e:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1da0:	e010      	b.n	1dc4 <str_to_time+0x36>
		n=n*10+time[i++]-'0';
    1da2:	7afb      	ldrb	r3, [r7, #11]
    1da4:	461a      	mov	r2, r3
    1da6:	0092      	lsls	r2, r2, #2
    1da8:	4413      	add	r3, r2
    1daa:	005b      	lsls	r3, r3, #1
    1dac:	b2da      	uxtb	r2, r3
    1dae:	68fb      	ldr	r3, [r7, #12]
    1db0:	1c59      	adds	r1, r3, #1
    1db2:	60f9      	str	r1, [r7, #12]
    1db4:	4619      	mov	r1, r3
    1db6:	687b      	ldr	r3, [r7, #4]
    1db8:	440b      	add	r3, r1
    1dba:	781b      	ldrb	r3, [r3, #0]
    1dbc:	4413      	add	r3, r2
    1dbe:	b2db      	uxtb	r3, r3
    1dc0:	3b30      	subs	r3, #48	; 0x30
    1dc2:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1dc4:	68fb      	ldr	r3, [r7, #12]
    1dc6:	687a      	ldr	r2, [r7, #4]
    1dc8:	4413      	add	r3, r2
    1dca:	781b      	ldrb	r3, [r3, #0]
    1dcc:	4618      	mov	r0, r3
    1dce:	f7fe fd08 	bl	7e2 <digit>
    1dd2:	4603      	mov	r3, r0
    1dd4:	2b00      	cmp	r3, #0
    1dd6:	d1e4      	bne.n	1da2 <str_to_time+0x14>
	}
	if ((n>23) || time[i]!=':') return 0;
    1dd8:	7afb      	ldrb	r3, [r7, #11]
    1dda:	2b17      	cmp	r3, #23
    1ddc:	d805      	bhi.n	1dea <str_to_time+0x5c>
    1dde:	68fb      	ldr	r3, [r7, #12]
    1de0:	687a      	ldr	r2, [r7, #4]
    1de2:	4413      	add	r3, r2
    1de4:	781b      	ldrb	r3, [r3, #0]
    1de6:	2b3a      	cmp	r3, #58	; 0x3a
    1de8:	d001      	beq.n	1dee <str_to_time+0x60>
    1dea:	2300      	movs	r3, #0
    1dec:	e06d      	b.n	1eca <str_to_time+0x13c>
	dt->hour=n;
    1dee:	7afb      	ldrb	r3, [r7, #11]
    1df0:	f003 031f 	and.w	r3, r3, #31
    1df4:	b2d9      	uxtb	r1, r3
    1df6:	683a      	ldr	r2, [r7, #0]
    1df8:	6813      	ldr	r3, [r2, #0]
    1dfa:	f361 3310 	bfi	r3, r1, #12, #5
    1dfe:	6013      	str	r3, [r2, #0]
	i++;
    1e00:	68fb      	ldr	r3, [r7, #12]
    1e02:	3301      	adds	r3, #1
    1e04:	60fb      	str	r3, [r7, #12]
	n=0;
    1e06:	2300      	movs	r3, #0
    1e08:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1e0a:	e010      	b.n	1e2e <str_to_time+0xa0>
		n=n*10+time[i++]-'0';
    1e0c:	7afb      	ldrb	r3, [r7, #11]
    1e0e:	461a      	mov	r2, r3
    1e10:	0092      	lsls	r2, r2, #2
    1e12:	4413      	add	r3, r2
    1e14:	005b      	lsls	r3, r3, #1
    1e16:	b2da      	uxtb	r2, r3
    1e18:	68fb      	ldr	r3, [r7, #12]
    1e1a:	1c59      	adds	r1, r3, #1
    1e1c:	60f9      	str	r1, [r7, #12]
    1e1e:	4619      	mov	r1, r3
    1e20:	687b      	ldr	r3, [r7, #4]
    1e22:	440b      	add	r3, r1
    1e24:	781b      	ldrb	r3, [r3, #0]
    1e26:	4413      	add	r3, r2
    1e28:	b2db      	uxtb	r3, r3
    1e2a:	3b30      	subs	r3, #48	; 0x30
    1e2c:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1e2e:	68fb      	ldr	r3, [r7, #12]
    1e30:	687a      	ldr	r2, [r7, #4]
    1e32:	4413      	add	r3, r2
    1e34:	781b      	ldrb	r3, [r3, #0]
    1e36:	4618      	mov	r0, r3
    1e38:	f7fe fcd3 	bl	7e2 <digit>
    1e3c:	4603      	mov	r3, r0
    1e3e:	2b00      	cmp	r3, #0
    1e40:	d1e4      	bne.n	1e0c <str_to_time+0x7e>
	}
	if ((n>59) || time[i]!=':') return 0;
    1e42:	7afb      	ldrb	r3, [r7, #11]
    1e44:	2b3b      	cmp	r3, #59	; 0x3b
    1e46:	d805      	bhi.n	1e54 <str_to_time+0xc6>
    1e48:	68fb      	ldr	r3, [r7, #12]
    1e4a:	687a      	ldr	r2, [r7, #4]
    1e4c:	4413      	add	r3, r2
    1e4e:	781b      	ldrb	r3, [r3, #0]
    1e50:	2b3a      	cmp	r3, #58	; 0x3a
    1e52:	d001      	beq.n	1e58 <str_to_time+0xca>
    1e54:	2300      	movs	r3, #0
    1e56:	e038      	b.n	1eca <str_to_time+0x13c>
	dt->minute=n;
    1e58:	7afb      	ldrb	r3, [r7, #11]
    1e5a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1e5e:	b2d9      	uxtb	r1, r3
    1e60:	683a      	ldr	r2, [r7, #0]
    1e62:	8813      	ldrh	r3, [r2, #0]
    1e64:	f361 138b 	bfi	r3, r1, #6, #6
    1e68:	8013      	strh	r3, [r2, #0]
	n=0;
    1e6a:	2300      	movs	r3, #0
    1e6c:	72fb      	strb	r3, [r7, #11]
	i++;
    1e6e:	68fb      	ldr	r3, [r7, #12]
    1e70:	3301      	adds	r3, #1
    1e72:	60fb      	str	r3, [r7, #12]
	while (digit(time[i])){
    1e74:	e010      	b.n	1e98 <str_to_time+0x10a>
		n=n*10+time[i++]-'0';
    1e76:	7afb      	ldrb	r3, [r7, #11]
    1e78:	461a      	mov	r2, r3
    1e7a:	0092      	lsls	r2, r2, #2
    1e7c:	4413      	add	r3, r2
    1e7e:	005b      	lsls	r3, r3, #1
    1e80:	b2da      	uxtb	r2, r3
    1e82:	68fb      	ldr	r3, [r7, #12]
    1e84:	1c59      	adds	r1, r3, #1
    1e86:	60f9      	str	r1, [r7, #12]
    1e88:	4619      	mov	r1, r3
    1e8a:	687b      	ldr	r3, [r7, #4]
    1e8c:	440b      	add	r3, r1
    1e8e:	781b      	ldrb	r3, [r3, #0]
    1e90:	4413      	add	r3, r2
    1e92:	b2db      	uxtb	r3, r3
    1e94:	3b30      	subs	r3, #48	; 0x30
    1e96:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1e98:	68fb      	ldr	r3, [r7, #12]
    1e9a:	687a      	ldr	r2, [r7, #4]
    1e9c:	4413      	add	r3, r2
    1e9e:	781b      	ldrb	r3, [r3, #0]
    1ea0:	4618      	mov	r0, r3
    1ea2:	f7fe fc9e 	bl	7e2 <digit>
    1ea6:	4603      	mov	r3, r0
    1ea8:	2b00      	cmp	r3, #0
    1eaa:	d1e4      	bne.n	1e76 <str_to_time+0xe8>
	}
	if (n>59) return 0;
    1eac:	7afb      	ldrb	r3, [r7, #11]
    1eae:	2b3b      	cmp	r3, #59	; 0x3b
    1eb0:	d901      	bls.n	1eb6 <str_to_time+0x128>
    1eb2:	2300      	movs	r3, #0
    1eb4:	e009      	b.n	1eca <str_to_time+0x13c>
	dt->second=n;
    1eb6:	7afb      	ldrb	r3, [r7, #11]
    1eb8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1ebc:	b2d9      	uxtb	r1, r3
    1ebe:	683a      	ldr	r2, [r7, #0]
    1ec0:	7813      	ldrb	r3, [r2, #0]
    1ec2:	f361 0305 	bfi	r3, r1, #0, #6
    1ec6:	7013      	strb	r3, [r2, #0]
	return 1;
    1ec8:	2301      	movs	r3, #1
}
    1eca:	4618      	mov	r0, r3
    1ecc:	3710      	adds	r7, #16
    1ece:	46bd      	mov	sp, r7
    1ed0:	bd80      	pop	{r7, pc}

00001ed2 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    1ed2:	b480      	push	{r7}
    1ed4:	b085      	sub	sp, #20
    1ed6:	af00      	add	r7, sp, #0
    1ed8:	6078      	str	r0, [r7, #4]
    1eda:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    1edc:	2300      	movs	r3, #0
    1ede:	60fb      	str	r3, [r7, #12]
	
	n=dt->year;
    1ee0:	687b      	ldr	r3, [r7, #4]
    1ee2:	891b      	ldrh	r3, [r3, #8]
    1ee4:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/1000+'0';
    1ee6:	68fb      	ldr	r3, [r7, #12]
    1ee8:	1c5a      	adds	r2, r3, #1
    1eea:	60fa      	str	r2, [r7, #12]
    1eec:	461a      	mov	r2, r3
    1eee:	683b      	ldr	r3, [r7, #0]
    1ef0:	4413      	add	r3, r2
    1ef2:	68ba      	ldr	r2, [r7, #8]
    1ef4:	495d      	ldr	r1, [pc, #372]	; (206c <date_str+0x19a>)
    1ef6:	fba1 1202 	umull	r1, r2, r1, r2
    1efa:	0992      	lsrs	r2, r2, #6
    1efc:	b2d2      	uxtb	r2, r2
    1efe:	3230      	adds	r2, #48	; 0x30
    1f00:	b2d2      	uxtb	r2, r2
    1f02:	701a      	strb	r2, [r3, #0]
	n%=1000;
    1f04:	68bb      	ldr	r3, [r7, #8]
    1f06:	4a59      	ldr	r2, [pc, #356]	; (206c <date_str+0x19a>)
    1f08:	fba2 1203 	umull	r1, r2, r2, r3
    1f0c:	0992      	lsrs	r2, r2, #6
    1f0e:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    1f12:	fb01 f202 	mul.w	r2, r1, r2
    1f16:	1a9b      	subs	r3, r3, r2
    1f18:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/100+'0';
    1f1a:	68fb      	ldr	r3, [r7, #12]
    1f1c:	1c5a      	adds	r2, r3, #1
    1f1e:	60fa      	str	r2, [r7, #12]
    1f20:	461a      	mov	r2, r3
    1f22:	683b      	ldr	r3, [r7, #0]
    1f24:	4413      	add	r3, r2
    1f26:	68ba      	ldr	r2, [r7, #8]
    1f28:	4951      	ldr	r1, [pc, #324]	; (2070 <date_str+0x19e>)
    1f2a:	fba1 1202 	umull	r1, r2, r1, r2
    1f2e:	0952      	lsrs	r2, r2, #5
    1f30:	b2d2      	uxtb	r2, r2
    1f32:	3230      	adds	r2, #48	; 0x30
    1f34:	b2d2      	uxtb	r2, r2
    1f36:	701a      	strb	r2, [r3, #0]
	n%=100;
    1f38:	68bb      	ldr	r3, [r7, #8]
    1f3a:	4a4d      	ldr	r2, [pc, #308]	; (2070 <date_str+0x19e>)
    1f3c:	fba2 1203 	umull	r1, r2, r2, r3
    1f40:	0952      	lsrs	r2, r2, #5
    1f42:	2164      	movs	r1, #100	; 0x64
    1f44:	fb01 f202 	mul.w	r2, r1, r2
    1f48:	1a9b      	subs	r3, r3, r2
    1f4a:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    1f4c:	68fb      	ldr	r3, [r7, #12]
    1f4e:	1c5a      	adds	r2, r3, #1
    1f50:	60fa      	str	r2, [r7, #12]
    1f52:	461a      	mov	r2, r3
    1f54:	683b      	ldr	r3, [r7, #0]
    1f56:	4413      	add	r3, r2
    1f58:	68ba      	ldr	r2, [r7, #8]
    1f5a:	4946      	ldr	r1, [pc, #280]	; (2074 <date_str+0x1a2>)
    1f5c:	fba1 1202 	umull	r1, r2, r1, r2
    1f60:	08d2      	lsrs	r2, r2, #3
    1f62:	b2d2      	uxtb	r2, r2
    1f64:	3230      	adds	r2, #48	; 0x30
    1f66:	b2d2      	uxtb	r2, r2
    1f68:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    1f6a:	68fb      	ldr	r3, [r7, #12]
    1f6c:	1c5a      	adds	r2, r3, #1
    1f6e:	60fa      	str	r2, [r7, #12]
    1f70:	461a      	mov	r2, r3
    1f72:	683b      	ldr	r3, [r7, #0]
    1f74:	1898      	adds	r0, r3, r2
    1f76:	68b9      	ldr	r1, [r7, #8]
    1f78:	4b3e      	ldr	r3, [pc, #248]	; (2074 <date_str+0x1a2>)
    1f7a:	fba3 2301 	umull	r2, r3, r3, r1
    1f7e:	08da      	lsrs	r2, r3, #3
    1f80:	4613      	mov	r3, r2
    1f82:	009b      	lsls	r3, r3, #2
    1f84:	4413      	add	r3, r2
    1f86:	005b      	lsls	r3, r3, #1
    1f88:	1aca      	subs	r2, r1, r3
    1f8a:	b2d3      	uxtb	r3, r2
    1f8c:	3330      	adds	r3, #48	; 0x30
    1f8e:	b2db      	uxtb	r3, r3
    1f90:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    1f92:	68fb      	ldr	r3, [r7, #12]
    1f94:	1c5a      	adds	r2, r3, #1
    1f96:	60fa      	str	r2, [r7, #12]
    1f98:	461a      	mov	r2, r3
    1f9a:	683b      	ldr	r3, [r7, #0]
    1f9c:	4413      	add	r3, r2
    1f9e:	222f      	movs	r2, #47	; 0x2f
    1fa0:	701a      	strb	r2, [r3, #0]
	n=dt->month;
    1fa2:	687b      	ldr	r3, [r7, #4]
    1fa4:	885b      	ldrh	r3, [r3, #2]
    1fa6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1faa:	b2db      	uxtb	r3, r3
    1fac:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    1fae:	68fb      	ldr	r3, [r7, #12]
    1fb0:	1c5a      	adds	r2, r3, #1
    1fb2:	60fa      	str	r2, [r7, #12]
    1fb4:	461a      	mov	r2, r3
    1fb6:	683b      	ldr	r3, [r7, #0]
    1fb8:	4413      	add	r3, r2
    1fba:	68ba      	ldr	r2, [r7, #8]
    1fbc:	492d      	ldr	r1, [pc, #180]	; (2074 <date_str+0x1a2>)
    1fbe:	fba1 1202 	umull	r1, r2, r1, r2
    1fc2:	08d2      	lsrs	r2, r2, #3
    1fc4:	b2d2      	uxtb	r2, r2
    1fc6:	3230      	adds	r2, #48	; 0x30
    1fc8:	b2d2      	uxtb	r2, r2
    1fca:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    1fcc:	68fb      	ldr	r3, [r7, #12]
    1fce:	1c5a      	adds	r2, r3, #1
    1fd0:	60fa      	str	r2, [r7, #12]
    1fd2:	461a      	mov	r2, r3
    1fd4:	683b      	ldr	r3, [r7, #0]
    1fd6:	1898      	adds	r0, r3, r2
    1fd8:	68b9      	ldr	r1, [r7, #8]
    1fda:	4b26      	ldr	r3, [pc, #152]	; (2074 <date_str+0x1a2>)
    1fdc:	fba3 2301 	umull	r2, r3, r3, r1
    1fe0:	08da      	lsrs	r2, r3, #3
    1fe2:	4613      	mov	r3, r2
    1fe4:	009b      	lsls	r3, r3, #2
    1fe6:	4413      	add	r3, r2
    1fe8:	005b      	lsls	r3, r3, #1
    1fea:	1aca      	subs	r2, r1, r3
    1fec:	b2d3      	uxtb	r3, r2
    1fee:	3330      	adds	r3, #48	; 0x30
    1ff0:	b2db      	uxtb	r3, r3
    1ff2:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    1ff4:	68fb      	ldr	r3, [r7, #12]
    1ff6:	1c5a      	adds	r2, r3, #1
    1ff8:	60fa      	str	r2, [r7, #12]
    1ffa:	461a      	mov	r2, r3
    1ffc:	683b      	ldr	r3, [r7, #0]
    1ffe:	4413      	add	r3, r2
    2000:	222f      	movs	r2, #47	; 0x2f
    2002:	701a      	strb	r2, [r3, #0]
	n=dt->day;
    2004:	687b      	ldr	r3, [r7, #4]
    2006:	789b      	ldrb	r3, [r3, #2]
    2008:	f3c3 0344 	ubfx	r3, r3, #1, #5
    200c:	b2db      	uxtb	r3, r3
    200e:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    2010:	68fb      	ldr	r3, [r7, #12]
    2012:	1c5a      	adds	r2, r3, #1
    2014:	60fa      	str	r2, [r7, #12]
    2016:	461a      	mov	r2, r3
    2018:	683b      	ldr	r3, [r7, #0]
    201a:	4413      	add	r3, r2
    201c:	68ba      	ldr	r2, [r7, #8]
    201e:	4915      	ldr	r1, [pc, #84]	; (2074 <date_str+0x1a2>)
    2020:	fba1 1202 	umull	r1, r2, r1, r2
    2024:	08d2      	lsrs	r2, r2, #3
    2026:	b2d2      	uxtb	r2, r2
    2028:	3230      	adds	r2, #48	; 0x30
    202a:	b2d2      	uxtb	r2, r2
    202c:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    202e:	68fb      	ldr	r3, [r7, #12]
    2030:	1c5a      	adds	r2, r3, #1
    2032:	60fa      	str	r2, [r7, #12]
    2034:	461a      	mov	r2, r3
    2036:	683b      	ldr	r3, [r7, #0]
    2038:	1898      	adds	r0, r3, r2
    203a:	68b9      	ldr	r1, [r7, #8]
    203c:	4b0d      	ldr	r3, [pc, #52]	; (2074 <date_str+0x1a2>)
    203e:	fba3 2301 	umull	r2, r3, r3, r1
    2042:	08da      	lsrs	r2, r3, #3
    2044:	4613      	mov	r3, r2
    2046:	009b      	lsls	r3, r3, #2
    2048:	4413      	add	r3, r2
    204a:	005b      	lsls	r3, r3, #1
    204c:	1aca      	subs	r2, r1, r3
    204e:	b2d3      	uxtb	r3, r2
    2050:	3330      	adds	r3, #48	; 0x30
    2052:	b2db      	uxtb	r3, r3
    2054:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    2056:	68fb      	ldr	r3, [r7, #12]
    2058:	683a      	ldr	r2, [r7, #0]
    205a:	4413      	add	r3, r2
    205c:	2200      	movs	r2, #0
    205e:	701a      	strb	r2, [r3, #0]

}
    2060:	bf00      	nop
    2062:	3714      	adds	r7, #20
    2064:	46bd      	mov	sp, r7
    2066:	bc80      	pop	{r7}
    2068:	4770      	bx	lr
    206a:	bf00      	nop
    206c:	10624dd3 	.word	0x10624dd3
    2070:	51eb851f 	.word	0x51eb851f
    2074:	cccccccd 	.word	0xcccccccd

00002078 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    2078:	b480      	push	{r7}
    207a:	b085      	sub	sp, #20
    207c:	af00      	add	r7, sp, #0
    207e:	6078      	str	r0, [r7, #4]
    2080:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    2082:	2300      	movs	r3, #0
    2084:	60fb      	str	r3, [r7, #12]
	
	n=dt->hour;
    2086:	687b      	ldr	r3, [r7, #4]
    2088:	681b      	ldr	r3, [r3, #0]
    208a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    208e:	b2db      	uxtb	r3, r3
    2090:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    2092:	68fb      	ldr	r3, [r7, #12]
    2094:	1c5a      	adds	r2, r3, #1
    2096:	60fa      	str	r2, [r7, #12]
    2098:	461a      	mov	r2, r3
    209a:	683b      	ldr	r3, [r7, #0]
    209c:	4413      	add	r3, r2
    209e:	68ba      	ldr	r2, [r7, #8]
    20a0:	4943      	ldr	r1, [pc, #268]	; (21b0 <time_str+0x138>)
    20a2:	fba1 1202 	umull	r1, r2, r1, r2
    20a6:	08d2      	lsrs	r2, r2, #3
    20a8:	b2d2      	uxtb	r2, r2
    20aa:	3230      	adds	r2, #48	; 0x30
    20ac:	b2d2      	uxtb	r2, r2
    20ae:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    20b0:	68fb      	ldr	r3, [r7, #12]
    20b2:	1c5a      	adds	r2, r3, #1
    20b4:	60fa      	str	r2, [r7, #12]
    20b6:	461a      	mov	r2, r3
    20b8:	683b      	ldr	r3, [r7, #0]
    20ba:	1898      	adds	r0, r3, r2
    20bc:	68b9      	ldr	r1, [r7, #8]
    20be:	4b3c      	ldr	r3, [pc, #240]	; (21b0 <time_str+0x138>)
    20c0:	fba3 2301 	umull	r2, r3, r3, r1
    20c4:	08da      	lsrs	r2, r3, #3
    20c6:	4613      	mov	r3, r2
    20c8:	009b      	lsls	r3, r3, #2
    20ca:	4413      	add	r3, r2
    20cc:	005b      	lsls	r3, r3, #1
    20ce:	1aca      	subs	r2, r1, r3
    20d0:	b2d3      	uxtb	r3, r2
    20d2:	3330      	adds	r3, #48	; 0x30
    20d4:	b2db      	uxtb	r3, r3
    20d6:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    20d8:	68fb      	ldr	r3, [r7, #12]
    20da:	1c5a      	adds	r2, r3, #1
    20dc:	60fa      	str	r2, [r7, #12]
    20de:	461a      	mov	r2, r3
    20e0:	683b      	ldr	r3, [r7, #0]
    20e2:	4413      	add	r3, r2
    20e4:	223a      	movs	r2, #58	; 0x3a
    20e6:	701a      	strb	r2, [r3, #0]
	n=dt->minute;
    20e8:	687b      	ldr	r3, [r7, #4]
    20ea:	881b      	ldrh	r3, [r3, #0]
    20ec:	f3c3 1385 	ubfx	r3, r3, #6, #6
    20f0:	b2db      	uxtb	r3, r3
    20f2:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    20f4:	68fb      	ldr	r3, [r7, #12]
    20f6:	1c5a      	adds	r2, r3, #1
    20f8:	60fa      	str	r2, [r7, #12]
    20fa:	461a      	mov	r2, r3
    20fc:	683b      	ldr	r3, [r7, #0]
    20fe:	4413      	add	r3, r2
    2100:	68ba      	ldr	r2, [r7, #8]
    2102:	492b      	ldr	r1, [pc, #172]	; (21b0 <time_str+0x138>)
    2104:	fba1 1202 	umull	r1, r2, r1, r2
    2108:	08d2      	lsrs	r2, r2, #3
    210a:	b2d2      	uxtb	r2, r2
    210c:	3230      	adds	r2, #48	; 0x30
    210e:	b2d2      	uxtb	r2, r2
    2110:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    2112:	68fb      	ldr	r3, [r7, #12]
    2114:	1c5a      	adds	r2, r3, #1
    2116:	60fa      	str	r2, [r7, #12]
    2118:	461a      	mov	r2, r3
    211a:	683b      	ldr	r3, [r7, #0]
    211c:	1898      	adds	r0, r3, r2
    211e:	68b9      	ldr	r1, [r7, #8]
    2120:	4b23      	ldr	r3, [pc, #140]	; (21b0 <time_str+0x138>)
    2122:	fba3 2301 	umull	r2, r3, r3, r1
    2126:	08da      	lsrs	r2, r3, #3
    2128:	4613      	mov	r3, r2
    212a:	009b      	lsls	r3, r3, #2
    212c:	4413      	add	r3, r2
    212e:	005b      	lsls	r3, r3, #1
    2130:	1aca      	subs	r2, r1, r3
    2132:	b2d3      	uxtb	r3, r2
    2134:	3330      	adds	r3, #48	; 0x30
    2136:	b2db      	uxtb	r3, r3
    2138:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    213a:	68fb      	ldr	r3, [r7, #12]
    213c:	1c5a      	adds	r2, r3, #1
    213e:	60fa      	str	r2, [r7, #12]
    2140:	461a      	mov	r2, r3
    2142:	683b      	ldr	r3, [r7, #0]
    2144:	4413      	add	r3, r2
    2146:	223a      	movs	r2, #58	; 0x3a
    2148:	701a      	strb	r2, [r3, #0]
	n=dt->second;
    214a:	687b      	ldr	r3, [r7, #4]
    214c:	781b      	ldrb	r3, [r3, #0]
    214e:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2152:	b2db      	uxtb	r3, r3
    2154:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    2156:	68fb      	ldr	r3, [r7, #12]
    2158:	1c5a      	adds	r2, r3, #1
    215a:	60fa      	str	r2, [r7, #12]
    215c:	461a      	mov	r2, r3
    215e:	683b      	ldr	r3, [r7, #0]
    2160:	4413      	add	r3, r2
    2162:	68ba      	ldr	r2, [r7, #8]
    2164:	4912      	ldr	r1, [pc, #72]	; (21b0 <time_str+0x138>)
    2166:	fba1 1202 	umull	r1, r2, r1, r2
    216a:	08d2      	lsrs	r2, r2, #3
    216c:	b2d2      	uxtb	r2, r2
    216e:	3230      	adds	r2, #48	; 0x30
    2170:	b2d2      	uxtb	r2, r2
    2172:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    2174:	68fb      	ldr	r3, [r7, #12]
    2176:	1c5a      	adds	r2, r3, #1
    2178:	60fa      	str	r2, [r7, #12]
    217a:	461a      	mov	r2, r3
    217c:	683b      	ldr	r3, [r7, #0]
    217e:	1898      	adds	r0, r3, r2
    2180:	68b9      	ldr	r1, [r7, #8]
    2182:	4b0b      	ldr	r3, [pc, #44]	; (21b0 <time_str+0x138>)
    2184:	fba3 2301 	umull	r2, r3, r3, r1
    2188:	08da      	lsrs	r2, r3, #3
    218a:	4613      	mov	r3, r2
    218c:	009b      	lsls	r3, r3, #2
    218e:	4413      	add	r3, r2
    2190:	005b      	lsls	r3, r3, #1
    2192:	1aca      	subs	r2, r1, r3
    2194:	b2d3      	uxtb	r3, r2
    2196:	3330      	adds	r3, #48	; 0x30
    2198:	b2db      	uxtb	r3, r3
    219a:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    219c:	68fb      	ldr	r3, [r7, #12]
    219e:	683a      	ldr	r2, [r7, #0]
    21a0:	4413      	add	r3, r2
    21a2:	2200      	movs	r2, #0
    21a4:	701a      	strb	r2, [r3, #0]
}
    21a6:	bf00      	nop
    21a8:	3714      	adds	r7, #20
    21aa:	46bd      	mov	sp, r7
    21ac:	bc80      	pop	{r7}
    21ae:	4770      	bx	lr
    21b0:	cccccccd 	.word	0xcccccccd

000021b4 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    21b4:	b580      	push	{r7, lr}
    21b6:	b084      	sub	sp, #16
    21b8:	af00      	add	r7, sp, #0
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    21ba:	463b      	mov	r3, r7
    21bc:	4618      	mov	r0, r3
    21be:	f7ff fa69 	bl	1694 <get_date_time>
	t.fields.second=dt.second/2;
    21c2:	783b      	ldrb	r3, [r7, #0]
    21c4:	f3c3 0305 	ubfx	r3, r3, #0, #6
    21c8:	b2db      	uxtb	r3, r3
    21ca:	0fda      	lsrs	r2, r3, #31
    21cc:	4413      	add	r3, r2
    21ce:	105b      	asrs	r3, r3, #1
    21d0:	b2db      	uxtb	r3, r3
    21d2:	f003 031f 	and.w	r3, r3, #31
    21d6:	b2da      	uxtb	r2, r3
    21d8:	7b3b      	ldrb	r3, [r7, #12]
    21da:	f362 0304 	bfi	r3, r2, #0, #5
    21de:	733b      	strb	r3, [r7, #12]
	t.fields.minute=dt.minute;
    21e0:	883b      	ldrh	r3, [r7, #0]
    21e2:	f3c3 1385 	ubfx	r3, r3, #6, #6
    21e6:	b2da      	uxtb	r2, r3
    21e8:	89bb      	ldrh	r3, [r7, #12]
    21ea:	f362 134a 	bfi	r3, r2, #5, #6
    21ee:	81bb      	strh	r3, [r7, #12]
	t.fields.hour=dt.hour;
    21f0:	683b      	ldr	r3, [r7, #0]
    21f2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    21f6:	b2da      	uxtb	r2, r3
    21f8:	7b7b      	ldrb	r3, [r7, #13]
    21fa:	f362 03c7 	bfi	r3, r2, #3, #5
    21fe:	737b      	strb	r3, [r7, #13]
	t.fields.day=dt.day;
    2200:	78bb      	ldrb	r3, [r7, #2]
    2202:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2206:	b2da      	uxtb	r2, r3
    2208:	7bbb      	ldrb	r3, [r7, #14]
    220a:	f362 0304 	bfi	r3, r2, #0, #5
    220e:	73bb      	strb	r3, [r7, #14]
	t.fields.month=dt.month;
    2210:	887b      	ldrh	r3, [r7, #2]
    2212:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2216:	b2da      	uxtb	r2, r3
    2218:	89fb      	ldrh	r3, [r7, #14]
    221a:	f362 1348 	bfi	r3, r2, #5, #4
    221e:	81fb      	strh	r3, [r7, #14]
	t.fields.year=dt.year-1980;
    2220:	893b      	ldrh	r3, [r7, #8]
    2222:	b2db      	uxtb	r3, r3
    2224:	3344      	adds	r3, #68	; 0x44
    2226:	b2db      	uxtb	r3, r3
    2228:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    222c:	b2da      	uxtb	r2, r3
    222e:	7bfb      	ldrb	r3, [r7, #15]
    2230:	f362 0347 	bfi	r3, r2, #1, #7
    2234:	73fb      	strb	r3, [r7, #15]
	return t.u32;
    2236:	68fb      	ldr	r3, [r7, #12]
}
    2238:	4618      	mov	r0, r3
    223a:	3710      	adds	r7, #16
    223c:	46bd      	mov	sp, r7
    223e:	bd80      	pop	{r7, pc}

00002240 <RTC_handler>:


void RTC_handler(){
    2240:	b480      	push	{r7}
    2242:	b083      	sub	sp, #12
    2244:	af00      	add	r7, sp, #0
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    2246:	4b0a      	ldr	r3, [pc, #40]	; (2270 <RTC_handler+0x30>)
    2248:	685b      	ldr	r3, [r3, #4]
    224a:	f003 0301 	and.w	r3, r3, #1
    224e:	2b00      	cmp	r3, #0
    2250:	d001      	beq.n	2256 <RTC_handler+0x16>
		RTC->CRL&~RTC_CRL_SECF;
    2252:	4b07      	ldr	r3, [pc, #28]	; (2270 <RTC_handler+0x30>)
    2254:	685b      	ldr	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    2256:	4b06      	ldr	r3, [pc, #24]	; (2270 <RTC_handler+0x30>)
    2258:	685b      	ldr	r3, [r3, #4]
    225a:	f003 0302 	and.w	r3, r3, #2
    225e:	2b00      	cmp	r3, #0
    2260:	d001      	beq.n	2266 <RTC_handler+0x26>
		RTC->CRL&~RTC_CRL_ALRF;
    2262:	4b03      	ldr	r3, [pc, #12]	; (2270 <RTC_handler+0x30>)
    2264:	685b      	ldr	r3, [r3, #4]
	}// interruption alarme
}
    2266:	bf00      	nop
    2268:	370c      	adds	r7, #12
    226a:	46bd      	mov	sp, r7
    226c:	bc80      	pop	{r7}
    226e:	4770      	bx	lr
    2270:	40002800 	.word	0x40002800

00002274 <spi_baudrate>:
 */

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
    2274:	b480      	push	{r7}
    2276:	b083      	sub	sp, #12
    2278:	af00      	add	r7, sp, #0
    227a:	6078      	str	r0, [r7, #4]
    227c:	6039      	str	r1, [r7, #0]
	channel->CR1&=SPI_CR1_BR_MASK;
    227e:	687b      	ldr	r3, [r7, #4]
    2280:	681b      	ldr	r3, [r3, #0]
    2282:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    2286:	687b      	ldr	r3, [r7, #4]
    2288:	601a      	str	r2, [r3, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    228a:	687b      	ldr	r3, [r7, #4]
    228c:	681a      	ldr	r2, [r3, #0]
    228e:	683b      	ldr	r3, [r7, #0]
    2290:	00db      	lsls	r3, r3, #3
    2292:	431a      	orrs	r2, r3
    2294:	687b      	ldr	r3, [r7, #4]
    2296:	601a      	str	r2, [r3, #0]
}
    2298:	bf00      	nop
    229a:	370c      	adds	r7, #12
    229c:	46bd      	mov	sp, r7
    229e:	bc80      	pop	{r7}
    22a0:	4770      	bx	lr

000022a2 <spi_config_port>:

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    22a2:	b580      	push	{r7, lr}
    22a4:	b082      	sub	sp, #8
    22a6:	af00      	add	r7, sp, #0
    22a8:	6078      	str	r0, [r7, #4]
    22aa:	6039      	str	r1, [r7, #0]
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    22ac:	4a33      	ldr	r2, [pc, #204]	; (237c <spi_config_port+0xda>)
    22ae:	4b33      	ldr	r3, [pc, #204]	; (237c <spi_config_port+0xda>)
    22b0:	699b      	ldr	r3, [r3, #24]
    22b2:	f043 0301 	orr.w	r3, r3, #1
    22b6:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    22b8:	687b      	ldr	r3, [r7, #4]
    22ba:	4a31      	ldr	r2, [pc, #196]	; (2380 <spi_config_port+0xde>)
    22bc:	4293      	cmp	r3, r2
    22be:	d13e      	bne.n	233e <spi_config_port+0x9c>
		if (!afio_cfg){
    22c0:	683b      	ldr	r3, [r7, #0]
    22c2:	2b00      	cmp	r3, #0
    22c4:	d11a      	bne.n	22fc <spi_config_port+0x5a>
			// activation clock du port
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    22c6:	4a2d      	ldr	r2, [pc, #180]	; (237c <spi_config_port+0xda>)
    22c8:	4b2c      	ldr	r3, [pc, #176]	; (237c <spi_config_port+0xda>)
    22ca:	699b      	ldr	r3, [r3, #24]
    22cc:	f043 0304 	orr.w	r3, r3, #4
    22d0:	6193      	str	r3, [r2, #24]
			// configuration port
			// PA4 -> NSS output (push-pull)
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    22d2:	2203      	movs	r2, #3
    22d4:	2104      	movs	r1, #4
    22d6:	482b      	ldr	r0, [pc, #172]	; (2384 <spi_config_port+0xe2>)
    22d8:	f7fe fc8b 	bl	bf2 <config_pin>
			// PA5 -> SCK output (push-pull)
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    22dc:	220b      	movs	r2, #11
    22de:	2105      	movs	r1, #5
    22e0:	4828      	ldr	r0, [pc, #160]	; (2384 <spi_config_port+0xe2>)
    22e2:	f7fe fc86 	bl	bf2 <config_pin>
			// PA6 -> MISO input (floating)
			config_pin(PORTA,6,INPUT_FLOAT);
    22e6:	2204      	movs	r2, #4
    22e8:	2106      	movs	r1, #6
    22ea:	4826      	ldr	r0, [pc, #152]	; (2384 <spi_config_port+0xe2>)
    22ec:	f7fe fc81 	bl	bf2 <config_pin>
			// PA7 -> MOSI output (push-pull)
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    22f0:	220b      	movs	r2, #11
    22f2:	2107      	movs	r1, #7
    22f4:	4823      	ldr	r0, [pc, #140]	; (2384 <spi_config_port+0xe2>)
    22f6:	f7fe fc7c 	bl	bf2 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
	}
}
    22fa:	e03a      	b.n	2372 <spi_config_port+0xd0>
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    22fc:	4a1f      	ldr	r2, [pc, #124]	; (237c <spi_config_port+0xda>)
    22fe:	4b1f      	ldr	r3, [pc, #124]	; (237c <spi_config_port+0xda>)
    2300:	699b      	ldr	r3, [r3, #24]
    2302:	f043 030d 	orr.w	r3, r3, #13
    2306:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    2308:	4a1f      	ldr	r2, [pc, #124]	; (2388 <spi_config_port+0xe6>)
    230a:	4b1f      	ldr	r3, [pc, #124]	; (2388 <spi_config_port+0xe6>)
    230c:	685b      	ldr	r3, [r3, #4]
    230e:	f043 0301 	orr.w	r3, r3, #1
    2312:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2314:	2203      	movs	r2, #3
    2316:	210f      	movs	r1, #15
    2318:	481a      	ldr	r0, [pc, #104]	; (2384 <spi_config_port+0xe2>)
    231a:	f7fe fc6a 	bl	bf2 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    231e:	220b      	movs	r2, #11
    2320:	2103      	movs	r1, #3
    2322:	481a      	ldr	r0, [pc, #104]	; (238c <spi_config_port+0xea>)
    2324:	f7fe fc65 	bl	bf2 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2328:	2204      	movs	r2, #4
    232a:	2104      	movs	r1, #4
    232c:	4817      	ldr	r0, [pc, #92]	; (238c <spi_config_port+0xea>)
    232e:	f7fe fc60 	bl	bf2 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2332:	220b      	movs	r2, #11
    2334:	2105      	movs	r1, #5
    2336:	4815      	ldr	r0, [pc, #84]	; (238c <spi_config_port+0xea>)
    2338:	f7fe fc5b 	bl	bf2 <config_pin>
}
    233c:	e019      	b.n	2372 <spi_config_port+0xd0>
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    233e:	4a0f      	ldr	r2, [pc, #60]	; (237c <spi_config_port+0xda>)
    2340:	4b0e      	ldr	r3, [pc, #56]	; (237c <spi_config_port+0xda>)
    2342:	699b      	ldr	r3, [r3, #24]
    2344:	f043 0308 	orr.w	r3, r3, #8
    2348:	6193      	str	r3, [r2, #24]
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    234a:	2203      	movs	r2, #3
    234c:	2102      	movs	r1, #2
    234e:	480f      	ldr	r0, [pc, #60]	; (238c <spi_config_port+0xea>)
    2350:	f7fe fc4f 	bl	bf2 <config_pin>
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2354:	220b      	movs	r2, #11
    2356:	210d      	movs	r1, #13
    2358:	480c      	ldr	r0, [pc, #48]	; (238c <spi_config_port+0xea>)
    235a:	f7fe fc4a 	bl	bf2 <config_pin>
		config_pin(PORTB,14,INPUT_FLOAT);
    235e:	2204      	movs	r2, #4
    2360:	210e      	movs	r1, #14
    2362:	480a      	ldr	r0, [pc, #40]	; (238c <spi_config_port+0xea>)
    2364:	f7fe fc45 	bl	bf2 <config_pin>
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2368:	220b      	movs	r2, #11
    236a:	210f      	movs	r1, #15
    236c:	4807      	ldr	r0, [pc, #28]	; (238c <spi_config_port+0xea>)
    236e:	f7fe fc40 	bl	bf2 <config_pin>
}
    2372:	bf00      	nop
    2374:	3708      	adds	r7, #8
    2376:	46bd      	mov	sp, r7
    2378:	bd80      	pop	{r7, pc}
    237a:	bf00      	nop
    237c:	40021000 	.word	0x40021000
    2380:	40013000 	.word	0x40013000
    2384:	40010800 	.word	0x40010800
    2388:	40010000 	.word	0x40010000
    238c:	40010c00 	.word	0x40010c00

00002390 <spi_init>:

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2390:	b580      	push	{r7, lr}
    2392:	b084      	sub	sp, #16
    2394:	af00      	add	r7, sp, #0
    2396:	60f8      	str	r0, [r7, #12]
    2398:	60b9      	str	r1, [r7, #8]
    239a:	607a      	str	r2, [r7, #4]
    239c:	603b      	str	r3, [r7, #0]
	spi_config_port(channel,afio_cfg);
    239e:	6839      	ldr	r1, [r7, #0]
    23a0:	68f8      	ldr	r0, [r7, #12]
    23a2:	f7ff ff7e 	bl	22a2 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    23a6:	68fb      	ldr	r3, [r7, #12]
    23a8:	4a10      	ldr	r2, [pc, #64]	; (23ec <spi_init+0x5c>)
    23aa:	4293      	cmp	r3, r2
    23ac:	d106      	bne.n	23bc <spi_init+0x2c>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    23ae:	4a10      	ldr	r2, [pc, #64]	; (23f0 <spi_init+0x60>)
    23b0:	4b0f      	ldr	r3, [pc, #60]	; (23f0 <spi_init+0x60>)
    23b2:	699b      	ldr	r3, [r3, #24]
    23b4:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    23b8:	6193      	str	r3, [r2, #24]
    23ba:	e005      	b.n	23c8 <spi_init+0x38>
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    23bc:	4a0c      	ldr	r2, [pc, #48]	; (23f0 <spi_init+0x60>)
    23be:	4b0c      	ldr	r3, [pc, #48]	; (23f0 <spi_init+0x60>)
    23c0:	69db      	ldr	r3, [r3, #28]
    23c2:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    23c6:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    23c8:	68fb      	ldr	r3, [r7, #12]
    23ca:	687a      	ldr	r2, [r7, #4]
    23cc:	601a      	str	r2, [r3, #0]
	spi_baudrate(channel,baud);
    23ce:	68b9      	ldr	r1, [r7, #8]
    23d0:	68f8      	ldr	r0, [r7, #12]
    23d2:	f7ff ff4f 	bl	2274 <spi_baudrate>
	_spi_enable(channel);
    23d6:	68fb      	ldr	r3, [r7, #12]
    23d8:	681b      	ldr	r3, [r3, #0]
    23da:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    23de:	68fb      	ldr	r3, [r7, #12]
    23e0:	601a      	str	r2, [r3, #0]
}
    23e2:	bf00      	nop
    23e4:	3710      	adds	r7, #16
    23e6:	46bd      	mov	sp, r7
    23e8:	bd80      	pop	{r7, pc}
    23ea:	bf00      	nop
    23ec:	40013000 	.word	0x40013000
    23f0:	40021000 	.word	0x40021000

000023f4 <spi_send>:


// envoie un octet via le canla SPI
inline void spi_send(spi_sfr_t* channel, uint8_t b){
    23f4:	b480      	push	{r7}
    23f6:	b085      	sub	sp, #20
    23f8:	af00      	add	r7, sp, #0
    23fa:	6078      	str	r0, [r7, #4]
    23fc:	460b      	mov	r3, r1
    23fe:	70fb      	strb	r3, [r7, #3]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    2400:	bf00      	nop
    2402:	687b      	ldr	r3, [r7, #4]
    2404:	689b      	ldr	r3, [r3, #8]
    2406:	f003 0302 	and.w	r3, r3, #2
    240a:	2b00      	cmp	r3, #0
    240c:	d0f9      	beq.n	2402 <spi_send+0xe>
	channel->DR=b;
    240e:	78fa      	ldrb	r2, [r7, #3]
    2410:	687b      	ldr	r3, [r7, #4]
    2412:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2414:	bf00      	nop
    2416:	687b      	ldr	r3, [r7, #4]
    2418:	689b      	ldr	r3, [r3, #8]
    241a:	f003 0301 	and.w	r3, r3, #1
    241e:	2b00      	cmp	r3, #0
    2420:	d0f9      	beq.n	2416 <spi_send+0x22>
	rx=(uint8_t)channel->DR;
    2422:	687b      	ldr	r3, [r7, #4]
    2424:	68db      	ldr	r3, [r3, #12]
    2426:	73fb      	strb	r3, [r7, #15]
}
    2428:	bf00      	nop
    242a:	3714      	adds	r7, #20
    242c:	46bd      	mov	sp, r7
    242e:	bc80      	pop	{r7}
    2430:	4770      	bx	lr

00002432 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
    2432:	b480      	push	{r7}
    2434:	b085      	sub	sp, #20
    2436:	af00      	add	r7, sp, #0
    2438:	6078      	str	r0, [r7, #4]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    243a:	bf00      	nop
    243c:	687b      	ldr	r3, [r7, #4]
    243e:	689b      	ldr	r3, [r3, #8]
    2440:	f003 0302 	and.w	r3, r3, #2
    2444:	2b00      	cmp	r3, #0
    2446:	d0f9      	beq.n	243c <spi_receive+0xa>
	channel->DR=255;
    2448:	687b      	ldr	r3, [r7, #4]
    244a:	22ff      	movs	r2, #255	; 0xff
    244c:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    244e:	bf00      	nop
    2450:	687b      	ldr	r3, [r7, #4]
    2452:	689b      	ldr	r3, [r3, #8]
    2454:	f003 0301 	and.w	r3, r3, #1
    2458:	2b00      	cmp	r3, #0
    245a:	d0f9      	beq.n	2450 <spi_receive+0x1e>
	rx=(uint8_t)channel->DR;
    245c:	687b      	ldr	r3, [r7, #4]
    245e:	68db      	ldr	r3, [r3, #12]
    2460:	73fb      	strb	r3, [r7, #15]
	return rx;
    2462:	7bfb      	ldrb	r3, [r7, #15]
}
    2464:	4618      	mov	r0, r3
    2466:	3714      	adds	r7, #20
    2468:	46bd      	mov	sp, r7
    246a:	bc80      	pop	{r7}
    246c:	4770      	bx	lr

0000246e <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
    246e:	b480      	push	{r7}
    2470:	b087      	sub	sp, #28
    2472:	af00      	add	r7, sp, #0
    2474:	60f8      	str	r0, [r7, #12]
    2476:	60b9      	str	r1, [r7, #8]
    2478:	607a      	str	r2, [r7, #4]
	uint8_t rx;
	while (count){
    247a:	e010      	b.n	249e <spi_send_block+0x30>
		channel->DR=*buffer++;
    247c:	68bb      	ldr	r3, [r7, #8]
    247e:	1c5a      	adds	r2, r3, #1
    2480:	60ba      	str	r2, [r7, #8]
    2482:	781b      	ldrb	r3, [r3, #0]
    2484:	461a      	mov	r2, r3
    2486:	68fb      	ldr	r3, [r7, #12]
    2488:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_TXE));
    248a:	bf00      	nop
    248c:	68fb      	ldr	r3, [r7, #12]
    248e:	689b      	ldr	r3, [r3, #8]
    2490:	f003 0302 	and.w	r3, r3, #2
    2494:	2b00      	cmp	r3, #0
    2496:	d0f9      	beq.n	248c <spi_send_block+0x1e>
		count--;
    2498:	687b      	ldr	r3, [r7, #4]
    249a:	3b01      	subs	r3, #1
    249c:	607b      	str	r3, [r7, #4]
	while (count){
    249e:	687b      	ldr	r3, [r7, #4]
    24a0:	2b00      	cmp	r3, #0
    24a2:	d1eb      	bne.n	247c <spi_send_block+0xe>
	}
	while (channel->SR&SPI_SR_BSY);
    24a4:	bf00      	nop
    24a6:	68fb      	ldr	r3, [r7, #12]
    24a8:	689b      	ldr	r3, [r3, #8]
    24aa:	f003 0380 	and.w	r3, r3, #128	; 0x80
    24ae:	2b00      	cmp	r3, #0
    24b0:	d1f9      	bne.n	24a6 <spi_send_block+0x38>
	rx=(uint8_t)channel->DR;
    24b2:	68fb      	ldr	r3, [r7, #12]
    24b4:	68db      	ldr	r3, [r3, #12]
    24b6:	75fb      	strb	r3, [r7, #23]
}
    24b8:	bf00      	nop
    24ba:	371c      	adds	r7, #28
    24bc:	46bd      	mov	sp, r7
    24be:	bc80      	pop	{r7}
    24c0:	4770      	bx	lr

000024c2 <spi_receive_block>:

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    24c2:	b480      	push	{r7}
    24c4:	b085      	sub	sp, #20
    24c6:	af00      	add	r7, sp, #0
    24c8:	60f8      	str	r0, [r7, #12]
    24ca:	60b9      	str	r1, [r7, #8]
    24cc:	607a      	str	r2, [r7, #4]
	while (count){
    24ce:	e013      	b.n	24f8 <spi_receive_block+0x36>
		channel->DR=0;
    24d0:	68fb      	ldr	r3, [r7, #12]
    24d2:	2200      	movs	r2, #0
    24d4:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    24d6:	bf00      	nop
    24d8:	68fb      	ldr	r3, [r7, #12]
    24da:	689b      	ldr	r3, [r3, #8]
    24dc:	f003 0301 	and.w	r3, r3, #1
    24e0:	2b00      	cmp	r3, #0
    24e2:	d0f9      	beq.n	24d8 <spi_receive_block+0x16>
		*buffer++=(uint8_t)channel->DR;
    24e4:	68bb      	ldr	r3, [r7, #8]
    24e6:	1c5a      	adds	r2, r3, #1
    24e8:	60ba      	str	r2, [r7, #8]
    24ea:	68fa      	ldr	r2, [r7, #12]
    24ec:	68d2      	ldr	r2, [r2, #12]
    24ee:	b2d2      	uxtb	r2, r2
    24f0:	701a      	strb	r2, [r3, #0]
		count--;
    24f2:	687b      	ldr	r3, [r7, #4]
    24f4:	3b01      	subs	r3, #1
    24f6:	607b      	str	r3, [r7, #4]
	while (count){
    24f8:	687b      	ldr	r3, [r7, #4]
    24fa:	2b00      	cmp	r3, #0
    24fc:	d1e8      	bne.n	24d0 <spi_receive_block+0xe>
	}
}
    24fe:	bf00      	nop
    2500:	3714      	adds	r7, #20
    2502:	46bd      	mov	sp, r7
    2504:	bc80      	pop	{r7}
    2506:	4770      	bx	lr

00002508 <reset_mcu>:
	_reset_mcu();
    2508:	4b01      	ldr	r3, [pc, #4]	; (2510 <reset_mcu+0x8>)
    250a:	4a02      	ldr	r2, [pc, #8]	; (2514 <reset_mcu+0xc>)
    250c:	601a      	str	r2, [r3, #0]
}
    250e:	bf00      	nop
    2510:	e000ed0c 	.word	0xe000ed0c
    2514:	05fa0004 	.word	0x05fa0004

00002518 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    2518:	b580      	push	{r7, lr}
    251a:	b082      	sub	sp, #8
    251c:	af00      	add	r7, sp, #0
    251e:	6078      	str	r0, [r7, #4]
    2520:	6039      	str	r1, [r7, #0]
	gfx_print(msg);
    2522:	6878      	ldr	r0, [r7, #4]
    2524:	f7fe fc98 	bl	e58 <gfx_print>
	gfx_print("\nat address ");
    2528:	4818      	ldr	r0, [pc, #96]	; (258c <print_fault+0x74>)
    252a:	f7fe fc95 	bl	e58 <gfx_print>
	if (adr) {
    252e:	683b      	ldr	r3, [r7, #0]
    2530:	2b00      	cmp	r3, #0
    2532:	d004      	beq.n	253e <print_fault+0x26>
		gfx_print_int(adr,16);
    2534:	683b      	ldr	r3, [r7, #0]
    2536:	2110      	movs	r1, #16
    2538:	4618      	mov	r0, r3
    253a:	f7fe fcb0 	bl	e9e <gfx_print_int>
	gfx_putchar(CR);
    253e:	200d      	movs	r0, #13
    2540:	f7fe fc2a 	bl	d98 <gfx_putchar>
	gfx_print("\nUFSR=");
    2544:	4812      	ldr	r0, [pc, #72]	; (2590 <print_fault+0x78>)
    2546:	f7fe fc87 	bl	e58 <gfx_print>
	gfx_print_int(CFSR->fsr.usageFalt,16);
    254a:	4b12      	ldr	r3, [pc, #72]	; (2594 <print_fault+0x7c>)
    254c:	681b      	ldr	r3, [r3, #0]
    254e:	f3c3 430f 	ubfx	r3, r3, #16, #16
    2552:	b29b      	uxth	r3, r3
    2554:	2110      	movs	r1, #16
    2556:	4618      	mov	r0, r3
    2558:	f7fe fca1 	bl	e9e <gfx_print_int>
	gfx_print("\nBFSR=");
    255c:	480e      	ldr	r0, [pc, #56]	; (2598 <print_fault+0x80>)
    255e:	f7fe fc7b 	bl	e58 <gfx_print>
	gfx_print_int(CFSR->fsr.busFault,16);
    2562:	4b0c      	ldr	r3, [pc, #48]	; (2594 <print_fault+0x7c>)
    2564:	681b      	ldr	r3, [r3, #0]
    2566:	f3c3 2307 	ubfx	r3, r3, #8, #8
    256a:	b2db      	uxtb	r3, r3
    256c:	2110      	movs	r1, #16
    256e:	4618      	mov	r0, r3
    2570:	f7fe fc95 	bl	e9e <gfx_print_int>
	gfx_print("\nMMFSR=");
    2574:	4809      	ldr	r0, [pc, #36]	; (259c <print_fault+0x84>)
    2576:	f7fe fc6f 	bl	e58 <gfx_print>
	gfx_print_int(CFSR->fsr.mmFault,16);
    257a:	4b06      	ldr	r3, [pc, #24]	; (2594 <print_fault+0x7c>)
    257c:	681b      	ldr	r3, [r3, #0]
    257e:	b2db      	uxtb	r3, r3
    2580:	2110      	movs	r1, #16
    2582:	4618      	mov	r0, r3
    2584:	f7fe fc8b 	bl	e9e <gfx_print_int>
	while(1);
    2588:	e7fe      	b.n	2588 <print_fault+0x70>
    258a:	bf00      	nop
    258c:	00002e48 	.word	0x00002e48
    2590:	00002e58 	.word	0x00002e58
    2594:	e000ed28 	.word	0xe000ed28
    2598:	00002e60 	.word	0x00002e60
    259c:	00002e68 	.word	0x00002e68

000025a0 <config_systicks>:


// configure SYSTICKS pour un cycle 1 msec
// source AHB/8
#define MSEC_DLY FCLK/8/1000
void config_systicks(){
    25a0:	b580      	push	{r7, lr}
    25a2:	af00      	add	r7, sp, #0
	set_int_priority(IRQ_STK,9);
    25a4:	2109      	movs	r1, #9
    25a6:	f06f 000e 	mvn.w	r0, #14
    25aa:	f7fe fff3 	bl	1594 <set_int_priority>
	*SYST_RVR=MSEC_DLY-1;
    25ae:	4b04      	ldr	r3, [pc, #16]	; (25c0 <config_systicks+0x20>)
    25b0:	f242 22f3 	movw	r2, #8947	; 0x22f3
    25b4:	601a      	str	r2, [r3, #0]
	SYST_CSR->csr=(1<<SYST_TICKINT)|(1<<SYST_ENABLE);
    25b6:	4b03      	ldr	r3, [pc, #12]	; (25c4 <config_systicks+0x24>)
    25b8:	2203      	movs	r2, #3
    25ba:	601a      	str	r2, [r3, #0]
}
    25bc:	bf00      	nop
    25be:	bd80      	pop	{r7, pc}
    25c0:	e000e014 	.word	0xe000e014
    25c4:	e000e010 	.word	0xe000e010

000025c8 <pause>:



void pause(unsigned msec){
    25c8:	b480      	push	{r7}
    25ca:	b083      	sub	sp, #12
    25cc:	af00      	add	r7, sp, #0
    25ce:	6078      	str	r0, [r7, #4]
	timer=msec;
    25d0:	4a06      	ldr	r2, [pc, #24]	; (25ec <pause+0x24>)
    25d2:	687b      	ldr	r3, [r7, #4]
    25d4:	6013      	str	r3, [r2, #0]
	while (timer);
    25d6:	bf00      	nop
    25d8:	4b04      	ldr	r3, [pc, #16]	; (25ec <pause+0x24>)
    25da:	681b      	ldr	r3, [r3, #0]
    25dc:	2b00      	cmp	r3, #0
    25de:	d1fb      	bne.n	25d8 <pause+0x10>
}
    25e0:	bf00      	nop
    25e2:	370c      	adds	r7, #12
    25e4:	46bd      	mov	sp, r7
    25e6:	bc80      	pop	{r7}
    25e8:	4770      	bx	lr
    25ea:	bf00      	nop
    25ec:	20000460 	.word	0x20000460

000025f0 <STK_handler>:


// interruption coretimer
void STK_handler(){
    25f0:	b480      	push	{r7}
    25f2:	af00      	add	r7, sp, #0
	ticks++;
    25f4:	4b08      	ldr	r3, [pc, #32]	; (2618 <STK_handler+0x28>)
    25f6:	681b      	ldr	r3, [r3, #0]
    25f8:	3301      	adds	r3, #1
    25fa:	4a07      	ldr	r2, [pc, #28]	; (2618 <STK_handler+0x28>)
    25fc:	6013      	str	r3, [r2, #0]
	if (timer) {timer--;}
    25fe:	4b07      	ldr	r3, [pc, #28]	; (261c <STK_handler+0x2c>)
    2600:	681b      	ldr	r3, [r3, #0]
    2602:	2b00      	cmp	r3, #0
    2604:	d004      	beq.n	2610 <STK_handler+0x20>
    2606:	4b05      	ldr	r3, [pc, #20]	; (261c <STK_handler+0x2c>)
    2608:	681b      	ldr	r3, [r3, #0]
    260a:	3b01      	subs	r3, #1
    260c:	4a03      	ldr	r2, [pc, #12]	; (261c <STK_handler+0x2c>)
    260e:	6013      	str	r3, [r2, #0]
}
    2610:	bf00      	nop
    2612:	46bd      	mov	sp, r7
    2614:	bc80      	pop	{r7}
    2616:	4770      	bx	lr
    2618:	2000045c 	.word	0x2000045c
    261c:	20000460 	.word	0x20000460

00002620 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2620:	b580      	push	{r7, lr}
    2622:	b082      	sub	sp, #8
    2624:	af00      	add	r7, sp, #0
    uint8_t i;
    for (i=0;i<VRES;i++) sl_palette[i]=3;
    2626:	2300      	movs	r3, #0
    2628:	71fb      	strb	r3, [r7, #7]
    262a:	e006      	b.n	263a <tvout_init+0x1a>
    262c:	79fb      	ldrb	r3, [r7, #7]
    262e:	4a49      	ldr	r2, [pc, #292]	; (2754 <tvout_init+0x134>)
    2630:	2103      	movs	r1, #3
    2632:	54d1      	strb	r1, [r2, r3]
    2634:	79fb      	ldrb	r3, [r7, #7]
    2636:	3301      	adds	r3, #1
    2638:	71fb      	strb	r3, [r7, #7]
    263a:	79fb      	ldrb	r3, [r7, #7]
    263c:	2b6f      	cmp	r3, #111	; 0x6f
    263e:	d9f5      	bls.n	262c <tvout_init+0xc>
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2640:	220a      	movs	r2, #10
    2642:	2108      	movs	r1, #8
    2644:	4844      	ldr	r0, [pc, #272]	; (2758 <tvout_init+0x138>)
    2646:	f7fe fad4 	bl	bf2 <config_pin>
    *GPIOA_CNF_CRL=0x44443333;
    264a:	4b43      	ldr	r3, [pc, #268]	; (2758 <tvout_init+0x138>)
    264c:	4a43      	ldr	r2, [pc, #268]	; (275c <tvout_init+0x13c>)
    264e:	601a      	str	r2, [r3, #0]
    PORTA->ODR=0;
    2650:	4b41      	ldr	r3, [pc, #260]	; (2758 <tvout_init+0x138>)
    2652:	2200      	movs	r2, #0
    2654:	60da      	str	r2, [r3, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    2656:	4a42      	ldr	r2, [pc, #264]	; (2760 <tvout_init+0x140>)
    2658:	4b41      	ldr	r3, [pc, #260]	; (2760 <tvout_init+0x140>)
    265a:	699b      	ldr	r3, [r3, #24]
    265c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2660:	6193      	str	r3, [r2, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2662:	4b40      	ldr	r3, [pc, #256]	; (2764 <tvout_init+0x144>)
    2664:	2278      	movs	r2, #120	; 0x78
    2666:	619a      	str	r2, [r3, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    2668:	4b3e      	ldr	r3, [pc, #248]	; (2764 <tvout_init+0x144>)
    266a:	2201      	movs	r2, #1
    266c:	621a      	str	r2, [r3, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    266e:	4b3d      	ldr	r3, [pc, #244]	; (2764 <tvout_init+0x144>)
    2670:	2284      	movs	r2, #132	; 0x84
    2672:	601a      	str	r2, [r3, #0]
    TMR1->ARR=HPERIOD;
    2674:	4b3b      	ldr	r3, [pc, #236]	; (2764 <tvout_init+0x144>)
    2676:	f241 12c5 	movw	r2, #4549	; 0x11c5
    267a:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    267c:	4b39      	ldr	r3, [pc, #228]	; (2764 <tvout_init+0x144>)
    267e:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2682:	635a      	str	r2, [r3, #52]	; 0x34
    TMR1->CCR2=CHROMA_START;
    2684:	4b37      	ldr	r3, [pc, #220]	; (2764 <tvout_init+0x144>)
    2686:	f240 126d 	movw	r2, #365	; 0x16d
    268a:	639a      	str	r2, [r3, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    268c:	4a35      	ldr	r2, [pc, #212]	; (2764 <tvout_init+0x144>)
    268e:	4b35      	ldr	r3, [pc, #212]	; (2764 <tvout_init+0x144>)
    2690:	695b      	ldr	r3, [r3, #20]
    2692:	f043 0301 	orr.w	r3, r3, #1
    2696:	6153      	str	r3, [r2, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2698:	4b32      	ldr	r3, [pc, #200]	; (2764 <tvout_init+0x144>)
    269a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    269e:	645a      	str	r2, [r3, #68]	; 0x44
    TMR1->SR=0;
    26a0:	4b30      	ldr	r3, [pc, #192]	; (2764 <tvout_init+0x144>)
    26a2:	2200      	movs	r2, #0
    26a4:	611a      	str	r2, [r3, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    26a6:	4a2f      	ldr	r2, [pc, #188]	; (2764 <tvout_init+0x144>)
    26a8:	4b2e      	ldr	r3, [pc, #184]	; (2764 <tvout_init+0x144>)
    26aa:	68db      	ldr	r3, [r3, #12]
    26ac:	f043 0301 	orr.w	r3, r3, #1
    26b0:	60d3      	str	r3, [r2, #12]
    set_int_priority(IRQ_TIM1_UP,1);
    26b2:	2101      	movs	r1, #1
    26b4:	2019      	movs	r0, #25
    26b6:	f7fe ff6d 	bl	1594 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,1);
    26ba:	2101      	movs	r1, #1
    26bc:	201b      	movs	r0, #27
    26be:	f7fe ff69 	bl	1594 <set_int_priority>
    enable_interrupt(IRQ_TIM1_CC);    
    26c2:	201b      	movs	r0, #27
    26c4:	f7fe feac 	bl	1420 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_UP);
    26c8:	2019      	movs	r0, #25
    26ca:	f7fe fea9 	bl	1420 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    26ce:	4a25      	ldr	r2, [pc, #148]	; (2764 <tvout_init+0x144>)
    26d0:	4b24      	ldr	r3, [pc, #144]	; (2764 <tvout_init+0x144>)
    26d2:	681b      	ldr	r3, [r3, #0]
    26d4:	f043 0301 	orr.w	r3, r3, #1
    26d8:	6013      	str	r3, [r2, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    26da:	220a      	movs	r2, #10
    26dc:	2100      	movs	r1, #0
    26de:	4822      	ldr	r0, [pc, #136]	; (2768 <tvout_init+0x148>)
    26e0:	f7fe fa87 	bl	bf2 <config_pin>
    config_pin(PORTB,1,OUTPUT_ALT_PP_SLOW);  // TIMER3 CH4
    26e4:	220a      	movs	r2, #10
    26e6:	2101      	movs	r1, #1
    26e8:	481f      	ldr	r0, [pc, #124]	; (2768 <tvout_init+0x148>)
    26ea:	f7fe fa82 	bl	bf2 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    26ee:	4a1c      	ldr	r2, [pc, #112]	; (2760 <tvout_init+0x140>)
    26f0:	4b1b      	ldr	r3, [pc, #108]	; (2760 <tvout_init+0x140>)
    26f2:	69db      	ldr	r3, [r3, #28]
    26f4:	f043 0302 	orr.w	r3, r3, #2
    26f8:	61d3      	str	r3, [r2, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|(6<<TMR_CCMR2_OC4M_POS)|TMR_CCMR2_OC3PE;
    26fa:	4b1c      	ldr	r3, [pc, #112]	; (276c <tvout_init+0x14c>)
    26fc:	f246 0278 	movw	r2, #24696	; 0x6078
    2700:	61da      	str	r2, [r3, #28]
    TMR3->CCER=TMR_CCER_CC3E|TMR_CCER_CC3P;
    2702:	4b1a      	ldr	r3, [pc, #104]	; (276c <tvout_init+0x14c>)
    2704:	f44f 7240 	mov.w	r2, #768	; 0x300
    2708:	621a      	str	r2, [r3, #32]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    270a:	4b18      	ldr	r3, [pc, #96]	; (276c <tvout_init+0x14c>)
    270c:	2284      	movs	r2, #132	; 0x84
    270e:	601a      	str	r2, [r3, #0]
    TMR3->ARR=19; 
    2710:	4b16      	ldr	r3, [pc, #88]	; (276c <tvout_init+0x14c>)
    2712:	2213      	movs	r2, #19
    2714:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    2716:	4b15      	ldr	r3, [pc, #84]	; (276c <tvout_init+0x14c>)
    2718:	220a      	movs	r2, #10
    271a:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->CCR4=10;
    271c:	4b13      	ldr	r3, [pc, #76]	; (276c <tvout_init+0x14c>)
    271e:	220a      	movs	r2, #10
    2720:	641a      	str	r2, [r3, #64]	; 0x40
    TMR3->BDTR|=TMR_BDTR_MOE;
    2722:	4a12      	ldr	r2, [pc, #72]	; (276c <tvout_init+0x14c>)
    2724:	4b11      	ldr	r3, [pc, #68]	; (276c <tvout_init+0x14c>)
    2726:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    2728:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    272c:	6453      	str	r3, [r2, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    272e:	4a0f      	ldr	r2, [pc, #60]	; (276c <tvout_init+0x14c>)
    2730:	4b0e      	ldr	r3, [pc, #56]	; (276c <tvout_init+0x14c>)
    2732:	695b      	ldr	r3, [r3, #20]
    2734:	f043 0301 	orr.w	r3, r3, #1
    2738:	6153      	str	r3, [r2, #20]
    TMR3->SR=0;
    273a:	4b0c      	ldr	r3, [pc, #48]	; (276c <tvout_init+0x14c>)
    273c:	2200      	movs	r2, #0
    273e:	611a      	str	r2, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    2740:	4a0a      	ldr	r2, [pc, #40]	; (276c <tvout_init+0x14c>)
    2742:	4b0a      	ldr	r3, [pc, #40]	; (276c <tvout_init+0x14c>)
    2744:	681b      	ldr	r3, [r3, #0]
    2746:	f043 0301 	orr.w	r3, r3, #1
    274a:	6013      	str	r3, [r2, #0]
}
    274c:	bf00      	nop
    274e:	3708      	adds	r7, #8
    2750:	46bd      	mov	sp, r7
    2752:	bd80      	pop	{r7, pc}
    2754:	20002bcc 	.word	0x20002bcc
    2758:	40010800 	.word	0x40010800
    275c:	44443333 	.word	0x44443333
    2760:	40021000 	.word	0x40021000
    2764:	40012c00 	.word	0x40012c00
    2768:	40010c00 	.word	0x40010c00
    276c:	40000400 	.word	0x40000400

00002770 <TV_OUT_handler>:


void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    2770:	4668      	mov	r0, sp
    2772:	f020 0107 	bic.w	r1, r0, #7
    2776:	468d      	mov	sp, r1
    2778:	b411      	push	{r0, r4}
    register uint8_t *video_data;
    register uint16_t *video_port;

    TMR3->CCER|=TMR_CCER_CC3E;
    277a:	4a30      	ldr	r2, [pc, #192]	; (283c <TV_OUT_handler+0xcc>)
    277c:	6a13      	ldr	r3, [r2, #32]
    277e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2782:	6213      	str	r3, [r2, #32]
    while(TMR1->CNT<(uint16_t)(8.0e-6*(float)FCLK));
    2784:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    2788:	6a53      	ldr	r3, [r2, #36]	; 0x24
    278a:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    278e:	d3fb      	bcc.n	2788 <TV_OUT_handler+0x18>
    TMR3->CCER&=~TMR_CCER_CC3E;
    2790:	4a2a      	ldr	r2, [pc, #168]	; (283c <TV_OUT_handler+0xcc>)
    2792:	6a13      	ldr	r3, [r2, #32]
    2794:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2798:	6213      	str	r3, [r2, #32]
    if (flags&F_VIDEO){
    279a:	4b29      	ldr	r3, [pc, #164]	; (2840 <TV_OUT_handler+0xd0>)
    279c:	881b      	ldrh	r3, [r3, #0]
    279e:	f013 0f04 	tst.w	r3, #4
    27a2:	d042      	beq.n	282a <TV_OUT_handler+0xba>
            int i,r;
            uint8_t s,b,byte;
            video_port=(uint16_t*)&PORTA->ODR;
            while(TMR1->CNT<LEFT_MARGIN);
    27a4:	4927      	ldr	r1, [pc, #156]	; (2844 <TV_OUT_handler+0xd4>)
    27a6:	f240 32e9 	movw	r2, #1001	; 0x3e9
    27aa:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    27ac:	4293      	cmp	r3, r2
    27ae:	d9fc      	bls.n	27aa <TV_OUT_handler+0x3a>
            video_data=&video_buffer[slice/2*BPR];
    27b0:	4a25      	ldr	r2, [pc, #148]	; (2848 <TV_OUT_handler+0xd8>)
    27b2:	8813      	ldrh	r3, [r2, #0]
    27b4:	f3c3 034e 	ubfx	r3, r3, #1, #15
    27b8:	4924      	ldr	r1, [pc, #144]	; (284c <TV_OUT_handler+0xdc>)
    27ba:	205a      	movs	r0, #90	; 0x5a
    27bc:	fb00 1303 	mla	r3, r0, r3, r1
            //r=slice/3*BPR;
            TMR3->CCER|=palette[sl_palette[slice>>1]];//palette[active_palette];//TMR_CCER_CC4E+TMR_CCER_CC3E;
    27c0:	8812      	ldrh	r2, [r2, #0]
    27c2:	491e      	ldr	r1, [pc, #120]	; (283c <TV_OUT_handler+0xcc>)
    27c4:	6a08      	ldr	r0, [r1, #32]
    27c6:	f3c2 024e 	ubfx	r2, r2, #1, #15
    27ca:	4c21      	ldr	r4, [pc, #132]	; (2850 <TV_OUT_handler+0xe0>)
    27cc:	5ca4      	ldrb	r4, [r4, r2]
    27ce:	4a21      	ldr	r2, [pc, #132]	; (2854 <TV_OUT_handler+0xe4>)
    27d0:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
    27d4:	4302      	orrs	r2, r0
    27d6:	620a      	str	r2, [r1, #32]
    27d8:	f103 005a 	add.w	r0, r3, #90	; 0x5a
            for (i=0;i<(BPR);i++){
                *video_port=(*video_data)>>4;
    27dc:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
    27e0:	310c      	adds	r1, #12
    27e2:	781a      	ldrb	r2, [r3, #0]
    27e4:	0912      	lsrs	r2, r2, #4
    27e6:	800a      	strh	r2, [r1, #0]
                asm("nop\nnop\nnop\nnop\nnop\nnop\nnop\nnop\nnop\nnop\nnop\n");
    27e8:	bf00      	nop
    27ea:	bf00      	nop
    27ec:	bf00      	nop
    27ee:	bf00      	nop
    27f0:	bf00      	nop
    27f2:	bf00      	nop
    27f4:	bf00      	nop
    27f6:	bf00      	nop
    27f8:	bf00      	nop
    27fa:	bf00      	nop
    27fc:	bf00      	nop
                *video_port=(*video_data++)&0xf;
    27fe:	f813 2b01 	ldrb.w	r2, [r3], #1
    2802:	f002 020f 	and.w	r2, r2, #15
    2806:	800a      	strh	r2, [r1, #0]
                asm("nop\nnop\nnop\nnop\nnop\nnop\nnop\n");
    2808:	bf00      	nop
    280a:	bf00      	nop
    280c:	bf00      	nop
    280e:	bf00      	nop
    2810:	bf00      	nop
    2812:	bf00      	nop
    2814:	bf00      	nop
            for (i=0;i<(BPR);i++){
    2816:	4298      	cmp	r0, r3
    2818:	d1e3      	bne.n	27e2 <TV_OUT_handler+0x72>
            }
        PORTA->ODR=0;
    281a:	2200      	movs	r2, #0
    281c:	4b0e      	ldr	r3, [pc, #56]	; (2858 <TV_OUT_handler+0xe8>)
    281e:	60da      	str	r2, [r3, #12]
        TMR3->CCER&=~(TMR_CCER_CC4E+TMR_CCER_CC3E);
    2820:	4a06      	ldr	r2, [pc, #24]	; (283c <TV_OUT_handler+0xcc>)
    2822:	6a13      	ldr	r3, [r2, #32]
    2824:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    2828:	6213      	str	r3, [r2, #32]
    }
    TMR1->SR&=~TMR_SR_CC2IF;
    282a:	4a06      	ldr	r2, [pc, #24]	; (2844 <TV_OUT_handler+0xd4>)
    282c:	6913      	ldr	r3, [r2, #16]
    282e:	f023 0304 	bic.w	r3, r3, #4
    2832:	6113      	str	r3, [r2, #16]
}
    2834:	bc11      	pop	{r0, r4}
    2836:	4685      	mov	sp, r0
    2838:	4770      	bx	lr
    283a:	bf00      	nop
    283c:	40000400 	.word	0x40000400
    2840:	20000466 	.word	0x20000466
    2844:	40012c00 	.word	0x40012c00
    2848:	20000468 	.word	0x20000468
    284c:	2000046c 	.word	0x2000046c
    2850:	20002bcc 	.word	0x20002bcc
    2854:	00002eb4 	.word	0x00002eb4
    2858:	40010800 	.word	0x40010800

0000285c <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    285c:	4668      	mov	r0, sp
    285e:	f020 0107 	bic.w	r1, r0, #7
    2862:	468d      	mov	sp, r1
    2864:	b401      	push	{r0}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    2866:	4a79      	ldr	r2, [pc, #484]	; (2a4c <TV_SYNC_handler+0x1f0>)
    2868:	8813      	ldrh	r3, [r2, #0]
    286a:	3301      	adds	r3, #1
    286c:	b29b      	uxth	r3, r3
    286e:	8013      	strh	r3, [r2, #0]
    switch (task){
    2870:	4b77      	ldr	r3, [pc, #476]	; (2a50 <TV_SYNC_handler+0x1f4>)
    2872:	881b      	ldrh	r3, [r3, #0]
    2874:	b29b      	uxth	r3, r3
    2876:	2b06      	cmp	r3, #6
    2878:	f200 808d 	bhi.w	2996 <TV_SYNC_handler+0x13a>
    287c:	e8df f013 	tbh	[pc, r3, lsl #1]
    2880:	00290007 	.word	0x00290007
    2884:	006b0049 	.word	0x006b0049
    2888:	00a70093 	.word	0x00a70093
    288c:	00be      	.short	0x00be
    case PRE_SYNC:
        if (!slice){
    288e:	4b71      	ldr	r3, [pc, #452]	; (2a54 <TV_SYNC_handler+0x1f8>)
    2890:	881b      	ldrh	r3, [r3, #0]
    2892:	b29b      	uxth	r3, r3
    2894:	b18b      	cbz	r3, 28ba <TV_SYNC_handler+0x5e>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    2896:	4a6f      	ldr	r2, [pc, #444]	; (2a54 <TV_SYNC_handler+0x1f8>)
    2898:	8813      	ldrh	r3, [r2, #0]
    289a:	3301      	adds	r3, #1
    289c:	b29b      	uxth	r3, r3
    289e:	8013      	strh	r3, [r2, #0]
    28a0:	8813      	ldrh	r3, [r2, #0]
    28a2:	b29b      	uxth	r3, r3
    28a4:	2b06      	cmp	r3, #6
    28a6:	d176      	bne.n	2996 <TV_SYNC_handler+0x13a>
    28a8:	2200      	movs	r2, #0
    28aa:	4b6a      	ldr	r3, [pc, #424]	; (2a54 <TV_SYNC_handler+0x1f8>)
    28ac:	801a      	strh	r2, [r3, #0]
    28ae:	4a68      	ldr	r2, [pc, #416]	; (2a50 <TV_SYNC_handler+0x1f4>)
    28b0:	8813      	ldrh	r3, [r2, #0]
    28b2:	3301      	adds	r3, #1
    28b4:	b29b      	uxth	r3, r3
    28b6:	8013      	strh	r3, [r2, #0]
    28b8:	e06d      	b.n	2996 <TV_SYNC_handler+0x13a>
            TMR1->ARR=SYNC_LINE;
    28ba:	4b67      	ldr	r3, [pc, #412]	; (2a58 <TV_SYNC_handler+0x1fc>)
    28bc:	f640 02e2 	movw	r2, #2274	; 0x8e2
    28c0:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    28c2:	22a4      	movs	r2, #164	; 0xa4
    28c4:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    28c6:	4a63      	ldr	r2, [pc, #396]	; (2a54 <TV_SYNC_handler+0x1f8>)
    28c8:	8813      	ldrh	r3, [r2, #0]
    28ca:	3301      	adds	r3, #1
    28cc:	b29b      	uxth	r3, r3
    28ce:	8013      	strh	r3, [r2, #0]
    28d0:	e061      	b.n	2996 <TV_SYNC_handler+0x13a>
        }
        break;
    case VSYNC:
        if (!slice){
    28d2:	4b60      	ldr	r3, [pc, #384]	; (2a54 <TV_SYNC_handler+0x1f8>)
    28d4:	881b      	ldrh	r3, [r3, #0]
    28d6:	b29b      	uxth	r3, r3
    28d8:	b18b      	cbz	r3, 28fe <TV_SYNC_handler+0xa2>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    28da:	4a5e      	ldr	r2, [pc, #376]	; (2a54 <TV_SYNC_handler+0x1f8>)
    28dc:	8813      	ldrh	r3, [r2, #0]
    28de:	3301      	adds	r3, #1
    28e0:	b29b      	uxth	r3, r3
    28e2:	8013      	strh	r3, [r2, #0]
    28e4:	8813      	ldrh	r3, [r2, #0]
    28e6:	b29b      	uxth	r3, r3
    28e8:	2b06      	cmp	r3, #6
    28ea:	d154      	bne.n	2996 <TV_SYNC_handler+0x13a>
    28ec:	2200      	movs	r2, #0
    28ee:	4b59      	ldr	r3, [pc, #356]	; (2a54 <TV_SYNC_handler+0x1f8>)
    28f0:	801a      	strh	r2, [r3, #0]
    28f2:	4a57      	ldr	r2, [pc, #348]	; (2a50 <TV_SYNC_handler+0x1f4>)
    28f4:	8813      	ldrh	r3, [r2, #0]
    28f6:	3301      	adds	r3, #1
    28f8:	b29b      	uxth	r3, r3
    28fa:	8013      	strh	r3, [r2, #0]
    28fc:	e04b      	b.n	2996 <TV_SYNC_handler+0x13a>
            TMR1->CCR1=SYNC_PULSE;
    28fe:	f240 7294 	movw	r2, #1940	; 0x794
    2902:	4b55      	ldr	r3, [pc, #340]	; (2a58 <TV_SYNC_handler+0x1fc>)
    2904:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    2906:	4a53      	ldr	r2, [pc, #332]	; (2a54 <TV_SYNC_handler+0x1f8>)
    2908:	8813      	ldrh	r3, [r2, #0]
    290a:	3301      	adds	r3, #1
    290c:	b29b      	uxth	r3, r3
    290e:	8013      	strh	r3, [r2, #0]
    2910:	e041      	b.n	2996 <TV_SYNC_handler+0x13a>
        }
        break;
    case POST_SYNC:
        if (!slice){
    2912:	4b50      	ldr	r3, [pc, #320]	; (2a54 <TV_SYNC_handler+0x1f8>)
    2914:	881b      	ldrh	r3, [r3, #0]
    2916:	b29b      	uxth	r3, r3
    2918:	b153      	cbz	r3, 2930 <TV_SYNC_handler+0xd4>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    291a:	4b4e      	ldr	r3, [pc, #312]	; (2a54 <TV_SYNC_handler+0x1f8>)
    291c:	881b      	ldrh	r3, [r3, #0]
    291e:	b29b      	uxth	r3, r3
    2920:	2b06      	cmp	r3, #6
    2922:	d00e      	beq.n	2942 <TV_SYNC_handler+0xe6>
            task++;
            if (!(flags&F_EVEN_MASK)){
                break;
            }
        }else{
            slice++;
    2924:	4a4b      	ldr	r2, [pc, #300]	; (2a54 <TV_SYNC_handler+0x1f8>)
    2926:	8813      	ldrh	r3, [r2, #0]
    2928:	3301      	adds	r3, #1
    292a:	b29b      	uxth	r3, r3
    292c:	8013      	strh	r3, [r2, #0]
            break;
    292e:	e032      	b.n	2996 <TV_SYNC_handler+0x13a>
            TMR1->CCR1=SERRATION;    
    2930:	22a4      	movs	r2, #164	; 0xa4
    2932:	4b49      	ldr	r3, [pc, #292]	; (2a58 <TV_SYNC_handler+0x1fc>)
    2934:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    2936:	4a47      	ldr	r2, [pc, #284]	; (2a54 <TV_SYNC_handler+0x1f8>)
    2938:	8813      	ldrh	r3, [r2, #0]
    293a:	3301      	adds	r3, #1
    293c:	b29b      	uxth	r3, r3
    293e:	8013      	strh	r3, [r2, #0]
            break;
    2940:	e029      	b.n	2996 <TV_SYNC_handler+0x13a>
            task++;
    2942:	4a43      	ldr	r2, [pc, #268]	; (2a50 <TV_SYNC_handler+0x1f4>)
    2944:	8813      	ldrh	r3, [r2, #0]
    2946:	3301      	adds	r3, #1
    2948:	b29b      	uxth	r3, r3
    294a:	8013      	strh	r3, [r2, #0]
            if (!(flags&F_EVEN_MASK)){
    294c:	4b43      	ldr	r3, [pc, #268]	; (2a5c <TV_SYNC_handler+0x200>)
    294e:	881b      	ldrh	r3, [r3, #0]
    2950:	f013 0f01 	tst.w	r3, #1
    2954:	d01f      	beq.n	2996 <TV_SYNC_handler+0x13a>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    2956:	4a40      	ldr	r2, [pc, #256]	; (2a58 <TV_SYNC_handler+0x1fc>)
    2958:	f241 13c5 	movw	r3, #4549	; 0x11c5
    295c:	62d3      	str	r3, [r2, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    295e:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2962:	6353      	str	r3, [r2, #52]	; 0x34
        flags&=~F_VSYNC_MASK;
    2964:	493d      	ldr	r1, [pc, #244]	; (2a5c <TV_SYNC_handler+0x200>)
    2966:	880b      	ldrh	r3, [r1, #0]
    2968:	f023 0302 	bic.w	r3, r3, #2
    296c:	041b      	lsls	r3, r3, #16
    296e:	0c1b      	lsrs	r3, r3, #16
    2970:	800b      	strh	r3, [r1, #0]
        scan_line>>=2;
    2972:	4936      	ldr	r1, [pc, #216]	; (2a4c <TV_SYNC_handler+0x1f0>)
    2974:	880b      	ldrh	r3, [r1, #0]
    2976:	f3c3 038d 	ubfx	r3, r3, #2, #14
    297a:	800b      	strh	r3, [r1, #0]
        task++;
    297c:	4934      	ldr	r1, [pc, #208]	; (2a50 <TV_SYNC_handler+0x1f4>)
    297e:	880b      	ldrh	r3, [r1, #0]
    2980:	3301      	adds	r3, #1
    2982:	b29b      	uxth	r3, r3
    2984:	800b      	strh	r3, [r1, #0]
        TMR1->SR&=~TMR_SR_CC2IF;
    2986:	6913      	ldr	r3, [r2, #16]
    2988:	f023 0304 	bic.w	r3, r3, #4
    298c:	6113      	str	r3, [r2, #16]
        TMR1->DIER|=TMR_DIER_CC2IE;
    298e:	68d3      	ldr	r3, [r2, #12]
    2990:	f043 0304 	orr.w	r3, r3, #4
    2994:	60d3      	str	r3, [r2, #12]
            task=0;
            TMR1->DIER&=~TMR_DIER_CC2IE;
        }
        break;
    }//switch slice
    TMR1->SR&=~TMR_SR_UIF;
    2996:	4a30      	ldr	r2, [pc, #192]	; (2a58 <TV_SYNC_handler+0x1fc>)
    2998:	6913      	ldr	r3, [r2, #16]
    299a:	f023 0301 	bic.w	r3, r3, #1
    299e:	6113      	str	r3, [r2, #16]
}
    29a0:	bc01      	pop	{r0}
    29a2:	4685      	mov	sp, r0
    29a4:	4770      	bx	lr
        if (scan_line==FIRST_VIDEO_LINE){
    29a6:	4b29      	ldr	r3, [pc, #164]	; (2a4c <TV_SYNC_handler+0x1f0>)
    29a8:	881b      	ldrh	r3, [r3, #0]
    29aa:	b29b      	uxth	r3, r3
    29ac:	2b16      	cmp	r3, #22
    29ae:	d1f2      	bne.n	2996 <TV_SYNC_handler+0x13a>
            task++;
    29b0:	4a27      	ldr	r2, [pc, #156]	; (2a50 <TV_SYNC_handler+0x1f4>)
    29b2:	8813      	ldrh	r3, [r2, #0]
    29b4:	3301      	adds	r3, #1
    29b6:	b29b      	uxth	r3, r3
    29b8:	8013      	strh	r3, [r2, #0]
            slice=0;
    29ba:	2200      	movs	r2, #0
    29bc:	4b25      	ldr	r3, [pc, #148]	; (2a54 <TV_SYNC_handler+0x1f8>)
    29be:	801a      	strh	r2, [r3, #0]
            flags |= F_VIDEO;
    29c0:	4a26      	ldr	r2, [pc, #152]	; (2a5c <TV_SYNC_handler+0x200>)
    29c2:	8813      	ldrh	r3, [r2, #0]
    29c4:	b29b      	uxth	r3, r3
    29c6:	f043 0304 	orr.w	r3, r3, #4
    29ca:	8013      	strh	r3, [r2, #0]
    29cc:	e7e3      	b.n	2996 <TV_SYNC_handler+0x13a>
        slice++;
    29ce:	4a21      	ldr	r2, [pc, #132]	; (2a54 <TV_SYNC_handler+0x1f8>)
    29d0:	8813      	ldrh	r3, [r2, #0]
    29d2:	3301      	adds	r3, #1
    29d4:	b29b      	uxth	r3, r3
    29d6:	8013      	strh	r3, [r2, #0]
        if (scan_line==(FIRST_VIDEO_LINE+VIDEO_LINES)){
    29d8:	4b1c      	ldr	r3, [pc, #112]	; (2a4c <TV_SYNC_handler+0x1f0>)
    29da:	881b      	ldrh	r3, [r3, #0]
    29dc:	b29b      	uxth	r3, r3
    29de:	2bf6      	cmp	r3, #246	; 0xf6
    29e0:	d1d9      	bne.n	2996 <TV_SYNC_handler+0x13a>
            task++;
    29e2:	4a1b      	ldr	r2, [pc, #108]	; (2a50 <TV_SYNC_handler+0x1f4>)
    29e4:	8813      	ldrh	r3, [r2, #0]
    29e6:	3301      	adds	r3, #1
    29e8:	b29b      	uxth	r3, r3
    29ea:	8013      	strh	r3, [r2, #0]
            flags &=~F_VIDEO;
    29ec:	4a1b      	ldr	r2, [pc, #108]	; (2a5c <TV_SYNC_handler+0x200>)
    29ee:	8813      	ldrh	r3, [r2, #0]
    29f0:	f023 0304 	bic.w	r3, r3, #4
    29f4:	041b      	lsls	r3, r3, #16
    29f6:	0c1b      	lsrs	r3, r3, #16
    29f8:	8013      	strh	r3, [r2, #0]
    29fa:	e7cc      	b.n	2996 <TV_SYNC_handler+0x13a>
        if (scan_line==263){
    29fc:	4b13      	ldr	r3, [pc, #76]	; (2a4c <TV_SYNC_handler+0x1f0>)
    29fe:	881b      	ldrh	r3, [r3, #0]
    2a00:	b29b      	uxth	r3, r3
    2a02:	f240 1207 	movw	r2, #263	; 0x107
    2a06:	4293      	cmp	r3, r2
    2a08:	d1c5      	bne.n	2996 <TV_SYNC_handler+0x13a>
            if (flags&F_EVEN_MASK){ // half length
    2a0a:	4b14      	ldr	r3, [pc, #80]	; (2a5c <TV_SYNC_handler+0x200>)
    2a0c:	881b      	ldrh	r3, [r3, #0]
    2a0e:	f013 0f01 	tst.w	r3, #1
    2a12:	d003      	beq.n	2a1c <TV_SYNC_handler+0x1c0>
                TMR1->ARR=SYNC_LINE;
    2a14:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2a18:	4b0f      	ldr	r3, [pc, #60]	; (2a58 <TV_SYNC_handler+0x1fc>)
    2a1a:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN_MASK;
    2a1c:	4a0f      	ldr	r2, [pc, #60]	; (2a5c <TV_SYNC_handler+0x200>)
    2a1e:	8813      	ldrh	r3, [r2, #0]
    2a20:	b29b      	uxth	r3, r3
    2a22:	f083 0301 	eor.w	r3, r3, #1
    2a26:	8013      	strh	r3, [r2, #0]
            flags|=F_VSYNC_MASK;
    2a28:	8813      	ldrh	r3, [r2, #0]
    2a2a:	b29b      	uxth	r3, r3
    2a2c:	f043 0302 	orr.w	r3, r3, #2
    2a30:	8013      	strh	r3, [r2, #0]
            scan_line=0;
    2a32:	2300      	movs	r3, #0
    2a34:	4a05      	ldr	r2, [pc, #20]	; (2a4c <TV_SYNC_handler+0x1f0>)
    2a36:	8013      	strh	r3, [r2, #0]
            slice=0;
    2a38:	4a06      	ldr	r2, [pc, #24]	; (2a54 <TV_SYNC_handler+0x1f8>)
    2a3a:	8013      	strh	r3, [r2, #0]
            task=0;
    2a3c:	4a04      	ldr	r2, [pc, #16]	; (2a50 <TV_SYNC_handler+0x1f4>)
    2a3e:	8013      	strh	r3, [r2, #0]
            TMR1->DIER&=~TMR_DIER_CC2IE;
    2a40:	4a05      	ldr	r2, [pc, #20]	; (2a58 <TV_SYNC_handler+0x1fc>)
    2a42:	68d3      	ldr	r3, [r2, #12]
    2a44:	f023 0304 	bic.w	r3, r3, #4
    2a48:	60d3      	str	r3, [r2, #12]
    2a4a:	e7a4      	b.n	2996 <TV_SYNC_handler+0x13a>
    2a4c:	2000046a 	.word	0x2000046a
    2a50:	20000464 	.word	0x20000464
    2a54:	20000468 	.word	0x20000468
    2a58:	40012c00 	.word	0x40012c00
    2a5c:	20000466 	.word	0x20000466
